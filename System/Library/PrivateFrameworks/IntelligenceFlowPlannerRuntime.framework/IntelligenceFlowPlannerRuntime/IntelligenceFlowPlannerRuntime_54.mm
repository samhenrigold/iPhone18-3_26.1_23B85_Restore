uint64_t sub_22C877440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_22C90B4FC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C877508(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_102:
    v100 = *result;
    if (!*result)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v90 = v7 + 16;
      v91 = *(v7 + 2);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_140;
        }

        v92 = v7;
        v93 = &v7[16 * v91];
        v94 = *v93;
        v95 = &v90[2 * v91];
        v96 = *(v95 + 1);
        sub_22C878180((*a3 + 24 * *v93), (*a3 + 24 * *v95), (*a3 + 24 * v96), v100);
        if (v102)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_128;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_129;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v97 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_130;
        }

        v102 = 0;
        v91 = *v90 - 1;
        sub_22C56BFF0(v95 + 16, v97, v95);
        *v90 = v91;
        v7 = v92;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v7 = sub_22C56BFD8();
    goto LABEL_104;
  }

  v5 = a4;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v4)
    {
      v9 = *a3 + 24 * v6;
      v10 = *(v9 + 16);
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      if (v10 == v12)
      {
        v13 = *v9 >> 14;
        v14 = *v11 >> 14;
        if (v13 == v14)
        {
          v15 = *(*a3 + 24 * v6 + 8) >> 14 < *(*a3 + 24 * v8 + 8) >> 14;
        }

        else
        {
          v15 = v13 < v14;
        }
      }

      else
      {
        v15 = v10 < v12;
      }

      v16 = v8 + 2;
      if (v4 > v8 + 2)
      {
        v16 = v4;
      }

      v17 = 24 * v8;
      v18 = (*a3 + 24 * v8 + 64);
      while (++v6 < v4)
      {
        v19 = *v18;
        v20 = *(v18 - 24);
        if (v19 == v20)
        {
          v21 = *(v18 - 2) >> 14;
          v22 = *(v18 - 5) >> 14;
          v23 = *(v18 - 1) >> 14 < *(v18 - 4) >> 14;
          if (v21 != v22)
          {
            v23 = v21 < v22;
          }
        }

        else
        {
          v23 = v19 < v20;
        }

        v18 += 24;
        if (v15 != v23)
        {
          if (!v15)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }
      }

      v6 = v16;
      if (!v15)
      {
        goto LABEL_29;
      }

LABEL_21:
      if (v6 < v8)
      {
        goto LABEL_134;
      }

      if (v8 < v6)
      {
        v24 = 0;
        v25 = 24 * v6;
        v26 = v8;
        do
        {
          if (v26 != v6 + v24 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_141;
            }

            v28 = (v27 + v17);
            v29 = v27 + v25;
            v30 = *(v28 + 16);
            v31 = *v28;
            v32 = *(v29 - 8);
            *v28 = *(v29 - 24);
            *(v28 + 2) = v32;
            *(v29 - 24) = v31;
            *(v29 - 8) = v30;
          }

          ++v26;
          --v24;
          v25 -= 24;
          v17 += 24;
        }

        while (v26 < v6 + v24);
        v4 = a3[1];
      }
    }

LABEL_29:
    if (v6 < v4)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < v5)
      {
        break;
      }
    }

LABEL_50:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v7 + 2) + 1, 1, v7);
      v7 = v88;
    }

    v46 = *(v7 + 2);
    v45 = *(v7 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      sub_22C590218(v45 > 1, v46 + 1, 1, v7);
      v7 = v89;
    }

    *(v7 + 2) = v47;
    v48 = v7 + 32;
    v49 = &v7[16 * v46 + 32];
    *v49 = v8;
    *(v49 + 1) = v6;
    v100 = *result;
    if (!*result)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = &v48[16 * v47 - 16];
        v52 = &v7[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v7 + 4);
          v54 = *(v7 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_70:
          if (v56)
          {
            goto LABEL_119;
          }

          v68 = *v52;
          v67 = *(v52 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_122;
          }

          v72 = *(v51 + 1);
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_127;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v47 < 2)
        {
          goto LABEL_121;
        }

        v75 = *v52;
        v74 = *(v52 + 1);
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_85:
        if (v71)
        {
          goto LABEL_124;
        }

        v77 = *v51;
        v76 = *(v51 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_126;
        }

        if (v78 < v70)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v82 = v7;
        v83 = &v48[16 * v50 - 16];
        v84 = *v83;
        v85 = &v48[16 * v50];
        v86 = *(v85 + 1);
        sub_22C878180((*a3 + 24 * *v83), (*a3 + 24 * *v85), (*a3 + 24 * v86), v100);
        if (v102)
        {
          goto LABEL_112;
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        v87 = *(v82 + 2);
        if (v50 > v87)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        if (v50 >= v87)
        {
          goto LABEL_116;
        }

        v102 = 0;
        v47 = v87 - 1;
        sub_22C56BFF0(v85 + 16, v87 - 1 - v50, &v48[16 * v50]);
        v7 = v82;
        *(v82 + 2) = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_99;
        }
      }

      v57 = &v48[16 * v47];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_117;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_118;
      }

      v64 = *(v52 + 1);
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_120;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_123;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = *(v51 + 1);
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_131;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v4 = a3[1];
    v5 = a4;
    if (v6 >= v4)
    {
      goto LABEL_102;
    }
  }

  if (__OFADD__(v8, v5))
  {
    goto LABEL_135;
  }

  if (v8 + v5 < v4)
  {
    v4 = v8 + v5;
  }

  if (v4 < v8)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v6 == v4)
  {
    goto LABEL_50;
  }

  v33 = *a3;
  v34 = *a3 + 24 * v6 - 24;
  v35 = v8 - v6;
