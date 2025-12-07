void sub_1BD312F2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BD5ED754(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(v2 + 2);
  v11[0] = (v2 + 32);
  v11[1] = v10;
  sub_1BD312F98(v11);
  *a1 = v2;
}

void sub_1BD312F98(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      if (v2 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = sub_1BE0527B4();
        *(v9 + 16) = v2 / 2;
      }

      v18[0] = (v9 + 32);
      v18[1] = (v2 / 2);
      v10 = v9;
      sub_1BD313260(v18, v19, a1, v8, v4, v5, v6, v7);
      v10[2] = 0;
      v10, v11, v12, v13, v14, v15, v16, v17;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BD313090(0, v2, 1, a1);
  }
}

uint64_t sub_1BD313090(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 136 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 24);
      v12 = *(v10 - 112);
      v13 = *(v10 - 24);
      if (*(v10 + 112))
      {
        if (!v13)
        {
          goto LABEL_22;
        }

        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = v11 == 0;
        }

        if (v15 || v12 == 0)
        {
LABEL_4:
          ++v4;
          v7 += 136;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      sub_1BD0DDEBC();
      result = sub_1BE0535A4();
      if (result != -1)
      {
        goto LABEL_4;
      }

LABEL_22:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v17 = v10 - 136;
      v28 = *(v10 + 80);
      v29 = *(v10 + 96);
      v30 = *(v10 + 112);
      v31 = *(v10 + 128);
      v24 = *(v10 + 16);
      v25 = *(v10 + 32);
      v26 = *(v10 + 48);
      v27 = *(v10 + 64);
      v23 = *v10;
      v18 = *(v10 - 56);
      *(v10 + 64) = *(v10 - 72);
      *(v10 + 80) = v18;
      v19 = *(v10 - 24);
      *(v10 + 96) = *(v10 - 40);
      *(v10 + 112) = v19;
      *(v10 + 128) = *(v10 - 8);
      v20 = *(v10 - 88);
      *(v10 + 32) = *(v10 - 104);
      *(v10 + 48) = v20;
      v21 = *(v10 - 120);
      *v10 = *(v10 - 136);
      *(v10 + 16) = v21;
      *(v17 + 64) = v27;
      *(v17 + 80) = v28;
      *(v17 + 96) = v29;
      *(v17 + 112) = v30;
      *(v17 + 128) = v31;
      *(v17 + 16) = v24;
      *(v17 + 32) = v25;
      *(v17 + 48) = v26;
      *v17 = v23;
      v10 -= 136;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void sub_1BD313260(char **result, const char *a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_131:
    __src = *result;
    if (!*result)
    {
      goto LABEL_170;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_133:
      v104 = v12 + 16;
      v105 = *(v12 + 2);
      if (v105 >= 2)
      {
        v116 = v9;
        v9 = 136;
        while (*v116)
        {
          v106 = &v12[16 * v105];
          v107 = *v106;
          v108 = &v104[2 * v105];
          v109 = v108[1];
          sub_1BD313A68((*v116 + 136 * *v106), (*v116 + 136 * *v108), (*v116 + 136 * v109), __src);
          if (v8)
          {
            goto LABEL_141;
          }

          if (v109 < v107)
          {
            goto LABEL_156;
          }

          if (v105 - 2 >= *v104)
          {
            goto LABEL_157;
          }

          *v106 = v107;
          *(v106 + 1) = v109;
          v110 = *v104 - v105;
          if (*v104 < v105)
          {
            goto LABEL_158;
          }

          v105 = *v104 - 1;
          memmove(v108, v108 + 2, 16 * v110);
          *v104 = v105;
          if (v105 <= 1)
          {
            goto LABEL_141;
          }
        }

        goto LABEL_168;
      }

LABEL_141:
      v12, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

LABEL_164:
    v12 = sub_1BD5ED6C8(v12, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_133;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11++;
    if (v11 >= v10)
    {
      goto LABEL_47;
    }

    v14 = *v9;
    v15 = *v9 + 136 * v11;
    v16 = *(v15 + 24);
    v17 = *v9 + 136 * v13;
    v18 = *(v17 + 24);
    v19 = *(v17 + 112);
    if (*(v15 + 112))
    {
      if (!v19)
      {
        v21 = 1;
        goto LABEL_22;
      }

      if (v16)
      {
        v20 = v18 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
LABEL_20:
        sub_1BD0DDEBC();
        v21 = sub_1BE0535A4() == -1;
        goto LABEL_22;
      }
    }

    else
    {
      if (v19)
      {
        v22 = 1;
      }

      else
      {
        v22 = v16 == 0;
      }

      if (!v22 && v18 != 0)
      {
        goto LABEL_20;
      }
    }

    v21 = 0;
LABEL_22:
    v11 = v13 + 2;
    if (v13 + 2 < v10)
    {
      v24 = v14 + 136 * v13 + 248;
      while (1)
      {
        v25 = v24;
        v26 = *(v24 + 48);
        v27 = *(v24 + 136);
        v24 += 136;
        v28 = *(v25 - 11);
        v29 = *v25;
        if (v27)
        {
          if (!v29)
          {
            if (!v21)
            {
              goto LABEL_47;
            }

            goto LABEL_26;
          }
        }

        else if (v29)
        {
          goto LABEL_25;
        }

        if (v26)
        {
          v30 = v28 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          sub_1BD0DDEBC();
          if (((v21 ^ (sub_1BE0535A4() != -1)) & 1) == 0)
          {
            break;
          }

          goto LABEL_26;
        }

LABEL_25:
        if (v21)
        {
          goto LABEL_39;
        }

LABEL_26:
        if (v10 == ++v11)
        {
          v11 = v10;
          break;
        }
      }
    }

    if (v21)
    {
LABEL_39:
      if (v11 < v13)
      {
        goto LABEL_161;
      }

      if (v13 < v11)
      {
        v31 = v9;
        v32 = 136 * v11 - 136;
        v33 = 136 * v13;
        v34 = v11;
        v111 = v13;
        do
        {
          if (v13 != --v34)
          {
            v35 = *v31;
            if (!*v31)
            {
              goto LABEL_167;
            }

            v36 = v35 + v32;
            v128 = *(v35 + v33 + 80);
            v130 = *(v35 + v33 + 96);
            v132 = *(v35 + v33 + 112);
            v134 = *(v35 + v33 + 128);
            v120 = *(v35 + v33 + 16);
            v122 = *(v35 + v33 + 32);
            v124 = *(v35 + v33 + 48);
            v126 = *(v35 + v33 + 64);
            v118 = *(v35 + v33);
            memmove((v35 + v33), (v35 + v32), 0x88uLL);
            *(v36 + 80) = v128;
            *(v36 + 96) = v130;
            *(v36 + 112) = v132;
            *(v36 + 128) = v134;
            *(v36 + 16) = v120;
            *(v36 + 32) = v122;
            *(v36 + 48) = v124;
            *(v36 + 64) = v126;
            *v36 = v118;
          }

          ++v13;
          v32 -= 136;
          v33 += 136;
        }

        while (v13 < v34);
        v9 = v31;
        v13 = v111;
      }
    }

LABEL_47:
    v37 = *(v9 + 8);
    if (v11 < v37)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_160;
      }

      if (v11 - v13 < a4)
      {
        break;
      }
    }

LABEL_80:
    if (v11 < v13)
    {
      goto LABEL_159;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BD1D7844(0, *(v12 + 2) + 1, 1, v12, a5, a6, a7, a8);
    }

    v58 = *(v12 + 2);
    v57 = *(v12 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v12 = sub_1BD1D7844((v57 > 1), v58 + 1, 1, v12, a5, a6, a7, a8);
    }

    *(v12 + 2) = v59;
    v60 = &v12[16 * v58];
    *(v60 + 4) = v13;
    *(v60 + 5) = v11;
    v61 = *result;
    if (!*result)
    {
      goto LABEL_169;
    }

    if (v58)
    {
      while (1)
      {
        v62 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v63 = *(v12 + 4);
          v64 = *(v12 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_100:
          if (v66)
          {
            goto LABEL_147;
          }

          v79 = &v12[16 * v59];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_150;
          }

          v85 = &v12[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_153;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_154;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v59 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v89 = &v12[16 * v59];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_114:
        if (v84)
        {
          goto LABEL_149;
        }

        v92 = &v12[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_152;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_121:
        v100 = v62 - 1;
        if (v62 - 1 >= v59)
        {
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
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (!*v9)
        {
          goto LABEL_166;
        }

        v101 = *&v12[16 * v100 + 32];
        v102 = *&v12[16 * v62 + 40];
        sub_1BD313A68((*v9 + 136 * v101), (*v9 + 136 * *&v12[16 * v62 + 32]), (*v9 + 136 * v102), v61);
        if (v8)
        {
          goto LABEL_141;
        }

        if (v102 < v101)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1BD5ED6C8(v12, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v100 >= *(v12 + 2))
        {
          goto LABEL_144;
        }

        v103 = &v12[16 * v100];
        *(v103 + 4) = v101;
        *(v103 + 5) = v102;
        sub_1BD5ED63C(v62);
        v59 = *(v12 + 2);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v12[16 * v59 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_145;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_146;
      }

      v74 = &v12[16 * v59];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_148;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_151;
      }

      if (v78 >= v70)
      {
        v96 = &v12[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_155;
        }

        if (v65 < v99)
        {
          v62 = v59 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

LABEL_3:
    v10 = *(v9 + 8);
    if (v11 >= v10)
    {
      goto LABEL_131;
    }
  }

  if (__OFADD__(v13, a4))
  {
    goto LABEL_162;
  }

  if (&a4[v13] >= v37)
  {
    v38 = *(v9 + 8);
  }

  else
  {
    v38 = &a4[v13];
  }

  if (v38 < v13)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v11 == v38)
  {
    goto LABEL_80;
  }

  v115 = v9;
  __src = v38;
  v39 = v13;
  v40 = *v9;
  v41 = *v9 + 136 * v11;
  v112 = v39;
  v42 = v39 - v11;
LABEL_58:
  v43 = v42;
  v44 = v41;
  while (1)
  {
    v45 = *(v44 + 24);
    v46 = *(v44 - 112);
    v47 = *(v44 - 24);
    if (!*(v44 + 112))
    {
      if (v47)
      {
        v49 = 1;
      }

      else
      {
        v49 = v45 == 0;
      }

      if (!v49 && v46 != 0)
      {
        goto LABEL_74;
      }

LABEL_57:
      ++v11;
      v41 += 136;
      --v42;
      if (v11 == __src)
      {
        v11 = __src;
        v9 = v115;
        v13 = v112;
        goto LABEL_80;
      }

      goto LABEL_58;
    }

    if (!v47)
    {
      goto LABEL_75;
    }

    if (v45)
    {
      v48 = v46 == 0;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_57;
    }

LABEL_74:
    sub_1BD0DDEBC();
    if (sub_1BE0535A4() != -1)
    {
      goto LABEL_57;
    }

LABEL_75:
    if (!v40)
    {
      break;
    }

    v51 = v44 - 136;
    v129 = *(v44 + 80);
    v131 = *(v44 + 96);
    v133 = *(v44 + 112);
    v135 = *(v44 + 128);
    v121 = *(v44 + 16);
    v123 = *(v44 + 32);
    v125 = *(v44 + 48);
    v127 = *(v44 + 64);
    v119 = *v44;
    v52 = *(v44 - 56);
    *(v44 + 64) = *(v44 - 72);
    *(v44 + 80) = v52;
    v53 = *(v44 - 24);
    *(v44 + 96) = *(v44 - 40);
    *(v44 + 112) = v53;
    *(v44 + 128) = *(v44 - 8);
    v54 = *(v44 - 88);
    *(v44 + 32) = *(v44 - 104);
    *(v44 + 48) = v54;
    v55 = *(v44 - 120);
    *v44 = *(v44 - 136);
    *(v44 + 16) = v55;
    *(v51 + 64) = v127;
    *(v51 + 80) = v129;
    *(v51 + 96) = v131;
    *(v51 + 112) = v133;
    *(v51 + 128) = v135;
    *(v51 + 16) = v121;
    *(v51 + 32) = v123;
    *(v51 + 48) = v125;
    *v51 = v119;
    v44 -= 136;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
}

uint64_t sub_1BD313A68(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 136;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 136;
  if (v9 >= v11)
  {
    if (__src != a2 || &a2[136 * v11] <= __src)
    {
      memmove(__src, a2, 136 * v11);
    }

    v12 = &v4[136 * v11];
    if (v10 < 136 || v6 <= v7)
    {
      goto LABEL_63;
    }

    while (2)
    {
      v5 -= 136;
      while (1)
      {
        v20 = *(v12 - 14);
        v21 = *(v6 - 14);
        v22 = *(v6 - 3);
        if (*(v12 - 3))
        {
          break;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v20 == 0;
        }

        if (!v24 && v21 != 0)
        {
          goto LABEL_53;
        }

LABEL_54:
        v26 = (v12 - 136);
        if (v5 + 136 != v12)
        {
          memmove(v5, v12 - 136, 0x88uLL);
        }

        v5 -= 136;
        v12 -= 136;
        if (v26 <= v4)
        {
          v12 = v26;
          goto LABEL_63;
        }
      }

      if (!v22)
      {
        goto LABEL_56;
      }

      if (v20)
      {
        v23 = v21 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_54;
      }

LABEL_53:
      sub_1BD0DDEBC();
      if (sub_1BE0535A4() == -1)
      {
LABEL_56:
        v27 = v6 - 136;
        if (v5 + 136 != v6)
        {
          memmove(v5, v6 - 136, 0x88uLL);
        }

        if (v12 <= v4 || (v6 -= 136, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_63;
        }

        continue;
      }

      goto LABEL_54;
    }
  }

  if (__src != __dst || &__dst[136 * v9] <= __src)
  {
    memmove(__src, __dst, 136 * v9);
  }

  v12 = &v4[136 * v9];
  if (v8 >= 136 && v6 < v5)
  {
    do
    {
      v13 = *(v6 + 3);
      v14 = *(v4 + 3);
      v15 = *(v4 + 14);
      if (*(v6 + 14))
      {
        if (!v15)
        {
          goto LABEL_28;
        }

        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v15)
        {
          v17 = 1;
        }

        else
        {
          v17 = v13 == 0;
        }

        if (v17 || v14 == 0)
        {
LABEL_23:
          v19 = v4;
          v16 = v7 == v4;
          v4 += 136;
          if (v16)
          {
            goto LABEL_25;
          }

LABEL_24:
          memmove(v7, v19, 0x88uLL);
          goto LABEL_25;
        }
      }

      sub_1BD0DDEBC();
      if (sub_1BE0535A4() != -1)
      {
        goto LABEL_23;
      }

LABEL_28:
      v19 = v6;
      v16 = v7 == v6;
      v6 += 136;
      if (!v16)
      {
        goto LABEL_24;
      }

LABEL_25:
      v7 += 136;
    }

    while (v4 < v12 && v6 < v5);
  }

  v6 = v7;
LABEL_63:
  v28 = (v12 - v4) / 136;
  if (v6 != v4 || v6 >= &v4[136 * v28])
  {
    memmove(v6, v4, 136 * v28);
  }

  return 1;
}

void sub_1BD313D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1BE048964();
        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1BD313EEC(void *result, uint64_t a2, void *a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a6;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v11;
      a5 = v10;
      a6 = v9;
    }

    sub_1BD313D78(result, a2, a3, a4, a5, a6);
    v13 = v12;
    a3, v14, v15, v16, v17, v18, v19, v20;
    return v13;
  }

  return result;
}

id sub_1BD313F8C()
{
  v0 = sub_1BE04AA64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKPassKitUIBundle();
  if (result)
  {
    v5 = result;
    v6 = sub_1BE052404();
    v7 = sub_1BE052404();
    v8 = [v5 URLForResource:v6 withExtension:v7];

    if (v8)
    {
      sub_1BE04A9F4();

      v9 = sub_1BE04A9C4();
      (*(v1 + 8))(v3, v0);
    }

    else
    {
      v9 = 0;
    }

    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v9, 40.0, 40.0, v10);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD314128(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() configurationWithPointSize_];
  v3 = sub_1BE052404();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    v5 = [objc_opt_self() whiteColor];
    v6 = [v4 imageWithTintColor_];

    v4 = [v6 imageWithRenderingMode_];
  }

  return v4;
}

void sub_1BD314240(uint64_t a1, void *a2)
{
  v4 = sub_1BD30C28C();
  if (v4)
  {
    v12 = v4;
    v13 = [v4 accountIdentifier];

    if (v13)
    {
      v14 = sub_1BE052434();
      v16 = v15;

      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (!v16)
      {
        return;
      }

      if (v14 == a1 && v16 == a2)
      {
        v16, v5, v6, v7, v8, v9, v10, v11;
      }

      else
      {
        v17 = sub_1BE053B84();
        v16, v18, v19, v20, v21, v22, v23, v24;
        if ((v17 & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_14;
    }
  }

  v14 = 0;
  v16 = 0;
  if (a2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v16)
  {

    v16, v5, v6, v7, v8, v9, v10, v11;
    return;
  }

LABEL_14:

  sub_1BD309550();
}

uint64_t objectdestroy_124Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  *(v2 + 40), v4, v5, v6, v7, v8, v9, v10;

  return swift_deallocObject();
}

uint64_t sub_1BD314874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD3148BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD314918(uint64_t a1)
{
  v2 = v1;
  sub_1BE052524();
  if (v1[3])
  {
    sub_1BE052524();
  }

  if (v1[5])
  {
    sub_1BE052524();
  }

  if (v1[7])
  {
    sub_1BE052524();
  }

  v3 = v1[8];
  if (v3)
  {
    v4 = v3;
    sub_1BE053084();
  }

  v5 = v2[9];
  if (v5)
  {
    v6 = v5;
    sub_1BE053084();
  }

  if (v2[14])
  {
    sub_1BE052524();
  }

  v7 = v2[10];
  if (v7)
  {
    v8 = v7;
    sub_1BE053084();
  }

  if ((v2[12] & 1) == 0)
  {
    MEMORY[0x1BFB40DA0](v2[11]);
  }
}

uint64_t sub_1BD314A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1BD314DA4(v11, v13) & 1;
}

uint64_t sub_1BD314A88()
{
  sub_1BE053D04();
  sub_1BD314918(v1);
  return sub_1BE053D64();
}

uint64_t sub_1BD314ACC(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BD314918(v2);
  return sub_1BE053D64();
}

uint64_t sub_1BD314B08()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  sub_1BE053D04();
  sub_1BE052524();
  if (v1)
  {
    sub_1BE052524();
  }

  if (v2)
  {
    sub_1BE052524();
  }

  if (v3)
  {
    sub_1BD3D8A74(v5, v3);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD314BB0(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  result = sub_1BE052524();
  if (v3)
  {
    result = sub_1BE052524();
  }

  if (v4)
  {
    result = sub_1BE052524();
  }

  if (v5)
  {

    return sub_1BD3D8A74(a1, v5);
  }

  return result;
}

uint64_t sub_1BD314C4C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  sub_1BE053D04();
  sub_1BE052524();
  if (v2)
  {
    sub_1BE052524();
  }

  if (v3)
  {
    sub_1BE052524();
  }

  if (v4)
  {
    sub_1BD3D8A74(v6, v4);
  }

  return sub_1BE053D64();
}

BOOL sub_1BD314CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1BD314FC4(v5, v7);
}

unint64_t sub_1BD314D50()
{
  result = qword_1EBD41C70;
  if (!qword_1EBD41C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41C70);
  }

  return result;
}

uint64_t sub_1BD314DA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (a1[4] != *(a2 + 32) || v8 != v9) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11 || (a1[6] != *(a2 + 48) || v10 != v11) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[9];
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, qword_1EBD4F790, 0x1E69DCAB8);
    v14 = v13;
    v15 = v12;
    v16 = sub_1BE053074();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = a1[14];
  v18 = *(a2 + 112);
  if (v17)
  {
    if (!v18 || (a1[13] != *(a2 + 104) || v17 != v18) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = a1[10];
  v20 = *(a2 + 80);
  if (v19)
  {
    if (v20)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43100, 0x1E69DC888);
      v21 = v20;
      v22 = v19;
      v23 = sub_1BE053074();

      if (v23)
      {
        goto LABEL_44;
      }
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_44:
  result = *(a2 + 96);
  if ((a1[12] & 1) == 0)
  {
    return (a1[11] == *(a2 + 88)) & ~result;
  }

  return result;
}

BOOL sub_1BD314FC4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_1BE053B84() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_20:
  v10 = a1[6];
  v11 = a2[6];
  result = (v10 | v11) == 0;
  if (v10)
  {
    if (v11)
    {
      sub_1BE048C84();
      v13 = sub_1BD3FFE28(v10, v11);
      v11, v14, v15, v16, v17, v18, v19, v20;
      return v13 & 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So16UIViewControllerCSgIegg_Iegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1BD315110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD315158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD3151CC()
{
  result = qword_1EBD41C78;
  if (!qword_1EBD41C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41C78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So14UIActivityTypeaSgSbSayypGSgs5Error_pSgIeggygg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD315238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD315280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD3152E0()
{
  v1 = v0[3];
  v2 = sub_1BE052724();
  if (v1)
  {
    sub_1BD31566C();
    v3 = sub_1BE052724();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69CD9F8]) initWithActivityItems:v2 applicationActivities:v3];

  v5 = v0[4];
  if (v5)
  {
    type metadata accessor for ActivityType(0);
    v5 = sub_1BE052724();
  }

  [v4 setExcludedActivityTypes_];

  if (v0[5])
  {
    v6 = v0[6];
    v17[4] = v0[5];
    v18 = v6;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1BD315448;
    v17[3] = &block_descriptor_56;
    v7 = _Block_copy(v17);
    v8 = v18;
    sub_1BE048964();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v7 = 0;
  }

  [v4 setCompletionWithItemsHandler_];
  _Block_release(v7);
  return v4;
}

void sub_1BD315448(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = sub_1BE052744();
  }

  else
  {
    v10 = 0;
  }

  sub_1BE048964();
  v11 = a2;
  v12 = a5;
  v9(a2, a3, v10, a5);
  v8, v13, v14, v15, v16, v17, v18, v19;

  v10, v20, v21, v22, v23, v24, v25, v26;
}

uint64_t sub_1BD315528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD315618();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD31558C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD315618();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD3155F0(uint64_t a1)
{
  sub_1BD315618();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD315618()
{
  result = qword_1EBD41C80;
  if (!qword_1EBD41C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41C80);
  }

  return result;
}

unint64_t sub_1BD31566C()
{
  result = qword_1EBD41C88;
  if (!qword_1EBD41C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD41C88);
  }

  return result;
}

uint64_t sub_1BD3156B8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  sub_1BD0D4534((v8 + 5));
  v8[8], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocClassInstance();
}

id sub_1BD31572C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04C384();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04C3A4();
  if (v8[2])
  {
    v16 = v8;
    (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
    v16, v17, v18, v19, v20, v21, v22, v23;
    v24 = sub_1BE04C2F4();
    (*(v5 + 8))(v7, v4);
    if (v24)
    {
      v25 = [v24 carKeyTerminalPairingCredential];

      if (v25)
      {
        if (!a1)
        {
          v31 = *(v2 + 16);
          v32 = *(v2 + 32);
          v33 = type metadata accessor for ProvisioningCarHeroFlowItem();
          v34 = objc_allocWithZone(v33);
          *&v34[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
          *&v34[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v35 = &v34[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_identifier];
          *v35 = 0x466F726548726143;
          v35[1] = 0xEF6D657449776F6CLL;
          *&v34[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_context] = v31;
          *&v34[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_credential] = v25;
          v34[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_allowPartnerAppFlow] = v32;
          v52.receiver = v34;
          v52.super_class = v33;
          sub_1BE048964();
          return objc_msgSendSuper2(&v52, sel_init);
        }

        type metadata accessor for ProvisioningCarHeroFlowItem();
        if (swift_dynamicCastClass())
        {
          v26 = *(v2 + 16);
          v27 = type metadata accessor for ProvisioningCarPairingPinCodeFlowItem();
          v28 = objc_allocWithZone(v27);
          *&v28[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v29 = &v28[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_identifier];
          *v29 = 0xD000000000000019;
          *(v29 + 1) = 0x80000001BE123840;
          *&v28[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_context] = v26;
          *&v28[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_credential] = v25;
          v51.receiver = v28;
          v51.super_class = v27;
          sub_1BE048964();
          return objc_msgSendSuper2(&v51, sel_init);
        }

        type metadata accessor for ProvisioningCarPairingPinCodeFlowItem();
        if (swift_dynamicCastClass())
        {
          objc_allocWithZone(type metadata accessor for ProvisioningCarPerformPairingFlowItem());
          v36 = sub_1BE048964();
          return sub_1BD59A460(v36, v25);
        }

        type metadata accessor for ProvisioningCarPerformPairingFlowItem();
        v37 = swift_dynamicCastClass();
        if (v37)
        {
          v38 = *(v37 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_provisionedPasses);
          if (v38)
          {
            v39 = *(v2 + 16);
            v40 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
            swift_unknownObjectRetain();
            v41 = v38;
            v42 = sub_1BE048964();
            v43 = sub_1BD989980(v42, v41);
            swift_unknownObjectRelease();

            v39, v44, v45, v46, v47, v48, v49, v50;
            return v43;
          }
        }
      }
    }
  }

  else
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  return 0;
}

uint64_t sub_1BD315AEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD315B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI33StyledMicaLayerColorConfigurationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1BD315C00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 112))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1BD315C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for PassEntitySnippetView(uint64_t a1)
{
  result = qword_1EBD41C90;
  if (!qword_1EBD41C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD315D58(uint64_t a1)
{
  sub_1BD315DF4();
  if (v1 <= 0x3F)
  {
    sub_1BE04A884();
    if (v2 <= 0x3F)
    {
      sub_1BD315E44(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD315DF4()
{
  if (!qword_1EBD41CA0)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD41CA0);
    }
  }
}

void sub_1BD315E44(uint64_t a1)
{
  if (!qword_1EBD41CA8)
  {
    sub_1BE04A884();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD41CA8);
    }
  }
}

double sub_1BD315EB8@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v13 = 1;
  sub_1BD316054(a1, __src);
  memcpy(__dst, __src, 0x189uLL);
  memcpy(v16, __src, 0x189uLL);
  sub_1BD0DE19C(__dst, v10, &qword_1EBD41CB8, &qword_1BE0CC0E0);
  sub_1BD0DE53C(v16, &qword_1EBD41CB8, &qword_1BE0CC0E0);
  memcpy(&v12[7], __dst, 0x189uLL);
  v5 = v13;
  LOBYTE(a1) = sub_1BE0501D4();
  v10[0] = 1;
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v14[55] = __src[3];
  *&v14[71] = __src[4];
  *&v14[87] = __src[5];
  *&v14[103] = __src[6];
  *&v14[7] = __src[0];
  *&v14[23] = __src[1];
  *&v14[39] = __src[2];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v12, 0x190uLL);
  *(a2 + 424) = a1;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 1;
  v6 = *&v14[80];
  *(a2 + 529) = *&v14[64];
  *(a2 + 545) = v6;
  *(a2 + 561) = *&v14[96];
  *(a2 + 576) = *&v14[111];
  v7 = *&v14[16];
  *(a2 + 465) = *v14;
  *(a2 + 481) = v7;
  result = *&v14[32];
  v9 = *&v14[48];
  *(a2 + 497) = *&v14[32];
  *(a2 + 513) = v9;
  return result;
}

uint64_t sub_1BD316054@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v78 = a2;
  v3 = sub_1BE051584();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  if (v7 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v75 = v4;
  v77 = a1;
  v8 = *a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1BD041A38(v8, v7);
  sub_1BD041A38(v8, v7);
  v10 = sub_1BE04AAB4();
  v11 = [v9 initWithData_];

  v76 = v8;
  sub_1BD030220(v8, v7, v12, v13, v14, v15, v16, v17);
  if (!v11)
  {
    sub_1BD030220(v76, v7, v18, v19, v20, v21, v22, v23);
    a1 = v77;
LABEL_5:
    sub_1BD316EB8(&v139);
    goto LABEL_6;
  }

  v24 = v11;
  v25 = sub_1BE051544();
  v26 = v75;
  (*(v75 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v74 = sub_1BE0515E4();
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v26 + 8))(v6, v3);
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v79[54] = v135;
  *&v79[70] = v136;
  *&v79[86] = v137;
  *&v79[102] = v138;
  *&v79[6] = v132;
  *&v79[22] = v133;
  LOBYTE(v104[0]) = 1;
  LOBYTE(v82) = 1;
  *&v79[38] = v134;
  v34 = sub_1BE0513F4();
  v35 = sub_1BE051454();
  v34, v36, v37, v38, v39, v40, v41, v42;
  v43 = sub_1BE0513F4();
  v44 = sub_1BE051454();
  sub_1BD030220(v76, v7, v45, v46, v47, v48, v49, v50);
  v43, v51, v52, v53, v54, v55, v56, v57;

  *(&v127[4] + 2) = *&v79[64];
  *(&v127[5] + 2) = *&v79[80];
  *(&v127[6] + 2) = *&v79[96];
  *(v127 + 2) = *v79;
  *(&v127[1] + 2) = *&v79[16];
  *(&v127[2] + 2) = *&v79[32];
  v125 = v74;
  LOWORD(v126) = 1;
  *(&v126 + 1) = 0;
  LOWORD(v127[0]) = 1;
  *(&v127[3] + 2) = *&v79[48];
  *&v127[7] = *&v79[110];
  *(&v127[7] + 1) = v35;
  v128 = xmmword_1BE0CACB0;
  *&v129 = 0x3FF0000000000000;
  *(&v129 + 1) = v44;
  v130 = xmmword_1BE0CC060;
  v131 = 0x4000000000000000;
  PKEdgeInsetsMake();
  v149 = v128;
  v150 = v129;
  v151 = v130;
  v152 = v131;
  v145 = v127[4];
  v146 = v127[5];
  v147 = v127[6];
  v148 = v127[7];
  v141 = v127[0];
  v142 = v127[1];
  v143 = v127[2];
  v144 = v127[3];
  v139 = v125;
  v140 = v126;
  a1 = v77;
LABEL_6:
  v58 = sub_1BE04F7C4();
  LOBYTE(v82) = 0;
  sub_1BD31671C(a1, &v125);
  v99 = v127[0];
  v100 = v127[1];
  v101 = v127[2];
  v102 = v127[3];
  v97 = v125;
  v98 = v126;
  v103[2] = v127[0];
  v103[3] = v127[1];
  v103[4] = v127[2];
  v103[5] = v127[3];
  v103[0] = v125;
  v103[1] = v126;
  sub_1BD0DE19C(&v97, v104, &qword_1EBD41CC0, &qword_1BE0CC0E8);
  sub_1BD0DE53C(v103, &qword_1EBD41CC0, &qword_1BE0CC0E8);
  *(&v96[2] + 7) = v99;
  *(&v96[3] + 7) = v100;
  *(&v96[4] + 7) = v101;
  *(&v96[5] + 7) = v102;
  *(v96 + 7) = v97;
  *(&v96[1] + 7) = v98;
  v59 = v82;
  LODWORD(v77) = v82;
  v60 = sub_1BE050204();
  sub_1BE04E1F4();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v92 = v149;
  v93 = v150;
  v94 = v151;
  v88 = v145;
  v89 = v146;
  v90 = v147;
  v91 = v148;
  v84 = v141;
  v85 = v142;
  v86 = v143;
  v87 = v144;
  v82 = v139;
  v83 = v140;
  v104[10] = v149;
  v104[11] = v150;
  v104[12] = v151;
  v104[6] = v145;
  v104[7] = v146;
  v104[8] = v147;
  v104[9] = v148;
  v104[2] = v141;
  v104[3] = v142;
  v104[4] = v143;
  v104[5] = v144;
  v104[0] = v139;
  v104[1] = v140;
  v81[11] = v150;
  v81[12] = v151;
  v81[7] = v146;
  v81[8] = v147;
  v81[9] = v148;
  v81[10] = v149;
  v81[3] = v142;
  v81[4] = v143;
  v81[5] = v144;
  v81[6] = v145;
  v81[0] = v139;
  v81[1] = v140;
  v81[2] = v141;
  *(&v106 + 1) = 0x4010000000000000;
  LOBYTE(v107[0]) = v59;
  *&v107[6] = *(&v96[5] + 15);
  *(&v107[5] + 1) = v96[5];
  *(&v107[3] + 1) = v96[3];
  *(&v107[4] + 1) = v96[4];
  *(v107 + 1) = v96[0];
  *(&v107[1] + 1) = v96[1];
  *(&v107[2] + 1) = v96[2];
  BYTE8(v107[6]) = v60;
  *&v108 = v61;
  *(&v108 + 1) = v63;
  *&v109 = v65;
  *(&v109 + 1) = v67;
  *(&v81[18] + 8) = v107[4];
  *(&v81[19] + 8) = v107[5];
  *(&v81[16] + 8) = v107[2];
  *(&v81[17] + 8) = v107[3];
  *(&v81[20] + 8) = v107[6];
  *(&v81[21] + 8) = v108;
  v69 = v58;
  *&v106 = v58;
  *(&v81[22] + 8) = v109;
  *(&v81[15] + 8) = v107[1];
  *(&v81[14] + 8) = v107[0];
  v95 = v152;
  v105 = v152;
  *&v81[13] = v152;
  v110 = 0;
  BYTE8(v81[23]) = 0;
  *(&v81[13] + 8) = v106;
  v80 = 1;
  v70 = v78;
  memcpy(v78, v81, 0x180uLL);
  v71 = v96[2];
  v116 = v96[3];
  v117 = v96[4];
  *v118 = v96[5];
  v113 = v96[0];
  v114 = v96[1];
  v70[48] = 0;
  *(v70 + 392) = 1;
  v111[0] = v69;
  v111[1] = 0x4010000000000000;
  v112 = v77;
  *&v118[15] = *(&v96[5] + 15);
  v115 = v71;
  v119 = v60;
  v120 = v62;
  v121 = v64;
  v122 = v66;
  v123 = v68;
  v124 = 0;
  sub_1BD0DE19C(v104, &v125, &qword_1EBD41CC8, &qword_1BE0CC0F0);
  sub_1BD0DE19C(&v106, &v125, &qword_1EBD41CD0, &qword_1BE0CC0F8);
  sub_1BD0DE53C(v111, &qword_1EBD41CD0, &qword_1BE0CC0F8);
  v128 = v92;
  v129 = v93;
  v130 = v94;
  v131 = v95;
  v127[4] = v88;
  v127[5] = v89;
  v127[6] = v90;
  v127[7] = v91;
  v127[0] = v84;
  v127[1] = v85;
  v127[2] = v86;
  v127[3] = v87;
  v125 = v82;
  v126 = v83;
  return sub_1BD0DE53C(&v125, &qword_1EBD41CC8, &qword_1BE0CC0F0);
}

void sub_1BD31671C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v210 = a1;
  v204 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v211 = &v196 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v205 = &v196 - v6;
  v7 = sub_1BE04A884();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v208 = &v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v213 = &v196 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v196 - v13;
  v15 = type metadata accessor for PassEntitySnippetView(0);
  v16 = a1 + *(v15 + 20);
  v201 = v8[2];
  v201(v14, v16, v7);
  v17 = sub_1BE0506B4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1BE050464();
  v209 = sub_1BE0505F4();
  v212 = v25;
  v207 = v26;
  v214 = v27;
  v28 = v24;
  v29 = v8;
  v28, v25, v26, v27, v30, v31, v32, v33;
  sub_1BD0DDF10(v17, v19, (v21 & 1), v34, v35, v36, v37, v38);
  v39 = v23;
  v40 = v205;
  v39, v41, v42, v43, v44, v45, v46, v47;
  v200 = v15;
  sub_1BD0DE19C(v210 + *(v15 + 24), v40, &unk_1EBD528E0, &qword_1BE0B79D0);
  v48 = v8[6];
  v49 = v7;
  v50 = v48(v40, 1, v7);
  v206 = v8;
  v199 = v14;
  v198 = v8 + 2;
  if (v50 == 1)
  {
    sub_1BD0DE53C(v40, &unk_1EBD528E0, &qword_1BE0B79D0);
    v205 = 0;
    v213 = 0;
    v202 = 0;
    v203 = 0;
  }

  else
  {
    v51 = v8[4];
    v52 = v213;
    v51(v213, v40, v7);
    v201(v14, v52, v7);
    v53 = sub_1BE0506B4();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = sub_1BE0502A4();
    v61 = sub_1BE0505F4();
    v62 = v7;
    v197 = v48;
    v64 = v63;
    LODWORD(v205) = v65;
    v67 = v66;
    v60, v63, v65, v66, v68, v69, v70, v71;
    v72 = v53;
    v29 = v206;
    sub_1BD0DDF10(v72, v55, (v57 & 1), v73, v74, v75, v76, v77);
    v59, v78, v79, v80, v81, v82, v83, v84;
    (v29[1])(v213, v62);
    v85 = v205 & 1;
    v205 = v61;
    v213 = v64;
    v86 = v64;
    v48 = v197;
    v49 = v62;
    v202 = v85;
    sub_1BD0D7F18(v61, v86, v85);
    v203 = v67;
    sub_1BE048C84();
  }

  v87 = v211;
  sub_1BD0DE19C(v210 + *(v200 + 28), v211, &unk_1EBD528E0, &qword_1BE0B79D0);
  if (v48(v87, 1, v49) == 1)
  {
    sub_1BD0DE53C(v211, &unk_1EBD528E0, &qword_1BE0B79D0);
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
  }

  else
  {
    v92 = v208;
    v93 = v49;
    (v29[4])(v208, v211, v49);
    v201(v199, v92, v49);
    v94 = sub_1BE0506B4();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v101 = sub_1BE0502A4();
    v102 = sub_1BE0505F4();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v101, v103, v105, v107, v109, v110, v111, v112;
    sub_1BD0DDF10(v94, v96, (v98 & 1), v113, v114, v115, v116, v117);
    v100, v118, v119, v120, v121, v122, v123, v124;
    v215[0] = sub_1BE04FC94();
    v125 = v108;
    v126 = sub_1BE050574();
    v128 = v127;
    v130 = v129;
    v132 = v131;
    sub_1BD0DDF10(v102, v104, (v106 & 1), v131, v133, v134, v135, v136);
    v125, v137, v138, v139, v140, v141, v142, v143;
    (v206[1])(v208, v93);
    v88 = v126;
    v89 = v128;
    v90 = v130 & 1;
    sub_1BD0D7F18(v126, v128, v130 & 1);
    v91 = v132;
    sub_1BE048C84();
  }

  v144 = (v207 & 1);
  v217 = v207 & 1;
  v216 = v207 & 1;
  v145 = v209;
  v146 = v212;
  sub_1BD0D7F18(v209, v212, v207 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v145, v146, v144);
  sub_1BE048C84();
  v147 = v205;
  v148 = v213;
  v150 = v202;
  v149 = v203;
  sub_1BD1969AC(v205, v213, v202, v203);
  sub_1BD1969AC(v88, v89, v90, v91);
  sub_1BD1969F0(v147, v148, v150, v149, v151, v152, v153, v154);
  sub_1BD1969F0(v88, v89, v90, v91, v155, v156, v157, v158);
  v159 = v212;
  sub_1BD0DDF10(v145, v212, v144, v160, v161, v162, v163, v164);
  v165 = v214;
  v214, v166, v167, v168, v169, v170, v171, v172;
  v173 = v216;
  v174 = v204;
  *v204 = v145;
  v174[1] = v159;
  *(v174 + 16) = v173;
  v174[3] = v165;
  v174[4] = v147;
  v175 = v213;
  v174[5] = v213;
  v174[6] = v150;
  v174[7] = v149;
  v174[8] = v88;
  v174[9] = v89;
  v174[10] = v90;
  v174[11] = v91;
  sub_1BD1969F0(v88, v89, v90, v91, v176, v177, v178, v179);
  sub_1BD1969F0(v147, v175, v150, v149, v180, v181, v182, v183);
  sub_1BD0DDF10(v145, v159, v217, v184, v185, v186, v187, v188);
  v214, v189, v190, v191, v192, v193, v194, v195;
}

