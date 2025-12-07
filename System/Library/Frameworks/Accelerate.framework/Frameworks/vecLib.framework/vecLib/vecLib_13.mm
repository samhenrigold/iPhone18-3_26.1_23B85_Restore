uint64_t sub_236753908(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, uint64_t a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v100 = result;
  v13 = a5[3];
  if (a11 >= 1)
  {
    v14 = v13 + a9;
    v15 = v13 + a10;
    v16 = *(a2 + 12);
    v107 = a5 + 10;
    v17 = 4 * v14;
    v105 = a5 + 12;
    v109 = a5 + 6;
    v18 = a5 + 8;
    v19 = 4 * v15 - 4 * v13;
    while (1)
    {
      result = v15 - v13;
      if (v15 < v13)
      {
        break;
      }

      v21 = a5[1];
      v22 = v21 - a5[19];
      v23 = __OFSUB__(v15, v22);
      v24 = v15 - v22;
      if (v24 < 0 != v23)
      {
        v20 = (v15 - v13) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v15 - v13) / a8)) * a8;
      }

      else
      {
        if (v15 >= v21)
        {
          goto LABEL_12;
        }

        v20 = *(*(a5 + 11) + 4 * v24);
      }

LABEL_14:
      v25 = *(a13 + 4 * v20);
      v26 = (v25 - v16);
      if (v25 - v16 >= 0)
      {
        v27 = a5[4];
        if (v27 < v13)
        {
          v28 = a5 + 6;
          if (result < 0)
          {
            v29 = a5 + 8;
          }

          else
          {
            v28 = a5 + 10;
            v29 = a5 + 12;
          }

          do
          {
            if (v27 < 0)
            {
              v31 = 0x7FFFFFFF;
            }

            else
            {
              v30 = *(a5 + 7);
              if (v30)
              {
                v31 = *(v30 + 4 * v27);
              }

              else
              {
                v31 = v27 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v32 = *(a12 + 4 * v31);
            if (v32 >= v16)
            {
              v37 = v32 - v16;
              if (result >= 0)
              {
                v38 = v27;
              }

              else
              {
                v38 = v15;
              }

              if (result >= 0)
              {
                v39 = v15 - v13;
              }

              else
              {
                v39 = v27;
              }

              v35 = (*v28 + 4 * *v29 * v38 + 4 * v39);
              v36 = (*(a3 + 96) + 4 * *(a3 + 16) * v26 + 4 * v37);
            }

            else
            {
              if (result >= 0)
              {
                v33 = v27;
              }

              else
              {
                v33 = v15;
              }

              if (result >= 0)
              {
                v34 = v15 - v13;
              }

              else
              {
                v34 = v27;
              }

              v35 = (*v28 + 4 * *v29 * v33 + 4 * v34);
              v36 = (*(a2 + 40) + 4 * *(a2 + 48) * v32 + 4 * v26);
            }

            *v36 = *v35 + *v36;
            ++v27;
          }

          while (v13 != v27);
        }

        v40 = *a5;
        if (v14 < v40)
        {
          v41 = 0;
          v42 = a5[18];
          v43 = v40 - v42;
          v44 = v13 + a9 + v42 - v40;
          v45 = v17 + 4 * v42 - 4 * v40;
          v46 = -4 * v13;
          v47 = v13 + a9;
          while (((v44 + v41) & 0x80000000) == 0 && (*(*(a6 + 32) + (v44 + v41)) & 1) != 0)
          {
LABEL_69:
            ++v47;
            ++v41;
            v46 += 4;
            if (v14 + v41 >= v40)
            {
              goto LABEL_70;
            }
          }

          v48 = v14 + v41;
          if (v14 + v41 >= v13)
          {
            if (v48 < v43)
            {
              v51 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v41) / a8));
              v52 = (a9 + v41) % a8;
              goto LABEL_54;
            }

            v50 = *(a5 + 10) + v45;
LABEL_51:
            v53 = *(v50 + 4 * v41);
          }

          else if (v48 < 0)
          {
            v53 = 0x7FFFFFFF;
          }

          else
          {
            v49 = *(a5 + 7);
            if (v49)
            {
              v50 = v49 + v17;
              goto LABEL_51;
            }

            v51 = *(a7[22] + 4 * a4);
            v52 = v13 + a9 + v41;
LABEL_54:
            v53 = v52 + v51 * a8;
          }

          v54 = *(a12 + 4 * v53);
          if (v54 >= v16)
          {
            if (result < 0)
            {
              v55 = (*v109 + 4 * *v18 * v15 + 4 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v17 + v46);
            }

            else
            {
              v55 = (*v107 + 4 * *v105 * v48 + 4 * result);
            }

            v56 = (*(a3 + 96) + 4 * *(a3 + 16) * v26 + 4 * (v54 - v16));
          }

          else
          {
            if (result < 0)
            {
              v55 = (*v109 + 4 * *v18 * v15 + 4 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v17 + v46);
            }

            else
            {
              v55 = (*v107 + 4 * *v105 * v48 + 4 * result);
            }

            v56 = (*(a2 + 40) + 4 * *(a2 + 48) * v54 + 4 * v26);
          }

          *v56 = *v55 + *v56;
          goto LABEL_69;
        }
      }

LABEL_70:
      ++v15;
      v19 += 4;
      if (v15 >= v13 + a10 + a11)
      {
        goto LABEL_71;
      }
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v15);
      }

      else
      {
        v20 = v15 + *(a7[22] + 4 * a4) * a8;
      }

      goto LABEL_14;
    }

LABEL_12:
    v20 = 0x7FFFFFFF;
    goto LABEL_14;
  }

LABEL_71:
  v57 = a5[19];
  if (v57 < 1)
  {
    return result;
  }

  v58 = 0;
  v59 = 0;
  v60 = a5[1];
  v61 = *(a6 + 48);
  v62 = v13 + a9;
  v63 = v60 - v57;
  v104 = a5 + 10;
  v103 = a5 + 12;
  v99 = v60;
  v110 = 4 * v62;
  v108 = a5 + 6;
  v106 = a5 + 8;
  v64 = 4 * v63 - 4 * v13;
  v101 = v63;
  do
  {
    if (*(v61 + v58))
    {
      goto LABEL_151;
    }

    v65 = v63 - v13;
    if (v63 >= v13)
    {
      if (v63 >= v101)
      {
        v66 = *(*(a5 + 11) + 4 * (v63 - v101));
      }

      else
      {
        if (v65 < a10 || v65 >= a11 + a10)
        {
          __break(1u);
          return result;
        }

        v66 = v65 % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * (v65 / a8)) * a8;
      }
    }

    else if (v63 < 0)
    {
      v66 = 0x7FFFFFFF;
    }

    else if (*(a5 + 7))
    {
      v66 = *(*(a5 + 8) + 4 * v63);
    }

    else
    {
      v66 = v63 + *(a7[22] + 4 * a4) * a8;
    }

    v67 = *(a13 + 4 * v66);
    v68 = *(a2 + 12);
    if (v67 >= v68)
    {
      v70 = *(a2 + 4);
      v71 = v70 - *(a2 + 76);
      if (v67 >= v71)
      {
        if (v70 <= v67)
        {
LABEL_93:
          v69 = 0x7FFFFFFF;
          goto LABEL_95;
        }

        v69 = *(*(a2 + 88) + 4 * (v67 - v71));
      }

      else
      {
        result = ((v67 - v68) / a8);
        v69 = (v67 - v68) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v100) + 4 * result) * a8;
      }
    }

    else
    {
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_93;
      }

      if (*(a2 + 56))
      {
        v69 = *(*(a2 + 64) + 4 * v67);
      }

      else
      {
        v69 = v67 + *(a7[22] + 4 * v100) * a8;
      }
    }

LABEL_95:
    if (v69 == v66)
    {
      result = (v67 - v68);
      if (v67 - v68 >= 0)
      {
        v102 = v59;
        v72 = a5[4];
        if (v72 < v13)
        {
          v73 = a5 + 6;
          if (v65 < 0)
          {
            v74 = a5 + 8;
          }

          else
          {
            v73 = a5 + 10;
            v74 = a5 + 12;
          }

          do
          {
            if (v72 < 0)
            {
              v76 = 0x7FFFFFFF;
            }

            else
            {
              v75 = *(a5 + 7);
              if (v75)
              {
                v76 = *(v75 + 4 * v72);
              }

              else
              {
                v76 = v72 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v77 = *(a12 + 4 * v76);
            if (v77 >= v68)
            {
              v82 = v77 - v68;
              if (v65 >= 0)
              {
                v83 = v72;
              }

              else
              {
                v83 = v63;
              }

              if (v65 >= 0)
              {
                v84 = v63 - v13;
              }

              else
              {
                v84 = v72;
              }

              v80 = (*v73 + 4 * *v74 * v83 + 4 * v84);
              v81 = (*(a3 + 96) + 4 * *(a3 + 16) * result + 4 * v82);
            }

            else
            {
              if (v65 >= 0)
              {
                v78 = v72;
              }

              else
              {
                v78 = v63;
              }

              if (v65 >= 0)
              {
                v79 = v63 - v13;
              }

              else
              {
                v79 = v72;
              }

              v80 = (*v73 + 4 * *v74 * v78 + 4 * v79);
              v81 = (*(a2 + 40) + 4 * *(a2 + 48) * v77 + 4 * result);
            }

            *v81 = *v80 + *v81;
            ++v72;
          }

          while (v13 != v72);
        }

        v85 = *a5;
        if (v62 < v85)
        {
          v86 = 0;
          v87 = a5[18];
          v88 = v85 - v87;
          v89 = v13 + a9 + v87 - v85;
          v90 = v110 + 4 * v87 - 4 * v85;
          v91 = -4 * v13;
          v92 = v13 + a9;
          do
          {
            if (v89 + v86 < 0 || (*(*(a6 + 32) + (v89 + v86)) & 1) == 0)
            {
              v93 = v62 + v86;
              if (v62 + v86 >= v13)
              {
                if (v93 >= v88)
                {
                  v95 = *(*(a5 + 10) + v90 + 4 * v86);
                }

                else
                {
                  v95 = (a9 + v86) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v86) / a8)) * a8;
                }
              }

              else if (v93 < 0)
              {
                v95 = 0x7FFFFFFF;
              }

              else
              {
                v94 = *(a5 + 7);
                if (v94)
                {
                  v95 = *(v94 + v110 + 4 * v86);
                }

                else
                {
                  v95 = v13 + a9 + v86 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v96 = *(a12 + 4 * v95);
              if (v96 >= v68)
              {
                if (v65 < 0)
                {
                  v97 = (*v108 + 4 * *v106 * v63 + 4 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v110 + v91);
                }

                else
                {
                  v97 = (*v104 + 4 * *v103 * v93 + 4 * v65);
                }

                v98 = (*(a3 + 96) + 4 * *(a3 + 16) * result + 4 * (v96 - v68));
              }

              else
              {
                if (v65 < 0)
                {
                  v97 = (*v108 + 4 * *v106 * v63 + 4 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v110 + v91);
                }

                else
                {
                  v97 = (*v104 + 4 * *v103 * v93 + 4 * v65);
                }

                v98 = (*(a2 + 40) + 4 * *(a2 + 48) * v96 + 4 * result);
              }

              *v98 = *v97 + *v98;
            }

            ++v92;
            ++v86;
            v91 += 4;
          }

          while (v62 + v86 < v85);
        }

        *(v61 + v58) = 1;
        v59 = v102 + 1;
        v60 = v99;
      }
    }

LABEL_151:
    ++v63;
    ++v58;
    v64 += 4;
  }

  while (v63 < v60);
  if (v59 > 0)
  {
    atomic_fetch_add_explicit((a6 + 24), -v59, memory_order_release);
  }

  return result;
}

void sub_2367541F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v12 = a5[3];
  v62 = a5[1];
  if (v12 + a10 < v62)
  {
    v13 = a5[19];
    v61 = v13 - v62;
    v14 = v12 + a10;
    v64 = a5 + 10;
    v63 = a5 + 12;
    v15 = a5 + 6;
    v16 = a5 + 8;
    v60 = v62 - v13;
    for (i = 4 * a10; ; i += 4)
    {
      if (v61 + v14 < 0 || (*(a6[6] + (v61 + v14)) & 1) == 0)
      {
        v18 = v14 - v12;
        if (v14 >= v12)
        {
          v19 = v14 >= v60 ? *(*(a5 + 11) + 4 * (v14 - v60)) : (v14 - v12) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v14 - v12) / a8)) * a8;
        }

        else if (v14 < 0)
        {
          v19 = 0x7FFFFFFF;
        }

        else
        {
          v19 = *(a5 + 7) ? *(*(a5 + 8) + 4 * v14) : v14 + *(a7[22] + 4 * a4) * a8;
        }

        v20 = *(a12 + 4 * v19);
        v21 = *(a2 + 12);
        v22 = (v20 - v21);
        if (v20 - v21 >= 0)
        {
          v23 = a5[4];
          if (v23 < v12)
          {
            if (v18 >= 0)
            {
              v24 = a5 + 10;
            }

            else
            {
              v24 = a5 + 6;
            }

            if (v18 >= 0)
            {
              v25 = a5 + 12;
            }

            else
            {
              v25 = a5 + 8;
            }

            do
            {
              if (v23 < 0)
              {
                v27 = 0x7FFFFFFF;
              }

              else
              {
                v26 = *(a5 + 7);
                if (v26)
                {
                  v27 = *(v26 + 4 * v23);
                }

                else
                {
                  v27 = v23 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v28 = *(a11 + 4 * v27);
              if (v28 >= v21)
              {
                v33 = v28 - v21;
                if (v18 >= 0)
                {
                  v34 = v23;
                }

                else
                {
                  v34 = v14;
                }

                if (v18 >= 0)
                {
                  v35 = v14 - v12;
                }

                else
                {
                  v35 = v23;
                }

                v31 = (*v24 + 4 * *v25 * v34 + 4 * v35);
                v32 = (*(a3 + 96) + 4 * *(a3 + 16) * v22 + 4 * v33);
              }

              else
              {
                if (v18 >= 0)
                {
                  v29 = v23;
                }

                else
                {
                  v29 = v14;
                }

                if (v18 >= 0)
                {
                  v30 = v14 - v12;
                }

                else
                {
                  v30 = v23;
                }

                v31 = (*v24 + 4 * *v25 * v29 + 4 * v30);
                v32 = (*(a2 + 40) + 4 * *(a2 + 48) * v28 + 4 * v22);
              }

              *v32 = *v31 + *v32;
              ++v23;
            }

            while (v12 != v23);
          }

          v36 = *a5;
          v37 = a5[18];
          v38 = v36 - v37;
          if (v12 + a9 < v36 - v37)
          {
            v39 = a7[24] + 4 * *(a7[23] + 8 * a4);
            v40 = a6[12] - 4 * v12 + a6[2] * i;
            v41 = a9;
            v42 = v12 + a9;
            do
            {
              v43 = *(a11 + 4 * (v41 % a8 + *(v39 + 4 * (v41 / a8)) * a8));
              if (v43 >= v21)
              {
                v44 = (*(a3 + 96) + 4 * *(a3 + 16) * v22 + 4 * (v43 - v21));
              }

              else
              {
                v44 = (*(a2 + 40) + 4 * *(a2 + 48) * v43 + 4 * v22);
              }

              *v44 = *(v40 + 4 * v42++) + *v44;
              ++v41;
            }

            while (v42 < v38);
          }

          if (v37 >= 1)
          {
            break;
          }
        }
      }

LABEL_78:
      if (++v14 >= v62)
      {
        return;
      }
    }

    v45 = 0;
    v46 = a6[4];
    v47 = v36 - v12 - v37;
    v48 = 4 * v36 - 4 * v37;
    v49 = -4 * v12;
    v50 = v38;
    while ((*(v46 + v45) & 1) != 0)
    {
LABEL_77:
      ++v50;
      ++v45;
      v49 += 4;
      if (v38 + v45 >= v36)
      {
        goto LABEL_78;
      }
    }

    v51 = v38 + v45;
    if (v51 >= v12)
    {
      if (v51 >= v38)
      {
        v53 = *(a5 + 10);
        goto LABEL_59;
      }

      v54 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v47 + v45) / a8));
      v55 = (v47 + v45) % a8;
    }

    else
    {
      if (v51 < 0)
      {
        v56 = 0x7FFFFFFF;
        goto LABEL_63;
      }

      v52 = *(a5 + 7);
      if (v52)
      {
        v53 = v52 + v48;
LABEL_59:
        v56 = *(v53 + 4 * v45);
LABEL_63:
        v57 = *(a11 + 4 * v56);
        if (v57 >= v21)
        {
          if (v18 < 0)
          {
            v58 = (*v15 + 4 * *v16 * v14 + 4 * v50);
          }

          else if (v51 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48 + v49);
          }

          else
          {
            v58 = (*v64 + 4 * *v63 * v51 + 4 * v18);
          }

          v59 = (*(a3 + 96) + 4 * *(a3 + 16) * v22 + 4 * (v57 - v21));
        }

        else
        {
          if (v18 < 0)
          {
            v58 = (*v15 + 4 * *v16 * v14 + 4 * v50);
          }

          else if (v51 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48 + v49);
          }

          else
          {
            v58 = (*v64 + 4 * *v63 * v51 + 4 * v18);
          }

          v59 = (*(a2 + 40) + 4 * *(a2 + 48) * v57 + 4 * v22);
        }

        *v59 = *v58 + *v59;
        goto LABEL_77;
      }

      v54 = *(a7[22] + 4 * a4);
      v55 = v38 + v45;
    }

    v56 = v55 + v54 * a8;
    goto LABEL_63;
  }
}

uint64_t _SparseNumericFactorLU_Float@<X0>(__int128 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, char *a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
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
    *(a5 + 80) = sub_236754888(v9, *(a1 + 16), v10, *(a1 + 6), a3, a6);
    _SparseRefactorLU_Float(a2, a5, a3, a4, v16);

    return sub_2367557D4(a5);
  }

  return result;
}

