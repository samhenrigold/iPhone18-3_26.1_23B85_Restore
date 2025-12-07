double sub_100025B04(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 8);
  }

  *(a1 + 16) = v2;
  *(a1 + 32) = 0;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  result = NAN;
  *(a1 + 48) = -1;
  return result;
}

void *sub_100025B90(void *a1)
{
  *a1 = off_1001640A8;
  sub_100025B04(a1);
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100025BFC(void *a1)
{
  sub_100025B90(a1);

  operator delete();
}

uint64_t sub_100025C68(uint64_t result, uint64_t a2, int a3, int a4)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 52) = a4;
  return result;
}

uint64_t *sub_100025C74(void *a1, uint64_t a2)
{
  v5 = a1[8];
  v4 = a1[9];
  if (v5 >= v4)
  {
    v7 = a1[7];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_100006504();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100006754((a1 + 7), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = (8 * v8 + 8);
    v13 = a1[7];
    v14 = a1[8] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[7];
    a1[7] = v15;
    a1[8] = v6;
    a1[9] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  v17 = a1[7];
  v18 = 126 - 2 * __clz(v6 - v17);
  a1[8] = v6;
  if (v6 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  return sub_100025D78(v17, v6, v19, 1);
}

uint64_t *sub_100025D78(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 80) < *(*v8 + 80))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 80);
      v90 = *(*v8 + 80);
      v91 = *(v87 + 80);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = v8 + 1;
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = v8 + 2;
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = v8 + 2;
          result = v88;
          if (v91 >= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v140 = *(a2 - 1);
      if (*(v140 + 80) < *(v85 + 80))
      {
        *v86 = v140;
        *(a2 - 1) = v85;
        v141 = *v86;
        v142 = *v84;
        v143 = *(v141 + 80);
        if (v143 < *(v142 + 80))
        {
          v8[1] = v141;
          v8[2] = v142;
          v144 = *v8;
          if (v143 < *(*v8 + 80))
          {
            *v8 = v141;
            v8[1] = v144;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_10002672C(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 80);
            if (v101 < *(v100 + 80))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 >= *(v100 + 80))
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_130;
                }
              }

              v103 = v8;
LABEL_130:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v137 = *v7;
          v136 = v7[1];
          v7 = v94;
          v138 = *(v136 + 80);
          if (v138 < *(v137 + 80))
          {
            v139 = v7;
            do
            {
              *v139 = v137;
              v137 = *(v139 - 2);
              --v139;
            }

            while (v138 < *(v137 + 80));
            *v139 = v136;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 < v9 && *(v109 + 80) < *(v108[1] + 80))
            {
              v109 = v108[1];
              ++v108;
              v107 = 2 * v106 + 2;
            }

            result = &v8[v106];
            v110 = *result;
            v111 = *(*result + 80);
            if (*(v109 + 80) >= v111)
            {
              do
              {
                v112 = v108;
                *result = v109;
                if (v104 < v107)
                {
                  break;
                }

                v113 = (2 * v107) | 1;
                v108 = &v8[v113];
                v114 = 2 * v107 + 2;
                v109 = *v108;
                if (v114 < v9 && *(v109 + 80) < *(v108[1] + 80))
                {
                  v109 = v108[1];
                  ++v108;
                  v113 = v114;
                }

                result = v112;
                v107 = v113;
              }

              while (*(v109 + 80) >= v111);
              *v112 = v110;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v115 = 0;
          v116 = *v8;
          v117 = v8;
          do
          {
            v118 = &v117[v115];
            v119 = v118 + 1;
            v120 = v118[1];
            v121 = (2 * v115) | 1;
            v115 = 2 * v115 + 2;
            if (v115 >= v9)
            {
              v115 = v121;
            }

            else
            {
              v124 = v118[2];
              v122 = v118 + 2;
              v123 = v124;
              result = *(v120 + 80);
              if (result >= *(v124 + 80))
              {
                v115 = v121;
              }

              else
              {
                v120 = v123;
                v119 = v122;
              }
            }

            *v117 = v120;
            v117 = v119;
          }

          while (v115 <= ((v9 - 2) >> 1));
          if (v119 == --a2)
          {
            *v119 = v116;
          }

          else
          {
            *v119 = *a2;
            *a2 = v116;
            v125 = (v119 - v8 + 8) >> 3;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v119;
              v132 = *(*v119 + 80);
              if (*(*v129 + 80) < v132)
              {
                do
                {
                  v133 = v129;
                  *v119 = v130;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                  v119 = v133;
                }

                while (*(*v129 + 80) < v132);
                *v133 = v131;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 80);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 80);
      v17 = *(*v8 + 80);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 80) < *(*v8 + 80))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 80) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 80);
      v29 = *(v27 + 80);
      v30 = *(a2 - 2);
      v31 = *(v30 + 80);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 80) < *(v32 + 80))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 80) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 80);
      v40 = *(v38 + 80);
      v41 = *(a2 - 3);
      v42 = *(v41 + 80);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 80) < *(v43 + 80))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 80) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 80);
      v48 = *(*v25 + 80);
      v49 = *v35;
      v50 = *(*v35 + 80);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 80);
    v21 = *(*v11 + 80);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 80) < *(*v11 + 80))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 80) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 80);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 80) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 80) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 80) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 80) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 80) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = sub_1000268A0(v8, v65);
      v8 = v65 + 1;
      result = sub_1000268A0(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = sub_100025D78(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 80);
      if (*(*(v8 - 1) + 80) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 80))
      {
        v68 = (v8 + 1);
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v68 += 8;
        }

        while (v53 >= *(*v8 + 80));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 80));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 80));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 80));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 80));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 80);
  v81 = *(*v8 + 80);
  v82 = *(a2 - 1);
  v83 = *(v82 + 80);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v135 = *v8;
      v134 = v8[1];
      if (*(v134 + 80) < *(*v8 + 80))
      {
        *v8 = v134;
        v8[1] = v135;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v145 = *(a2 - 1);
      if (*(v145 + 80) >= v81)
      {
        return result;
      }

      v8[1] = v145;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *sub_10002672C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 80);
  v8 = *(*result + 80);
  v9 = *a3;
  v10 = *(*a3 + 80);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 80) < *(*result + 80))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 80) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 80) < *(v5 + 80))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 80) < *(*a2 + 80))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 80) < *(*result + 80))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 80) < *(*a4 + 80))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 80) < *(*a3 + 80))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 80) < *(*a2 + 80))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 80) < *(*result + 80))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_1000268A0(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 80);
      v8 = *(*a1 + 80);
      v9 = *(a2 - 1);
      v10 = *(v9 + 80);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 80) < *(*a1 + 80))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 80) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_10002672C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 80);
    v26 = *(*a1 + 80);
    v27 = *(v23 + 80);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 80) < *(v21 + 80))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 80);
          if (v45 < *(v44 + 80))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 80))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 80) < *(*a1 + 80))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 80);
  v16 = *(*a1 + 80);
  v17 = *(v11 + 80);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 80);
    if (v38 < *(v37 + 80))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 80))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

int main(int argc, const char **argv, const char **envp)
{
  if (qword_10016A620 != -1)
  {
    swift_once();
  }

  sub_100026EEC(qword_100173730, v9);
  sub_100026F50(v9, v10);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC(v9);
  [objc_opt_self() check];
  sub_10010F814();
  sub_100026EEC(qword_100173730, v9);
  sub_100026F50(v9, v10);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC(v9);
  v3 = objc_opt_self();
  v4 = [v3 sharedURLCache];
  [v4 setMemoryCapacity:0];

  v5 = [v3 sharedURLCache];
  [v5 setDiskCapacity:0];

  v6 = objc_autoreleasePoolPush();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_10016A698 != -1)
  {
    swift_once();
  }

  v7 = qword_100173898;

  objc_autoreleasePoolPop(v6);
  qword_1001732E0 = v7;
  sub_1001013B8();
  return 0;
}

uint64_t sub_100026EEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100026F50(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100026F94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100026FDC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void (*sub_100027068(uint64_t *a1, uint64_t *a2))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_10002A1EC(v2, *a2);
  sub_10002A1F8(v6, v7);
  return sub_1000270F4;
}

void sub_1000270F4(uint64_t *a1)
{
  v1 = sub_10001BBEC(*a1);

  free(v1);
}

uint64_t sub_100027120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = sub_10002A1C8(v2);
  v8 = sub_10002A1D0(v2);
  v9 = v6;
  result = sub_10002A1D8(&v9, &v8);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v4)
  {
    result = sub_10002A864(a2 + 2, v2);
    *a2 = v5;
    a2[1] = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100027240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100027430(a1, a3, sub_10002BFD0, sub_10002BF74, sub_10002A1D8);
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v8 = __OFADD__(a1, a2);
  v7 = a1 + a2;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_10002A1C8(v3);
    v10 = sub_10002A1D0(v3);
    v11 = v9;
    result = sub_10002A1D8(&v11, &v10);
    if ((v7 & 0x8000000000000000) == 0 && result >= v7)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100027338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100027430(a1, a3, sub_10002BFD4, sub_10002BF78, sub_10002A2EC);
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v8 = __OFADD__(a1, a2);
  v7 = a1 + a2;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_10002A1C8(v3);
    v10 = sub_10002A1D0(v3);
    v11 = v9;
    result = sub_10002A2EC(&v11, &v10);
    if ((v7 & 0x8000000000000000) == 0 && result >= v7)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100027430(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v9 = v5;
  v12 = a3(v9);
  v15 = a4(v9);
  v16 = v12;
  result = a5(&v16, &v15);
  if (a1 < 0 || result < a1)
  {
    __break(1u);
  }

  else
  {
    v14 = a3(v9);
    v15 = a4(v9);
    v16 = v14;
    result = a5(&v16, &v15);
    if ((a2 & 0x8000000000000000) == 0 && result >= a2)
    {
      return a2 - a1;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1000275E8(uint64_t *a1, uint64_t *a2))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_10002A32C(v2, *a2);
  sub_10002A33C(v6, v7);
  return sub_100027674;
}

void sub_100027674(uint64_t *a1)
{
  v1 = sub_10001B428(*a1);

  free(v1);
}

uint64_t sub_1000276A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = sub_10002A1C8(v2);
  v8 = sub_10002A1D0(v2);
  v9 = v6;
  result = sub_10002A2EC(&v9, &v8);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v4)
  {
    result = sub_10002A468(a2 + 2, v2);
    *a2 = v5;
    a2[1] = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100027770@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t *, uint64_t *)@<X4>, void *a4@<X8>)
{
  v8 = a1(v4);
  v10 = a2(v4);
  v11 = v8;
  result = a3(&v11, &v10);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = 0;
    a4[1] = result;
  }

  return result;
}

BOOL sub_10002782C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v8 = a3(v5, a2);
  v10 = a4(v5);
  v11 = v8;
  return a5(&v11, &v10) == 0;
}

void *sub_10002789C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1000278BC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100027958@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t *, uint64_t *)@<X4>, uint64_t *a4@<X8>)
{
  v8 = a1(v4);
  v10 = a2(v4);
  v11 = v8;
  result = a3(&v11, &v10);
  *a4 = result;
  return result;
}

uint64_t *sub_1000279CC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000279E8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t *, uint64_t *)@<X5>, void *a5@<X8>)
{
  v9 = *a1;
  v10 = a2(v5);
  v12 = a3(v5);
  v13 = v10;
  result = a4(&v13, &v12);
  if (v9 < 0 || v9 >= result)
  {
    __break(1u);
  }

  else
  {
    *a5 = v9 + 1;
  }

  return result;
}

uint64_t sub_100027A74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t *, uint64_t *))
{
  v10 = *a1;
  v11 = a4(v6, a2, a3);
  v13 = a5(v6);
  v14 = v11;
  result = a6(&v14, &v13);
  if (v10 < 0 || v10 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v10 + 1;
  }

  return result;
}

uint64_t sub_100027B00(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100027B78(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100027BF8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void **sub_100027C48@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_100026F94(&qword_10016A910, &qword_100130918);
  swift_allocObject();
  v4 = CxxSequenceBox.init(_:)(v1);
  v5 = CxxSequenceBox.sequence.modify();
  v7 = sub_10002A1D0(v6);
  (v5)(v12, 0);
  v8 = CxxSequenceBox.sequence.modify();
  v10 = sub_10002A1C8(v9);
  (v8)(v12, 0);
  result = sub_10002A4B8(v2);
  *a1 = v4;
  a1[1] = v7;
  a1[2] = v10;
  return result;
}

void *sub_100027D70()
{
  v1 = sub_1000297F4(v0);
  sub_10002A4B8(v0);
  return v1;
}

_DWORD *sub_100027DE0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100027E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100027240(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void **sub_100027EE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_100026F94(&qword_10016A918, &qword_100130920);
  swift_allocObject();
  v4 = CxxSequenceBox.init(_:)(v1);
  v5 = CxxSequenceBox.sequence.modify();
  v7 = sub_10002A1D0(v6);
  (v5)(v12, 0);
  v8 = CxxSequenceBox.sequence.modify();
  v10 = sub_10002A1C8(v9);
  (v8)(v12, 0);
  result = sub_10002A8A8(v2);
  *a1 = v4;
  a1[1] = v7;
  a1[2] = v10;
  return result;
}

uint64_t sub_100028004(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v8 = a3(v5, a2);
  v10 = a4(v5);
  v11 = v8;
  return a5(&v11, &v10);
}

void *sub_100028068()
{
  v1 = sub_1000298A4(v0);
  sub_10002A8A8(v0);
  return v1;
}

uint64_t sub_1000280A0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10002A1EC(v2, *a2);
  v5 = sub_10001BBEC(v4);
  sub_10002B9C8(v5, a1);

  return sub_10001BBEC(a1);
}

void (*sub_1000280EC(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x90uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 128) = v2;
  *(v5 + 136) = v7;
  v8 = sub_10002A1EC(v2, v7);
  sub_10002A1F8(v6, v8);
  return sub_10002817C;
}

void sub_10002817C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10002A1F8(v2 + 64, v2);
    v3 = sub_10002A1EC(*(v2 + 128), *(v2 + 136));
    v4 = sub_10001BBEC(v3);
    sub_10002B9C8(v4, v2 + 64);
    sub_10001BBEC(v2 + 64);
  }

  else
  {
    v5 = sub_10002A1EC(*(v2 + 128), *(v2 + 136));
    v6 = sub_10001BBEC(v5);
    sub_10002B9C8(v6, v2);
  }

  v7 = sub_10001BBEC(v2);

  free(v7);
}

uint64_t (*sub_100028248(void *a1, uint64_t *a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1000282C0(v4, *a2, a2[1]);
  return sub_10002BFF0;
}

uint64_t sub_1000282C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[12] = a3;
  v8[13] = v4;
  v8[11] = a2;
  v10 = sub_10002A1C8(v4);
  v9[10] = sub_10002A1D0(v4);
  v9[5] = v10;
  result = sub_10002A1D8(v9 + 5, v9 + 10);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    sub_10002A864(v9 + 2, v4);
    *v9 = a2;
    v9[1] = a3;
    return sub_1000283A0;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000283C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[12] = a3;
  v8[13] = v4;
  v8[11] = a2;
  v10 = sub_10002A1C8(v4);
  v9[10] = sub_10002A1D0(v4);
  v9[5] = v10;
  result = sub_10002A2EC(v9 + 5, v9 + 10);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    sub_10002A468(v9 + 2, v4);
    *v9 = a2;
    v9[1] = a3;
    return sub_1000284A8;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1000284D0(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, void *), uint64_t *a4, uint64_t *a5)
{
  v8 = *a1;
  if (a2)
  {
    v10 = v8[12];
    v9 = v8[13];
    v11 = v8[11];
    sub_10002BA04(*a1, (v8 + 5), a4, a5);
    a3(v9, v11, v10, v8 + 5);
    sub_10002BA6C((v8 + 5), a4, a5);
  }

  else
  {
    a3(v8[13], v8[11], v8[12], v8);
  }

  sub_10002BA6C(v8, a4, a5);

  free(v8);
}

uint64_t sub_100028598@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(void *)@<X0>)
{
  result = sub_100029954(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1000285C4(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = sub_10002A1EC(v2, v3);
    sub_10002A1F8(v12, v5);
    v6 = sub_10002A1EC(v2, v4);
    sub_10002A1F8(v11, v6);
    v7 = sub_10002A1EC(v2, v3);
    v8 = sub_10001BBEC(v7);
    sub_10002B9C8(v8, v11);
    sub_10001BBEC(v11);
    v9 = sub_10002A1EC(v2, v4);
    v10 = sub_10001BBEC(v9);
    sub_10002B9C8(v10, v12);
    return sub_10001BBEC(v12);
  }

  return result;
}

uint64_t sub_100028678(__int128 *a1, uint64_t *a2)
{
  v4 = sub_10002A32C(v2, *a2);
  v5 = sub_10001B428(v4);
  sub_10002A694(v5, a1);

  return sub_10001B428(a1);
}

void (*sub_1000286C4(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xB0uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 160) = v2;
  *(v5 + 168) = v7;
  v8 = sub_10002A32C(v2, v7);
  sub_10002A33C(v6, v8);
  return sub_100028754;
}

void sub_100028754(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10002A33C((v2 + 80), v2);
    v3 = sub_10002A32C(*(v2 + 160), *(v2 + 168));
    v4 = sub_10001B428(v3);
    sub_10002A694(v4, (v2 + 80));
    sub_10001B428(v2 + 80);
  }

  else
  {
    v5 = sub_10002A32C(*(v2 + 160), *(v2 + 168));
    v6 = sub_10001B428(v5);
    sub_10002A694(v6, v2);
  }

  v7 = sub_10001B428(v2);

  free(v7);
}

