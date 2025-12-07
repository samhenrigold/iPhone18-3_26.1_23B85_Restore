uint64_t sub_1002F0440(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int a5, int a6)
{
  if (a3 > a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (a2 == a3 || (v7 = *(a1 + 8 * a2), v8 = *(a1 + 8 * a3), *v7 == *v8) && v7[1] == v8[1])
  {
    *a4 = a2;
    return 1;
  }

  else
  {
    v10 = (v6 + a2);
    v11 = (v10 + v6);
    *a4 = a2;
    a4[1] = v10;
    a4[2] = v11;
    if (v10 == a3)
    {
      return 2;
    }

    else
    {
      v12 = 3;
      v13 = a2;
      do
      {
        v15 = *(a1 + 8 * v10);
        v16 = v15[1];
        v17 = *(a1 + 8 * v11);
        v18 = v17[1] - v16;
        if ((__PAIR64__(v18 > 0.0, LODWORD(v18)) - COERCE_UNSIGNED_INT(0.0)) >> 32 == a5)
        {
          v14 = (v11 + v6);
          a4[v12 - 1] = v14;
          v11 = v10;
          v10 = v13;
        }

        else
        {
          v19 = *v15;
          v20 = *(a1 + 8 * v13);
          v21 = v19 - *v20;
          v22 = v16 - v20[1];
          *&v23 = (v22 * (*v17 - v19)) - (v21 * v18);
          if ((__PAIR64__(*&v23 > 0.0, v23) - COERCE_UNSIGNED_INT(0.0)) >> 32 != a6 || v21 == 0.0 && v22 == 0.0)
          {
            if (v13 == a2)
            {
              v14 = (v11 + v6);
              a4[1] = v11;
              a4[2] = v14;
              v10 = a2;
            }

            else
            {
              v24 = &a4[v12];
              *(v24 - 2) = v11;
              v10 = *(v24 - 4);
              --v12;
              v14 = v11;
              v11 = v13;
            }
          }

          else
          {
            v14 = (v11 + v6);
            a4[v12++] = v14;
          }
        }

        v13 = v10;
        v10 = v11;
        v11 = v14;
      }

      while (v14 != v6 + a3);
      return (v12 - 1);
    }
  }
}

uint64_t sub_1002F05A4(uint64_t result, int **a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          v76 = *v9;
          v77 = v9[1];
          v78 = *v77;
          v79 = **v9;
          if (*v77 < v79 || v78 == v79 && v77[1] < v76[1])
          {
            v80 = *(a2 - 1);
            if (*v80 < v78 || *v80 == v78 && v80[1] < v77[1])
            {
              *v9 = v80;
              *(a2 - 1) = v76;
            }

            else
            {
              *v9 = v77;
              v9[1] = v76;
              v117 = *(a2 - 1);
              if (*v117 < v79 || *v117 == v79 && v117[1] < v76[1])
              {
                v9[1] = v117;
                *(a2 - 1) = v76;
              }
            }
          }

          else
          {
            v105 = *(a2 - 1);
            if (*v105 < v78 || *v105 == v78 && v105[1] < v77[1])
            {
              v9[1] = v105;
              *(a2 - 1) = v77;
              v107 = *v9;
              v106 = v9[1];
              v108 = **v9;
              if (*v106 < v108 || *v106 == v108 && v106[1] < v107[1])
              {
                *v9 = v106;
                v9[1] = v107;
              }
            }
          }

          return result;
        case 4uLL:

          return sub_1002F1028(v9, v9 + 1, v9 + 2, a2 - 1);
        case 5uLL:
          result = sub_1002F1028(v9, v9 + 1, v9 + 2, v9 + 3);
          v81 = *(a2 - 1);
          v82 = v9[3];
          if (*v81 < *v82 || *v81 == *v82 && v81[1] < v82[1])
          {
            v9[3] = v81;
            *(a2 - 1) = v82;
            v84 = v9[2];
            v83 = v9[3];
            v85 = *v83;
            if (*v83 < *v84 || v85 == *v84 && v83[1] < v84[1])
            {
              v9[2] = v83;
              v9[3] = v84;
              v86 = v9[1];
              if (v85 < *v86 || v85 == *v86 && v83[1] < v86[1])
              {
                v9[1] = v83;
                v9[2] = v86;
                v87 = *v9;
                v88 = **v9;
                if (v85 < v88 || v85 == v88 && v83[1] < v87[1])
                {
                  *v9 = v83;
                  v9[1] = v87;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v73 = *(a2 - 1);
        v74 = *v9;
        v75 = **v9;
        if (*v73 < v75 || *v73 == v75 && v73[1] < v74[1])
        {
          *v9 = v73;
          *(a2 - 1) = v74;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v102 = (v12 - 2) >> 1;
        v103 = v102 + 1;
        v104 = &v8[v102];
        do
        {
          sub_1002F1914(v8, a3, v12, v104--);
          --v103;
        }

        while (v103);

        return sub_1002F1A58(v8, a2);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    if (v12 >= 0x81)
    {
      v15 = *v13;
      v16 = *v9;
      v17 = **v13;
      v18 = **v9;
      if (v17 < v18 || v17 == v18 && v15[1] < v16[1])
      {
        v19 = *(a2 - 1);
        if (*v19 < v17 || *v19 == v17 && v19[1] < v15[1])
        {
          *v9 = v19;
        }

        else
        {
          *v9 = v15;
          *v13 = v16;
          v35 = *(a2 - 1);
          if (*v35 >= v18 && (*v35 != v18 || v35[1] >= v16[1]))
          {
            goto LABEL_35;
          }

          *v13 = v35;
        }

        *(a2 - 1) = v16;
        goto LABEL_35;
      }

      v25 = *(a2 - 1);
      if (*v25 < v17 || *v25 == v17 && v25[1] < v15[1])
      {
        *v13 = v25;
        *(a2 - 1) = v15;
        v26 = *v13;
        v27 = *v9;
        v28 = **v13;
        v29 = **v9;
        if (v28 < v29 || v28 == v29 && v26[1] < v27[1])
        {
          *v9 = v26;
          *v13 = v27;
        }
      }

LABEL_35:
      v36 = (v12 >> 1) - 1;
      v37 = v9[v36];
      v38 = v9[1];
      v39 = *v37;
      v40 = *v38;
      if (*v37 < *v38 || v39 == v40 && v37[1] < v38[1])
      {
        v41 = *(a2 - 2);
        if (*v41 < v39 || *v41 == v39 && v41[1] < v37[1])
        {
          v9[1] = v41;
        }

        else
        {
          v9[1] = v37;
          v9[v36] = v38;
          v46 = *(a2 - 2);
          if (*v46 >= v40 && (*v46 != v40 || v46[1] >= v38[1]))
          {
            goto LABEL_53;
          }

          v9[v36] = v46;
        }

        *(a2 - 2) = v38;
        goto LABEL_53;
      }

      v42 = *(a2 - 2);
      if (*v42 < v39 || *v42 == v39 && v42[1] < v37[1])
      {
        v9[v36] = v42;
        *(a2 - 2) = v37;
        v43 = v9[v36];
        v44 = v9[1];
        if (*v43 < *v44 || *v43 == *v44 && v43[1] < v44[1])
        {
          v9[1] = v43;
          v9[v36] = v44;
        }
      }

LABEL_53:
      v49 = v13[1];
      v47 = v13 + 1;
      v48 = v49;
      v50 = v9[2];
      v51 = *v49;
      v52 = *v50;
      if (*v49 < *v50 || v51 == v52 && v48[1] < v50[1])
      {
        v53 = *(a2 - 3);
        if (*v53 < v51 || *v53 == v51 && v53[1] < v48[1])
        {
          v9[2] = v53;
        }

        else
        {
          v9[2] = v48;
          *v47 = v50;
          v58 = *(a2 - 3);
          if (*v58 >= v52 && (*v58 != v52 || v58[1] >= v50[1]))
          {
            goto LABEL_66;
          }

          *v47 = v58;
        }

        *(a2 - 3) = v50;
        goto LABEL_66;
      }

      v54 = *(a2 - 3);
      if (*v54 < v51 || *v54 == v51 && v54[1] < v48[1])
      {
        *v47 = v54;
        *(a2 - 3) = v48;
        v55 = *v47;
        v56 = v9[2];
        v57 = **v47;
        if (v57 < *v56 || v57 == *v56 && v55[1] < v56[1])
        {
          v9[2] = v55;
          *v47 = v56;
        }
      }

LABEL_66:
      v59 = *v14;
      v60 = v9[v36];
      v61 = **v14;
      v62 = *v60;
      if (v61 < *v60 || v61 == v62 && v59[1] < v60[1])
      {
        v63 = *v47;
        v64 = **v47;
        if (v64 < v61 || v64 == v61 && v63[1] < v59[1])
        {
          v9[v36] = v63;
        }

        else
        {
          v9[v36] = v59;
          *v14 = v60;
          if (v64 >= v62 && (v64 != v62 || v63[1] >= v60[1]))
          {
            v59 = v60;
            goto LABEL_79;
          }

          *v14 = v63;
          v59 = v63;
        }
      }

      else
      {
        v65 = *v47;
        v66 = **v47;
        if (v66 >= v61 && (v66 != v61 || v65[1] >= v59[1]))
        {
          goto LABEL_79;
        }

        *v14 = v65;
        *v47 = v59;
        if (v66 >= v62 && (v66 != v62 || v65[1] >= v60[1]))
        {
          v59 = v65;
          goto LABEL_79;
        }

        v9[v36] = v65;
        v47 = &v9[v12 >> 1];
        v59 = v60;
      }

      *v47 = v60;
LABEL_79:
      v67 = *v9;
      *v9 = v59;
      *v14 = v67;
      goto LABEL_80;
    }

    v20 = *v9;
    v21 = *v13;
    v22 = **v9;
    v23 = **v14;
    if (v22 < v23 || v22 == v23 && v20[1] < v21[1])
    {
      v24 = *(a2 - 1);
      if (*v24 < v22 || *v24 == v22 && v24[1] < v20[1])
      {
        *v14 = v24;
LABEL_47:
        *(a2 - 1) = v21;
        goto LABEL_80;
      }

      *v14 = v20;
      *v9 = v21;
      v45 = *(a2 - 1);
      if (*v45 < v23 || *v45 == v23 && v45[1] < v21[1])
      {
        *v9 = v45;
        goto LABEL_47;
      }
    }

    else
    {
      v30 = *(a2 - 1);
      if (*v30 < v22 || *v30 == v22 && v30[1] < v20[1])
      {
        *v9 = v30;
        *(a2 - 1) = v20;
        v31 = *v9;
        v32 = *v14;
        v33 = **v9;
        v34 = **v14;
        if (v33 < v34 || v33 == v34 && v31[1] < v32[1])
        {
          *v14 = v31;
          *v9 = v32;
        }
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v68 = *(v9 - 1);
      v69 = **v9;
      if (*v68 >= v69 && (*v68 != v69 || v68[1] >= (*v9)[1]))
      {
        result = sub_1002F11D4(v9, a2);
        v9 = result;
        goto LABEL_135;
      }
    }

    v70 = sub_1002F1330(v9, a2);
    if ((v71 & 1) == 0)
    {
      goto LABEL_133;
    }

    v72 = sub_1002F1484(v9, v70);
    v9 = v70 + 1;
    result = sub_1002F1484(v70 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v70;
      if (v72)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v72)
    {
LABEL_133:
      result = sub_1002F05A4(v8, v70, a3, -v11, a5 & 1);
      v9 = v70 + 1;
LABEL_135:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v89 = v9 + 1;
  v91 = v9 == a2 || v89 == a2;
  if (a5)
  {
    if (!v91)
    {
      v92 = 0;
      v93 = v9;
      do
      {
        v95 = v93;
        v93 = v89;
        v97 = *v95;
        v96 = v95[1];
        v98 = *v96;
        v99 = **v95;
        if (*v96 < v99 || v98 == v99 && v96[1] < v97[1])
        {
          v95[1] = v97;
          v94 = v9;
          if (v95 != v9)
          {
            v100 = v92;
            while (1)
            {
              v101 = *(v9 + v100 - 8);
              if (v98 >= *v101)
              {
                if (v98 != *v101)
                {
                  v94 = (v9 + v100);
                  goto LABEL_161;
                }

                if (v96[1] >= v101[1])
                {
                  break;
                }
              }

              --v95;
              *(v9 + v100) = v101;
              v100 -= 8;
              if (!v100)
              {
                v94 = v9;
                goto LABEL_161;
              }
            }

            v94 = v95;
          }

LABEL_161:
          *v94 = v96;
        }

        v89 = v93 + 1;
        v92 += 8;
      }

      while (v93 + 1 != a2);
    }
  }

  else if (!v91)
  {
    do
    {
      v109 = v8;
      v8 = v89;
      v111 = *v109;
      v110 = v109[1];
      v112 = *v110;
      v113 = **v109;
      if (*v110 < v113 || v112 == v113 && v110[1] < v111[1])
      {
        do
        {
          do
          {
            v114 = v109;
            v115 = *--v109;
            v109[2] = v111;
            v111 = v115;
            v116 = *v115;
          }

          while (v112 < *v115);
        }

        while (v112 == v116 && v110[1] < v111[1]);
        *v114 = v110;
      }

      v89 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

int **sub_1002F1028(int **result, int **a2, int **a3, int **a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = **a2;
  v7 = **result;
  if (v6 < v7 || v6 == v7 && v4[1] < v5[1])
  {
    v8 = *a3;
    v9 = **a3;
    if (v9 < v6 || v9 == v6 && v8[1] < v4[1])
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      v15 = **a3;
      if (v15 >= v7 && (v15 != v7 || v4[1] >= v5[1]))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  v10 = **a3;
  if (v10 >= v6 && (v10 != v6 || v5[1] >= v4[1]))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v11 = *a2;
  v12 = *result;
  v13 = **a2;
  v14 = **result;
  if (v13 < v14 || v13 == v14 && v11[1] < v12[1])
  {
    *result = v11;
    *a2 = v12;
    v4 = *a3;
  }

LABEL_15:
  v16 = *a4;
  v17 = **a4;
  if (v17 < *v4 || v17 == *v4 && v16[1] < v4[1])
  {
    *a3 = v16;
    *a4 = v4;
    v18 = *a3;
    v19 = *a2;
    v20 = **a3;
    v21 = **a2;
    if (v20 < v21 || v20 == v21 && v18[1] < v19[1])
    {
      *a2 = v18;
      *a3 = v19;
      v22 = *a2;
      v23 = *result;
      v24 = **a2;
      v25 = **result;
      if (v24 < v25 || v24 == v25 && v22[1] < v23[1])
      {
        *result = v22;
        *a2 = v23;
      }
    }
  }

  return result;
}

int **sub_1002F11D4(int **a1, int **a2)
{
  v2 = *a1;
  v3 = *(a2 - 1);
  v4 = **a1;
  v5 = *v3;
  if (v4 < *v3 || v4 == v5 && v2[1] < v3[1])
  {
    i = a1;
    do
    {
      v8 = i[1];
      ++i;
      v7 = v8;
      v9 = *v8;
    }

    while (v4 >= *v8 && (v4 != v9 || v2[1] >= v7[1]));
  }

  else
  {
    for (i = a1 + 1; i < a2; ++i)
    {
      v10 = **i;
      if (v4 < v10 || v4 == v10 && v2[1] < (*i)[1])
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    --a2;
    while (v4 < v5 || v4 == v5 && v2[1] < v3[1])
    {
      v11 = *--a2;
      v3 = v11;
      v5 = *v11;
    }
  }

  if (i < a2)
  {
    v12 = *i;
    v13 = *a2;
    do
    {
      *i = v13;
      *a2 = v12;
      do
      {
        v14 = i[1];
        ++i;
        v12 = v14;
        v15 = *v14;
      }

      while (v4 >= *v14 && (v4 != v15 || v2[1] >= v12[1]));
      do
      {
        do
        {
          v16 = *--a2;
          v13 = v16;
          v17 = *v16;
        }

        while (v4 < *v16);
      }

      while (v4 == v17 && v2[1] < v13[1]);
    }

    while (i < a2);
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v2;
  return i;
}

int **sub_1002F1330(int **a1, int **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = **a1;
  while (1)
  {
    v5 = a1[v2 + 1];
    if (*v5 >= v4 && (*v5 != v4 || v5[1] >= v3[1]))
    {
      break;
    }

    ++v2;
  }

  v6 = &a1[v2];
  v7 = &a1[v2 + 1];
  if (v2 * 8)
  {
    do
    {
      v9 = *--a2;
      v8 = v9;
      v10 = *v9;
    }

    while (*v9 >= v4 && (v10 != v4 || v8[1] >= v3[1]));
  }

  else
  {
LABEL_19:
    if (v7 < a2)
    {
      do
      {
        v12 = *--a2;
        v11 = v12;
        v13 = *v12;
        if (*v12 < v4)
        {
          break;
        }

        if (v13 != v4)
        {
          goto LABEL_19;
        }
      }

      while (v11[1] >= v3[1] && v7 < a2);
    }
  }

  if (v7 < a2)
  {
    v15 = *a2;
    v16 = v7;
    v17 = a2;
    do
    {
      *v16++ = v15;
      *v17 = v5;
      while (1)
      {
        v5 = *v16;
        v18 = **v16;
        if (v18 >= v4 && (v18 != v4 || v5[1] >= v3[1]))
        {
          break;
        }

        ++v16;
      }

      do
      {
        v19 = *--v17;
        v15 = v19;
        v20 = *v19;
      }

      while (*v19 >= v4 && (v20 != v4 || v15[1] >= v3[1]));
    }

    while (v16 < v17);
    v6 = v16 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL sub_1002F1484(int **a1, int **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v17 = *a1;
        v18 = a1[1];
        v19 = *v18;
        v20 = **a1;
        if (*v18 < v20 || v19 == v20 && v18[1] < v17[1])
        {
          v21 = *(a2 - 1);
          if (*v21 < v19 || *v21 == v19 && v21[1] < v18[1])
          {
            *a1 = v21;
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = v18;
          a1[1] = v17;
          v36 = *(a2 - 1);
          if (*v36 < v20 || *v36 == v20 && v36[1] < v17[1])
          {
            a1[1] = v36;
            *(a2 - 1) = v17;
            return 1;
          }
        }

        else
        {
          v30 = *(a2 - 1);
          if (*v30 < v19 || *v30 == v19 && v30[1] < v18[1])
          {
            a1[1] = v30;
            *(a2 - 1) = v18;
            v32 = *a1;
            v31 = a1[1];
            v33 = **a1;
            if (*v31 < v33 || *v31 == v33 && v31[1] < v32[1])
            {
              *a1 = v31;
              a1[1] = v32;
              return 1;
            }
          }
        }

        return 1;
      case 4:
        sub_1002F1028(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_1002F1028(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        if (*v9 < *v10 || *v9 == *v10 && v9[1] < v10[1])
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v12 = a1[2];
          v11 = a1[3];
          v13 = *v11;
          if (*v11 < *v12 || v13 == *v12 && v11[1] < v12[1])
          {
            a1[2] = v11;
            a1[3] = v12;
            v14 = a1[1];
            if (v13 < *v14 || v13 == *v14 && v11[1] < v14[1])
            {
              a1[1] = v11;
              a1[2] = v14;
              v15 = *a1;
              v16 = **a1;
              if (v13 < v16 || v13 == v16 && v11[1] < v15[1])
              {
                *a1 = v11;
                a1[1] = v15;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      v5 = **a1;
      if (*v3 < v5 || *v3 == v5 && v3[1] < v4[1])
      {
        *a1 = v3;
        *(a2 - 1) = v4;
        return 1;
      }

      return 1;
    }
  }

  v22 = a1 + 2;
  v23 = *a1;
  v24 = a1 + 1;
  v25 = a1[1];
  v26 = *v25;
  v27 = **a1;
  if (*v25 < v27 || v26 == v27 && v25[1] < v23[1])
  {
    v28 = *v22;
    v29 = **v22;
    if (v29 < v26 || v29 == v26 && v28[1] < v25[1])
    {
      *a1 = v28;
    }

    else
    {
      *a1 = v25;
      a1[1] = v23;
      if (v29 >= v27 && (v29 != v27 || v28[1] >= v23[1]))
      {
        goto LABEL_47;
      }

      *v24 = v28;
    }

    v24 = a1 + 2;
LABEL_46:
    *v24 = v23;
    goto LABEL_47;
  }

  v34 = *v22;
  v35 = **v22;
  if (v35 < v26 || v35 == v26 && v34[1] < v25[1])
  {
    *v24 = v34;
    *v22 = v25;
    if (v35 < v27 || v35 == v27 && v34[1] < v23[1])
    {
      *a1 = v34;
      goto LABEL_46;
    }
  }

LABEL_47:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  v39 = 0;
  while (1)
  {
    v40 = *v37;
    v41 = *v22;
    v42 = **v37;
    if (v42 < *v41 || v42 == *v41 && v40[1] < v41[1])
    {
      break;
    }

LABEL_61:
    v22 = v37;
    v38 += 8;
    if (++v37 == a2)
    {
      return 1;
    }
  }

  *v37 = v41;
  v43 = v38;
  while (1)
  {
    v44 = *(a1 + v43 + 8);
    if (v42 >= *v44 && (v42 != *v44 || v40[1] >= v44[1]))
    {
      break;
    }

    *(a1 + v43 + 16) = v44;
    v43 -= 8;
    if (v43 == -16)
    {
      *a1 = v40;
      if (++v39 != 8)
      {
        goto LABEL_61;
      }

      return v37 + 1 == a2;
    }
  }

  *(a1 + v43 + 16) = v40;
  if (++v39 != 8)
  {
    goto LABEL_61;
  }

  return v37 + 1 == a2;
}

uint64_t sub_1002F1914(uint64_t result, uint64_t a2, uint64_t a3, int **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = **v8;
        if (v11 < *v10 || v11 == *v10 && (*v8)[1] < v10[1])
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      v14 = **v8;
      v15 = **a4;
      if (v14 >= v15 && (v14 != v15 || v12[1] >= v13[1]))
      {
        *a4 = v12;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v16 = (result + 8 * v7);
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = v16[1];
              v20 = **v16;
              if (v20 < *v19 || v20 == *v19 && (*v16)[1] < v19[1])
              {
                ++v16;
                v7 = v18;
              }
            }

            v21 = *v16;
            v22 = **v16;
            if (v22 < v15 || v22 == v15 && v21[1] < v13[1])
            {
              break;
            }

            *v8 = v21;
            v8 = v16;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v16 = v8;
LABEL_13:
        *v16 = v13;
      }
    }
  }

  return result;
}

int **sub_1002F1A58(int **result, int **a2)
{
  v2 = a2 - result;
  if (v2 >= 2)
  {
    do
    {
      v5 = 0;
      v6 = *result;
      v3 = result;
      do
      {
        v7 = v3;
        v8 = &v3[v5];
        v3 = v8 + 1;
        v9 = 2 * v5;
        v5 = (2 * v5) | 1;
        v10 = v9 + 2;
        if (v10 < v2)
        {
          v13 = v8[2];
          v11 = v8 + 2;
          v12 = v13;
          v14 = *(v11 - 1);
          v15 = *v13;
          if (*v14 < *v13 || *v14 == v15 && v14[1] < v12[1])
          {
            v3 = v11;
            v5 = v10;
          }
        }

        *v7 = *v3;
      }

      while (v5 <= ((v2 - 2) >> 1));
      if (v3 != --a2)
      {
        *v3 = *a2;
        *a2 = v6;
        v16 = (v3 - result + 8) >> 3;
        v17 = v16 - 2;
        if (v16 < 2)
        {
          continue;
        }

        v18 = v17 >> 1;
        v19 = &result[v17 >> 1];
        v20 = *v19;
        v6 = *v3;
        v21 = **v19;
        v22 = **v3;
        if (v21 >= v22 && (v21 != v22 || v20[1] >= v6[1]))
        {
          continue;
        }

        *v3 = v20;
        if (v17 >= 2)
        {
          while (1)
          {
            v23 = v18 - 1;
            v18 = (v18 - 1) >> 1;
            v3 = &result[v18];
            v24 = *v3;
            v25 = **v3;
            if (v25 >= v22 && (v25 != v22 || v24[1] >= v6[1]))
            {
              break;
            }

            *v19 = v24;
            v19 = &result[v18];
            if (v23 <= 1)
            {
              goto LABEL_4;
            }
          }
        }

        v3 = v19;
      }

LABEL_4:
      *v3 = v6;
    }

    while (v2-- > 2);
  }

  return result;
}

uint64_t sub_1002F1BC4(uint64_t result, float **a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v10;
        v78 = **v10;
        if (*v76 < v78 || *v76 == v78 && v76[1] < v77[1])
        {
          *v10 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return sub_1002F25D8(v10, v10 + 1, v10 + 2, a2 - 1);
    }

    if (v13 == 5)
    {
      result = sub_1002F25D8(v10, v10 + 1, v10 + 2, v10 + 3);
      v84 = *(a2 - 1);
      v85 = v10[3];
      if (*v84 >= *v85 && (*v84 != *v85 || v84[1] >= v85[1]))
      {
        return result;
      }

      v10[3] = v84;
      *(a2 - 1) = v85;
      v87 = v10[2];
      v86 = v10[3];
      v88 = *v86;
      if (*v86 >= *v87 && (*v86 != *v87 || v86[1] >= v87[1]))
      {
        return result;
      }

      v10[2] = v86;
      v10[3] = v87;
      v89 = v10[1];
      if (v88 >= *v89 && (v88 != *v89 || v86[1] >= v89[1]))
      {
        return result;
      }

      v10[1] = v86;
      v10[2] = v89;
      v90 = *v10;
      v91 = **v10;
      v92 = v88 == v91;
      if (v88 < v91)
      {
LABEL_201:
        *v10 = v86;
        v10[1] = v90;
        return result;
      }

LABEL_198:
      if (!v92 || v86[1] >= v90[1])
      {
        return result;
      }

      goto LABEL_201;
    }

LABEL_11:
    if (v13 <= 23)
    {
      v93 = v10 + 1;
      v95 = v10 == a2 || v93 == a2;
      if (a5)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v10;
          do
          {
            v99 = v97;
            v97 = v93;
            v101 = *v99;
            v100 = v99[1];
            v102 = *v100;
            v103 = **v99;
            if (*v100 < v103 || *v100 == v103 && v100[1] < v101[1])
            {
              v99[1] = v101;
              v98 = v10;
              if (v99 != v10)
              {
                v104 = v96;
                while (1)
                {
                  v105 = *(v10 + v104 - 8);
                  if (v102 >= *v105)
                  {
                    if (v102 != *v105)
                    {
                      v98 = (v10 + v104);
                      goto LABEL_163;
                    }

                    if (v100[1] >= v105[1])
                    {
                      break;
                    }
                  }

                  --v99;
                  *(v10 + v104) = v105;
                  v104 -= 8;
                  if (!v104)
                  {
                    v98 = v10;
                    goto LABEL_163;
                  }
                }

                v98 = v99;
              }

LABEL_163:
              *v98 = v100;
            }

            v93 = v97 + 1;
            v96 += 8;
          }

          while (v97 + 1 != a2);
        }
      }

      else if (!v95)
      {
        do
        {
          v109 = v9;
          v9 = v93;
          v111 = *v109;
          v110 = v109[1];
          v112 = *v110;
          v113 = **v109;
          if (*v110 < v113 || *v110 == v113 && v110[1] < v111[1])
          {
            do
            {
              do
              {
                v114 = v109;
                v115 = *--v109;
                v109[2] = v111;
                v111 = v115;
                v116 = v112 == *v115;
              }

              while (v112 < *v115);
            }

            while (v116 && v110[1] < v111[1]);
            *v114 = v110;
          }

          v93 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v106 = (v13 - 2) >> 1;
        v107 = v106 + 1;
        v108 = &v9[v106];
        do
        {
          sub_1002F2E7C(v9, a3, v13, v108--);
          --v107;
        }

        while (v107);

        return sub_1002F2FB8(v9, a2);
      }

      return result;
    }

    v14 = &v10[v13 >> 1];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      v18 = **v14;
      v19 = **v10;
      if (v18 < v19 || v18 == v19 && v16[1] < v17[1])
      {
        v20 = *(a2 - 1);
        if (*v20 < v18 || *v20 == v18 && v20[1] < v16[1])
        {
          *v10 = v20;
          goto LABEL_47;
        }

        *v10 = v16;
        *v14 = v17;
        v36 = *(a2 - 1);
        if (*v36 < v19 || *v36 == v19 && v36[1] < v17[1])
        {
          *v14 = v36;
LABEL_47:
          *(a2 - 1) = v17;
        }
      }

      else
      {
        v26 = *(a2 - 1);
        if (*v26 < v18 || *v26 == v18 && v26[1] < v16[1])
        {
          *v14 = v26;
          *(a2 - 1) = v16;
          v27 = *v14;
          v28 = *v10;
          v29 = **v14;
          v30 = **v10;
          if (v29 < v30 || v29 == v30 && v27[1] < v28[1])
          {
            *v10 = v27;
            *v14 = v28;
          }
        }
      }

      v37 = (v13 >> 1) - 1;
      v38 = v10[v37];
      v39 = v10[1];
      v40 = *v38;
      v41 = *v39;
      if (*v38 < *v39 || *v38 == *v39 && v38[1] < v39[1])
      {
        v42 = *(a2 - 2);
        if (*v42 < v40 || *v42 == v40 && v42[1] < v38[1])
        {
          v10[1] = v42;
          goto LABEL_73;
        }

        v10[1] = v38;
        v10[v37] = v39;
        v47 = *(a2 - 2);
        if (*v47 < v41 || *v47 == v41 && v47[1] < v39[1])
        {
          v10[v37] = v47;
LABEL_73:
          *(a2 - 2) = v39;
        }
      }

      else
      {
        v43 = *(a2 - 2);
        if (*v43 < v40 || *v43 == v40 && v43[1] < v38[1])
        {
          v10[v37] = v43;
          *(a2 - 2) = v38;
          v44 = v10[v37];
          v45 = v10[1];
          if (*v44 < *v45 || *v44 == *v45 && v44[1] < v45[1])
          {
            v10[1] = v44;
            v10[v37] = v45;
          }
        }
      }

      v50 = v14[1];
      v48 = v14 + 1;
      v49 = v50;
      v51 = v10[2];
      v52 = *v50;
      v53 = *v51;
      v54 = *v50 == *v51;
      if (*v50 < *v51 || v54 && v49[1] < v51[1])
      {
        v55 = *(a2 - 3);
        if (*v55 < v52 || *v55 == v52 && v55[1] < v49[1])
        {
          v10[2] = v55;
          goto LABEL_93;
        }

        v10[2] = v49;
        *v48 = v51;
        v60 = *(a2 - 3);
        if (*v60 < v53 || *v60 == v53 && v60[1] < v51[1])
        {
          *v48 = v60;
LABEL_93:
          *(a2 - 3) = v51;
        }
      }

      else
      {
        v56 = *(a2 - 3);
        if (*v56 < v52 || *v56 == v52 && v56[1] < v49[1])
        {
          *v48 = v56;
          *(a2 - 3) = v49;
          v57 = *v48;
          v58 = v10[2];
          v59 = **v48;
          if (v59 < *v58 || v59 == *v58 && v57[1] < v58[1])
          {
            v10[2] = v57;
            *v48 = v58;
          }
        }
      }

      v61 = *v15;
      v62 = v10[v37];
      v63 = **v15;
      v64 = *v62;
      if (v63 < *v62 || v63 == *v62 && v61[1] < v62[1])
      {
        v65 = *v48;
        v66 = **v48;
        if (v66 < v63 || v66 == v63 && v65[1] < v61[1])
        {
          v10[v37] = v65;
          goto LABEL_112;
        }

        v10[v37] = v61;
        *v15 = v62;
        if (v66 < v64 || v66 == v64 && v65[1] < v62[1])
        {
          *v15 = v65;
          v61 = v65;
LABEL_112:
          *v48 = v62;
        }

        else
        {
          v61 = v62;
        }
      }

      else
      {
        v67 = *v48;
        v68 = **v48;
        if (v68 < v63 || v68 == v63 && v67[1] < v61[1])
        {
          *v15 = v67;
          *v48 = v61;
          if (v68 < v64 || v68 == v64 && v67[1] < v62[1])
          {
            v10[v37] = v67;
            v48 = &v10[v13 >> 1];
            v61 = v62;
            goto LABEL_112;
          }

          v61 = v67;
        }
      }

      v69 = *v10;
      *v10 = v61;
      *v15 = v69;
      if (a5)
      {
        goto LABEL_117;
      }

      goto LABEL_114;
    }

    v21 = *v10;
    v22 = *v14;
    v23 = **v10;
    v24 = **v15;
    if (v23 < v24 || v23 == v24 && v21[1] < v22[1])
    {
      v25 = *(a2 - 1);
      if (*v25 < v23 || *v25 == v23 && v25[1] < v21[1])
      {
        *v15 = v25;
        goto LABEL_66;
      }

      *v15 = v21;
      *v10 = v22;
      v46 = *(a2 - 1);
      if (*v46 < v24 || *v46 == v24 && v46[1] < v22[1])
      {
        *v10 = v46;
LABEL_66:
        *(a2 - 1) = v22;
      }

LABEL_67:
      if (a5)
      {
        goto LABEL_117;
      }

      goto LABEL_114;
    }

    v31 = *(a2 - 1);
    if (*v31 >= v23 && (*v31 != v23 || v31[1] >= v21[1]))
    {
      goto LABEL_67;
    }

    *v10 = v31;
    *(a2 - 1) = v21;
    v32 = *v10;
    v33 = *v15;
    v34 = **v10;
    v35 = **v15;
    if (v34 >= v35 && (v34 != v35 || v32[1] >= v33[1]))
    {
      goto LABEL_67;
    }

    *v15 = v32;
    *v10 = v33;
    if (a5)
    {
      goto LABEL_117;
    }

LABEL_114:
    v70 = *(v10 - 1);
    v71 = **v10;
    if (*v70 >= v71 && (*v70 != v71 || v70[1] >= (*v10)[1]))
    {
      result = sub_1002F276C(v10, a2);
      v10 = result;
      goto LABEL_125;
    }

LABEL_117:
    v72 = sub_1002F28C8(v10, a2);
    if ((v74 & 1) == 0)
    {
      goto LABEL_123;
    }

    v75 = sub_1002F2A1C(v10, v72);
    v10 = v72 + 1;
    result = sub_1002F2A1C(v72 + 1, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v72;
      if (v75)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v75)
    {
LABEL_123:
      result = sub_1002F1BC4(v9, v72, a3, -v12, a5 & 1, v73);
      v10 = v72 + 1;
LABEL_125:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v79 = *v10;
  v80 = v10[1];
  v81 = *v80;
  v82 = **v10;
  if (*v80 < v82 || *v80 == v82 && v80[1] < v79[1])
  {
    v83 = *(a2 - 1);
    if (*v83 < v81 || *v83 == v81 && v83[1] < v80[1])
    {
      *v10 = v83;
    }

    else
    {
      *v10 = v80;
      v10[1] = v79;
      v119 = *(a2 - 1);
      if (*v119 >= v82 && (*v119 != v82 || v119[1] >= v79[1]))
      {
        return result;
      }

      v10[1] = v119;
    }

    *(a2 - 1) = v79;
    return result;
  }

  v117 = *(a2 - 1);
  if (*v117 < v81 || *v117 == v81 && v117[1] < v80[1])
  {
    v10[1] = v117;
    *(a2 - 1) = v80;
    v90 = *v10;
    v86 = v10[1];
    v118 = **v10;
    v92 = *v86 == v118;
    if (*v86 < v118)
    {
      goto LABEL_201;
    }

    goto LABEL_198;
  }

  return result;
}

float **sub_1002F25D8(float **result, float **a2, float **a3, float **a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = **a2;
  v7 = **result;
  if (v6 < v7 || v6 == v7 && v4[1] < v5[1])
  {
    v8 = *a3;
    v9 = **a3;
    if (v9 < v6 || v9 == v6 && v8[1] < v4[1])
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      v15 = **a3;
      if (v15 >= v7 && (v15 != v7 || v4[1] >= v5[1]))
      {
        goto LABEL_21;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_20;
  }

  v5 = *a3;
  v10 = **a3;
  if (v10 >= v6 && (v10 != v6 || v5[1] >= v4[1]))
  {
LABEL_20:
    v4 = v5;
    goto LABEL_21;
  }

  *a2 = v5;
  *a3 = v4;
  v11 = *a2;
  v12 = *result;
  v13 = **a2;
  v14 = **result;
  if (v13 < v14 || v13 == v14 && v11[1] < v12[1])
  {
    *result = v11;
    *a2 = v12;
    v4 = *a3;
  }

LABEL_21:
  v16 = *a4;
  v17 = **a4;
  if (v17 < *v4 || v17 == *v4 && v16[1] < v4[1])
  {
    *a3 = v16;
    *a4 = v4;
    v18 = *a3;
    v19 = *a2;
    v20 = **a3;
    v21 = **a2;
    if (v20 < v21 || v20 == v21 && v18[1] < v19[1])
    {
      *a2 = v18;
      *a3 = v19;
      v22 = *a2;
      v23 = *result;
      v24 = **a2;
      v25 = **result;
      if (v24 < v25 || v24 == v25 && v22[1] < v23[1])
      {
        *result = v22;
        *a2 = v23;
      }
    }
  }

  return result;
}

float **sub_1002F276C(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *(a2 - 1);
  v4 = **a1;
  v5 = *v3;
  if (v4 < *v3 || v4 == *v3 && v2[1] < v3[1])
  {
    i = a1;
    do
    {
      v8 = i[1];
      ++i;
      v7 = v8;
      v9 = *v8;
    }

    while (v4 >= *v8 && (v4 != v9 || v2[1] >= v7[1]));
  }

  else
  {
    for (i = a1 + 1; i < a2; ++i)
    {
      v10 = **i;
      if (v4 < v10 || v4 == v10 && v2[1] < (*i)[1])
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    --a2;
    while (v4 < v5 || v4 == v5 && v2[1] < v3[1])
    {
      v11 = *--a2;
      v3 = v11;
      v5 = *v11;
    }
  }

  if (i < a2)
  {
    v12 = *i;
    v13 = *a2;
    do
    {
      *i = v13;
      *a2 = v12;
      do
      {
        v14 = i[1];
        ++i;
        v12 = v14;
        v15 = *v14;
      }

      while (v4 >= *v14 && (v4 != v15 || v2[1] >= v12[1]));
      do
      {
        do
        {
          v16 = *--a2;
          v13 = v16;
          v17 = v4 == *v16;
        }

        while (v4 < *v16);
      }

      while (v17 && v2[1] < v13[1]);
    }

    while (i < a2);
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v2;
  return i;
}

float **sub_1002F28C8(float **a1, float **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = **a1;
  while (1)
  {
    v5 = a1[v2 + 1];
    if (*v5 >= v4 && (*v5 != v4 || v5[1] >= v3[1]))
    {
      break;
    }

    ++v2;
  }

  v6 = &a1[v2];
  v7 = &a1[v2 + 1];
  if (v2 * 8)
  {
    do
    {
      v9 = *--a2;
      v8 = v9;
      v10 = *v9;
    }

    while (*v9 >= v4 && (v10 != v4 || v8[1] >= v3[1]));
  }

  else
  {
LABEL_19:
    if (v7 < a2)
    {
      do
      {
        v12 = *--a2;
        v11 = v12;
        v13 = *v12;
        if (*v12 < v4)
        {
          break;
        }

        if (v13 != v4)
        {
          goto LABEL_19;
        }
      }

      while (v11[1] >= v3[1] && v7 < a2);
    }
  }

  if (v7 < a2)
  {
    v15 = *a2;
    v16 = v7;
    v17 = a2;
    do
    {
      *v16++ = v15;
      *v17 = v5;
      while (1)
      {
        v5 = *v16;
        v18 = **v16;
        if (v18 >= v4 && (v18 != v4 || v5[1] >= v3[1]))
        {
          break;
        }

        ++v16;
      }

      do
      {
        v19 = *--v17;
        v15 = v19;
        v20 = *v19;
      }

      while (*v19 >= v4 && (v20 != v4 || v15[1] >= v3[1]));
    }

    while (v16 < v17);
    v6 = v16 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL sub_1002F2A1C(float **a1, float **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v17 = *a1;
        v18 = a1[1];
        v19 = *v18;
        v20 = **a1;
        if (*v18 < v20 || *v18 == v20 && v18[1] < v17[1])
        {
          v21 = *(a2 - 1);
          if (*v21 < v19 || *v21 == v19 && v21[1] < v18[1])
          {
            *a1 = v21;
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = v18;
          a1[1] = v17;
          v36 = *(a2 - 1);
          if (*v36 < v20 || *v36 == v20 && v36[1] < v17[1])
          {
            a1[1] = v36;
            *(a2 - 1) = v17;
            return 1;
          }
        }

        else
        {
          v30 = *(a2 - 1);
          if (*v30 < v19 || *v30 == v19 && v30[1] < v18[1])
          {
            a1[1] = v30;
            *(a2 - 1) = v18;
            v32 = *a1;
            v31 = a1[1];
            v33 = **a1;
            if (*v31 < v33 || *v31 == v33 && v31[1] < v32[1])
            {
              *a1 = v31;
              a1[1] = v32;
              return 1;
            }
          }
        }

        return 1;
      case 4:
        sub_1002F25D8(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_1002F25D8(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        if (*v9 < *v10 || *v9 == *v10 && v9[1] < v10[1])
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v12 = a1[2];
          v11 = a1[3];
          v13 = *v11;
          if (*v11 < *v12 || *v11 == *v12 && v11[1] < v12[1])
          {
            a1[2] = v11;
            a1[3] = v12;
            v14 = a1[1];
            if (v13 < *v14 || v13 == *v14 && v11[1] < v14[1])
            {
              a1[1] = v11;
              a1[2] = v14;
              v15 = *a1;
              v16 = **a1;
              if (v13 < v16 || v13 == v16 && v11[1] < v15[1])
              {
                *a1 = v11;
                a1[1] = v15;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      v5 = **a1;
      if (*v3 < v5 || *v3 == v5 && v3[1] < v4[1])
      {
        *a1 = v3;
        *(a2 - 1) = v4;
        return 1;
      }

      return 1;
    }
  }

  v22 = a1 + 2;
  v23 = *a1;
  v24 = a1 + 1;
  v25 = a1[1];
  v26 = *v25;
  v27 = **a1;
  if (*v25 < v27 || *v25 == v27 && v25[1] < v23[1])
  {
    v28 = *v22;
    v29 = **v22;
    if (v29 < v26 || v29 == v26 && v28[1] < v25[1])
    {
      *a1 = v28;
LABEL_61:
      v24 = a1 + 2;
      goto LABEL_62;
    }

    *a1 = v25;
    a1[1] = v23;
    if (v29 < v27 || v29 == v27 && v28[1] < v23[1])
    {
      *v24 = v28;
      goto LABEL_61;
    }
  }

  else
  {
    v34 = *v22;
    v35 = **v22;
    if (v35 < v26 || v35 == v26 && v34[1] < v25[1])
    {
      *v24 = v34;
      *v22 = v25;
      if (v35 < v27 || v35 == v27 && v34[1] < v23[1])
      {
        *a1 = v34;
LABEL_62:
        *v24 = v23;
      }
    }
  }

  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  v39 = 0;
  while (1)
  {
    v40 = *v37;
    v41 = *v22;
    v42 = **v37;
    if (v42 < *v41 || v42 == *v41 && v40[1] < v41[1])
    {
      break;
    }

LABEL_76:
    v22 = v37;
    v38 += 8;
    if (++v37 == a2)
    {
      return 1;
    }
  }

  *v37 = v41;
  v43 = v38;
  while (1)
  {
    v44 = *(a1 + v43 + 8);
    if (v42 >= *v44 && (v42 != *v44 || v40[1] >= v44[1]))
    {
      break;
    }

    *(a1 + v43 + 16) = v44;
    v43 -= 8;
    if (v43 == -16)
    {
      *a1 = v40;
      if (++v39 != 8)
      {
        goto LABEL_76;
      }

      return v37 + 1 == a2;
    }
  }

  *(a1 + v43 + 16) = v40;
  if (++v39 != 8)
  {
    goto LABEL_76;
  }

  return v37 + 1 == a2;
}

uint64_t sub_1002F2E7C(uint64_t result, uint64_t a2, uint64_t a3, float **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = **v8;
        if (v11 < *v10 || v11 == *v10 && (*v8)[1] < v10[1])
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      v14 = **v8;
      v15 = **a4;
      if (v14 >= v15 && (v14 != v15 || v12[1] >= v13[1]))
      {
        *a4 = v12;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v16 = (result + 8 * v7);
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = v16[1];
              v20 = **v16;
              if (v20 < *v19 || v20 == *v19 && (*v16)[1] < v19[1])
              {
                ++v16;
                v7 = v18;
              }
            }

            v21 = *v16;
            v22 = **v16;
            if (v22 < v15 || v22 == v15 && v21[1] < v13[1])
            {
              break;
            }

            *v8 = v21;
            v8 = v16;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v16 = v8;
LABEL_13:
        *v16 = v13;
      }
    }
  }

  return result;
}

float **sub_1002F2FB8(float **result, float **a2)
{
  v2 = a2 - result;
  if (v2 >= 2)
  {
    do
    {
      v5 = 0;
      v6 = *result;
      v3 = result;
      do
      {
        v7 = v3;
        v8 = &v3[v5];
        v3 = v8 + 1;
        v9 = 2 * v5;
        v5 = (2 * v5) | 1;
        v10 = v9 + 2;
        if (v10 < v2)
        {
          v13 = v8[2];
          v11 = v8 + 2;
          v12 = v13;
          v14 = *(v11 - 1);
          v15 = *v14 == *v13;
          if (*v14 < *v13 || v15 && v14[1] < v12[1])
          {
            v3 = v11;
            v5 = v10;
          }
        }

        *v7 = *v3;
      }

      while (v5 <= ((v2 - 2) >> 1));
      if (v3 != --a2)
      {
        *v3 = *a2;
        *a2 = v6;
        v16 = (v3 - result + 8) >> 3;
        v17 = v16 - 2;
        if (v16 < 2)
        {
          continue;
        }

        v18 = v17 >> 1;
        v19 = &result[v17 >> 1];
        v20 = *v19;
        v6 = *v3;
        v21 = **v19;
        v22 = **v3;
        if (v21 >= v22 && (v21 != v22 || v20[1] >= v6[1]))
        {
          continue;
        }

        *v3 = v20;
        if (v17 >= 2)
        {
          while (1)
          {
            v23 = v18 - 1;
            v18 = (v18 - 1) >> 1;
            v3 = &result[v18];
            v24 = *v3;
            v25 = **v3;
            if (v25 >= v22 && (v25 != v22 || v24[1] >= v6[1]))
            {
              break;
            }

            *v19 = v24;
            v19 = &result[v18];
            if (v23 <= 1)
            {
              goto LABEL_4;
            }
          }
        }

        v3 = v19;
      }

LABEL_4:
      *v3 = v6;
    }

    while (v2-- > 2);
  }

  return result;
}

void sub_1002F3120(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  sub_1002ACE7C(v834, &off_100478880);
  if (sub_100271148(a1) == 0x10000)
  {
    v8 = *(a1 + 8);
    v9 = *v8;
    v10 = *(v8 + 16);
    v826 = *v8;
    v827 = v10;
    v828 = *(v8 + 32);
    v11 = *(v8 + 56);
    v829 = *(v8 + 48);
    v830 = v11;
    v831 = &v826 + 1;
    v832 = v833;
    v833[1] = 0;
    v833[0] = 0;
    if (v11)
    {
      atomic_fetch_add((v11 + 20), 1u);
      if (*(v8 + 4) <= 2)
      {
LABEL_4:
        v12 = *(v8 + 72);
        v13 = v832;
        *v832 = *v12;
        v13[1] = v12[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v9) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v826) = 0;
    sub_100269B58(&v826, v8);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v826);
  }

LABEL_8:
  *v822 = 1124007936;
  memset(&v822[4], 0, 60);
  v823 = &v822[8];
  v824 = v825;
  v825[1] = 0;
  v825[0] = 0;
  v14 = v831->i32[0];
  v15 = v826 & 7;
  if ((v826 & 5 | 2) != 2)
  {
    v836[0] = 0uLL;
    qmemcpy(sub_1002A80E0(v836, 24), "depth == 0 || depth == 2", 24);
    sub_1002A8980(-215, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1624);
  }

  if (!v827)
  {
    goto LABEL_20;
  }

  if (SDWORD1(v826) >= 3)
  {
    v17 = v831 + 1;
    v18 = 1;
    v19 = DWORD1(v826) & 0x7FFFFFFE;
    v20 = 1;
    do
    {
      v18 *= *(v17 - 1);
      v20 *= *v17;
      v17 += 2;
      v19 -= 2;
    }

    while (v19);
    v16 = v20 * v18;
    v21 = DWORD1(v826) - (DWORD1(v826) & 0x7FFFFFFE);
    if (v21)
    {
      v22 = &v831[(DWORD1(v826) >> 1) & 0x3FFFFFFF];
      do
      {
        v23 = v22->i32[0];
        v22 = (v22 + 4);
        v16 *= v23;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    v16 = SHIDWORD(v826) * SDWORD2(v826);
  }

  if (!DWORD1(v826) || !v16)
  {
LABEL_20:
    v836[0] = 0uLL;
    v24 = sub_1002A80E0(v836, 12);
    *(v24 + 8) = 690518388;
    *v24 = *"!src.empty()";
    sub_1002A8980(-215, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1625);
  }

  v25 = (v826 >> 3) & 0x1FF;
  v26 = v5 - 46;
  if ((v5 - 46) <= 0x2B)
  {
    if (((1 << v26) & 0xF000F) != 0)
    {
      goto LABEL_33;
    }

    if (((1 << v26) & 0xF0000000000) != 0)
    {
      if (a4 > 1 || v25)
      {
        v836[0] = 0uLL;
        v27 = sub_1002A80E0(v836, 20);
        *(v27 + 16) = 824196413;
        *v27 = *"scn == 1 && dcn == 1";
        sub_1002A8980(-215, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1632);
      }

      v836[0].i32[0] = v831->i32[1];
      v836[0].i32[1] = v14;
      sub_100275370(a2, v836, (v15 | 8u) - 8, -1, 0, 0);
      if (sub_100271148(a2) != 0x10000)
      {
        sub_1002703C0(a2, 0xFFFFFFFFLL, v836);
        goto LABEL_154;
      }

      v28 = *(a2 + 8);
      v29 = *v28;
      v30 = *(v28 + 16);
      v836[0] = *v28;
      v836[1] = v30;
      v836[2] = *(v28 + 32);
      v31 = *(v28 + 56);
      v836[3].i64[0] = *(v28 + 48);
      v836[3].i64[1] = v31;
      v837 = &v836[0].i64[1];
      v838 = &v839;
      v840 = 0;
      v839 = 0;
      if (v31)
      {
        atomic_fetch_add((v31 + 20), 1u);
        if (*(v28 + 4) <= 2)
        {
LABEL_30:
          v32 = *(v28 + 72);
          v33 = v838;
          *v838 = *v32;
          v33[1] = v32[1];
LABEL_154:
          if (*&v822[56] && atomic_fetch_add((*&v822[56] + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v822);
          }

          if (*&v822[4] >= 1)
          {
            v97 = 0;
            v98 = v823;
            do
            {
              v98[v97++] = 0;
            }

            while (v97 < *&v822[4]);
          }

          *v822 = v836[0];
          *&v822[16] = v836[1];
          *&v822[32] = v836[2];
          *&v822[48] = v836[3];
          v99 = v824;
          if (v824 == v825)
          {
            v100 = v838;
            if (v836[0].i32[1] <= 2)
            {
              goto LABEL_162;
            }
          }

          else
          {
            j__free(v824);
            v824 = v825;
            v823 = &v822[8];
            v99 = v825;
            v100 = v838;
            if (v836[0].i32[1] <= 2)
            {
LABEL_162:
              *v99 = *v100;
              v99[1] = v100[1];
              goto LABEL_165;
            }
          }

          v824 = v100;
          v823 = v837;
          v838 = &v839;
          v837 = &v836[0].i64[1];
LABEL_165:
          v836[0].i32[0] = 1124007936;
          memset(v836[0].i64 + 4, 0, 60);
          if (v838 != &v839)
          {
            j__free(v838);
          }

          if (!v15)
          {
            v108 = *v831;
            v109 = vadd_s32(*v831, 0x100000001);
            *&v814 = vrev64_s32(v109);
            if (v108.i32[0] >= 3)
            {
              if ((v5 & 0xFFFFFFFE) == 0x56)
              {
                v110 = 1868;
              }

              else
              {
                v110 = 4899;
              }

              if ((v5 & 0xFFFFFFFE) == 0x56)
              {
                v111 = 4899;
              }

              else
              {
                v111 = 1868;
              }

              v113 = v5 == 87 || v5 == 89;
              v841.i32[0] = 0;
              v841.i32[1] = v109.i32[0];
              sub_1002F7B54(v836, &v826, v822, v113, (v5 & 0xFFFFFFFE) == 86, &v814, v110, v111);
              if (*&v822[4] >= 3)
              {
                v512 = v823 + 1;
                v513 = 1;
                v514 = *&v822[4] & 0x7FFFFFFE;
                v515 = 1;
                do
                {
                  v513 *= *(v512 - 1);
                  v515 *= *v512;
                  v512 += 2;
                  v514 -= 2;
                }

                while (v514);
                v114 = v515 * v513;
                v516 = *&v822[4] - (*&v822[4] & 0x7FFFFFFE);
                if (v516)
                {
                  v517 = &v823[2 * ((*&v822[4] >> 1) & 0x3FFFFFFF)];
                  do
                  {
                    v518 = *v517++;
                    v114 *= v518;
                    --v516;
                  }

                  while (v516);
                }
              }

              else
              {
                v114 = *&v822[12] * *&v822[8];
              }

              sub_1002829C8(&v841, v836, vcvtd_n_f64_u64(v114, 0x10uLL));
              sub_1002F85E8(v836);
            }

            v519 = *&v822[16];
            v521 = *v823;
            v520 = v823[1];
            *&v814 = __PAIR64__(*v823, v520);
            if (v521 <= 2)
            {
              if (v520 >= 1)
              {
                v525 = 0;
                v526 = SLODWORD(v825[0]);
                do
                {
                  v527 = (v519 + v525);
                  v527[(SDWORD1(v814) - 1) * v526] = 0;
                  *v527 = 0;
                  ++v525;
                }

                while (v525 < v814);
              }
            }

            else if (v520 >= 1)
            {
              v522 = 0;
              v523 = v825[0];
              do
              {
                v524 = (v519 + v522);
                *v524 = *(v519 + v523 + v522);
                v524[(SDWORD1(v814) - 1) * v523] = *(v519 + v522++ + (SDWORD1(v814) - 2) * v523);
              }

              while (v522 < v814);
            }

            goto LABEL_88;
          }

          if (v15 != 2)
          {
            v836[0] = 0uLL;
            qmemcpy(sub_1002A80E0(v836, 54), "Bayer->Gray demosaicing only supports 8u and 16u types", 54);
            sub_1002A8980(-210, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1642);
          }

          v101 = *v831;
          v102 = vadd_s32(*v831, 0x100000001);
          *&v814 = vrev64_s32(v102);
          if (v101.i32[0] >= 3)
          {
            if ((v5 & 0xFFFFFFFE) == 0x56)
            {
              v103 = 1868;
            }

            else
            {
              v103 = 4899;
            }

            if ((v5 & 0xFFFFFFFE) == 0x56)
            {
              v104 = 4899;
            }

            else
            {
              v104 = 1868;
            }

            v106 = v5 == 87 || v5 == 89;
            v841.i32[0] = 0;
            v841.i32[1] = v102.i32[0];
            sub_1002F8724(v836, &v826, v822, v106, (v5 & 0xFFFFFFFE) == 86, &v814, v103, v104);
            if (*&v822[4] >= 3)
            {
              v545 = v823 + 1;
              v546 = 1;
              v547 = *&v822[4] & 0x7FFFFFFE;
              v548 = 1;
              do
              {
                v546 *= *(v545 - 1);
                v548 *= *v545;
                v545 += 2;
                v547 -= 2;
              }

              while (v547);
              v107 = v548 * v546;
              v549 = *&v822[4] - (*&v822[4] & 0x7FFFFFFE);
              if (v549)
              {
                v550 = &v823[2 * ((*&v822[4] >> 1) & 0x3FFFFFFF)];
                do
                {
                  v551 = *v550++;
                  v107 *= v551;
                  --v549;
                }

                while (v549);
              }
            }

            else
            {
              v107 = *&v822[12] * *&v822[8];
            }

            sub_1002829C8(&v841, v836, vcvtd_n_f64_u64(v107, 0x10uLL));
            sub_1002F8F64(v836);
          }

          v552 = *&v822[16];
          v554 = *v823;
          v553 = v823[1];
          v555 = v825[0] >> 1;
          if (*v823 > 2)
          {
            if (v553 < 1)
            {
              goto LABEL_88;
            }

            v556 = v554 - 1;
            v557 = (*v823 - 2) * v555;
            v558 = v556 * v555;
            v559 = 2 * v555;
            if (v553 < 4)
            {
              v560 = 0;
              goto LABEL_680;
            }

            v560 = 0;
            v575 = 2 * v558;
            if ((2 * v558) < 0x20)
            {
              goto LABEL_680;
            }

            if ((v559 + 31) < 0x20)
            {
              goto LABEL_680;
            }

            v576 = 2 * v557;
            if ((2 * v557) < 0x20 || (v575 - v559) < 0x20 || (v575 - v576) < 0x20)
            {
              goto LABEL_680;
            }

            if (v553 >= 0x10)
            {
              v560 = v553 & 0x7FFFFFF0;
              v622 = (*&v822[16] + 16);
              v623 = (*&v822[16] + 16 + v559);
              v624 = (*&v822[16] + 16 + v575);
              v625 = v560;
              do
              {
                v626 = *v623;
                *(v622 - 1) = *(v623 - 1);
                *v622 = v626;
                v627 = *(v622 + 2 * v557);
                *(v624 - 1) = *(v622 + v576 - 16);
                *v624 = v627;
                v623 += 2;
                v624 += 2;
                v622 += 2;
                v625 -= 16;
              }

              while (v625);
              if (v560 == v553)
              {
                goto LABEL_88;
              }

              if ((v553 & 0xC) == 0)
              {
LABEL_680:
                v561 = v553 - v560;
                v562 = (v552 + 2 * v560);
                do
                {
                  *v562 = v562[v559 / 2];
                  v562[v558] = v562[v557];
                  ++v562;
                  --v561;
                }

                while (v561);
                goto LABEL_88;
              }
            }

            else
            {
              v560 = 0;
            }

            v628 = v560;
            v560 = v553 & 0x7FFFFFFC;
            v629 = (v552 + 2 * v628);
            v630 = v628 - v560;
            do
            {
              *v629 = *(v629 + v559);
              *(v629 + 2 * v558) = *(v629 + 2 * v557);
              ++v629;
              v630 += 4;
            }

            while (v630);
            if (v560 == v553)
            {
              goto LABEL_88;
            }

            goto LABEL_680;
          }

          if (v553 < 1)
          {
            goto LABEL_88;
          }

          v563 = 0;
          v564 = (v554 - 1) * v555;
          v565 = v564;
          if (v553 >= 4 && (-2 * v564) >= 0x20)
          {
            if (v553 < 0x10)
            {
              v563 = 0;
LABEL_751:
              v589 = v563;
              v563 = v553 & 0x7FFFFFFC;
              v590 = (v552 + 2 * v589);
              v591 = v589 - v563;
              do
              {
                *(v590 + 2 * v565) = 0;
                *v590++ = 0;
                v591 += 4;
              }

              while (v591);
              if (v563 == v553)
              {
                goto LABEL_88;
              }

              goto LABEL_754;
            }

            v563 = v553 & 0x7FFFFFF0;
            v586 = (*&v822[16] + 16);
            v587 = (*&v822[16] + 16 + 2 * v565);
            v588 = v563;
            do
            {
              *(v587 - 1) = 0uLL;
              *v587 = 0uLL;
              v587 += 2;
              *(v586 - 1) = 0uLL;
              *v586 = 0uLL;
              v586 += 2;
              v588 -= 16;
            }

            while (v588);
            if (v563 == v553)
            {
              goto LABEL_88;
            }

            if ((v553 & 0xC) != 0)
            {
              goto LABEL_751;
            }
          }

LABEL_754:
          v592 = v553 - v563;
          v593 = (v552 + 2 * v563);
          do
          {
            v593[v565] = 0;
            *v593++ = 0;
            --v592;
          }

          while (v592);
          goto LABEL_88;
        }
      }

      else if (v29.i32[1] <= 2)
      {
        goto LABEL_30;
      }

      v836[0].i32[1] = 0;
      sub_100269B58(v836, v28);
      goto LABEL_154;
    }
  }

  v34 = v5 - 135;
  if ((v5 - 135) < 4)
  {
    if (a4 < 1)
    {
      a4 = 3;
    }

    if (a4 != 3 || v25)
    {
      v836[0] = 0uLL;
      v42 = sub_1002A80E0(v836, 20);
      *(v42 + 16) = 857750845;
      *v42 = *"scn == 1 && dcn == 3";
      sub_1002A8980(-215, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1680);
    }

    v836[0].i32[0] = v831->i32[1];
    v836[0].i32[1] = v14;
    sub_100275370(a2, v836, (v15 | 0x18u) - 8, -1, 0, 0);
    if (sub_100271148(a2) != 0x10000)
    {
      sub_1002703C0(a2, 0xFFFFFFFFLL, v836);
      goto LABEL_128;
    }

    v43 = *(a2 + 8);
    v44 = *v43;
    v45 = *(v43 + 16);
    v836[0] = *v43;
    v836[1] = v45;
    v836[2] = *(v43 + 32);
    v46 = *(v43 + 56);
    v836[3].i64[0] = *(v43 + 48);
    v836[3].i64[1] = v46;
    v837 = &v836[0].i64[1];
    v838 = &v839;
    v840 = 0;
    v839 = 0;
    if (v46)
    {
      atomic_fetch_add((v46 + 20), 1u);
      if (*(v43 + 4) <= 2)
      {
LABEL_51:
        v47 = *(v43 + 72);
        v48 = v838;
        *v838 = *v47;
        v48[1] = v47[1];
LABEL_128:
        if (*&v822[56] && atomic_fetch_add((*&v822[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v822);
        }

        if (*&v822[4] >= 1)
        {
          v87 = 0;
          v88 = v823;
          do
          {
            v88[v87++] = 0;
          }

          while (v87 < *&v822[4]);
        }

        *v822 = v836[0];
        *&v822[16] = v836[1];
        *&v822[32] = v836[2];
        *&v822[48] = v836[3];
        v89 = v824;
        if (v824 == v825)
        {
          v90 = v838;
          if (v836[0].i32[1] <= 2)
          {
            goto LABEL_136;
          }
        }

        else
        {
          j__free(v824);
          v824 = v825;
          v823 = &v822[8];
          v89 = v825;
          v90 = v838;
          if (v836[0].i32[1] <= 2)
          {
LABEL_136:
            *v89 = *v90;
            v89[1] = v90[1];
            goto LABEL_139;
          }
        }

        v824 = v90;
        v823 = v837;
        v838 = &v839;
        v837 = &v836[0].i64[1];
LABEL_139:
        v836[0].i32[0] = 1124007936;
        memset(v836[0].i64 + 4, 0, 60);
        if (v838 != &v839)
        {
          j__free(v838);
        }

        if (v15)
        {
          if (v15 != 2)
          {
            v836[0] = 0uLL;
            qmemcpy(sub_1002A80E0(v836, 74), "Bayer->RGB Edge-Aware demosaicing only currently supports 8u and 16u types", 74);
            sub_1002A8980(-210, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1689);
          }

          v91 = v831->i32[1];
          if (v91 >= 3)
          {
            v92 = v831->i32[0] - 2;
            if (v831->i32[0] > 2)
            {
              LODWORD(v814) = v91 - 2;
              DWORD1(v814) = v92;
              sub_1002FA23C(v836, &v826, v822, &v814, v34 < 2, (v5 & 0xFFFFFFFD) == 136);
              v841.i32[0] = 0;
              v841.i32[1] = DWORD1(v814);
              if (*&v822[4] >= 3)
              {
                v529 = v823 + 1;
                v530 = 1;
                v531 = *&v822[4] & 0x7FFFFFFE;
                v532 = 1;
                do
                {
                  v530 *= *(v529 - 1);
                  v532 *= *v529;
                  v529 += 2;
                  v531 -= 2;
                }

                while (v531);
                v93 = v532 * v530;
                v533 = *&v822[4] - (*&v822[4] & 0x7FFFFFFE);
                if (v533)
                {
                  v534 = &v823[2 * ((*&v822[4] >> 1) & 0x3FFFFFFF)];
                  do
                  {
                    v535 = *v534++;
                    v93 *= v535;
                    --v533;
                  }

                  while (v533);
                }
              }

              else
              {
                v93 = *&v822[12] * *&v822[8];
              }

              sub_1002829C8(&v841, v836, vcvtd_n_f64_u64(v93, 0x10uLL));
              sub_1002FA90C(v836);
              v536 = *&v822[16];
              v537 = v823[1] + v823[1] * ((*v822 >> 3) & 0x1FFu);
              v538 = v825[0] / ((0x88442211uLL >> (4 * (v822[0] & 7u))) & 0xF);
              v539 = *v823 - 1;
              v540 = v538 * v539;
              v541 = *&v822[16] + 2 * v538 * v539;
              if (*v823 > 2)
              {
                if (v537 < 1)
                {
                  goto LABEL_88;
                }

                v542 = *&v822[16] + 2 * v538;
                v543 = v541 - 2 * v538;
                if (v537 < 4)
                {
                  goto LABEL_669;
                }

                v544 = v540 & 0x7FFFFFFFFFFFFFF0;
                if (v544)
                {
                  if (-2 * v538 < 0x20)
                  {
LABEL_669:
                    v544 = 0;
                    goto LABEL_799;
                  }

                  v544 = 0;
                  v594 = v538 * (2 * v539 - 2);
                  v595 = v538 & 0x7FFFFFFFFFFFFFF0;
                  if (v594 < 0x20 || v595 == 0)
                  {
                    goto LABEL_799;
                  }

                  if (v537 < 0x10)
                  {
                    v544 = 0;
LABEL_796:
                    v648 = v544;
                    v544 = v537 & 0x7FFFFFFC;
                    v649 = (v536 + 2 * v648);
                    v650 = v648 - v544;
                    do
                    {
                      *v649++ = *(v542 + 2 * v648);
                      *(v541 + 2 * v648) = *(v543 + 2 * v648);
                      v648 += 4;
                      v650 += 4;
                    }

                    while (v650);
                    if (v544 == v537)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_799;
                  }

                  v640 = 0;
                  v544 = v537 & 0x7FFFFFF0;
                  v641 = (*&v822[16] + 16);
                  v642 = v544;
                  do
                  {
                    v643 = (v542 + 2 * v640);
                    v644 = v643[1];
                    *(v641 - 1) = *v643;
                    *v641 = v644;
                    v645 = (v543 + 2 * v640);
                    v646 = v645[1];
                    v647 = (v541 + 2 * v640);
                    *v647 = *v645;
                    v647[1] = v646;
                    v640 += 16;
                    v641 += 2;
                    v642 -= 16;
                  }

                  while (v642);
                  if (v544 == v537)
                  {
                    goto LABEL_88;
                  }

                  if ((v537 & 0xC) != 0)
                  {
                    goto LABEL_796;
                  }
                }

LABEL_799:
                v651 = v537 - v544;
                v652 = (v536 + 2 * v544);
                do
                {
                  *v652++ = *(v542 + 2 * v544);
                  *(v541 + 2 * v544) = *(v543 + 2 * v544);
                  ++v544;
                  --v651;
                }

                while (v651);
                goto LABEL_88;
              }

              if (v537 < 1)
              {
                goto LABEL_88;
              }

              if (v537 < 4)
              {
                v566 = 0;
                goto LABEL_789;
              }

              v566 = 0;
              if (-2 * v540 < 0x20)
              {
                goto LABEL_789;
              }

              if (v537 >= 0x10)
              {
                v631 = 0;
                v566 = v537 & 0x7FFFFFF0;
                v632 = (*&v822[16] + 16);
                v633 = v566;
                do
                {
                  v634 = (v541 + 2 * v631);
                  *v634 = 0uLL;
                  v634[1] = 0uLL;
                  *(v632 - 1) = 0uLL;
                  *v632 = 0uLL;
                  v631 += 16;
                  v632 += 2;
                  v633 -= 16;
                }

                while (v633);
                if (v566 == v537)
                {
                  goto LABEL_88;
                }

                if ((v537 & 0xC) == 0)
                {
LABEL_789:
                  v638 = v537 - v566;
                  v639 = (v536 + 2 * v566);
                  do
                  {
                    *(v541 + 2 * v566) = 0;
                    *v639++ = 0;
                    ++v566;
                    --v638;
                  }

                  while (v638);
                  goto LABEL_88;
                }
              }

              else
              {
                v566 = 0;
              }

              v635 = v566;
              v566 = v537 & 0x7FFFFFFC;
              v636 = (v536 + 2 * v635);
              v637 = v635 - v566;
              do
              {
                *(v541 + 2 * v635) = 0;
                *v636++ = 0;
                v635 += 4;
                v637 += 4;
              }

              while (v637);
              if (v566 == v537)
              {
                goto LABEL_88;
              }

              goto LABEL_789;
            }
          }
        }

        else
        {
          v94 = v831->i32[1];
          if (v94 >= 3)
          {
            v95 = v831->i32[0] - 2;
            if (v831->i32[0] > 2)
            {
              LODWORD(v814) = v94 - 2;
              DWORD1(v814) = v95;
              sub_1002F9A60(v836, &v826, v822, &v814, v34 < 2, (v5 & 0xFFFFFFFD) == 136);
              v841.i32[0] = 0;
              v841.i32[1] = DWORD1(v814);
              if (*&v822[4] >= 3)
              {
                v498 = v823 + 1;
                v499 = 1;
                v500 = *&v822[4] & 0x7FFFFFFE;
                v501 = 1;
                do
                {
                  v499 *= *(v498 - 1);
                  v501 *= *v498;
                  v498 += 2;
                  v500 -= 2;
                }

                while (v500);
                v96 = v501 * v499;
                v502 = *&v822[4] - (*&v822[4] & 0x7FFFFFFE);
                if (v502)
                {
                  v503 = &v823[2 * ((*&v822[4] >> 1) & 0x3FFFFFFF)];
                  do
                  {
                    v504 = *v503++;
                    v96 *= v504;
                    --v502;
                  }

                  while (v502);
                }
              }

              else
              {
                v96 = *&v822[12] * *&v822[8];
              }

              sub_1002829C8(&v841, v836, vcvtd_n_f64_u64(v96, 0x10uLL));
              sub_1002FA100(v836);
              v505 = *&v822[16];
              v506 = v823[1] + v823[1] * ((*v822 >> 3) & 0x1FF);
              DWORD1(v814) = *v823;
              LODWORD(v814) = v506;
              v507 = v825[0] / ((0x88442211uLL >> (4 * (v822[0] & 7u))) & 0xF);
              v508 = *&v822[16] + v507 * (SDWORD1(v814) - 1);
              if (SDWORD1(v814) <= 2)
              {
                if (v506 >= 1)
                {
                  v528 = 0;
                  do
                  {
                    *(v508 + v528) = 0;
                    *(v505 + v528++) = 0;
                  }

                  while (v528 < v814);
                }
              }

              else if (v506 >= 1)
              {
                v509 = 0;
                v510 = *&v822[16] + v507;
                v511 = v508 - v507;
                do
                {
                  *(v505 + v509) = *(v510 + v509);
                  *(v508 + v509) = *(v511 + v509);
                  ++v509;
                }

                while (v509 < v814);
              }

              goto LABEL_88;
            }
          }
        }

        memset(v836, 0, 32);
        sub_10022CAFC(v822, v836);
        goto LABEL_88;
      }
    }

    else if (v44.i32[1] <= 2)
    {
      goto LABEL_51;
    }

    v836[0].i32[1] = 0;
    sub_100269B58(v836, v43);
    goto LABEL_128;
  }

  if ((v5 - 139) >= 4)
  {
    v836[0] = 0uLL;
    qmemcpy(sub_1002A80E0(v836, 43), "Unknown / unsupported color conversion code", 43);
    sub_1002A8980(-206, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1694);
  }

LABEL_33:
  if (a4 < 1)
  {
    a4 = 3;
  }

  if (v25 || (a4 - 3) >= 2)
  {
    v836[0] = 0uLL;
    qmemcpy(sub_1002A80E0(v836, 34), "scn == 1 && (dcn == 3 || dcn == 4)", 34);
    sub_1002A8980(-215, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1651);
  }

  v836[0].i32[0] = v831->i32[1];
  v836[0].i32[1] = v14;
  sub_100275370(a2, v836, (v15 | (8 * a4)) - 8, -1, 0, 0);
  if (sub_100271148(a2) == 0x10000)
  {
    v36 = *(a2 + 8);
    v37 = *v36;
    v38 = *(v36 + 16);
    v814 = *v36;
    v815 = v38;
    v816 = *(v36 + 32);
    v39 = *(v36 + 56);
    v817 = *(v36 + 48);
    v818 = v39;
    v819 = &v814 + 2;
    v820 = v821;
    v821[1] = 0;
    v821[0] = 0;
    if (v39)
    {
      atomic_fetch_add((v39 + 20), 1u);
      if (*(v36 + 4) <= 2)
      {
LABEL_41:
        v40 = *(v36 + 72);
        v41 = v820;
        *v820 = *v40;
        v41[1] = v40[1];
        goto LABEL_54;
      }
    }

    else if (SDWORD1(v37) <= 2)
    {
      goto LABEL_41;
    }

    DWORD1(v814) = 0;
    sub_100269B58(&v814, v36);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v814);
  }

LABEL_54:
  if ((v5 - 139) < 4 || v26 <= 3)
  {
    if (v15)
    {
      if (v15 != 2)
      {
        v836[0] = 0uLL;
        qmemcpy(sub_1002A80E0(v836, 53), "Bayer->RGB demosaicing only supports 8u and 16u types", 53);
        sub_1002A8980(-210, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1666);
      }

      v49 = v821[0];
      v50 = v814;
      v51 = *v831;
      v52 = vadd_s32(*v831, 0x100000001);
      v841 = vrev64_s32(v52);
      if (v51.i32[0] >= 3)
      {
        v54 = v5 == 47 || v5 == 49;
        if ((v5 & 0xFFFFFFFE) == 0x2E)
        {
          v55 = -1;
        }

        else
        {
          v55 = 1;
        }

        v835[0] = 0;
        v835[1] = v52.i32[0];
        sub_1002F90A0(v836, &v826, &v814, v54, v55, &v841);
        if (SDWORD1(v814) >= 3)
        {
          v66 = v819 + 1;
          v67 = 1;
          v68 = DWORD1(v814) & 0x7FFFFFFE;
          v69 = 1;
          do
          {
            v67 *= *(v66 - 1);
            v69 *= *v66;
            v66 += 2;
            v68 -= 2;
          }

          while (v68);
          v56 = v69 * v67;
          v70 = DWORD1(v814) - (DWORD1(v814) & 0x7FFFFFFE);
          if (v70)
          {
            v71 = &v819[2 * ((DWORD1(v814) >> 1) & 0x3FFFFFFF)];
            do
            {
              v72 = *v71++;
              v56 *= v72;
              --v70;
            }

            while (v70);
          }
        }

        else
        {
          v56 = SHIDWORD(v814) * SDWORD2(v814);
        }

        sub_1002829C8(v835, v836, vcvtd_n_f64_u64(v56, 0x10uLL));
        sub_1002F9924(v836);
      }

      v73 = v49 >> 1;
      v74 = v815;
      v75 = *v819;
      v76 = v819[1] * (((v50 >> 3) & 0x1FF) + 1);
      if (*v819 > 2)
      {
        if (v76 < 1)
        {
          goto LABEL_80;
        }

        v77 = v75 - 1;
        v78 = (*v819 - 2) * v73;
        v79 = v77 * v73;
        v80 = 2 * v73;
        if (v76 < 4)
        {
          v81 = 0;
          goto LABEL_118;
        }

        v81 = 0;
        v496 = 2 * v79;
        if ((2 * v79) < 0x20)
        {
          goto LABEL_118;
        }

        if ((v80 + 31) < 0x20)
        {
          goto LABEL_118;
        }

        v497 = 2 * v78;
        if ((2 * v78) < 0x20 || (v496 - v80) < 0x20 || (v496 - v497) < 0x20)
        {
          goto LABEL_118;
        }

        if (v76 >= 0x10)
        {
          v81 = v76 & 0x7FFFFFF0;
          v577 = (v815 + 16);
          v578 = (v815 + 16 + v80);
          v579 = (v815 + 16 + v496);
          v580 = v81;
          do
          {
            v581 = *v578;
            *(v577 - 1) = *(v578 - 1);
            *v577 = v581;
            v582 = *(v577 + 2 * v78);
            *(v579 - 1) = *(v577 + v497 - 16);
            *v579 = v582;
            v578 += 2;
            v579 += 2;
            v577 += 2;
            v580 -= 16;
          }

          while (v580);
          if (v81 == v76)
          {
            goto LABEL_80;
          }

          if ((v76 & 0xC) == 0)
          {
LABEL_118:
            v82 = v76 - v81;
            v83 = (v74 + 2 * v81);
            do
            {
              *v83 = v83[v80 / 2];
              v83[v79] = v83[v78];
              ++v83;
              --v82;
            }

            while (v82);
            goto LABEL_80;
          }
        }

        else
        {
          v81 = 0;
        }

        v583 = v81;
        v81 = v76 & 0x7FFFFFFC;
        v584 = (v74 + 2 * v583);
        v585 = v583 - v81;
        do
        {
          *v584 = *(v584 + v80);
          *(v584 + 2 * v79) = *(v584 + 2 * v78);
          ++v584;
          v585 += 4;
        }

        while (v585);
        if (v81 == v76)
        {
          goto LABEL_80;
        }

        goto LABEL_118;
      }

      if (v76 < 1)
      {
        goto LABEL_80;
      }

      v84 = 0;
      v85 = (v75 - 1) * v73;
      v86 = v85;
      if (v76 >= 4 && (-2 * v85) >= 0x20)
      {
        if (v76 < 0x10)
        {
          v84 = 0;
LABEL_697:
          v570 = v84;
          v84 = v76 & 0x7FFFFFFC;
          v571 = (v74 + 2 * v570);
          v572 = v570 - v84;
          do
          {
            *(v571 + 2 * v86) = 0;
            *v571++ = 0;
            v572 += 4;
          }

          while (v572);
          if (v84 == v76)
          {
            goto LABEL_80;
          }

          goto LABEL_700;
        }

        v84 = v76 & 0x7FFFFFF0;
        v567 = (v815 + 16);
        v568 = (v815 + 16 + 2 * v86);
        v569 = v84;
        do
        {
          *(v568 - 1) = 0uLL;
          *v568 = 0uLL;
          v568 += 2;
          *(v567 - 1) = 0uLL;
          *v567 = 0uLL;
          v567 += 2;
          v569 -= 16;
        }

        while (v569);
        if (v84 == v76)
        {
          goto LABEL_80;
        }

        if ((v76 & 0xC) != 0)
        {
          goto LABEL_697;
        }
      }

LABEL_700:
      v573 = v76 - v84;
      v574 = (v74 + 2 * v84);
      do
      {
        v574[v86] = 0;
        *v574++ = 0;
        --v573;
      }

      while (v573);
      goto LABEL_80;
    }

LABEL_79:
    sub_1002F6E04(&v826, &v814, v5);
    goto LABEL_80;
  }

  if (v15)
  {
    v836[0] = 0uLL;
    v57 = sub_1002A80E0(v836, 10);
    *(v57 + 8) = 12320;
    *v57 = *"depth == 0";
    sub_1002A8980(-215, v836[0].i64, "demosaicing", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/demosaicing.cpp", 1670);
  }

  v58 = v831->i32[1];
  if (v58 >= v831->i32[0])
  {
    v59 = v831->i32[0];
  }

  else
  {
    v59 = v831->i32[1];
  }

  if (v59 <= 7)
  {
    goto LABEL_79;
  }

  v655 = v831->i32[0];
  v700 = v815;
  v654 = v821[0];
  v116 = v5 != 62 && v5 != 64;
  v705 = v116;
  v117 = (v5 & 0xFFFFFFFE) != 62;
  v789 = v831->i32[1];
  v836[0].i64[0] = v836[1].i64;
  v836[0].i64[1] = 147 * v58;
  if ((147 * v58) >= 0x209)
  {
    operator new[]();
  }

  v809 = 2 * v58;
  v118 = 5 * v58;
  v811 = 2 * v789;
  v808 = (v789 - 3);
  v119 = 2 * v808 + 4;
  v120 = &v836[1].i8[2 * v789];
  v121 = v120 + 2;
  v697 = v120 + 4;
  v122 = &v120[2 * v808 + 4];
  v807 = 4 * v789;
  v123 = &v836[1].i8[2 * v808 + 4 + v807];
  v806 = 6 * v789;
  v124 = &v836[1].i8[v806 + 2];
  v696 = &v836[1].i8[v806 + 4];
  v125 = &v696[2 * v808];
  v126 = 8 * v789;
  v127 = &v836[1].i8[v126 + 2];
  v695 = &v836[1].i8[v126 + 4];
  v128 = &v695[2 * v808];
  v805 = 10 * v789;
  v129 = &v836[1].i8[v805 + 2];
  v694 = &v836[1].i8[v805 + 4];
  v130 = &v694[2 * v808];
  v131 = (v120 + 2) >= v128 || v127 >= v122;
  v798 = 6 * v789;
  v132 = 3 * v789;
  v133 = 12 * v789;
  v800 = &v836[1].i8[v133];
  v134 = &v836[1].i8[v133 + v119];
  v135 = !v131;
  v804 = 2 * v798;
  v136 = &v836[1].i8[v133 + 2];
  v137 = v121 >= v134 || v136 >= v122;
  v138 = &v836[1].i8[4 * v789 + 2];
  v139 = !v137;
  v141 = v138 < v128 && v127 < v123;
  v143 = v138 < v134 && v136 < v123;
  v145 = v124 < v130 && v129 < v125;
  v147 = v127 < v130 && v129 < v128;
  v149 = v129 < v134 && v136 < v130;
  if (v127 < v134 && v136 < v128)
  {
    v149 = 1;
  }

  v725 = v134;
  v724 = v136;
  if (v124 < v134 && v136 < v125)
  {
    v147 = 1;
  }

  v727 = &v836[1].i8[v126 + 2];
  if (v124 < v128 && v127 < v125)
  {
    v145 = 1;
  }

  v153 = v147 || v145;
  if (v138 < v130 && v129 < v123)
  {
    v143 = 1;
  }

  if (v138 < v125 && v124 < v123)
  {
    v141 = 1;
  }

  v156 = v143 || v141;
  v726 = &v836[1].i8[v805 + 2];
  if (v121 < v130 && v129 < v122)
  {
    v139 = 1;
  }

  v728 = &v836[1].i8[v806 + 2];
  if (v121 < v125 && v124 < v122)
  {
    v135 = 1;
  }

  v159 = v139 | v135;
  v730 = v120 + 2;
  v729 = &v120[2 * v808 + 4];
  v723 = &v836[1].i8[4 * v789 + 2];
  if (v121 < v123 && v138 < v122)
  {
    v159 = 1;
  }

  v722 = v149 | v153 | v156 | v159;
  LODWORD(v704) = 2 * v117;
  v161 = ~LODWORD(v833[0]);
  v162 = ((v833[0] << 32) - 0x100000000) >> 32;
  v163 = (&_mh_execute_header + (v833[0] << 32)) >> 32;
  v693 = v132 - 9;
  v721 = &v836[1].i8[v119];
  v164 = 2 * LODWORD(v833[0]);
  v165 = 2 * SLODWORD(v833[0]);
  v166 = 3 * SLODWORD(v833[0]);
  v813 = SLODWORD(v833[0]);
  v167 = v827 + v164 + v166 + v808;
  v691 = v167 + v161 + 2;
  v690 = v167 + v162 + 2;
  v168 = v827 + v164 + -LODWORD(v833[0]);
  v688 = v168 + v166 + v808 + 2;
  v689 = v168 + 1;
  v687 = v827 + v164 + 4 * SLODWORD(v833[0]) + v808 + 2;
  v169 = v827 + v164 + ((&_mh_execute_header - (v833[0] << 32)) >> 32);
  v685 = v169 + v166 + v808 + 2;
  v686 = v169 + 1;
  v684 = v167 + v163 + 2;
  v683 = v167 + 1;
  v682 = v167 + 3;
  v681 = v164 + v827 + v163 + 1;
  v802 = v827 + v165 + v164;
  v720 = v827 + v165;
  v775 = (&_mh_execute_header - (v833[0] << 32)) >> 32;
  v776 = -LODWORD(v833[0]);
  v679 = v168 + 1;
  v680 = v169 + 1;
  v677 = v164 + v161 + v827 + 1;
  v678 = v164 + v827 + v162 + 1;
  v676 = &v836[1].i8[2 * v132 + 6];
  v675 = 49 * v789;
  v674 = &v836[1].i8[2 * v809 + 2];
  v673 = &v836[1].i8[2 * v798 + 2];
  v672 = v800 + 6;
  v671 = &v836[1].i8[2 * v118 + 6];
  v653 = (3 * v789);
  v670 = &v836[1].i8[2 * v132 + 2];
  v668 = &v836[1].i8[v126 + 6];
  v669 = &v836[1].i8[2 * v118 + 2];
  v801 = v164 + SLODWORD(v833[0]) + v827 + 2;
  v708 = v815 + 2 * SLODWORD(v821[0]) + 7;
  v773 = v165 + v164 + -2 * LODWORD(v833[0]) + v827 + 3;
  v767 = v165 + v164 + ((2 * LODWORD(v833[0])) ^ 0xFFFFFFFE) + v827 + 3;
  v799 = v166 + v164 + v827 + 2;
  v772 = v165 + 2 * v164 + v827 + 3;
  v771 = v165 + v164 + 2 * LODWORD(v833[0]) - 2 + v827 + 3;
  v170 = v789;
  v766 = v165 + v164 + (((v833[0] << 32) - 0x200000000) >> 32) + v827 + 2;
  v765 = v165 + v164 + ((0xFFFFFFFE00000000 - (v833[0] << 32)) >> 32) + v827 + 2;
  v719 = v165 + v164 + 2 * LODWORD(v833[0]) + 2 + v827 + 2;
  v764 = v165 + v164 + (((v833[0] << 32) + 0x200000000) >> 32) + v827 + 2;
  v171 = 2;
  v763 = v165 + v164 + ((0x200000000 - (v833[0] << 32)) >> 32) + v827 + 2;
  v718 = v165 + v164 + 2 - 2 * LODWORD(v833[0]) + v827 + 2;
  v810 = v169 + v165 + 2;
  v797 = v165 + v164 + v162 + v827 + 2;
  v770 = v165 + v164 + v161 + v827 + 2;
  v769 = v165 + v164 + v163 + v827 + 2;
  v698 = (v655 - 4);
  v667 = v827 + v164 + 2;
  v692 = v827 + v164;
  v172 = v827 + v164 + 1;
  v699 = SLODWORD(v821[0]);
  v173 = 0;
  v666 = v815 + 8;
  v665 = v815 + 5;
  v664 = v815 + 1;
  v663 = v815 + 2;
  v662 = v815 + 3;
  v661 = v815 + 4;
  v174 = 0;
  v778 = v161;
  v660 = v172 + v161;
  v777 = v162;
  v659 = v172 + v162;
  v175 = SLODWORD(v833[0]);
  v774 = v163;
  v794 = v172;
  v658 = v172 + v163;
  v176 = (v808 + 1) & 0x1FFFFFFF0;
  v657 = v176 | 1;
  v712 = v176;
  v656 = 2 * v176;
  v717 = v808 + 1;
  v177 = (v808 + 1) & 0x1FFFFFFFCLL;
  v710 = 2 * v177;
  v711 = v177;
  v709 = v177 | 1;
  v178 = 1;
  v179 = 3;
  v180 = 2;
  while (2)
  {
    v803 = v180;
    v703 = v171;
    v184 = 2 * (v675 * (v171 % 3));
    v762 = &v676[v184];
    v761 = &v696[v184];
    v760 = &v674[v184];
    v759 = &v836[1].i8[v807 + 4 + v184];
    v716 = &v673[v184];
    v715 = &v672[v184];
    v758 = &v671[v184];
    v757 = &v836[1].i8[8 * v789 + 2 + v184];
    v793 = &v836[1].i8[v184];
    v702 = v178;
    v185 = 2 * (v675 * (v178 % 3));
    v756 = &v676[v185];
    v755 = &v670[v185];
    v754 = &v696[v185];
    v753 = &v674[v185];
    v796 = &v836[1].i8[v185];
    v752 = &v694[v185];
    v751 = &v695[v185];
    v792 = &v836[1].i8[2 * v789 + 6 + v185];
    v791 = &v697[v185];
    v790 = &v836[1].i8[2 * v789 + 2 + v185];
    v707 = v174;
    v186 = 2 * (v675 * (v174 % 3));
    v750 = &v670[v186];
    v749 = &v696[v186];
    v187 = v180;
    v795 = &v836[1].i8[v186];
    v714 = &v672[v186];
    v713 = &v673[v186];
    v748 = &v669[v186];
    v747 = &v668[v186];
    if (v180 == 2)
    {
      v188 = -1;
    }

    else
    {
      v188 = 1;
    }

    v189 = v175 * (v188 + v180);
    v740 = v683 + v175 * v173;
    v190.i64[0] = v740;
    v739 = v682 + v175 * v173;
    v190.i64[1] = v739;
    v742 = v685 + v175 * v173;
    v191.i64[0] = v742;
    v741 = v684 + v175 * v173;
    v191.i64[1] = v741;
    v744 = v688 + v175 * v173;
    v192.i64[0] = v744;
    v743 = v687 + v175 * v173;
    v192.i64[1] = v743;
    v746 = v691 + v175 * v173;
    v193.i64[0] = v746;
    v745 = v690 + v175 * v173;
    v193.i64[1] = v745;
    v194 = v692 + v189;
    v195.i64[0] = v194;
    v737 = v667 + v189;
    v195.i64[1] = v667 + v189;
    v706 = v173;
    v736 = v686 + v189;
    v196.i64[0] = v686 + v189;
    v735 = v658 + v189;
    v196.i64[1] = v658 + v189;
    v733 = v689 + v189;
    v197.i64[0] = v689 + v189;
    v734 = v794 + v175 * (v173 + v188 + 3);
    v197.i64[1] = v734;
    v732 = v660 + v189;
    v198.i64[0] = v660 + v189;
    v731 = v659 + v189;
    v198.i64[1] = v659 + v189;
    v701 = v179;
    v199 = v794 + v175 * (v188 + v179);
    v200 = v681 + v189;
    v201 = v680 + v189;
    v202 = v679 + v189;
    v203 = v677 + v189;
    v204 = v678 + v189;
    v738 = v194;
    v205 = 8 * v789;
    do
    {
      v812 = v194;
      v206 = v188 + v187;
      v207 = (v188 + v187 - 1) % 3 * 49 * v789;
      v208 = &v836[1].i8[2 * v207 + 2];
      v209 = &v208[2 * v789 - 4];
      *v209 = 0;
      *(v208 - 1) = 0;
      *&v209[2 * v170] = 0;
      *&v208[2 * v170 - 2] = 0;
      *&v209[4 * v789] = 0;
      *&v208[4 * v789 - 2] = 0;
      *&v209[6 * v789] = 0;
      *&v208[6 * v789 - 2] = 0;
      *&v209[8 * v789] = 0;
      *&v208[8 * v789 - 2] = 0;
      *&v209[10 * v789] = 0;
      *&v208[10 * v789 - 2] = 0;
      *&v209[12 * v789] = 0;
      *&v208[12 * v789 - 2] = 0;
      v210 = v794 + v206 * v175;
      if (v808 >= 3)
      {
        v786 = v203;
        v787 = v204;
        v788 = v200;
        v768 = v207;
        v212 = 2 * v207;
        v779 = &v721[v212];
        v213 = &v730[v212];
        v214 = v729 + v212;
        v215 = &v723[v212];
        v216 = &v836[1].i8[2 * v808 + 4 + v807 + v212];
        v217 = &v728[v212];
        v218 = &v696[2 * v808 + v212];
        v219 = &v727[v212];
        v220 = &v695[2 * v808 + v212];
        v221 = &v726[v212];
        v222 = &v694[2 * v808 + v212];
        v223 = &v724[v212];
        v224 = &v725[v212];
        v226 = v208 < v729 + v212 && v730 < v721;
        v785 = v226;
        v228 = v208 < v216 && v723 < v721;
        v230 = v208 < v220 && v727 < v721;
        v232 = v208 < v224 && v724 < v721;
        v234 = v219 < v745 && v731 < v220;
        v236 = v219 < v743 && v734 < v220;
        v784 = v236;
        v238 = v219 < v741 && v735 < v220;
        v240 = v219 < v739 && v737 < v220;
        v783 = v240;
        v242 = v221 < v745 && v731 < v222;
        v782 = v242;
        v244 = v221 < v743 && v734 < v222;
        v781 = v244;
        v245 = v221 >= v741 || v735 >= v222;
        v246 = vdupq_n_s64(v213);
        v247 = !v245;
        v780 = v247;
        v248 = v221 >= v739 || v737 >= v222;
        v249 = vdupq_n_s64(v217);
        v250 = !v248;
        v251 = v223 >= v745 || v731 >= v224;
        v252 = vdupq_n_s64(v215);
        v253 = !v251;
        v254 = v223 >= v743 || v734 >= v224;
        v255 = vdupq_n_s64(v214);
        v256 = !v254;
        v257 = v223 >= v741 || v735 >= v224;
        v258 = vdupq_n_s64(v779);
        v259 = !v257;
        v260 = vdupq_n_s64(v218);
        v261 = vdupq_n_s64(v216);
        if (v208 < v218 && v728 < v721)
        {
          v228 = 1;
        }

        v264 = v208 < v222 && v726 < v721 || v230;
        v266 = v219 < v746 && v732 < v220 || v232;
        if (v219 < v744 && v733 < v220)
        {
          v234 = 1;
        }

        v269 = v219 < v742 && v736 < v220 || v784;
        v271 = v219 < v740 && v738 < v220 || v238;
        v272 = v221 >= v746 || v732 >= v222;
        v273 = v783;
        if (!v272)
        {
          v273 = 1;
        }

        v274 = v221 >= v744 || v733 >= v222;
        v275 = v782;
        if (!v274)
        {
          v275 = 1;
        }

        v276 = v221 >= v742 || v736 >= v222;
        v277 = v781;
        if (!v276)
        {
          v277 = 1;
        }

        v278 = v221 >= v740 || v738 >= v222;
        v279 = v780;
        if (!v278)
        {
          v279 = 1;
        }

        if (v223 >= v746 || v732 >= v224)
        {
          v281 = v250;
        }

        else
        {
          v281 = 1;
        }

        if (v223 >= v744 || v733 >= v224)
        {
          v283 = v253;
        }

        else
        {
          v283 = 1;
        }

        if (v223 >= v742 || v736 >= v224)
        {
          v285 = v256;
        }

        else
        {
          v285 = 1;
        }

        if (v223 >= v740 || v738 >= v224)
        {
          v287 = v259;
        }

        else
        {
          v287 = 1;
        }

        v288 = vdupq_n_s64(v208);
        v289 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v193, v252), vcgtq_u64(v192, v252)), vuzp1q_s32(vcgtq_u64(v191, v252), vcgtq_u64(v190, v252))), vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v193, v249), vcgtq_u64(v192, v249)), vuzp1q_s32(vcgtq_u64(v191, v249), vcgtq_u64(v190, v249))));
        v290 = vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v193, v288), vcgtq_u64(v192, v288)), vuzp1q_s32(vcgtq_u64(v191, v288), vcgtq_u64(v190, v288)));
        v291 = vcgtq_u64(v191, v246);
        v292 = vcgtq_u64(v260, v196);
        v293 = vandq_s8(vuzp1q_s8(v290, vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v193, v246), vcgtq_u64(v192, v246)), vuzp1q_s32(v291, vcgtq_u64(v190, v246)))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v258, v198), vcgtq_u64(v258, v197)), vuzp1q_s32(vcgtq_u64(v258, v196), vcgtq_u64(v258, v195))), vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v255, v198), vcgtq_u64(v255, v197)), vuzp1q_s32(vcgtq_u64(v255, v196), vcgtq_u64(v255, v195)))));
        v294 = vandq_s8(v289, vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v261, v198), vcgtq_u64(v261, v197)), vuzp1q_s32(vcgtq_u64(v261, v196), vcgtq_u64(v261, v195))), vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v260, v198), vcgtq_u64(v260, v197)), vuzp1q_s32(v292, vcgtq_u64(v260, v195)))));
        v295 = v223 >= v739 || v737 >= v224;
        v296 = vcltzq_s8(vshlq_n_s8(vorrq_s8(v293, v294), 7uLL));
        v296.i8[0] = vmaxvq_u8(v296);
        v297 = v234 | v269 | v271 | v273;
        v298 = v275 | v277 | v279 | v281;
        if (!v295 || v813 < 0)
        {
          v300 = 1;
        }

        else
        {
          v300 = v287;
        }

        if ((v722 | v228 | v264 | v266 | v297 | v298 | v283 | v285 | v300 | v296.i32[0] | v785))
        {
          v211 = 1;
          v205 = 8 * v789;
          v200 = v788;
          v204 = v787;
          v203 = v786;
        }

        else
        {
          v205 = 8 * v789;
          v200 = v788;
          v204 = v787;
          v203 = v786;
          if (v808 < 0xF)
          {
            v301 = 0;
            v302 = 2 * v789;
            v303 = 4 * v789;
            v304 = 6 * v789;
            v305 = 10 * v789;
            v306 = v804;
            v307 = v812;
LABEL_485:
            v208 += v710;
            v210 += v711;
            v383 = (v836[1].i64 + 2 * v301 + 2 * v768 + 2);
            do
            {
              v296.i32[0] = *(v786 + v301);
              v384 = vmovl_u8(*v296.i8).u64[0];
              v385 = vmovl_u16(v384);
              v384.i32[0] = *(v787 + v301);
              v386 = vmovl_u8(v384).u64[0];
              v387 = vmovl_u16(v386);
              v386.i32[0] = *(v202 + v301);
              v388 = vmovl_u8(v386).u64[0];
              v389 = vmovl_u16(v388);
              v388.i32[0] = *(v199 + v301);
              v390 = vmovl_u8(v388).u64[0];
              v391 = vmovl_u16(v390);
              v392 = vabdq_u32(v389, v391);
              v292.i32[0] = *(v201 + v301);
              v393 = vmovl_u16(*&vmovl_u8(*v292.i8));
              v291.i32[0] = *(v788 + v301);
              v291 = vmovl_u16(*&vmovl_u8(*v291.i8));
              *v392.i8 = vmovn_s32(vabaq_u32(vabaq_u32(vaddq_s32(v392, v392), v385, v387), v393, v291));
              *v383 = v392.i64[0];
              v392.i32[0] = *(v307 + v301);
              v394 = vmovl_u16(*&vmovl_u8(*v392.i8));
              v35.i32[0] = *(v307 + v301 + 2);
              v395 = vmovl_u16(*&vmovl_u8(*v35.i8));
              v396 = vabdq_u32(v394, v395);
              *(v383 + v302) = vmovn_s32(vabaq_u32(vabaq_u32(vaddq_s32(v396, v396), v385, v393), v387, v291));
              *v387.i8 = vmovn_s32(vabdq_u32(v393, v387));
              *v387.i8 = vadd_s16(*v387.i8, *v387.i8);
              *(v383 + v303) = v387.i64[0];
              *v385.i8 = vmovn_s32(vabdq_u32(v385, v291));
              *v385.i8 = vadd_s16(*v385.i8, *v385.i8);
              *(v383 + v304) = v385.i64[0];
              v292 = vabdq_u32(v389, v394);
              v383[v789] = vmovn_s32(vabaq_u32(vaddw_u16(v292, *v387.i8), v391, v395));
              *(v383 + v305) = vmovn_s32(vabaq_u32(vaddw_u16(vabdq_u32(v389, v395), *v385.i8), v391, v394));
              *v296.i8 = vhadd_u16(*&vaddw_u8(vaddl_u8(*v392.i8, v386), *v35.i8), v390);
              *(v383 + v306) = v296.i64[0];
              v301 += 4;
              ++v383;
            }

            while (v711 != v301);
            v211 = v709;
            if (v717 == v711)
            {
              goto LABEL_297;
            }

            goto LABEL_490;
          }

          v308 = 0;
          v309 = v208;
          do
          {
            v310 = *(v786 + v308);
            v311 = *(v787 + v308);
            v312 = vabdq_u8(v310, v311);
            v313 = vmovl_high_u8(v312);
            v314 = *(v202 + v308);
            v315 = *(v199 + v308);
            v316 = vabdq_u8(v314, v315);
            v317 = vmovl_u8(*v312.i8);
            v318 = vmovl_u8(*v316.i8);
            v319 = vextq_s8(v318, v318, 8uLL).u64[0];
            v320 = vmovl_high_u8(v316);
            v321 = vextq_s8(v320, v320, 8uLL).u64[0];
            v322 = vmovl_u16(vadd_s16(v321, v321));
            v323 = vaddl_u16(vadd_s16(*v318.i8, *v318.i8), *v317.i8);
            v324 = vaddw_high_u16(vmovl_u16(vadd_s16(v319, v319)), v317);
            v325 = vaddl_u16(vadd_s16(*v320.i8, *v320.i8), *v313.i8);
            v326 = *(v201 + v308);
            v327 = *(v788 + v308);
            v328 = vaddw_high_u16(v322, v313);
            v329 = vabdq_u8(v326, v327);
            v330 = vmovl_u8(*v329.i8);
            v331 = vmovl_high_u8(v329);
            v332 = vuzp1q_s16(vaddw_u16(v325, *v331.i8), vaddw_high_u16(v328, v331));
            v333 = vabdq_u8(v310, v326);
            *v309 = vuzp1q_s16(vaddw_u16(v323, *v330.i8), vaddw_high_u16(v324, v330));
            v309[1] = v332;
            v334 = vmovl_high_u8(v333);
            v335 = *(v812 + v308);
            v336 = *(v812 + v308 + 2);
            v337 = vabdq_u8(v335, v336);
            v338 = vmovl_u8(*v333.i8);
            v339 = vmovl_u8(*v337.i8);
            v340 = vextq_s8(v339, v339, 8uLL).u64[0];
            v341 = vmovl_high_u8(v337);
            v342 = vextq_s8(v341, v341, 8uLL).u64[0];
            v343 = vaddl_u16(vadd_s16(*v339.i8, *v339.i8), *v338.i8);
            v344 = vaddl_u16(vadd_s16(*v341.i8, *v341.i8), *v334.i8);
            v345 = vmovl_u16(vadd_s16(v340, v340));
            v346 = vabdq_u8(v311, v327);
            v347 = vmovl_u8(*v346.i8);
            v348 = vmovl_high_u8(v346);
            v349 = vaddw_u16(v344, *v348.i8);
            v350 = vabdq_u8(v326, v311);
            v351 = vaddw_u16(v343, *v347.i8);
            v352 = vshll_n_u8(*v350.i8, 1uLL);
            v292 = vshll_high_n_u8(v350, 1uLL);
            v353 = vabdq_u8(v310, v327);
            v354 = vshll_high_n_u8(v353, 1uLL);
            v355 = vabdq_u8(v314, v335);
            v356 = vaddw_high_u16(v345, v338);
            v357 = vmovl_high_u8(v355);
            v358 = vmovl_u8(*v355.i8);
            v359 = vabdq_u8(v315, v336);
            v360 = vaddw_high_u16(vmovl_u16(vadd_s16(v342, v342)), v334);
            v361 = vmovl_high_u8(v359);
            v362 = vaddw_high_u16(v360, v348);
            v363 = vmovl_u8(*v359.i8);
            v364 = vuzp1q_s16(vaddw_u16(vaddl_u16(*v357.i8, *v292.i8), *v361.i8), vaddw_high_u16(vaddl_high_u16(v357, v292), v361));
            v365 = vaddw_high_u16(v356, v347);
            v366 = vabdq_u8(v314, v336);
            v367 = vmovl_high_u8(v366);
            v368 = vabdq_u8(v315, v335);
            v369 = vuzp1q_s16(v351, v365);
            v370 = vmovl_high_u8(v368);
            v371 = (v309 + v811);
            v372 = &v309->i8[v807];
            v373 = vuzp1q_s16(v349, v362);
            v291 = vshll_n_u8(*v353.i8, 1uLL);
            v374 = &v309->i8[v806];
            v375 = (v309 + 8 * v789);
            v376 = vmovl_u8(*v366.i8);
            *v371 = v369;
            v371[1] = v373;
            v35 = vmovl_u8(*v368.i8);
            *v372 = v352;
            v372[1] = v292;
            v377 = vuzp1q_s16(vaddw_u16(vaddl_u16(*v367.i8, *v354.i8), *v370.i8), vaddw_high_u16(vaddl_high_u16(v367, v354), v370));
            v378 = (v309 + v805);
            *v374 = v291;
            v374[1] = v354;
            v379 = vaddl_u8(*v335.i8, *v314.i8);
            v380 = vaddw_high_u8(vaddl_high_u8(v335, v314), v336);
            *v375 = vuzp1q_s16(vaddw_u16(vaddl_u16(*v358.i8, *v352.i8), *v363.i8), vaddw_high_u16(vaddl_high_u16(v358, v352), v363));
            v375[1] = v364;
            v381 = vmovl_high_u8(v315);
            v296 = vhaddq_u16(vaddw_u8(v379, *v336.i8), vmovl_u8(*v315.i8));
            *v378 = vuzp1q_s16(vaddw_u16(vaddl_u16(*v376.i8, *v291.i8), *v35.i8), vaddw_high_u16(vaddl_high_u16(v376, v291), v35));
            v378[1] = v377;
            v382 = &v309->i8[v804];
            *v382 = v296;
            v382[1] = vhaddq_u16(v380, v381);
            v308 += 16;
            v309 += 2;
          }

          while (v712 != v308);
          if (v717 == v712)
          {
            goto LABEL_297;
          }

          v301 = (v808 + 1) & 0x1FFFFFFF0;
          v302 = 2 * v789;
          v303 = 4 * v789;
          v304 = 6 * v789;
          v305 = 10 * v789;
          v306 = v804;
          v307 = v812;
          if (((v808 + 1) & 0xC) != 0)
          {
            goto LABEL_485;
          }

          v210 += v712;
          v208 += v656;
          v211 = v657;
        }
      }

      else
      {
        v211 = 1;
      }

LABEL_490:
      v397 = 0;
      v398 = &v208[v806];
      v399 = &v208[v807];
      v400 = v789 - 1 - v211;
      v401 = v210 + v774;
      v402 = v210 + v775;
      v403 = v210 + v813;
      v404 = v210 + v776;
      v405 = v210 + v777;
      v406 = v210 + v778;
      do
      {
        v407 = *(v406 + v397) - *(v405 + v397);
        if (v407 < 0)
        {
          LOWORD(v407) = *(v405 + v397) - *(v406 + v397);
        }

        v408 = *(v404 + v397) - *(v403 + v397);
        if (v408 < 0)
        {
          LOWORD(v408) = *(v403 + v397) - *(v404 + v397);
        }

        v409 = v407 + 2 * v408;
        v410 = *(v402 + v397) - *(v401 + v397);
        if (v410 < 0)
        {
          LOWORD(v410) = *(v401 + v397) - *(v402 + v397);
        }

        *&v208[2 * v397] = v409 + v410;
        v411 = *(v406 + v397) - *(v402 + v397);
        if (v411 < 0)
        {
          LOWORD(v411) = *(v402 + v397) - *(v406 + v397);
        }

        v412 = v210 + v397;
        v413 = *(v210 + v397 - 1) - *(v210 + v397 + 1);
        if (v413 < 0)
        {
          LOWORD(v413) = *(v210 + v397 + 1) - *(v210 + v397 - 1);
        }

        v414 = v411 + 2 * v413;
        v415 = *(v405 + v397) - *(v401 + v397);
        if (v415 < 0)
        {
          LOWORD(v415) = *(v401 + v397) - *(v405 + v397);
        }

        *&v208[2 * v397 + v811] = v414 + v415;
        v416 = *(v402 + v397) - *(v405 + v397);
        if (v416 < 0)
        {
          LOWORD(v416) = *(v405 + v397) - *(v402 + v397);
        }

        *&v399[2 * v397] = 2 * v416;
        v417 = *(v406 + v397) - *(v401 + v397);
        if (v417 < 0)
        {
          LOWORD(v417) = *(v401 + v397) - *(v406 + v397);
        }

        *&v398[2 * v397] = 2 * v417;
        v418 = *(v404 + v397) - *(v412 - 1);
        if (v418 < 0)
        {
          LOWORD(v418) = *(v412 - 1) - *(v404 + v397);
        }

        v419 = v418 + *&v399[2 * v397];
        v420 = *(v403 + v397) - *(v412 + 1);
        if (v420 < 0)
        {
          LOWORD(v420) = *(v412 + 1) - *(v403 + v397);
        }

        *&v208[2 * v397 + v205] = v419 + v420;
        v421 = *(v404 + v397) - *(v412 + 1);
        if (v421 < 0)
        {
          LOWORD(v421) = *(v412 + 1) - *(v404 + v397);
        }

        v422 = v421 + *&v398[2 * v397];
        v423 = *(v403 + v397) - *(v412 - 1);
        if (v423 < 0)
        {
          LOWORD(v423) = *(v412 - 1) - *(v403 + v397);
        }

        *&v208[2 * v397 + v805] = v422 + v423;
        *&v208[2 * v397 + v804] = (*(v412 - 1) + *(v404 + v397) + *(v412 + 1) + *(v403 + v397)) >> 1;
        ++v397;
      }

      while (v400 != v397);
LABEL_297:
      ++v188;
      v175 = v813;
      v194 = v812 + v813;
      v200 += v813;
      v201 += v813;
      v199 += v813;
      v202 += v813;
      v204 += v813;
      v203 += v813;
      v170 = v789;
      v187 = v803;
    }

    while (v188 != 2);
    v424 = 0;
    v425 = v700;
    v426 = v803 * v654;
    v427 = v704;
    v704 = v704 ^ 2;
    v428 = v427 + 6;
    v429 = v708;
    v430 = v807 + 4;
    v431 = v705;
    v432 = v802;
    v433 = v796;
    v434 = v795;
    do
    {
      v443 = v432 + v424;
      v444 = *&v433[2 * v424 + 4];
      v445 = v444 + *&v434[2 * v424 + 4];
      v446 = *&v793[2 * v424 + 4] + v444;
      v447 = *&v791[2 * v424];
      v448 = v447 + *&v790[2 * v424];
      v449 = *&v792[2 * v424] + v447;
      if (v446 >= v445)
      {
        v450 = v444 + *&v434[2 * v424 + 4];
      }

      else
      {
        v450 = *&v793[2 * v424 + 4] + v444;
      }

      if (v448 < v450)
      {
        v450 = v448;
      }

      if (v449 >= v450)
      {
        v451 = v450;
      }

      else
      {
        v451 = v449;
      }

      if (v445 <= v446)
      {
        v452 = *&v793[2 * v424 + 4] + v444;
      }

      else
      {
        v452 = v444 + *&v434[2 * v424 + 4];
      }

      if (v452 <= v448)
      {
        v452 = v448;
      }

      if (v452 <= v449)
      {
        v452 = v449;
      }

      if (v431)
      {
        v453 = *&v434[v430 + 2] + *&v434[v430];
        v454 = &v433[v430];
        v455 = *&v433[v430];
        v456 = v453 + v455 + *(v454 + 1);
        v457 = *&v753[2 * v424] + v455 + *&v759[2 * v424] + *&v760[2 * v424];
        LODWORD(v454) = *&v754[2 * v424];
        v458 = *&v750[2 * v424] + *&v749[2 * v424] + v454 + *&v755[2 * v424];
        v459 = *&v756[2 * v424] + v454 + *&v761[2 * v424] + *&v762[2 * v424];
        if (v456 < v451)
        {
          v451 = v456;
        }

        if (v457 < v451)
        {
          v451 = *&v753[2 * v424] + v455 + *&v759[2 * v424] + *&v760[2 * v424];
        }

        if (v458 < v451)
        {
          v451 = v458;
        }

        if (v459 < v451)
        {
          v451 = v459;
        }

        if (v452 <= v456)
        {
          v452 = v456;
        }

        if (v452 <= v457)
        {
          v452 = *&v753[2 * v424] + v455 + *&v759[2 * v424] + *&v760[2 * v424];
        }

        if (v452 <= v458)
        {
          v452 = v458;
        }

        if (v452 <= v459)
        {
          v452 = v459;
        }

        if (v452 <= 1)
        {
          v460 = 1;
        }

        else
        {
          v460 = v452 >> 1;
        }

        v461 = v460 + v451;
        if (v445 >= v460 + v451)
        {
          v462 = 0;
          v463 = 0;
          v464 = 0;
          v465 = 0;
          v432 = v802;
          if (v446 >= v461)
          {
            goto LABEL_588;
          }
        }

        else
        {
          v462 = *(v773 + v424) + *(v767 + v424);
          v463 = *(v443 + 2) + *(v773 + v424 - 1);
          v464 = 2 * *(v801 + v424);
          v465 = 1;
          v432 = v802;
          if (v446 >= v461)
          {
LABEL_588:
            if (v448 >= v461)
            {
              if (v449 >= v461)
              {
LABEL_590:
                if (v456 < v461)
                {
                  goto LABEL_591;
                }

                goto LABEL_597;
              }
            }

            else
            {
              v462 += 2 * *(v432 + v424 + 1);
              v463 += *(v432 + v424) + *(v443 + 2);
              v464 += *(v765 + v424) + *(v766 + v424);
              ++v465;
              if (v449 >= v461)
              {
                goto LABEL_590;
              }
            }

            v462 += 2 * *(v432 + v424 + 3);
            v463 += *(v432 + v424 + 4) + *(v443 + 2);
            v464 += *(v763 + v424) + *(v764 + v424);
            ++v465;
            if (v456 < v461)
            {
LABEL_591:
              v462 += *(v773 + v424) + *(v432 + v424 + 3);
              v463 += 2 * *(v810 + v424);
              v464 += *(v801 + v424) + *(v763 + v424);
              ++v465;
              if (v457 >= v461)
              {
                goto LABEL_592;
              }

              goto LABEL_598;
            }

LABEL_597:
            if (v457 >= v461)
            {
LABEL_592:
              if (v458 < v461)
              {
                goto LABEL_593;
              }

              goto LABEL_599;
            }

LABEL_598:
            v462 += *(v771 + v424) + *(v432 + v424 + 1);
            v463 += 2 * *(v797 + v424);
            v464 += *(v799 + v424) + *(v766 + v424);
            ++v465;
            if (v458 < v461)
            {
LABEL_593:
              v462 += *(v767 + v424) + *(v432 + v424 + 1);
              v463 += 2 * *(v770 + v424);
              v464 += *(v765 + v424) + *(v801 + v424);
              ++v465;
              if (v459 < v461)
              {
                goto LABEL_600;
              }

              goto LABEL_518;
            }

LABEL_599:
            if (v459 < v461)
            {
LABEL_600:
              v462 += *(v772 + v424) + *(v432 + v424 + 3);
              v463 += 2 * *(v769 + v424);
              v464 += *(v764 + v424) + *(v799 + v424);
              ++v465;
            }

LABEL_518:
            v434 = v795;
            v435 = *(v443 + 2);
            v436 = flt_1003E7748[v465];
            v437 = rintf(v436 * (v462 - v463)) + v435;
            v438 = rintf(v436 * (v464 - v463)) + v435;
            v433 = v796;
            goto LABEL_519;
          }
        }

        v462 += *(v771 + v424) + *(v772 + v424);
        v463 += *(v772 + v424 - 1) + *(v443 + 2);
        v464 += 2 * *(v799 + v424);
        ++v465;
        goto LABEL_588;
      }

      v466 = *&v751[2 * v424];
      v467 = v466 + *&v747[2 * v424];
      v468 = *&v757[2 * v424] + v466;
      v469 = *&v752[2 * v424];
      v470 = v469 + *&v748[2 * v424];
      v471 = *&v758[2 * v424] + v469;
      if (v467 < v451)
      {
        v451 = v467;
      }

      if (v468 < v451)
      {
        v451 = v468;
      }

      if (v470 < v451)
      {
        v451 = v469 + *&v748[2 * v424];
      }

      if (v471 < v451)
      {
        v451 = *&v758[2 * v424] + v469;
      }

      if (v452 <= v467)
      {
        v452 = v467;
      }

      if (v452 <= v468)
      {
        v452 = v468;
      }

      if (v452 <= v470)
      {
        v452 = v469 + *&v748[2 * v424];
      }

      if (v452 <= v471)
      {
        v452 = *&v758[2 * v424] + v469;
      }

      if (v452 <= 1)
      {
        v472 = 1;
      }

      else
      {
        v472 = v452 >> 1;
      }

      v473 = v472 + v451;
      v437 = *(v443 + 2);
      if (v445 >= v472 + v451)
      {
        v474 = 0;
        v475 = 0;
        v476 = 0;
        v477 = 0;
        v432 = v802;
        if (v446 >= v473)
        {
          goto LABEL_603;
        }

LABEL_602:
        v474 += v437 + *(v772 + v424 - 1);
        v475 += 2 * *(v799 + v424);
        v476 += *(v797 + v424) + *(v769 + v424);
        ++v477;
        goto LABEL_603;
      }

      v474 = *(v773 + v424 - 1) + v437;
      v475 = 2 * *(v801 + v424);
      v476 = *(v810 + v424) + *(v770 + v424);
      v477 = 1;
      v432 = v802;
      if (v446 < v473)
      {
        goto LABEL_602;
      }

LABEL_603:
      if (v448 >= v473)
      {
        if (v449 >= v473)
        {
LABEL_605:
          if (v467 < v473)
          {
            goto LABEL_606;
          }

          goto LABEL_612;
        }
      }

      else
      {
        v474 += v437 + *(v432 + v424);
        v475 += 2 * *(v432 + v424 + 1);
        v476 += *(v770 + v424) + *(v797 + v424);
        ++v477;
        if (v449 >= v473)
        {
          goto LABEL_605;
        }
      }

      v474 += v437 + *(v432 + v424 + 4);
      v475 += 2 * *(v432 + v424 + 3);
      v476 += *(v810 + v424) + *(v769 + v424);
      ++v477;
      if (v467 < v473)
      {
LABEL_606:
        v474 += v437 + *(v718 + v424);
        v475 += *&v714[2 * v424];
        v476 += 2 * *(v810 + v424);
        ++v477;
        if (v468 >= v473)
        {
          goto LABEL_607;
        }

        goto LABEL_613;
      }

LABEL_612:
      if (v468 >= v473)
      {
LABEL_607:
        if (v470 < v473)
        {
          goto LABEL_608;
        }

        goto LABEL_614;
      }

LABEL_613:
      v474 += v437 + *(v771 + v424 - 1);
      v475 += *&v716[2 * v424];
      v476 += 2 * *(v797 + v424);
      ++v477;
      if (v470 < v473)
      {
LABEL_608:
        v474 += v437 + *(v720 + v424);
        v475 += *&v713[2 * v424];
        v476 += 2 * *(v810 + v424);
        ++v477;
        if (v471 >= v473)
        {
          goto LABEL_616;
        }

LABEL_615:
        v474 += v437 + *(v719 + v424);
        v475 += *&v715[2 * v424];
        v476 += 2 * *(v810 + v424);
        ++v477;
        goto LABEL_616;
      }

LABEL_614:
      if (v471 < v473)
      {
        goto LABEL_615;
      }

LABEL_616:
      v433 = v796;
      v478 = flt_1003E7748[v477];
      v435 = v437 + rintf(v478 * (v475 - v474));
      v438 = v437 + rintf(v478 * (v476 - v474));
      v434 = v795;
LABEL_519:
      v439 = v438 & ~(v438 >> 31);
      if (v439 >= 255)
      {
        LOBYTE(v439) = -1;
      }

      v429[v428 - 7] = v439;
      v440 = v435 & ~(v435 >> 31);
      if (v440 >= 255)
      {
        LOBYTE(v440) = -1;
      }

      v441 = &v429[v704 + 6];
      *v429 = v440;
      v429 += 3;
      v442 = v437 & ~(v437 >> 31);
      if (v442 >= 255)
      {
        LOBYTE(v442) = -1;
      }

      *(v441 - 7) = v442;
      v431 ^= 1u;
      ++v424;
      v430 += 2;
    }

    while (v789 - 4 != v424);
    v181 = v426 + 3 * (v789 - 2);
    *(v665 + v426) = *(v666 + v426);
    *(v700 + v181) = *(v700 + v426 + v693);
    v182 = ((v426 << 32) + 0x400000000) >> 32;
    *(v700 + v182) = *(v700 + (((v426 << 32) + 0x700000000) >> 32));
    *(v664 + v181) = *(v664 + v426 + v693);
    v183 = ((v426 << 32) + 0x300000000) >> 32;
    *(v700 + v183) = *(v700 + (((v426 << 32) + 0x600000000) >> 32));
    *(v663 + v181) = *(v663 + v426 + v693);
    *(v700 + (((v426 << 32) + 0x200000000) >> 32)) = *(v700 + (((v426 << 32) + 0x500000000) >> 32));
    *(v662 + v181) = *(v662 + v426 + v693);
    *(v700 + ((&_mh_execute_header + (v426 << 32)) >> 32)) = *(v700 + v182);
    *(v661 + v181) = *(v661 + v426 + v693);
    *(v700 + v426) = *(v700 + v183);
    *(v665 + v181) = *(v665 + v426 + v693);
    v705 ^= 1u;
    v180 = v803 + 1;
    v173 = v706 + 1;
    v179 = v701 + 1;
    v171 = v703 + 1;
    v178 = v702 + 1;
    v174 = v707 + 1;
    v175 = v813;
    v801 += v813;
    v708 += v699;
    v773 += v813;
    v767 += v813;
    v799 += v813;
    v772 += v813;
    v771 += v813;
    v766 += v813;
    v765 += v813;
    v719 += v813;
    v720 += v813;
    v764 += v813;
    v763 += v813;
    v802 = v432 + v813;
    v718 += v813;
    v810 += v813;
    v797 += v813;
    v770 += v813;
    v769 += v813;
    if (v803 + 1 != v698)
    {
      continue;
    }

    break;
  }

  v479 = (3 * v789);
  if (v653 >= 1)
  {
    v480 = 2 * v654;
    v481 = (v655 - 5) * v654;
    v482 = (v655 - 1) * v654;
    v483 = (v655 - 2) * v654;
    v484 = (v655 - 3) * v654;
    v485 = v698 * v654;
    v486 = v700 + v480;
    v487 = v700 + v654;
    v488 = v700 + v481;
    v489 = v700 + v482;
    v490 = v700 + v483;
    v491 = v700 + v484;
    v492 = v700 + v485;
    if (v653 < 8)
    {
      v493 = 0;
      goto LABEL_620;
    }

    v493 = 0;
    if ((v654 + 31) < 0x20 || (v482 - v654) < 0x20 || (v483 - v654) < 0x20 || (v484 - v654) < 0x20 || (v485 - v654) < 0x20 || (v654 - v480) < 0x20 || (v481 - v654) < 0x20 || v482 < 0x20 || v483 < 0x20 || v484 < 0x20 || v485 < 0x20 || (v480 + 31) < 0x20 || v481 < 0x20 || (v483 - v482) < 0x20 || (v484 - v482) < 0x20 || (v485 - v482) < 0x20 || (v482 - v480) < 0x20 || (v482 - v481) < 0x20 || (v484 - v483) < 0x20 || (v485 - v483) < 0x20 || (v483 - v480) < 0x20 || (v483 - v481) < 0x20 || (v485 - v484) < 0x20 || (v484 - v480) < 0x20 || (v484 - v481) < 0x20 || (v485 - v480) < 0x20 || (v485 - v481) < 0x20)
    {
      goto LABEL_804;
    }

    if (v653 < 0x20)
    {
      v493 = 0;
      goto LABEL_769;
    }

    v597 = 0;
    v493 = v653 & 0x7FFFFFE0;
    v598 = v480 + v700 + 16;
    v599 = v481 + v700 + 16;
    v600 = v482 + v700 + 16;
    do
    {
      v601 = *(v598 + v597 - 16);
      v602 = *(v598 + v597);
      v603 = (v654 + v700 + 16 + v597);
      *(v603 - 1) = v601;
      *v603 = v602;
      v604 = (v700 + v597);
      *v604 = v601;
      v604[1] = v602;
      v605 = *(v599 + v597 - 16);
      v606 = *(v599 + v597);
      v607 = (v600 + v597);
      *(v607 - 1) = v605;
      *v607 = v606;
      v608 = (v490 + v597);
      *v608 = v605;
      v608[1] = v606;
      v609 = (v491 + v597);
      *v609 = v605;
      v609[1] = v606;
      v610 = (v492 + v597);
      *v610 = v605;
      v610[1] = v606;
      v597 += 32;
    }

    while (v493 != v597);
    if (v493 != v653)
    {
      if (((3 * v789) & 0x18) == 0)
      {
        goto LABEL_620;
      }

LABEL_769:
      v611 = v653 & 0x7FFFFFF8;
      v612 = v492;
      v613 = v700 + v484;
      v614 = v490;
      v615 = v489;
      v616 = v488;
      v617 = v700;
      v618 = v700 + v654;
      v619 = v486;
      do
      {
        v620 = *(v619 + v493);
        *(v618 + v493) = v620;
        *(v617 + v493) = v620;
        v621 = *(v616 + v493);
        *(v615 + v493) = v621;
        *(v614 + v493) = v621;
        *(v613 + v493) = v621;
        *(v612 + v493) = v621;
        v619 += 8;
        v618 += 8;
        v617 += 8;
        v616 += 8;
        v615 += 8;
        v614 += 8;
        v613 += 8;
        v612 += 8;
        v611 -= 8;
      }

      while (v493 != v611);
      v493 = v653 & 0x7FFFFFF8;
      if (v493 != v653)
      {
LABEL_804:
        do
        {
LABEL_620:
          v494 = *(v486 + v493);
          *(v487 + v493) = v494;
          *(v425 + v493) = v494;
          v495 = *(v488 + v493);
          *(v489 + v493) = v495;
          *(v490 + v493) = v495;
          *(v491 + v493) = v495;
          *(v492 + v493) = v495;
          --v479;
          ++v492;
          ++v491;
          ++v490;
          ++v489;
          ++v488;
          ++v425;
          ++v487;
          ++v486;
        }

        while (v493 != v479);
      }
    }
  }

  if (v836[0].i64[0] != &v836[1] && v836[0].i64[0])
  {
    operator delete[]();
  }

LABEL_80:
  if (v818 && atomic_fetch_add((v818 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v814);
  }

  v818 = 0;
  v815 = 0u;
  v816 = 0u;
  if (SDWORD1(v814) >= 1)
  {
    v60 = 0;
    v61 = v819;
    do
    {
      v61[v60++] = 0;
    }

    while (v60 < SDWORD1(v814));
  }

  if (v820 != v821)
  {
    j__free(v820);
  }

LABEL_88:
  if (*&v822[56] && atomic_fetch_add((*&v822[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v822);
  }

  *&v822[56] = 0;
  memset(&v822[16], 0, 32);
  if (*&v822[4] >= 1)
  {
    v62 = 0;
    v63 = v823;
    do
    {
      v63[v62++] = 0;
    }

    while (v62 < *&v822[4]);
  }

  if (v824 != v825)
  {
    j__free(v824);
  }

  if (v830 && atomic_fetch_add((v830 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v826);
  }

  v830 = 0;
  v827 = 0u;
  v828 = 0u;
  if (SDWORD1(v826) >= 1)
  {
    v64 = 0;
    v65 = v831;
    do
    {
      v65->i32[v64++] = 0;
    }

    while (v64 < SDWORD1(v826));
  }

  if (v832 != v833)
  {
    j__free(v832);
  }

  if (v834[2])
  {
    sub_1002ACC1C(v834);
  }
}

void sub_1002F6C1C(_Unwind_Exception *a1)
{
  sub_1002F8F64(&STACK[0x700]);
  sub_100006D14(&STACK[0x620]);
  sub_100006D14(&STACK[0x680]);
  sub_1001D8BF4(&STACK[0x6E8]);
  _Unwind_Resume(a1);
}

void sub_1002F6E04(uint64_t result, unsigned int *a2, int a3)
{
  v4 = *(a2 + 10);
  v5 = *a2;
  v6 = **(result + 64);
  v7 = vadd_s32(v6, 0x100000001);
  v30 = vrev64_s32(v7);
  if (v6.i32[0] >= 3)
  {
    v9 = a3 == 47 || a3 == 49;
    if ((a3 & 0xFFFFFFFE) == 0x2E)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    v29[0] = 0;
    v29[1] = v7.i32[0];
    sub_1002F6FE8(v28, result, a2, v9, v10, &v30);
    v11 = a2[1];
    if (v11 >= 3)
    {
      v13 = *(a2 + 8);
      v14 = (v13 + 4);
      v15 = 1;
      v16 = v11 & 0x7FFFFFFE;
      v17 = 1;
      do
      {
        v15 *= *(v14 - 1);
        v17 *= *v14;
        v14 += 2;
        v16 -= 2;
      }

      while (v16);
      v12 = v17 * v15;
      v18 = v11 - (v11 & 0x7FFFFFFE);
      if (v18)
      {
        v19 = (v13 + 8 * ((v11 >> 1) & 0x3FFFFFFF));
        do
        {
          v20 = *v19++;
          v12 *= v20;
          --v18;
        }

        while (v18);
      }
    }

    else
    {
      v12 = a2[3] * a2[2];
    }

    sub_1002829C8(v29, v28, vcvtd_n_f64_u64(v12, 0x10uLL));
    sub_1002F7A18(v28);
  }

  v21 = ((v5 >> 3) & 0x1FF) + 1;
  v22 = *(a2 + 8);
  v23 = *v22;
  v30.i32[0] = v22[1];
  v30.i32[1] = v23;
  v24 = *(a2 + 2);
  v25 = v30.i32[0] * v21;
  if (v23 <= 2)
  {
    if (v25 >= 1)
    {
      v27 = 0;
      do
      {
        v24[(v30.i32[1] - 1) * v4] = 0;
        *v24++ = 0;
        ++v27;
      }

      while (v27 < v30.i32[0] * v21);
    }
  }

  else if (v25 >= 1)
  {
    v26 = 0;
    do
    {
      *v24 = v24[v4];
      v24[(v30.i32[1] - 1) * v4] = v24[(v30.i32[1] - 2) * v4];
      ++v26;
      ++v24;
    }

    while (v26 < v30.i32[0] * v21);
  }
}

void sub_1002F6FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002F7A18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002F6FE8(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5, void *a6)
{
  *a1 = &off_1004788B0;
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 24) = v12;
  *(a1 + 40) = a2[2];
  v13 = *(a2 + 7);
  *(a1 + 56) = *(a2 + 6);
  *(a1 + 64) = v13;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v13)
  {
    atomic_fetch_add((v13 + 20), 1u);
    if (*(a2 + 1) <= 2)
    {
LABEL_3:
      v14 = *(a2 + 9);
      v15 = *(a1 + 80);
      *v15 = *v14;
      v15[1] = v14[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v11) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v16 = *a3;
  *(a1 + 120) = a3[1];
  v17 = a3[2];
  v19 = *(a3 + 6);
  v18 = *(a3 + 7);
  *(a1 + 184) = 0;
  *(a1 + 136) = v17;
  *(a1 + 152) = v19;
  *(a1 + 160) = v18;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v16;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(a3 + 1) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(a3 + 9);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = *a6;
  return a1;
}

void sub_1002F7158(_Unwind_Exception *a1)
{
  sub_100006D14(v1);
  nullsub_1();
  _Unwind_Resume(a1);
}

void sub_1002F7188(uint64_t a1)
{
  sub_1002F7A18(a1);

  operator delete();
}

uint64_t sub_1002F71C0(uint64_t result, _DWORD *a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v10 = *a2;
  if (*a2 < a2[1])
  {
    v92 = v8;
    v93 = v9;
    v11 = ((*(result + 104) >> 3) & 0x1FF) + 1;
    v12 = *(result + 204);
    if (v10)
    {
      v13 = *(result + 200) == 0;
    }

    else
    {
      v13 = *(result + 200);
    }

    if (v10)
    {
      v12 = -v12;
    }

    v14 = *(result + 184);
    v15 = (*(result + 120) + v14 + v14 * v10 + v11 + 1);
    v16 = *(result + 88);
    v17 = *(result + 24) + v10 * v16;
    v18 = (2 * v11);
    v19 = 2 * v16;
    v89 = v19 | 1;
    v20 = ((v16 << 32) + 0x200000000) >> 32;
    v21 = (&_mh_execute_header + (v16 << 32)) >> 32;
    v22 = 2 * v16 + 2;
    v23 = ((v16 << 32) + 0x300000000) >> 32;
    v90 = v14;
    v24.i64[0] = -1;
    v24.i64[1] = -1;
    v87 = a2;
    do
    {
      v31 = *(result + 208);
      if (v31 <= 0)
      {
        if (v11 == 3)
        {
          v15[3 * v31 + 1] = 0;
          v15[3 * *(result + 208)] = 0;
          v15[3 * *(result + 208) - 1] = 0;
          *(v15 - 3) = 0;
          *(v15 - 4) = 0;
        }

        else
        {
          v15[v31 * v11 + 1] = 0;
          v15[*(result + 208) * v11] = 0;
          v15[*(result + 208) * v11 - 1] = 0;
          *(v15 - 3) = 0;
          *(v15 - 5) = 0;
          v15[*(result + 208) * v11 + 2] = -1;
          *(v15 - 2) = -1;
        }

        goto LABEL_11;
      }

      v32 = v17;
      v33 = v15;
      if (v13)
      {
        v32 = (v17 + 1);
        v34 = *(v17 + v16) + *(v17 + v20);
        v15[-v12] = (*(v17 + 1) + *(v17 + v89) + 1) >> 1;
        *v15 = *(v17 + v21);
        v15[v12] = (v34 + 1) >> 1;
        if (v11 == 4)
        {
          v15[2] = -1;
        }

        v33 = &v15[v11];
      }

      v35 = &v32->i8[*(result + 208)];
      if (v11 == 4)
      {
        v91.val[3] = v24;
        v36 = (v35 - 18);
        LODWORD(v37) = v32;
        if (v36 >= v32)
        {
          v38 = v33 - 1;
          v37 = v32;
          do
          {
            v39 = *(v37 + v16);
            v40 = vshrq_n_u16(v39, 8uLL);
            *a8.i8 = vshrn_n_s16(v39, 8uLL);
            v41 = vsraq_n_u16(vextq_s8(v40, v40, 2uLL), v39, 8uLL);
            v39.i16[0] = v39.u8[0];
            v39.i16[1] = BYTE2(*(v37 + v16));
            v39.i16[2] = BYTE4(*(v37->i64 + v16));
            v39.i16[3] = BYTE6(*(v37->i64 + v16));
            v39.i16[4] = *(&v37->i64[1] + v16);
            v39.i16[5] = BYTE2(*(&v37->i64[1] + v16));
            v39.i16[6] = BYTE12(*(v37 + v16));
            v39.i16[7] = BYTE14(*(v37 + v16));
            v42 = vextq_s8(v39, v39, 2uLL);
            v43.i16[0] = v37->u8[0];
            v43.i16[1] = BYTE2(v37->u32[0]);
            v43.i16[2] = BYTE4(v37->i64[0]);
            v43.i16[3] = BYTE6(v37->i64[0]);
            v43.i16[4] = v37->i64[1];
            v43.i16[5] = BYTE2(v37->i64[1]);
            v43.i16[6] = BYTE12(*v37);
            v43.i16[7] = BYTE14(*v37);
            v44.i16[0] = *(v37 + v19);
            v44.i16[1] = BYTE2(*(v37 + v19));
            v44.i16[2] = BYTE4(*(v37->i64 + v19));
            v44.i16[3] = BYTE6(*(v37->i64 + v19));
            v44.i16[4] = *(&v37->i64[1] + v19);
            v44.i16[5] = BYTE2(*(&v37->i64[1] + v19));
            v44.i16[6] = BYTE12(*(v37 + v19));
            v44.i16[7] = BYTE14(*(v37 + v19));
            v45 = vaddq_s16(v44, v43);
            v46 = vextq_s8(v45, v45, 2uLL);
            v47 = vaddq_s16(v46, v45);
            *v47.i8 = vrshrn_n_s16(v47, 2uLL);
            *v46.i8 = vrshrn_n_s16(v46, 1uLL);
            v48 = vzip1q_s8(v47, v46);
            v49 = vaddq_s16(vsraq_n_u16(vsraq_n_u16(v39, *v37, 8uLL), *(v37 + v19), 8uLL), v42);
            v91.val[1 - v12] = v48;
            *v49.i8 = vrshrn_n_s16(v49, 2uLL);
            *v48.i8 = vmovn_s16(v42);
            v50 = vzip1q_s8(v49, v48);
            *v48.i8 = vrshrn_n_s16(v41, 1uLL);
            v91.val[1] = v50;
            v91.val[v12 + 1] = vzip1q_s8(a8, v48);
            v95 = v91;
            vst4q_s8(v38, v95);
            v37 = (v37 + 14);
            v38 += 56;
          }

          while (v37 <= v36);
        }
      }

      else
      {
        v51 = (v35 - 18);
        LODWORD(v37) = v32;
        if (v51 >= v32)
        {
          v52 = v33 - 1;
          v37 = v32;
          do
          {
            v53 = *(v37 + v16);
            v54 = vshrq_n_u16(v53, 8uLL);
            v55 = vsraq_n_u16(vextq_s8(v54, v54, 2uLL), v53, 8uLL);
            *a8.i8 = vshrn_n_s16(v53, 8uLL);
            v53.i16[0] = v53.u8[0];
            v53.i16[1] = BYTE2(*(v37 + v16));
            v53.i16[2] = BYTE4(*(v37->i64 + v16));
            v53.i16[3] = BYTE6(*(v37->i64 + v16));
            v53.i16[4] = *(&v37->i64[1] + v16);
            v53.i16[5] = BYTE2(*(&v37->i64[1] + v16));
            v53.i16[6] = BYTE12(*(v37 + v16));
            v53.i16[7] = BYTE14(*(v37 + v16));
            v56 = vextq_s8(v53, v53, 2uLL);
            v57.i16[0] = v37->u8[0];
            v57.i16[1] = BYTE2(v37->u32[0]);
            v57.i16[2] = BYTE4(v37->i64[0]);
            v57.i16[3] = BYTE6(v37->i64[0]);
            v57.i16[4] = v37->i64[1];
            v57.i16[5] = BYTE2(v37->i64[1]);
            v57.i16[6] = BYTE12(*v37);
            v57.i16[7] = BYTE14(*v37);
            v58 = vsraq_n_u16(vsraq_n_u16(v53, *v37, 8uLL), *(v37 + v19), 8uLL);
            v59.i16[0] = *(v37 + v19);
            v59.i16[1] = BYTE2(*(v37 + v19));
            v59.i16[2] = BYTE4(*(v37->i64 + v19));
            v59.i16[3] = BYTE6(*(v37->i64 + v19));
            v59.i16[4] = *(&v37->i64[1] + v19);
            v59.i16[5] = BYTE2(*(&v37->i64[1] + v19));
            v59.i16[6] = BYTE12(*(v37 + v19));
            v59.i16[7] = BYTE14(*(v37 + v19));
            v60 = vaddq_s16(v59, v57);
            v61 = vextq_s8(v60, v60, 2uLL);
            v62 = vaddq_s16(v61, v60);
            *v62.i8 = vrshrn_n_s16(v62, 2uLL);
            *v61.i8 = vrshrn_n_s16(v61, 1uLL);
            v63 = vzip1q_s8(v62, v61);
            v91.val[1 - v12] = v63;
            v64 = vaddq_s16(v58, v56);
            *v64.i8 = vrshrn_n_s16(v64, 2uLL);
            *v63.i8 = vmovn_s16(v56);
            v65 = vzip1q_s8(v64, v63);
            *v63.i8 = vrshrn_n_s16(v55, 1uLL);
            v91.val[1] = v65;
            v91.val[v12 + 1] = vzip1q_s8(a8, v63);
            v94 = *v91.val[0].i8;
            vst3q_s8(v52, v94);
            v37 = (v37 + 14);
            v52 += 42;
          }

          while (v37 <= v51);
        }
      }

      v66 = v37 - v32;
      v67 = &v32->u8[v66];
      v68 = &v33[v11 * v66];
      v69 = v17 + v31 - 2;
      if (v11 == 3)
      {
        if (v12 <= 0)
        {
          if (v67 <= v69)
          {
            v88 = v13;
            v70 = &v32->u8[v66 + 1];
            do
            {
              v78 = v70 + 1;
              v79 = (*v70 + v70[v16 - 1] + v70[v20 - 1] + v70[v19] + 2) >> 2;
              v68[1] = (*(v70 - 1) + v70[1] + v70[v19 - 1] + v70[v22 - 1] + 2) >> 2;
              *v68 = v79;
              v80 = v70[v21 - 1];
              *(v68 - 1) = v80;
              v81 = (v80 + v70[v23 - 1] + 1) >> 1;
              v68[4] = (v70[1] + v70[v22 - 1] + 1) >> 1;
              v68[3] = v70[v20 - 1];
              v68[2] = v81;
              v68 += v18;
              v70 += 2;
            }

            while (v78 <= v69);
            goto LABEL_46;
          }
        }

        else if (v67 <= v69)
        {
          v88 = v13;
          v70 = &v32->u8[v66 + 1];
          do
          {
            v71 = v70 + 1;
            v72 = (*v70 + v70[v16 - 1] + v70[v20 - 1] + v70[v19] + 2) >> 2;
            *(v68 - 1) = (*(v70 - 1) + v70[1] + v70[v19 - 1] + v70[v22 - 1] + 2) >> 2;
            *v68 = v72;
            v73 = v70[v21 - 1];
            v68[1] = v73;
            v74 = (v73 + v70[v23 - 1] + 1) >> 1;
            v68[2] = (v70[1] + v70[v22 - 1] + 1) >> 1;
            v68[3] = v70[v20 - 1];
            v68[4] = v74;
            v68 += v18;
            v70 += 2;
          }

          while (v71 <= v69);
LABEL_46:
          v67 = v70 - 1;
          a2 = v87;
          v13 = v88;
        }
      }

      else if (v12 <= 0)
      {
        if (v67 <= v69)
        {
          v88 = v13;
          v70 = &v32->u8[v66 + 1];
          do
          {
            v82 = v70 + 1;
            v83 = (*(v70 - 1) + v70[1] + v70[v19 - 1] + v70[v22 - 1] + 2) >> 2;
            v84 = (*v70 + v70[v16 - 1] + v70[v20 - 1] + v70[v19] + 2) >> 2;
            *(v68 - 1) = v70[v21 - 1];
            *v68 = v84;
            v68[1] = v83;
            v68[2] = -1;
            v85 = (v70[1] + v70[v22 - 1] + 1) >> 1;
            v68[3] = (v70[v21 - 1] + v70[v23 - 1] + 1) >> 1;
            v68[4] = v70[v20 - 1];
            v68[5] = v85;
            v68[6] = -1;
            v68 += v18;
            v70 += 2;
          }

          while (v82 <= v69);
          goto LABEL_46;
        }
      }

      else if (v67 <= v69)
      {
        v88 = v13;
        v70 = &v32->u8[v66 + 1];
        do
        {
          v75 = v70 + 1;
          v76 = (*v70 + v70[v16 - 1] + v70[v20 - 1] + v70[v19] + 2) >> 2;
          *(v68 - 1) = (*(v70 - 1) + v70[1] + v70[v19 - 1] + v70[v22 - 1] + 2) >> 2;
          *v68 = v76;
          v68[1] = v70[v21 - 1];
          v68[2] = -1;
          v77 = (v70[v21 - 1] + v70[v23 - 1] + 1) >> 1;
          v68[3] = (v70[1] + v70[v22 - 1] + 1) >> 1;
          v68[4] = v70[v20 - 1];
          v68[5] = v77;
          v68[6] = -1;
          v68 += v18;
          v70 += 2;
        }

        while (v75 <= v69);
        goto LABEL_46;
      }

      if (v67 < v17 + v31 && (v86 = (v67[1] + v67[v16] + v67[v20] + v67[v89] + 2) >> 2, v68[-v12] = (*v67 + v67[2] + v67[v19] + v67[v22] + 2) >> 2, *v68 = v86, v68[v12] = v67[v21], v11 == 4))
      {
        v68[2] = -1;
      }

      else if (v11 == 3)
      {
        *(v15 - 4) = *(v15 - 1);
        *(v15 - 3) = *v15;
        v15[3 * *(result + 208) - 1] = v15[3 * *(result + 208) - 4];
        v27 = 3 * *(result + 208);
        v28 = 1;
        v29 = 3;
        v26 = v27;
        goto LABEL_10;
      }

      *(v15 - 5) = *(v15 - 1);
      v15[*(result + 208) * v11 - 1] = v15[*(result + 208) * v11 - 5];
      v25 = &v15[*(result + 208) * v11];
      *v25 = *(v25 - 4);
      v26 = *(result + 208) * v11;
      v27 = v26 + 1;
      v28 = 2;
      v29 = v11;
LABEL_10:
      v13 = v13 == 0;
      v15[v27] = v15[v26 - 3];
      v30 = *(result + 208) * v29;
      v15[v30 + v28] = v15[v30 - 2];
      v12 = -v12;
LABEL_11:
      v17 += v16;
      v15 += v90;
      ++v10;
    }

    while (v10 < a2[1]);
  }

  return result;
}

void sub_1002F7A18(uint64_t a1)
{
  *a1 = &off_1004788B0;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  nullsub_1();
}

uint64_t sub_1002F7B54(uint64_t a1, __int128 *a2, __int128 *a3, int a4, char a5, void *a6, int a7, int a8)
{
  *a1 = &off_1004788F0;
  v15 = *a2;
  v16 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 24) = v16;
  *(a1 + 40) = a2[2];
  v17 = *(a2 + 7);
  *(a1 + 56) = *(a2 + 6);
  *(a1 + 64) = v17;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v17)
  {
    atomic_fetch_add((v17 + 20), 1u);
    if (*(a2 + 1) <= 2)
    {
LABEL_3:
      v18 = *(a2 + 9);
      v19 = *(a1 + 80);
      *v19 = *v18;
      v19[1] = v18[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v15) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v20 = *a3;
  *(a1 + 120) = a3[1];
  v21 = a3[2];
  v23 = *(a3 + 6);
  v22 = *(a3 + 7);
  *(a1 + 184) = 0;
  *(a1 + 136) = v21;
  *(a1 + 152) = v23;
  *(a1 + 160) = v22;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v20;
  if (!v22)
  {
    if (SDWORD1(v20) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v22 + 20), 1u);
  if (*(a3 + 1) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = *(a3 + 9);
  v25 = *(a1 + 176);
  *v25 = *v24;
  v25[1] = v24[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = *a6;
  *(a1 + 216) = a7;
  *(a1 + 220) = a8;
  return a1;
}

void sub_1002F7CDC(_Unwind_Exception *a1)
{
  sub_100006D14(v1);
  nullsub_1();
  _Unwind_Resume(a1);
}

void sub_1002F7D0C(uint64_t a1)
{
  sub_1002F85E8(a1);

  operator delete();
}

uint64_t sub_1002F7D44(uint64_t result, _DWORD *a2)
{
  v6 = *a2;
  if (*a2 < a2[1])
  {
    v7 = 0;
    if (v6)
    {
      v8 = *(result + 200) == 0;
    }

    else
    {
      v8 = *(result + 200);
    }

    LODWORD(v10) = *(result + 216);
    v9 = *(result + 220);
    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (v6)
    {
      v10 = v9;
    }

    else
    {
      v10 = v10;
    }

    v12 = *(result + 184);
    v13 = *(result + 88);
    v14 = *(result + 24) + v6 * v13;
    v15 = 2 * v13;
    v16 = v15 | 1;
    v17 = ((v13 << 32) + 0x200000000) >> 32;
    v18 = (&_mh_execute_header + (v13 << 32)) >> 32;
    v163 = 2 * v13 + 2;
    v164 = v12;
    v19 = v14 - 1;
    v160 = ((v13 << 32) + 0x300000000) >> 32;
    v156 = v18 + 1;
    v155 = v17 + 1;
    v20 = xmmword_1003E3710;
    v21 = xmmword_1003E3700;
    v22 = xmmword_1003E3730;
    v23 = xmmword_1003E3720;
    v24 = xmmword_1003E36F0;
    v25 = vdup_n_s16(0x2591u);
    v26 = vdup_n_s16(0x4B22u);
    v27 = (*(result + 120) + v12 + 1 + v6 * v12);
    v157 = v14 - 1;
    v159 = a2;
    v158 = result;
    while (1)
    {
      v29 = *(result + 208);
      if (v29 <= 0)
      {
        v27[v29] = 0;
        *(v27 - 1) = 0;
        goto LABEL_13;
      }

      v30 = *(result + 208);
      v31 = v14;
      v32 = v27;
      if (v8)
      {
        v31 = v14 + 1;
        *v27 = ((*(v14 + v17) + *(v14 + v13)) * v10 + (*(v14 + v16) + *(v14 + 1)) * v11 + 19234 * *(v14 + v18) + 0x4000) >> 15;
        v32 = (v27 + 1);
        v30 = *(result + 208);
      }

      v33 = v31 + v30 - 18;
      v34 = 4 * v10;
      LODWORD(v35) = v31;
      if (v33 >= v31)
      {
        v35 = v31;
        v36 = v32;
        do
        {
          v37 = *(v35 + v13);
          v38 = vshrq_n_u16(v37, 8uLL);
          v39 = vsraq_n_u16(vextq_s8(v38, v38, 2uLL), v37, 8uLL);
          v37.i16[0] = v37.u8[0];
          v37.i16[1] = BYTE2(*(v35 + v13));
          v37.i16[2] = BYTE4(*(v35->i64 + v13));
          v37.i16[3] = BYTE6(*(v35->i64 + v13));
          v37.i16[4] = *(&v35->i64[1] + v13);
          v37.i16[5] = BYTE2(*(&v35->i64[1] + v13));
          v37.i16[6] = BYTE12(*(v35 + v13));
          v37.i16[7] = BYTE14(*(v35 + v13));
          v40 = vextq_s8(v37, v37, 2uLL);
          v41.i16[0] = v35->u8[0];
          v41.i16[1] = BYTE2(v35->u32[0]);
          v41.i16[2] = BYTE4(v35->i64[0]);
          v41.i16[3] = BYTE6(v35->i64[0]);
          v41.i16[4] = v35->i64[1];
          v41.i16[5] = BYTE2(v35->i64[1]);
          v41.i16[6] = BYTE12(*v35);
          v41.i16[7] = BYTE14(*v35);
          v42.i16[0] = *(v35 + v15);
          v42.i16[1] = BYTE2(*(v35 + v15));
          v42.i16[2] = BYTE4(*(v35->i64 + v15));
          v42.i16[3] = BYTE6(*(v35->i64 + v15));
          v42.i16[4] = *(&v35->i64[1] + v15);
          v42.i16[5] = BYTE2(*(&v35->i64[1] + v15));
          v42.i16[6] = BYTE12(*(v35 + v15));
          v42.i16[7] = BYTE14(*(v35 + v15));
          v43 = vaddq_s16(v42, v41);
          v44 = vextq_s8(v43, v43, 2uLL);
          v45 = vdupq_n_s16(0x4B22u);
          v2.i32[0] = 2 * v11;
          v3.i32[0] = 4 * v11;
          v4.i32[0] = 2 * v10;
          *v37.i8 = vrshrn_n_s16(vaddq_s16(vqdmulhq_s16(vaddq_s16(vsraq_n_u16(vsraq_n_u16(v37, *v35, 8uLL), *(v35 + v15), 8uLL), v40), v45), vaddq_s16(vqdmulhq_lane_s16(vaddq_s16(v44, v43), *v2.i8, 0), vqdmulhq_lane_s16(vshlq_n_s16(v38, 2uLL), *v4.i8, 0))), 2uLL);
          v5.i32[0] = 4 * v10;
          *v43.i8 = vrshrn_n_s16(vaddq_s16(vaddq_s16(vqdmulhq_s16(vshlq_n_s16(v40, 2uLL), v45), vqdmulhq_lane_s16(v44, v3, 0)), vqdmulhq_lane_s16(v39, *v5.i8, 0)), 2uLL);
          *v36 = vzip1_s8(*v37.i8, *v43.i8);
          v36[1] = vzip2_s8(*v37.i8, *v43.i8);
          v35 = (v35 + 14);
          v36 = (v36 + 14);
        }

        while (v35 <= v33);
      }

      v46 = v35 - v31;
      v47 = (v31 + v46);
      v48 = v32 + v46;
      v49 = v14 + v29 - 2;
      if (v31 + v46 <= v49)
      {
        break;
      }

      if (v47 < v14 + v29)
      {
        goto LABEL_84;
      }

LABEL_12:
      v8 = v8 == 0;
      *(v27 - 1) = *v27;
      v27[*(result + 208)] = v27[*(result + 208) - 1];
      v28 = v11;
      v11 = v10;
      v10 = v28;
LABEL_13:
      ++v6;
      v14 += v13;
      v27 += v164;
      ++v7;
      v19 += v13;
      if (v6 >= a2[1])
      {
        return result;
      }
    }

    v161 = v14 + v29;
    v162 = v8;
    v50 = v47 + 2;
    v51 = v157 + v13 * v7 + v29;
    if ((v47 + 2) > v51)
    {
      v51 = (v47 + 2);
    }

    v52 = v51 + ~v31 - v46;
    if (v52 >= 0x20)
    {
      v53 = (v52 & 0xFFFFFFFFFFFFFFFELL) + v46;
      v54 = v18;
      v55 = v32 + v53 + 2;
      v56 = v31 + v53;
      v58 = v48 < v31 + v53 + v156 && v31 + v54 + v46 < v55;
      v60 = v48 < v56 + v15 + 2 && v31 + v15 + v46 < v55;
      v62 = v48 < v56 + v155 && v31 + v17 + v46 < v55;
      v64 = v48 < v56 + v13 + 1 && v31 + v13 + v46 < v55;
      v66 = v48 < v56 + 3 && v47 < v55;
      v68 = v48 < v56 + (v163 | 1uLL) && v31 + v163 + v46 < v55;
      if (v31 + v160 + v46 >= v55 || v48 >= v56 + v160 + 1)
      {
        v18 = (&_mh_execute_header + (v13 << 32)) >> 32;
        if (!v58 && !v60 && !v62 && !v64 && !v66)
        {
          v17 = ((v13 << 32) + 0x200000000) >> 32;
          if (v68)
          {
            goto LABEL_81;
          }

          v70 = (v52 >> 1) + 1;
          v71 = v70 & 0xF;
          if ((v70 & 0xF) == 0)
          {
            v71 = 16;
          }

          v72 = 2 * (v70 - v71);
          v48 += v72;
          v73 = vdupq_n_s32(v11);
          v47 += v72;
          v165 = vdupq_n_s32(v10);
          v166 = vdupq_n_s32(v34);
          v74 = (v19 + v29);
          if (v50 > v19 + v29)
          {
            v74 = v50;
          }

          v75 = ~(&v74[~v31 - v46] >> 1) + v71;
          v76 = v31 + v160;
          v77 = v31 + ((&_mh_execute_header + (v13 << 32)) >> 32);
          v78 = v31 + (((v13 << 32) + 0x200000000) >> 32);
          v79 = v31 + v13;
          v80 = v31 + v163;
          v81 = v31 + v15;
          v82 = v31 + 2;
          do
          {
            v83 = (v82 + v46);
            v84 = (v82 + v46 - 2);
            v85 = vld2q_s8(v84);
            v86 = vld2q_s8(v83);
            v87 = (v81 + v46);
            v167 = vld2q_s8(v87);
            v88 = vaddl_u8(*&v86, *&v85);
            v89 = vaddl_high_u8(v86, v85);
            v90 = vmovl_u8(*v167.val[0].i8);
            v91 = vmovl_high_u8(v167.val[0]);
            v92 = vaddl_high_u16(v89, v91);
            v93 = vaddl_u16(*v89.i8, *v91.i8);
            v94 = vaddl_high_u16(v88, v90);
            v95 = vaddl_u16(*v88.i8, *v90.i8);
            v96 = (v80 + v46);
            v97 = vld2q_s8(v96);
            v98 = vqtbl1q_s8(v97, v20);
            v99 = vqtbl1q_s8(v97, v21);
            v100 = vqtbl1q_s8(v97, v22);
            v101 = (v82 + v46 - 1);
            v102 = v26;
            v103 = v22;
            v104 = v21;
            v105 = v20;
            v168 = vld2q_s8(v101);
            v106 = v23;
            v107 = vqtbl1q_s8(v97, v23);
            v108 = (v79 + v46);
            v109 = vld2q_s8(v108);
            v110 = v24;
            v111 = vaddl_high_u8(v109, v168.val[0]);
            v112 = (v78 + v46);
            v113 = vld2q_s8(v112);
            v114 = vaddl_u8(*&v109, *v168.val[0].i8);
            v115 = vqtbl1q_s8(v113, v105);
            v116 = vqtbl1q_s8(v113, v104);
            v117 = vqtbl1q_s8(v113, v103);
            v118 = vqtbl1q_s8(v113, v106);
            v119 = vaddw_u16(v118, *v114.i8);
            v120 = vaddw_high_u16(v117, v114);
            v121 = vaddw_u16(v116, *v111.i8);
            v122 = vmovl_u8(*v167.val[1].i8);
            v167.val[0] = vmovl_high_u8(v167.val[1]);
            v123 = vaddw_high_u16(vaddw_high_u16(v115, v111), v167.val[0]);
            v124 = vaddw_u16(v121, *v167.val[0].i8);
            v125 = (v77 + v46);
            v126 = vld2q_s8(v125);
            v127 = vaddw_high_u16(v120, v122);
            v128 = vaddw_u16(v119, *v122.i8);
            v4 = vqtbl1q_s8(v126, v105);
            v5 = vqtbl1q_s8(v126, v104);
            v129 = vqtbl1q_s8(v126, v103);
            v130 = vqtbl1q_s8(v126, v106);
            v131 = vmlal_u16(vmulq_s32(vaddq_s32(v95, v107), v73), vmovn_s32(v128), v25);
            v132 = vmulq_s32(vaddq_s32(v94, v100), v73);
            *v94.i8 = vmovn_s32(v123);
            *v123.i8 = vmovn_s32(v127);
            v127.i64[0] = 0x800000008000;
            v127.i64[1] = 0x800000008000;
            v133 = vmlal_u16(v132, *v123.i8, v25);
            v24 = v110;
            v3 = v25;
            v2 = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmlal_u16(vmulq_s32(vaddq_s32(v92, v98), v73), *v94.i8, v25), v166, v4), v127), 0x10uLL);
            v134 = vshrq_n_u32(vaddq_s32(vmlaq_s32(vmlal_u16(vmulq_s32(vaddq_s32(v93, v99), v73), vmovn_s32(v124), v25), v166, v5), v127), 0x10uLL);
            v135 = vshrq_n_u32(vaddq_s32(vmlaq_s32(v133, v166, v129), v127), 0x10uLL);
            v136 = vshrq_n_u32(vaddq_s32(vmlaq_s32(v131, v166, v130), v127), 0x10uLL);
            v169.val[0] = vqtbl4q_s8(*(&v2 - 3), v24);
            v137 = vmovl_high_u8(v168.val[1]);
            v138 = vmovl_u8(*v168.val[1].i8);
            v20 = v105;
            v21 = v104;
            v22 = v103;
            v26 = v102;
            v139 = vaddw_u16(v107, *v138.i8);
            v140 = vaddw_high_u16(v100, v138);
            v141 = (v76 + v46);
            v142 = vld2q_s8(v141);
            v23 = v106;
            v143 = vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v142, v106), v130), v165), v139, v73);
            v144 = vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v142, v20), v4), v165), vaddw_high_u16(v98, v137), v73), vmovn_s32(v115), v102);
            v145 = vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v142, v22), v129), v165), v140, v73), vmovn_s32(v117), v102);
            v134.i64[0] = 0x400000004000;
            v134.i64[1] = 0x400000004000;
            v146 = vaddq_s32(vmlal_u16(vmlaq_s32(vmulq_s32(vaddq_s32(vqtbl1q_s8(v142, v21), v5), v165), vaddw_u16(v99, *v137.i8), v73), vmovn_s32(v116), v102), v134);
            v147 = vaddq_s32(v144, v134);
            v25 = v3;
            v170.val[3] = vshrq_n_u32(v147, 0xFuLL);
            v170.val[2] = vshrq_n_u32(v146, 0xFuLL);
            v170.val[1] = vshrq_n_u32(vaddq_s32(v145, v134), 0xFuLL);
            v170.val[0] = vshrq_n_u32(vaddq_s32(vmlal_u16(v143, vmovn_s32(v118), v102), v134), 0xFuLL);
            v169.val[1] = vqtbl4q_s8(v170, v24);
            v148 = v32 + v46;
            vst2q_s8(v148, v169);
            v76 += 32;
            v77 += 32;
            v78 += 32;
            v79 += 32;
            v32 += 4;
            v80 += 32;
            v81 += 32;
            v82 += 32;
            v75 += 16;
          }

          while (v75);
        }

        v17 = ((v13 << 32) + 0x200000000) >> 32;
        goto LABEL_81;
      }

      v17 = ((v13 << 32) + 0x200000000) >> 32;
      v18 = (&_mh_execute_header + (v13 << 32)) >> 32;
    }