uint64_t sub_236754888(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v47 = *MEMORY[0x277D85DE8];
  if (a6 || (v6 = (*(a3 + 24))(a4)) != 0)
  {
    v12 = v6 + a4;
    v13 = 4 * *(a3 + 56);
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

    v16 = ((v15 + 4 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60)) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 < v16)
    {
      goto LABEL_34;
    }

    if (a2 < 2)
    {
      v17 = 0;
    }

    else
    {
      if (v12 < ((v16 + 4 * (*(a3 + 100) + *(a3 + 96)) * a2 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_34;
      }

      v17 = (v15 + 4 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = ((v16 + 4 * (*(a3 + 100) + *(a3 + 96)) * a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    if (a1 == 83)
    {
      v18 = *(a3 + 168);
      v19 = (v16 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
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

      v24 = v16;
      v16 = v23;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v21 = 0;
      v24 = 0;
      v19 = 0;
      v22 = 0;
      if (!v13)
      {
LABEL_21:
        v25 = 0;
LABEL_26:
        v27 = (v16 + 8 * *(a3 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v12 >= v27)
        {
          v28 = *(a5 + 16);
          *v6 = *a5;
          *(v6 + 16) = v28;
          *(v6 + 32) = 1;
          *(v6 + 40) = v15;
          *(v6 + 48) = v17;
          *(v6 + 56) = 0;
          *(v6 + 64) = v24;
          *(v6 + 72) = v19;
          *(v6 + 80) = v21;
          *(v6 + 88) = v22;
          *(v6 + 96) = v13;
          *(v6 + 104) = v25;
          *(v6 + 112) = v16;
          v29 = (v27 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
          *(v6 + 120) = v29;
          *(v6 + 128) = v12 - v29;
          *(v6 + 136) = 0;
          bzero(v16, 8 * *(a3 + 168));
          return v6;
        }

LABEL_34:
        __break(1u);
      }
    }

    v25 = (v16 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v25)
    {
      goto LABEL_34;
    }

    v26 = (v25 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v26)
    {
      goto LABEL_34;
    }

    v13 = v16;
    v16 = v26;
    goto LABEL_26;
  }

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

void _SparseRefactorLU_Float(unsigned int *a1, char *a2, uint64_t a3, char *a4, __n128 a5)
{
  v5 = a4;
  v7 = a1;
  v206 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 10);
  v173 = a2[25];
  v9 = *(a1 + 28);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v172 = a2;
  v12 = *(a3 + 4);
  v176 = v8;
  v177 = v10;
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
            if (v9)
            {
              v21 = (v17 + 4 * *(*(v177 + 152) + 4 * i) * v9);
              v22 = (*(v8 + 96) + v19);
              v23 = v9;
              do
              {
                v24 = *v21++;
                a5.n128_u32[0] = v24;
                *v22++ = v24;
                --v23;
              }

              while (v23);
            }

            v19 += 4 * v9;
          }
        }

        v25 = a1[1];
        if (v25 >= 1)
        {
          v26 = 0;
          v27 = 0;
          v28 = v17 + 4 * v18 * v9;
          do
          {
            if (v9)
            {
              v29 = (v28 + 4 * *(*(v177 + 160) + 4 * v27) * v9);
              v30 = (*(v8 + 104) + v26);
              v31 = v9;
              do
              {
                v32 = *v29++;
                a5.n128_u32[0] = v32;
                *v30++ = v32;
                --v31;
              }

              while (v31);
            }

            ++v27;
            v26 += 4 * v9;
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
      sub_236751B4C(&v183, *(v10 + 136), *(v10 + 144), *(v8 + 96), *(v8 + 104), a4);
LABEL_25:
      v7 = a1;
      v8 = v176;
      v5 = a4;
      goto LABEL_26;
    }

    if (v12 == 3)
    {
      v13 = *a1;
      v14 = sub_2366FD568(v13, v7[1], *(*(v7 + 1) + 8 * v7[1]), v9) + 4 * v13 * v9 + 8;
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

      v34 = (4 * (*a1 * v9) + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = *(a1 + 1);
      v183 = *a1;
      v184 = v35;
      v185 = *(a1 + 4);
      sub_2366FD5C4(&v183, v15, *(v176 + 96), *(v176 + 104), &v15[v34], v14 - v34);
      v7 = a1;
      v8 = v176;
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
    v38 = &v36[4 * v37 * v9];
    v39 = *(v8 + 96);
    if (v39)
    {
      if (v37 >= 1)
      {
        for (j = 0; j != v37; ++j)
        {
          if (v9)
          {
            v41 = &v36[4 * *(*(v177 + 152) + 4 * j) * v9];
            v42 = v9;
            v43 = v39;
            do
            {
              v44 = *v43++;
              a5.n128_u32[0] = v44;
              *v41++ = v44;
              --v42;
            }

            while (v42);
          }

          v39 += v9;
        }
      }

      v45 = v7[1];
      if (v45 >= 1)
      {
        v46 = 0;
        for (k = 0; k != v45; ++k)
        {
          if (v9)
          {
            v48 = &v38[4 * *(*(v177 + 160) + 4 * k) * v9];
            v49 = (*(v8 + 104) + v46);
            v50 = v9;
            do
            {
              v51 = *v49++;
              a5.n128_u32[0] = v51;
              *v48++ = v51;
              --v50;
            }

            while (v50);
          }

          v46 += 4 * v9;
        }
      }
    }

    else
    {
      if (v37 * v9 >= 1)
      {
        memset_pattern16(v36, &unk_23681FB80, 4 * (v37 * v9));
        v5 = a4;
        v7 = a1;
        v8 = v176;
      }

      if ((v7[1] * v9) >= 1)
      {
        memset_pattern16(v38, &unk_23681FB80, 4 * v7[1] * v9);
        v5 = a4;
        v7 = a1;
        v8 = v176;
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
      v8 = v176;
    }

    else
    {
      v59 = 0;
      v60 = 4 * v57;
      v61 = 4 * v56;
      v8 = v176;
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
                v76 = *(v8 + 96);
                v77 = (*(v8 + 40) + 4 * *&a2[8 * v75]);
                v78 = *(v55 + 4);
                if (v76)
                {
                  if (v56)
                  {
                    v79 = 0;
                    v80 = (v76 + 4 * *(*(v177 + 136) + 4 * v75));
                    v81 = *(v8 + 104) + 4 * v63;
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
                        a5.n128_f32[0] = (v88 * v89) * *(v81 + 4 * v79);
                        *v85++ = a5.n128_u32[0];
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
                  memcpy(v77, (v78 + 4 * v73 * v57), 4 * v57);
                  a2 = a4;
                  v55 = a1;
                  v8 = v176;
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
        v92 = *(v8 + 40);
        a5.n128_u32[0] = 1.0;
        do
        {
          v93 = *v91++;
          *(v92 + 4 * v93) = 1.0 / *(v92 + 4 * v93);
          --v90;
        }

        while (v90);
      }

      v94 = *(v177 + 100);
      if (v94 >= 1)
      {
        LODWORD(v97) = v58 - v94;
        v95 = *(v177 + 120);
        v96 = *(v8 + 40);
        v97 = v97;
        a5.n128_u32[0] = 1.0;
        do
        {
          *(v96 + 4 * *(v95 + 8 * v97)) = 1.0 / *(v96 + 4 * *(v95 + 8 * v97));
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
          sgetrf_NEWLAPACK();
          v8 = v176;
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
        sgetrf_NEWLAPACK();
        v8 = v176;
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
    v185 = v8;
    v186 = v5;
    v187 = *(v8 + 120);
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
        *(v131 + 2) = sub_236758B7C;
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
    v179 = xmmword_28499C288;
    v180 = off_28499C298;
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

  v148 = *(v172 + 5);
  v149 = *(v8 + 120);
  v150 = *(v8 + 128);
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

    v161 = sub_23675900C(v154, v155, a1, v173, v159, v101, v160, v152, a4, v156, v199, v157, &v179, &v178, v103, v158, &v183, 0, 0);
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

void sub_23675579C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2367557D4(uint64_t result)
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
    *(result + 96) = 8 * (v5 + v6 * v2);
  }

  return result;
}

uint64_t _SparseFactorLU_Float@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v549 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*(a2 + 1) + 8 * v7);
  if (a1 == 80)
  {
    v9 = 83;
  }

  else
  {
    v9 = a1;
  }

  if (v6 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *a5 = -3;
  v11 = a2[6] & 1;
  *(a5 + 4) = v11;
  *(a5 + 8) = -3;
  *(a5 + 12) = v6;
  *(a5 + 16) = v7;
  *(a5 + 20) = v11;
  v527 = a2;
  *(a5 + 24) = *(a2 + 28);
  v526 = v9;
  *(a5 + 25) = v9;
  *(a5 + 80) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 57) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  v521 = (a5 + 80);
  v541 = 0;
  if (sub_236720B94(v10, v8, &v541))
  {
    v12 = *(a3 + 40);
    if (!v12)
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        sub_23672B05C(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v12(__str);
LABEL_118:
    v165 = -4;
LABEL_119:
    *a5 = v165;
    return result;
  }

  v14 = a3;
  v15 = v541;
  v16 = (*(a3 + 24))(v541);
  if (!v16)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v15);
    return (*(a3 + 40))(__str);
  }

  v17 = v16;
  __src = v16;
  if (*(a4 + 4) == 4)
  {
    if (*(v527 + 28) != 1)
    {
      v55 = *(a3 + 40);
      if (!v55)
      {
        v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v65)
        {
          sub_23672ACD0(v65, v66, v67, v68, v69, v70, v71, v72);
        }

        _SparseTrap();
      }

      memset(&__str[98], 0, 158);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is only supported for blockSize=1\n");
      v55(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_118;
    }

    if (*(a3 + 16))
    {
      v18 = *(a3 + 40);
      if (!v18)
      {
        v82 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v82)
        {
          sub_23672AD0C(v82, v83, v84, v85, v86, v87, v88, v89);
        }

        _SparseTrap();
      }

      memset(&__str[123], 0, 133);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.ignoreRowsAndColumns!=NULL\n");
      v18(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_118;
    }

    if (*(a3 + 4) == 1)
    {
      v64 = *(a3 + 40);
      if (!v64)
      {
        v114 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v114)
        {
          sub_23672B020(v114, v115, v116, v117, v118, v119, v120, v121);
        }

        _SparseTrap();
      }

      memset(&__str[125], 0, 131);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.orderMethod==SparseOrderUser\n");
      v64(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_118;
    }

    v90 = v527;
    v91 = (*(a3 + 24))(4 * *v527);
    v92 = (*(a3 + 24))(4 * (v90[1] + *v90));
    v93 = *v527;
    v94 = &v92[v93];
    v95 = sub_2366FD568(v93, v90[1], *(*(v90 + 1) + 8 * v90[1]), 1);
    v96 = v95;
    if (v95 >= v15)
    {
      v17 = (*(a3 + 24))(v95);
    }

    v97 = *(v527 + 1);
    *__str = *v527;
    *&__str[16] = v97;
    *&__str[32] = *(v527 + 4);
    v537 = v91;
    v518 = v94;
    v519 = v92;
    v98 = sub_2366FD5C4(__str, v91, v92, v94, v17, v96);
    if (v17 != __src)
    {
      (*(a3 + 32))(v17);
    }

    v14 = a3;
    if (v98 != v527[1])
    {
      v99 = *(a3 + 40);
      if (!v99)
      {
        v156 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v156)
        {
          sub_23672AD48(v156, v157, v158, v159, v160, v161, v162, v163);
        }

        _SparseTrap();
      }

      memset(&__str[39], 0, 217);
      strcpy(__str, "Matrix is structurally rank deficient\n");
      v99(__str);
      v164 = *(a3 + 32);
      v536 = (a3 + 32);
      v164(v91);
      (*v536)(v92);
      result = (*v536)(__src);
      v165 = -2;
      goto LABEL_119;
    }
  }

  else
  {
    v518 = 0;
    v519 = 0;
    v537 = 0;
  }

  v27 = *(v527 + 1);
  *v540 = *v527;
  *&v540[16] = v27;
  *a5 = -3;
  if (*v540 >= *&v540[4])
  {
    v28 = *&v540[4];
  }

  else
  {
    v28 = *v540;
  }

  if (*v540 <= *&v540[4])
  {
    v29 = *&v540[4];
  }

  else
  {
    v29 = *v540;
  }

  v30 = v540[28];
  v31 = v28 + 1;
  v32 = 4 * v28;
  v33 = v32 + 8;
  if (v526 != 83)
  {
    v33 = 0;
  }

  v34 = v540[28] * (*&v540[4] + *v540) + 8;
  if (!*(v14 + 16))
  {
    v34 = 0;
  }

  v35 = 8 * (*&v540[4] + *v540) + 24 * v31 + v33 + v34 + 464;
  result = (*(v14 + 24))(v35);
  v36 = result;
  if (!result)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v35);
    (*(a3 + 40))(__str);
    goto LABEL_266;
  }

  v37 = result;
  v38 = result + v35;
  v39 = (result + 407) & 0xFFFFFFFFFFFFFFF8;
  v40 = a3;
  if (v38 < v39)
  {
    goto LABEL_552;
  }

  v41 = *(a3 + 16);
  v42 = *(a3 + 32);
  *__str = *a3;
  *&__str[16] = v41;
  *&__str[32] = v42;
  result = 1;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    result = sub_2366FCCD0(0x10u);
    v40 = a3;
    v37 = v36;
  }

  *v37 = *__str;
  *(v37 + 16) = *&__str[16];
  *(v37 + 32) = *&__str[32];
  *(v37 + 48) = 1;
  *(v37 + 52) = result;
  *(v37 + 56) = v28 * v30;
  *(v37 + 60) = v28;
  *(v37 + 64) = v29;
  *(v37 + 84) = 0u;
  *(v37 + 100) = 0u;
  *(v37 + 116) = 0u;
  *(v37 + 132) = 0u;
  *(v37 + 148) = 0u;
  *(v37 + 164) = 0u;
  *(v37 + 180) = 0u;
  *(v37 + 196) = 0u;
  *(v37 + 212) = 0u;
  *(v37 + 228) = 0u;
  *(v37 + 244) = 0u;
  *(v37 + 384) = 0u;
  *(v37 + 68) = 0u;
  *(v37 + 260) = 0u;
  *(v37 + 276) = 0u;
  *(v37 + 292) = 0u;
  *(v37 + 308) = 0u;
  *(v37 + 324) = 0u;
  *(v37 + 340) = 0u;
  *(v37 + 356) = 0u;
  *(v37 + 372) = 0u;
  v43 = *v540;
  v44 = (v39 + 4 * *v540 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v44)
  {
    goto LABEL_552;
  }

  *(v37 + 136) = v39;
  v45 = *&v540[4];
  v46 = (v44 + 4 * *&v540[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v46)
  {
    goto LABEL_552;
  }

  *(v37 + 144) = v44;
  v47 = (v46 + 4 * v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v47)
  {
    goto LABEL_552;
  }

  *(v37 + 152) = v46;
  v48 = (v47 + 4 * v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v48)
  {
    goto LABEL_552;
  }

  *(v37 + 160) = v47;
  v49 = v48 + 8 * v31;
  if (v49 > v38)
  {
    goto LABEL_552;
  }

  v50 = 8 * v31;
  *(v37 + 120) = v48;
  v51 = v49 + v50;
  if (v49 + v50 > v38)
  {
    goto LABEL_552;
  }

  *(v37 + 184) = v49;
  v52 = (v51 + v50) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v52)
  {
    goto LABEL_552;
  }

  *(v37 + 200) = v51;
  if (v526 == 83)
  {
    if (v38 < ((v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_552;
    }

    *(v37 + 304) = v52;
    v52 = (v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (!*(v40 + 16))
  {
    goto LABEL_49;
  }

  v53 = v540[28];
  if (v38 < ((v52 + (v45 + v43) * v540[28] + 7) & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_552:
    __break(1u);
    return result;
  }

  *(v37 + 72) = v52;
  *(v37 + 80) = v52 + v43 * v53;
LABEL_49:
  v544 = 0;
  if (sub_236720B94(v28, *(*&v540[8] + 8 * v28), &v544))
  {
    v54 = *(a3 + 40);
    if (!v54)
    {
      v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v73)
      {
        sub_23672AF6C(v73, v74, v75, v76, v77, v78, v79, v80);
      }

      _SparseTrap();
    }

    memset(&__str[56], 0, 200);
    strcpy(__str, "Symbolic workspace requirement calculation overflowed.\n");
    v54(__str);
    (*(a3 + 32))(v36);
    goto LABEL_113;
  }

  v56 = v544;
  v57 = *(a3 + 16);
  if (v57)
  {
    bzero(*(v36 + 72), (*&v540[4] + *v540) * v540[28]);
    v58 = *(a3 + 16);
    v59 = *v58;
    if ((*v58 & 0x80000000) != 0)
    {
      LODWORD(v57) = 0;
      v60 = 0;
    }

    else
    {
      v60 = 0;
      LODWORD(v57) = 0;
      v61 = *v540 * v540[28];
      v62 = v58 + 1;
      do
      {
        if (v59 >= v61)
        {
          *(*(v36 + 80) + (v59 - v61)) = 1;
          LODWORD(v57) = v57 + 1;
        }

        else
        {
          *(*(v36 + 72) + v59) = 1;
          ++v60;
        }

        v63 = *v62++;
        v59 = v63;
      }

      while ((v63 & 0x80000000) == 0);
    }

    if (v540[24])
    {
      *(v36 + 72) = vextq_s8(*(v36 + 72), *(v36 + 72), 8uLL);
      v81 = v60;
    }

    else
    {
      v81 = v57;
      LODWORD(v57) = v60;
    }
  }

  else
  {
    v81 = 0;
  }

  v100 = v540[28];
  v101 = *v540;
  v102 = *&v540[4];
  v103 = *v540 * v540[28] - v57;
  if (v103 != *&v540[4] * v540[28] - v81)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672AD84();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Sparse LU factorization only supports square matrices, but supplied matrix without any ignored rows and columns has shape %dx%d.\n", v103, *&v540[4] * v540[28] - v81);
    (*(a3 + 40))(__str);
    (*(a3 + 32))(v36);
LABEL_113:
    v112 = 0;
    v113 = -4;
LABEL_114:
    *a5 = v113;
    goto LABEL_267;
  }

  if (*(a3 + 4) != 1)
  {
    v543 = 0uLL;
    *&v542 = __PAIR64__(*v540, *&v540[4]);
    *(&v542 + 1) = __src;
    v109 = (4 * *(*&v540[8] + 8 * *&v540[4]) + 7) & 0xFFFFFFFFFFFFFFF8;
    v532 = v56;
    *&v543 = &__src[2 * *v540 + 2];
    v110 = (v543 + v109);
    if (sub_236750FA0(v540, &v542, *(v36 + 72), *(v36 + 80), (v36 + 88), (v36 + 92), (v36 + 96), (v36 + 100), *(v36 + 152), *(v36 + 160), v543 + v109))
    {
      v111 = *(a3 + 40);
      if (!v111)
      {
        v147 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v147)
        {
          sub_23672ADFC(v147, v148, v149, v150, v151, v152, v153, v154);
        }

        _SparseTrap();
      }

      memset(&__str[33], 0, 223);
      strcpy(__str, "Matrix is structurally singular.");
      v111(__str);
      (*(a3 + 32))(v36);
LABEL_154:
      v155 = -2;
LABEL_155:
      *a5 = v155;
LABEL_508:
      v292 = a3;
      v112 = 0;
      goto LABEL_268;
    }

    v137 = *v540;
    v138 = vsub_s32(*v540, *(v36 + 88));
    v139 = *(v36 + 60) - *(v36 + 88);
    *(v36 + 60) = v139;
    if ((vceq_s32(v138, vdup_lane_s32(v138, 1)).u8[0] & 1) == 0)
    {
      v179 = *(a3 + 40);
      if (!v179)
      {
        v460 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v460)
        {
          sub_23672AE38(v460, v461, v462, v463, v464, v465, v466, v467);
        }

        _SparseTrap();
      }

      memset(&__str[74], 0, 182);
      strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
      v179(__str);
      *a5 = -4;
      (*(a3 + 32))(v36);
      goto LABEL_508;
    }

    v140 = v36;
    v141 = *(v36 + 96);
    v142 = *(v36 + 100) + v141;
    if (v537)
    {
      v143 = *(v36 + 152);
      v144 = *(v36 + 160);
      v145 = v110;
      if (v137 >= 1)
      {
        v146 = 0;
        do
        {
          *(v144 + v146) = *&v537[4 * *(v143 + v146)];
          v146 += 4;
        }

        while (4 * v137 != v146);
      }
    }

    else
    {
      *__str = *v540;
      *&__str[16] = *&v540[16];
      *v547 = v542;
      *&v547[16] = v543;
      v180 = v139;
      if (sub_236710A64(__str, v547, v139 - v142, *(v36 + 152) + 4 * v141, v139 - v142, (*(v36 + 160) + 4 * v141), v110) != v139 - v142)
      {
        v468 = *(a3 + 40);
        if (!v468)
        {
          v506 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v506)
          {
            sub_23672AE74(v506, v507, v508, v509, v510, v511, v512, v513);
          }

          _SparseTrap();
        }

        memset(&__str[74], 0, 182);
        strcpy(__str, "Unable to construct maximal transversal, matrix is structurally singular.");
        v468(__str);
        goto LABEL_154;
      }

      v140 = v36;
      v143 = *(v36 + 152);
      v144 = *(v36 + 160);
      v139 = v180;
      v145 = v110;
    }

    v524 = v139;
    *__str = *v540;
    *&__str[16] = *&v540[16];
    v181 = sub_2367D4EEC(__str, v139 - v142, (v143 + 4 * *(v140 + 96)), (v144 + 4 * *(v140 + 96)), v145, v145 + ((4 * (v139 - v142) + 11) & 0xFFFFFFFFFFFFFFF8));
    *(v36 + 104) = v181;
    v182 = (*(a3 + 24))(4 * v181 + 4);
    v183 = v36;
    *(v36 + 112) = v182;
    if ((*(v36 + 104) & 0x80000000) != 0)
    {
      goto LABEL_184;
    }

    v184 = v110;
    v185 = 0;
    do
    {
      *(v182 + 4 * v185) = *(v36 + 96) + *&v110[4 * v185];
      v186 = *(v36 + 104);
      v317 = v185++ < v186;
    }

    while (v317);
    if (v186 < 1)
    {
LABEL_184:
      v175 = v183;
      if (*v540 >= 1)
      {
        v211 = 0;
        v212 = *(v183 + 136);
        v213 = *(v183 + 152);
        do
        {
          *(v212 + 4 * *(v213 + 4 * v211)) = v211;
          ++v211;
        }

        while (v211 < *v540);
      }

      v178 = v532;
      if (*&v540[4] >= 1)
      {
        v214 = 0;
        v215 = *(v183 + 144);
        v216 = *(v183 + 160);
        do
        {
          *(v215 + 4 * *(v216 + 4 * v214)) = v214;
          ++v214;
        }

        while (v214 < *&v540[4]);
      }

      v217 = *(a3 + 8);
      if (v217)
      {
        memcpy(v217, *(v183 + 136), 4 * *v540);
        memcpy((*(a3 + 8) + 4 * *v540), *(v175 + 144), 4 * *&v540[4]);
      }

      v176 = __src;
      v177 = v524;
      goto LABEL_193;
    }

    v187 = 0;
    v529 = 4 * v29;
    while (1)
    {
      v188 = *(v183 + 112);
      v189 = *(v188 + 4 * v187++);
      v190 = *(v183 + 152);
      v191 = *(v183 + 160);
      __b = *(v183 + 136);
      v193 = *(v183 + 144);
      v194 = (*(v188 + 4 * v187) - v189);
      *v547 = *v540;
      *&v547[8] = *&v540[8];
      *&v547[24] = *&v540[24];
      v195 = v190 + 4 * v189;
      v545 = v542;
      v546 = v543;
      v196 = v191 + 4 * v189;
      sub_23670BC48(v547, &v545, v194, v195, v196, v184 + ((v529 + 7) & 0xFFFFFFFFFFFFFFF8), v184, __str, v529, __b, 4 * *v540, v193);
      *v547 = *__str;
      *&v547[16] = *&__str[16];
      if (sub_2367E3E64(v526, v547, 0, __b, v193, a3))
      {
        break;
      }

      if (v194 <= 0)
      {
        v210 = v195;
        v204 = 4 * v194;
        memcpy(v210, v193, v204);
        v205 = v196;
      }

      else
      {
        v197 = v195;
        v198 = __b;
        v199 = v194;
        do
        {
          v201 = *v197++;
          v200 = v201;
          v202 = *v198++;
          v193[v202] = v200;
          --v199;
        }

        while (v199);
        v203 = v195;
        v204 = 4 * v194;
        memcpy(v203, v193, 4 * v194);
        v205 = v196;
        v206 = v196;
        do
        {
          v208 = *v206++;
          v207 = v208;
          v209 = *__b++;
          v193[v209] = v207;
          --v194;
        }

        while (v194);
      }

      memcpy(v205, v193, v204);
      v183 = v36;
      v184 = v110;
      if (v187 >= *(v36 + 104))
      {
        goto LABEL_184;
      }
    }

    (*(a3 + 32))(v36);
    v155 = -3;
    goto LABEL_155;
  }

  v104 = *(a3 + 8);
  if (v104)
  {
    if (*&v540[4] >= 1)
    {
      v105 = 0;
      v106 = *(v36 + 136);
      do
      {
        *(v106 + 4 * v105) = *(v104 + 4 * v105);
        ++v105;
      }

      while (v105 < *&v540[4]);
      v101 = *v540;
    }

    if (v101 < 1)
    {
      goto LABEL_131;
    }

    v107 = 0;
    v108 = *(v36 + 144);
    do
    {
      *(v108 + 4 * v107) = *(v104 + 4 * (v107 + *&v540[4]));
      ++v107;
    }

    while (v107 < *v540);
    v101 = *v540;
  }

  else
  {
    if (*v540 >= 1)
    {
      v122 = 0;
      v123 = *(v36 + 136);
      do
      {
        *(v123 + 4 * v122) = v122;
        ++v122;
      }

      while (v122 < *v540);
      v102 = *&v540[4];
      v101 = *v540;
    }

    if (v102 >= 1)
    {
      v124 = 0;
      v125 = *(v36 + 144);
      do
      {
        *(v125 + 4 * v124) = v124;
        ++v124;
      }

      while (v124 < *&v540[4]);
      v101 = *v540;
    }
  }

  if (v101 >= 1)
  {
    v126 = 0;
    v127 = *(v36 + 152);
    v128 = *(v36 + 136);
    do
    {
      *(v127 + 4 * *(v128 + 4 * v126)) = v126;
      ++v126;
    }

    while (v126 < *v540);
  }

LABEL_131:
  v129 = *&v540[4];
  if (*&v540[4] >= 1)
  {
    v130 = 0;
    v131 = *(v36 + 160);
    v132 = *(v36 + 144);
    do
    {
      *(v131 + 4 * *(v132 + 4 * v130)) = v130;
      ++v130;
      v129 = *&v540[4];
    }

    while (v130 < *&v540[4]);
  }

  if (v57 > 0)
  {
    v133 = sub_236721ACC(*v540, v100, *(v36 + 136), *(v36 + 152), *(v36 + 72), __src);
    *(v36 + 88) = v133;
    v28 = (*(v36 + 60) - v133);
    *(v36 + 60) = v28;
    v129 = *&v540[4];
  }

  if (v81 <= 0)
  {
    v134 = *(v36 + 92);
  }

  else
  {
    v134 = sub_236721ACC(v129, v540[28], *(v36 + 144), *(v36 + 160), *(v36 + 80), __src);
    *(v36 + 92) = v134;
    v129 = *&v540[4];
  }

  if (*v540 - *(v36 + 88) != v129 - v134)
  {
    v136 = *(a3 + 40);
    if (!v136)
    {
      v166 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v166)
      {
        sub_23672AE38(v166, v167, v168, v169, v170, v171, v172, v173);
      }

      _SparseTrap();
    }

    memset(&__str[74], 0, 182);
    strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
    v136(__str);
    *a5 = -4;
    (*(a3 + 32))(v36);
    goto LABEL_266;
  }

  v135 = sub_236798D30(v28, v540, *(v36 + 136), *(v36 + 160), (v36 + 96), (v36 + 100), (v36 + 104), __src);
  if (v135 >= 1)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672AEB0();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "User-supplied ordering does not place an entry on diagonal %d.", v135 - 1);
    (*(a3 + 40))(__str);
    (*(a3 + 32))(v36);
    goto LABEL_113;
  }

  v174 = (*(a3 + 24))(4 * *(v36 + 104) + 4);
  v175 = v36;
  *(v36 + 112) = v174;
  v176 = __src;
  memcpy(v174, __src, 4 * *(v36 + 104) + 4);
  v177 = v28;
  v178 = v56;
LABEL_193:
  v218 = (v177 - (*(v175 + 96) + *(v175 + 100)));
  *__str = v218;
  *&__str[4] = v218;
  *&__str[16] = 0;
  *&__str[24] = 0;
  *&__str[8] = v176;
  *v547 = v218;
  *&v547[4] = v218;
  v219 = &v176[2 * v218 + 8 + 2 * v218];
  *&v547[16] = 0;
  *&v547[24] = 0;
  *&v547[8] = &v176[2 * v218 + 4];
  v220 = 4 * *(*&v540[8] + 8 * v177);
  v221 = (v220 + 7) & 0xFFFFFFFFFFFFFFF8;
  v533 = v178;
  v222 = &v219[v221];
  v545 = *v540;
  v546 = *&v540[16];
  sub_236789F74(&v545, *(v175 + 104), *(v175 + 112), *(v175 + 136), *(v175 + 144), __str, v547, v219, v220, &v219[v221]);
  v223 = 8 * v218;
  *(v36 + 216) = (*(a3 + 24))(v223 + 8);
  *(v36 + 240) = (*(a3 + 24))(v223 + 8);
  sub_23676C728(v526, v218, *&__str[8], *&__str[16], *&v547[8], *&v547[16], (v36 + 168), (v36 + 176), *(v36 + 184), (v36 + 192), *(v36 + 200), (v36 + 208), *(v36 + 216), (v36 + 224), (v36 + 232), v540[28], a3, v222);
  v224 = sub_23676DFE0(*(v36 + 60), *(v36 + 168), *(*(v36 + 216) + 8 * *(v36 + 168)));
  if (v224 <= v533)
  {
    sub_23676E074(v36, v540[28], __src);
  }

  else
  {
    v225 = (*(a3 + 24))(v224);
    sub_23676E074(v36, v540[28], v225);
    if (v225 != __src)
    {
      (*(a3 + 32))(v225);
    }
  }

  v226 = sub_2366F8F4C(v218, *(v36 + 168));
  v227 = v226;
  v228 = __src;
  if (v226 > v533)
  {
    v228 = (*(a3 + 24))(v226);
  }

  sub_2366F8F68(v526, v218, *(v36 + 168), *(v36 + 176), *(v36 + 184), *(v36 + 192), *(v36 + 200), *(v36 + 208), *(v36 + 216), *(v36 + 224), *(v36 + 232), *(v36 + 240), (v36 + 248), (v36 + 256), *(v36 + 304), a3, v228, v227);
  if (v228 != __src)
  {
    (*(a3 + 32))(v228);
  }

  v229 = sub_2366FAB28(*(v36 + 60), *(v36 + 168));
  v230 = __src;
  if (v229 > v533)
  {
    v230 = (*(a3 + 24))(v229, __src);
  }

  sub_2366FAB3C(v36, v230);
  if ((*(v36 + 168) & 0x80000000) == 0)
  {
    v231 = *(v36 + 176);
    v232 = -1;
    do
    {
      *v231++ += *(v36 + 96);
      v233 = *(v36 + 168);
      ++v232;
    }

    while (v232 < v233);
    if (v233 >= 1)
    {
      v234 = 0;
      v235 = *(v36 + 184);
      v236 = *(v36 + 200);
      v237 = *v235;
      do
      {
        v238 = v234++;
        v239 = v235[v234];
        v240 = v239 - v237;
        if (v239 > v237)
        {
          v241 = (*(v36 + 192) + 4 * v237);
          do
          {
            *v241++ += *(v36 + 96);
            --v240;
          }

          while (v240);
        }

        v242 = *(v236 + 8 * v238);
        v243 = *(v236 + 8 * v234);
        v317 = v243 <= v242;
        v244 = v243 - v242;
        if (!v317)
        {
          v245 = (*(v36 + 208) + 4 * v242);
          do
          {
            *v245++ += *(v36 + 96);
            --v244;
          }

          while (v244);
        }

        v237 = v239;
      }

      while (v234 < *(v36 + 168));
    }
  }

  if (v526 == 83)
  {
    LODWORD(v246) = *(v36 + 96);
    v247 = *(v36 + 60) - *(v36 + 100);
    if (v247 > v246)
    {
      v248 = *(v36 + 304) - 4;
      do
      {
        *(v248 + 4 * v247) = *(v248 + 4 * v247 - 4 * v246);
        v246 = *(v36 + 96);
        --v247;
      }

      while (v247 > v246);
    }
  }

  v249 = (*(a3 + 24))(8 * *v540 + 16);
  *(v36 + 312) = v249;
  v250 = *v540;
  v251 = *&v540[4];
  v252 = *&v540[8];
  v253 = *&v540[16];
  v254 = v249 + 2;
  bzero(v249 + 2, 8 * *v540);
  if (v251 >= 1)
  {
    v255 = 0;
    v256 = *(v36 + 144);
    v257 = *(v36 + 96);
    do
    {
      v258 = *(v256 + 4 * v255);
      if (v258 >= v257 && v258 < *(v36 + 60) - *(v36 + 100))
      {
        v259 = (v252 + 8 * v255);
        v260 = *v259;
        v261 = v259[1];
        while (v260 < v261)
        {
          v262 = *(v253 + 4 * v260);
          if ((v262 & 0x80000000) == 0 && v262 < v250)
          {
            v263 = *(*(v36 + 136) + 4 * v262);
            if (v263 <= v258)
            {
              ++v254[v263];
              v261 = v259[1];
            }
          }

          ++v260;
        }
      }

      ++v255;
    }

    while (v255 != v251);
  }

  v249[1] = 0;
  v264 = v249 + 1;
  if (v250 >= 1)
  {
    v265 = 0;
    v266 = v250;
    do
    {
      v265 += *v254;
      *v254++ = v265;
      --v266;
    }

    while (v266);
  }

  v267 = v264[v250];
  v268 = (*(a3 + 24))(12 * v267 + 8);
  v269 = (v268 + 4 * v267 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v36 + 320) = v268;
  *(v36 + 328) = v269;
  *v249 = 0;
  if (v251 > 0)
  {
    v270 = 0;
    v271 = *(v36 + 144);
    do
    {
      v272 = *(v271 + 4 * v270);
      if (v272 >= *(v36 + 96) && v272 < *(v36 + 60) - *(v36 + 100))
      {
        v273 = (v252 + 8 * v270);
        v274 = *v273;
        v275 = v273[1];
        while (v274 < v275)
        {
          v276 = *(v253 + 4 * v274);
          if ((v276 & 0x80000000) == 0 && v276 < v250)
          {
            v277 = *(*(v36 + 136) + 4 * v276);
            if (v277 <= v272)
            {
              v278 = v264[v277];
              *(v268 + 4 * v278) = v272;
              *(v269 + 8 * v278) = v274;
              ++v264[v277];
              v275 = v273[1];
            }
          }

          ++v274;
        }
      }

      ++v270;
    }

    while (v270 != v251);
  }

  v279 = *(v36 + 168);
  if (v279 < 1)
  {
    v281 = 0;
  }

  else
  {
    v280 = 0;
    v281 = 0;
    v282 = *(v36 + 176);
    v283 = *v282;
    do
    {
      v284 = v282[++v280];
      if (v283 < v284)
      {
        v285 = *(v36 + 312);
        v286 = v283;
        v287 = *(v285 + 8 * v283);
        do
        {
          *(v285 + 8 * v286++) = v281;
          v288 = *(v285 + 8 * v286);
          if (v287 < v288)
          {
            do
            {
              v289 = *(v268 + 4 * v287);
              if (v289 >= v282[v280])
              {
                *(v268 + 4 * v281) = v289;
                *(v269 + 8 * v281++) = *(v269 + 8 * v287);
                v288 = *(v285 + 8 * v286);
              }

              ++v287;
            }

            while (v287 < v288);
            v284 = v282[v280];
          }

          v287 = v288;
        }

        while (v286 < v284);
        v279 = *(v36 + 168);
      }

      v283 = v284;
    }

    while (v280 < v279);
  }

  *(*(v36 + 312) + 8 * (*(v36 + 60) - *(v36 + 100))) = v281;
  v290 = sub_2366FB334(v279);
  if (v533 >= v290)
  {
    sub_2366FB348(v36, __src);
  }

  else
  {
    v291 = (*(a3 + 24))(v290);
    sub_2366FB348(v36, v291);
    if (v291 != __src)
    {
      (*(a3 + 32))(v291);
    }
  }

  *__str = *v540;
  *&__str[16] = *&v540[16];
  if (sub_2368124D8(__str, *(v36 + 88), *(v36 + 92), *(v36 + 96), *(v36 + 100), *(v36 + 104), *(v36 + 112), *(v36 + 136), *(v36 + 160), *(v36 + 120), (v36 + 128), a3))
  {
    (*(a3 + 32))(*(v36 + 112));
    (*(a3 + 32))(v36);
LABEL_266:
    v112 = 0;
LABEL_267:
    v292 = a3;
LABEL_268:
    v293 = v537;
    goto LABEL_269;
  }

  v425 = 0;
  v426 = 0;
  v427 = 0;
  v112 = v36;
  *(v36 + 288) = 0;
  *(v36 + 296) = 0;
  v428 = *(v36 + 168) & ~(*(v36 + 168) >> 31);
  v429 = v540[28];
  v292 = a3;
  v293 = v537;
  while (v428 != v427)
  {
    v430 = (*(*(v36 + 176) + 4 * v427 + 4) - *(*(v36 + 176) + 4 * v427)) * v429;
    v431 = *(*(v36 + 184) + 8 * v427);
    v432 = *(*(v36 + 184) + 8 * v427 + 8);
    v433 = __OFSUB__(v432, v431);
    v434 = v432 - v431;
    if (v434 >= 0)
    {
      v435 = v434;
    }

    else
    {
      v435 = -v434;
    }

    v436 = (v435 * v429) >> 64;
    v437 = v435 * v429;
    if (v434 < 0 != v433)
    {
      v438 = -v437;
    }

    else
    {
      v438 = v435 * v429;
    }

    v439 = v436 != 0;
    v433 = __OFADD__(v430, v438);
    v440 = v430 + v438;
    v441 = v433;
    v443 = *(*(v36 + 200) + 8 * v427);
    v442 = *(*(v36 + 200) + 8 * v427 + 8);
    v444 = __OFSUB__(v442, v443);
    v445 = v442 - v443;
    if (v445 >= 0)
    {
      v446 = v445;
    }

    else
    {
      v446 = -v445;
    }

    v447 = (v446 * v429) >> 64;
    v448 = v446 * v429;
    if (v445 < 0 != v444)
    {
      v449 = -v448;
    }

    else
    {
      v449 = v448;
    }

    v450 = v447 != 0;
    v451 = v430 + v449;
    v452 = __OFADD__(v430, v449);
    v453 = (v440 * v430) >> 64 != (v440 * v430) >> 63;
    v433 = __OFADD__(v426, v440 * v430);
    v426 += v440 * v430;
    v454 = v433;
    v455 = v451 - v430;
    v456 = (v451 - v430) * v430;
    v457 = (v455 * v430) >> 64 != v456 >> 63;
    v433 = __OFADD__(v425, v456);
    v425 += v456;
    v458 = v433;
    *(v36 + 288) = v426;
    *(v36 + 296) = v425;
    if (!v439 && v437 <= (v434 >> 63) + 0x7FFFFFFFFFFFFFFFLL && (v441 & 1) == 0 && !v450 && v448 <= (v445 >> 63) + 0x7FFFFFFFFFFFFFFFLL && !v452 && !v453 && (v454 & 1) == 0 && !v457)
    {
      ++v427;
      if (!v458)
      {
        continue;
      }
    }

    v459 = *(a3 + 40);
    if (!v459)
    {
      v469 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v469)
      {
        sub_23672AF30(v469, v470, v471, v472, v473, v474, v475, v476);
      }

      _SparseTrap();
    }

    memset(&__str[36], 0, 220);
    strcpy(__str, "factor size calculation overflowed\n");
    v459(__str, v448, v36, v454, v453, v457, v450);
    (*(a3 + 32))(v36);
    v112 = 0;
    v113 = -3;
    goto LABEL_114;
  }

LABEL_269:
  v525 = v112;
  if (v293)
  {
    (*(v292 + 32))();
    v292 = a3;
    v112 = v525;
  }

  if (!v112)
  {
    return (*(v292 + 32))(__src);
  }

  v294 = *(v527 + 28);
  v295 = *(v112 + 168);
  if (v295 >= 0)
  {
    v296 = v295;
  }

  else
  {
    v296 = -v295;
  }

  v297 = 8 * v296;
  if (v295 < 0)
  {
    v297 = -8 * v296;
  }

  v298 = v297 + 40;
  v299 = v297 >= 0xFFFFFFFFFFFFFFD8 || v295 < 0;
  v534 = (v294 * v294);
  v300 = *(v112 + 336);
  v301 = MEMORY[0x277D85FA0];
  if (v300 < 1)
  {
    v305 = 0;
    v304 = 0;
    v346 = 0;
    v345 = 0;
  }

  else
  {
    v514 = v296;
    v515 = *(v112 + 168);
    v516 = v297 + 40;
    v302 = 0;
    v303 = 0;
    v304 = 0;
    v305 = 0;
    v306 = *(v112 + 344);
    v307 = *(v112 + 384);
    v517 = *(v527 + 28);
    v522 = (2 * v294);
    v530 = -*MEMORY[0x277D85FA0];
    v531 = *MEMORY[0x277D85FA0] - 1;
    v310 = *v306;
    v308 = v306 + 1;
    v309 = v310;
    do
    {
      v311 = *v308++;
      v312 = v311;
      v313 = v311;
      v314 = *v307;
      v538 = v307 + 1;
      v539 = 0;
      v315 = sub_23681EB64(v314, v314 >> 63, v534, 0, &v539);
      if ((v316 << 63 >> 63) ^ v316 | v539)
      {
        v317 = 1;
      }

      else
      {
        v317 = v316 << 63 >> 63 == -1;
      }

      v318 = v317;
      v319 = v299 | v318;
      if ((v526 & 0xFE) == 0x52)
      {
        v320 = *(v525[22] + 4 * v313) - *(v525[22] + 4 * v309);
        v321 = v522 * v320;
        v319 |= ((((v320 * v522) >> 64) + (v320 >> 63) * v522) << 63) >> 63 == -1;
      }

      else
      {
        v321 = 0;
      }

      v322 = 0;
      if (v313 - v309 < 0)
      {
        v327 = 0;
        v328 = 0;
        v329 = 0;
        v326 = 1;
      }

      else
      {
        v323 = 24 * (v313 - v309);
        v324 = v323 + 4 * v321;
        v325 = __CFADD__(v323, 4 * v321);
        v326 = 1;
        v327 = 0;
        v328 = 0;
        if (v321 >> 62)
        {
          v329 = 0;
        }

        else
        {
          v329 = 0;
          if (!v325)
          {
            v329 = v324 + 4 * v315;
            v330 = __CFADD__(v324, 4 * v315);
            if (v315 >> 62)
            {
              v322 = 0;
              v327 = 0;
              v328 = 0;
            }

            else
            {
              v328 = v324 + 8 * v315;
              v331 = __CFADD__(v324, 8 * v315);
              v332 = v315 >> 60 != 0;
              v333 = __CFADD__(v324, 16 * v315);
              v334 = v324 + 16 * v315;
              if (v333)
              {
                v332 = 1;
              }

              v335 = !v331;
              if (v331)
              {
                v336 = 0;
              }

              else
              {
                v336 = v334;
              }

              if (v335)
              {
                v337 = v328;
              }

              else
              {
                v337 = 0;
              }

              if (!v335)
              {
                v332 = 1;
              }

              if (v315 >> 61)
              {
                v336 = 0;
                v337 = 0;
                v338 = 1;
              }

              else
              {
                v338 = v332;
              }

              v339 = !v330;
              if (v330)
              {
                v322 = 0;
              }

              else
              {
                v322 = v336;
              }

              if (v339)
              {
                v327 = v337;
              }

              else
              {
                v327 = 0;
              }

              if (v339)
              {
                v326 = v338;
              }

              else
              {
                v328 = 0;
                v326 = 1;
              }
            }
          }
        }
      }

      v340 = v326 | v319 & 1;
      v341 = (v329 + v531) & v530;
      v342 = (v328 + v531) & v530;
      v343 = (v327 + v531) & v530;
      v344 = (v322 + v531) & v530;
      v333 = __CFADD__(v303, v344);
      v303 += v344;
      if (v333)
      {
        v340 = 1;
      }

      v333 = __CFADD__(v302, v343);
      v302 += v343;
      if (v333)
      {
        v340 = 1;
      }

      v333 = __CFADD__(v305, v342);
      v305 += v342;
      if (v333)
      {
        v340 = 1;
      }

      v333 = __CFADD__(v304, v341);
      v304 += v341;
      if (v333)
      {
        v299 = 1;
      }

      else
      {
        v299 = v340;
      }

      v309 = v312;
      --v300;
      v307 = v538;
    }

    while (v300);
    v345 = (v302 + 1) >> 1;
    v346 = (v303 + 1) >> 1;
    v292 = a3;
    v112 = v525;
    v301 = MEMORY[0x277D85FA0];
    v294 = v517;
    v298 = v516;
    v295 = v515;
    v296 = v514;
  }

  if (v304 > v345)
  {
    v345 = v304;
  }

  if (v305 > v346)
  {
    v346 = v305;
  }

  v317 = v295 < 0;
  v347 = v295 < 0;
  v348 = 16 * v296;
  if (v317)
  {
    v348 = -v348;
  }

  v333 = __CFADD__(v348, 32);
  v349 = v348 + 32;
  if (v333)
  {
    v347 = 1;
  }

  v333 = __CFADD__(v349, v298);
  v350 = v349 + v298;
  v351 = v333;
  if (v347)
  {
    v350 = v298;
  }

  v352 = (v347 || v299) | v351;
  if (v526 == 83)
  {
    v353 = v352;
  }

  else
  {
    v353 = v299;
  }

  if (v526 == 83)
  {
    v354 = v350;
  }

  else
  {
    v354 = v298;
  }

  v355 = *(*(v112 + 120) + 8 * *(v112 + 60));
  v356 = v355 * v534;
  v357 = v353 || (v355 * v534) >> 64 != (v355 * v534) >> 63;
  if (v294 == 1)
  {
    v358 = 0;
  }

  else
  {
    v358 = 4 * v294 * (*(v112 + 100) + *(v112 + 96)) + 8;
  }

  v333 = __CFADD__(v354, v358);
  v359 = v354 + v358;
  if (v333)
  {
    v360 = (v358 >> 63) + 1;
  }

  else
  {
    v360 = v358 >> 63;
  }

  v362 = v360 << 63 >> 63 != v360 || v360 << 63 >> 63 == -1;
  v333 = __CFADD__(*v301, v359);
  v363 = *v301 + v359;
  if (v333)
  {
    v362 = 1;
  }

  v364 = v357 || v362;
  v365 = *(v112 + 56);
  v366 = v356 >> 63;
  v333 = __CFADD__(v356, 2 * v365);
  v367 = v356 + 2 * v365;
  if (v333)
  {
    v368 = v366 + 1;
  }

  else
  {
    v368 = v366;
  }

  v369 = v368 << 63 >> 63;
  v370 = v369 != v368;
  if (v364 || ((*(v112 + 56) >> 63) & 1) != 0 || v370 || v369 < 0 || (v371 = 4 * v367 + 144, v367 >> 62) || 4 * v367 >= 0xFFFFFFFFFFFFFF70 || ((v333 = __CFADD__(v371, v363), v372 = v371 + v363, !v333) ? (v373 = 0) : (v373 = 1), (v374 = v345 + v372, !__CFADD__(v345, v372)) ? (v375 = 0) : (v375 = 1), (*(a5 + 56) = v374, (v373 & 1) != 0) || (v375 & 1) != 0 || (v376 = 8 * v367 + 144, v367 >> 61) || 8 * v367 >= 0xFFFFFFFFFFFFFF70 || ((v333 = __CFADD__(v376, v363), v377 = v376 + v363, !v333) ? (v378 = 0) : (v378 = 1), (v333 = __CFADD__(v346, v377), v379 = v346 + v377, !v333) ? (v380 = 0) : (v380 = 1), (*(a5 + 64) = v379, (v378 & 1) != 0) || v380)))
  {
    v393 = *(v292 + 40);
    if (!v393)
    {
      v394 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v394)
      {
        sub_23672AFE4(v394, v395, v396, v397, v398, v399, v400, v401);
      }

      _SparseTrap();
    }

    memset(&__str[40], 0, 216);
    strcpy(__str, "Computation of factor size overflowed.\n");
    v393(__str);
    (*(a3 + 32))(__src);
    return sub_23680EF08(v525, a3);
  }

  else
  {
    v381 = *(v112 + 64);
    *(v112 + 392) = 8;
    v382 = *(v112 + 56);
    if (v382 >= 0)
    {
      v383 = v382;
    }

    else
    {
      v383 = -v382;
    }

    v384 = 8 * (v383 + 2 * v383);
    if (v382 < 0)
    {
      v384 = -8 * (v383 + 2 * v383);
    }

    v385 = v384 + 48;
    v386 = v384 >= 0xFFFFFFFFFFFFFFD0;
    if (v526 == 82)
    {
      v317 = v382 < 0;
      v387 = v382 < 0;
      v388 = 4 * v383;
      if (v317)
      {
        v388 = -v388;
      }

      v333 = __CFADD__(v388, 8);
      v389 = v388 + 8;
      if (v333)
      {
        v387 = 1;
      }

      v333 = __CFADD__(v389, v385);
      v390 = v389 + v385;
      v391 = v333;
      if (!v387)
      {
        v385 = v390;
      }

      LOBYTE(v392) = v387 | v391;
    }

    else
    {
      v392 = v382 >> 31;
    }

    v402 = 0;
    v403 = v386 | v392;
    v404 = *(v112 + 52);
    v405 = v404 < 0;
    if (v404 >= 0)
    {
      v406 = v404;
    }

    else
    {
      v406 = -v404;
    }

    v407 = !is_mul_ok(v406, v385);
    v408 = v406 * v385;
    if (!(v406 * v385))
    {
      v405 = 0;
    }

    v409 = 1;
    if (!v407 && !v405)
    {
      v402 = 0;
      if (v404 >= 0)
      {
        v410 = v408;
      }

      else
      {
        v410 = -v408;
      }

      v411 = *(v112 + 168);
      if (v411 >= 0)
      {
        v412 = *(v112 + 168);
      }

      else
      {
        v412 = -v411;
      }

      v413 = 8 * v412;
      if (v411 < 0)
      {
        v413 = -v413;
      }

      v333 = __CFADD__(v410, v413);
      v414 = v410 + v413;
      v415 = v333;
      v409 = 1;
      if ((v411 & 0x80000000) == 0 && (v415 & 1) == 0)
      {
        v402 = v414 + 8;
        v409 = v414 >= 0xFFFFFFFFFFFFFFF8;
      }
    }

    v416 = v409 | v403 & 1;
    if (v404 >= 2)
    {
      v417 = *(v112 + 336);
      if (v417 >= 0)
      {
        v418 = *(v112 + 336);
      }

      else
      {
        v418 = -v417;
      }

      v419 = 40 * v418;
      if (v417 < 0)
      {
        v419 = -v419;
      }

      v420 = v402 + v419;
      v421 = __CFADD__(v402, v419);
      v422 = 1;
      if ((v417 & 0x80000000) == 0 && !v421)
      {
        v423 = v420 + 49152;
        if (v420 >= 0xFFFFFFFFFFFF4000 || (v333 = __CFADD__(v423, 16 * v406), v424 = v423 + 16 * v406, v333))
        {
          v422 = 1;
        }

        else
        {
          v402 = v424 + 24;
          v422 = v424 >= 0xFFFFFFFFFFFFFFE8;
        }
      }

      v416 |= v422;
    }

    v477 = 12 * v381 + 16;
    if (v477 <= v402)
    {
      v478 = v402;
    }

    else
    {
      v478 = v477;
    }

    *(a5 + 40) = v478;
    *(a5 + 48) = v478;
    if (v416)
    {
      v479 = *(v292 + 40);
      if (!v479)
      {
        v498 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v498)
        {
          sub_23672AFA8(v498, v499, v500, v501, v502, v503, v504, v505);
        }

        _SparseTrap();
      }

      memset(&__str[73], 0, 183);
      strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
      v479(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_118;
    }

    if (v478 <= v541 || ((*(v292 + 32))(__src), __src = (*(a3 + 24))(v478), v112 = v525, __src))
    {
      *(a5 + 8) = 0;
      *(a5 + 32) = v112;
      v480 = sub_236754888(v526, *(a5 + 24), v112, v374, a4, 0);
      if (v480)
      {
        v482 = __src;
        *v521 = v480;
        if (v519)
        {
          v483 = *(v527 + 28);
          v484 = *v527;
          if (v484 >= 1)
          {
            v485 = 0;
            for (i = 0; i != v484; ++i)
            {
              if (v483)
              {
                v487 = (*(v480 + 96) + v485);
                v488 = &v519[*(v525[19] + 4 * i) * v483];
                v489 = v483;
                do
                {
                  v490 = *v488++;
                  *v487++ = v490;
                  --v489;
                }

                while (v489);
              }

              v485 += 4 * v483;
            }
          }

          v491 = v527[1];
          if (v491 >= 1)
          {
            v492 = 0;
            for (j = 0; j != v491; ++j)
            {
              if (v483)
              {
                v494 = (*(v480 + 104) + v492);
                v495 = &v518[*(v525[20] + 4 * j) * v483];
                v496 = v483;
                do
                {
                  v497 = *v495++;
                  *v494++ = v497;
                  --v496;
                }

                while (v496);
              }

              v492 += 4 * v483;
            }
          }

          (*(a3 + 32))(v519, v518, v525, __src);
          v482 = __src;
        }

        _SparseRefactorLU_Float(v527, a5, a4, v482, v481);
        (*(a3 + 32))(__src);
        return sub_2367557D4(a5);
      }

      else
      {
        return (*(a3 + 32))(__src);
      }
    }

    else
    {
      if (!*(a3 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366F716C();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v478);
      return (*(a3 + 40))(__str);
    }
  }
}

uint64_t _SparseUpdatePartialRefactorLU_Float(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v194 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = *(a1 + 80);
  v8 = *(a1 + 25);
  v9 = *(a4 + 28);
  v166 = v9;
  v10 = *(v6 + 168);
  v11 = *(v6 + 56);
  v142 = 8 * v10 + 16 * v11 + 4 * (9 * v11 + v10);
  v12 = v10 + 8 * v11 + 8 * v10 + 40 * *(v6 + 336) + (v142 + 120) * *(v6 + 52) + 49208;
  v13 = (*(v6 + 24))(v12);
  v14 = *(v6 + 56);
  v15 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v13 + v15;
  v143 = v14;
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
        v31 = 4 * (v22 + (*(*(v6 + 200) + 8 * v23) - *(*(v6 + 200) + 8 * v17)) * v9) + 4 * v28;
        v32 = (v30 + (v31 + 4) * v27 + 4 * v21);
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
  v175 = 0;
  v176 = v6;
  v167[0] = v6;
  sub_23672A590(v165, v14, __str, v167);
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v176 + 32))();
  }

  v36 = *(v6 + 56);
  memset(__str, 0, sizeof(__str));
  v175 = 0;
  v176 = v6;
  v167[0] = v6;
  sub_23672A590(v164, v36, __str, v167);
  v141 = v12;
  v148 = v8;
  v150 = v7;
  v145 = a1;
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v176 + 32))();
  }

  v140 = v15;
  v37 = v16 + v15;
  v149 = *(v6 + 168);
  bzero((v16 + v15), v149);
  if (a2 >= 1)
  {
    v38 = 0;
    v39 = (v9 * v9);
    v40 = 4 * v39;
    v152 = a2;
    v146 = -4 * v39;
    while (1)
    {
      v41 = (a3 + 8 * v38);
      v43 = *v41;
      v42 = v41[1];
      v44 = v43 / v166;
      v45 = v42 / v166;
      v46 = *(*(v6 + 136) + 4 * (v43 / v166));
      v47 = *(*(v6 + 144) + 4 * (v42 / v166));
      v48 = v43 % v166 + v46 * v166;
      LODWORD(v167[0]) = v48;
      v49 = v42 % v166 + v47 * v166;
      LODWORD(v163[0]) = v49;
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
          v64 = v146 * v61;
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

          v67 = (*(v150 + 40) - v64);
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
          v72 = v146 * v70;
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
          if (v166 == 1)
          {
            *v67 = 1.0 / *v67;
          }

          else
          {
            LODWORD(v162[0]) = 0;
            sgetrf_NEWLAPACK();
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
        v57 = v165[0] + 32 * v56;
        v58 = v167;
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
      if (++v38 == v152)
      {
        goto LABEL_59;
      }
    }

    v57 = v164[0] + 32 * v55;
    v58 = v163;
LABEL_53:
    sub_236725158(v57, v58);
    goto LABEL_54;
  }

LABEL_59:
  v155 = (v37 + ((v149 + 7) & 0xFFFFFFFFFFFFFFF8));
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

  v153 = v143 & 0x3FFFFFFFFFFFFFFFLL;
  v85 = v77;
  v86 = 8 * v77;
  v87 = &v155[v86];
  bzero(v155, v86);
  v88 = *(v6 + 52);
  if (v88 != 1)
  {
    _X0 = 0;
    LODWORD(v167[0]) = *(v6 + 52);
    atomic_store(0, v167 + 1);
    atomic_store(0, (v167 | 0xC));
    atomic_store(0, v168);
    v108 = v169;
    do
    {
      _X5 = v170;
      __asm { CASPAL          X4, X5, X0, X1, [X19] }

      _ZF = _X4 == v108;
      v108 = _X4;
    }

    while (!_ZF);
    v171 = v142 + 104;
    v172 = &v155[v86];
    v173 = 0;
    v115 = &v87[40 * *(v6 + 336) + (((v142 + 104) * v88 + 7) & 0xFFFFFFFFFFFFFFF8)];
    __str[0] = v148;
    *&__str[8] = a4;
    v175 = v6;
    LODWORD(v176) = v166;
    v177 = v150;
    v178 = v37 + ((v149 + 7) & 0xFFFFFFFFFFFFFFF8);
    v179 = 0;
    v180 = &v87[((v142 + 104) * v88 + 7) & 0xFFFFFFFFFFFFFFF8];
    v181 = sub_2367921D4(256, v115 + 16 * v88);
    v182 = v116;
    __p[0] = 0;
    __p[1] = 0;
    v184 = 0;
    v185 = v115;
    v186 = v37;
    v187 = v149;
    v188 = v13;
    v189 = v143 & 0x3FFFFFFFFFFFFFFFLL;
    v190 = v16;
    v191 = v143 & 0x3FFFFFFFFFFFFFFFLL;
    v192 = v165;
    v193 = v164;
    v173 = __str;
    if (*(v6 + 52))
    {
      v117 = 0;
      v118 = 0;
      do
      {
        *(v115 + v117 + 8) = *(v6 + 392);
        v119 = (*(v6 + 24))();
        v115 = v185;
        *(v185 + v117) = v119;
        ++v118;
        v117 += 16;
      }

      while (v118 < *(v6 + 52));
    }

    if (*(v6 + 336) >= 1)
    {
      _X22 = 0;
      v121 = 0;
      v122 = 0;
      do
      {
        v123 = v122;
        v62 = *(*(v6 + 176) + 4 * *(*(v6 + 344) + 4 * v122++)) < *(*(v6 + 112) + 4 * (v121 + 1));
        if (!v62)
        {
          ++v121;
        }

        v124 = *(*(v6 + 368) + 8 * v122) - *(*(v6 + 368) + 8 * v123);
        v125 = &v180[40 * v123];
        atomic_store(v124, v125);
        *(v125 + 2) = v123;
        *(v125 + 3) = v121;
        *(v125 + 2) = sub_23676066C;
        if (!v124)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X27] }

          *(v125 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v125 + 4) = 0;
          v129 = _X0 & 1;
          _X2 = v129 | v125;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X27] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X22, X23, [X10] }

            *(v125 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v125 + 4) = 0;
            v129 = _X0 & 1;
            _X2 = v129 | v125;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v129)
          {
            __ulock_wake();
          }
        }
      }

      while (v122 < *(v6 + 336));
    }

    v136 = sub_2366FCD2C(v167, 1);
    v106 = v136;
    if (!v136)
    {
      if (*(v6 + 52))
      {
        v137 = 0;
        v138 = 0;
        do
        {
          (*(v6 + 32))(*(v185 + v137));
          ++v138;
          v137 += 16;
        }

        while (v138 < *(v6 + 52));
      }

      v106 = -3;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v136)
    {
      goto LABEL_107;
    }

