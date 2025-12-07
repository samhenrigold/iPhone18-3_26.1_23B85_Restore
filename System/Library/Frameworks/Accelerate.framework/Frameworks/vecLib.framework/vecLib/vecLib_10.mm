uint64_t sub_23672E594(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v19 = (v18 + 16 * *(a3 + 184) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (a5 + a6 < v19 || (v14 = (v19 + 4 * v11 * v12 + 7) & 0xFFFFFFFFFFFFFFF8, v16 < v14) || (v117 = 16 * v15 * *(a3 + 176), v123 = (v14 + v117), v14 + v117 > v16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 40)
  {
    if (&v123[16 * *(a3 + 168)] <= v16)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:
  v123 = 0;
LABEL_11:
  if (v17 < 1)
  {
    return 0;
  }

  v115 = v14;
  v20 = 0;
  v21 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = a1;
  while (1)
  {
    if (a1 == 40)
    {
      v123 = *(*(a4 + 40) + 8 * v20);
    }

    v22 = v20 + 1;
    v24 = *(a3 + 96);
    v23 = *(a3 + 104);
    v25 = *(v23 + 8 * (v20 + 1));
    v26 = *(v23 + 8 * v20);
    v27 = *(a3 + 120);
    v28 = *(v27 + 8 * (v20 + 1));
    v29 = *(v27 + 8 * v20);
    v119 = *(v24 + 4 * v20);
    v120 = *(v24 + 4 * (v20 + 1));
    v30 = *(a2 + 28);
    v31 = *a2;
    if (v25 > v26)
    {
      v32 = 0;
      v33 = *(a3 + 112) + 4 * v26;
      do
      {
        *(v19 + 4 * *(v33 + 4 * v32)) = v32;
        ++v32;
      }

      while (v25 - v26 != v32);
    }

    v34 = v25 - v26;
    v35 = v34;
    v121 = v28 - v29;
    v122 = v34;
    bzero(v123, (v28 - v29) * 16 * v34);
    v36 = *(a3 + 120);
    v37 = *(v36 + 8 * v20);
    if (v37 < *(v36 + 8 * v22))
    {
      if (v30 <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v30;
      }

      v39 = 16 * (v30 * v30);
      v40 = v123;
      do
      {
        v41 = *(a3 + 136);
        v42 = *(*(a3 + 128) + 8 * v37);
        v43 = v42 / v41;
        v44 = v42 % v41;
        if (v43)
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
            v52 = (*(a5 + v48) + (16 * (v47 - v49) - 16 * v50 + 16) * v44);
            do
            {
              v53 = *v52++;
              *&v40[16 * *(v19 + 4 * *(*(a3 + 112) + 4 * v51++))] = v53;
            }

            while (v51 < *(*(a3 + 104) + 8 * v43));
          }
        }

        else
        {
          v54 = v44 / v30;
          v55 = (*(a2 + 8) + 8 * v54);
          v56 = *v55;
          v57 = v55[1];
          if ((*(a2 + 24) & 0x1C) == 4)
          {
            if (v56 < v57)
            {
              v58 = (v54 * v30);
              v59 = v39 * v56;
              do
              {
                v60 = *(*(a2 + 16) + 4 * v56);
                if ((v60 & 0x80000000) == 0 && v60 < v31)
                {
                  v61 = *(a2 + 24);
                  v62 = v61 & 2;
                  if ((v54 <= v60 || v62 == 0) && (v54 >= v60 || v62 != 0))
                  {
                    v65 = *(a2 + 32);
                    v66 = v44 % v30;
                    v67 = v44 % v30 * v30;
                    v68 = *(a3 + 200);
                    if (v54 == v60)
                    {
                      if (v68)
                      {
                        v69 = (v68 + v58);
                        v70 = (v19 + 4 * v58);
                        v71 = v38;
                        v72 = v65 + 16 * v67;
                        do
                        {
                          v73 = *v69++;
                          if ((v73 & 1) == 0)
                          {
                            *&v40[16 * *v70] = *(v72 + v59);
                          }

                          ++v70;
                          v72 += 16;
                          --v71;
                        }

                        while (v71);
                      }

                      else if ((v61 & 2) != 0)
                      {
                        v80 = v66;
                        v81 = v65 + 16 * v67 + 16 * v66;
                        do
                        {
                          *&v40[16 * *(v19 + 4 * v58 + 4 * v80++)] = *(v81 + v59);
                          v81 += 16;
                        }

                        while (v80 < v30);
                      }

                      else if ((v66 & 0x80000000) == 0)
                      {
                        v85 = (v66 + 1);
                        v86 = v65 + 16 * v67;
                        v87 = (v19 + 4 * v58);
                        do
                        {
                          v88 = *v87++;
                          *&v40[16 * v88] = *(v86 + v59);
                          v86 += 16;
                          --v85;
                        }

                        while (v85);
                      }
                    }

                    else
                    {
                      v74 = (v60 * v30);
                      v75 = (v19 + 4 * v74);
                      if (v68)
                      {
                        v76 = (v68 + v74);
                        v77 = (v65 + v59 + 16 * v67);
                        v78 = v38;
                        do
                        {
                          v79 = *v76++;
                          if ((v79 & 1) == 0)
                          {
                            *&v40[16 * *v75] = *v77;
                          }

                          ++v75;
                          ++v77;
                          --v78;
                        }

                        while (v78);
                      }

                      else
                      {
                        v82 = v65 + 16 * v67;
                        v83 = v38;
                        do
                        {
                          v84 = *v75++;
                          *&v40[16 * v84] = *(v82 + v59);
                          v82 += 16;
                          --v83;
                        }

                        while (v83);
                      }
                    }
                  }
                }

                ++v56;
                v59 += v39;
              }

              while (v56 < *(*(a2 + 8) + 8 * (v44 / v30) + 8));
            }
          }

          else if (v56 < v57)
          {
            v89 = v39 * v56 + 16 * v30 * (v44 - v30 * v54);
            do
            {
              v90 = *(*(a2 + 16) + 4 * v56);
              if ((v90 & 0x80000000) == 0 && v90 < v31)
              {
                v91 = *(a2 + 32);
                v92 = *(a3 + 200);
                v93 = (v90 * v30);
                v94 = (v19 + 4 * v93);
                if (v92)
                {
                  v95 = (v92 + v93);
                  v96 = (v91 + v89);
                  v97 = v38;
                  do
                  {
                    v98 = *v95++;
                    if ((v98 & 1) == 0)
                    {
                      *&v40[16 * *v94] = *v96;
                    }

                    ++v94;
                    ++v96;
                    --v97;
                  }

                  while (v97);
                }

                else
                {
                  v99 = v38;
                  do
                  {
                    v100 = *v94++;
                    *&v40[16 * v100] = *(v91 + v89);
                    v91 += 16;
                    --v99;
                  }

                  while (v99);
                }
              }

              ++v56;
              v89 += v39;
            }

            while (v56 < *(*(a2 + 8) + 8 * v54 + 8));
          }
        }

        v40 += 16 * v35;
        ++v37;
      }

      while (v37 < *(*(a3 + 120) + 8 * v22));
    }

    v101 = *(a3 + 152);
    v102 = *(v101 + 4 * v22);
    if (v102 > *(v101 + 4 * v20))
    {
      do
      {
        v103 = v102 - 1;
        v104 = *(*(a3 + 160) + 4 * v102 - 4);
        v105 = *(*(a3 + 96) + 4 * (v104 + 1)) - *(*(a3 + 96) + 4 * v104);
        v106 = *(*(a3 + 104) + 8 * (v104 + 1)) - *(*(a3 + 104) + 8 * v104);
        v107 = *(*(a3 + 120) + 8 * (v104 + 1)) - *(*(a3 + 120) + 8 * v104);
        if (v106 < v107)
        {
          v107 = *(*(a3 + 104) + 8 * (v104 + 1)) - *(*(a3 + 104) + 8 * v104);
        }

        *(a5 + 8 * v104) = 0;
        v21 += 16 * (v107 - v105) * (v105 - v106);
        v102 = v103;
      }

      while (v103 > *(*(a3 + 152) + 4 * v20));
    }

    v108 = v120 - v119;
    a1 = v116;
    if (v122 <= v120 - v119)
    {
      v110 = v21;
      v21 = 0;
    }

    else
    {
      v109 = v122 >= v121 ? v121 : v122;
      *(a5 + 8 * v20) = v21;
      v110 = v21 + 16 * (v109 - v108) * (v122 - (v120 - v119));
    }

    v111 = *(*(a3 + 104) + 8 * v20);
    v112 = *(a3 + 144) + 4 * v111;
    v113 = v116 == 40 ? sub_23671965C(v121, v122, v108, v112, v123, v122, 0, v35, *(a4 + 56) + 16 * v111, v21, v115, v117) : sub_23671965C(v121, v122, v108, v112, v123, v122, *(*(a4 + 40) + 8 * v20), v35, 0, v21, v115, v117);
    if (v113)
    {
      break;
    }

    ++v20;
    v21 = v110;
    if (v22 >= *(a3 + 88))
    {
      return 0;
    }
  }

  return 4294967294;
}

uint64_t _SparseNumericFactorSymmetric_Complex_Double@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
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
  *(a5 + 96) = 16 * *(a2 + 4) * *(a2 + 28);
  atomic_fetch_add((v13 + 48), 1u);
  *(a5 + 80) = sub_23672EFF0(v12, v13, 2 * *(a1 + 7), a3, a6);

  return _SparseRefactorSymmetric_Complex_Double(a2, a5, a3, a4);
}