LABEL_38:
  v36 = v35;
  v37 = v34;
  while (1)
  {
    v38 = *(v37 + 32);
    v39 = *(v37 + 40);
    v40 = *(v37 + 16);
    v41 = v39 >= v40;
    if (v39 == v40)
    {
      v42 = *(v37 + 24) >> 14;
      if (v42 == *v37 >> 14)
      {
        if (v38 >> 14 >= *(v37 + 8) >> 14)
        {
          goto LABEL_48;
        }

        goto LABEL_45;
      }

      v41 = v42 >= *v37 >> 14;
    }

    if (v41)
    {
      goto LABEL_48;
    }

LABEL_45:
    if (!v33)
    {
      break;
    }

    v44 = *(v37 + 16);
    v43 = *(v37 + 24);
    *(v37 + 24) = *v37;
    *(v37 + 40) = v44;
    *v37 = v43;
    *(v37 + 8) = v38;
    *(v37 + 16) = v39;
    v37 -= 24;
    v41 = __CFADD__(v36++, 1);
    if (v41)
    {
LABEL_48:
      ++v6;
      v34 += 24;
      --v35;
      if (v6 == v4)
      {
        v6 = v4;
        goto LABEL_50;
      }

      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_22C877B4C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_22C90B4FC();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_22C90B4FC()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_22C90B4FC() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590218(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_22C590218(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_22C8783A8((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_22C878054(&v92, *result, a3);
LABEL_102:
}

uint64_t sub_22C878054(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C56BFD8();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_22C8783A8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22C878180(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_22C3D8758(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v19 = v7;
        goto LABEL_37;
      }

      v12 = v6[16];
      v13 = v4[16];
      v14 = v12 >= v13;
      if (v12 != v13)
      {
        goto LABEL_10;
      }

      v15 = *v6 >> 14;
      if (v15 == *v4 >> 14)
      {
        break;
      }

      if (v15 >= *v4 >> 14)
      {
LABEL_15:
        v16 = v4;
        v17 = v7 == v4;
        v4 += 24;
        if (v17)
        {
          goto LABEL_17;
        }

LABEL_16:
        v18 = *v16;
        *(v7 + 2) = *(v16 + 2);
        *v7 = v18;
        goto LABEL_17;
      }

LABEL_11:
      v16 = v6;
      v17 = v7 == v6;
      v6 += 24;
      if (!v17)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v14 = *(v6 + 1) >> 14 >= *(v4 + 1) >> 14;
LABEL_10:
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_22C3D8758(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v19 = v6;
  v6 -= 24;
  v20 = v5;
  while (v10 > v4 && v19 > v7)
  {
    v22 = v10 - 24;
    v23 = *(v10 - 8);
    v24 = *(v19 - 8);
    if (v23 == v24)
    {
      v25 = *v22 >> 14;
      if (v25 == *v6 >> 14)
      {
        v5 = v20 - 24;
        if (*(v10 - 2) >> 14 < *(v19 - 2) >> 14)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v5 = v20 - 24;
        if (v25 < *v6 >> 14)
        {
LABEL_34:
          if (v20 != v19)
          {
            v27 = *v6;
            *(v5 + 2) = *(v6 + 2);
            *v5 = v27;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v5 = v20 - 24;
      if (v23 < v24)
      {
        goto LABEL_34;
      }
    }

    v17 = v10 == v20;
    v20 = v5;
    v10 -= 24;
    if (!v17)
    {
      v26 = *v22;
      *(v5 + 2) = *(v22 + 2);
      *v5 = v26;
      v20 = v5;
      v10 = v22;
    }
  }

LABEL_37:
  v28 = 24 * ((v10 - v4) / 24);
  if (v19 != v4 || v19 >= &v4[v28])
  {
    memmove(v19, v4, v28);
  }

  return 1;
}

uint64_t sub_22C8783A8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22C3A4F80(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_22C3A4F80(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_22C90B4FC() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_22C878568(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v13 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v12 = v13;
      goto LABEL_9;
    case 2uLL:
      v11 = *(a1 + 24);
      a1 = *(a1 + 16);
      v12 = v11;
LABEL_9:
      sub_22C76A5B0(a1, v12);
      if (v2)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      sub_22C36A4D8();
      v7 = MEMORY[0x277CC5540];
      v8 = MEMORY[0x277CC5538];
      v3 = 0;
      v10 = 0;
      goto LABEL_5;
    default:
      sub_22C36A4D8();
      v7 = MEMORY[0x277CC5540];
      v8 = MEMORY[0x277CC5538];
      v10 = v9 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_22C878798(v3, v10, v6, v4, v5, v7, v8);
      if (v2)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

void sub_22C878670(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v9 = v10;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a1 + 24);
      a1 = *(a1 + 16);
      v9 = v8;
LABEL_9:
      sub_22C878870(a1, v9);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      v4 = MEMORY[0x277CC5588];
      v5 = MEMORY[0x277CC5588];
      v6 = MEMORY[0x277CC5580];
      a1 = 0;
      v7 = 0;
      goto LABEL_5;
    default:
      v4 = MEMORY[0x277CC5588];
      v5 = MEMORY[0x277CC5588];
      v6 = MEMORY[0x277CC5580];
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_22C878798(a1, v7, a3, v4, &qword_27D9C0C90, v5, v6);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_22C878798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  a4(0);
  sub_22C878D38(a5, 255, a6, a7);
  return sub_22C909C1C();
}

uint64_t sub_22C878870(uint64_t a1, uint64_t a2)
{
  result = sub_22C90006C();
  if (!result || (result = sub_22C90008C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22C90007C();
      sub_22C909CAC();
      sub_22C878D38(&qword_27D9C0C90, 255, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
      return sub_22C909C1C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22C878954(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x2318B78E0]();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_22C878CBC(v4, 0);

  v7 = sub_22C8789E4(v9, (v6 + 4), v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22C8789E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v7 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v12 = 0;
    v11 = 0;
    v8 = 0;
LABEL_36:
    v14 = 1;
    goto LABEL_40;
  }

  v8 = a3;
  if (!a3)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a5 & 0xFFFFFFFFFFFFFFLL;
  v26 = result;
  v27 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v14 = 1;
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14)
    {
      if (v12 >= v7)
      {
        goto LABEL_38;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v22 = v13;
        v23 = sub_22C90AF4C();
        v13 = v22;
        v18 = v23;
      }

      else
      {
        if ((a5 & 0x2000000000000000) == 0)
        {
          v16 = v27;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v24 = v13;
            v16 = sub_22C90AFCC();
            v13 = v24;
          }

          v17 = (v16 + v12);
          v18 = *(v16 + v12);
          if (*(v16 + v12) < 0)
          {
            switch(__clz(v18 ^ 0xFF))
            {
              case 0x1Au:
                LOWORD(v18) = v17[1] & 0x3F | ((v18 & 0x1F) << 6);
                v19 = 2;
                goto LABEL_17;
              case 0x1Bu:
                LOWORD(v18) = (v18 << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
                v19 = 3;
                goto LABEL_17;
              case 0x1Cu:
                goto LABEL_25;
              default:
                break;
            }
          }

          v19 = 1;
LABEL_17:
          v12 += v19;
LABEL_29:
          v14 = 1;
          goto LABEL_30;
        }

        v28[0] = a4;
        v28[1] = v13;
        v17 = v28 + v12;
        v18 = *(v28 + v12);
        if (*(v28 + v12) < 0)
        {
          switch(__clz(v18 ^ 0xFF))
          {
            case 0x1Au:
              v18 = v17[1] & 0x3F | ((v18 & 0x1F) << 6);
              v20 = 2;
              break;
            case 0x1Bu:
              v18 = ((v18 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
              v20 = 3;
              break;
            case 0x1Cu:
LABEL_25:
              v18 = ((v18 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3F;
              v20 = 4;
              break;
            default:
              goto LABEL_20;
          }
        }

        else
        {
LABEL_20:
          v20 = 1;
        }
      }

      v12 += v20;
      if (HIWORD(v18))
      {
        v25 = v13;
        v11 = sub_22C90B71C();
        v21 = sub_22C90B71C();
        v13 = v25;
        LOWORD(v18) = v21;
        v14 = 0;
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v14 = 1;
    LOWORD(v18) = v11;
    v11 = 0;
LABEL_30:
    *(a2 + 2 * v10++) = v18;
    if (v15 == v8)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_38:
  v14 = 1;
  v8 = v10;
LABEL_39:
  result = v26;
LABEL_40:
  *result = a4;
  *(result + 8) = a5;
  *(result + 16) = v12;
  *(result + 24) = v7;
  *(result + 32) = v11;
  *(result + 34) = v14;
  return v8;
}

void *sub_22C878CBC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C3A5908(&qword_27D9BE350, &qword_22C91D8D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 2);
  return v4;
}

uint64_t sub_22C878D38(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22C878D84()
{
  v1 = [objc_opt_self() resultBuilderForItem_];
  v2 = [v1 buildInlineCardSections];

  sub_22C878EFC();
  v3 = sub_22C90A5EC();

  if (!sub_22C36E2B8())
  {
    goto LABEL_8;
  }

  sub_22C633A2C();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318B8460](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_7:

LABEL_8:
    v11 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    sub_22C878F40(v3, v11);
    return v11;
  }

  v7 = v6;
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C922290;
  result = [v7 fallbackCardSection];
  if (result)
  {
    v10 = result;

    *(v8 + 32) = v10;
    v3 = v8;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_22C878EFC()
{
  result = qword_27D9C0C98;
  if (!qword_27D9C0C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C0C98);
  }

  return result;
}

void sub_22C878F40(uint64_t a1, void *a2)
{
  sub_22C878EFC();
  v3 = sub_22C90A5DC();

  [a2 setCardSections_];
}

uint64_t sub_22C878FDC(_BYTE *a1)
{
  v55 = sub_22C3A5908(&qword_27D9BF480, &qword_22C922740);
  v2 = MEMORY[0x28223BE20](v55);
  v54 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v53 = &v43 - v4;
  v5 = sub_22C90221C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = (v10 - v9);
  v12 = sub_22C879C0C(a1);
  v13 = *(v12 + 2);
  if (v13)
  {
    v64 = MEMORY[0x277D84F90];
    sub_22C3B7FC4(0, v13, 0);
    v14 = v64;
    result = sub_22C6339F8();
    v18 = 0;
    v19 = v12 + 64;
    v49 = v7 + 32;
    v50 = v7 + 16;
    v45 = v16;
    v44 = v12 + 72;
    v51 = v12 + 64;
    v52 = v11;
    v46 = v13;
    v47 = v12;
    v48 = v7;
    while ((result & 0x8000000000000000) == 0 && result < 1 << v12[32])
    {
      if ((*&v19[8 * (result >> 6)] & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v12 + 9) != v16)
      {
        goto LABEL_25;
      }

      v59 = 1 << result;
      v60 = result >> 6;
      v57 = v18;
      v58 = v16;
      v56 = v17;
      v20 = v55;
      v21 = *(v55 + 48);
      v22 = *(v12 + 7);
      v23 = (*(v12 + 6) + 16 * result);
      v25 = *v23;
      v24 = v23[1];
      v61 = *(v7 + 72);
      v62 = result;
      v63 = v14;
      v26 = *(v7 + 16);
      v27 = v53;
      v26(&v53[v21], v22 + v61 * result, v5);
      v28 = v54;
      *v54 = v25;
      *(v28 + 8) = v24;
      v29 = *(v20 + 48);
      v30 = *(v7 + 32);
      v30(v28 + v29, &v27[v21], v5);
      v31 = v28 + v29;
      v32 = v52;
      v26(v52, v31, v5);
      v14 = v63;

      sub_22C879F98(v28);
      v64 = v14;
      v34 = *(v14 + 16);
      v33 = *(v14 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_22C3B7FC4(v33 > 1, v34 + 1, 1);
        v14 = v64;
      }

      *(v14 + 16) = v34 + 1;
      v7 = v48;
      v30(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v34 * v61, v32, v5);
      v12 = v47;
      v35 = 1 << v47[32];
      result = v62;
      v19 = v51;
      if (v62 >= v35)
      {
        goto LABEL_26;
      }

      v36 = *&v51[8 * v60];
      if ((v36 & v59) == 0)
      {
        goto LABEL_27;
      }

      if (*(v47 + 9) != v58)
      {
        goto LABEL_28;
      }

      v37 = v36 & (-2 << (v62 & 0x3F));
      if (v37)
      {
        v35 = __clz(__rbit64(v37)) | v62 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v60 << 6;
        v39 = v60 + 1;
        v40 = &v44[8 * v60];
        while (v39 < (v35 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_22C3A5038(v62, v58, v56 & 1);
            v35 = __clz(__rbit64(v41)) + v38;
            goto LABEL_19;
          }
        }

        sub_22C3A5038(v62, v58, v56 & 1);
      }

LABEL_19:
      v17 = 0;
      v18 = v57 + 1;
      result = v35;
      v16 = v45;
      if (v57 + 1 == v46)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22C8794D0()
{
  sub_22C90934C();
  sub_22C369824();
  v40 = v1;
  v41 = v0;
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v4 = v3 - v2;
  v5 = sub_22C90910C();
  sub_22C369824();
  v42 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C90919C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C9093BC();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v24 = v23 - v22;
  sub_22C90207C();
  v25 = (*(v20 + 88))(v24, v18);
  if (v25 != *MEMORY[0x277D72A58] && v25 != *MEMORY[0x277D729E8])
  {
    if (v25 == *MEMORY[0x277D72A38])
    {
      v28 = sub_22C36A4F0();
      v29(v28);
      v30 = swift_projectBox();
      (*(v13 + 16))(v17, v30, v11);
      v27 = sub_22C90908C();
      (*(v13 + 8))(v17, v11);
LABEL_9:

      return v27;
    }

    if (v25 != *MEMORY[0x277D729E0] && v25 != *MEMORY[0x277D72A30] && v25 != *MEMORY[0x277D72A40])
    {
      if (v25 == *MEMORY[0x277D729F8])
      {
        v34 = sub_22C36A4F0();
        v35(v34);
        v36 = swift_projectBox();
        (*(v42 + 16))(v10, v36, v5);
        v27 = sub_22C90908C();
        (*(v42 + 8))(v10, v5);
        goto LABEL_9;
      }

      if (v25 == *MEMORY[0x277D72A60])
      {
        v37 = sub_22C36A4F0();
        v38(v37);
        v39 = swift_projectBox();
        (*(v40 + 16))(v4, v39, v41);
        v27 = sub_22C90932C();
        (*(v40 + 8))(v4, v41);
        goto LABEL_9;
      }
    }
  }

  (*(v20 + 8))(v24, v18);
  return 0;
}

BOOL sub_22C8798C0()
{
  v0 = sub_22C9093BC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C90952C();
  sub_22C369824();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_22C90207C();
  sub_22C90935C();
  (*(v2 + 8))(v6, v0);
  (*(v9 + 16))(v13, v15, v7);
  v16 = (*(v9 + 88))(v13, v7);
  v17 = v16 == *MEMORY[0x277D72D50] || v16 == *MEMORY[0x277D72D30];
  if (v17 || v16 != *MEMORY[0x277D72D28])
  {
    v23 = *(v9 + 8);
    v23(v15, v7);
    v23(v13, v7);
    return 0;
  }

  else
  {
    (*(v9 + 96))(v13, v7);
    v18 = *v13;
    v19 = *(*v13 + 32);
    v20 = *(v18 + 40);
    if (qword_27D9BA7D8 != -1)
    {
      swift_once();
    }

    v21 = sub_22C633A24();
    if (v21)
    {
      v22 = sub_22C5E935C(v19, v20, v21);
    }

    else
    {
      v22 = 0;
    }

    (*(v9 + 8))(v15, v7);
  }

  return v22;
}

void *sub_22C879B94(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C879D70(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22C879C0C(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_22C879B94(v8, v4, v2);
      MEMORY[0x2318B9880](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C879D70(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_22C879D70(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
LABEL_5:
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_12:
    v27 = v9 | (v3 << 6);
    v12 = (*(a3 + 48) + 16 * v27);
    v14 = *v12;
    v13 = v12[1];
    v15 = qword_27D9BA7D0;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = off_27D9C0CA0;
    if (*(off_27D9C0CA0 + 2))
    {
      sub_22C90B62C();
      sub_22C909FFC();
      v17 = sub_22C90B66C();
      v18 = ~(-1 << v16[32]);
      while (1)
      {
        v19 = v17 & v18;
        if (((*&v16[(((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v17 & v18)) & 1) == 0)
        {
          break;
        }

        v20 = (*(v16 + 6) + 16 * v19);
        if (*v20 != v14 || v20[1] != v13)
        {
          v22 = sub_22C90B4FC();
          v17 = v19 + 1;
          if ((v22 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v29;
        goto LABEL_5;
      }
    }

    *(result + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v23 = __OFADD__(v26++, 1);
    v7 = v29;
    if (v23)
    {
      goto LABEL_28;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      sub_22C839868(result, a2, v26, a3);
      return;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_22C879F98(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BF480, &qword_22C922740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C87A000()
{
  v0 = sub_22C3A5908(&qword_27D9C0CC0, &qword_22C92AFC8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v66 - v1;
  v79 = sub_22C90214C();
  sub_22C369824();
  v67 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v73 = v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  v72 = v66 - v7;
  v8 = sub_22C9024EC();
  sub_22C369824();
  v75 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v81 = v12 - v11;
  v13 = sub_22C9024FC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v88 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v80 = v66 - v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  v22 = v66 - v21;
  v23 = sub_22C3A5908(&qword_27D9BF850, &qword_22C92D260);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v66 - v24;
  v26 = sub_22C90256C();
  sub_22C369824();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v32 = v31 - v30;
  sub_22C90269C();
  if (sub_22C370B74(v25, 1, v26) != 1)
  {
    v66[0] = v22;
    v66[2] = v28;
    v33 = sub_22C38BD8C();
    v66[3] = v26;
    v35 = v34(v33);
    v66[1] = v32;
    result = MEMORY[0x2318AF920](v35);
    v37 = 0;
    v87 = *(result + 16);
    v83 = v15 + 88;
    v84 = v15 + 16;
    v82 = *MEMORY[0x277D1CA30];
    v76 = (v75 + 4);
    v77 = (v15 + 96);
    ++v75;
    v70 = (v67 + 88);
    v71 = (v67 + 32);
    v69 = *MEMORY[0x277D1C528];
    v68 = (v67 + 8);
    v39 = v80;
    v38 = v81;
    v78 = v8;
    v74 = v15;
    v85 = result;
    v86 = (v15 + 8);
    while (1)
    {
      if (v87 == v37)
      {

        v59 = sub_22C87ACAC();
        v60(v59);
        return 0;
      }

      if (v37 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v40 = *(v15 + 16);
      v40(v39, result + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v37, v13);
      v40(v88, v39, v13);
      v41 = v88;
      v42 = (*(v15 + 88))(v88, v13);
      if (v42 != v82)
      {
        v49 = v41;
        v50 = v86;
        (*v86)(v49, v13);
        goto LABEL_18;
      }

      (*v77)(v41, v13);
      (*v76)(v38, v41, v8);
      v43 = sub_22C9024DC();
      v45 = v44;
      if (v43 == sub_22C90213C() && v45 == v46)
      {
        break;
      }

      v48 = sub_22C90B4FC();

      if (v48)
      {
        goto LABEL_15;
      }

      v38 = v81;
      (*v75)(v81, v8);
LABEL_17:
      v39 = v80;
      v50 = v86;
LABEL_18:
      (*v50)(v39, v13);
      ++v37;
      result = v85;
    }

LABEL_15:
    sub_22C8FFECC();
    swift_allocObject();
    sub_22C8FFEBC();
    v51 = v79;
    v52 = v81;
    sub_22C9024CC();
    sub_22C87AC54();
    sub_22C8FFEAC();
    (*v75)(v52, v78);
    v53 = sub_22C371530();
    sub_22C38B120(v53, v54);

    sub_22C36C640(v2, 0, 1, v51);
    v55 = v72;
    v56 = *v71;
    (*v71)(v72, v2, v51);
    v57 = v73;
    v56(v73, v55, v51);
    v58 = (*v70)(v57, v51);
    if (v58 == v69)
    {
      (*(v67 + 96))(v57, v79);

      v62 = v74 + 32;
      v63 = v66[0];
      (*(v74 + 32))(v66[0], v80, v13);
      v61 = sub_22C87A7DC();
      v64 = sub_22C87ACAC();
      v65(v64);
      (*(v62 - 24))(v63, v13);
      return v61;
    }

    (*v68)(v57, v79);
    v8 = v78;
    v38 = v81;
    v15 = v74;
    goto LABEL_17;
  }

  sub_22C3770B0(v25, &qword_27D9BF850, &qword_22C92D260);
  return 0;
}

uint64_t sub_22C87A7DC()
{
  v1 = sub_22C3A5908(&qword_27D9C0CC0, &qword_22C92AFC8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v52 - v2;
  v4 = sub_22C90214C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v54 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v53 = &v52 - v10;
  v11 = sub_22C9024FC();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C9024EC();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v24 = v23 - v22;
  (*(v13 + 16))(v17, v0, v11);
  v25 = sub_22C38BD8C();
  if (v26(v25) != *MEMORY[0x277D1CA30])
  {
    v37 = sub_22C38BD8C();
LABEL_9:
    v38(v37);
    return 0;
  }

  v27 = sub_22C38BD8C();
  v28(v27);
  (*(v20 + 32))(v24, v17, v18);
  v29 = sub_22C9024DC();
  v31 = v30;
  if (v29 == sub_22C90213C() && v31 == v32)
  {

LABEL_11:
    v52 = v6;
    sub_22C8FFECC();
    swift_allocObject();
    sub_22C8FFEBC();
    v39 = sub_22C9024CC();
    v41 = v40;
    sub_22C87AC54();
    sub_22C8FFEAC();
    v43 = sub_22C378940();
    v44(v43);
    sub_22C38B120(v39, v41);

    sub_22C36C640(v3, 0, 1, v4);
    v45 = v53;
    v46 = *(v52 + 32);
    v46(v53, v3, v4);
    v47 = v54;
    v46(v54, v45, v4);
    v48 = sub_22C371530();
    if (v49(v48) == *MEMORY[0x277D1C528])
    {
      v50 = sub_22C371530();
      v51(v50);
      return *v47;
    }

    v37 = sub_22C371530();
    goto LABEL_9;
  }

  v34 = sub_22C90B4FC();

  if (v34)
  {
    goto LABEL_11;
  }

  v35 = sub_22C378940();
  v36(v35);
  return 0;
}

unint64_t sub_22C87AC54()
{
  result = qword_27D9C0CC8;
  if (!qword_27D9C0CC8)
  {
    sub_22C90214C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0CC8);
  }

  return result;
}

uint64_t sub_22C87ACCC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22C3A5908(&qword_27D9BF498, &unk_22C922750);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  sub_22C9099FC();
  sub_22C36A948();
  v51 = v7;
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v50 = v8;
  sub_22C908DAC();
  sub_22C36A948();
  v54 = v10;
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v53 = v11;
  v12 = sub_22C908EAC();
  sub_22C36A948();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v49 = &v48 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  v23 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v48 - v27;
  sub_22C908ADC();
  v29 = sub_22C908ABC();
  if (sub_22C370B74(v28, 1, v29) == 1)
  {
    goto LABEL_2;
  }

  v48 = a2;
  sub_22C711034(v28, v26);
  sub_22C36A948();
  v32 = sub_22C36A10C();
  v34 = v33(v32);
  if (v34 == *MEMORY[0x277D1E8E0] || v34 == *MEMORY[0x277D1E8C8])
  {
    v35 = sub_22C36A10C();
    v36(v35);
    (*(v14 + 32))(v22, v26, v12);
    sub_22C908E1C();
    (*(v14 + 8))(v22, v12);
    return sub_22C3770B0(v28, &qword_27D9BC0B0, &unk_22C912AD0);
  }

  if (v34 != *MEMORY[0x277D1E8D0])
  {
    v45 = sub_22C36A10C();
    v46(v45);
    a2 = v48;
LABEL_2:
    v30 = sub_22C90944C();
    v31 = a2;
LABEL_3:
    sub_22C36C640(v31, 1, 1, v30);
    return sub_22C3770B0(v28, &qword_27D9BC0B0, &unk_22C912AD0);
  }

  v38 = sub_22C36A10C();
  v39(v38);
  (*(v54 + 32))(v53, v26, v55);
  v40 = v50;
  sub_22C908D7C();
  v41 = sub_22C908A1C();
  result = (*(v51 + 8))(v40, v52);
  if (!v41)
  {
LABEL_17:
    (*(v54 + 8))(v53, v55);
    v30 = sub_22C90944C();
    v31 = v48;
    goto LABEL_3;
  }

  v42 = 0;
  v43 = *(v41 + 16);
  v52 = v14 + 16;
  while (1)
  {
    if (v43 == v42)
    {

      goto LABEL_17;
    }

    if (v42 >= *(v41 + 16))
    {
      break;
    }

    (*(v14 + 16))(v18, v41 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v42, v12);
    sub_22C908E1C();
    v44 = sub_22C90944C();
    if (sub_22C370B74(v5, 1, v44) != 1)
    {

      sub_22C3770B0(v5, &qword_27D9BF498, &unk_22C922750);
      v47 = v49;
      (*(v14 + 32))(v49, v18, v12);
      sub_22C908E1C();
      (*(v54 + 8))(v53, v55);
      (*(v14 + 8))(v47, v12);
      return sub_22C3770B0(v28, &qword_27D9BC0B0, &unk_22C912AD0);
    }

    ++v42;
    sub_22C3770B0(v5, &qword_27D9BF498, &unk_22C922750);
    result = (*(v14 + 8))(v18, v12);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ResponseGenerationSnippetLabelsExecutor(uint64_t a1)
{
  result = qword_27D9C0CD0;
  if (!qword_27D9C0CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C87B338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v5 = sub_22C90254C();
  sub_22C369824();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v45 - v12;
  v14 = sub_22C9026BC();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  (*(v16 + 16))(v19 - v18, a1, v14);
  v21 = (*(v16 + 88))(v20, v14);
  if (v21 != *MEMORY[0x277D1CBF0] && v21 != *MEMORY[0x277D1CB98])
  {
    if (v21 == *MEMORY[0x277D1CBA8])
    {
      goto LABEL_11;
    }

    if (v21 != *MEMORY[0x277D1CBB0] && v21 != *MEMORY[0x277D1CBB8])
    {
      if (v21 == *MEMORY[0x277D1CBD0])
      {
LABEL_11:
        v45[0] = a3;
        v28 = sub_22C36A754();
        v29(v28);
        v30 = 0;
        v31 = *(v47 + 16);
        v45[1] = v7 + 88;
        v46 = v31;
        v32 = *MEMORY[0x277D1CA90];
        while (1)
        {
          if (v46 == v30)
          {
            v25 = v45[0];
            goto LABEL_7;
          }

          v33 = *(v7 + 16);
          v33(v13, v47 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v5);
          v33(v11, v13, v5);
          v34 = (*(v7 + 88))(v11, v5);
          v35 = *(v7 + 8);
          v35(v11, v5);
          if (v34 == v32)
          {
            break;
          }

          ++v30;
          v35(v13, v5);
        }

        v44 = v45[0];
        (*(v7 + 32))(v45[0], v13, v5);
        v25 = v44;
        v26 = 0;
        return sub_22C36C640(v25, v26, 1, v5);
      }

      if (v21 != *MEMORY[0x277D1CBD8] && v21 != *MEMORY[0x277D1CBC0] && v21 != *MEMORY[0x277D1CBE0] && v21 != *MEMORY[0x277D1CBA0] && v21 != *MEMORY[0x277D1CBC8] && v21 != *MEMORY[0x277D1CBE8])
      {
        sub_22C36C640(a3, 1, 1, v5);
        v42 = sub_22C36A754();
        return v43(v42);
      }
    }
  }

  v23 = sub_22C36A754();
  v24(v23);
  v25 = a3;
LABEL_7:
  v26 = 1;
  return sub_22C36C640(v25, v26, 1, v5);
}

uint64_t sub_22C87B6F8()
{
  sub_22C369980();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 136) = v3;
  *(v0 + 16) = v4;
  v5 = sub_22C9063DC();
  *(v0 + 40) = v5;
  sub_22C3699B8(v5);
  *(v0 + 48) = v6;
  *(v0 + 56) = sub_22C3699D4();
  v7 = sub_22C90253C();
  *(v0 + 64) = v7;
  sub_22C3699B8(v7);
  *(v0 + 72) = v8;
  *(v0 + 80) = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9C0CE8, &qword_22C92B028);
  sub_22C369914(v9);
  *(v0 + 88) = sub_22C3699D4();
  v10 = sub_22C90254C();
  *(v0 + 96) = v10;
  sub_22C3699B8(v10);
  *(v0 + 104) = v11;
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C87B884, 0, 0);
}

uint64_t sub_22C87B884()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_22C87B338(v0[2], v0[4], v1);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    sub_22C3770B0(v0[11], &qword_27D9C0CE8, &qword_22C92B028);
  }

  else
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    (*(v6 + 32))(v4, v0[11], v5);
    (*(v6 + 16))(v3, v4, v5);
    v7 = (*(v6 + 88))(v3, v5);
    v8 = v0[14];
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    if (v7 == *MEMORY[0x277D1CA90])
    {
      v13 = v0[9];
      v12 = v0[10];
      v14 = v0[8];
      (*(v11 + 96))(v0[14], v0[12]);
      (*(v13 + 32))(v12, v8, v14);
      sub_22C90251C();
      sub_22C9024DC();
      (*(v13 + 8))(v12, v14);
      (*(v11 + 8))(v9, v10);

      sub_22C372034();

      __asm { BRAA            X5, X16 }
    }

    v17 = *(v11 + 8);
    v17(v0[15], v0[12]);
    v17(v8, v10);
  }

  sub_22C90405C();
  v18 = sub_22C9063CC();
  v19 = sub_22C90AABC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22C366000, v18, v19, "The tool has requested a Confirmation but provided no label for the buttons. Using fallback labels.)", v20, 2u);
    sub_22C3699EC();
  }

  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[5];

  (*(v22 + 8))(v21, v23);
  v24 = swift_task_alloc();
  v0[16] = v24;
  *v24 = v0;
  v24[1] = sub_22C87BBB4;
  sub_22C372034();

  return sub_22C87BD68();
}

void sub_22C87BBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_22C372034();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_22C87BD68()
{
  sub_22C369980();
  *(v0 + 244) = v1;
  *(v0 + 136) = v2;
  v3 = sub_22C9063DC();
  *(v0 + 144) = v3;
  sub_22C3699B8(v3);
  *(v0 + 152) = v4;
  *(v0 + 160) = swift_task_alloc();
  *(v0 + 168) = swift_task_alloc();
  v5 = sub_22C90304C();
  *(v0 + 176) = v5;
  sub_22C369914(v5);
  *(v0 + 184) = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v6);
  *(v0 + 192) = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C87BE7C, 0, 0);
}

uint64_t sub_22C87BE7C()
{
  v2 = v0[23];
  v1 = v0[24];
  sub_22C902F2C();
  sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = 0x656C61636F6CLL;
  *(inited + 40) = 0xE600000000000000;
  v4 = sub_22C9006BC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_22C909F0C();
  v6 = sub_22C902EAC();
  v0[25] = v6;
  sub_22C381CB4();
  v0[15] = MEMORY[0x277D84F90];
  sub_22C87CBA4();
  sub_22C3A5908(&qword_27D9C0CF8, &unk_22C92B040);
  sub_22C87CBFC();
  sub_22C90AE4C();
  type metadata accessor for ResponseGenerationSnippetLabelsExecutor(0);
  swift_allocObject();
  v7 = v6;
  v0[26] = sub_22C87C8B0(v1, v2, v6);
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_22C87C04C;

  return sub_22C87C780();
}

uint64_t sub_22C87C04C()
{
  sub_22C369980();
  v2 = *v1;
  *(v2 + 224) = v3;
  *(v2 + 232) = v0;

  if (v0)
  {
    v4 = sub_22C87C274;
  }

  else
  {
    v4 = sub_22C87C15C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22C87C15C()
{
  v1 = *(v0 + 200);
  if (*(v0 + 244))
  {
    v2 = 243;
  }

  else
  {
    v2 = 241;
  }

  v3 = 240;
  if (*(v0 + 244))
  {
    v3 = 242;
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (*(v0 + 244))
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  *(v0 + v3) = v4;
  v6 = sub_22C902FFC();
  v8 = v7;
  *(v0 + v2) = v5;
  v9 = sub_22C902FFC();
  v11 = v10;

  v12 = *(v0 + 8);

  return v12(v6, v8, v9, v11);
}

uint64_t sub_22C87C274(uint64_t a1)
{
  v36 = v1;
  v2 = *(v1 + 232);
  sub_22C90405C();
  v3 = v2;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 168);
    v7 = *(v1 + 144);
    v8 = *(v1 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_22C90B57C();
    v13 = sub_22C36F9F4(v11, v12, &v35);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_22C366000, v4, v5, "Error retrieving localized Confirmation labels from CAT: %s", v9, 0xCu);
    sub_22C36FF94(v10);
    sub_22C3699EC();
    sub_22C3699EC();

    v14 = *(v8 + 8);
    v14(v6, v7);
  }

  else
  {
    v15 = *(v1 + 168);
    v16 = *(v1 + 144);
    v17 = *(v1 + 152);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  if (*(v1 + 244) == 1)
  {
    v18 = 0x6C65636E6143;
    v19 = 0x6574656C6544;
    sub_22C90405C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v22 = os_log_type_enabled(v20, v21);
    v34 = *(v1 + 232);
    v23 = *(v1 + 160);
    v24 = *(v1 + 144);
    if (v22)
    {
      v32 = *(v1 + 200);
      v33 = *(v1 + 144);
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v25 = 136315394;
      v31 = v23;
      v26 = 0xE600000000000000;
      *(v25 + 4) = sub_22C36F9F4(0x6574656C6544, 0xE600000000000000, &v35);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_22C36F9F4(0x6C65636E6143, 0xE600000000000000, &v35);
      _os_log_impl(&dword_22C366000, v20, v21, "Confirmation is destructive using labels: (%s, %s)", v25, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      v14(v31, v33);
    }

    else
    {

      v14(v23, v24);
      v26 = 0xE600000000000000;
    }

    v28 = 0xE600000000000000;
  }

  else
  {
    v27 = *(v1 + 200);

    v28 = 0xE200000000000000;
    v26 = 0xE300000000000000;
    v18 = 28494;
    v19 = 7562585;
  }

  v29 = *(v1 + 8);

  return v29(v19, v26, v18, v28);
}

unint64_t sub_22C87C618(uint64_t a1)
{
  v1 = sub_22C90B21C();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_22C87C664(char a1)
{
  result = 0x4C6D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6562614C796E6564;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22C87C724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C87C618(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22C87C754@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22C87C664(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C87C780()
{
  v5 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = sub_22C87CB50();
  *v1 = v0;
  v1[1] = sub_22C5D9AB0;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000019, 0x800000022C938AD0, v3, &type metadata for ResponseGenerationSnippetLabelsExecutor.ResponseGenerationSnippetLabelId, v2);
}

uint64_t sub_22C87C8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C90304C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C3F966C(a1, &v17 - v14);
  (*(v7 + 16))(v11, a2, v5);
  v15 = sub_22C902FCC();
  (*(v7 + 8))(a2, v5);
  sub_22C3770B0(a1, &qword_27D9BB138, &qword_22C90DB70);
  return v15;
}

uint64_t sub_22C87CA1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C90304C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  swift_allocObject();
  (*(v5 + 16))(v9, a2, v3);
  v10 = sub_22C902FDC();
  (*(v5 + 8))(a2, v3);
  return v10;
}

uint64_t sub_22C87CB18()
{
  sub_22C902FEC();

  return swift_deallocClassInstance();
}

unint64_t sub_22C87CB50()
{
  result = qword_27D9C0CE0;
  if (!qword_27D9C0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0CE0);
  }

  return result;
}

unint64_t sub_22C87CBA4()
{
  result = qword_27D9C0CF0;
  if (!qword_27D9C0CF0)
  {
    sub_22C90304C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0CF0);
  }

  return result;
}

unint64_t sub_22C87CBFC()
{
  result = qword_27D9C0D00;
  if (!qword_27D9C0D00)
  {
    sub_22C3AC1A0(&qword_27D9C0CF8, &unk_22C92B040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0D00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationSnippetLabelsExecutor.ResponseGenerationSnippetLabelId(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C87CD40()
{
  result = qword_27D9C0D08;
  if (!qword_27D9C0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0D08);
  }

  return result;
}

uint64_t sub_22C87CD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[31] = a7;
  v8[32] = v7;
  v8[29] = a5;
  v8[30] = a6;
  v8[27] = a3;
  v8[28] = a4;
  v8[25] = a1;
  v8[26] = a2;
  v9 = sub_22C90234C();
  v8[33] = v9;
  sub_22C3699B8(v9);
  v8[34] = v10;
  v8[35] = sub_22C3699D4();
  v11 = sub_22C90304C();
  v8[36] = v11;
  sub_22C3699B8(v11);
  v8[37] = v12;
  v8[38] = sub_22C3699D4();
  v13 = sub_22C90219C();
  v8[39] = v13;
  sub_22C3699B8(v13);
  v8[40] = v14;
  v8[41] = sub_22C3699D4();
  v15 = sub_22C9018AC();
  v8[42] = v15;
  sub_22C3699B8(v15);
  v8[43] = v16;
  v8[44] = sub_22C3699D4();
  v17 = sub_22C90077C();
  v8[45] = v17;
  sub_22C3699B8(v17);
  v8[46] = v18;
  v8[47] = sub_22C3699D4();
  v19 = sub_22C9063DC();
  v8[48] = v19;
  sub_22C3699B8(v19);
  v8[49] = v20;
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v8[53] = sub_22C3699D4();
  v21 = sub_22C90046C();
  v8[54] = v21;
  sub_22C3699B8(v21);
  v8[55] = v22;
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C87D07C, 0, 0);
}

uint64_t sub_22C87D07C()
{
  v51 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  sub_22C3F966C(*(v0 + 256) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder, v1);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    sub_22C3770B0(*(v0 + 424), &qword_27D9BB138, &qword_22C90DB70);
    sub_22C90405C();
    v3 = sub_22C9063CC();
    v4 = sub_22C90AADC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22C366000, v3, v4, "Can't find any template folder, return empty response.", v5, 2u);
      sub_22C3699EC();
    }

    v7 = *(v0 + 392);
    v6 = *(v0 + 400);
    v8 = *(v0 + 384);

    (*(v7 + 8))(v6, v8);
    sub_22C90233C();
    sub_22C36A500();

    sub_22C369A24();
    sub_22C36EC40();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v0 + 448);
  v12 = *(v0 + 456);
  v13 = *(v0 + 432);
  v14 = *(v0 + 440);
  (*(v14 + 32))(v12, *(v0 + 424), v13);
  sub_22C90405C();
  (*(v14 + 16))(v11, v12, v13);

  v15 = sub_22C9063CC();
  v16 = sub_22C90AABC();

  v17 = os_log_type_enabled(v15, v16);
  v19 = *(v0 + 440);
  v18 = *(v0 + 448);
  v20 = *(v0 + 432);
  v21 = *(v0 + 416);
  v22 = *(v0 + 384);
  v23 = *(v0 + 392);
  if (v17)
  {
    v47 = *(v0 + 384);
    v49 = *(v0 + 416);
    v25 = *(v0 + 208);
    v24 = *(v0 + 216);
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v26 = 136315651;
    *(v26 + 4) = sub_22C36F9F4(v25, v24, &v50);
    *(v26 + 12) = 2085;
    v27 = sub_22C909EDC();
    v29 = sub_22C36F9F4(v27, v28, &v50);

    *(v26 + 14) = v29;
    *(v26 + 22) = 2080;
    sub_22C87E278();
    v30 = sub_22C90B47C();
    v32 = v31;
    log = v15;
    v33 = v16;
    v34 = *(v19 + 8);
    v34(v18, v20);
    v35 = sub_22C36F9F4(v30, v32, &v50);

    *(v26 + 24) = v35;
    _os_log_impl(&dword_22C366000, log, v33, "Generating response dialog using template:\ncatId: %s\nparameters: %{sensitive}s\ntemplateFolder:%s", v26, 0x20u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    v36 = *(v23 + 8);
    v36(v49, v47);
  }

  else
  {

    v34 = *(v19 + 8);
    v34(v18, v20);
    v36 = *(v23 + 8);
    v36(v21, v22);
  }

  *(v0 + 464) = v36;
  *(v0 + 472) = v34;
  v37 = *(v0 + 352);
  v39 = *(v0 + 336);
  v38 = *(v0 + 344);
  v40 = *(v0 + 320);
  v41 = *(v0 + 328);
  v48 = *(v0 + 312);
  (*(*(v0 + 368) + 16))(*(v0 + 376), *(v0 + 232), *(v0 + 360));
  sub_22C902F0C();
  swift_allocObject();
  sub_22C902EDC();
  sub_22C87DED4();
  sub_22C902EEC();

  v42 = (*(v38 + 8))(v37, v39);
  MEMORY[0x2318AF660](v42);
  sub_22C87E034();
  (*(v40 + 8))(v41, v48);
  sub_22C902ECC();

  *(v0 + 480) = sub_22C902EFC();

  sub_22C902F4C();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_22C90303C();
  v43 = swift_task_alloc();
  *(v0 + 488) = v43;
  *v43 = v0;
  v43[1] = sub_22C87D61C;
  sub_22C36EC40();

  return MEMORY[0x2821B7E50]();
}

uint64_t sub_22C87D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v9;
  v11 = *(*v9 + 304);
  v12 = *(*v9 + 296);
  v13 = *(*v9 + 288);
  *(v10 + 496) = a1;
  *(v10 + 504) = v8;

  (*(v12 + 8))(v11, v13);
  sub_22C3770B0(v10 + 16, &qword_27D9C0D10, &unk_22C92B198);
  if (v8)
  {
    v14 = sub_22C87DDC0;
  }

  else
  {
    v14 = sub_22C87D7B0;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_22C87D7B0()
{
  v72 = v0;
  v1 = [*(v0 + 496) dialog];
  sub_22C87E234();
  v2 = sub_22C90A5EC();

  if (sub_22C36E2B8())
  {
    sub_22C633A2C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x2318B8460](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    sub_22C90233C();
    v5 = [v4 fullPrint];
    sub_22C90A11C();
    sub_22C387674();
    sub_22C3726C4();
    sub_22C90230C();
    v6 = [v4 fullSpeak];
    sub_22C90A11C();
    sub_22C387674();
    sub_22C3726C4();
    sub_22C90232C();
    v7 = [v4 supportingPrint];
    sub_22C90A11C();
    sub_22C387674();
    sub_22C3726C4();
    sub_22C90229C();
    v8 = [v4 supportingSpeak];
    sub_22C90A11C();
    sub_22C387674();
    sub_22C3726C4();
    sub_22C9022BC();

    sub_22C9022DC();
    v9 = [v4 dialogId];
    sub_22C90A11C();

    sub_22C90227C();
    sub_22C90405C();

    v10 = sub_22C9063CC();
    v11 = sub_22C90AABC();

    v12 = os_log_type_enabled(v10, v11);
    v69 = *(v0 + 496);
    v70 = *(v0 + 480);
    if (v12)
    {
      v67 = *(v0 + 432);
      v68 = *(v0 + 456);
      v65 = *(v0 + 408);
      v66 = *(v0 + 440);
      v63 = *(v0 + 392);
      v64 = *(v0 + 384);
      v60 = *(v0 + 208);
      v61 = *(v0 + 216);
      v13 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v71 = v62;
      *v13 = 136644099;
      sub_22C37E200(v62, v0 + 80);
      v14 = sub_22C9022FC();
      v16 = v15;
      swift_endAccess();
      sub_22C36F9F4(v14, v16, &v71);
      v17 = sub_22C87E2D0();
      *(v13 + 4) = v14;
      *(v13 + 12) = 2085;
      sub_22C37E200(v17, v0 + 104);
      v18 = sub_22C90231C();
      v20 = v19;
      swift_endAccess();
      if (v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = 7104878;
      }

      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      sub_22C36F9F4(v21, v22, &v71);
      v23 = sub_22C87E2D0();
      *(v13 + 14) = v20;
      *(v13 + 22) = 2085;
      sub_22C37E200(v23, v0 + 128);
      v24 = sub_22C90228C();
      v26 = v25;
      swift_endAccess();
      if (v26)
      {
        v27 = v24;
      }

      else
      {
        v27 = 7104878;
      }

      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0xE300000000000000;
      }

      sub_22C36F9F4(v27, v28, &v71);
      v29 = sub_22C87E2D0();
      *(v13 + 24) = v26;
      *(v13 + 32) = 2085;
      sub_22C37E200(v29, v0 + 152);
      v30 = sub_22C9022AC();
      v32 = v31;
      swift_endAccess();
      if (v32)
      {
        v33 = v30;
      }

      else
      {
        v33 = 7104878;
      }

      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = 0xE300000000000000;
      }

      sub_22C36F9F4(v33, v34, &v71);
      sub_22C87E2D0();
      *(v13 + 34) = v32;
      *(v13 + 42) = 2080;
      v35 = sub_22C36F9F4(v60, v61, &v71);
      *(v13 + 44) = v35;
      *(v13 + 52) = 2080;
      sub_22C37E200(v35, v0 + 176);
      v36 = sub_22C90226C();
      v38 = v37;
      swift_endAccess();
      if (v38)
      {
        v39 = v36;
      }

      else
      {
        v39 = 7104878;
      }

      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0xE300000000000000;
      }

      v41 = sub_22C36F9F4(v39, v40, &v71);

      *(v13 + 54) = v41;
      _os_log_impl(&dword_22C366000, v10, v11, "Templated response dialog:\nfullPrint: %{sensitive}s\nfullSpeak: %{sensitive}s\nsupportingPrint: %{sensitive}s\nsupportingSpeak: %{sensitive}s\ncatId: %s\ndialogId: %s", v13, 0x3Eu);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v63 + 8))(v65, v64);
      (*(v66 + 8))(v68, v67);
    }

    else
    {
      v48 = *(v0 + 464);
      v47 = *(v0 + 472);
      v49 = *(v0 + 456);
      v50 = *(v0 + 432);
      v51 = *(v0 + 408);
      v52 = *(v0 + 384);

      v48(v51, v52);
      v47(v49, v50);
    }

    v54 = *(v0 + 272);
    v53 = *(v0 + 280);
    v55 = *(v0 + 264);
    swift_beginAccess();
    v56 = sub_22C36C5AC();
    v57(v56);
    (*(v54 + 8))(v53, v55);
  }

  else
  {
    v42 = *(v0 + 496);
    v44 = *(v0 + 472);
    v43 = *(v0 + 480);
    v45 = *(v0 + 456);
    v46 = *(v0 + 432);

    sub_22C90233C();

    v44(v45, v46);
  }

  sub_22C36A500();

  sub_22C369A24();

  return v58();
}

void sub_22C87DDC0()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);

  v1(v2, v3);

  sub_22C369A24();
  sub_22C36EC40();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C87DED4()
{
  v1 = v0;
  v2 = sub_22C90687C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D1DC20])
  {
    return sub_22C90187C();
  }

  if (v9 == *MEMORY[0x277D1DC30])
  {
    return sub_22C90189C();
  }

  if (v9 == *MEMORY[0x277D1DC28])
  {
    return sub_22C90188C();
  }

  if (v9 == *MEMORY[0x277D1DC18])
  {
    return sub_22C90186C();
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C87E034()
{
  v0 = sub_22C90219C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C36C5AC();
  v8(v7);
  v9 = (*(v2 + 88))(v6, v0);
  if (v9 == *MEMORY[0x277D1C5F8])
  {
    return 0x6E776F6E6B6E75;
  }

  if (v9 == *MEMORY[0x277D1C608])
  {
    return 0x656C616D6566;
  }

  if (v9 == *MEMORY[0x277D1C600])
  {
    return 1701601645;
  }

  if (v9 == *MEMORY[0x277D1C610])
  {
    return 0x6C61727475656ELL;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

void sub_22C87E1A4(uint64_t a1)
{
  sub_22C5D37EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_22C87E234()
{
  result = qword_27D9C0D18;
  if (!qword_27D9C0D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C0D18);
  }

  return result;
}

unint64_t sub_22C87E278()
{
  result = qword_281435848;
  if (!qword_281435848)
  {
    sub_22C90046C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281435848);
  }

  return result;
}

uint64_t sub_22C87E2D0()
{
}

uint64_t type metadata accessor for DialogOutput(uint64_t a1)
{
  result = qword_27D9C0D20;
  if (!qword_27D9C0D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C87E35C(uint64_t a1)
{
  result = sub_22C90240C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C87E3C8()
{
  sub_22C369A48();
  sub_22C90793C();
  sub_22C369958();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C373C0C();
  v5 = (*(v3 + 88))(v1, v0);
  if (v5 == *MEMORY[0x277D1E168])
  {
    return sub_22C9022FC();
  }

  if (v5 != *MEMORY[0x277D1E160])
  {
    result = sub_22C90B4EC();
    __break(1u);
    return result;
  }

  result = sub_22C90228C();
  if (!v7)
  {
    return sub_22C9022FC();
  }

  return result;
}

uint64_t sub_22C87E4B8()
{
  sub_22C369A48();
  sub_22C90793C();
  sub_22C369958();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C373C0C();
  v5 = (*(v3 + 88))(v1, v0);
  if (v5 == *MEMORY[0x277D1E168])
  {
    return sub_22C90231C();
  }

  if (v5 != *MEMORY[0x277D1E160])
  {
    result = sub_22C90B4EC();
    __break(1u);
    return result;
  }

  result = sub_22C9022AC();
  if (!v7)
  {
    return sub_22C90231C();
  }

  return result;
}

uint64_t sub_22C87E5A8@<X0>(char *a1@<X8>)
{
  v30 = a1;
  sub_22C90240C();
  sub_22C369958();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v29 - v11);
  v13 = sub_22C87E3C8();
  v15 = v14;
  sub_22C9022CC();
  if (v16)
  {

    v17 = MEMORY[0x277D1C9D8];
  }

  else
  {
    v17 = MEMORY[0x277D1C9E0];
  }

  *v12 = v13;
  v12[1] = v15;
  v18 = *(v3 + 104);
  v18(v12, *v17, v1);
  v19 = sub_22C87E4B8();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    sub_22C9022CC();
    if (v23)
    {

      v24 = MEMORY[0x277D1C9D8];
    }

    else
    {
      v24 = MEMORY[0x277D1C9E0];
    }

    *v7 = v21;
    v7[1] = v22;
    v18(v7, *v24, v1);
    v25 = *(v3 + 32);
    v25(v10, v7, v1);
  }

  else
  {
    v18(v10, *MEMORY[0x277D1C9F0], v1);
    v25 = *(v3 + 32);
  }

  v26 = v30;
  v25(v30, v12, v1);
  v27 = type metadata accessor for DialogOutput(0);
  return (v25)(&v26[*(v27 + 20)], v10, v1);
}

void sub_22C87E814(uint64_t a1)
{
  sub_22C87E898(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TypedValueFormatter(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C87E898(uint64_t a1)
{
  if (!qword_27D9C0D40)
  {
    sub_22C9091CC();
    type metadata accessor for DialogValues.ResolvedValue(255);
    sub_22C88739C(&qword_27D9BF390, MEMORY[0x277D72900], MEMORY[0x277D72910]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9C0D40);
    }
  }
}

uint64_t sub_22C87E98C(uint64_t a1)
{
  result = sub_22C9093BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C87E9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = a3;
  return MEMORY[0x2822009F8](sub_22C87EA1C, 0, 0);
}

uint64_t sub_22C87EA1C()
{
  sub_22C36FB38();
  v1 = sub_22C3A5908(&qword_27D9BE220, &qword_22C91D728);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v3;
  v4 = sub_22C3A5908(&qword_27D9C0DA0, &qword_22C92B270);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 56) = v5;
  *v5 = v6;
  v5[1] = sub_22C87EB38;

  return MEMORY[0x282200740](v0 + 24, v1, v4, 0, 0, &unk_22C92B268, v2, v1);
}

uint64_t sub_22C87EB38()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C87EC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_22C3A5908(&qword_27D9C0DA8, &unk_22C92B280);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_22C9093BC();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v4[19] = *(v7 + 64);
  v4[20] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C87EDBC, 0, 0);
}

uint64_t sub_22C87EDBC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v30 = **(v0 + 80);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v28 = (v3 + 16);
    v29 = *(v3 + 72);
    v27 = (v4 + 48) & ~v4;
    v26 = (v3 + 32);
    v6 = sub_22C90A75C();
    do
    {
      v32 = v2;
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);
      v9 = *(v0 + 160);
      v10 = *(v0 + 136);
      v11 = *(v0 + 104);
      v31 = *(v0 + 96);
      sub_22C36C640(v7, 1, 1, v6);
      (*v28)(v9, v5, v10);
      v12 = swift_allocObject();
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 4) = v31;
      *(v12 + 5) = v11;
      (*v26)(&v12[v27], v9, v10);
      sub_22C4E719C(v7, v8, &qword_27D9BBB48, &qword_22C910F00);
      v13 = sub_22C37EF1C();
      LODWORD(v8) = sub_22C370B74(v13, v14, v6);

      v15 = *(v0 + 168);
      if (v8 == 1)
      {
        v16 = sub_22C36BBCC();
        sub_22C36DD28(v16, v17, &qword_22C910F00);
      }

      else
      {
        sub_22C90A74C();
        (*(*(v6 - 8) + 8))(v15, v6);
      }

      if (*(v12 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_22C90A6DC();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      sub_22C3A5908(&qword_27D9BE220, &qword_22C91D728);
      v21 = v20 | v18;
      if (v20 | v18)
      {
        v21 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      v22 = *(v0 + 176);
      *(v0 + 48) = 1;
      *(v0 + 56) = v21;
      *(v0 + 64) = v30;
      swift_task_create();

      sub_22C36DD28(v22, &qword_27D9BBB48, &qword_22C910F00);
      v5 += v29;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  sub_22C3A5908(&qword_27D9BE220, &qword_22C91D728);
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C36BAFC();
  sub_22C90A81C();
  *(v0 + 184) = MEMORY[0x277D84F90];
  sub_22C88804C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 192) = v23;
  *v23 = v24;
  sub_22C37A48C(v23);

  return MEMORY[0x282200308](v0 + 72);
}

uint64_t sub_22C87F16C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v3[25] = v0;

  if (v0)
  {
    (*(v3[15] + 8))(v3[16], v3[14]);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C87F28C()
{
  sub_22C36FB38();
  v1 = v0[9];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v0[23];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C36D270();
      sub_22C596FDC();
      v3 = v9;
    }

    v4 = *(v3 + 16);
    if (v4 >= *(v3 + 24) >> 1)
    {
      sub_22C596FDC();
      v3 = v10;
    }

    *(v3 + 16) = v4 + 1;
    *(v3 + 8 * v4 + 32) = v1;
    v0[23] = v3;
    sub_22C88804C();
    swift_task_alloc();
    sub_22C36CC90();
    v0[24] = v5;
    *v5 = v6;
    sub_22C37A48C(v5);

    return MEMORY[0x282200308](v0 + 9);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v7 = v0[1];
    v8 = v0[23];

    return v7(v8);
  }
}

uint64_t sub_22C87F404()
{
  sub_22C36FB38();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C87F488(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_22C87F588;

  return v9(v5 + 16, a5);
}

uint64_t sub_22C87F588()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C87F6B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C0D90, &qword_22C92B248);
    v3 = sub_22C90B1EC();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22C887740(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_22C87F748()
{
  sub_22C36BA7C();
  v35[2] = v1;
  v2 = sub_22C3A5908(&qword_27D9C0D60, &qword_22C92B208);
  sub_22C36985C();
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v35 - v8;
  v10 = sub_22C9001FC();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  v36 = sub_22C3A5908(&qword_27D9C0D68, &qword_22C92B210);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v37 = v35 - v18;
  v19 = sub_22C3A5908(&qword_27D9C0D70, &qword_22C92B218);
  sub_22C369914(v19);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22C9001BC();
  v22 = sub_22C88739C(&qword_27D9C0068, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v38 = v21;
  v23 = v22;
  sub_22C90A93C();
  sub_22C382A7C();
  sub_22C88739C(v24, v25, MEMORY[0x277CC8C30]);
  if (sub_22C90A0BC())
  {
    sub_22C90A97C();
    sub_22C382A7C();
    sub_22C88739C(v26, v27, MEMORY[0x277CC8C28]);
    if (sub_22C90A07C())
    {
      v35[0] = v0;
      v35[1] = v23;
      v28 = *(v12 + 32);
      v29 = sub_22C3726C4();
      v28(v29);
      (v28)(&v9[*(v2 + 48)], v16, v10);
      sub_22C4E719C(v9, v6, &qword_27D9C0D60, &qword_22C92B208);
      v30 = *(v2 + 48);
      v31 = v37;
      v32 = sub_22C36D264();
      v28(v32);
      v33 = *(v12 + 8);
      v33(v6 + v30, v10);
      sub_22C4E7208(v9, v6, &qword_27D9C0D60, &qword_22C92B208);
      (v28)(v31 + *(v36 + 36), v6 + *(v2 + 48), v10);
      v34 = sub_22C36ECB4();
      (v33)(v34);
      sub_22C90A9BC();
      sub_22C36DD28(v31, &qword_27D9C0D68, &qword_22C92B210);
      sub_22C36CC48();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_22C87FB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_22C370030();
  sub_22C37ADD4(v13, v14, v15);
  sub_22C369824();
  v59 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  sub_22C369914(v21);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C8885C8();
  sub_22C369824();
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v24 = sub_22C36EC5C();
  v25 = type metadata accessor for DialogValue(v24);
  sub_22C36985C();
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C373C34();
  sub_22C887550(v10, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = sub_22C386E70();
      v29(v28);
      sub_22C881B80(v20, v30, v31, v32, v33, v34, v35, v36, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, *(&v66 + 1));
      if (a10)
      {

        v39 = sub_22C372158();
        v40(v39);
LABEL_14:
        *v61 = 0u;
        *(v61 + 16) = 0u;
        goto LABEL_15;
      }

      if (!v38)
      {
        v55 = sub_22C372158();
        v56(v55);
        goto LABEL_14;
      }

      *(v61 + 24) = MEMORY[0x277D837D0];
      *v61 = v37;
      *(v61 + 8) = v38;
      v48 = sub_22C372158();
      v49(v48);
    }

    else
    {
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      sub_22C888560();
      sub_22C7928B0();
      v47 = v46;

      *(v61 + 24) = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      *v61 = v47;
    }
  }

  else
  {
    v41 = sub_22C8884F4();
    v42(v41);
    v43 = sub_22C902F2C();

    sub_22C3818D4();
    sub_22C8885E8();
    if (v43)
    {
      v44 = sub_22C8884BC();
      v45(v44);
    }

    else
    {
      sub_22C386058();
      sub_22C4F5DF8(&v67);
      v66 = v64;
      sub_22C4F5DF8(&v66);

      sub_22C58B0C8(v11, v25);

      v50 = sub_22C902FBC();
      if (sub_22C370B74(v25, 1, v50) == 1)
      {
        v51 = sub_22C8884BC();
        v52(v51);

        sub_22C36DD28(v25, &qword_27D9C0AB8, &qword_22C92A190);
        goto LABEL_14;
      }

      sub_22C902F9C();
      *(v61 + 24) = MEMORY[0x277D837D0];

      v53 = sub_22C8885B4();
      v54(v53);
      (*(*(v50 - 8) + 8))(v25, v50);
    }
  }

LABEL_15:
  sub_22C36FB20();
}

void sub_22C87FF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_22C370030();
  sub_22C37ADD4(v13, v14, v15);
  sub_22C369824();
  v64 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  sub_22C369914(v21);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C8885C8();
  sub_22C369824();
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v24 = sub_22C36EC5C();
  v25 = type metadata accessor for DialogValue(v24);
  sub_22C36985C();
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C373C34();
  sub_22C887550(v10, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = sub_22C386E70();
      v29(v28);
      sub_22C88107C(v20, v30, v31, v32, v33, v34, v35, v36, v62, v63, v64, v65, v66, v68, v69, v70, *(&v70 + 1), v71, v72, *(&v72 + 1));
      if (a10)
      {

        v38 = sub_22C372158();
        v39(v38);
LABEL_11:
        *v66 = 0u;
        *(v66 + 16) = 0u;
        goto LABEL_12;
      }

      v54 = v37;
      *(v66 + 24) = sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
      *v66 = v54;
      v55 = sub_22C372158();
      v56(v55);
    }

    else
    {
      v45 = *v12;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      sub_22C888560();
      sub_22C7951F8(sub_22C881B64, v46, v45, v47, v48, v49, v50, v51, v62, v63, v64, v65, v66, v68, v69, v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73[0], v73[1]);
      v53 = v52;

      v67[3] = sub_22C3A5908(&qword_27D9C0B90, &qword_22C92A970);
      *v67 = v53;
    }
  }

  else
  {
    v40 = sub_22C8884F4();
    v41(v40);
    v42 = sub_22C902F2C();

    sub_22C3818D4();
    sub_22C8885E8();
    if (!v42)
    {
      sub_22C386058();
      sub_22C4F5DF8(v73);
      v72 = v70;
      sub_22C4F5DF8(&v72);

      sub_22C58B0C8(v11, v25);

      v57 = sub_22C902FBC();
      if (sub_22C370B74(v25, 1, v57) != 1)
      {
        sub_22C902F9C();
        *(v66 + 24) = MEMORY[0x277D837D0];

        v60 = sub_22C8885B4();
        v61(v60);
        (*(*(v57 - 8) + 8))(v25, v57);
        goto LABEL_12;
      }

      v58 = sub_22C8884BC();
      v59(v58);

      sub_22C36DD28(v25, &qword_27D9C0AB8, &qword_22C92A190);
      goto LABEL_11;
    }

    v43 = sub_22C8884BC();
    v44(v43);
  }

LABEL_12:
  sub_22C36FB20();
}

void sub_22C880300()
{
  sub_22C370030();
  sub_22C369A48();
  v2 = sub_22C9093BC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  type metadata accessor for DialogValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  sub_22C373C34();
  sub_22C887550(v0, v15);
  sub_22C3726C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22C8880B0(v15, type metadata accessor for DialogValue);
    sub_22C590270(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = v18;
    v2 = *(v18 + 16);
    v20 = *(v18 + 24);
    v0 = v2 + 1;
    if (v2 < v20 >> 1)
    {
LABEL_7:
      *(v19 + 16) = v0;
      v21 = v19 + 16 * v2;
      *(v21 + 32) = 0x6966203A4F444F54;
      *(v21 + 40) = 0xEB00000000656D78;
      goto LABEL_20;
    }

LABEL_22:
    v43 = sub_22C36A958(v20);
    sub_22C590270(v43, v44, v45, v46);
    v19 = v47;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22 = 0;
    v23 = *v15;
    v24 = *(*v15 + 16);
    v52 = v2;
    v53 = v24;
    v50 = v4 + 16;
    v51 = v4 + 8;
    v49 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v53 == v22)
      {

        goto LABEL_20;
      }

      v20 = *(v23 + 16);
      if (v22 >= v20)
      {
        break;
      }

      v2 = v23;
      (*(v4 + 16))(v8, v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v52);
      v25 = sub_22C8F6208(v8);
      if (v1)
      {
        v41 = sub_22C36ECB4();
        v42(v41);

        goto LABEL_20;
      }

      v27 = v25;
      v28 = v26;
      ++v22;
      v29 = sub_22C36ECB4();
      v30(v29);
      if (v28)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_22C36D270();
          sub_22C590270(v35, v36, v37, v38);
          v49 = v39;
        }

        v2 = *(v49 + 16);
        v31 = *(v49 + 24);
        v32 = v2 + 1;
        if (v2 >= v31 >> 1)
        {
          v48 = v2 + 1;
          sub_22C590270(v31 > 1, v2 + 1, 1, v49);
          v32 = v48;
          v49 = v40;
        }

        v33 = v49;
        *(v49 + 16) = v32;
        v34 = v33 + 16 * v2;
        *(v34 + 32) = v27;
        *(v34 + 40) = v28;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v4 + 32))(v11, v15, v2);
  v17 = sub_22C8F4D3C(v11);
  if (!v1)
  {
    sub_22C3CC46C(v17);
  }

  (*(v4 + 8))(v11, v2);
LABEL_20:
  sub_22C36FB20();
}

void sub_22C8806A0()
{
  sub_22C36BA7C();
  v2 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = sub_22C9093BC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v28 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = sub_22C90277C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v19 = sub_22C36EC5C();
  type metadata accessor for DialogValue(v19);
  sub_22C36985C();
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v23 = (v22 - v21);
  sub_22C373C34();
  sub_22C887550(v0, v23);
  sub_22C3726C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 32))(v14, v23, v6);
      sub_22C8809EC();
      (*(v8 + 8))(v14, v6);
    }

    else
    {
      sub_22C58B008(*v23, v5);

      if (sub_22C370B74(v5, 1, v6) == 1)
      {
        sub_22C36DD28(v5, &qword_27D9BB908, &qword_22C910960);
      }

      else
      {
        v25 = v28;
        (*(v8 + 32))(v28, v5, v6);
        v26 = sub_22C8809EC();
        v29 = 91;
        v30 = 0xE100000000000000;
        MEMORY[0x2318B7850](v26);

        MEMORY[0x2318B7850](93, 0xE100000000000000);

        (*(v8 + 8))(v25, v6);
      }
    }
  }

  else
  {
    (*(v17 + 32))(v1, v23, v15);
    sub_22C90274C();
    (*(v17 + 8))(v1, v15);
  }

  sub_22C36CC48();
}

uint64_t sub_22C8809EC()
{
  v0 = sub_22C9094EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C90952C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_22C90935C();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v8);
  v11 = *(v5 + 8);
  v11(v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == *MEMORY[0x277D72D50])
  {
    (*(v5 + 96))(v8, v4);
    v13 = swift_projectBox();
    (*(v1 + 16))(v3, v13, v0);
    v14 = sub_22C9094DC();
    (*(v1 + 8))(v3, v0);
  }

  else if (v12 == *MEMORY[0x277D72D28])
  {
    (*(v5 + 96))(v8, v4);
    v15 = *(*v8 + 24);
    v16 = *(*v8 + 32);
    v17 = *(*v8 + 40);
    v19[0] = *(*v8 + 16);
    v19[1] = v15;

    MEMORY[0x2318B7850](46, 0xE100000000000000);

    MEMORY[0x2318B7850](v16, v17);

    return v19[0];
  }

  else
  {
    v11(v8, v4);
    return 0x6E776F6E6B6E75;
  }

  return v14;
}

void sub_22C880CD0()
{
  sub_22C36BA7C();
  v37 = v1;
  v38 = v0;
  v3 = v2;
  v4 = type metadata accessor for DialogValues.ResolvedValue(0);
  v5 = sub_22C3699B8(v4);
  v46 = v6;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v45 = v8 - v7;
  sub_22C36BA0C();
  v44 = sub_22C9093BC();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v43 = v13 - v12;
  sub_22C36BA0C();
  v42 = sub_22C9091CC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v41 = v18 - v17;
  sub_22C3A5908(&qword_27D9C0DB8, &qword_22C92B2C8);
  v19 = sub_22C90B1CC();
  v20 = v19;
  v21 = 0;
  v47 = v3;
  v24 = *(v3 + 64);
  v23 = v3 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v39 = v19 + 64;
  v40 = v19;
  if (v27)
  {
    while (1)
    {
      v29 = __clz(__rbit64(v27));
      v48 = (v27 - 1) & v27;
LABEL_10:
      v32 = v29 | (v21 << 6);
      v49 = *(v15 + 72) * v32;
      (*(v15 + 16))(v41, *(v47 + 48) + v49, v42);
      (*(v10 + 16))(v43, *(v47 + 56) + *(v10 + 72) * v32, v44);
      (*(v10 + 32))(v45, v43, v44);
      *(v39 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v20 = v40;
      (*(v15 + 32))(v40[6] + v49, v41, v42);
      sub_22C888108(v45, v40[7] + *(v46 + 72) * v32);
      v33 = v40[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v40[2] = v35;
      v27 = v48;
      if (!v48)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v28)
      {

        *v37 = v20;
        v36 = type metadata accessor for DialogValues(0);
        sub_22C888108(v38, v37 + *(v36 + 20));
        sub_22C36CC48();
        return;
      }

      v31 = *(v23 + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v48 = (v31 - 1) & v31;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C88107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  v132 = v21;
  v130 = v20;
  sub_22C369A48();
  v127 = sub_22C90952C();
  sub_22C369824();
  v124 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v123 = v26 - v25;
  sub_22C36BA0C();
  v125 = sub_22C90993C();
  sub_22C369824();
  v129 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v126 = v30 - v29;
  v31 = sub_22C36BA0C();
  v32 = type metadata accessor for TypedValueSalientContent(v31);
  sub_22C36985C();
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  v36 = (v35 - v34);
  v37 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v37);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  sub_22C37BDA4();
  v39 = sub_22C9093BC();
  sub_22C369824();
  v128 = v40;
  MEMORY[0x28223BE20](v41);
  sub_22C369ABC();
  v44 = v42 - v43;
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v117 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v117 - v49;
  v51 = sub_22C909F0C();
  v131 = v50;
  v52 = v132;
  sub_22C8825EC(v20, v50);
  v132 = v52;
  if (v52)
  {
LABEL_2:
  }

  else
  {
    v121 = v32;
    v122 = v36;
    v119 = v44;
    v120 = v48;
    sub_22C90939C();
    v53 = sub_22C37EF1C();
    v54 = v125;
    if (sub_22C370B74(v53, v55, v125) == 1)
    {
      sub_22C36DD28(v22, &qword_27D9BC390, &qword_22C912AC0);
      v56 = v39;
      v57 = MEMORY[0x277D837D0];
      v58 = v126;
      v59 = v51;
    }

    else
    {
      v60 = sub_22C9098BC();
      v62 = v61;
      v63 = sub_22C36ECB4();
      v64(v63);
      v57 = MEMORY[0x277D837D0];
      v137 = MEMORY[0x277D837D0];
      v135 = v60;
      v136 = v62;
      v56 = v39;
      sub_22C374614();
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C62F20C();
      v59 = v51;
      v58 = v126;
    }

    v65 = v122;
    sub_22C8F90D0(v131, v122);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v67 = v127;
    v68 = v129;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v130 = v59;
        v80 = v65;
        v82 = *v65;
        v81 = v65[1];
        v83 = sub_22C3A5908(&qword_27D9C0D58, &unk_22C92B1E0);
        v84 = v128;
        v85 = v120;
        (*(v128 + 32))(v120, v80 + *(v83 + 48), v56);
        v86 = v119;
        v87 = v132;
        sub_22C8825EC(v85, v119);
        v132 = v87;
        if (v87)
        {

          v88 = *(v84 + 8);
          v88(v85, v56);
          v88(v131, v56);
          goto LABEL_2;
        }

        v118 = v56;
        v137 = MEMORY[0x277D837D0];
        v135 = v82;
        v136 = v81;
        sub_22C374614();
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C37B874();
        sub_22C62F20C();
        type metadata accessor for DialogValues(0);
        v89 = v132;
        v90 = sub_22C8F6208(v86);
        v132 = v89;
        if (v89)
        {
          v92 = *(v128 + 8);
          v93 = v118;
          v92(v86, v118);
          v92(v120, v93);
          v92(v131, v93);
        }

        else
        {
          v104 = MEMORY[0x277D837D0];
          if (v91)
          {
            v137 = MEMORY[0x277D837D0];
            v135 = v90;
            v136 = v91;
            sub_22C374614();
            swift_isUniquelyReferenced_nonNull_native();
            sub_22C37B874();
            sub_22C62F20C();
          }

          v105 = v123;
          sub_22C90935C();
          v106 = sub_22C882998();
          v108 = v107;
          (*(v124 + 8))(v105, v127);
          v137 = v104;
          v135 = v106;
          v136 = v108;
          sub_22C374614();

          swift_isUniquelyReferenced_nonNull_native();
          v109 = sub_22C37B874();
          sub_22C386C08(v109);
          sub_22C8830E8(&v135);
          if (v137)
          {
            sub_22C374614();
            swift_isUniquelyReferenced_nonNull_native();
            sub_22C37B874();
            sub_22C62F20C();

            v110 = v128;
            v111 = v118;
          }

          else
          {
            sub_22C36DD28(&v135, &qword_27D9BD5D8, &qword_22C918510);
            v112 = sub_22C36E2BC(v106, v108);
            if (v113)
            {
              v114 = v112;
              swift_isUniquelyReferenced_nonNull_native();
              sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
              v86 = v119;
              sub_22C90B15C();
              sub_22C37E81C();
              sub_22C456E34((a17 + 32 * v114), &v133);
              sub_22C90B17C();
            }

            else
            {
              v133 = 0u;
              v134 = 0u;
            }

            v110 = v128;
            v111 = v118;

            sub_22C36DD28(&v133, &qword_27D9BD5D8, &qword_22C918510);
          }

          v115 = v120;
          v116 = *(v110 + 8);
          v116(v86, v111);
          v116(v115, v111);
          v116(v131, v111);
        }

        break;
      case 2:
        type metadata accessor for DialogValues(0);
        v73 = v132;
        v74 = sub_22C8F6208(v131);
        v132 = v73;
        if (v73)
        {
          v76 = sub_22C888578();
          v77(v76);
          goto LABEL_2;
        }

        v118 = v56;
        if (v75)
        {
          v137 = v57;
          v135 = v74;
          v136 = v75;
          sub_22C374614();
          swift_isUniquelyReferenced_nonNull_native();
          sub_22C37B874();
          sub_22C62F20C();
        }

        v94 = v123;
        sub_22C90935C();
        v95 = sub_22C882998();
        v97 = v96;
        (*(v124 + 8))(v94, v67);
        v137 = v57;
        v135 = v95;
        v136 = v97;
        sub_22C374614();

        swift_isUniquelyReferenced_nonNull_native();
        v98 = sub_22C37B874();
        sub_22C386C08(v98);
        sub_22C8830E8(&v135);
        if (v137)
        {
          sub_22C374614();
          swift_isUniquelyReferenced_nonNull_native();
          sub_22C37B874();
          sub_22C62F20C();

          v99 = v128;
          v100 = v118;
        }

        else
        {
          sub_22C36DD28(&v135, &qword_27D9BD5D8, &qword_22C918510);
          v101 = sub_22C36E2BC(v95, v97);
          v100 = v118;
          if (v102)
          {
            v103 = v101;
            swift_isUniquelyReferenced_nonNull_native();
            sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
            sub_22C90B15C();
            sub_22C37E81C();
            sub_22C456E34((a17 + 32 * v103), &v133);
            sub_22C90B17C();
          }

          else
          {
            v133 = 0u;
            v134 = 0u;
          }

          v99 = v128;

          sub_22C36DD28(&v133, &qword_27D9BD5D8, &qword_22C918510);
        }

        (*(v99 + 8))(v131, v100);
        break;
      case 3:
        v78 = sub_22C888578();
        v79(v78);
        break;
      default:
        (*(v129 + 32))(v58, v65, v54);
        v137 = v57;
        v69 = v128;
        v135 = 0x676E69727473;
        v136 = 0xE600000000000000;
        sub_22C374614();
        swift_isUniquelyReferenced_nonNull_native();
        v70 = sub_22C37B874();
        sub_22C386C08(v70);
        v71 = sub_22C9098BC();
        v137 = v57;
        v135 = v71;
        v136 = v72;
        sub_22C374614();
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C37B874();
        sub_22C62F20C();
        (*(v68 + 8))(v58, v54);
        (*(v69 + 8))(v131, v56);
        break;
    }
  }

  sub_22C36FB20();
}

void sub_22C881B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v138 = v21;
  v139 = v20;
  v146 = v24;
  sub_22C90993C();
  sub_22C369824();
  v129 = v26;
  v130 = v25;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v128 = v28 - v27;
  v29 = sub_22C36BA0C();
  v131 = type metadata accessor for TypedValueSalientContent(v29);
  sub_22C36985C();
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v132 = (v32 - v31);
  sub_22C36BA0C();
  v144 = sub_22C9093BC();
  sub_22C369824();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  sub_22C369ABC();
  v127 = v36 - v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  v140 = &v126 - v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  v143 = &v126 - v41;
  sub_22C369930();
  MEMORY[0x28223BE20](v42);
  v137 = &v126 - v43;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v141 = v45;
  v142 = v44;
  MEMORY[0x28223BE20](v44);
  sub_22C369ABC();
  v126 = (v46 - v47);
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  v145 = &v126 - v49;
  sub_22C36BA0C();
  v136 = sub_22C90634C();
  sub_22C369824();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  sub_22C369ABC();
  v135 = v53 - v54;
  sub_22C369930();
  MEMORY[0x28223BE20](v55);
  v57 = &v126 - v56;
  v58 = sub_22C90636C();
  sub_22C369824();
  MEMORY[0x28223BE20](v59);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v60);
  v62 = &v126 - v61;
  sub_22C9036AC();
  sub_22C9036AC();
  sub_22C90635C();
  sub_22C90631C();
  v63 = sub_22C36BBCC();
  v134 = v64;
  (v64)(v63);
  v65 = sub_22C90635C();
  v66 = sub_22C90AB6C();
  v67 = sub_22C90AC5C();
  v133 = v34;
  if (v67)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v65, v66, v69, "ResponseGeneration.valueFormatting", "", v68, 2u);
    v34 = v133;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v70 = v136;
  (*(v51 + 16))(v135, v57, v136);
  sub_22C9063AC();
  swift_allocObject();
  sub_22C37EF1C();
  v71 = sub_22C90639C();
  (*(v51 + 8))(v57, v70);
  v134(v62, v58);
  v72 = v145;
  sub_22C90405C();
  v73 = v137;
  v74 = v146;
  v75 = v144;
  v134 = *(v34 + 16);
  v135 = v34 + 16;
  (v134)(v137, v146, v144);
  v76 = sub_22C9063CC();
  v77 = sub_22C90AACC();
  if (os_log_type_enabled(v76, v77))
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C36FF40();
    v78 = swift_slowAlloc();
    v147[0] = v78;
    *v73 = 136642819;
    v79 = sub_22C90938C();
    v136 = v71;
    v81 = v80;
    v82 = *(v34 + 8);
    v82(v73, v75);
    v83 = sub_22C36F9F4(v79, v81, v147);
    v71 = v136;
    v74 = v146;

    *(v73 + 4) = v83;
    _os_log_impl(&dword_22C366000, v76, v77, "Formatting value: %{sensitive}s", v73, 0xCu);
    sub_22C36FF94(v78);
    v84 = v82;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v85 = *(v141 + 8);
    v85(v145, v142);
  }

  else
  {

    v84 = *(v34 + 8);
    v84(v73, v75);
    v85 = *(v141 + 8);
    v85(v72, v142);
  }

  v86 = v143;
  v87 = v138;
  sub_22C8825EC(v74, v143);
  v88 = v140;
  if (!v87)
  {
    sub_22C8F90D0(v74, v132);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v136 = v71;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v94 = v132;

        v95 = sub_22C3A5908(&qword_27D9C0D58, &unk_22C92B1E0);
        v96 = v127;
        v97 = v144;
        (*(v133 + 32))(v127, v94 + *(v95 + 48), v144);
        sub_22C881B80(v96, v98, v99, v100, v101, v102, v103, v104, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
        v84(v96, v97);
        v84(v143, v97);
        break;
      case 2:
        type metadata accessor for DialogValues(0);
        v105 = sub_22C8F6208(v86);
        v107 = v106;
        v146 = v84;
        v108 = v126;
        sub_22C90405C();
        v109 = v74;
        v110 = v144;
        (v134)(v88, v109, v144);

        v111 = sub_22C9063CC();
        v112 = sub_22C90AACC();

        LODWORD(v145) = v112;
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          a10 = v139;
          *v113 = 136643075;
          v114 = v140;
          v115 = sub_22C90938C();
          v138 = v111;
          v116 = v115;
          v117 = v110;
          v119 = v118;
          v146(v114, v117);
          v120 = sub_22C36F9F4(v116, v119, &a10);

          *(v113 + 4) = v120;
          *(v113 + 12) = 2085;
          v147[0] = v105;
          v147[1] = v107;

          sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
          v121 = sub_22C90A1AC();
          v123 = sub_22C36F9F4(v121, v122, &a10);

          *(v113 + 14) = v123;
          v124 = v138;
          _os_log_impl(&dword_22C366000, v138, v145, "Formatted value:\n%{sensitive}s\nto:\n%{sensitive}s", v113, 0x16u);
          swift_arrayDestroy();
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          v85(v126, v142);
          v146(v143, v144);
        }

        else
        {

          v125 = v146;
          v146(v140, v110);
          v85(v108, v142);
          v125(v86, v110);
        }

        break;
      case 3:
        v93 = sub_22C375C44();
        (v84)(v93);
        break;
      default:
        (*(v129 + 32))(v128, v132, v130);
        sub_22C9098BC();
        v90 = sub_22C36BBCC();
        v91(v90);
        v92 = sub_22C375C44();
        (v84)(v92);
        break;
    }
  }

  sub_22C8846E4();

  sub_22C36FB20();
}

uint64_t sub_22C8825EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_22C3A5908(&qword_27D9C0D80, &qword_22C92B220);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = &v21 - v4;
  v24 = type metadata accessor for DialogValues.ResolvedValue(0);
  MEMORY[0x28223BE20](v24);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9093BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C9091CC();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v7 + 16);
  v13(v9, a1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D72A40])
  {
    v14 = v26;
    (*(v7 + 96))(v9, v6);
    v15 = swift_projectBox();
    v16 = v22;
    (*(v10 + 16))(v12, v15, v22);

    v17 = v23;
    sub_22C605E64(v12, *v25);
    if (sub_22C370B74(v17, 1, v24) == 1)
    {
      sub_22C36DD28(v17, &qword_27D9C0D80, &qword_22C92B220);
      sub_22C8873E4();
      swift_allocError();
      swift_willThrow();
      return (*(v10 + 8))(v12, v16);
    }

    else
    {
      (*(v10 + 8))(v12, v16);
      v19 = v17;
      v20 = v21;
      sub_22C888108(v19, v21);
      return (*(v7 + 32))(v14, v20, v6);
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return (v13)(v26, a1, v6);
  }
}

uint64_t sub_22C882998()
{
  v0 = sub_22C90952C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v42 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter((&v42 - v11));
  v13 = (*(v1 + 88))(v12, v0);
  if (v13 != *MEMORY[0x277D72D50])
  {
    if (v13 != *MEMORY[0x277D72D30])
    {
      if (v13 == *MEMORY[0x277D72D28])
      {
        (*(v1 + 16))(v7, v12, v0);
        (*(v1 + 96))(v7, v0);
        v17 = *(*v7 + 32);

        goto LABEL_91;
      }

      goto LABEL_89;
    }

    (*(v1 + 16))(v4, v12, v0);
    (*(v1 + 96))(v4, v0);
    v18 = sub_22C9094CC();
    v19 = swift_projectBox();
    v20 = (*(*(v18 - 8) + 88))(v19, v18);
    if (v20 == *MEMORY[0x277D72C00])
    {

      v17 = 0x7972657571;
      goto LABEL_91;
    }

    v22 = v20;
    if (v20 == *MEMORY[0x277D72BE0] || v20 == *MEMORY[0x277D72BC0] || v20 == *MEMORY[0x277D72C18] || v20 == *MEMORY[0x277D72BF8])
    {
      goto LABEL_22;
    }

    if (v20 != *MEMORY[0x277D72C20])
    {
      if (v20 == *MEMORY[0x277D72BF0])
      {

        v17 = 1701603686;
        goto LABEL_91;
      }

      if (v20 == *MEMORY[0x277D72C28] || v20 == *MEMORY[0x277D72BB8] || v20 == *MEMORY[0x277D72BD0] || v20 == *MEMORY[0x277D72C10])
      {
        goto LABEL_22;
      }

      if (v20 == *MEMORY[0x277D72C08])
      {
        goto LABEL_61;
      }

      if (v20 != *MEMORY[0x277D72C38])
      {
        if (v20 != *MEMORY[0x277D72BD8] && v20 != *MEMORY[0x277D72BE8] && v20 != *MEMORY[0x277D72C30])
        {
          v40 = *MEMORY[0x277D72BC8];

          if (v22 == v40)
          {
            v17 = 0x6D6572757361656DLL;
            goto LABEL_91;
          }

LABEL_89:
          v26 = 0x776F6E6B6E75;
          goto LABEL_90;
        }

LABEL_22:
        v17 = 0x657474616D726F66;

        goto LABEL_91;
      }

      goto LABEL_79;
    }

LABEL_26:

    v17 = 0x79636E6572727563;
    goto LABEL_91;
  }

  (*(v1 + 16))(v10, v12, v0);
  (*(v1 + 96))(v10, v0);
  v14 = sub_22C9094EC();
  v15 = swift_projectBox();
  v16 = (*(*(v14 - 8) + 88))(v15, v14);
  if (v16 != *MEMORY[0x277D72C50])
  {
    v21 = v16;
    if (v16 == *MEMORY[0x277D72CC8])
    {

      v17 = 1701736302;
      goto LABEL_91;
    }

    if (v16 == *MEMORY[0x277D72CB0])
    {

      v26 = 0x61656C6F6F62;
LABEL_90:
      v17 = v26 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
      goto LABEL_91;
    }

    if (v16 == *MEMORY[0x277D72CA0] || v16 == *MEMORY[0x277D72CD0] || v16 == *MEMORY[0x277D72CE8])
    {

      v17 = 0x7265626D756ELL;
      goto LABEL_91;
    }

    if (v16 == *MEMORY[0x277D72CE0] || v16 == *MEMORY[0x277D72CB8] || v16 == *MEMORY[0x277D72C70] || v16 == *MEMORY[0x277D72CA8])
    {
      goto LABEL_49;
    }

    if (v16 == *MEMORY[0x277D72C40])
    {

      v17 = 1952672100;
      goto LABEL_91;
    }

    if (v16 == *MEMORY[0x277D72C88])
    {
LABEL_49:

      v17 = 0x676E69727473;
      goto LABEL_91;
    }

    if (v16 != *MEMORY[0x277D72C68])
    {
      if (v16 == *MEMORY[0x277D72C60])
      {
        goto LABEL_22;
      }

      if (v16 != *MEMORY[0x277D72D00])
      {
        if (v16 != *MEMORY[0x277D72CD8])
        {
          if (v16 != *MEMORY[0x277D72CC0] && v16 != *MEMORY[0x277D72C98] && v16 != *MEMORY[0x277D72C80])
          {
            v37 = *MEMORY[0x277D72C48];

            if (v21 == v37)
            {
              v17 = 0x657474616D726F66;
              goto LABEL_91;
            }

            goto LABEL_89;
          }

          goto LABEL_22;
        }

LABEL_61:

        v17 = 0x6E6F73726570;
        goto LABEL_91;
      }

LABEL_79:

      v17 = 0x72616D6563616C70;
      goto LABEL_91;
    }

    goto LABEL_26;
  }

  v17 = 0x6D6572757361656DLL;

LABEL_91:
  (*(v1 + 8))(v12, v0);
  return v17;
}

uint64_t sub_22C8830E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C90922C();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v57 - v6;
  v60 = sub_22C9092DC();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90063C();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BFE38, &qword_22C92B200);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v57 - v11;
  v12 = sub_22C9001BC();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x28223BE20](v12);
  v66 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22C90021C();
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C90931C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v23 = sub_22C9093BC();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v26, v1, v23);
  if ((*(v24 + 88))(v26, v23) != *MEMORY[0x277D72A58])
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return (*(v24 + 8))(v26, v23);
  }

  (*(v24 + 96))(v26, v23);
  v27 = swift_projectBox();
  v28 = *(v17 + 16);
  v28(v22, v27, v16);
  v28(v20, v22, v16);
  v29 = (*(v17 + 88))(v20, v16);
  if (v29 != *MEMORY[0x277D72988])
  {
    v32 = v29;
    v33 = v22;
    v34 = a1;
    if (v29 == *MEMORY[0x277D72978])
    {
      (*(v17 + 96))(v20, v16);
      v35 = *v20;
      *(a1 + 24) = MEMORY[0x277D83B88];
      *a1 = v35;
    }

    else if (v29 == *MEMORY[0x277D729A8])
    {
      (*(v17 + 96))(v20, v16);
      v36 = *v20;
      *(a1 + 24) = MEMORY[0x277D839F8];
      *a1 = v36;
    }

    else if (v29 == *MEMORY[0x277D729C0])
    {
      (*(v17 + 96))(v20, v16);
      type metadata accessor for Decimal(0);
      *(a1 + 24) = v37;
      *a1 = *v20;
      *(a1 + 16) = *(v20 + 4);
    }

    else if (v29 == *MEMORY[0x277D729B8])
    {
      (*(v17 + 96))(v20, v16);
      v38 = *v20;
      v39 = *(v20 + 1);
      *(a1 + 24) = MEMORY[0x277D837D0];
      *a1 = v38;
      *(a1 + 8) = v39;
    }

    else
    {
      if (v29 == *MEMORY[0x277D72990])
      {
        (*(v17 + 96))(v20, v16);
        v40 = v72;
        v41 = *(v73 + 32);
        v42 = v74;
        v41(v72, v20, v74);
      }

      else
      {
        if (v29 == *MEMORY[0x277D72968])
        {
          (*(v17 + 96))(v20, v16);
          v44 = v67;
          (*(v67 + 32))(v15, v20, v71);
          v45 = v66;
          sub_22C90019C();
          sub_22C87F748();
          (*(v68 + 8))(v45, v69);
          v46 = sub_22C90A19C();
          *(v34 + 24) = MEMORY[0x277D837D0];
          *v34 = v46;
          *(v34 + 8) = v47;
          (*(v44 + 8))(v15, v71);
          goto LABEL_18;
        }

        if (v29 == *MEMORY[0x277D72940])
        {
          (*(v17 + 96))(v20, v16);
          v40 = v63;
          v41 = *(v64 + 32);
          v42 = v65;
          v41(v63, v20, v65);
        }

        else
        {
          if (v29 != *MEMORY[0x277D72950])
          {
            if (v29 != *MEMORY[0x277D729B0])
            {
              v55 = *MEMORY[0x277D729A0];
              v56 = *(v17 + 8);
              v56(v22, v16);
              *v34 = 0u;
              *(v34 + 16) = 0u;
              if (v32 != v55)
              {
                v56(v20, v16);
              }
            }

            (*(v17 + 96))(v20, v16);
            v48 = v57;
            v49 = v58;
            (*(v58 + 32))(v57, v20, v60);
            v50 = sub_22C9092CC();
            v51 = [v50 displayName];

            v52 = sub_22C90A11C();
            v54 = v53;

            *(v34 + 24) = MEMORY[0x277D837D0];
            *v34 = v52;
            *(v34 + 8) = v54;
            (*(v49 + 8))(v48, v60);
            goto LABEL_18;
          }

          (*(v17 + 96))(v20, v16);
          v42 = v62;
          v41 = *(v61 + 32);
          v40 = v59;
          v41(v59, v20, v62);
        }
      }

      *(a1 + 24) = v42;
      v43 = sub_22C36D548(a1);
      v41(v43, v40, v42);
    }

LABEL_18:
    (*(v17 + 8))(v33, v16);
  }

  (*(v17 + 96))(v20, v16);
  v30 = *v20;
  *(a1 + 24) = MEMORY[0x277D839B0];
  *a1 = v30;
  (*(v17 + 8))(v22, v16);
}

uint64_t sub_22C883AD4(uint64_t a1)
{
  v2 = sub_22C8883D8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C883B10(uint64_t a1)
{
  v2 = sub_22C8883D8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C883B68()
{
  sub_22C369980();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_22C9093BC();
  v1[11] = v5;
  sub_22C3699B8(v5);
  v1[12] = v6;
  v1[13] = sub_22C3699D4();
  v7 = sub_22C9091CC();
  v1[14] = v7;
  sub_22C3699B8(v7);
  v1[15] = v8;
  v1[16] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9BB668, &unk_22C90FA20);
  v1[17] = v9;
  sub_22C3699B8(v9);
  v1[18] = v10;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = type metadata accessor for TypedValueFormatter(0);
  sub_22C369914(v11);
  v1[21] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9BB5E0, &qword_22C91D710);
  v1[22] = v12;
  sub_22C3699B8(v12);
  v1[23] = v13;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v14 = sub_22C90634C();
  v1[27] = v14;
  sub_22C3699B8(v14);
  v1[28] = v15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v16 = sub_22C90636C();
  v1[31] = v16;
  sub_22C3699B8(v16);
  v1[32] = v17;
  v1[33] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22C883E10(uint64_t a1)
{
  sub_22C9036AC();
  sub_22C90633C();
  v2 = sub_22C90635C();
  v3 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v2, v3, v5, "ResponseGeneration.valueResolving", "", v4, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v6 = *(v1 + 240);
  v8 = *(v1 + 224);
  v7 = *(v1 + 232);
  v9 = *(v1 + 216);
  v10 = *(v1 + 80);

  (*(v8 + 16))(v7, v6, v9);
  sub_22C9063AC();
  swift_allocObject();
  *(v1 + 272) = sub_22C90639C();
  (*(v8 + 8))(v6, v9);
  v11 = sub_22C36D264();
  v12(v11);
  sub_22C887454(v10, v1 + 16);
  v13 = swift_allocObject();
  *(v1 + 280) = v13;
  v14 = *(v1 + 32);
  *(v13 + 16) = *(v1 + 16);
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v1 + 48);
  v15 = swift_task_alloc();
  *(v1 + 288) = v15;
  *v15 = v1;
  v15[1] = sub_22C884040;
  v16 = *(v1 + 64);

  return sub_22C87E9F8(&unk_22C92B238, v13, v16);
}

void sub_22C884040()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 296) = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
  }

  else
  {

    sub_22C36BB08();

    MEMORY[0x2822009F8](v6, v7, v8);
  }
}

void sub_22C884170()
{
  v1 = 0;
  v2 = v0[37];
  v69 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v4 = v1 + 1;

    sub_22C3CF0DC();
    v1 = v4;
  }

  v5 = *(v69 + 16);
  if (v5)
  {
    v7 = v0[22];
    v6 = v0[23];
    v53 = v0[17];
    v54 = v0[18];
    v8 = v0[15];
    v9 = v0[12];
    v10 = v69 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    v66 = (v9 + 88);
    v65 = (v9 + 8);
    v59 = (v9 + 96);
    v58 = (v8 + 16);
    v51 = (v8 + 32);
    v52 = (v9 + 32);
    v50 = (v8 + 8);
    v61 = MEMORY[0x277D84F90];
    v64 = *MEMORY[0x277D72A40];
    v67 = v7;
    v60 = v11;
    while (1)
    {
      v13 = v0[25];
      v12 = v0[26];
      v14 = v0[11];
      v68 = v10;
      sub_22C4E719C(v10, v12, &qword_27D9BB5E0, &qword_22C91D710);
      sub_22C4E719C(v12, v13, &qword_27D9BB5E0, &qword_22C91D710);
      v15 = *(v7 + 48);
      v16 = (*v66)(v13, v14);
      v18 = v0[25];
      v17 = v0[26];
      if (v16 == v64)
      {
        v62 = v0[24];
        v63 = v5;
        v19 = v0[16];
        v20 = v0[14];
        v21 = v0[11];
        (*v59)(v18, v21);
        v22 = swift_projectBox();
        (*v58)(v19, v22, v20);

        sub_22C372EFC();
        sub_22C8880B0(v13 + v15, v23);
        sub_22C4E7208(v17, v62, &qword_27D9BB5E0, &qword_22C91D710);
        v24 = *(v67 + 48);
        v25 = sub_22C370B74(v62 + v24, 1, v21);
        v26 = v0[24];
        if (v25 != 1)
        {
          v35 = v0[19];
          v56 = v0[16];
          v57 = v0[20];
          v36 = v0[13];
          v55 = v0[14];
          v37 = v0[11];
          v38 = *v52;
          (*v52)(v36, v62 + v24, v37);
          (*v65)(v26, v37);
          v39 = *(v53 + 48);
          (*v51)(v35, v56, v55);
          v38(v35 + v39, v36, v37);
          sub_22C4E7208(v35, v57, &qword_27D9BB668, &unk_22C90FA20);
          v34 = v68;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v40 = v61;
          }

          else
          {
            sub_22C36D270();
            sub_22C596E44();
            v40 = v44;
          }

          v42 = *(v40 + 16);
          v41 = *(v40 + 24);
          v5 = v63;
          if (v42 >= v41 >> 1)
          {
            sub_22C36A958(v41);
            sub_22C596E44();
            v40 = v45;
          }

          v43 = v0[20];
          *(v40 + 16) = v42 + 1;
          v61 = v40;
          sub_22C4E7208(v43, v40 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v42, &qword_27D9BB668, &unk_22C90FA20);
          v11 = v60;
          goto LABEL_17;
        }

        (*v50)(v0[16], v0[14]);
        sub_22C372EFC();
        sub_22C8880B0(v62 + v24, v27);
        v28 = sub_22C36BBCC();
        v29(v28);
        v5 = v63;
        v11 = v60;
      }

      else
      {
        v30 = v11;
        v31 = v0[11];
        sub_22C36DD28(v0[26], &qword_27D9BB5E0, &qword_22C91D710);
        sub_22C372EFC();
        sub_22C8880B0(v13 + v15, v32);
        v33 = v31;
        v11 = v30;
        (*v65)(v18, v33);
      }

      v34 = v68;
LABEL_17:
      v10 = v34 + v11;
      --v5;
      v7 = v67;
      if (!v5)
      {

        v46 = v61;
        goto LABEL_21;
      }
    }
  }

  v46 = MEMORY[0x277D84F90];
LABEL_21:
  sub_22C87F6B0(v46);
  v47 = sub_22C372158();
  sub_22C887550(v47, v48);
  sub_22C880CD0();
  sub_22C8846E4();

  sub_22C369A24();

  v49();
}

void sub_22C8846E4()
{
  sub_22C36BA7C();
  v33 = v1;
  sub_22C90637C();
  sub_22C369824();
  v30 = v3;
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C90634C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C37BDA4();
  v11 = sub_22C90636C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C9036AC();
  v18 = sub_22C90635C();
  sub_22C90638C();
  v29 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v28 = v9;

    sub_22C9063BC();

    if ((*(v30 + 88))(v6, v31) == *MEMORY[0x277D85B00])
    {
      v19 = 0;
      v20 = 0;
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v30 + 8))(v6, v31);
      v32 = "%s";
      v20 = 2;
      v19 = 1;
    }

    v21 = v13;
    sub_22C36BED8();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = v23;
    *v22 = v20;
    *(v22 + 1) = v19;
    *(v22 + 2) = 2080;
    sub_22C90366C();
    v24 = sub_22C90AF7C();
    v26 = sub_22C36F9F4(v24, v25, &v34);

    *(v22 + 4) = v26;
    v27 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v18, v29, v27, v33, v32, v22, 0xCu);
    sub_22C36FF94(v23);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v28 + 8))(v0, v7);
    (*(v21 + 8))(v17, v11);
  }

  else
  {

    (*(v9 + 8))(v0, v7);
    (*(v13 + 8))(v17, v11);
  }

  sub_22C36CC48();
}