void *sub_1BD316DE0@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7B4();
  v10 = 1;
  sub_1BD315EB8(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_1BD0DE19C(__dst, v7, &qword_1EBD41CB0, &qword_1BE0CC0D8);
  sub_1BD0DE53C(v12, &qword_1EBD41CB0, &qword_1BE0CC0D8);
  memcpy(&v9[7], __dst, 0x248uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x24FuLL);
}

double sub_1BD316EB8(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1BD316EE0()
{
  result = qword_1EBD41CD8;
  if (!qword_1EBD41CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41CE0, &unk_1BE0CC100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41CD8);
  }

  return result;
}

uint64_t (*sub_1BD316F5C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD316FFC;
}

void sub_1BD317048(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BD3170A4(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_viewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD31713C;
}

void sub_1BD31713C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1BD31721C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BD317284(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD31FE58;
}

void sub_1BD317324(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id CarKeyProvisioningUICoordinator.__allocating_init(context:configuration:viewController:renderer:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
  v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = a1;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v12 + 1) = a5;
  swift_unknownObjectWeakAssign();
  v29.receiver = v11;
  v29.super_class = v6;
  sub_1BE048964();
  sub_1BE048964();
  v13 = objc_msgSendSuper2(&v29, sel_init);
  a1, v14, v15, v16, v17, v18, v19, v20;
  a2, v21, v22, v23, v24, v25, v26, v27;

  swift_unknownObjectRelease();
  return v13;
}

id CarKeyProvisioningUICoordinator.init(context:configuration:viewController:renderer:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = &v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = a1;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v10 + 1) = a5;
  swift_unknownObjectWeakAssign();
  v27.receiver = v5;
  v27.super_class = type metadata accessor for CarKeyProvisioningUICoordinator();
  sub_1BE048964();
  sub_1BE048964();
  v11 = objc_msgSendSuper2(&v27, sel_init);
  a1, v12, v13, v14, v15, v16, v17, v18;
  a2, v19, v20, v21, v22, v23, v24, v25;

  swift_unknownObjectRelease();
  return v11;
}

id CarKeyProvisioningUICoordinator.__deallocating_deinit()
{
  sub_1BD319750();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarKeyProvisioningUICoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1BD317860(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration];
    *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v6;
    sub_1BE048964();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  if (*&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] || *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] || *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] || *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
  {
    v60 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex;
    sub_1BE04D0D4();
    v18 = v2;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();

    if (os_log_type_enabled(v19, v20))
    {
      v58 = v5;
      v59 = v4;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v61 = v22;
      *v21 = 136315138;
      v23 = *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
      if (v23)
      {
        sub_1BE048964();
        v24 = sub_1BE04C0A4();
        v26 = v25;
        v23, v25, v27, v28, v29, v30, v31, v32;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v33 = sub_1BD123690(v24, v26, &v61);
      v26, v34, v35, v36, v37, v38, v39, v40;
      *(v21 + 4) = v33;
      _os_log_impl(&dword_1BD026000, v19, v20, "[%s] Resetting provisioning coordinator", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22, v41, v42, v43, v44, v45, v46, v47);
      MEMORY[0x1BFB45F20](v22, -1, -1);
      MEMORY[0x1BFB45F20](v21, -1, -1);

      (*(v58 + 8))(v9, v59);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    *&v2[v60] = 0;
    v48 = *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses];
    *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;

    v49 = *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
    *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;

    v50 = *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
    v50, v51, v52, v53, v54, v55, v56, v57;
  }

  return result;
}