uint64_t (*sub_100028820(void *a1, uint64_t *a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1000283C8(v4, *a2, a2[1]);
  return sub_100028898;
}

void sub_10002889C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000288E4@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(__int128 *)@<X0>)
{
  result = sub_100029BB4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100028910(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = sub_10002A32C(v2, v3);
    sub_10002A33C(__dst, v5);
    v6 = sub_10002A32C(v2, v4);
    sub_10002A33C(v11, v6);
    v7 = sub_10002A32C(v2, v3);
    v8 = sub_10001B428(v7);
    sub_10002A694(v8, v11);
    sub_10001B428(v11);
    v9 = sub_10002A32C(v2, v4);
    v10 = sub_10001B428(v9);
    sub_10002A694(v10, __dst);
    return sub_10001B428(__dst);
  }

  return result;
}

uint64_t sub_100028A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100027338(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100028AE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002A1D0(v1);
  *a1 = result;
  return result;
}

uint64_t sub_100028B10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002A1C8(v1);
  *a1 = result;
  return result;
}

void (*sub_100028BC8(uint64_t *a1))(uint64_t *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = *v1;
  v5 = sub_10002A1D0(v3 + 64);
  sub_10002A1F8(v4, v5);
  return sub_10002BF9C;
}

void *sub_100028C50@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = sub_10002A294(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_100028C94@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100028CC0(uint64_t a1)
{
  v2 = sub_100029F88(&qword_10016A778, type metadata accessor for FileAttributeKey, &unk_10012FF8C);
  v3 = sub_100029F88(&qword_10016A780, type metadata accessor for FileAttributeKey, &unk_10012FD88);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100028D7C(uint64_t a1)
{
  v2 = sub_100029F88(&qword_10016A788, type metadata accessor for FileProtectionType, &unk_10012FC90);
  v3 = sub_100029F88(&qword_10016A790, type metadata accessor for FileProtectionType, &unk_10012FC30);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_100028E98@<X0>(void *result@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t *, uint64_t *)@<X5>, uint64_t *a5@<X8>)
{
  v7 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = a2(v5);
    v11 = a3(v5);
    v12 = v10;
    result = a4(&v12, &v11);
    if ((v7 & 0x8000000000000000) == 0 && v7 < result)
    {
      *a5 = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100028F6C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t *, uint64_t *))
{
  v7 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = a4(v6, a2, a3);
    v12 = a5(v6);
    v13 = v11;
    result = a6(&v13, &v12);
    if ((v7 & 0x8000000000000000) == 0 && v7 < result)
    {
      *v10 = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_100029000@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t (*a5)(uint64_t *, uint64_t *)@<X6>, uint64_t *a6@<X8>)
{
  v8 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v11 = a3(v6);
    v12 = a4(v6);
    v13 = v11;
    result = a5(&v13, &v12);
    if ((v8 & 0x8000000000000000) == 0 && result >= v8)
    {
      *a6 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100029094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t *)@<X4>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  result = a3(&v8, &v7);
  *a4 = result;
  return result;
}

uint64_t sub_1000290DC@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100029124(uint64_t a1)
{
  v2 = sub_100029F88(&qword_10016A768, type metadata accessor for URLResourceKey, &unk_10012FF48);
  v3 = sub_100029F88(&qword_10016A770, type metadata accessor for URLResourceKey, &unk_10012FE9C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000291F8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100029234(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100029288(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

void (*sub_1000292FC(uint64_t *a1))(uint64_t *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = *v1;
  v5 = sub_10002A1D0(v3 + 80);
  sub_10002A33C(v4, v5);
  return sub_10002BFA0;
}

void *sub_100029384@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = sub_10002A428(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_1000293C4(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100029464(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *, uint64_t, uint64_t))
{
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return a5(&v8, &v7, a3, a4);
}

uint64_t sub_10002949C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v24[0] = sub_10002A1C8(a1);
  v25 = sub_10002A1D0(a1);
  result = sub_10002A1D8(v24, &v25);
  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result < a3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *a4;
  v10 = a4[1];
  v11 = *a4 == v10;
  v12 = a2 == a3;
  if (a2 != a3 && v9 != v10)
  {
    v13 = a3 - 1;
    v14 = v10 - 1;
    v15 = *a4;
    while (v15 < v10)
    {
      v16 = sub_10002A1EC(a4 + 2, v15);
      sub_10002A1F8(v24, v16);
      v17 = sub_10002A1EC(a1, a2);
      v18 = sub_10001BBEC(v17);
      sub_10002B9C8(v18, v24);
      sub_10001BBEC(v24);
      v19 = sub_10002A1C8(a1);
      v20 = sub_10002A1D0(a1);
      v24[0] = v19;
      v25 = v20;
      result = sub_10002A1D8(v24, &v25);
      if (a2 >= result)
      {
        goto LABEL_18;
      }

      v21 = sub_10002A1C8((a4 + 2));
      v22 = sub_10002A1D0((a4 + 2));
      v24[0] = v21;
      v25 = v22;
      result = sub_10002A1D8(v24, &v25);
      if (v9 < 0 || v15 >= result)
      {
        goto LABEL_19;
      }

      v11 = v14 == v15;
      v12 = v13 == a2;
      if (v13 != a2)
      {
        ++a2;
        if (v14 != v15++)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v11)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_100029648(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *&__dst[0] = sub_10002A1C8(a1);
  v25 = sub_10002A1D0(a1);
  result = sub_10002A2EC(__dst, &v25);
  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result < a3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *a4;
  v10 = a4[1];
  v11 = *a4 == v10;
  v12 = a2 == a3;
  if (a2 != a3 && v9 != v10)
  {
    v13 = a3 - 1;
    v14 = v10 - 1;
    v15 = *a4;
    while (v15 < v10)
    {
      v16 = sub_10002A32C(a4 + 2, v15);
      sub_10002A33C(__dst, v16);
      v17 = sub_10002A32C(a1, a2);
      v18 = sub_10001B428(v17);
      sub_10002A694(v18, __dst);
      sub_10001B428(__dst);
      v19 = sub_10002A1C8(a1);
      v20 = sub_10002A1D0(a1);
      *&__dst[0] = v19;
      v25 = v20;
      result = sub_10002A2EC(__dst, &v25);
      if (a2 >= result)
      {
        goto LABEL_18;
      }

      v21 = sub_10002A1C8((a4 + 2));
      v22 = sub_10002A1D0((a4 + 2));
      *&__dst[0] = v21;
      v25 = v22;
      result = sub_10002A2EC(__dst, &v25);
      if (v9 < 0 || v15 >= result)
      {
        goto LABEL_19;
      }

      v11 = v14 == v15;
      v12 = v13 == a2;
      if (v13 != a2)
      {
        ++a2;
        if (v14 != v15++)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v11)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void *sub_1000297F4(__int128 **a1)
{
  v8[0] = sub_10002A1C8(a1);
  v7[0] = sub_10002A1D0(a1);
  v2 = sub_10002A2EC(v8, v7);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = sub_10007E714(v2, 0);
  sub_10002A468(v7, a1);
  v5 = sub_1000801B0(v8, (v4 + 4), v3);

  if (v5 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v4;
}

void *sub_1000298A4(uint64_t *a1)
{
  v8[0] = sub_10002A1C8(a1);
  v7[0] = sub_10002A1D0(a1);
  v2 = sub_10002A1D8(v8, v7);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = sub_10007E7A4(v2, 0);
  sub_10002A864(v7, a1);
  v5 = sub_10008030C(v8, (v4 + 4), v3);

  if (v5 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v4;
}

uint64_t sub_100029954(uint64_t (*a1)(void *))
{
  v27[0] = sub_10002A1C8(v1);
  v26[0] = sub_10002A1D0(v1);
  v4 = sub_10002A1D8(v27, v26);
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = sub_10002A1EC(v1, v6);
      sub_10002A1F8(v27, v7);
      v8 = a1(v27);
      sub_10001BBEC(v27);
      if (v2)
      {
        return v6;
      }

      if (v8)
      {
        break;
      }

      v9 = sub_10002A1C8(v1);
      v10 = sub_10002A1D0(v1);
      v27[0] = v9;
      v26[0] = v10;
      result = sub_10002A1D8(v27, v26);
      if (v6 >= result)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

LABEL_6:
      if (++v6 >= v5)
      {
        return v6;
      }
    }

    v12 = v5;
    while (1)
    {
      v13 = sub_10002A1C8(v1);
      v14 = sub_10002A1D0(v1);
      v27[0] = v13;
      v26[0] = v14;
      result = sub_10002A1D8(v27, v26);
      v5 = v12 - 1;
      if (v12 < 1 || v12 > result)
      {
        goto LABEL_22;
      }

      if (v6 >= v5)
      {
        return v6;
      }

      v15 = sub_10002A1EC(v1, v12 - 1);
      sub_10002A1F8(v27, v15);
      v16 = a1(v27);
      sub_10001BBEC(v27);
      --v12;
      if ((v16 & 1) == 0)
      {
        if (v6 != v5)
        {
          v17 = sub_10002A1EC(v1, v6);
          sub_10002A1F8(v27, v17);
          v18 = sub_10002A1EC(v1, v5);
          sub_10002A1F8(v26, v18);
          v19 = sub_10002A1EC(v1, v6);
          v20 = sub_10001BBEC(v19);
          sub_10002B9C8(v20, v26);
          sub_10001BBEC(v26);
          v21 = sub_10002A1EC(v1, v5);
          v22 = sub_10001BBEC(v21);
          sub_10002B9C8(v22, v27);
          sub_10001BBEC(v27);
        }

        v23 = sub_10002A1C8(v1);
        v24 = sub_10002A1D0(v1);
        v27[0] = v23;
        v26[0] = v24;
        v25 = sub_10002A1D8(v27, v26);
        if (v6 < 0 || v6 >= v25)
        {
          __break(1u);
          return 0;
        }

        goto LABEL_6;
      }
    }
  }

  return 0;
}

uint64_t sub_100029BB4(uint64_t (*a1)(__int128 *))
{
  *&__dst[0] = sub_10002A1C8(v1);
  *&v26[0] = sub_10002A1D0(v1);
  v4 = sub_10002A2EC(__dst, v26);
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = sub_10002A32C(v1, v6);
      sub_10002A33C(__dst, v7);
      v8 = a1(__dst);
      sub_10001B428(__dst);
      if (v2)
      {
        return v6;
      }

      if (v8)
      {
        break;
      }

      v9 = sub_10002A1C8(v1);
      v10 = sub_10002A1D0(v1);
      *&__dst[0] = v9;
      *&v26[0] = v10;
      result = sub_10002A2EC(__dst, v26);
      if (v6 >= result)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

LABEL_6:
      if (++v6 >= v5)
      {
        return v6;
      }
    }

    v12 = v5;
    while (1)
    {
      v13 = sub_10002A1C8(v1);
      v14 = sub_10002A1D0(v1);
      *&__dst[0] = v13;
      *&v26[0] = v14;
      result = sub_10002A2EC(__dst, v26);
      v5 = v12 - 1;
      if (v12 < 1 || v12 > result)
      {
        goto LABEL_22;
      }

      if (v6 >= v5)
      {
        return v6;
      }

      v15 = sub_10002A32C(v1, v12 - 1);
      sub_10002A33C(__dst, v15);
      v16 = a1(__dst);
      sub_10001B428(__dst);
      --v12;
      if ((v16 & 1) == 0)
      {
        if (v6 != v5)
        {
          v17 = sub_10002A32C(v1, v6);
          sub_10002A33C(__dst, v17);
          v18 = sub_10002A32C(v1, v5);
          sub_10002A33C(v26, v18);
          v19 = sub_10002A32C(v1, v6);
          v20 = sub_10001B428(v19);
          sub_10002A694(v20, v26);
          sub_10001B428(v26);
          v21 = sub_10002A32C(v1, v5);
          v22 = sub_10001B428(v21);
          sub_10002A694(v22, __dst);
          sub_10001B428(__dst);
        }

        v23 = sub_10002A1C8(v1);
        v24 = sub_10002A1D0(v1);
        *&__dst[0] = v23;
        *&v26[0] = v24;
        v25 = sub_10002A2EC(__dst, v26);
        if (v6 < 0 || v6 >= v25)
        {
          __break(1u);
          return 0;
        }

        goto LABEL_6;
      }
    }
  }

  return 0;
}

uint64_t sub_100029E4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100029E6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100029F88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002A1F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_1000120CC((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  if (*(a2 + 63) < 0)
  {
    sub_1000120CC((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  return a1;
}

void sub_10002A278(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

char *sub_10002A33C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000120CC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000120CC(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_1000120CC(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  __dst[72] = *(a2 + 72);
  return __dst;
}

void sub_10002A3E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002A438(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t *sub_10002A468(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1000238C4(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * (a2[1] - *a2));
  return a1;
}

void **sub_10002A4B8(void **a1)
{
  v3 = a1;
  sub_10002BE40(&v3, sub_10002BDC8);
  return a1;
}

__n128 *sub_10002A550(__n128 *a1, __n128 *a2)
{
  sub_10002A960(a1, a2);
  sub_10002A4B8(a2);
  return a1;
}

uint64_t sub_10002A5B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A5D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10002A660(uint64_t a1, __int128 *a2)
{
  sub_10002A694(a1, a2);
  sub_10001B428(a2);
  return a1;
}

__n128 sub_10002A694(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  result = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = result;
  *(a2 + 56) = 0uLL;
  *(a2 + 6) = 0;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

uint64_t sub_10002A714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002A768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_10002A7D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10002A7E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A800(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t *sub_10002A864(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1000239D4(a1, *a2, a2[1], (a2[1] - *a2) >> 6);
  return a1;
}

void **sub_10002A8A8(void **a1)
{
  v3 = a1;
  sub_10001182C(&v3);
  return a1;
}

__n128 *sub_10002A92C(__n128 *a1, __n128 *a2)
{
  sub_10002A960(a1, a2);
  sub_10002A8A8(a2);
  return a1;
}

__n128 sub_10002A960(__n128 *a1, __n128 *a2)
{
  *a1 = 0uLL;
  a1[1].n128_u64[0] = 0;
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_10002A9C4(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_1000238C4((a1 + 8), *(a2 + 1), *(a2 + 2), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 2) - *(a2 + 1)) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10002394C((a1 + 32), *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 5));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1000239D4((a1 + 56), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 6);
  *(a1 + 80) = *(a2 + 10);
  return a1;
}

void sub_10002AA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BE40(va, sub_10002BE98);
  sub_10002BE40(va, sub_10002BDC8);
  _Unwind_Resume(a1);
}

void **sub_10002AAE4(void **a1)
{
  v3 = a1 + 7;
  sub_10001182C(&v3);
  v3 = a1 + 4;
  sub_10002BE40(&v3, sub_10002BE98);
  v3 = a1 + 1;
  sub_10002BE40(&v3, sub_10002BDC8);
  return a1;
}

uint64_t sub_10002ABB4(uint64_t a1, void **a2)
{
  sub_10002ABE8(a1, a2);
  sub_10002AAE4(a2);
  return a1;
}

__n128 sub_10002ABE8(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  result = *(a2 + 14);
  *(a1 + 56) = result;
  v4 = *(a2 + 10);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a1 + 80) = v4;
  return result;
}

uint64_t sub_10002AC8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002ACE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10002AD94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10002ADDC()
{
  result = qword_10016A7E8;
  if (!qword_10016A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A7E8);
  }

  return result;
}

uint64_t sub_10002B000(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016A7E0, &qword_100130140);
    sub_10002ADDC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B1A8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016A7F8, &qword_100130148);
    sub_100029F88(a2, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.ExpansionPoint_ std.__1.allocator_hsql.SQLStatementSummary.ExpansionPoint__, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002B31C()
{
  result = qword_10016A880;
  if (!qword_10016A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A880);
  }

  return result;
}

unint64_t sub_10002B3F0()
{
  result = qword_10016A890;
  if (!qword_10016A890)
  {
    sub_10002AD94(&qword_10016A898, &qword_100130530);
    sub_100029F88(&qword_10016A8A0, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__, &unk_100130538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A890);
  }

  return result;
}

unint64_t sub_10002B640()
{
  result = qword_10016A8C8;
  if (!qword_10016A8C8)
  {
    sub_10002AD94(&qword_10016A898, &qword_100130530);
    sub_100029F88(&qword_10016A8D0, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__, &unk_100130728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8C8);
  }

  return result;
}

unint64_t sub_10002B788()
{
  result = qword_10016A8E0;
  if (!qword_10016A8E0)
  {
    sub_10002AD94(&qword_10016A898, &qword_100130530);
    sub_100029F88(&qword_10016A8E8, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__, &unk_1001307B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8E0);
  }

  return result;
}

uint64_t sub_10002B95C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10002B9C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10002BA04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100026F94(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002BA6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100026F94(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002BAD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002BAF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10002BB70(uint64_t a1, uint64_t a2)
{
  sub_10002B9C8(a1, a2);
  sub_10001BBEC(a2);
  return a1;
}

uint64_t sub_10002BBD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002BBF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 *sub_10002BC90(__n128 *a1, __n128 *a2)
{
  sub_10002BCC4(a1, a2);
  std::string::~string(a2);
  return a1;
}

__n128 sub_10002BCC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_10002BD0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t))
{
  a4(a1, a2, a3);
  a5(a1, a2);
  (a4)(a2);
  return a1;
}

void sub_10002BD7C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_10002BDC8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
      }

      v4 = v3 - 10;
      if (*(v3 - 57) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 10;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void sub_10002BE40(void ***a1, void (*a2)(void))
{
  if (**a1)
  {
    a2();
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10002BE98(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      if (*(v3 - 49) < 0)
      {
        operator delete(*(v3 - 9));
      }

      v4 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 12;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_10002C044(uint64_t a1, void *a2)
{
  v4 = sub_100026F94(&qword_10016A940, &qword_100130A60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - v6;
  SelectRequest.query.getter();
  sub_100026F94(&qword_10016A948, &unk_100131880);
  sub_100026F94(&qword_10016A950, &unk_100133310);
  if (swift_dynamicCast())
  {
    sub_10002C604(v31, &v35);
    v8 = v37;
    v9 = sub_100026F50(&v35, v37);
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    dispatch thunk of QueryType.descoped.getter();
    dispatch thunk of Expressible.expression.getter();
    (*(v10 + 8))(v12, v8);
    sub_10002C61C();
    v13 = ExpressionType.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    sub_100026FDC(&v35);
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_10002C4F0(v31);
    type metadata accessor for SelectRequest();
    sub_10002C558();
    v35 = QueryRequest.statement.getter();
    v36 = v16;
    v33 = a1;
    v34 = a2;

    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    *&v31[0] = 0;
    *(&v31[0] + 1) = 0xE000000000000000;
    sub_10002C5B0();
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v20 = v19;

    v35 = v18;
    v36 = v20;
    v33 = 34;
    v34 = 0xE100000000000000;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 11810;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    *&v31[0] = 0;
    *(&v31[0] + 1) = 0xE000000000000000;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v15 = v23;
  }

  if ((SelectRequest.isBatched.getter() & 1) == 0)
  {
    return v13;
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v35 = 0x2A205443454C4553;
  v36 = 0xEF28204D4F524620;
  v24._countAndFlagsBits = v13;
  v24._object = v15;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x2054494D494C2029;
  v25._object = 0xE800000000000000;
  String.append(_:)(v25);
  v33 = SelectRequest.batchRowCount.getter();
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x2054455346464F20;
  v27._object = 0xE800000000000000;
  String.append(_:)(v27);
  v28 = SelectRequest.batchIndex.getter();
  result = SelectRequest.batchRowCount.getter();
  if ((v28 * result) >> 64 == (v28 * result) >> 63)
  {
    v33 = v28 * result;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    return v35;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C4F0(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016A958, &qword_100130A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002C558()
{
  result = qword_10016A960;
  if (!qword_10016A960)
  {
    type metadata accessor for SelectRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A960);
  }

  return result;
}

unint64_t sub_10002C5B0()
{
  result = qword_10016A968;
  if (!qword_10016A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A968);
  }

  return result;
}

uint64_t sub_10002C604(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10002C61C()
{
  result = qword_10016A970;
  if (!qword_10016A970)
  {
    sub_10002AD94(&qword_10016A940, &qword_100130A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A970);
  }

  return result;
}

uint64_t sub_10002C680(uint64_t a1)
{
  swift_getObjectType();
  sub_10002D56C(a1, v11);
  if (!v12)
  {
    sub_10002D504(v11);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v8 = 0;
    return v8 & 1;
  }

  Strong = swift_weakLoadStrong();
  v4 = swift_weakLoadStrong();
  if (!Strong)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:

    goto LABEL_20;
  }

  v5 = v4;

  if (Strong != v5)
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_9:
  v6 = *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table) == *&v10[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table] && *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table + 8) == *&v10[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table + 8];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema) == *&v10[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema] && *(v1 + OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema + 8) == *&v10[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema + 8])
  {

    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10002C880()
{
  v1 = v0;
  Hasher.init()();
  Strong = swift_weakLoadStrong();
  v3 = v1;
  if (Strong)
  {

    v3 = Strong;
  }

  Hasher._combine(_:)(v3);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher.finalize()();
}

id sub_10002C94C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002C9FC()
{
  nullsub_1();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  nullsub_1();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  nullsub_1();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_10002CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v10;

  v14 = objc_msgSendSuper2(&v19, "init");
  v15 = [*(v5 + 16) objectForKey:{v14, v19.receiver, v19.super_class}];
  if (v15)
  {
    v16 = v15;
    os_unfair_lock_lock(v15 + 4);
    v17 = *&v16[6]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_10002CB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v10;

  v14 = objc_msgSendSuper2(&v19, "init");
  v15 = [*(v5 + 16) objectForKey:{v14, v19.receiver, v19.super_class}];
  if (v15)
  {
    v16 = v15;
    os_unfair_lock_lock(v15 + 8);
    v17 = *&v16[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_10002CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v10;

  v14 = objc_msgSendSuper2(&v19, "init");
  v15 = [*(v5 + 16) objectForKey:{v14, v19.receiver, v19.super_class}];
  if (v15)
  {
    v16 = v15;
    os_unfair_lock_lock(v15 + 12);
    v17 = *&v16[14]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v16 + 12);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_10002CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v22.receiver = v11;
  v22.super_class = v10;

  v14 = objc_msgSendSuper2(&v22, "init");
  v15 = *(v5 + 16);
  v16 = [v15 objectForKey:{v14, v22.receiver, v22.super_class}];
  if (v16)
  {
    v17 = v16;
    os_unfair_lock_lock(v16 + 4);
    *&v17[6]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v17 + 4);
  }

  v18 = [v15 objectForKey:v14];
  if (v18)
  {
    v19 = v18;
    os_unfair_lock_lock(v18 + 8);
    *&v19[10]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v19 + 8);
  }

  v20 = [v15 objectForKey:v14];
  if (v20)
  {
    v21 = v20;
    os_unfair_lock_lock(v20 + 12);
    *&v21[14]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v21 + 12);
  }
}

void sub_10002CFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v21.receiver = v11;
  v21.super_class = v10;

  v14 = objc_msgSendSuper2(&v21, "init");
  v15 = *(v5 + 16);
  v16 = [v15 objectForKey:{v14, v21.receiver, v21.super_class}];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    type metadata accessor for DefaultConnectionDelegate.Context();
    swift_allocObject();
    v17 = sub_10002C9FC();
    [v15 setObject:v17 forKey:v14];
  }

  os_unfair_lock_lock((v17 + 16));
  v18 = *(v17 + 24);
  os_unfair_lock_unlock((v17 + 16));
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_lock((v17 + 16));
    *(v17 + 24) = v20;
    os_unfair_lock_unlock((v17 + 16));
  }
}

void sub_10002D124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v21.receiver = v11;
  v21.super_class = v10;

  v14 = objc_msgSendSuper2(&v21, "init");
  v15 = *(v5 + 16);
  v16 = [v15 objectForKey:{v14, v21.receiver, v21.super_class}];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    type metadata accessor for DefaultConnectionDelegate.Context();
    swift_allocObject();
    v17 = sub_10002C9FC();
    [v15 setObject:v17 forKey:v14];
  }

  os_unfair_lock_lock((v17 + 32));
  v18 = *(v17 + 40);
  os_unfair_lock_unlock((v17 + 32));
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_lock((v17 + 32));
    *(v17 + 40) = v20;
    os_unfair_lock_unlock((v17 + 32));
  }
}

void sub_10002D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DefaultConnectionDelegate.CacheKey();
  v11 = objc_allocWithZone(v10);
  swift_weakInit();
  swift_weakAssign();
  v12 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_table];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCC19amsondevicestoraged25DefaultConnectionDelegateP33_B92AB71E2A6FC2ADFBF145BD9B3715FE8CacheKey_schema];
  *v13 = a4;
  *(v13 + 1) = a5;
  v21.receiver = v11;
  v21.super_class = v10;

  v14 = objc_msgSendSuper2(&v21, "init");
  v15 = *(v5 + 16);
  v16 = [v15 objectForKey:{v14, v21.receiver, v21.super_class}];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    type metadata accessor for DefaultConnectionDelegate.Context();
    swift_allocObject();
    v17 = sub_10002C9FC();
    [v15 setObject:v17 forKey:v14];
  }

  os_unfair_lock_lock((v17 + 48));
  v18 = *(v17 + 56);
  os_unfair_lock_unlock((v17 + 48));
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_lock((v17 + 48));
    *(v17 + 56) = v20;
    os_unfair_lock_unlock((v17 + 48));
  }
}

uint64_t FileManagerWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_10002D4D0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100026F94(&qword_10016AB08, &qword_100130AF8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10002D504(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016AB10, &unk_100130B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016AB10, &unk_100130B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (**sub_10002D5E0(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), uint64_t a4, unint64_t a5))(char *, uint64_t)
{
  v177 = a5;
  v176 = a4;
  v172 = a2;
  v168 = a1;
  v194 = type metadata accessor for DataSpecification.Namespace.Table.Column();
  v190 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = (v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v184 = type metadata accessor for ColumnDefinition();
  v163 = *(v184 - 8);
  __chkstk_darwin(v184);
  v183 = v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for AccessCredential.Error();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v169 = v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for DataSpecification();
  v213 = *(v167 - 8);
  __chkstk_darwin(v167);
  v174 = v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for DataSpecification.Namespace.Table();
  v200 = *(v166 - 8);
  __chkstk_darwin(v166);
  v175 = v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  if (qword_10016A648 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    TaskLocal.get()();
    sub_100026F50(&v208, v211);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0xD00000000000001DLL;
    v12._object = 0x8000000100139E70;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    sub_10001E05C(&v212, a3);
    v13 = sub_10002BFD0(&v212);
    v14 = sub_10002BF74(&v212);
    v204 = v13;
    v202 = v14;
    v15 = sub_10002A1D8(&v204, &v202);
    sub_10002A8A8(&v212.__r_.__value_.__l.__data_);
    v206.__r_.__value_.__l.__size_ = &type metadata for Int;
    v204 = v15;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(&v204);
    v16._object = 0x8000000100139E90;
    v16._countAndFlagsBits = 0xD000000000000011;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC(&v208);
    sub_10001E05C(&v208, a3);
    v17 = sub_10002BFD0(&v208);
    v18 = sub_10002BF74(&v208);
    v204 = v17;
    v212.__r_.__value_.__r.__words[0] = v18;
    v19 = sub_10002A1D8(&v204, &v212);
    sub_10002A8A8(&v208);
    v20 = v195;
    v21 = v176;
    v22 = v177;
    if (!v19)
    {

      return v21;
    }

    v159[1] = a3;
    sub_10001E05C(&v204, a3);
    sub_100026F94(&qword_10016A918, &qword_100130920);
    swift_allocObject();
    v23 = CxxSequenceBox.init(_:)(&v204);
    v24 = CxxSequenceBox.sequence.modify();
    v26 = sub_10002BF74(v25);
    (v24)(&v208, 0);
    v159[2] = v23;
    v27 = CxxSequenceBox.sequence.modify();
    a3 = sub_10002BFD0(v28);
    (v27)(&v208, 0);
    v29 = sub_10002A8A8(&v204);
    v204 = v26;
    v165 = a3;
    v212.__r_.__value_.__r.__words[0] = a3;
    if (!sub_10002BFC4(v29, &v212))
    {
      break;
    }

    v178 = _swiftEmptyDictionarySingleton;
LABEL_5:

    v204 = 0;
    v205 = 0xE000000000000000;
    v30 = sub_1000838FC();
    v31 = v30;
    *(&v199 + 1) = *(v30 + 16);
    if (!*(&v199 + 1))
    {

      return 0;
    }

    v195 = v20;
    v32 = 0;
    v33 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v33 = v21 & 0xFFFFFFFFFFFFLL;
    }

    *&v199 = 4 * v33;
    v34 = 7;
    if (((v22 >> 60) & ((v21 & 0x800000000000000) == 0)) != 0)
    {
      v34 = 11;
    }

    v198 = v34 | (v33 << 16);
    v35 = (v30 + 40);
    while (v32 < *(v31 + 16))
    {
      if (v32 && __OFADD__(*(v35 - 3), *(v35 - 2)))
      {
        goto LABEL_142;
      }

      a3 = *(v35 - 1);
      v200 = *v35;
      v36 = String.index(_:offsetBy:)();
      v213 = a3;
      if (String.index(_:offsetBy:)() >> 14 < v36 >> 14)
      {
        goto LABEL_143;
      }

      v37 = v31;
      v38 = String.subscript.getter();
      v42 = v41;
      v43 = v178;
      if (!v178[2] || (v44 = v38, v45 = v39, v46 = v40, v47 = sub_10009E574(v213, v200), (v48 & 1) == 0))
      {

        v153 = type metadata accessor for DaemonError();
        sub_10002F1C8(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        v154 = v200;
        *v155 = v213;
        v155[1] = v154;
        (*(*(v153 - 8) + 104))(v155, enum case for DaemonError.missingExpansionPoint(_:), v153);
        swift_willThrow();

        goto LABEL_138;
      }

      v49 = v43[7] + 16 * v47;
      v51 = *v49;
      v50 = *(v49 + 8);
      v208 = v44;
      v209 = v45;
      a3 = v50;
      v210 = v46;
      v211 = v42;
      sub_10002F210();

      String.UnicodeScalarView.append<A>(contentsOf:)();

      v208 = v51;
      v209 = a3;
      String.UnicodeScalarView.append<A>(contentsOf:)();
      v31 = v37;
      if (v32 == *(v37 + 16) - 1)
      {
        v21 = v176;
        if (__OFADD__(v213, v200))
        {
          goto LABEL_146;
        }

        if (v199 < String.index(_:offsetBy:)() >> 14)
        {
          goto LABEL_147;
        }

        v52 = String.subscript.getter();
        a3 = v53;
        v208 = v52;
        v209 = v54;
        v210 = v55;
        v211 = v53;
        String.UnicodeScalarView.append<A>(contentsOf:)();
      }

      else
      {

        v21 = v176;
      }

      ++v32;
      v35 += 2;
      if (*(&v199 + 1) == v32)
      {

        return v204;
      }
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    swift_once();
  }

  v164 = v213 + 1;
  v181 = v163 + 16;
  v180 = (v163 + 8);
  v187 = v190 + 16;
  v186 = (v190 + 8);
  v162 = (v200 + 8);
  v178 = _swiftEmptyDictionarySingleton;
  v179 = xmmword_100130B20;
  while (1)
  {
    v204 = v26;
    v60 = sub_10002A1D0(&v204);
    sub_10002A1F8(&v208, v60);
    v204 = v26;
    sub_10002A294(&v204);
    a3 = v204;
    sub_10002B9C8(&v204, &v208);
    sub_10001BBEC(&v208);
    v61 = v204;
    v62 = String.index(_:offsetBy:)();
    v171 = v61;
    v173 = v205;
    if (__OFADD__(v61, v205))
    {
      goto LABEL_144;
    }

    if (String.index(_:offsetBy:)() >> 14 < v62 >> 14)
    {
      goto LABEL_145;
    }

    v170 = a3;
    v63 = String.subscript.getter();
    v65 = v64;
    v67 = v66;
    v69 = v68;

    v182 = v63;
    v185 = Substring.fastContains(_:)();

    v70 = std::string::basic_string(&v212, &v207);
    sub_10002EFB0(v70);
    sub_10002EFC4(&v212);
    v71 = static String._fromUTF8Repairing(_:)();
    v73 = v72;
    std::string::~string(&v212);
    AccessCredential.dataSpecification.getter();
    v74 = std::string::basic_string(&v212, &v206);
    sub_10002EFB0(v74);
    sub_10002EFC4(&v212);
    static String._fromUTF8Repairing(_:)();
    v75 = v174;
    std::string::~string(&v212);
    _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
    if (v20)
    {
      goto LABEL_137;
    }

    v76 = 0;
    (*v164)(v75, v167);

    *&v199 = v65;
    if (v172)
    {

      v77._countAndFlagsBits = v71;
      v77._object = v73;
      v78 = Connection.tableExists(_:)(v77);
      v79 = v194;
      if (!v78)
      {

        v191 = 0;
        goto LABEL_45;
      }

      Connection.schema.getter();
      v80 = dispatch thunk of SchemaReader.columnDefinitions(table:)();

      v81 = *(v80 + 16);
      if (v81)
      {
        v195 = 0;
        v212.__r_.__value_.__r.__words[0] = _swiftEmptyArrayStorage;
        sub_10007E9EC(0, v81, 0);
        v82 = v80;
        v83 = v212.__r_.__value_.__r.__words[0];
        v84 = (*(v163 + 80) + 32) & ~*(v163 + 80);
        v198 = v82;
        v85 = v82 + v84;
        v200 = *(v163 + 72);
        *(&v199 + 1) = *(v163 + 16);
        do
        {
          v86 = v183;
          v87 = v184;
          (*(&v199 + 1))(v183, v85, v184);
          v88 = ColumnDefinition.name.getter();
          v213 = v89;
          (*v180)(v86, v87);
          v212.__r_.__value_.__r.__words[0] = v83;
          v91 = *(v83 + 16);
          v90 = *(v83 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_10007E9EC((v90 > 1), v91 + 1, 1);
            v83 = v212.__r_.__value_.__r.__words[0];
          }

          *(v83 + 16) = v91 + 1;
          v92 = v83 + 16 * v91;
          v93 = v213;
          *(v92 + 32) = v88;
          *(v92 + 40) = v93;
          v85 += v200;
          --v81;
        }

        while (v81);
        v191 = v83;

        v76 = v195;
        v21 = v176;
      }

      else
      {

        v191 = _swiftEmptyArrayStorage;
      }
    }

    else
    {

      v191 = 0;
    }

    v79 = v194;
LABEL_45:
    v195 = v76;
    v202 = 0;
    v203 = 0xE000000000000000;
    v94 = DataSpecification.Namespace.Table.columns.getter();
    v95 = v94;
    a3 = v192;
    v189 = *(v94 + 16);
    if (v189)
    {
      break;
    }

LABEL_124:

    v56 = v178;
    v22 = v177;
    v146 = v171;
    if (v178[2])
    {
      v147 = sub_10009E574(v171, v173);
      if (v148)
      {
        v149 = (*(v56 + 56) + 16 * v147);
        v151 = *v149;
        v150 = v149[1];
        v152 = v202 & 0xFFFFFFFFFFFFLL;
        if ((v203 & 0x2000000000000000) != 0)
        {
          v152 = HIBYTE(v203) & 0xF;
        }

        if (v152)
        {
          v212.__r_.__value_.__r.__words[0] = 8236;
          v212.__r_.__value_.__l.__size_ = 0xE200000000000000;
          sub_10002F040();

          String.UnicodeScalarView.replaceSubrange<A>(_:with:)();
          v212.__r_.__value_.__r.__words[0] = v151;
          v212.__r_.__value_.__l.__size_ = v150;
          String.UnicodeScalarView.replaceSubrange<A>(_:with:)();
        }

        else
        {
          v212.__r_.__value_.__r.__words[0] = v151;
          v212.__r_.__value_.__l.__size_ = v150;
          sub_10002F040();
          String.UnicodeScalarView.replaceSubrange<A>(_:with:)();
        }

        v56 = v178;
      }
    }

    v57 = v202;
    a3 = v203;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v212.__r_.__value_.__r.__words[0] = v56;
    sub_1000A0D5C(v57, a3, v146, v173, isUniquelyReferenced_nonNull_native);

    v178 = v212.__r_.__value_.__r.__words[0];
    (*v162)(v175, v166);
    sub_10001BBEC(&v204);

    v26 = v170;
    v204 = v170;
    v212.__r_.__value_.__r.__words[0] = v165;
    v59 = sub_10002BFC4(&v204, &v212);
    v20 = v195;
    if (v59)
    {
      goto LABEL_5;
    }
  }

  v96 = 0;
  v188 = v94 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
  v97 = v199 >> 14;
  v213 = (v182 >> 14);
  v98 = (v67 >> 59) & 1;
  if ((v69 & 0x1000000000000000) == 0)
  {
    LOBYTE(v98) = 1;
  }

  v21 = 4 << v98;
  v198 = v69 & 0xFFFFFFFFFFFFFFLL;
  v99 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v99 = v67 & 0xFFFFFFFFFFFFLL;
  }

  v200 = v99;
  v197 = (v69 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v193 = v94;
  while (1)
  {
    if (v96 >= *(v95 + 16))
    {
      __break(1u);
      goto LABEL_141;
    }

    v101 = *(v190 + 72);
    v196 = v96;
    (*(v190 + 16))(a3, v188 + v101 * v96, v79);
    v102 = v191;
    if (!v191)
    {
      break;
    }

    v103 = a3;
    v212.__r_.__value_.__r.__words[0] = DataSpecification.Namespace.Table.Column.name.getter();
    v212.__r_.__value_.__l.__size_ = v104;
    __chkstk_darwin(v212.__r_.__value_.__r.__words[0]);
    v159[-2] = &v212;
    v105 = v195;
    v106 = sub_10008AC28(sub_10002F1A8, &v159[-4], v102);
    v195 = v105;

    if (v106)
    {
      v79 = v194;
      break;
    }

    v112 = v194;
    (*v186)(v103, v194);
    a3 = v103;
    v79 = v112;
    v95 = v193;
LABEL_53:
    v96 = v196 + 1;
    if (v196 + 1 == v189)
    {

      v21 = v176;
      goto LABEL_124;
    }
  }

  v107 = v202 & 0xFFFFFFFFFFFFLL;
  if ((v203 & 0x2000000000000000) != 0)
  {
    v107 = HIBYTE(v203) & 0xF;
  }

  if (v107)
  {
    v212.__r_.__value_.__r.__words[0] = 8236;
    v212.__r_.__value_.__l.__size_ = 0xE200000000000000;
    String.UnicodeScalarView.append<A>(contentsOf:)();
  }

  v95 = v193;
  if (v185)
  {
    v108._countAndFlagsBits = DataSpecification.Namespace.Table.Column.name.getter();
    v212.__r_.__value_.__r.__words[0] = 34;
    v212.__r_.__value_.__l.__size_ = 0xE100000000000000;
    String.append(_:)(v108);

    v109._countAndFlagsBits = 34;
    v109._object = 0xE100000000000000;
    String.append(_:)(v109);
    v199 = *&v212.__r_.__value_.__l.__data_;
  }

  else
  {
    sub_100026F94(&qword_10016AB20, &unk_100130B30);
    v110 = swift_allocObject();
    *(v110 + 16) = v179;
    v111 = std::string::basic_string(&v212, &v207);
    sub_10002EFB0(v111);
    sub_10002EFC4(&v212);
    v113 = static String._fromUTF8Repairing(_:)();
    v115 = v114;
    std::string::~string(&v212);
    v212.__r_.__value_.__r.__words[0] = 34;
    v212.__r_.__value_.__l.__size_ = 0xE100000000000000;
    v116._countAndFlagsBits = v113;
    v116._object = v115;
    String.append(_:)(v116);

    v117._countAndFlagsBits = 34;
    v117._object = 0xE100000000000000;
    String.append(_:)(v117);
    size = v212.__r_.__value_.__l.__size_;
    *(v110 + 32) = v212.__r_.__value_.__r.__words[0];
    *(v110 + 40) = size;
    v119._countAndFlagsBits = DataSpecification.Namespace.Table.Column.name.getter();
    v212.__r_.__value_.__r.__words[0] = 34;
    v212.__r_.__value_.__l.__size_ = 0xE100000000000000;
    String.append(_:)(v119);

    v120._countAndFlagsBits = 34;
    v120._object = 0xE100000000000000;
    String.append(_:)(v120);
    v121 = v212.__r_.__value_.__l.__size_;
    *(v110 + 48) = v212.__r_.__value_.__r.__words[0];
    *(v110 + 56) = v121;
    v212.__r_.__value_.__r.__words[0] = v110;
    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002EFDC();
    *&v199 = BidirectionalCollection<>.joined(separator:)();
    *(&v199 + 1) = v122;

    v79 = v194;
    v95 = v193;
  }

  v123 = 0xE000000000000000;
  v212.__r_.__value_.__r.__words[0] = 0;
  v212.__r_.__value_.__l.__size_ = 0xE000000000000000;
  v124 = v213;
  if (v213 == v97)
  {
    v100 = 0;
LABEL_52:
    *&v201 = v100;
    *(&v201 + 1) = v123;

    String.UnicodeScalarView.append<A>(contentsOf:)();
    swift_bridgeObjectRelease_n();

    a3 = v192;
    (*v186)(v192, v79);
    goto LABEL_53;
  }

  v125 = v182;
  v126 = v124;
  v127 = v124;
  while (1)
  {
    v75 = (v125 & 0xC);
    v128 = (v125 & 1) == 0 || v75 == v21;
    v129 = v128;
    if (v128)
    {
      break;
    }

    if (v126 < v127)
    {
      goto LABEL_134;
    }

    v130 = v125;
    if (v126 >= v97)
    {
      goto LABEL_134;
    }

LABEL_86:
    if ((v69 & 0x1000000000000000) != 0)
    {
      v134 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      if (!v129)
      {
        goto LABEL_108;
      }

      goto LABEL_99;
    }

    v131 = v130 >> 16;
    if ((v69 & 0x2000000000000000) != 0)
    {
      *&v201 = v67;
      *(&v201 + 1) = v198;
      v133 = &v201 + v131;
    }

    else
    {
      v132 = v197;
      if ((v67 & 0x1000000000000000) == 0)
      {
        v132 = _StringObject.sharedUTF8.getter();
      }

      v133 = (v132 + v131);
    }

    v134 = *v133;
    if ((*v133 & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    v135 = (__clz(v134 ^ 0xFF) - 24);
    if (v135 <= 2)
    {
      if (v135 != 1)
      {
        v134 = v133[1] & 0x3F | ((v134 & 0x1F) << 6);
      }

LABEL_98:
      if (!v129)
      {
        goto LABEL_108;
      }

      goto LABEL_99;
    }

    if (v135 == 3)
    {
      v136 = v133[1];
      v137 = v133[2];
      v138 = ((v134 & 0xF) << 12) | ((v136 & 0x3F) << 6);
    }

    else
    {
      v139 = v133[1];
      v140 = v133[2];
      v137 = v133[3];
      v138 = ((v134 & 0xF) << 18) | ((v139 & 0x3F) << 12) | ((v140 & 0x3F) << 6);
    }

    v134 = v138 & 0xFFFFFFC0 | v137 & 0x3F;
    if (!v129)
    {
LABEL_108:
      if (v200 <= v125 >> 16)
      {
        goto LABEL_136;
      }

      goto LABEL_109;
    }

LABEL_99:
    if (v75 == v21)
    {
      v125 = sub_1000876A8(v125, v67, v69);
    }

    if (v200 <= v125 >> 16)
    {
      goto LABEL_135;
    }

    if ((v125 & 1) == 0)
    {
      v125 = v125 & 0xC | sub_10002F094(v125, v67, v69) & 0xFFFFFFFFFFFFFFF3 | 1;
    }

LABEL_109:
    if ((v69 & 0x1000000000000000) != 0)
    {
      v125 = String.UnicodeScalarView._foreignIndex(after:)();
      if (v134 == 42)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v141 = v125 >> 16;
      if ((v69 & 0x2000000000000000) != 0)
      {
        *&v201 = v67;
        *(&v201 + 1) = v198;
        v143 = *(&v201 + v141);
      }

      else
      {
        v142 = v197;
        if ((v67 & 0x1000000000000000) == 0)
        {
          v142 = _StringObject.sharedUTF8.getter();
        }

        v143 = *(v142 + v141);
      }

      v144 = v143;
      v145 = __clz(v143 ^ 0xFF) - 24;
      if (v144 >= 0)
      {
        LOBYTE(v145) = 1;
      }

      v125 = ((v141 + v145) << 16) | 5;
      if (v134 == 42)
      {
LABEL_120:
        v201 = v199;
        String.UnicodeScalarView.append<A>(contentsOf:)();
        goto LABEL_69;
      }
    }

    String.UnicodeScalarView.append(_:)();
LABEL_69:
    v126 = (v125 >> 14);
    v127 = v213;
    if (v125 >> 14 == v97)
    {

      v123 = v212.__r_.__value_.__l.__size_;
      v100 = v212.__r_.__value_.__r.__words[0];
      v79 = v194;
      goto LABEL_52;
    }
  }

  v130 = v125;
  if (v75 == v21)
  {
    v130 = sub_1000876A8(v125, v67, v69);
    v127 = v213;
  }

  if (v130 >> 14 >= v127 && v130 >> 14 < v97)
  {
    if ((v130 & 1) == 0)
    {
      v130 = sub_10002F094(v130, v67, v69);
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  (*v164)(v75, v167);

  sub_10002F1C8(&qword_10016AB18, &type metadata accessor for AccessCredential.Error, &protocol conformance descriptor for AccessCredential.Error);
  v156 = v161;
  swift_allocError();
  (*(v160 + 32))(v157, v169, v156);

  sub_10001BBEC(&v204);
LABEL_138:

  return v21;
}

char *sub_10002EFB0(char *result)
{
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_10002EFC4(uint64_t a1)
{
  result = *(a1 + 23);
  if (result < 0)
  {
    return *(a1 + 8);
  }

  return result;
}

unint64_t sub_10002EFDC()
{
  result = qword_10016AB30;
  if (!qword_10016AB30)
  {
    sub_10002AD94(&qword_10016AB28, &qword_100131390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB30);
  }

  return result;
}

unint64_t sub_10002F040()
{
  result = qword_10016AB38;
  if (!qword_10016AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB38);
  }

  return result;
}

unint64_t sub_10002F094(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_10002F1C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002F210()
{
  result = qword_10016AB48;
  if (!qword_10016AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB48);
  }

  return result;
}

uint64_t sub_10002F264()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_10002FDA4(v4, qword_10016AB50);
  sub_10002FD14(v4, qword_10016AB50);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

unint64_t *sub_10002F3B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10007E9EC(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10002FE08(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10007E9EC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10002F4CC()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002F52C()
{
  v1 = sub_100026F94(&qword_10016AC08, &qword_100131520);
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = type metadata accessor for Bag();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10002F6A8;

  return BaseObjectGraph.inject<A>(_:)(v3, v2, v2);
}

uint64_t sub_10002F6A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10002FCA4;
  }

  else
  {
    v2 = sub_10002F7BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002F7BC()
{
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_10002F898;
  v3 = *(v0 + 24);

  return Bag.Value.currentOrNil()(v0 + 16, v3);
}

uint64_t sub_10002F898()
{

  return _swift_task_switch(sub_10002F994, 0, 0);
}

uint64_t sub_10002F994()
{
  if (v0[2])
  {
    v1 = sub_10002F3B8(v0[2]);

    if (!v1)
    {
      if (qword_10016A2D8 != -1)
      {
        swift_once();
      }

      v2 = v0[7];
      v16 = v0[8];
      v4 = v0[5];
      v3 = v0[6];
      v5 = v0[3];
      v6 = v0[4];
      v7 = type metadata accessor for OSLogger();
      sub_10002FD14(v7, qword_10016AB50);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      v8 = type metadata accessor for AccessCredential.Error();
      sub_10002FD4C();
      swift_allocError();
      (*(*(v8 - 8) + 104))(v9, enum case for AccessCredential.Error.invalidRevokedCredentialIdList(_:), v8);
      swift_willThrow();
      (*(v6 + 8))(v4, v5);
      (*(v2 + 8))(v16, v3);

      v10 = v0[1];

      return v10();
    }
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v13 + 8))(v12, v14);

  v15 = v0[1];

  return v15(v1);
}

uint64_t sub_10002FCA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002FD14(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10002FD4C()
{
  result = qword_10016AB18;
  if (!qword_10016AB18)
  {
    type metadata accessor for AccessCredential.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB18);
  }

  return result;
}

uint64_t *sub_10002FDA4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10002FE08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002FE64()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_10002FDA4(v4, qword_10016AC10);
  sub_10002FD14(v4, qword_10016AC10);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_10002FFB8()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016AC28);
  sub_10002FD14(v0, qword_10016AC28);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100030074()
{
  v0 = type metadata accessor for Table();
  sub_10002FDA4(v0, qword_1001732E8);
  sub_10002FD14(v0, qword_1001732E8);
  return Table.init(_:database:)();
}

uint64_t sub_1000300E0()
{
  v0 = type metadata accessor for Table();
  sub_10002FDA4(v0, qword_100173300);
  sub_10002FD14(v0, qword_100173300);
  return Table.init(_:database:)();
}

uint64_t sub_10003014C()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_100173318);
  sub_10002FD14(v0, qword_100173318);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030204()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_100173330);
  sub_10002FD14(v0, qword_100173330);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000302B4()
{
  v0 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FDA4(v0, qword_100173348);
  sub_10002FD14(v0, qword_100173348);
  sub_10002B95C(&qword_10016ADE0, &qword_10016ADB0, &unk_100130CD0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10003036C()
{
  v0 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
  sub_10002FDA4(v0, qword_100173360);
  sub_10002FD14(v0, qword_100173360);
  sub_10002B95C(&qword_10016AD78, &qword_10016AD40, &qword_100130C88, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030428()
{
  v0 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FDA4(v0, qword_100173378);
  sub_10002FD14(v0, qword_100173378);
  sub_10002B95C(&qword_10016AD70, &qword_10016AD58, &qword_100130C98, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000304D8()
{
  v0 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
  sub_10002FDA4(v0, qword_100173390);
  sub_10002FD14(v0, qword_100173390);
  sub_10002B95C(&qword_10016AD78, &qword_10016AD40, &qword_100130C88, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030584()
{
  v0 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  sub_10002FDA4(v0, qword_1001733A8);
  sub_10002FD14(v0, qword_1001733A8);
  sub_10002B95C(&qword_10016AE10, &qword_10016AE08, &qword_100130D18, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030640()
{
  v0 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FDA4(v0, qword_1001733C0);
  sub_10002FD14(v0, qword_1001733C0);
  sub_10002B95C(&qword_10016AD70, &qword_10016AD58, &qword_100130C98, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100030700()
{
  v0 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FDA4(v0, qword_1001733D8);
  sub_10002FD14(v0, qword_1001733D8);
  sub_10002B95C(&qword_10016AD70, &qword_10016AD58, &qword_100130C98, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000307B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 224) = a5;
  *(v6 + 232) = v5;
  *(v6 + 648) = a4;
  *(v6 + 208) = a2;
  *(v6 + 216) = a3;
  *(v6 + 200) = a1;
  *(v6 + 240) = *v5;
  v7 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  *(v6 + 248) = v7;
  *(v6 + 256) = *(v7 - 8);
  *(v6 + 264) = swift_task_alloc();
  v8 = type metadata accessor for Table();
  *(v6 + 272) = v8;
  *(v6 + 280) = *(v8 - 8);
  *(v6 + 288) = swift_task_alloc();
  v9 = type metadata accessor for Delete();
  *(v6 + 296) = v9;
  *(v6 + 304) = *(v9 - 8);
  *(v6 + 312) = swift_task_alloc();
  v10 = type metadata accessor for AccessCredential();
  *(v6 + 320) = v10;
  *(v6 + 328) = *(v10 - 8);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  *(v6 + 360) = swift_task_alloc();
  v11 = type metadata accessor for Row();
  *(v6 + 368) = v11;
  *(v6 + 376) = *(v11 - 8);
  *(v6 + 384) = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  *(v6 + 392) = v12;
  *(v6 + 400) = *(v12 - 8);
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();

  return _swift_task_switch(sub_100030AD8, v5, 0);
}

uint64_t sub_100030AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016AC28);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "credential(for:)", "", v7, 2u);
  }

  v9 = v3[51];
  v10 = v3[52];
  v11 = v3[49];
  v12 = v3[50];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[53] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v13 = swift_task_alloc();
  v3[54] = v13;
  *v13 = v3;
  v13[1] = sub_100030CD0;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_100030CD0()
{
  v2 = *v1;
  v2[55] = v0;

  if (v0)
  {
    v3 = v2[29];

    return _swift_task_switch(sub_100032834, v3, 0);
  }

  else
  {
    v4 = sub_100026F94(&qword_10016AD88, &qword_100130CB0);
    v5 = swift_task_alloc();
    v2[56] = v5;
    *v5 = v2;
    v5[1] = sub_100030E74;

    return BaseObjectGraph.inject<A>(_:)(v2 + 13, v4, v4);
  }
}

uint64_t sub_100030E74()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = sub_10003294C;
  }

  else
  {
    v3 = *(v2 + 232);
    if (*(v2 + 648))
    {
      v4 = sub_100031134;
    }

    else
    {
      v4 = sub_100030FA4;
    }
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100030FA4()
{
  v1 = sub_100026F50((*(v0 + 232) + 152), *(*(v0 + 232) + 176));
  v2 = *v1;
  *(v0 + 464) = *v1;

  return _swift_task_switch(sub_100031034, v2, 0);
}

uint64_t sub_100031034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  *(v3 + 472) = v5;
  v6 = swift_task_alloc();
  *(v3 + 480) = v6;
  *v6 = v3;
  v6[1] = sub_100031330;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100031134()
{
  v1 = sub_100088054(v0[26], v0[27]);
  if (v2)
  {
    v0[24] = v1;
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    swift_willThrowTypedImpl();
LABEL_4:
    sub_100026FDC(v0 + 13);
    sub_100042AFC((v0 + 2));
    sub_100042820("credential(for:)", 16, 2, v0[53]);

    v4 = v0[1];

    return v4();
  }

  v3 = v0[57];

  AccessCredential.init(from:verifySignature:)();
  if (v3)
  {
    goto LABEL_4;
  }

  v6 = v0[29];
  v0[66] = AccessCredential.requestId.getter();
  v0[67] = v7;
  v8 = sub_100026F50((v6 + 152), *(v6 + 176));
  v9 = *v8;
  v0[68] = *v8;

  return _swift_task_switch(sub_100031D20, v9, 0);
}

uint64_t sub_100031330(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v5 = *(v3 + 464);
  if (v1)
  {
    v6 = sub_10003155C;
  }

  else
  {
    v6 = sub_100031464;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100031464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[58];
  v5 = *(v4 + 216);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v3[61];
  v8 = v3[62];
  v9 = v3[45];
  v10 = v3[26];
  v11 = v3[27];
  *(v4 + 216) = v6;
  sub_100040EF8(v7, v10, v11, v9);

  v12 = *(v4 + 216);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  v15 = v13;
  if (v8)
  {
    if ((v15 & 1) == 0)
    {
      *(v4 + 216) = v14;
      v3[63] = v8;
      v16 = v3[29];
      sub_100042BA4(v3[26], v3[27]);
      v17 = sub_100031738;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v15)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v16 = v3[29];
  v18 = v3[26];
  v19 = v3[27];
  *(v4 + 216) = v14;
  sub_100042BA4(v18, v19);
  v17 = sub_1000315D4;
LABEL_10:
  a1 = v17;
  a2 = v16;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10003155C()
{
  v0[63] = v0[62];
  v1 = v0[29];
  sub_100042BA4(v0[26], v0[27]);

  return _swift_task_switch(sub_100031738, v1, 0);
}

uint64_t sub_1000315D4()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[29];
    sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
    v5 = *sub_100026F50((v4 + 232), *(v4 + 256));

    return _swift_task_switch(sub_100031CB0, v5, 0);
  }

  else
  {
    v6 = v0[27];
    (*(v2 + 32))(v0[48], v3, v1);
    v7 = swift_task_alloc();
    v0[64] = v7;
    *v7 = v0;
    v7[1] = sub_100031860;
    v8 = v0[48];
    v9 = v0[43];
    v10 = v0[26];

    return sub_10003315C(v9, v8, v10, v6);
  }
}

uint64_t sub_100031738()
{
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  sub_100042820("credential(for:)", 16, 2, v0[53]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100031860()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_100032A6C;
  }

  else
  {
    v4 = sub_10003198C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003198C()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 352);
  v3 = *(*(v0 + 328) + 32);
  v3(v2, *(v0 + 344), *(v0 + 320));
  v4 = (*(v0 + 88))(*(v0 + 16), *(v0 + 24), v2);
  if (v1)
  {
    v6 = v4;
    v7 = v5;
  }

  else
  {
    AccessCredential.entitlements.getter();
    sub_100026F50((v0 + 48), *(v0 + 72));
    v8 = dispatch thunk of EntitlementChecker.hasEntitlements(_:)();

    if (v8)
    {
      v9 = *(v0 + 352);
      v10 = *(v0 + 320);
      v11 = *(v0 + 200);
      (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
      sub_100026FDC((v0 + 104));
      sub_100042AFC(v0 + 16);
      v3(v11, v9, v10);
      sub_100042820("credential(for:)", 16, 2, *(v0 + 424));

      v12 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_100042B50();
    *(v0 + 176) = 0;
    *(v0 + 184) = 0;
    swift_willThrowTypedImpl();
    v6 = 0;
    v7 = 0;
  }

  v13 = *(v0 + 376);
  v14 = *(v0 + 384);
  v15 = *(v0 + 368);
  v16 = *(v0 + 352);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  sub_100042B50();
  swift_allocError();
  *v19 = v6;
  v19[1] = v7;
  (*(v18 + 8))(v16, v17);
  (*(v13 + 8))(v14, v15);
  sub_100026FDC((v0 + 104));
  sub_100042AFC(v0 + 16);
  sub_100042820("credential(for:)", 16, 2, *(v0 + 424));

  v12 = *(v0 + 8);
LABEL_7:

  return v12();
}

uint64_t sub_100031D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 552) = v6;
  *v6 = v3;
  v6[1] = sub_100031E1C;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100031E1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  v5 = *(v3 + 544);
  if (v1)
  {
    v6 = sub_100032050;
  }

  else
  {
    v6 = sub_100031F54;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100031F54(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[68];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[71];
  v9 = v3[70];
  v10 = v3[67];
  v11 = v3[66];
  *(v4 + 216) = v7;
  sub_1000408BC(v9, v11, v10);
  v3[72] = v8;

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v8)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;

      v3[73] = v8;
      a2 = v3[29];
      a1 = sub_10003234C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v15 = v3[29];
  *(v4 + 216) = v13;

  a1 = sub_1000320C0;
  a2 = v15;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100032050()
{

  v0[73] = v0[71];
  v1 = v0[29];

  return _swift_task_switch(sub_10003234C, v1, 0);
}

uint64_t sub_1000320C0()
{
  v1 = *(v0 + 576);
  v2 = (*(v0 + 88))(*(v0 + 16), *(v0 + 24), *(v0 + 336));
  if (v1)
  {
    v4 = v2;
    v5 = v3;
LABEL_8:
    v12 = *(v0 + 328);
    v13 = *(v0 + 336);
    v14 = *(v0 + 320);
    sub_100042B50();
    swift_allocError();
    *v15 = v4;
    v15[1] = v5;
    (*(v12 + 8))(v13, v14);
    sub_100026FDC((v0 + 104));
    sub_100042AFC(v0 + 16);
    sub_100042820("credential(for:)", 16, 2, *(v0 + 424));

    v16 = *(v0 + 8);

    return v16();
  }

  AccessCredential.entitlements.getter();
  sub_100026F50((v0 + 48), *(v0 + 72));
  v6 = dispatch thunk of EntitlementChecker.hasEntitlements(_:)();

  if ((v6 & 1) == 0)
  {
    sub_100042B50();
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    swift_willThrowTypedImpl();
    v4 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v7 = *(v0 + 216);
  v8 = swift_task_alloc();
  *(v0 + 592) = v8;
  *v8 = v0;
  v8[1] = sub_10003248C;
  v9 = *(v0 + 336);
  v10 = *(v0 + 208);

  return sub_10003E568(v10, v7, v9, v0 + 16, 1);
}

uint64_t sub_10003234C()
{
  (*(v0[41] + 8))(v0[42], v0[40]);
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  sub_100042820("credential(for:)", 16, 2, v0[53]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003248C()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_1000326F4;
  }

  else
  {
    v4 = sub_1000325B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000325B8()
{
  (*(v0[41] + 32))(v0[25], v0[42], v0[40]);
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  sub_100042820("credential(for:)", 16, 2, v0[53]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000326F4()
{
  (*(v0[41] + 8))(v0[42], v0[40]);
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  sub_100042820("credential(for:)", 16, 2, v0[53]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100032834()
{
  sub_100042820("credential(for:)", 16, 2, *(v0 + 424));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003294C()
{
  sub_100042AFC(v0 + 16);
  sub_100042820("credential(for:)", 16, 2, *(v0 + 424));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100032A6C()
{
  v0[76] = *sub_100026F50((v0[29] + 152), *(v0[29] + 176));

  v1 = swift_task_alloc();
  v0[77] = v1;
  *v1 = v0;
  v1[1] = sub_100032B50;
  v2 = v0[59];

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100032B50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 624) = a1;
  *(v4 + 632) = v1;

  v5 = *(v3 + 608);
  if (v1)
  {
    v6 = sub_100032F94;
  }

  else
  {
    v6 = sub_100032C88;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100032C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[76];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 216) = v7;
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10002FD14(v3[34], qword_1001732E8);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v28 = v3[79];
  v8 = v3[35];
  v9 = v3[36];
  v11 = v3[33];
  v10 = v3[34];
  v12 = v3[32];
  v27 = v3[31];
  v13 = v3[26];
  v14 = v3[27];
  v15 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v15, qword_100173318);
  v3[20] = v13;
  v3[21] = v14;
  static Expression<A>.== infix<A>(_:_:)();
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  QueryType.where(_:)();
  (*(v12 + 8))(v11, v27);
  QueryType.delete()();
  (*(v8 + 8))(v9, v10);
  Connection.run(_:)();
  (*(v3[38] + 8))(v3[39], v3[37]);

  v19 = *(v4 + 216);
  v6 = __OFSUB__(v19, 1);
  v20 = v19 - 1;
  v21 = v6;
  if (v28)
  {
    if ((v21 & 1) == 0)
    {
      *(v4 + 216) = v20;
      v3[80] = v28;
      v22 = v3[29];
      sub_100042BA4(v3[26], v3[27]);
      v23 = sub_10003300C;
      goto LABEL_13;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return _swift_task_switch(v16, v17, v18);
  }

  if (v21)
  {
    goto LABEL_19;
  }

  v22 = v3[29];
  v24 = v3[26];
  v25 = v3[27];
  *(v4 + 216) = v20;
  sub_100042BA4(v24, v25);
  v23 = sub_100032F24;
LABEL_13:
  v16 = v23;
  v17 = v22;
  v18 = 0;

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100032F24()
{
  v1 = *sub_100026F50((*(v0 + 232) + 232), *(*(v0 + 232) + 256));

  return _swift_task_switch(sub_100042C58, v1, 0);
}

uint64_t sub_100032F94()
{
  v0[80] = v0[79];
  v1 = v0[29];
  sub_100042BA4(v0[26], v0[27]);

  return _swift_task_switch(sub_10003300C, v1, 0);
}

uint64_t sub_10003300C()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];

  (*(v2 + 8))(v1, v3);
  sub_100026FDC(v0 + 13);
  sub_100042AFC((v0 + 2));
  sub_100042820("credential(for:)", 16, 2, v0[53]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003315C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v5[33] = *v4;
  type metadata accessor for LogMessage.StringInterpolation();
  v5[34] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();

  return _swift_task_switch(sub_100033278, v4, 0);
}

uint64_t sub_100033278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v4 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v4, qword_100173348);
  Row.get<A>(_:)();
  v6 = v3[36];
  v5 = v3[37];
  v7 = v3[35];
  v8 = v3[25];
  default argument 1 of static AccessCredential.isExpired(_:at:)();
  v9 = static AccessCredential.isExpired(_:at:)();
  (*(v6 + 8))(v5, v7);
  if (v9)
  {
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v11 = v3[30];
    v10 = v3[31];
    v12 = type metadata accessor for OSLogger();
    sub_10002FD14(v12, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._object = 0x800000010013A3B0;
    v13._countAndFlagsBits = 0xD000000000000028;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v3[17] = &type metadata for String;
    v3[14] = v11;
    v3[15] = v10;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v3 + 14), &qword_10016AB10, &unk_100130B10);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    v15 = type metadata accessor for AccessCredential.Error();
    sub_100042C10(&qword_10016AB18, &type metadata accessor for AccessCredential.Error, &protocol conformance descriptor for AccessCredential.Error);
    swift_allocError();
    *v16 = v8;
    (*(*(v15 - 8) + 104))(v16, enum case for AccessCredential.Error.invalidExpiresAtDate(_:), v15);
LABEL_7:
    swift_willThrow();

    v18 = v3[1];

    return v18();
  }

  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v17 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v17, qword_100173330);
  Row.get<A>(_:)();
  v20 = v3[21];
  v21 = v3[22];
  v3[38] = v20;
  v3[39] = v21;
  v22 = sub_100088054(v20, v21);
  if (v23)
  {
    v24 = v22;

    v3[26] = v24;
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    swift_willThrowTypedImpl();
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v26 = v3[30];
    v25 = v3[31];
    v27 = type metadata accessor for OSLogger();
    sub_10002FD14(v27, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._countAndFlagsBits = 0xD000000000000037;
    v28._object = 0x800000010013A340;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v3[5] = &type metadata for String;
    v3[2] = v26;
    v3[3] = v25;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v3 + 2), &qword_10016AB10, &unk_100130B10);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    goto LABEL_7;
  }

  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v17, qword_100173318);
  Row.get<A>(_:)();
  v30 = v3[32];
  v31 = v3[24];
  v3[40] = v3[23];
  v3[41] = v31;
  v32 = sub_100026F50((v30 + 152), *(v30 + 176));
  v33 = *v32;
  v3[42] = *v32;

  return _swift_task_switch(sub_1000338FC, v33, 0);
}

uint64_t sub_1000338FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 344) = v6;
  *v6 = v3;
  v6[1] = sub_1000339F8;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000339F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 336);
  if (v1)
  {
    v6 = sub_100033C2C;
  }

  else
  {
    v6 = sub_100033B2C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100033B2C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[42];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[44];
  v9 = v3[45];
  v10 = v3[40];
  v11 = v3[41];
  *(v4 + 216) = v7;
  sub_1000408BC(v8, v10, v11);
  v3[46] = v9;

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;

      v3[47] = v9;
      a2 = v3[32];
      a1 = sub_100033F7C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v15 = v3[32];
  *(v4 + 216) = v13;

  a1 = sub_100033CA8;
  a2 = v15;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100033C2C()
{

  v0[47] = v0[45];
  v1 = v0[32];

  return _swift_task_switch(sub_100033F7C, v1, 0);
}

uint64_t sub_100033CA8()
{
  v1 = v0[46];
  AccessCredential.init(from:verifySignature:)();
  if (v1)
  {
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v3 = v0[30];
    v2 = v0[31];
    v4 = type metadata accessor for OSLogger();
    sub_10002FD14(v4, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._object = 0x800000010013A380;
    v5._countAndFlagsBits = 0xD00000000000002BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    v0[9] = &type metadata for String;
    v0[6] = v3;
    v0[7] = v2;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 6), &qword_10016AB10, &unk_100130B10);
    v6._countAndFlagsBits = 2629678;
    v6._object = 0xE300000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    swift_getErrorValue();
    v7 = v0[18];
    v8 = v0[19];
    v0[13] = v8;
    v9 = sub_100042BAC(v0 + 10);
    (*(*(v8 - 8) + 16))(v9, v7, v8);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 10), &qword_10016AB10, &unk_100130B10);
    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    swift_willThrow();

    v11 = v0[1];
  }

  else
  {

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_100033F7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033FEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for OSSignpostID();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000340E4, v2, 0);
}

uint64_t sub_1000340E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016AC28);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "hasCredential(for:)", "", v7, 2u);
  }

  v9 = v3[8];
  v10 = v3[9];
  v11 = v3[6];
  v12 = v3[7];
  v13 = v3[4];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[10] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v14 = sub_100026F50((v13 + 152), *(v13 + 176));
  v15 = *v14;
  v3[11] = *v14;

  return _swift_task_switch(sub_1000342C0, v15, 0);
}

uint64_t sub_1000342C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  *v6 = v3;
  v6[1] = sub_1000343BC;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000343BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 88);
  if (v1)
  {
    v6 = sub_1000345EC;
  }

  else
  {
    v6 = sub_1000344F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000344F0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 88);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v3 + 104);
  v9 = *(v3 + 112);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  *(v4 + 216) = v7;
  sub_10003479C(v8, v10, v11, (v3 + 128));

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;

      *(v3 + 120) = v9;
      a2 = *(v3 + 32);
      a1 = sub_1000346FC;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v15 = *(v3 + 32);
  *(v4 + 216) = v13;

  *(v3 + 129) = *(v3 + 128);
  a1 = sub_10003465C;
  a2 = v15;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000345EC()
{

  v0[15] = v0[14];
  v1 = v0[4];

  return _swift_task_switch(sub_1000346FC, v1, 0);
}

uint64_t sub_10003465C()
{
  sub_100042820("hasCredential(for:)", 19, 2, *(v0 + 80));

  v1 = *(v0 + 8);
  v2 = *(v0 + 129);

  return v1(v2);
}

uint64_t sub_1000346FC()
{
  sub_100042820("hasCredential(for:)", 19, 2, *(v0 + 80));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10003479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v6 = sub_100026F94(&qword_10016AD10, &qword_100132950);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = __chkstk_darwin(v6);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v49 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Table();
  v53 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v44 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  v18 = sub_10002FD14(v13, qword_1001732E8);
  v19 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v43 = v18;
  v20._countAndFlagsBits = QueryType.name.getter();
  v52 = a1;
  LOBYTE(v18) = Connection.tableExists(_:)(v20);

  if ((v18 & 1) == 0)
  {
LABEL_11:
    *a4 = 0;
    return result;
  }

  v42 = v12;
  if (qword_10016A2F8 != -1)
  {
    swift_once();
  }

  v22 = v10;
  v41 = a4;
  sub_10002FD14(v13, qword_100173300);
  v24 = v50;
  v23 = v51;
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v25 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v26 = sub_10002FD14(v25, qword_100173318);
  v55 = v24;
  v56 = v23;
  v27 = v42;
  v40 = v26;
  static Expression<A>.== infix<A>(_:_:)();
  QueryType.where(_:)();
  v28 = *(v46 + 8);
  v28(v27, v49);
  QueryType.exists.getter();
  v46 = v19;
  v30 = v53 + 8;
  v29 = *(v53 + 8);
  v29(v17, v13);
  v31 = v54;
  Connection.scalar<A>(_:)();
  v32 = v48;
  v33 = v22;
  v34 = *(v47 + 1);
  result = v34(v33, v48);
  if (!v31)
  {
    v39 = v34;
    v47 = v29;
    result = v40;
    v53 = v30;
    if ((v57 & 1) == 0)
    {
      v35 = v28;
      v55 = v50;
      v56 = v51;
      v36 = v42;
      v54 = 0;
      static Expression<A>.== infix<A>(_:_:)();
      v37 = v44;
      QueryType.where(_:)();
      v35(v36, v49);
      v38 = v45;
      QueryType.exists.getter();
      v47(v37, v13);
      Connection.scalar<A>(_:)();
      return v39(v38, v32);
    }

    a4 = v41;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100034D04(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v2[39] = *v1;
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[42] = v3;
  v2[43] = *(v3 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return _swift_task_switch(sub_100034E3C, v1, 0);
}

uint64_t sub_100034E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016AC28);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "cleanupInvalidCredentials", "", v7, 2u);
  }

  v9 = v3[44];
  v10 = v3[45];
  v11 = v3[42];
  v12 = v3[43];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[46] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v13 = sub_100026F94(&qword_10016AD88, &qword_100130CB0);
  v14 = swift_task_alloc();
  v3[47] = v14;
  *v14 = v3;
  v14[1] = sub_100035048;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v13, v13);
}

uint64_t sub_100035048()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 304);
  if (v0)
  {
    v4 = sub_100035C14;
  }

  else
  {
    v4 = sub_100035174;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100035174()
{
  v1 = *(v0 + 304);
  v2 = sub_100026F50((v1 + 152), *(v1 + 176));
  sub_100026EEC(v1 + 312, v0 + 56);
  sub_100026EEC(v0 + 16, v0 + 96);
  v3 = *v2;
  *(v0 + 392) = *v2;

  return _swift_task_switch(sub_100035204, v3, 0);
}

uint64_t sub_100035204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 400) = v6;
  *v6 = v3;
  v6[1] = sub_100035300;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100035300(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 408) = a1;
  *(v4 + 416) = v1;

  v5 = *(v3 + 392);
  if (v1)
  {
    v6 = sub_1000355C4;
  }

  else
  {
    v6 = sub_100035434;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100035434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 392);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v3 + 408);
  v9 = *(v3 + 416);
  v10 = *(v3 + 312);
  *(v4 + 216) = v7;
  sub_100035D8C(v8, v10, (v3 + 288));

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (!v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;
      *(v3 + 424) = *(v3 + 288);
      sub_100026FDC((v3 + 56));
      sub_100026FDC((v3 + 96));
      v15 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
      v16 = swift_task_alloc();
      *(v3 + 432) = v16;
      *v16 = v3;
      v16[1] = sub_100035640;
      a1 = v3 + 136;
      a2 = v15;
      a3 = v15;

      return BaseObjectGraph.inject<A>(_:)(a1, a2, a3);
    }

LABEL_16:
    __break(1u);
    return BaseObjectGraph.inject<A>(_:)(a1, a2, a3);
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v4 + 216) = v12;
  *(v3 + 448) = v9;
  v14 = *(v3 + 304);
  sub_100026FDC((v3 + 56));
  sub_100026FDC((v3 + 96));

  return _swift_task_switch(sub_100035768, v14, 0);
}

uint64_t sub_1000355C4()
{
  v0[56] = v0[52];
  v1 = v0[38];
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 12);

  return _swift_task_switch(sub_100035768, v1, 0);
}

uint64_t sub_100035640()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);

    v4 = sub_100035CCC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 304);
    v4 = sub_100035828;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100035768()
{
  sub_100026FDC(v0 + 2);
  sub_100042820("cleanupInvalidCredentials", 25, 2, v0[46]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100035828()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = type metadata accessor for AccessCredentialDataCleanupTask();
    v3 = (v1 + 40);
    do
    {
      v26 = v2;
      v4 = *(v0 + 328);
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = swift_allocObject();

      swift_defaultActor_initialize();
      *(v7 + 112) = v5;
      *(v7 + 120) = v6;
      *(v0 + 200) = v25;
      *(v0 + 208) = sub_100042C10(&qword_10016AD98, type metadata accessor for AccessCredentialDataCleanupTask, &unk_100132460);
      *(v0 + 176) = v7;
      v8 = type metadata accessor for TaskPriority();
      v9 = *(v8 - 8);
      (*(v9 + 56))(v4, 1, 1, v8);
      sub_100026EEC(v0 + 176, v0 + 216);
      v10 = qword_10016A6C8;

      if (v10 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 320);
      v11 = *(v0 + 328);
      v13 = *(v0 + 296);
      v14 = qword_1001738A8;
      v15 = sub_100042C10(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = v15;
      sub_10002C604((v0 + 216), (v16 + 4));
      v16[9] = v13;
      sub_100042774(v11, v12);
      LODWORD(v12) = (*(v9 + 48))(v12, 1, v8);

      v17 = *(v0 + 320);
      if (v12 == 1)
      {
        sub_10002BA6C(*(v0 + 320), &qword_10016AD80, &qword_1001311B0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v9 + 8))(v17, v8);
      }

      v18 = v16[2];
      swift_unknownObjectRetain();

      if (v18)
      {
        swift_getObjectType();
        v19 = dispatch thunk of Actor.unownedExecutor.getter();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      sub_10002BA6C(*(v0 + 328), &qword_10016AD80, &qword_1001311B0);
      if (v21 | v19)
      {
        *(v0 + 256) = 0;
        *(v0 + 264) = 0;
        *(v0 + 272) = v19;
        *(v0 + 280) = v21;
      }

      swift_task_create();

      sub_100026FDC((v0 + 176));
      v3 += 2;
      v2 = v26 - 1;
    }

    while (v26 != 1);
  }

  v22 = *(v0 + 368);

  sub_100026FDC((v0 + 136));
  sub_100026FDC((v0 + 16));
  sub_100042820("cleanupInvalidCredentials", 25, 2, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100035C14()
{
  sub_100042820("cleanupInvalidCredentials", 25, 2, *(v0 + 368));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100035CCC()
{
  sub_100026FDC(v0 + 2);
  sub_100042820("cleanupInvalidCredentials", 25, 2, v0[46]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100035D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void (***a3)(char *, uint64_t)@<X8>)
{
  v4 = v3;
  v158 = a2;
  v152 = type metadata accessor for Row();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v156 = v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  __chkstk_darwin(v8 - 8);
  v151 = v137 - v9;
  v10 = type metadata accessor for Date();
  v162 = *(v10 - 8);
  v163 = v10;
  __chkstk_darwin(v10);
  v161 = v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v147 = v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for Delete();
  v155 = *(v154 - 8);
  v14 = __chkstk_darwin(v154);
  v146 = v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v149 = v137 - v17;
  __chkstk_darwin(v16);
  v148 = (v137 - v18);
  v19 = sub_100026F94(&qword_10016A940, &qword_100130A60);
  v159 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v137 - v20;
  v167 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v170 = *(v167 - 8);
  __chkstk_darwin(v167);
  v166 = v137 - v22;
  v23 = type metadata accessor for Table();
  v164 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v165 = v137 - v28;
  __chkstk_darwin(v27);
  v160 = v137 - v29;
  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  v30 = sub_10002FD14(v23, qword_1001732E8);
  v171 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v168 = v30;
  v31._countAndFlagsBits = QueryType.name.getter();
  LOBYTE(v30) = Connection.tableExists(_:)(v31);

  if (v30)
  {
    v169 = a1;
    if (qword_10016A2F8 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v23, qword_100173300);
    v32._countAndFlagsBits = QueryType.name.getter();
    v33 = Connection.tableExists(_:)(v32);

    v34 = &selRef_processInfo;
    v145 = v26;
    v144 = a3;
    v157 = v23;
    if (v33)
    {
      v153 = v3;
      if (qword_10016A300 != -1)
      {
        swift_once();
      }

      v35 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
      v36 = sub_10002FD14(v35, qword_100173318);
      sub_10002B95C(&qword_10016ADC8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
      v173[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v173[1] = v37;
      v38._countAndFlagsBits = 0x28204E4920;
      v38._object = 0xE500000000000000;
      String.append(_:)(v38);
      v176 = v35;
      v177 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
      v39 = sub_100042BAC(&v174);
      (*(*(v35 - 8) + 16))(v39, v36, v35);
      sub_100042C10(&qword_10016AD68, &type metadata accessor for Table, &protocol conformance descriptor for Table);
      v40 = v165;
      v41 = v157;
      SchemaType.select(_:_:)();
      sub_100026FDC(&v174);
      v42 = v171;
      QueryType.expression.getter();
      v43 = v164;
      v143 = *(v164 + 1);
      v143(v40, v41);
      sub_10002B95C(&qword_10016ADD0, &qword_10016A940, &qword_100130A60, &protocol conformance descriptor for Expression<A>);
      v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v44);

      v159[1](v21, v19);
      v45._countAndFlagsBits = 41;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      sub_10002B95C(&qword_10016ADD8, &qword_10016AD18, &unk_100130C70, &protocol conformance descriptor for Expression<A>);
      v46 = v166;
      v47 = v167;
      ExpressionType.init(literal:)();
      v48 = v160;
      QueryType.where(_:)();
      (*(v170 + 8))(v46, v47);
      v176 = v41;
      v177 = v42;
      v49 = sub_100042BAC(&v174);
      (*(v43 + 2))(v49, v48, v41);
      v50 = v153;
      Connection.prepare(_:)();
      if (v50)
      {
        v143(v48, v41);
        return sub_100026FDC(&v174);
      }

      v80 = sub_100026FDC(&v174);
      v81 = __chkstk_darwin(v80);
      v137[-2] = v158;
      __chkstk_darwin(v81);
      v137[-2] = sub_100042C5C;
      v137[-1] = v82;
      v159 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v85 = v148;
      QueryType.delete()();
      v107 = Connection.run(_:)();
      (*(v155 + 8))(v85, v154);
      if (qword_10016A2E0 != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for OSLogger();
      sub_10002FD14(v108, qword_10016AC10);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v109._countAndFlagsBits = 0x20646574656C6544;
      v109._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v109);
      v176 = &type metadata for Int;
      v174 = v107;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v174, &qword_10016AB10, &unk_100130B10);
      v110._object = 0x800000010013A110;
      v110._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v110);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v143(v48, v157);
      v4 = 0;
      v34 = &selRef_processInfo;
    }

    else
    {
      v159 = _swiftEmptyArrayStorage;
    }

    v53 = v165;
    if (v34[96] != -1)
    {
      swift_once();
    }

    v153 = v4;
    v54 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v55 = sub_10002FD14(v54, qword_100173318);
    v176 = v54;
    v143 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
    v177 = v143;
    v56 = sub_100042BAC(&v174);
    v57 = *(v54 - 8);
    v58 = *(v57 + 16);
    v160 = v55;
    v148 = v54;
    v142 = v58;
    v141 = v57 + 16;
    v58(v56, v55, v54);
    v59 = sub_100042C10(&qword_10016AD68, &type metadata accessor for Table, &protocol conformance descriptor for Table);
    v60 = v157;
    v140 = v59;
    SchemaType.select(_:_:)();
    sub_100026FDC(&v174);
    if (qword_10016A310 != -1)
    {
      swift_once();
    }

    v61 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
    sub_10002FD14(v61, qword_100173348);
    v62 = v161;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v64 = v63;
    (*(v162 + 1))(v62, v163);
    v174 = v64;
    v65 = v166;
    static Expression<A>.< infix<A>(_:_:)();
    v66 = v145;
    v67 = v171;
    v68 = v53;
    QueryType.where(_:)();
    v70 = v170 + 8;
    v69 = *(v170 + 8);
    v69(v65, v167);
    v71 = v164;
    v73 = (v164 + 8);
    v72 = *(v164 + 1);
    v72(v68, v60);
    v176 = v60;
    v177 = v67;
    v74 = sub_100042BAC(&v174);
    (*(v71 + 2))(v74, v66, v60);
    v75 = v153;
    Connection.prepare(_:)();
    if (v75)
    {
      v72(v66, v60);

      return sub_100026FDC(&v174);
    }

    else
    {
      v163 = v69;
      v164 = v72;
      v76 = v73;
      v170 = v70;
      v77 = sub_100026FDC(&v174);
      v78 = __chkstk_darwin(v77);
      v137[-2] = v158;
      __chkstk_darwin(v78);
      v137[-2] = sub_1000427E4;
      v137[-1] = v79;
      v162 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v83 = v149;
      v84 = v145;
      QueryType.delete()();
      v86 = Connection.run(_:)();
      v153 = 0;
      v87 = *(v155 + 8);
      v155 += 8;
      v138 = v87;
      v87(v83, v154);
      if (qword_10016A2E0 != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for OSLogger();
      v89 = sub_10002FD14(v88, qword_10016AC10);
      v90 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v91 = *(type metadata accessor for LogMessage() - 8);
      v92 = *(v91 + 80);
      v93 = (v92 + 32) & ~v92;
      v137[2] = *(v91 + 72);
      v137[1] = v92;
      v137[3] = v90;
      v94 = swift_allocObject();
      v139 = xmmword_10012FA10;
      *(v94 + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v95._countAndFlagsBits = 0x20646574656C6544;
      v95._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v95);
      v176 = &type metadata for Int;
      v174 = v86;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v174, &qword_10016AB10, &unk_100130B10);
      v96._object = 0x800000010013A0D0;
      v96._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v96);
      v137[4] = v93;
      LogMessage.init(stringInterpolation:)();
      v137[6] = v88;
      v137[5] = v89;
      Logger.info(_:)();

      v97 = v148;
      v98 = v143;
      v173[3] = v148;
      v173[4] = v143;
      v99 = sub_100042BAC(v173);
      v100 = v142;
      v142(v99, v160, v97);
      sub_100026F94(&qword_10016AD50, &qword_100130C90);
      v101 = swift_allocObject();
      *(v101 + 16) = v139;
      if (qword_10016A308 != -1)
      {
        swift_once();
      }

      v102 = sub_10002FD14(v97, qword_100173330);
      *(v101 + 56) = v97;
      *(v101 + 64) = v98;
      v103 = sub_100042BAC((v101 + 32));
      v100(v103, v102, v97);
      v104 = v157;
      v176 = v157;
      v177 = v171;
      sub_100042BAC(&v174);
      SchemaType.select(_:_:)();

      sub_100026FDC(v173);
      v105 = v153;
      v106 = Connection.prepare(_:)();
      if (v105)
      {
        v164(v84, v104);

        return sub_100026FDC(&v174);
      }

      v111 = v106;
      v158 = v102;
      v142 = v76;
      sub_100026FDC(&v174);

      v112 = dispatch thunk of _AnySequenceBox._makeIterator()();
      v141 = v111;

      v113 = v151;
      v161 = v112;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v114 = v150;
      v115 = *(v150 + 48);
      v116 = v152;
      v153 = v150 + 48;
      v149 = v115;
      if ((v115)(v113, 1, v152) == 1)
      {
        v117 = _swiftEmptyArrayStorage;
      }

      else
      {
        v123 = *(v114 + 32);
        v122 = v114 + 32;
        v143 = v123;
        v148 = (v122 - 24);
        v117 = _swiftEmptyArrayStorage;
        v150 = v122;
        (v123)(v156, v113, v116);
        while (1)
        {
          Row.get<A>(_:)();
          v126 = sub_100088054(v174, v175);
          v128 = v127;

          if (v128)
          {
            v174 = v126;
            sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
            swift_willThrowTypedImpl();
            Row.get<A>(_:)();
            v129 = v174;
            v130 = v175;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v117 = sub_10007E054(0, *(v117 + 2) + 1, 1, v117);
            }

            v132 = *(v117 + 2);
            v131 = *(v117 + 3);
            if (v132 >= v131 >> 1)
            {
              v117 = sub_10007E054((v131 > 1), v132 + 1, 1, v117);
            }

            v124 = v152;
            (*v148)(v156, v152);
            *(v117 + 2) = v132 + 1;
            v133 = &v117[16 * v132];
            *(v133 + 4) = v129;
            *(v133 + 5) = v130;
            v104 = v157;
          }

          else
          {
            v124 = v152;
            (*v148)(v156, v152);
          }

          v125 = v151;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          if ((v149)(v125, 1, v124) == 1)
          {
            break;
          }

          (v143)(v156, v125, v124);
        }
      }

      v174 = v117;

      sub_100026F94(&qword_10016AB28, &qword_100131390);
      sub_10002B95C(&qword_10016ADC0, &qword_10016AB28, &qword_100131390, &protocol conformance descriptor for [A]);
      v118 = v166;
      Collection<>.contains(_:)();

      v119 = v165;
      QueryType.where(_:)();
      v163(v118, v167);
      v120 = v146;
      QueryType.delete()();
      v121 = v164;
      v164(v119, v104);
      v134 = Connection.run(_:)();
      v138(v120, v154);
      *(swift_allocObject() + 16) = v139;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v135._countAndFlagsBits = 0x20646574656C6544;
      v135._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v135);
      v176 = &type metadata for Int;
      v174 = v134;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v174, &qword_10016AB10, &unk_100130B10);
      v136._object = 0x800000010013A0F0;
      v136._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v136);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v172 = v159;
      sub_10007FDCC(v162);
      sub_10007FDCC(v117);

      result = v121(v145, v104);
      *v144 = v172;
    }
  }

  else
  {
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for OSLogger();
    sub_10002FD14(v52, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    *a3 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000379E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v5 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v5, qword_100173318);
  result = Row.get<A>(_:)();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_100037A8C(uint64_t a1, char a2)
{
  *(v3 + 284) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  *(v3 + 104) = *v2;
  type metadata accessor for LogMessage.StringInterpolation();
  *(v3 + 112) = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100037BB0, v2, 0);
}

uint64_t sub_100037BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016AC28);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "updateRevokedCredentials", "", v7, 2u);
  }

  v9 = v3[17];
  v10 = v3[18];
  v11 = v3[15];
  v12 = v3[16];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[19] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v13 = swift_task_alloc();
  v3[20] = v13;
  *v13 = v3;
  v13[1] = sub_100037DA8;

  return sub_10002F52C();
}

uint64_t sub_100037DA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {
    v6 = sub_100038194;
  }

  else
  {
    v6 = sub_100037EDC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100037EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A2E0 != -1)
  {
    swift_once();
  }

  v4 = *(v3 + 168);
  v5 = type metadata accessor for OSLogger();
  *(v3 + 184) = v5;
  *(v3 + 192) = sub_10002FD14(v5, qword_10016AC10);
  *(v3 + 200) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v6 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 208) = *(v6 + 72);
  *(v3 + 280) = *(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x2064656863746546;
  v7._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = *(v4 + 16);
  *(v3 + 40) = &type metadata for Int;
  *(v3 + 16) = v8;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 16, &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0x64656B6F76657220;
  v9._object = 0xED00002E73444920;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  if (*(v4 + 16))
  {
    v10 = sub_100026F50((*(v3 + 96) + 152), *(*(v3 + 96) + 176));
    v11 = *v10;
    *(v3 + 216) = *v10;

    return _swift_task_switch(sub_100038238, v11, 0);
  }

  else
  {

    sub_100042820("updateRevokedCredentials", 24, 2, *(v3 + 152));

    v12 = *(v3 + 8);

    return v12();
  }
}

uint64_t sub_100038194()
{
  sub_100042820("updateRevokedCredentials", 24, 2, *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 224) = v6;
  *v6 = v3;
  v6[1] = sub_100038334;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100038334(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v5 = *(v3 + 216);
  if (v1)
  {
    v6 = sub_100038564;
  }

  else
  {
    v6 = sub_100038468;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100038468(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[27];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[29];
  v9 = v3[30];
  v10 = v3[21];
  *(v4 + 216) = v7;
  sub_100038B00(v8, v10, v3 + 10);

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;

      v3[32] = v9;
      a2 = v3[12];
      a1 = sub_1000387E4;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v14 = v3[12];
  *(v4 + 216) = v12;

  v3[31] = v3[10];
  a1 = sub_1000385D4;
  a2 = v14;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100038564()
{

  v0[32] = v0[30];
  v1 = v0[12];

  return _swift_task_switch(sub_1000387E4, v1, 0);
}

uint64_t sub_1000385D4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 284);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010013A150;
  v3._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  *(v0 + 48) = v1;
  *(v0 + 72) = &type metadata for Int64;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 48, &qword_10016AB10, &unk_100130B10);
  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  if (v1 >= 1 && v2)
  {
    v5 = swift_task_alloc();
    *(v0 + 264) = v5;
    *v5 = v0;
    v5[1] = sub_100038888;
    v6 = *(v0 + 88);

    return sub_100034D04(v6);
  }

  else
  {
    sub_100042820("updateRevokedCredentials", 24, 2, *(v0 + 152));

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000387E4()
{
  sub_100042820("updateRevokedCredentials", 24, 2, *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038888()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_100038A5C;
  }

  else
  {
    v4 = sub_1000389B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000389B4()
{
  sub_100042820("updateRevokedCredentials", 24, 2, *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038A5C()
{
  sub_100042820("updateRevokedCredentials", 24, 2, *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *&v43 = a2;
  v40 = a3;
  v5 = type metadata accessor for OnConflict();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Insert();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A2F8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Table();
  v12 = sub_10002FD14(v11, qword_100173300);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v3)
  {
  }

  v36 = v12;
  v37 = v11;
  v38 = 0;
  v39 = v10;

  v14 = v43;
  v15 = *(v43 + 16);
  if (v15)
  {
    v32 = v8;
    v33 = v5;
    v34 = v7;
    v35 = a1;
    v47 = _swiftEmptyArrayStorage;
    sub_10007EA0C(0, v15, 0);
    v16 = v47;
    v44 = *(*(type metadata accessor for Setter() - 8) + 72);
    v17 = (v14 + 40);
    v43 = xmmword_10012FA10;
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
      v20 = swift_allocObject();
      *(v20 + 16) = v43;
      v21 = qword_10016A300;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
      sub_10002FD14(v22, qword_100173318);
      v45 = v18;
      v46 = v19;
      <- infix<A>(_:_:)();

      v47 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_10007EA0C((v23 > 1), v24 + 1, 1);
        v16 = v47;
      }

      v16[2] = v24 + 1;
      v16[v24 + 4] = v20;
      v17 += 2;
      --v15;
    }

    while (v15);
    v7 = v34;
    v8 = v32;
    v5 = v33;
  }

  v26 = v41;
  v25 = v42;
  (*(v42 + 104))(v41, enum case for OnConflict.ignore(_:), v5);
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v27 = v39;
  QueryType.insertMany(or:_:)();

  (*(v25 + 8))(v26, v5);
  v28 = v38;
  v29 = Connection.run(_:)();
  if (v28)
  {
    return (*(v8 + 8))(v27, v7);
  }

  v30 = v29;
  result = (*(v8 + 8))(v27, v7);
  *v40 = v30;
  return result;
}

uint64_t sub_100038FC0()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_100039008, v0, 0);
}

uint64_t sub_100039008()
{
  v1 = sub_100026F50((*(v0 + 24) + 152), *(*(v0 + 24) + 176));
  v2 = *v1;
  *(v0 + 40) = *v1;

  return _swift_task_switch(sub_10003907C, v2, 0);
}

uint64_t sub_10003907C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  *v6 = v3;
  v6[1] = sub_100039178;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100039178(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v1;

  v5 = *(v3 + 40);
  if (v1)
  {
    v6 = sub_1000393A8;
  }

  else
  {
    v6 = sub_1000392AC;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_1000392AC()
{
  v1 = v0[5];
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v0[7];
  v6 = v0[8];
  *(v1 + 216) = v4;
  sub_1000393C0(v5, v0 + 2);

  v7 = *(v1 + 216);
  v3 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  v9 = v3;
  if (v6)
  {
    if ((v9 & 1) == 0)
    {
      *(v1 + 216) = v8;
      v10 = v0[1];

      v10();
      return;
    }

    goto LABEL_15;
  }

  if (v9)
  {
LABEL_16:
    __break(1u);
    return;
  }

  *(v1 + 216) = v8;
  v11 = v0[2];
  v12 = v0[1];

  v12(v11);
}

uint64_t sub_1000393C0@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v85 = type metadata accessor for ForwardDeletionRules();
  v82 = *(v85 - 8);
  v5 = __chkstk_darwin(v85);
  v84 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v76 = &v66 - v7;
  v89 = type metadata accessor for Row();
  v79 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  __chkstk_darwin(v9 - 8);
  v87 = &v66 - v10;
  v11 = type metadata accessor for Table();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A2F0 != -1)
  {
LABEL_47:
    swift_once();
  }

  sub_10002FD14(v11, qword_1001732E8);
  v15 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v16._countAndFlagsBits = QueryType.name.getter();
  v17 = Connection.tableExists(_:)(v16);

  if (v17)
  {
    v71 = v14;
    v77 = v11;
    if (qword_10016A318 != -1)
    {
      swift_once();
    }

    v80 = v12;
    v81 = a1;
    v18 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
    v19 = sub_10002FD14(v18, qword_100173360);
    v94 = v18;
    v95 = sub_10002B95C(&qword_10016AD48, &qword_10016AD40, &qword_100130C88, &protocol conformance descriptor for Expression<A>);
    v20 = sub_100042BAC(&v92);
    v21 = *(*(v18 - 8) + 16);
    v83 = v19;
    v21(v20, v19, v18);
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10012FA10;
    if (qword_10016A320 != -1)
    {
      swift_once();
    }

    v23 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
    v24 = sub_10002FD14(v23, qword_100173378);
    *(v22 + 56) = v23;
    *(v22 + 64) = sub_10002B95C(&qword_10016AD60, &qword_10016AD58, &qword_100130C98, &protocol conformance descriptor for Expression<A>);
    v25 = sub_100042BAC((v22 + 32));
    (*(*(v23 - 8) + 16))(v25, v24, v23);
    sub_100042C10(&qword_10016AD68, &type metadata accessor for Table, &protocol conformance descriptor for Table);
    v26 = v71;
    v27 = v77;
    SchemaType.select(_:_:)();

    sub_100026FDC(&v92);
    v94 = v27;
    v95 = v15;
    v28 = sub_100042BAC(&v92);
    v29 = v80;
    (*(v80 + 2))(v28, v26, v27);
    v30 = Connection.prepare(_:)();
    if (v3)
    {
      (*(v29 + 1))(v26, v27);
      return sub_100026FDC(&v92);
    }

    v33 = v30;
    v70 = v24;
    sub_100026FDC(&v92);
    v68 = v33;
    v34 = dispatch thunk of _AnySequenceBox._makeIterator()();
    v35 = v87;
    v81 = v34;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v36 = v79;
    v37 = *(v79 + 48);
    v38 = v89;
    v75 = v79 + 48;
    v74 = v37;
    if (v37(v35, 1, v89) == 1)
    {
      v78 = _swiftEmptyArrayStorage;
      a1 = v88;
LABEL_14:

      v39 = sub_100081630(v78);

      v40 = *(v39 + 16);
      if (!v40)
      {

        v41 = _swiftEmptyArrayStorage;
        goto LABEL_44;
      }

      v41 = sub_10007E8CC(*(v39 + 16), 0);
      v42 = sub_100080560(&v92, &v41[(*(v82 + 80) + 32) & ~*(v82 + 80)], v40, v39);
      sub_100042570(v92);
      if (v42 == v40)
      {

        v29 = v80;
LABEL_44:
        result = (*(v29 + 1))(v71, v27);
        *a1 = v41;
        return result;
      }

      __break(1u);
LABEL_49:

      __break(1u);
    }

    else
    {
      v43 = *(v36 + 32);
      v11 = v36 + 32;
      v73 = v43;
      v72 = (v11 - 24);
      v69 = (v82 + 32);
      v78 = _swiftEmptyArrayStorage;
      v44 = v86;
      a1 = v88;
      v43(v86, v35, v38);
      while (1)
      {
        Row.get<A>(_:)();
        if (v3)
        {
          break;
        }

        v45 = v93;
        if (v93)
        {
          v46 = v11;
          v47 = v92;
          Row.get<A>(_:)();
          v79 = 0;
          if (v93)
          {
            v48 = v89;
            (*v72)(v44, v89);
            v38 = v48;

            v11 = v46;
            v35 = v87;
            v3 = v79;
          }

          else
          {
            v92 = v47;
            v93 = v45;
            v90 = 47;
            v91 = 0xE100000000000000;
            sub_10002C5B0();
            v49 = StringProtocol.components<A>(separatedBy:)();

            v14 = 0;
            v12 = *(v49 + 16);
            v3 = v49 + 40;
            v50 = _swiftEmptyArrayStorage;
LABEL_26:
            v51 = (v3 + 16 * v14);
            v11 = v46;
            while (v12 != v14)
            {
              if (v14 >= *(v49 + 16))
              {
                __break(1u);
                goto LABEL_47;
              }

              ++v14;
              a1 = *(v51 - 1);
              v52 = *v51;
              v51 += 2;
              v53 = HIBYTE(v52) & 0xF;
              if ((v52 & 0x2000000000000000) == 0)
              {
                v53 = a1 & 0xFFFFFFFFFFFFLL;
              }

              if (v53)
              {

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v92 = v50;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_10007E9EC(0, *(v50 + 2) + 1, 1);
                  v50 = v92;
                }

                v56 = *(v50 + 2);
                v55 = *(v50 + 3);
                v57 = v56 + 1;
                if (v56 >= v55 >> 1)
                {
                  v67 = v56 + 1;
                  sub_10007E9EC((v55 > 1), v56 + 1, 1);
                  v57 = v67;
                  v50 = v92;
                }

                *(v50 + 2) = v57;
                v58 = &v50[16 * v56];
                *(v58 + 4) = a1;
                *(v58 + 5) = v52;
                goto LABEL_26;
              }
            }

            v92 = v50;

            v59 = v79;
            sub_10007F2F4(&v92);
            v3 = v59;
            if (v59)
            {
              goto LABEL_49;
            }

            v60 = v76;
            ForwardDeletionRules.init(bundleIds:retentionInterval:)();
            v38 = v89;
            (*v72)(v86, v89);
            v61 = *v69;
            (*v69)(v84, v60, v85);
            v62 = swift_isUniquelyReferenced_nonNull_native();
            v35 = v87;
            a1 = v88;
            v27 = v77;
            if ((v62 & 1) == 0)
            {
              v78 = sub_10007E164(0, *(v78 + 2) + 1, 1, v78);
            }

            v64 = *(v78 + 2);
            v63 = *(v78 + 3);
            if (v64 >= v63 >> 1)
            {
              v78 = sub_10007E164((v63 > 1), v64 + 1, 1, v78);
            }

            v65 = v78;
            *(v78 + 2) = v64 + 1;
            v61(&v65[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v64], v84, v85);
            v29 = v80;
            v44 = v86;
          }
        }

        else
        {
          v38 = v89;
          (*v72)(v44, v89);
        }

        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (v74(v35, 1, v38) == 1)
        {
          goto LABEL_14;
        }

        v73(v44, v35, v38);
      }

      (*v72)(v44, v38);
      (*(v29 + 1))(v71, v27);
    }
  }

  else
  {
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for OSLogger();
    sub_10002FD14(v32, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    *v88 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10003A070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_10003A0BC, v3, 0);
}

uint64_t sub_10003A0BC()
{
  v1 = sub_100026F50((*(v0 + 40) + 152), *(*(v0 + 40) + 176));
  v2 = *v1;
  *(v0 + 56) = *v1;

  return _swift_task_switch(sub_10003A148, v2, 0);
}

uint64_t sub_10003A148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_10003A244;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003A244(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_10003A464;
  }

  else
  {
    v6 = sub_10003A378;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003A378()
{
  v1 = v0[7];
  v2 = *(v1 + 216);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];
  *(v1 + 216) = v3;
  sub_10003A4C8(v6, v7, v4, v8);

  v10 = *(v1 + 216);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  v13 = v11;
  if (v5)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v13)
  {
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_9:
  *(v1 + 216) = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_10003A464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003A4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v77 = a4;
  v6 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  __chkstk_darwin(v6 - 8);
  v94 = v74 - v7;
  v8 = type metadata accessor for Row();
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin(v8);
  v75 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = v74 - v10;
  v11 = type metadata accessor for Table();
  v90 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v87 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = v74 - v14;
  v15 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A2E0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for OSLogger();
  v19 = sub_10002FD14(v18, qword_10016AC10);
  v20 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v21 = *(type metadata accessor for LogMessage() - 8);
  v22 = *(v21 + 80);
  v23 = (v22 + 32) & ~v22;
  v82 = *(v21 + 72);
  v79 = v22;
  v83 = v20;
  v24 = swift_allocObject();
  v81 = xmmword_10012FA10;
  *(v24 + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0xD000000000000027;
  v25._object = 0x800000010013A200;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  v101 = &type metadata for String;
  v97 = a1;
  v98 = a2;
  v99 = a1;
  v100 = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v99, &qword_10016AB10, &unk_100130B10);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  v78 = v23;
  LogMessage.init(stringInterpolation:)();
  v80 = v19;
  Logger.info(_:)();

  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  v84 = v18;
  v96 = sub_10002FD14(v11, qword_1001732E8);
  if (qword_10016A330 != -1)
  {
    swift_once();
  }

  v76 = v17;
  v95 = v11;
  v27 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  v28 = sub_10002FD14(v27, qword_1001733A8);
  v101 = v27;
  v102 = sub_10002B95C(&qword_10016AE18, &qword_10016AE08, &qword_100130D18, &protocol conformance descriptor for Expression<A>);
  v29 = sub_100042BAC(&v99);
  v30 = *(*(v27 - 8) + 16);
  v74[1] = v28;
  v30(v29, v28, v27);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100130B20;
  v32 = v97;
  v33 = v87;
  if (qword_10016A338 != -1)
  {
    swift_once();
  }

  v34 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  v35 = sub_10002FD14(v34, qword_1001733C0);
  *(v31 + 56) = v34;
  v36 = sub_10002B95C(&qword_10016AD60, &qword_10016AD58, &qword_100130C98, &protocol conformance descriptor for Expression<A>);
  *(v31 + 64) = v36;
  v37 = sub_100042BAC((v31 + 32));
  v38 = *(*(v34 - 8) + 16);
  v74[0] = v35;
  v38(v37, v35, v34);
  if (qword_10016A340 != -1)
  {
    swift_once();
  }

  v39 = sub_10002FD14(v34, qword_1001733D8);
  *(v31 + 96) = v34;
  *(v31 + 104) = v36;
  v40 = sub_100042BAC((v31 + 72));
  v38(v40, v39, v34);
  sub_100042C10(&qword_10016AD68, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v41 = v95;
  SchemaType.select(_:_:)();

  sub_100026FDC(&v99);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v42 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v42, qword_100173318);
  v99 = v32;
  v100 = v98;
  v43 = v88;
  static Expression<A>.== infix<A>(_:_:)();
  v44 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v45 = v103;
  QueryType.where(_:)();
  (*(v89 + 8))(v43, v91);
  v46 = v90;
  v47 = *(v90 + 8);
  v47(v33, v41);
  v101 = v41;
  v102 = v44;
  v48 = sub_100042BAC(&v99);
  (*(v46 + 16))(v48, v45, v41);
  v49 = v93;
  v50 = v94;
  Connection.pluck(_:)();
  if (v49)
  {
    v47(v45, v41);
    return sub_100026FDC(&v99);
  }

  v96 = 0;
  v93 = v47;
  sub_100026FDC(&v99);
  v53 = v85;
  v52 = v86;
  if ((*(v85 + 48))(v50, 1, v86) == 1)
  {
    sub_10002BA6C(v50, &qword_10016AD38, &qword_1001332F0);
LABEL_17:
    v54 = v93;
LABEL_18:
    *(swift_allocObject() + 16) = v81;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._countAndFlagsBits = 0xD000000000000021;
    v55._object = 0x800000010013A230;
    LogMessage.StringInterpolation.appendLiteral(_:)(v55);
    v101 = &type metadata for String;
    v99 = v97;
    v100 = v98;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v99, &qword_10016AB10, &unk_100130B10);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v56);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

LABEL_19:
    v54(v103, v41);
    v57 = type metadata accessor for RateLimitInfo(0);
    return (*(*(v57 - 8) + 56))(v77, 1, 1, v57);
  }

  v58 = v75;
  (*(v53 + 32))(v75, v50, v52);
  v59 = v96;
  Row.get<A>(_:)();
  v96 = v59;
  if (v59)
  {
    (*(v53 + 8))(v58, v52);
    return (v93)(v45, v41);
  }

  else
  {
    if (v100)
    {
      (*(v53 + 8))(v58, v52);
      goto LABEL_17;
    }

    v60 = v99;
    v61 = v96;
    Row.get<A>(_:)();
    v96 = v61;
    if (v100 == 1)
    {
      (*(v53 + 8))(v75, v52);
      goto LABEL_17;
    }

    v62 = v99;
    Row.get<A>(_:)();
    v96 = 0;
    v54 = v93;
    if (v100)
    {
      (*(v53 + 8))(v75, v86);
      goto LABEL_18;
    }

    v63 = v99;
    *(swift_allocObject() + 16) = v81;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v64._object = 0x800000010013A260;
    v64._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v64);
    v101 = &type metadata for Int64;
    v98 = v62;
    v99 = v62;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v99, &qword_10016AB10, &unk_100130B10);
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v65);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    *(swift_allocObject() + 16) = v81;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v66._countAndFlagsBits = 0xD00000000000001BLL;
    v66._object = 0x800000010013A280;
    LogMessage.StringInterpolation.appendLiteral(_:)(v66);
    v101 = &type metadata for Double;
    v99 = v63;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v99, &qword_10016AB10, &unk_100130B10);
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v67);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    *(swift_allocObject() + 16) = v81;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v68._countAndFlagsBits = 0x20746E6572727543;
    v68._object = 0xEF203A79616C6564;
    LogMessage.StringInterpolation.appendLiteral(_:)(v68);
    v101 = &type metadata for Double;
    v99 = v60;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v99, &qword_10016AB10, &unk_100130B10);
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v69);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    if (*&v63 > 9.22337204e18)
    {
      *(swift_allocObject() + 16) = v81;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v70._countAndFlagsBits = 0xD00000000000002BLL;
      v70._object = 0x800000010013A2A0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v70);
      v101 = &type metadata for Double;
      v99 = v63;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v99, &qword_10016AB10, &unk_100130B10);
      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v71);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v53 + 8))(v75, v86);
      goto LABEL_19;
    }

    v72 = v77;
    MonotonicTime.init(timeInterval:)();
    (*(v53 + 8))(v75, v86);
    v54(v103, v41);
    v73 = type metadata accessor for RateLimitInfo(0);
    *(v72 + *(v73 + 20)) = v98;
    *(v72 + *(v73 + 24)) = v60;
    return (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
  }
}