uint64_t sub_22C884A20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22C884ABC;

  return sub_22C884BDC(a2);
}

uint64_t sub_22C884ABC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C884BAC()
{
  **(v0 + 16) = *(v0 + 32);
  sub_22C369A24();
  return v1();
}

uint64_t sub_22C884BDC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22C884BFC, 0, 0);
}

uint64_t sub_22C884BFC()
{
  v1 = v0[4];
  v0[2] = MEMORY[0x277D84F98];
  sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
  v2 = sub_22C9093BC();
  sub_22C369824();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22C90F800;
  (*(v4 + 16))(v6 + v5, v1, v2);
  v0[3] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_22C884D64;

  return sub_22C884E84((v0 + 2), (v0 + 3));
}

uint64_t sub_22C884D64()
{
  sub_22C369980();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C884E84(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v3[5] = swift_task_alloc();
  v3[6] = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = sub_22C90919C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22C90906C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_22C9063DC();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = sub_22C9091CC();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF3A8, &qword_22C922668);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v8 = sub_22C9093BC();
  v3[29] = v8;
  v3[30] = *(v8 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C885224, 0, 0);
}

uint64_t sub_22C885224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_22C4E7844();
  a33 = v35;
  a34 = v36;
  sub_22C375EC8();
  a32 = v34;
  v37 = **(v34 + 24);
  *(v34 + 320) = v37;
  v38 = *(v37 + 16);
  if (!v38)
  {
    goto LABEL_8;
  }

  v39 = *(v34 + 312);
  v40 = *(v34 + 232);
  v41 = *(v34 + 240);
  v42 = *(v34 + 16);
  v44 = *(v41 + 16);
  v41 += 16;
  v43 = v44;
  v45 = *(v41 + 64);
  *(v34 + 520) = v45;
  v46 = *(v41 + 56);
  *(v34 + 328) = v46;
  *(v34 + 336) = v44;
  *(v34 + 344) = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v39, v37 + ((v45 + 32) & ~v45) + v46 * (v38 - 1), v40);
  sub_22C605F0C(v39, *v42);
  v47 = type metadata accessor for DialogValuesResolver.CollectedValue(0);
  *(v34 + 352) = v47;
  v48 = sub_22C37EF1C();
  v50 = sub_22C370B74(v48, v49, v47);
  v51 = *(v34 + 312);
  if (v50 == 1)
  {
    v52 = *(v34 + 304);
    v53 = *(v34 + 232);
    v54 = *(v34 + 240);
    sub_22C36DD28(*(v34 + 224), &qword_27D9BF3A8, &qword_22C922668);
    v43(v52, v51, v53);
    *(v34 + 360) = *(v54 + 88);
    *(v34 + 368) = (v54 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v55 = sub_22C36ECB4();
    v57 = v56(v55);
    v58 = *(v34 + 232);
    v59 = *(v34 + 240);
    if (v57 == *MEMORY[0x277D72A40])
    {
      v60 = *(v34 + 208);
      v61 = *(v34 + 168);
      v62 = *(v34 + 176);
      (*(v59 + 96))(*(v34 + 304), v58);
      v63 = swift_projectBox();
      v64 = *(v62 + 16);
      *(v34 + 376) = v64;
      *(v34 + 384) = (v62 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v65 = v61;
      v66 = v64;
      (v64)(v60, v63, v65);

      if (sub_22C886EB0(v37))
      {
        sub_22C90405C();
        v67 = sub_22C36BA00();
        (v66)(v67);
        v68 = sub_22C9063CC();
        v69 = sub_22C90AACC();
        v70 = os_log_type_enabled(v68, v69);
        v71 = *(v34 + 200);
        if (v70)
        {
          v72 = *(v34 + 192);
          v73 = *(v34 + 168);
          v74 = *(v34 + 176);
          a22 = *(v34 + 160);
          a20 = *(v34 + 136);
          a21 = *(v34 + 128);
          sub_22C36BED8();
          swift_slowAlloc();
          sub_22C36FF40();
          a19 = swift_slowAlloc();
          a23 = a19;
          *v66 = 136380675;
          (v66)(v72, v71, v73);
          v75 = sub_22C90A1AC();
          v77 = v76;
          v78 = *(v74 + 8);
          v78(v71, v73);
          v79 = sub_22C36F9F4(v75, v77, &a23);

          *(v66 + 4) = v79;
          sub_22C7E4DDC(&dword_22C366000, v80, v81, "Resolving deferred value:\n%{private}s");
          sub_22C36FF94(a19);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          v82 = *(a20 + 8);
          v82(a22, a21);
        }

        else
        {
          v146 = *(v34 + 168);
          v147 = *(v34 + 176);
          v148 = *(v34 + 136);

          v78 = *(v147 + 8);
          v78(v71, v146);
          v82 = *(v148 + 8);
          v149 = sub_22C36D264();
          (v82)(v149);
        }

        *(v34 + 392) = v82;
        *(v34 + 400) = v78;
        sub_22C374168(*(v34 + 32), *(*(v34 + 32) + 24));
        swift_task_alloc();
        sub_22C36CC90();
        *(v34 + 408) = v150;
        *v150 = v151;
        v150[1] = sub_22C885A7C;
        sub_22C377448();

        return MEMORY[0x282178340](v152, v153, v154, v155, v156, v157, v158, v159, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
      }

      (*(*(v34 + 176) + 8))(*(v34 + 208), *(v34 + 168));
    }

    else
    {
      (*(v59 + 8))(*(v34 + 304), v58);
    }

    v101 = *(v34 + 280);
    v102 = *(v34 + 232);
    v103 = *(v34 + 216);
    v104 = *(v34 + 16);
    v43(v101, *(v34 + 312), v102);
    sub_22C36C640(v103, 1, 1, v102);
    sub_22C36C640(v103, 0, 1, v47);
    sub_22C6042A4();
    v105 = sub_22C37C014();
    v106(v105);
    v107 = v103(v104, v47);
    if (v107 == *MEMORY[0x277D72A38])
    {
      v108 = sub_22C88852C();
      v109(v108);
      *(v34 + 464) = *v104;
      swift_projectBox();
      v110 = sub_22C370AD0();
      v111(v110);
      v112 = sub_22C90914C();
      sub_22C37FB44(v112);
      v115 = v114 & v113;
      if (v115)
      {
LABEL_27:
        v136 = sub_22C36DC18(v115);
        v137(v136);
        v138 = sub_22C385860();
        v139(v138);
        sub_22C4E719C(v102, a22, &qword_27D9BADA0, &unk_22C90FA80);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C36D270();
          sub_22C5903C0();
          v37 = v168;
        }

        sub_22C379BD0();
        if (v125)
        {
          sub_22C36A958(v140);
          sub_22C5903C0();
          v37 = v169;
        }

        v141 = sub_22C376AD4();
        v101(v141);
        *v102 = v37;
        v142 = swift_task_alloc();
        *(v34 + 512) = v142;
        *v142 = v34;
        sub_22C38C270();
LABEL_32:
        *(v130 + 8) = v131;
        sub_22C389344();
        sub_22C377448();

        return sub_22C884E84(v143, v144);
      }

      sub_22C388470();
      while (v135 != v134)
      {
        sub_22C88858C();
        if (v115)
        {
          goto LABEL_27;
        }
      }

      v160 = sub_22C38AC38();
      v161(v160);
      v162 = sub_22C36D264();
      v163(v162);

LABEL_41:

      goto LABEL_8;
    }

    if (v107 == *MEMORY[0x277D729E0])
    {
      v116 = sub_22C888510();
      v117(v116);
      *(v34 + 424) = *v104;
      swift_projectBox();
      v118 = sub_22C370AD0();
      v119(v118);
      v120 = sub_22C90905C();
      *(v34 + 432) = v120;
      v121 = *(v120 + 16);
      *(v34 + 440) = v121;
      if (v121)
      {
        v122 = sub_22C8884CC();
        v123(v122);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C36D270();
          sub_22C5903C0();
          v37 = v170;
        }

        sub_22C379BD0();
        if (v125)
        {
          sub_22C36A958(v124);
          sub_22C5903C0();
          v37 = v171;
        }

        sub_22C888434();
        v127 = sub_22C8885A0(v126);
        v128(v127);
        *v102 = v37;
        v129 = swift_task_alloc();
        *(v34 + 456) = v129;
        *v129 = v34;
        sub_22C36C5C0();
        goto LABEL_32;
      }

      v164 = sub_22C888454();
      v165(v164);
      v166 = sub_22C36BAFC();
      v167(v166);
      goto LABEL_41;
    }

    v132 = sub_22C888548();
    v102(v132);
    v133 = sub_22C36BBCC();
    v102(v133);
  }

  else
  {
    v83 = *(v34 + 224);
    (*(*(v34 + 240) + 8))(*(v34 + 312), *(v34 + 232));
    sub_22C36DD28(v83, &qword_27D9BF3A8, &qword_22C922668);
  }

LABEL_8:
  v84 = sub_22C36A524();
  sub_22C371F08(v84, v85, v86, v87, v88, v89, v90, v91);

  sub_22C369A24();
  sub_22C377448();

  return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22C885A7C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 416) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C885B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_22C4E7844();
  a33 = v35;
  a34 = v36;
  sub_22C375EC8();
  a32 = v34;
  v38 = *(v34 + 336);
  v37 = *(v34 + 344);
  sub_22C90405C();
  v39 = sub_22C36BA00();
  v38(v39);
  v40 = sub_22C9063CC();
  v41 = sub_22C90AACC();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v34 + 392);
  if (v42)
  {
    v44 = *(v34 + 336);
    v150 = *(v34 + 392);
    v45 = *(v34 + 288);
    v47 = *(v34 + 232);
    v46 = *(v34 + 240);
    v146 = *(v34 + 128);
    v148 = *(v34 + 152);
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C36FF40();
    v48 = swift_slowAlloc();
    a23 = v48;
    *v37 = 136642819;
    v49 = sub_22C372158();
    v44(v49);
    v50 = sub_22C90A1AC();
    v52 = v51;
    v152 = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v153 = *(v46 + 8);
    v153(v45, v47);
    v53 = sub_22C36F9F4(v50, v52, &a23);

    *(v37 + 4) = v53;
    sub_22C7E4DDC(&dword_22C366000, v54, v55, "Deferred value resolved to:\n%{sensitive}s");
    sub_22C36FF94(v48);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v150(v148, v146);
  }

  else
  {
    v56 = *(v34 + 240);

    v152 = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57 = sub_22C36BAFC();
    v153 = v58;
    (v58)(v57);
    v59 = sub_22C36ECB4();
    v43(v59);
  }

  v60 = *(v34 + 344);
  v140 = *(v34 + 352);
  v61 = *(v34 + 336);
  v149 = *(v34 + 400);
  v151 = *(v34 + 328);
  v62 = *(v34 + 312);
  v63 = *(v34 + 296);
  v64 = *(v34 + 232);
  v65 = *(v34 + 216);
  v142 = *(v34 + 320);
  v143 = *(v34 + 176);
  v144 = *(v34 + 168);
  v145 = *(v34 + 208);
  v147 = (*(v34 + 520) + 32) & ~*(v34 + 520);
  v66 = *(v34 + 24);
  v61(*(v34 + 280), v62, v64);
  v61(v65, v63, v64);
  v141 = v60;
  sub_22C36C640(v65, 0, 1, v64);
  sub_22C36C640(v65, 0, 1, v140);
  sub_22C6042A4();
  v67 = sub_22C36D264();
  (v153)(v67);
  v61(v62, v63, v64);

  sub_22C46BED4(1, v142);
  swift_unknownObjectRelease();
  sub_22C3D0EF0();
  v68 = *(*v66 + 16);
  sub_22C3D10CC(v68);
  v153(v63, v64);
  v149(v145, v144);
  v69 = *v66;
  *(v69 + 16) = v68 + 1;
  v61(v69 + v147 + v68 * v151, v62, v64);
  *v66 = v69;
  v70 = sub_22C37C014();
  v71(v70);
  v72 = v66(v66, v62);
  if (v72 == *MEMORY[0x277D72A38])
  {
    v73 = sub_22C88852C();
    v74(v73);
    *(v34 + 464) = *v66;
    swift_projectBox();
    v75 = sub_22C370AD0();
    v76(v75);
    v77 = sub_22C90914C();
    sub_22C37FB44(v77);
    v80 = v79 & v78;
    if (v80)
    {
LABEL_18:
      v101 = sub_22C36DC18(v80);
      v102(v101);
      v103 = sub_22C385860();
      v104(v103);
      sub_22C4E719C(v64, v153, &qword_27D9BADA0, &unk_22C90FA80);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C5903C0();
        v69 = v136;
      }

      sub_22C379BD0();
      if (v90)
      {
        sub_22C36A958(v105);
        sub_22C5903C0();
        v69 = v137;
      }

      v106 = sub_22C376AD4();
      (v68)(v106);
      *v64 = v69;
      v107 = swift_task_alloc();
      *(v34 + 512) = v107;
      *v107 = v34;
      sub_22C38C270();
LABEL_23:
      *(v95 + 8) = v96;
      sub_22C389344();
      sub_22C377448();

      return sub_22C884E84(v108, v109);
    }

    sub_22C388470();
    while (v100 != v99)
    {
      sub_22C88858C();
      if (v80)
      {
        goto LABEL_18;
      }
    }

    v112 = sub_22C38AC38();
    v113(v112);
    v114 = sub_22C36D264();
    v115(v114);