void sub_1BD317B18(void *a1)
{
  v2 = v1;
  v139 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v139);
  v138 = v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04C384();
  v136 = *(v5 - 8);
  v137 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v135 = v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04D214();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel];
  *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = a1;
  v12 = a1;

  v13 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer;
  if (!*&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BE0B98D0;
    v15 = v8;
    v16 = *MEMORY[0x1E69BB6E0];
    v17 = *MEMORY[0x1E69BB6E8];
    *(v14 + 32) = *MEMORY[0x1E69BB6E0];
    *(v14 + 40) = v17;
    v18 = v13;
    v19 = *MEMORY[0x1E69BB728];
    *(v14 + 48) = *MEMORY[0x1E69BB728];
    v134 = objc_opt_self();
    type metadata accessor for PKAnalyticsSubject(0);
    v20 = v16;
    v21 = v17;
    v22 = v19;
    v13 = v18;
    v23 = sub_1BE052724();
    v14, v24, v25, v26, v27, v28, v29, v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v32 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v33;
    v34 = v32;
    v35 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    v8 = v15;
    sub_1BD31E8A4(inited + 32);
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD31FCB8(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
    v36 = sub_1BE052224();
    v35, v37, v38, v39, v40, v41, v42, v43;
    [v134 subjects:v23 sendEvent:v36];

    sub_1BD319034();
    v44 = *&v2[v18];
    *&v2[v18] = v45;
    v44, v46, v47, v48, v49, v50, v51, v52;
  }

  v53 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
  *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;

  v54 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = [Strong view];

    if (!v57)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v58 = [v57 window];

    if (v58)
    {
      v59 = [v58 windowScene];

      if (v59)
      {
        v60 = [v59 _sceneIdentifier];

        sub_1BE052434();
      }
    }
  }

  sub_1BE04BB44();
  sub_1BE04D0D4();
  v61 = v2;
  v62 = sub_1BE04D204();
  v63 = sub_1BE052C54();

  if (!os_log_type_enabled(v62, v63))
  {

    (*(v8 + 8))(v10, v7);
    v76 = *&v2[v13];
    if (!v76)
    {
      return;
    }

    goto LABEL_12;
  }

  v131[1] = v54;
  v133 = v8;
  v134 = v7;
  v64 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  v140 = v65;
  *v64 = 136315650;
  v132 = v13;
  v66 = *&v2[v13];
  if (v66)
  {
    sub_1BE048964();
    v67 = sub_1BE04C0A4();
    v69 = v68;
    v66, v68, v70, v71, v72, v73, v74, v75;
  }

  else
  {
    v67 = 0;
    v69 = 0xE000000000000000;
  }

  v84 = sub_1BD123690(v67, v69, &v140);
  v69, v85, v86, v87, v88, v89, v90, v91;
  *(v64 + 4) = v84;
  *(v64 + 12) = 2080;
  v92 = *&v61[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration];
  v93 = *&v61[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v94 = sub_1BE04C3A4();
  v92, v95, v96, v97, v98, v99, v100, v101;
  if ((v93 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v93 >= v94[2])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  (*(v136 + 16))(v135, v94 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v93, v137);
  v94, v102, v103, v104, v105, v106, v107, v108;
  v109 = sub_1BE0524A4();
  v111 = v110;
  v112 = sub_1BD123690(v109, v110, &v140);
  v111, v113, v114, v115, v116, v117, v118, v119;
  *(v64 + 14) = v112;
  *(v64 + 22) = 2080;
  sub_1BE04BB94();
  v120 = sub_1BE0524A4();
  v122 = v121;
  v123 = sub_1BD123690(v120, v121, &v140);
  v122, v124, v125, v126, v127, v128, v129, v130;
  *(v64 + 24) = v123;
  _os_log_impl(&dword_1BD026000, v62, v63, "[%s] Continuing provisioning credential: %s to %s", v64, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1BFB45F20](v65, -1, -1);
  MEMORY[0x1BFB45F20](v64, -1, -1);

  (*(v133 + 8))(v10, v134);
  v76 = *&v2[v132];
  if (v76)
  {
LABEL_12:
    sub_1BE048964();
    sub_1BE04C094();
    v76, v77, v78, v79, v80, v81, v82, v83;
  }
}

void sub_1BD31821C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v106 = a2;
  v105 = a1;
  v8 = sub_1BE04D214();
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04C384();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = 0;
  v108 = 0xE000000000000000;
  v15 = *&v4[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration];
  v16 = *&v4[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v17 = sub_1BE04C3A4();
  v15, v18, v19, v20, v21, v22, v23, v24;
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 >= v17[2])
  {
LABEL_11:
    __break(1u);
    return;
  }

  v101 = a3;
  v102 = a4;
  (*(v12 + 16))(v14, v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16, v11);
  v17, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE053974();
  (*(v12 + 8))(v14, v11);
  v32 = v107;
  v33 = v108;
  sub_1BE04D0D4();
  v34 = v5;
  sub_1BE048C84();
  v35 = sub_1BE04D204();
  v36 = sub_1BE052C54();
  v33, v37, v38, v39, v40, v41, v42, v43;

  if (os_log_type_enabled(v35, v36))
  {
    v100 = v32;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v107 = v45;
    *v44 = 136315394;
    v46 = *&v34[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    if (v46)
    {
      sub_1BE048964();
      v47 = sub_1BE04C0A4();
      v49 = v48;
      v46, v48, v50, v51, v52, v53, v54, v55;
    }

    else
    {
      v47 = 0;
      v49 = 0xE000000000000000;
    }

    v63 = sub_1BD123690(v47, v49, &v107);
    v49, v64, v65, v66, v67, v68, v69, v70;
    *(v44 + 4) = v63;
    *(v44 + 12) = 2080;
    v71 = sub_1BD123690(v100, v33, &v107);
    v33, v72, v73, v74, v75, v76, v77, v78;
    *(v44 + 14) = v71;
    _os_log_impl(&dword_1BD026000, v35, v36, "[%s] Preflighting provisioning credential: %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v45, -1, -1);
    MEMORY[0x1BFB45F20](v44, -1, -1);

    (*(v103 + 8))(v10, v104);
  }

  else
  {

    v33, v56, v57, v58, v59, v60, v61, v62;
    (*(v103 + 8))(v10, v104);
  }

  v79 = *&v34[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel];
  v80 = v105;
  *&v34[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = v105;
  v81 = v80;

  sub_1BD319034();
  v83 = v82;
  v84 = *&v34[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
  *&v34[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = v82;
  sub_1BE048964();
  v84, v85, v86, v87, v88, v89, v90, v91;
  LOBYTE(v107) = v106;
  sub_1BE04C0D4();
  v83, v92, v93, v94, v95, v96, v97, v98;
}

double sub_1BD31862C()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v5 = v0;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();

  if (os_log_type_enabled(v6, v7))
  {
    v64 = v1;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66 = v9;
    *v8 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    if (v10)
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
      v10, v12, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v20 = sub_1BD123690(v11, v13, &v66);
    v13, v21, v22, v23, v24, v25, v26, v27;
    *(v8 + 4) = v20;
    _os_log_impl(&dword_1BD026000, v6, v7, "[%s] Canceling flow", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9, v28, v29, v30, v31, v32, v33, v34);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v2 + 8))(v4, v64);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v35 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer;
  v36 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
  if (v36)
  {
    sub_1BE048964();
    sub_1BE04C024();
    v37 = *&v5[v35];
    *&v5[v35] = 0;
    v37, v38, v39, v40, v41, v42, v43, v44;
    v45 = &v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v45 + 1);
      ObjectType = swift_getObjectType();
      v65 = 4;
      (*(*(v53 + 8) + 8))(&v65, 0, ObjectType);
      v36, v55, v56, v57, v58, v59, v60, v61;
      swift_unknownObjectRelease();
    }

    else
    {
      v36, v46, v47, v48, v49, v50, v51, v52;
    }
  }

  else
  {
    sub_1BD3188FC();
  }

  return result;
}

void sub_1BD3188FC()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v5 = v0;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();

  if (os_log_type_enabled(v6, v7))
  {
    v44 = v1;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    if (v10)
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
      v10, v12, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v20 = sub_1BD123690(v11, v13, &v45);
    v13, v21, v22, v23, v24, v25, v26, v27;
    *(v8 + 4) = v20;
    _os_log_impl(&dword_1BD026000, v6, v7, "[%s] Terminating flow", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9, v28, v29, v30, v31, v32, v33, v34);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v2 + 8))(v4, v44);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  sub_1BD319750();
  v35 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
  if (v35)
  {
    v36 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
  }

  else
  {
    v36 = [objc_opt_self() errorWithCommonType:1 severity:5];
  }

  v37 = &v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v37 + 1);
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    v41 = v35;
    v42 = v36;
    v40(v5, v36, 1, ObjectType, v38);
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = v35;
  }
}

uint64_t sub_1BD318BD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BE04BC84();

  return v3;
}

void sub_1BD318C1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73[1] = a2;
  v4 = sub_1BE04D214();
  v74 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04C384();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration];
  v12 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v13 = sub_1BE04C3A4();
  v11, v14, v15, v16, v17, v18, v19, v20;
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v12 >= v13[2])
  {
LABEL_18:
    __break(1u);
    return;
  }

  (*(v8 + 16))(v10, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v7);
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = sub_1BE04C2D4();
  (*(v8 + 8))(v10, v7);
  if (v28)
  {
    v29 = [v28 share];

    if (v29)
    {
      v30 = [v29 activationOptions];
      if (!v30)
      {
        goto LABEL_10;
      }

      v31 = v30;
      v32 = PKPassShareActivationOptionActivationCodeTypes();
      if (!v32)
      {
        sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
        v33 = sub_1BE052744();
        v32 = sub_1BE052724();
        v33, v34, v35, v36, v37, v38, v39, v40;
      }

      v41 = [v31 optionOfTypes_];

      if (v41)
      {
        v42 = sub_1BE052404();
        [v41 setValue_];
      }

      else
      {
LABEL_10:
        sub_1BE04D0D4();
        v43 = v3;
        v44 = sub_1BE04D204();
        v45 = sub_1BE052C54();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v75 = v47;
          *v46 = 136315138;
          v48 = *&v43[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
          if (v48)
          {
            sub_1BE048964();
            v49 = sub_1BE04C0A4();
            v51 = v50;
            v48, v50, v52, v53, v54, v55, v56, v57;
          }

          else
          {
            v49 = 0;
            v51 = 0xE000000000000000;
          }

          v58 = sub_1BD123690(v49, v51, &v75);
          v51, v59, v60, v61, v62, v63, v64, v65;
          *(v46 + 4) = v58;
          _os_log_impl(&dword_1BD026000, v44, v45, "[%s] Failed to set activation code because no pin code activation option found", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47, v66, v67, v68, v69, v70, v71, v72);
          MEMORY[0x1BFB45F20](v47, -1, -1);
          MEMORY[0x1BFB45F20](v46, -1, -1);
        }

        (*(v74 + 8))(v6, v4);
      }
    }
  }
}

void sub_1BD319034()
{
  v1 = sub_1BE04C384();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel);
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
    v5 = 0;
  }

  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration);
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex);
  v9 = v5;
  sub_1BE048964();
  v10 = sub_1BE04C3A4();
  v7, v11, v12, v13, v14, v15, v16, v17;
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < v10[2])
  {
    (*(v2 + 16))(v4, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v1);
    v10, v18, v19, v20, v21, v22, v23, v24;
    sub_1BD31FCB8(&qword_1EBD41D98, v25, type metadata accessor for CarKeyProvisioningUICoordinator, &protocol conformance descriptor for CarKeyProvisioningUICoordinator);
    sub_1BE04BF24();
    (*(v2 + 8))(v4, v1);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE04C054();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE04C0B4();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BE04C044();

    v26, v27, v28, v29, v30, v31, v32, v33;
    return;
  }

  __break(1u);
}

void sub_1BD3192FC(unsigned __int8 *a1, int a2, uint64_t a3)
{
  LODWORD(v3) = a2;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v69 = v9;
    sub_1BE04D0D4();
    v12 = v11;
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();

    if (os_log_type_enabled(v13, v14))
    {
      v68 = v3;
      v3 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v71[0] = v67;
      *v3 = 136315650;
      v15 = *&v12[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
      if (v15)
      {
        sub_1BE048964();
        v16 = sub_1BE04C0A4();
        v18 = v17;
        v15, v17, v19, v20, v21, v22, v23, v24;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      v25 = sub_1BD123690(v16, v18, v71);
      v18, v26, v27, v28, v29, v30, v31, v32;
      *(v3 + 4) = v25;
      *(v3 + 12) = 2080;
      v33 = MEMORY[0x1BFB38E20](v69);
      v35 = v34;
      v36 = sub_1BD123690(v33, v34, v71);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v3 + 14) = v36;
      *(v3 + 22) = 2080;
      v44 = v68;
      if (v68)
      {
        v45 = 7562585;
      }

      else
      {
        v45 = 28494;
      }

      if (v68)
      {
        v46 = 0xE300000000000000;
      }

      else
      {
        v46 = 0xE200000000000000;
      }

      v47 = sub_1BD123690(v45, v46, v71);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v3 + 24) = v47;
      _os_log_impl(&dword_1BD026000, v13, v14, "[%s] Transitioning to Step %s isRunning: %s", v3, 0x20u);
      v55 = v67;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v55, -1, -1);
      v56 = v3;
      LOBYTE(v3) = v44;
      MEMORY[0x1BFB45F20](v56, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v57 = &v12[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v58 = *(v57 + 1);
      ObjectType = swift_getObjectType();
      sub_1BD88BA00(v69, &v70);
      (*(*(v58 + 8) + 8))(&v70, v3 & 1, ObjectType);
      swift_unknownObjectRelease();
    }

    v60 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion;
    v61 = *&v12[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion];
    if (v3)
    {
      if (v61)
      {
LABEL_20:

        return;
      }

      v62 = objc_allocWithZone(PKIdleTimerAssertion);
      v63 = sub_1BE052404();
      v64 = [v62 initWithReason_];
    }

    else
    {
      [v61 invalidate];
      v64 = 0;
    }

    v65 = *&v12[v60];
    *&v12[v60] = v64;

    v12 = v65;
    goto LABEL_20;
  }
}

void sub_1BD3196A0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BD31A1D4(a2);
  }
}

void sub_1BD3196FC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD31A928();
  }
}

void sub_1BD319750()
{
  v1 = v0;
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v108 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v108 - v9;
  v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
  v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration);
  v12 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex);
  sub_1BE048964();
  v13 = sub_1BE04C3A4();
  v11, v14, v15, v16, v17, v18, v19, v20;
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 >= v13[2])
  {
LABEL_8:
    __break(1u);
    return;
  }

  v112 = v10 != 0;
  v111 = v4;
  v21 = *(v3 + 80);
  v22 = v13 + ((v21 + 32) & ~v21) + *(v3 + 72) * v12;
  v23 = v2;
  v113 = v10;
  v24 = *(v3 + 16);
  v25 = v115;
  v24(v115, v22, v2);
  v13, v26, v27, v28, v29, v30, v31, v32;
  v33 = *(v1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning);
  v34 = v25;
  v35 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer;
  v109 = *(v1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer);
  v110 = v109 != 0;
  v24(v7, v34, v2);
  v114 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24(v114, v7, v2);
  v36 = (v21 + 16) & ~v21;
  v37 = v36 + v111;
  v38 = v3;
  v39 = swift_allocObject();
  v40 = &v39[v36];
  v41 = v23;
  v42 = v7;
  v43 = v33;
  (*(v38 + 32))(v40, v42, v23);
  v44 = &v39[v37];
  *v44 = v112;
  v44[1] = v33;
  v44[2] = v110;
  v45 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion;
  [*(v1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion) invalidate];
  v46 = *(v1 + v45);
  *(v1 + v45) = 0;

  v47 = *(v1 + v35);
  if (v47)
  {
    LODWORD(v113) = v113 != 0;
    v48 = *(v38 + 8);
    sub_1BE048964();
    v48(v114, v23);
    v49 = *(v1 + v35);
    *(v1 + v35) = 0;
    v49, v50, v51, v52, v53, v54, v55, v56;
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 1;
    v58 = [objc_opt_self() sharedApplication];
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    *(v59 + 24) = v47;
    aBlock[4] = sub_1BD31FDA4;
    v117 = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_82;
    v60 = _Block_copy(aBlock);
    v61 = v117;
    sub_1BE048964();
    sub_1BE048964();
    v61, v62, v63, v64, v65, v66, v67, v68;
    v69 = [v58 beginBackgroundTaskWithExpirationHandler_];
    _Block_release(v60);

    swift_beginAccess();
    *(v57 + 16) = v69;
    *(v57 + 24) = 0;
    v70 = swift_allocObject();
    v70[2] = sub_1BD31FD18;
    v70[3] = v39;
    v70[4] = v57;
    v70[5] = v47;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04C024();
    v47, v71, v72, v73, v74, v75, v76, v77;
    v39, v78, v79, v80, v81, v82, v83, v84;
    v70, v85, v86, v87, v88, v89, v90, v91;
    v48(v115, v41);
    v57, v92, v93, v94, v95, v96, v97, v98;
  }

  else
  {
    v99 = v114;
    sub_1BD319C58(v114, v113 != 0, v43, v109 != 0);
    v39, v100, v101, v102, v103, v104, v105, v106;
    v107 = *(v38 + 8);
    v107(v99, v23);
    v107(v115, v23);
  }
}

void sub_1BD319C58(uint64_t a1, char a2, char a3, char a4)
{
  v7 = sub_1BE04C364();
  if (!v7)
  {
    return;
  }

  v10 = v8;
  v12 = v9;

  if ((a2 & 1) != 0 && (a3 & 1) == 0)
  {
    v11 = &selRef_closeWithCompletion_;
LABEL_5:
    [v10 *v11];
    goto LABEL_10;
  }

  if ((a4 & 1) == 0)
  {
    [v12 status];
    if (PKShareStatusIsPending())
    {
      v11 = &selRef_relinquishWithCompletion_;
      goto LABEL_5;
    }
  }

LABEL_10:
  [v10 invalidate];
}

void sub_1BD319D3C(uint64_t a1)
{
  swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *MEMORY[0x1E69DDBE8];
    if (v2 != *MEMORY[0x1E69DDBE8])
    {
      v4 = [objc_opt_self() sharedApplication];
      [v4 endBackgroundTask_];

      swift_beginAccess();
      *(a1 + 16) = v3;
      *(a1 + 24) = 0;
    }
  }
}

uint64_t sub_1BD319DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v11 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_1BD31FE00;
  v29 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_91_0;
  v16 = _Block_copy(aBlock);
  v17 = v29;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v17, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD31FCB8(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v27 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v26);
}

void sub_1BD31A110(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  if ((*(a3 + 24) & 1) == 0)
  {
    v4 = *(a3 + 16);
    v5 = *MEMORY[0x1E69DDBE8];
    if (v4 != *MEMORY[0x1E69DDBE8])
    {
      v6 = [objc_opt_self() sharedApplication];
      [v6 endBackgroundTask_];

      swift_beginAccess();
      *(a3 + 16) = v5;
      *(a3 + 24) = 0;
    }
  }
}