LABEL_106:
    (*(v6 + 32))(v13);
    v106 = 0;
    goto LABEL_107;
  }

  v89 = *(v6 + 56);
  v90 = (4 * v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = &v87[v90];
  *__str = &v155[v86];
  *&__str[8] = v89 & 0x3FFFFFFFFFFFFFFFLL;
  LODWORD(v175) = 1;
  bzero(v87, 4 * v89);
  v92 = *(v6 + 168);
  v93 = 4 * v92;
  v167[0] = v91;
  v167[1] = v92 & 0x3FFFFFFFFFFFFFFFLL;
  v168[0] = 1;
  v144 = v91;
  bzero(v91, 4 * v92);
  v163[0] = 0;
  v163[1] = 0;
  v162[0] = 0;
  v162[1] = 0;
  v161[0] = 0;
  v161[1] = 0;
  v160[0] = 0;
  v160[1] = 0;
  v159[0] = 0;
  v159[1] = 0;
  v94 = (*(v6 + 24))(*(v6 + 392));
  v95 = *(v6 + 392);
  v158[0] = v94;
  v158[1] = v95;
  v96 = v150;
  v97 = (v150 + 136);
  LODWORD(v95) = atomic_load((v150 + 136));
  v157 = v95;
  v98 = (v96 + 140);
  v99 = atomic_load((v96 + 140));
  v156 = v99;
  if (*(v6 + 168) < 1)
  {
LABEL_80:
    atomic_store(v157, v97);
    atomic_store(v99, v98);
    (*(v6 + 32))(v160[0]);
    (*(v6 + 32))(v159[0]);
    (*(v6 + 32))(v163[0]);
    (*(v6 + 32))(v162[0]);
    (*(v6 + 32))(v161[0]);
    goto LABEL_106;
  }

  v100 = 0;
  v101 = 0;
  v102 = v93;
  LODWORD(v93) = 0;
  v147 = v85;
  v103 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = v141 - v103 - (((v149 + 7) & 0xFFFFFFFFFFFFFFF8) + 2 * v140 + v86 + v90);
  v105 = &v144[v103];
  while (1)
  {
    v93 = *(*(v6 + 176) + 4 * v101) < *(*(v6 + 112) + 4 * (v93 + 1)) ? v93 : (v93 + 1);
    if (*(v37 + v101) == 1 || (sub_23675B824(v101, a4, v148, v6, v166, v150, v165, v164, v160, v159, v163, v162, v161, __str, v37, v149, v105), (*(v37 + v101) & 1) != 0))
    {
      *(v164[0] + v100 + 8) = *(v164[0] + v100);
      *(v165[0] + v100 + 8) = *(v165[0] + v100);
      v106 = sub_23675DB04(v101, v93, a4, v148, v6, v166, v150, &v157, &v156, v155, v147, v163, v162, v161, __str, v167, v37, v149, v13, v153, v16, v153, v105, v104, v158, 0, 0);
      if (v106)
      {
        break;
      }
    }

    ++v101;
    v100 += 32;
    if (v101 >= *(v6 + 168))
    {
      v99 = v156;
      v97 = (v150 + 136);
      v98 = (v150 + 140);
      goto LABEL_80;
    }
  }

  (*(v6 + 32))(v160[0]);
  (*(v6 + 32))(v159[0]);
  (*(v6 + 32))(v163[0]);
  (*(v6 + 32))(v162[0]);
  (*(v6 + 32))(v161[0]);
  (*(v6 + 32))(v13);
LABEL_107:
  *__str = v164;
  sub_23672A890(__str);
  *__str = v165;
  sub_23672A890(__str);
  *v145 = v106;
  return sub_2367557D4(v145);
}