LABEL_28:

    goto LABEL_29;
  }

  if (v72 == *MEMORY[0x277D729E0])
  {
    v81 = sub_22C888510();
    v82(v81);
    *(v34 + 424) = *v66;
    swift_projectBox();
    v83 = sub_22C370AD0();
    v84(v83);
    v85 = sub_22C90905C();
    *(v34 + 432) = v85;
    v86 = *(v85 + 16);
    *(v34 + 440) = v86;
    if (v86)
    {
      v87 = sub_22C8884CC();
      v88(v87);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C5903C0();
        v69 = v138;
      }

      sub_22C379BD0();
      if (v90)
      {
        sub_22C36A958(v89);
        sub_22C5903C0();
        v69 = v139;
      }

      sub_22C888434();
      v92 = sub_22C8885A0(v91);
      v93(v92);
      *v64 = v69;
      v94 = swift_task_alloc();
      *(v34 + 456) = v94;
      *v94 = v34;
      sub_22C36C5C0();
      goto LABEL_23;
    }

    v116 = sub_22C888454();
    v117(v116);
    v118 = sub_22C36BAFC();
    v119(v118);
    goto LABEL_28;
  }

  v97 = sub_22C888548();
  v64(v97);
  v98 = sub_22C36BBCC();
  v64(v98);