uint64_t sub_23672EFF0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v9 = *(a2 + 60);
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

  if (v9 * 8)
  {
    v15 = (&v14[v9] + 7) & 0xFFFFFFFFFFFFFFF8;
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
  *(a5 + 48) = 0;
  *(a5 + 32) = 1;
  *(a5 + 56) = 0;
  *(a5 + 64) = v14;
  *(a5 + 72) = 0;
  *(a5 + 40) = v13;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 92) = 1;
  v17 = *(a2 + 64);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v15;
    do
    {
      v20 = *(*(a2 + 88) + 4 * v18 + 4) - *(*(a2 + 88) + 4 * v18);
      v21 = (32 * v20) | 8;
      if ((a1 - 3) >= 2)
      {
        v21 = 8;
      }

      v15 = (v19 + v21 + ((16 * (*(*(a2 + 120) + 8 * v18 + 8) - *(*(a2 + 120) + 8 * v18))) | 4) * v20 + 7) & 0xFFFFFFFFFFFFFFF8;
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

uint64_t _SparseRefactorSymmetric_Complex_Double(int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a2;
  v99 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  if ((a1[6] & 0x1C) == 0xC)
  {
    v6 = *(a2 + 25);
    if (*(a2 + 25))
    {
      v10 = *a1;
      v11 = *(a1 + 28);
      v12 = *(a2 + 80);
      v13 = *(a3 + 4);
      if (v13 <= 1)
      {
        if (*(a3 + 4))
        {
          v25 = *(a3 + 8);
          if (v25)
          {
            v26 = (v10 * v11);
            if (v26 >= 1)
            {
              v27 = *(v12 + 64);
              do
              {
                v28 = *v25++;
                *v27++ = v28;
                --v26;
              }

              while (v26);
            }
          }

LABEL_18:
          v21 = *(a3 + 8);
          if (v21 && *(a3 + 4) != 1)
          {
            v22 = *(v12 + 64);
            v23 = (v10 * v11);
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
              memset_pattern16(v21, &unk_23681FAF0, 8 * (v10 * v11));
            }
          }

          v90 = a1;
          v29 = *(a1 + 28);
          v30 = 0x100 / v29 * v29;
          if (v30 <= v29)
          {
            v31 = *(a1 + 28);
          }

          else
          {
            v31 = v30;
          }

          v32 = &a4[2 * *(v4 + 48)];
          v33 = *(v5 + 60);
          v92 = &a4[4 * v33 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (v32 >= v92)
          {
            if (v33 >= 1)
            {
              v34 = 0;
              v35 = *(v5 + 80);
              do
              {
                *&a4[4 * *(v35 + 4 * v34)] = v34;
                ++v34;
              }

              while (v34 < *(v5 + 60));
            }

            bzero(**(v12 + 40), *(v12 + 72));
            v36 = *(v5 + 64);
            if (v36 < 1)
            {
              v41 = 0;
            }

            else
            {
              v37 = 0;
              v38 = *(v12 + 40);
              do
              {
                v39 = *(v38 + 8 * v37);
                v40 = *v39;
                if (*v39)
                {
                  bzero(v39, *v39);
                  v38 = *(v12 + 40);
                  v36 = *(v5 + 64);
                  v39 = *(v38 + 8 * v37);
                }

                *v39 = v40;
                ++v37;
              }

              while (v37 < v36);
              v41 = v36 > 0;
            }

            v42 = *(v5 + 60);
            v89 = v4;
            if (*(v5 + 52) <= 1)
            {
              v46 = ((v92 + 4 * v42 + 7) & 0xFFFFFFFFFFFFFFF8);
              if (v32 >= v46)
              {
                v47 = (&v46[v31 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
                if (v32 >= v47)
                {
                  v48 = v32;
                  v49 = (v47 + 4 * v31 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v48 >= v49 && v49 + 16 * v31 * v31 <= v48)
                  {
                    if (v41)
                    {
                      v50 = 0;
                      while (1)
                      {
                        result = sub_236730ED4(0, v50, v6, v90, v5, v12, v31, a4, v92, v46, ((&v46[v31 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v47 + 4 * v31 + 7) & 0xFFFFFFFFFFFFFFF8, (v49 + 16 * v31 * v31), 0);
                        if (result)
                        {
                          break;
                        }

                        v50 = (v50 + 1);
                        if (v50 >= *(v5 + 64))
                        {
                          goto LABEL_63;
                        }
                      }
                    }

                    else
                    {
LABEL_63:
                      result = 0;
                    }

                    goto LABEL_87;
                  }
                }
              }
            }

            else
            {
              v43 = (16 * v31 * v31 + 56) + 4 * (v42 + 2 * v31);
              if ((v6 - 3) >= 2)
              {
                v44 = v6;
                if (v6 == 2)
                {
                  v51 = *(v5 + 176);
                  v52 = 16 * v51;
                  v53 = v51 <= 4160;
                  v54 = 66560;
                  if (!v53)
                  {
                    v54 = v52;
                  }

                  v43 += v54;
                }
              }

              else
              {
                v44 = v6;
                v45 = 32 * v42;
                if (*(v5 + 60) <= 2080)
                {
                  v45 = 66560;
                }

                v43 += v45;
              }

              v55 = v43;
              v56 = v43 + 16;
              v57 = sub_2366FCCD0(0);
              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v94 = 0u;
              v58 = (v92 + v56 * v57 + 7) & 0xFFFFFFFFFFFFFFF8;
              if (v32 >= v58)
              {
                v59 = sub_2366FCCD0(0);
                _X2 = 0;
                LODWORD(v94) = v59;
                atomic_store(0, &v94 + 1);
                atomic_store(0, (&v94 | 0xC));
                atomic_store(0, &v95);
                v61 = v96;
                do
                {
                  _X5 = *(&v96 + 1);
                  __asm { CASPAL          X4, X5, X2, X3, [X26] }

                  _ZF = _X4 == v61;
                  v61 = _X4;
                }

                while (!_ZF);
                *&v97 = v55;
                *(&v97 + 1) = v92;
                *&v93[36] = 0;
                *v93 = v44;
                *&v93[8] = v90;
                *&v93[16] = v5;
                *&v93[24] = v12;
                *&v93[32] = v31;
                *&v93[40] = a4;
                v68 = *(v5 + 64);
                v69 = v58 + 40 * v68;
                if (v69 <= v32)
                {
                  *&v93[48] = v58;
                  v70 = (v69 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v32 >= v70)
                  {
                    *&v93[56] = v69;
                    v71 = v70 + 19200;
                    if (v70 + 19200 <= v32)
                    {
                      *&v93[64] = sub_2367921D4(100, (v70 + 15) & 0xFFFFFFFFFFFFFFF0);
                      *&v93[72] = v72;
                      if (v71 + 48 * *(v5 + 168) <= v32)
                      {
                        *&v93[80] = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
                        *&v93[88] = 0;
                        *&v98 = v93;
                        if (*(v5 + 64) >= 1)
                        {
                          _X22 = 0;
                          v74 = 0;
                          do
                          {
                            v75 = v74 + 1;
                            v76 = *&v93[48] + 40 * v74;
                            _ZF = *(*(v5 + 96) + 4 * (v74 + 1)) == *(*(v5 + 96) + 4 * v74);
                            atomic_store(*(*(v5 + 96) + 4 * (v74 + 1)) - *(*(v5 + 96) + 4 * v74), v76);
                            *(v76 + 8) = v74;
                            *(v76 + 16) = sub_236730C78;
                            *(*&v93[56] + v74) = 0;
                            if (_ZF)
                            {
                              v77 = *&v93[48] + 40 * v74;
                              _X0 = 0;
                              _X1 = 0;
                              __asm { CASP            X0, X1, X0, X1, [X25] }

                              *(v77 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                              *(v77 + 32) = 0;
                              v81 = _X0 & 1;
                              _X2 = v81 | v77;
                              _X5 = 0;
                              __asm { CASPL           X4, X5, X2, X3, [X25] }

                              while (_X4 != _X0)
                              {
                                _X1 = 0;
                                __asm { CASP            X0, X1, X22, X23, [X10] }

                                *(v77 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                                *(v77 + 32) = 0;
                                v81 = _X0 & 1;
                                _X2 = v81 | v77;
                                _X5 = 0;
                                __asm { CASPL           X4, X5, X2, X3, [X10] }
                              }

                              if (v81)
                              {
                                __ulock_wake();
                              }
                            }

                            v74 = v75;
                          }

                          while (v75 < *(v5 + 64));
                        }

                        result = sub_2366FCD2C(&v94, 0);
LABEL_87:
                        v4 = v89;
                        goto LABEL_91;
                      }
                    }
                  }
                }
              }
            }
          }

          __break(1u);
        }
      }

      else if (v13 != 2)
      {
        if (v13 == 3)
        {
          v91 = *(a2 + 25);
          v14 = sub_23670CFB0(v10, *(*(a1 + 1) + 8 * v10), v11);
          v15 = a4;
          if (v14 + 4 * v10 > (2 * *(v4 + 48)))
          {
            v15 = (*(v5 + 24))();
          }

          v16 = *(v12 + 64);
          v17 = *(a1 + 1);
          *v93 = *a1;
          *&v93[16] = v17;
          *&v93[32] = *(a1 + 4);
          sub_2367141F8(v93, v15, v16, &v15[4 * v10], v14);
          v6 = v91;
          if (v15 != a4)
          {
            (*(v5 + 32))(v15);
          }

          goto LABEL_18;
        }

        v18 = *(v5 + 40);
        if (v18)
        {
          memset(&v93[88], 0, 168);
          strcpy(v93, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
          goto LABEL_28;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366F7228();
        }

LABEL_90:
        _SparseTrap();
      }

      v19 = *(v12 + 64);
      v20 = *(a1 + 1);
      *v93 = *a1;
      *&v93[16] = v20;
      *&v93[32] = *(a1 + 4);
      sub_23671B5CC(v93, v19, a4);
      goto LABEL_18;
    }

    v18 = *(v5 + 40);
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_236731EC0();
      }

      goto LABEL_90;
    }

    memset(&v93[72], 0, 184);
    strcpy(v93, "Cannot use SparseFactorizationCholesky for Complex symmetric matrices.\n");
  }

  else
  {
    v18 = *(v5 + 40);
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_236731E7C();
      }

      goto LABEL_90;
    }

    memset(&v93[66], 0, 190);
    strcpy(v93, "_SparseRefactorSymmetric only applies to SparseSymmetric matrices");
  }

LABEL_28:
  v18(v93);
  result = 4294967292;
LABEL_91:
  *v4 = result;
  return result;
}

uint64_t _SparseFactorSymmetric_Complex_Double@<X0>(unsigned int a1@<W0>, int *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v225 = *MEMORY[0x277D85DE8];
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
  *(a5 + 96) = 16 * v11 * v8;
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
  v34 = _SparseFromStructureComplex(__str, &v216);
  v35 = BYTE12(v217);
  v213 = v216;
  v212 = v216 * BYTE12(v217);
  v36 = v212 + 224;
  if (!*(a3 + 2))
  {
    v36 = 224;
  }

  v37 = v36 + 4 * (BYTE12(v217) + 2) * v216;
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
  v205 = v29;
  v40 = v38 + v37;
  v41 = (v38 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (v40 < v41)
  {
    goto LABEL_306;
  }

  v42 = v213;
  v43 = a3[1];
  v44 = a3[2];
  v221 = *a3;
  v222 = v43;
  v223 = v44;
  v45 = 1;
  v214 = v39;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    v45 = sub_2366FCCD0(0);
    v42 = v213;
    v39 = v214;
  }

  v46 = v222;
  *v39 = v221;
  v39[1] = v46;
  v39[2] = v223;
  *(v39 + 12) = 1;
  *(v39 + 13) = v45;
  *(v39 + 14) = v42;
  *(v39 + 15) = v212;
  *(v39 + 16) = 0;
  *(v39 + 72) = 0u;
  v47 = (v41 + 4 * v213 + 7) & 0xFFFFFFFFFFFFFFF8;
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
  v48 = (v47 + 4 * v212 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v40 < v48)
  {
    goto LABEL_306;
  }

  v49 = 4 * v213;
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
    if (v40 < ((v50 + v212 + 7) & 0xFFFFFFFFFFFFFFF8))
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
  v54 = v52 + BYTE12(v217);
  v55 = !is_mul_ok(v54, v213);
  v56 = v54 * v213;
  v16 = __CFADD__(v56, 2);
  v57 = v56 + 2;
  v58 = v16;
  v59 = v58 << 63 >> 63 != v58;
  if (v55 || v59)
  {
    goto LABEL_64;
  }

  v53 = 0;
  v60 = *(*(&v216 + 1) + 8 * v213);
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

  v118 = 2 * v213 + 2;
  if (v42 < 0 || (2 * v213) >= 0xFFFFFFFFFFFFFFFELL)
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

  v209 = v41;
  v68 = *(*(&v216 + 1) + 8 * SDWORD1(v216));
  v69 = v40 + 8 * (v213 + v68) + 16;
  if (v69 > v63)
  {
    goto LABEL_306;
  }

  v210 = v48;
  v70 = v69 + 16 * v68;
  if (v70 > v63)
  {
    goto LABEL_306;
  }

  v71 = ((v70 + 8 * v213) & 0xFFFFFFFFFFFFFFF8);
  if (v63 < v71)
  {
    goto LABEL_306;
  }

  v206 = v69 + 16 * v68;
  v207 = v40 + 8 * (v213 + v68) + 16;
  v208 = (&v66[v49 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
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

  bzero(v50, v212);
  if (v213 >= 1)
  {
    v72 = BYTE12(v217);
    v73 = (v213 + 3) & 0xFFFFFFFC;
    v74 = vdupq_n_s64(v213 - 1);
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
  v70 = v206;
  if ((*v80 & 0x80000000) == 0)
  {
    v82 = BYTE12(v217);
    v83 = *(v214 + 17);
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

  v69 = v207;
LABEL_89:
  v219 = 0u;
  v220 = 0u;
  if ((BYTE8(v217) & 2) != 0)
  {
    *__str = v216;
    *&__str[16] = v217;
    sub_2367861D0(__str, v71, v40, v69, v70, &v219);
  }

  else
  {
    v218[0] = v216;
    v218[1] = v217;
    sub_236785FB0(v218, v71, v40, v69, v70, __str);
    v219 = *__str;
    v220 = *&__str[16];
  }

  *__str = v219;
  *&__str[16] = v220;
  if (sub_2367E3E64(v7, __str, v71, v209, v66, a3))
  {
    free(v214);
    return (*(a3 + 4))(__b);
  }

  *__str = v219;
  *&__str[16] = v220;
  sub_236768978(__str, 0, v71, v209, v66, v210, __b, 0);
  sub_236750DDC(v213, v210, v209, v66, __b);
  *__str = v219;
  *&__str[16] = v220;
  sub_2366EE0E8(__str, 0, v71, v209, v66, v210, v208, __b, 0);
  v86 = sub_236767CA0(v213, BYTE12(v217), v71, v209, v66, *(v214 + 14), v208, __b, a3, &__b[4 * v213 + 4]);
  v214[16] = v86;
  *(v214 + 20) = 0;
  *(v214 + 21) = 0;
  v214[44] = 0;
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
    v91 = BYTE12(v217);
    do
    {
      v92 = *(v208 + 4 * v88);
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
        v214[44] = v96;
        v90 = v96;
      }

      if (v92 > 192 || v96 >= 97)
      {
        v87 += ((v96 - 1) / 96 + 1) * ((v92 - 1) / 96) + (v96 - 1) / 96 + 1;
        *(v214 + 21) = v87;
      }

      v89 += v92 * v96;
      v40 += v92;
      ++v88;
    }

    while (v88 != v86);
    *(v214 + 20) = v89;
  }

  *v211 = 4 * (v40 + 3 * v86 + 3) + 16 * v86 + 16 * *(*(&v216 + 1) + 8 * v213) + 72;
  v100 = (*(a3 + 3))();
  if (!v100)
  {
    free(v214);
    if (*(a3 + 5))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", *v211);
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

  v101 = v100 + *v211;
  v102 = v214;
  v103 = v214[16];
  v104 = v103 + 1;
  v105 = (v100 + 4 * (v103 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v100 + *v211 < v105)
  {
    goto LABEL_306;
  }

  *(v214 + 11) = v100;
  v106 = (v105 + 4 * v103 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v101 < v106)
  {
    goto LABEL_306;
  }

  *(v214 + 12) = v105;
  v107 = (v106 + 4 * v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v101 < v107)
  {
    goto LABEL_306;
  }

  *(v214 + 13) = v106;
  v108 = v107 + 8 * v104;
  if (v108 > v101)
  {
    goto LABEL_306;
  }

  *(v214 + 15) = v107;
  v109 = (v108 + 4 * v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v101 < v109)
  {
    goto LABEL_306;
  }

  *(v214 + 16) = v108;
  v110 = v109 + 8 * v104;
  if (v110 > v101)
  {
    goto LABEL_306;
  }

  *(v214 + 18) = v109;
  if (v110 + 16 * *(*(&v216 + 1) + 8 * v213) > v101)
  {
    goto LABEL_306;
  }

  *(v214 + 19) = v110;
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

        v103 = v214[16];
      }

      while (v111 < v103);
    }

    *(v100 + 4 * v103) = v112;
  }

  else if ((v103 & 0x80000000) == 0)
  {
    v123 = 0;
    v124 = BYTE12(v217);
    do
    {
      *(v100 + 4 * v123) = *&__b[4 * v123] * v124;
      v180 = v123++ < v214[16];
    }

    while (v180);
  }

  if (*(a3 + 2))
  {
    bzero(*(v214 + 10), 4 * v212);
    v102 = v214;
    v125 = *(a3 + 2);
    v126 = *v125;
    if ((v126 & 0x80000000) == 0)
    {
      v127 = *(v214 + 10);
      v128 = v212 - 1;
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

    if (v213 >= 1)
    {
      v131 = 0;
      v132 = 0;
      v133 = BYTE12(v217);
      do
      {
        if (v133)
        {
          v134 = 0;
          v135 = *(v214 + 10);
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

      while (v131 != v213);
    }
  }

  else if (v213 >= 1)
  {
    v137 = 0;
    v138 = 0;
    v139 = BYTE12(v217);
    v140 = 4 * BYTE12(v217);
    do
    {
      if (v139)
      {
        v141 = 0;
        v142 = *(v214 + 9);
        v143 = *(v214 + 10) + v137;
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

    while (v138 != v213);
  }

  sub_236812888(v102[16], *(v102 + 14), *(v102 + 12), *(v102 + 13));
  sub_23679A71C(&v219, v214, __b, *(a3 + 2), v66, &__b[4 * v214[16] + 4]);
  sub_23678A440(&v219, v214, v207, v206, __b);
  v145 = v214[15];
  v144 = v214[16];
  v146 = 8 * v144;
  v147 = *(v214 + 20);
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
    return sub_23680EEA8(v214, a3);
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

  v160 = __CFADD__(v159, 4 * v153);
  *(a5 + 56) = v159 + 4 * v153;
  if (v153 >> 62 || v160)
  {
    goto LABEL_199;
  }

  v161 = v159 + 8 * v153;
  v162 = __CFADD__(v159, 8 * v153);
  *(a5 + 64) = v161;
  if (v153 >> 61 || v162)
  {
    goto LABEL_199;
  }

  if ((*(a3 + 3) & 0x40) != 0)
  {
    v163 = 1;
  }

  else
  {
    v163 = sub_2366FCCD0(0);
  }

  v164 = *(a2 + 28);
  if (0x100 / v164 * v164 <= v164)
  {
    v165 = *(a2 + 28);
  }

  else
  {
    v165 = 0x100 / v164 * v164;
  }

  v166 = *(a2 + 28) * v9;
  v167 = v166 + 2 * v165;
  v168 = v167 >> 62;
  if (v167 >> 62)
  {
    v169 = 0;
LABEL_235:
    v168 = 0;
    v170 = 0;
    v171 = 0;
    v172 = 1;
    goto LABEL_261;
  }

  v169 = 4 * v167 + 72;
  v173 = v214[16];
  if (v173 >= 0)
  {
    v174 = v214[16];
  }

  else
  {
    v174 = -v173;
  }

  v175 = 41 * v174;
  if (v173 < 0)
  {
    v175 = -v175;
  }

  v176 = v175 + 32;
  v177 = v175 >= 0xFFFFFFFFFFFFFFE0;
  v172 = 1;
  if (v173 < 0 || v177)
  {
    goto LABEL_260;
  }

  v178 = v176 + 19200;
  if (v176 >= 0xFFFFFFFFFFFFB500)
  {
    goto LABEL_235;
  }

  v168 = 0;
  v179 = *(v214 + 21);
  v180 = v179 < 0;
  v181 = v179 < 0;
  if (v179 < 0)
  {
    v179 = -v179;
  }

  v182 = (v179 * 0x30uLL) >> 64;
  v183 = 48 * v179;
  if (v180)
  {
    v184 = -v183;
  }

  else
  {
    v184 = v183;
  }

  v185 = v182 != 0;
  if (!v183)
  {
    v181 = 0;
  }

  v186 = v178 + v184;
  v187 = __CFADD__(v178, v184);
  v172 = 1;
  if (v185 || v181 || v187)
  {
LABEL_260:
    v170 = 0;
    v171 = 0;
  }

  else
  {
    v16 = __CFADD__(v186, 4 * v166);
    v171 = v186 + 4 * v166;
    if (v16)
    {
      v168 = 0;
      v170 = 0;
    }

    else
    {
      v172 = 0;
      v170 = (v164 * v164) * v9;
      v168 = v165 * v165;
    }
  }

LABEL_261:
  if ((v7 - 3) >= 2)
  {
    if (v7 == 2)
    {
      if ((v172 & 1) == 0)
      {
        LODWORD(v191) = v214[44];
        if (v191 <= 4160)
        {
          v191 = 4160;
        }

        else
        {
          v191 = v191;
        }

        v190 = v168 + v191;
        goto LABEL_276;
      }
    }

    else if ((v172 & 1) == 0)
    {
      v16 = __CFADD__(v170, 2 * v168);
      v190 = v170 + 2 * v168;
      if (!v16)
      {
        goto LABEL_276;
      }
    }

LABEL_300:
    v204 = *(a3 + 5);
    if (!v204)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7128();
      }

      _SparseTrap();
    }

    memset(&__str[73], 0, 183);
    strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
    v204(__str);
    result = (*(a3 + 4))(__b);
LABEL_19:
    *a5 = -4;
    return result;
  }

  if (v172)
  {
    goto LABEL_300;
  }

  v188 = 4160;
  if (2 * v9 > 0x1040)
  {
    v188 = 2 * v9;
  }

  v189 = v168 + v188;
  v16 = __CFADD__(v170, v189);
  v190 = v170 + v189;
  if (v16)
  {
    goto LABEL_300;
  }

LABEL_276:
  v192 = !is_mul_ok(v169, v163);
  v193 = v169 * v163;
  v16 = __CFADD__(v171, v193);
  v194 = v171 + v193;
  v195 = v16;
  if (v192 || (v195 & 1) != 0)
  {
    goto LABEL_300;
  }

  v196 = !is_mul_ok(v190, v163);
  v197 = v190 * v163;
  v16 = __CFADD__(v170, v197);
  v198 = v170 + v197;
  v199 = v16;
  if (v196 || v199)
  {
    goto LABEL_300;
  }

  v200 = __CFADD__(v194, 4 * v198);
  *(a5 + 40) = v194 + 4 * v198;
  if (v198 >> 62 || v200)
  {
    goto LABEL_300;
  }

  v16 = __CFADD__(v194, 8 * v198);
  v201 = v194 + 8 * v198;
  v202 = v16;
  *(a5 + 48) = v201;
  if (v198 >> 61 || v202)
  {
    goto LABEL_300;
  }

  v40 = 2 * v201;
  if (2 * v201 > v205)
  {
    (*(a3 + 4))(__b);
    __b = (*(a3 + 3))(v40);
    if (!__b)
    {
      goto LABEL_307;
    }
  }

  *(a5 + 8) = 0;
  *(a5 + 32) = v214;
  v203 = sub_23672EFF0(v7, v214, 2 * v161, a4, 0);
  if (!v203)
  {
    return (*(a3 + 4))(__b);
  }

  *(a5 + 80) = v203;
  _SparseRefactorSymmetric_Complex_Double(a2, a5, a4, __b);
  return (*(a3 + 4))(__b);
}

void *sub_236730C78(void *result, uint64_t a2)
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
    v9 = 16 * v11;
    v10 = v11 <= 4160;
  }

  else
  {
    v7 = *(v5 + 2);
    v8 = *(v7 + 60);
    v9 = 32 * v8;
    v10 = v8 <= 2080;
  }

  if (v10)
  {
    v9 = 66560;
  }

LABEL_9:
  v12 = result[5];
  v13 = v12 + *(v4 + 48);
  v14 = ((v12 + 4 * *(v7 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v14 || (v15 = *(v5 + 8), v16 = (&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v13 < v16) || (v17 = (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v17) || (v18 = v17 + 16 * v15 * v15, v18 > v13) || v13 < ((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    result = sub_236730ED4(result, a2, v6, *(v5 + 1), v7, *(v5 + 3), v15, *(v5 + 5), v12, v14, ((&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, (v17 + 16 * v15 * v15), v5);
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

uint64_t sub_236730ED4(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, int *a11, uint64_t a12, char *a13, uint64_t a14)
{
  v14 = a7;
  v181 = a1;
  v187 = a13;
  v188 = a2;
  v192 = *MEMORY[0x277D85DE8];
  v184 = a4;
  v16 = *(a4 + 28);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v17 = sub_236719F54;
    }

    else
    {
      v17 = sub_23671A900;
    }
  }

  else
  {
    if (!a3)
    {
      v178 = sub_23671554C;
      v187 = 0;
      goto LABEL_9;
    }

    v17 = sub_23671ABB8;
  }

  v178 = v17;
LABEL_9:
  LODWORD(v186) = a3;
  v18 = a3 - 3;
  v19 = a5[15];
  v20 = v188;
  v21 = *(v19 + 8 * v188);
  v22 = *(v19 + 8 * (v188 + 1)) - v21;
  v23 = a5[11];
  v177 = v188 + 1;
  v24 = *(v23 + 4 * (v20 + 1)) - *(v23 + 4 * v20);
  v25 = *(a6[5] + 8 * v188) + 8;
  v26 = v22;
  if ((v18 & 0xFE) != 0)
  {
    v27 = 0;
  }

  else
  {
    v27 = 2 * v24;
  }

  v28 = v25 + 16 * v22 * v24 + 16 * v27;
  if (v24 >= 1)
  {
    v29 = 0;
    do
    {
      *(v28 + 4 * v29) = *(a8 + 4 * (v29 + *(v23 + 4 * v20)));
      ++v29;
    }

    while (v24 != v29);
  }

  v179 = v24;
  v180 = v22;
  v30 = a5[18];
  v183 = a5[19];
  v32 = a5[16];
  v31 = a5[17];
  v185 = a5;
  v33 = v32 + 4 * v21;
  v35 = a6[8];
  v36 = (v30 + 8 * v20);
  v37 = *v36;
  v38 = v36[1];
  if (v35)
  {
    if (*v36 < v38)
    {
      v182 = 16 * (v16 * v16);
      if (v16 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v16;
      }

      v40 = 16 * v16;
      v41 = 16 * v26;
      do
      {
        v42 = &v183[v37];
        v44 = *v42;
        v43 = v42[1];
        v45 = v43 % v26;
        v46 = *(v184 + 32);
        v47 = (v43 / v26);
        v48 = v25 + 16 * v47 * v26 + 16 * v45;
        v49 = *(v33 + 4 * v45);
        if (v31)
        {
          v50 = v49 / v16 * v16;
          v51 = (v35 + 8 * v50);
          v52 = *(v33 + 4 * v47) / v16 * v16;
          v53 = v35 + 8 * v52;
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
            v78 = (v46 + v182 * v58);
            do
            {
              if ((*(v55 + v56) & 1) == 0)
              {
                v79 = 0;
                v80 = v54;
                v81 = v51;
                v82 = v78;
                v83 = v39;
                do
                {
                  v84 = *v80++;
                  if ((v84 & 1) == 0)
                  {
                    *(v48 + 16 * v79) = vaddq_f64(*(v48 + 16 * v79), vmulq_n_f64(vmulq_n_f64(*v82, *v81), *(v53 + 8 * v56)));
                    ++v79;
                  }

                  v82 = (v82 + v40);
                  ++v81;
                  --v83;
                }

                while (v83);
                v48 += 16 * v26;
              }

              ++v56;
              ++v78;
            }

            while (v56 != v39);
          }

          else
          {
            v59 = (v46 + v182 * v58);
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
                    *(v48 + 16 * v60) = vaddq_f64(*(v48 + 16 * v60), vmulq_n_f64(vmulq_n_f64(*v63, *v62), *(v53 + 8 * v56)));
                    ++v60;
                  }

                  ++v63;
                  ++v62;
                  --v64;
                }

                while (v64);
                v48 += 16 * v26;
              }

              ++v56;
              v59 = (v59 + v40);
            }

            while (v56 != v39);
          }
        }

        else
        {
          v66 = (v35 + 8 * v49);
          v67 = v35 + 8 * *(v33 + 4 * v47);
          if (v44 < 0)
          {
            if (v16)
            {
              v85 = 0;
              if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
              {
                v86 = -v44;
              }

              else
              {
                v86 = v44;
              }

              v87 = (v46 + v182 * (v86 - 1));
              do
              {
                v88 = 0;
                v89 = v66;
                v90 = v87;
                do
                {
                  v91 = *v89++;
                  *(v48 + v88) = vaddq_f64(*(v48 + v88), vmulq_n_f64(vmulq_n_f64(*v90, v91), *(v67 + 8 * v85)));
                  v88 += 16;
                  v90 = (v90 + v40);
                }

                while (v40 != v88);
                ++v85;
                v48 += v41;
                ++v87;
              }

              while (v85 != v16);
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

            v70 = (v46 + v182 * (v69 - 1));
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
                *v73 = vaddq_f64(*v73, vmulq_n_f64(vmulq_n_f64(v77, v76), *(v67 + 8 * v68)));
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
    v92 = 16 * (v16 * v16);
    if (v16 <= 1)
    {
      v93 = 1;
    }

    else
    {
      v93 = v16;
    }

    v94 = 16 * v16;
    v95 = 16 * v26;
    do
    {
      v96 = &v183[v37];
      v98 = *v96;
      v97 = v96[1];
      v99 = *(v184 + 32);
      v100 = (v97 / v26);
      v101 = v25 + 16 * v100 * v26 + 16 * (v97 % v26);
      if (v31)
      {
        v102 = *(v33 + 4 * v100);
        v103 = (v31 + *(v33 + 4 * (v97 % v26)) / v16 * v16);
        v104 = v31 + v102 / v16 * v16;
        v105 = 0;
        if (((v98 & 0x4000000000000000) != 0) ^ __OFSUB__(v98, -v98) | (v98 == -v98))
        {
          v106 = -v98;
        }

        else
        {
          v106 = v98;
        }

        v107 = (v99 + v92 * (v106 - 1));
        if (v98 < 0)
        {
          do
          {
            if ((*(v104 + v105) & 1) == 0)
            {
              v113 = 0;
              v114 = v103;
              v115 = v107;
              v116 = v93;
              do
              {
                v117 = *v114++;
                if ((v117 & 1) == 0)
                {
                  *(v101 + 16 * v113) = vaddq_f64(*v115, *(v101 + 16 * v113));
                  ++v113;
                }

                v115 = (v115 + v94);
                --v116;
              }

              while (v116);
              v101 += 16 * v26;
            }

            ++v105;
            ++v107;
          }

          while (v105 != v93);
        }

        else
        {
          do
          {
            if ((*(v104 + v105) & 1) == 0)
            {
              v108 = 0;
              v109 = v103;
              v110 = v107;
              v111 = v93;
              do
              {
                v112 = *v109++;
                if ((v112 & 1) == 0)
                {
                  *(v101 + 16 * v108) = vaddq_f64(*v110, *(v101 + 16 * v108));
                  ++v108;
                }

                ++v110;
                --v111;
              }

              while (v111);
              v101 += 16 * v26;
            }

            ++v105;
            v107 = (v107 + v94);
          }

          while (v105 != v93);
        }
      }

      else if (v98 < 0)
      {
        if (v16)
        {
          v125 = 0;
          if (((v98 & 0x4000000000000000) != 0) ^ __OFSUB__(v98, -v98) | (v98 == -v98))
          {
            v126 = -v98;
          }

          else
          {
            v126 = v98;
          }

          v127 = (v99 + v92 * (v126 - 1));
          do
          {
            v128 = 0;
            v129 = v127;
            do
            {
              *(v101 + v128) = vaddq_f64(*v129, *(v101 + v128));
              v128 += 16;
              v129 = (v129 + v94);
            }

            while (v94 != v128);
            ++v125;
            v101 += v95;
            ++v127;
          }

          while (v125 != v16);
        }
      }

      else if (v16)
      {
        v118 = 0;
        if (((v98 & 0x4000000000000000) != 0) ^ __OFSUB__(v98, -v98) | (v98 == -v98))
        {
          v119 = -v98;
        }

        else
        {
          v119 = v98;
        }

        v120 = (v99 + v92 * (v119 - 1));
        do
        {
          v121 = v120;
          v122 = v101;
          v123 = v16;
          do
          {
            v124 = *v121++;
            *v122 = vaddq_f64(v124, *v122);
            ++v122;
            --v123;
          }

          while (v123);
          ++v118;
          v101 += v95;
          v120 = (v120 + v94);
        }

        while (v118 != v16);
      }

      v37 += 2;
    }

    while (v37 < v36[1]);
  }

  if (v186 == 4)
  {
    v130 = a6;
    v131 = atomic_load((a6[6] + 4 * v20));
    v132 = v185;
    if (v131 >= 1)
    {
      sub_23671AD40(4, v185, a6, v188, a9);
      v133 = atomic_load((a6[6] + 4 * v20));
      v134 = v133 + *(*(v185 + 120) + 8 * v177) - *(*(v185 + 120) + 8 * v20);
      v179 = *(*(v185 + 88) + 4 * v177) - *(*(v185 + 88) + 4 * v20) + v133;
      v180 = v134;
    }

    v135 = v179;
    v136 = (v178)(v180, v179);
    *(a6[7] + 4 * v20) = v136;
    v138 = *(*(v132 + 112) + 4 * v20);
    if (v138 != -1)
    {
      atomic_fetch_add((a6[6] + 4 * v138), v135 - v136);
    }

    v139 = v180;
  }

  else
  {
    v135 = v179;
    v139 = v180;
    v130 = a6;
    if (v178(v180, v179, v25, v26, v28, a6, v187, v181, a14) != v179)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v140 = v139 - v135;
  if (v139 > v135)
  {
    if (v140 >= v14)
    {
      if (v181)
      {
        v143 = ((v140 - 1) / v14 + 2 + ((v140 - 1) / v14 + 2) * ((v140 - 1) / v14)) / 2;
        if (v143 >= 0x40)
        {
          v144 = 64;
        }

        else
        {
          v144 = v143;
        }

        MEMORY[0x28223BE20](v137);
        v187 = &v177 - v145;
        MEMORY[0x28223BE20](v146);
        v186 = &v177 - v147;
        v191 = 0;
        if (v140 >= 1)
        {
          v183 = &v177;
          _X26 = 0;
          v149 = 0;
          v150 = 0;
          v151 = 0;
          v185 = 8 * v188;
          while (1)
          {
            v152 = v151;
            LODWORD(v184) = v151;
            do
            {
              v153 = &v186[24 * v149];
              v154 = v187;
              *v153 = v188;
              *(v153 + 1) = v152;
              *(v153 + 2) = v151;
              *(v153 + 2) = &v191;
              v155 = &v154[40 * v149];
              *v155 = 0;
              *(v155 + 3) = 0;
              *(v155 + 4) = 0;
              *(v155 + 1) = v153;
              *(v155 + 2) = sub_236731D90;
              v156 = v181[2];
              if (v156)
              {
                _X4 = 0;
                _X5 = 0;
                __asm { CASP            X4, X5, X4, X5, [X1] }

                while (1)
                {
                  *(v156 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
                  *(v156 + 32) = 0;
                  _X2 = _X4 & 1 | v156;
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
                  v151 = v184;
                }
              }

              v168 = (v150 / v144 + v185);
              v169 = v181;
              v181[2] = v155;
              v169[3] = v168;
              if (++v149 >= v144)
              {
                while (1)
                {
                  v170 = atomic_load(&v191);
                  if (v170 >= v149 + v150)
                  {
                    break;
                  }

                  v190 = 0;
                  sub_2366FCDE4(v181, &v190);
                  if (v190)
                  {
                    goto LABEL_137;
                  }
                }

                v149 = 0;
                v150 += v144;
                v151 = v184;
              }

              v152 += v14;
            }

            while (v152 < v140);
            v151 += v14;
            if (v151 >= v140)
            {
              v171 = v149 + v150;
              goto LABEL_155;
            }
          }
        }

        v171 = 0;
LABEL_155:
        while (1)
        {
          v176 = atomic_load(&v191);
          if (v176 >= v171)
          {
            break;
          }

          v189 = 0;
          sub_2366FCDE4(v181, &v189);
          if (v189)
          {
LABEL_137:
            v172 = v181;
            sub_2366FCEC8(v181);
            return atomic_load((v172[1] + 16));
          }
        }
      }

      else if (v140 >= 1)
      {
        for (i = 0; i < v140; i += v14)
        {
          v174 = i;
          do
          {
            if (a14)
            {
              v175 = *(a14 + 56);
            }

            else
            {
              v175 = 0;
            }

            sub_236731994(v188, v174, i, v186, v185, a6, v14, a12, a10, a11, a9, v175, v187);
            v174 += v14;
          }

          while (v174 < v140);
        }
      }
    }

    else
    {
      if (a14)
      {
        v141 = *(a14 + 56);
      }

      else
      {
        v141 = 0;
      }

      sub_236731994(v188, 0, 0, v186, v185, v130, v14, a12, a10, a11, a9, v141, v187);
    }
  }

  return 0;
}

void sub_236731994(uint64_t result, int a2, int a3, int a4, void *a5, void *a6, signed int a7, uint64_t a8, int *a9, int *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_23671548C;
  v15 = sub_2367154DC;
  if (a4 <= 2)
  {
    if (a4)
    {
      v14 = sub_2367FFC1C;
      v15 = sub_236800A20;
    }

    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v14 = sub_23673D0B4;
    v15 = sub_236741748;
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
  v16 = sub_236741748;
  v14 = sub_23673D0B4;
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
    v33 = v31 + 16 * v30;
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
      (v14)(v36, v29, v31 + 16 * v34, v32, v33, a8, v38, a13);
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

          v47 = (a8 + 16 * (v61[0] - v41) * (v39 + 1));
          if (a12)
          {
            sub_23673A7C4(result, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, (a12 + v45));
          }

          else
          {
            sub_23673A7C4(result, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, 0);
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

      v16(v48, v36, v29, v31 + 16 * (v28 + a2), v31 + 16 * v34, v32, v33, a8, v38, a13);
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

            v55 = (a8 + 16 * (v61[0] - v41) * v39);
            if (a12)
            {
              sub_23673A9B0(result, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, (a12 + v53));
            }

            else
            {
              sub_23673A9B0(result, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, 0);
            }
          }

          v49 = *(a5[14] + 4 * v53);
        }

        while (v49 != -1);
      }
    }
  }
}

void sub_236731D90(uint64_t a1, atomic_uint *volatile *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
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

  v16 = a8 + 16 * a7 * a7;
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

  if (v16 + 66560 > v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  sub_236731994(*v9, *(v9 + 1), *(v9 + 2), a4, v14, *(v11 + 3), a7, a8, v15, v8, v12, *(v11 + 7), v16);
  atomic_fetch_add(v9[2], 1u);
}

uint64_t sub_236731F04(int a1, uint64_t a2, void *a3, void *a4)
{
  result = ilaenv_NEWLAPACK();
  *a3 = 8 * *(a2 + 88) + 32;
  *a4 = 16 * (result + a1 + *(a2 + 192));
  return result;
}

void sub_236731FA8(uint64_t a1, int *a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v9 = a3;
  v556 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 25);
  v519 = v11;
  if (v11 <= 0x27)
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 80);
    sub_236734A14(*(v25 + 64), *(v24 + 136), a2, a3);
    sub_236734B04(v519, v24, v25, a3, a4);
    sub_236734F8C(v519, v24, v25, 0, a3);
    if (*(v25 + 92) == 1)
    {
      sub_236735698(v519, v24, v25, a3, a4);
    }

    else
    {
      sub_2367359EC(v519, v24, v25, a3, a4);
    }

    v43 = *(v25 + 64);
    v44 = *(v24 + 136);

    sub_236734A14(v43, v44, 0, a3);
    return;
  }

  v516 = a4 + a5;
  if (v11 - 81 >= 3)
  {
    if (v11 == 40)
    {
      v27 = *(a1 + 24);
      v28 = *(a1 + 4);
      v29 = *(a1 + 20);
      v30 = 12;
      if ((v29 ^ v28))
      {
        v31 = 16;
      }

      else
      {
        v31 = 12;
      }

      if (((v29 ^ v28) & 1) == 0)
      {
        v30 = 16;
      }

      v32 = *(a1 + v31) * v27;
      v33 = *(a1 + v30) * v27;
      if (v32 <= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v32;
      }

      v35 = 4;
      if (*(a3 + 12))
      {
        v35 = 0;
      }

      v36 = *(a3 + v35);
      v37 = *(a1 + 32);
      v38 = *(a1 + 80);
      v538 = __PAIR64__(v36, v34);
      v540 = a4;
      v539 = v34;
      v39 = v29 & 1 ^ *(v37 + 52);
      v40 = v28 & 1;
      if (a2)
      {
        v41 = a2;
      }

      else
      {
        v41 = a3;
      }

      sub_236735D40(v41, &v538);
      if (v39 == v40)
      {
        sub_236735E7C(*(v37 + 56), v37, v38, &v538, a3, &a4[v36 * v34], v516);
        sub_23673633C(v37, v38, a3, a4);
      }

      else
      {
        v503 = &a4[v36 * v34];
        sub_23673657C(v37, v38, &v538, v503);
        sub_236736888(*(v37 + 56), v37, v38, &v538, a3, v503);
      }
    }

    else
    {
      v54 = *(a1 + 32);
      v55 = *(a1 + 80);
      if (a2)
      {
        sub_236735D40(a2, a3);
        v9 = a3;
      }

      sub_23673657C(v54, v55, v9, a4);

      sub_23673633C(v54, v55, a3, a4);
    }

    return;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 80);
  v522 = v13;
  if (a2)
  {
    sub_236735D40(a2, a3);
    v13 = v522;
    v9 = a3;
  }

  v14 = *(a1 + 24);
  v510 = v14 * v14;
  if ((*(a1 + 4) & 1) == 0)
  {
    v45 = 4;
    if (*(v9 + 12))
    {
      v45 = 0;
    }

    v46 = *(v9 + v45);
    v535 = v46;
    v537 = *(a1 + 24);
    v47 = *(v12 + 56);
    v534 = v47;
    v48 = (&a4[v47 * v46] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v516 < v48)
    {
      goto LABEL_530;
    }

    v527 = (v48 + 16 * v47 * v46);
    if (v527 > v516)
    {
      goto LABEL_530;
    }

    if (*(v13 + 96))
    {
      if (v46 >= 1)
      {
        v49 = 0;
        do
        {
          if (v47 >= 1)
          {
            v50 = 0;
            do
            {
              if (*(v9 + 12))
              {
                v52 = v50;
              }

              else
              {
                v52 = v49;
              }

              if (*(v9 + 12))
              {
                v53 = v49;
              }

              else
              {
                v53 = v50;
              }

              v51 = v50 % v14 + *(*(v12 + 136) + 4 * (v50 / v14)) * v14;
              a4[v51 + v49 * v47] = vmulq_n_f64(*(*(v9 + 16) + 16 * (v53 + v52 * *(v9 + 8))), *(*(v13 + 96) + 8 * v51));
              ++v50;
            }

            while (v47 != v50);
          }

          ++v49;
        }

        while (v49 != v46);
      }
    }

    else if (v46 >= 1)
    {
      v254 = 0;
      do
      {
        v255 = 0;
        do
        {
          if (v47 >= 1)
          {
            v256 = 0;
            do
            {
              if (*(v9 + 12))
              {
                v257 = v256;
              }

              else
              {
                v257 = v255;
              }

              if (*(v9 + 12))
              {
                v258 = v255;
              }

              else
              {
                v258 = v256;
              }

              a4[(v256 % v14 + v255 * v47 + *(*(v12 + 136) + 4 * (v256 / v14)) * v14)] = *(*(v9 + 16) + 16 * (v258 + v257 * *(v9 + 8)));
              ++v256;
            }

            while (v47 != v256);
          }

          ++v255;
        }

        while (v255 != v46);
        ++v254;
      }

      while (v254 != v46);
    }

    v259 = *(v12 + 96);
    v526 = v47;
    v521 = (&a4[v47 * v46] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v14 == 1)
    {
      if (v259 >= 1)
      {
        v260 = 0;
        v261 = *(v12 + 120);
        v262 = 16 * v47;
        v263 = a4 + 1;
        do
        {
          v264 = *(v261 + 8 * v260);
          if (v46 >= 1)
          {
            v265 = (*(v13 + 40) + 16 * v264);
            v267 = *v265;
            v266 = v265[1];
            v268 = v263;
            v269 = v46;
            do
            {
              v270 = *(v268 - 1);
              v271 = v266 * v270 + v267 * *v268;
              *(v268 - 1) = v267 * v270 - v266 * *v268;
              *v268 = v271;
              v268 = (v268 + v262);
              --v269;
            }

            while (v269);
            v261 = *(v12 + 120);
          }

          ++v260;
          while (++v264 < *(v261 + 8 * v260))
          {
            if (v46 >= 1)
            {
              v272 = (*(v13 + 40) + 16 * v264);
              v273 = *v272;
              v274 = v272[1];
              v275 = &a4[*(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v264))] + 1;
              v276 = v263;
              v277 = v46;
              do
              {
                v278 = *(v276 - 1);
                v279 = *v275 - (v274 * v278 + v273 * *v276);
                *(v275 - 1) = *(v275 - 1) - (v273 * v278 - v274 * *v276);
                *v275 = v279;
                v275 = (v275 + v262);
                v276 = (v276 + v262);
                --v277;
              }

              while (v277);
              v261 = *(v12 + 120);
            }
          }

          v263 += 2;
        }

        while (v260 < *(v12 + 96));
      }

      v14 = 1;
    }

    else if (v259 >= 1)
    {
      v280 = 0;
      v281 = *(v12 + 120);
      do
      {
        v282 = *(v281 + 8 * v280);
        LODWORD(v538) = 0;
        zgetrs_NEWLAPACK();
        v283 = v280 + 1;
        v284 = v282 + 1;
        v281 = *(v12 + 120);
        if (v282 + 1 >= *(v281 + 8 * (v280 + 1)))
        {
          v13 = v522;
        }

        else
        {
          v285 = v535;
          v13 = v522;
          do
          {
            if (v285 >= 1)
            {
              v286 = 0;
              v287 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v284)) * v537;
              v288 = *(v522 + 40) + 16 * v284 * v510;
              do
              {
                if (v537 >= 1)
                {
                  for (i = 0; i < v537; ++i)
                  {
                    v290 = 0;
                    do
                    {
                      v291 = (v288 + 16 * (v290 + i * v537));
                      v292 = *v291;
                      v293 = v291[1];
                      v294 = &a4[i + v537 * v280 + v534 * v286];
                      v295 = v294[1];
                      v296 = &a4[v287 + v290 + v534 * v286];
                      v297 = v296[1] - (v293 * *v294 + v292 * v295);
                      *v296 = *v296 - (v292 * *v294 - v293 * v295);
                      v296[1] = v297;
                      ++v290;
                    }

                    while (v290 < v537);
                  }

                  v285 = v535;
                }

                ++v286;
              }

              while (v286 < v285);
              v281 = *(v12 + 120);
            }

            ++v284;
          }

          while (v284 < *(v281 + 8 * v283));
        }

        ++v280;
      }

      while (v283 < *(v12 + 96));
      v14 = v537;
      v9 = a3;
      LODWORD(v47) = v526;
    }

    if (*(v12 + 104) >= 1)
    {
      v298 = 0;
      v299 = v535;
      v300 = *(v12 + 112);
      v301 = 0;
      while (1)
      {
        v531 = v298;
        v533 = a8;
        v302 = *(v12 + 168);
        v303 = &v527[8 * v302];
        if (v516 < v303)
        {
          break;
        }

        v514 = v301;
        v304 = (v300 + 4 * v301);
        v305 = *v304;
        v306 = v304[1];
        bzero(v527, 8 * v302);
        v307 = (v303 + 4 * *(v12 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v516 < v307)
        {
          break;
        }

        v308 = v307 + 40 * *(v12 + 336);
        v13 = v522;
        _X14 = v531;
        v310 = v533;
        if (v308 > v516)
        {
          break;
        }

        v311 = (v308 + *MEMORY[0x277D85FA0] - 1) & &v531[-*MEMORY[0x277D85FA0]];
        v312 = atomic_load((v522 + 136));
        v313 = *(v12 + 52);
        v314 = 4 * *(v12 + 56);
        v9 = a3;
        if (v313 < 2)
        {
          v340 = ((v311 + v314 + 7) & 0xFFFFFFFFFFFFFFF8);
          if (v516 < v340)
          {
            break;
          }

          v341 = atomic_load((v522 + 136));
          if (&v340[(v341 * v299)] > v516)
          {
            break;
          }

          v342 = *(v12 + 168);
          if (v342 >= 1)
          {
            for (j = 0; j < v342; ++j)
            {
              v344 = *(*(v12 + 176) + 4 * j);
              if (v344 >= v305 && v344 < v306)
              {
                sub_2367392DC(j, v519, v14, v12, v13, v299, a4, v534, v527, v303, v340, v311);
                v13 = v522;
                v9 = a3;
                v342 = *(v12 + 168);
              }
            }
          }
        }

        else
        {
          v315 = (v314 + 16 * (v312 * v299) + *MEMORY[0x277D85FA0] + 7) & &v531[-*MEMORY[0x277D85FA0]];
          v554 = 0u;
          v555 = 0u;
          v553 = 0u;
          v551 = 0u;
          v552 = 0u;
          LODWORD(v551) = v313;
          atomic_store(0, &v551 + 1);
          atomic_store(0, (&v551 | 0xC));
          atomic_store(0, &v552);
          v316 = v553;
          do
          {
            _X2 = v531;
            _X7 = *(&v553 + 1);
            __asm { CASPAL          X6, X7, X2, X3, [X10] }

            _ZF = _X6 == v316;
            v316 = _X6;
          }

          while (!_ZF);
          *&v554 = v315;
          *(&v554 + 1) = v311;
          v545 = HIDWORD(v531);
          v546 = v531;
          v538 = v519;
          v539 = v12;
          v540 = v14;
          v541 = v522;
          v542 = v527;
          v543 = v303;
          v544 = v299;
          v547 = a4;
          v548 = v531;
          v549 = v534;
          v550 = v307;
          *&v555 = &v538;
          if (*(v12 + 336) >= 1)
          {
            v324 = 0;
            do
            {
              v325 = *(*(v12 + 176) + 4 * *(*(v12 + 344) + 4 * v324));
              if (v325 >= v305 && v325 < v306)
              {
                v327 = *(v12 + 368) + 8 * v324;
                v328 = *(v327 + 8);
                v329 = *v327;
                v330 = &v550[40 * v324];
                v331 = v328 - v329;
                atomic_store(v331, v330);
                *(v330 + 2) = v324;
                *(v330 + 2) = sub_236739120;
                if (!v331)
                {
                  _X0 = _X14;
                  _X1 = _X14;
                  __asm { CASP            X0, X1, X0, X1, [X10] }

                  while (1)
                  {
                    *(v330 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                    *(v330 + 4) = _X1;
                    _X2 = _X0 & 1 | v330;
                    _X5 = _X1;
                    __asm { CASPL           X4, X5, X2, X3, [X10] }

                    if (_X4 == _X0)
                    {
                      break;
                    }

                    v310 = _X14;
                    _X1 = _X14;
                    __asm { CASP            X0, X1, X14, X15, [X10] }
                  }

                  if (_X0)
                  {
                    v338 = _X14;
                    v339 = v310;
                    __ulock_wake();
                    _X14 = v338;
                    v310 = v339;
                  }
                }
              }

              ++v324;
            }

            while (v324 < *(v12 + 336));
          }

          v531 = _X14;
          v533 = v310;
          sub_2366FCD2C(&v551, 1);
          v13 = v522;
          v9 = a3;
        }

        v346 = &v527[40 * *(v12 + 336)];
        if (v516 < v346)
        {
          break;
        }

        v347 = (*(v12 + 112) + 4 * v514);
        v348 = *v347;
        v349 = v347[1];
        v350 = (&v346[*MEMORY[0x277D85FA0] - 1] & -*MEMORY[0x277D85FA0]);
        v351 = atomic_load((v13 + 140));
        if (*(v12 + 52) < 2)
        {
          v374 = atomic_load((v13 + 140));
          v373 = v510;
          if (v516 < ((&v350[v374 * v535] + 7) & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          v375 = *(v12 + 168);
          v376 = v519;
          v47 = v526;
          v298 = v531;
          a8 = v533;
          if (v375 >= 1)
          {
            do
            {
              v377 = *(*(v12 + 176) + 4 * v375 - 4);
              if (v377 >= v348 && v377 < v349)
              {
                sub_23673A03C((v375 - 1), v376, v537, v12, v13, v535, a4, v534, v521, v47, v350);
                v298 = v531;
                a8 = v533;
                v47 = v526;
                v376 = v519;
                v373 = v510;
                v13 = v522;
                v9 = a3;
              }

              --v375;
            }

            while ((v375 + 1) > 1);
          }
        }

        else
        {
          v352 = v351 * v535;
          v353 = *MEMORY[0x277D85FA0];
          v554 = 0u;
          v555 = 0u;
          v524 = (v353 + 16 * v352 - 1) & -v353;
          v553 = 0u;
          v551 = 0u;
          v552 = 0u;
          LODWORD(v551) = sub_2366FCCD0(0);
          atomic_store(0, &v551 + 1);
          atomic_store(0, (&v551 | 0xC));
          atomic_store(0, &v552);
          v354 = v553;
          v355 = v531;
          do
          {
            _X2 = v531;
            _X5 = *(&v553 + 1);
            __asm { CASPAL          X4, X5, X2, X3, [X8] }

            _ZF = _X4 == v354;
            v354 = _X4;
          }

          while (!_ZF);
          *&v554 = v524;
          *(&v554 + 1) = v350;
          v545 = HIDWORD(v531);
          v538 = v519;
          v539 = v12;
          v540 = v537;
          v541 = v522;
          v542 = v531;
          v543 = v531;
          v544 = v535;
          v546 = v521;
          v547 = a4;
          v548 = v526;
          v549 = v534;
          v550 = v527;
          *&v555 = &v538;
          v359 = *(v12 + 336);
          if (v359 >= 1)
          {
            do
            {
              v360 = v359--;
              v361 = *(*(v12 + 176) + 4 * *(*(v12 + 344) + 4 * v359));
              if (v361 >= v348 && v361 < v349)
              {
                v363 = *(v12 + 352);
                v364 = *(v363 + 8 * v360);
                v365 = *(v363 + 8 * v359);
                v366 = &v550[40 * v359];
                LODWORD(v364) = v364 - v365;
                atomic_store(v364, v366);
                *(v366 + 2) = v359;
                *(v366 + 2) = sub_236739EA0;
                if (!v364)
                {
                  do
                  {
                    _X0 = v355;
                    _X1 = v355;
                    __asm { CASP            X0, X1, X0, X1, [X10] }

                    *(v366 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                    *(v366 + 4) = v355;
                    _X2 = _X0 & 1 | v366;
                    _X5 = v355;
                    __asm { CASPL           X4, X5, X2, X3, [X10] }
                  }

                  while (_X4 != _X0);
                  if (_X0)
                  {
                    __ulock_wake();
                    v355 = v531;
                  }
                }
              }
            }

            while (v360 > 1);
          }

          sub_2366FCD2C(&v551, 1);
          v298 = v531;
          a8 = v533;
          LODWORD(v47) = v526;
          v13 = v522;
          v9 = a3;
          v373 = v510;
        }

        v300 = *(v12 + 112);
        v379 = *(v300 + 4 * v514);
        v299 = v535;
        v14 = v537;
        v301 = v514 + 1;
        if (v535 >= 1)
        {
          v380 = 16 * (*(v300 + 4 * v301) - v379) * v537;
          v381 = v537 * v379;
          v382 = v535;
          do
          {
            memcpy(&a4[v381], (v521 + v381 * 16), v380);
            v381 += v534;
            --v382;
          }

          while (v382);
          v300 = *(v12 + 112);
          v379 = *(v300 + 4 * v514);
          v9 = a3;
          v13 = v522;
          v301 = v514 + 1;
          v373 = v510;
          LODWORD(v47) = v526;
          v298 = v531;
          a8 = v533;
        }

        if (v379 < *(v300 + 4 * v301))
        {
          v383 = v379;
          v384 = *(v12 + 120);
          do
          {
            v385 = v383;
            v386 = *(v384 + 8 * v383++);
            if (v386 < *(v384 + 8 * v383))
            {
              do
              {
                if (v299 >= 1)
                {
                  v387 = 0;
                  v388 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v386)) * v537;
                  v389 = *(v13 + 40) + 16 * v386 * v373;
                  do
                  {
                    if (v537 >= 1)
                    {
                      for (k = 0; k < v537; ++k)
                      {
                        v391 = 0;
                        do
                        {
                          v392 = (v389 + 16 * (v391 + k * v537));
                          v393 = *v392;
                          v394 = v392[1];
                          v395 = &a4[k + v537 * v385 + v534 * v387];
                          v396 = v395[1];
                          v397 = &a4[v388 + v391 + v534 * v387];
                          v398 = v397[1] - (v394 * *v395 + v393 * v396);
                          *v397 = *v397 - (v393 * *v395 - v394 * v396);
                          v397[1] = v398;
                          ++v391;
                        }

                        while (v391 < v537);
                      }

                      v299 = v535;
                    }

                    ++v387;
                  }

                  while (v387 < v299);
                  v384 = *(v12 + 120);
                }

                ++v386;
              }

              while (v386 < *(v384 + 8 * v383));
              v300 = *(v12 + 112);
            }
          }

          while (v383 < *(v300 + 4 * v301));
        }

        if (v301 >= *(v12 + 104))
        {
          goto LABEL_408;
        }
      }

LABEL_530:
      __break(1u);
    }

LABEL_408:
    v399 = *(v12 + 100);
    if (v14 == 1)
    {
      if (v399 >= 1)
      {
        v400 = *(v12 + 60) - v399;
        v401 = *(v12 + 120);
        do
        {
          v402 = *(v401 + 8 * v400);
          v403 = &a4[v400];
          if (v535 >= 1)
          {
            v404 = 0;
            v405 = (*(v13 + 40) + 16 * v402);
            v407 = *v405;
            v406 = v405[1];
            do
            {
              v408 = &v403[v534 * v404];
              v409 = v408[1];
              v410 = v406 * *v408 + v407 * v409;
              *v408 = v407 * *v408 - v406 * v409;
              v408[1] = v410;
              ++v404;
            }

            while (v404 < v535);
            v401 = *(v12 + 120);
          }

          ++v400;
          while (++v402 < *(v401 + 8 * v400))
          {
            if (v535 >= 1)
            {
              v411 = 0;
              v412 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v402));
              v413 = (*(v13 + 40) + 16 * v402);
              v414 = *v413;
              v415 = v413[1];
              do
              {
                v416 = &v403[v411 * v534];
                v417 = v416[1];
                v418 = &a4[v411 * v534 + v412];
                v419 = v418[1] - (v415 * *v416 + v414 * v417);
                *v418 = *v418 - (v414 * *v416 - v415 * v417);
                v418[1] = v419;
                ++v411;
              }

              while (v411 < v535);
              v401 = *(v12 + 120);
            }
          }
        }

        while (v400 < *(v12 + 60));
      }
    }

    else if (v399 >= 1)
    {
      v420 = *(v12 + 96);
      v421 = *(v12 + 60) - v399;
      v422 = *(v12 + 120);
      do
      {
        v423 = *(v422 + 8 * v421);
        v532 = v420;
        LODWORD(v538) = 0;
        zgetrs_NEWLAPACK();
        if (v538)
        {
          goto LABEL_530;
        }

        v424 = v421 + 1;
        v425 = v423 + 1;
        v422 = *(v12 + 120);
        if (v423 + 1 >= *(v422 + 8 * (v421 + 1)))
        {
          v9 = a3;
          v13 = v522;
          LODWORD(v47) = v526;
        }

        else
        {
          v426 = v535;
          v9 = a3;
          v13 = v522;
          LODWORD(v47) = v526;
          do
          {
            if (v426 >= 1)
            {
              v427 = 0;
              v428 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v425)) * v537;
              v429 = *(v522 + 40) + 16 * v425 * v510;
              do
              {
                if (v537 >= 1)
                {
                  for (m = 0; m < v537; ++m)
                  {
                    v431 = 0;
                    do
                    {
                      v432 = (v429 + 16 * (v431 + m * v537));
                      v433 = *v432;
                      v434 = v432[1];
                      v435 = &a4[m + v537 * v421 + v534 * v427];
                      v436 = v435[1];
                      v437 = &a4[v428 + v431 + v534 * v427];
                      v438 = v437[1] - (v434 * *v435 + v433 * v436);
                      *v437 = *v437 - (v433 * *v435 - v434 * v436);
                      v437[1] = v438;
                      ++v431;
                    }

                    while (v431 < v537);
                  }

                  v426 = v535;
                }

                ++v427;
              }

              while (v427 < v426);
              v422 = *(v12 + 120);
            }

            ++v425;
          }

          while (v425 < *(v422 + 8 * v424));
        }

        v420 = v532 + 1;
        ++v421;
      }

      while (v424 < *(v12 + 60));
    }

    if (*(v13 + 104))
    {
      if (v535 >= 1)
      {
        v439 = 0;
        for (n = 0; n != v535; ++n)
        {
          if (v47 >= 1)
          {
            v441 = 0;
            do
            {
              if (*(v9 + 12))
              {
                v443 = v441;
              }

              else
              {
                v443 = n;
              }

              if (*(v9 + 12))
              {
                v444 = n;
              }

              else
              {
                v444 = v441;
              }

              v442 = v441 + *(*(v12 + 144) + 4 * (v441 / v537)) * v537 - v441 / v537 * v537;
              *(*(v9 + 16) + 16 * (v444 + v443 * *(v9 + 8))) = vmulq_n_f64(a4[v442 + v439], *(*(v13 + 104) + 8 * v442));
              ++v441;
            }

            while (v47 != v441);
          }

          v439 += v534;
        }
      }
    }

    else if (v535 >= 1)
    {
      v498 = 0;
      for (ii = 0; ii != v535; ++ii)
      {
        if (v47 >= 1)
        {
          v500 = 0;
          do
          {
            if (*(v9 + 12))
            {
              v501 = v500;
            }

            else
            {
              v501 = ii;
            }

            if (*(v9 + 12))
            {
              v502 = ii;
            }

            else
            {
              v502 = v500;
            }

            *(*(v9 + 16) + 16 * (v502 + v501 * *(v9 + 8))) = a4[v498 + v500 + *(*(v12 + 144) + 4 * (v500 / v537)) * v537 - v500 / v537 * v537];
            ++v500;
          }

          while (v47 != v500);
        }

        v498 += v534;
      }
    }

    return;
  }

  v15 = 4;
  if (*(v9 + 12))
  {
    v15 = 0;
  }

  v16 = *(v9 + v15);
  LODWORD(v551) = v16;
  v17 = *(v12 + 56);
  v536 = v17;
  LODWORD(v538) = v14;
  v18 = (&a4[v17 * v16] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v516 < v18)
  {
    goto LABEL_530;
  }

  v520 = v18 + 16 * v17 * v16;
  if (v520 > v516)
  {
    goto LABEL_530;
  }

  if (*(v13 + 104))
  {
    if (v16 >= 1)
    {
      v19 = 0;
      do
      {
        if (v17 >= 1)
        {
          v20 = 0;
          do
          {
            if (*(v9 + 12))
            {
              v22 = v20;
            }

            else
            {
              v22 = v19;
            }

            if (*(v9 + 12))
            {
              v23 = v19;
            }

            else
            {
              v23 = v20;
            }

            v21 = v20 % v14 + *(*(v12 + 144) + 4 * (v20 / v14)) * v14;
            a4[v21 + v19 * v17] = vmulq_n_f64(*(*(v9 + 16) + 16 * (v23 + v22 * *(v9 + 8))), *(*(v13 + 104) + 8 * v21));
            ++v20;
          }

          while (v17 != v20);
        }

        ++v19;
      }

      while (v19 != v16);
    }
  }

  else if (v16 >= 1)
  {
    v56 = 0;
    do
    {
      if (v17 >= 1)
      {
        v57 = 0;
        do
        {
          if (*(v9 + 12))
          {
            v58 = v57;
          }

          else
          {
            v58 = v56;
          }

          if (*(v9 + 12))
          {
            v59 = v56;
          }

          else
          {
            v59 = v57;
          }

          a4[(v57 % v14 + v56 * v17 + *(*(v12 + 144) + 4 * (v57 / v14)) * v14)] = *(*(v9 + 16) + 16 * (v59 + v58 * *(v9 + 8)));
          ++v57;
        }

        while (v17 != v57);
      }

      ++v56;
    }

    while (v56 != v16);
  }

  v60 = *(v12 + 100);
  v525 = v17;
  v530 = (&a4[v17 * v16] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v14 == 1)
  {
    v61 = 1;
    if (v60 >= 1)
    {
      v62 = *(v12 + 60);
      v63 = 16 * v17;
      v64 = &a4[v62 - 1] + 8;
      do
      {
        v65 = v62--;
        v66 = *(v12 + 120);
        v67 = *(v66 + 8 * v62);
        v68 = v67 + 1;
        if (v67 + 1 < *(v66 + 8 * v65))
        {
          do
          {
            if (v16 >= 1)
            {
              v69 = (*(v13 + 40) + 16 * v68);
              v70 = *v69;
              v71 = v69[1];
              v72 = &a4[*(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v68))] + 1;
              v73 = v64;
              v74 = v16;
              do
              {
                v75 = *(v72 - 1);
                v76 = *v73 - (v71 * v75 + v70 * *v72);
                *(v73 - 1) = *(v73 - 1) - (v70 * v75 - v71 * *v72);
                *v73 = v76;
                v72 = (v72 + v63);
                v73 = (v73 + v63);
                --v74;
              }

              while (v74);
              v66 = *(v12 + 120);
            }

            ++v68;
          }

          while (v68 < *(v66 + 8 * v65));
          v67 = *(v66 + 8 * v62);
        }

        if (v16 >= 1)
        {
          v77 = (*(v13 + 40) + 16 * v67);
          v79 = *v77;
          v78 = v77[1];
          v80 = v64;
          v81 = v16;
          do
          {
            v82 = *(v80 - 1);
            v83 = v78 * v82 + v79 * *v80;
            *(v80 - 1) = v79 * v82 - v78 * *v80;
            *v80 = v83;
            v80 = (v80 + v63);
            --v81;
          }

          while (v81);
        }

        v64 -= 16;
      }

      while (v62 > *(v12 + 60) - *(v12 + 100));
    }
  }

  else
  {
    v61 = v14 * v14;
    if (v60 >= 1)
    {
      v84 = *(v12 + 60);
      v85 = *(v12 + 96) + v60;
      do
      {
        v528 = v85;
        v86 = v84 - 1;
        v87 = *(v12 + 120);
        v88 = *(v87 + 8 * (v84 - 1)) + 1;
        v89 = v538;
        if (v88 < *(v87 + 8 * v84))
        {
          v90 = v551;
          do
          {
            if (v90 >= 1)
            {
              v91 = 0;
              v92 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v88)) * v89;
              v93 = *(v13 + 40) + 16 * v88 * v61;
              do
              {
                if (v89 >= 1)
                {
                  for (jj = 0; jj < v89; ++jj)
                  {
                    v95 = 0;
                    do
                    {
                      v96 = (v93 + 16 * (v95 + jj * v89));
                      v97 = *v96;
                      v98 = v96[1];
                      v99 = &a4[v92 + v95 + v536 * v91];
                      v100 = v99[1];
                      v101 = &a4[v536 * v91 + jj + v89 * v86];
                      v102 = v101[1] - (v98 * *v99 + v97 * v100);
                      *v101 = *v101 - (v97 * *v99 - v98 * v100);
                      v101[1] = v102;
                      ++v95;
                    }

                    while (v95 < v89);
                  }

                  v90 = v551;
                }

                ++v91;
              }

              while (v91 < v90);
              v87 = *(v12 + 120);
            }

            ++v88;
          }

          while (v88 < *(v87 + 8 * v84));
        }

        v85 = v528 - 1;
        zgetrs_NEWLAPACK();
        --v84;
        v9 = a3;
        v13 = v522;
        v61 = v510;
        v17 = v525;
        v18 = v530;
      }

      while (v86 > *(v12 + 60) - *(v12 + 100));
    }
  }

  v505 = *(v12 + 104);
  if (v505 > 0)
  {
    v529 = 16 * v17;
    while (1)
    {
      v103 = v505;
      v104 = *(v12 + 112);
      v504 = v505--;
      v105 = *(v104 + 4 * v505);
      if (v105 >= *(v104 + 4 * v504))
      {
        v108 = v519;
      }

      else
      {
        v106 = v105;
        v107 = *(v12 + 120);
        v108 = v519;
        do
        {
          v109 = v106;
          v110 = *(v107 + 8 * v106++);
          if (v110 < *(v107 + 8 * v106))
          {
            v111 = v538;
            v112 = v551;
            do
            {
              if (v112 >= 1)
              {
                v113 = 0;
                v114 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v110)) * v111;
                v115 = *(v13 + 40) + 16 * v110 * v61;
                do
                {
                  if (v111 >= 1)
                  {
                    for (kk = 0; kk < v111; ++kk)
                    {
                      v117 = 0;
                      do
                      {
                        v118 = (v115 + 16 * (v117 + kk * v111));
                        v119 = *v118;
                        v120 = v118[1];
                        v121 = &a4[v114 + v117 + v536 * v113];
                        v122 = v121[1];
                        v123 = &a4[v536 * v113 + kk + v111 * v109];
                        v124 = v123[1] - (v120 * *v121 + v119 * v122);
                        *v123 = *v123 - (v119 * *v121 - v120 * v122);
                        v123[1] = v124;
                        ++v117;
                      }

                      while (v117 < v111);
                    }

                    v112 = v551;
                  }

                  ++v113;
                }

                while (v113 < v112);
                v107 = *(v12 + 120);
              }

              ++v110;
            }

            while (v110 < *(v107 + 8 * v106));
            v104 = *(v12 + 112);
          }
        }

        while (v106 < *(v104 + 4 * v103));
        v105 = *(v104 + 4 * v505);
      }

      v125 = v538;
      v126 = v551;
      if (*(v12 + 168) >= 1)
      {
        break;
      }

LABEL_273:
      if (v126 >= 1)
      {
        v251 = 16 * (*(v104 + 4 * v504) - v105) * v125;
        v252 = v126;
        v253 = v105 * v125;
        do
        {
          memcpy(&a4[v253], (v18 + v253 * 16), v251);
          v18 = v530;
          v253 += v536;
          --v252;
        }

        while (v252);
      }

      v9 = a3;
      v13 = v522;
      v61 = v510;
      LODWORD(v17) = v525;
      if (v504 <= 1)
      {
        goto LABEL_457;
      }
    }

    v127 = 0;
    v128 = v536;
    v129 = *(v104 + 4 * v505 + 4);
    v130 = 16 * v536;
    v507 = v129;
    v517 = v105;
    while (1)
    {
      v131 = *(v12 + 176);
      v132 = *(v131 + 4 * v127);
      v133 = v132 >= v105 && v132 < v129;
      if (v133)
      {
        break;
      }

      v134 = v127 + 1;
LABEL_205:
      v197 = *(v12 + 168);
      v127 = v134;
      if (v134 >= v197)
      {
        v125 = v538;
        v126 = v551;
        v104 = *(v12 + 112);
        v198 = (v104 + 4 * v505);
        v105 = *v198;
        if (v197 >= 1)
        {
          v518 = *v198;
          v199 = v198[1];
          v509 = v199;
          do
          {
            v200 = v197--;
            v201 = *(v12 + 176);
            v202 = *(v201 + 4 * v197);
            if (v202 >= v518 && v202 < v199)
            {
              if (v108 == 83)
              {
                v204 = *(*(v13 + 80) + 4 * v197);
                v205 = *(*(v13 + 88) + 4 * v197);
                v206 = *(*(v13 + 72) + 4 * v197) + (*(v201 + 4 * v200) - v202) * v125;
                v207 = *(*(v13 + 64) + 4 * v197);
              }

              else
              {
                v205 = 0;
                v204 = 0;
                v206 = (*(v201 + 4 * v200) - v202) * v125;
                v207 = v206;
              }

              v208 = v205 + v206 + v125 * (*(*(v12 + 200) + 8 * v200) - *(*(v12 + 200) + 8 * v197));
              if (v108 == 81)
              {
                v209 = 0;
                v210 = 0;
              }

              else
              {
                v209 = *(*(v13 + 112) + 8 * v197) + 8 + 16 * v206 * (v204 + v206 + v125 * (*(*(v12 + 184) + 8 * v200) - *(*(v12 + 184) + 8 * v197))) + 16 * v206 * (v205 + v125 * (*(*(v12 + 200) + 8 * v200) - *(*(v12 + 200) + 8 * v197)));
                v210 = v209 + 4 * v206 + 4 * v204;
              }

              v211 = (v209 + 4 * v206);
              if (v204 <= 0)
              {
                v211 = 0;
              }

              if (v207)
              {
                v512 = v204 + v206 + v125 * (*(*(v12 + 184) + 8 * v200) - *(*(v12 + 184) + 8 * v197));
                v513 = v208;
                if (v126 >= 1)
                {
                  v212 = 0;
                  v213 = 16 * v208;
                  v214 = v530;
                  v215 = a4;
                  v216 = v520;
                  do
                  {
                    if (v209)
                    {
                      if (v207 < 1)
                      {
                        LODWORD(v222) = 0;
                      }

                      else
                      {
                        v217 = v210;
                        v218 = v216;
                        v219 = v207;
                        do
                        {
                          v221 = *v217++;
                          v220 = v221;
                          if (v221 < 0)
                          {
                            v220 = -v220;
                          }

                          *v218++ = a4[v212 * v536 + v220];
                          --v219;
                        }

                        while (v219);
                        LODWORD(v222) = v207;
                      }

                      if (v222 < v206)
                      {
                        v222 = v222;
                        do
                        {
                          v226 = *(v209 + 4 * v222);
                          if (v226 < 0)
                          {
                            v226 = -v226;
                          }

                          v216[v222++] = *(v530 + 16 * v212 * v525 + 16 * v226);
                        }

                        while (v206 != v222);
                        LODWORD(v222) = v206;
                      }
                    }

                    else
                    {
                      v223 = *(v12 + 176);
                      v224 = *(v223 + 4 * v197) * v125;
                      if (v224 >= *(v223 + 4 * v200) * v125)
                      {
                        LODWORD(v222) = 0;
                      }

                      else
                      {
                        v225 = 0;
                        do
                        {
                          v216[v225] = v215[v224 + v225];
                          ++v225;
                        }

                        while (v224 + v225 < *(*(v12 + 176) + 4 * v200) * v125);
                        LODWORD(v222) = v225;
                      }
                    }

                    v227 = *(v12 + 184);
                    for (mm = *(v227 + 8 * v197); mm < *(v227 + 8 * v200); ++mm)
                    {
                      if (v125 >= 1)
                      {
                        v229 = v222;
                        LODWORD(v222) = v125 + v222;
                        v230 = v214;
                        v231 = v125;
                        do
                        {
                          v216[v229++] = *(v230 + 16 * *(*(v12 + 192) + 4 * mm) * v125);
                          v230 += 16;
                          --v231;
                        }

                        while (v231);
                        v227 = *(v12 + 184);
                      }
                    }

                    if (v204 >= 1)
                    {
                      v232 = v222;
                      v233 = v211;
                      v234 = v204;
                      do
                      {
                        v235 = *v233++;
                        v216[v232++] = *(v530 + 16 * v212 * v525 + 16 * v235);
                        --v234;
                      }

                      while (v234);
                    }

                    ++v212;
                    v216 = (v216 + v213);
                    v215 += v536;
                    v214 += v529;
                  }

                  while (v212 != v126);
                }

                if (v512 > v207)
                {
                  cblas_zgemm_NEWLAPACK();
                  v108 = v519;
                  v13 = v522;
                }

                if (v207 >= 2)
                {
                  cblas_ztrsm_NEWLAPACK();
                  v108 = v519;
                  v13 = v522;
                }

                if (v209)
                {
                  v18 = v530;
                  v199 = v509;
                  if (v126 >= 1)
                  {
                    v236 = 0;
                    v237 = v520;
                    do
                    {
                      if (v207 >= 1)
                      {
                        v238 = v237;
                        v239 = v209;
                        v240 = v207;
                        do
                        {
                          v242 = *v239++;
                          v241 = v242;
                          v243 = *v238++;
                          *(v530 + 16 * v236 * v525 + 16 * v241) = v243;
                          --v240;
                        }

                        while (v240);
                      }

                      ++v236;
                      v237 += v513;
                    }

                    while (v236 != v126);
                  }
                }

                else
                {
                  v18 = v530;
                  v199 = v509;
                  if (v126 >= 1)
                  {
                    v244 = 0;
                    v245 = *(v12 + 176);
                    v246 = v530;
                    v247 = v520;
                    do
                    {
                      v248 = *(v245 + 4 * v197) * v125;
                      v249 = v247;
                      if (v248 < *(v245 + 4 * v200) * v125)
                      {
                        do
                        {
                          v250 = *v249++;
                          *(v246 + 16 * v248++) = v250;
                          v245 = *(v12 + 176);
                        }

                        while (v248 < *(v245 + 4 * v200) * v125);
                      }

                      ++v244;
                      v247 += v513;
                      v246 += v529;
                    }

                    while (v244 != v126);
                  }
                }
              }
            }
          }

          while (v200 > 1);
          v104 = *(v12 + 112);
          v105 = *(v104 + 4 * v505);
          LODWORD(v125) = v538;
          LODWORD(v126) = v551;
        }

        goto LABEL_273;
      }
    }

    if (v108 == 83)
    {
      v135 = *(*(v13 + 72) + 4 * v127);
      v136 = *(*(v13 + 80) + 4 * v127);
      v137 = *(*(v13 + 88) + 4 * v127);
    }

    else
    {
      v135 = 0;
      v136 = 0;
      v137 = 0;
    }

    v134 = v127 + 1;
    v138 = v135 + (*(v131 + 4 * (v127 + 1)) - v132) * v125;
    v139 = v138;
    if (v108 == 83)
    {
      v139 = *(*(v13 + 64) + 4 * v127);
    }

    v140 = v125 * (*(*(v12 + 200) + 8 * v134) - *(*(v12 + 200) + 8 * v127));
    v141 = *(*(v13 + 112) + 8 * v127) + 8 + 16 * (v138 + v136 + v125 * (*(*(v12 + 184) + 8 * v134) - *(*(v12 + 184) + 8 * v127))) * v138 + 16 * (v140 + v137) * v138 + 4 * v138 + 4 * v136;
    if (v108 == 81)
    {
      v142 = 0;
    }

    else
    {
      v142 = v141;
    }

    if (v137 <= 0)
    {
      v143 = 0;
    }

    else
    {
      v143 = &v142[v138];
    }

    if (!v139)
    {
      goto LABEL_205;
    }

    v523 = v137;
    v511 = v142;
    v508 = v143;
    if (v108 == 81)
    {
      if (v126 >= 1)
      {
        v144 = 0;
        v145 = a4;
        v146 = v520;
        do
        {
          v147 = v145;
          v148 = v146;
          v149 = v139;
          if (v139 >= 1)
          {
            do
            {
              *v148++ = v147[*(*(v12 + 176) + 4 * v127) * v125];
              ++v147;
              --v149;
            }

            while (v149);
          }

          ++v144;
          v146 += v139;
          v145 = (v145 + v130);
        }

        while (v144 != v126);
LABEL_165:
        cblas_ztrsm_NEWLAPACK();
        v108 = v519;
        if (v519 == 81)
        {
          v13 = v522;
          v18 = v530;
          v128 = v536;
          v156 = v523;
          v157 = 0;
          v158 = v520;
          v159 = a4;
          do
          {
            v160 = v158;
            v161 = v159;
            v162 = v139;
            if (v139 >= 1)
            {
              do
              {
                v163 = *v160++;
                v161[*(*(v12 + 176) + 4 * v127) * v125] = v163;
                ++v161;
                --v162;
              }

              while (v162);
            }

            ++v157;
            v159 = (v159 + v130);
            v158 += v139;
          }

          while (v157 != v126);
        }

        else
        {
          v13 = v522;
          v18 = v530;
          v128 = v536;
          v156 = v523;
          v164 = 0;
          v165 = v520;
          do
          {
            if (v139 >= 1)
            {
              v166 = v165;
              v167 = v511;
              v168 = v139;
              do
              {
                v170 = *v167++;
                v169 = v170;
                v171 = *v166++;
                a4[v164 * v536 + v169] = v171;
                --v168;
              }

              while (v168);
            }

            ++v164;
            v165 += v139;
          }

          while (v164 != v126);
        }

        goto LABEL_177;
      }
    }

    else if (v126 >= 1)
    {
      v150 = 0;
      v151 = v520;
      do
      {
        if (v139 >= 1)
        {
          v152 = v142;
          v153 = v151;
          v154 = v139;
          do
          {
            v155 = *v152++;
            *v153++ = a4[v150 * v128 + v155];
            --v154;
          }

          while (v154);
        }

        ++v150;
        v151 += v139;
      }

      while (v150 != v126);
      goto LABEL_165;
    }

    cblas_ztrsm_NEWLAPACK();
    v156 = v523;
    v128 = v536;
    v18 = v530;
    v108 = v519;
    v13 = v522;
LABEL_177:
    v172 = v138 + v156 + v140;
    if (v172 > v139)
    {
      v173 = (v520 + 16 * v139 * v126);
      v506 = v138 + v156 + v140;
      if (v138 > v139)
      {
        cblas_zgemm_NEWLAPACK();
        v172 = v506;
        v156 = v523;
        v128 = v536;
        v18 = v530;
        v108 = v519;
        v13 = v522;
      }

      if (v172 > v138)
      {
        cblas_zgemm_NEWLAPACK();
        v172 = v506;
        v156 = v523;
        v128 = v536;
        v18 = v530;
        v108 = v519;
        v13 = v522;
      }

      if (v126 >= 1)
      {
        v174 = 0;
        v175 = 16 * v172 - 16 * v139;
        v176 = a4;
        do
        {
          v177 = v174 * v128;
          if (v138 <= v139)
          {
            v184 = 0;
          }

          else
          {
            v178 = &v511[v139];
            v179 = v173;
            v180 = (v138 - v139);
            do
            {
              v182 = *v178++;
              v181 = v182;
              if (v182 < 0)
              {
                v181 = -v181;
              }

              v183 = *v179++;
              a4[v177 + v181] = vaddq_f64(v183, a4[v177 + v181]);
              --v180;
            }

            while (v180);
            v184 = v138 - v139;
          }

          v185 = *(v12 + 200);
          v186 = (v185 + 8 * v127);
          for (nn = *v186; nn < v186[1]; ++nn)
          {
            if (v125 >= 1)
            {
              v188 = v184;
              v184 += v125;
              v189 = v176;
              v190 = v125;
              do
              {
                v191 = *(*(v12 + 208) + 4 * nn) * v125;
                v189[v191] = vaddq_f64(v173[v188++], v189[v191]);
                ++v189;
                --v190;
              }

              while (v190);
              v185 = *(v12 + 200);
            }

            v186 = (v185 + 8 * v127);
          }

          if (v156 >= 1)
          {
            v192 = &a4[v177];
            v193 = v184;
            v194 = v508;
            v195 = v156;
            do
            {
              v196 = *v194++;
              v192[v196] = vaddq_f64(v173[v193++], v192[v196]);
              --v195;
            }

            while (v195);
          }

          ++v174;
          v173 = (v173 + v175);
          v176 = (v176 + v130);
        }

        while (v174 != v126);
        v18 = v530;
      }

      v105 = v517;
    }

    v129 = v507;
    v134 = v127 + 1;
    goto LABEL_205;
  }

  LODWORD(v125) = v538;
LABEL_457:
  v445 = *(v12 + 96);
  if (v125 == 1)
  {
    if (v445 >= 1)
    {
      v446 = v551;
      do
      {
        v447 = v445--;
        v448 = *(v12 + 120);
        v449 = *(v448 + 8 * v445);
        v450 = v449 + 1;
        v451 = &a4[v445];
        if (v449 + 1 < *(v448 + 8 * v447))
        {
          do
          {
            if (v446 >= 1)
            {
              v452 = 0;
              v453 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v450));
              v454 = (*(v13 + 40) + 16 * v450);
              v455 = *v454;
              v456 = v454[1];
              do
              {
                v457 = &a4[v452 * v536 + v453];
                v458 = v457[1];
                v459 = &v451[v452 * v536];
                v460 = v459[1] - (v456 * *v457 + v455 * v458);
                *v459 = *v459 - (v455 * *v457 - v456 * v458);
                v459[1] = v460;
                ++v452;
              }

              while (v452 < v446);
              v448 = *(v12 + 120);
            }

            ++v450;
          }

          while (v450 < *(v448 + 8 * v447));
          v449 = *(v448 + 8 * v445);
        }

        if (v446 >= 1)
        {
          v461 = 0;
          v462 = (*(v13 + 40) + 16 * v449);
          v464 = *v462;
          v463 = v462[1];
          do
          {
            v465 = &v451[v536 * v461];
            v466 = v465[1];
            v467 = v463 * *v465 + v464 * v466;
            *v465 = v464 * *v465 - v463 * v466;
            v465[1] = v467;
            ++v461;
          }

          while (v461 < v446);
        }
      }

      while (v447 >= 2);
    }
  }

  else if (v445 >= 1)
  {
    do
    {
      v468 = *(v12 + 120);
      v469 = *(v468 + 8 * (v445 - 1)) + 1;
      v470 = v538;
      if (v469 < *(v468 + 8 * v445))
      {
        v471 = v551;
        do
        {
          if (v471 >= 1)
          {
            v472 = 0;
            v473 = *(*(v12 + 136) + 4 * *(*(v12 + 128) + 4 * v469)) * v470;
            v474 = *(v13 + 40) + 16 * v469 * v61;
            do
            {
              if (v470 >= 1)
              {
                for (i1 = 0; i1 < v470; ++i1)
                {
                  v476 = 0;
                  do
                  {
                    v477 = (v474 + 16 * (v476 + i1 * v470));
                    v478 = *v477;
                    v479 = v477[1];
                    v480 = &a4[v473 + v476 + v536 * v472];
                    v481 = v480[1];
                    v482 = &a4[v536 * v472 + i1 + v470 * (v445 - 1)];
                    v483 = v482[1] - (v479 * *v480 + v478 * v481);
                    *v482 = *v482 - (v478 * *v480 - v479 * v481);
                    v482[1] = v483;
                    ++v476;
                  }

                  while (v476 < v470);
                }

                v471 = v551;
              }

              ++v472;
            }

            while (v472 < v471);
            v468 = *(v12 + 120);
          }

          ++v469;
        }

        while (v469 < *(v468 + 8 * v445));
      }

      zgetrs_NEWLAPACK();
      v133 = v445-- <= 1;
      v9 = a3;
      v13 = v522;
      v61 = v510;
      LODWORD(v17) = v525;
    }

    while (!v133);
  }

  v484 = v551;
  if (*(v13 + 96))
  {
    if (v551 >= 1)
    {
      v485 = 0;
      v486 = 0;
      v487 = v538;
      do
      {
        if (v17 >= 1)
        {
          v488 = 0;
          do
          {
            if (*(v9 + 12))
            {
              v490 = v488;
            }

            else
            {
              v490 = v486;
            }

            if (*(v9 + 12))
            {
              v491 = v486;
            }

            else
            {
              v491 = v488;
            }

            v489 = v488 + *(*(v12 + 136) + 4 * (v488 / v487)) * v487 - v488 / v487 * v487;
            *(*(v9 + 16) + 16 * (v491 + v490 * *(v9 + 8))) = vmulq_n_f64(a4[v489 + v485], *(*(v13 + 96) + 8 * v489));
            ++v488;
          }

          while (v17 != v488);
        }

        ++v486;
        v485 += v536;
      }

      while (v486 != v484);
    }
  }

  else if (v551 >= 1)
  {
    v492 = 0;
    v493 = 0;
    v494 = v538;
    do
    {
      if (v17 >= 1)
      {
        v495 = 0;
        do
        {
          if (*(v9 + 12))
          {
            v496 = v495;
          }

          else
          {
            v496 = v493;
          }

          if (*(v9 + 12))
          {
            v497 = v493;
          }

          else
          {
            v497 = v495;
          }

          *(*(v9 + 16) + 16 * (v497 + v496 * *(v9 + 8))) = a4[v492 + v495 + *(*(v12 + 136) + 4 * (v495 / v494)) * v494 - v495 / v494 * v494];
          ++v495;
        }

        while (v17 != v495);
      }

      ++v493;
      v492 += v536;
    }

    while (v493 != v484);
  }
}