void sub_1BD31A1D4(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v94 = v13;
    v95 = v12;
    v16 = *&v1[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
    *&v1[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = a1;
    v96 = a1;

    if ([v96 severity] == 1)
    {
      v17 = v96;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1BE0B98D0;
      v34 = *MEMORY[0x1E69BB6E0];
      v93 = v8;
      v35 = *MEMORY[0x1E69BB6E8];
      *(v33 + 32) = v34;
      *(v33 + 40) = v35;
      v36 = *MEMORY[0x1E69BB728];
      *(v33 + 48) = *MEMORY[0x1E69BB728];
      v37 = objc_opt_self();
      type metadata accessor for PKAnalyticsSubject(0);
      v38 = v34;
      v39 = v35;
      v40 = v36;
      v41 = sub_1BE052724();
      v33, v42, v43, v44, v45, v46, v47, v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      v50 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v51;
      v52 = v50;
      v53 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      sub_1BD31E8A4(inited + 32);
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD31FCB8(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
      v54 = sub_1BE052224();
      v53, v55, v56, v57, v58, v59, v60, v61;
      [v37 subjects:v41 sendEvent:v54];

      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v62 = v1;
      v63 = sub_1BE052D54();
      v64 = swift_allocObject();
      v65 = v96;
      *(v64 + 16) = v1;
      *(v64 + 24) = v65;
      aBlock[4] = sub_1BD31FC04;
      v98 = v64;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_57;
      v66 = _Block_copy(aBlock);
      v67 = v98;
      v68 = v96;
      v69 = v62;
      v67, v70, v71, v72, v73, v74, v75, v76;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD31FCB8(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v15, v10, v66);
      _Block_release(v66);

      (*(v93 + 8))(v10, v7);
      (*(v94 + 8))(v15, v95);
    }
  }

  else
  {
    sub_1BE04D0D4();
    v18 = v1;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      v23 = *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
      if (v23)
      {
        sub_1BE048964();
        v24 = sub_1BE04C0A4();
        v26 = v25;
        v23, v25, v27, v28, v29, v30, v31, v32;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v77 = sub_1BD123690(v24, v26, aBlock);
      v26, v78, v79, v80, v81, v82, v83, v84;
      *(v21 + 4) = v77;
      _os_log_impl(&dword_1BD026000, v19, v20, "[%s] Step failed with nil error", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22, v85, v86, v87, v88, v89, v90, v91);
      MEMORY[0x1BFB45F20](v22, -1, -1);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BD31A898(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 16))(a2, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD31A928()
{
  v1 = sub_1BE051F54();
  v119 = *(v1 - 8);
  v120 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v117 = &v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1BE051FA4();
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v115 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v121 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v114 - v8;
  sub_1BD319750();
  sub_1BE04D0D4();
  v10 = v0;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v5;
    v114 = v4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    v16 = *&v10[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    if (v16)
    {
      sub_1BE048964();
      v17 = sub_1BE04C0A4();
      v19 = v18;
      v16, v18, v20, v21, v22, v23, v24, v25;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v27 = sub_1BD123690(v17, v19, aBlock);
    v19, v28, v29, v30, v31, v32, v33, v34;
    *(v14 + 4) = v27;
    _os_log_impl(&dword_1BD026000, v11, v12, "[%s] Coordinator did complete", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15, v35, v36, v37, v38, v39, v40, v41);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);

    v5 = v13;
    v26 = *(v13 + 8);
    v4 = v114;
    v26(v9, v114);
  }

  else
  {

    v26 = *(v5 + 8);
    v26(v9, v4);
  }

  v42 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex;
  v43 = *&v10[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  v44 = *&v10[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration];
  sub_1BE048964();
  v45 = sub_1BE04C3A4();
  v44, v46, v47, v48, v49, v50, v51, v52;
  v53 = v45[2];
  v45, v54, v55, v56, v57, v58, v59, v60;
  if (v43 >= v53 - 1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v79 = sub_1BE052D54();
    v80 = swift_allocObject();
    *(v80 + 16) = v10;
    aBlock[4] = sub_1BD31FC14;
    v123 = v80;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_46_0;
    v81 = _Block_copy(aBlock);
    v82 = v123;
    v83 = v10;
    v82, v84, v85, v86, v87, v88, v89, v90;
    v91 = v115;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD31FCB8(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    v92 = v117;
    v93 = v120;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v91, v92, v81);
    _Block_release(v81);

    (*(v119 + 8))(v92, v93);
    (*(v116 + 8))(v91, v118);
  }

  else
  {
    v61 = *&v10[v42];
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
    }

    else
    {
      *&v10[v42] = v62;
      v63 = v121;
      sub_1BE04D0D4();
      v64 = v10;
      v65 = sub_1BE04D204();
      v66 = sub_1BE052C54();

      if (os_log_type_enabled(v65, v66))
      {
        v120 = v5;
        v114 = v4;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        aBlock[0] = v68;
        *v67 = 136315394;
        v69 = *&v64[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
        if (v69)
        {
          sub_1BE048964();
          v70 = sub_1BE04C0A4();
          v72 = v71;
          v69, v71, v73, v74, v75, v76, v77, v78;
        }

        else
        {
          v70 = 0;
          v72 = 0xE000000000000000;
        }

        v96 = sub_1BD123690(v70, v72, aBlock);
        v72, v97, v98, v99, v100, v101, v102, v103;
        *(v67 + 4) = v96;
        *(v67 + 12) = 2048;
        *(v67 + 14) = v62;
        _os_log_impl(&dword_1BD026000, v65, v66, "[%s] Coordinator completed provisioning and moving on to credential at index %ld", v67, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v68, v104, v105, v106, v107, v108, v109, v110);
        MEMORY[0x1BFB45F20](v68, -1, -1);
        MEMORY[0x1BFB45F20](v67, -1, -1);

        v94 = v121;
        v95 = v114;
      }

      else
      {

        v94 = v63;
        v95 = v4;
      }

      v26(v94, v95);
      v111 = *&v64[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel];
      if (v111)
      {
        v112 = *&v64[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel];
      }

      else
      {
        v112 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
        v111 = 0;
      }

      v113 = v111;
      sub_1BD317B18(v112);
    }
  }
}

void sub_1BD31B020(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v93 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BE051FC4();
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v86 - v11;
  v13 = a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(aBlock[0]) = 12;
    (*(*(v14 + 8) + 8))(aBlock, 0, ObjectType);
    swift_unknownObjectRelease();
  }

  v16 = *(a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
  if (v16)
  {
    v87 = v5;
    v88 = v6;
    v89 = v3;
    v90 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B98D0;
    v18 = *MEMORY[0x1E69BB6E0];
    v19 = *MEMORY[0x1E69BB6E8];
    *(v17 + 32) = *MEMORY[0x1E69BB6E0];
    *(v17 + 40) = v19;
    v20 = *MEMORY[0x1E69BB728];
    *(v17 + 48) = *MEMORY[0x1E69BB728];
    v21 = objc_opt_self();
    type metadata accessor for PKAnalyticsSubject(0);
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v16;
    v26 = sub_1BE052724();
    v17, v27, v28, v29, v30, v31, v32, v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v35 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v36;
    v37 = v35;
    v38 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    sub_1BD31E8A4(inited + 32);
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD31FCB8(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
    v39 = sub_1BE052224();
    v38, v40, v41, v42, v43, v44, v45, v46;
    [v21 subjects:v26 sendEvent:v39];

    v47 = *(a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer);
    if (!v47 || (sub_1BE048964(), v48 = sub_1BE04C0C4(), v47, v49, v50, v51, v52, v53, v54, v55, (v48 & 0x100) == 0))
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v86 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v91 = *(v91 + 8);
      (v91)(v9, v94);
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v25;
      aBlock[4] = sub_1BD31FC1C;
      v96 = v57;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_55_1;
      v58 = _Block_copy(aBlock);
      v59 = v96;
      v60 = v25;
      v59, v61, v62, v63, v64, v65, v66, v67;
      v68 = v92;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD31FCB8(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
      v69 = v87;
      v70 = v90;
      sub_1BE053664();
      v71 = v86;
      MEMORY[0x1BFB3FD90](v12, v68, v69, v58);
      _Block_release(v58);

      (*(v89 + 8))(v69, v70);
      (*(v93 + 8))(v68, v88);
      (v91)(v12, v94);
      return;
    }

    v83 = a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_12;
    }

    v84 = *(v83 + 8);
    v85 = swift_getObjectType();
    v77 = *(v84 + 8);
    v25 = v25;
    v78 = a1;
    v79 = v16;
    v80 = 0;
    v81 = v85;
    v82 = v84;
LABEL_11:
    v77(v78, v79, v80, v81, v82);
    swift_unknownObjectRelease();

LABEL_12:
    return;
  }

  v72 = [objc_opt_self() errorWithSeverity_];
  v73 = sub_1BE052404();
  [v72 addInternalDebugDescription_];

  v74 = a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v75 = *(v74 + 8);
    v76 = swift_getObjectType();
    v77 = *(v75 + 8);
    v25 = v72;
    v78 = a1;
    v79 = v72;
    v80 = 1;
    v81 = v76;
    v82 = v75;
    goto LABEL_11;
  }
}

void sub_1BD31B80C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, a2, 0, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD31B8D8()
{
  v1 = v0;
  v166 = sub_1BE04BD74();
  v2 = *(v166 - 1);
  MEMORY[0x1EEE9AC00](v166);
  v163 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v164 = &v157 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v165 = &v157 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v157 - v9;
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04C384();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v162 = v12;
  v167 = Strong;
  v168 = v2;
  v20 = *&v1[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration];
  v21 = *&v1[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v22 = sub_1BE04C3A4();
  v20, v23, v24, v25, v26, v27, v28, v29;
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v21 >= v22[2])
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  (*(v16 + 16))(v18, v22 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v21, v15);
  v22, v30, v31, v32, v33, v34, v35, v36;
  v37 = sub_1BE04C2F4();
  (*(v16 + 8))(v18, v15);
  if (!v37 || (v38 = [v37 carKeyTerminalPairingCredential], v37, !v38))
  {

LABEL_10:
    sub_1BD3188FC();
    return;
  }

  sub_1BE04D0D4();
  v39 = v1;
  v40 = sub_1BE04D204();
  v41 = sub_1BE052C54();

  v42 = os_log_type_enabled(v40, v41);
  v160 = v39;
  v161 = v38;
  if (v42)
  {
    v159 = v41;
    v43 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    aBlock = v158;
    *v43 = 136315138;
    v44 = *&v39[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    v45 = v166;
    v46 = v168;
    if (v44)
    {
      sub_1BE048964();
      v47 = sub_1BE04C0A4();
      v49 = v48;
      v44, v48, v50, v51, v52, v53, v54, v55;
    }

    else
    {
      v47 = 0;
      v49 = 0xE000000000000000;
    }

    v56 = sub_1BD123690(v47, v49, &aBlock);
    v49, v57, v58, v59, v60, v61, v62, v63;
    *(v43 + 4) = v56;
    _os_log_impl(&dword_1BD026000, v40, v159, "[%s] Prompting for new pin code", v43, 0xCu);
    v64 = v158;
    __swift_destroy_boxed_opaque_existential_0(v158, v65, v66, v67, v68, v69, v70, v71);
    MEMORY[0x1BFB45F20](v64, -1, -1);
    MEMORY[0x1BFB45F20](v43, -1, -1);

    v162[1](v14, v11);
  }

  else
  {

    v162[1](v14, v11);
    v45 = v166;
    v46 = v168;
  }

  v72 = *MEMORY[0x1E69B8038];
  v73 = *(v46 + 104);
  (v73)(v10, v72, v45);
  v74 = PKPassKitBundle();
  if (!v74)
  {
    goto LABEL_21;
  }

  v75 = v74;
  sub_1BE04B6F4();
  v77 = v76;

  v79 = *(v46 + 8);
  v78 = v46 + 8;
  v166 = v79;
  (v79)(v10, v45);
  v80 = v165;
  v162 = v73;
  (v73)(v165, v72, v45);
  v81 = PKPassKitBundle();
  if (!v81)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v82 = v81;
  sub_1BE04B6F4();
  v84 = v83;

  (v166)(v80, v45);
  v85 = sub_1BE052404();
  v77, v86, v87, v88, v89, v90, v91, v92;
  v93 = sub_1BE052404();
  v84, v94, v95, v96, v97, v98, v99, v100;
  v101 = [objc_opt_self() alertControllerWithTitle:v85 message:v93 preferredStyle:1];

  v102 = v78;
  v103 = *MEMORY[0x1E69B80D8];
  v104 = v164;
  (v162)(v164, v103, v45);
  v105 = PKPassKitBundle();
  if (!v105)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v106 = v105;
  sub_1BE04B6F4();
  v108 = v107;

  v168 = v102;
  (v166)(v104, v45);
  v109 = swift_allocObject();
  v110 = v160;
  v111 = v161;
  v109[2] = v160;
  v109[3] = v111;
  v112 = v167;
  v109[4] = v167;
  v113 = v110;
  v167 = v112;
  v165 = v111;
  v114 = sub_1BE052404();
  v108, v115, v116, v117, v118, v119, v120, v121;
  v173 = sub_1BD31FC24;
  v174 = v109;
  aBlock = MEMORY[0x1E69E9820];
  v170 = 1107296256;
  v171 = sub_1BD198918;
  v172 = &block_descriptor_61_0;
  v122 = _Block_copy(&aBlock);
  v174, v123, v124, v125, v126, v127, v128, v129;
  v130 = objc_opt_self();
  v131 = [v130 actionWithTitle:v114 style:0 handler:v122];
  _Block_release(v122);

  [v101 addAction_];
  v132 = v163;
  (v162)(v163, v103, v45);
  v133 = PKPassKitBundle();
  if (v133)
  {
    v134 = v133;
    sub_1BE04B6F4();
    v136 = v135;

    (v166)(v132, v45);
    v137 = swift_allocObject();
    v137[2] = v113;
    v138 = v113;
    v139 = sub_1BE052404();
    v136, v140, v141, v142, v143, v144, v145, v146;
    v173 = sub_1BD31FC30;
    v174 = v137;
    aBlock = MEMORY[0x1E69E9820];
    v170 = 1107296256;
    v171 = sub_1BD198918;
    v172 = &block_descriptor_67;
    v147 = _Block_copy(&aBlock);
    v174, v148, v149, v150, v151, v152, v153, v154;
    v155 = [v130 actionWithTitle:v139 style:1 handler:v147];
    _Block_release(v147);

    [v101 addAction_];
    v156 = v167;
    [v167 presentViewController:v101 animated:1 completion:0];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1BD31C244(uint64_t a1, char *a2, void *a3, void *a4)
{
  v7 = *&a2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context];
  v8 = objc_allocWithZone(type metadata accessor for ProvisioningCarPairingPinCodeViewController());
  sub_1BE048964();
  v9 = sub_1BD8EA7B8(v7, a3, a2, v8);
  [v9 setShowCancelButton_];
  v10 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
  [a4 presentViewController:v10 animated:1 completion:0];
}

id CarKeyProvisioningUICoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1BD31C3C4()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v5 = v0;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();

  if (os_log_type_enabled(v6, v7))
  {
    v48 = v1;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    if (v10)
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
      v10, v12, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v20 = sub_1BD123690(v11, v13, aBlock);
    v13, v21, v22, v23, v24, v25, v26, v27;
    *(v8 + 4) = v20;
    _os_log_impl(&dword_1BD026000, v6, v7, "[%s] Continuing to provision after pin code entered", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9, v28, v29, v30, v31, v32, v33, v34);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v2 + 8))(v4, v48);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v37 = swift_allocObject();
    *(v37 + 16) = v5;
    aBlock[4] = sub_1BD31FC0C;
    v50 = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_40;
    v38 = _Block_copy(aBlock);
    v39 = v50;
    v40 = v5;
    v39, v41, v42, v43, v44, v45, v46, v47;
    [v36 dismissViewControllerAnimated:1 completion:v38];
    _Block_release(v38);
  }
}

void sub_1BD31C6A0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel);
  if (v1)
  {
    v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
    v1 = 0;
  }

  v2 = v1;
  sub_1BD317B18(v3);
}

void sub_1BD31C720()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v5 = v0;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();

  if (os_log_type_enabled(v6, v7))
  {
    v35 = v1;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    if (v10)
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
      v10, v12, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v20 = sub_1BD123690(v11, v13, &v36);
    v13, v21, v22, v23, v24, v25, v26, v27;
    *(v8 + 4) = v20;
    _os_log_impl(&dword_1BD026000, v6, v7, "[%s] Pin code recovery failed, canceling", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9, v28, v29, v30, v31, v32, v33, v34);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v2 + 8))(v4, v35);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  sub_1BD3188FC();
}

void CarKeyProvisioningUICoordinator.handleRequestInvite(result:completion:)(void *a1, void *a2, char a3, void (*a4)(void), uint64_t a5)
{
  v94 = a5;
  v95 = a2;
  v96 = a1;
  v8 = sub_1BE04C384();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D48, &qword_1BE0CC118);
  v12 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v14 = (&v90 - v13);
  v15 = sub_1BE04D214();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v91 = v17;
    sub_1BE048C84();
    sub_1BE04D0D4();
    v53 = v5;
    v54 = sub_1BE04D204();
    v55 = sub_1BE052C54();

    if (os_log_type_enabled(v54, v55))
    {
      v92 = a4;
      v56 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v97 = v90;
      *v56 = 136315138;
      v57 = *&v53[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
      if (v57)
      {
        sub_1BE048964();
        v58 = sub_1BE04C0A4();
        v60 = v59;
        v57, v59, v61, v62, v63, v64, v65, v66;
      }

      else
      {
        v58 = 0;
        v60 = 0xE000000000000000;
      }

      v70 = sub_1BD123690(v58, v60, &v97);
      v60, v71, v72, v73, v74, v75, v76, v77;
      *(v56 + 4) = v70;
      _os_log_impl(&dword_1BD026000, v54, v55, "[%s] Falling back to legacy share accept flow", v56, 0xCu);
      v78 = v90;
      __swift_destroy_boxed_opaque_existential_0(v90, v79, v80, v81, v82, v83, v84, v85);
      MEMORY[0x1BFB45F20](v78, -1, -1);
      MEMORY[0x1BFB45F20](v56, -1, -1);

      (*(v16 + 8))(v20, v91);
      a4 = v92;
    }

    else
    {

      (*(v16 + 8))(v20, v91);
    }

    v86 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D50, &qword_1BE0CC128) + 48));
    v87 = *MEMORY[0x1E69B8308];
    v88 = sub_1BE04C534();
    (*(*(v88 - 8) + 104))(v14, v87, v88);
    v89 = v95;
    *v86 = v96;
    v86[1] = v89;
    v68 = v93;
    (*(v12 + 104))(v14, *MEMORY[0x1E69B8170], v93);
    goto LABEL_15;
  }

  if (a3 != 1)
  {
    v67 = v96;
    *v14 = v96;
    v68 = v93;
    (*(v12 + 104))(v14, *MEMORY[0x1E69B8168], v93, v18);
    v69 = v67;
LABEL_15:
    a4(v14);
    (*(v12 + 8))(v14, v68);
    return;
  }

  v92 = a4;
  v21 = objc_opt_self();
  v22 = v95;
  v23 = v96;
  v24 = [v21 createTaggedShare];
  v25 = [objc_allocWithZone(MEMORY[0x1E69B92B8]) initWithSharingChannelHandle:v22 invitation:v23 share:v24];
  v96 = v22;

  if (v25)
  {
    *v11 = v25;
    (*(v9 + 104))(v11, *MEMORY[0x1E69B82A8], v8);
    v26 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
    v27 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BE0B69E0;
    (*(v9 + 16))(v28 + v27, v11, v8);
    sub_1BE048964();
    v29 = v25;
    sub_1BE04C3B4();
    v26, v30, v31, v32, v33, v34, v35, v36;
    v37 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    if (v37)
    {
      sub_1BE048964();
      sub_1BE04C084();
      v37, v38, v39, v40, v41, v42, v43, v44;
    }

    v45 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D50, &qword_1BE0CC128) + 48));
    v46 = *MEMORY[0x1E69B8308];
    v47 = sub_1BE04C534();
    (*(*(v47 - 8) + 104))(v14, v46, v47);
    v48 = [v96 transportIdentifier];
    v49 = sub_1BE052434();
    v51 = v50;

    *v45 = v49;
    v45[1] = v51;
    v52 = v93;
    (*(v12 + 104))(v14, *MEMORY[0x1E69B8170], v93);
    v92(v14);

    (*(v12 + 8))(v14, v52);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }
}

void CarKeyProvisioningUICoordinator.handleImportKey(result:completion:)(void *a1, char a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v194 = a3;
  v9 = sub_1BE04D214();
  v189 = *(v9 - 8);
  v190 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v187 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v191 = &v180 - v12;
  v13 = sub_1BE04BD74();
  v185 = *(v13 - 8);
  v186 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v184 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04BAC4();
  v188 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04C384();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D58, &qword_1BE0CC130);
  v192 = *(v22 - 8);
  v193 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v180 - v23;
  if (!a2)
  {
    v57 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses];
    *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;

    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D60, &qword_1BE0CC138) + 48);
    v59 = *MEMORY[0x1E69B8308];
    v60 = sub_1BE04C534();
    (*(*(v60 - 8) + 104))(v24, v59, v60);
    *&v24[v58] = a1;
    v61 = MEMORY[0x1E69B8170];
LABEL_11:
    v64 = v192;
    v63 = v193;
    (*(v192 + 104))(v24, *v61, v193);
    v65 = a1;
    v194(v24);
LABEL_12:
    (*(v64 + 8))(v24, v63);
    return;
  }

  if (a2 != 1)
  {
    v62 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses];
    *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;

    *v24 = a1;
    v61 = MEMORY[0x1E69B8168];
    goto LABEL_11;
  }

  v182 = a4;
  v183 = a1;
  v25 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration];
  v26 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v27 = sub_1BE04C3A4();
  v25, v28, v29, v30, v31, v32, v33, v34;
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v26 >= v27[2])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  (*(v19 + 16))(v21, v27 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v26, v18);
  v27, v35, v36, v37, v38, v39, v40, v41;
  v42 = sub_1BE04C364();
  v180 = v44;
  v181 = v43;
  (*(v19 + 8))(v21, v18);
  if (v42)
  {
    v45 = v42;
    sub_1BE04BC34();
    v46 = sub_1BE04BAB4();
    (*(v188 + 8))(v17, v15);
    v47 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses;
    v48 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses];
    v50 = v182;
    v49 = v183;
    if (v48)
    {
      v51 = v48;
      v52 = sub_1BE04BC84();

      v53 = [v52 passActivationState];
      v54 = v53 == 0;
      v55 = v191;
      if ((v46 | v54))
      {
        v56 = v46 ^ 1 | v54;
LABEL_19:
        sub_1BE04D0D4();
        v83 = v5;
        v84 = sub_1BE04D204();
        v85 = sub_1BE052C54();

        if (os_log_type_enabled(v84, v85))
        {
          LODWORD(v188) = v56;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v195[0] = v87;
          *v86 = 136315650;
          v88 = *&v83[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
          if (v88)
          {
            sub_1BE048964();
            v89 = sub_1BE04C0A4();
            v91 = v90;
            v88, v90, v92, v93, v94, v95, v96, v97;
          }

          else
          {
            v89 = 0;
            v91 = 0xE000000000000000;
          }

          v164 = sub_1BD123690(v89, v91, v195);
          v91, v165, v166, v167, v168, v169, v170, v171;
          *(v86 + 4) = v164;
          *(v86 + 12) = 1024;
          *(v86 + 14) = v46 & 1;
          *(v86 + 18) = 1024;
          *(v86 + 20) = v188 & 1;
          _os_log_impl(&dword_1BD026000, v84, v85, "[%s] Not finishing in background. isBridge: %{BOOL}d isPassActive: %{BOOL}d ", v86, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v87, v172, v173, v174, v175, v176, v177, v178);
          MEMORY[0x1BFB45F20](v87, -1, -1);
          MEMORY[0x1BFB45F20](v86, -1, -1);

          (*(v189 + 8))(v191, v190);
          v49 = v183;
        }

        else
        {

          (*(v189 + 8))(v55, v190);
        }

        v64 = v192;
        v63 = v193;
        *v24 = v49;
        (*(v64 + 104))(v24, *MEMORY[0x1E69B8168], v63);
        v179 = v49;
        v194(v24);

        goto LABEL_12;
      }
    }

    else
    {
      v55 = v191;
      if (v46)
      {
        v56 = 0;
        goto LABEL_19;
      }
    }

    v98 = swift_allocObject();
    v99 = v194;
    v98[2] = v194;
    v98[3] = v50;
    v100 = v180;
    v101 = v181;
    v98[4] = v181;
    v98[5] = v45;
    v98[6] = v100;
    v98[7] = v5;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v109 = v5;
      sub_1BE048964();
      v110 = v100;
      v111 = v45;
      v112 = v101;
      goto LABEL_28;
    }

    v103 = Strong;
    if (*&v5[v47])
    {
      v104 = v5;
      sub_1BE048964();
      v105 = v100;
      v106 = v45;
      v107 = v101;

LABEL_28:
      sub_1BD31DB28(v99, v50, v101, v45, v100, v5);
      v98, v113, v114, v115, v116, v117, v118, v119;

      return;
    }

    v121 = v184;
    v120 = v185;
    (*(v185 + 104))(v184, *MEMORY[0x1E69B80D0], v186);
    v122 = v5;
    sub_1BE048964();
    v123 = v100;
    v124 = v45;
    v125 = v101;
    v126 = PKPassKitBundle();
    if (v126)
    {
      v127 = v126;
      v128 = sub_1BE04B6F4();
      v129 = v121;
      v131 = v130;

      (*(v120 + 8))(v129, v186);
      sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
      v132 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(v183, 0, 0, v128, v131, sub_1BD31F5F0, v98, sub_1BD31F5F0, v98, 0, 0);
      v131, v133, v134, v135, v136, v137, v138, v139;
      [v103 presentViewController:v132 animated:1 completion:0];

      v98, v140, v141, v142, v143, v144, v145, v146;
      return;
    }

LABEL_39:
    __break(1u);
    return;
  }

  v66 = v187;
  sub_1BE04D0D4();
  v67 = v5;
  v68 = sub_1BE04D204();
  v69 = sub_1BE052C54();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v195[0] = v71;
    *v70 = 136315138;
    v72 = *&v67[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer];
    v73 = v193;
    if (v72)
    {
      sub_1BE048964();
      v74 = sub_1BE04C0A4();
      v76 = v75;
      v72, v75, v77, v78, v79, v80, v81, v82;
    }

    else
    {
      v74 = 0;
      v76 = 0xE000000000000000;
    }

    v147 = sub_1BD123690(v74, v76, v195);
    v76, v148, v149, v150, v151, v152, v153, v154;
    *(v70 + 4) = v147;
    _os_log_impl(&dword_1BD026000, v68, v69, "[%s] Not finishing in background, incorrect credential type", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71, v155, v156, v157, v158, v159, v160, v161);
    MEMORY[0x1BFB45F20](v71, -1, -1);
    MEMORY[0x1BFB45F20](v70, -1, -1);

    (*(v189 + 8))(v66, v190);
    v108 = v183;
  }

  else
  {

    (*(v189 + 8))(v66, v190);
    v108 = v183;
    v73 = v193;
  }

  *v24 = v108;
  v162 = v192;
  (*(v192 + 104))(v24, *MEMORY[0x1E69B8168], v73);
  v163 = v108;
  v194(v24);
  (*(v162 + 8))(v24, v73);
}