LABEL_29:
  v120 = sub_22C36A524();
  sub_22C371F08(v120, v121, v122, v123, v124, v125, v126, v127);

  sub_22C369A24();
  sub_22C377448();

  return v129(v128, v129, v130, v131, v132, v133, v134, v135, a9, a10, a11, v140, v141, v142, v143, v144, v145, v147, v149, v151, v152, v153, a23, a24, a25, a26);
}

uint64_t sub_22C886268()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C886350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C375EC8();
  v28 = *(v26 + 448) + 1;
  if (v28 == *(v26 + 440))
  {

    v29 = sub_22C888454();
    v30(v29);
    v31 = sub_22C36BAFC();
    v32(v31);

    v33 = sub_22C36A524();
    sub_22C888470(v33, v34, v35, v36, v37, v38, v39, v40);

    sub_22C369A24();
    sub_22C377448();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    v50 = **(v26 + 24);
    *(v26 + 448) = v28;
    (*(v26 + 336))(*(v26 + 264), *(v26 + 432) + ((*(v26 + 520) + 32) & ~*(v26 + 520)) + *(v26 + 328) * v28, *(v26 + 232));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C36D270();
      sub_22C5903C0();
      v50 = v61;
    }

    v51 = *(v50 + 16);
    if (v51 >= *(v50 + 24) >> 1)
    {
      sub_22C5903C0();
      v50 = v62;
    }

    sub_22C888434();
    *(v50 + 16) = v51 + 1;
    (*(v54 + 32))(v50 + v52 + v53 * v51);
    *v27 = v50;
    v55 = swift_task_alloc();
    *(v26 + 456) = v55;
    *v55 = v26;
    sub_22C36C5C0();
    *(v56 + 8) = v57;
    sub_22C389344();
    sub_22C377448();

    return sub_22C884E84(v58, v59);
  }
}