int *sub_236734A14(int *result, uint64_t a2, int *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (*(a4 + 12))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  if (*(a4 + 12))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (result)
  {
    v7 = *(a4 + v5);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(a4 + v6);
      while (v9 < 1)
      {
LABEL_29:
        if (++v8 == v7)
        {
          return result;
        }
      }

      v10 = 0;
      while (a2 && *(a2 + v10) == 1)
      {
        v11 = v4[2];
        v12 = v8 + v11 * v10;
        v13 = v10 + v8 * v11;
        if (v4[3])
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        v15 = *(*(v4 + 2) + 16 * v14);
        v16 = *(a4 + 16);
        v17 = *(a4 + 8);
        if (*(a4 + 12))
        {
          goto LABEL_26;
        }

        v18 = v10 + v17 * v8;
LABEL_28:
        *(v16 + 16 * v18) = v15;
        if (v9 == ++v10)
        {
          goto LABEL_29;
        }
      }

      v19 = v4[2];
      v20 = v8 + v19 * v10;
      v21 = v10 + v8 * v19;
      if (v4[3])
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      v15 = vmulq_n_f64(*(*(v4 + 2) + 16 * v22), *&result[2 * v10]);
      v16 = *(a4 + 16);
      v17 = *(a4 + 8);
      if ((*(a4 + 12) & 1) == 0)
      {
        v18 = v10 + v8 * v17;
        goto LABEL_28;
      }

LABEL_26:
      v18 = v8 + v17 * v10;
      goto LABEL_28;
    }
  }

  else if (a3)
  {
    return sub_236735D40(a3, a4);
  }

  return result;
}