void sub_1BD31DB28(void (*a1)(char *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = a4;
  v76 = a5;
  v9 = sub_1BE04B944();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04C384();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D58, &qword_1BE0CC130);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - v17;
  sub_1BD0E5E8C(0, &qword_1EBD398B8, 0x1E69B85A0);
  sub_1BE04BF44();
  a1(v18);
  (*(v16 + 8))(v18, v15);
  v19 = [a3 transportIdentifier];
  if (!v19)
  {
    sub_1BE052434();
    v21 = v20;
    v19 = sub_1BE052404();
    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  [a3 invalidate];
  v29 = objc_allocWithZone(MEMORY[0x1E69B9058]);
  v30 = [v29 initWithTransportIdentifier:v19 invitation:v75 share:v76];

  v31 = *(a6 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration);
  v32 = *(a6 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex);
  sub_1BE048964();
  v33 = sub_1BE04C3A4();
  v31, v34, v35, v36, v37, v38, v39, v40;
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v32 >= v33[2])
  {
LABEL_15:
    __break(1u);
    return;
  }

  (*(v12 + 16))(v14, v33 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v32, v11);
  v33, v41, v42, v43, v44, v45, v46, v47;
  v48 = sub_1BE04C2D4();
  (*(v12 + 8))(v14, v11);
  if (!v48 || (v49 = [v48 originalShareURL], v48, !v49))
  {
    v49 = 0;
  }

  [v30 setOriginalShareURL_];

  v50 = *(a6 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer);
  v51 = v30;
  if (v50)
  {
    sub_1BE048964();
    v52 = sub_1BE04C034();
    v50, v53, v54, v55, v56, v57, v58, v59;
  }

  else
  {
    v52 = 0;
  }

  [v30 setProvisioningState_];

  [v30 setShouldAutoProvision_];
  v60 = v72;
  sub_1BE04BB94();
  v61 = sub_1BE04B934();
  (*(v73 + 8))(v60, v74);
  v62 = v30;
  if ([v61 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1BE0B7020;
    *(v63 + 32) = v30;
    sub_1BD0E5E8C(0, &unk_1EBD44440, 0x1E69B9048);
    v62 = sub_1BE052724();
    [v61 addPendingProvisionings:v62 completion:0];
    v63, v64, v65, v66, v67, v68, v69, v70;
  }

  swift_unknownObjectRelease();

  *(a6 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning) = 1;
  sub_1BD31A928();
}

uint64_t CarKeyProvisioningUICoordinator.handleFindReader(result:completion:)(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D58, &qword_1BE0CC130);
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v17 - v9);
  if (a2)
  {
    if (a2 != 1)
    {
      sub_1BD31B8D8();
      sub_1BD0E5E8C(0, &qword_1EBD398B8, 0x1E69B85A0);
      sub_1BE04BF44();
      goto LABEL_7;
    }

    *v10 = a1;
    v11 = MEMORY[0x1E69B8168];
  }

  else
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D60, &qword_1BE0CC138) + 48);
    v13 = *MEMORY[0x1E69B8308];
    v14 = sub_1BE04C534();
    (*(*(v14 - 8) + 104))(v10, v13, v14);
    *(v10 + v12) = a1;
    v11 = MEMORY[0x1E69B8170];
  }

  (*(v7 + 104))(v10, *v11, v6, v8);
  v15 = a1;
LABEL_7:
  a3(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t CarKeyProvisioningUICoordinator.handleProvisioned(result:completion:)(void *a1, char a2, void (*a3)(void *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD455B0, &unk_1BE0CC140);
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v20 - v10);
  if (a2)
  {
    *v11 = a1;
    v12 = MEMORY[0x1E69B8168];
  }

  else
  {
    v13 = *(v3 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
    *(v3 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses) = a1;
    v14 = a1;

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D68, &qword_1BE0D44D0) + 48);
    v16 = *MEMORY[0x1E69B8308];
    v17 = sub_1BE04C534();
    (*(*(v17 - 8) + 104))(v11, v16, v17);
    *(v11 + v15) = v14;
    v12 = MEMORY[0x1E69B8170];
  }

  (*(v8 + 104))(v11, *v12, v7, v9);
  v18 = a1;
  a3(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1BD31E3BC(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_1BE04C534();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8308], v3, v9);
  sub_1BE04BF54();
  (*(v4 + 8))(v6, v3);
  a2(v11);
  return (*(v8 + 8))(v11, v7);
}

void CarKeyProvisioningUICoordinator.handleLegacyRedeem(result:completion:)(void *a1, char a2, void (*a3)(void *))
{
  v19 = a3;
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v18 - v13);
  if (a2)
  {
    if (a2 == 1)
    {
      *v14 = a1;
      (*(v11 + 104))(v14, *MEMORY[0x1E69B8168], v10, v12);
      v15 = a1;
    }

    else
    {
      (*(v7 + 104))(v9, *MEMORY[0x1E69B8308], v6, v12);
      sub_1BE04BF54();
      (*(v7 + 8))(v9, v6);
    }

    v19(v14);
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v16 = *(v3 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
    *(v3 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses) = a1;
    v17 = a1;

    (*(v7 + 104))(v9, *MEMORY[0x1E69B8300], v6);
    sub_1BE04BF54();
    (*(v7 + 8))(v9, v6);
    v19(v14);
    (*(v11 + 8))(v14, v10);
    sub_1BD31A928();
  }
}

uint64_t sub_1BD31E8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD31E90C(void *a1, char a2, void (*a3)(void *))
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v17 - v13);
  if (a2)
  {
    *v14 = a1;
    (*(v11 + 104))(v14, *MEMORY[0x1E69B8168], v10, v12);
    v15 = a1;
  }

  else
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E69B8308], v6, v12);
    sub_1BE04BF54();
    (*(v7 + 8))(v9, v6);
  }

  a3(v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t _s9PassKitUI31CarKeyProvisioningUICoordinatorC22handleValidationResult6result10completiony0aB4Core0F25StepValidatePreconditionsC0iJ0O_yAG0f9OperationJ0OyytGctF_0(int64_t *a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v92 = a4;
  v93 = a3;
  v95 = a1;
  v5 = sub_1BE04BDB4();
  v94 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BDF4();
  v96 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04C534();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v15 = *(v91 - 8);
  v16 = MEMORY[0x1EEE9AC00](v91);
  v18 = (&v87 - v17);
  if (a2)
  {
    if (a2 == 1)
    {
      v19 = v95;
      *v18 = v95;
      v20 = v91;
      (*(v15 + 104))(v18, *MEMORY[0x1E69B8168], v91, v16);
      v21 = v19;
      v93(v18);
      return (*(v15 + 8))(v18, v20);
    }

    else
    {
      (*(v12 + 104))(v14, *MEMORY[0x1E69B8308], v11, v16);
      sub_1BE04BF54();
      (*(v12 + 8))(v14, v11);
      v93(v18);
      return (*(v15 + 8))(v18, v91);
    }
  }

  else
  {
    v98 = v10;
    v99 = v8;
    v23 = v96;
    v100 = v7;
    v97 = v5;
    v24 = [objc_opt_self() errorWithCommonType:1 severity:5];
    v30 = v24;
    v31 = v95;
    v32 = v95[2];
    v33 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      v88 = v24;
      v89 = v18;
      v90 = v15;
      v101 = MEMORY[0x1E69E7CC0];
      sub_1BD03B254(0, v32, 0, v25, v26, v27, v28, v29);
      v33 = v101;
      v35 = v23[2];
      v34 = (v23 + 2);
      v36 = v31 + ((v34[64] + 32) & ~v34[64]);
      v95 = *(v34 + 7);
      v96 = v35;
      ++v94;
      v37 = (v34 - 8);
      v39 = v98;
      v38 = v99;
      do
      {
        v40 = v34;
        (v96)(v39, v36, v38);
        sub_1BE04BDE4();
        v41 = sub_1BE04BDA4();
        v43 = v42;
        (*v94)(v100, v97);
        (*v37)(v39, v38);
        v101 = v33;
        v50 = v33[2];
        v49 = v33[3];
        if (v50 >= v49 >> 1)
        {
          sub_1BD03B254((v49 > 1), v50 + 1, 1, v44, v45, v46, v47, v48);
          v33 = v101;
        }

        v33[2] = v50 + 1;
        v51 = &v33[2 * v50];
        v51[4] = v41;
        v51[5] = v43;
        v36 = v95 + v36;
        --v32;
        v39 = v98;
        v38 = v99;
        v34 = v40;
      }

      while (v32);
      v52 = v93;
      v15 = v90;
      v53 = v91;
      v30 = v88;
      v18 = v89;
    }

    else
    {
      v52 = v93;
      v53 = v91;
    }

    v101 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
    sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0, &qword_1BE0C1E30, MEMORY[0x1E69E6310]);
    v54 = sub_1BE0522E4();
    v56 = v55;
    v33, v55, v57, v58, v59, v60, v61, v62;
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1BE053834();
    v102, v63, v64, v65, v66, v67, v68, v69;
    v101 = 0xD000000000000016;
    v102 = 0x80000001BE123A30;
    MEMORY[0x1BFB3F610](v54, v56);
    v56, v70, v71, v72, v73, v74, v75, v76;
    v77 = v102;
    v78 = sub_1BE052404();
    v77, v79, v80, v81, v82, v83, v84, v85;
    [v30 addInternalDebugDescription_];

    *v18 = v30;
    (*(v15 + 104))(v18, *MEMORY[0x1E69B8168], v53);
    v86 = v30;
    v52(v18);

    return (*(v15 + 8))(v18, v53);
  }
}

uint64_t _s9PassKitUI31CarKeyProvisioningUICoordinatorC16handleFindSource6result10completiony0aB4Core0fde4StepiJ0C0iJ6ResultO_yAG0f9OperationO0OyAG0fde10InvitationJ13ConfigurationOGXEtF_0(uint64_t a1, void (*a2)(void **))
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D88, &qword_1BE0CC280);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - v5);
  v7 = sub_1BE04C544();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04C194();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD31FC54(a1, v14, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    *v6 = *v14;
    (*(v4 + 104))(v6, *MEMORY[0x1E69B8168], v3);
    v16 = v15;
    v22(v6);

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D90, &qword_1BE0CC288) + 48);
    v19 = *MEMORY[0x1E69B8308];
    v20 = sub_1BE04C534();
    (*(*(v20 - 8) + 104))(v6, v19, v20);
    (*(v8 + 16))(v6 + v18, v10, v7);
    (*(v4 + 104))(v6, *MEMORY[0x1E69B8170], v3);
    v22(v6);
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1BD31F404(void *a1, void (*a2)(void *))
{
  v4 = sub_1BE04C534();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v15 - v11);
  if (a1)
  {
    *v12 = a1;
    (*(v9 + 104))(v12, *MEMORY[0x1E69B8168], v8, v10);
    v13 = a1;
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69B8308], v4, v10);
    sub_1BE04BF54();
    (*(v5 + 8))(v7, v4);
  }

  a2(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD31F600(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v24 - v16);
  if (a2)
  {
    *v17 = a1;
    v18 = MEMORY[0x1E69B8168];
  }

  else
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) + 48);
    v20 = *MEMORY[0x1E69B8308];
    v21 = sub_1BE04C534();
    (*(*(v21 - 8) + 104))(v17, v20, v21);
    *(v17 + v19) = a1;
    v18 = MEMORY[0x1E69B8170];
  }

  (*(v14 + 104))(v17, *v18, v13, v15);
  v22 = a1;
  a3(v17);
  return (*(v14 + 8))(v17, v13);
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm_0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD31FC54(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1BE04C194();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD31FCB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1BD31FD18()
{
  v1 = *(sub_1BE04C384() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = (v2 + *(v1 + 64));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];

  sub_1BD319C58(v2, v4, v5, v6);
}

uint64_t objectdestroy_84Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD31FE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD324884();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD31FED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD324884();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD31FF34(uint64_t a1)
{
  sub_1BD324884();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD31FF5C()
{
  type metadata accessor for PaymentSheetFooter.AudioPlayer();

  return swift_allocObject();
}

uint64_t sub_1BD31FF90()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    sub_1BE048964();
    v2 = sub_1BE04CD74();
    v1, v3, v4, v5, v6, v7, v8, v9;
    if (!v2)
    {
      v13 = 0;
      return v13 & 1;
    }

    v10 = [v2 displayIdentity];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 isMainDisplay];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1BE04CBF4();
      }

      return v13 & 1;
    }

    __break(1u);
  }

  sub_1BE04CDA4();
  sub_1BD32410C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD320098@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DA0, &qword_1BE0CC440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v83 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DA8, &qword_1BE0CC448);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v83 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DB0, &qword_1BE0CC450);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v83 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DB8, &qword_1BE0CC458);
  MEMORY[0x1EEE9AC00](v84);
  v14 = &v83 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DC0, &qword_1BE0CC460);
  v16 = *(v15 - 8);
  v86 = v15;
  v87 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v83 - v17;
  v18 = sub_1BD32062C();
  *v4 = sub_1BE04F7B4();
  v4[1] = v18;
  *(v4 + 16) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DC8, &qword_1BE0CC468);
  sub_1BD320798(v1, v4 + *(v19 + 44));
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v4, v8, &qword_1EBD41DA0, &qword_1BE0CC440);
  v20 = &v8[*(v6 + 44)];
  v21 = v97;
  v22 = v99;
  v23 = v100;
  *(v20 + 4) = v98;
  *(v20 + 5) = v22;
  *(v20 + 6) = v23;
  v24 = v95;
  v25 = v96;
  *v20 = v94;
  *(v20 + 1) = v24;
  *(v20 + 2) = v25;
  *(v20 + 3) = v21;
  LOBYTE(v6) = sub_1BE050234();
  sub_1BE04E1F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1BD0DE204(v8, v12, &qword_1EBD41DA8, &qword_1BE0CC448);
  v34 = &v12[*(v10 + 44)];
  *v34 = v6;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v12, v14, &qword_1EBD41DB0, &qword_1BE0CC450);
  v35 = v84;
  v36 = &v14[*(v84 + 36)];
  v37 = v101[5];
  *(v36 + 4) = v101[4];
  *(v36 + 5) = v37;
  *(v36 + 6) = v101[6];
  v38 = v101[1];
  *v36 = v101[0];
  *(v36 + 1) = v38;
  v39 = v101[3];
  *(v36 + 2) = v101[2];
  *(v36 + 3) = v39;
  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  sub_1BE04D8B4(&v89);
  KeyPath, v42, v43, v44, v45, v46, v47, v48;
  v41, v49, v50, v51, v52, v53, v54, v55;
  v93 = v90;
  v56 = swift_allocObject();
  v57 = v1[5];
  v56[5] = v1[4];
  v56[6] = v57;
  v56[7] = v1[6];
  v58 = v1[1];
  v56[1] = *v1;
  v56[2] = v58;
  v59 = v1[3];
  v56[3] = v1[2];
  v56[4] = v59;
  sub_1BD0EEF94(v1, &v89);
  type metadata accessor for PKAuthenticatorESBiometricAnnotation(0);
  v61 = v60;
  v62 = sub_1BD323808();
  v63 = sub_1BD32410C(&qword_1EBD41DF0, type metadata accessor for PKAuthenticatorESBiometricAnnotation, &unk_1BE0B6528);
  v64 = v85;
  sub_1BE051064();
  v56, v65, v66, v67, v68, v69, v70, v71;
  sub_1BD0DE53C(v14, &qword_1EBD41DB8, &qword_1BE0CC458);
  sub_1BE052434();
  v73 = v72;
  v89 = v35;
  v90 = v61;
  v91 = v62;
  v92 = v63;
  swift_getOpaqueTypeConformance2();
  v74 = v86;
  sub_1BE050DE4();
  v73, v75, v76, v77, v78, v79, v80, v81;
  return (*(v87 + 8))(v64, v74);
}

double sub_1BD32062C()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 48);
  v5 = *(v0 + 40);
  v9 = v5;
  if (v10 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v6 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v9, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  result = 2.0;
  if (v5)
  {
    return 4.0;
  }

  return result;
}

id sub_1BD320798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v140 = sub_1BE04E8A4();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v137 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v138 = &v131 - v5;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E00, &qword_1BE0CC4B8);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v136 = (&v131 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E08, &qword_1BE0CC4C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v152 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v151 = &v131 - v10;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E10, &qword_1BE0CC4C8);
  MEMORY[0x1EEE9AC00](v145);
  v147 = (&v131 - v11);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E18, &qword_1BE0CC4D0);
  MEMORY[0x1EEE9AC00](v143);
  v155 = &v131 - v12;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E20, &qword_1BE0CC4D8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v131 - v13;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E28, &qword_1BE0CC4E0);
  MEMORY[0x1EEE9AC00](v132);
  v133 = (&v131 - v14);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E30, &qword_1BE0CC4E8);
  MEMORY[0x1EEE9AC00](v154);
  v16 = &v131 - v15;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E38, &qword_1BE0CC4F0);
  MEMORY[0x1EEE9AC00](v142);
  v18 = &v131 - v17;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E40, &qword_1BE0CC4F8);
  MEMORY[0x1EEE9AC00](v141);
  v134 = &v131 - v19;
  v20 = sub_1BE04C7B4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E48, &qword_1BE0CC500);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v148 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v131 - v27;
  v29 = a1;
  v30 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v156 = v30;
  v33 = v21;
  sub_1BE04D8B4(v23);
  KeyPath, v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  v48 = (*(v21 + 88))(v23, v20);
  if (v48 == *MEMORY[0x1E69BC988])
  {
    v49 = v29;
    v50 = *(v29 + 104);
    *v16 = sub_1BE04F7B4();
    *(v16 + 1) = v50;
    v16[16] = 0;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EA0, &qword_1BE0CC580);
    sub_1BD3225A0(&v16[*(v51 + 44)]);
    sub_1BE052434();
    v53 = v52;
    sub_1BD0DE4F4(&qword_1EBD41E78, &qword_1EBD41E30, &qword_1BE0CC4E8, MEMORY[0x1E6981870]);
    sub_1BE050DE4();
    v53, v54, v55, v56, v57, v58, v59, v60;
    sub_1BD0DE53C(v16, &qword_1EBD41E30, &qword_1BE0CC4E8);
    sub_1BD0DE19C(v18, v155, &qword_1EBD41E38, &qword_1BE0CC4F0);
    swift_storeEnumTagMultiPayload();
    sub_1BD323B44();
    sub_1BD323BD0();
    v61 = v144;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v61, v147, &qword_1EBD41E20, &qword_1BE0CC4D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E58, &qword_1BE0CC558);
    sub_1BD323AB8();
    sub_1BD323E24();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v61, &qword_1EBD41E20, &qword_1BE0CC4D8);
    sub_1BD0DE53C(v18, &qword_1EBD41E38, &qword_1BE0CC4F0);
    v62 = v151;
    v63 = v150;
  }

  else
  {
    v64 = v155;
    v135 = v29;
    if (v48 == *MEMORY[0x1E69BC980])
    {
      v65 = v135;
      if (sub_1BD31FF90())
      {
        v66 = *(v65 + 104);
        *v16 = sub_1BE04F7B4();
        *(v16 + 1) = v66;
        v16[16] = 0;
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EA0, &qword_1BE0CC580);
        sub_1BD3225A0(&v16[*(v67 + 44)]);
        sub_1BE052434();
        v69 = v68;
        sub_1BD0DE4F4(&qword_1EBD41E78, &qword_1EBD41E30, &qword_1BE0CC4E8, MEMORY[0x1E6981870]);
        sub_1BE050DE4();
        v69, v70, v71, v72, v73, v74, v75, v76;
        sub_1BD0DE53C(v16, &qword_1EBD41E30, &qword_1BE0CC4E8);
        sub_1BD0DE19C(v18, v133, &qword_1EBD41E38, &qword_1BE0CC4F0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E80, &qword_1BE0CC560);
        sub_1BD323BD0();
        sub_1BD323CB8();
        v77 = v134;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v18, &qword_1EBD41E38, &qword_1BE0CC4F0);
      }

      else
      {
        v82 = *(v65 + 80);
        v154 = *(v65 + 72);
        v83 = v156 + qword_1EBDAADA8;
        v84 = *(v156 + qword_1EBDAADA8 + 32);
        sub_1BE048964();
        v131 = [v84 confirmationStyle];
        result = [*(v83 + 32) paymentRequest];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v86 = result;
        v87 = [result _isAMPPayment];

        v88 = sub_1BD83BBFC();
        v90 = v89;
        v91 = swift_allocObject();
        v92 = *(v65 + 80);
        v91[5] = *(v65 + 64);
        v91[6] = v92;
        v91[7] = *(v65 + 96);
        v93 = *(v65 + 16);
        v91[1] = *v65;
        v91[2] = v93;
        v94 = *(v65 + 48);
        v91[3] = *(v65 + 32);
        v91[4] = v94;
        sub_1BD0EEF94(v65, &v157);
        v95 = sub_1BE050234();
        sub_1BD321A38();
        sub_1BE04E1F4();
        LOBYTE(v157) = 0;
        v96 = v133;
        *v133 = v154;
        v96[1] = v82;
        v96[2] = v131;
        *(v96 + 24) = v87;
        v96[4] = v88;
        v96[5] = v90;
        v96[6] = sub_1BD323EB0;
        v96[7] = v91;
        v96[8] = 0;
        v96[9] = 0;
        *(v96 + 80) = v95;
        v96[11] = v97;
        v96[12] = v98;
        v96[13] = v99;
        v96[14] = v100;
        *(v96 + 120) = 0;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E80, &qword_1BE0CC560);
        sub_1BD323BD0();
        sub_1BD323CB8();
        v77 = v134;
        sub_1BE04F9A4();
      }

      sub_1BD0DE19C(v77, v64, &qword_1EBD41E40, &qword_1BE0CC4F8);
      swift_storeEnumTagMultiPayload();
      sub_1BD323B44();
      sub_1BD323BD0();
      v101 = v144;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v101, v147, &qword_1EBD41E20, &qword_1BE0CC4D8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E58, &qword_1BE0CC558);
      sub_1BD323AB8();
      sub_1BD323E24();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v101, &qword_1EBD41E20, &qword_1BE0CC4D8);
      sub_1BD0DE53C(v77, &qword_1EBD41E40, &qword_1BE0CC4F8);
      v62 = v151;
    }

    else
    {
      v62 = v151;
      if (v48 == *MEMORY[0x1E69BC978])
      {
        v49 = v135;
        v78 = *(v135 + 88);
        v79 = *(v135 + 96);
        if (v78)
        {
          v80 = swift_allocObject();
          *(v80 + 16) = v78;
          *(v80 + 24) = v79;
          v81 = sub_1BD1839E8;
        }

        else
        {
          v81 = PKEdgeInsetsMake;
          v80 = 0;
        }

        v63 = v150;
        v104 = v147;
        v105 = swift_allocObject();
        v105[2] = v81;
        v105[3] = v80;
        sub_1BD0D44B8(v78, v79);
        v106 = sub_1BE050234();
        sub_1BD321A38();
        sub_1BE04E1F4();
        v160 = 0;
        v169 = 0;
        v161 = sub_1BD1839E0;
        v162 = v105;
        v163 = v106;
        v164 = v107;
        v165 = v108;
        v166 = v109;
        v167 = v110;
        v168 = 0;
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E50, &qword_1BE0CC550);
        sub_1BD3239D8();
        sub_1BE04F9A4();
        v111 = v158;
        *v104 = v157;
        v104[1] = v111;
        v104[2] = *v159;
        *(v104 + 42) = *&v159[10];
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E58, &qword_1BE0CC558);
        sub_1BD323AB8();
        sub_1BD323E24();
        sub_1BE04F9A4();
        v105, v112, v113, v114, v115, v116, v117, v118;
        goto LABEL_16;
      }

      v169 = 1;
      HIBYTE(v168) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E50, &qword_1BE0CC550);
      sub_1BD3239D8();
      sub_1BE04F9A4();
      v102 = v158;
      v103 = v147;
      *v147 = v157;
      v103[1] = v102;
      v103[2] = *v159;
      *(v103 + 42) = *&v159[10];
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E58, &qword_1BE0CC558);
      sub_1BD323AB8();
      sub_1BD323E24();
      sub_1BE04F9A4();
      (*(v33 + 8))(v23, v20);
    }

    v63 = v150;
    v49 = v135;
  }