uint64_t sub_22C8865B0()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_22C886698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C375EC8();
  v28 = **(v26 + 24);
  if (*(v28 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C88772C();
      v28 = v95;
    }

    v29 = *(v28 + 16);
    if (!v29)
    {
      __break(1u);
      return;
    }

    v27 = *(v26 + 496);
    v30 = *(v26 + 256);
    v31 = *(v26 + 232);
    v32 = *(v26 + 64);
    a22 = *(v26 + 40);
    v33 = *(v26 + 24);
    v34 = v29 - 1;
    (v27)(*(v26 + 248), v28 + ((*(v26 + 520) + 32) & ~*(v26 + 520)) + *(v26 + 328) * (v29 - 1), v31);
    *(v28 + 16) = v34;
    v96 = v28;
    *v33 = v28;
    sub_22C36DD28(v32, &qword_27D9BADA0, &unk_22C90FA80);
    v35 = sub_22C36BAFC();
    v27(v35);
    (v27)(a22, v30, v31);
    v36 = 0;
  }

  else
  {
    v96 = **(v26 + 24);
    sub_22C36DD28(*(v26 + 64), &qword_27D9BADA0, &unk_22C90FA80);
    v36 = 1;
  }

  v37 = *(v26 + 40);
  sub_22C36C640(v37, v36, 1, *(v26 + 232));
  sub_22C36DD28(v37, &qword_27D9BB908, &qword_22C910960);
  v38 = *(v26 + 488);
  v39 = (*(v26 + 480) - 1) & *(v26 + 480);
  if (v39)
  {
    v40 = *(v26 + 472);
LABEL_13:
    *(v26 + 480) = v39;
    *(v26 + 488) = v38;
    v42 = *(v26 + 232);
    v43 = *(v26 + 240);
    v44 = *(v26 + 64);
    v45 = *(v26 + 72);
    v46 = *(v26 + 48);
    v47 = __clz(__rbit64(v39)) | (v38 << 6);
    v48 = *(v40 + 56);
    v49 = (*(v40 + 48) + 16 * v47);
    v51 = *v49;
    v50 = v49[1];
    v52 = *(v46 + 48);
    (*(v26 + 336))(v45 + v52, v48 + *(v26 + 328) * v47, v42);
    v53 = *(v43 + 32);
    v54 = *(v46 + 48);
    *v44 = v51;
    v44[1] = v50;
    v27 = v53;
    *(v26 + 496) = v53;
    *(v26 + 504) = (v43 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    (v53)(v44 + v54, v45 + v52, v42);
    v55 = sub_22C36ECB4();
    sub_22C4E719C(v55, v56, v57, v58);

    v59 = v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_23:
      sub_22C36D270();
      sub_22C5903C0();
      v59 = v93;
    }

    v60 = *(v59 + 16);
    if (v60 >= *(v59 + 24) >> 1)
    {
      sub_22C5903C0();
      v59 = v94;
    }

    v61 = *(v26 + 328);
    v62 = *(v26 + 520);
    v63 = *(v26 + 232);
    v64 = *(v26 + 56);
    v65 = *(v26 + 24);
    v66 = *(*(v26 + 48) + 48);
    *(v59 + 16) = v60 + 1;
    (v27)(v59 + ((v62 + 32) & ~v62) + v61 * v60, v64 + v66, v63);
    *v65 = v59;
    v67 = swift_task_alloc();
    *(v26 + 512) = v67;
    *v67 = v26;
    sub_22C38C270();
    *(v68 + 8) = v69;
    sub_22C389344();
    sub_22C377448();

    sub_22C884E84(v70, v71);
  }

  else
  {
    while (1)
    {
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v40 = *(v26 + 472);
      if (v41 >= (((1 << *(v26 + 524)) + 63) >> 6))
      {
        break;
      }

      v39 = *(v40 + 8 * v41 + 64);
      ++v38;
      if (v39)
      {
        v38 = v41;
        goto LABEL_13;
      }
    }

    v73 = sub_22C38AC38();
    v74(v73);
    v75 = sub_22C36D264();
    v76(v75);

    v77 = sub_22C36A524();
    sub_22C888470(v77, v78, v79, v80, v81, v82, v83, v84);

    sub_22C369A24();
    sub_22C377448();

    v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v96, a24, a25, a26);
  }
}

uint64_t sub_22C886ADC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_22C4E7844();
  a33 = v35;
  a34 = v36;
  sub_22C375EC8();
  a32 = v34;
  v37 = v34[52];
  v38 = v34[47];
  v39 = v34[26];
  v40 = v34[23];
  v41 = v34[21];
  v42 = v34[18];
  sub_22C90405C();
  v38(v40, v39, v41);
  v43 = v37;
  v44 = sub_22C9063CC();
  v45 = sub_22C90AAEC();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v34[50];
  v85 = v34[49];
  v86 = v34[52];
  if (v46)
  {
    v48 = v34[47];
    a11 = v34[48];
    v83 = v34[29];
    v84 = v34[39];
    a16 = v34[26];
    a17 = v34[30];
    v50 = v34[23];
    v49 = v34[24];
    v51 = v34[21];
    a13 = v34[17];
    a14 = v34[16];
    a15 = v34[18];
    LODWORD(a12) = v45;
    v52 = swift_slowAlloc();
    swift_slowAlloc();
    sub_22C36FF40();
    v53 = swift_slowAlloc();
    a23 = v53;
    *v52 = 136380931;
    v48(v49, v50, v51);
    sub_22C3726C4();
    v54 = sub_22C90A1AC();
    v56 = v55;
    v47(v50, v51);
    v57 = sub_22C36F9F4(v54, v56, &a23);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2112;
    v58 = v86;
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 14) = v59;
    *v42 = v59;
    _os_log_impl(&dword_22C366000, v44, a12, "Could not resolve deferred value:\n%{private}s\n%@", v52, 0x16u);
    sub_22C36DD28(v42, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C36FF94(v53);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v85(a15, a14);
    v47(a16, v51);
    (*(a17 + 8))(v84, v83);
  }

  else
  {
    v60 = v34[39];
    v61 = v34[30];
    v83 = v34[26];
    v84 = v34[29];
    v62 = v34[23];
    v63 = v34[21];
    v64 = v34[18];
    v65 = v34[16];

    v47(v62, v63);
    v85(v64, v65);
    v47(v83, v63);
    (*(v61 + 8))(v60, v84);
  }

  v66 = sub_22C36A524();
  sub_22C371F08(v66, v67, v68, v69, v70, v71, v72, v73);

  sub_22C369A24();
  sub_22C377448();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, v83, v84, v85, v86, v44, a23, a24, a25, a26);
}