uint64_t sub_10003B500(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 104) = v3;
  *(v4 + 96) = a3;
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  v5 = type metadata accessor for Setter();
  *(v4 + 112) = v5;
  *(v4 + 120) = *(v5 - 8);
  *(v4 + 128) = swift_task_alloc();
  v6 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 - 8);
  *(v4 + 152) = swift_task_alloc();
  v7 = type metadata accessor for Table();
  *(v4 + 160) = v7;
  *(v4 + 168) = *(v7 - 8);
  *(v4 + 176) = swift_task_alloc();
  v8 = type metadata accessor for Update();
  *(v4 + 184) = v8;
  *(v4 + 192) = *(v8 - 8);
  *(v4 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_10003B6E8, v3, 0);
}

uint64_t sub_10003B6E8()
{
  v1 = sub_100026F50((*(v0 + 104) + 152), *(*(v0 + 104) + 176));
  v2 = *v1;
  *(v0 + 208) = *v1;

  return _swift_task_switch(sub_10003B778, v2, 0);
}

uint64_t sub_10003B778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 216) = v6;
  *v6 = v3;
  v6[1] = sub_10003B874;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003B874(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v5 = *(v3 + 208);
  if (v1)
  {
    v6 = sub_10003BE70;
  }

  else
  {
    v6 = sub_10003B9A8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003B9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 208);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v29 = *(v3 + 208);
    *(v4 + 216) = v7;
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10002FD14(*(v3 + 160), qword_1001732E8);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v8 = *(v3 + 152);
  v10 = *(v3 + 136);
  v9 = *(v3 + 144);
  v12 = *(v3 + 80);
  v11 = *(v3 + 88);
  v13 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v13, qword_100173318);
  *(v3 + 16) = v12;
  *(v3 + 24) = v11;
  static Expression<A>.== infix<A>(_:_:)();
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  QueryType.where(_:)();
  (*(v9 + 8))(v8, v10);
  if (qword_10016A330 != -1)
  {
    swift_once();
  }

  v14 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  sub_10002FD14(v14, qword_1001733A8);
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  <- infix<A>(_:_:)();
  sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  *(swift_allocObject() + 16) = xmmword_100130B20;
  if (qword_10016A340 != -1)
  {
    swift_once();
  }

  v15 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FD14(v15, qword_1001733D8);
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  <- infix<A>(_:_:)();
  if (qword_10016A338 != -1)
  {
    swift_once();
  }

  v28 = *(v3 + 232);
  v16 = *(v3 + 168);
  v17 = *(v3 + 176);
  v18 = *(v3 + 160);
  v20 = *(v3 + 120);
  v19 = *(v3 + 128);
  v27 = *(v3 + 112);
  v21 = *(v3 + 96);
  sub_10002FD14(v15, qword_1001733C0);
  *(v3 + 64) = v21;
  *(v3 + 72) = 0;
  <- infix<A>(_:_:)();
  QueryType.update(_:_:)();

  (*(v20 + 8))(v19, v27);
  (*(v16 + 8))(v17, v18);
  Connection.run(_:)();
  (*(*(v3 + 192) + 8))(*(v3 + 200), *(v3 + 184));

  v23 = *(v29 + 216);
  v6 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  v25 = v6;
  if (v28)
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v25)
  {
    goto LABEL_24;
  }