LABEL_81:
    v149 = 0;
    v150 = &v47[v18];
    v151 = &v47[v17];
    v152 = &v47[v163];
    do
    {
      v153 = &v48[v149];
      *v153 = (9617 * (v47[v13 + v149] + v47[v149 + 1] + v151[v149] + v47[v15 + 1 + v149]) + (v47[v149 + 2] + v47[v149] + v47[v15 + v149] + v152[v149]) * v11 + v34 * v150[v149] + 0x8000) >> 16;
      v153[1] = ((v47[v160 + v149] + v150[v149]) * v10 + (v152[v149] + v47[v149 + 2]) * v11 + 19234 * v151[v149] + 0x4000) >> 15;
      v149 += 2;
      v154 = &v47[v149];
    }

    while (&v47[v149] <= v49);
    v48 += v149;
    v47 += v149;
    result = v158;
    a2 = v159;
    v8 = v162;
    v16 = v15 | 1;
    v17 = ((v13 << 32) + 0x200000000) >> 32;
    v18 = (&_mh_execute_header + (v13 << 32)) >> 32;
    if (v154 >= v161)
    {
      goto LABEL_12;
    }

LABEL_84:
    *v48 = (9617 * (v47[v13] + v47[1] + v47[v17] + v47[v16]) + (v47[2] + *v47 + v47[v15] + v47[v163]) * v11 + 4 * v10 * v47[v18] + 0x8000) >> 16;
    goto LABEL_12;
  }

  return result;
}