uint64_t sub_22C886EB0(uint64_t a1)
{
  v2 = type metadata accessor for TypedValueSalientContent(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22C90919C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9093BC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v53 = &v44 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v19 = *(a1 + 16);
  if (v19)
  {
    v46 = v18;
    v47 = v2;
    v48 = v8;
    v49 = v6;
    v50 = v4;
    v51 = v5;
    v20 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v21 = *(v10 + 72);
    v52 = v20;
    v22 = *(v10 + 16);
    v23 = &v44 - v17;
    v22(&v44 - v17, v20 + v21 * (v19 - 1), v9);
    v22(v16, v23, v9);
    v24 = *(v10 + 88);
    v25 = v24(v16, v9);
    v26 = *(v10 + 8);
    if (v25 == *MEMORY[0x277D72A40])
    {
      v45 = v23;
      v27 = v26;
      v26(v16, v9);
      if (v19 == 1)
      {
        v27(v45, v9);
      }

      else
      {
        v44 = v27;
        v31 = v53;
        v22(v53, v52 + v21 * (v19 - 2), v9);
        if (v24(v31, v9) == *MEMORY[0x277D72A38])
        {
          (*(v10 + 96))(v31, v9);
          v32 = swift_projectBox();
          v34 = v48;
          v33 = v49;
          v35 = v51;
          (*(v49 + 16))(v48, v32, v51);

          v36 = v50;
          sub_22C8F9454(v34, MEMORY[0x277D84F90], v50);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v37 = sub_22C3A5908(&qword_27D9C0D58, &unk_22C92B1E0);
            v38 = v46;
            (*(v10 + 32))(v46, v36 + *(v37 + 48), v9);
            v39 = v45;
            v40 = sub_22C9093AC();
            v41 = v38;
            v42 = v44;
            v44(v41, v9);
            (*(v33 + 8))(v34, v35);
            v42(v39, v9);
            if (v40)
            {
              return 1;
            }
          }

          else
          {
            (*(v33 + 8))(v34, v35);
            v44(v45, v9);
            sub_22C8880B0(v36, type metadata accessor for TypedValueSalientContent);
          }
        }

        else
        {
          v43 = v44;
          v44(v45, v9);
          v43(v31, v9);
        }
      }
    }

    else
    {
      v28 = v23;
      v29 = *(v10 + 8);
      v26(v28, v9);
      v29(v16, v9);
    }
  }

  return 0;
}

uint64_t sub_22C88739C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22C8873E4()
{
  result = qword_27D9C0D88;
  if (!qword_27D9C0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0D88);
  }

  return result;
}

uint64_t sub_22C88748C()
{
  sub_22C36FB38();
  v2 = v1;
  v4 = v3;
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_22C382AF4;

  return sub_22C884A20(v4, v2);
}

uint64_t sub_22C887550(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C8876C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22C90B1BC();
  }

  return sub_22C90AF9C();
}

uint64_t sub_22C887740(uint64_t a1, char a2, void *a3)
{
  v59 = a3;
  v5 = sub_22C9093BC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - v9;
  v57 = sub_22C9091CC();
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v58 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BB668, &unk_22C90FA20);
  v14 = MEMORY[0x28223BE20](v13);
  v54 = v42 - v16;
  v53 = *(a1 + 16);
  if (!v53)
  {
  }

  v17 = 0;
  v52 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v14 + 48);
  v50 = v6;
  v51 = v18;
  v55 = (v6 + 32);
  v56 = (v11 + 32);
  v44 = v6 + 8;
  v45 = v6 + 16;
  v46 = v11;
  v42[1] = v6 + 40;
  v43 = (v11 + 8);
  v48 = v15;
  v49 = a1;
  while (v17 < *(a1 + 16))
  {
    v19 = v54;
    sub_22C4E719C(v52 + *(v15 + 72) * v17, v54, &qword_27D9BB668, &unk_22C90FA20);
    v20 = *v56;
    (*v56)(v58, v19, v57);
    v21 = *v55;
    v22 = v19 + v51;
    v23 = v5;
    (*v55)(v10, v22, v5);
    v24 = *v59;
    sub_22C628FF0();
    v27 = v26;
    v28 = v24[2];
    v29 = (v25 & 1) == 0;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_18;
    }

    v30 = v25;
    if (v24[3] >= v28 + v29)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9C0D98, &unk_22C92B250);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88F874();
      sub_22C628FF0();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_20;
      }

      v27 = v31;
    }

    v33 = *v59;
    if (v30)
    {
      v34 = v50;
      v35 = *(v50 + 72) * v27;
      v36 = v47;
      v5 = v23;
      (*(v50 + 16))(v47, v33[7] + v35, v23);
      (*(v34 + 8))(v10, v23);
      (*v43)(v58, v57);
      (*(v34 + 40))(v33[7] + v35, v36, v23);
    }

    else
    {
      v33[(v27 >> 6) + 8] |= 1 << v27;
      v20((v33[6] + *(v46 + 72) * v27), v58, v57);
      v37 = v33[7] + *(v50 + 72) * v27;
      v5 = v23;
      v21(v37, v10, v23);
      v38 = v33[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_19;
      }

      v33[2] = v40;
    }

    ++v17;
    a2 = 1;
    v15 = v48;
    a1 = v49;
    if (v53 == v17)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C887BFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22C887CB4;

  return sub_22C87EC44(a2, v9, a4, a5);
}

uint64_t sub_22C887CB4()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_22C887DB0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  sub_22C36CC90();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22C46BC08;

  return sub_22C887BFC(a1, a2, v6, v7, v8);
}

uint64_t sub_22C887E7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_22C888430;

  return sub_22C87F488(a2, a3, a4, a5, a6);
}