LABEL_16:
  v119 = 1;
  if (sub_1BE04CB54())
  {
    v120 = sub_1BE04F7B4();
    v121 = v136;
    *v136 = v120;
    *(v121 + 8) = 0;
    *(v121 + 16) = 1;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E98, &qword_1BE0CC578);
    sub_1BD321BA4(v49, (v121 + *(v122 + 44)));
    v123 = v138;
    sub_1BE04E894();
    v124 = v139;
    v125 = v140;
    (*(v139 + 16))(v137, v123, v140);
    sub_1BD32410C(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
    v126 = sub_1BE04E644();
    (*(v124 + 8))(v123, v125);
    *(v121 + *(v63 + 36)) = v126;
    sub_1BD0DE204(v121, v62, &qword_1EBD41E00, &qword_1BE0CC4B8);
    v119 = 0;
  }

  (*(v149 + 56))(v62, v119, 1, v63);
  v127 = v148;
  sub_1BD0DE19C(v28, v148, &qword_1EBD41E48, &qword_1BE0CC500);
  v128 = v152;
  sub_1BD0DE19C(v62, v152, &qword_1EBD41E08, &qword_1BE0CC4C0);
  v129 = v153;
  sub_1BD0DE19C(v127, v153, &qword_1EBD41E48, &qword_1BE0CC500);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E90, &qword_1BE0CC570);
  sub_1BD0DE19C(v128, v129 + *(v130 + 48), &qword_1EBD41E08, &qword_1BE0CC4C0);
  sub_1BD0DE53C(v62, &qword_1EBD41E08, &qword_1BE0CC4C0);
  sub_1BD0DE53C(v28, &qword_1EBD41E48, &qword_1BE0CC500);
  sub_1BD0DE53C(v128, &qword_1EBD41E08, &qword_1BE0CC4C0);
  return sub_1BD0DE53C(v127, &qword_1EBD41E48, &qword_1BE0CC500);
}

void sub_1BD3218D4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    sub_1BE04B6F4();
    v8 = v7;

    (*(v1 + 8))(v4, v0);
    v9 = *MEMORY[0x1E69DD888];
    v10 = sub_1BE052404();
    v8, v11, v12, v13, v14, v15, v16, v17;
    UIAccessibilityPostNotification(v9, v10);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD321A38()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 48);
  v5 = *(v0 + 40);
  v9 = v5;
  if (v10 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v6 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v9, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  result = 11.0;
  if (v5)
  {
    return 12.0;
  }

  return result;
}

id sub_1BD321BA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v71 = sub_1BE04F3D4();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1BE04BD74();
  v4 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v68 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F50, &qword_1BE0E4DE0);
  MEMORY[0x1EEE9AC00](v72);
  v9 = &v68 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F58, &qword_1BE0CC650);
  MEMORY[0x1EEE9AC00](v76);
  v83 = &v68 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F60, &unk_1BE0CC658);
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030, &qword_1BE0B7570);
  MEMORY[0x1EEE9AC00](v16);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F68, &qword_1BE0CC668);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v82 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - v19;
  sub_1BE051C64();
  v21 = MEMORY[0x1E6981CD0];
  v22 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  v88 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F70, &qword_1BE0CC670);
  v90 = v22;
  v91 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1BD324414();
  v79 = v20;
  v23 = v87;
  sub_1BE051C84();
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8068], v23);
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    v26 = sub_1BE04B6F4();
    v28 = v27;

    (*(v4 + 8))(v6, v23);
    v90 = v26;
    v91 = v28;
    sub_1BD0DDEBC();
    sub_1BE048964();
    v29 = v73;
    sub_1BE051744();
    LOBYTE(v26) = sub_1BE0501E4();
    sub_1BD321A38();
    sub_1BE04E1F4();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    (*(v74 + 32))(v9, v29, v75);
    v38 = &v9[*(v72 + 36)];
    *v38 = v26;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = sub_1BE0501F4();
    v40 = *(a1 + 40);
    v90 = v40;
    LOBYTE(v91) = *(a1 + 48);
    if (v91 == 1)
    {
      if (v40)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v41 = sub_1BE050174();
      sub_1BE04CF84();

      v42 = v69;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v90, &qword_1EBD5C6E0, &qword_1BE0C3590);
      (*(v70 + 8))(v42, v71);
      if (v89)
      {
LABEL_7:
        sub_1BE04E1F4();
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v51 = v83;
        sub_1BD0DE204(v9, v83, &qword_1EBD41F50, &qword_1BE0E4DE0);
        v52 = v51 + *(v76 + 36);
        *v52 = v39;
        *(v52 + 8) = v44;
        *(v52 + 16) = v46;
        *(v52 + 24) = v48;
        *(v52 + 32) = v50;
        *(v52 + 40) = 0;
        v53 = sub_1BE04CAE4();
        KeyPath = swift_getKeyPath();
        v55 = swift_allocObject();
        *(v55 + 16) = v53 & 1;
        v56 = v80;
        sub_1BD0DE204(v51, v80, &qword_1EBD41F58, &qword_1BE0CC650);
        v57 = (v56 + *(v81 + 36));
        *v57 = KeyPath;
        v57[1] = sub_1BD10DF54;
        v57[2] = v55;
        v58 = v84;
        sub_1BD0DE204(v56, v84, &qword_1EBD41F60, &unk_1BE0CC658);
        v59 = v77;
        v60 = *(v77 + 16);
        v61 = v82;
        v62 = v78;
        v63 = v79;
        v60(v82, v79, v78);
        v64 = v85;
        sub_1BD0DE19C(v58, v85, &qword_1EBD41F60, &unk_1BE0CC658);
        v65 = v86;
        v60(v86, v61, v62);
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F80, &qword_1BE0CC6A8);
        sub_1BD0DE19C(v64, &v65[*(v66 + 48)], &qword_1EBD41F60, &unk_1BE0CC658);
        sub_1BD0DE53C(v58, &qword_1EBD41F60, &unk_1BE0CC658);
        v67 = *(v59 + 8);
        v67(v63, v62);
        sub_1BD0DE53C(v64, &qword_1EBD41F60, &unk_1BE0CC658);
        return (v67)(v61, v62);
      }
    }

    sub_1BD321A38();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1BD32248C(uint64_t a2@<X8>)
{
  v3 = sub_1BE0501E4();
  sub_1BD321A38();
  sub_1BE04E1F4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0;
}

void sub_1BD3224D8(__n128 a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 == 1 && (sub_1BE04C984() & 1) == 0)
  {
    type metadata accessor for PaymentSheetFooter.AudioPlayer();
    sub_1BD32410C(&qword_1EBD41DF8, type metadata accessor for PaymentSheetFooter.AudioPlayer, &unk_1BE0CC404);
    v4 = sub_1BE04E3C4();
    v4, v5, v6, v7, v8, v9, v10, v11;

    AudioServicesPlaySystemSound(0x573u);
  }
}

uint64_t sub_1BD3225A0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EA8, &qword_1BE0CC588);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EB0, &qword_1BE0CC590);
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - v9;
  sub_1BD3229A8(&v32);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD322DFC();
  *&v5[*(v3 + 36)] = 256;
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EB8, &qword_1BE0CC598);
  v10 = sub_1BD323EB8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  v12 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
  *&v59 = v3;
  *(&v59 + 1) = v11;
  *&v60 = v10;
  *(&v60 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  v13 = v29;
  sub_1BE0510C4();
  sub_1BD0DE53C(v5, &qword_1EBD41EA8, &qword_1BE0CC588);
  v14 = *(v6 + 16);
  v15 = v30;
  v16 = v13;
  v17 = v13;
  v18 = v31;
  v14(v30, v16, v31);
  v55 = v42;
  v56 = v43;
  v57 = v44;
  v51 = v38;
  v52 = v39;
  v53 = v40;
  v54 = v41;
  v47 = v34;
  v48 = v35;
  v49 = v36;
  v50 = v37;
  v45 = v32;
  v46 = v33;
  v58 = 256;
  *(a2 + 208) = 256;
  v19 = v56;
  *(a2 + 160) = v55;
  *(a2 + 176) = v19;
  *(a2 + 192) = v57;
  v20 = v52;
  *(a2 + 96) = v51;
  *(a2 + 112) = v20;
  v21 = v54;
  *(a2 + 128) = v53;
  *(a2 + 144) = v21;
  v22 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v22;
  v23 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v23;
  v24 = v46;
  *a2 = v45;
  *(a2 + 16) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EF0, &qword_1BE0CC5C8);
  v14((a2 + *(v25 + 48)), v15, v18);
  sub_1BD0DE19C(&v45, &v59, &qword_1EBD41EF8, &qword_1BE0CC5D0);
  v26 = *(v6 + 8);
  v26(v17, v18);
  v26(v15, v18);
  v69 = v42;
  v70 = v43;
  v71 = v44;
  v65 = v38;
  v66 = v39;
  v67 = v40;
  v68 = v41;
  v61 = v34;
  v62 = v35;
  v63 = v36;
  v64 = v37;
  v59 = v32;
  v60 = v33;
  v72 = 256;
  return sub_1BD0DE53C(&v59, &qword_1EBD41EF8, &qword_1BE0CC5D0);
}

double sub_1BD3229A8@<D0>(_OWORD *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00, &qword_1BE0CC620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v53 - v4;
  v6 = sub_1BE051584();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BD31FF90())
  {
    v10 = sub_1BE051574();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v11 = sub_1BE0515E4();
    v10, v12, v13, v14, v15, v16, v17, v18;
    (*(v7 + 8))(v9, v6);
    sub_1BE04F814();
    v19 = sub_1BE04F824();
    (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
    v20 = sub_1BE0515B4();
    v11, v21, v22, v23, v24, v25, v26, v27;
    sub_1BD0DE53C(v5, &qword_1EBD41F00, &qword_1BE0CC620);
    v28 = sub_1BE0511D4();
    v29 = sub_1BE0512D4();
    *&v62 = v20;
    *(&v62 + 1) = v28;
    v63 = v29;
    LOWORD(v64) = 1;
    sub_1BD0D4684(&v62);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v31 = swift_getKeyPath();
    sub_1BE04D8B4(&v71);
    KeyPath, v32, v33, v34, v35, v36, v37, v38;
    v31, v39, v40, v41, v42, v43, v44, v45;
    v59 = v75;
    v60 = v76;
    v61 = v77;
    v55 = v71;
    v56 = v72;
    v57 = v73;
    v58 = v74;
    type metadata accessor for PaymentSheetFooter.AudioPlayer();
    sub_1BD32410C(&qword_1EBD41DF8, type metadata accessor for PaymentSheetFooter.AudioPlayer, &unk_1BE0CC404);
    v46 = sub_1BE04E3C4();
    v47 = sub_1BE04E3C4();
    LOBYTE(v71) = 1;
    v66 = v59;
    v67 = v60;
    v68 = v61;
    v62 = v55;
    v63 = v56;
    v64 = v57;
    v65 = v58;
    *&v69 = sub_1BD3241CC;
    *(&v69 + 1) = v46;
    *&v70[0] = sub_1BD3241D4;
    *(&v70[0] + 1) = v47;
    *&v70[1] = 0;
    WORD4(v70[1]) = 1;
    sub_1BD3241DC(&v62);
  }

  v53[6] = v68;
  v53[7] = v69;
  v54[0] = v70[0];
  *(v54 + 11) = *(v70 + 11);
  v53[2] = v64;
  v53[3] = v65;
  v53[4] = v66;
  v53[5] = v67;
  v53[0] = v62;
  v53[1] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F08, &qword_1BE0CC628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F10, &qword_1BE0CC630);
  sub_1BD3241E8();
  sub_1BD32432C();
  sub_1BE04F9A4();
  v48 = v78;
  a2[6] = v77;
  a2[7] = v48;
  a2[8] = v79[0];
  *(a2 + 139) = *(v79 + 11);
  v49 = v74;
  a2[2] = v73;
  a2[3] = v49;
  v50 = v76;
  a2[4] = v75;
  a2[5] = v50;
  result = *&v71;
  v52 = v72;
  *a2 = v71;
  a2[1] = v52;
  return result;
}

uint64_t sub_1BD322DFC()
{
  v1 = v0;
  v2 = sub_1BD3232A0();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_1BD3232A0();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v97 = v9;
  v98 = v8;
  v10 = sub_1BD323478();
  sub_1BD250AA8();
  sub_1BD32410C(&qword_1EBD35E40, sub_1BD250AA8, &protocol conformance descriptor for PKPaymentSheetExperiment);
  v11 = sub_1BE04EEC4();
  v95 = v12;
  v96 = v11;
  v13 = sub_1BD3232A0();
  v15 = v14;
  v16 = v10;
  *&v99[0] = 0xD000000000000010;
  *(&v99[0] + 1) = 0x80000001BE123AF0;
  MEMORY[0x1BFB3F610](v4, v5);
  v5, v17, v18, v19, v20, v21, v22, v23;
  v24 = sub_1BE04E624();
  v25 = sub_1BE051D84();
  v26 = sub_1BE04E634();
  v24, v27, v28, v29, v30, v31, v32, v33;
  v25, v34, v35, v36, v37, v38, v39, v40;
  v41 = sub_1BE04E624();
  v42 = sub_1BE051D84();
  v43 = sub_1BE04E634();
  v41, v44, v45, v46, v47, v48, v49, v50;
  v42, v51, v52, v53, v54, v55, v56, v57;
  v58 = sub_1BE04E604();
  v26, v59, v60, v61, v62, v63, v64, v65;
  v43, v66, v67, v68, v69, v70, v71, v72;
  *&v103 = v96;
  *(&v103 + 1) = v95;
  *&v104 = v98;
  *(&v104 + 1) = v97;
  LOBYTE(v105) = v16;
  *(&v105 + 1) = 0;
  *&v106 = v13;
  *(&v106 + 1) = v15;
  v107 = v99[0];
  v108 = v58;
  v73 = sub_1BD3232A0();
  v75 = v74;
  v101 = v73;
  v102 = v74;
  v76 = swift_allocObject();
  v77 = v1[5];
  v76[5] = v1[4];
  v76[6] = v77;
  v76[7] = v1[6];
  v78 = v1[1];
  v76[1] = *v1;
  v76[2] = v78;
  v79 = v1[3];
  v76[3] = v1[2];
  v76[4] = v79;
  sub_1BD0EEF94(v1, v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EC8, &unk_1BE0CC5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BD323FAC();
  sub_1BD324090();
  sub_1BE051064();
  v76, v80, v81, v82, v83, v84, v85, v86;
  v75, v87, v88, v89, v90, v91, v92, v93;
  v99[2] = v105;
  v99[3] = v106;
  v99[4] = v107;
  v100 = v108;
  v99[0] = v103;
  v99[1] = v104;
  return sub_1BD0DE53C(v99, &qword_1EBD41EC8, &unk_1BE0CC5A0);
}

uint64_t sub_1BD3230E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - v1;
  v3 = *MEMORY[0x1E697E728];
  v4 = sub_1BE04EB24();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_1BD32410C(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1BE052334();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EA8, &qword_1BE0CC588);
    sub_1BD323EB8();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    sub_1BE050B34();
    return sub_1BD0DE53C(v2, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3232A0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1BD31FF90() & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    v8 = swift_getKeyPath();
    sub_1BE04D8B4(v23);
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
    v8, v16, v17, v18, v19, v20, v21, v22;
    v24[4] = v23[4];
    v24[5] = v23[5];
    v24[6] = v23[6];
    v24[0] = v23[0];
    v24[1] = v23[1];
    v24[2] = v23[2];
    v24[3] = v23[3];
    v6 = *&v23[0];
    sub_1BE048C84();
    sub_1BD146D0C(v24);
    return v6;
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v5 = result;
    v6 = sub_1BE04B6F4();

    (*(v1 + 8))(v3, v0);
    return v6;
  }

  __break(1u);
  return result;
}

BOOL sub_1BD323478()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v57);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  if (*(&v57 + 1) != 1)
  {
    return 0;
  }

  if (sub_1BE04CC34())
  {
    v16 = swift_getKeyPath();
    v17 = swift_getKeyPath();
    sub_1BE04D8B4(&v50);
    v16, v18, v19, v20, v21, v22, v23, v24;
    v17, v25, v26, v27, v28, v29, v30, v31;
    v61 = v54;
    v62 = v55;
    v63 = v56;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    v60 = v53;
    sub_1BD146D0C(&v57);
    return v58 == 3;
  }

  else
  {
    v34 = swift_getKeyPath();
    v35 = swift_getKeyPath();
    sub_1BE04D8B4(&v50);
    v34, v36, v37, v38, v39, v40, v41, v42;
    v35, v43, v44, v45, v46, v47, v48, v49;
    v61 = v54;
    v62 = v55;
    v63 = v56;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    v60 = v53;
    sub_1BD146D0C(&v57);
    return v58 == 0;
  }
}

void sub_1BD3235F8(uint64_t a1, void *a2)
{
  if (a2[1])
  {
    v2 = *MEMORY[0x1E69DD888];
    v3 = sub_1BE052404();
    UIAccessibilityPostNotification(v2, v3);
  }
}

uint64_t sub_1BD3236F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD323738(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD3237C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PaymentSheetFooter.AudioPlayer();
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

unint64_t sub_1BD323808()
{
  result = qword_1EBD41DD0;
  if (!qword_1EBD41DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41DB8, &qword_1BE0CC458);
    sub_1BD323894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41DD0);
  }

  return result;
}

unint64_t sub_1BD323894()
{
  result = qword_1EBD41DD8;
  if (!qword_1EBD41DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41DB0, &qword_1BE0CC450);
    sub_1BD323920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41DD8);
  }

  return result;
}

unint64_t sub_1BD323920()
{
  result = qword_1EBD41DE0;
  if (!qword_1EBD41DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41DA8, &qword_1BE0CC448);
    sub_1BD0DE4F4(&qword_1EBD41DE8, &qword_1EBD41DA0, &qword_1BE0CC440, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41DE0);
  }

  return result;
}

unint64_t sub_1BD3239D8()
{
  result = qword_1EBD36858;
  if (!qword_1EBD36858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E50, &qword_1BE0CC550);
    sub_1BD323A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36858);
  }

  return result;
}

unint64_t sub_1BD323A64()
{
  result = qword_1EBD365A0;
  if (!qword_1EBD365A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD365A0);
  }

  return result;
}

unint64_t sub_1BD323AB8()
{
  result = qword_1EBD41E60;
  if (!qword_1EBD41E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E20, &qword_1BE0CC4D8);
    sub_1BD323B44();
    sub_1BD323BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41E60);
  }

  return result;
}

unint64_t sub_1BD323B44()
{
  result = qword_1EBD41E68;
  if (!qword_1EBD41E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E40, &qword_1BE0CC4F8);
    sub_1BD323BD0();
    sub_1BD323CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41E68);
  }

  return result;
}

unint64_t sub_1BD323BD0()
{
  result = qword_1EBD41E70;
  if (!qword_1EBD41E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E38, &qword_1BE0CC4F0);
    sub_1BD0DE4F4(&qword_1EBD41E78, &qword_1EBD41E30, &qword_1BE0CC4E8, MEMORY[0x1E6981870]);
    sub_1BD32410C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41E70);
  }

  return result;
}

unint64_t sub_1BD323CB8()
{
  result = qword_1EBD367F8;
  if (!qword_1EBD367F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E80, &qword_1BE0CC560);
    sub_1BD323D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367F8);
  }

  return result;
}

unint64_t sub_1BD323D44()
{
  result = qword_1EBD36850;
  if (!qword_1EBD36850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E88, &qword_1BE0CC568);
    sub_1BD323DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36850);
  }

  return result;
}

unint64_t sub_1BD323DD0()
{
  result = qword_1EBD36598;
  if (!qword_1EBD36598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36598);
  }

  return result;
}

unint64_t sub_1BD323E24()
{
  result = qword_1EBD36740;
  if (!qword_1EBD36740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E58, &qword_1BE0CC558);
    sub_1BD3239D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36740);
  }

  return result;
}

unint64_t sub_1BD323EB8()
{
  result = qword_1EBD41EC0;
  if (!qword_1EBD41EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41EA8, &qword_1BE0CC588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41EC8, &unk_1BE0CC5A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    sub_1BD323FAC();
    sub_1BD324090();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41EC0);
  }

  return result;
}