void sub_1002F85E8(uint64_t a1)
{
  *a1 = &off_1004788F0;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  nullsub_1();
}

uint64_t sub_1002F8724(uint64_t a1, __int128 *a2, __int128 *a3, int a4, char a5, void *a6, int a7, int a8)
{
  *a1 = &off_100478930;
  v15 = *a2;
  v16 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 24) = v16;
  *(a1 + 40) = a2[2];
  v17 = *(a2 + 7);
  *(a1 + 56) = *(a2 + 6);
  *(a1 + 64) = v17;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v17)
  {
    atomic_fetch_add((v17 + 20), 1u);
    if (*(a2 + 1) <= 2)
    {
LABEL_3:
      v18 = *(a2 + 9);
      v19 = *(a1 + 80);
      *v19 = *v18;
      v19[1] = v18[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v15) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v20 = *a3;
  *(a1 + 120) = a3[1];
  v21 = a3[2];
  v23 = *(a3 + 6);
  v22 = *(a3 + 7);
  *(a1 + 184) = 0;
  *(a1 + 136) = v21;
  *(a1 + 152) = v23;
  *(a1 + 160) = v22;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v20;
  if (!v22)
  {
    if (SDWORD1(v20) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v22 + 20), 1u);
  if (*(a3 + 1) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = *(a3 + 9);
  v25 = *(a1 + 176);
  *v25 = *v24;
  v25[1] = v24[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = *a6;
  *(a1 + 216) = a7;
  *(a1 + 220) = a8;
  return a1;
}

void sub_1002F88AC(_Unwind_Exception *a1)
{
  sub_100006D14(v1);
  nullsub_1();
  _Unwind_Resume(a1);
}

void sub_1002F88DC(uint64_t a1)
{
  sub_1002F8F64(a1);

  operator delete();
}

uint64_t sub_1002F8914(uint64_t result, int *a2)
{
  v3 = *a2;
  v2 = a2[1];
  LODWORD(v4) = *(result + 216);
  v5 = *(result + 220);
  if (*a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = v5;
  }

  if (v3)
  {
    v7 = *(result + 200) == 0;
  }

  else
  {
    v7 = *(result + 200);
  }

  v8 = v2 - v3;
  if (v2 > v3)
  {
    v9 = *(result + 184);
    v10 = (*(result + 120) + ((&_mh_execute_header + (v9 >> 1 << 32)) >> 31) + 2 * (v3 * (v9 >> 1)));
    v11 = *(result + 208);
    v12 = (v9 >> 1);
    if (v11 <= 0)
    {
      do
      {
        v10[v11] = 0;
        *(v10 - 1) = 0;
        v10 += v12;
        --v8;
      }

      while (v8);
    }

    else
    {
      v13 = 0;
      v14 = *(result + 88) >> 1;
      v15 = *(result + 24);
      v16 = 2 * v14;
      result = v16 | 1;
      v17 = v14 << 32;
      v18 = v14;
      v19 = (v14 << 32) + 0x200000000;
      v20 = v19 >> 32;
      v21 = &_mh_execute_header + (v14 << 32);
      v22 = v21 >> 32;
      v23 = 2 * v14 + 2;
      v24 = (v14 << 32) + 0x300000000;
      v25 = v11 - 1;
      LODWORD(v14) = v3 * v14;
      v26 = v15 + 2 * v14;
      v27 = v17 >> 31;
      v108 = v24 >> 31;
      v106 = v21 >> 31;
      v107 = (v24 >> 31) + 2;
      v119 = v16;
      v126 = 2 * v16;
      v104 = 2 * v16 + 4;
      v105 = (v21 >> 31) + 2;
      v103 = v19 >> 31;
      v102 = (v19 >> 31) + 2;
      v101 = v27 + 2;
      v114 = v23;
      v125 = 2 * v23;
      v100 = (2 * v23) | 2;
      v124 = 2 * (v24 >> 32);
      v123 = 2 * (v21 >> 32);
      v122 = 2 * (v19 >> 32);
      v120 = v12;
      v121 = 2 * v18;
      v28 = vdupq_n_s32(0x2591u);
      v29 = vdupq_n_s16(0x4B22u);
      v111 = v27;
      v112 = v15 + 2 * (v11 + v14) - 3;
      v30 = v112;
      v110 = v2;
      v109 = v11;
      v117 = v18;
      v118 = v16 | 1;
      v115 = v21 >> 32;
      v116 = v19 >> 32;
      v113 = v11 - 1;
      do
      {
        v32 = v4;
        v33 = v26;
        v34 = v10;
        if (v7)
        {
          v33 = v26 + 2;
          *v10 = ((*(v26 + 2 * v20) + *(v26 + 2 * v18)) * v6 + (*(v26 + 2 * result) + *(v26 + 2)) * v32 + 19234 * *(v26 + 2 * v22) + 0x4000) >> 15;
          v34 = v10 + 1;
        }

        v35 = v26 + 2 * v11;
        v36 = v35 - 4;
        if (v33 <= v35 - 4)
        {
          v127 = v26 + 2 * v11;
          v128 = v7;
          v37 = v112 + v27 * v13;
          v38 = 4 * v6;
          v39 = v33 + 4;
          if (v37 <= v33 + 4)
          {
            v37 = v33 + 4;
          }

          v40 = v27;
          v41 = v37 + ~v33;
          if (v41 >= 0x20)
          {
            v42 = v34 + (v41 & 0xFFFFFFFFFFFFFFFCLL) + 4;
            v43 = v33 + (v41 & 0xFFFFFFFFFFFFFFFCLL);
            v44 = v43 + v107;
            v45 = v43 + v104;
            v46 = v43 + v102;
            v47 = v33 + v40;
            v48 = v43 + v101;
            v49 = v43 + 6;
            v50 = v43 + v100;
            v52 = v34 < v43 + v105 && v33 + v106 < v42;
            v54 = v34 < v45 && v33 + v126 < v42;
            v56 = v34 < v46 && v33 + v103 < v42;
            v58 = v34 < v48 && v47 < v42;
            v60 = v34 < v49 && v33 < v42;
            v62 = v34 < v50 && v33 + v125 < v42;
            if (v33 + v108 >= v42 || v34 >= v44)
            {
              v2 = v110;
              v11 = v109;
              if (!v52 && !v54 && !v56 && !v58 && !v60 && !v62)
              {
                v64 = 0;
                v65 = (v41 >> 2) + 1;
                v66 = v65 & 7;
                if ((v65 & 7) == 0)
                {
                  v66 = 8;
                }

                v67 = 2 * (v65 - v66);
                v68 = &v34[v67];
                v69 = v33 + v67 * 2;
                v70 = vdupq_n_s32(v32);
                v71 = vdupq_n_s32(v38);
                v72 = vdupq_n_s32(v6);
                if (v30 > v39)
                {
                  v39 = v30;
                }

                v73 = ~((~v33 + v39) >> 2) + v66;
                do
                {
                  v74 = (v33 + v64);
                  v75 = vld2q_s16(v74);
                  v76 = (v33 + v126 + v64);
                  v129 = vld2q_s16(v76);
                  v77 = (v33 + v125 + v64);
                  v78 = vld2q_s16(v77);
                  v79 = (v33 + v64 + 4);
                  v80 = vld2q_s16(v79);
                  v81 = (v33 + v64 + 2);
                  v130 = vld2q_s16(v81);
                  v82 = vaddl_u16(*&v80, *&v75);
                  v83 = (v33 + v121 + v64);
                  v84 = vld2q_s16(v83);
                  v85 = vaddl_high_u16(v80, v75);
                  v86 = (v33 + v122 + v64);
                  v87 = vld2q_s16(v86);
                  v88 = vaddw_u16(v82, *v129.val[0].i8);
                  v89 = (v33 + v123 + v64);
                  v90 = vld2q_s16(v89);
                  v91 = vaddw_high_u16(vaddw_high_u16(v85, v129.val[0]), v78);
                  v129.val[0] = vmulq_s32(vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v84, v130.val[0]), v87), v129.val[1]), v28);
                  v92 = vmlaq_s32(vmulq_s32(vaddw_u16(vaddw_u16(vaddl_u16(*&v84, *v130.val[0].i8), *&v87), *v129.val[1].i8), v28), vaddw_u16(v88, *&v78), v70);
                  v93 = (v33 + v124 + v64);
                  v129.val[1] = vld2q_s16(v93);
                  v130.val[0] = vraddhn_high_s32(vraddhn_s32(vmlaq_s32(v92, v71, vmovl_u16(*&v90)), 0), vmlaq_s32(vmlaq_s32(v129.val[0], v91, v70), v71, vmovl_high_u16(v90)), 0);
                  v130.val[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmlaq_s32(vmulq_s32(vaddl_u16(*v129.val[1].i8, *&v90), v72), vaddl_u16(*&v78, *v130.val[1].i8), v70), *&v87, *v29.i8), 0xFuLL), vmlal_high_u16(vmlaq_s32(vmulq_s32(vaddl_high_u16(v129.val[1], v90), v72), vaddl_high_u16(v78, v130.val[1]), v70), v87, v29), 0xFuLL);
                  v94 = &v34[v64 / 2];
                  vst2q_s16(v94, v130);
                  v64 += 32;
                  v73 += 8;
                }

                while (v73);
                v34 = v68;
                v33 = v69;
              }
            }

            else
            {
              v2 = v110;
              v11 = v109;
            }
          }

          v95 = 0;
          v96 = v33 + v123;
          v97 = v33 + v122;
          v98 = v33 + v125;
          do
          {
            v99 = &v34[v95 / 2];
            *v99 = (9617 * (*(v33 + v121 + v95) + *(v33 + v95 + 2) + *(v97 + v95) + *(v33 + v126 + v95 + 2)) + (*(v33 + v95 + 4) + *(v33 + v95) + *(v33 + v126 + v95) + *(v98 + v95)) * v32 + v38 * *(v96 + v95) + 0x8000) >> 16;
            v99[1] = ((*(v33 + v124 + v95) + *(v96 + v95)) * v6 + (*(v98 + v95) + *(v33 + v95 + 4)) * v32 + 19234 * *(v97 + v95) + 0x4000) >> 15;
            v95 += 4;
          }

          while (v33 + v95 <= v36);
          v34 = (v34 + v95);
          v33 += v95;
          v7 = v128;
          v12 = v120;
          v18 = v117;
          result = v118;
          v22 = v115;
          v20 = v116;
          v25 = v113;
          v27 = v111;
          v35 = v127;
        }

        if (v33 < v35)
        {
          *v34 = (9617 * (*(v33 + 2 * v18) + *(v33 + 2) + *(v33 + 2 * v20) + *(v33 + 2 * result)) + (*(v33 + 4) + *v33 + *(v33 + 2 * v119) + *(v33 + 2 * v114)) * v32 + 4 * v6 * *(v33 + 2 * v22) + 0x8000) >> 16;
        }

        v7 = v7 == 0;
        v31 = v10[v25];
        v26 += 2 * v18;
        *(v10 - 1) = *v10;
        v10[v11] = v31;
        v10 += v12;
        ++v3;
        ++v13;
        v30 += v27;
        v4 = v6;
        v6 = v32;
      }

      while (v3 != v2);
    }
  }

  return result;
}