uint64_t sub_22C887F44(uint64_t a1)
{
  v4 = sub_22C9093BC();
  sub_22C369914(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  swift_task_alloc();
  sub_22C36CC90();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_22C46BC08;

  return sub_22C887E7C(a1, v7, v8, v9, v10, v1 + v6);
}

unint64_t sub_22C88804C()
{
  result = qword_27D9C0DB0;
  if (!qword_27D9C0DB0)
  {
    sub_22C3AC1A0(&qword_27D9C0DA8, &unk_22C92B280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0DB0);
  }

  return result;
}

uint64_t sub_22C8880B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C888108(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C888188(uint64_t a1)
{
  v1 = sub_22C9093BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for DialogValues.DialogValuesError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_22C88829C(uint64_t a1)
{
  sub_22C90277C();
  if (v1 <= 0x3F)
  {
    sub_22C9093BC();
    if (v2 <= 0x3F)
    {
      sub_22C888324(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22C888324(uint64_t a1)
{
  if (!qword_27D9C0DE0)
  {
    sub_22C9093BC();
    v1 = sub_22C90A68C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9C0DE0);
    }
  }
}

unint64_t sub_22C888384()
{
  result = qword_27D9C0DE8;
  if (!qword_27D9C0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0DE8);
  }

  return result;
}

unint64_t sub_22C8883D8()
{
  result = qword_27D9C0DF0;
  if (!qword_27D9C0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0DF0);
  }

  return result;
}

uint64_t sub_22C888470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 40);
  *(v9 - 88) = *(v8 + 56);
  *(v9 - 80) = v11;
}

uint64_t sub_22C8885B4()
{
  *v1 = v0;
  v1[1] = v3;
  return v2;
}

uint64_t sub_22C8885C8()
{

  return sub_22C90277C();
}

void sub_22C8885E8()
{

  sub_22C8E6744();
}

void sub_22C888618()
{
  sub_22C370030();
  v59 = v0;
  v2 = v1;
  v54 = v3;
  v55 = v4;
  v5 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v57 = sub_22C90981C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v53 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v49 = v12;
  v13 = v2 + 64;
  v58 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  sub_22C36AD3C();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v47 = v19;
  v52 = (v19 + 32);
  v56 = v2;
  v20 = v8;

  v21 = 0;
  v50 = v8;
  v48 = v13;
  while (1)
  {
    if (!v16)
    {
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v18)
        {

          goto LABEL_22;
        }

        v16 = *(v13 + 8 * v22);
        ++v21;
        if (v16)
        {
          v21 = v22;
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_7:
    v23 = (v21 << 10) | (16 * __clz(__rbit64(v16)));
    v24 = (*(v56 + 48) + v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = (*(v56 + 56) + v23);
    v28 = v27[1];
    v60[0] = *v27;
    v60[1] = v28;

    v29 = v59;
    v54(v60);
    v59 = v29;
    if (v29)
    {
      break;
    }

    v16 &= v16 - 1;

    v30 = v57;
    if (sub_22C370B74(v20, 1, v57) == 1)
    {

      sub_22C36DD28(v20, &qword_27D9BC0C0, &unk_22C911FA0);
    }

    else
    {
      v51 = v26;
      v31 = *v52;
      v32 = v49;
      v33 = sub_22C37F760();
      v31(v33);
      (v31)(v53, v32, v30);
      v34 = v31;
      v35 = v58[2];
      if (v58[3] <= v35)
      {
        sub_22C892384(v35);
        sub_22C88F3F8();
      }

      sub_22C90B62C();
      v36 = v51;
      sub_22C909FFC();
      sub_22C90B66C();
      v58 = v61;
      sub_22C375C58();
      v13 = v48;
      if (v37)
      {
        sub_22C381420();
        v20 = v50;
        while (1)
        {
          sub_22C892510();
          if (v37)
          {
            if (v38)
            {
              break;
            }
          }

          sub_22C892374();
          if (!v37)
          {
            sub_22C892200();
            goto LABEL_20;
          }
        }

LABEL_25:
        __break(1u);
        return;
      }

      sub_22C383974();
      v20 = v50;
LABEL_20:
      sub_22C892214();
      *(v41 + v42) = v39 | v40;
      v43 = v58;
      v45 = (v58[6] + 16 * v44);
      *v45 = v36;
      v45[1] = v25;
      v34(v43[7] + *(v47 + 72) * v44, v53);
      sub_22C892158();
    }
  }

LABEL_22:
  sub_22C36FB20();
}

void sub_22C8889DC()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v75 = v4;
  v76 = v5;
  v6 = sub_22C3A5908(&qword_27D9BF430, &unk_22C9226F0);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v77 = sub_22C9086BC();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v68 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v66 = v15;
  v78 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  sub_22C36985C();
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v69 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v80 = &v63 - v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v74 = v21;
  v22 = v3 + 64;
  v70 = MEMORY[0x277D84F98];
  v81 = MEMORY[0x277D84F98];
  sub_22C36AD3C();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v65 = v11;
  v67 = (v11 + 32);
  v79 = v3;

  v28 = 0;
  v73 = v27;
LABEL_2:
  v29 = v28;
  if (!v25)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v30 = v9;
    v31 = v1;
    v28 = v29;
LABEL_8:
    v32 = __clz(__rbit64(v25)) | (v28 << 6);
    v33 = *(v79 + 56);
    v34 = (*(v79 + 48) + 16 * v32);
    v36 = *v34;
    v35 = v34[1];
    sub_22C901FAC();
    sub_22C369824();
    v38 = v33 + *(v37 + 72) * v32;
    v39 = v78;
    v42 = sub_22C3815A4(v40, v38, v41);
    v43(v42);
    *v33 = v36;
    v33[1] = v35;
    v44 = v80;
    sub_22C5E71BC(v33, v80, &qword_27D9BAA30, &unk_22C911F70);
    v45 = *(v39 + 48);

    v9 = v30;
    v75(v44 + v45);
    v1 = v31;
    if (v31)
    {
      break;
    }

    v25 &= v25 - 1;
    if (sub_22C370B74(v30, 1, v77) != 1)
    {
      v46 = *v67;
      v47 = v66;
      v48 = v77;
      (*v67)(v66, v30, v77);
      sub_22C5E71BC(v80, v69, &qword_27D9BAA30, &unk_22C911F70);
      v46(v68, v47, v48);
      v49 = v70[2];
      if (v70[3] <= v49)
      {
        sub_22C892384(v49);
        sub_22C88F3F8();
      }

      v51 = *v69;
      v50 = v69[1];
      sub_22C90B62C();
      v64 = v50;
      sub_22C909FFC();
      sub_22C90B66C();
      v70 = v81;
      sub_22C375C58();
      if (v52)
      {
        sub_22C381420();
        while (1)
        {
          sub_22C892510();
          if (v52)
          {
            if (v53)
            {
              goto LABEL_27;
            }
          }

          sub_22C892374();
          if (!v52)
          {
            sub_22C892200();
            goto LABEL_22;
          }
        }
      }

      sub_22C383974();
LABEL_22:
      v54 = *(v78 + 48);
      sub_22C892214();
      *(v57 + v58) = v56 | v55;
      v59 = v70;
      v61 = (v70[6] + 16 * v60);
      v62 = v64;
      *v61 = v51;
      v61[1] = v62;
      v46(v59[7] + *(v65 + 72) * v60, v68, v77);
      ++v59[2];
      (*(v71 + 8))(v69 + v54, v72);
      v27 = v73;
      goto LABEL_2;
    }

    sub_22C36DD28(v80, &qword_27D9BAA30, &unk_22C911F70);
    sub_22C36DD28(v30, &qword_27D9BF430, &unk_22C9226F0);
    v29 = v28;
    v27 = v73;
    if (!v25)
    {
LABEL_4:
      while (1)
      {
        v28 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v28 >= v27)
        {

          goto LABEL_24;
        }

        v25 = *(v22 + 8 * v28);
        ++v29;
        if (v25)
        {
          v30 = v9;
          v31 = v1;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }
  }

  sub_22C36DD28(v80, &qword_27D9BAA30, &unk_22C911F70);

LABEL_24:
  sub_22C36FB20();
}

void sub_22C888F24()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v62 = v4;
  v63 = v5;
  v6 = &qword_27D9BF450;
  v7 = &qword_22C922710;
  v64 = sub_22C3A5908(&qword_27D9BF450, &qword_22C922710);
  sub_22C36985C();
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v56 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v61 = v13;
  v57 = MEMORY[0x277D84F98];
  v70 = MEMORY[0x277D84F98];
  v14 = v3 + 64;
  sub_22C36AD3C();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v65 = v3;

  v20 = 0;
  v60 = v19;
LABEL_2:
  v21 = v20;
  if (!v17)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v22 = v7;
    v23 = v6;
    v66 = v1;
    v20 = v21;
LABEL_8:
    v24 = __clz(__rbit64(v17)) | (v20 << 6);
    v25 = *(v65 + 56);
    v26 = (*(v65 + 48) + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    sub_22C9086BC();
    sub_22C369824();
    v30 = v25 + *(v29 + 72) * v24;
    v31 = v64;
    v34 = sub_22C3815A4(v32, v30, v33);
    v35(v34);
    *v24 = v28;
    *(v24 + 8) = v27;
    v36 = v24;
    v37 = v67;
    v6 = v23;
    v38 = v23;
    v7 = v22;
    sub_22C5E71BC(v36, v67, v38, v22);
    v39 = *(v31 + 48);

    v40 = v37 + v39;
    v41 = v66;
    v62(&v68, v40);
    v1 = v41;
    if (v41)
    {
      break;
    }

    v17 &= v17 - 1;
    v42 = v69;
    if (v69)
    {
      v55 = v68;
      sub_22C5E71BC(v67, v56, v6, v22);
      v43 = v57[2];
      if (v57[3] <= v43)
      {
        sub_22C892384(v43);
        sub_22C88E938();
      }

      v44 = *v56;
      v66 = v56[1];
      sub_22C90B62C();
      v54 = v44;
      sub_22C909FFC();
      sub_22C90B66C();
      v57 = v70;
      sub_22C375C58();
      if (v45)
      {
        sub_22C381420();
        while (1)
        {
          sub_22C892510();
          if (v45)
          {
            if (v48)
            {
              goto LABEL_27;
            }
          }

          sub_22C892374();
          if (!v45)
          {
            sub_22C892200();
            goto LABEL_22;
          }
        }
      }

      sub_22C383974();
LABEL_22:
      v49 = *(v64 + 48);
      *(v46 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v50 = v57;
      v51 = (v57[6] + 16 * v47);
      v52 = v66;
      *v51 = v54;
      v51[1] = v52;
      v53 = (v50[7] + 16 * v47);
      *v53 = v55;
      v53[1] = v42;
      ++v50[2];
      (*(v58 + 8))(v56 + v49, v59);
      v19 = v60;
      goto LABEL_2;
    }

    sub_22C36DD28(v67, v6, v22);
    v21 = v20;
    v19 = v60;
    if (!v17)
    {
LABEL_4:
      while (1)
      {
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v20 >= v19)
        {

          goto LABEL_24;
        }

        v17 = *(v14 + 8 * v20);
        ++v21;
        if (v17)
        {
          v22 = v7;
          v23 = v6;
          v66 = v1;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }
  }

  sub_22C36DD28(v67, &qword_27D9BF450, &qword_22C922710);

LABEL_24:
  sub_22C36FB20();
}

void sub_22C8892F4()
{
  sub_22C370030();
  v51 = v0;
  v2 = v1;
  v46 = v3;
  v45 = v4;
  v48 = sub_22C3A5908(&qword_27D9C0E30, &qword_22C92B4C8);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v49 = v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  v50 = &v44 - v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v44 = v10;
  v11 = MEMORY[0x277D84F98];
  v56 = MEMORY[0x277D84F98];
  v12 = v2 + 64;
  sub_22C36AD3C();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v47 = v2;

  v18 = 0;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v19 >= v17)
        {
          goto LABEL_22;
        }

        v15 = *(v12 + 8 * v19);
        ++v18;
        if (v15)
        {
          v18 = v19;
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_7:
    v20 = (*(v47 + 48) + 16 * (__clz(__rbit64(v15)) | (v18 << 6)));
    v21 = *v20;
    v22 = v20[1];
    v23 = type metadata accessor for DialogValue(0);
    sub_22C369914(v23);
    v24 = v48;
    sub_22C37B10C();
    v25 = v44;
    sub_22C891FEC(v27, v44 + v26);
    *v25 = v21;
    v25[1] = v22;
    v28 = v50;
    sub_22C5E71BC(v25, v50, &qword_27D9C0E30, &qword_22C92B4C8);
    v29 = *(v24 + 48);

    v30 = v28 + v29;
    v31 = v51;
    v45(&v52, v30);
    v51 = v31;
    if (v31)
    {
      break;
    }

    v15 &= v15 - 1;
    if (v53)
    {
      sub_22C456E34(&v52, v55);
      sub_22C5E71BC(v50, v49, &qword_27D9C0E30, &qword_22C92B4C8);
      sub_22C456E34(v55, v54);
      v32 = v11[2];
      if (v11[3] <= v32)
      {
        sub_22C892384(v32);
        sub_22C88F6B8();
        v11 = v56;
      }

      v33 = *v49;
      v34 = v49[1];
      sub_22C90B62C();
      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C375C58();
      if (v35)
      {
        sub_22C381420();
        while (1)
        {
          sub_22C892510();
          if (v35)
          {
            if (v36)
            {
              break;
            }
          }

          sub_22C892374();
          if (!v35)
          {
            sub_22C892200();
            goto LABEL_20;
          }
        }

LABEL_24:
        __break(1u);
        return;
      }

      sub_22C383974();
LABEL_20:
      v37 = *(v48 + 48);
      sub_22C892214();
      *(v40 + v41) = v39 | v38;
      v43 = (v11[6] + 16 * v42);
      *v43 = v33;
      v43[1] = v34;
      sub_22C456E34(v54, (v11[7] + 32 * v42));
      ++v11[2];
      sub_22C891D88(v49 + v37);
    }

    else
    {
      sub_22C36DD28(v50, &qword_27D9C0E30, &qword_22C92B4C8);
      sub_22C36DD28(&v52, &qword_27D9BD5D8, &qword_22C918510);
    }
  }

  sub_22C36DD28(v50, &qword_27D9C0E30, &qword_22C92B4C8);

LABEL_22:

  sub_22C36FB20();
}

uint64_t sub_22C88965C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C890040(a1, sub_22C890008, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_22C8896E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_task_alloc();
  sub_22C36CC90();
  *(v3 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_22C889794;

  return sub_22C88987C(a1, a2, a3, 0, 0);
}

uint64_t sub_22C889794()
{
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C88987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22C9021BC();
  v6[8] = v7;
  sub_22C3699B8(v7);
  v6[9] = v8;
  v6[10] = sub_22C3699D4();
  v9 = sub_22C90687C();
  v6[11] = v9;
  sub_22C3699B8(v9);
  v6[12] = v10;
  v6[13] = sub_22C3699D4();
  v11 = sub_22C90077C();
  v6[14] = v11;
  sub_22C3699B8(v11);
  v6[15] = v12;
  v6[16] = sub_22C3699D4();
  v13 = sub_22C907C5C();
  v6[17] = v13;
  sub_22C3699B8(v13);
  v6[18] = v14;
  v6[19] = sub_22C3699D4();
  v15 = sub_22C9063DC();
  v6[20] = v15;
  sub_22C3699B8(v15);
  v6[21] = v16;
  v6[22] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22C889A60(uint64_t a1)
{
  sub_22C90405C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "DefaultFallbackDialogGenerator.generateFallback: Generating fallback for ResponseGenerationInput", v4, 2u);
    sub_22C372FB0();
  }

  v6 = v1[21];
  v5 = v1[22];
  v7 = v1[20];

  (*(v6 + 8))(v5, v7);
  sub_22C90803C();
  sub_22C907FFC();
  sub_22C907FDC();
  sub_22C907FEC();
  swift_task_alloc();
  sub_22C36CC90();
  v1[23] = v8;
  *v8 = v9;
  v8[1] = sub_22C889BE4;
  v10 = v1[19];
  v11 = v1[16];
  v12 = v1[13];
  v13 = v1[10];
  v14 = v1[6];
  v15 = v1[4];
  v16 = v1[5];
  v17 = v1[2];

  return sub_22C889F54(v17, v10, v15, v16, v14, v11, v12, v13);
}

uint64_t sub_22C889BE4()
{
  v29 = *v1;
  v28 = *(*v1 + 152);
  sub_22C807C64();
  v3 = *(v2 + 144);
  v27 = *(v4 + 136);
  sub_22C807C64();
  v26 = *(v5 + 128);
  sub_22C807C64();
  v7 = *(v6 + 120);
  v25 = *(v8 + 112);
  sub_22C807C64();
  v24 = *(v9 + 104);
  sub_22C807C64();
  v11 = *(v10 + 96);
  v13 = v12[11];
  v14 = v12[10];
  v15 = v12[9];
  v16 = v12[8];
  v17 = *v1;
  sub_22C369970();
  *v18 = v17;
  *(v29 + 192) = v0;

  (*(v15 + 8))(v14, v16);
  (*(v11 + 8))(v24, v13);
  (*(v7 + 8))(v26, v25);
  (*(v3 + 8))(v28, v27);
  if (v0)
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  else
  {

    sub_22C369A24();

    return v22();
  }
}

uint64_t sub_22C889EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C889F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = sub_22C906A7C();
  v9[11] = v10;
  sub_22C3699B8(v10);
  v9[12] = v11;
  v9[13] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9C0DF8, &qword_22C92B498);
  v9[14] = v12;
  sub_22C369914(v12);
  v9[15] = sub_22C3699D4();
  v13 = sub_22C3A5908(&qword_27D9C0E00, &unk_22C92B4A0);
  sub_22C369914(v13);
  v9[16] = sub_22C36D0D4();
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();
  v14 = sub_22C9026BC();
  v9[19] = v14;
  sub_22C3699B8(v14);
  v9[20] = v15;
  v9[21] = sub_22C36D0D4();
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = swift_task_alloc();
  v16 = sub_22C907C5C();
  v9[25] = v16;
  sub_22C3699B8(v16);
  v9[26] = v17;
  v9[27] = sub_22C36D0D4();
  v9[28] = swift_task_alloc();
  v18 = sub_22C9063DC();
  v9[29] = v18;
  sub_22C3699B8(v18);
  v9[30] = v19;
  v9[31] = sub_22C36D0D4();
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v20 = sub_22C907DEC();
  v9[35] = v20;
  sub_22C3699B8(v20);
  v9[36] = v21;
  v9[37] = sub_22C36D0D4();
  v9[38] = swift_task_alloc();
  v22 = sub_22C906ECC();
  v9[39] = v22;
  sub_22C3699B8(v22);
  v9[40] = v23;
  v9[41] = sub_22C36D0D4();
  v9[42] = swift_task_alloc();
  v24 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v24);
  v9[43] = sub_22C3699D4();
  v25 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  sub_22C369914(v25);
  v9[44] = sub_22C3699D4();
  v26 = sub_22C90234C();
  v9[45] = v26;
  sub_22C3699B8(v26);
  v9[46] = v27;
  v9[47] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_22C88A310(uint64_t a1)
{
  v195 = v1;
  v3 = v1[42];
  v2 = v1[43];
  v4 = v1[39];
  v5 = v1[40];
  v6 = v1[38];
  v7 = v1[35];
  v8 = v1[36];
  sub_22C907C0C();
  sub_22C906EBC();
  v9 = *(v5 + 8);
  (v9)(v3, v4);
  sub_22C907DDC();
  v184 = *(v8 + 8);
  (v184)(v6, v7);
  v10 = sub_22C9026AC();
  v11 = sub_22C370B74(v2, 1, v10);
  v13 = v1[44];
  v12 = v1[45];
  v14 = v1[43];
  if (v11 == 1)
  {
    sub_22C36DD28(v1[43], &qword_27D9BF328, &qword_22C9225C0);
    sub_22C36A748();
    sub_22C36C640(v15, v16, v17, v12);
  }

  else
  {
    sub_22C90265C();
    (*(*(v10 - 8) + 8))(v14, v10);
    sub_22C36D0A8(v13, 1, v12);
    if (!v36)
    {
      v52 = *(v1[46] + 32);
      v52(v1[47], v1[44], v1[45]);
      sub_22C90405C();
      v53 = sub_22C9063CC();
      v54 = sub_22C90AABC();
      if (os_log_type_enabled(v53, v54))
      {
        *swift_slowAlloc() = 0;
        sub_22C36BB14(&dword_22C366000, v56, v57, "DefaultFallbackDialogGenerator.generateFallback: generating fallback with provided fallback dialog.");
        sub_22C372FB0();
      }

      v58 = v1[47];
      v59 = v1[45];
      v60 = v1[34];
      v61 = v1[29];
      v62 = v1[30];
      v63 = v1[2];

      (*(v62 + 8))(v60, v61);
      v52(v63, v58, v59);
      sub_22C386078();

      sub_22C369A24();
LABEL_19:
      sub_22C377448();

      __asm { BRAA            X1, X16 }
    }
  }

  v18 = v1[28];
  v19 = v1[25];
  v20 = v1[26];
  v21 = v1[6];
  v22 = v1[3];
  sub_22C36DD28(v1[44], &qword_27D9BAB60, &unk_22C90D400);
  sub_22C90405C();
  v23 = v22;
  v24 = v21;
  v187 = *(v20 + 16);
  v187(v18, v23, v19);

  v25 = sub_22C9063CC();
  v26 = sub_22C90AABC();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v1[33];
  v29 = v1[30];
  v191 = v1[29];
  v30 = v1[28];
  buf = v9;
  if (v27)
  {
    v174 = v1[27];
    v178 = v1[33];
    v32 = v1[25];
    v31 = v1[26];
    v177 = v26;
    v34 = v1[5];
    v33 = v1[6];
    log = v25;
    v35 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v194[0] = v176;
    *v35 = 136315395;
    v36 = v33 == 0;
    if (v33)
    {
      v37 = v34;
    }

    else
    {
      v37 = 7104878;
    }

    if (v36)
    {
      v38 = 0xE300000000000000;
    }

    else
    {
      v38 = v24;
    }

    v39 = sub_22C36F9F4(v37, v38, v194);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2085;
    v187(v174, v30, v32);
    v40 = sub_22C90A1AC();
    v42 = v41;
    (*(v31 + 8))(v30, v32);
    v43 = sub_22C36F9F4(v40, v42, v194);

    *(v35 + 14) = v43;
    _os_log_impl(&dword_22C366000, log, v177, "Generating fallback:\ncustomCatId: %s\ntoolResult: %{sensitive}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v176, -1, -1);
    MEMORY[0x2318B9880](v35, -1, -1);

    v44 = *(v29 + 8);
    v44(v178, v191);
  }

  else
  {
    v45 = v1[25];
    v46 = v1[26];

    (*(v46 + 8))(v30, v45);
    v44 = *(v29 + 8);
    v44(v28, v191);
  }

  sub_22C8EBCC4();
  v47 = v1[7];
  v48 = v1[4];
  v49 = swift_task_alloc();
  *(v49 + 16) = v48;
  *(v49 + 24) = v47;
  sub_22C36D468();
  v51 = v50;

  v66 = sub_22C8EBE00();
  v67 = v1[7];
  v68 = v1[4];
  sub_22C8EF95C(v66, v70, v69 & 1, v71);

  v72 = swift_task_alloc();
  *(v72 + 16) = v68;
  *(v72 + 24) = v67;
  sub_22C36D468();
  v73 = v1[6];

  v74 = sub_22C3806B8();
  v76 = sub_22C88965C(v74, v75);
  v1[48] = v76;
  if (v73)
  {
    v77 = v1[10];

    sub_22C374168(v77, v77[3]);
    swift_task_alloc();
    sub_22C36CC90();
    v1[49] = v78;
    *v78 = v79;
    v78[1] = sub_22C88B478;
    goto LABEL_50;
  }

  v80 = v1[41];
  v183 = v1[39];
  v81 = v1[37];
  v188 = v1[35];
  v192 = v76;
  v82 = v1[23];
  v83 = v1[24];
  v85 = v1[19];
  v84 = v1[20];
  sub_22C907C0C();
  sub_22C906EBC();
  (buf)(v80, v183);
  sub_22C907DAC();
  (v184)(v81, v188);
  v86 = *(v84 + 16);
  v86(v82, v83, v85);
  v87 = (*(v84 + 88))(v82, v85);
  if (v87 != *MEMORY[0x277D1CBF0])
  {
    if (v87 == *MEMORY[0x277D1CB98])
    {

      sub_22C90405C();
      v101 = sub_22C9063CC();
      v102 = sub_22C90AADC();
      if (os_log_type_enabled(v101, v102))
      {
        *swift_slowAlloc() = 0;
        sub_22C36BB14(&dword_22C366000, v103, v104, "No fallback for outcome snippetStream");
        sub_22C372FB0();
      }

      v105 = v1[32];
      v106 = v1[29];
      v108 = v1[23];
      v107 = v1[24];
      v109 = v1[19];
      v110 = v1[20];

      v44(v105, v106);
      sub_22C88BDD0();
      swift_allocError();
      swift_willThrow();
      v111 = *(v110 + 8);
      v111(v107, v109);
      v112 = (v111)(v108, v109);
      goto LABEL_15;
    }

    if (v87 == *MEMORY[0x277D1CBA8])
    {
      goto LABEL_47;
    }

    if (v87 == *MEMORY[0x277D1CBB0])
    {
LABEL_43:

      v51 = "on#parameterNotAllowed";
LABEL_48:
      v100 = v192;
      goto LABEL_49;
    }

    if (v87 != *MEMORY[0x277D1CBB8] && v87 != *MEMORY[0x277D1CBD0])
    {
      if (v87 == *MEMORY[0x277D1CBD8])
      {
        goto LABEL_43;
      }

      if (v87 != *MEMORY[0x277D1CBC0] && v87 != *MEMORY[0x277D1CBE0] && v87 != *MEMORY[0x277D1CBA0])
      {
        if (v87 == *MEMORY[0x277D1CBC8])
        {
          goto LABEL_43;
        }

        if (v87 != *MEMORY[0x277D1CBE8])
        {
          v155 = v1[24];
          v156 = v1[22];
          v157 = v1[19];

          sub_22C90405C();
          v86(v156, v155, v157);
          v158 = sub_22C9063CC();
          v182 = sub_22C90AADC();
          v186 = v158;
          v159 = os_log_type_enabled(v158, v182);
          v190 = v1[29];
          v193 = v1[31];
          v160 = v1[22];
          if (v159)
          {
            v161 = v1[20];
            v162 = v1[21];
            v163 = v1[19];
            bufa = swift_slowAlloc();
            v181 = swift_slowAlloc();
            v194[0] = v181;
            *bufa = 136315138;
            v86(v162, v160, v163);
            v164 = sub_22C90A1AC();
            v166 = v165;
            v167 = *(v161 + 8);
            v167(v160, v163);
            v168 = sub_22C36F9F4(v164, v166, v194);

            *(bufa + 4) = v168;
            _os_log_impl(&dword_22C366000, v186, v182, "No fallback for unknown outcome %s", bufa, 0xCu);
            sub_22C36FF94(v181);
            sub_22C372FB0();
            MEMORY[0x2318B9880](bufa, -1, -1);
          }

          else
          {
            v169 = v1[20];

            v167 = *(v169 + 8);
            v170 = sub_22C36BA00();
            (v167)(v170);
          }

          v44(v193, v190);
          v171 = v1[23];
          v172 = v1[24];
          v173 = v1[19];
          sub_22C88BDD0();
          swift_allocError();
          swift_willThrow();
          v167(v172, v173);
          v112 = (v167)(v171, v173);
LABEL_15:
          sub_22C892284(v112, v113, v114, v115, v116, v117, v118, v119);

          sub_22C369A24();
          goto LABEL_19;
        }
      }
    }

LABEL_47:

    sub_22C8921A0();
    goto LABEL_48;
  }

  v89 = v1[17];
  v88 = v1[18];
  v91 = v1[14];
  v90 = v1[15];
  v92 = v1[11];
  v93 = v1[12];
  sub_22C907C1C();
  (*(v93 + 104))(v89, *MEMORY[0x277D1DD48], v92);
  sub_22C36BECC();
  sub_22C36C640(v94, v95, v96, v92);
  v97 = *(v91 + 48);
  sub_22C88BE24(v88, v90);
  sub_22C88BE24(v89, v90 + v97);
  sub_22C36D0A8(v90, 1, v92);
  if (v36)
  {
    v98 = v1[18];
    v99 = v1[11];
    sub_22C36DD28(v1[17], &qword_27D9C0E00, &unk_22C92B4A0);
    sub_22C36DD28(v98, &qword_27D9C0E00, &unk_22C92B4A0);
    sub_22C36D0A8(v90 + v97, 1, v99);
    if (!v36)
    {
      goto LABEL_36;
    }

    sub_22C36DD28(v1[15], &qword_27D9C0E00, &unk_22C92B4A0);
    v100 = v192;
LABEL_41:

    sub_22C8921A0();
    goto LABEL_49;
  }

  v120 = v1[11];
  sub_22C88BE24(v1[15], v1[16]);
  v121 = sub_22C370B74(v90 + v97, 1, v120);
  v123 = v1[17];
  v122 = v1[18];
  if (v121 != 1)
  {
    v189 = v1[15];
    v127 = v1[12];
    (*(v127 + 32))(v1[13], v90 + v97, v1[11]);
    sub_22C891E48(&qword_27D9C0E10, MEMORY[0x277D1DD50], MEMORY[0x277D1DD58]);
    v185 = sub_22C90A0BC();
    v128 = *(v127 + 8);
    v129 = sub_22C36BA00();
    v128(v129);
    sub_22C36DD28(v123, &qword_27D9C0E00, &unk_22C92B4A0);
    sub_22C36DD28(v122, &qword_27D9C0E00, &unk_22C92B4A0);
    v130 = sub_22C37F760();
    v128(v130);
    sub_22C36DD28(v189, &qword_27D9C0E00, &unk_22C92B4A0);
    v100 = v192;
    if ((v185 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  sub_22C36DD28(v1[17], &qword_27D9C0E00, &unk_22C92B4A0);
  sub_22C36DD28(v122, &qword_27D9C0E00, &unk_22C92B4A0);
  v124 = sub_22C37F760();
  v125(v124);
LABEL_36:
  sub_22C36DD28(v1[15], &qword_27D9C0DF8, &qword_22C92B498);
LABEL_37:

  v126 = sub_22C8EBE00();
  v131 = v1[7];
  v132 = v1[4];
  sub_22C8EF95C(v126, v134, v133 & 1, v135);

  v136 = swift_task_alloc();
  *(v136 + 16) = v132;
  *(v136 + 24) = v131;
  sub_22C36D468();

  v137 = sub_22C3806B8();
  v100 = sub_22C88965C(v137, v138);
  sub_22C8921A0();
LABEL_49:
  v1[50] = v100;
  v1[51] = v51;
  v139 = v1[23];
  v140 = v1[19];
  v141 = v1[20];
  v142 = v1[10];
  v143 = *(v141 + 8);
  v1[52] = v143;
  v1[53] = (v141 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v143(v139, v140);
  sub_22C374168(v142, v142[3]);
  swift_task_alloc();
  sub_22C36CC90();
  v1[54] = v144;
  *v144 = v145;
  v144[1] = sub_22C88B804;
LABEL_50:
  sub_22C377448();

  return sub_22C87CD94(v146, v147, v148, v149, v150, v151, v152);
}

void sub_22C88B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();
  sub_22C6343B0();

  sub_22C369A24();
  sub_22C377448();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C88B804()
{
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 440) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C88B94C()
{
  (*(v0 + 416))(*(v0 + 192), *(v0 + 152));
  sub_22C386078();

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C88BA98()
{
  v1 = (*(v0 + 416))(*(v0 + 192), *(v0 + 152));
  sub_22C892284(v1, v2, v3, v4, v5, v6, v7, v8);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C88BBD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_22C9006BC();
  a4(a1, v6, v7);
}

uint64_t sub_22C88BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C89209C;

  return sub_22C8896E0(a1, a2, a3);
}

uint64_t sub_22C88BD0C(uint64_t a1)
{
  v2 = sub_22C891F98();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C88BD48(uint64_t a1)
{
  v2 = sub_22C891F98();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C88BDD0()
{
  result = qword_27D9C0E08;
  if (!qword_27D9C0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0E08);
  }

  return result;
}

uint64_t sub_22C88BE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0E00, &unk_22C92B4A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C88BF00()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C369A48();
  v3 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(v2);
  v4 = sub_22C3699B8(v3);
  v44 = v5;
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v49 = v6;
  v7 = sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C369824();
  v9 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v48 = v41 - v11;
  v12 = *v0;
  sub_22C3868D4();
  sub_22C3A5908(&qword_27D9C0E88, &qword_22C92B550);
  v13 = sub_22C36BA00();
  v15 = sub_22C892394(v13, v14);
  if (!*(v12 + 16))
  {
LABEL_28:

LABEL_29:
    *v1 = v15;
    sub_22C36CC48();
    return;
  }

  v41[0] = v0;
  v16 = 0;
  v17 = (v12 + 64);
  sub_22C36AD3C();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v41[1] = v9 + 16;
  v42 = v9;
  v46 = (v9 + 32);
  v43 = v12;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v16 >= v22)
      {
        break;
      }

      ++v23;
      if (v17[v16])
      {
        sub_22C375A38();
        v20 = v25 & v24;
        goto LABEL_9;
      }
    }

    if ((v45 & 1) == 0)
    {

      v1 = v41[0];
      goto LABEL_29;
    }

    sub_22C36ED64();
    v1 = v41[0];
    if (v36 != v37)
    {
      sub_22C386A8C();
      *v17 = v38;
    }

    else
    {
      v39 = sub_22C3856F8();
      sub_22C88FAFC(v39, v40, v17);
    }

    *(v12 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    sub_22C70CF34();
LABEL_9:
    v47 = *(v9 + 72);
    if (v45)
    {
      v26 = sub_22C8924E8();
      v27(v26);
      sub_22C380668();
      sub_22C892044(v28, v49);
    }

    else
    {
      v29 = sub_22C8924E8();
      v30(v29);
      sub_22C380668();
      sub_22C891FEC(v31, v49);
    }

    sub_22C891DE4();
    sub_22C37DA2C();
    sub_22C909F7C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v32)
    {
      break;
    }

    sub_22C38AC50();
LABEL_20:
    sub_22C376B08();
    sub_22C892338(v34);
    (*v46)(*(v15 + 48) + v47 * v9, v48, v7);
    sub_22C380668();
    sub_22C892044(v49, v35);
    ++*(v15 + 16);
    v9 = v42;
    v12 = v43;
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v32)
    {
      if (v33)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v32)
    {
      sub_22C37F630();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C88C24C()
{
  sub_22C36BA7C();
  v2 = sub_22C389358();
  v3 = type metadata accessor for PromptTreeIdentifier.Label(v2);
  v4 = sub_22C3699B8(v3);
  v41 = v5;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7;
  v9 = *v0;
  sub_22C3868D4();
  sub_22C3A5908(&qword_27D9C0E80, &unk_22C92B540);
  v10 = sub_22C37F760();
  v42 = v1;
  v12 = sub_22C38B2D4(v10, v11);
  if (!*(v9 + 16))
  {
LABEL_28:

    sub_22C387D08();
    sub_22C36CC48();
    return;
  }

  v39[1] = v0;
  v40 = v9;
  v13 = 0;
  v14 = v9 + 64;
  sub_22C36AD3C();
  v18 = (v17 + 63) >> 6;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v18)
      {
        break;
      }

      ++v21;
      if (*(v14 + 8 * v13))
      {
        sub_22C375A38();
        v44 = v23 & v22;
        goto LABEL_9;
      }
    }

    if (v42)
    {
      sub_22C36ED64();
      if (v35 != v36)
      {
        sub_22C36EEAC(v34);
      }

      else
      {
        v37 = sub_22C3856F8();
        sub_22C88FAFC(v37, v38, v14);
      }

      *(v9 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    sub_22C36C050();
    v44 = v20;
LABEL_9:
    v24 = *(v9 + 48);
    v43 = *(v41 + 72);
    v25 = v43 * (v19 | (v13 << 6));
    if (v42)
    {
      sub_22C892044(v24 + v25, v8);
      v26 = sub_22C37DA90();
      sub_22C892044(v26, v27);
    }

    else
    {
      sub_22C891FEC(v24 + v25, v8);
      v28 = sub_22C37DA90();
      sub_22C891FEC(v28, v29);
    }

    sub_22C892544();
    sub_22C48640C();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v30)
    {
      break;
    }

    sub_22C37F394();
LABEL_20:
    *(v12 + 64 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v33 = v43 * v31;
    sub_22C892044(v8, *(v12 + 48) + v43 * v31);
    sub_22C892044(v25, *(v12 + 56) + v33);
    sub_22C892158();
    v9 = v40;
    if (!v44)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    sub_22C5E7554();
    if (!v30)
    {
      sub_22C36D900();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}