uint64_t sub_236734B04(uint64_t result, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  if (*(a2 + 64) >= 1)
  {
    v8 = 0;
    v9 = *(a4 + v5);
    v52 = result;
    v53 = result - 3;
    do
    {
      v10 = v8;
      if (result == 4)
      {
        v11 = atomic_load((a3[6] + 4 * v8));
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a2 + 120);
      ++v8;
      v13 = *(v12 + 8 * (v10 + 1));
      v14 = *(v12 + 8 * v10);
      v15 = *(*(a2 + 88) + 4 * (v10 + 1)) - *(*(a2 + 88) + 4 * v10) + v11;
      v16 = v15;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v10);
      }

      v17 = 2 * v15;
      if (v53 >= 2)
      {
        v17 = 0;
      }

      v57 = v17;
      if (v16)
      {
        v18 = v11 + v13 - v14;
        v19 = v15;
        v51 = *(*(a2 + 88) + 4 * (v10 + 1)) - *(*(a2 + 88) + 4 * v10) + v11;
        v54 = *(a3[5] + 8 * v10);
        v55 = v18;
        v50 = v18;
        if (v9 <= 0)
        {
          cblas_ztrsm_NEWLAPACK();
          result = v52;
        }

        else
        {
          v20 = 0;
          v21 = 16 * v16;
          v49 = 16 * v15 * v18;
          v22 = *(a3[5] + 8 * v10) + v49 + 16 * v17 + 8;
          v23 = a5;
          do
          {
            if (v16 >= 1)
            {
              v24 = v16;
              v25 = v22;
              v26 = v23;
              do
              {
                if (*(a4 + 12))
                {
                  v27 = v20 + *(a4 + 8) * *v25;
                }

                else
                {
                  v27 = *v25 + *(a4 + 8) * v20;
                }

                *v26++ = *(*(a4 + 16) + 16 * v27);
                ++v25;
                --v24;
              }

              while (v24);
            }

            ++v20;
            v23 = (v23 + v21);
          }

          while (v20 != v9);
          v28 = a5;
          cblas_ztrsm_NEWLAPACK();
          v29 = 0;
          result = v52;
          do
          {
            if (v16 >= 1)
            {
              v30 = v16;
              v31 = (v54 + v49 + 16 * v57 + 8);
              v32 = v28;
              do
              {
                if (*(a4 + 12))
                {
                  v33 = v29 + *(a4 + 8) * *v31;
                }

                else
                {
                  v33 = *v31 + *(a4 + 8) * v29;
                }

                v34 = *v32++;
                *(*(a4 + 16) + 16 * v33) = v34;
                ++v31;
                --v30;
              }

              while (v30);
            }

            ++v29;
            v28 = (v28 + v21);
          }

          while (v29 != v9);
        }

        v35 = v55 - v16;
        if (v55 > v16)
        {
          cblas_zgemm_NEWLAPACK();
          result = v52;
          if (v9 >= 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = *(*(a2 + 88) + 4 * v8) - *(*(a2 + 88) + 4 * v10);
            v39 = v51 - v16;
            do
            {
              if (v51 > v16)
              {
                v40 = v36;
                v41 = (v54 + 16 * v19 * v50 + 16 * v57 + 4 * v16 + 8);
                v42 = v16;
                do
                {
                  if (*(a4 + 12))
                  {
                    v43 = v37 + *(a4 + 8) * *v41;
                  }

                  else
                  {
                    v43 = *v41 + *(a4 + 8) * v37;
                  }

                  *(*(a4 + 16) + 16 * v43) = vaddq_f64(a5[v16 * v9 + v40], *(*(a4 + 16) + 16 * v43));
                  ++v42;
                  ++v41;
                  ++v40;
                }

                while (v42 < v19);
              }

              v44 = *(a2 + 120);
              v45 = *(v44 + 8 * v10) + v38;
              if (v45 < *(v44 + 8 * v8))
              {
                v46 = &a5[v16 * v9 + v39];
                do
                {
                  if (*(a4 + 12))
                  {
                    v47 = v37 + *(a4 + 8) * *(*(a2 + 128) + 4 * v45);
                  }

                  else
                  {
                    v47 = *(*(a2 + 128) + 4 * v45) + *(a4 + 8) * v37;
                  }

                  v48 = *v46++;
                  *(*(a4 + 16) + 16 * v47) = vaddq_f64(v48, *(*(a4 + 16) + 16 * v47));
                  ++v45;
                }

                while (v45 < *(*(a2 + 120) + 8 * v8));
              }

              ++v37;
              v36 += v35;
              v39 += v35;
            }

            while (v37 != v9);
          }
        }
      }
    }

    while (v8 < *(a2 + 64));
  }

  return result;
}