LABEL_18:
  *(v29 + 216) = v24;

  v26 = *(v3 + 8);

  return v26();
}

uint64_t sub_10003BE70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003BF08(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Setter();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for Update();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10003C0EC, v2, 0);
}

uint64_t sub_10003C0EC()
{
  v1 = sub_100026F50((*(v0 + 56) + 152), *(*(v0 + 56) + 176));
  v2 = *v1;
  *(v0 + 160) = *v1;

  return _swift_task_switch(sub_10003C178, v2, 0);
}

uint64_t sub_10003C178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  *v6 = v3;
  v6[1] = sub_10003C274;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003C274(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 160);
  if (v1)
  {
    v6 = sub_10003C738;
  }

  else
  {
    v6 = sub_10003C3A8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003C3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[20];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v27 = v3[20];
    *(v4 + 216) = v7;
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10002FD14(v3[14], qword_1001732E8);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v8 = v3[13];
  v9 = v3[11];
  v10 = v3[12];
  v12 = v3[5];
  v11 = v3[6];
  v13 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v13, qword_100173318);
  v3[2] = v12;
  v3[3] = v11;
  static Expression<A>.== infix<A>(_:_:)();
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  QueryType.where(_:)();
  (*(v10 + 8))(v8, v9);
  if (qword_10016A330 != -1)
  {
    swift_once();
  }

  v26 = v3[23];
  v15 = v3[15];
  v14 = v3[16];
  v16 = v3[14];
  v17 = v3[9];
  v18 = v3[10];
  v19 = v3[8];
  v20 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  sub_10002FD14(v20, qword_1001733A8);
  v3[4] = 1;
  static Expression<A>.+= infix<A>(_:_:)();
  QueryType.update(_:_:)();
  (*(v17 + 8))(v18, v19);
  (*(v15 + 8))(v14, v16);
  Connection.run(_:)();
  (*(v3[18] + 8))(v3[19], v3[17]);

  v22 = *(v27 + 216);
  v6 = __OFSUB__(v22, 1);
  v23 = v22 - 1;
  v24 = v6;
  if (v26)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v24)
  {
    goto LABEL_20;
  }