void *sub_236758B7C(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
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
  v17 = *(*(v11 + 384) + 8 * a2) * (v16 * v16);
  if ((*v10 & 0xFE) == 0x52)
  {
    v17 += 2 * v16 * (*(*(v11 + 176) + 4 * v15) - *(*(v11 + 176) + 4 * v13));
  }

  v18 = result[5];
  v19 = *(v9 + 48);
  v20 = *(v11 + 168);
  v21 = (4 * v17 + 24 * (v15 - v13) + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
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
      result = sub_23675900C(v13, v32, *(v10 + 1), *v10, *(v10 + 2), *(v10 + 6), *(v10 + 4), a8, v23, v20, &v73, v33, v74, &v72, v18, v19, *(v10 + 13), v8, v10);
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

uint64_t sub_236758F84(uint64_t result)
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

uint64_t sub_23675900C(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9, int a10, uint64_t *a11, unint64_t a12, int *a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = a6;
  v237 = *MEMORY[0x277D85DE8];
  v203 = *(&off_28499C2B0 + a4 - 81);
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
  v40 = v34 + 8 + 4 * v37 * v33;
  *(&v222 + 1) = v37;
  *&v223 = v40;
  *(&v223 + 1) = v38;
  v213 = a7;
  if (a4 == 81 || (*&v224 = v40 + 4 * v38 * v33, *(&v224 + 1) = v224 + 4 * v33, a4 != 83))
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
    sub_236759FCC(v227, a1, 1, 83, a5, a6, a7, a9, v25, v41, v27, v41);
    v42 = *&v227[8];
    v198 = *&v227[16];
    __src = *v227;
    v197 = *&v227[24];
    sub_236759FCC(v227, a1, 2, 83, a5, v19, v213, a9, v24, v41, v26, v41);
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
  v57 = (v39 - v33 + v42) * v56 + ((v37 + v43 + v45) * v56);
  if ((a4 & 0xFE) == 0x52)
  {
    v57 += v45 + 2 * v56 + v42;
  }

  v58 = 4 * v57 + 8;
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
  v89 = &v211[4 * v87 * v82];
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
    v91 = &v89[4 * v90 * v82];
  }

  if (a4 == 81)
  {
    v92 = 0;
  }

  else
  {
    v92 = &v89[4 * (v88 + v78) * v82 + 4 * v82 + 4 * v77];
  }

  *&v222 = v211;
  *(&v222 + 1) = v87;
  v93 = &v91[4 * v82];
  if (v77 <= 0)
  {
    v93 = 0;
  }

  v199 = &v211[4 * v87 * v82];
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
            v109 = *(v79 + 8 * v103) + 8 + 4 * (v107 + v105 + (*(v84 + 8 * (v103 + 1)) - *(v84 + 8 * v103)) * v19) * v107 + 4 * (v106 + (*(v85 + 8 * (v103 + 1)) - *(v85 + 8 * v103)) * v19) * v107;
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

  v132 = 4 * SDWORD1(v221);
  bzero(v211, v132 * v87);
  bzero(v199, v132 * v200);
  sub_23675A4D4(a2, a1, SDWORD1(v221), a3, a5, v211, v87, v199, v200, a15, v210, v213[12], v213[13]);
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
    v136 = (*(*v134 + 24))(4 * v135);
    *(v134 + 96) = v136;
    *(v134 + 104) = v135;
    bzero(v136, 4 * v135);
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
      v149 = v145 + 4 * *v227 * *&v227[12];
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
        v150 = v149 + 4 * (v148 + v144) * *&v227[12];
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
          v177 = sub_23675B2FC(&v219, v141, v227, v156, a5, v212, v157, v158, a15, v210);
          v19 = v212;
          sub_2367541F8(v177, &v219, v134, v141, v227, v156, a5, v212, v157, v158, a15, v210);
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
          sub_23675AD4C(a1, &v219, v141, v227, v156, a5, v212, v157, v158, v171, a15, v210);
          v19 = v212;
          v134 = v206;
          sub_236753908(a1, &v219, v206, v141, v227, v156, a5, v212, v157, v158, v171, a15, v210);
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
          sub_23675A8B8(a1, &v219, v141, v227, v156, a5, v212, v157, v158, v161, a15, v210);
          v19 = v212;
          v134 = v206;
          sub_2367531BC(a1, &v219, v206, v141, v227, v156, a5, v212, v157, v158, v161, a15, v210);
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

void sub_236759FB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

void sub_236759FCC(uint64_t *__return_ptr a1@<X8>, int a2@<W0>, int a3@<W1>, int a4@<W2>, void *a5@<X3>, int a6@<W4>, void *a7@<X5>, uint64_t a8@<X6>, _DWORD *a9, unint64_t a10, _DWORD *a11, uint64_t a12)
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

    v33 = *(a7[14] + 8 * v22) + 8 + 4 * v31 * (v29 + v24 + (*(a5[23] + 8 * (v22 + 1)) - *(a5[23] + 8 * v22)) * a6) + 4 * v31 * (v25 + (*(a5[25] + 8 * (v22 + 1)) - *(a5[25] + 8 * v22)) * a6);
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

void sub_23675A4B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23675A4D4(uint64_t result, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
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
      v19 = 4 * v14;
      v20 = 4 * v13;
      v101 = 4 * a7 * v13;
      v21 = 4 * a7;
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
                v34 = (a12 + 4 * v33);
                v35 = (*(a4 + 32) + v28);
                v36 = (a6 + 4 * *(a10 + 4 * v33));
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
                    *v38++ = (v42 * v43) * *(a13 + 4 * v22 * v13 + 4 * v32);
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
      v46 = a8 - 4 * a3;
      result = 4 * a9 * v13;
      v47 = (a12 + 4 * v17 * v13);
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
              v53 = (v49 + 4 * *(v51 + 8 * v45) * v14);
              v54 = *(v50 + 4 * v45) * v13;
              v55 = a13 + 4 * v54;
              v56 = (v46 + 4 * *(a11 + 4 * v54));
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
                  *v59 = (v62 * v63) * *(v55 + 4 * v52);
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
    v66 = 4 * v14;
    v67 = 4 * v13;
    v68 = 4 * a7 * v13;
    v69 = 4 * a7;
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
              v81 = (a6 + 4 * *(a10 + 4 * v77 * v13));
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
    v87 = a8 - 4 * a3;
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
            v93 = (v89 + 4 * *(v91 + 8 * result) * v14);
            v94 = (v87 + 4 * *(a11 + 4 * *(v90 + 4 * result) * v13));
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

      v87 += 4 * a9 * v13;
      result = v88;
    }

    while (v17 != v18);
  }

  return result;
}

uint64_t sub_23675A8B8(uint64_t result, uint64_t a2, int a3, int *a4, void *a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v58 = result;
  v12 = a4[3];
  v60 = a4[1];
  if (v12 + a9 < v60)
  {
    v13 = a4[19];
    v59 = v13 - v60;
    v14 = v12 + a9;
    v57 = v60 - v13;
    for (i = 4 * a9; ; i += 4)
    {
      if (v59 + v14 < 0 || (*(a5[6] + (v59 + v14)) & 1) == 0)
      {
        v16 = v14 - v12;
        if (v14 >= v12)
        {
          v17 = v14 >= v57 ? *(*(a4 + 11) + 4 * (v14 - v57)) : (v14 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v14 - v12) / a7)) * a7;
        }

        else if (v14 < 0)
        {
          v17 = 0x7FFFFFFF;
        }

        else
        {
          v17 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v14) : v14 + *(a6[22] + 4 * a3) * a7;
        }

        v18 = *(a12 + 4 * v17);
        v19 = *(a2 + 12);
        if (v19 > v18)
        {
          v20 = v18;
          if ((v18 & 0x80000000) != 0)
          {
            v21 = 0x7FFFFFFF;
          }

          else
          {
            v21 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v18) : v18 + *(a6[22] + 4 * v58) * a7;
          }

          if (v21 == v17)
          {
            if (a10 >= 1)
            {
              v22 = *(a2 + 24) + 4 * *(a2 + 32) * v20;
              v23 = 4 * (v12 + a8) - 4 * v12;
              v24 = v12 + a8;
              v25 = a8;
              do
              {
                if (v24 >= v12)
                {
                  v28 = *a4;
                  v29 = a4[18];
                  if (v24 >= v28 - v29)
                  {
                    if (v24 < v28)
                    {
                      v27 = *(*(a4 + 10) + 4 * (v24 + v29 - v28));
                      if ((v16 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_37;
                      }

                      goto LABEL_34;
                    }

LABEL_33:
                    v27 = 0x7FFFFFFF;
                    if ((v16 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v30 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v25 / a7));
                  v31 = v25 % a7;
                }

                else
                {
                  if (v24 < 0)
                  {
                    goto LABEL_33;
                  }

                  v26 = *(a4 + 7);
                  if (v26)
                  {
                    v27 = *(v26 + 4 * v24);
                    if ((v16 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v30 = *(a6[22] + 4 * a3);
                  v31 = v12 + v25;
                }

                v27 = v31 + v30 * a7;
                if ((v16 & 0x8000000000000000) == 0)
                {
LABEL_37:
                  if (v24 >= v12)
                  {
                    v32 = (a5[12] + i * a5[2] + v23);
                  }

                  else
                  {
                    v32 = (*(a4 + 5) + 4 * *(a4 + 6) * v24 + 4 * v16);
                  }

                  goto LABEL_40;
                }

LABEL_34:
                v32 = (*(a4 + 3) + 4 * *(a4 + 4) * v14 + 4 * v24);
LABEL_40:
                v33 = *(a11 + 4 * v27);
                *(v22 + 4 * v33) = *v32 + *(v22 + 4 * v33);
                ++v24;
                ++v25;
                v23 += 4;
              }

              while (v24 < v12 + a8 + a10);
            }

            v34 = a4[18];
            if (v34 >= 1)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (++v14 >= v60)
      {
        return result;
      }
    }

    v35 = 0;
    v36 = *a4;
    v37 = v36 - v34;
    v38 = a5[4];
    v39 = v36 - v12 - v34;
    v56 = v36 - v34;
    v40 = 4 * v37;
    v41 = -4 * v12;
    v42 = v37;
    while ((*(v38 + v35) & 1) != 0)
    {
LABEL_72:
      ++v42;
      ++v35;
      ++v39;
      v41 += 4;
      if (v37 + v35 >= v36)
      {
        goto LABEL_73;
      }
    }

    v43 = v37 + v35;
    if (v37 + v35 >= v12)
    {
      if (v43 >= v37)
      {
        v45 = *(a4 + 10);
        goto LABEL_51;
      }

      v46 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v39 / a7));
      v47 = v39 % a7;
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
        v45 = v44 + v40;
LABEL_51:
        v48 = *(v45 + 4 * v35);
        goto LABEL_55;
      }

      v46 = *(a6[22] + 4 * a3);
      v47 = v56 + v35;
    }

    v48 = v47 + v46 * a7;
LABEL_55:
    v49 = *(a11 + 4 * v48);
    v50 = v49;
    if (v49 >= v19)
    {
      result = (*a2 - *(a2 + 72));
      if (v49 < result)
      {
        v52 = v49 - v19;
        result = *(a6[24] + 4 * *(a6[23] + 8 * v58) + 4 * (v52 / a7));
        v51 = v52 % a7 + result * a7;
        goto LABEL_65;
      }

      if (*a2 > v49)
      {
        v51 = *(*(a2 + 80) + 4 * (v49 - result));
        goto LABEL_65;
      }
    }

    else if ((v49 & 0x80000000) == 0)
    {
      result = *(a2 + 56);
      if (result)
      {
        v51 = *(result + 4 * v49);
      }

      else
      {
        result = *(a6[22] + 4 * v58);
        v51 = v49 + result * a7;
      }

LABEL_65:
      if (v51 == v48)
      {
        if (v16 < 0)
        {
          v53 = (*(a4 + 3) + 4 * *(a4 + 4) * v14 + 4 * v42);
        }

        else if (v43 >= v12)
        {
          v53 = (a5[12] + i * a5[2] + v40 + v41);
        }

        else
        {
          v53 = (*(a4 + 5) + 4 * *(a4 + 6) * v43 + 4 * v16);
        }

        v54 = *(a2 + 24) + 4 * *(a2 + 32) * v20;
        *(v54 + 4 * v50) = *v53 + *(v54 + 4 * v50);
      }

      goto LABEL_72;
    }

    v51 = 0x7FFFFFFF;
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_23675AD4C(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v74 = result;
  v12 = a4[3];
  if (a10 >= 1)
  {
    result = (v12 + a9 + a10);
    v13 = *(a2 + 12);
    v14 = v12 + a9;
    v15 = result;
    while (1)
    {
      v16 = v14 - v12;
      if (v14 < v12)
      {
        break;
      }

      v18 = a4[1];
      v19 = v18 - a4[19];
      v20 = __OFSUB__(v14, v19);
      result = v14 - v19;
      if (result < 0 != v20)
      {
        result = *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v14 - v12) / a7));
        v17 = (v14 - v12) % a7 + result * a7;
      }

      else
      {
        if (v14 >= v18)
        {
          goto LABEL_12;
        }

        v17 = *(*(a4 + 11) + 4 * result);
      }

LABEL_14:
      v21 = *(a12 + 4 * v17);
      if (v21 < v13)
      {
        v22 = a4[4];
        if (v22 < v12)
        {
          v23 = *(a2 + 24) + 4 * *(a2 + 32) * v21;
          if (v16 >= 0)
          {
            v24 = a4 + 10;
          }

          else
          {
            v24 = a4 + 6;
          }

          if (v16 >= 0)
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
            if (v22 < 0)
            {
              v29 = 0x7FFFFFFF;
            }

            else
            {
              v28 = *(a4 + 7);
              if (v28)
              {
                v29 = *(v28 + 4 * v22);
              }

              else
              {
                v29 = v22 + *(a6[22] + 4 * a3) * a7;
              }
            }

            result = *(a11 + 4 * v29);
            if (v16 >= 0)
            {
              v30 = v22;
            }

            else
            {
              v30 = v14;
            }

            if (v16 >= 0)
            {
              v31 = v14 - v12;
            }

            else
            {
              v31 = v22;
            }

            *(v23 + 4 * result) = *(v26 + 4 * v27 * v30 + 4 * v31) + *(v23 + 4 * result);
            ++v22;
          }

          while (v12 != v22);
        }

        v32 = *a4;
        if (v12 + a8 < v32)
        {
          v33 = a4[18];
          v34 = v33 - v32;
          v35 = v32 - v33;
          v36 = v12 + a8;
          while (2)
          {
            if (v34 + v36 >= 0)
            {
              result = *(*(a5 + 32) + (v34 + v36));
              if (result)
              {
                goto LABEL_56;
              }
            }

            if (v36 >= v12)
            {
              if (v36 >= v35)
              {
                v38 = *(*(a4 + 10) + 4 * (v36 - v35));
                if ((v16 & 0x8000000000000000) == 0)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v38 = (v36 - v12) % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * ((v36 - v12) / a7)) * a7;
                if ((v16 & 0x8000000000000000) == 0)
                {
                  goto LABEL_50;
                }
              }

LABEL_54:
              v39 = (*(a4 + 3) + 4 * *(a4 + 4) * v14 + 4 * v36);
            }

            else
            {
              if (v36 < 0)
              {
                v38 = 0x7FFFFFFF;
                if (v16 < 0)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v37 = *(a4 + 7);
                if (v37)
                {
                  v38 = *(v37 + 4 * v36);
                  if (v16 < 0)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  v38 = v36 + *(a6[22] + 4 * a3) * a7;
                  if (v16 < 0)
                  {
                    goto LABEL_54;
                  }
                }
              }

LABEL_50:
              if (v36 >= v12)
              {
                v39 = (*(a5 + 96) + 4 * *(a5 + 16) * v16 + 4 * (v36 - v12));
              }

              else
              {
                v39 = (*(a4 + 5) + 4 * *(a4 + 6) * v36 + 4 * v16);
              }
            }

            result = *(a11 + 4 * v38);
            v40 = *(a2 + 24) + 4 * *(a2 + 32) * v21;
            *(v40 + 4 * result) = *v39 + *(v40 + 4 * result);
LABEL_56:
            if (++v36 >= v32)
            {
              break;
            }

            continue;
          }
        }
      }

      if (++v14 >= v15)
      {
        goto LABEL_58;
      }
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      if (*(a4 + 7))
      {
        result = *(a4 + 8);
        v17 = *(result + 4 * v14);
      }

      else
      {
        result = *(a6[22] + 4 * a3);
        v17 = v14 + result * a7;
      }

      goto LABEL_14;
    }

LABEL_12:
    v17 = 0x7FFFFFFF;
    goto LABEL_14;
  }