void sub_236734F8C(int a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v6 = 4;
  if (*(a5 + 12))
  {
    v6 = 0;
  }

  v56 = *(a5 + v6);
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a5;
  }

  v52 = a2;
  if ((a1 - 3) >= 2)
  {
    if (a1)
    {
      v30 = *(a2 + 64);
      if (v30 >= 1)
      {
        v31 = 0;
        do
        {
          v32 = v31 + 1;
          if (v56 >= 1)
          {
            v33 = 0;
            v34 = *(*(a2 + 120) + 8 * v32) - *(*(a2 + 120) + 8 * v31);
            v51 = v31 + 1;
            v35 = *(*(a2 + 88) + 4 * v32) - *(*(a2 + 88) + 4 * v31);
            v36 = *(a3[5] + 8 * v31);
            v37 = v35;
            v55 = v36 + 16 * v34 * v35 + 8;
            if (v35 <= 1)
            {
              v38 = 1;
            }

            else
            {
              v38 = v35;
            }

            v39 = (v36 + 16);
            v40 = 16 * v34 + 16;
            do
            {
              v41 = v39;
              v42 = v38;
              v43 = v55;
              if (v37 >= 1)
              {
                do
                {
                  if (v7[3])
                  {
                    v44 = v33 + v7[2] * *v43;
                  }

                  else
                  {
                    v44 = *v43 + v7[2] * v33;
                  }

                  v45 = (*(v7 + 2) + 16 * v44);
                  v46 = sub_23681E17C(*v45, v45[1], *(v41 - 1), *v41);
                  if (*(a5 + 12))
                  {
                    v48 = v33 + *(a5 + 8) * *v43;
                  }

                  else
                  {
                    v48 = *v43 + *(a5 + 8) * v33;
                  }

                  v49 = *(a5 + 16) + 16 * v48;
                  *v49 = v46;
                  *(v49 + 8) = v47;
                  ++v43;
                  v41 = (v41 + v40);
                  --v42;
                }

                while (v42);
              }

              ++v33;
            }

            while (v33 != v56);
            v32 = v51;
            a2 = v52;
            v30 = *(v52 + 64);
          }

          v31 = v32;
        }

        while (v32 < v30);
      }
    }

    else if (a4)
    {

      sub_236735D40(a4, a5);
    }
  }

  else if (*(a2 + 64) >= 1)
  {
    v8 = 0;
    v50 = a1;
    do
    {
      if (a1 == 4)
      {
        v9 = atomic_load((a3[6] + 4 * v8));
      }

      else
      {
        v9 = 0;
      }

      v10 = *(a2 + 120);
      v11 = *(v10 + 8 * (v8 + 1));
      v12 = *(v10 + 8 * v8);
      v54 = v8 + 1;
      v13 = *(*(a2 + 88) + 4 * (v8 + 1)) - *(*(a2 + 88) + 4 * v8) + v9;
      v14 = v13;
      if (a1 == 4)
      {
        v14 = *(a3[7] + 4 * v8);
      }

      if (v56 >= 1)
      {
        v15 = 0;
        v16 = *(a3[5] + 8 * v8) + 16 * (v9 + v11 - v12) * v13 + 8;
        v17 = v16 + 32 * v13;
        do
        {
          if (v14 >= 1)
          {
            v18 = 0;
            do
            {
              v19 = v18;
              v20 = v18 + 1;
              v21 = *(v17 + 4 * v18);
              if (v7[3])
              {
                v22 = *(v17 + 4 * v18);
              }

              else
              {
                v22 = v15;
              }

              if (v7[3])
              {
                v23 = v15;
              }

              else
              {
                v23 = *(v17 + 4 * v18);
              }

              v24 = (*(v7 + 2) + 16 * (v23 + v7[2] * v22));
              v25 = sub_23681E17C(*v24, v24[1], *(v16 + 32 * v19), *(v16 + 32 * v19 + 8));
              if (*(a5 + 12))
              {
                v27 = v21;
              }

              else
              {
                v27 = v15;
              }

              if (*(a5 + 12))
              {
                v28 = v15;
              }

              else
              {
                v28 = v21;
              }

              v29 = *(a5 + 16) + 16 * (v28 + *(a5 + 8) * v27);
              *v29 = v25;
              *(v29 + 8) = v26;
              v18 = v20;
            }

            while (v20 < v14);
          }

          ++v15;
        }

        while (v15 != v56);
      }

      a2 = v52;
      v8 = v54;
      a1 = v50;
    }

    while (v54 < *(v52 + 64));
  }
}

uint64_t sub_236735698(uint64_t result, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  v6 = *(a2 + 64);
  if (v6 >= 1)
  {
    v10 = *(a4 + v5);
    v42 = result - 3;
    v39 = result;
    do
    {
      v11 = v6--;
      if (result == 4)
      {
        v12 = atomic_load((a3[6] + 4 * v6));
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 120);
      v14 = *(*(a2 + 88) + 4 * v11) - *(*(a2 + 88) + 4 * v6);
      v15 = (v14 + v12);
      v16 = v14 + v12;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v6);
      }

      if (v42 >= 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = 2 * v15;
      }

      if (v16)
      {
        v18 = v12 + *(v13 + 8 * v11) - *(v13 + 8 * v6);
        v19 = *(a3[5] + 8 * v6);
        v20 = 16 * v18;
        if (v10 >= 1)
        {
          v21 = 0;
          v22 = v14;
          v23 = 16 * v12 + 16 * v14;
          v24 = a5;
          do
          {
            if (v15 >= 1)
            {
              v25 = v15;
              v26 = (v19 + 16 * v15 * v18 + 16 * v17 + 8);
              v27 = v24;
              do
              {
                if (*(a4 + 12))
                {
                  v28 = v21 + *(a4 + 8) * *v26;
                }

                else
                {
                  v28 = *v26 + *(a4 + 8) * v21;
                }

                *v27++ = *(*(a4 + 16) + 16 * v28);
                ++v26;
                --v25;
              }

              while (v25);
              v13 = *(a2 + 120);
            }

            v29 = *(v13 + 8 * v6) + v22;
            if (v29 < *(v13 + 8 * v11))
            {
              v30 = v23;
              do
              {
                if (*(a4 + 12))
                {
                  v31 = v21 + *(a4 + 8) * *(*(a2 + 128) + 4 * v29);
                }

                else
                {
                  v31 = *(*(a2 + 128) + 4 * v29) + *(a4 + 8) * v21;
                }

                *(v24 + v30) = *(*(a4 + 16) + 16 * v31);
                ++v29;
                v13 = *(a2 + 120);
                v30 += 16;
              }

              while (v29 < *(v13 + 8 * v11));
            }

            ++v21;
            v24 = (v24 + v20);
          }

          while (v21 != v10);
        }

        v40 = v15;
        v43 = v17;
        v41 = v19;
        if (v18 > v16)
        {
          cblas_zgemm_NEWLAPACK();
        }

        cblas_ztrsm_NEWLAPACK();
        result = v39;
        if (v10 >= 1)
        {
          v32 = 0;
          v33 = a5;
          do
          {
            if (v16 >= 1)
            {
              v34 = v16;
              v35 = (v41 + 16 * v40 * v18 + 16 * v43 + 8);
              v36 = v33;
              do
              {
                if (*(a4 + 12))
                {
                  v37 = v32 + *(a4 + 8) * *v35;
                }

                else
                {
                  v37 = *v35 + *(a4 + 8) * v32;
                }

                v38 = *v36++;
                *(*(a4 + 16) + 16 * v37) = v38;
                ++v35;
                --v34;
              }

              while (v34);
            }

            ++v32;
            v33 = (v33 + v20);
          }

          while (v32 != v10);
        }
      }
    }

    while (v11 > 1);
  }

  return result;
}

uint64_t sub_2367359EC(uint64_t result, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  v6 = *(a2 + 64);
  if (v6 >= 1)
  {
    v10 = *(a4 + v5);
    v42 = result - 3;
    v39 = result;
    do
    {
      v11 = v6--;
      if (result == 4)
      {
        v12 = atomic_load((a3[6] + 4 * v6));
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 120);
      v14 = *(*(a2 + 88) + 4 * v11) - *(*(a2 + 88) + 4 * v6);
      v15 = (v14 + v12);
      v16 = v14 + v12;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v6);
      }

      if (v42 >= 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = 2 * v15;
      }

      if (v16)
      {
        v18 = v12 + *(v13 + 8 * v11) - *(v13 + 8 * v6);
        v19 = *(a3[5] + 8 * v6);
        v20 = 16 * v18;
        if (v10 >= 1)
        {
          v21 = 0;
          v22 = v14;
          v23 = 16 * v12 + 16 * v14;
          v24 = a5;
          do
          {
            if (v15 >= 1)
            {
              v25 = v15;
              v26 = (v19 + 16 * v15 * v18 + 16 * v17 + 8);
              v27 = v24;
              do
              {
                if (*(a4 + 12))
                {
                  v28 = v21 + *(a4 + 8) * *v26;
                }

                else
                {
                  v28 = *v26 + *(a4 + 8) * v21;
                }

                *v27++ = *(*(a4 + 16) + 16 * v28);
                ++v26;
                --v25;
              }

              while (v25);
              v13 = *(a2 + 120);
            }

            v29 = *(v13 + 8 * v6) + v22;
            if (v29 < *(v13 + 8 * v11))
            {
              v30 = v23;
              do
              {
                if (*(a4 + 12))
                {
                  v31 = v21 + *(a4 + 8) * *(*(a2 + 128) + 4 * v29);
                }

                else
                {
                  v31 = *(*(a2 + 128) + 4 * v29) + *(a4 + 8) * v21;
                }

                *(v24 + v30) = *(*(a4 + 16) + 16 * v31);
                ++v29;
                v13 = *(a2 + 120);
                v30 += 16;
              }

              while (v29 < *(v13 + 8 * v11));
            }

            ++v21;
            v24 = (v24 + v20);
          }

          while (v21 != v10);
        }

        v40 = v15;
        v43 = v17;
        v41 = v19;
        if (v18 > v16)
        {
          cblas_zgemm_NEWLAPACK();
        }

        cblas_ztrsm_NEWLAPACK();
        result = v39;
        if (v10 >= 1)
        {
          v32 = 0;
          v33 = a5;
          do
          {
            if (v16 >= 1)
            {
              v34 = v16;
              v35 = (v41 + 16 * v40 * v18 + 16 * v43 + 8);
              v36 = v33;
              do
              {
                if (*(a4 + 12))
                {
                  v37 = v32 + *(a4 + 8) * *v35;
                }

                else
                {
                  v37 = *v35 + *(a4 + 8) * v32;
                }

                v38 = *v36++;
                *(*(a4 + 16) + 16 * v37) = v38;
                ++v35;
                --v34;
              }

              while (v34);
            }

            ++v32;
            v33 = (v33 + v20);
          }

          while (v32 != v10);
        }
      }
    }

    while (v11 > 1);
  }

  return result;
}