LABEL_14:
  *(v27 + 216) = v23;

  v25 = v3[1];

  return v25();
}

uint64_t sub_10003C738()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003C7D0(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 72) = v3;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  v5 = type metadata accessor for Setter();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  v6 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = type metadata accessor for Table();
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();
  v8 = type metadata accessor for Update();
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_10003C9B8, v3, 0);
}

uint64_t sub_10003C9B8()
{
  v1 = sub_100026F50((*(v0 + 72) + 152), *(*(v0 + 72) + 176));
  v2 = *v1;
  *(v0 + 176) = *v1;

  return _swift_task_switch(sub_10003CA48, v2, 0);
}

uint64_t sub_10003CA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  *v6 = v3;
  v6[1] = sub_10003CB44;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003CB44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 176);
  if (v1)
  {
    v6 = sub_10003D008;
  }

  else
  {
    v6 = sub_10003CC78;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003CC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 176);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v28 = *(v3 + 176);
    *(v4 + 216) = v7;
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10002FD14(*(v3 + 128), qword_1001732E8);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v8 = *(v3 + 120);
  v9 = *(v3 + 104);
  v10 = *(v3 + 112);
  v12 = *(v3 + 48);
  v11 = *(v3 + 56);
  v13 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v13, qword_100173318);
  *(v3 + 16) = v12;
  *(v3 + 24) = v11;
  static Expression<A>.== infix<A>(_:_:)();
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  QueryType.where(_:)();
  (*(v10 + 8))(v8, v9);
  if (qword_10016A340 != -1)
  {
    swift_once();
  }

  v27 = *(v3 + 200);
  v15 = *(v3 + 136);
  v14 = *(v3 + 144);
  v16 = *(v3 + 128);
  v17 = *(v3 + 88);
  v18 = *(v3 + 96);
  v19 = *(v3 + 80);
  v20 = *(v3 + 64);
  v21 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FD14(v21, qword_1001733D8);
  *(v3 + 32) = v20;
  *(v3 + 40) = 0;
  <- infix<A>(_:_:)();
  QueryType.update(_:_:)();
  (*(v17 + 8))(v18, v19);
  (*(v15 + 8))(v14, v16);
  Connection.run(_:)();
  (*(*(v3 + 160) + 8))(*(v3 + 168), *(v3 + 152));

  v23 = *(v28 + 216);
  v6 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  v25 = v6;
  if (v27)
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v25)
  {
    goto LABEL_20;
  }

LABEL_14:
  *(v28 + 216) = v24;

  v26 = *(v3 + 8);

  return v26();
}

uint64_t sub_10003D008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003D0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = *v3;
  v5 = type metadata accessor for OSSignpostID();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003D198, v3, 0);
}

uint64_t sub_10003D198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = v3;
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016AC28);

  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = v3[10];
    v7 = v3[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v19);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v11, "cachedCredential", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v3[17];
  v13 = v3[14];
  v14 = v3[15];
  v15 = v3[12];
  (*(v14 + 16))(v3[16], v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[18] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  v16 = sub_100026F50((v15 + 152), *(v15 + 176));
  sub_100026EEC(v15 + 312, (v3 + 2));
  v17 = *v16;
  v3[19] = v17;

  return _swift_task_switch(sub_10003D3E4, v17, 0);
}

uint64_t sub_10003D3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  *v6 = v3;
  v6[1] = sub_10003D4E0;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003D4E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 152);
  if (v1)
  {
    v6 = sub_10003D720;
  }

  else
  {
    v6 = sub_10003D614;
  }

  return _swift_task_switch(v6, v5, 0);
}