LABEL_58:
  v41 = a4[19];
  if (v41 >= 1)
  {
    v42 = 0;
    v43 = 0;
    v44 = a4[1];
    result = (v44 - v41);
    v45 = *(a5 + 48);
    v75 = v12 + a8;
    v46 = result;
    v47 = result;
    do
    {
      if ((*(v45 + v42) & 1) == 0)
      {
        v48 = v47 - v12;
        if (v47 >= v12)
        {
          v49 = v47 >= v46 ? *(*(a4 + 11) + 4 * (v47 - v46)) : (v47 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v47 - v12) / a7)) * a7;
        }

        else if (v47 < 0)
        {
          v49 = 0x7FFFFFFF;
        }

        else
        {
          v49 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v47) : v47 + *(a6[22] + 4 * a3) * a7;
        }

        v50 = *(a12 + 4 * v49);
        if (*(a2 + 12) > v50)
        {
          v51 = v50;
          if ((v50 & 0x80000000) != 0)
          {
            v52 = 0x7FFFFFFF;
          }

          else if (*(a2 + 56))
          {
            v52 = *(*(a2 + 64) + 4 * v50);
          }

          else
          {
            result = v74;
            v52 = v50 + *(a6[22] + 4 * v74) * a7;
          }

          if (v52 == v49)
          {
            v53 = a4[4];
            if (v53 < v12)
            {
              v54 = *(a2 + 24) + 4 * *(a2 + 32) * v50;
              if (v48 >= 0)
              {
                v55 = a4 + 10;
              }

              else
              {
                v55 = a4 + 6;
              }

              if (v48 >= 0)
              {
                v56 = a4 + 12;
              }

              else
              {
                v56 = a4 + 8;
              }

              v57 = *v55;
              v58 = *v56;
              do
              {
                if (v53 < 0)
                {
                  v60 = 0x7FFFFFFF;
                }

                else
                {
                  v59 = *(a4 + 7);
                  if (v59)
                  {
                    v60 = *(v59 + 4 * v53);
                  }

                  else
                  {
                    v60 = v53 + *(a6[22] + 4 * a3) * a7;
                  }
                }

                v61 = *(a11 + 4 * v60);
                if (v48 >= 0)
                {
                  v62 = v53;
                }

                else
                {
                  v62 = v47;
                }

                if (v48 >= 0)
                {
                  v63 = v47 - v12;
                }

                else
                {
                  v63 = v53;
                }

                *(v54 + 4 * v61) = *(v57 + 4 * v58 * v62 + 4 * v63) + *(v54 + 4 * v61);
                ++v53;
              }

              while (v12 != v53);
            }

            v64 = *a4;
            if (v75 < v64)
            {
              v65 = a4[18];
              v66 = v65 - v64;
              v67 = v64 - v65;
              v68 = v75;
              while (2)
              {
                if (v66 + v68 >= 0 && (*(*(a5 + 32) + (v66 + v68)) & 1) != 0)
                {
                  goto LABEL_118;
                }

                if (v68 >= v12)
                {
                  if (v68 >= v67)
                  {
                    v70 = *(*(a4 + 10) + 4 * (v68 - v67));
                    if ((v48 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_112;
                    }
                  }

                  else
                  {
                    v70 = (v68 - v12) % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * ((v68 - v12) / a7)) * a7;
                    if ((v48 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_112;
                    }
                  }

LABEL_116:
                  v71 = (*(a4 + 3) + 4 * *(a4 + 4) * v47 + 4 * v68);
                }

                else
                {
                  if (v68 < 0)
                  {
                    v70 = 0x7FFFFFFF;
                    if (v48 < 0)
                    {
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    v69 = *(a4 + 7);
                    if (v69)
                    {
                      v70 = *(v69 + 4 * v68);
                      if (v48 < 0)
                      {
                        goto LABEL_116;
                      }
                    }

                    else
                    {
                      v70 = v68 + *(a6[22] + 4 * a3) * a7;
                      if (v48 < 0)
                      {
                        goto LABEL_116;
                      }
                    }
                  }

LABEL_112:
                  if (v68 >= v12)
                  {
                    v71 = (*(a5 + 96) + 4 * *(a5 + 16) * v48 + 4 * (v68 - v12));
                  }

                  else
                  {
                    v71 = (*(a4 + 5) + 4 * *(a4 + 6) * v68 + 4 * v48);
                  }
                }

                v72 = *(a11 + 4 * v70);
                v73 = *(a2 + 24) + 4 * *(a2 + 32) * v51;
                *(v73 + 4 * v72) = *v71 + *(v73 + 4 * v72);
LABEL_118:
                if (++v68 >= v64)
                {
                  break;
                }

                continue;
              }
            }

            result = 1;
            *(v45 + v42) = 1;
            ++v43;
          }
        }
      }

      ++v47;
      ++v42;
    }

    while (v47 < v44);
    if (v43 > 0)
    {
      atomic_fetch_add_explicit((a5 + 24), -v43, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_23675B2FC(uint64_t result, int a2, int *a3, void *a4, void *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = a3[3];
  v83 = a3[4];
  if (v83 < v10)
  {
    v11 = *a3;
    v12 = v10 + a7;
    v14 = *(a3 + 7);
    v13 = *(a3 + 8);
    v15 = a3[4];
    v16 = *(result + 24);
    v17 = *(result + 32);
    while (1)
    {
      v18 = v83;
      v19 = *(a10 + 4 * *(v13 + 4 * v15));
      v20 = v15 - v10;
      v21 = v15 >= v10 ? a3 + 10 : a3 + 6;
      v22 = v15 >= v10 ? a3 + 12 : a3 + 8;
      v23 = *v21;
      v24 = *v22;
      do
      {
        if (v20 >= 0)
        {
          v26 = v18;
        }

        else
        {
          v26 = v15;
        }

        if (v20 >= 0)
        {
          v27 = v15 - v10;
        }

        else
        {
          v27 = v18;
        }

        v25 = *(a9 + 4 * *(v14 + 4 * v18));
        *(v16 + 4 * v17 * v19 + 4 * v25) = *(v23 + 4 * v24 * v26 + 4 * v27) + *(v16 + 4 * v17 * v19 + 4 * v25);
        ++v18;
      }

      while (v10 != v18);
      if (v12 < v11)
      {
        break;
      }

LABEL_40:
      if (++v15 == v10)
      {
        goto LABEL_41;
      }
    }

    v28 = a3[18];
    v29 = v28 - v11;
    v30 = v11 - v28;
    v31 = v12;
    while (1)
    {
      if (v29 + v31 >= 0 && (*(a4[4] + (v29 + v31)) & 1) != 0)
      {
        goto LABEL_34;
      }

      if (v31 >= v10)
      {
        if (v31 >= v30)
        {
          v33 = *(*(a3 + 10) + 4 * (v31 - v30));
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v33 = (v31 - v10) % a6 + *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * ((v31 - v10) / a6)) * a6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v31 < 0)
      {
        v33 = 0x7FFFFFFF;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v32 = *(a3 + 7);
        if (v32)
        {
          v33 = *(v32 + 4 * v31);
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v33 = v31 + *(a5[22] + 4 * a2) * a6;
          if ((v20 & 0x8000000000000000) == 0)
          {
LABEL_28:
            if (v31 >= v10)
            {
              v34 = (a4[12] + 4 * a4[2] * v20 + 4 * (v31 - v10));
            }

            else
            {
              v34 = (*(a3 + 5) + 4 * *(a3 + 6) * v31 + 4 * v20);
            }

            goto LABEL_33;
          }
        }
      }

      v34 = (*(a3 + 3) + 4 * *(a3 + 4) * v15 + 4 * v31);
LABEL_33:
      v35 = *(a9 + 4 * v33);
      v36 = *(result + 24) + 4 * *(result + 32) * v19;
      *(v36 + 4 * v35) = *v34 + *(v36 + 4 * v35);
LABEL_34:
      if (++v31 >= v11)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_41:
  v37 = v10 + a8;
  v38 = a3[1];
  if (v10 + a8 < v38)
  {
    v39 = a3[19];
    v40 = v39 - v38;
    v41 = v37;
    v42 = v38 - v39;
    v43 = 4 * v37 - 4 * v10;
    v82 = v42;
    while (1)
    {
      if (v40 + v41 < 0 || (*(a4[6] + (v40 + v41)) & 1) == 0)
      {
        v44 = v41 - v10;
        if (v41 >= v10)
        {
          v45 = v41 >= v82 ? *(*(a3 + 11) + 4 * (v41 - v82)) : (v41 - v10) % a6 + *(a5[26] + 4 * *(a5[25] + 8 * a2) + 4 * ((v41 - v10) / a6)) * a6;
        }

        else if (v41 < 0)
        {
          v45 = 0x7FFFFFFF;
        }

        else
        {
          v45 = *(a3 + 7) ? *(*(a3 + 8) + 4 * v41) : v41 + *(a5[22] + 4 * a2) * a6;
        }

        v46 = *(a10 + 4 * v45);
        if (v46 < *(result + 12))
        {
          if (v83 < v10)
          {
            v47 = *(a3 + 7);
            v48 = *(result + 24) + 4 * *(result + 32) * v46;
            v49 = 10;
            if (v44 < 0)
            {
              v49 = 6;
            }

            v50 = 12;
            if (v44 < 0)
            {
              v50 = 8;
            }

            v51 = *&a3[v49];
            v52 = *&a3[v50];
            v53 = v83;
            do
            {
              if (v44 >= 0)
              {
                v55 = v53;
              }

              else
              {
                v55 = v41;
              }

              if (v44 >= 0)
              {
                v56 = v41 - v10;
              }

              else
              {
                v56 = v53;
              }

              v54 = *(a9 + 4 * *(v47 + 4 * v53));
              *(v48 + 4 * v54) = *(v51 + 4 * v52 * v55 + 4 * v56) + *(v48 + 4 * v54);
              ++v53;
            }

            while (v10 != v53);
          }

          v57 = *a3;
          v58 = a3[18];
          v59 = v57 - v58;
          if (v10 + a7 < v57 - v58)
          {
            v60 = a5[24] + 4 * *(a5[23] + 8 * a2);
            v61 = *(result + 24) + 4 * *(result + 32) * v46;
            v62 = a4[12] - 4 * v10 + a4[2] * v43;
            v63 = a7;
            v64 = v10 + a7;
            do
            {
              v65 = *(a9 + 4 * (v63 % a6 + *(v60 + 4 * (v63 / a6)) * a6));
              *(v61 + 4 * v65) = *(v62 + 4 * v64++) + *(v61 + 4 * v65);
              ++v63;
            }

            while (v64 < v59);
          }

          if (v58 >= 1)
          {
            break;
          }
        }
      }

LABEL_92:
      ++v41;
      v43 += 4;
      if (v41 >= v38)
      {
        return result;
      }
    }

    v66 = 0;
    v67 = a4[4];
    v68 = v57 - v10 - v58;
    v69 = 4 * v57 - 4 * v58;
    v70 = -4 * v10;
    v71 = v59;
    while ((*(v67 + v66) & 1) != 0)
    {
LABEL_91:
      ++v71;
      ++v66;
      ++v68;
      v70 += 4;
      if (v59 + v66 >= v57)
      {
        goto LABEL_92;
      }
    }

    v72 = v59 + v66;
    if (v72 >= v10)
    {
      if (v72 >= v59)
      {
        v74 = *(a3 + 10);
LABEL_81:
        v77 = *(v74 + 4 * v66);
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_82;
        }

LABEL_89:
        v78 = (*(a3 + 3) + 4 * *(a3 + 4) * v41 + 4 * v71);
LABEL_90:
        v79 = *(a9 + 4 * v77);
        v80 = *(result + 24) + 4 * *(result + 32) * v46;
        *(v80 + 4 * v79) = *v78 + *(v80 + 4 * v79);
        goto LABEL_91;
      }

      v75 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v68 / a6));
      v76 = v68 % a6;
    }

    else
    {
      if (v72 < 0)
      {
        v77 = 0x7FFFFFFF;
        if (v44 < 0)
        {
          goto LABEL_89;
        }

        goto LABEL_82;
      }

      v73 = *(a3 + 7);
      if (v73)
      {
        v74 = v73 + v69;
        goto LABEL_81;
      }

      v75 = *(a5[22] + 4 * a2);
      v76 = v59 + v66;
    }

    v77 = v76 + v75 * a6;
    if (v44 < 0)
    {
      goto LABEL_89;
    }

LABEL_82:
    if (v72 >= v10)
    {
      v78 = (a4[12] + v43 * a4[2] + v69 + v70);
    }

    else
    {
      v78 = (*(a3 + 5) + 4 * *(a3 + 6) * v72 + 4 * v44);
    }

    goto LABEL_90;
  }

  return result;
}

void sub_23675B824(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7, void *a8, uint64_t *a9, void **a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v514 = *(a4 + 56);
  v566 = 0;
  v565 = 0u;
  v20 = (4 * v514 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = a17 + v20;
  v22 = a1;
  v564 = 0u;
  v563 = 0u;
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
  *(&v563 + 1) = v27;
  v567 = v24;
  v568 = v25;
  v541 = a1 + 1;
  v28 = v23 + (*(*(a4 + 176) + 4 * v541) - *(*(a4 + 176) + 4 * a1)) * a5;
  v561 = v23;
  v562 = v28;
  v29 = v28;
  if (a3 == 83)
  {
    v29 = *(*(a6 + 64) + 4 * v22);
  }

  v502 = (4 * v514 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = v26 + v20;
  LODWORD(v563) = v29;
  v519 = 8 * v22;
  v31 = (*(*(a4 + 200) + 8 * v541) - *(*(a4 + 200) + 8 * v22)) * a5;
  v559 = v28 + v24 + (*(*(a4 + 184) + 8 * v541) - *(*(a4 + 184) + 8 * v22)) * a5;
  v560 = v28 + v25 + v31;
  v531 = v560;
  v536 = v559;
  *&v564 = v559;
  *(&v564 + 1) = v27 + 4 * v559 * v28;
  v32 = v31 + v25;
  *&v565 = v32;
  if (a3 == 81)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = v27 + 4 * v559 * v28 + 4 * v32 * v28;
    v33 = v34 + 4 * v28 + 4 * v24;
    *(&v565 + 1) = v34;
    v566 = v33;
  }

  if (v24 <= 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34 + 4 * v28;
  }

  v527 = v33;
  v505 = v28;
  v36 = v33 + 4 * v28;
  if (v25 <= 0)
  {
    v36 = 0;
  }

  v521 = v35;
  v523 = v36;
  v569 = v35;
  v570 = v36;
  v37 = *(a4 + 240);
  v38 = *(v37 + 8 * v22);
  v553 = v22;
  v554 = a4;
  v555 = a5;
  v544 = v21 + v20;
  v539 = v29;
  v545 = v28;
  v550 = v34;
  v508 = v25;
  if (v38 >= *(v37 + 8 * v541))
  {
    v520 = 0;
    if (!v29)
    {
      return;
    }
  }

  else
  {
    v520 = 0;
    v530 = v559 - v24;
    v39 = v560 - v25;
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
          if ((v520 & 1) == 0)
          {
            sub_23672A9A0(a1, &v559, a4, a5, v26);
            v28 = v545;
            v34 = v550;
            v22 = v553;
            a4 = v554;
            v26 = v544;
            a5 = v555;
            v44 = *a7 + 32 * v40;
            v42 = *v44;
            v43 = *(v44 + 8);
          }

          v45 = v536;
          while (v42 != v43)
          {
            v558 = *v42;
            v46 = *(v26 + 4 * v558);
            if (v46 < v45)
            {
              if (v46 >= v28)
              {
                if (v46 >= v530)
                {
                  v47 = *(v521 + 4 * (v46 - v530));
                }

                else
                {
                  v47 = (v46 - v28) % a5 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v22) + 4 * ((v46 - v28) / a5)) * a5;
                }
              }

              else if ((v46 & 0x80000000) != 0)
              {
                v47 = 0x7FFFFFFF;
              }

              else if (v34)
              {
                v47 = *(v34 + 4 * v46);
              }

              else
              {
                v47 = v46 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v47 < 0)
              {
                v47 = -v47;
              }

              if (v558 == v47)
              {
                sub_236725158(*a7 + 32 * v22, &v558);
                v28 = v545;
                v34 = v550;
                v45 = v536;
                v22 = v553;
                a4 = v554;
                v26 = v544;
                a5 = v555;
              }
            }

            ++v42;
          }

          LOBYTE(v520) = 1;
        }

        v29 = v539;
      }

      if (*(*(a4 + 256) + v38))
      {
        v48 = *a8 + 32 * v40;
        v49 = *v48;
        v50 = *(v48 + 8);
        if (v50 != *v48)
        {
          if ((v520 & 0x100000000) == 0)
          {
            sub_23672AA5C(a1, &v559, a4, a5, v30);
            v28 = v545;
            v34 = v550;
            v22 = v553;
            a4 = v554;
            v26 = v544;
            a5 = v555;
            v51 = *a8 + 32 * v40;
            v49 = *v51;
            v50 = *(v51 + 8);
          }

          v52 = v531;
          while (v49 != v50)
          {
            v558 = *v49;
            v53 = *(v30 + 4 * v558);
            if (v53 < v52)
            {
              if (v53 >= v28)
              {
                if (v53 >= v39)
                {
                  v54 = *(v523 + 4 * (v53 - v39));
                }

                else
                {
                  v54 = (v53 - v28) % a5 + *(*(a4 + 208) + 4 * *(*(a4 + 200) + 8 * v22) + 4 * ((v53 - v28) / a5)) * a5;
                }
              }

              else if ((v53 & 0x80000000) != 0)
              {
                v54 = 0x7FFFFFFF;
              }

              else if (v34)
              {
                v54 = v527[v53];
              }

              else
              {
                v54 = v53 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v54 < 0)
              {
                v54 = -v54;
              }

              if (v558 == v54)
              {
                sub_236725158(*a8 + 32 * v22, &v558);
                v52 = v531;
                v28 = v545;
                v34 = v550;
                v22 = v553;
                a4 = v554;
                v26 = v544;
                a5 = v555;
              }
            }

            ++v49;
          }

          BYTE4(v520) = 1;
        }

        v29 = v539;
      }

      ++v38;
    }

    while (v38 < *(*(a4 + 240) + 8 * v541));
    if (!v29)
    {
      return;
    }
  }

  v55 = (*a7 + 32 * v22);
  v518 = (*a8 + 32 * v22);
  if (v55[1] == *v55 && v518[1] == *v518)
  {
    return;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v56 = sub_23672AB6C(*v55, v55[1]);
  v501 = v55;
  if (v56 != v55[1])
  {
    v55[1] = v56;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v57 = sub_23672AB6C(*v518, v518[1]);
  v59 = v518[1];
  v60 = v554;
  v61 = v550;
  if (v57 != v59)
  {
    v58 = v518[1];
    v59 = v57;
    v518[1] = v57;
  }

  if (v550)
  {
    v62 = v539;
    if (v539 >= 1)
    {
      v63 = 0;
      v64 = v527;
      do
      {
        v65 = *v61++;
        *(a17 + 4 * v65) = v63;
        v66 = *v64++;
        *(v21 + 4 * v66) = v63--;
      }

      while (-v539 != v63);
    }
  }

  else
  {
    v62 = v539;
    if (v539 >= 1)
    {
      v67 = 0;
      v68 = 0;
      v69 = *(v554 + 176);
      do
      {
        *(a17 + 4 * (v68 + *(v69 + 4 * v553) * v555)) = v67;
        *(v21 + 4 * (v68 + *(v69 + 4 * v553) * v555)) = v67;
        ++v68;
        --v67;
      }

      while (v539 != v68);
    }
  }

  v70 = *v55;
  v500 = v55[1] - *v55;
  if (v500)
  {
    v71 = 0;
    v72 = v500 >> 2;
    if ((v500 >> 2) <= 1)
    {
      v72 = 1;
    }

    do
    {
      *(a17 + 4 * v70[v71]) = v71;
      ++v71;
    }

    while (v72 != v71);
  }

  v73 = *v518;
  v74 = v59 - *v518;
  if (v59 != *v518)
  {
    v75 = 0;
    v76 = v74 >> 2;
    if ((v74 >> 2) <= 1)
    {
      v76 = 1;
    }

    do
    {
      *(v21 + 4 * v73[v75]) = v75;
      ++v75;
    }

    while (v76 != v75);
  }

  v557 = (v30 + v502);
  v497 = v74;
  v77 = v74 >> 2;
  v78 = a9;
  v79 = (v62 * (v500 >> 2));
  v80 = 4 * v79;
  if (a9[1] < v79)
  {
    if (*a9)
    {
      (*(v554 + 32))(*a9, v58);
      v60 = v554;
    }

    v81 = (*(v60 + 24))(4 * v79, v58);
    v60 = v554;
    v78 = a9;
    *a9 = v81;
    a9[1] = v79;
  }

  v82 = &v557[v514];
  v83 = v62 * v77;
  v84 = a10;
  v543 = v82;
  v85 = v80;
  if (a10[1] >= v83)
  {
    v86 = 4 * v83;
  }

  else
  {
    if (*a10)
    {
      (*(v60 + 32))();
      v60 = v554;
    }

    v86 = 4 * v83;
    v84 = a10;
    *a10 = (*(v60 + 24))(4 * v83);
    a10[1] = v83;
    v78 = a9;
    v82 = &v557[v514];
  }

  v522 = &v82[v514];
  v87 = v78;
  bzero(*v78, v85);
  bzero(*v84, v86);
  v88 = *v501;
  v498 = v30;
  v499 = v501[1];
  v89 = v499 - *v501;
  v90 = *v518;
  v496 = v518[1];
  v91 = v496 - *v518;
  v515 = *v87;
  v511 = *v84;
  v92 = *(a6 + 96);
  v93 = *(a2 + 28);
  v94 = (v93 * v93);
  if (v92)
  {
    v95 = *(a6 + 104);
    v96 = v539;
    v97 = v554;
    v98 = v550;
    if (v539 >= 1 && v89 >= 1)
    {
      v99 = 0;
      v546 = *(v554 + 160);
      v532 = *(a2 + 8);
      v100 = 4 * v94;
      do
      {
        if (v527)
        {
          v101 = v527[v99];
        }

        else
        {
          v101 = v99 + *(*(v97 + 176) + 4 * v553) * v93;
        }

        v102 = (v532 + 8 * *(v546 + 4 * (v101 / v93)));
        v103 = *v102;
        v104 = v102[1];
        if (*v102 < v104)
        {
          v105 = *(a2 + 16);
          v106 = v101;
          v107 = v100 * v103 + 4 * v101 % v93 * v93;
          do
          {
            v108 = *(v105 + 4 * v103);
            if ((v108 & 0x80000000) == 0 && v108 < *a2 && v93 != 0)
            {
              v110 = *(*(v554 + 136) + 4 * v108) * v93;
              v111 = (v92 + 4 * v110);
              v112 = (a17 + 4 * v110);
              v113 = v93;
              v114 = v107;
              do
              {
                v116 = *v112++;
                v115 = v116;
                if (v116 < v89 && v110 == v88[v115])
                {
                  v515[v99 * v89 + v115] = (*v111 * *(*(a2 + 32) + v114)) * *(v95 + 4 * v106);
                }

                v114 += 4;
                ++v111;
                ++v110;
                --v113;
              }

              while (v113);
            }

            ++v103;
            v107 += v100;
          }

          while (v103 != v104);
        }

        ++v99;
        v97 = v554;
        v96 = v539;
        v98 = v550;
      }

      while (v99 != v539);
    }

    if (v96 >= 1 && v91 >= 1)
    {
      v117 = 0;
      v547 = *(v97 + 312);
      v533 = v96;
      do
      {
        if (v98)
        {
          v118 = v98[v117];
        }

        else
        {
          v118 = v117 + *(*(v97 + 176) + 4 * v553) * v93;
        }

        v119 = (v547 + 8 * (v118 / v93));
        v120 = *v119;
        v121 = v119[1];
        if (*v119 < v121)
        {
          v122 = *(v554 + 320);
          v123 = v118;
          v124 = 4 * (v118 % v93);
          do
          {
            v125 = *(v122 + 4 * v120) * v93;
            v126 = (v95 + 4 * v125);
            v127 = (a17 + v502 + 4 * v125);
            v128 = v93;
            v129 = v124;
            do
            {
              v131 = *v127++;
              v130 = v131;
              if (v131 < v91 && v125 == v90[v130])
              {
                v511[v117 * v91 + v130] = (*(v92 + 4 * v123) * *(*(a2 + 32) + 4 * *(*(v554 + 328) + 8 * v120) * v94 + v129)) * *v126;
              }

              v129 += 4 * v93;
              ++v126;
              ++v125;
              --v128;
            }

            while (v128);
            ++v120;
          }

          while (v120 != v121);
        }

        ++v117;
        v97 = v554;
        v96 = v539;
        v98 = v550;
      }

      while (v117 != v533);
    }
  }

  else
  {
    v97 = v554;
    if (v89 >= 1 && v539 >= 1)
    {
      v132 = 0;
      v133 = *(v554 + 160);
      v134 = *(a2 + 8);
      v135 = 4 * v94;
      do
      {
        if (v527)
        {
          v136 = v527[v132];
        }

        else
        {
          v136 = v132 + *(*(v554 + 176) + 4 * v553) * v93;
        }

        v137 = (v134 + 8 * *(v133 + 4 * (v136 / v93)));
        v138 = *v137;
        v139 = v137[1];
        if (*v137 < v139)
        {
          v140 = *(a2 + 16);
          v141 = v135 * v138 + 4 * v136 % v93 * v93;
          do
          {
            v142 = *(v140 + 4 * v138);
            if ((v142 & 0x80000000) == 0 && v142 < *a2 && v93 != 0)
            {
              v144 = *(*(v554 + 136) + 4 * v142) * v93;
              v145 = (a17 + 4 * v144);
              v146 = v93;
              v147 = v141;
              do
              {
                v149 = *v145++;
                v148 = v149;
                if (v149 < v89 && v144 == v88[v148])
                {
                  v515[v132 * v89 + v148] = *(*(a2 + 32) + v147);
                }

                v147 += 4;
                ++v144;
                --v146;
              }

              while (v146);
            }

            ++v138;
            v141 += v135;
          }

          while (v138 != v139);
        }

        ++v132;
      }

      while (v132 != v539);
    }

    v96 = v539;
    if (v91 >= 1)
    {
      if (v539 >= 1)
      {
        v150 = 0;
        v151 = *(v554 + 312);
        do
        {
          if (v550)
          {
            v152 = v550[v150];
          }

          else
          {
            v152 = v150 + *(*(v554 + 176) + 4 * v553) * v93;
          }

          v153 = (v151 + 8 * (v152 / v93));
          v154 = *v153;
          v155 = v153[1];
          if (*v153 < v155)
          {
            v156 = *(v554 + 320);
            v157 = 4 * (v152 % v93);
            do
            {
              v158 = *(v156 + 4 * v154) * v93;
              v159 = (a17 + v502 + 4 * v158);
              v160 = v93;
              v161 = v157;
              do
              {
                v163 = *v159++;
                v162 = v163;
                if (v163 < v91 && v158 == v90[v162])
                {
                  v511[v150 * v91 + v162] = *(*(a2 + 32) + 4 * *(*(v554 + 328) + 8 * v154) * v94 + v161);
                }

                v161 += 4 * v93;
                ++v158;
                --v160;
              }

              while (v160);
              ++v154;
            }

            while (v154 != v155);
          }

          ++v150;
        }

        while (v150 != v539);
      }

      if (v508 >= 1 && v539 < v531)
      {
        v164 = v539;
        v165 = v531 - v508;
        do
        {
          if (v164 >= v505)
          {
            if (v164 >= v165)
            {
              v166 = *(v523 + 4 * (v164 - v165));
            }

            else
            {
              v166 = (v164 - v545) % v93 + *(*(v554 + 208) + 4 * *(*(v554 + 200) + 8 * v553) + 4 * ((v164 - v545) / v93)) * v93;
            }
          }

          else if (v164 < 0)
          {
            v166 = 0x7FFFFFFF;
          }

          else if (v550)
          {
            v166 = v527[v164];
          }

          else
          {
            v166 = v164 + *(*(v554 + 176) + 4 * v553) * v93;
          }

          if (v166 >= 0)
          {
            v167 = v166;
          }

          else
          {
            v167 = -v166;
          }

          v168 = *(v21 + 4 * v167);
          if (v168 < v91 && v90[v168] == v167 && (v164 < v505 || v167 < *(*(v554 + 176) + 4 * v553) * v93))
          {
            v169 = (*(a2 + 8) + 8 * *(*(v554 + 160) + 4 * (v167 / v93)));
            v170 = *v169;
            v171 = v169[1];
            if (*v169 < v171)
            {
              v172 = *(a2 + 16);
              v173 = &v511[v168];
              v174 = v167 % v93 * v93;
              do
              {
                v175 = *(v172 + 4 * v170);
                if ((v175 & 0x80000000) == 0 && v175 < *a2 && v93 != 0)
                {
                  v177 = 0;
                  v178 = *(*(v554 + 136) + 4 * v175) * v93;
                  v179 = (a17 + 4 * v178);
                  v180 = v93;
                  do
                  {
                    v182 = *v179++;
                    v181 = v182;
                    v183 = -v182;
                    v184 = v182 > 0 || v539 <= v183;
                    if (!v184)
                    {
                      v185 = v550 ? v550[v183] : *(*(v554 + 176) + 4 * v553) * v93 - v181;
                      if (v178 == v185)
                      {
                        v173[v183 * v91] = *(*(a2 + 32) + 4 * v170 * v94 + 4 * v177 + 4 * v174);
                      }
                    }

                    ++v177;
                    ++v178;
                    --v180;
                  }

                  while (v180);
                }

                ++v170;
              }

              while (v170 != v171);
            }
          }

          ++v164;
        }

        while (v164 != v531);
      }
    }
  }

  if (v499 == v88)
  {
    v191 = 0;
    v305 = a14;
    v306 = v522;
    v307 = v496;
  }

  else
  {
    sub_23672AB18(a14);
    v186 = v554;
    v187 = *(v554 + 240);
    v188 = *(v187 + 8 * v553);
    v189 = *(v187 + 8 * v541);
    v190 = v522;
    v191 = 0;
    if (v188 < v189)
    {
      v192 = *(v554 + 256);
      v193 = *a14;
      v194 = v555;
      do
      {
        if ((*(v192 + v188) & 2) != 0)
        {
          v195 = *(*(v554 + 248) + 4 * v188);
          v522[v191++] = v195;
          *(v193 + 4 * v195) = *(a14 + 4);
        }

        ++v188;
      }

      while (v189 != v188);
      while (v191 >= 1)
      {
        v196 = v191 - 1;
        v197 = v190[v196];
        v548 = v196;
        if (a3 == 83)
        {
          v198 = *(*(a6 + 72) + 4 * v197);
          LODWORD(v199) = *(*(a6 + 80) + 4 * v197);
          v200 = *(*(a6 + 88) + 4 * v197);
        }

        else
        {
          v198 = 0;
          LODWORD(v199) = 0;
          v200 = 0;
        }

        v201 = *(v186 + 176);
        v202 = v197 + 1;
        v203 = v198 + (*(v201 + 4 * (v197 + 1)) - *(v201 + 4 * v197)) * v194;
        v551 = v203;
        if (a3 == 83)
        {
          v551 = *(*(a6 + 64) + 4 * v197);
        }

        v204 = *(a6 + 112);
        v205 = *(v186 + 184);
        v206 = *(v205 + 8 * v202);
        v207 = *(v205 + 8 * v197);
        v208 = *(v186 + 200);
        v209 = *(v208 + 8 * v202);
        v210 = *(v208 + 8 * v197);
        v528 = *(v204 + 8 * v197) + 8;
        v211 = (v201 + 4 * v553);
        v534 = v200;
        v537 = v197;
        v524 = v528 + 4 * (v203 + v199 + (v206 - v207) * v194) * v203;
        v516 = v200 + (v209 - v210) * v194;
        v509 = v203 + v199 + (v206 - v207) * v194;
        if (a3 == 81)
        {
          v212 = 0;
          v506 = 0;
          if (v199 <= 0)
          {
            v213 = 0;
          }

          else
          {
            v213 = v203;
          }

          v214 = (4 * v213);
          if (v200 <= 0)
          {
            v215 = 0;
          }

          else
          {
            v215 = v203;
          }

          v216 = (4 * v215);
        }

        else
        {
          v212 = v528 + 4 * (v203 + v199 + (v206 - v207) * v194) * v203 + 4 * (v200 + (v209 - v210) * v194) * v203;
          if (v199 <= 0)
          {
            v214 = 0;
          }

          else
          {
            v214 = (v212 + 4 * v203);
          }

          v506 = v212 + 4 * v203 + 4 * v199;
          v216 = (v506 + 4 * v203);
          if (v200 <= 0)
          {
            v216 = 0;
          }

          if (a3 == 83)
          {
            v217 = *(*(a6 + 80) + 4 * v553);
            v218 = *(*(a6 + 88) + 4 * v553);
            v219 = v555;
            v220 = *(*(a6 + 72) + 4 * v553) + (*(v201 + 4 * v541) - *v211) * v555;
            v221 = *(*(a6 + 64) + 4 * v553);
            goto LABEL_236;
          }
        }

        v218 = 0;
        v217 = 0;
        v219 = v555;
        v220 = (*(v201 + 4 * v541) - *v211) * v555;
        v221 = v220;
LABEL_236:
        v222 = *v501;
        v223 = (v501[1] - *v501) >> 2;
        v512 = *a9;
        v224 = *(v204 + 8 * v553) + 4 * (v217 + v220 + (*(v205 + 8 * v541) - *(v205 + v519)) * v219) * v220 + 4 * (v218 + (*(v208 + 8 * v541) - *(v208 + v519)) * v219) * v220 + 4 * v220 + 4 * v217;
        v225 = v224 + 8;
        if (a3 == 81)
        {
          v226 = 0;
        }

        else
        {
          v226 = v224 + 8;
        }

        v227 = v551;
        if (v551 >= v203)
        {
          v228 = 0;
          v238 = v551;
        }

        else
        {
          v228 = 0;
          v229 = v551 - v203;
          v230 = (v212 + 4 * v551);
          v231 = v551;
          do
          {
            v233 = *v230++;
            v232 = v233;
            if (v233 >= 0)
            {
              v234 = v232;
            }

            else
            {
              v234 = -v232;
            }

            v235 = *(a17 + 4 * v234);
            if ((v235 & 0x80000000) == 0 && v235 < v223 && v222[v235] == v234)
            {
              v236 = &v557[v228];
              *v236 = v231;
              v236[1] = v235;
              ++v228;
            }

            ++v231;
            v237 = __CFADD__(v229++, 1);
          }

          while (!v237);
          v238 = v203;
        }

        if (v206 > v207)
        {
          v239 = *(v186 + 192);
          do
          {
            if (v555 >= 1)
            {
              v240 = *(v239 + 4 * v207) * v555;
              v241 = v240 + v555;
              do
              {
                v242 = *(a17 + 4 * v240);
                if ((v242 & 0x80000000) == 0 && v242 < v223 && v240 == v222[v242])
                {
                  v243 = &v557[v228++];
                  *v243 = v238;
                  v243[1] = v242;
                }

                ++v240;
                ++v238;
              }

              while (v240 < v241);
            }

            ++v207;
          }

          while (v207 != v206);
        }

        if (v199 < 1)
        {
          v244 = &v557[v514];
          v190 = v522;
        }

        else
        {
          v199 = v199;
          v244 = &v557[v514];
          v190 = v522;
          do
          {
            v245 = *v214++;
            v207 = v245;
            v246 = *(a17 + 4 * v245);
            if ((v246 & 0x80000000) == 0 && v246 < v223)
            {
              if (v222[v246] == v207)
              {
                v207 = &v557[v228];
                *v207 = v238;
                *(v207 + 4) = v246;
                ++v228;
              }

              v244 = &v557[v514];
            }

            ++v238;
            --v199;
          }

          while (v199);
        }

        v194 = v555;
        if (!v228)
        {
          goto LABEL_351;
        }

        if (v551 >= v203)
        {
          v247 = 0;
          v256 = v551;
        }

        else
        {
          v247 = 0;
          v248 = v551 - v203;
          v249 = (v506 + 4 * v551);
          do
          {
            v251 = *v249++;
            v250 = v251;
            if (v251 >= 0)
            {
              v252 = v250;
            }

            else
            {
              v252 = -v250;
            }

            v207 = *(v21 + 4 * v252);
            v253 = -v207;
            if (v207 <= 0 && v221 > v253)
            {
              v207 = a3 == 81 ? (*v211 * v555 - v207) : *(v225 + 4 * v253);
              if (v207 == v252)
              {
                v255 = &v244[v247];
                v207 = (v247 + 1);
                *v255 = v227;
                v255[1] = v253;
                ++v247;
              }
            }

            ++v227;
            v237 = __CFADD__(v248++, 1);
          }

          while (!v237);
          v256 = v203;
        }

        if (v209 > v210)
        {
          v257 = *(v186 + 208);
          do
          {
            if (v555 >= 1)
            {
              v258 = *(v257 + 4 * v210) * v555;
              v259 = v258 + v555;
              do
              {
                v207 = *(v21 + 4 * v258);
                v260 = -v207;
                if (v207 <= 0 && v221 > v260)
                {
                  v207 = a3 == 81 ? (*v211 * v555 - v207) : *(v225 + 4 * v260);
                  if (v258 == v207)
                  {
                    v207 = &v244[v247];
                    *v207 = v256;
                    *(v207 + 4) = v260;
                    ++v247;
                  }
                }

                ++v258;
                ++v256;
              }

              while (v258 < v259);
            }

            ++v210;
          }

          while (v210 != v209);
        }

        if (v534 >= 1)
        {
          v262 = v534;
          v263 = v551;
          do
          {
            v265 = *v216++;
            v264 = v265;
            v266 = *(v21 + 4 * v265);
            v267 = -v266;
            v268 = v266 > 0 || v221 <= v267;
            if (!v268 && *(v226 + 4 * v267) == v264)
            {
              v269 = &v244[v247];
              *v269 = v256;
              v269[1] = v267;
              ++v247;
            }

            ++v256;
            --v262;
          }

          while (v262);
          if (!v247)
          {
            goto LABEL_351;
          }

LABEL_318:
          v270 = v228 * v263;
          v271 = a12;
          if (a11[1] < (v228 * v263))
          {
            if (*a11)
            {
              (*(v186 + 32))(*a11, a12);
              v186 = v554;
            }

            v272 = (*(v186 + 24))(4 * v270, v271);
            v186 = v554;
            *a11 = v272;
            a11[1] = v270;
            v244 = &v557[v514];
            v271 = a12;
            v263 = v551;
          }

          v273 = v528;
          if (v263 >= 1)
          {
            v274 = 0;
            v275 = *a11;
            do
            {
              if (v228 >= 1)
              {
                v276 = v557;
                v277 = v275;
                v278 = v228;
                do
                {
                  v279 = *v276++;
                  *v277++ = *(v528 + 4 * v274 * v509 + 4 * v279);
                  --v278;
                }

                while (v278);
              }

              ++v274;
              v275 += v228;
            }

            while (v274 != v263);
          }

          v280 = v247 * v263;
          if (v271[1] < (v247 * v263))
          {
            if (*v271)
            {
              (*(v186 + 32))(*v271, v271, v528, v207);
              v186 = v554;
            }

            v281 = (*(v186 + 24))(4 * v280);
            v186 = v554;
            v271 = a12;
            *a12 = v281;
            a12[1] = v280;
            v244 = &v557[v514];
            v263 = v551;
            v273 = v528;
          }

          if (v263 >= 1)
          {
            v282 = 0;
            v283 = 0;
            do
            {
              if (v247 >= 1)
              {
                v284 = (*v271 + v282);
                v285 = v244;
                v286 = v247;
                do
                {
                  v287 = *v285++;
                  v288 = v524 + 4 * v283 * v516 + 4 * (v287 - v203);
                  v289 = (v273 + 4 * v283 + 4 * v287 * v509);
                  if (v287 >= v203)
                  {
                    v289 = v288;
                  }

                  *v284++ = *v289;
                  --v286;
                }

                while (v286);
              }

              ++v283;
              v282 += 4 * v247;
            }

            while (v283 != v551);
          }

          v290 = v247 * v228;
          v291 = *a13;
          if (a13[1] >= (v247 * v228))
          {
            v190 = v522;
          }

          else
          {
            v190 = v522;
            if (v291)
            {
              (*(v186 + 32))(v291, v271, v273, v524);
              v186 = v554;
            }

            *a13 = (*(v186 + 24))(4 * v290);
            a13[1] = v290;
          }

          cblas_sgemm_NEWLAPACK();
          v186 = v554;
          v194 = v555;
          if (v247 >= 1)
          {
            v292 = 0;
            v293 = *a13;
            do
            {
              if (v228 >= 1)
              {
                v294 = &v512[4 * SHIDWORD(v543[v292]) * (v500 >> 2)];
                v295 = v557;
                v296 = v293;
                v297 = v228;
                do
                {
                  v298 = *v296++;
                  *&v294[4 * *(v295 + 1)] = v298 + *&v294[4 * *(v295 + 1)];
                  ++v295;
                  --v297;
                }

                while (v297);
              }

              ++v292;
              v293 += v228;
            }

            while (v292 != v247);
          }

          goto LABEL_351;
        }

        v263 = v551;
        if (v247)
        {
          goto LABEL_318;
        }

LABEL_351:
        v299 = (*(v186 + 240) + 8 * v537);
        v300 = *v299;
        v301 = v299[1];
        if (v300 >= v301)
        {
          v96 = v539;
          v191 = v548;
        }

        else
        {
          v302 = *(v186 + 256);
          v303 = *a14;
          v96 = v539;
          v191 = v548;
          do
          {
            if ((*(v302 + v300) & 2) != 0)
            {
              v304 = *(*(v186 + 248) + 4 * v300);
              if (*(v303 + 4 * v304) < *(a14 + 4))
              {
                v190[v191++] = v304;
                *(v303 + 4 * v304) = *(a14 + 4);
              }
            }

            ++v300;
          }

          while (v301 != v300);
        }
      }
    }

    cblas_strsm_NEWLAPACK();
    if (v96 < 1)
    {
      v317 = 0.0;
      v97 = v554;
      v306 = v522;
    }

    else
    {
      v308 = 0;
      v309 = v501[1];
      v310 = v309 - *v501;
      v311 = *a9;
      if (v310 <= 1)
      {
        v310 = 1;
      }

      v312 = 0.0;
      v97 = v554;
      v306 = v522;
      do
      {
        v313 = v310;
        v314 = v311;
        if (v309 != *v501)
        {
          do
          {
            v315 = *v314++;
            v316 = fabsf(v315);
            if (v316 >= v312)
            {
              v312 = v316;
            }

            --v313;
          }

          while (v313);
        }

        ++v308;
        v311 += (v500 >> 2);
      }

      while (v308 != v96);
      v317 = v312;
    }

    v305 = a14;
    if (1.0 / *(a6 + 16) < v317)
    {
      *(a15 + v553) = 1;
      v327 = *(v97 + 168);
      if (v541 >= v327)
      {
        return;
      }

      while (1)
      {
        if ((*(a15 + v541) & 1) == 0)
        {
          v328 = (*(v97 + 240) + 8 * v541);
          v330 = *v328;
          v329 = v328[1];
          v184 = v329 <= v330;
          v331 = v329 - v330;
          if (!v184)
          {
            v332 = (*(v97 + 248) + 4 * v330);
            while (1)
            {
              v333 = *v332++;
              if (*(a15 + v333) == 1)
              {
                break;
              }

              if (!--v331)
              {
                goto LABEL_390;
              }
            }

            *(a15 + v541) = 1;
          }
        }

LABEL_390:
        if (v327 == ++v541)
        {
          return;
        }
      }
    }

    v90 = *v518;
    v307 = v518[1];
  }

  v318 = (v497 >> 2);
  if (v307 == v90)
  {
    goto LABEL_532;
  }

  v319 = v305;
  sub_23672AB18(v305);
  v97 = v554;
  v320 = *(v554 + 240);
  v321 = *(v320 + 8 * v553);
  v513 = v320;
  v322 = *(v320 + 8 * v541);
  if (v321 >= v322)
  {
    v325 = v555;
  }

  else
  {
    v323 = *(v554 + 256);
    v324 = *v319;
    v325 = v555;
    do
    {
      if (*(v323 + v321))
      {
        v326 = *(*(v554 + 248) + 4 * v321);
        v306[v191++] = v326;
        *(v324 + 4 * v326) = *(v319 + 16);
      }

      ++v321;
    }

    while (v322 != v321);
  }

  while (v191 >= 1)
  {
    v334 = v191 - 1;
    v335 = v306[v334];
    if (a3 == 83)
    {
      v336 = *(*(a6 + 72) + 4 * v335);
      LODWORD(v337) = *(*(a6 + 80) + 4 * v335);
      v338 = *(*(a6 + 88) + 4 * v335);
    }

    else
    {
      v336 = 0;
      LODWORD(v337) = 0;
      v338 = 0;
    }

    v339 = *(v97 + 176);
    v340 = v335 + 1;
    v341 = v336 + (*(v339 + 4 * (v335 + 1)) - *(v339 + 4 * v335)) * v325;
    v342 = v341;
    if (a3 == 83)
    {
      v342 = *(*(a6 + 64) + 4 * v335);
    }

    v552 = v342;
    v343 = *(a6 + 112);
    v344 = *(v97 + 184);
    v345 = *(v344 + 8 * v340);
    v346 = *(v344 + 8 * v335);
    v347 = v341 + v337 + (v345 - v346) * v325;
    v348 = v325;
    v349 = *(v97 + 200);
    v350 = *(v349 + 8 * v340);
    v538 = v335;
    v351 = *(v349 + 8 * v335);
    v507 = v347;
    v517 = *(v343 + 8 * v335) + 8;
    v352 = v338 + (v350 - v351) * v348;
    v353 = (v339 + 4 * v553);
    v549 = v334;
    v535 = v517 + 4 * v347 * v341;
    v540 = v352;
    v529 = v338;
    if (a3 == 81)
    {
      v354 = 0;
      v503 = 0;
      if (v337 <= 0)
      {
        v355 = 0;
      }

      else
      {
        v355 = v341;
      }

      v356 = (4 * v355);
      if (v338 <= 0)
      {
        v357 = 0;
      }

      else
      {
        v357 = v341;
      }

      v358 = (4 * v357);
    }

    else
    {
      v354 = v517 + 4 * v347 * v341 + 4 * v352 * v341;
      v359 = v354 + 4 * v341;
      if (v337 <= 0)
      {
        v356 = 0;
      }

      else
      {
        v356 = (v354 + 4 * v341);
      }

      v503 = v359 + 4 * v337;
      if (v338 <= 0)
      {
        v358 = 0;
      }

      else
      {
        v358 = (v359 + 4 * v337 + 4 * v341);
      }

      if (a3 == 83)
      {
        v360 = *(*(a6 + 80) + 4 * v553);
        v361 = *(*(a6 + 88) + 4 * v553);
        v362 = v555;
        v363 = *(*(a6 + 72) + 4 * v553) + (*(v339 + 4 * v541) - *v353) * v555;
        v364 = *(*(a6 + 64) + 4 * v553);
        goto LABEL_415;
      }
    }

    v361 = 0;
    v360 = 0;
    v362 = v555;
    v363 = (*(v339 + 4 * v541) - *v353) * v555;
    v364 = v363;
LABEL_415:
    v365 = 0;
    v366 = *(v343 + 8 * v553);
    v525 = v518[1];
    v367 = *v518;
    v510 = *a10;
    v368 = v366 + 4 * (v360 + v363 + (*(v344 + 8 * v541) - *(v344 + v519)) * v362) * v363 + 4 * (v361 + (*(v349 + 8 * v541) - *(v349 + v519)) * v362) * v363;
    v369 = v368 + 8;
    if (a3 == 81)
    {
      v370 = 0;
    }

    else
    {
      v370 = v368 + 8;
    }

    v371 = v552;
    if (v552 < v341)
    {
      v365 = 0;
      v372 = v552 - v341;
      v373 = (v354 + 4 * v552);
      v374 = v552;
      do
      {
        v376 = *v373++;
        v375 = v376;
        if (v376 >= 0)
        {
          v377 = v375;
        }

        else
        {
          v377 = -v375;
        }

        v378 = *(a17 + 4 * v377);
        v379 = -v378;
        if (v378 <= 0 && v364 > v379)
        {
          v381 = a3 == 81 ? *v353 * v555 - v378 : *(v369 + 4 * v379);
          if (v381 == v377)
          {
            v382 = &v557[v365++];
            *v382 = v374;
            v382[1] = v379;
          }
        }

        ++v374;
        v237 = __CFADD__(v372++, 1);
      }

      while (!v237);
      v371 = v341;
    }

    if (v345 > v346)
    {
      v383 = *(v554 + 192);
      do
      {
        if (v555 >= 1)
        {
          v384 = *(v383 + 4 * v346) * v555;
          v385 = v384 + v555;
          v386 = v384;
          do
          {
            v387 = *(a17 + 4 * v386);
            v388 = -v387;
            if (v387 <= 0 && v364 > v388)
            {
              v390 = a3 == 81 ? *v353 * v555 - v387 : *(v369 + 4 * v388);
              if (v386 == v390)
              {
                v391 = &v557[v365++];
                *v391 = v371;
                v391[1] = v388;
              }
            }

            ++v386;
            ++v371;
          }

          while (v386 < v385);
        }

        ++v346;
      }

      while (v346 != v345);
    }

    if (v337 < 1)
    {
      v97 = v554;
      v325 = v555;
      if (!v365)
      {
        goto LABEL_521;
      }

LABEL_462:
      v398 = (v525 - v367) >> 2;
      v399 = &v557[v514];
      v400 = 0;
      if (v552 >= v341)
      {
        v411 = v552;
        v404 = v535;
        v405 = v540;
        LODWORD(v406) = v529;
      }

      else
      {
        v401 = v552 - v341;
        v402 = (v503 + 4 * v552);
        v403 = v552;
        v404 = v535;
        v405 = v540;
        LODWORD(v406) = v529;
        do
        {
          v408 = *v402++;
          v407 = v408;
          if (v408 < 0)
          {
            v407 = -v407;
          }

          v409 = *(v21 + 4 * v407);
          if ((v409 & 0x80000000) == 0 && v409 < v398)
          {
            v346 = v367[v409];
            if (v346 == v407)
            {
              v410 = &v543[v400++];
              *v410 = v403;
              v410[1] = v409;
            }
          }

          ++v403;
          v237 = __CFADD__(v401++, 1);
        }

        while (!v237);
        v411 = v341;
      }

      if (v350 > v351)
      {
        v412 = *(v97 + 208);
        do
        {
          if (v325 >= 1)
          {
            v413 = *(v412 + 4 * v351) * v325;
            v414 = v413;
            v415 = v413 + v325;
            do
            {
              v346 = *(v21 + 4 * v414);
              if ((v346 & 0x80000000) == 0 && v346 < v398 && v414 == v367[v346])
              {
                v416 = &v543[v400++];
                *v416 = v411;
                v416[1] = v346;
              }

              ++v414;
              ++v411;
            }

            while (v414 < v415);
          }

          ++v351;
        }

        while (v351 != v350);
      }

      if (v406 >= 1)
      {
        v406 = v406;
        do
        {
          v418 = *v358++;
          v417 = v418;
          v419 = *(v21 + 4 * v418);
          if ((v419 & 0x80000000) == 0 && v419 < v398 && v367[v419] == v417)
          {
            v420 = &v543[v400++];
            *v420 = v411;
            v420[1] = v419;
          }

          ++v411;
          --v406;
        }

        while (v406);
      }

      if (v400)
      {
        v421 = v552;
        v422 = v552 * v365;
        if (a11[1] < (v552 * v365))
        {
          v423 = v404;
          if (*a11)
          {
            (*(v97 + 32))(*a11, v346, v97, v543);
            v97 = v554;
          }

          v424 = (*(v97 + 24))(4 * v422);
          v97 = v554;
          *a11 = v424;
          a11[1] = v422;
          v399 = &v557[v514];
          v421 = v552;
          v404 = v423;
          v405 = v540;
        }

        v425 = v421;
        v426 = a12;
        v427 = v517;
        if (v421 >= 1)
        {
          v428 = 0;
          v429 = *a11;
          do
          {
            v430 = v557;
            v431 = v429;
            v432 = v365;
            do
            {
              v433 = *v430++;
              *v431++ = *(v517 + 4 * v428 * v507 + 4 * v433);
              --v432;
            }

            while (v432);
            ++v428;
            v429 += v365;
          }

          while (v428 != v425);
        }

        v434 = v552;
        v435 = v552 * v400;
        if (a12[1] < (v552 * v400))
        {
          if (*a12)
          {
            (*(v97 + 32))(*a12, a12, v97, v399);
            v435 = v552 * v400;
            v97 = v554;
          }

          v436 = v435;
          v437 = (*(v97 + 24))(4 * v435);
          v97 = v554;
          v426 = a12;
          *a12 = v437;
          a12[1] = v436;
          v399 = &v557[v514];
          v434 = v552;
          v427 = v517;
          v404 = v535;
          v405 = v540;
        }

        if (v434 >= 1)
        {
          v438 = 0;
          v439 = 0;
          do
          {
            v440 = (*v426 + v438);
            v441 = v399;
            v442 = v400;
            do
            {
              v443 = *v441++;
              v444 = v404 + 4 * v439 * v405 + 4 * (v443 - v341);
              v445 = (v427 + 4 * v439 + 4 * v443 * v507);
              if (v443 >= v341)
              {
                v445 = v444;
              }

              *v440++ = *v445;
              --v442;
            }

            while (v442);
            ++v439;
            v438 += 4 * v400;
          }

          while (v439 != v425);
        }

        v446 = v400 * v365;
        v447 = a13;
        v448 = *a13;
        if (a13[1] < v446)
        {
          if (v448)
          {
            (*(v97 + 32))(v448, v426, v97, v399);
            v97 = v554;
          }

          v447 = a13;
          *a13 = (*(v97 + 24))(4 * v446);
          a13[1] = v446;
        }

        cblas_sgemm_NEWLAPACK();
        v449 = 0;
        v450 = *v447;
        v97 = v554;
        v325 = v555;
        do
        {
          v451 = &v510[4 * SHIDWORD(v543[v449])];
          v452 = v557;
          v453 = v450;
          v454 = v365;
          do
          {
            v455 = *v453++;
            v456 = *(v452 + 1) * v318;
            *&v451[4 * v456] = v455 + *&v451[4 * v456];
            ++v452;
            --v454;
          }

          while (v454);
          ++v449;
          v450 += v365;
        }

        while (v449 != v400);
        v513 = *(v554 + 240);
      }

      goto LABEL_521;
    }

    v337 = v337;
    v97 = v554;
    v325 = v555;
    do
    {
      v393 = *v356++;
      v392 = v393;
      v394 = *(a17 + 4 * v393);
      v395 = -v394;
      v396 = v394 > 0 || v364 <= v395;
      if (!v396 && *(v370 + 4 * v395) == v392)
      {
        v397 = &v557[v365++];
        *v397 = v371;
        v397[1] = v395;
      }

      ++v371;
      --v337;
    }

    while (v337);
    if (v365)
    {
      goto LABEL_462;
    }

LABEL_521:
    v457 = (v513 + 8 * v538);
    v458 = *v457;
    v459 = v457[1];
    if (*v457 >= v459)
    {
      v306 = v522;
      v191 = v549;
    }

    else
    {
      v460 = *(v97 + 256);
      v461 = *a14;
      v306 = v522;
      v191 = v549;
      do
      {
        if (*(v460 + v458))
        {
          v462 = *(*(v97 + 248) + 4 * v458);
          if (*(v461 + 4 * v462) < *(a14 + 4))
          {
            v522[v191++] = v462;
            *(v461 + 4 * v462) = *(a14 + 4);
          }
        }

        ++v458;
      }

      while (v459 != v458);
    }
  }

  if (v563 > 1)
  {
    cblas_strsm_NEWLAPACK();
    v97 = v554;
  }

LABEL_532:
  v463 = v555;
  if ((v520 & 1) == 0 && v501[1] != *v501)
  {
    sub_23672A9A0(a1, &v559, v97, v555, v544);
    v463 = v555;
    v97 = v554;
  }

  v464 = v563;
  if (v563 >= 1)
  {
    v465 = 0;
    v467 = *v501;
    v466 = v501[1];
    v468 = v466 - *v501;
    v469 = *a9;
    v470 = *(&v563 + 1);
    v471 = v564;
    if (v468 <= 1)
    {
      v468 = 1;
    }

    do
    {
      if (v466 != v467)
      {
        v472 = v468;
        v473 = v467;
        v474 = v469;
        do
        {
          v475 = *v474++;
          v476 = v475;
          v477 = *v473++;
          *(v470 + 4 * v471 * v465 + 4 * *(v544 + 4 * v477)) = v476;
          --v472;
        }

        while (v472);
      }

      ++v465;
      v469 += (v500 >> 2);
    }

    while (v465 != v464);
  }

  if ((v520 & 0x100000000) == 0 && v518[1] != *v518)
  {
    sub_23672AA5C(a1, &v559, v97, v463, v498);
  }

  if (v464 >= 1)
  {
    v478 = 0;
    v479 = 0;
    v481 = *v518;
    v480 = v518[1];
    v482 = v480 - *v518;
    v483 = v562;
    v484 = *(&v564 + 1);
    v485 = v565;
    v486 = *(&v563 + 1);
    v487 = v564;
    if (v482 <= 1)
    {
      v482 = 1;
    }

    do
    {
      if (v480 != v481)
      {
        v488 = *a10 + v478;
        v489 = v482;
        v490 = v481;
        do
        {
          v491 = *v490++;
          v492 = *(v498 + 4 * v491);
          v184 = v492 < v483;
          LODWORD(v491) = *v488++;
          v493 = v491;
          v494 = v484 + 4 * v485 * v479 + 4 * (v492 - v483);
          v495 = (v486 + 4 * v479 + 4 * v487 * v492);
          if (!v184)
          {
            v495 = v494;
          }

          *v495 = v493;
          --v489;
        }

        while (v489);
      }

      ++v479;
      v478 += 4 * v318;
    }

    while (v479 != v464);
  }
}

uint64_t sub_23675DB04(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int *a8, int *a9, uint64_t a10, int a11, void *a12, uint64_t *a13, float **a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = a6;
  v28 = a5;
  v29 = a2;
  v659 = *MEMORY[0x277D85DE8];
  v604 = *(&off_28499C2B0 + a4 - 81);
  v31 = *(a5 + 56);
  v32 = 4 * v31;
  v605 = 4 * v31 + 7;
  v631 = a23 + (v605 & 0xFFFFFFFFFFFFFFF8);
  v613 = v631 + (v605 & 0xFFFFFFFFFFFFFFF8);
  v607 = v31;
  v608 = (v613 + 8 * v31);
  v33 = &v608[v31];
  v34 = (v33 + (v605 & 0xFFFFFFFFFFFFFFF8) + (v605 & 0xFFFFFFFFFFFFFFF8));
  v656 = 0u;
  v657 = 0u;
  v654 = 0u;
  v655 = 0u;
  v652 = 0u;
  v653 = 0u;
  v35 = a1;
  v36 = a1 + 1;
  v37 = *(v28 + 184);
  v38 = *(*(v28 + 176) + 4 * v36) - *(*(v28 + 176) + 4 * a1);
  v39 = v38 * a6;
  HIDWORD(v652) = v38 * a6;
  v40 = 8 * a1;
  *(&v653 + 1) = *(a7[14] + v40) + 8;
  v616 = v36;
  v41 = 8 * v36;
  LODWORD(v37) = *(v37 + 8 * v36) - *(v37 + v40);
  v42 = *(v28 + 168);
  LODWORD(v652) = (v38 + v37) * a6;
  v43 = (*(*(v28 + 200) + v41) - *(*(v28 + 200) + v40)) * a6;
  DWORD1(v652) = v43 + v38 * a6;
  v614 = v34 + (v605 & 0xFFFFFFFFFFFFFFF8) + (v605 & 0xFFFFFFFFFFFFFFF8);
  v606 = v42;
  *&v654 = v652;
  *(&v654 + 1) = *(&v653 + 1) + 4 * v652 * (v38 * a6);
  v624 = v614 + 8 * v42;
  v600 = v624 + (v605 & 0xFFFFFFFFFFFFFFF8);
  if (a4 != 82)
  {
    v32 = 0;
  }

  v603 = v32;
  if (a4 == 82)
  {
    v44 = v600 + (v605 & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v44 = 0;
  }

  v602 = v44;
  *&v655 = v43;
  v644 = v28;
  v645 = a1;
  if (a4 != 81)
  {
    v46 = *(&v653 + 1) + 4 * v652 * v39 + 4 * v43 * v39;
    *(&v655 + 1) = v46;
    *&v656 = v46 + 4 * v39;
    if (a4 == 83)
    {
      v646 = a2;
      sub_236759FCC(v658, a1, 1, 83, v28, a6, a7, a10, (v33 + (v605 & 0xFFFFFFFFFFFFFFF8)), v31 & 0x3FFFFFFFFFFFFFFFLL, (v34 + (v605 & 0xFFFFFFFFFFFFFFF8)), v31 & 0x3FFFFFFFFFFFFFFFLL);
      v48 = v658[0];
      v599 = v658[1];
      sub_236759FCC(v658, a1, 2, 83, v28, a6, a7, a10, v33, v607 & 0x3FFFFFFFFFFFFFFFLL, v34, v607 & 0x3FFFFFFFFFFFFFFFLL);
      v49 = 0;
      v51 = *(&v658[0] + 1);
      v50 = *&v658[0];
      v598 = *&v658[1];
      v45 = DWORD2(v658[1]);
      *(a7[10] + 4 * v645) = DWORD2(v658[0]);
      *(a7[11] + 4 * v645) = DWORD2(v48);
      v52 = a7[9];
      *(v52 + 4 * v645) = 0;
      v53 = *(v28 + 240);
      v54 = *(v53 + 8 * v645);
      v55 = *(v53 + 8 * v616);
      v27 = a6;
      if (v54 < v55)
      {
        v49 = 0;
        v56 = *(v28 + 256);
        do
        {
          if (*(v56 + v54) == 3)
          {
            v57 = *(*(v28 + 248) + 4 * v54);
            v49 += *(v52 + 4 * v57) + (*(*(v28 + 176) + 4 * v57 + 4) - *(*(v28 + 176) + 4 * v57)) * a6 - *(a7[8] + 4 * v57);
            *(v52 + 4 * v645) = v49;
          }

          ++v54;
        }

        while (v55 != v54);
      }

      if (v49 > 0 || *(&v48 + 1) || v51)
      {
        v58 = SHIDWORD(v652);
        v59 = HIDWORD(v652) + v49;
        v60 = v49 + v51 + v652;
        v61 = v49 + DWORD2(v48) + DWORD1(v652);
        v62 = 4 * (*(&v48 + 1) + v51 + 2 * v59 + v60 * v59 + v61 * v59) + 8;
        v63 = a7[14];
        v64 = *(v63 + 8 * v645);
        if (v62 > *v64)
        {
          v632 = SHIDWORD(v652);
          v633 = v50;
          if (*v64)
          {
            (*(v28 + 32))();
          }

          *(a7[14] + 8 * v645) = (*(v28 + 24))(4 * (*(&v48 + 1) + v51 + 2 * v59 + v60 * v59 + v61 * v59) + 8);
          v63 = a7[14];
          v64 = *(v63 + 8 * v645);
          if (!v64)
          {
            v582 = *(v28 + 40);
            if (!v582)
            {
              v583 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v583)
              {
                sub_23672B14C(v583, v584, v585, v586, v587, v588, v589, v590);
              }

              _SparseTrap();
            }

            memset(&v658[14] + 10, 0, 22);
            *(&v658[13] + 10) = 0u;
            *(&v658[12] + 10) = 0u;
            *(&v658[11] + 10) = 0u;
            *(&v658[10] + 10) = 0u;
            *(&v658[9] + 10) = 0u;
            *(&v658[8] + 10) = 0u;
            *(&v658[7] + 10) = 0u;
            *(&v658[6] + 10) = 0u;
            memset(&v658[3] + 10, 0, 48);
            strcpy(v658, "Failed to allocate additional storage for delayed pivots\n");
            v582(v658);
            return 4294967293;
          }

          *v64 = v62;
          v52 = a7[9];
          v49 = *(v52 + 4 * v645);
          v27 = a6;
          v58 = v632;
          v50 = v633;
        }

        v65 = v64 + 4 * (v60 - v59 + v61) * v59 + 8;
        v66 = (v65 + 4 * v59);
        v67 = &v66[4 * v51];
        if (v49 >= 1)
        {
          v68 = *(v28 + 240);
          v69 = *(v68 + 8 * v645);
          v70 = *(v68 + 8 * v616);
          if (v69 < v70)
          {
            v71 = &v67[4 * v58];
            v72 = *(v28 + 256);
            v73 = v65 + 4 * v58;
            do
            {
              if (*(v72 + v69) == 3)
              {
                v74 = *(*(v28 + 248) + 4 * v69);
                v75 = *(v52 + 4 * v74) + (*(*(v28 + 176) + 4 * (v74 + 1)) - *(*(v28 + 176) + 4 * v74)) * v27;
                v76 = *(a7[8] + 4 * v74);
                if (v76 < v75)
                {
                  v77 = 0;
                  v78 = *(a7[10] + 4 * v74);
                  v79 = v75;
                  v80 = *(v63 + 8 * v74) + 8;
                  v81 = 4 * (v78 + v75 + (*(*(v28 + 184) + 8 * (v74 + 1)) - *(*(v28 + 184) + 8 * v74)) * v27) + 4 * (*(a7[11] + 4 * v74) + (*(*(v28 + 200) + 8 * (v74 + 1)) - *(*(v28 + 200) + 8 * v74)) * v27);
                  v82 = v80 + v81 * v75 + 4 * v76;
                  v83 = v80 + (v81 + 4) * v79 + 4 * v76 + 4 * v78;
                  v84 = v76 - v79;
                  do
                  {
                    v85 = *(v82 + v77);
                    if (v85 < 0)
                    {
                      v85 = -v85;
                    }

                    *(v73 + v77) = v85;
                    v86 = *(v83 + v77);
                    if (v86 < 0)
                    {
                      v86 = -v86;
                    }

                    *&v71[v77] = v86;
                    v77 += 4;
                    v87 = __CFADD__(v84++, 1);
                  }

                  while (!v87);
                  v73 += v77;
                  v71 += v77;
                }
              }

              ++v69;
            }

            while (v69 != v70);
          }
        }

        if (v51)
        {
          memcpy(v66, v50, 4 * v51);
          v27 = a6;
        }

        if (*(&v48 + 1))
        {
          memcpy(&v67[4 * v59], v48, 4 * *(&v48 + 1));
          v27 = a6;
        }

        v35 = v645;
        v88 = *(a7[9] + 4 * v645);
        v89 = *(a7[10] + 4 * v645);
        v90 = *(a7[11] + 4 * v645);
        v91 = *(a7[14] + 8 * v645) + 8;
        v92 = v88 + (*(*(v28 + 176) + 4 * v616) - *(*(v28 + 176) + 4 * v645)) * v27;
        v93 = *(a7[8] + 4 * v645);
        v94 = (*(*(v28 + 200) + v41) - *(*(v28 + 200) + 8 * v645)) * v27;
        v95 = v92 + v90 + v94;
        v96 = (v92 + v89 + (*(*(v28 + 184) + v41) - *(*(v28 + 184) + 8 * v645)) * v27);
        v97 = v91 + 4 * v96 * v92;
        v98 = v94 + v90;
        v46 = v97 + 4 * v98 * v92;
        v99 = v46 + 4 * v92;
        LODWORD(v652) = v92 + v89 + (*(*(v28 + 184) + v41) - *(*(v28 + 184) + 8 * v645)) * v27;
        DWORD1(v652) = v95;
        if (v89 <= 0)
        {
          v100 = 0;
        }

        else
        {
          v100 = v46 + 4 * v92;
        }

        *(&v652 + 1) = __PAIR64__(v92, v88);
        v101 = v99 + 4 * v89 + 4 * v92;
        if (v90 <= 0)
        {
          v101 = 0;
        }

        *&v653 = v93;
        *(&v653 + 1) = v91;
        *&v654 = v96;
        *(&v654 + 1) = v91 + 4 * v96 * v92;
        *&v655 = v98;
        *(&v655 + 1) = v97 + 4 * v98 * v92;
        *&v656 = v99 + 4 * v89;
        *(&v656 + 1) = __PAIR64__(v90, v89);
        *&v657 = v100;
        *(&v657 + 1) = v101;
      }

      else
      {
        v46 = *(&v655 + 1);
        if (!*(&v655 + 1))
        {
          v47 = 1;
          v35 = v645;
          v29 = v646;
          goto LABEL_54;
        }

        v35 = v645;
      }

      v29 = v646;
    }

    else
    {
      v599 = 0uLL;
      v45 = 0;
      v598 = 0;
    }

    if (SHIDWORD(v652) > SDWORD2(v652))
    {
      v102 = 0;
      v103 = *(v28 + 176);
      v104 = v656;
      do
      {
        *(v46 + 4 * v102) = v102 + *(v103 + 4 * v35) * v27;
        *(v104 + 4 * v102) = v102 + *(v103 + 4 * v35) * v27;
        ++v102;
      }

      while (v102 < SHIDWORD(v652) - SDWORD2(v652));
    }

    v47 = 0;
    goto LABEL_54;
  }

  v599 = 0uLL;
  v45 = 0;
  v598 = 0;
  v46 = 0;
  v47 = 1;
LABEL_54:
  v105 = v652;
  if (v652 >= 1)
  {
    v106 = 0;
    v107 = v657;
    do
    {
      if (v106 >= SHIDWORD(v652))
      {
        v109 = v105 - SDWORD2(v656);
        if (v106 >= v109)
        {
          v108 = *(v107 - 4 * v109 + 4 * v106);
        }

        else
        {
          v108 = (v106 - HIDWORD(v652)) % v27 + *(*(v28 + 192) + 4 * *(*(v28 + 184) + 8 * v35) + 4 * ((v106 - HIDWORD(v652)) / v27)) * v27;
        }
      }

      else if (v47)
      {
        v108 = v106 + *(*(v28 + 176) + 4 * v35) * v27;
      }

      else
      {
        v108 = *(v46 + 4 * v106);
      }

      if (v108 < 0)
      {
        v108 = -v108;
      }

      *(a23 + 4 * v108) = v106++;
      v105 = v652;
    }

    while (v106 < v652);
  }

  v110 = DWORD1(v652);
  if (SDWORD1(v652) >= 1)
  {
    v111 = 0;
    v112 = *(&v657 + 1);
    v113 = v656;
    do
    {
      if (v111 >= SHIDWORD(v652))
      {
        v115 = v110 - SHIDWORD(v656);
        if (v111 >= v115)
        {
          v114 = *(v112 - 4 * v115 + 4 * v111);
        }

        else
        {
          v114 = (v111 - HIDWORD(v652)) % v27 + *(*(v28 + 208) + 4 * *(*(v28 + 200) + 8 * v35) + 4 * ((v111 - HIDWORD(v652)) / v27)) * v27;
        }
      }

      else if (v47)
      {
        v114 = v111 + *(*(v28 + 176) + 4 * v35) * v27;
      }

      else
      {
        v114 = *(v113 + 4 * v111);
      }

      if (v114 < 0)
      {
        v114 = -v114;
      }

      *(v631 + 4 * v114) = v111++;
      v110 = SDWORD1(v652);
    }

    while (v111 < SDWORD1(v652));
  }

  v597 = v45;
  v116 = 4 * SHIDWORD(v652);
  bzero(*(&v653 + 1), v116 * v654);
  bzero(*(&v654 + 1), v116 * v655);
  sub_23675A4D4(v29, a1, SHIDWORD(v652), a3, v28, *(&v653 + 1), v654, *(&v654 + 1), v655, a23, v631, a7[12], a7[13]);
  if (*(&v652 + 4) > 0)
  {
    v117 = v645;
    v118 = (*(v28 + 240) + 8 * v645);
    v119 = *v118;
    if (*v118 < v118[1])
    {
      v120 = v110;
      v121 = a7;
      v122 = a6;
      v123 = a19;
      v124 = a15;
      while (1)
      {
        if (*(*(v28 + 256) + v119) != 3)
        {
          goto LABEL_232;
        }

        v125 = *(*(v28 + 248) + 4 * v119);
        if (*(a17 + v125))
        {
          goto LABEL_232;
        }

        if (a4 == 83)
        {
          v126 = *(v121[9] + 4 * v125);
          v127 = *(v121[10] + 4 * v125);
          v128 = *(v121[11] + 4 * v125);
        }

        else
        {
          v126 = 0;
          v127 = 0;
          v128 = 0;
        }

        v634 = *(v28 + 176);
        v129 = v126 + (*(v634 + 4 * (v125 + 1)) - *(v634 + 4 * v125)) * v122;
        v130 = v129;
        if (a4 == 83)
        {
          v130 = *(v121[8] + 4 * v125);
        }

        __src = *(v28 + 184);
        v131 = *(v121[14] + 8 * v125) + 8 + 4 * (v129 + v127 + (__src[2 * v125 + 2] - __src[2 * v125]) * v122) * v129 + 4 * (v128 + (*(*(v28 + 200) + 8 * (v125 + 1)) - *(*(v28 + 200) + 8 * v125)) * v122) * v129;
        v132 = v131 + 4 * v129 + 4 * v127;
        v133 = a4 == 81 ? 0 : v131;
        v134 = a4 == 81 ? 0 : v132;
        v619 = v134;
        if (v130 == v129)
        {
          goto LABEL_232;
        }

        v609 = v119;
        v617 = v129;
        v135 = *(a3 + 28);
        v628 = v121[12];
        v629 = (v135 * v135);
        if (v628)
        {
          v611 = v121[13];
          if (v130 >= v129)
          {
            sub_23672AB18(v124);
          }

          else
          {
            v594 = v133;
            v136 = v130;
            v137 = 4 * v135;
            v592 = v130;
            do
            {
              LODWORD(v138) = *(v134 + 4 * v136);
              if (v138 >= 0)
              {
                v138 = v138;
              }

              else
              {
                v138 = -v138;
              }

              if (*(a21 + 4 * v138) >= a1)
              {
                v139 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v138 / v135)));
                v140 = *v139;
                v141 = v139[1];
                if (v140 < v141)
                {
                  v625 = *(v631 + 4 * v138);
                  v142 = v138 % v135;
                  v143 = *(a3 + 16);
                  v144 = v611 + 4 * (v138 * v135);
                  v145 = v652;
                  do
                  {
                    v146 = *(v143 + 4 * v140);
                    if ((v146 & 0x80000000) == 0 && v146 < *a3 && v135 != 0)
                    {
                      v148 = 0;
                      v149 = 0;
                      v150 = *(*(v28 + 136) + 4 * v146) * v135;
                      v151 = HIDWORD(v652);
                      v152 = v145 - DWORD2(v656);
                      v153 = v657;
                      v154 = *(&v655 + 1);
                      v155 = *(&v653 + 1) + 4 * v654 * v625;
                      v156 = (v628 + v137 * v150);
                      v157 = a19 + 4 * v150;
                      v158 = a23 + 4 * v150;
                      do
                      {
                        v159 = *(v158 + v148);
                        if (v159 < v145)
                        {
                          v160 = v159;
                          if (v159 >= v151)
                          {
                            if (v159 >= v152)
                            {
                              v161 = *(v153 + 4 * (v159 - v152));
                            }

                            else
                            {
                              v28 = v644;
                              v161 = (v159 - v151) % v135 + *(*(v644 + 192) + 4 * *&__src[2 * v645] + 4 * ((v159 - v151) / v135)) * v135;
                            }
                          }

                          else if ((v159 & 0x80000000) != 0)
                          {
                            v161 = 0x7FFFFFFF;
                          }

                          else
                          {
                            v161 = v154 ? *(v154 + 4 * v159) : v159 + *(v634 + 4 * v645) * v135;
                          }

                          if (v150 == v161 && *(v157 + v148) >= a1)
                          {
                            *(v155 + 4 * v160) = (*v156 * *(*(a3 + 32) + 4 * v140 * v629 + 4 * v149 + 4 * (v142 * v135))) * *(v144 + 4 * v142);
                          }
                        }

                        ++v149;
                        v156 += v135 + 1;
                        v148 += 4;
                        LODWORD(v150) = v150 + 1;
                      }

                      while (v137 != v148);
                    }

                    ++v140;
                  }

                  while (v140 != v141);
                }
              }

              ++v136;
            }

            while (v136 != v617);
            v124 = a15;
            sub_23672AB18(a15);
            v162 = *a15;
            v163 = *(a15 + 4);
            v164 = v592 - v617;
            v165 = (v594 + 4 * v592);
            do
            {
              v167 = *v165++;
              v166 = v167;
              if (v167 < 0)
              {
                v166 = -v166;
              }

              *(v162 + 4 * v166) = v163;
              v87 = __CFADD__(v164++, 1);
            }

            while (!v87);
            v120 = DWORD1(v652);
            v121 = a7;
            v117 = v645;
          }

          v122 = a6;
          v123 = a19;
          if (v120 < 1)
          {
            goto LABEL_231;
          }

          v200 = 0;
          v201 = SHIDWORD(v652);
          v202 = SHIDWORD(v652) - SDWORD2(v652);
          v203 = v120;
          v620 = v120;
          __srca = (v120 - SHIDWORD(v656));
          v626 = *(&v657 + 1);
          v204 = *(&v655 + 1);
          v635 = v656;
          v205 = 4 * v629;
          do
          {
            if (v200 >= v201 || v200 < v202)
            {
              if (v200 >= v201)
              {
                v206 = a21;
                v207 = v200 >= __srca ? *(v626 + 4 * (v200 - __srca)) : (v200 - v201) % v135 + *(*(v28 + 208) + 4 * *(*(v28 + 200) + 8 * v645) + 4 * ((v200 - v201) / v135)) * v135;
              }

              else
              {
                v206 = a21;
                v207 = v204 ? *(v635 + 4 * v200) : v200 + *(*(v28 + 176) + 4 * v645) * v135;
              }

              if (*(v206 + 4 * v207) >= a1)
              {
                v208 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v207 / v135)));
                v209 = *v208;
                v210 = v208[1];
                if (v209 < v210)
                {
                  v211 = *(a3 + 16);
                  v212 = v611 + 4 * v207 * v135;
                  v213 = v207 % v135;
                  v214 = v205 * v209 + 4 * v207 % v135 * v135;
                  do
                  {
                    v215 = *(v211 + 4 * v209);
                    if ((v215 & 0x80000000) == 0 && v215 < *a3 && v135 != 0)
                    {
                      v217 = *(*(v28 + 136) + 4 * v215) * v135;
                      v218 = *a15;
                      v219 = *(a15 + 4);
                      v220 = v655;
                      v221 = *(&v654 + 1) + 4 * (v200 - v201);
                      v222 = *(&v653 + 1) + 4 * v654 * v200;
                      v223 = (v628 + 4 * v135 * v217);
                      v224 = v135;
                      v225 = v214;
                      do
                      {
                        if (*(a19 + 4 * v217) >= a1 && v217 < *(*(v28 + 176) + 4 * v645) * v135 && *(v218 + 4 * v217) >= v219)
                        {
                          v226 = *(a23 + 4 * v217);
                          v227 = (v222 + 4 * v226);
                          v228 = (v221 + 4 * v220 * v226);
                          if (v200 < v201)
                          {
                            v228 = v227;
                          }

                          v28 = v644;
                          *v228 = (*v223 * *(*(a3 + 32) + v225)) * *(v212 + 4 * v213);
                        }

                        v225 += 4;
                        v223 += v135 + 1;
                        ++v217;
                        --v224;
                      }

                      while (v224);
                    }

                    ++v209;
                    v214 += v205;
                  }

                  while (v209 != v210);
                }
              }
            }

            ++v200;
          }

          while (v200 != v203);
          v121 = a7;
          v117 = v645;
          v123 = a19;
          v122 = a6;
        }

        else
        {
          if (v130 >= v129)
          {
            sub_23672AB18(v124);
          }

          else
          {
            v595 = v133;
            v168 = v130;
            v169 = v130;
            do
            {
              LODWORD(v170) = *(v619 + 4 * v169);
              if (v170 >= 0)
              {
                v170 = v170;
              }

              else
              {
                v170 = -v170;
              }

              if (*(a21 + 4 * v170) >= a1)
              {
                v171 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v170 / v135)));
                v172 = *v171;
                v173 = v171[1];
                if (*v171 < v173)
                {
                  v174 = *(v631 + 4 * v170);
                  v175 = *(a3 + 16);
                  v176 = v170 % v135 * v135;
                  v177 = v652;
                  do
                  {
                    v178 = *(v175 + 4 * v172);
                    if ((v178 & 0x80000000) == 0 && v178 < *a3 && v135 != 0)
                    {
                      v180 = 0;
                      v181 = *(*(v28 + 136) + 4 * v178) * v135;
                      v182 = HIDWORD(v652);
                      v183 = v177 - DWORD2(v656);
                      v184 = v657;
                      v185 = *(&v653 + 1) + 4 * v654 * v174;
                      v186 = *(&v655 + 1);
                      v187 = (v123 + 4 * v181);
                      v188 = (a23 + 4 * v181);
                      v189 = v135;
                      do
                      {
                        v191 = *v188++;
                        v190 = v191;
                        if (v191 < v177)
                        {
                          v192 = v190;
                          if (v190 >= v182)
                          {
                            v193 = v190 >= v183 ? *(v184 + 4 * (v190 - v183)) : (v190 - v182) % v135 + *(*(v28 + 192) + 4 * *&__src[2 * v117] + 4 * ((v190 - v182) / v135)) * v135;
                          }

                          else if ((v190 & 0x80000000) != 0)
                          {
                            v193 = 0x7FFFFFFF;
                          }

                          else
                          {
                            v193 = v186 ? *(v186 + 4 * v190) : v190 + *(v634 + 4 * v117) * v135;
                          }

                          if (v181 == v193 && *v187 >= a1)
                          {
                            *(v185 + 4 * v192) = *(*(a3 + 32) + 4 * v172 * v629 + 4 * v180 + 4 * v176);
                          }
                        }

                        ++v180;
                        ++v187;
                        ++v181;
                        --v189;
                      }

                      while (v189);
                    }

                    ++v172;
                  }

                  while (v172 != v173);
                }
              }

              ++v169;
            }

            while (v169 != v617);
            v124 = a15;
            sub_23672AB18(a15);
            v194 = *a15;
            v195 = *(a15 + 4);
            v196 = v168 - v617;
            v197 = (v595 + 4 * v168);
            do
            {
              v199 = *v197++;
              v198 = v199;
              if (v199 < 0)
              {
                v198 = -v198;
              }

              *(v194 + 4 * v198) = v195;
              v87 = __CFADD__(v196++, 1);
            }

            while (!v87);
            v120 = DWORD1(v652);
            v121 = a7;
          }

          v122 = a6;
          v123 = a19;
          if (v120 < 1)
          {
LABEL_231:
            v119 = v609;
            goto LABEL_232;
          }

          v229 = 0;
          v230 = SHIDWORD(v652);
          v231 = SHIDWORD(v652) - SDWORD2(v652);
          v232 = v120;
          v620 = v120;
          v233 = v120 - SHIDWORD(v656);
          v234 = *(&v657 + 1);
          v235 = *(&v655 + 1);
          v236 = v656;
          v237 = 4 * v629;
          do
          {
            if (v229 >= v230 || v229 < v231)
            {
              if (v229 >= v230)
              {
                v238 = v229 >= v233 ? *(v234 + 4 * (v229 - v233)) : (v229 - v230) % v135 + *(*(v28 + 208) + 4 * *(*(v28 + 200) + 8 * v117) + 4 * ((v229 - v230) / v135)) * v135;
              }

              else
              {
                v238 = v235 ? *(v236 + 4 * v229) : v229 + *(*(v28 + 176) + 4 * v117) * v135;
              }

              if (*(a21 + 4 * v238) >= a1)
              {
                v239 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v238 / v135)));
                v240 = *v239;
                v241 = v239[1];
                if (v240 < v241)
                {
                  v242 = v238 % v135;
                  v243 = *(a3 + 16);
                  v244 = v237 * v240 + 4 * v242 * v135;
                  do
                  {
                    v245 = *(v243 + 4 * v240);
                    if ((v245 & 0x80000000) == 0 && v245 < *a3 && v135 != 0)
                    {
                      v247 = *(*(v28 + 136) + 4 * v245) * v135;
                      v248 = *a15;
                      v249 = *(a15 + 4);
                      v250 = v655;
                      v251 = *(&v654 + 1) + 4 * (v229 - v230);
                      v252 = *(&v653 + 1) + 4 * v654 * v229;
                      v253 = v135;
                      v254 = v244;
                      do
                      {
                        if (*(a19 + 4 * v247) >= a1 && v247 < *(*(v28 + 176) + 4 * v117) * v135 && *(v248 + 4 * v247) >= v249)
                        {
                          v255 = *(a23 + 4 * v247);
                          v256 = (v252 + 4 * v255);
                          v257 = (v251 + 4 * v250 * v255);
                          if (v229 < v230)
                          {
                            v257 = v256;
                          }

                          v117 = v645;
                          *v257 = *(*(a3 + 32) + v254);
                        }

                        v254 += 4;
                        ++v247;
                        --v253;
                      }

                      while (v253);
                    }

                    ++v240;
                    v244 += v237;
                  }

                  while (v240 != v241);
                }
              }
            }

            ++v229;
          }

          while (v229 != v232);
          v121 = a7;
        }

        v124 = a15;
        v119 = v609;
        v120 = v620;