int *sub_236735D40(int *result, uint64_t a2)
{
  v3 = result;
  if ((*(a2 + 12) ^ *(result + 6)))
  {
    v8 = *(a2 + 4);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *a2;
      do
      {
        if (v10 >= 1)
        {
          v11 = 0;
          do
          {
            *(*(a2 + 16) + 16 * (v11 + *(a2 + 8) * v9)) = *(*(result + 2) + 16 * (v9 + result[2] * v11));
            v10 = *a2;
            ++v11;
          }

          while (v11 < *a2);
          v8 = *(a2 + 4);
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }

  else
  {
    v4 = result[2];
    if (v4 == *result && *(a2 + 8) == v4)
    {
      v5 = *(a2 + 16);
      v6 = *(v3 + 2);
      v7 = 16 * v3[1] * v4;

      return memcpy(v5, v6, v7);
    }

    else if (result[1] >= 1)
    {
      v12 = 0;
      do
      {
        result = memcpy((*(a2 + 16) + 16 * *(a2 + 8) * v12), (*(v3 + 2) + 16 * v3[2] * v12), 16 * *v3);
        ++v12;
      }

      while (v12 < v3[1]);
    }
  }

  return result;
}

uint64_t sub_236735E7C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, unint64_t a7)
{
  v13 = 4;
  if (*(a4 + 12))
  {
    v13 = 0;
  }

  v14 = *(a4 + v13);
  v83 = 0;
  v82 = 0;
  result = sub_236731F04(a1, a2, &v83, &v82);
  v16 = (&a6[v14 * a1] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v16 > a7 || (v17 = v14, v18 = v16 + 16 * v14 * *(a2 + 192), v18 > a7) || (v78 = a6, v19 = v18 + 8 * *(a2 + 88), v19 > a7) || (v86 = -1, v87 = 1, v84 = 10000, v85 = 8, result = ilaenv_NEWLAPACK(), ((v19 + 16 * result * v14) & 0xFFFFFFFFFFFFFFF8) > a7))
  {
LABEL_56:
    __break(1u);
  }

  else
  {
    v20 = *(a2 + 88);
    v21 = v78;
    if (v20 >= 1)
    {
      v22 = 0;
      do
      {
        v23 = *(a2 + 120);
        v24 = (v23 + 8 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v22 + 1;
        v28 = v26 - *v24;
        v29 = *(*(a2 + 104) + 8 * (v22 + 1)) - *(*(a2 + 104) + 8 * v22);
        if (v28)
        {
          v30 = *(*(a2 + 104) + 8 * (v22 + 1)) == *(*(a2 + 104) + 8 * v22);
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          v31 = *(a2 + 96);
          v80 = *(v31 + 4 * v27);
          v81 = *(v31 + 4 * v22);
          v79 = *(a2 + 64);
          v32 = 16 * v28;
          if (v26 > v25)
          {
            v33 = v21;
            do
            {
              v34 = *(a2 + 136);
              v35 = *(*(a2 + 128) + 8 * v25);
              v36 = v35 / v34;
              v37 = v35 % v34;
              if (v36 <= 0)
              {
                if (v14 >= 1)
                {
                  v47 = 0;
                  v48 = v33;
                  do
                  {
                    v49 = *(a4 + 8);
                    v50 = v47 + v49 * v37;
                    v51 = v37 + v49 * v47;
                    if (*(a4 + 12))
                    {
                      v52 = v50;
                    }

                    else
                    {
                      v52 = v51;
                    }

                    *v48 = *(*(a4 + 16) + 16 * v52);
                    ++v47;
                    v48 = (v48 + v32);
                  }

                  while (v14 != v47);
                }
              }

              else
              {
                v38 = v36 - 1;
                v39 = *(v23 + 8 * v38 + 8) - *(v23 + 8 * v38);
                v40 = v36 & 0x7FFFFFFF;
                v41 = *(*(a2 + 104) + 8 * v40) - *(*(a2 + 104) + 8 * (v36 - 1));
                if (v41 >= v39)
                {
                  v41 = v39;
                }

                if (v14 >= 1)
                {
                  v42 = *(*(a2 + 96) + 4 * v38) - *(*(a2 + 96) + 4 * v40) + v41;
                  v43 = (*(v18 + 8 * v38) + 16 * v37);
                  v44 = 16 * v42;
                  v45 = v14;
                  v46 = v33;
                  do
                  {
                    *v46 = *v43;
                    v46 = (v46 + v32);
                    v43 = (v43 + v44);
                    --v45;
                  }

                  while (v45);
                }
              }

              ++v25;
              v23 = *(a2 + 120);
              ++v33;
            }

            while (v25 < *(v23 + 8 * v27));
          }

          v53 = *(a2 + 152);
          v54 = *(v53 + 4 * v22);
          if (v54 < *(v53 + 4 * v27))
          {
            do
            {
              v55 = *(*(a2 + 160) + 4 * v54);
              v56 = *(*(a2 + 120) + 8 * v55 + 8) - *(*(a2 + 120) + 8 * v55);
              v57 = *(*(a2 + 96) + 4 * (v55 + 1)) - *(*(a2 + 96) + 4 * v55);
              if (v56 >= (*(*(a2 + 104) + 8 * (v55 + 1)) - *(*(a2 + 104) + 8 * v55)))
              {
                v56 = *(*(a2 + 104) + 8 * (v55 + 1)) - *(*(a2 + 104) + 8 * v55);
              }

              *(v18 + 8 * v55) = 0;
              v16 += 16 * (v57 - v56) * v17;
              ++v54;
            }

            while (v54 < *(*(a2 + 152) + 4 * v27));
          }

          v86 = v14;
          v87 = v28;
          if (v28 >= v29)
          {
            v58 = v29;
          }

          else
          {
            v58 = v28;
          }

          v84 = v29;
          v85 = v58;
          result = zunmlq_NEWLAPACK();
          v59 = v80 - v81;
          if (v14 <= 0)
          {
            LODWORD(v69) = v58 - v59;
            *(v18 + 8 * v22) = v16;
            v77 = v16;
            v21 = v78;
          }

          else
          {
            v60 = 0;
            v21 = v78;
            v61 = *(a2 + 96);
            v62 = v78;
            do
            {
              v63 = *(v61 + 4 * v22);
              if (v63 < *(v61 + 4 * v27))
              {
                v64 = v62;
                v65 = (v79 + 4 * v81);
                do
                {
                  if (*(a5 + 12))
                  {
                    v66 = v60 + *(a5 + 8) * *v65;
                  }

                  else
                  {
                    v66 = *v65 + *(a5 + 8) * v60;
                  }

                  v67 = *v64++;
                  *(*(a5 + 16) + 16 * v66) = v67;
                  ++v63;
                  v61 = *(a2 + 96);
                  ++v65;
                }

                while (v63 < *(v61 + 4 * v27));
              }

              ++v60;
              v62 = (v62 + v32);
            }

            while (v60 != v14);
            v68 = 0;
            v69 = (v58 - v59);
            *(v18 + 8 * v22) = v16;
            v70 = &v78[v59];
            v71 = v16;
            do
            {
              v72 = -v69;
              v73 = v71;
              v74 = v70;
              if (v58 > v59)
              {
                do
                {
                  v75 = *v74++;
                  *v73++ = v75;
                }

                while (!__CFADD__(v72++, 1));
              }

              ++v68;
              v70 = (v70 + v32);
              v71 += v69;
            }

            while (v68 != v14);
            v77 = *(v18 + 8 * v22);
          }

          v17 = v14;
          if (v16 != v77)
          {
            goto LABEL_56;
          }

          v16 += 16 * v69 * v14;
          v20 = *(a2 + 88);
        }

        ++v22;
      }

      while (v27 < v20);
    }
  }

  return result;
}

uint64_t sub_23673633C(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  v5 = *(result + 88);
  if (v5 >= 1)
  {
    v7 = result;
    v8 = *(a3 + v4);
    do
    {
      v9 = v5--;
      v10 = v7[12];
      v11 = v7[13];
      v12 = *(v11 + 8 * v9) - *(v11 + 8 * v5);
      v13 = *(v10 + 4 * v9);
      v14 = *(v10 + 4 * v5);
      v28 = v7[8];
      if (v8 >= 1)
      {
        v15 = 0;
        v16 = a4;
        do
        {
          v17 = *(v11 + 8 * v5);
          if (v17 < *(v11 + 8 * v9))
          {
            v18 = v16;
            do
            {
              if (*(a3 + 12))
              {
                v19 = v15 + *(a3 + 8) * *(v7[14] + 4 * v17);
              }

              else
              {
                v19 = *(v7[14] + 4 * v17) + *(a3 + 8) * v15;
              }

              *v18++ = *(*(a3 + 16) + 16 * v19);
              ++v17;
              v11 = v7[13];
            }

            while (v17 < *(v11 + 8 * v9));
          }

          ++v15;
          v16 += v12;
        }

        while (v15 != v8);
      }

      v20 = (v13 - v14);
      if (v12 > v20)
      {
        cblas_zgemm_NEWLAPACK();
      }

      result = cblas_ztrsm_NEWLAPACK();
      if (v8 >= 1)
      {
        v21 = 0;
        v22 = a4;
        do
        {
          if (v20 >= 1)
          {
            v23 = v20;
            v24 = (v28 + 4 * v14);
            v25 = v22;
            do
            {
              if (*(a3 + 12))
              {
                v26 = v21 + *(a3 + 8) * *v24;
              }

              else
              {
                v26 = *v24 + *(a3 + 8) * v21;
              }

              v27 = *v25++;
              *(*(a3 + 16) + 16 * v26) = v27;
              ++v24;
              --v23;
            }

            while (v23);
          }

          ++v21;
          v22 += v12;
        }

        while (v21 != v8);
      }
    }

    while (v9 > 1);
  }

  return result;
}

uint64_t sub_23673657C(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  if (*(result + 88) >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(a3 + v4);
    do
    {
      v9 = v7 + 1;
      v10 = *(v6 + 96);
      v11 = *(v10 + 4 * (v7 + 1));
      v12 = *(v10 + 4 * v7);
      v13 = *(*(v6 + 104) + 8 * (v7 + 1)) - *(*(v6 + 104) + 8 * v7);
      v14 = (v11 - v12);
      if (v8 <= 0)
      {
        result = cblas_ztrsm_NEWLAPACK();
      }

      else
      {
        v15 = 0;
        v16 = *(v6 + 64) + 4 * v12;
        v17 = 16 * (v11 - v12);
        v18 = a4;
        do
        {
          if (v14 >= 1)
          {
            v19 = v14;
            v20 = v16;
            v21 = v18;
            do
            {
              if (*(a3 + 12))
              {
                v22 = v15 + *(a3 + 8) * *v20;
              }

              else
              {
                v22 = *v20 + *(a3 + 8) * v15;
              }

              *v21++ = *(*(a3 + 16) + 16 * v22);
              ++v20;
              --v19;
            }

            while (v19);
          }

          ++v15;
          v18 = (v18 + v17);
        }

        while (v15 != v8);
        v23 = a4;
        result = cblas_ztrsm_NEWLAPACK();
        for (i = 0; i != v8; ++i)
        {
          if (v14 >= 1)
          {
            v25 = v14;
            v26 = v16;
            v27 = v23;
            do
            {
              if (*(a3 + 12))
              {
                v28 = i + *(a3 + 8) * *v26;
              }

              else
              {
                v28 = *v26 + *(a3 + 8) * i;
              }

              v29 = *v27++;
              *(*(a3 + 16) + 16 * v28) = v29;
              ++v26;
              --v25;
            }

            while (v25);
          }

          v23 = (v23 + v17);
        }
      }

      if (v13 > v14)
      {
        v30 = &a4[v14 * v8];
        result = cblas_zgemm_NEWLAPACK();
        if (v8 >= 1)
        {
          v31 = 0;
          v32 = *(v6 + 104);
          do
          {
            v33 = (v32 + 8 * v7);
            v34 = v33[1];
            v35 = *v33 + v14;
            if (v35 < v34)
            {
              v36 = v30;
              do
              {
                if (*(a3 + 12))
                {
                  v37 = v31 + *(a3 + 8) * *(*(v6 + 112) + 4 * v35);
                }

                else
                {
                  v37 = *(*(v6 + 112) + 4 * v35) + *(a3 + 8) * v31;
                }

                v38 = *v36++;
                *(*(a3 + 16) + 16 * v37) = vaddq_f64(v38, *(*(a3 + 16) + 16 * v37));
                ++v35;
                v32 = *(v6 + 104);
              }

              while (v35 < *(v32 + 8 * v7 + 8));
            }

            ++v31;
            v30 = (v30 + 16 * v13 - 16 * v14);
          }

          while (v31 != v8);
        }
      }

      ++v7;
    }

    while (v9 < *(v6 + 88));
  }

  return result;
}

void sub_236736888(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _OWORD *a6)
{
  v10 = 4;
  if (*(a4 + 12))
  {
    v10 = 0;
  }

  v11 = *(a4 + v10);
  ilaenv_NEWLAPACK();
  if (a5[1] >= 1)
  {
    v12 = 0;
    do
    {
      bzero((*(a5 + 2) + 16 * a5[2] * v12++), 16 * *a5);
    }

    while (v12 < a5[1]);
  }

  v13 = *(a2 + 88);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = *(a2 + 96);
    do
    {
      v16 = *(v15 + 4 * v14);
      v17 = v14 + 1;
      if (v16 < *(v15 + 4 * (v14 + 1)))
      {
        v18 = 0;
        do
        {
          v19 = *(a2 + 120);
          v20 = *(v19 + 8 * v14) + v18;
          if (v20 >= *(v19 + 8 * v17))
          {
            break;
          }

          v21 = *(a2 + 128);
          v22 = *(a2 + 136);
            ;
          }

          if (v11 >= 1)
          {
            v24 = 0;
            do
            {
              if (*(a4 + 12))
              {
                v25 = v24 + *(a4 + 8) * *(*(a2 + 64) + 4 * v16);
              }

              else
              {
                v25 = *(*(a2 + 64) + 4 * v16) + *(a4 + 8) * v24;
              }

              if (a5[3])
              {
                v26 = i;
              }

              else
              {
                v26 = v24;
              }

              if (a5[3])
              {
                v27 = v24;
              }

              else
              {
                v27 = i;
              }

              *(*(a5 + 2) + 16 * (v27 + a5[2] * v26)) = *(*(a4 + 16) + 16 * v25);
              ++v24;
            }

            while (v11 != v24);
            v15 = *(a2 + 96);
          }

          ++v16;
          ++v18;
        }

        while (v16 < *(v15 + 4 * v17));
        v13 = *(a2 + 88);
      }

      ++v14;
    }

    while (v17 < v13);
    if (v13 >= 1)
    {
      v28 = v13;
      v29 = *(a2 + 120);
      do
      {
        v30 = (v29 + 8 * (v28 - 1));
        v31 = *v30;
        v32 = v30[1];
        v33 = v32 - *v30;
        if (v33)
        {
          v34 = *(*(a2 + 104) + 8 * v28) == *(*(a2 + 104) + 8 * (v28 - 1));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          v35 = v33;
          if (v32 > v31)
          {
            v36 = a6;
            do
            {
              v38 = *(a2 + 128);
              v37 = *(a2 + 136);
                ;
              }

              if (v11 >= 1)
              {
                v40 = 0;
                v41 = v36;
                do
                {
                  v42 = a5[2];
                  if (a5[3])
                  {
                    v43 = v40 + j * v42;
                  }

                  else
                  {
                    v43 = j + (v42 * v40);
                  }

                  *v41 = *(*(a5 + 2) + 16 * v43);
                  ++v40;
                  v41 += v33;
                }

                while (v11 != v40);
                v29 = *(a2 + 120);
              }

              ++v31;
              ++v36;
            }

            while (v31 < *(v29 + 8 * v28));
          }

          zunmlq_NEWLAPACK();
          v29 = *(a2 + 120);
          v44 = *(v29 + 8 * (v28 - 1));
          if (v44 < *(v29 + 8 * v28))
          {
            v45 = a6;
            do
            {
              v46 = *(a2 + 128);
              v47 = *(a2 + 136);
                ;
              }

              if (v11 >= 1)
              {
                v49 = 0;
                v50 = v45;
                do
                {
                  v51 = a5[2];
                  if (a5[3])
                  {
                    v52 = v49 + k * v51;
                  }

                  else
                  {
                    v52 = k + (v51 * v49);
                  }

                  *(*(a5 + 2) + 16 * v52) = *v50;
                  ++v49;
                  v50 += v35;
                }

                while (v11 != v49);
                v29 = *(a2 + 120);
              }

              ++v44;
              ++v45;
            }

            while (v44 < *(v29 + 8 * v28));
          }
        }
      }

      while (v28-- > 1);
    }
  }
}

void _SparseSolveOpaque_Complex_Double(uint64_t a1, int *a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v8 = 4;
  if (*(a3 + 12))
  {
    v8 = 0;
  }

  sub_236731FA8(a1, a2, a3, a4, *(a1 + 88) + *(a1 + 96) * *(a3 + v8), a6, a7, a8);
}