unint64_t sub_1BD323FAC()
{
  result = qword_1EBD41ED0;
  if (!qword_1EBD41ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41EC8, &unk_1BE0CC5A0);
    sub_1BD0DE4F4(&qword_1EBD41ED8, &qword_1EBD41EE0, &unk_1BE0CC5B0, MEMORY[0x1E6981810]);
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0, &unk_1BE0C9F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41ED0);
  }

  return result;
}

unint64_t sub_1BD324090()
{
  result = qword_1EBD41EE8;
  if (!qword_1EBD41EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41EE8);
  }

  return result;
}

uint64_t sub_1BD32410C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_25(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD0D45CC(*(v8 + 32), *(v8 + 40), *(v8 + 48), v9, v10, v11, v12, v13);
  sub_1BD0D4604(*(v8 + 56), *(v8 + 64), v14, v15, v16, v17, v18, v19);
  *(v8 + 72), v20, v21, v22, v23, v24, v25, v26;
  *(v8 + 96), v27, v28, v29, v30, v31, v32, v33;
  if (*(v8 + 104))
  {
    *(v8 + 112), v34, v35, v36, v37, v38, v39, v40;
  }

  return swift_deallocObject();
}

unint64_t sub_1BD3241E8()
{
  result = qword_1EBD41F18;
  if (!qword_1EBD41F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F08, &qword_1BE0CC628);
    sub_1BD324274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F18);
  }

  return result;
}

unint64_t sub_1BD324274()
{
  result = qword_1EBD41F20;
  if (!qword_1EBD41F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F28, &qword_1BE0CC638);
    sub_1BD0DE4F4(&qword_1EBD41F30, &qword_1EBD41F38, &unk_1BE0CC640, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F20);
  }

  return result;
}

unint64_t sub_1BD32432C()
{
  result = qword_1EBD41F40;
  if (!qword_1EBD41F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F10, &qword_1BE0CC630);
    sub_1BD3243B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F40);
  }

  return result;
}

unint64_t sub_1BD3243B8()
{
  result = qword_1EBD41F48;
  if (!qword_1EBD41F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F48);
  }

  return result;
}

unint64_t sub_1BD324414()
{
  result = qword_1EBD41F78;
  if (!qword_1EBD41F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F70, &qword_1BE0CC670);
    sub_1BD0EEEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F78);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD3244B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD3244FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD324550()
{
  result = qword_1EBD41F88;
  if (!qword_1EBD41F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F90, &qword_1BE0CC6E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41DB8, &qword_1BE0CC458);
    type metadata accessor for PKAuthenticatorESBiometricAnnotation(255);
    sub_1BD323808();
    sub_1BD32410C(&qword_1EBD41DF0, type metadata accessor for PKAuthenticatorESBiometricAnnotation, &unk_1BE0B6528);
    swift_getOpaqueTypeConformance2();
    sub_1BD32410C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F88);
  }

  return result;
}

unint64_t sub_1BD32469C()
{
  result = qword_1EBD41F98;
  if (!qword_1EBD41F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F98);
  }

  return result;
}

id sub_1BD3246F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTextAlignment_];
  [v0 setAdjustsFontSizeToFitWidth_];
  v1 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38]);
  [v0 setFont_];

  LODWORD(v2) = 1132068864;
  [v0 setContentCompressionResistancePriority:1 forAxis:v2];
  LODWORD(v3) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  return v0;
}

void sub_1BD3247CC(id a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    [a1 pkui:0 shakeWithCompletion:?];
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_1BE048C84();
  }

  else
  {
    a4 = 0xE100000000000000;
  }

  v16 = sub_1BE052404();
  a4, v9, v10, v11, v12, v13, v14, v15;
  [a1 setText_];
}

unint64_t sub_1BD324884()
{
  result = qword_1EBD41FA0;
  if (!qword_1EBD41FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41FA0);
  }

  return result;
}

double ACHCredentialDetailsView.init(model:credential:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ACHCredentialDetailsView(0);
  v7 = &a3[v6[6]];
  sub_1BE051694();
  *v7 = v23;
  *(v7 + 1) = *(&v23 + 1);
  v8 = &a3[v6[7]];
  sub_1BE051694();
  *v8 = v23;
  *(v8 + 1) = *(&v23 + 1);
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD324AE4();
  sub_1BE048964();
  *a3 = sub_1BE04E954();
  *(a3 + 1) = v9;
  v10 = v6[5];
  v11 = sub_1BE049364();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&a3[v10], a2, v11);
  sub_1BE049314();
  v13 = &a3[v6[8]];
  sub_1BE051694();
  *v13 = v23;
  *(v13 + 2) = v24;
  sub_1BE0492E4();
  v14 = &a3[v6[9]];
  sub_1BE051694();
  a1, v15, v16, v17, v18, v19, v20, v21;
  (*(v12 + 8))(a2, v11);
  result = *&v23;
  *v14 = v23;
  *(v14 + 2) = v24;
  return result;
}

uint64_t type metadata accessor for ACHCredentialDetailsView(uint64_t a1)
{
  result = qword_1EBD41FF0;
  if (!qword_1EBD41FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD324AE4()
{
  result = qword_1EBD41FA8;
  if (!qword_1EBD41FA8)
  {
    type metadata accessor for CredentialCenterModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41FA8);
  }

  return result;
}

uint64_t ACHCredentialDetailsView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FB0, &qword_1BE0CC7D0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6[-v3];
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FB8, &qword_1BE0CC7D8);
  sub_1BD324E30();
  sub_1BE0504A4();
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FD8, &unk_1BE0CC7E8);
  sub_1BD0DE4F4(&qword_1EBD41FE0, &qword_1EBD41FB0, &qword_1BE0CC7D0, MEMORY[0x1E697CCF0]);
  sub_1BD325E94();
  sub_1BE051034();
  return (*(v2 + 8))(v4, v1);
}

void sub_1BD324CE4(uint64_t a1)
{
  v1 = sub_1BE052404();
  v2 = PKLocalizedPaymentString(v1);

  if (v2)
  {
    sub_1BE052434();

    MEMORY[0x1EEE9AC00](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FD0, &qword_1BE0CC7E0);
    sub_1BD0DE4F4(&qword_1EBD41FC8, &qword_1EBD41FD0, &qword_1BE0CC7E0, MEMORY[0x1E697CD20]);
    sub_1BD0DDEBC();
    sub_1BE051A14();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BD324E30()
{
  result = qword_1EBD41FC0;
  if (!qword_1EBD41FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41FB8, &qword_1BE0CC7D8);
    sub_1BD0DE4F4(&qword_1EBD41FC8, &qword_1EBD41FD0, &qword_1BE0CC7E0, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41FC0);
  }

  return result;
}

uint64_t sub_1BD324EF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42018, &qword_1BE0CC8D8);
  sub_1BD328010();
  return sub_1BE0504E4();
}

void sub_1BD324F64(char *a1@<X0>, void *a2@<X8>)
{
  v82 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42040, &qword_1BE0CC8E8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v70 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42048, &qword_1BE0CC8F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v70 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v70 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v70 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42050, &qword_1BE0CC8F8);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v70 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42030, &qword_1BE0CC8E0);
  MEMORY[0x1EEE9AC00](v79);
  v72 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42058, &unk_1BE0CC900);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v71 = &v70 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v26 = a1;
  v27 = &a1[*(type metadata accessor for ACHCredentialDetailsView(0) + 24)];
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v83) = v28;
  v84 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v30 = v87;
  v31 = sub_1BE052404();
  v32 = PKLocalizedPaymentString(v31);

  if (v30 == 1)
  {
    if (v32)
    {
      v33 = sub_1BE052434();
      v35 = v34;

      v83 = v33;
      v84 = v35;
      MEMORY[0x1EEE9AC00](v36);
      *(&v70 - 2) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590, &qword_1BE0CA980);
      sub_1BD0DE4F4(&qword_1EBD415D8, &qword_1EBD41590, &qword_1BE0CA980, MEMORY[0x1E697D7E0]);
      sub_1BD0DDEBC();
      v77 = v25;
      sub_1BE04E824();
      v37 = sub_1BE052404();
      v38 = PKLocalizedPaymentString(v37);

      if (v38)
      {
        v39 = sub_1BE052434();
        v41 = v40;

        v83 = v39;
        v84 = v41;
        MEMORY[0x1EEE9AC00](v42);
        *(&v70 - 2) = v26;
        v43 = v71;
        sub_1BE04E824();
        v44 = *(v16 + 16);
        v44(v20, v77, v15);
        v45 = v70;
        v44(v70, v43, v15);
        v46 = v72;
        v44(v72, v20, v15);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42068, &unk_1BE0CC920);
        v44((v46 + *(v47 + 48)), v45, v15);
        v48 = *(v16 + 8);
        v48(v45, v15);
        v48(v20, v15);
        sub_1BD328110(v46, v80);
        swift_storeEnumTagMultiPayload();
        v49 = MEMORY[0x1E6981F48];
        sub_1BD0DE4F4(&qword_1EBD42028, &qword_1EBD42030, &qword_1BE0CC8E0, MEMORY[0x1E6981F48]);
        sub_1BD0DE4F4(&qword_1EBD42038, &qword_1EBD42040, &qword_1BE0CC8E8, v49);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v46, &qword_1EBD42030, &qword_1BE0CC8E0);
        v48(v43, v15);
        v48(v77, v15);
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v32)
  {
    goto LABEL_10;
  }

  v50 = sub_1BE052434();
  v52 = v51;

  v87 = v50;
  v88 = v52;
  MEMORY[0x1EEE9AC00](v53);
  *(&v70 - 2) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD90, &qword_1BE0BBAC0);
  v54 = sub_1BE04FE44();
  v83 = MEMORY[0x1E6981148];
  v84 = v54;
  v85 = MEMORY[0x1E6981138];
  v86 = MEMORY[0x1E69803B8];
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  v55 = v77;
  sub_1BE04E824();
  v56 = sub_1BE052404();
  v57 = PKLocalizedPaymentString(v56);

  if (!v57)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v58 = sub_1BE052434();
  v60 = v59;

  v83 = v58;
  v84 = v60;
  MEMORY[0x1EEE9AC00](v61);
  *(&v70 - 2) = v26;
  v62 = v75;
  sub_1BE04E824();
  v63 = *(v5 + 16);
  v64 = v73;
  v63(v73, v55, v4);
  v65 = v74;
  v63(v74, v62, v4);
  v66 = v76;
  v63(v76, v64, v4);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42060, &unk_1BE0CC910);
  v63((v66 + *(v67 + 48)), v65, v4);
  v68 = *(v5 + 8);
  v68(v65, v4);
  v68(v64, v4);
  sub_1BD05E3BC(v66, v80);
  swift_storeEnumTagMultiPayload();
  v69 = MEMORY[0x1E6981F48];
  sub_1BD0DE4F4(&qword_1EBD42028, &qword_1EBD42030, &qword_1BE0CC8E0, MEMORY[0x1E6981F48]);
  sub_1BD0DE4F4(&qword_1EBD42038, &qword_1EBD42040, &qword_1BE0CC8E8, v69);
  sub_1BE04F9A4();
  sub_1BD05E42C(v66);
  v68(v62, v4);
  v68(v55, v4);
}

uint64_t sub_1BD325960(uint64_t a1)
{
  sub_1BE04F624();
  type metadata accessor for ACHCredentialDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516C4();
  return sub_1BE051E04();
}

uint64_t sub_1BD325A48(uint64_t a1)
{
  sub_1BE04F624();
  type metadata accessor for ACHCredentialDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516C4();
  return sub_1BE051E04();
}

void sub_1BD325B30(uint64_t a1)
{
  v2 = sub_1BE04FE44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ACHCredentialDetailsView(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 2);
  v28 = v7;
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v28 = v31;
  sub_1BD0DDEBC();
  v9 = sub_1BE0506C4();
  v11 = v10;
  v13 = v12;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  v15 = (v14 & 1);
  LOBYTE(v29) = v14 & 1;
  v30 = v12;
  sub_1BE04FE34();
  sub_1BE050A74();
  (*(v3 + 8))(v5, v2);
  sub_1BD0DDF10(v9, v11, v15, v16, v17, v18, v19, v20);
  v13, v21, v22, v23, v24, v25, v26, v27;
}

void sub_1BD325CD0(uint64_t a1)
{
  v2 = sub_1BE04FE44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ACHCredentialDetailsView(0) + 32));
  v7 = *v6;
  v8 = *(v6 + 2);
  v28 = v7;
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v28 = v31;
  sub_1BD0DDEBC();
  v9 = sub_1BE0506C4();
  v11 = v10;
  v13 = v12;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  v15 = (v14 & 1);
  LOBYTE(v29) = v14 & 1;
  v30 = v12;
  sub_1BE04FE34();
  sub_1BE050A74();
  (*(v3 + 8))(v5, v2);
  sub_1BD0DDF10(v9, v11, v15, v16, v17, v18, v19, v20);
  v13, v21, v22, v23, v24, v25, v26, v27;
}

unint64_t sub_1BD325E94()
{
  result = qword_1EBD41FE8;
  if (!qword_1EBD41FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41FD8, &unk_1BE0CC7E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41FE8);
  }

  return result;
}

uint64_t sub_1BD325FA8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42008, &qword_1BE0CC870);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v44 - v3;
  v4 = type metadata accessor for ACHCredentialDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42010, &qword_1BE0CC878);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v44 - v10;
  v12 = v1 + *(v4 + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v51) = v13;
  v52 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v15 = v53;
  sub_1BD327C24(v2, &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1BD327C88(&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1BE051704();
  if (v15 == 1)
  {
    v18 = v2 + *(v4 + 28);
    v19 = *v18;
    v20 = *(v18 + 8);
    v53 = v19;
    v54 = v20;
    v21 = sub_1BE0516C4();
    v22 = v51;
    v23 = v52;
    MEMORY[0x1EEE9AC00](v21);
    *(&v44 - 2) = v2;
    v24 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BE050EE4();
    v23, v25, v26, v27, v28, v29, v30, v31;
    v22, v32, v33, v34, v35, v36, v37, v38;
    (*(v46 + 8))(v9, v7);
    v39 = v45;
    v40 = v47;
    (*(v45 + 16))(v49, v11, v47);
    swift_storeEnumTagMultiPayload();
    v51 = v7;
    v52 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v39 + 8))(v11, v40);
  }

  else
  {
    v42 = v46;
    (*(v46 + 16))(v49, v9, v7);
    swift_storeEnumTagMultiPayload();
    v43 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v51 = v7;
    v52 = v43;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v42 + 8))(v9, v7);
  }
}

double sub_1BD32654C(uint64_t a1)
{
  v2 = type metadata accessor for ACHCredentialDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_1BE0528D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BD327C24(a1, v5);
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v10;
  v12[3] = v13;
  sub_1BD327C88(v5, v12 + v11);
  v14 = sub_1BD122C00(0, 0, v8, &unk_1BE0CC888, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  return result;
}

uint64_t sub_1BD326704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = sub_1BE04D214();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = sub_1BE049394();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v8 = sub_1BE049364();
  v4[38] = v8;
  v4[39] = *(v8 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = sub_1BE0528A4();
  v4[42] = sub_1BE052894();
  v10 = sub_1BE052844();
  v4[43] = v10;
  v4[44] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD326928, v10, v9);
}

uint64_t sub_1BD326928()
{
  v1 = *(v0 + 208);
  *(v0 + 360) = *(v1 + 8);
  v2 = type metadata accessor for ACHCredentialDetailsView(0);
  *(v0 + 368) = v2;
  *(v0 + 480) = v2[5];
  v3 = (v1 + v2[8]);
  v4 = *v3;
  v5 = *(v3 + 2);
  *(v0 + 80) = v4;
  *(v0 + 96) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v6 = *(v0 + 136);
  *(v0 + 376) = *(v0 + 128);
  *(v0 + 384) = v6;
  v7 = (v1 + v2[9]);
  v8 = *v7;
  v9 = *(v7 + 2);
  *(v0 + 104) = v8;
  *(v0 + 120) = v9;
  sub_1BE0516A4();
  v10 = *(v0 + 152);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 400) = v10;
  *(v0 + 408) = sub_1BE049344();
  *(v0 + 416) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BD326A3C, 0, 0);
}

uint64_t sub_1BD326A3C()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v12 = *(v0 + 288);
  v4 = *(v0 + 272);
  v11 = *(v0 + 264);
  v5 = *(*(v0 + 312) + 16);
  v5(v1, *(v0 + 208) + *(v0 + 480), v2);
  sub_1BE0492F4();
  sub_1BE049324();
  sub_1BE049354();
  v5(v3, v1, v2);
  v6 = *MEMORY[0x1E6967770];
  v7 = *(v4 + 104);
  v7(v3, v6, v11);
  v5(v12, v1, v2);
  v7(v12, v6, v11);
  v8 = swift_task_alloc();
  *(v0 + 424) = v8;
  *v8 = v0;
  v8[1] = sub_1BD326BF4;
  v9 = *(v0 + 288);

  return MEMORY[0x1EEDC1528](v9);
}

uint64_t sub_1BD326BF4()
{
  v2 = *v1;
  v2[54] = v0;

  v3 = v2[36];
  v4 = v2[34];
  v5 = v2[33];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[58] = v6;
    v2[59] = v7;
    v6(v3, v5);
    v8 = sub_1BD32714C;
  }

  else
  {
    v2[55] = v6;
    v2[56] = v7;
    v6(v3, v5);
    v8 = sub_1BD326D78;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1BD326D78(uint64_t a1)
{
  *(v1 + 456) = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD326E04, v3, v2);
}

uint64_t sub_1BD326E04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = (v8 + 16);
  v10 = *(v8 + 432);
  v11 = *(v8 + 256);
  *(v8 + 456), a2, a3, a4, a5, a6, a7, a8;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4((v8 + 192));
  v13, v14, v15, v16, v17, v18, v19, v20;
  KeyPath, v21, v22, v23, v24, v25, v26, v27;
  v28 = *(v8 + 192);
  v29 = v28[2];
  v28, v30, v31, v32, v33, v34, v35, v36;
  sub_1BE0492D4();
  v37 = swift_task_alloc();
  v37[2] = v11;
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = sub_1BE04D8A4();
  v42 = v41;
  v43 = sub_1BD1DA97C(sub_1BD327FE0, v37);
  v44 = *(*v42 + 16);
  if (v44 < v43)
  {
    __break(1u);
LABEL_11:
    v40 = sub_1BD1D7C4C(0, v40[2] + 1, 1, v40);
    *v37 = v40;
    goto LABEL_4;
  }

  v109 = v29;
  v45 = *(v8 + 248);
  v46 = *(v8 + 256);
  v47 = *(v8 + 240);
  sub_1BD1DD4E0(v43, v44);

  (v40)(v8 + 16, 0);
  v39, v48, v49, v50, v51, v52, v53, v54;
  v38, v55, v56, v57, v58, v59, v60, v61;
  (*(v45 + 8))(v46, v47);
  v62 = swift_getKeyPath();
  v63 = swift_getKeyPath();
  sub_1BE04D8B4((v8 + 200));
  v63, v64, v65, v66, v67, v68, v69, v70;
  v62, v71, v72, v73, v74, v75, v76, v77;
  v78 = *(v8 + 200);
  v79 = v78[2];
  v78, v80, v81, v82, v83, v84, v85, v86;
  if (v79 >= v109)
  {
    goto LABEL_7;
  }

  v42 = v8 + 48;
  (*(*(v8 + 272) + 16))(*(v8 + 280), *(v8 + 296), *(v8 + 264));
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v38 = sub_1BE04D8A4();
  v37 = v87;
  v40 = *v87;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v37 = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v90 = v40[2];
  v89 = v40[3];
  if (v90 >= v89 >> 1)
  {
    v40 = sub_1BD1D7C4C((v89 > 1), v90 + 1, 1, v40);
    *v37 = v40;
  }

  v92 = *(v8 + 272);
  v91 = *(v8 + 280);
  v93 = *(v8 + 264);
  v40[2] = v90 + 1;
  (*(v92 + 32))(v40 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v90, v91, v93);
  (v38)(v42, 0);
  v10, v94, v95, v96, v97, v98, v99, v100;
  v9, v101, v102, v103, v104, v105, v106, v107;
LABEL_7:

  return MEMORY[0x1EEE6DFA0](sub_1BD327400, 0, 0);
}

uint64_t sub_1BD32714C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  (*(v0 + 464))(*(v0 + 296), *(v0 + 264));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1BD3271DC, v4, v5);
}

uint64_t sub_1BD3271DC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 432);
  *(v8 + 336), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D1E4();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v8 + 432);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BD026000, v11, v12, "Error updating ACH credential: %@", v14, 0xCu);
    sub_1BD0DE53C(v15, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v18 = *(v8 + 432);
  v19 = *(v8 + 368);
  v21 = *(v8 + 224);
  v20 = *(v8 + 232);
  v23 = *(v8 + 208);
  v22 = *(v8 + 216);

  (*(v21 + 8))(v20, v22);
  v24 = v23 + *(v19 + 28);
  v25 = *(v24 + 8);
  *(v8 + 160) = *v24;
  *(v8 + 168) = v25;
  *(v8 + 484) = 1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();

  v25, v26, v27, v28, v29, v30, v31, v32;

  v33 = *(v8 + 8);

  return v33();
}

uint64_t sub_1BD327400()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  (*(v0 + 440))(*(v0 + 296), *(v0 + 264));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1BD327490, v4, v5);
}

uint64_t sub_1BD327490(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 368);
  v10 = *(v8 + 208);
  *(v8 + 336), a2, a3, a4, a5, a6, a7, a8;
  v11 = (v10 + *(v9 + 24));
  v12 = *v11;
  v13 = *(v11 + 1);
  *(v8 + 176) = v12;
  *(v8 + 184) = v13;
  *(v8 + 485) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();

  v14 = *(v8 + 8);

  return v14();
}