void sub_1002F8F64(uint64_t a1)
{
  *a1 = &off_100478930;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  nullsub_1();
}

uint64_t sub_1002F90A0(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5, void *a6)
{
  *a1 = &off_100478970;
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 24) = v12;
  *(a1 + 40) = a2[2];
  v13 = *(a2 + 7);
  *(a1 + 56) = *(a2 + 6);
  *(a1 + 64) = v13;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v13)
  {
    atomic_fetch_add((v13 + 20), 1u);
    if (*(a2 + 1) <= 2)
    {
LABEL_3:
      v14 = *(a2 + 9);
      v15 = *(a1 + 80);
      *v15 = *v14;
      v15[1] = v14[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v11) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v16 = *a3;
  *(a1 + 120) = a3[1];
  v17 = a3[2];
  v19 = *(a3 + 6);
  v18 = *(a3 + 7);
  *(a1 + 184) = 0;
  *(a1 + 136) = v17;
  *(a1 + 152) = v19;
  *(a1 + 160) = v18;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v16;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(a3 + 1) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(a3 + 9);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = *a6;
  return a1;
}

void sub_1002F9210(_Unwind_Exception *a1)
{
  sub_100006D14(v1);
  nullsub_1();
  _Unwind_Resume(a1);
}

void sub_1002F9240(uint64_t a1)
{
  sub_1002F9924(a1);

  operator delete();
}

uint64_t sub_1002F9278(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 > *a2)
  {
    v5 = *(result + 104);
    v6 = ((v5 >> 3) & 0x1FF) + 1;
    v7 = *(result + 184) >> 1;
    v8 = *(result + 120);
    v9 = v7 + v7 * v2;
    v10 = *(result + 208);
    v11 = v10 * v6;
    v58 = v10 * v6 - 1;
    if (v10 >= 1)
    {
      v12 = (v8 + 2 * v9 + 2 * v6 + 2);
      v13 = *(result + 88);
      v14 = 2 * (v13 >> 1);
      v15 = v14;
      v16 = v14 | 1;
      v17 = v13 >> 1 << 32;
      v18 = (v13 >> 1);
      v19 = (v17 + 0x200000000) >> 32;
      v20 = (&_mh_execute_header + v17) >> 32;
      v21 = v14 + 2;
      v22 = (v17 + 0x300000000) >> 32;
      v57 = v15;
      v23 = *(result + 200);
      if (v2)
      {
        v24 = -*(result + 204);
      }

      else
      {
        v24 = *(result + 204);
      }

      if (v2)
      {
        v23 = v23 == 0;
      }

      v25 = *(result + 24) + 2 * (v2 * (v13 >> 1));
      v26 = 4 * ((v5 >> 3) & 0x1FF) + 4;
      v27 = 2 * v15 + 2;
      while (1)
      {
        v33 = v25;
        v34 = v12;
        if (v23)
        {
          v33 = (v25 + 2);
          v35 = *(v25 + 2 * v18) + *(v25 + 2 * v19);
          v12[-v24] = (*(v25 + 2) + *(v25 + 2 * v16) + 1) >> 1;
          *v12 = *(v25 + 2 * v20);
          v12[v24] = (v35 + 1) >> 1;
          if (v6 == 4)
          {
            v12[2] = -1;
          }

          v34 = &v12[v6];
        }

        v36 = v25 + 2 * v10;
        v37 = v36 - 4;
        if (v6 == 3)
        {
          if (v24 <= 0)
          {
            for (i = v33; i <= v37; v33 = i)
            {
              i = v33 + 2;
              v43 = (v33[1] + v33[v18] + v33[v19] + *(v33 + v27) + 2) >> 2;
              v34[1] = (*v33 + v33[2] + *(v33 + v27 - 2) + v33[v21] + 2) >> 2;
              *v34 = v43;
              v44 = v33[v20];
              *(v34 - 1) = v44;
              v45 = v33[v22];
              v34[4] = (v33[2] + v33[v21] + 1) >> 1;
              v34[3] = v33[v19];
              v34[2] = (v44 + v45 + 1) >> 1;
              v34 = (v34 + v26);
            }
          }

          else
          {
            if (v33 > v37)
            {
              goto LABEL_24;
            }

            i = v33;
            do
            {
              v39 = i[2];
              i += 2;
              v40 = (v33[1] + v33[v18] + v33[v19] + *(v33 + v27) + 2) >> 2;
              *(v34 - 1) = (*v33 + v39 + *(v33 + v27 - 2) + v33[v21] + 2) >> 2;
              *v34 = v40;
              v41 = v33[v20];
              v34[1] = v41;
              v42 = v33[v22];
              v34[2] = (*i + v33[v21] + 1) >> 1;
              v34[3] = v33[v19];
              v34[4] = (v41 + v42 + 1) >> 1;
              v34 = (v34 + v26);
              v33 = i;
            }

            while (i <= v37);
          }
        }

        else if (v24 <= 0)
        {
          for (i = v33; i <= v37; v33 = i)
          {
            i = v33 + 2;
            v46 = (*v33 + v33[2] + *(v33 + v27 - 2) + v33[v21] + 2) >> 2;
            v47 = (v33[1] + v33[v18] + v33[v19] + *(v33 + v27) + 2) >> 2;
            *(v34 - 1) = v33[v20];
            *v34 = v47;
            v34[1] = v46;
            v34[2] = -1;
            v48 = (v33[2] + v33[v21] + 1) >> 1;
            v34[3] = (v33[v20] + v33[v22] + 1) >> 1;
            v34[4] = v33[v19];
            v34[5] = v48;
            v34[6] = -1;
            v34 = (v34 + v26);
          }
        }

        else
        {
          if (v33 > v37)
          {
LABEL_24:
            i = v33;
            goto LABEL_33;
          }

          i = v33;
          do
          {
            v49 = i[2];
            i += 2;
            v50 = (v33[1] + v33[v18] + v33[v19] + *(v33 + v27) + 2) >> 2;
            *(v34 - 1) = (*v33 + v49 + *(v33 + v27 - 2) + v33[v21] + 2) >> 2;
            *v34 = v50;
            v34[1] = v33[v20];
            v34[2] = -1;
            v51 = (v33[v20] + v33[v22] + 1) >> 1;
            v34[3] = (*i + v33[v21] + 1) >> 1;
            v34[4] = v33[v19];
            v34[5] = v51;
            v34[6] = -1;
            v34 = (v34 + v26);
            v33 = i;
          }

          while (i <= v37);
        }

LABEL_33:
        if (i < v36 && (v52 = (i[1] + i[v18] + i[v19] + i[v16] + 2) >> 2, v34[-v24] = (*i + i[2] + i[v57] + i[v21] + 2) >> 2, *v34 = v52, v34[v24] = i[v20], v6 == 4))
        {
          v34[2] = -1;
        }

        else if (v6 == 3)
        {
          *(v12 - 4) = *(v12 - 1);
          *(v12 - 3) = *v12;
          result = 3 * v10 - 1;
          v28 = 3 * v10;
          v29 = 3 * v10;
          v30 = 3 * v10 + 1;
          goto LABEL_11;
        }

        *(v12 - 5) = *(v12 - 1);
        v12[v58] = v12[v11 - 5];
        v28 = v10 * v6;
        result = (v10 * v6);
        v29 = v10 * v6 + 1;
        v30 = v10 * v6 + 2;
LABEL_11:
        v31 = v30;
        v32 = &v12[v28];
        v12[result] = *(v32 - 4);
        v12[v29] = *(v32 - 3);
        v12[v31] = *(v32 - 2);
        v23 = v23 == 0;
        v24 = -v24;
        v25 += 2 * v18;
        v12 += v7;
        if (++v2 == v3)
        {
          return result;
        }
      }
    }

    if (((*(result + 104) >> 3) & 0x1FF) == 2)
    {
      v53 = 2 * v9 + 2 * ((v5 >> 3) & 0x1FF) + v8 - 4;
      v54 = 2 * v7;
      do
      {
        *(v53 + 2 * (3 * v10 + 1) + 4 + 4) = 0;
        *(v53 + 6 * v10 + 4 + 4) = 0;
        *(v53 + 2 * (3 * v10 - 1) + 4 + 4) = 0;
        *(v53 + 4) = 0;
        *v53 = 0;
        v53 += v54;
        --v4;
      }

      while (v4);
    }

    else
    {
      v55 = (v8 + 2 * v9 + 2 * ((v5 >> 3) & 0x1FF));
      v56 = 2 * v7;
      do
      {
        v55[v10 * v6 + 3] = 0;
        v55[v11 + 2] = 0;
        v55[v58 + 2] = 0;
        *(v55 - 1) = 0;
        *(v55 - 3) = 0;
        v55[v10 * v6 + 4] = -1;
        *v55 = -1;
        v55 = (v55 + v56);
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

void sub_1002F9924(uint64_t a1)
{
  *a1 = &off_100478970;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  nullsub_1();
}

uint64_t sub_1002F9A60(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, int a5, int a6)
{
  *a1 = &off_1004789B0;
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 24) = v12;
  *(a1 + 40) = a2[2];
  v13 = *(a2 + 7);
  *(a1 + 56) = *(a2 + 6);
  *(a1 + 64) = v13;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v13)
  {
    atomic_fetch_add((v13 + 20), 1u);
    if (*(a2 + 1) <= 2)
    {
LABEL_3:
      v14 = *(a2 + 9);
      v15 = *(a1 + 80);
      *v15 = *v14;
      v15[1] = v14[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v11) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v16 = *a3;
  *(a1 + 120) = a3[1];
  v17 = a3[2];
  v19 = *(a3 + 6);
  v18 = *(a3 + 7);
  *(a1 + 184) = 0;
  *(a1 + 136) = v17;
  *(a1 + 152) = v19;
  *(a1 + 160) = v18;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v16;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(a3 + 1) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(a3 + 9);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_11:
  *(a1 + 200) = *a4;
  *(a1 + 208) = a5;
  *(a1 + 212) = a6;
  return a1;
}

void sub_1002F9BD0(_Unwind_Exception *a1)
{
  sub_100006D14(v1);
  nullsub_1();
  _Unwind_Resume(a1);
}

void sub_1002F9C00(uint64_t a1)
{
  sub_1002FA100(a1);

  operator delete();
}

uint64_t sub_1002F9C38(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 < a2[1])
  {
    v3 = *(result + 104);
    v4 = (v3 >> 3) & 0x1FF;
    v5 = v4 + 1;
    v6 = *a2 & 1 ^ *(result + 212);
    v7 = *a2 & 1 ^ *(result + 208);
    v8 = *(result + 184);
    v9 = v2 + 1;
    v10 = (*(result + 120) + v8 * v9 + v4 + 1);
    v11 = (*(result + 24) + **(result + 80) * v9 + 1);
    v12 = (0x88442211uLL >> (4 * (v3 & 7u))) & 0xF;
    v13 = *(result + 88) / ((0x88442211uLL >> (4 * (*(result + 8) & 7u))) & 0xF);
    v14 = (2 * (v4 + 1));
    v15 = -v13;
    v16 = ~v13;
    v17 = (&_mh_execute_header - (v13 << 32)) >> 32;
    v18 = ((v13 << 32) - 0x100000000) >> 32;
    v19 = (&_mh_execute_header + (v13 << 32)) >> 32;
    v20 = v8 / v12;
    v21 = v14 - v20;
    v22 = v4 + 1 - v20;
    v23 = v14 - v20;
    v24 = v22;
    v25 = v4;
    v26 = v4 < 7;
    v27 = v22 >= 0x20 && v4 >= 0x1F;
    v31 = !v27 || v21 < 0x20 || v22 + v4 + 1 < 0x20 || (v22 - v21) < 0x20;
    v32 = v5 & 0x3E0;
    v33 = v26 | v31;
    v82 = 15 - v25;
    v34 = ~v25;
    do
    {
      v35 = 2 * v7;
      if (v6)
      {
        v10[v35] = (v11[v13] + v11[v15]) >> 1;
        v10[1] = *v11;
        v36 = *++v11;
        v10[-v35 + 2] = (v36 + *(v11 - 2)) >> 1;
        v10 += v5;
        v37 = 2;
        v38 = *(result + 200);
        v39 = v38 > 2;
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v37 = 1;
        v38 = *(result + 200);
        v39 = v38 > 1;
        if (!v7)
        {
LABEL_32:
          if (v39)
          {
            do
            {
              *v10 = (v11[v16] + v11[v17] + v11[v18] + v11[v19] + 2) >> 2;
              v50 = *(v11 - 1);
              v51 = v11[1];
              v52 = v50 - v51;
              v53 = v11[v13];
              if (v50 - v51 < 0)
              {
                v52 = v51 - v50;
              }

              v54 = v11[v15];
              v55 = v53 - v54;
              if (v53 - v54 < 0)
              {
                v55 = v54 - v53;
              }

              v56 = v54 + v53;
              v57 = v51 + v50;
              if (v52 > v55)
              {
                v57 = v56;
              }

              v10[1] = (v57 + 1) >> 1;
              v10[2] = *v11;
              v10[3] = (v11[v17] + v11[v19] + 1) >> 1;
              v10[4] = v11[1];
              v58 = *v11;
              v59 = v11[2];
              v11 += 2;
              v10[5] = (v58 + v59 + 1) >> 1;
              v37 += 2;
              v10 += v14;
              v38 = *(result + 200);
            }

            while (v37 < v38);
          }

          goto LABEL_41;
        }
      }

      if (v39)
      {
        do
        {
          v40 = v11;
          *v10 = *v11;
          v41 = *(v11 - 1);
          v42 = v11[1];
          v43 = v41 - v42;
          if (v41 - v42 < 0)
          {
            v43 = v42 - v41;
          }

          v44 = v11[v13];
          v45 = v11[v15];
          v46 = v44 - v45;
          if (v44 - v45 < 0)
          {
            v46 = v45 - v44;
          }

          v47 = v45 + v44;
          if (v43 <= v46)
          {
            v47 = v42 + v41;
          }

          v10[1] = (v47 + 1) >> 1;
          v10[2] = (v11[v17] + v11[v16] + v11[v18] + v11[v19]) >> 2;
          v48 = *v11;
          v49 = v11[2];
          v11 += 2;
          v10[3] = (v48 + v49 + 1) >> 1;
          v10[4] = v40[1];
          v10[5] = (v40[v17] + v40[v19] + 1) >> 1;
          v37 += 2;
          v10 += v14;
          v38 = *(result + 200);
        }

        while (v37 < v38);
      }

LABEL_41:
      if (v37 <= v38)
      {
        v60 = v35;
        v10[v35] = (v11[v16] + v11[v17] + v11[v18] + v11[v19] + 2) >> 2;
        v61 = *(v11 - 1);
        v62 = v11[1];
        v63 = v61 - v62;
        if (v61 - v62 < 0)
        {
          v63 = v62 - v61;
        }

        v64 = v11[v13];
        v65 = v11[v15];
        v66 = v64 - v65;
        if (v64 - v65 < 0)
        {
          v66 = v65 - v64;
        }

        v67 = v65 + v64;
        v68 = v62 + v61;
        if (v63 > v66)
        {
          v68 = v67;
        }

        v10[1] = (v68 + 1) >> 1;
        v10[-v60 + 2] = *v11;
        v10 += v5;
        ++v11;
      }

      v69 = 0;
      if (v33)
      {
        goto LABEL_50;
      }

      v71 = &v10[v82];
      v72 = v10 + 16;
      v73 = v5 & 0x3E0;
      do
      {
        v74 = *v71;
        *(v72 - 1) = *(v71 - 1);
        *v72 = v74;
        v75 = &v10[v69 + v23];
        v76 = *v75;
        v77 = v75[1];
        v78 = &v10[v69 + v24];
        *v78 = v76;
        v78[1] = v77;
        v69 += 32;
        v71 += 2;
        v72 += 2;
        v73 -= 32;
      }

      while (v73);
      if (v32 != v5)
      {
        v69 = v5 & 0x3E0;
        if ((v5 & 0x18) == 0)
        {
          goto LABEL_50;
        }

        v79 = &v10[v32];
        v80 = (v5 & 0x3F8) - (v5 & 0x3E0);
        v81 = v5 & 0x3E0;
        do
        {
          *v79 = *(v79 + v34);
          ++v79;
          *&v10[v81 + v24] = *&v10[v81 + v23];
          v81 += 8;
          v80 -= 8;
        }

        while (v80);
        v69 = v5 & 0x3F8;
        if (v69 != v5)
        {
LABEL_50:
          v70 = v34 + v69;
          do
          {
            v10[v69] = v10[v70];
            v10[v69 + v24] = v10[v69 + v23];
            ++v69;
            v27 = __CFADD__(v70++, 1);
          }

          while (!v27);
        }
      }

      v6 ^= 1u;
      v7 ^= 1u;
      v11 += 2;
      v10 += v14;
      ++v2;
    }

    while (v2 < a2[1]);
  }

  return result;
}

void sub_1002FA100(uint64_t a1)
{
  *a1 = &off_1004789B0;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  nullsub_1();
}

uint64_t sub_1002FA23C(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, int a5, int a6)
{
  *a1 = &off_1004789F0;
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 24) = v12;
  *(a1 + 40) = a2[2];
  v13 = *(a2 + 7);
  *(a1 + 56) = *(a2 + 6);
  *(a1 + 64) = v13;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v13)
  {
    atomic_fetch_add((v13 + 20), 1u);
    if (*(a2 + 1) <= 2)
    {
LABEL_3:
      v14 = *(a2 + 9);
      v15 = *(a1 + 80);
      *v15 = *v14;
      v15[1] = v14[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v11) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v16 = *a3;
  *(a1 + 120) = a3[1];
  v17 = a3[2];
  v19 = *(a3 + 6);
  v18 = *(a3 + 7);
  *(a1 + 184) = 0;
  *(a1 + 136) = v17;
  *(a1 + 152) = v19;
  *(a1 + 160) = v18;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v16;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(a3 + 1) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(a3 + 9);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_11:
  *(a1 + 200) = *a4;
  *(a1 + 208) = a5;
  *(a1 + 212) = a6;
  return a1;
}

void sub_1002FA3AC(_Unwind_Exception *a1)
{
  sub_100006D14(v1);
  nullsub_1();
  _Unwind_Resume(a1);
}

void sub_1002FA3DC(uint64_t a1)
{
  sub_1002FA90C(a1);

  operator delete();
}

uint64_t sub_1002FA414(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 < v3)
  {
    v4 = *(result + 104);
    v5 = *(result + 184);
    v6 = v5 / ((0x88442211uLL >> (4 * (v4 & 7u))) & 0xF);
    v7 = *(result + 88) / ((0x88442211uLL >> (4 * (*(result + 8) & 7u))) & 0xF);
    v8 = (v4 >> 3) & 0x1FF;
    v9 = v8 + 1;
    v10 = *a2 & 1 ^ *(result + 212);
    v11 = *a2 & 1 ^ *(result + 208);
    v12 = v2 + 1;
    v13 = 2 * (v8 + 1);
    v14 = (*(result + 120) + v5 * v12 + v13);
    v15 = (*(result + 24) + **(result + 80) * v12 + 2);
    v16 = (2 * (v8 + 1));
    v17 = -v7;
    v18 = ~v7;
    v19 = (&_mh_execute_header - (v7 << 32)) >> 32;
    v20 = ((v7 << 32) - 0x100000000) >> 32;
    v21 = (&_mh_execute_header + (v7 << 32)) >> 32;
    v22 = v8 + 1 - v6;
    v23 = v16 - v6;
    v24 = v22;
    v25 = 2 * v22;
    v26 = v8 < 3;
    v31 = v25 < 0x20 || v8 < 0xF || (2 * v23) < 0x20 || 2 * (v24 + ((v4 >> 3) & 0x1FF)) + 2 < 0x20 || v25 - 2 * v23 < 0x20;
    v32 = v26 || v31;
    v33 = (v4 >> 3) & 0x1FF;
    v34 = 4 * v33 + 4;
    v81 = 14 - 2 * v33;
    v35 = (2 * v33) ^ 0xFFFFFFFFFFFFFFFELL;
    result = *(result + 200);
    v80 = v13 & 0x7E0;
    v82 = v33 + 1;
    do
    {
      v36 = 2 * v11;
      if (v10)
      {
        v14[v36] = (v15[v7] + v15[v17]) >> 1;
        v14[1] = *v15;
        v37 = v15[1];
        ++v15;
        v38 = 2;
        v14[2 - v36] = (v37 + *(v15 - 2)) >> 1;
        v14 += v9;
        if (!v11)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v38 = 1;
        if (!v11)
        {
LABEL_50:
          for (i = v15; v38 < result; v14 = (v14 + v34))
          {
            *v14 = (i[v18] + i[v19] + i[v20] + i[v21] + 2) >> 2;
            v70 = *(i - 1);
            v71 = i[1];
            v72 = v70 - v71;
            if (v70 - v71 < 0)
            {
              v72 = v71 - v70;
            }

            v73 = i[v7];
            v74 = i[v17];
            v75 = v73 - v74;
            if (v73 - v74 < 0)
            {
              v75 = v74 - v73;
            }

            v76 = v74 + v73;
            v77 = v71 + v70;
            if (v72 > v75)
            {
              v77 = v76;
            }

            v14[1] = (v77 + 1) >> 1;
            v14[2] = *i;
            v14[3] = (i[v19] + i[v21] + 1) >> 1;
            v14[4] = i[1];
            v78 = *i;
            v79 = i[2];
            i += 2;
            v14[5] = (v78 + v79 + 1) >> 1;
            v38 += 2;
          }

          goto LABEL_29;
        }
      }

      for (i = v15; v38 < result; v15 += 2)
      {
        *v14 = *v15;
        v40 = *(v15 - 1);
        v41 = v15[1];
        v42 = v40 - v41;
        if (v40 - v41 < 0)
        {
          v42 = v41 - v40;
        }

        v43 = v15[v7];
        v44 = v15[v17];
        v45 = v43 - v44;
        if (v43 - v44 < 0)
        {
          v45 = v44 - v43;
        }

        v46 = v44 + v43;
        v47 = v41 + v40;
        if (v42 > v45)
        {
          v47 = v46;
        }

        v14[1] = (v47 + 1) >> 1;
        v14[2] = (v15[v19] + v15[v18] + v15[v20] + v15[v21]) >> 2;
        i = v15 + 2;
        v14[3] = (*v15 + v15[2] + 1) >> 1;
        v14[4] = v15[1];
        v14[5] = (v15[v19] + v15[v21] + 1) >> 1;
        v38 += 2;
        v14 = (v14 + v34);
      }

LABEL_29:
      if (v38 <= result)
      {
        v14[v36] = (i[v18] + i[v19] + i[v20] + i[v21] + 2) >> 2;
        v48 = *(i - 1);
        v49 = i[1];
        v50 = v48 - v49;
        v51 = i[v7];
        if (v48 - v49 < 0)
        {
          v50 = v49 - v48;
        }

        v52 = i[v17];
        v53 = v51 - v52;
        if (v51 - v52 < 0)
        {
          v53 = v52 - v51;
        }

        v54 = v52 + v51;
        v55 = v49 + v48;
        if (v50 > v53)
        {
          v55 = v54;
        }

        v14[1] = (v55 + 1) >> 1;
        v14[2 - v36] = *i;
        v14 += v9;
        ++i;
      }

      v56 = 0;
      if (v32)
      {
        goto LABEL_38;
      }

      v59 = (v14 + v81);
      v60 = v14 + 8;
      v61 = v9 & 0x3F0;
      do
      {
        v62 = *v59;
        *(v60 - 1) = *(v59 - 1);
        *v60 = v62;
        v63 = &v14[v56 + v23];
        v64 = *v63;
        v65 = v63[1];
        v66 = &v14[v56 + v24];
        *v66 = v64;
        v66[1] = v65;
        v56 += 16;
        v59 += 2;
        v60 += 2;
        v61 -= 16;
      }

      while (v61);
      if ((v9 & 0x3F0) != v9)
      {
        v56 = v9 & 0x3F0;
        if ((v9 & 0xC) == 0)
        {
          goto LABEL_38;
        }

        v67 = (v9 & 0x3FC) - (v9 & 0x3F0);
        v68 = (v14 + v80);
        v69 = v9 & 0x3F0;
        do
        {
          *v68 = *(v68 + v35);
          ++v68;
          *&v14[v69 + v24] = *&v14[v69 + v23];
          v69 += 4;
          v67 -= 4;
        }

        while (v67);
        v56 = v9 & 0x3FC;
        if (v56 != v9)
        {
LABEL_38:
          v57 = &v14[v56];
          v58 = v82 - v56;
          do
          {
            *v57 = *(v57 + v35);
            ++v57;
            v14[v56 + v24] = v14[v56 + v23];
            ++v56;
            --v58;
          }

          while (v58);
        }
      }

      v10 ^= 1u;
      v11 ^= 1u;
      v15 = i + 2;
      v14 += v16;
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002FA90C(uint64_t a1)
{
  *a1 = &off_1004789F0;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  nullsub_1();
}

void sub_1002FAA44(uint64_t a1, uint64_t a2, int a3, int a4, unsigned __int8 a5, uint64_t a6)
{
  if ((a6 - 5) >= 2)
  {
    v60 = 0uLL;
    qmemcpy(sub_1002A80E0(&v60, 24), "ktype == 5 || ktype == 6", 24);
    sub_1002A8980(-215, &v60, "getScharrKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 61);
  }

  sub_100275A84(a1, 3, 1, a6, -1, 1, 0);
  sub_100275A84(a2, 3, 1, a6, -1, 1, 0);
  if (sub_100271148(a1) == 0x10000)
  {
    v12 = *(a1 + 8);
    v13 = *v12;
    v14 = *(v12 + 16);
    v60 = *v12;
    v61 = v14;
    v62 = *(v12 + 32);
    v15 = *(v12 + 56);
    v63 = *(v12 + 48);
    v64 = v15;
    v65 = &v60 + 8;
    v66 = v67;
    v67[0] = 0;
    v67[1] = 0;
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*(v12 + 4) <= 2)
      {
LABEL_6:
        v16 = *(v12 + 72);
        v17 = v66;
        *v66 = *v16;
        v17[1] = v16[1];
        goto LABEL_10;
      }
    }

    else if (SDWORD1(v13) <= 2)
    {
      goto LABEL_6;
    }

    DWORD1(v60) = 0;
    sub_100269B58(&v60, v12);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v60);
  }

LABEL_10:
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v52);
    goto LABEL_17;
  }

  v18 = *(a2 + 8);
  v19 = *v18;
  v20 = *(v18 + 16);
  v52 = *v18;
  v21 = *(v18 + 32);
  v53 = v20;
  v54 = v21;
  v22 = *(v18 + 56);
  v55 = *(v18 + 48);
  v56 = v22;
  v57 = &v52 + 8;
  v58 = v59;
  v59[0] = 0;
  v59[1] = 0;
  if (!v22)
  {
    if (SDWORD1(v19) <= 2)
    {
      goto LABEL_13;
    }

LABEL_16:
    DWORD1(v52) = 0;
    sub_100269B58(&v52, v18);
    goto LABEL_17;
  }

  atomic_fetch_add((v22 + 20), 1u);
  if (*(v18 + 4) > 2)
  {
    goto LABEL_16;
  }

LABEL_13:
  v23 = *(v18 + 72);
  v24 = v58;
  *v58 = *v23;
  v24[1] = v23[1];
LABEL_17:
  if ((a4 | a3) < 0 || a4 + a3 != 1)
  {
    v42 = 0;
    v43 = 0;
    qmemcpy(sub_1002A80E0(&v42, 32), "dx >= 0 && dy >= 0 && dx+dy == 1", 32);
    sub_1002A8980(-215, &v42, "getScharrKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 67);
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_25;
    }

    v25 = 0xFFFFFFFFLL;
    v26 = 1;
  }

  else
  {
    v25 = 0xA00000003;
    v26 = 3;
  }

  v68 = v25;
  v69 = v26;
LABEL_25:
  v43 = *(&v60 + 1);
  *&v44 = &v68;
  *(&v44 + 1) = &v68;
  v46 = 0;
  v47 = 0;
  v48 = &v43;
  v49 = &v50;
  v42 = 0x242FF4004;
  v50 = 4 * SHIDWORD(v60);
  v51 = 4;
  *&v45 = &v68 + v50 * SDWORD2(v60);
  *(&v45 + 1) = v45;
  v39 = 33619968;
  v40 = &v60;
  v41 = 0;
  v27 = 0.03125;
  if (((a3 != 1) & a5) == 0)
  {
    v27 = 1.0;
  }

  sub_10020EF14(&v42, &v39, a6, v27, 0.0);
  if (v47 && atomic_fetch_add((v47 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v42);
  }

  v47 = 0;
  v44 = 0u;
  v45 = 0u;
  if (SHIDWORD(v42) >= 1)
  {
    v28 = 0;
    v29 = v48;
    do
    {
      *(v29 + v28++) = 0;
    }

    while (v28 < SHIDWORD(v42));
  }

  if (v49 != &v50)
  {
    j__free(v49);
  }

  if (a4 == 1)
  {
    v30 = 0xFFFFFFFFLL;
    v31 = 1;
  }

  else
  {
    if (a4)
    {
      goto LABEL_40;
    }

    v30 = 0xA00000003;
    v31 = 3;
  }

  v68 = v30;
  v69 = v31;
LABEL_40:
  v43 = *(&v52 + 1);
  *&v44 = &v68;
  *(&v44 + 1) = &v68;
  v46 = 0;
  v47 = 0;
  v48 = &v43;
  v49 = &v50;
  v42 = 0x242FF4004;
  v50 = 4 * SHIDWORD(v52);
  v51 = 4;
  *&v45 = &v68 + v50 * SDWORD2(v52);
  *(&v45 + 1) = v45;
  v39 = 33619968;
  v40 = &v52;
  v41 = 0;
  v32 = 0.03125;
  if (((a4 != 1) & a5) == 0)
  {
    v32 = 1.0;
  }

  sub_10020EF14(&v42, &v39, a6, v32, 0.0);
  if (v47 && atomic_fetch_add((v47 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v42);
  }

  v47 = 0;
  v44 = 0u;
  v45 = 0u;
  if (SHIDWORD(v42) >= 1)
  {
    v33 = 0;
    v34 = v48;
    do
    {
      *(v34 + v33++) = 0;
    }

    while (v33 < SHIDWORD(v42));
  }

  if (v49 != &v50)
  {
    j__free(v49);
  }

  if (v56 && atomic_fetch_add((v56 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v52);
  }

  v56 = 0;
  v53 = 0u;
  v54 = 0u;
  if (SDWORD1(v52) >= 1)
  {
    v35 = 0;
    v36 = v57;
    do
    {
      *&v36[4 * v35++] = 0;
    }

    while (v35 < SDWORD1(v52));
  }

  if (v58 != v59)
  {
    j__free(v58);
  }

  if (v64 && atomic_fetch_add((v64 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v60);
  }

  v64 = 0;
  v61 = 0u;
  v62 = 0u;
  if (SDWORD1(v60) >= 1)
  {
    v37 = 0;
    v38 = v65;
    do
    {
      *&v38[4 * v37++] = 0;
    }

    while (v37 < SDWORD1(v60));
  }

  if (v66 != v67)
  {
    j__free(v66);
  }
}

void sub_1002FB014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FB0BC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, unsigned int a7)
{
  if (a3 > 0 && a5 == 1)
  {
    v10 = 3;
  }

  else
  {
    v10 = a5;
  }

  if (a4 > 0 && a5 == 1)
  {
    v11 = 3;
  }

  else
  {
    v11 = a5;
  }

  v88 = v11;
  v89 = v10;
  if (a7 - 5 >= 2)
  {
    v110 = 0uLL;
    qmemcpy(sub_1002A80E0(&v110, 24), "ktype == 5 || ktype == 6", 24);
    sub_1002A8980(-215, &v110, "getSobelKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 96);
  }

  sub_100275A84(a1, v10, 1, a7, -1, 1, 0);
  sub_100275A84(a2, v88, 1, a7, -1, 1, 0);
  if (sub_100271148(a1) == 0x10000)
  {
    v12 = *(a1 + 8);
    v13 = *v12;
    v14 = *(v12 + 16);
    v110 = *v12;
    v111 = v14;
    v112 = *(v12 + 32);
    v15 = *(v12 + 56);
    v113 = *(v12 + 48);
    v114 = v15;
    v115 = &v110 + 8;
    v116 = v117;
    v117[0] = 0;
    v117[1] = 0;
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*(v12 + 4) <= 2)
      {
LABEL_12:
        v16 = *(v12 + 72);
        v17 = v116;
        *v116 = *v16;
        v17[1] = v16[1];
        goto LABEL_16;
      }
    }

    else if (SDWORD1(v13) <= 2)
    {
      goto LABEL_12;
    }

    DWORD1(v110) = 0;
    sub_100269B58(&v110, v12);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v110);
  }

LABEL_16:
  if (sub_100271148(a2) == 0x10000)
  {
    v18 = *(a2 + 8);
    v19 = *v18;
    v20 = *(v18 + 16);
    v102 = *v18;
    v21 = *(v18 + 32);
    v103 = v20;
    v104 = v21;
    v22 = *(v18 + 56);
    v105 = *(v18 + 48);
    v106 = v22;
    v107 = &v102 + 8;
    v108 = v109;
    v109[0] = 0;
    v109[1] = 0;
    if (v22)
    {
      atomic_fetch_add((v22 + 20), 1u);
      if (*(v18 + 4) <= 2)
      {
LABEL_19:
        v23 = *(v18 + 72);
        v24 = v108;
        *v108 = *v23;
        v24[1] = v23[1];
        goto LABEL_23;
      }
    }

    else if (SDWORD1(v19) <= 2)
    {
      goto LABEL_19;
    }

    DWORD1(v102) = 0;
    sub_100269B58(&v102, v18);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v102);
  }

LABEL_23:
  if (a5 > 31 || (a5 & 1) == 0)
  {
    v93 = 0;
    v94 = 0;
    qmemcpy(sub_1002A80E0(&v93, 50), "The kernel size must be odd and not larger than 31", 50);
    sub_1002A8980(-211, &v93, "getSobelKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 104);
  }

  v25 = v88;
  if (v89 > v88)
  {
    v25 = v89;
  }

  if (v25 != -1)
  {
    if (v25 > -2)
    {
      operator new();
    }

    sub_10000918C();
  }

  if ((a4 | a3) < 0 || (a4 + a3 < 0) ^ __OFADD__(a4, a3) | (a4 + a3 == 0))
  {
    v93 = 0;
    v94 = 0;
    qmemcpy(sub_1002A80E0(&v93, 31), "dx >= 0 && dy >= 0 && dx+dy > 0", 31);
    sub_1002A8980(-215, &v93, "getSobelKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 107);
  }

  v26 = 1;
  do
  {
    v27 = v26;
    if (v26)
    {
      v28 = &v110;
    }

    else
    {
      v28 = &v102;
    }

    if (v26)
    {
      v29 = a3;
    }

    else
    {
      v29 = a4;
    }

    if (v26)
    {
      v30 = v89;
    }

    else
    {
      v30 = v88;
    }

    if (v30 <= v29)
    {
      v93 = 0;
      v94 = 0;
      qmemcpy(sub_1002A80E0(&v93, 13), "ksize > order", 13);
      sub_1002A8980(-215, &v93, "getSobelKernels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/deriv.cpp", 115);
    }

    v31 = 0;
    if (v30 == 1)
    {
      goto LABEL_67;
    }

    if (v30 == 3)
    {
      v32 = 0x200000001;
      if (v29)
      {
        if (v29 == 1)
        {
          v32 = 0xFFFFFFFFLL;
        }

        else
        {
          v32 = 0xFFFFFFFE00000001;
        }
      }

      MEMORY[0] = v32;
      v31 = 8;
LABEL_67:
      *v31 = 1;
      goto LABEL_68;
    }

    MEMORY[0] = 1;
    if (v30 >= 1)
    {
      bzero(4, 4 * v30);
    }

    v33 = v30 + ~v29;
    if (v33 >= 1 && v30 >= 1)
    {
      if (v30 >= 8)
      {
        for (i = 0; i != v33; ++i)
        {
          v50 = vld1q_dup_f32(0);
          v51 = v30 & 0x7FFFFFF8;
          v52 = 16;
          v53 = v50;
          do
          {
            v54 = *(v52 - 12);
            v55 = vextq_s8(v50, v54, 0xCuLL);
            v50 = *(v52 + 4);
            v56 = vextq_s8(v54, v50, 0xCuLL);
            v57 = vaddq_s32(v55, v54);
            v58 = vextq_s8(v53, v57, 0xCuLL);
            v53 = vaddq_s32(v56, v50);
            *(v52 - 16) = v58;
            *v52 = vextq_s8(v57, v53, 0xCuLL);
            v52 += 32;
            v51 -= 8;
          }

          while (v51);
          if ((v30 & 0x7FFFFFF8) != v30)
          {
            v59 = v53.i32[3];
            v60 = v50.i32[3];
            v61 = ~(v30 & 0x7FFFFFF8) + (v30 + 1);
            v62 = (32 * ((v30 >> 3) & 0xFFFFFFF) + 4);
            do
            {
              v63 = *v62;
              *(v62 - 1) = v59;
              v59 = v60 + v63;
              ++v62;
              v60 = v63;
              --v61;
            }

            while (v61);
          }
        }
      }

      else
      {
        v34 = MEMORY[4];
        do
        {
          v35 = MEMORY[0] + v34;
          v36 = MEMORY[8];
          MEMORY[4] = MEMORY[0] + v34;
          if (v30 != 2)
          {
            v37 = v34 + MEMORY[8];
            v38 = MEMORY[0xC];
            MEMORY[8] = v37;
            v39 = v36 + MEMORY[0xC];
            v40 = MEMORY[0x10];
            MEMORY[0xC] = v39;
            if (v30 != 4)
            {
              v41 = v38 + MEMORY[0x10];
              v42 = MEMORY[0x14];
              MEMORY[0x10] = v41;
              if (v30 != 5)
              {
                MEMORY[0x14] += v40;
                if (v30 != 6)
                {
                  MEMORY[0x18] += v42;
                }
              }
            }
          }

          v34 = v35;
          --v33;
        }

        while (v33);
      }
    }

    if (v29 >= 1 && v30 >= 1)
    {
      for (j = 0; j != v29; ++j)
      {
        v65 = MEMORY[0];
        v66 = -MEMORY[0];
        if (v30 >= 8)
        {
          v68 = vdupq_n_s32(MEMORY[0]);
          v69 = vdupq_n_s32(v66);
          v70 = v30 & 0x7FFFFFF8;
          v71 = 16;
          do
          {
            v72 = *(v71 - 12);
            v73 = vextq_s8(v68, v72, 0xCuLL);
            v68 = *(v71 + 4);
            v74 = vextq_s8(v72, v68, 0xCuLL);
            v75 = vsubq_s32(v73, v72);
            v76 = vextq_s8(v69, v75, 0xCuLL);
            v69 = vsubq_s32(v74, v68);
            *(v71 - 16) = v76;
            *v71 = vextq_s8(v75, v69, 0xCuLL);
            v71 += 32;
            v70 -= 8;
          }

          while (v70);
          if ((v30 & 0x7FFFFFF8) == v30)
          {
            continue;
          }

          v65 = v68.i32[3];
          v66 = v69.u32[3];
          v67 = v30 & 0x7FFFFFF8 | 1;
        }

        else
        {
          v67 = 1;
        }

        v77 = (4 * v67);
        v78 = (v30 + 1) - v67;
        do
        {
          v79 = *v77;
          *(v77 - 1) = v66;
          v66 = v65 - v79;
          ++v77;
          v65 = v79;
          --v78;
        }

        while (v78);
      }
    }

LABEL_68:
    v43 = &v102;
    if (v27)
    {
      v43 = &v110;
    }

    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    v94 = __PAIR64__(v44, v45);
    v95 = 0uLL;
    v97 = 0;
    v98 = 0;
    v99 = &v94;
    v100 = v101;
    v93 = 0x242FF4004;
    v101[0] = 4 * v44;
    v101[1] = 4;
    *&v96 = 4 * v44 * v45;
    *(&v96 + 1) = v96;
    v46 = 1.0;
    if (a6)
    {
      v46 = 1.0 / (1 << (v30 + ~v29));
    }

    v90 = 33619968;
    v91 = v28;
    v92 = 0;
    sub_10020EF14(&v93, &v90, a7, v46, 0.0);
    if (v98 && atomic_fetch_add((v98 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v93);
    }

    v98 = 0;
    v95 = 0u;
    v96 = 0u;
    if (SHIDWORD(v93) >= 1)
    {
      v47 = 0;
      v48 = v99;
      do
      {
        *(v48 + v47++) = 0;
      }

      while (v47 < SHIDWORD(v93));
    }

    if (v100 != v101)
    {
      j__free(v100);
    }

    v26 = 0;
  }

  while ((v27 & 1) != 0);
  if (v106 && atomic_fetch_add((v106 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v102);
  }

  v106 = 0;
  v103 = 0u;
  v104 = 0u;
  if (SDWORD1(v102) >= 1)
  {
    v80 = 0;
    v81 = v107;
    do
    {
      *&v81[4 * v80++] = 0;
    }

    while (v80 < SDWORD1(v102));
  }

  if (v108 != v109)
  {
    j__free(v108);
  }

  if (v114 && atomic_fetch_add((v114 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v110);
  }

  v114 = 0;
  v111 = 0u;
  v112 = 0u;
  if (SDWORD1(v110) >= 1)
  {
    v82 = 0;
    v83 = v115;
    do
    {
      *&v83[4 * v82++] = 0;
    }

    while (v82 < SDWORD1(v110));
  }

  if (v116 != v117)
  {
    j__free(v116);
  }
}

void sub_1002FB98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_1002A8124(&a17);
  if (v28)
  {
    operator delete(v28);
  }

  sub_100006D14(va);
  sub_100006D14(v29 - 224);
  _Unwind_Resume(a1);
}

void sub_1002FBA48(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7, double a8, double a9)
{
  v9 = a7;
  sub_1002ACE7C(&v76, &off_100478A20);
  v18 = sub_100271A88(a1, -1);
  v19 = v18;
  v20 = v18 & 7;
  if ((a3 & 0x80000000) != 0)
  {
    a3 = v18 & 7;
  }

  sub_100271154(a1, -1, v71);
  sub_100275370(a2, v71, v19 & 0xFF8 | a3 & 7, -1, 0, 0);
  v71[0] = 1124007936;
  memset(&v71[1], 0, 32);
  if (a3 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = a3;
  }

  *v72 = 0uLL;
  if (v21 <= 5)
  {
    v22 = 5;
  }

  else
  {
    v22 = v21;
  }

  *&v72[12] = 0uLL;
  v73 = &v71[2];
  v74 = v75;
  v75[0] = 0;
  v75[1] = 0;
  v67[0] = 1124007936;
  memset(&v67[1], 0, 60);
  v68 = &v67[2];
  v69 = v70;
  v70[0] = 0;
  v70[1] = 0;
  LODWORD(v59) = 33619968;
  *(&v59 + 1) = v71;
  *&v60 = 0;
  LODWORD(v51) = 33619968;
  *(&v51 + 1) = v67;
  *&v52 = 0;
  if (a6 <= 0)
  {
    sub_1002FAA44(&v59, &v51, a4, a5, 0, v22);
  }

  else
  {
    sub_1002FB0BC(&v59, &v51, a4, a5, a6, 0, v22);
  }

  if (a8 != 1.0)
  {
    LODWORD(v59) = 33619968;
    if (a4)
    {
      *(&v59 + 1) = v67;
      *&v60 = 0;
      sub_10020EF14(v67, &v59, -1, a8, 0.0);
    }

    else
    {
      *(&v59 + 1) = v71;
      *&v60 = 0;
      sub_10020EF14(v71, &v59, -1, a8, 0.0);
    }
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v23 = *(a1 + 8);
    v24 = *v23;
    v25 = *(v23 + 16);
    v59 = *v23;
    v60 = v25;
    v61 = *(v23 + 32);
    v26 = *(v23 + 56);
    v62 = *(v23 + 48);
    v63 = v26;
    v64 = &v59 + 8;
    v65 = v66;
    v66[0] = 0;
    v66[1] = 0;
    if (v26)
    {
      atomic_fetch_add((v26 + 20), 1u);
      if (*(v23 + 4) <= 2)
      {
LABEL_19:
        v27 = *(v23 + 72);
        v28 = v65;
        *v65 = *v27;
        v28[1] = v27[1];
        goto LABEL_23;
      }
    }

    else if (SDWORD1(v24) <= 2)
    {
      goto LABEL_19;
    }

    DWORD1(v59) = 0;
    sub_100269B58(&v59, v23);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v59);
  }

LABEL_23:
  if (sub_100271148(a2) == 0x10000)
  {
    v29 = *(a2 + 8);
    v30 = *v29;
    v31 = *(v29 + 16);
    v51 = *v29;
    v32 = *(v29 + 32);
    v52 = v31;
    v53 = v32;
    v33 = *(v29 + 56);
    v54 = *(v29 + 48);
    v55 = v33;
    v56 = &v51 + 8;
    v57 = v58;
    v58[0] = 0;
    v58[1] = 0;
    if (v33)
    {
      atomic_fetch_add((v33 + 20), 1u);
      if (*(v29 + 4) <= 2)
      {
LABEL_26:
        v34 = *(v29 + 72);
        v35 = v57;
        *v57 = *v34;
        v35[1] = v34[1];
        goto LABEL_30;
      }
    }

    else if (SDWORD1(v30) <= 2)
    {
      goto LABEL_26;
    }

    DWORD1(v51) = 0;
    sub_100269B58(&v51, v29);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v51);
  }

LABEL_30:
  v50 = 0;
  v49 = vrev64_s32(*(&v59 + 8));
  if ((v9 & 0x10) == 0)
  {
    sub_10026BBAC(&v59, &v49, &v50);
  }

  v48 = 0;
  v46 = 16842752;
  v47 = &v59;
  v43 = 33619968;
  v44 = &v51;
  v45 = 0;
  v42 = 0;
  v40 = 16842752;
  v41 = v71;
  v39 = 0;
  v37 = 16842752;
  v38 = v67;
  v36 = -1;
  sub_100309920(&v46, &v43, a3, &v40, &v37, &v36, v9, a9);
}

void sub_1002FBFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  sub_100006D14(va);
  sub_100006D14(v48 - 224);
  sub_1001D8BF4(v48 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_1002FC078(uint64_t result)
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

BOOL sub_1002FC0E8(uint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  sub_1002ACE7C(&v26, &off_100478A40);
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1 - 1;
  if (*a1 < 1 || v7 < 1)
  {
    v10 = 0;
    if (!v27)
    {
      return v10;
    }

    goto LABEL_35;
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = (*a2 >> 63) | (2 * (*a2 >= v6)) | (8 * (v12 >= v7)) | (v12 >> 61) & 4;
  v14 = a3[1];
  v15 = (*a3 >> 63) | (2 * (*a3 >= v6)) | (8 * (v14 >= v7)) | (v14 >> 61) & 4;
  if ((v15 & v13) == 0 && (v15 | v13) != 0)
  {
    if (v13 >= 4)
    {
      if (v12 >= v7)
      {
        v17 = v7 - 1;
      }

      else
      {
        v17 = 0;
      }

      v11 += ((*a3 - v11) * (v17 - v12) / (v14 - v12));
      *a2 = v11;
      a2[1] = v17;
      v13 = (v11 >> 63) | (2 * (v11 >= v6));
      v12 = v17;
      if (v15 < 4)
      {
LABEL_14:
        if ((v15 & v13) != 0)
        {
          goto LABEL_34;
        }

LABEL_24:
        if (v15 | v13)
        {
          if (v13)
          {
            if (v13 == 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = v8;
            }

            v21 = a2[1];
            v22 = (v20 - *a2) * (a3[1] - v21) / (*a3 - *a2);
            *a2 = v20;
            a2[1] = v21 + v22;
          }

          v13 = 0;
          if (v15)
          {
            if (v15 == 1)
            {
              v8 = 0;
            }

            v23 = a3[1];
            v24 = (v8 - *a3) * (v23 - a2[1]) / (*a3 - *a2);
            *a3 = v8;
            a3[1] = v23 + v24;
            v15 = 0;
          }
        }

        goto LABEL_34;
      }
    }

    else if (v15 < 4)
    {
      goto LABEL_14;
    }

    if (v14 >= v7)
    {
      v18 = v7 - 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = *a3 + ((v18 - a3[1]) * (*a3 - v11) / (a3[1] - v12));
    *a3 = v19;
    a3[1] = v18;
    v15 = (v19 >> 63) | (2 * (v19 >= v6));
    if ((v15 & v13) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

LABEL_34:
  v10 = (v13 | v15) == 0;
  if (v27)
  {
LABEL_35:
    sub_1002ACC1C(&v26);
  }

  return v10;
}

uint64_t sub_1002FC330(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, int a5, int a6)
{
  *(a1 + 28) = -1;
  if (a5 != 4 && a5 != 8)
  {
    v58 = 0uLL;
    qmemcpy(sub_1002A80E0(&v58, 38), "connectivity == 8 || connectivity == 4", 38);
    sub_1002A8980(-215, v58.i64, "LineIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/drawing.cpp", 170);
  }

  v12 = *(a2 + 12);
  v13 = *a4;
  v14 = *a3 >= v12 || v13 >= v12;
  if (v14 || (v15 = *(a2 + 8), a3[1] >= v15) || (v16 = a4[1], v16 >= v15))
  {
    v17 = **(a2 + 64);
    v18 = *(*(a2 + 64) + 4);
    v19 = a3[1];
    v58.i64[0] = *a3;
    v58.i64[1] = v19;
    v20 = a4[1];
    v56 = v13;
    v57 = v20;
    v55[0] = v18;
    v55[1] = v17;
    v21 = sub_1002FC0E8(v55, &v58, &v56);
    *a3 = vmovn_s64(v58);
    v13 = v56;
    v16 = v57;
    *a4 = v56;
    a4[1] = v16;
    if (!v21)
    {
      *a1 = *(a2 + 16);
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return a1;
    }
  }

  v22 = *(a2 + 4);
  if (v22 < 1)
  {
    v23 = 0;
    v24 = *(a2 + 80);
    v25 = *a3;
    v26 = a3[1];
    v27 = v13 - *a3;
    v28 = v16 - v26;
    v29 = v27 >> 31;
    if (a6)
    {
      goto LABEL_13;
    }

LABEL_16:
    v30 = (v23 ^ v29) - v29;
    goto LABEL_17;
  }

  v23 = *(*(a2 + 72) + 8 * v22 - 8);
  v24 = *(a2 + 80);
  v25 = *a3;
  v26 = a3[1];
  v27 = v13 - *a3;
  v28 = v16 - v26;
  v29 = v27 >> 31;
  if (!a6)
  {
    goto LABEL_16;
  }

LABEL_13:
  v28 = (v28 ^ v29) - v29;
  v25 = v13 & v29 | v25 & ~v29;
  v26 = v16 & v29 | v26 & ~v29;
  *a3 = v25;
  a3[1] = v26;
  v30 = v23;
LABEL_17:
  v31 = (v29 ^ v27) - v29;
  v32 = *(a2 + 16);
  v33 = v32 + v24 * v26;
  v34 = v28 >> 31;
  if (v28 < 0)
  {
    v28 = -v28;
  }

  v35 = (v24 ^ v34) - v34;
  v36 = v28 <= v31;
  if (v28 <= v31)
  {
    v37 = 0;
  }

  else
  {
    v37 = v28;
  }

  v38 = v37 ^ v31;
  if (v36)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  v40 = v39 ^ v28;
  if (v36)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  v42 = v41 ^ v38;
  if (v36)
  {
    v43 = 0;
  }

  else
  {
    v43 = v35;
  }

  v44 = v43 ^ v30;
  if (v36)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  v46 = v45 ^ v35;
  if (v36)
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

  v48 = v47 ^ v44;
  v49 = -2 * v40;
  v50 = v42 + v40;
  v51 = 2 * v40;
  if (a5 == 8)
  {
    v50 = v42;
  }

  v52 = v42 - v51;
  if (a5 == 8)
  {
    v53 = -v51;
  }

  else
  {
    v52 = 0;
    v53 = v49;
  }

  if (a5 != 8)
  {
    v46 -= v48;
  }

  *(a1 + 32) = v53;
  *(a1 + 36) = 2 * v50;
  *(a1 + 40) = v48;
  *(a1 + 44) = v46;
  *(a1 + 24) = v52;
  *(a1 + 28) = v50 + 1;
  *a1 = v33 + v23 * v25;
  *(a1 + 8) = v32;
  *(a1 + 16) = v24;
  *(a1 + 20) = v23;
  return a1;
}

void sub_1002FC5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002FC5C8(int64x2_t *a1, double *a2, unsigned int a3, signed int a4, signed int a5, uint64_t a6, unint64_t *a7)
{
  sub_1002ACE7C(v70, &off_100478A60);
  v14 = a3 + 360 * ((a3 >> 31) + ((a3 & ~(a3 >> 31)) - ((a3 >> 31) + a3)) / 0x168);
  if (v14 >= 360)
  {
    v15 = 360;
  }

  else
  {
    v15 = a3 + 360 * ((a3 >> 31) + ((a3 & ~(a3 >> 31)) - ((a3 >> 31) + a3)) / 0x168);
  }

  v16 = v14 - 360 * ((v14 - v15 + 359) / 0x168u);
  if (a4 <= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  if (a4 >= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = a4;
  }

  if ((v18 & 0x80000000) != 0)
  {
    if (v18 <= 0xFFFFFE98)
    {
      v19 = -360;
    }

    else
    {
      v19 = v18;
    }

    if (v18 >= 0xFFFFFE98)
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 + 1;
    }

    v21 = (v19 - v20) / 0x168;
    if (v18 < 0xFFFFFE98)
    {
      ++v21;
    }

    v22 = 360 * v21;
    v18 += v22 + 360;
    v17 += v22 + 360;
  }

  v23 = v17 - 720;
  if (v17 < 0x2D0)
  {
    v23 = 0;
  }

  v24 = 360 * ((v23 + 359) / 0x168u);
  v25 = v17 - v24 - 360;
  v26 = v18 - v24 - 360;
  if (v17 < 361)
  {
    v26 = v18;
  }

  else
  {
    v17 = v25;
  }

  if (v17 - v26 <= 360)
  {
    v27 = v17;
  }

  else
  {
    v27 = 360;
  }

  if (v17 - v26 <= 360)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = flt_1003E7908[v16];
  v30 = flt_1003E7908[450 - v16];
  v31 = *a7;
  v32 = a7[1];
  if (v32 != *a7)
  {
    a7[1] = v31;
    v32 = v31;
  }

  if (v28 < v27 + a6)
  {
    v33 = v30;
    v34 = v29;
    do
    {
      while (1)
      {
        v36 = v28 >= v27 ? v27 : v28;
        v37 = v36 + (v36 < 0 ? 0x168 : 0);
        v38 = a2[1] * flt_1003E7908[v37];
        v39 = *a2 * flt_1003E7908[450 - v37];
        v40 = *a1->i64 + v39 * v33 - v38 * v34;
        v41 = *&a1->i64[1] + v39 * v34 + v38 * v33;
        v42 = a7[2];
        if (v32 >= v42)
        {
          break;
        }

        *v32 = v40;
        v32[1] = v41;
        v32 += 2;
        a7[1] = v32;
        v35 = v28 < v27;
        v28 += a6;
        if (!v35)
        {
          goto LABEL_73;
        }
      }

      v43 = a6;
      v44 = *a7;
      v45 = v32 - *a7;
      v46 = v45 >> 4;
      v47 = (v45 >> 4) + 1;
      if (v47 >> 60)
      {
        sub_10000918C();
      }

      v48 = v42 - v44;
      if (v48 >> 3 > v47)
      {
        v47 = v48 >> 3;
      }

      if (v48 >= 0x7FFFFFFFFFFFFFF0)
      {
        v49 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        if (!(v49 >> 60))
        {
          operator new();
        }

        sub_10000927C();
      }

      v50 = v45 >> 4;
      v51 = (16 * v46);
      *v51 = v40;
      v51[1] = v41;
      if (v44 != v32)
      {
        v52 = v32 - v44 - 16;
        v53 = v44;
        v54 = 0;
        if (v52 < 0x90)
        {
          goto LABEL_83;
        }

        v56 = v45 + (v52 & 0xFFFFFFFFFFFFFFF0) - 16 * v50;
        v57 = v56 + 8;
        v58 = v56 + 16;
        v59 = v45 - 16 * v50 + 8 >= v44 + (v52 & 0xFFFFFFFFFFFFFFF0) + 16 || (v44 + 1) >= v58;
        v60 = !v59;
        v61 = v44 >= v57 || (v44 + (v52 & 0xFFFFFFFFFFFFFFF0) + 8) == 0;
        v53 = v44;
        v54 = 0;
        if (!v61)
        {
          goto LABEL_83;
        }

        v53 = v44;
        v54 = 0;
        if (v60)
        {
          goto LABEL_83;
        }

        v62 = (v52 >> 4) + 1;
        v54 = (16 * (v62 & 0x1FFFFFFFFFFFFFFCLL));
        v53 = (v54 + v44);
        v63 = (-16 * v50 + 16 * v46 + 32);
        v64 = (v44 + 4);
        v65 = v62 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v67 = *(v64 - 2);
          v66 = *(v64 - 1);
          v69 = *v64;
          v68 = v64[1];
          v64 += 4;
          *(v63 - 2) = v67;
          *(v63 - 1) = v66;
          *v63 = v69;
          v63[1] = v68;
          v63 += 4;
          v65 -= 4;
        }

        while (v65);
        if (v62 != (v62 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_83:
          do
          {
            v55 = *v53;
            v53 += 2;
            *v54++ = v55;
          }

          while (v53 != v32);
        }
      }

      v32 = v51 + 2;
      *a7 = 0;
      a7[1] = (v51 + 2);
      a7[2] = 0;
      if (v44)
      {
        operator delete(v44);
      }

      a6 = v43;
      a7[1] = v32;
      v35 = v28 < v27;
      v28 += v43;
    }

    while (v35);
LABEL_73:
    v31 = *a7;
  }

  if ((v32 - v31) == 16)
  {
    sub_1002FCA28(a7, 2uLL, a1);
  }

  if (v70[2])
  {
    sub_1002ACC1C(v70);
  }
}