void sub_236736D28(__int16 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v270 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(a1 + 4);
  v11 = *(a1 + 33);
  v12 = *(a3 + 12);
  v13 = 4;
  if (v12)
  {
    v13 = 0;
  }

  if (v11 > 0x29)
  {
    goto LABEL_20;
  }

  v14 = *(a3 + v13);
  v263 = v14;
  if (((1 << v11) & 0x1D) != 0)
  {
    v15 = *(a1 + 5);
    if (*(a1 + 4) <= 2u)
    {
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v16 = *(*(a1 + 11) + 64);
          v17 = *(v15 + 136);
          goto LABEL_110;
        }

LABEL_292:
        __break(1u);
        return;
      }

      LODWORD(v23) = *(v15 + 60);
      v26 = *(v15 + 80);
      goto LABEL_59;
    }

    v259 = *(a1 + 11);
    v262 = *(a1 + 33);
    if (v10 == 3)
    {
      v60 = 4;
      if ((v12 & 1) == 0)
      {
        v60 = 0;
      }

      v61 = *(a3 + v60);
      *&v269[0] = __PAIR64__(v14, v61);
      *(&v269[0] + 1) = v61;
      *&v269[1] = a4;
      v267 = (a4 + 16 * *(a3 + 4) * *a3);
      v62 = v14;
      sub_2367384EC(0, *(v15 + 60), *(v15 + 80), a2, a3, a4);
      v63 = v262;
      if (v9)
      {
        v64 = *(v15 + 64);
        if ((v9 & 0x20) != 0)
        {
          v223 = v263;
          v224 = v259;
          if (v64 >= 1)
          {
            do
            {
              v225 = v64--;
              if (v63 == 4)
              {
                v226 = atomic_load((v224[6] + 4 * v64));
              }

              else
              {
                v226 = 0;
              }

              v227 = *(v15 + 120);
              v228 = *(*(v15 + 88) + 4 * v225) - *(*(v15 + 88) + 4 * v64);
              v229 = (v228 + v226);
              v230 = v228 + v226;
              if (v63 == 4)
              {
                v230 = *(v224[7] + 4 * v64);
              }

              if ((v262 - 3) >= 2)
              {
                v231 = 0;
              }

              else
              {
                v231 = 2 * v229;
              }

              if (v230)
              {
                v232 = v226 + *(v227 + 8 * v225) - *(v227 + 8 * v64);
                v233 = *(v224[5] + 8 * v64);
                v234 = 16 * v232;
                if (v223 >= 1)
                {
                  v235 = 0;
                  v236 = v228;
                  v237 = 16 * v226 + 16 * v228;
                  v238 = v267;
                  do
                  {
                    if (v229 >= 1)
                    {
                      v239 = v238;
                      v240 = v229;
                      v241 = (v233 + 16 * v229 * v232 + 16 * v231 + 8);
                      do
                      {
                        if (*(a3 + 12))
                        {
                          v242 = v235 + *(a3 + 8) * *v241;
                        }

                        else
                        {
                          v242 = *v241 + *(a3 + 8) * v235;
                        }

                        *v239++ = *(*(a3 + 16) + 16 * v242);
                        ++v241;
                        --v240;
                      }

                      while (v240);
                      v227 = *(v15 + 120);
                    }

                    v243 = *(v227 + 8 * v64) + v236;
                    if (v243 < *(v227 + 8 * v225))
                    {
                      v244 = v237;
                      do
                      {
                        if (*(a3 + 12))
                        {
                          v245 = v235 + *(a3 + 8) * *(*(v15 + 128) + 4 * v243);
                        }

                        else
                        {
                          v245 = *(*(v15 + 128) + 4 * v243) + *(a3 + 8) * v235;
                        }

                        *(v238 + v244) = *(*(a3 + 16) + 16 * v245);
                        ++v243;
                        v227 = *(v15 + 120);
                        v244 += 16;
                      }

                      while (v243 < *(v227 + 8 * v225));
                    }

                    ++v235;
                    v238 = (v238 + v234);
                  }

                  while (v235 != v223);
                }

                v256 = v229;
                v266 = v233;
                cblas_ztrmm_NEWLAPACK();
                if (v232 > v230)
                {
                  cblas_zgemm_NEWLAPACK();
                }

                v224 = v259;
                v63 = v262;
                if (v223 >= 1)
                {
                  v246 = 0;
                  v247 = v267;
                  do
                  {
                    if (v230 >= 1)
                    {
                      v248 = *&v269[1];
                      v249 = BYTE12(v269[0]);
                      v250 = v247;
                      v251 = v230;
                      v252 = (v266 + 16 * v256 * v232 + 16 * v231 + 8);
                      do
                      {
                        if (v249)
                        {
                          v253 = v246 + DWORD2(v269[0]) * *v252;
                        }

                        else
                        {
                          v253 = *v252 + DWORD2(v269[0]) * v246;
                        }

                        v254 = *v250++;
                        *(v248 + 16 * v253) = v254;
                        ++v252;
                        --v251;
                      }

                      while (v251);
                    }

                    ++v246;
                    v247 = (v247 + v234);
                  }

                  while (v246 != v223);
                }
              }
            }

            while (v225 > 1);
          }
        }

        else
        {
          v65 = v263;
          v66 = v259;
          if (v64 >= 1)
          {
            do
            {
              v67 = v64--;
              if (v63 == 4)
              {
                v68 = atomic_load((v66[6] + 4 * v64));
              }

              else
              {
                v68 = 0;
              }

              v69 = *(v15 + 120);
              v70 = *(*(v15 + 88) + 4 * v67) - *(*(v15 + 88) + 4 * v64);
              v71 = (v70 + v68);
              v72 = v70 + v68;
              if (v63 == 4)
              {
                v72 = *(v66[7] + 4 * v64);
              }

              if ((v262 - 3) >= 2)
              {
                v73 = 0;
              }

              else
              {
                v73 = 2 * v71;
              }

              if (v72)
              {
                v74 = v68 + *(v69 + 8 * v67) - *(v69 + 8 * v64);
                v75 = *(v66[5] + 8 * v64);
                v76 = 16 * v74;
                if (v65 >= 1)
                {
                  v77 = 0;
                  v78 = v70;
                  v79 = 16 * v68 + 16 * v70;
                  v80 = v267;
                  do
                  {
                    if (v71 >= 1)
                    {
                      v81 = v80;
                      v82 = v71;
                      v83 = (v75 + 16 * v71 * v74 + 16 * v73 + 8);
                      do
                      {
                        if (*(a3 + 12))
                        {
                          v84 = v77 + *(a3 + 8) * *v83;
                        }

                        else
                        {
                          v84 = *v83 + *(a3 + 8) * v77;
                        }

                        *v81++ = *(*(a3 + 16) + 16 * v84);
                        ++v83;
                        --v82;
                      }

                      while (v82);
                      v69 = *(v15 + 120);
                    }

                    v85 = *(v69 + 8 * v64) + v78;
                    if (v85 < *(v69 + 8 * v67))
                    {
                      v86 = v79;
                      do
                      {
                        if (*(a3 + 12))
                        {
                          v87 = v77 + *(a3 + 8) * *(*(v15 + 128) + 4 * v85);
                        }

                        else
                        {
                          v87 = *(*(v15 + 128) + 4 * v85) + *(a3 + 8) * v77;
                        }

                        *(v80 + v86) = *(*(a3 + 16) + 16 * v87);
                        ++v85;
                        v69 = *(v15 + 120);
                        v86 += 16;
                      }

                      while (v85 < *(v69 + 8 * v67));
                    }

                    ++v77;
                    v80 = (v80 + v76);
                  }

                  while (v77 != v65);
                }

                v255 = v71;
                v264 = v75;
                cblas_ztrmm_NEWLAPACK();
                if (v74 > v72)
                {
                  cblas_zgemm_NEWLAPACK();
                }

                v66 = v259;
                v63 = v262;
                if (v65 >= 1)
                {
                  v88 = 0;
                  v89 = v267;
                  do
                  {
                    if (v72 >= 1)
                    {
                      v90 = *&v269[1];
                      v91 = BYTE12(v269[0]);
                      v92 = v89;
                      v93 = v72;
                      v94 = (v264 + 16 * v255 * v74 + 16 * v73 + 8);
                      do
                      {
                        if (v91)
                        {
                          v95 = v88 + DWORD2(v269[0]) * *v94;
                        }

                        else
                        {
                          v95 = *v94 + DWORD2(v269[0]) * v88;
                        }

                        v96 = *v92++;
                        *(v90 + 16 * v95) = v96;
                        ++v94;
                        --v93;
                      }

                      while (v93);
                    }

                    ++v88;
                    v89 = (v89 + v76);
                  }

                  while (v88 != v65);
                }
              }
            }

            while (v67 > 1);
          }
        }
      }

      else
      {
        v139 = v62;
        if (v62 >= 1)
        {
          v140 = 0;
          do
          {
            if (v61 >= 1)
            {
              v141 = v61;
              do
              {
                bzero((a4 + 16 * v140 * v61), 16 * v61);
                --v141;
              }

              while (v141);
            }

            ++v140;
            v139 = v263;
          }

          while (v140 < v263);
        }

        v142 = v259;
        v143 = v262;
        if (*(v15 + 64) >= 1)
        {
          v144 = 0;
          do
          {
            v145 = v144;
            if (v143 == 4)
            {
              v146 = atomic_load((v142[6] + 4 * v144));
            }

            else
            {
              v146 = 0;
            }

            v147 = *(v15 + 120);
            ++v144;
            v148 = *(v147 + 8 * (v145 + 1));
            v149 = *(v147 + 8 * v145);
            v150 = *(*(v15 + 88) + 4 * (v145 + 1)) - *(*(v15 + 88) + 4 * v145) + v146;
            v151 = *(*(v15 + 88) + 4 * (v145 + 1)) - *(*(v15 + 88) + 4 * v145) + v146;
            if (v143 == 4)
            {
              v151 = *(v142[7] + 4 * v145);
            }

            if ((v262 - 3) >= 2)
            {
              v152 = 0;
            }

            else
            {
              v152 = 2 * v150;
            }

            if (v151)
            {
              v153 = v146 + v148 - v149;
              v154 = *(v142[5] + 8 * v145);
              v155 = 16 * v153;
              if (v139 >= 1)
              {
                v156 = 0;
                v157 = v267;
                do
                {
                  if (v151 >= 1)
                  {
                    v158 = v157;
                    v159 = v151;
                    v160 = (v154 + 16 * v150 * v153 + 16 * v152 + 8);
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v161 = v156 + *(a3 + 8) * *v160;
                      }

                      else
                      {
                        v161 = *v160 + *(a3 + 8) * v156;
                      }

                      *v158++ = *(*(a3 + 16) + 16 * v161);
                      ++v160;
                      --v159;
                    }

                    while (v159);
                  }

                  ++v156;
                  v157 = (v157 + v155);
                }

                while (v156 != v139);
              }

              v257 = v154;
              if (v153 > v151)
              {
                cblas_zgemm_NEWLAPACK();
              }

              cblas_ztrmm_NEWLAPACK();
              v143 = v262;
              v139 = v263;
              v142 = v259;
              if (v263 >= 1)
              {
                v162 = 0;
                v163 = *(*(v15 + 88) + 4 * v144) - *(*(v15 + 88) + 4 * v145);
                v164 = v267;
                do
                {
                  if (v150 >= 1)
                  {
                    v165 = *&v269[1];
                    v166 = BYTE12(v269[0]);
                    v167 = v164;
                    v168 = v150;
                    v169 = (v257 + 16 * v150 * v153 + 16 * v152 + 8);
                    do
                    {
                      if (v166)
                      {
                        v170 = v162 + DWORD2(v269[0]) * *v169;
                      }

                      else
                      {
                        v170 = *v169 + DWORD2(v269[0]) * v162;
                      }

                      v171 = *v167++;
                      *(v165 + 16 * v170) = vaddq_f64(v171, *(v165 + 16 * v170));
                      ++v169;
                      --v168;
                    }

                    while (v168);
                  }

                  v172 = *(v15 + 120);
                  v173 = *(v172 + 8 * v145) + v163;
                  if (v173 < *(v172 + 8 * v144))
                  {
                    v174 = *&v269[1];
                    v175 = BYTE12(v269[0]);
                    v176 = v150;
                    do
                    {
                      if (v175)
                      {
                        v177 = v162 + DWORD2(v269[0]) * *(*(v15 + 128) + 4 * v173);
                      }

                      else
                      {
                        v177 = *(*(v15 + 128) + 4 * v173) + DWORD2(v269[0]) * v162;
                      }

                      *(v174 + 16 * v177) = vaddq_f64(v164[v176], *(v174 + 16 * v177));
                      ++v173;
                      ++v176;
                    }

                    while (v173 < *(*(v15 + 120) + 8 * v144));
                  }

                  ++v162;
                  v164 = (v164 + v155);
                }

                while (v162 != v263);
              }
            }
          }

          while (v144 < *(v15 + 64));
        }
      }
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_292;
      }

      v31 = 4;
      if ((v12 & 1) == 0)
      {
        v31 = 0;
      }

      v32 = *(a3 + v31);
      *&v269[0] = __PAIR64__(v14, v32);
      *(&v269[0] + 1) = v32;
      *&v269[1] = a4;
      sub_2367384EC(0, *(v15 + 60), *(v15 + 80), a2, a3, a4);
      if ((v262 - 3) >= 2)
      {
        if (v262 != 2)
        {
          goto LABEL_292;
        }

        v178 = *(v15 + 64);
        if (v178 >= 1)
        {
          v179 = 0;
          do
          {
            v180 = v179 + 1;
            if (v263 >= 1)
            {
              v181 = 0;
              v182 = *(*(v15 + 120) + 8 * v180) - *(*(v15 + 120) + 8 * v179);
              v183 = *(*(v15 + 88) + 4 * v180) - *(*(v15 + 88) + 4 * v179);
              v184 = *(v259[5] + 8 * v179);
              v185 = v183;
              v186 = v184 + 16 * v182 * v183 + 8;
              if (v185 <= 1)
              {
                v187 = 1;
              }

              else
              {
                v187 = v185;
              }

              v188 = 16 * v182 + 16;
              do
              {
                if (v185 >= 1)
                {
                  v189 = (v184 + 16);
                  v190 = v187;
                  v191 = v186;
                  do
                  {
                    if (*(a3 + 12))
                    {
                      v192 = v181 + *(a3 + 8) * *v191;
                    }

                    else
                    {
                      v192 = *v191 + *(a3 + 8) * v181;
                    }

                    v193 = (*(a3 + 16) + 16 * v192);
                    v194 = v193[1];
                    v195 = *(v189 - 1);
                    v196 = *v193 * v195 - v194 * *v189;
                    v197 = v194 * v195 + *v193 * *v189;
                    v198 = *v191++;
                    v199 = (a4 + 16 * (v32 * v181 + v198));
                    *v199 = v196;
                    v199[1] = v197;
                    v189 = (v189 + v188);
                    --v190;
                  }

                  while (v190);
                }

                ++v181;
              }

              while (v181 != v263);
              v178 = *(v15 + 64);
            }

            v179 = v180;
          }

          while (v180 < v178);
        }
      }

      else if (*(v15 + 64) >= 1)
      {
        v33 = 0;
        do
        {
          if (v262 == 4)
          {
            v34 = atomic_load((v259[6] + 4 * v33));
          }

          else
          {
            v34 = 0;
          }

          v35 = *(v15 + 120);
          v36 = v33 + 1;
          v37 = *(v35 + 8 * (v33 + 1));
          v38 = *(v35 + 8 * v33);
          v39 = *(*(v15 + 88) + 4 * (v33 + 1)) - *(*(v15 + 88) + 4 * v33) + v34;
          v40 = v39;
          if (v262 == 4)
          {
            v40 = *(v259[7] + 4 * v33);
          }

          if (v263 >= 1)
          {
            v41 = 0;
            v42 = *(v259[5] + 8 * v33) + 16 * v39 * (v34 + v37 - v38) + 8;
            v43 = v42 + 32 * v39;
            do
            {
              if (v40 >= 1)
              {
                v44 = 0;
                do
                {
                  v45 = v44;
                  v46 = v44 + 1;
                  v47 = (v42 + 32 * v44);
                  v48 = *(v43 + 4 * v45);
                  if (*(a3 + 12))
                  {
                    v49 = v48;
                  }

                  else
                  {
                    v49 = v41;
                  }

                  if (*(a3 + 12))
                  {
                    v50 = v41;
                  }

                  else
                  {
                    v50 = v48;
                  }

                  v51 = (*(a3 + 16) + 16 * (v50 + v49 * *(a3 + 8)));
                  v52 = v51[1];
                  v53 = v47[1];
                  v54 = *v51 * *v47 - v52 * v53;
                  v55 = v52 * *v47 + *v51 * v53;
                  if (BYTE12(v269[0]))
                  {
                    v56 = v48;
                  }

                  else
                  {
                    v56 = v41;
                  }

                  if (BYTE12(v269[0]))
                  {
                    v57 = v41;
                  }

                  else
                  {
                    v57 = v48;
                  }

                  v58 = (*&v269[1] + 16 * (v57 + v56 * DWORD2(v269[0])));
                  *v58 = v54;
                  v58[1] = v55;
                  v44 = v46;
                }

                while (v46 < v40);
              }

              ++v41;
            }

            while (v41 != v263);
          }

          v33 = v36;
        }

        while (v36 < *(v15 + 64));
      }
    }

    v102 = *(v15 + 60);
    v100 = *(v15 + 80);
    v103 = v269;
    v101 = 1;
    v104 = a3;
    v105 = 0;
LABEL_288:
    sub_2367384EC(v101, v102, v100, v103, v104, v105);
    return;
  }

  if (((1 << v11) & 0x30000000000) != 0)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 5);
    v20 = *(a1 + 6);
    v21 = v19 * v18;
    v22 = v20 * v18;
    if (v20 * v18 >= v19 * v18)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (v22 <= v21)
    {
      v24 = v19 * v18;
    }

    else
    {
      v24 = v20 * v18;
    }

    v25 = *(a1 + 5);
    v261 = *(a1 + 11);
    switch(v10)
    {
      case 7:
        v106 = 4;
        if ((v12 & 1) == 0)
        {
          v106 = 0;
        }

        v107 = *(a3 + v106);
        *&v269[0] = __PAIR64__(v14, v107);
        *(&v269[0] + 1) = v107;
        *&v269[1] = a4;
        v108 = a4 + 16 * (v107 * v14);
        if (v7)
        {
          v109 = v7;
        }

        else
        {
          v109 = a3;
        }

        v258 = v23;
        v268 = a4 + 16 * (v107 * v14);
        sub_2367384EC(1, v23, *(v25 + 64), v109, v269, v108);
        v110 = 4;
        if (*(a3 + 12))
        {
          v110 = 0;
        }

        if (v9)
        {
          v111 = *(a3 + v110);
          v112 = *(a3 + 4);
          if (v112 >= 1)
          {
            v113 = 0;
            v114 = *a3;
            do
            {
              if (v114 >= 1)
              {
                v115 = 0;
                do
                {
                  bzero((*(a3 + 16) + 16 * *(a3 + 8) * v113), 16 * v114);
                  ++v115;
                  v114 = *a3;
                }

                while (v115 < *a3);
                v112 = *(a3 + 4);
              }

              ++v113;
            }

            while (v113 < v112);
          }

          if (*(v25 + 88) >= 1)
          {
            v116 = 0;
            do
            {
              v117 = v116 + 1;
              v118 = *(v25 + 96);
              v119 = *(*(v25 + 104) + 8 * (v116 + 1)) - *(*(v25 + 104) + 8 * v116);
              v120 = *(v118 + 4 * (v116 + 1));
              v121 = *(v118 + 4 * v116);
              v122 = (v120 - v121);
              if (v111 >= 1)
              {
                v123 = 0;
                v124 = *(v25 + 64) + 4 * v121;
                v125 = v268;
                do
                {
                  if (v122 >= 1)
                  {
                    v126 = v124;
                    v127 = v125;
                    v128 = v122;
                    do
                    {
                      v129 = *v126++;
                      *v127++ = *(a4 + 16 * (v129 + v107 * v123));
                      --v128;
                    }

                    while (v128);
                  }

                  ++v123;
                  v125 += v119;
                }

                while (v123 != v111);
              }

              if (v119 > v122)
              {
                cblas_zgemm_NEWLAPACK();
              }

              cblas_ztrmm_NEWLAPACK();
              if (v111 >= 1)
              {
                v130 = 0;
                v131 = *(v25 + 104);
                v132 = v268;
                do
                {
                  v133 = (v131 + 8 * v116);
                  v134 = *v133;
                  if (*v133 < v133[1])
                  {
                    v135 = v132;
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v136 = v130 + *(a3 + 8) * *(*(v25 + 112) + 4 * v134);
                      }

                      else
                      {
                        v136 = *(*(v25 + 112) + 4 * v134) + *(a3 + 8) * v130;
                      }

                      v137 = *v135++;
                      *(*(a3 + 16) + 16 * v136) = vaddq_f64(v137, *(*(a3 + 16) + 16 * v136));
                      ++v134;
                      v131 = *(v25 + 104);
                    }

                    while (v134 < *(v131 + 8 * v116 + 8));
                  }

                  ++v130;
                  v132 += v119;
                }

                while (v130 != v111);
              }

              ++v116;
            }

            while (v117 < *(v25 + 88));
          }
        }

        else
        {
          v203 = *(v25 + 88);
          if (v203 >= 1)
          {
            v204 = *(a3 + v110);
            do
            {
              v205 = v203--;
              v207 = *(v25 + 96);
              v206 = *(v25 + 104);
              v208 = *(v206 + 8 * v205) - *(v206 + 8 * v203);
              v209 = *(v207 + 4 * v205);
              v210 = *(v207 + 4 * v203);
              v260 = *(v25 + 64);
              if (v204 >= 1)
              {
                v211 = 0;
                v212 = v268;
                do
                {
                  v213 = *(v206 + 8 * v203);
                  if (v213 < *(v206 + 8 * v205))
                  {
                    v214 = v212;
                    do
                    {
                      *v214++ = *(a4 + 16 * (*(*(v25 + 112) + 4 * v213++) + v107 * v211));
                      v206 = *(v25 + 104);
                    }

                    while (v213 < *(v206 + 8 * v205));
                  }

                  ++v211;
                  v212 += v208;
                }

                while (v211 != v204);
              }

              v265 = v210;
              v215 = (v209 - v210);
              cblas_ztrmm_NEWLAPACK();
              if (v208 > v215)
              {
                cblas_zgemm_NEWLAPACK();
              }

              if (v204 >= 1)
              {
                v216 = 0;
                v217 = v268;
                do
                {
                  if (v215 >= 1)
                  {
                    v218 = v217;
                    v219 = v215;
                    v220 = (v260 + 4 * v265);
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v221 = v216 + *(a3 + 8) * *v220;
                      }

                      else
                      {
                        v221 = *v220 + *(a3 + 8) * v216;
                      }

                      v222 = *v218++;
                      *(*(a3 + 16) + 16 * v221) = v222;
                      ++v220;
                      --v219;
                    }

                    while (v219);
                  }

                  ++v216;
                  v217 += v208;
                }

                while (v216 != v204);
              }
            }

            while (v205 >= 2);
          }
        }

        v100 = *(v25 + 64);
        v101 = 0;
        v102 = v258;
        v103 = 0;
        v104 = a3;
        v105 = v268;
        goto LABEL_288;
      case 6:
        if ((v9 & 1) == 0)
        {
          *&v269[0] = __PAIR64__(v14, v23);
          *&v269[1] = a4;
          *(&v269[0] + 1) = v23;
          if (v7)
          {
            v200 = v7;
          }

          else
          {
            v200 = a3;
          }

          v201 = (a4 + 16 * v23 * v14);
          sub_2367384EC(1, v23, *(v25 + 64), v200, v269, v201);
          if (v19 <= v20)
          {
            v202 = v20;
          }

          else
          {
            v202 = v19;
          }

          sub_236736888(v202 * *(a1 + 32), v25, v261, v269, a3, v201);
          return;
        }

        v98 = v23;
        *&v269[0] = __PAIR64__(v14, v24);
        *&v269[1] = a4;
        *(&v269[0] + 1) = v24;
        if (!v7)
        {
          v7 = v269;
          sub_236735D40(a3, v269);
          LODWORD(v14) = v263;
          v18 = *(a1 + 32);
        }

        if (v19 <= v20)
        {
          v99 = v20;
        }

        else
        {
          v99 = v19;
        }

        sub_236735E7C(v99 * v18, v25, v261, v7, a3, (a4 + 16 * (v24 * v14)), a4 + a5);
        v100 = *(v25 + 64);
        v101 = 0;
        v102 = v98;
        v103 = 0;
        v104 = a3;
        v105 = a4;
        goto LABEL_288;
      case 1:
        v26 = *(v25 + 64);
LABEL_59:

        sub_2367384EC((v9 & 1), v23, v26, v7, a3, a4);
        return;
    }

    v138 = *(v25 + 40);
    if (!v138)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23673A550();
      }

      _SparseTrap();
    }

    memset(&v269[14] + 10, 0, 22);
    memset(&v269[3] + 10, 0, 176);
    strcpy(v269, "Invalid operation for this type of object/factorization.\n");
    v138(v269, v23);
  }

  else
  {
LABEL_20:
    if (v11 - 81 >= 3)
    {
      goto LABEL_292;
    }

    v27 = *(a1 + 5);
    if (*(a1 + 4) > 8u)
    {
      v59 = *(a1 + 11);
      if (v10 == 9)
      {
        v16 = *(v59 + 96);
        v17 = *(v27 + 72);
      }

      else
      {
        v16 = *(v59 + 104);
        v17 = *(v27 + 80);
      }

LABEL_110:

      sub_236734A14(v16, v17, v7, a3);
      return;
    }

    v28 = *(a1 + 32);
    v29 = *(v27 + 60);
    if (v10 == 1)
    {
      v30 = *(v27 + 136);
    }

    else
    {
      v30 = *(v27 + 144);
    }

    sub_236738688((v9 & 1), v29, v28, v30, v7, a3, a4);
  }
}

int *sub_2367384EC(int *result, int a2, _DWORD *a3, __int128 *a4, uint64_t a5, uint64_t a6)
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
  *(&v37 + 1) = 0;
  if (a4)
  {
    v37 = *a4;
    v38 = *(a4 + 2);
  }

  else
  {
    *&v37 = __PAIR64__(v12, v13);
    DWORD2(v37) = v13;
    v38 = a6;
    result = sub_236735D40(a5, &v37);
  }

  if (v9)
  {
    if (v12 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = v38;
      v18 = DWORD2(v37);
      v17 = BYTE12(v37);
      do
      {
        if (a2 >= 1)
        {
          v19 = a2;
          v20 = a3;
          v21 = v15;
          v22 = v14;
          do
          {
            if (v17)
            {
              v23 = v21;
            }

            else
            {
              v23 = v22;
            }

            if (*(a5 + 12))
            {
              v24 = v15 + *(a5 + 8) * *v20;
            }

            else
            {
              v24 = *v20 + *(a5 + 8) * v15;
            }

            v25 = *(v16 + 16 * v23);
            result = *(a5 + 16);
            *&result[4 * v24] = v25;
            ++v22;
            v21 += v18;
            ++v20;
            --v19;
          }

          while (v19);
        }

        ++v15;
        v14 += v18;
      }

      while (v15 != v12);
    }
  }

  else if (v12 >= 1)
  {
    v26 = 0;
    v27 = v38;
    v29 = DWORD2(v37);
    v28 = BYTE12(v37);
    do
    {
      if (a2 >= 1)
      {
        v30 = 0;
        do
        {
          v31 = a3[v30];
          v32 = v26 + v29 * v31;
          v33 = v29 * v26 + v31;
          if (v28)
          {
            v33 = v32;
          }

          v34 = *(a5 + 8);
          v35 = v26 + v34 * v30;
          result = (v30 + v26 * v34);
          if (*(a5 + 12))
          {
            v36 = v35;
          }

          else
          {
            v36 = result;
          }

          *(*(a5 + 16) + 16 * v36) = *(v27 + 16 * v33);
          ++v30;
        }

        while (a2 != v30);
      }

      ++v26;
    }

    while (v26 != v12);
  }

  return result;
}