void sub_1BD327588(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedPaymentString(v2);

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    *a1 = sub_1BE0506C4();
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD327634@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ACHCredentialDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BD327C24(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BD327C88(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  static BankCredentialListView.invalidInputErrorAlert(action:)(sub_1BD327E64, a2);
  v8, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

double sub_1BD327740(uint64_t a1)
{
  type metadata accessor for ACHCredentialDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

double sub_1BD3277B0(uint64_t a1)
{
  type metadata accessor for ACHCredentialDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

void sub_1BD327824(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedPaymentString(v2);

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    *a1 = sub_1BE0506C4();
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3278D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FB0, &qword_1BE0CC7D0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6[-v3];
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FB8, &qword_1BE0CC7D8);
  sub_1BD324E30();
  sub_1BE0504A4();
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FD8, &unk_1BE0CC7E8);
  sub_1BD0DE4F4(&qword_1EBD41FE0, &qword_1EBD41FB0, &qword_1BE0CC7D0, MEMORY[0x1E697CCF0]);
  sub_1BD325E94();
  sub_1BE051034();
  return (*(v2 + 8))(v4, v1);
}

void sub_1BD327AA0(uint64_t a1)
{
  sub_1BD327B74(319);
  if (v1 <= 0x3F)
  {
    sub_1BE049364();
    if (v2 <= 0x3F)
    {
      sub_1BD327BD8(319, &qword_1EBD496E0, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1BD327BD8(319, &qword_1EBD40458, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD327B74(uint64_t a1)
{
  if (!qword_1EBD42000)
  {
    type metadata accessor for CredentialCenterModel(255);
    sub_1BD324AE4();
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD42000);
    }
  }
}

void sub_1BD327BD8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BE0516D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD327C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ACHCredentialDetailsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD327C88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ACHCredentialDetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_26()
{
  v1 = (type metadata accessor for ACHCredentialDetailsView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[7];
  v11 = sub_1BE049364();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  *(v2 + v1[8] + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v2 + v1[9] + 8), v19, v20, v21, v22, v23, v24, v25;
  v26 = v2 + v1[10];
  *(v26 + 8), v27, v28, v29, v30, v31, v32, v33;
  *(v26 + 16), v34, v35, v36, v37, v38, v39, v40;
  v41 = v2 + v1[11];
  *(v41 + 8), v42, v43, v44, v45, v46, v47, v48;
  *(v41 + 16), v49, v50, v51, v52, v53, v54, v55;

  return swift_deallocObject();
}

uint64_t sub_1BD327E7C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ACHCredentialDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD327EF0(uint64_t a1)
{
  v4 = *(type metadata accessor for ACHCredentialDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD326704(a1, v6, v7, v1 + v5);
}

unint64_t sub_1BD328010()
{
  result = qword_1EBD42020;
  if (!qword_1EBD42020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42018, &qword_1BE0CC8D8);
    v1 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD42028, &qword_1EBD42030, &qword_1BE0CC8E0, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD42038, &qword_1EBD42040, &qword_1BE0CC8E8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42020);
  }

  return result;
}

uint64_t sub_1BD328110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42030, &qword_1BE0CC8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BD328188(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_localAuthenticationContext;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v7 = OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillManager;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69B8680]) init];
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillCardDescriptors] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication] = xmmword_1BE0CC930;
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_identifier];
  *v8 = 0xD00000000000001DLL;
  *(v8 + 1) = 0x80000001BE123D50;
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_groupsViewController] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

char *sub_1BD3283AC()
{
  v1 = type metadata accessor for AutoFillFPANCardsView(0);
  v2 = (v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillCardDescriptors);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication);
  v47 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication + 8);
  v7 = v47;
  v48 = v6;
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_groupsViewController);
  v45 = v5;
  v46 = v8;
  v50 = type metadata accessor for AutoFillCardsViewController();
  v49 = objc_allocWithZone(v50);
  v55 = 0;
  sub_1BD041A38(v6, v7);
  v9 = v8;
  sub_1BD041A38(v6, v7);
  v51 = v9;
  sub_1BE048C84();
  sub_1BE051694();
  v10 = v53;
  *v4 = v52;
  *(v4 + 1) = v10;
  type metadata accessor for DescriptorsModel(0);
  swift_allocObject();
  sub_1BD8AA788();
  sub_1BD329898(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
  v11 = sub_1BE04E954();
  v13 = v12;
  *(v4 + 2) = v11;
  *(v4 + 3) = v12;
  v14 = v2[8];
  *&v4[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  v15 = v2[9];
  sub_1BE052434();
  v16 = *MEMORY[0x1E69BC6D8];
  v17 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v17 initWithSuiteName_];
  *&v4[v15] = sub_1BE04E124();
  v18 = v2[10];
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *&v4[v18] = sub_1BE04E124();
  v19 = v2[12];
  *&v4[v2[11]] = 0;
  *&v4[v19] = v46;
  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v45;
  sub_1BE04D8C4();
  v20 = *(v13 + 24);
  v21 = *(v13 + 32);
  v23 = v47;
  v22 = v48;
  *(v13 + 24) = v48;
  *(v13 + 32) = v23;
  sub_1BD030220(v20, v21, v24, v25, v26, v27, v28, v29);
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD420B8, &unk_1BE100CE0));
  v31 = sub_1BE04F894();
  v32 = v49;
  *&v49[OBJC_IVAR___PKAutoFillCardsViewController_hostingVC] = v31;
  *&v32[OBJC_IVAR___PKAutoFillCardsViewController_context] = 0;
  v54.receiver = v32;
  v54.super_class = v50;
  v33 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
  v34 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
  swift_beginAccess();
  v35 = *&v33[v34];
  v36 = v33;
  [v36 addChildViewController_];

  sub_1BD1245AC(v22, v23, v37, v38, v39, v40, v41, v42);
  return v36;
}

void sub_1BD328740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0C63C0;
  sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
  *(inited + 32) = sub_1BE053054();
  *(inited + 40) = sub_1BE053054();
  *(inited + 48) = sub_1BE053054();
  sub_1BD112388(inited);
  v9 = v8;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BD22CFF8();
  v10 = sub_1BE052A24();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_1BD329880;
  v30 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3293A4;
  aBlock[3] = &block_descriptor_58;
  v19 = _Block_copy(aBlock);
  v20 = v30;
  v21 = v3;
  sub_1BE048964();
  v20, v22, v23, v24, v25, v26, v27, v28;
  [v6 activeFPANCardsWithOptions:7 allowedCardTypes:v10 sortType:1 completion:v19];
  _Block_release(v19);
}

void sub_1BD328914(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v15 = a1;
  }

  v16 = *&a2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillCardDescriptors];
  *&a2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillCardDescriptors] = v15;
  sub_1BE048C84();
  v16, v17, v18, v19, v20, v21, v22, v23;
  if (PKPasscodeEnabled())
  {
    v24 = swift_allocObject();
    v24[2] = a3;
    v24[3] = a4;
    v24[4] = a2;
    sub_1BE048964();
    v25 = a2;
    sub_1BD328FE4(sub_1BD32988C, v24);

    v24, v26, v27, v28, v29, v30, v31, v32;
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v33 = sub_1BE052D54();
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = a4;
    aBlock[4] = sub_1BD32990C;
    v47 = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_17_1;
    v35 = _Block_copy(aBlock);
    v36 = v47;
    sub_1BE048964();
    v36, v37, v38, v39, v40, v41, v42, v43;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD329898(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v14, v10, v35);
    _Block_release(v35);

    (*(v45 + 8))(v10, v8);
    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_1BD328CA4(void *a1, unint64_t a2, uint64_t (*a3)(void, double), uint64_t a4, uint64_t a5)
{
  v10 = sub_1BE051F54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    return a3(0, v17);
  }

  v21 = (a5 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication);
  v47 = v11;
  v48 = v16;
  v22 = *(a5 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication);
  v23 = v21[1];
  *v21 = a1;
  v21[1] = a2;
  sub_1BD030394(a1, a2);
  sub_1BD041A38(a1, a2);
  sub_1BD1245AC(v22, v23, v24, v25, v26, v27, v28, v29);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v30 = sub_1BE052D54();
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  aBlock[4] = sub_1BD19E0B8;
  v50 = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_35_0;
  v32 = _Block_copy(aBlock);
  v33 = v50;
  sub_1BE048964();
  v33, v34, v35, v36, v37, v38, v39, v40;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD329898(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v19, v13, v32);
  _Block_release(v32);

  sub_1BD030220(a1, a2, v41, v42, v43, v44, v45, v46);
  (*(v47 + 8))(v13, v10);
  return (*(v15 + 8))(v19, v48);
}

void sub_1BD328FE4(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v55 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2B0, &unk_1BE0CCA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  *(inited + 32) = 2;
  v54 = inited + 32;
  v9 = *(v3 + 104);
  v9(v7, *MEMORY[0x1E69B80D8], v2);
  v10 = PKPassKitBundle();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    v15 = *(v3 + 8);
    v15(v7, v2);
    v16 = MEMORY[0x1E69E6158];
    *(inited + 40) = v12;
    *(inited + 48) = v14;
    *(inited + 64) = v16;
    *(inited + 72) = 1021;
    v17 = v58;
    v9(v58, *MEMORY[0x1E69B80D0], v2);
    v18 = PKPassKitBundle();
    if (v18)
    {
      v19 = v18;
      v20 = sub_1BE04B6F4();
      v22 = v21;

      v15(v17, v2);
      *(inited + 104) = MEMORY[0x1E69E6158];
      *(inited + 80) = v20;
      *(inited + 88) = v22;
      v23 = sub_1BD1AB050(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE20, &unk_1BE10BC70);
      swift_arrayDestroy();
      v24 = v57;
      v25 = *&v57[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_localAuthenticationContext];
      v26 = sub_1BD1A7FCC(v23);
      v23, v27, v28, v29, v30, v31, v32, v33;
      v34 = sub_1BE052224();
      v26, v35, v36, v37, v38, v39, v40, v41;
      v42 = swift_allocObject();
      v43 = v56;
      v42[2] = v55;
      v42[3] = v43;
      v42[4] = v24;
      aBlock[4] = sub_1BD3298E0;
      v60 = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD1AA864;
      aBlock[3] = &block_descriptor_23_3;
      v44 = _Block_copy(aBlock);
      v45 = v60;
      sub_1BE048964();
      v46 = v24;
      v45, v47, v48, v49, v50, v51, v52, v53;
      [v25 evaluatePolicy:1025 options:v34 reply:v44];
      _Block_release(v44);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD3293A4(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD420C0, 0x1E69B8678);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v4(v2);
  v3, v5, v6, v7, v8, v9, v10, v11;

  v2, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD32942C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1BE051F54();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE051FA4();
  v13 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v31 = sub_1BE052D54();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1BD3298EC;
  v35 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_29_3;
  v17 = _Block_copy(aBlock);
  v18 = v35;
  sub_1BE048C84();
  v19 = a2;
  sub_1BE048964();
  v20 = a5;
  v18, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD329898(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v28 = v31;
  MEMORY[0x1BFB3FDF0](0, v15, v12, v17);
  _Block_release(v17);

  (*(v33 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v32);
}

void sub_1BD329724(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t), uint64_t a4, uint64_t a5)
{
  if (!a1 || a2)
  {
    (a3)(0, 0xF000000000000000, a3, a4, a5);
  }

  else
  {
    v6 = [*(a5 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_localAuthenticationContext) externalizedContext];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1BE04AAC4();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    a3(v8, v10);

    sub_1BD030220(v8, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1BD3297F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD32982C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD329898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD3299F4(void (*a1)(void, void, void, void), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product;
  v6 = [*(v2 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product) provisioningMethodMetadataForType_];
  v7 = [v6 digitalIssuanceMetadata];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [*(v2 + v5) provisioningMethodMetadataForType_];
  if (v8)
  {
    v7 = v8;
LABEL_4:

LABEL_5:
    a1(0, 0, 0, 0);
    return;
  }

  if ([*(v2 + v5) supportsSetupProductMethodForType_] & 1) != 0 || (objc_msgSend(*(v2 + v5), sel_supportsSetupProductMethodForType_, 6))
  {
    goto LABEL_5;
  }

  v9 = [*(v2 + v5) configuration];
  if (!v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = [v9 type];

  if (v11 == 4)
  {
    goto LABEL_5;
  }

  v12 = PKDisplayableErrorForCommonType();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    v15 = sub_1BE04A844();
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v30[4] = sub_1BD32AC18;
  v31 = v16;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = sub_1BD126964;
  v30[3] = &block_descriptor_59;
  v17 = _Block_copy(v30);
  v18 = v31;
  sub_1BE048964();
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = PKAlertForDisplayableErrorWithCancelHandler(v15, 0, v17);
  _Block_release(v17);

  if (!v26)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v27 = v2 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 24))(v26, ObjectType, v28);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1BD329C94(uint64_t a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v181 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v181 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v181 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v181 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v181 - v21;
  if (!a1)
  {
    v39 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
    v40 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product);
    v41 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod);
    v42 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry);
    v43 = type metadata accessor for PaymentSetupProductProvidersFlowItem();
    v44 = objc_allocWithZone(v43);
    *&v44[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_viewController] = 0;
    v45 = OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod;
    *&v44[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod] = 0;
    *&v44[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v46 = &v44[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_identifier];
    *v46 = 0xD000000000000018;
    v46[1] = 0x80000001BE123DF0;
    *&v44[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_context] = v39;
    *&v44[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_product] = v40;
    v47 = *&v44[v45];
    *&v44[v45] = v41;
    v48 = v40;
    v49 = v41;
    v50 = v48;
    v51 = v49;
    sub_1BE048964();

    v44[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_allowSecondaryManualEntry] = v42;
    v44[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_showOtherProviders] = 0;
    v188.receiver = v44;
    v188.super_class = v43;
    v38 = objc_msgSendSuper2(&v188, sel_init);

    return v38;
  }

  v183 = v20;
  type metadata accessor for PaymentSetupProductProvidersFlowItem();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod);
    v25 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod);
    *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod) = v24;
    v26 = v24;
    swift_unknownObjectRetain();

    v27 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
    v28 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product);
    v29 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry);
    v30 = type metadata accessor for ProvisioningHeroFlowItem();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v32 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v33 = &v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v33[13] = 0;
    *(v33 + 7) = -5120;
    *&v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v27;
    v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = v28;
    v34 = *&v31[v32];
    *&v31[v32] = v24;
    v35 = v28;
    v36 = v26;
    v37 = v35;
    sub_1BE048964();

    v31[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = (v24 == 0) & v29;
    v184.receiver = v31;
    v184.super_class = v30;
    v38 = objc_msgSendSuper2(&v184, sel_init);

    swift_unknownObjectRelease();
    return v38;
  }

  type metadata accessor for ProvisioningHeroFlowItem();
  v52 = swift_dynamicCastClass();
  if (v52)
  {
    v53 = *(v52 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod);
    v54 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod);
    *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod) = v53;
    swift_unknownObjectRetain();
    v55 = v53;

    v56 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
    v57 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product);
    v58 = objc_allocWithZone(type metadata accessor for PaymentSetupProductDevicePickerFlowItem());
    sub_1BE048964();
    v38 = sub_1BD5B8C48(v56, v57);
    swift_unknownObjectRelease();
    return v38;
  }

  type metadata accessor for PaymentSetupProductDevicePickerFlowItem();
  v59 = swift_dynamicCastClass();
  if (!v59)
  {
    return 0;
  }

  v182 = v4;
  v60 = *(v59 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_selectedProduct);
  v61 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product);
  v181 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product;
  *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product) = v60;
  swift_unknownObjectRetain();
  v62 = v60;

  v63 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod);
  if (!v63)
  {
LABEL_28:
    sub_1BE04D0E4();
    v117 = sub_1BE04D204();
    v118 = sub_1BE052C34();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_1BD026000, v117, v118, "Error: Cannot create manual entry view controller because no valid provisioning methods exist for product", v119, 2u);
      MEMORY[0x1BFB45F20](v119, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v182 + 8))(v6, v183);
    return 0;
  }

  v64 = v63;
  v65 = [v64 type];
  if (v65 <= 2)
  {
    switch(v65)
    {
      case 0:
        goto LABEL_12;
      case 1:
        v127 = v181;
        v128 = [*(v1 + v181) provisioningMethodMetadataForType_];
        if (v128)
        {

          v129 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
          v130 = *(v1 + v127);
          v131 = type metadata accessor for ProvisioningReaderModeDetailsFlowItem();
          v132 = v64;
          v133 = objc_allocWithZone(v131);
          *&v133[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem__isManualProvisioning] = &type metadata for IsManualProvisioning;
          *&v133[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v134 = &v133[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_identifier];
          *v134 = 0xD000000000000019;
          *(v134 + 1) = 0x80000001BE123E10;
          *&v133[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_context] = v129;
          *&v133[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_product] = v130;
          v186.receiver = v133;
          v186.super_class = v131;
          sub_1BE048964();
          v135 = v130;
          v38 = objc_msgSendSuper2(&v186, sel_init);
          swift_unknownObjectRelease();

          return v38;
        }

        sub_1BE04D0E4();
        v141 = sub_1BE04D204();
        v142 = sub_1BE052C34();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_1BD026000, v141, v142, "Error: No provisioningMethodMetadata for readerMode", v143, 2u);
          MEMORY[0x1BFB45F20](v143, -1, -1);
        }

        else
        {
        }

        (*(v182 + 8))(v12, v183);
        goto LABEL_28;
      case 2:
        v97 = v181;
        v98 = [*(v1 + v181) provisioningMethodMetadataForType_];
        if (v98)
        {
          v99 = v98;
          v100 = [v98 digitalIssuanceMetadata];
          if (v100)
          {
            v101 = v100;
            v102 = v64;
            v103 = [v100 balanceIdentifier];
            v104 = v103;
            if (v103)
            {
            }

            v105 = [v101 serviceProviderProducts];
            if (v105)
            {
              v106 = v105;
              sub_1BD160A1C();
              v107 = sub_1BE052744();

              if (v107 >> 62)
              {
                v108 = sub_1BE053704();
              }

              else
              {
                v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v109 = v108 != 0;
            }

            else
            {
              v109 = 0;
              v107 = 0;
            }

            result = [*(v1 + v97) showOtherProviders];
            if (result)
            {
              result = [*(v1 + v97) supportsSetupProductMethodForType_];
              if (result)
              {
                v160 = 1;
              }

              else
              {
                result = [*(v1 + v97) supportsSetupProductMethodForType_];
                v160 = result;
              }
            }

            else
            {
              v160 = 0;
            }

            if (v104)
            {
              v107, v153, v154, v155, v156, v157, v158, v159;
              if (v109)
              {
                v161 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
                v162 = *(v1 + v97);
                v163 = objc_allocWithZone(type metadata accessor for PaymentSetupProductTypeFlowItem());
                sub_1BE048964();
                v38 = sub_1BD160194(v161, v162, v160);
                swift_unknownObjectRelease();

                return v38;
              }
            }

            else
            {
              if (v109)
              {
                if (v107)
                {
                  v164 = *(v1 + v97);
                  v165 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
                  type metadata accessor for PaymentSetupServiceProviderProductsFlowSection();
                  swift_allocObject();
                  sub_1BE048964();
                  v166 = v164;
                  v38 = sub_1BD59AB30(v165, v166, v107, v160, v167, v168, v169, v170);
                  swift_unknownObjectRelease();

                  v165, v171, v172, v173, v174, v175, v176, v177;
                  return v38;
                }

                goto LABEL_76;
              }

              v107, v153, v154, v155, v156, v157, v158, v159;
            }

            v178 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
            v179 = *(v1 + v97);
            v180 = objc_allocWithZone(type metadata accessor for PaymentSetupPurchaseProductFlowItem());
            sub_1BE048964();
            v38 = sub_1BD7F6138(v178, v179);
            swift_unknownObjectRelease();

            return v38;
          }
        }

        sub_1BE04D0E4();
        v150 = sub_1BE04D204();
        v151 = sub_1BE052C34();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&dword_1BD026000, v150, v151, "Error: No provisioningMethodMetadata for digitalIssuanceMetadata", v152, 2u);
          MEMORY[0x1BFB45F20](v152, -1, -1);
        }

        else
        {
        }

        (*(v182 + 8))(v15, v183);
        goto LABEL_28;
    }

    goto LABEL_42;
  }

  if (v65 > 8)
  {
LABEL_42:

    goto LABEL_28;
  }

  if (((1 << v65) & 0x198) == 0)
  {
    if (v65 == 5)
    {
      objc_opt_self();
      v136 = swift_dynamicCastObjCClass();
      if (v136)
      {
        v137 = v136;
        v138 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
        v139 = *(v1 + v181);
        v140 = objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
        sub_1BE048964();
        v38 = sub_1BD9DC084(v138, v139, v137);
        swift_unknownObjectRelease();
        return v38;
      }

      sub_1BE04D0E4();
      v147 = sub_1BE04D204();
      v148 = sub_1BE052C34();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&dword_1BD026000, v147, v148, "Error: No inApp method", v149, 2u);
        MEMORY[0x1BFB45F20](v149, -1, -1);
      }

      else
      {
      }

      (*(v182 + 8))(v22, v183);
      goto LABEL_28;
    }

    if (v65 == 6)
    {
      objc_opt_self();
      v120 = swift_dynamicCastObjCClass();
      if (v120)
      {
        v121 = v120;
        v122 = type metadata accessor for PaymentSetupOpenAppClipFlowItem();
        v123 = v64;
        v124 = objc_allocWithZone(v122);
        *&v124[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v125 = &v124[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_identifier];
        *v125 = 0xD000000000000013;
        *(v125 + 1) = 0x80000001BE123E30;
        *&v124[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_appClip] = v121;
        v185.receiver = v124;
        v185.super_class = v122;
        v126 = v123;
        v38 = objc_msgSendSuper2(&v185, sel_init);

        swift_unknownObjectRelease();
        return v38;
      }

      sub_1BE04D0E4();
      v144 = sub_1BE04D204();
      v145 = sub_1BE052C34();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        *v146 = 0;
        _os_log_impl(&dword_1BD026000, v144, v145, "Error: No appClip method", v146, 2u);
        MEMORY[0x1BFB45F20](v146, -1, -1);
      }

      else
      {
      }

      (*(v182 + 8))(v18, v183);
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_12:
  [v64 type];
  result = PKPaymentSupportedProvisioningMethodToString();
  if (result)
  {
    v67 = result;
    v68 = sub_1BE052434();
    v70 = v69;

    sub_1BE04D0E4();
    sub_1BE048C84();
    v71 = sub_1BE04D204();
    v72 = sub_1BE052C34();
    v70, v73, v74, v75, v76, v77, v78, v79;
    if (os_log_type_enabled(v71, v72))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v187 = v81;
      *v80 = 136315138;
      v82 = sub_1BD123690(v68, v70, &v187);
      v70, v83, v84, v85, v86, v87, v88, v89;
      *(v80 + 4) = v82;
      _os_log_impl(&dword_1BD026000, v71, v72, "Error: Unsupported method type: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81, v90, v91, v92, v93, v94, v95, v96);
      MEMORY[0x1BFB45F20](v81, -1, -1);
      MEMORY[0x1BFB45F20](v80, -1, -1);
    }

    else
    {

      v70, v110, v111, v112, v113, v114, v115, v116;
    }

    (*(v182 + 8))(v9, v183);
    goto LABEL_28;
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}