LABEL_232:
        if (++v119 >= *(*(v28 + 240) + 8 * v117 + 8))
        {
          goto LABEL_235;
        }
      }
    }
  }

  LODWORD(v120) = v110;
LABEL_235:
  v258 = a21;
  if (SHIDWORD(v656) >= 1)
  {
    v259 = a7[12];
    v260 = *(a3 + 28);
    v261 = (v260 * v260);
    v262 = v120 - HIDWORD(v656);
    __srcb = *(&v657 + 1);
    if (v259)
    {
      v636 = a7[13];
      if (v260 <= 1)
      {
        v263 = 1;
      }

      else
      {
        v263 = *(a3 + 28);
      }

      v264 = v262;
      v265 = 4 * v261;
      v266 = 4 * *(a3 + 28);
      v267 = v262;
      do
      {
        v268 = __srcb[v267 - v264];
        if (*(v258 + 4 * v268) >= a1)
        {
          v269 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v268 / v260)));
          v270 = *v269;
          v271 = v269[1];
          if (v270 < v271)
          {
            v272 = *(a3 + 16);
            v273 = v636 + 4 * v268 * v260;
            v274 = v268 % v260;
            v275 = v265 * v270 + 4 * v268 % v260 * v260;
            do
            {
              v276 = *(v272 + 4 * v270);
              if ((v276 & 0x80000000) == 0 && v276 < *a3)
              {
                v277 = *(*(v28 + 136) + 4 * v276) * v260;
                v278 = HIDWORD(v652);
                v279 = v655;
                v280 = *(&v654 + 1) + 4 * (v267 - HIDWORD(v652));
                v281 = (v259 + v266 * v277);
                v282 = (a23 + 4 * v277);
                v283 = (a19 + 4 * v277);
                v284 = v263;
                v285 = v275;
                do
                {
                  v286 = *v283++;
                  if (v286 >= a1)
                  {
                    v287 = *v282;
                    if ((v287 & 0x80000000) == 0 && v287 < v278 && v277 == *(*(&v279 + 1) + 4 * v287))
                    {
                      *(v280 + 4 * v279 * v287) = (*v281 * *(*(a3 + 32) + v285)) * *(v273 + 4 * v274);
                    }
                  }

                  v285 += 4;
                  v281 = (v281 + v266 + 4);
                  LODWORD(v277) = v277 + 1;
                  ++v282;
                  --v284;
                }

                while (v284);
              }

              ++v270;
              v275 += v265;
            }

            while (v270 != v271);
          }
        }

        ++v267;
        v258 = a21;
      }

      while (v267 < v120);
    }

    else
    {
      if (v260 <= 1)
      {
        v288 = 1;
      }

      else
      {
        v288 = *(a3 + 28);
      }

      v289 = 4 * v261;
      v290 = v262;
      do
      {
        v291 = __srcb[v290 - v262];
        if (*(a21 + 4 * v291) >= a1)
        {
          v292 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v291 / v260)));
          v293 = *v292;
          v294 = v292[1];
          if (v293 < v294)
          {
            v295 = *(a3 + 16);
            v296 = v289 * v293 + 4 * v291 % v260 * v260;
            do
            {
              v297 = *(v295 + 4 * v293);
              if ((v297 & 0x80000000) == 0 && v297 < *a3)
              {
                v298 = *(*(v28 + 136) + 4 * v297) * v260;
                v299 = HIDWORD(v652);
                v300 = v655;
                v301 = *(&v654 + 1) + 4 * (v290 - HIDWORD(v652));
                v302 = *(&v655 + 1);
                v303 = (a23 + 4 * v298);
                v304 = (a19 + 4 * v298);
                v305 = v288;
                v306 = v296;
                do
                {
                  v307 = *v304++;
                  if (v307 >= a1)
                  {
                    v308 = *v303;
                    if ((v308 & 0x80000000) == 0 && v308 < v299 && v298 == *(v302 + 4 * v308))
                    {
                      *(v301 + 4 * v300 * v308) = *(*(a3 + 32) + v306);
                    }
                  }

                  v306 += 4;
                  ++v298;
                  ++v303;
                  --v305;
                }

                while (v305);
              }

              ++v293;
              v296 += v289;
            }

            while (v293 != v294);
          }
        }

        ++v290;
      }

      while (v290 < v120);
    }
  }

  __srcc = DWORD2(v656);
  if (SDWORD2(v656) >= 1)
  {
    v309 = a7[12];
    v310 = *(a3 + 28);
    v311 = (v310 * v310);
    v312 = (*(v28 + 176) + 4 * v645);
    v313 = v312[1];
    v314 = *v312;
    v315 = *v312 * v310;
    v316 = v313 * v310;
    if (v309)
    {
      if (v315 < v316)
      {
        v317 = 0;
        v637 = a7[13];
        if (v310 <= 1)
        {
          v318 = 1;
        }

        else
        {
          v318 = v310;
        }

        v319 = ((v313 - v314) * v310);
        v320 = 4 * v311;
        v321 = 4 * v310;
        do
        {
          if (*(v258 + 4 * v315) >= a1)
          {
            v322 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v315 / v310)));
            v323 = *v322;
            v324 = v322[1];
            if (*v322 < v324)
            {
              v325 = *(a3 + 16);
              v326 = v652;
              v327 = v652 - __srcc;
              v328 = v320 * v323 + 4 * v315 % v310 * v310;
              do
              {
                v329 = *(v325 + 4 * v323);
                if ((v329 & 0x80000000) == 0 && v329 < *a3)
                {
                  v330 = *(*(v28 + 136) + 4 * v329) * v310;
                  v331 = v657;
                  v332 = *(&v653 + 1) + 4 * v654 * v317;
                  v333 = (v309 + v321 * v330);
                  v334 = (a19 + 4 * v330);
                  v335 = (a23 + 4 * v330);
                  v336 = v318;
                  v337 = v328;
                  do
                  {
                    v339 = *v335++;
                    v338 = v339;
                    v340 = v339 >= v326 || v338 < v327;
                    if (!v340 && v330 == *(v331 + 4 * (v338 - v327)) && *v334 >= a1)
                    {
                      *(v332 + 4 * v338) = (*v333 * *(*(a3 + 32) + v337)) * *(v637 + 4 * v315 * v310 + 4 * (v315 % v310));
                    }

                    v337 += 4;
                    v333 = (v333 + v321 + 4);
                    ++v334;
                    LODWORD(v330) = v330 + 1;
                    --v336;
                  }

                  while (v336);
                }

                ++v323;
                v328 += v320;
              }

              while (v323 != v324);
            }
          }

          ++v315;
          ++v317;
          v258 = a21;
        }

        while (v317 != v319);
      }
    }

    else if (v315 < v316)
    {
      v341 = 0;
      if (v310 <= 1)
      {
        v342 = 1;
      }

      else
      {
        v342 = v310;
      }

      v315 = v315;
      v343 = ((v313 - v314) * v310);
      v344 = 4 * v311;
      do
      {
        if (*(v258 + 4 * v315) >= a1)
        {
          v345 = (*(a3 + 8) + 8 * *(*(v28 + 160) + 4 * (v315 / v310)));
          v346 = *v345;
          v347 = v345[1];
          if (v346 < v347)
          {
            v348 = *(a3 + 16);
            v349 = v652;
            v350 = v652 - __srcc;
            v351 = v344 * v346 + 4 * v315 % v310 * v310;
            do
            {
              v352 = *(v348 + 4 * v346);
              if ((v352 & 0x80000000) == 0 && v352 < *a3)
              {
                v353 = *(*(v28 + 136) + 4 * v352) * v310;
                v354 = *(&v653 + 1) + 4 * v654 * v341;
                v355 = v657;
                v356 = (a19 + 4 * v353);
                v357 = (a23 + 4 * v353);
                v358 = v342;
                v359 = v351;
                do
                {
                  v361 = *v357++;
                  v360 = v361;
                  v362 = v361 >= v349 || v360 < v350;
                  if (!v362 && v353 == *(v355 + 4 * (v360 - v350)) && *v356 >= a1)
                  {
                    *(v354 + 4 * v360) = *(*(a3 + 32) + v359);
                  }

                  v359 += 4;
                  ++v356;
                  ++v353;
                  --v358;
                }

                while (v358);
              }

              ++v346;
              v351 += v344;
            }

            while (v346 != v347);
          }
        }

        ++v315;
        ++v341;
      }

      while (v341 != v343);
    }
  }

  sub_23672AB18(a15);
  v363 = *(v28 + 240);
  v364 = *(v363 + 8 * v645);
  v365 = *(v363 + 8 * v616);
  v366 = v605 >> 3;
  v367 = v365 - v364;
  if (v365 <= v364)
  {
    v367 = 0;
    v376 = a7;
    v377 = a6;
    v371 = v606;
    v370 = v607;
  }

  else
  {
    v368 = *a15;
    v369 = *(a15 + 4);
    v371 = v606;
    v370 = v607;
    v372 = (48 * v366 + 16 * v607 + a23 + 4);
    v373 = (*(v28 + 256) + v364);
    v374 = (*(v28 + 248) + 4 * v364);
    v375 = v367;
    v376 = a7;
    v377 = a6;
    do
    {
      v379 = *v374++;
      v378 = v379;
      LOBYTE(v379) = *v373++;
      *(v372 - 1) = v378;
      *v372 = v379;
      v372 += 8;
      *(v368 + 4 * v378) = v369;
      --v375;
    }

    while (v375);
  }

  v380 = a16;
  v381 = 8 * v371;
  v382 = v652;
  if (v652 < 1)
  {
    LODWORD(v383) = 0;
  }

  else
  {
    v383 = 0;
    v384 = v657;
    v385 = *(&v655 + 1);
    do
    {
      v386 = v383;
      if (v383 >= SHIDWORD(v652))
      {
        v388 = v382 - SDWORD2(v656);
        if (v383 >= v388)
        {
          v387 = *(v384 - 4 * v388 + 4 * v383);
        }

        else
        {
          v387 = (v383 - HIDWORD(v652)) % v377 + *(*(v644 + 192) + 4 * *(*(v644 + 184) + 8 * v645) + 4 * ((v383 - HIDWORD(v652)) / v377)) * v377;
        }
      }

      else if (v385)
      {
        v387 = *(v385 + 4 * v383);
      }

      else
      {
        v387 = v383 + *(*(v644 + 176) + 4 * v645) * v377;
      }

      ++v383;
      *(a23 + v381 + 48 * v366 + 16 * v370 + 4 * v386) = v387;
      v382 = v652;
    }

    while (v386 + 1 < v652);
  }

  v389 = DWORD1(v652);
  if (SDWORD1(v652) < 1)
  {
    LODWORD(v390) = 0;
  }

  else
  {
    v390 = 0;
    v391 = *(&v657 + 1);
    v392 = *(&v655 + 1);
    v393 = v656;
    v394 = a23 + v381 + 56 * v366 + 16 * v370;
    do
    {
      v395 = v390;
      if (v390 >= SHIDWORD(v652))
      {
        v397 = v389 - SHIDWORD(v656);
        if (v390 >= v397)
        {
          v396 = *(v391 - 4 * v397 + 4 * v390);
        }

        else
        {
          v396 = (v390 - HIDWORD(v652)) % v377 + *(*(v644 + 208) + 4 * *(*(v644 + 200) + 8 * v645) + 4 * ((v390 - HIDWORD(v652)) / v377)) * v377;
        }
      }

      else if (v392)
      {
        v396 = *(v393 + 4 * v390);
      }

      else
      {
        v396 = v390 + *(*(v644 + 176) + 4 * v645) * v377;
      }

      ++v390;
      *(v394 + 4 * v395) = v396;
      v389 = DWORD1(v652);
    }

    while (v395 + 1 < SDWORD1(v652));
  }

  sub_23672AB18(a16);
  v398 = a6;
  v399 = v614;
  if (!v367)
  {
    goto LABEL_490;
  }

  v593 = v654;
  v596 = *(&v653 + 1);
  v610 = v655;
  v612 = *(&v654 + 1);
  do
  {
LABEL_352:
    --v367;
    v400 = *(v399 + 8 * v367);
    v401 = *(v380 + 16);
    if (*(*v380 + 4 * v400) >= v401)
    {
      continue;
    }

    *(*v380 + 4 * v400) = v401;
    v649 = v400;
    if (*(a17 + v400))
    {
      goto LABEL_482;
    }

    v402 = v376[8];
    if (v402)
    {
      if (*(v402 + 4 * v400) < 1)
      {
        goto LABEL_482;
      }
    }

    if (a4 == 83)
    {
      v403 = v400;
      v404 = *(v376[9] + 4 * v400);
      v405 = *(v376[10] + 4 * v400);
      v406 = *(v376[11] + 4 * v400);
    }

    else
    {
      v404 = 0;
      v405 = 0;
      v406 = 0;
      v403 = v400;
    }

    v407 = v400 << 32;
    v408 = *(v644 + 176);
    v409 = v407 + 0x100000000;
    v410 = (*(v408 + (v409 >> 30)) - *(v408 + 4 * v403)) * v398;
    v411 = v410 + v404;
    v412 = v410 + v404;
    if (a4 == 83)
    {
      v412 = *(v402 + 4 * v403);
    }

    v413 = v409 >> 32;
    v414 = *(v644 + 184);
    v413 *= 8;
    v415 = *(v414 + 8 * v403);
    v416 = v411 + v405 + (*(v414 + v413) - v415) * v398;
    v417 = *(v644 + 200);
    v418 = *(v417 + v413);
    v419 = *(v417 + 8 * v403);
    v420 = (v418 - v419) * v398;
    v627 = *(v376[14] + 8 * v403) + 8;
    v618 = v420 + v406;
    v621 = v627 + 4 * v416 * v411;
    if (a4 == 81)
    {
      v421 = 0;
      v422 = 0;
      v423 = 0;
      v424 = v405 <= 0 ? 0 : v411;
      v425 = 4 * v424;
      v426 = v406 <= 0 ? 0 : v411;
      v427 = 4 * v426;
    }

    else
    {
      v421 = v627 + 4 * v416 * v411 + 4 * (v420 + v406) * v411;
      v422 = v421 + 4 * v411 + 4 * v405;
      if (v405 <= 0)
      {
        v425 = 0;
      }

      else
      {
        v425 = v421 + 4 * v411;
      }

      v427 = v422 + 4 * v411;
      if (v406 <= 0)
      {
        v427 = 0;
      }

      v423 = a4 == 83 ? *(v376[9] + 4 * v645) : 0;
    }

    v428 = v416;
    if (v412 >= v416)
    {
      goto LABEL_482;
    }

    v429 = 0;
    v630 = 0;
    v638 = 0;
    __srcd = v412;
    v430 = v411 + v406 + v420;
    v431 = v423 + (*(v408 + 4 * v645 + 4) - *(v408 + 4 * v645)) * v398;
    v432 = v428 - v405;
    v433 = v412 - v410 - v404;
    v434 = v425 + 4 * (v412 + v405 - v428);
    do
    {
      v435 = v412 + v429;
      if (v435 >= v411)
      {
        if (v435 >= v432)
        {
          v436 = *(v434 + 4 * v429);
          goto LABEL_389;
        }

        v437 = *(*(v644 + 192) + 4 * v415 + 4 * ((v433 + v429) / v398));
        v438 = (v433 + v429) % v398;
      }

      else
      {
        if (v435 < 0)
        {
          v436 = 0x7FFFFFFF;
          goto LABEL_389;
        }

        if (v421)
        {
          v436 = *(v421 + 4 * v412 + 4 * v429);
          goto LABEL_389;
        }

        v437 = *(v408 + 4 * v649);
        v438 = v412 + v429;
      }

      v436 = v438 + v437 * v398;
LABEL_389:
      if (v436 >= 0)
      {
        v439 = v436;
      }

      else
      {
        v439 = -v436;
      }

      v440 = *(a23 + 4 * v439);
      if (v440 < v383 && *(v624 + 4 * v440) == v439 && *(a19 + 4 * v439) >= a1)
      {
        v441 = (v613 + 8 * v638);
        *v441 = v412 + v429;
        v441[1] = v440;
        v398 = a6;
        if (v440 >= v431)
        {
          v442 = v630;
        }

        else
        {
          v442 = v630 + 1;
        }

        v630 = v442;
        ++v638;
      }

      ++v429;
    }

    while (v412 - v428 + v429);
    v376 = a7;
    v443 = (v631 + (v605 & 0xFFFFFFFFFFFFFFF8));
    v444 = v608;
    v445 = v412;
    if (!v638 || v412 >= v430)
    {
      goto LABEL_482;
    }

    v446 = 0;
    v447 = 0;
    v448 = 0;
    v449 = v430 - v406;
    v450 = v422 + 4 * v412;
    v451 = v412 - v410 - v404;
    v452 = v412 - v430;
    v453 = v427 + 4 * (v412 + v406 - v430);
    while (2)
    {
      v454 = v412 + v446;
      if (v454 >= v411)
      {
        if (v454 < v449)
        {
          v456 = *(*(v644 + 208) + 4 * v419 + 4 * ((v451 + v446) / v398));
          v457 = (v451 + v446) % v398;
          goto LABEL_412;
        }

        v455 = *(v453 + 4 * v446);
      }

      else if (v454 < 0)
      {
        v455 = 0x7FFFFFFF;
      }

      else
      {
        if (v421)
        {
          v455 = *(v450 + 4 * v446);
          goto LABEL_413;
        }

        v456 = *(v408 + 4 * v649);
        v457 = v445 + v446;
LABEL_412:
        v455 = v457 + v456 * v398;
      }

LABEL_413:
      if (v455 >= 0)
      {
        v458 = v455;
      }

      else
      {
        v458 = -v455;
      }

      v459 = *(v631 + 4 * v458);
      if (v459 < v390 && *(v600 + 4 * v459) == v458)
      {
        v458 = *(a21 + 4 * v458);
        if (v458 >= a1)
        {
          v458 = &v608[v448];
          *v458 = v412 + v446;
          *(v458 + 4) = v459;
          v445 = v412;
          if (v459 < v431)
          {
            ++v447;
          }

          ++v448;
        }
      }

      ++v446;
      if (v452 + v446)
      {
        continue;
      }

      break;
    }

    v460 = v638;
    if (v448 && v630 | v447)
    {
      v461 = v445;
      v462 = v627;
      if (v630 >= 1)
      {
        v463 = 0;
        v464 = v631 + (v605 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v465 = (v613 + 8 * v463);
          v466 = v465[1];
          if (v466 >= v431)
          {
            v467 = v464;
            v468 = v463;
            while (++v468 < v638)
            {
              v469 = (v467 + 8);
              v470 = *(v467 + 12);
              v467 += 8;
              if (v470 < v431)
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

        while (v463 != v630);
      }

      if (v447 >= 1)
      {
        v472 = 0;
        v473 = v608;
        do
        {
          v474 = &v608[v472];
          v475 = v474[1];
          if (v475 >= v431)
          {
            v476 = v473;
            v477 = v472;
            while (++v477 < v448)
            {
              v478 = (v476 + 1);
              v479 = *(v476++ + 3);
              if (v479 < v431)
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

        while (v472 != v447);
      }

      v481 = v638 * v445;
      if (a12[1] < (v638 * v445))
      {
        if (*a12)
        {
          (*(v644 + 32))(*a12, v458, v445, v627);
        }

        *a12 = (*(v644 + 24))(4 * v481);
        a12[1] = v481;
        v398 = a6;
        v443 = (v631 + (v605 & 0xFFFFFFFFFFFFFFF8));
        v444 = v608;
        v460 = v638;
        v461 = __srcd;
        v462 = v627;
      }

      if (v461 >= 1)
      {
        v482 = 0;
        v483 = *a12;
        do
        {
          if (v460 >= 1)
          {
            v484 = v443;
            v485 = v483;
            v486 = v460;
            do
            {
              v487 = *v484++;
              *v485++ = *(v462 + 4 * v482 * v428 + 4 * v487);
              --v486;
            }

            while (v486);
          }

          v482 = v482 + 1;
          v483 += v460;
        }

        while (v482 != v461);
      }

      v591 = v460;
      v488 = v448 * v461;
      if (a13[1] < (v448 * v461))
      {
        if (*a13)
        {
          (*(v644 + 32))(*a13, v458, v461, v462);
        }

        v489 = (*(v644 + 24))(4 * v488);
        v444 = v608;
        *a13 = v489;
        a13[1] = v488;
        v398 = a6;
        v460 = v638;
        v461 = __srcd;
        v462 = v627;
      }

      v490 = a13;
      if (v461 >= 1)
      {
        v491 = 0;
        for (i = 0; i != v461; i = i + 1)
        {
          if (v448 >= 1)
          {
            v493 = (*a13 + v491);
            v494 = v444;
            v495 = v448;
            do
            {
              v496 = *v494++;
              v497 = v621 + 4 * i * v618 + 4 * (v496 - v411);
              v498 = (v462 + 4 * i + 4 * v496 * v428);
              if (v496 >= v411)
              {
                v498 = v497;
              }

              *v493++ = *v498;
              --v495;
            }

            while (v495);
          }

          v491 += 4 * v448;
        }
      }

      if ((v447 * v460) <= (v448 - v447) * v630)
      {
        v499 = (v448 - v447) * v630;
      }

      else
      {
        v499 = v447 * v460;
      }

      if (a14[1] < v499)
      {
        if (*a14)
        {
          (*(v644 + 32))(*a14, a13);
        }

        *a14 = (*(v644 + 24))(4 * v499, v490);
        a14[1] = v499;
        v398 = a6;
      }

      v376 = a7;
      if (v447 >= 1)
      {
        cblas_sgemm_NEWLAPACK();
        v398 = a6;
        v500 = 0;
        v501 = *a14;
        do
        {
          if (v638 >= 1)
          {
            v502 = v596 + 4 * SHIDWORD(v608[v500]) * v593;
            v503 = v631 + (v605 & 0xFFFFFFFFFFFFFFF8);
            v504 = v501;
            v505 = v591;
            do
            {
              v506 = *v504++;
              *(v502 + 4 * *(v503 + 4)) = v506 + *(v502 + 4 * *(v503 + 4));
              v503 += 8;
              --v505;
            }

            while (v505);
          }

          ++v500;
          v501 += v638;
        }

        while (v500 != v447);
      }

      if (v630 >= 1)
      {
        cblas_sgemm_NEWLAPACK();
        v398 = a6;
        if (v448 > v447)
        {
          v507 = v447;
          v508 = *a14;
          do
          {
            v509 = v612 + 4 * (HIDWORD(v608[v507]) - v431);
            v510 = v631 + (v605 & 0xFFFFFFFFFFFFFFF8);
            v511 = v508;
            v512 = v630;
            do
            {
              v513 = *v511++;
              *(v509 + 4 * *(v510 + 4) * v610) = v513 + *(v509 + 4 * *(v510 + 4) * v610);
              v510 += 8;
              --v512;
            }

            while (v512);
            ++v507;
            v508 += v630;
          }

          while (v507 != v448);
        }
      }
    }

LABEL_482:
    v514 = (*(v644 + 240) + 8 * v649);
    v515 = *v514;
    v516 = v514[1];
    if (v515 >= v516)
    {
      v399 = v614;
      v380 = a16;
      if (!v367)
      {
        break;
      }

      goto LABEL_352;
    }

    v517 = *(v644 + 248);
    v380 = a16;
    v518 = *a15;
    v399 = v614;
    do
    {
      v519 = *(v517 + 4 * v515);
      v520 = *(a15 + 4);
      if (*(v518 + 4 * v519) < v520)
      {
        v521 = *(*(v644 + 256) + v515);
        v522 = v614 + 8 * v367;
        *v522 = v519;
        ++v367;
        *(v522 + 4) = v521;
        *(v518 + 4 * v519) = v520;
      }

      ++v515;
    }

    while (v516 != v515);
  }

  while (v367);
LABEL_490:
  v523 = HIDWORD(v652);
  v524 = a4;
  if (a4 == 83)
  {
    v525 = v644;
    v526 = a10;
    if (SHIDWORD(v652) >= 1)
    {
      v527 = 0;
      v528 = *(&v655 + 1);
      v529 = v656;
      do
      {
        *(a19 + 4 * *(v528 + 4 * v527)) = -1;
        *(a21 + 4 * *(v529 + 4 * v527++)) = -1;
        v523 = HIDWORD(v652);
      }

      while (v527 < SHIDWORD(v652));
    }
  }

  else
  {
    v525 = v644;
    v526 = a10;
  }

  if ((DWORD1(v652) - v523) * (v652 - v523) < 1)
  {
    v531 = 0;
  }

  else
  {
    v530 = 5 * (SHIDWORD(v656) + SDWORD2(v656));
    v531 = (*(v525 + 24))(v530 + 152);
    sub_236724DE4(v531, &v652, v598, v597, v599, SDWORD2(v599), (v531 + 120), v530 + 32, v525);
    v532 = *(v531 + 16) * *(v531 + 8);
    v533 = (*(*v531 + 24))(4 * v532);
    *(v531 + 96) = v533;
    *(v531 + 104) = v532;
    bzero(v533, 4 * v532);
    v376 = a7;
    v525 = v644;
    v524 = a4;
    v398 = a6;
  }

  v650 = v531;
  *(v526 + 8 * v645) = v531;
  v534 = *(v525 + 240);
  v535 = *(v534 + 8 * v645);
  if (v535 < *(v534 + 8 * v616))
  {
    while (1)
    {
      v536 = *(*(v644 + 248) + 4 * v535);
      if (*(a17 + v536) == 1)
      {
        break;
      }

LABEL_537:
      if (++v535 >= *(v534 + 8 * v616))
      {
        goto LABEL_538;
      }
    }

    memset(&v658[1], 0, 56);
    if (v524 == 83)
    {
      v537 = *(v376[9] + 4 * v536);
      v538 = *(v376[10] + 4 * v536);
      v539 = *(v376[11] + 4 * v536);
    }

    else
    {
      v537 = 0;
      v538 = 0;
      v539 = 0;
    }

    v540 = *(v376[14] + 8 * v536) + 8;
    DWORD2(v658[0]) = v537;
    *(&v658[1] + 1) = v540;
    *(&v658[4] + 1) = __PAIR64__(v539, v538);
    HIDWORD(v658[0]) = v537 + (*(*(v644 + 176) + 4 * (v536 + 1)) - *(*(v644 + 176) + 4 * v536)) * v398;
    v541 = HIDWORD(v658[0]);
    if (v524 == 83)
    {
      v541 = *(v376[8] + 4 * v536);
    }

    LODWORD(v658[1]) = v541;
    v542 = 8 * (v536 + 1);
    LODWORD(v658[0]) = HIDWORD(v658[0]) + v538 + (*(*(v644 + 184) + v542) - *(*(v644 + 184) + 8 * v536)) * v398;
    v543 = (*(*(v644 + 200) + v542) - *(*(v644 + 200) + 8 * v536)) * v398;
    DWORD1(v658[0]) = HIDWORD(v658[0]) + v539 + v543;
    v544 = v540 + 4 * SLODWORD(v658[0]) * SHIDWORD(v658[0]);
    *&v658[2] = SLODWORD(v658[0]);
    *(&v658[2] + 1) = v544;
    *&v658[3] = v543 + v539;
    if (v524 == 81)
    {
      v545 = 0;
      v546 = 0;
    }

    else
    {
      v546 = v544 + 4 * (v543 + v539) * SHIDWORD(v658[0]);
      v545 = v546 + 4 * SHIDWORD(v658[0]) + 4 * v538;
      *(&v658[3] + 1) = v546;
      *&v658[4] = v545;
    }

    v547 = v546 + 4 * SHIDWORD(v658[0]);
    if (v538 <= 0)
    {
      v548 = 0;
    }

    else
    {
      v548 = v547;
    }

    v549 = v545 + 4 * SHIDWORD(v658[0]);
    if (v539 <= 0)
    {
      v550 = 0;
    }

    else
    {
      v550 = v549;
    }

    *&v658[5] = v548;
    *(&v658[5] + 1) = v550;
    v551 = *(v526 + 8 * v536);
    if (v551)
    {
      v552 = *(*(v644 + 264) + 4 * v535) * v398;
      v553 = *(*(v644 + 272) + 4 * v535) * v398;
      v554 = *(*(v644 + 256) + v535);
      switch(v554)
      {
        case 3:
          v573 = sub_23675B2FC(&v652, v536, v658, v551, v644, v398, v552, v553, a23, v631);
          v526 = a10;
          sub_2367541F8(v573, &v652, v650, v536, v658, v551, v644, v398, v552, v553, a23, v631);
          v563 = *(a10 + 8 * v536);
          v565 = v563 + 12;
          v564 = v563[12];
          if (v564)
          {
            goto LABEL_534;
          }

          goto LABEL_535;
        case 2:
          v566 = *(*(v644 + 280) + 4 * v535);
          sub_236724F10(&v651, *(v526 + 8 * v536));
          v567 = v566 * a6;
          sub_23675AD4C(a1, &v652, v536, v658, v551, v644, a6, v552, v553, v566 * a6, a23, v631);
          sub_236753908(a1, &v652, v650, v536, v658, v551, v644, a6, v552, v553, v566 * a6, a23, v631);
          add_explicit = atomic_fetch_add_explicit((v551 + 24), -(v566 * a6), memory_order_release);
          if (*(v651 + 112) == 1)
          {
            v569 = (v651 + 113);
            atomic_store(0, (v651 + 113));
            std::__cxx_atomic_notify_one(v569);
          }

          v376 = a7;
          v398 = a6;
          v526 = a10;
          if (add_explicit == v567)
          {
            v570 = *(*v551 + 32);
            v572 = *(v551 + 96);
            v571 = (v551 + 96);
            v570(v572);
            *v571 = 0;
            v571[1] = 0;
            v376 = a7;
            v398 = a6;
            if (HIDWORD(v658[0]) == LODWORD(v658[1]) && !*(&v658[4] + 1))
            {
              v563 = *(a10 + 8 * v536);
              v565 = v563 + 12;
              v564 = v563[12];
              if (v564)
              {
LABEL_534:
                (*(*v563 + 32))(v564);
                *v565 = 0;
                v565[1] = 0;
              }

LABEL_535:
              (*(v644 + 32))();
              *(v526 + 8 * v536) = 0;
              v376 = a7;
              v398 = a6;
            }
          }

          break;
        case 1:
          v555 = *(*(v644 + 280) + 4 * v535);
          sub_236724F10(&v651, *(v526 + 8 * v536));
          v556 = v552;
          v647 = v552;
          v557 = v555 * a6;
          sub_23675A8B8(a1, &v652, v536, v658, v551, v644, a6, v556, v553, v555 * a6, a23, v631);
          sub_2367531BC(a1, &v652, v650, v536, v658, v551, v644, a6, v647, v553, v555 * a6, a23, v631);
          v558 = atomic_fetch_add_explicit((v551 + 28), -(v555 * a6), memory_order_release);
          if (*(v651 + 112) == 1)
          {
            v559 = (v651 + 113);
            atomic_store(0, (v651 + 113));
            std::__cxx_atomic_notify_one(v559);
          }

          v376 = a7;
          v398 = a6;
          v526 = a10;
          if (v558 == v557)
          {
            v560 = *(*v551 + 32);
            v562 = *(v551 + 96);
            v561 = (v551 + 96);
            v560(v562);
            *v561 = 0;
            v561[1] = 0;
            v376 = a7;
            v398 = a6;
            if (HIDWORD(v658[0]) == LODWORD(v658[1]) && !*(&v658[4] + 1))
            {
              v563 = *(a10 + 8 * v536);
              v565 = v563 + 12;
              v564 = v563[12];
              if (v564)
              {
                goto LABEL_534;
              }

              goto LABEL_535;
            }
          }

          break;
      }
    }

    v534 = *(v644 + 240);
    v524 = a4;
    goto LABEL_537;
  }

LABEL_538:
  v574 = v650;
  if (v650)
  {
    v575 = *(v650 + 96);
    v574 = *(v650 + 16);
  }

  else
  {
    v575 = 0;
  }

  v576 = v524 == 83;
  if (a27)
  {
    v577 = a27 + 64;
  }

  else
  {
    v577 = 0;
  }

  v578 = v604(v652, DWORD1(v652), HIDWORD(v652), *(&v653 + 1), v654, *(&v654 + 1), v655, v575, v574, *(&v655 + 1), v656, v644, a7, v602, v603, a25, a26, v577);
  v579 = *a8;
  if (*a8 <= v578)
  {
    v579 = v578;
  }

  *a8 = v579;
  v580 = *a9;
  if (*a9 <= SDWORD1(v652))
  {
    v580 = DWORD1(v652);
  }

  *a9 = v580;
  if (v576)
  {
    *(a7[8] + 4 * v645) = v578;
    return 0;
  }

  if (v578 == HIDWORD(v652))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}