int *sub_236738688(int *result, int a2, int a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
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
  *(&v41 + 1) = 0;
  if (a5)
  {
    v41 = *a5;
    v42 = *(a5 + 2);
  }

  else
  {
    *&v41 = __PAIR64__(v14, v15);
    DWORD2(v41) = v15;
    v42 = a7;
    result = sub_236735D40(a6, &v41);
  }

  if (v11)
  {
    if (v14 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = v42;
      v20 = DWORD2(v41);
      v19 = BYTE12(v41);
      v21 = DWORD2(v41) * a3;
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
              v25 = v23;
              do
              {
                v26 = v24 + result;
                if (v19)
                {
                  v26 = v25;
                }

                if (*(a6 + 12))
                {
                  v27 = v17 + (result + *(a4 + 4 * v22) * a3) * *(a6 + 8);
                }

                else
                {
                  v27 = result + v17 * *(a6 + 8) + *(a4 + 4 * v22) * a3;
                }

                *(*(a6 + 16) + 16 * v27) = *(v18 + 16 * v26);
                result = (result + 1);
                v25 += v20;
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
    v28 = 0;
    v29 = 0;
    v30 = v42;
    v32 = DWORD2(v41);
    v31 = BYTE12(v41);
    do
    {
      if (a2 >= 1)
      {
        v33 = 0;
        v34 = 0;
        do
        {
          if (a3 >= 1)
          {
            v35 = 0;
            v36 = v33;
            do
            {
              v37 = *(a4 + 4 * v34) * a3;
              if (v31)
              {
                v38 = v29 + (v35 + v37) * v32;
              }

              else
              {
                v38 = v28 + v35 + v37;
              }

              if (*(a6 + 12))
              {
                v39 = v29 + *(a6 + 8) * v36;
              }

              else
              {
                v39 = v36 + v29 * *(a6 + 8);
              }

              v40 = *(v30 + 16 * v38);
              result = *(a6 + 16);
              *&result[4 * v39] = v40;
              ++v35;
              ++v36;
            }

            while (a3 != v35);
          }

          ++v34;
          v33 += a3;
        }

        while (v34 != a2);
      }

      ++v29;
      v28 += v32;
    }

    while (v29 != v14);
  }

  return result;
}

void _SparseMultiplySubfactor_Complex_Double(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  sub_236736D28(a1, a2, a3, a4, *(a1 + 112) + *(a1 + 120) * *(a3 + v4));
}

void sub_2367388B8(__int16 *a1, __int128 *a2, uint64_t a3, _OWORD *a4, uint64_t a5)
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
LABEL_73:

          sub_2367384EC(v28, v19, v23, v29, a3, a4);
          return;
        }

        if (v11 == 41)
        {
          v38 = *(v21 + 40);
          if (!v38)
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
          v38(v62, v19, a3, a4, a2);
          return;
        }

        if (v9)
        {
          v40 = 4;
          if (*(a3 + 12))
          {
            v40 = 0;
          }

          v41 = *(a3 + v40);
          *&v62[0] = __PAIR64__(v41, v20);
          *(&v62[0] + 1) = v20;
          *&v62[1] = a4;
          if (a2)
          {
            v42 = a2;
          }

          else
          {
            v42 = a3;
          }

          v43 = &a4[v41 * v20];
          v44 = v22;
          sub_2367384EC(1, v19, *(v21 + 64), v42, v62, v43);
          if (v16 <= v15)
          {
            v45 = v15;
          }

          else
          {
            v45 = v16;
          }

          sub_236736888(v45 * v14, v21, v44, v62, a3, v43);
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
          sub_236735D40(a3, v62);
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

        sub_236735E7C(v51, v53, v54, v55, v56, v57, v52);
        v23 = *(v21 + 64);
        LODWORD(v19) = v61;
LABEL_52:
        v28 = 0;
LABEL_72:
        v29 = 0;
        goto LABEL_73;
      }

      if (v10 == 7)
      {
        v32 = *(a1 + 11);
        v33 = v19;
        sub_2367384EC(1, v19, *(v21 + 64), a2, a3, a4);
        v34 = v21;
        v35 = v32;
        v36 = a3;
        v37 = a4;
        if ((v9 & 1) == 0)
        {
          sub_23673633C(v21, v32, a3, a4);
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
          v46 = *(a1 + 11);
          sub_2367384EC(1, v19, *(v21 + 64), a2, a3, a4);

          sub_23673633C(v21, v46, a3, a4);
          return;
        }

        v39 = *(a1 + 11);
        v33 = v19;
        if (a2)
        {
          sub_236735D40(a2, a3);
        }

        v34 = v21;
        v35 = v39;
        v36 = a3;
        v37 = a4;
      }

      sub_23673657C(v34, v35, v36, v37);
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

      sub_236738688(((v9 & 1) == 0), v26, v25, v27, a2, a3, a4);
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

    sub_236738FB0(v31, a2, a3);
    return;
  }

  if (v10 == 3)
  {
    sub_2367384EC(0, *(v12 + 60), *(v12 + 80), a2, a3, a4);
    if (v9)
    {
      if ((v9 & 0x20) != 0)
      {
        sub_2367359EC(v11, v12, v13, a3, a4);
      }

      else
      {
        sub_236735698(v11, v12, v13, a3, a4);
      }
    }

    else
    {
      sub_236734B04(v11, v12, v13, a3, a4);
    }

    goto LABEL_71;
  }

  if (v10 == 4)
  {
    sub_2367384EC(0, *(v12 + 60), *(v12 + 80), a2, a3, a4);
    sub_236734F8C(v11, v12, v13, 0, a3);
LABEL_71:
    LODWORD(v19) = *(v12 + 60);
    v23 = *(v12 + 80);
    v28 = 1;
    goto LABEL_72;
  }

  if (v9)
  {
    sub_236734F8C(*(a1 + 33), v12, v13, a2, a3);
    if ((v9 & 0x20) != 0)
    {
      sub_2367359EC(v11, v12, v13, a3, a4);
    }

    else
    {
      sub_236735698(v11, v12, v13, a3, a4);
    }

    v47 = *(v13 + 64);
    v48 = *(v12 + 136);

    sub_236734A14(v47, v48, 0, a3);
  }

  else
  {
    sub_236734A14(*(v13 + 64), *(v12 + 136), a2, a3);

    sub_236734B04(v11, v12, v13, a3, a4);
  }
}

int *sub_236738FB0(int *result, int *a2, uint64_t a3)
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
          for (i = 0; i != v8; ++i)
          {
            v10 = v3[2];
            v11 = v7 + v10 * i;
            v12 = i + v7 * v10;
            if (v3[3])
            {
              v13 = v11;
            }

            else
            {
              v13 = v12;
            }

            v14 = &result[2 * i];
            v15 = *(a3 + 8);
            v16 = v7 + v15 * i;
            v17 = i + v7 * v15;
            v18 = vld1q_dup_f64(v14);
            if (*(a3 + 12))
            {
              v19 = v16;
            }

            else
            {
              v19 = v17;
            }

            *(*(a3 + 16) + 16 * v19) = vdivq_f64(*(*(v3 + 2) + 16 * v13), v18);
          }
        }

        ++v7;
      }

      while (v7 != v6);
    }
  }

  else if (a2)
  {
    return sub_236735D40(a2, a3);
  }

  return result;
}

void _SparseSolveSubfactor_Complex_Double(uint64_t a1, __int128 *a2, uint64_t a3, _OWORD *a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  sub_2367388B8(a1, a2, a3, a4, *(a1 + 112) + *(a1 + 120) * *(a3 + v4));
}

uint64_t _SparseGetWorkspaceRequired_Complex_Double(uint64_t result, uint64_t a2, void *a3, uint64_t *a4)
{
  v5 = *(a2 + 12);
  if (v5 <= *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  v6 = v5 * *(a2 + 24);
  v7 = *(a2 + 25);
  if (v7 <= 0x29 && ((1 << v7) & 0x1D) == 0 && ((1 << v7) & 0x30000000000) != 0 && result == 6)
  {
    result = sub_236731F04(v6, *(a2 + 32), a3, a4);
    v8 = *a4 + 32 * v6;
  }

  else
  {
    *a3 = 0;
    v8 = 32 * v6;
  }

  *a4 = v8;
  return result;
}

void sub_236739120(void *result, uint64_t a2)
{
  v2 = result[1];
  v3 = *(v2 + 64);
  v4 = result[5];
  v5 = v4 + *(v2 + 48);
  LODWORD(v2) = *(v3 + 12);
  v6 = atomic_load((*(v3 + 3) + 136));
  v7 = (v4[(v6 * v2)].f64 + 7) & 0xFFFFFFFFFFFFFFF8;
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
        sub_2367392DC(v12++, *v3, *(v3 + 4), *(v3 + 1), *(v3 + 3), *(v3 + 12), *(v3 + 8), *(v3 + 10), *(v3 + 4), *(v3 + 5), v4, v7);
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

void sub_2367392DC(int a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float64x2_t *a11, uint64_t a12)
{
  v12 = a6;
  v15 = a1;
  if (a2 == 83)
  {
    v16 = *(a5[9] + 4 * a1);
    v17 = *(a5[10] + 4 * a1);
    v18 = *(a5[11] + 4 * a1);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v19 = *(a5[14] + 8 * a1);
  v20 = *(a4 + 176);
  v21 = a1 + 1;
  v22 = *(v20 + 4 * v21) - *(v20 + 4 * a1);
  v23 = v16 + v22 * a3;
  v173 = v23;
  if (a2 == 83)
  {
    v23 = *(a5[8] + 4 * a1);
  }

  v24 = *(a4 + 184);
  v25 = 8 * v21;
  v26 = *(v24 + 8 * v21);
  v27 = *(v24 + 8 * a1);
  v28 = v173 + v17 + (v26 - v27) * a3;
  LODWORD(v24) = *(*(a4 + 200) + v25) - *(*(a4 + 200) + 8 * a1);
  v29 = v19 + 8 + 16 * v28 * v173;
  v30 = v18 + v24 * a3;
  v166 = v29 + 16 * v30 * v173;
  if (a2 == 81)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29 + 16 * v30 * v173;
  }

  v32 = v31 + 4 * v173;
  if (v17 <= 0)
  {
    v32 = 0;
  }

  v163 = v32;
  v33 = 16 * v28;
  if (v28 >= 1)
  {
    v34 = 0;
    v35 = -(v16 + a3 * v22);
    v36 = v19 + (v33 + 16 * v30) * v173 + 8;
    do
    {
      if (v34 >= v173)
      {
        if (v34 >= v28 - v17)
        {
          v37 = *(v163 - 4 * v28 + 4 * v17 + 4 * v34);
        }

        else
        {
          v37 = v35 % a3 + *(*(a4 + 192) + 4 * v27 + 4 * (v35 / a3)) * a3;
        }
      }

      else if (a2 == 81)
      {
        v37 = v34 + *(v20 + 4 * v15) * a3;
      }

      else
      {
        v37 = *(v36 + 4 * v34);
      }

      *(a12 + 4 * v37) = v34++;
      ++v35;
    }

    while (v34 < v28);
  }

  v146 = v31;
  v168 = v28;
  v38 = v28 - v23;
  v149 = v17;
  if (v28 <= v23)
  {
    v40 = a6;
  }

  else
  {
    *(a9 + 8 * v15) = (*(a4 + 24))(16 * v38 * a6 + v17);
    *(a10 + 4 * v15) = v38;
    bzero(*(a9 + 8 * v15), 16 * v38 * v12);
    v39 = v38;
    v40 = v12;
    if (v17 >= 1)
    {
      bzero((*(a9 + 8 * v15) + 16 * v39 * v12), v17);
    }
  }

  v174 = *(a9 + 8 * v15);
  bzero(a11, 16 * v40 * v23);
  v41 = (*(a4 + 240) + 8 * v15);
  v42 = *v41;
  v43 = a2;
  v44 = a10;
  if (*v41 < v41[1])
  {
    v172 = v168 - v17;
    v45 = 16 * v23;
    v46 = v33 - v45;
    v169 = v15;
    while (1)
    {
      v47 = *(*(a4 + 248) + 4 * v42);
      if (!atomic_load_explicit((v44 + 4 * v47), memory_order_acquire))
      {
        goto LABEL_127;
      }

      v164 = (v44 + 4 * v47);
      if (v43 == 83)
      {
        v48 = a5;
        v49 = *(a5[9] + 4 * v47);
        v50 = *(a5[10] + 4 * v47);
        v51 = *(a5[11] + 4 * v47);
      }

      else
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v48 = a5;
      }

      v52 = *(a4 + 176);
      v53 = v47 + 1;
      v54 = *(v52 + 4 * (v47 + 1));
      v55 = *(v52 + 4 * v47);
      v56 = v49 + (v54 - v55) * a3;
      v57 = v56;
      if (v43 == 83)
      {
        v57 = *(v48[8] + 4 * v47);
      }

      v58 = *(a4 + 184);
      v165 = *(v58 + 8 * v53);
      v59 = *(v58 + 8 * v47);
      v60 = v56 + v50 + (v165 - v59) * a3;
      if (v43 == 81)
      {
        v61 = 0;
      }

      else
      {
        v61 = *(v48[14] + 8 * v47) + 8 + 16 * v56 * v60 + 16 * v56 * (v51 + (*(*(a4 + 200) + 8 * v53) - *(*(a4 + 200) + 8 * v47)) * a3);
      }

      v62 = v61 + 4 * v56;
      if (v50 <= 0)
      {
        v62 = 0;
      }

      v171 = v62;
      v63 = *(a9 + 8 * v47);
      v64 = v50 <= 0 || v63 == 0;
      v65 = v64 ? 0 : v63 + 16 * (v60 - v57) * v12;
      LODWORD(v66) = *(*(a4 + 264) + 4 * v42);
      v67 = *(*(a4 + 272) + 4 * v42);
      v68 = *(*(a4 + 256) + v42);
      v167 = v42;
      v160 = v56 + v50 + (v165 - v59) * a3;
      if ((v68 - 2) < 2)
      {
        break;
      }

      if (v68 == 1)
      {
        v70 = 0;
        v69 = *(*(a4 + 280) + 4 * v42);
        if (!v67)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v69 = 0;
        v70 = 0;
        if (!v67)
        {
          goto LABEL_87;
        }
      }

LABEL_88:
      if (v65)
      {
        v162 = v70;
        v100 = v47;
        if (v50 >= 1)
        {
          v101 = 0;
          v102 = v59;
          v103 = 0;
          v104 = v49 + (v54 + v165 - (v55 + v102)) * a3;
          v105 = v49 + v50;
          v106 = v54 + v165 - v55;
          v107 = v104;
          v108 = v160 - v50;
          v109 = v104 - v57;
          v110 = v105 + a3 * (v106 - v102) - v57;
          while (1)
          {
            if (v107 >= v56)
            {
              if (v107 >= v108)
              {
                v111 = *(v171 + 4 * (v107 - v108));
              }

              else
              {
                v111 = (v107 - v56) % a3 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v100) + 4 * ((v107 - v56) / a3)) * a3;
              }
            }

            else if (v107 < 0)
            {
              v111 = 0x7FFFFFFF;
            }

            else if (v61)
            {
              v111 = *(v61 + 4 * v107);
            }

            else
            {
              v111 = v107 + *(*(a4 + 176) + 4 * v100) * a3;
            }

            v112 = *(a12 + 4 * v111);
            v113 = v112;
            if (v112 >= v173)
            {
              if (v112 < v172)
              {
                v115 = *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v15) + 4 * ((v112 - v173) / a3));
                v43 = a2;
                v15 = v169;
                v114 = (v113 - v173) % a3 + v115 * a3;
                goto LABEL_110;
              }

              if (v168 > v112)
              {
                v114 = *(v163 + 4 * (v112 - v172));
                goto LABEL_110;
              }
            }

            else if ((v112 & 0x80000000) == 0)
            {
              if (v43 == 81)
              {
                v114 = v112 + *(*(a4 + 176) + 4 * v15) * a3;
              }

              else
              {
                v114 = *(v166 + 4 * v112);
              }

              goto LABEL_110;
            }

            v114 = 0x7FFFFFFF;
LABEL_110:
            if (v114 == v111)
            {
              __swp(v65 + v101, (v65 + v101));
              if (((v65 + v101) & 1) == 0)
              {
                ++v103;
                if (v113 >= v23)
                {
                  if (v12 >= 1)
                  {
                    v119 = (v174 + 16 * (v113 - v23));
                    v120 = v12;
                    v121 = v109;
                    do
                    {
                      *v119 = vaddq_f64(*(v63 + 16 * v121), *v119);
                      v121 += v110;
                      v119 = (v119 + v46);
                      --v120;
                    }

                    while (v120);
                  }
                }

                else if (v12 >= 1)
                {
                  v116 = &a11[v113];
                  v117 = v12;
                  v118 = v109;
                  do
                  {
                    *v116 = vaddq_f64(*(v63 + 16 * v118), *v116);
                    v118 += v110;
                    v116 = (v116 + v45);
                    --v117;
                  }

                  while (v117);
                }
              }
            }

            ++v107;
            ++v101;
            ++v109;
            if (v107 >= v160)
            {
              goto LABEL_123;
            }
          }
        }

        v103 = 0;
LABEL_123:
        v70 = v103 + v162;
        v42 = v167;
        v47 = v100;
      }

      add_explicit = atomic_fetch_add_explicit(v164, -v70, memory_order_release);
      v44 = a10;
      if (*(a9 + 8 * v47) && add_explicit == v70)
      {
        v123 = v47;
        (*(a4 + 32))();
        v42 = v167;
        v44 = a10;
        v43 = a2;
        *(a9 + 8 * v123) = 0;
        v15 = v169;
      }

LABEL_127:
      if (++v42 >= *(*(a4 + 240) + 8 * v15 + 8))
      {
        goto LABEL_128;
      }
    }

    v69 = v165 - (v59 + v66);
    v70 = v56 - v57;
    if (v56 > v57 && v68 == 3)
    {
      v150 = v165 - (v59 + v66);
      v72 = v54;
      v73 = v47;
      v74 = 0;
      v156 = v55;
      v158 = v49;
      v152 = v72;
      v154 = *(v58 + 8 * v47);
      v75 = v49 + v50 + a3 * (v72 + v165 - v55 - v59) - v57;
      v76 = v57;
      do
      {
        if ((v76 & 0x80000000) != 0)
        {
          v77 = 0x7FFFFFFF;
        }

        else if (v61)
        {
          v77 = *(v61 + 4 * v76);
        }

        else
        {
          v77 = v76 + *(*(a4 + 176) + 4 * v73) * a3;
        }

        v78 = *(a12 + 4 * v77);
        if (v78 >= v23)
        {
          if (v12 >= 1)
          {
            v82 = (v174 + 16 * (v78 - v23));
            v83 = v12;
            v84 = v74;
            do
            {
              *v82 = vaddq_f64(*(v63 + 16 * v84), *v82);
              v84 += v75;
              v82 = (v82 + v46);
              --v83;
            }

            while (v83);
          }
        }

        else if (v12 >= 1)
        {
          v79 = &a11[v78];
          v80 = v12;
          v81 = v74;
          do
          {
            *v79 = vaddq_f64(*(v63 + 16 * v81), *v79);
            v81 += v75;
            v79 = (v79 + v45);
            --v80;
          }

          while (v80);
        }

        ++v76;
        ++v74;
      }

      while (v76 != v56);
      v42 = v167;
      v47 = v73;
      v55 = v156;
      v49 = v158;
      LODWORD(v59) = v154;
      v69 = v150;
      v54 = v152;
    }

    else
    {
      v70 = 0;
    }

    if (v67)
    {
      goto LABEL_88;
    }

LABEL_71:
    if (v69 >= 1)
    {
      v161 = v70;
      v85 = v69;
      v86 = v54;
      v87 = v47;
      v151 = v85;
      v153 = v86;
      v88 = v85 + v66;
      v66 = v66;
      v157 = v55;
      v155 = v59;
      v89 = v49 + v50 + a3 * (v86 + v165 - v55 - v59) - v57;
      do
      {
        if (a3 >= 1)
        {
          v90 = 0;
          v91 = v63 + 16 * v66 * a3;
          v92 = a12 + 4 * *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v87) + 4 * v66) * a3;
          do
          {
            v93 = *(v92 + 4 * v90);
            if (v93 >= v23)
            {
              if (v12 >= 1)
              {
                v97 = (v174 + 16 * (v93 - v23));
                v98 = v12;
                v99 = v56 - v57;
                do
                {
                  *v97 = vaddq_f64(*(v91 + 16 * v90 + 16 * v99), *v97);
                  v99 += v89;
                  v97 = (v97 + v46);
                  --v98;
                }

                while (v98);
              }
            }

            else if (v12 >= 1)
            {
              v94 = v12;
              v95 = v56 - v57;
              v96 = &a11[v93];
              do
              {
                *v96 = vaddq_f64(*(v91 + 16 * v90 + 16 * v95), *v96);
                v95 += v89;
                v96 = (v96 + v45);
                --v94;
              }

              while (v94);
            }

            ++v90;
          }

          while (v90 != a3);
        }

        ++v66;
      }

      while (v66 < v88);
      v15 = v169;
      v43 = a2;
      v42 = v167;
      v47 = v87;
      v70 = v161;
      v55 = v157;
      LODWORD(v59) = v155;
      v69 = v151;
      v54 = v153;
    }

LABEL_87:
    v70 += v69 * a3;
    goto LABEL_88;
  }

LABEL_128:
  if (v23)
  {
    v124 = a7;
    if (v23 >= 1)
    {
      v125 = 0;
      v126 = v168 - v149;
      v127 = a11;
      do
      {
        if (v125 >= v173)
        {
          if (v125 >= v126)
          {
            if (v125 >= v168)
            {
              v128 = 0x7FFFFFFF;
            }

            else
            {
              v128 = *(v163 + 4 * (v125 - v126));
            }
          }

          else
          {
            v128 = (v125 - v173) % a3 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v15) + 4 * ((v125 - v173) / a3)) * a3;
          }
        }

        else if (v43 == 81)
        {
          v128 = v125 + *(*(a4 + 176) + 4 * v15) * a3;
        }

        else
        {
          v128 = *(v166 + 4 * v125);
        }

        if (v12 >= 1)
        {
          v129 = (a7 + 16 * v128);
          v130 = v12;
          v131 = v127;
          do
          {
            *v131 = vaddq_f64(*v129, *v131);
            v131 += v23;
            v129 += a8;
            --v130;
          }

          while (v130);
        }

        ++v125;
        ++v127;
      }

      while (v125 != v23);
      if (v23 != 1)
      {
        cblas_ztrsm_NEWLAPACK();
        v43 = a2;
      }
    }

    if (v43 == 81)
    {
      if (v12 >= 1)
      {
        v132 = 0;
        v133 = a11;
        do
        {
          v134 = v23;
          v135 = v124;
          v136 = v133;
          if (v23 >= 1)
          {
            do
            {
              v137 = *v136++;
              *(v135 + 16 * *(*(a4 + 176) + 4 * v15) * a3) = v137;
              v135 += 16;
              --v134;
            }

            while (v134);
          }

          ++v132;
          v133 += v23;
          v124 += 16 * a8;
        }

        while (v132 != v12);
      }
    }

    else if (v12 >= 1)
    {
      v138 = 0;
      v139 = a11;
      do
      {
        if (v23 >= 1)
        {
          v140 = v23;
          v141 = v146;
          v142 = v139;
          do
          {
            v144 = *v141++;
            v143 = v144;
            v145 = *v142++;
            *(a7 + 16 * v138 * a8 + 16 * v143) = v145;
            --v140;
          }

          while (v140);
        }

        ++v138;
        v139 += v23;
      }

      while (v138 != v12);
    }

    if (v168 > v23)
    {
      cblas_zgemm_NEWLAPACK();
    }
  }
}