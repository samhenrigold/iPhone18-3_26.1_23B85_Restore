uint64_t sub_241C9CDE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v156 = a4;
  v152 = a1;
  v7 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v167 = &v150 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v155 = &v150 - v14;
  MEMORY[0x28223BE20](v13);
  v154 = &v150 - v15;
  v16 = sub_241CF8D88();
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v170 = &v150 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  result = MEMORY[0x28223BE20](v20);
  v157 = &v150 - v25;
  v163 = a3;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_121:
    a3 = *v152;
    if (!*v152)
    {
      goto LABEL_161;
    }

    v10 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_155;
    }

    result = v10;
LABEL_124:
    v179 = result;
    v10 = *(result + 16);
    if (v10 >= 2)
    {
      while (*v163)
      {
        v146 = *(result + 16 * v10);
        v147 = result;
        v148 = *(result + 16 * (v10 - 1) + 40);
        sub_241CA0478((*v163 + 40 * v146), (*v163 + 40 * *(result + 16 * (v10 - 1) + 32)), *v163 + 40 * v148, a3);
        if (v5)
        {
        }

        if (v148 < v146)
        {
          goto LABEL_148;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_241CDE470(v147);
        }

        if (v10 - 2 >= *(v147 + 2))
        {
          goto LABEL_149;
        }

        v149 = &v147[16 * v10];
        *v149 = v146;
        *(v149 + 1) = v148;
        v179 = v147;
        sub_241CDE3E4(v10 - 1);
        result = v179;
        v10 = *(v179 + 16);
        if (v10 <= 1)
        {
        }
      }

      goto LABEL_159;
    }
  }

  v153 = v24;
  v165 = v23;
  v27 = 0;
  v171 = (v22 + 48);
  v168 = (v22 + 8);
  v169 = (v22 + 32);
  v28 = MEMORY[0x277D84F90];
  v166 = v10;
  while (1)
  {
    v158 = v28;
    if (v27 + 1 >= v26)
    {
      v26 = v27 + 1;
      v60 = v156;
      goto LABEL_35;
    }

    v29 = *v163;
    v10 = 40;
    sub_241C96F9C(*v163 + 40 * (v27 + 1), &v176);
    sub_241C96F9C(v29 + 40 * v27, v173);
    LODWORD(v172) = sub_241C95BC8(&v176, v173);
    if (v5)
    {
      sub_241C8EEE8(v173);
      sub_241C8EEE8(&v176);
    }

    sub_241C8EEE8(v173);
    result = sub_241C8EEE8(&v176);
    v30 = v27 + 2;
    v151 = v27;
    v31 = 40 * v27;
    a3 = v29 + 40 * v27 + 80;
    v162 = 0;
    v164 = v26;
    while (v26 != v30)
    {
      sub_241C96F9C(a3, &v176);
      sub_241C96F9C(a3 - 40, v173);
      v42 = v177;
      v43 = v178;
      sub_241C97000(&v176, v177);
      AssetInfo.seriesSortKey.getter(v42, v43);
      if (v44 & 1) != 0 && (v45 = v174, v46 = v175, sub_241C97000(v173, v174), AssetInfo.seriesSortKey.getter(v45, v46), (v47))
      {
        v48 = v177;
        v49 = v178;
        sub_241C97000(&v176, v177);
        v50 = v154;
        AssetInfo.releaseDate.getter(v48, v49, v154);
        v51 = v50;
        v52 = *v171;
        if ((*v171)(v51, 1, v16) == 1)
        {
          sub_241CF8D28();
          if (v52(v51, 1, v16) != 1)
          {
            sub_241CA0DE4(v51);
          }
        }

        else
        {
          (*v169)(v157, v51, v16);
        }

        v53 = v174;
        v54 = v175;
        sub_241C97000(v173, v174);
        v55 = v155;
        AssetInfo.releaseDate.getter(v53, v54, v155);
        v56 = v55;
        if (v52(v55, 1, v16) == 1)
        {
          v57 = v153;
          sub_241CF8D28();
          if (v52(v56, 1, v16) != 1)
          {
            sub_241CA0DE4(v56);
          }
        }

        else
        {
          v57 = v153;
          (*v169)(v153, v56, v16);
        }

        v58 = v157;
        v10 = sub_241CF8D58();
        v59 = *v168;
        (*v168)(v57, v16);
        v59(v58, v16);
      }

      else
      {
        v32 = v177;
        v33 = v178;
        sub_241C97000(&v176, v177);
        v34 = AssetInfo.seriesSortKey.getter(v32, v33);
        v36 = v35;
        v37 = v174;
        v38 = v175;
        sub_241C97000(v173, v174);
        v39 = AssetInfo.seriesSortKey.getter(v37, v38);
        if (v40)
        {
          v41 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        v10 = (v34 < v41) & ~v36;
      }

      sub_241C8EEE8(v173);
      result = sub_241C8EEE8(&v176);
      ++v30;
      a3 += 40;
      v5 = v162;
      v26 = v164;
      if ((v172 ^ v10))
      {
        v26 = v30 - 1;
        break;
      }
    }

    v60 = v156;
    v27 = v151;
    if (v172)
    {
      if (v26 < v151)
      {
        goto LABEL_154;
      }

      if (v151 < v26)
      {
        v61 = v26;
        v62 = 40 * v26 - 40;
        v164 = v61;
        do
        {
          if (v27 != --v61)
          {
            v63 = *v163;
            if (!*v163)
            {
              goto LABEL_158;
            }

            a3 = v63 + v31;
            v10 = v63 + v62;
            sub_241C914E4((v63 + v31), &v176);
            v64 = *(v10 + 32);
            v65 = *(v10 + 16);
            *a3 = *v10;
            *(a3 + 16) = v65;
            *(a3 + 32) = v64;
            result = sub_241C914E4(&v176, v10);
            v60 = v156;
          }

          ++v27;
          v62 -= 40;
          v31 += 40;
        }

        while (v27 < v61);
        v27 = v151;
        v26 = v164;
      }
    }

LABEL_35:
    v66 = v163[1];
    if (v26 >= v66)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v26, v27))
    {
      goto LABEL_151;
    }

    if (v26 - v27 >= v60)
    {
      goto LABEL_44;
    }

    if (__OFADD__(v27, v60))
    {
      goto LABEL_152;
    }

    if (v27 + v60 >= v66)
    {
      a3 = v163[1];
    }

    else
    {
      a3 = v27 + v60;
    }

    if (a3 < v27)
    {
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      result = sub_241CDE470(v10);
      goto LABEL_124;
    }

    if (v26 == a3)
    {
LABEL_44:
      a3 = v26;
      if (v26 < v27)
      {
        goto LABEL_150;
      }

      goto LABEL_45;
    }

    v162 = v5;
    v172 = *v163;
    v112 = v172 + 40 * v26;
    v151 = v27;
    v113 = v27 - v26;
    v159 = a3;
LABEL_96:
    v164 = v26;
    v160 = v113;
    v161 = v112;
    v114 = v112;
LABEL_97:
    sub_241C96F9C(v114, &v176);
    sub_241C96F9C(v114 - 40, v173);
    v115 = v177;
    v116 = v178;
    sub_241C97000(&v176, v177);
    AssetInfo.seriesSortKey.getter(v115, v116);
    if (v117 & 1) != 0 && (v118 = v174, v119 = v175, sub_241C97000(v173, v174), AssetInfo.seriesSortKey.getter(v118, v119), (v120))
    {
      v121 = v177;
      v122 = v178;
      sub_241C97000(&v176, v177);
      v123 = v167;
      AssetInfo.releaseDate.getter(v121, v122, v167);
      v124 = v123;
      v125 = *v171;
      if ((*v171)(v124, 1, v16) == 1)
      {
        sub_241CF8D28();
        if (v125(v124, 1, v16) != 1)
        {
          sub_241CA0DE4(v124);
        }
      }

      else
      {
        (*v169)(v170, v124, v16);
      }

      v136 = v174;
      v137 = v175;
      sub_241C97000(v173, v174);
      v138 = v166;
      AssetInfo.releaseDate.getter(v136, v137, v166);
      v139 = v138;
      if (v125(v138, 1, v16) == 1)
      {
        v140 = v165;
        sub_241CF8D28();
        v141 = v16;
        if (v125(v139, 1, v16) != 1)
        {
          sub_241CA0DE4(v139);
        }
      }

      else
      {
        v140 = v165;
        (*v169)(v165, v139, v16);
        v141 = v16;
      }

      v142 = v170;
      v10 = sub_241CF8D58();
      v143 = *v168;
      (*v168)(v140, v141);
      v143(v142, v141);
      v16 = v141;
    }

    else
    {
      v126 = v177;
      v127 = v178;
      sub_241C97000(&v176, v177);
      v128 = AssetInfo.seriesSortKey.getter(v126, v127);
      v130 = v129;
      v131 = v174;
      v132 = v175;
      sub_241C97000(v173, v174);
      v133 = AssetInfo.seriesSortKey.getter(v131, v132);
      v135 = (v134 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v133;
      v10 = (v128 < v135) & ~v130;
    }

    sub_241C8EEE8(v173);
    result = sub_241C8EEE8(&v176);
    if (v10)
    {
      break;
    }

LABEL_95:
    v26 = v164 + 1;
    v112 = v161 + 40;
    v113 = v160 - 1;
    a3 = v159;
    if (v164 + 1 != v159)
    {
      goto LABEL_96;
    }

    v5 = v162;
    v27 = v151;
    if (v159 < v151)
    {
      goto LABEL_150;
    }

LABEL_45:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v28 = v158;
    }

    else
    {
      result = sub_241CBFB88(0, *(v158 + 2) + 1, 1, v158);
      v28 = result;
    }

    v68 = *(v28 + 2);
    v67 = *(v28 + 3);
    v10 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_241CBFB88((v67 > 1), v68 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 2) = v10;
    v69 = &v28[16 * v68];
    *(v69 + 4) = v27;
    *(v69 + 5) = a3;
    v159 = a3;
    a3 = *v152;
    if (!*v152)
    {
      goto LABEL_160;
    }

    if (v68)
    {
      while (1)
      {
        v70 = v10 - 1;
        if (v10 >= 4)
        {
          break;
        }

        if (v10 == 3)
        {
          v71 = *(v28 + 4);
          v72 = *(v28 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_64:
          if (v74)
          {
            goto LABEL_139;
          }

          v87 = &v28[16 * v10];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_142;
          }

          v93 = &v28[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_146;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v10 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v97 = &v28[16 * v10];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_78:
        if (v92)
        {
          goto LABEL_141;
        }

        v100 = &v28[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_144;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_85:
        v108 = v70 - 1;
        if (v70 - 1 >= v10)
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
          goto LABEL_153;
        }

        if (!*v163)
        {
          goto LABEL_157;
        }

        v109 = v28;
        v10 = *&v28[16 * v108 + 32];
        v110 = *&v28[16 * v70 + 40];
        sub_241CA0478((*v163 + 40 * v10), (*v163 + 40 * *&v28[16 * v70 + 32]), *v163 + 40 * v110, a3);
        if (v5)
        {
        }

        if (v110 < v10)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_241CDE470(v109);
        }

        if (v108 >= *(v109 + 2))
        {
          goto LABEL_136;
        }

        v111 = &v109[16 * v108];
        *(v111 + 4) = v10;
        *(v111 + 5) = v110;
        v179 = v109;
        result = sub_241CDE3E4(v70);
        v28 = v179;
        v10 = *(v179 + 16);
        if (v10 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v28[16 * v10 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_137;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_138;
      }

      v82 = &v28[16 * v10];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_140;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_143;
      }

      if (v86 >= v78)
      {
        v104 = &v28[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_147;
        }

        if (v73 < v107)
        {
          v70 = v10 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v26 = v163[1];
    v27 = v159;
    if (v159 >= v26)
    {
      goto LABEL_121;
    }
  }

  if (v172)
  {
    sub_241C914E4(v114, &v176);
    v144 = *(v114 - 24);
    *v114 = *(v114 - 40);
    *(v114 + 16) = v144;
    *(v114 + 32) = *(v114 - 8);
    sub_241C914E4(&v176, v114 - 40);
    v114 -= 40;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

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
  return result;
}

uint64_t sub_241C9DBE4(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  if (v8 >= v10)
  {
    v23 = a2;
    if (__dst != a2 || &a2[40 * v10] <= __dst)
    {
      memmove(__dst, a2, 40 * v10);
    }

    v12 = &v4[40 * v10];
    if (v9 < 40 || v23 <= v6)
    {
      v39 = v23;
    }

    else
    {
      v49 = v4;
      do
      {
        __dsta = v23;
        v24 = (v23 - 40);
        v25 = (v12 - 40);
        v5 -= 40;
        while (1)
        {
          v12 = (v25 + 40);
          v28 = (v5 + 40);
          sub_241C96F9C(v25, v46);
          v29 = v24;
          sub_241C96F9C(v24, v43);
          v31 = v47;
          v30 = v48;
          sub_241C97000(v46, v47);
          AssetInfo.title.getter(v31, v30);
          v32 = v44;
          v33 = v45;
          sub_241C97000(v43, v44);
          AssetInfo.title.getter(v32, v33);
          sub_241C8DFF0();
          v34 = sub_241CF95D8();

          sub_241C8EEE8(v43);
          sub_241C8EEE8(v46);
          if (v34 == -1)
          {
            break;
          }

          if (v28 != v12)
          {
            v35 = *v25;
            v36 = *(v25 + 16);
            *(v5 + 32) = *(v25 + 32);
            *v5 = v35;
            *(v5 + 16) = v36;
          }

          v26 = v25 - 40;
          v5 -= 40;
          v27 = v25 > v49;
          v25 -= 40;
          v24 = v29;
          if (!v27)
          {
            v12 = (v26 + 40);
            v39 = __dsta;
            v4 = v49;
            goto LABEL_36;
          }
        }

        v39 = v29;
        if (v28 != __dsta)
        {
          v37 = *v29;
          v38 = *(v29 + 1);
          *(v5 + 32) = *(v29 + 4);
          *v5 = v37;
          *(v5 + 16) = v38;
        }

        v4 = v49;
        if (v12 <= v49)
        {
          break;
        }

        v23 = v39;
      }

      while (v39 > v6);
      v12 = (v25 + 40);
    }
  }

  else
  {
    if (__dst != __src || &__src[40 * v8] <= __dst)
    {
      memmove(__dst, __src, 40 * v8);
    }

    v12 = &v4[40 * v8];
    if (v7 >= 40 && a2 < v5)
    {
      v13 = a2;
      while (1)
      {
        sub_241C96F9C(v13, v46);
        sub_241C96F9C(v4, v43);
        v14 = v47;
        v15 = v48;
        sub_241C97000(v46, v47);
        AssetInfo.title.getter(v14, v15);
        v16 = v44;
        v17 = v45;
        sub_241C97000(v43, v44);
        AssetInfo.title.getter(v16, v17);
        sub_241C8DFF0();
        v18 = sub_241CF95D8();

        sub_241C8EEE8(v43);
        sub_241C8EEE8(v46);
        if (v18 != -1)
        {
          break;
        }

        v19 = v13;
        v20 = v6 == v13;
        v13 += 40;
        if (!v20)
        {
          goto LABEL_10;
        }

LABEL_11:
        v6 += 40;
        if (v4 >= v12 || v13 >= v5)
        {
          goto LABEL_34;
        }
      }

      v19 = v4;
      v20 = v6 == v4;
      v4 += 40;
      if (v20)
      {
        goto LABEL_11;
      }

LABEL_10:
      v21 = *v19;
      v22 = *(v19 + 1);
      *(v6 + 4) = *(v19 + 4);
      *v6 = v21;
      *(v6 + 1) = v22;
      goto LABEL_11;
    }

LABEL_34:
    v39 = v6;
  }

LABEL_36:
  v40 = (v12 - v4) / 40;
  if (v39 != v4 || v39 >= &v4[40 * v40])
  {
    memmove(v39, v4, 40 * v40);
  }

  return 1;
}

uint64_t sub_241C9DFD4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v114 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v113 = (&v107 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v112 = &v107 - v14;
  MEMORY[0x28223BE20](v13);
  v111 = &v107 - v15;
  v115 = sub_241CF8D88();
  v16 = *(v115 - 8);
  v17 = MEMORY[0x28223BE20](v115);
  v110 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v117 = &v107 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v109 = &v107 - v22;
  MEMORY[0x28223BE20](v21);
  v116 = &v107 - v23;
  v24 = (a2 - a1) / 40;
  v25 = (a3 - a2) / 40;
  if (v24 >= v25)
  {
    if (a4 != a2 || &a2[40 * v25] <= a4)
    {
      memmove(a4, a2, 40 * v25);
    }

    v26 = &a4[40 * v25];
    if ((a3 - a2) < 40 || a2 <= a1)
    {
LABEL_70:
      v65 = a2;
    }

    else
    {
      v116 = v16 + 48;
      v111 = v16 + 32;
      v108 = a4;
      v109 = v16 + 8;
      do
      {
        v65 = a2 - 40;
        v66 = (v26 - 40);
        a3 -= 40;
        v124 = a2;
        v112 = a2 - 40;
        while (1)
        {
          sub_241C96F9C(v66, v121);
          sub_241C96F9C(v65, v118);
          v69 = v122;
          v70 = v123;
          sub_241C97000(v121, v122);
          AssetInfo.seriesSortKey.getter(v69, v70);
          if (v71 & 1) != 0 && (v72 = v119, v73 = v120, sub_241C97000(v118, v119), AssetInfo.seriesSortKey.getter(v72, v73), (v74))
          {
            v75 = v122;
            v76 = v123;
            sub_241C97000(v121, v122);
            v77 = v113;
            AssetInfo.releaseDate.getter(v75, v76, v113);
            v78 = v115;
            v79 = *v116;
            if ((*v116)(v77, 1, v115) == 1)
            {
              sub_241CF8D28();
              if (v79(v77, 1, v78) != 1)
              {
                sub_241CA0DE4(v77);
              }
            }

            else
            {
              (*v111)(v117, v77, v78);
            }

            v91 = v119;
            v92 = v120;
            sub_241C97000(v118, v119);
            v93 = v114;
            AssetInfo.releaseDate.getter(v91, v92, v114);
            v94 = v93;
            if (v79(v93, 1, v78) == 1)
            {
              v95 = v110;
              sub_241CF8D28();
              v96 = v79(v94, 1, v78);
              v97 = v95;
              a2 = v124;
              if (v96 != 1)
              {
                sub_241CA0DE4(v94);
              }
            }

            else
            {
              v97 = v110;
              (*v111)(v110, v93, v78);
              a2 = v124;
            }

            v98 = v117;
            v90 = sub_241CF8D58();
            v99 = v97;
            v100 = *v109;
            (*v109)(v99, v78);
            v100(v98, v78);
            v65 = v112;
            a4 = v108;
          }

          else
          {
            v80 = v122;
            v81 = v123;
            sub_241C97000(v121, v122);
            v82 = AssetInfo.seriesSortKey.getter(v80, v81);
            v84 = (v83 & 1) != 0 ? 0 : v82;
            v85 = v119;
            v86 = v120;
            sub_241C97000(v118, v119);
            v87 = AssetInfo.seriesSortKey.getter(v85, v86);
            v89 = (v88 & 1) != 0 ? 0 : v87;
            v90 = v84 < v89;
          }

          sub_241C8EEE8(v118);
          sub_241C8EEE8(v121);
          if (v90)
          {
            break;
          }

          if (a3 + 40 != v66 + 40)
          {
            v101 = *v66;
            v102 = *(v66 + 16);
            *(a3 + 32) = *(v66 + 32);
            *a3 = v101;
            *(a3 + 16) = v102;
          }

          v67 = v66 - 40;
          a3 -= 40;
          v68 = v66 > a4;
          v66 -= 40;
          if (!v68)
          {
            v26 = (v67 + 40);
            goto LABEL_70;
          }
        }

        if ((a3 + 40) != a2)
        {
          v103 = *v65;
          v104 = *(v65 + 1);
          *(a3 + 32) = *(v65 + 4);
          *a3 = v103;
          *(a3 + 16) = v104;
        }

        v26 = (v66 + 40);
        if (v66 + 40 <= a4)
        {
          break;
        }

        a2 = v65;
      }

      while (v65 > a1);
      v26 = (v66 + 40);
    }
  }

  else
  {
    if (a4 != a1 || &a1[40 * v24] <= a4)
    {
      memmove(a4, a1, 40 * v24);
    }

    v26 = &a4[40 * v24];
    v27 = v115;
    if (a2 - a1 >= 40 && a2 < a3)
    {
      v117 = v16 + 48;
      v113 = (v16 + 32);
      v114 = &a4[40 * v24];
      v110 = v16 + 8;
      while (1)
      {
        sub_241C96F9C(a2, v121);
        sub_241C96F9C(a4, v118);
        v28 = v122;
        v29 = v123;
        sub_241C97000(v121, v122);
        AssetInfo.seriesSortKey.getter(v28, v29);
        if (v30 & 1) != 0 && (v31 = v119, v32 = v120, sub_241C97000(v118, v119), AssetInfo.seriesSortKey.getter(v31, v32), (v33))
        {
          v34 = v122;
          v35 = v123;
          sub_241C97000(v121, v122);
          v36 = v111;
          AssetInfo.releaseDate.getter(v34, v35, v111);
          v37 = *v117;
          if ((*v117)(v36, 1, v27) == 1)
          {
            sub_241CF8D28();
            if (v37(v36, 1, v27) != 1)
            {
              sub_241CA0DE4(v36);
            }
          }

          else
          {
            (*v113)(v116, v36, v27);
          }

          v124 = a2;
          v49 = v119;
          v50 = v120;
          sub_241C97000(v118, v119);
          v51 = v112;
          AssetInfo.releaseDate.getter(v49, v50, v112);
          v52 = v51;
          if (v37(v51, 1, v27) == 1)
          {
            v53 = v109;
            sub_241CF8D28();
            v54 = v37(v51, 1, v27);
            v55 = v53;
            v56 = v114;
            v57 = v27;
            if (v54 != 1)
            {
              sub_241CA0DE4(v52);
            }
          }

          else
          {
            v55 = v109;
            (*v113)(v109, v51, v27);
            v56 = v114;
            v57 = v27;
          }

          v58 = v116;
          v48 = sub_241CF8D58();
          v59 = v55;
          v60 = *v110;
          (*v110)(v59, v57);
          v60(v58, v57);
          v27 = v57;
          v26 = v56;
          a2 = v124;
        }

        else
        {
          v38 = v122;
          v39 = v123;
          sub_241C97000(v121, v122);
          v40 = AssetInfo.seriesSortKey.getter(v38, v39);
          v42 = (v41 & 1) != 0 ? 0 : v40;
          v43 = v119;
          v44 = v120;
          sub_241C97000(v118, v119);
          v45 = AssetInfo.seriesSortKey.getter(v43, v44);
          v47 = (v46 & 1) != 0 ? 0 : v45;
          v48 = v42 < v47;
        }

        sub_241C8EEE8(v118);
        sub_241C8EEE8(v121);
        if ((v48 & 1) == 0)
        {
          break;
        }

        v61 = a2;
        v62 = a1 == a2;
        a2 += 40;
        if (!v62)
        {
          goto LABEL_31;
        }

LABEL_32:
        a1 += 40;
        if (a4 >= v26 || a2 >= a3)
        {
          goto LABEL_34;
        }
      }

      v61 = a4;
      v62 = a1 == a4;
      a4 += 40;
      if (v62)
      {
        goto LABEL_32;
      }

LABEL_31:
      v63 = *v61;
      v64 = *(v61 + 1);
      *(a1 + 4) = *(v61 + 4);
      *a1 = v63;
      *(a1 + 1) = v64;
      goto LABEL_32;
    }

LABEL_34:
    v65 = a1;
  }

  v105 = (v26 - a4) / 40;
  if (v65 != a4 || v65 >= &a4[40 * v105])
  {
    memmove(v65, a4, 40 * v105);
  }

  return 1;
}

uint64_t sub_241C9E924(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v105 = (v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v97 = v96 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v98 = v96 - v14;
  MEMORY[0x28223BE20](v13);
  v101 = (v96 - v15);
  v16 = sub_241CF8D88();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v100 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v106 = v96 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v102 = v96 - v23;
  MEMORY[0x28223BE20](v22);
  v104 = v96 - v24;
  v107 = a1;
  v25 = a2 - a1;
  v26 = (a2 - a1) / 40;
  v114 = a3;
  v27 = a3 - a2;
  v28 = (a3 - a2) / 40;
  if (v26 >= v28)
  {
    if (a4 != a2 || &a2[40 * v28] <= a4)
    {
      memmove(a4, a2, 40 * v28);
    }

    v103 = &a4[40 * v28];
    if (v27 < 40 || a2 <= v107)
    {
      v61 = a2;
    }

    else
    {
      v62 = a2;
      v104 = (v17 + 48);
      v101 = (v17 + 32);
      v98 = (v17 + 8);
      v99 = a4;
      v63 = v97;
      do
      {
        v96[0] = v62;
        v64 = (v62 - 40);
        v65 = (v103 - 40);
        v114 -= 40;
        v102 = v62 - 40;
        while (1)
        {
          sub_241C96F9C(v65, v111);
          sub_241C96F9C(v64, v108);
          v67 = v112;
          v68 = v113;
          sub_241C97000(v111, v112);
          AssetInfo.releaseDate.getter(v67, v68, v63);
          v69 = *v104;
          if ((*v104)(v63, 1, v16) == 1)
          {
            sub_241CF8D28();
            if (v69(v63, 1, v16) != 1)
            {
              sub_241CA0DE4(v63);
            }
          }

          else
          {
            (*v101)(v106, v63, v16);
          }

          v70 = v109;
          v71 = v110;
          sub_241C97000(v108, v109);
          v72 = v105;
          AssetInfo.releaseDate.getter(v70, v71, v105);
          if (v69(v72, 1, v16) == 1)
          {
            v73 = v100;
            sub_241CF8D28();
            if (v69(v105, 1, v16) != 1)
            {
              sub_241CA0DE4(v105);
            }
          }

          else
          {
            v73 = v100;
            (*v101)(v100, v105, v16);
          }

          if (sub_241CF8D68())
          {
            v74 = v112;
            v75 = v113;
            sub_241C97000(v111, v112);
            v76 = AssetInfo.seriesSortKey.getter(v74, v75);
            v78 = (v77 & 1) != 0 ? 0 : v76;
            v79 = v109;
            v80 = v110;
            sub_241C97000(v108, v109);
            v81 = AssetInfo.seriesSortKey.getter(v79, v80);
            LOBYTE(v80) = v82;
            v83 = *v98;
            (*v98)(v73, v16);
            v83(v106, v16);
            v63 = v97;
            v84 = (v80 & 1) != 0 ? 0 : v81;
            v85 = v84 < v78;
          }

          else
          {
            v86 = v106;
            v85 = sub_241CF8D48();
            v87 = *v98;
            (*v98)(v73, v16);
            v87(v86, v16);
          }

          a4 = v99;
          sub_241C8EEE8(v108);
          sub_241C8EEE8(v111);
          if (v85)
          {
            break;
          }

          if (v114 + 40 != v65 + 40)
          {
            v88 = *v65;
            v89 = *(v65 + 16);
            v90 = v114;
            *(v114 + 32) = *(v65 + 32);
            *v90 = v88;
            v90[1] = v89;
          }

          v66 = v65 - 40;
          v114 -= 40;
          v29 = v65 > a4;
          v65 -= 40;
          v64 = v102;
          if (!v29)
          {
            v103 = (v66 + 40);
            v61 = v96[0];
            goto LABEL_69;
          }
        }

        v61 = v102;
        if (v114 + 40 != v96[0])
        {
          v91 = *v102;
          v92 = *(v102 + 1);
          v93 = v114;
          *(v114 + 32) = *(v102 + 4);
          *v93 = v91;
          v93[1] = v92;
        }

        v103 = (v65 + 40);
        if (v65 + 40 <= a4)
        {
          break;
        }

        v62 = v61;
      }

      while (v61 > v107);
      v103 = (v65 + 40);
    }
  }

  else
  {
    if (a4 != v107 || &v107[40 * v26] <= a4)
    {
      memmove(a4, v107, 40 * v26);
    }

    v103 = &a4[40 * v26];
    v29 = v25 < 40;
    v30 = v98;
    v31 = v102;
    if (!v29 && a2 < v114)
    {
      v105 = (v17 + 32);
      v106 = (v17 + 48);
      v100 = (v17 + 8);
      while (1)
      {
        sub_241C96F9C(a2, v111);
        sub_241C96F9C(a4, v108);
        v32 = v112;
        v33 = v113;
        sub_241C97000(v111, v112);
        v34 = v101;
        AssetInfo.releaseDate.getter(v32, v33, v101);
        v35 = v34;
        v36 = *v106;
        if ((*v106)(v35, 1, v16) == 1)
        {
          sub_241CF8D28();
          if (v36(v35, 1, v16) != 1)
          {
            sub_241CA0DE4(v35);
          }
        }

        else
        {
          (*v105)(v104, v35, v16);
        }

        v37 = v109;
        v38 = v110;
        sub_241C97000(v108, v109);
        AssetInfo.releaseDate.getter(v37, v38, v30);
        if (v36(v30, 1, v16) == 1)
        {
          sub_241CF8D28();
          if (v36(v30, 1, v16) != 1)
          {
            sub_241CA0DE4(v30);
          }
        }

        else
        {
          (*v105)(v31, v30, v16);
        }

        v39 = v104;
        if (sub_241CF8D68())
        {
          v40 = v112;
          v41 = v113;
          sub_241C97000(v111, v112);
          v42 = AssetInfo.seriesSortKey.getter(v40, v41);
          v44 = v39;
          v45 = (v43 & 1) != 0 ? 0 : v42;
          v46 = v109;
          v47 = v110;
          sub_241C97000(v108, v109);
          v48 = AssetInfo.seriesSortKey.getter(v46, v47);
          LOBYTE(v47) = v49;
          v50 = a2;
          v51 = a4;
          v52 = *v100;
          (*v100)(v102, v16);
          v52(v44, v16);
          a4 = v51;
          a2 = v50;
          v31 = v102;
          v30 = v98;
          v53 = (v47 & 1) != 0 ? 0 : v48;
          v54 = v53 < v45;
        }

        else
        {
          v54 = sub_241CF8D48();
          v55 = *v100;
          (*v100)(v31, v16);
          v55(v39, v16);
        }

        sub_241C8EEE8(v108);
        sub_241C8EEE8(v111);
        if ((v54 & 1) == 0)
        {
          break;
        }

        v56 = a2;
        v57 = v107 == a2;
        a2 += 40;
        if (!v57)
        {
          goto LABEL_30;
        }

LABEL_31:
        v107 += 40;
        if (a4 >= v103 || a2 >= v114)
        {
          goto LABEL_33;
        }
      }

      v56 = a4;
      v57 = v107 == a4;
      a4 += 40;
      if (v57)
      {
        goto LABEL_31;
      }

LABEL_30:
      v58 = *v56;
      v59 = *(v56 + 1);
      v60 = v107;
      *(v107 + 4) = *(v56 + 4);
      *v60 = v58;
      *(v60 + 1) = v59;
      goto LABEL_31;
    }

LABEL_33:
    v61 = v107;
  }

LABEL_69:
  v94 = (v103 - a4) / 40;
  if (v61 != a4 || v61 >= &a4[40 * v94])
  {
    memmove(v61, a4, 40 * v94);
  }

  return 1;
}

uint64_t sub_241C9F2D8(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v55 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v27 = v7;
      v48 = v4;
      do
      {
        __dst = v27;
        v28 = (v27 - 40);
        v29 = (v55 - 40);
        v5 -= 40;
        while (1)
        {
          sub_241C96F9C(v29, v52);
          v32 = v28;
          sub_241C96F9C(v28, v49);
          v33 = v53;
          v34 = v54;
          sub_241C97000(v52, v53);
          AssetInfo.sequenceNumber.getter(v33, v34);
          if ((v35 & 0x100000000) != 0)
          {
            MEMORY[0x245CFDCB0](0);
          }

          v36 = v50;
          v37 = v51;
          sub_241C97000(v49, v50);
          v38 = AssetInfo.sequenceNumber.getter(v36, v37);
          if ((v39 & 0x100000000) != 0)
          {
            v38 = MEMORY[0x245CFDCB0](0);
          }

          v40 = MEMORY[0x245CFDCD0](v38);
          sub_241C8EEE8(v49);
          sub_241C8EEE8(v52);
          if (v40)
          {
            break;
          }

          if (v5 + 40 != v29 + 40)
          {
            v41 = *v29;
            v42 = *(v29 + 16);
            *(v5 + 32) = *(v29 + 32);
            *v5 = v41;
            *(v5 + 16) = v42;
          }

          v30 = v29 - 40;
          v5 -= 40;
          v31 = v29 > v48;
          v29 -= 40;
          v28 = v32;
          if (!v31)
          {
            v55 = (v30 + 40);
            v7 = __dst;
            v4 = v48;
            goto LABEL_40;
          }
        }

        v7 = v32;
        if ((v5 + 40) != __dst)
        {
          v43 = *v32;
          v44 = *(v32 + 16);
          *(v5 + 32) = *(v32 + 32);
          *v5 = v43;
          *(v5 + 16) = v44;
        }

        v55 = (v29 + 40);
        v4 = v48;
        if (v29 + 40 <= v48)
        {
          break;
        }

        v27 = v7;
      }

      while (v7 > __src);
      v55 = (v29 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v55 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_241C96F9C(v7, v52);
        sub_241C96F9C(v4, v49);
        v14 = v53;
        v15 = v54;
        sub_241C97000(v52, v53);
        AssetInfo.sequenceNumber.getter(v14, v15);
        if ((v16 & 0x100000000) != 0)
        {
          MEMORY[0x245CFDCB0](0);
        }

        v17 = v50;
        v18 = v51;
        sub_241C97000(v49, v50);
        v19 = AssetInfo.sequenceNumber.getter(v17, v18);
        if ((v20 & 0x100000000) != 0)
        {
          v19 = MEMORY[0x245CFDCB0](0);
        }

        v21 = MEMORY[0x245CFDCD0](v19);
        sub_241C8EEE8(v49);
        sub_241C8EEE8(v52);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v22 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_15;
        }

LABEL_16:
        __src += 40;
        if (v4 >= v55 || v7 >= v5)
        {
          goto LABEL_18;
        }
      }

      v22 = v4;
      v23 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v23)
      {
        goto LABEL_16;
      }

LABEL_15:
      v24 = *v22;
      v25 = *(v22 + 1);
      *(__src + 4) = *(v22 + 4);
      *__src = v24;
      *(__src + 1) = v25;
      goto LABEL_16;
    }

LABEL_18:
    v7 = __src;
  }

LABEL_40:
  v45 = (v55 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v45])
  {
    memmove(v7, v4, 40 * v45);
  }

  return 1;
}

uint64_t sub_241C9F6E4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v112 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = (&v105 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v110 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v109 = &v105 - v15;
  v113 = sub_241CF8D88();
  v16 = *(v113 - 8);
  v17 = MEMORY[0x28223BE20](v113);
  v108 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v105 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v107 = &v105 - v22;
  MEMORY[0x28223BE20](v21);
  v114 = &v105 - v23;
  v24 = (a2 - a1) / 40;
  v25 = (a3 - a2) / 40;
  if (v24 >= v25)
  {
    if (a4 != a2 || &a2[40 * v25] <= a4)
    {
      memmove(a4, a2, 40 * v25);
    }

    v26 = &a4[40 * v25];
    if ((a3 - a2) < 40 || a2 <= a1)
    {
LABEL_64:
      v64 = a2;
    }

    else
    {
      v114 = v16 + 48;
      v109 = v16 + 32;
      v106 = a4;
      v107 = v16 + 8;
      do
      {
        v64 = a2 - 40;
        v65 = (v26 - 40);
        a3 -= 40;
        v122 = a2;
        v110 = a2 - 40;
        while (1)
        {
          sub_241C96F9C(v65, v119);
          sub_241C96F9C(v64, v116);
          v68 = v120;
          v69 = v121;
          sub_241C97000(v119, v120);
          AssetInfo.seriesSortKey.getter(v68, v69);
          if (v70 & 1) != 0 && (v71 = v117, v72 = v118, sub_241C97000(v116, v117), AssetInfo.seriesSortKey.getter(v71, v72), (v73))
          {
            v74 = v120;
            v75 = v121;
            sub_241C97000(v119, v120);
            v76 = v111;
            AssetInfo.releaseDate.getter(v74, v75, v111);
            v77 = v113;
            v78 = *v114;
            if ((*v114)(v76, 1, v113) == 1)
            {
              sub_241CF8D28();
              if (v78(v76, 1, v77) != 1)
              {
                sub_241CA0DE4(v76);
              }
            }

            else
            {
              (*v109)(v115, v76, v77);
            }

            v89 = v117;
            v90 = v118;
            sub_241C97000(v116, v117);
            v91 = v112;
            AssetInfo.releaseDate.getter(v89, v90, v112);
            v92 = v91;
            if (v78(v91, 1, v77) == 1)
            {
              v93 = v108;
              sub_241CF8D28();
              v94 = v78(v92, 1, v77);
              v95 = v93;
              a2 = v122;
              if (v94 != 1)
              {
                sub_241CA0DE4(v92);
              }
            }

            else
            {
              v95 = v108;
              (*v109)(v108, v91, v77);
              a2 = v122;
            }

            v96 = v115;
            v88 = sub_241CF8D48();
            v97 = v95;
            v98 = *v107;
            (*v107)(v97, v77);
            v98(v96, v77);
            v64 = v110;
            a4 = v106;
          }

          else
          {
            v79 = v120;
            v80 = v121;
            sub_241C97000(v119, v120);
            v81 = AssetInfo.seriesSortKey.getter(v79, v80);
            v83 = (v82 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v81;
            v84 = v117;
            v85 = v118;
            sub_241C97000(v116, v117);
            v86 = AssetInfo.seriesSortKey.getter(v84, v85) < v83;
            v88 = v86 & ~v87;
          }

          sub_241C8EEE8(v116);
          sub_241C8EEE8(v119);
          if (v88)
          {
            break;
          }

          if (a3 + 40 != v65 + 40)
          {
            v99 = *v65;
            v100 = *(v65 + 16);
            *(a3 + 32) = *(v65 + 32);
            *a3 = v99;
            *(a3 + 16) = v100;
          }

          v66 = v65 - 40;
          a3 -= 40;
          v67 = v65 > a4;
          v65 -= 40;
          if (!v67)
          {
            v26 = (v66 + 40);
            goto LABEL_64;
          }
        }

        if ((a3 + 40) != a2)
        {
          v101 = *v64;
          v102 = *(v64 + 1);
          *(a3 + 32) = *(v64 + 4);
          *a3 = v101;
          *(a3 + 16) = v102;
        }

        v26 = (v65 + 40);
        if (v65 + 40 <= a4)
        {
          break;
        }

        a2 = v64;
      }

      while (v64 > a1);
      v26 = (v65 + 40);
    }
  }

  else
  {
    if (a4 != a1 || &a1[40 * v24] <= a4)
    {
      memmove(a4, a1, 40 * v24);
    }

    v26 = &a4[40 * v24];
    v27 = v113;
    if (a2 - a1 >= 40 && a2 < a3)
    {
      v115 = v16 + 48;
      v111 = (v16 + 32);
      v112 = &a4[40 * v24];
      v108 = v16 + 8;
      while (1)
      {
        sub_241C96F9C(a2, v119);
        sub_241C96F9C(a4, v116);
        v28 = v120;
        v29 = v121;
        sub_241C97000(v119, v120);
        AssetInfo.seriesSortKey.getter(v28, v29);
        if (v30 & 1) != 0 && (v31 = v117, v32 = v118, sub_241C97000(v116, v117), AssetInfo.seriesSortKey.getter(v31, v32), (v33))
        {
          v34 = v120;
          v35 = v121;
          sub_241C97000(v119, v120);
          v36 = v109;
          AssetInfo.releaseDate.getter(v34, v35, v109);
          v37 = *v115;
          if ((*v115)(v36, 1, v27) == 1)
          {
            sub_241CF8D28();
            if (v37(v36, 1, v27) != 1)
            {
              sub_241CA0DE4(v36);
            }
          }

          else
          {
            (*v111)(v114, v36, v27);
          }

          v122 = a2;
          v48 = v117;
          v49 = v118;
          sub_241C97000(v116, v117);
          v50 = v110;
          AssetInfo.releaseDate.getter(v48, v49, v110);
          v51 = v50;
          if (v37(v50, 1, v27) == 1)
          {
            v52 = v107;
            sub_241CF8D28();
            v53 = v37(v50, 1, v27);
            v54 = v52;
            v55 = v112;
            v56 = v27;
            if (v53 != 1)
            {
              sub_241CA0DE4(v51);
            }
          }

          else
          {
            v54 = v107;
            (*v111)(v107, v50, v27);
            v55 = v112;
            v56 = v27;
          }

          v57 = v114;
          v47 = sub_241CF8D48();
          v58 = v54;
          v59 = *v108;
          (*v108)(v58, v56);
          v59(v57, v56);
          v27 = v56;
          v26 = v55;
          a2 = v122;
        }

        else
        {
          v38 = v120;
          v39 = v121;
          sub_241C97000(v119, v120);
          v40 = AssetInfo.seriesSortKey.getter(v38, v39);
          v42 = (v41 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v40;
          v43 = v117;
          v44 = v118;
          sub_241C97000(v116, v117);
          v45 = AssetInfo.seriesSortKey.getter(v43, v44) < v42;
          v47 = v45 & ~v46;
        }

        sub_241C8EEE8(v116);
        sub_241C8EEE8(v119);
        if ((v47 & 1) == 0)
        {
          break;
        }

        v60 = a2;
        v61 = a1 == a2;
        a2 += 40;
        if (!v61)
        {
          goto LABEL_28;
        }

LABEL_29:
        a1 += 40;
        if (a4 >= v26 || a2 >= a3)
        {
          goto LABEL_31;
        }
      }

      v60 = a4;
      v61 = a1 == a4;
      a4 += 40;
      if (v61)
      {
        goto LABEL_29;
      }

LABEL_28:
      v62 = *v60;
      v63 = *(v60 + 1);
      *(a1 + 4) = *(v60 + 4);
      *a1 = v62;
      *(a1 + 1) = v63;
      goto LABEL_29;
    }

LABEL_31:
    v64 = a1;
  }

  v103 = (v26 - a4) / 40;
  if (v64 != a4 || v64 >= &a4[40 * v103])
  {
    memmove(v64, a4, 40 * v103);
  }

  return 1;
}

uint64_t sub_241CA0034(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v69 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v34 = v7;
      v62 = v4;
      do
      {
        __dst = v34;
        v35 = (v34 - 40);
        v36 = (v69 - 40);
        v5 -= 40;
        while (1)
        {
          sub_241C96F9C(v36, v66);
          v39 = v35;
          sub_241C96F9C(v35, v63);
          v40 = v67;
          v41 = v68;
          sub_241C97000(v66, v67);
          v42 = AssetInfo.sequenceNumber.getter(v40, v41);
          v45 = (v44 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v42;
          v46 = v43;
          v47 = v44;
          v48 = v64;
          v49 = v65;
          sub_241C97000(v63, v64);
          v50 = AssetInfo.sequenceNumber.getter(v48, v49);
          v53 = (v52 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v50;
          v54 = MEMORY[0x245CFDCD0](v45, v46, v47, v53, v51, v52);
          sub_241C8EEE8(v63);
          sub_241C8EEE8(v66);
          if (v54)
          {
            break;
          }

          if (v5 + 40 != v36 + 40)
          {
            v55 = *v36;
            v56 = *(v36 + 16);
            *(v5 + 32) = *(v36 + 32);
            *v5 = v55;
            *(v5 + 16) = v56;
          }

          v37 = v36 - 40;
          v5 -= 40;
          v38 = v36 > v62;
          v36 -= 40;
          v35 = v39;
          if (!v38)
          {
            v69 = (v37 + 40);
            v7 = __dst;
            v4 = v62;
            goto LABEL_44;
          }
        }

        v7 = v39;
        if ((v5 + 40) != __dst)
        {
          v57 = *v39;
          v58 = *(v39 + 16);
          *(v5 + 32) = *(v39 + 32);
          *v5 = v57;
          *(v5 + 16) = v58;
        }

        v69 = (v36 + 40);
        v4 = v62;
        if (v36 + 40 <= v62)
        {
          break;
        }

        v34 = v7;
      }

      while (v7 > __src);
      v69 = (v36 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v69 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_241C96F9C(v7, v66);
        sub_241C96F9C(v4, v63);
        v14 = v67;
        v15 = v68;
        sub_241C97000(v66, v67);
        v16 = AssetInfo.sequenceNumber.getter(v14, v15);
        v19 = (v18 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v16;
        v20 = v17;
        v21 = v18;
        v22 = v64;
        v23 = v65;
        sub_241C97000(v63, v64);
        v24 = AssetInfo.sequenceNumber.getter(v22, v23);
        v27 = (v26 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v24;
        v28 = MEMORY[0x245CFDCD0](v19, v20, v21, v27, v25, v26);
        sub_241C8EEE8(v63);
        sub_241C8EEE8(v66);
        if ((v28 & 1) == 0)
        {
          break;
        }

        v29 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_17;
        }

LABEL_18:
        __src += 40;
        if (v4 >= v69 || v7 >= v5)
        {
          goto LABEL_20;
        }
      }

      v29 = v4;
      v30 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      v31 = *v29;
      v32 = *(v29 + 1);
      *(__src + 4) = *(v29 + 4);
      *__src = v31;
      *(__src + 1) = v32;
      goto LABEL_18;
    }

LABEL_20:
    v7 = __src;
  }

LABEL_44:
  v59 = (v69 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v59])
  {
    memmove(v7, v4, 40 * v59);
  }

  return 1;
}

uint64_t sub_241CA0478(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v116 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v115 = (&v111 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v117 = (&v111 - v14);
  MEMORY[0x28223BE20](v13);
  v114 = (&v111 - v15);
  v119 = sub_241CF8D88();
  v16 = *(v119 - 8);
  v17 = MEMORY[0x28223BE20](v119);
  v113 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v118 = &v111 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v112 = &v111 - v22;
  MEMORY[0x28223BE20](v21);
  v127 = &v111 - v23;
  v24 = (a2 - a1) / 40;
  v25 = (a3 - a2) / 40;
  if (v24 >= v25)
  {
    if (a4 != a2 || &a2[40 * v25] <= a4)
    {
      memmove(a4, a2, 40 * v25);
    }

    v26 = &a4[40 * v25];
    if ((a3 - a2) < 40 || a2 <= a1)
    {
      v66 = a2;
    }

    else
    {
      v117 = (v16 + 48);
      v114 = (v16 + 32);
      v112 = (v16 + 8);
      v120 = a4;
      do
      {
        v111 = a2;
        v67 = a2 - 40;
        v68 = (v26 - 40);
        a3 -= 40;
        v127 = a2 - 40;
        while (1)
        {
          sub_241C96F9C(v68, v124);
          sub_241C96F9C(v67, v121);
          v71 = v125;
          v72 = v126;
          sub_241C97000(v124, v125);
          AssetInfo.seriesSortKey.getter(v71, v72);
          if (v73 & 1) != 0 && (v74 = v122, v75 = v123, sub_241C97000(v121, v122), AssetInfo.seriesSortKey.getter(v74, v75), (v76))
          {
            v77 = v125;
            v78 = v126;
            sub_241C97000(v124, v125);
            v79 = v77;
            v80 = v115;
            AssetInfo.releaseDate.getter(v79, v78, v115);
            v81 = *v117;
            v82 = v119;
            if ((*v117)(v80, 1, v119) == 1)
            {
              sub_241CF8D28();
              if (v81(v80, 1, v82) != 1)
              {
                sub_241CA0DE4(v80);
              }
            }

            else
            {
              (*v114)(v118, v80, v82);
            }

            v94 = v122;
            v95 = v123;
            sub_241C97000(v121, v122);
            v96 = v94;
            v97 = v116;
            AssetInfo.releaseDate.getter(v96, v95, v116);
            if (v81(v97, 1, v82) == 1)
            {
              v98 = v113;
              sub_241CF8D28();
              v99 = v81(v97, 1, v82);
              v100 = v82;
              a4 = v120;
              if (v99 != 1)
              {
                sub_241CA0DE4(v97);
              }
            }

            else
            {
              v98 = v113;
              (*v114)(v113, v97, v82);
              v100 = v82;
              a4 = v120;
            }

            v101 = v118;
            v102 = sub_241CF8D58();
            v103 = v98;
            v93 = v102;
            v104 = *v112;
            (*v112)(v103, v100);
            v104(v101, v100);
          }

          else
          {
            v83 = v125;
            v84 = v126;
            sub_241C97000(v124, v125);
            v85 = AssetInfo.seriesSortKey.getter(v83, v84);
            v87 = v86;
            v89 = v122;
            v88 = v123;
            sub_241C97000(v121, v122);
            v90 = AssetInfo.seriesSortKey.getter(v89, v88);
            v92 = (v91 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v90;
            v93 = (v85 < v92) & ~v87;
          }

          sub_241C8EEE8(v121);
          sub_241C8EEE8(v124);
          if (v93)
          {
            break;
          }

          v67 = v127;
          if (a3 + 40 != v68 + 40)
          {
            v105 = *v68;
            v106 = *(v68 + 16);
            *(a3 + 32) = *(v68 + 32);
            *a3 = v105;
            *(a3 + 16) = v106;
          }

          v69 = v68 - 40;
          a3 -= 40;
          v70 = v68 > a4;
          v68 -= 40;
          if (!v70)
          {
            v26 = (v69 + 40);
            v66 = v111;
            goto LABEL_64;
          }
        }

        v66 = v127;
        if ((a3 + 40) != v111)
        {
          v107 = *v127;
          v108 = *(v127 + 1);
          *(a3 + 32) = *(v127 + 4);
          *a3 = v107;
          *(a3 + 16) = v108;
        }

        v26 = (v68 + 40);
        if (v68 + 40 <= a4)
        {
          break;
        }

        a2 = v66;
      }

      while (v66 > a1);
      v26 = (v68 + 40);
    }
  }

  else
  {
    if (a4 != a1 || &a1[40 * v24] <= a4)
    {
      memmove(a4, a1, 40 * v24);
    }

    v26 = &a4[40 * v24];
    if (a2 - a1 >= 40 && a2 < a3)
    {
      v118 = (v16 + 48);
      v115 = (v16 + 32);
      v116 = v26;
      v113 = (v16 + 8);
      while (1)
      {
        sub_241C96F9C(a2, v124);
        sub_241C96F9C(a4, v121);
        v27 = v125;
        v28 = v126;
        sub_241C97000(v124, v125);
        AssetInfo.seriesSortKey.getter(v27, v28);
        if (v29 & 1) != 0 && (v30 = v122, v31 = v123, sub_241C97000(v121, v122), AssetInfo.seriesSortKey.getter(v30, v31), (v32))
        {
          v33 = v125;
          v34 = v126;
          sub_241C97000(v124, v125);
          v35 = v33;
          v36 = v114;
          AssetInfo.releaseDate.getter(v35, v34, v114);
          v37 = v119;
          v38 = *v118;
          if ((*v118)(v36, 1, v119) == 1)
          {
            sub_241CF8D28();
            if (v38(v36, 1, v37) != 1)
            {
              sub_241CA0DE4(v36);
            }
          }

          else
          {
            (*v115)(v127, v36, v37);
          }

          v120 = a4;
          v50 = v122;
          v51 = v123;
          sub_241C97000(v121, v122);
          v52 = v50;
          v53 = v117;
          AssetInfo.releaseDate.getter(v52, v51, v117);
          if (v38(v53, 1, v37) == 1)
          {
            v54 = v112;
            sub_241CF8D28();
            v55 = v38(v53, 1, v37);
            v56 = v37;
            v57 = v116;
            if (v55 != 1)
            {
              sub_241CA0DE4(v53);
            }
          }

          else
          {
            v54 = v112;
            (*v115)(v112, v53, v37);
            v56 = v37;
            v57 = v116;
          }

          v58 = v127;
          v59 = sub_241CF8D58();
          v60 = v54;
          v49 = v59;
          v61 = *v113;
          (*v113)(v60, v56);
          v61(v58, v56);
          v26 = v57;
          a4 = v120;
        }

        else
        {
          v39 = v125;
          v40 = v126;
          sub_241C97000(v124, v125);
          v41 = AssetInfo.seriesSortKey.getter(v39, v40);
          v43 = v42;
          v44 = v122;
          v45 = v123;
          sub_241C97000(v121, v122);
          v46 = AssetInfo.seriesSortKey.getter(v44, v45);
          v48 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v47 & 1) == 0)
          {
            v48 = v46;
          }

          v49 = (v41 < v48) & ~v43;
        }

        sub_241C8EEE8(v121);
        sub_241C8EEE8(v124);
        if ((v49 & 1) == 0)
        {
          break;
        }

        v62 = a2;
        v63 = a1 == a2;
        a2 += 40;
        if (!v63)
        {
          goto LABEL_27;
        }

LABEL_28:
        a1 += 40;
        if (a4 >= v26 || a2 >= a3)
        {
          goto LABEL_30;
        }
      }

      v62 = a4;
      v63 = a1 == a4;
      a4 += 40;
      if (v63)
      {
        goto LABEL_28;
      }

LABEL_27:
      v64 = *v62;
      v65 = *(v62 + 1);
      *(a1 + 4) = *(v62 + 4);
      *a1 = v64;
      *(a1 + 1) = v65;
      goto LABEL_28;
    }

LABEL_30:
    v66 = a1;
  }

LABEL_64:
  v109 = (v26 - a4) / 40;
  if (v66 != a4 || v66 >= &a4[40 * v109])
  {
    memmove(v66, a4, 40 * v109);
  }

  return 1;
}

uint64_t sub_241CA0DE4(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241CA0E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v35 = a5;
  v34 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_241CF9598();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v33 = &v31 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  if (a2 < 1)
  {
    sub_241CF9438();
  }

  else
  {
    sub_241CF9478();
  }

  sub_241CF9428();
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v18, AssociatedTypeWitness);
    (*(v31 + 8))(v10, v32);
LABEL_8:
    v22 = swift_getAssociatedTypeWitness();
    return (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
  }

  v19 = v33;
  (*(v11 + 32))(v33, v10, AssociatedTypeWitness);
  sub_241CF9478();
  swift_getAssociatedConformanceWitness();
  v20 = sub_241CF8FF8();
  v21 = *(v11 + 8);
  v21(v14, AssociatedTypeWitness);
  if (v20)
  {
    v21(v19, AssociatedTypeWitness);
    v21(v18, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v24 = sub_241CF94E8();
  v26 = v25;
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(v27 - 8);
  v29 = v19;
  v30 = v35;
  (*(v28 + 16))(v35, v26, v27);
  v24(v36, 0);
  v21(v29, AssociatedTypeWitness);
  v21(v18, AssociatedTypeWitness);
  return (*(v28 + 56))(v30, 0, 1, v27);
}

uint64_t RandomAccessCollection.element(_:equatedBy:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a4;
  v23 = a1;
  v24 = a3;
  v25 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_241CF9598();
  v11 = *(v20 - 8);
  v12 = MEMORY[0x28223BE20](v20);
  v14 = &v20 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v20 - v16;
  v26 = a5;
  v27 = a6;
  v22 = a6;
  v28 = a2;
  v29 = v24;
  v30 = v23;
  sub_241CF9498();
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v20);
    v18 = swift_getAssociatedTypeWitness();
    return (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  }

  else
  {
    (*(v15 + 32))(v17, v14, AssociatedTypeWitness);
    sub_241CA0E4C(v17, v21, v25);
    return (*(v15 + 8))(v17, AssociatedTypeWitness);
  }
}

uint64_t RandomAccessCollection.firstAndLast.getter@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v30 = a3;
  v27 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_241CF9598();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_241CF94A8();
  v16 = *(v11 + 48);
  if (v16(v10, 1, AssociatedTypeWitness) == 1)
  {
    v7 = v10;
LABEL_5:
    (*(v28 + 8))(v7, v29);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v30, 1, 1, TupleTypeMetadata2);
  }

  v17 = v10;
  v18 = *(v11 + 32);
  v18(v15, v17, AssociatedTypeWitness);
  sub_241CF8F98();
  if (v16(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v15, AssociatedTypeWitness);
    goto LABEL_5;
  }

  v21 = v26;
  v18(v26, v7, AssociatedTypeWitness);
  v22 = swift_getTupleTypeMetadata2();
  v23 = *(v22 + 48);
  v24 = v30;
  v18(v30, v15, AssociatedTypeWitness);
  v18(&v24[v23], v21, AssociatedTypeWitness);
  return (*(*(v22 - 8) + 56))(v24, 0, 1, v22);
}

uint64_t RandomAccessCollection<>.element(_:offsetBy:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[2] = a5;
  v18 = a6;
  v17[0] = a2;
  v17[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_241CF9598();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v14 = v17 - v13;
  sub_241CF94D8();
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v15 = swift_getAssociatedTypeWitness();
    return (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
  }

  else
  {
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    sub_241CA0E4C(v14, v17[0], v18);
    return (*(v12 + 8))(v14, AssociatedTypeWitness);
  }
}

CGRect __swiftcall CGRect.center(in:)(CGRect in)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  rect = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  MaxX = CGRectGetMaxX(in);
  v22.origin.x = v8;
  v22.origin.y = v7;
  v22.size.width = v6;
  v22.size.height = v5;
  v13 = (MaxX - CGRectGetMaxX(v22)) * 0.5;
  v23.origin.x = v8;
  v23.origin.y = v7;
  v23.size.width = v6;
  v23.size.height = v5;
  v14 = CGRectGetMinX(v23) + v13;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = rect;
  MaxY = CGRectGetMaxY(v24);
  v25.origin.x = v8;
  v25.origin.y = v7;
  v25.size.width = v6;
  v25.size.height = v5;
  v16 = (MaxY - CGRectGetMaxY(v25)) * 0.5;
  v26.origin.x = v8;
  v26.origin.y = v7;
  v26.size.width = v6;
  v26.size.height = v5;
  v17 = CGRectGetMinY(v26) + v16;
  v18 = v14;
  v19 = v6;
  v20 = v5;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

CGSize __swiftcall CGRect.scaledToFit(in:times:horizontally:)(CGSize in, Swift::Int times, Swift::Bool horizontally)
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  if (horizontally)
  {
    width = in.width;
    v20.origin.x = v3;
    v20.origin.y = v4;
    v20.size.width = v5;
    v20.size.height = v6;
    v13 = CGRectGetWidth(v20);
  }

  else
  {
    height = in.height;
    v21.origin.x = v3;
    v21.origin.y = v4;
    v21.size.width = v5;
    v21.size.height = v6;
    v13 = CGRectGetHeight(v21);
    width = height;
  }

  v15 = width / (v13 * times);
  v22.origin.x = v10;
  v22.origin.y = v9;
  v22.size.width = v8;
  v22.size.height = v7;
  v16 = floor(v15 * CGRectGetWidth(v22));
  v23.origin.x = v10;
  v23.origin.y = v9;
  v23.size.width = v8;
  v23.size.height = v7;
  v17 = floor(v15 * CGRectGetHeight(v23));
  v18 = v16;
  result.height = v17;
  result.width = v18;
  return result;
}

CGFloat sub_241CA1D1C(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  v10 = CGRectGetWidth(v12) - a1;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetHeight(v13);
  return v10;
}

uint64_t sub_241CA1D94()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69DF8);
  sub_241C936C0(v0, qword_27EC69DF8);
  return sub_241CF8E78();
}

uint64_t sub_241CA1E34()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69E10);
  sub_241C936C0(v0, qword_27EC69E10);
  return sub_241CF8E78();
}

uint64_t sub_241CA1ED8()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69E28);
  sub_241C936C0(v0, qword_27EC69E28);
  return sub_241CF8E78();
}

uint64_t sub_241CA1F78()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69E40);
  sub_241C936C0(v0, qword_27EC69E40);
  return sub_241CF8E78();
}

uint64_t sub_241CA201C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_241CF8E88();
  v7 = sub_241C936C0(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *sub_241CA20B4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_241CA2124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CA2190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LibraryAudiobookInfo.seriesInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LibraryAudiobookInfo(0) + 20);

  return sub_241CA22A4(v3, a1);
}

uint64_t type metadata accessor for LibraryAudiobookInfo(uint64_t a1)
{
  result = qword_27EC69E80;
  if (!qword_27EC69E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CA22A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69E58, &qword_241CFB200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryAudiobookInfo.seriesInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LibraryAudiobookInfo(0) + 20);

  return sub_241CA2358(a1, v3);
}

uint64_t sub_241CA2358(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69E58, &qword_241CFB200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LibraryAudiobookInfo.supplementalContents.getter()
{
  type metadata accessor for LibraryAudiobookInfo(0);
}

uint64_t LibraryAudiobookInfo.init(commonInfo:seriesInfo:isSG:supplementalContents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LibraryAudiobookInfo(0);
  v11 = a5 + v10[5];
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  sub_241CA24F8(a1, a5);
  result = sub_241CA2358(a2, v11);
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t sub_241CA24F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CA259C(uint64_t a1)
{
  result = sub_241CA26B8(&qword_27EC69E60, &protocol conformance descriptor for LibraryAudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA25EC(uint64_t a1)
{
  result = sub_241CA26B8(&qword_27EC69E68, &protocol conformance descriptor for LibraryAudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA2630(uint64_t a1)
{
  result = sub_241CA26B8(&qword_27EC69E70, &protocol conformance descriptor for LibraryAudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA2674(uint64_t a1)
{
  result = sub_241CA26B8(&qword_27EC69E78, &protocol conformance descriptor for LibraryAudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA26B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LibraryAudiobookInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_241CA2728(uint64_t a1)
{
  type metadata accessor for CommonLibraryAssetInfo(319);
  if (v1 <= 0x3F)
  {
    sub_241CA27FC(319, &qword_27EC69E90, &qword_27EC69E98, "2x");
    if (v2 <= 0x3F)
    {
      sub_241CA27FC(319, &qword_27EC69EA0, &qword_27EC69EA8, "2x");
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_241CA27FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_241C9452C(a3, a4);
    v5 = sub_241CF9598();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t SeriesArtistInfo.ArtistPlurality.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

uint64_t SeriesArtistInfo.ArtistType.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

void __swiftcall SeriesArtistInfo.init(hasUniqueArtists:count:names:artistType:)(BookFoundation::SeriesArtistInfo_optional *__return_ptr retstr, Swift::Bool_optional hasUniqueArtists, Swift::Int_optional count, Swift::OpaquePointer_optional names, BookFoundation::SeriesArtistInfo::ArtistType artistType)
{
  if (hasUniqueArtists.value == 2 || !hasUniqueArtists.value)
  {
    if (count.is_nil)
    {

      if (qword_27EC69AA0 != -1)
      {
        swift_once();
      }

      v8 = sub_241CF8E88();
      sub_241C936C0(v8, qword_27EC69E28);
      v9 = sub_241CF8E68();
      v10 = sub_241CF9508();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_22;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Missing count data in authorDisplayInfo or narratorDisplayInfo values. Cannot construct a valid SeriesArtistInfo.";
      goto LABEL_21;
    }

    if (names.value._rawValue)
    {
      v13 = *(names.value._rawValue + 2);
      if (v13)
      {
        if (v13 <= count.value)
        {
          v6 = 1024;
          is_nil = 0;
          if ((count.value - 1) < 3)
          {
            v6 = ((count.value - 1) << 8) + 256;
          }

          goto LABEL_25;
        }

        if (qword_27EC69AA0 != -1)
        {
          swift_once();
        }

        v14 = sub_241CF8E88();
        sub_241C936C0(v14, qword_27EC69E28);
        v9 = sub_241CF8E68();
        v10 = sub_241CF9508();
        if (!os_log_type_enabled(v9, v10))
        {
LABEL_22:

          *&retstr->value.artistType = 0;
          *(&retstr->value.totalArtistCount.value + 6) = 0;
          *(&retstr->value.names.value._rawValue + 5) = 0;
          *(&retstr[1].value.totalArtistCount.value + 1) = 1;
          return;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Invalid data in authorDisplayInfo or narratorDisplayInfo values. Count provided was less than number of names provided. Cannot construct a valid SeriesArtistInfo.";
LABEL_21:
        _os_log_impl(&dword_241C8C000, v9, v10, v12, v11, 2u);
        MEMORY[0x245CFE970](v11, -1, -1);
        goto LABEL_22;
      }
    }

    if (qword_27EC69AA0 != -1)
    {
      swift_once();
    }

    v15 = sub_241CF8E88();
    sub_241C936C0(v15, qword_27EC69E28);
    v9 = sub_241CF8E68();
    v10 = sub_241CF9508();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_22;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Missing names data in authorDisplayInfo or narratorDisplayInfo values. Cannot construct a valid SeriesArtistInfo.";
    goto LABEL_21;
  }

  v6 = 0;
  is_nil = count.is_nil;
LABEL_25:
  *&retstr->value.artistType = v6 | **&names.is_nil;
  *(&retstr->value.totalArtistCount.value + 6) = count.value;
  *(&retstr->value.names.value._rawValue + 5) = is_nil;
  *(&retstr[1].value.totalArtistCount.value + 1) = names.value._rawValue;
}

unint64_t sub_241CA2C30()
{
  result = qword_27EC69EB0;
  if (!qword_27EC69EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69EB0);
  }

  return result;
}

unint64_t sub_241CA2C88()
{
  result = qword_27EC69EB8;
  if (!qword_27EC69EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69EB8);
  }

  return result;
}

__n128 sub_241CA2CDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_241CA2CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_241CA2D44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinishedDateKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinishedDateKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_241CA2F08(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_241CF9448();
  if (!v19)
  {
    return sub_241CF92C8();
  }

  v41 = v19;
  v45 = sub_241CF9748();
  v32 = sub_241CF9758();
  sub_241CF9728();
  result = sub_241CF9438();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_241CF94E8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_241CF9738();
      result = sub_241CF9488();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BookFoundation::SeriesType_optional __swiftcall SeriesType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241CF9838();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SeriesType.rawValue.getter()
{
  if (*v0)
  {
    return 1802465122;
  }

  else
  {
    return 0x6F6F626F69647561;
  }
}

uint64_t sub_241CA33C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802465122;
  }

  else
  {
    v3 = 0x6F6F626F69647561;
  }

  if (v2)
  {
    v4 = 0xE90000000000006BLL;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802465122;
  }

  else
  {
    v5 = 0x6F6F626F69647561;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE90000000000006BLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_241CF98C8();
  }

  return v8 & 1;
}

uint64_t sub_241CA3468()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CA34E8(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CA3554(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CA35D0@<X0>(char *a2@<X8>)
{
  v3 = sub_241CF9838();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_241CA3630(uint64_t *a1@<X8>)
{
  v2 = 1802465122;
  if (!*v1)
  {
    v2 = 0x6F6F626F69647561;
  }

  v3 = 0xE90000000000006BLL;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MappedSeriesInfo.id.getter()
{
  v1 = *v0;

  return v1;
}

BookFoundation::MappedSeriesInfo __swiftcall MappedSeriesInfo.init(id:contentKind:)(BookFoundation::MappedSeriesInfo id, BookFoundation::ContentKind contentKind)
{
  v3 = *contentKind;
  *v2 = id.id;
  *(v2 + 16) = v3;
  id.contentKind = contentKind;
  return id;
}

uint64_t SeriesInfo.assets.getter(uint64_t a1, uint64_t (**a2)(void, void))
{
  v3 = a2;
  result = sub_241CA3B00(a1, a2);
  if (!v2)
  {
    v38 = result;
    v39 = 0;
    v6 = v3[7](a1, v3);
    if (v6)
    {
      v7 = v6;
      if (v6 >> 62)
      {
        if (sub_241CF97D8())
        {
          v8 = sub_241CF97D8();
          if (!v8)
          {
            v36 = v3;
            v37 = a1;

            v9 = MEMORY[0x277D84F90];
            if (*(MEMORY[0x277D84F90] + 16))
            {
LABEL_17:
              sub_241C93918(&qword_27EC69EC0, &qword_241CFB470);
              v27 = sub_241CF9808();
              goto LABEL_22;
            }

LABEL_21:
            v27 = MEMORY[0x277D84F98];
LABEL_22:
            v41 = v27;
            sub_241CA83BC(v9, 1, &v41);
            v3 = v39;
            if (!v39)
            {

              v29 = v41;
              v41 = v38;
              MEMORY[0x28223BE20](v28);
              v35[2] = v37;
              v35[3] = v36;
              v35[4] = v29;
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v31 = sub_241CF9308();
              WitnessTable = swift_getWitnessTable();
              v34 = sub_241CA2F08(sub_241CA865C, v35, v31, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v33);

              return v34;
            }

            goto LABEL_28;
          }

LABEL_5:
          v40 = v7;
          v41 = MEMORY[0x277D84F90];
          sub_241C94574(0, v8 & ~(v8 >> 63), 0);
          if (v8 < 0)
          {
            __break(1u);
LABEL_28:

            __break(1u);
            return result;
          }

          v36 = v3;
          v37 = a1;
          v9 = v41;
          v10 = v40;
          if ((v40 & 0xC000000000000001) != 0)
          {
            v11 = 0;
            do
            {
              v12 = MEMORY[0x245CFDE40](v11, v10);
              v13 = *(v12 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
              v14 = *(v12 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);
              v41 = v9;
              v16 = v9[2];
              v15 = v9[3];

              if (v16 >= v15 >> 1)
              {
                sub_241C94574((v15 > 1), v16 + 1, 1);
                v10 = v40;
                v9 = v41;
              }

              ++v11;
              v9[2] = v16 + 1;
              v17 = &v9[3 * v16];
              v17[4] = v13;
              v17[5] = v14;
              v17[6] = v12;
            }

            while (v8 != v11);
          }

          else
          {
            v18 = (v40 + 32);
            do
            {
              v19 = *v18;
              v20 = (*v18 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
              v21 = *v20;
              v22 = v20[1];
              v41 = v9;
              v24 = v9[2];
              v23 = v9[3];
              v25 = v19;

              if (v24 >= v23 >> 1)
              {
                sub_241C94574((v23 > 1), v24 + 1, 1);
                v9 = v41;
              }

              v9[2] = v24 + 1;
              v26 = &v9[3 * v24];
              v26[4] = v21;
              v26[5] = v22;
              v26[6] = v25;
              ++v18;
              --v8;
            }

            while (v8);
          }

          if (v9[2])
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          goto LABEL_5;
        }
      }
    }

    return v38;
  }

  return result;
}

uint64_t sub_241CA3B00(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v99 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v83 - v9;
  v97 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v97, v11);
  v98 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v95 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v83 - v15);
  v17 = *(v4 + 40);
  v96 = v2;
  v100 = a1;
  v94 = v17;
  v17(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v36 = *v16;
      v37 = MSeries.assetsEnrichedWithSeries.getter();

      if (v37)
      {
        v103 = v37;
        MEMORY[0x28223BE20](v38);
        v39 = v102;
        *(&v83 - 4) = v100;
        *(&v83 - 3) = v39;
        *(&v83 - 2) = v36;
        sub_241C93918(&qword_27EC69F20, &unk_241CFB968);
        swift_getAssociatedTypeWitness();
        sub_241CA8CE8();
        AssociatedTypeWitness = sub_241CF91E8();
      }

      else
      {
        sub_241CA8C74();
        swift_allocError();
        *v49 = 0;
        v49[1] = 0;
        swift_willThrow();
      }

      return AssociatedTypeWitness;
    }

    (*(v98 + 8))(v16, v12);
    v19 = v101;
LABEL_13:
    v41 = v95;
    v42 = v100;
    v94(v100, v4);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43)
    {
      v44 = v99;
      if (v43 != 1)
      {
        swift_getAssociatedTypeWitness();
        AssociatedTypeWitness = sub_241CF92C8();
        (*(v98 + 8))(v41, v12);
        return AssociatedTypeWitness;
      }
    }

    else
    {

      v44 = v99;
    }

    (*(v6 + 32))(v44, v41, AssociatedTypeWitness);
    v45 = v102;
    v46 = v42;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v48 = sub_241CC09A0(AssociatedTypeWitness, AssociatedConformanceWitness);
    if (v48)
    {
      v93 = v6;
      v101 = &v83;
      v103 = v48;
      MEMORY[0x28223BE20](v48);
      *(&v83 - 4) = v46;
      *(&v83 - 3) = v45;
      *(&v83 - 2) = v44;
      swift_getAssociatedTypeWitness();
      sub_241CF9308();
      swift_getAssociatedTypeWitness();
      swift_getWitnessTable();
      sub_241CF91E8();
      if (v19)
      {

        (*(v93 + 8))(v44, AssociatedTypeWitness);
      }

      else
      {

        v54 = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
        v92 = AssociatedTypeWitness;
        if (v54)
        {
          LOBYTE(v103) = 0;
          sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
          v55 = sub_241CF9778();

          SeriesListSortOrder.sortedAssets(for:)(v55);

          AssociatedTypeWitness = sub_241CF9778();
        }

        else
        {
          sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
          v66 = sub_241CF9778();

          v103 = v66;

          sub_241C96F5C(&v103);

          AssociatedTypeWitness = sub_241CF9778();
        }

        (*(v93 + 8))(v99, v92);
      }
    }

    else
    {
      sub_241CA8C74();
      swift_allocError();
      *v50 = 0;
      v50[1] = 0;
      swift_willThrow();
      (*(v6 + 8))(v44, AssociatedTypeWitness);
    }

    return AssociatedTypeWitness;
  }

  v89 = *(v16 + *(swift_getTupleTypeMetadata2() + 48));
  (*(v6 + 32))(v10, v16, AssociatedTypeWitness);
  v20 = v100;
  v21 = swift_getAssociatedConformanceWitness();
  v90 = v10;
  v22 = sub_241CC09A0(AssociatedTypeWitness, v21);
  v93 = v6;
  v87 = v12;
  if (!v22)
  {
    swift_getAssociatedTypeWitness();
    v22 = sub_241CF92C8();
  }

  v91 = v22;
  v88 = &v83;
  v103 = v22;
  MEMORY[0x28223BE20](v22);
  v23 = v102;
  *(&v83 - 2) = v20;
  *(&v83 - 1) = v23;
  v84 = v24;
  swift_getAssociatedTypeWitness();
  v25 = sub_241CF9308();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = AssociatedTypeWitness;
  v27 = TupleTypeMetadata2;
  WitnessTable = swift_getWitnessTable();
  v86 = v25;
  v28 = v101;
  v103 = sub_241CA2F08(sub_241CA8D4C, (&v83 - 4), v25, v27, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v29);
  MEMORY[0x28223BE20](v103);
  *(&v83 - 2) = v20;
  *(&v83 - 1) = v23;
  sub_241CF9308();
  swift_getWitnessTable();
  v30 = sub_241CF8F48();
  AssociatedTypeWitness = v28;
  v31 = v89;
  v32 = MSeries.assetsEnrichedWithSeries.getter();

  if (!v32)
  {

    v40 = v92;
    v6 = v93;
    (*(v93 + 8))(v90, v92);
    v19 = v28;
    AssociatedTypeWitness = v40;
    v12 = v87;
    goto LABEL_13;
  }

  v103 = v32;
  MEMORY[0x28223BE20](v33);
  *(&v83 - 4) = v100;
  *(&v83 - 3) = v23;
  *(&v83 - 2) = v31;
  *(&v83 - 1) = v30;
  sub_241C93918(&qword_27EC69F20, &unk_241CFB968);
  v34 = swift_getAssociatedTypeWitness();
  sub_241CA8CE8();
  v35 = sub_241CF91E8();
  v101 = v28;
  if (v28)
  {

    (*(v93 + 8))(v90, v92);
    return AssociatedTypeWitness;
  }

  AssociatedTypeWitness = v35;
  v99 = v31;

  v103 = v91;
  v52 = sub_241CF94C8();
  v53 = v90;
  if (v52)
  {

    (*(v93 + 8))(v53, v92);
    return AssociatedTypeWitness;
  }

  if (v32 >> 62)
  {
    v56 = sub_241CF97D8();
  }

  else
  {
    v56 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v102;
  v98 = v34;
  if (!v56)
  {

    v58 = MEMORY[0x277D84F90];
LABEL_45:
    v74 = sub_241CDE8A8(v58);

    v103 = v91;
    MEMORY[0x28223BE20](v75);
    v76 = v100;
    *(&v83 - 4) = v100;
    *(&v83 - 3) = v57;
    *(&v83 - 2) = v74;
    swift_getWitnessTable();
    v77 = v101;
    v78 = sub_241CF9718();

    v103 = v78;
    MEMORY[0x28223BE20](v79);
    *(&v83 - 4) = v76;
    *(&v83 - 3) = v57;
    *(&v83 - 2) = v53;
    swift_getWitnessTable();
    sub_241CF91E8();
    if (v77)
    {

      (*(v93 + 8))(v53, v92);
    }

    else
    {

      sub_241CF92B8();

      v80 = v92;
      if ((*(v84 + 72))(v92))
      {
        LOBYTE(v103) = 0;
        sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
        v81 = sub_241CF9778();

        SeriesListSortOrder.sortedAssets(for:)(v81);

        AssociatedTypeWitness = sub_241CF9778();

        (*(v93 + 8))(v53, v80);
      }

      else
      {
        sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
        v82 = sub_241CF9778();

        v103 = v82;

        sub_241C96F5C(&v103);

        AssociatedTypeWitness = sub_241CF9778();

        (*(v93 + 8))(v53, v92);
      }
    }

    return AssociatedTypeWitness;
  }

  v103 = MEMORY[0x277D84F90];
  sub_241C94488(0, v56 & ~(v56 >> 63), 0);
  if ((v56 & 0x8000000000000000) == 0)
  {
    v58 = v103;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v59 = 0;
      do
      {
        v60 = MEMORY[0x245CFDE40](v59, v32);
        v62 = *(v60 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
        v61 = *(v60 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);

        swift_unknownObjectRelease();
        v103 = v58;
        v64 = *(v58 + 16);
        v63 = *(v58 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_241C94488((v63 > 1), v64 + 1, 1);
          v58 = v103;
        }

        ++v59;
        *(v58 + 16) = v64 + 1;
        v65 = v58 + 16 * v64;
        *(v65 + 32) = v62;
        *(v65 + 40) = v61;
      }

      while (v56 != v59);
    }

    else
    {
      v67 = (v32 + 32);
      do
      {
        v68 = (*v67 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
        v70 = *v68;
        v69 = v68[1];
        v103 = v58;
        v72 = *(v58 + 16);
        v71 = *(v58 + 24);

        if (v72 >= v71 >> 1)
        {
          sub_241C94488((v71 > 1), v72 + 1, 1);
          v58 = v103;
        }

        *(v58 + 16) = v72 + 1;
        v73 = v58 + 16 * v72;
        *(v73 + 32) = v70;
        *(v73 + 40) = v69;
        ++v67;
        --v56;
      }

      while (v56);
    }

    v53 = v90;
    v57 = v102;
    goto LABEL_45;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_241CA4AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v29 = a2;
  v30 = a5;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_241CF9598();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - v11;
  v13 = a1;
  v14 = swift_checkMetadataState();
  v15 = ContentInfo.storeData.getter(v14, v7);
  if (v15)
  {
  }

  else
  {
    v27 = v10;
    v28 = v13;
    v17 = ContentInfo.id.getter(v14, v7);
    if (*(v29 + 16))
    {
      v26[1] = AssociatedConformanceWitness;
      v19 = sub_241C8E1DC(v17, v18);
      v21 = v20;

      v13 = v28;
      if (v21)
      {
        v22 = *(*(v29 + 56) + 8 * v19);
        ContentInfo.libraryData.getter(v14, v7, v12);
        v23 = *(AssociatedTypeWitness - 8);
        if ((*(v23 + 48))(v12, 1, AssociatedTypeWitness) == 1)
        {
          (*(v27 + 8))(v12, v9);
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
        }

        else
        {
          *(&v32 + 1) = AssociatedTypeWitness;
          v33 = swift_getAssociatedConformanceWitness();
          v24 = sub_241CA8DEC(&v31);
          (*(v23 + 32))(v24, v12, AssociatedTypeWitness);
        }

        v25 = v22;
        static ContentInfoUtilities.assetInfo(libraryAssetInfo:storeAsset:)(&v31, v22, &v34);

        sub_241C8EA54(&v31, &qword_27EC69F10, &qword_241CFB960);
        if (v35)
        {
          sub_241C914E4(&v34, v36);
          sub_241C914E4(v36, &v34);
          sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
          return swift_dynamicCast();
        }

        sub_241C8EA54(&v34, &qword_27EC69EC8, &qword_241CFD7D0);
      }
    }

    else
    {

      v13 = v28;
    }
  }

  return (*(*(v14 - 8) + 16))(v30, v13, v14);
}

uint64_t SeriesInfo.assetCount.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_241CC3C40(KeyPath, v5, a1, *(a2 + 8), &v7);

  return v7;
}

uint64_t sub_241CA4EE0@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 32);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t sub_241CA4F8C@<X0>(uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_241CF92F8();
  *a4 = result;
  return result;
}

uint64_t SeriesInfo.assetMinimumCount.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC40F0(KeyPath, a1, *(a2 + 8), &v6);

  return v6;
}

void SeriesInfo.authorInfo.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, BookFoundation::SeriesArtistInfo_optional *a3@<X8>)
{
  v42 = a3;
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v40 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v11, v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v40 - v14);
  v16 = *(v6 + 40);
  v41 = v3;
  v16(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 32))(v10, v15, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v40 = *(AssociatedConformanceWitness + 48);
      if (v40(AssociatedTypeWitness, AssociatedConformanceWitness))
      {

        v19 = *(AssociatedConformanceWitness + 56);
      }

      else
      {
        v19 = *(AssociatedConformanceWitness + 56);
        v39 = v19(AssociatedTypeWitness, AssociatedConformanceWitness);
        if (v39 == 2 || (v39 & 1) == 0)
        {
          sub_241CA54A0(a1, a2, v42);
          goto LABEL_19;
        }
      }

      v20.value = v19(AssociatedTypeWitness, AssociatedConformanceWitness);
      v21 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v23 = v22;
      v24 = v40(AssociatedTypeWitness, AssociatedConformanceWitness);
      v44 = 0;
      v45.is_nil = v23 & 1;
      v25 = &v44;
      v45.value = v21;
      SeriesArtistInfo.init(hasUniqueArtists:count:names:artistType:)(v42, v20, v45, *&v24, v26);
LABEL_19:
      (*(v8 + 8))(v10, AssociatedTypeWitness);
      return;
    }

    v27 = *v15;
  }

  else
  {
    v27 = *(v15 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v8 + 8))(v15, AssociatedTypeWitness);
  }

  v28 = v27;
  v29 = [v28 authorNames];
  if (v29)
  {

    v30.value = *(v28 + OBJC_IVAR____TtC14BookFoundation7MSeries_hasUniqueAuthors);
  }

  else
  {
    if (*(v28 + OBJC_IVAR____TtC14BookFoundation7MSeries_hasUniqueAuthors) != 1)
    {

      sub_241CA54A0(a1, a2, v42);
      return;
    }

    v30.value = 1;
  }

  v31 = MSeries.authorCount.getter();
  v33 = v32;

  v34 = [v28 authorNames];
  if (v34)
  {
    v36 = sub_241CF9298();
  }

  else
  {
    v36 = 0;
  }

  v43 = 0;
  v46.is_nil = v33 & 1;
  v37 = &v43;
  v46.value = v31;
  v38 = v36;
  SeriesArtistInfo.init(hasUniqueArtists:count:names:artistType:)(v42, v30, v46, *(&v37 - 1), v35);
}

void sub_241CA54A0(uint64_t a1@<X0>, uint64_t (**a2)(void, void)@<X1>, BookFoundation::SeriesArtistInfo_optional *a3@<X8>)
{
  v19[0] = SeriesInfo.assets.getter(a1, a2);
  MEMORY[0x28223BE20](v19[0]);
  v18[2] = a1;
  v18[3] = a2;
  swift_getAssociatedTypeWitness();
  v6 = sub_241CF9308();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_241CA2F08(sub_241CA89D8, v18, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  v19[0] = MEMORY[0x277D84F98];

  v11 = sub_241CA89F8(v10, v19);

  v12 = *(v9 + 16);
  if (v12 >= 5)
  {
    v12 = 5;
  }

  v13 = sub_241CE0258(v9 + 32, 0, (2 * v12) | 1);

  v14 = *(v13 + 16);

  v20.value = *(v11 + 16);
  LOBYTE(v19[0]) = 0;
  v15 = v19;
  v20.is_nil = 0;
  v16 = v11;
  SeriesArtistInfo.init(hasUniqueArtists:count:names:artistType:)(a3, (v14 == 5), v20, *(&v15 - 1), v17);
}

void *SeriesInfo.contentsForArtwork.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v39 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v9, v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v39 - v12);
  (*(v4 + 40))(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v8, v13, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v16 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
      if (v16)
      {
        *&v39 = &v39;
        *&v44 = v16;
        MEMORY[0x28223BE20](v16);
        *(&v39 - 2) = a1;
        *(&v39 - 1) = a2;
        swift_getAssociatedTypeWitness();
        sub_241CF9308();
        v40 = v6;
        swift_getWitnessTable();
        v17 = sub_241CF91F8();

        *&v41 = v17;
        swift_getWitnessTable();
        v18 = sub_241CF94B8();
        v39 = v44;
        v41 = v44;
        v42 = v45;
        MEMORY[0x28223BE20](v18);
        *(&v39 - 2) = a1;
        *(&v39 - 1) = a2;
        sub_241CF9608();
        sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
        swift_getWitnessTable();
        v19 = sub_241CF91E8();
        swift_unknownObjectRelease();
        (*(v40 + 8))(v8, AssociatedTypeWitness);
        return v19;
      }

      (*(v6 + 8))(v8, AssociatedTypeWitness);
      return 0;
    }

    v20 = *v13;
  }

  else
  {
    v20 = *(v13 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v6 + 8))(v13, AssociatedTypeWitness);
  }

  v21 = sub_241CA8188(@"contents-for-artwork", sub_241CF1858);

  if (!v21)
  {
    return 0;
  }

  if (v21 >> 62)
  {
    goto LABEL_31;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
LABEL_10:
    v23 = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x245CFDE40](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v22 = sub_241CF97D8();
        if (!v22)
        {
          goto LABEL_32;
        }

        goto LABEL_10;
      }

      type metadata accessor for MBook(0);
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        break;
      }

      type metadata accessor for MAudiobook(0);
      v33 = swift_dynamicCastClass();
      if (v33)
      {
        v34 = v33;
        v35 = type metadata accessor for AudiobookInfo(0);
        *(&v42 + 1) = v35;
        v43 = sub_241CA86F4(&qword_27EC69ED0, type metadata accessor for AudiobookInfo, &protocol conformance descriptor for AudiobookInfo);
        v31 = sub_241CA8DEC(&v41);
        *v31 = v34;
        sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
        swift_storeEnumTagMultiPayload();
        *(v31 + *(v35 + 20)) = 0;
        v32 = (v35 + 24);
        goto LABEL_21;
      }

      *(&v45 + 1) = type metadata accessor for MAsset(0);
      *&v44 = v26;
      v24 = sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
      sub_241CBC000(&v44, v24);
      sub_241C8EEE8(&v44);
      v41 = 0u;
      v42 = 0u;
      v43 = 0;
      sub_241C8EA54(&v41, &qword_27EC69EC8, &qword_241CFD7D0);
LABEL_12:
      ++v23;
      if (v27 == v22)
      {
        goto LABEL_33;
      }
    }

    v29 = v28;
    v30 = type metadata accessor for BookInfo(0);
    *(&v42 + 1) = v30;
    v43 = sub_241CA86F4(&qword_27EC69EE0, type metadata accessor for BookInfo, &protocol conformance descriptor for BookInfo);
    v31 = sub_241CA8DEC(&v41);
    *v31 = v29;
    sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
    swift_storeEnumTagMultiPayload();
    v32 = (v30 + 20);
LABEL_21:
    *(v31 + *v32) = 1;
    sub_241C914E4(&v41, &v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_241CBFD98(0, v19[2] + 1, 1, v19);
    }

    v37 = v19[2];
    v36 = v19[3];
    if (v37 >= v36 >> 1)
    {
      v19 = sub_241CBFD98((v36 > 1), v37 + 1, 1, v19);
    }

    v19[2] = v37 + 1;
    sub_241C914E4(&v44, &v19[5 * v37 + 4]);
    goto LABEL_12;
  }

LABEL_32:
  v19 = MEMORY[0x277D84F90];
LABEL_33:

  return v19;
}

BOOL sub_241CA5EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 240);
  v6 = swift_checkMetadataState();
  v7 = v5(v6, AssociatedConformanceWitness);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = v5(v6, AssociatedConformanceWitness);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  return v9 < v12;
}

uint64_t sub_241CA5FE4@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v9[4] = swift_getAssociatedConformanceWitness();
  v7 = sub_241CA8DEC(v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(v7, a1, AssociatedTypeWitness);
  static ContentInfoUtilities.assetInfo(libraryAssetInfo:)(v9, x8_0);
  return sub_241C8EEE8(v9);
}

uint64_t SeriesInfo.mappedSeriesInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v7, a1, *(a2 + 8), a3);
}

unint64_t sub_241CA61B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_241CF21E4(@"mapped-series");
  if (!result)
  {
    goto LABEL_13;
  }

  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v9 = result;
  v10 = sub_241CF97D8();
  result = v9;
  if (!v10)
  {
LABEL_12:

LABEL_13:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return result;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CFDE40](0);
  }

  else
  {
    if (!*(v3 + 16))
    {
      __break(1u);
      return result;
    }

    v4 = *(result + 32);
  }

  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  v7 = *(v4 + 56);

  if (v7 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8;
  return result;
}

double sub_241CA62A8@<D0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 104);
  v6 = swift_checkMetadataState();
  v5(&v9, v6, AssociatedConformanceWitness);
  v7 = v10;
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v7;
  return result;
}

uint64_t SeriesInfo.nextHref.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC40F0(KeyPath, a1, *(a2 + 8), &v6);

  return v6;
}

BookFoundation::SeriesListSortOrder_optional SeriesInfo.currentSortOrder.getter@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_241CC40F0(KeyPath, a1, *(a2 + 8), &rawValue);

  object = rawValue._object;
  if (!rawValue._object || (countAndFlagsBits = rawValue._countAndFlagsBits, result.value = SeriesListSortOrder.init(rawValue:)(*(&object - 1)).value, v10 = rawValue._countAndFlagsBits, LOBYTE(rawValue._countAndFlagsBits) == 5))
  {
    result.value = SeriesInfo.isOrdered.getter(a1, a2);
    if (result.value)
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }
  }

  *a3 = v10;
  return result;
}

uint64_t sub_241CA6494@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 72);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t SeriesInfo.url.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v26 = a1;
  v27 = a2;
  KeyPath = swift_getKeyPath();
  v24 = a1;
  v25 = a2;
  v12 = swift_getKeyPath();
  v13 = *(a2 + 8);
  sub_241CC4574(KeyPath, v12, a1, v13, v10);

  v14 = sub_241CF8CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v10, 1, v14) != 1)
  {
    v8 = v10;
    return (*(v15 + 32))(v23, v8, v14);
  }

  v22 = v16;
  sub_241C8EA54(v10, &qword_27EC69EF0, &unk_241CFBC20);
  (*(a2 + 40))(&v28, a1, a2);
  if (v28)
  {
    v17 = sub_241CF98C8();

    if ((v17 & 1) == 0)
    {
      v18 = 0xEB00000000736569;
      v19 = 0x7265732D6B6F6F62;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v18 = 0x8000000241D004E0;
  v19 = 0xD000000000000010;
LABEL_8:
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_241CF96C8();

  v28 = 0xD000000000000018;
  v29 = 0x8000000241D004C0;
  MEMORY[0x245CFD860](v19, v18);

  MEMORY[0x245CFD860](47, 0xE100000000000000);
  v20 = ContentInfo.id.getter(a1, v13);
  MEMORY[0x245CFD860](v20);

  sub_241CF8CD8();

  result = v22(v8, 1, v14);
  if (result != 1)
  {
    return (*(v15 + 32))(v23, v8, v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_241CA686C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 72);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_241CA6930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v7, a1, *(a2 + 8), &v9);

  return v9;
}

uint64_t sub_241CA69C4@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 64);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CA6A74@<X0>(uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = AssetInfo.author.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_241CA6B18@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>, uint64_t a5@<X0>, uint64_t a6@<X3>, unint64_t a7@<X4>)
{
  sub_241CA6C2C(a5, a1, a2, a6, a7, a3);
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_2810D5780 & 1) == 0)
  {
    return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }

  sub_241CA8C74();
  swift_allocError();
  *v11 = a1;
  v11[1] = a2;
  swift_willThrow();
}

void sub_241CA6C2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_241CF9A08();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C93664(a1, v36);
  sub_241CF99D8();
  sub_241CF99E8();
  (*(v13 + 8))(v15, v12);
  if (a3)
  {
    v16 = a2;
  }

  else
  {
    v16 = 0x6E776F6E6B6E753CLL;
  }

  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = 0xE90000000000003ELL;
  }

  if (a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0x6E776F6E6B6E753CLL;
  }

  if (a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = 0xE90000000000003ELL;
  }

  v20 = qword_27EC69A98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_241CF8E88();
  sub_241C936C0(v21, qword_27EC69E10);

  v22 = sub_241CF8E68();
  v23 = sub_241CF9518();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35[1] = a6;
    v36[0] = v25;
    v26 = v25;
    *v24 = 136315906;
    v27 = sub_241CF9A58();
    v29 = sub_241CB3A88(v27, v28, v36);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    v30 = sub_241CB3A88(v16, v17, v36);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2082;
    v31 = sub_241CB3A88(v18, v19, v36);

    *(v24 + 24) = v31;
    *(v24 + 32) = 2082;
    v32 = sub_241CF9A58();
    v34 = sub_241CB3A88(v32, v33, v36);

    *(v24 + 34) = v34;
    _os_log_impl(&dword_241C8C000, v22, v23, "%s '%{public}s' in series '%{public}s' is expected to be %{public}s", v24, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v26, -1, -1);
    MEMORY[0x245CFE970](v24, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_241CA6F48@<X0>(uint64_t a1@<X0>, char *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *a4 = (*(*(AssociatedConformanceWitness + 8) + 32))(AssociatedTypeWitness);
  *(a4 + 1) = v9;
  return (*(*(AssociatedTypeWitness - 8) + 16))(&a4[v7], a1, AssociatedTypeWitness);
}

uint64_t sub_241CA7094@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
}

uint64_t sub_241CA716C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v61 = a2;
  v62 = a3;
  v66 = a1;
  v67 = a6;
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = v6;
  v8 = swift_getAssociatedTypeWitness();
  v63 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v8, v9);
  MEMORY[0x28223BE20](v63);
  v64 = (&v52 - v10);
  v11 = sub_241CF9598();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v58 = &v52 - v13;
  v60 = AssociatedTypeWitness;
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v55 = &v52 - v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_241CF9598();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v21 = *(v15 - 8);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v56 = v8;
  v57 = &v52 - v25;
  v26 = *v66;
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    v68[3] = type metadata accessor for MAsset(0);
    v68[0] = v26;
    v31 = *&v26[OBJC_IVAR____TtC14BookFoundation9MResource_id];
    v32 = *&v26[OBJC_IVAR____TtC14BookFoundation9MResource_id + 8];
    v33 = *(v61 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
    v34 = *(v61 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);
    v35 = v26;
    v36 = swift_checkMetadataState();
    sub_241CA6B18(v31, v32, v36, v67, v68, v33, v34);
    return sub_241C8EEE8(v68);
  }

  v66 = v27;
  v28 = *&v26[OBJC_IVAR____TtC14BookFoundation9MResource_id + 8];
  v68[0] = *&v26[OBJC_IVAR____TtC14BookFoundation9MResource_id];
  v68[1] = v28;
  v29 = v26;

  sub_241CF8F58();

  v30 = v21;
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    (*(v17 + 8))(v20, v16);
LABEL_8:
    v50 = v67;
    v46 = swift_checkMetadataState();
    v51 = v64;
    *v64 = v66;
    swift_storeEnumTagMultiPayload();
    (*(v65 + 48))(v51, v46);
    return (*(*(v46 - 8) + 56))(v50, 0, 1, v46);
  }

  v38 = *(v21 + 32);
  v39 = v57;
  v38(v57, v20, v15);
  (*(v30 + 16))(v24, v39, v15);
  v40 = v58;
  v41 = v60;
  v42 = swift_dynamicCast();
  v43 = v59;
  v44 = *(v59 + 56);
  if ((v42 & 1) == 0)
  {
    v44(v40, 1, 1, v41);
    (*(v30 + 8))(v39, v15);
    (*(v53 + 8))(v40, v54);
    goto LABEL_8;
  }

  v44(v40, 0, 1, v41);
  v45 = v55;
  (*(v43 + 32))(v55, v40, v41);
  v46 = swift_checkMetadataState();
  v47 = v30;
  v48 = *(swift_getTupleTypeMetadata2() + 48);
  v49 = v64;
  (*(v43 + 16))(v64, v45, v41);
  *(v49 + v48) = v66;
  swift_storeEnumTagMultiPayload();
  v50 = v67;
  (*(v65 + 48))(v49, v46);
  (*(v43 + 8))(v45, v41);
  (*(v47 + 8))(v39, v15);
  return (*(*(v46 - 8) + 56))(v50, 0, 1, v46);
}

BOOL sub_241CA7874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  v6 = *(v5 + 32);
  v7 = swift_checkMetadataState();
  v8 = v6(v7, v5);
  LOBYTE(a2) = sub_241CE0D08(v8, v9, a2);

  return (a2 & 1) == 0;
}

uint64_t sub_241CA7994@<X0>(char **a1@<X0>, uint64_t a4@<X8>, uint64_t x1_0@<X1>)
{
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v10, v11);
  MEMORY[0x28223BE20](v12);
  v14 = (v29 - v13);
  v15 = *a1;
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = swift_checkMetadataState();
    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    v19 = *(v8 + 48);
    v20 = v15;
    v19(v14, v18, v8);
    return (*(*(v18 - 8) + 56))(a4, 0, 1, v18);
  }

  else
  {
    v29[3] = type metadata accessor for MAsset(0);
    v29[0] = v15;
    v22 = *&v15[OBJC_IVAR____TtC14BookFoundation9MResource_id];
    v23 = *&v15[OBJC_IVAR____TtC14BookFoundation9MResource_id + 8];
    v24 = x1_0 + OBJC_IVAR____TtC14BookFoundation9MResource_id;
    v25 = *(x1_0 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
    v26 = *(v24 + 8);
    v27 = v15;
    v28 = swift_checkMetadataState();
    sub_241CA6B18(v22, v23, v28, a4, v29, v25, v26);
    return sub_241C8EEE8(v29);
  }
}

uint64_t sub_241CA7BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a5;
  v51 = a2;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = swift_getAssociatedTypeWitness();
  v49 = v8;
  v52 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v48 = type metadata accessor for ContentDataSource(0, v9, v10, v11);
  MEMORY[0x28223BE20](v48);
  v47 = &AssociatedConformanceWitness - v12;
  v13 = sub_241CF9598();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &AssociatedConformanceWitness - v14;
  v46 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v50 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &AssociatedConformanceWitness - v19;
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &AssociatedConformanceWitness - v22;
  v24 = *(v17 + 16);
  v24(v20, v55, v16);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v15, 0, 1, v9);
    (*(v21 + 32))(v23, v15, v9);
    v27 = swift_checkMetadataState();
    v28 = v47;
    (*(v21 + 16))(v47, v23, v9);
    swift_storeEnumTagMultiPayload();
    v29 = v53;
    (*(v49 + 48))(v28, v27);
    (*(v21 + 8))(v23, v9);
    return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
  }

  else
  {
    v26(v15, 1, 1, v9);
    (*(v44 + 8))(v15, v45);
    v54[3] = v16;
    v31 = sub_241CA8DEC(v54);
    v24(v31, v55, v16);
    v32 = swift_getAssociatedConformanceWitness();
    v33 = (*(*(v32 + 8) + 32))(v16);
    v35 = v34;
    v36 = swift_getAssociatedConformanceWitness();
    v37 = *(v36 + 32);
    v38 = swift_checkMetadataState();
    v39 = v37(v38, v36);
    v41 = v40;
    v42 = swift_checkMetadataState();
    sub_241CA6B18(v33, v35, v42, v53, v54, v39, v41);

    return sub_241C8EEE8(v54);
  }
}

uint64_t sub_241CA8188(void *a1, uint64_t (*a2)(uint64_t))
{
  swift_getObjectType();
  v4 = sub_241CBC9DC();
  if (v4)
  {
    v5 = v4;
    v6 = sub_241CF9038();
    if (v5[2])
    {
      sub_241C8E1DC(v6, v7);
      v9 = v8;

      if (v9)
      {

        v11 = a2(v10);

        return v11;
      }
    }

    else
    {
    }
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v13 = sub_241CF8E88();
  sub_241C936C0(v13, qword_27EC69E28);
  v14 = a1;
  v15 = sub_241CF8E68();
  v16 = sub_241CF9508();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315394;
    v19 = sub_241CF9038();
    v21 = sub_241CB3A88(v19, v20, &v25);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_241CBE228();
    v24 = sub_241CB3A88(v22, v23, &v25);

    *(v17 + 14) = v24;
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v18, -1, -1);
    MEMORY[0x245CFE970](v17, -1, -1);
  }

  return 0;
}

void sub_241CA83BC(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_241C8E1DC(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_241CC6E84(v17, i & 1);
    v12 = sub_241C8E1DC(v8, v7);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_241CF9938();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v20 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v26 = (v20[6] + 16 * v12);
    *v26 = v8;
    v26[1] = v7;
    *(v20[7] + 8 * v12) = v11;
    v27 = v20[2];
    v16 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v28;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v25 = v12;
  sub_241CC8488();
  v12 = v25;
  v20 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v12;
  v22 = *(v20[7] + 8 * v12);

  v23 = v20[7];
  v24 = *(v23 + 8 * v21);
  *(v23 + 8 * v21) = v22;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 9); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v33 = *i;
      v34 = *a3;

      v7 = v33;
      v35 = sub_241C8E1DC(v11, v6);
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v16 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v16)
      {
        break;
      }

      v8 = v36;
      if (v34[3] < v39)
      {
        sub_241CC6E84(v39, 1);
        v35 = sub_241C8E1DC(v11, v6);
        if ((v8 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v29 = v35;
        v30 = *(v3[7] + 8 * v35);

        v31 = v3[7];
        v32 = *(v31 + 8 * v29);
        *(v31 + 8 * v29) = v30;
      }

      else
      {
        v3[(v35 >> 6) + 8] |= 1 << v35;
        v41 = (v3[6] + 16 * v35);
        *v41 = v11;
        v41[1] = v6;
        *(v3[7] + 8 * v35) = v7;
        v42 = v3[2];
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v43;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

uint64_t sub_241CA8680@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_241CA86F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_241CA874C()
{
  result = qword_27EC69EF8;
  if (!qword_27EC69EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69EF8);
  }

  return result;
}

uint64_t sub_241CA87A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CA87F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_241CA8844(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_241CA885C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_241CA889C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_241CA88B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_241CA88F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_241CA8984()
{
  result = qword_27EC69F00;
  if (!qword_27EC69F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F00);
  }

  return result;
}

uint64_t sub_241CA89F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a1 + 40;
  result = MEMORY[0x277D84F90];
  v31 = v5;
  do
  {
    v32 = result;
    v7 = (v5 + 16 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        result = sub_241CF9938();
        __break(1u);
        return result;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v33 = i + 1;
      v10 = *(v7 - 1);
      v9 = *v7;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = a2;
      v13 = *a2;
      v34 = v13;
      v14 = sub_241C8E1DC(v10, v9);
      v16 = v13[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_25;
      }

      v20 = v15;
      if (v13[3] >= v19)
      {
        break;
      }

      sub_241CC6E98(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_241C8E1DC(v10, v9);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_27;
      }

LABEL_11:
      a2 = v12;
      v22 = v34;
      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_12:
      *(v22[7] + v14) = 1;
      *a2 = v22;

      v7 += 2;
      if (v33 == v2)
      {
        return v32;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v14;
    sub_241CC849C();
    a2 = v12;
    v14 = v23;
    v22 = v34;
    if (v20)
    {
      goto LABEL_12;
    }

LABEL_15:
    v22[(v14 >> 6) + 8] |= 1 << v14;
    v24 = (v22[6] + 16 * v14);
    *v24 = v10;
    v24[1] = v9;
    *(v22[7] + v14) = 1;
    v25 = v22[2];
    v18 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v18)
    {
      goto LABEL_26;
    }

    v22[2] = v26;
    *a2 = v22;

    v27 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_241C94488(0, *(v32 + 16) + 1, 1);
      a2 = v12;
      v27 = v32;
    }

    v5 = v31;
    result = v27;
    v28 = *(v27 + 16);
    v29 = *(result + 24);
    if (v28 >= v29 >> 1)
    {
      sub_241C94488((v29 > 1), v28 + 1, 1);
      a2 = v12;
      result = v32;
    }

    *(result + 16) = v28 + 1;
    v30 = result + 16 * v28;
    *(v30 + 32) = v10;
    *(v30 + 40) = v9;
    v4 = v33;
  }

  while (v33 != v2);
  return result;
}

unint64_t sub_241CA8C74()
{
  result = qword_27EC69F18;
  if (!qword_27EC69F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F18);
  }

  return result;
}

unint64_t sub_241CA8CE8()
{
  result = qword_27EC69F28;
  if (!qword_27EC69F28)
  {
    sub_241C9452C(&qword_27EC69F20, &unk_241CFB968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F28);
  }

  return result;
}

uint64_t *sub_241CA8DEC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t LibraryBookInfo.seriesInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LibraryBookInfo(0) + 20);

  return sub_241CA22A4(v3, a1);
}

uint64_t type metadata accessor for LibraryBookInfo(uint64_t a1)
{
  result = qword_27EC69F50;
  if (!qword_27EC69F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryBookInfo.seriesInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LibraryBookInfo(0) + 20);

  return sub_241CA2358(a1, v3);
}

uint64_t LibraryBookInfo.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LibraryBookInfo(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t LibraryBookInfo.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LibraryBookInfo(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_241CA9034(v4, v5);
}

uint64_t sub_241CA9034(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t LibraryBookInfo.init(commonInfo:seriesInfo:kind:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = a4[1];
  v11 = type metadata accessor for LibraryBookInfo(0);
  v12 = a5 + v11[5];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  sub_241CA24F8(a1, a5);
  result = sub_241CA2358(a2, v12);
  *(a5 + v11[6]) = v8;
  v14 = (a5 + v11[7]);
  *v14 = v9;
  v14[1] = v10;
  return result;
}

uint64_t sub_241CA90E0(uint64_t a1)
{
  result = sub_241CA91F0(&qword_27EC69F30, &protocol conformance descriptor for LibraryBookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA9124(uint64_t a1)
{
  result = sub_241CA91F0(&qword_27EC69F38, &protocol conformance descriptor for LibraryBookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA9168(uint64_t a1)
{
  result = sub_241CA91F0(&qword_27EC69F40, &protocol conformance descriptor for LibraryBookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA91AC(uint64_t a1)
{
  result = sub_241CA91F0(&qword_27EC69F48, &protocol conformance descriptor for LibraryBookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA91F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LibraryBookInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_241CA9260(uint64_t a1)
{
  type metadata accessor for CommonLibraryAssetInfo(319);
  if (v1 <= 0x3F)
  {
    sub_241CA92FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_241CA92FC(uint64_t a1)
{
  if (!qword_27EC69E90)
  {
    sub_241C9452C(&qword_27EC69E98, "2x");
    v1 = sub_241CF9598();
    if (!v2)
    {
      atomic_store(v1, &qword_27EC69E90);
    }
  }
}

uint64_t sub_241CA9360(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_241CA9384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CA93EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_241CA943C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t MResourceSet.__allocating_init(with:config:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  MResourceSet.init(with:config:)(a1, a2);
  return v4;
}

uint64_t *MResourceSet.init(with:config:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = 0;
  sub_241CA95A4();

  sub_241CD7154(a1, MEMORY[0x277D837D0], &v7);

  *(v2 + 40) = v7;

  return v2;
}

unint64_t sub_241CA95A4()
{
  result = qword_27EC69F78;
  if (!qword_27EC69F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F78);
  }

  return result;
}

uint64_t sub_241CA95F8(uint64_t a1)
{

  v3 = sub_241CAB1E0(v2, a1);

  return v3;
}

uint64_t sub_241CA9644()
{
  v1 = *(v0 + 16);

  v2 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CA95A4();
  sub_241CD7154(v1, v2, &v4);

  return v4;
}

uint64_t sub_241CA9704(uint64_t a1)
{
  v1 = sub_241CAAE20();
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v1);
  sub_241C93918(&qword_27EC69F80, &unk_241CFBAA0);
  sub_241CABA3C(&qword_27EC69F88, &qword_27EC69F80, &unk_241CFBAA0);
  v2 = sub_241CF91E8();

  return v2;
}

uint64_t sub_241CA981C()
{
  v1 = [objc_opt_self() defaultBag];
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_241CA98F0;

  return sub_241CA9CC4(v1, &unk_241CFBAB0, 0);
}

uint64_t sub_241CA98F0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_241CABA98, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_241CA9A2C(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  v4 = swift_task_alloc();
  *(v1 + 104) = v4;
  *v4 = v1;
  v4[1] = sub_241CA9AE0;

  return MCatalogRequest.fetch()();
}

uint64_t sub_241CA9AE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_241C91D74;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_241CA9C08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241CA9C08()
{
  v1 = *(v0 + 120);
  v2 = [v1 responseDictionary];

  if (v2)
  {
    v3 = sub_241CF8EF8();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_241CA9CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v4[52] = *v3;
  sub_241C93918(&qword_27EC69FA0, &qword_241CFEBC0);
  v4[53] = swift_task_alloc();
  v5 = sub_241CF8B38();
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241CA9DF4, 0, 0);
}

uint64_t sub_241CA9DF4(uint64_t a1)
{
  v82 = v1;
  v2 = v1[51];
  v3 = (v2 + 40);
  v4 = *(v2 + 48);
  if (!v4)
  {
    goto LABEL_23;
  }

  v75 = *(v2 + 40);

  if (!sub_241CAAE20())
  {

LABEL_23:
    if (sub_241CAAE20())
    {
    }

    else
    {
      if (qword_27EC69AB0 != -1)
      {
LABEL_33:
        swift_once();
      }

      v57 = sub_241CF8E88();
      sub_241C936C0(v57, qword_27EC69F60);

      v58 = sub_241CF8E68();
      v59 = sub_241CF9508();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v81 = v61;
        *v60 = 136315138;
        v62 = *(v2 + 48);
        v1[44] = *(v2 + 40);
        v1[45] = v62;

        sub_241C93918(&qword_27EC69FA8, &qword_241CFBBE0);
        v63 = sub_241CF9058();
        v65 = sub_241CB3A88(v63, v64, &v81);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_241C8C000, v58, v59, "Tried to fetchNext with empty resources for href: %s", v60, 0xCu);
        sub_241C8EEE8(v61);
        MEMORY[0x245CFE970](v61, -1, -1);
        MEMORY[0x245CFE970](v60, -1, -1);
      }
    }

    *v3 = 0;
    v3[1] = 0;

    v66 = v1[1];

    return v66();
  }

  v73 = v4;
  v5 = v1[55];
  v6 = v1[51];
  v7 = v1[48];

  v8 = sub_241CDE940(&unk_2853DB480);
  sub_241C8EA54(&unk_2853DB4A0, &qword_27EC69FB0, &qword_241CFBBE8);
  v72 = *(v6 + 24);
  v9 = MEMORY[0x277D84F90];
  v71 = sub_241CE0390(MEMORY[0x277D84F90]);
  v10 = v7;
  v70 = sub_241CDE8A8(v9);
  v74 = v9;
  v11 = sub_241CDE8A8(v9);
  v12 = v8 + 64;
  v13 = -1;
  v14 = -1 << *(v8 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v8 + 64);
  v2 = (63 - v14) >> 6;
  v76 = (v5 + 48);
  v77 = (v5 + 56);
  v67 = v5;
  v68 = (v5 + 32);
  v69 = v11;
  v79 = v8;

  v16 = 0;
  v78 = v8 + 64;
LABEL_6:
  v17 = v16;
  if (!v15)
  {
    goto LABEL_8;
  }

  do
  {
    v16 = v17;
LABEL_11:
    v18 = v1[53];
    v19 = v1[54];
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v3 = *(*(v79 + 56) + ((v16 << 10) | (16 * v20)) + 8);

    sub_241CF8B18();
    (*v77)(v18, 0, 1, v19);

    if ((*v76)(v18, 1, v19) != 1)
    {
      v22 = v1[56];
      v21 = v1[57];
      v23 = v1[54];
      v3 = v1;
      v24 = *v68;
      (*v68)(v21, v1[53], v23);
      v24(v22, v21, v23);
      v25 = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_241CBF9B0(0, v74[2] + 1, 1, v74);
      }

      v12 = v78;
      v27 = v25[2];
      v26 = v25[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v31 = sub_241CBF9B0((v26 > 1), v27 + 1, 1, v25);
        v28 = v27 + 1;
        v25 = v31;
      }

      v29 = v3[56];
      v30 = v3[54];
      v25[2] = v28;
      v74 = v25;
      v24(v25 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v27, v29, v30);
      v1 = v3;
      goto LABEL_6;
    }

    sub_241C8EA54(v1[53], &qword_27EC69FA0, &qword_241CFEBC0);
    v17 = v16;
    v12 = v78;
  }

  while (v15);
  while (1)
  {
LABEL_8:
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v16 >= v2)
    {
      break;
    }

    v15 = *(v12 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  v32 = v1[51];
  v33 = v1[48];

  v1[24] = v71;
  v1[25] = v70;
  v1[26] = v69;
  v1[27] = v74;
  v1[28] = v33;
  *(v1 + 232) = v72;
  v1[30] = v75;
  v1[31] = v73;
  v34 = *(v32 + 32);
  v35 = objc_opt_self();
  sub_241C9300C((v1 + 24), (v1 + 32));
  v36 = v34;
  v37 = [v35 defaultBag];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 defaultSessionConfiguration];
  v41 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

  v42 = v1[49];
  v43 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v44 = v39;
  v45 = v41;
  v46 = sub_241CF9008();

  v47 = [v43 initWithClientIdentifier:v46 bag:v44];

  v48 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
  [v45 setProtocolHandler_];

  v49 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v47 bag:v44];
  [v49 setAccount_];

  v50 = [objc_opt_self() currentProcess];
  [v49 setClientInfo_];

  v51 = *(v1 + 14);
  v52 = *(v1 + 15);
  *(v1 + 4) = v51;
  *(v1 + 5) = v52;
  v54 = *(v1 + 12);
  v53 = *(v1 + 13);
  *(v1 + 2) = v54;
  *(v1 + 3) = v53;
  v1[2] = v49;
  v1[3] = v45;
  v1[12] = v44;
  v1[23] = v44;
  *(v1 + 15) = v54;
  *(v1 + 21) = v52;
  *(v1 + 19) = v51;
  *(v1 + 17) = v53;
  *(v1 + 13) = *(v1 + 1);
  v80 = (v42 + *v42);
  v55 = swift_task_alloc();
  v1[58] = v55;
  *v55 = v1;
  v55[1] = sub_241CAA6B8;

  return v80(v1 + 13);
}

uint64_t sub_241CAA6B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_241CAA990;
  }

  else
  {
    v4 = sub_241CAA7CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241CAA7CC()
{
  if (*(v0 + 472))
  {
    v1 = sub_241CAAF4C(*(v0 + 472));
    if (v1)
    {
      v2 = v1;
      v3 = sub_241CAAE94((v0 + 320));
      if (*v4)
      {
        sub_241CD84C0(v2);
      }

      else
      {
      }

      v3((v0 + 320), 0);
    }

    v7 = *(v0 + 472);
    v8 = *(v0 + 408);
    *(v0 + 488) = 2;
    sub_241CA95A4();
    sub_241CD7154(v7, MEMORY[0x277D837D0], v0 + 368);
    sub_241C93068(v0 + 192);
    sub_241C930BC(v0 + 16);

    *(v8 + 40) = *(v0 + 368);

    v6 = *(v0 + 8);
  }

  else
  {
    sub_241CAB9BC();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
    sub_241C930BC(v0 + 16);
    sub_241C93068(v0 + 192);

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_241CAA990()
{
  sub_241C93068(v0 + 192);
  sub_241C930BC(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241CAAA40()
{
  if (*(v0[2] + 48))
  {
    v1 = [objc_opt_self() defaultBag];
    v0[3] = v1;
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_241CAAB54;

    return sub_241CA9CC4(v1, &unk_241CFBAB0, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_241CAAB54()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_241CAAC70;
  }

  else
  {

    v3 = sub_241CABA90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241CAAC70()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241CAACE0()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAAD3C(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CAAD7C(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

unint64_t sub_241CAADD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_241CAB970(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *sub_241CAAE20()
{
  v1 = *(v0 + 56);
  v2 = v1;
  if (v1 == 1)
  {

    v2 = sub_241CAAF4C(v3);

    v4 = *(v0 + 56);
    *(v0 + 56) = v2;

    sub_241CAB458(v4);
  }

  sub_241CABA10(v1);
  return v2;
}

uint64_t (*sub_241CAAE94(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_241CAAE20();
  return sub_241CAAEDC;
}

uint64_t sub_241CAAEDC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 56);
  *(v2 + 56) = *a1;
  if (a2)
  {

    sub_241CAB458(v3);
  }

  else
  {

    return sub_241CAB458(v3);
  }
}

void *sub_241CAAF4C(uint64_t a1)
{
  v2 = v1;
  LOBYTE(v11) = 0;
  v4 = sub_241C93918(&qword_27EC69F98, &qword_241CFF7D0);
  sub_241CA95A4();
  result = sub_241CD7154(a1, v4, &v12);
  v6 = v12;
  if (!v12)
  {
    return 0;
  }

  v7 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  if (!v8)
  {
LABEL_10:

    return v7;
  }

  v9 = 0;
  while (v9 < *(v6 + 16))
  {
    v11 = *(v6 + 32 + 8 * v9);

    sub_241CAB0F4(&v11, v2, &v10);

    if (v10)
    {
      MEMORY[0x245CFD9D0](result);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241CF92A8();
      }

      result = sub_241CF92E8();
      v7 = v12;
    }

    if (v8 == ++v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241CAB0F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  sub_241CA95A4();
  sub_241CD7154(v6, MEMORY[0x277D837D0], &v13);
  if (v14 && (v7 = static MResourceType.classType(for:)(v13, v14), , v7))
  {
    v8 = *(a2 + 32);
    LOBYTE(v13) = *(a2 + 24);
    v14 = v8;
    v9 = *(v7 + 128);
    v10 = v8;

    result = v9(v11, &v13);
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_241CAB1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69F98, &qword_241CFF7D0);
  sub_241CA95A4();
  v5 = sub_241CD7154(a1, v4, &v10);
  if (!v10)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v5);
  type metadata accessor for MSparseResource(0, a2, v6, v7);
  sub_241CABA3C(&qword_27EC69FC0, &qword_27EC69F98, &qword_241CFF7D0);
  v8 = sub_241CF91E8();

  return v8;
}

id sub_241CAB34C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_dynamicCastClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

void *sub_241CAB39C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for MSparseResource(0, a2, a2, a4);
  v6 = *(a1 + 32);
  v10[0] = *(a1 + 24);
  v11 = v6;
  v7 = v6;

  result = sub_241CD39B4(v8, v10);
  *a3 = result;
  return result;
}

uint64_t MResourceSet.deinit()
{

  sub_241CAB458(*(v0 + 56));
  return v0;
}

uint64_t sub_241CAB458(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t MResourceSet.__deallocating_deinit()
{

  sub_241CAB458(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of MResourceSet.fetchNext()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_241CABA94;

  return v4();
}

uint64_t dispatch thunk of MResourceSet.fetchAll()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_241CAB794;

  return v4();
}

uint64_t sub_241CAB794()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_241CAB89C()
{
  result = qword_27EC69F90;
  if (!qword_27EC69F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F90);
  }

  return result;
}

uint64_t sub_241CAB8F0()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69F60);
  sub_241C936C0(v0, qword_27EC69F60);
  return sub_241CF8E78();
}

unint64_t sub_241CAB970(uint64_t a1, uint64_t a2)
{
  v2 = sub_241CF9838();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_241CAB9BC()
{
  result = qword_27EC69FB8;
  if (!qword_27EC69FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69FB8);
  }

  return result;
}

uint64_t sub_241CABA10(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_241CABA3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_241C9452C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void NSBundle.path(forExactResource:ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_241CF96D8();
  v7 = sub_241CF9008();

  sub_241CF96D8();
  v8 = sub_241CF9008();

  v9 = [v6 pathForResource:v7 ofType:v8];

  if (v9)
  {
    sub_241CF9038();
  }

  else
  {
    __break(1u);
  }
}

uint64_t URL.init(object:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11[0] = 0;
      v11[1] = 0;
      sub_241CF9028();
    }
  }

  sub_241CF8CD8();

  v7 = sub_241CF8CF8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    sub_241CABCEC(v6);
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a2, v9, 1, v7);
}

uint64_t sub_241CABCEC(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URL.isEquivalent(to:)()
{
  v0 = sub_241CF8CF8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_241CF8C68();
  sub_241CF8C78();
  v13 = *(v1 + 8);
  v13(v12, v0);
  sub_241CF8C68();
  sub_241CF8C78();
  v13(v7, v0);
  v14 = sub_241CF8CA8();
  v13(v4, v0);
  v13(v10, v0);
  return v14 & 1;
}

Swift::String __swiftcall URL.pathWithoutLeadingSlash()()
{
  v0 = sub_241CF8C88();
  v1 = v0;
  v2 = *(v0 + 2);
  if (v2)
  {
    if (*(v0 + 4) == 47 && *(v0 + 5) == 0xE100000000000000)
    {
      goto LABEL_12;
    }

    if (sub_241CF98C8())
    {
      v2 = *(v1 + 2);
      if (v2)
      {
        goto LABEL_12;
      }

      while (1)
      {
        __break(1u);
LABEL_9:
        if ((sub_241CF98C8() & 1) == 0)
        {
          break;
        }

        v2 = *(v1 + 2);
        while (v2)
        {
LABEL_12:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v2 - 1) > *(v1 + 3) >> 1)
          {
            v1 = sub_241CBFC8C(isUniquelyReferenced_nonNull_native, v2, 1, v1);
          }

          sub_241CAC18C((v1 + 32));
          v5 = *(v1 + 2);
          v6 = memmove(v1 + 32, v1 + 48, 16 * v5 - 16);
          v2 = v5 - 1;
          *(v1 + 2) = v5 - 1;
          if (v5 < 2)
          {
            __break(1u);
            goto LABEL_23;
          }

          if (*(v1 + 4) != 47 || *(v1 + 5) != 0xE100000000000000)
          {
            goto LABEL_9;
          }
        }
      }
    }

    sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
    sub_241CAC078();
    v2 = sub_241CF8FA8();
    v9 = v8;
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v9 = 0xE000000000000000;
  }

  v6 = v2;
  v7 = v9;
LABEL_23:
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

unint64_t sub_241CAC078()
{
  result = qword_2810D56D8;
  if (!qword_2810D56D8)
  {
    sub_241C9452C(&qword_27EC69FC8, &unk_241CFBC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D56D8);
  }

  return result;
}

Swift::String __swiftcall URL.pathQueryAndFragmentWithoutLeadingSlash()()
{
  v0 = URL.pathWithoutLeadingSlash()();
  v1 = sub_241CF8CC8();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    MEMORY[0x245CFD860](63, 0xE100000000000000);
    MEMORY[0x245CFD860](v3, v4);
  }

  v5 = sub_241CF8CE8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    MEMORY[0x245CFD860](35, 0xE100000000000000);
    MEMORY[0x245CFD860](v7, v8);
  }

  countAndFlagsBits = v0._countAndFlagsBits;
  object = v0._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

_OWORD *sub_241CAC1E0(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_241C8E30C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_241CB4030(v14, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_241C8EA54(a1, &qword_27EC6A0B0, &qword_241CFE350);
    v7 = sub_241CF45F0(a2 & 1);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_241CC8604();
        v11 = v13;
      }

      sub_241C8E30C((*(v11 + 56) + 32 * v9), v14);
      sub_241CF4818(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_241C8EA54(v14, &qword_27EC6A0B0, &qword_241CFE350);
  }

  return result;
}

uint64_t sub_241CAC2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_241CB415C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_241C8E1DC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_241CC8780();
        v14 = v16;
      }

      result = sub_241CF49AC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_241CAC3DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007365;
  v3 = 0x7475626972747461;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1717924456;
  if (a1 != 6)
  {
    v6 = 0xD000000000000011;
    v5 = 0x8000000241D00100;
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  if (a1 != 4)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7377656976;
  if (a1 != 2)
  {
    v10 = 1635018093;
    v9 = 0xE400000000000000;
  }

  v11 = 0x6E6F6974616C6572;
  v12 = 0xED00007370696873;
  if (!a1)
  {
    v11 = 0x7475626972747461;
    v12 = 0xEA00000000007365;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE400000000000000;
        if (v13 != 1717924456)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x8000000241D00100;
        if (v13 != 0xD000000000000011)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE400000000000000;
      if (v13 != 1701869940)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE200000000000000;
      if (v13 != 25705)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x7377656976)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE400000000000000;
      v3 = 1635018093;
    }

    else if (a2)
    {
      v2 = 0xED00007370696873;
      if (v13 != 0x6E6F6974616C6572)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_241CF98C8();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_241CAC608(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E697461;
  v3 = 0x52746E65746E6F63;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x65726564724F7369;
    v14 = 0xE900000000000064;
    if (a1 == 2)
    {
      v13 = 0x52746E65746E6F63;
      v14 = 0xED0000676E697461;
    }

    v15 = 0x8000000241D00200;
    v16 = 0xD000000000000011;
    if (a1)
    {
      v16 = 0xD000000000000010;
      v15 = 0x8000000241D00220;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x8000000241D00260;
    v6 = 0xD00000000000001ALL;
    v7 = 0xE400000000000000;
    v8 = 1701667182;
    if (a1 != 7)
    {
      v8 = 7107189;
      v7 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x8000000241D00240;
    v10 = 0xD000000000000013;
    if (a1 != 4)
    {
      v10 = 1684957547;
      v9 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x8000000241D00220;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0x8000000241D00200;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 2)
    {
      v2 = 0xE900000000000064;
      if (v11 != 0x65726564724F7369)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x8000000241D00240;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1684957547)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0x8000000241D00260;
      if (v11 != 0xD00000000000001ALL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1701667182)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xE300000000000000;
    v3 = 7107189;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_241CF98C8();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_241CAC8D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x6449746E65726170;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x614E746E65726170;
    }

    else
    {
      v3 = 7107189;
    }

    if (v2 == 3)
    {
      v4 = 0xEA0000000000656DLL;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1701667182;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6449746E65726170)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA0000000000656DLL;
    if (v3 != 0x614E746E65726170)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    if (v3 != 7107189)
    {
LABEL_34:
      v7 = sub_241CF98C8();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_241CACA4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7959906;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000006461;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6F6C6E776F646572;
    }

    else
    {
      v6 = 0x726564726F657270;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE300000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 7628135;
    }

    else
    {
      v6 = 7959906;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x6F6C6E776F646572;
  v9 = 0xEA00000000006461;
  if (a2 != 2)
  {
    v8 = 0x726564726F657270;
    v9 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 7628135;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_241CF98C8();
  }

  return v12 & 1;
}

uint64_t sub_241CACB7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 1702521203;
  if (a1 != 5)
  {
    v4 = 1701869940;
  }

  v5 = 0x726F466563697270;
  v6 = 0xEE0064657474616DLL;
  if (a1 != 3)
  {
    v5 = 0x6563697270;
    v6 = 0xE500000000000000;
  }

  if (a1 > 4u)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  v8 = 0xD000000000000013;
  v9 = 0x8000000241D00090;
  if (a1 != 1)
  {
    v8 = 0x6E6F697461727564;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737465737361;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x8000000241D00090;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6E6F697461727564)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x737465737361)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    v12 = 0xE400000000000000;
    if (a2 == 5)
    {
      if (v10 != 1702521203)
      {
        goto LABEL_40;
      }
    }

    else if (v10 != 1701869940)
    {
LABEL_40:
      v13 = sub_241CF98C8();
      goto LABEL_41;
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEE0064657474616DLL;
    if (v10 != 0x726F466563697270)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6563697270)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_241CACD90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 0x656E696C676174;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x647261646E617473;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x74726F6873;
  if (a2 != 2)
  {
    v8 = 0x656E696C676174;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x647261646E617473;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_241CF98C8();
  }

  return v11 & 1;
}

uint64_t sub_241CACEC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = sub_241CF96D8();
  v4 = v3;
  if (v2 == sub_241CF96D8() && v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_241CF98C8();
  }

  return v6 & 1;
}

uint64_t sub_241CAD008(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E69646E65637361;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x69646E6563736564;
    }

    else
    {
      v5 = 0x6E69646E65637361;
    }

    if (v4)
    {
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0xE900000000000067;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x44657361656C6572;
    v6 = 0xEB00000000657461;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x72616C75706F70;
    }

    else
    {
      v5 = 0x656C746974;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = 0x44657361656C6572;
  v8 = 0xEB00000000657461;
  v9 = 0xE700000000000000;
  v10 = 0x72616C75706F70;
  if (a2 != 3)
  {
    v10 = 0x656C746974;
    v9 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x69646E6563736564;
    v2 = 0xEA0000000000676ELL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_241CF98C8();
  }

  return v13 & 1;
}

uint64_t sub_241CAD19C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x736B6F6F6269;
    }

    if (v2)
    {
      v3 = 0x8000000241D00130;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x8000000241D00150;
    v4 = 0xD000000000000016;
  }

  else if (a1 == 3)
  {
    v3 = 0x8000000241D00170;
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = 0x8000000241D00190;
    v4 = 0xD000000000000015;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0x736B6F6F6269;
    }

    if (a2)
    {
      v6 = 0x8000000241D00130;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x8000000241D00150;
    if (v4 != 0xD000000000000016)
    {
LABEL_34:
      v8 = sub_241CF98C8();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000241D00170;
    }

    else
    {
      v6 = 0x8000000241D00190;
    }

    if (v4 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_241CAD32C(char a1, char a2)
{
  v12 = a1;
  v11 = a2;
  BooksFeatureFlag.rawValue.getter(&v10);
  BooksFeatureFlag.rawValue.getter(&v9);
  v2 = sub_241CF96D8();
  v4 = v3;
  if (v2 == sub_241CF96D8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_241CF98C8();
  }

  return v7 & 1;
}

uint64_t sub_241CAD3F4(char a1, char a2)
{
  if (*&aData_4[8 * a1] == *&aData_4[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_241CF98C8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_241CAD45C(uint64_t a1, unsigned __int8 a2)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAD578(uint64_t a1, unsigned __int8 a2)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAD6A8()
{
  if (*(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache))
  {
    v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache);
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
    *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache) = MEMORY[0x277D84F98];
  }

  return v1;
}

uint64_t MAsset.CacheKey.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

uint64_t MAsset.artistName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_artistName);

  return v1;
}

id sub_241CAD7F4(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_241CF9008();

  return v3;
}

uint64_t MAsset.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_name);

  return v1;
}

uint64_t MAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14BookFoundation6MAsset_url;
  v4 = sub_241CF8CF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static MAsset.requiredAttributeKeys.getter()
{
  v21 = MEMORY[0x277D84F90];
  sub_241C94488(0, 4, 0);
  v0 = 0;
  v1 = v21;
  v2 = 0x8000000241D00000;
  v3 = 0x8000000241CFFFB0;
  v4 = 0x8000000241CFFF80;
  v5 = 0x8000000241CFFF20;
  v6 = 0xEB00000000656C61;
  v7 = 0x8000000241CFFEF0;
  do
  {
    v8 = 0xEA0000000000656DLL;
    v9 = 0x614E747369747261;
    switch(byte_2853DB540[v0 + 32])
    {
      case 1:
        v8 = 0xE700000000000000;
        v9 = 0x6B726F77747261;
        break;
      case 2:
        v9 = 0x636F4C6F69647561;
        v8 = v6;
        break;
      case 3:
        v9 = 0xD000000000000012;
        v8 = v7;
        break;
      case 4:
        v8 = 0xED0000656C746954;
        v9 = 0x6B726F576B6F6F62;
        break;
      case 5:
        v9 = 0xD000000000000015;
        v8 = v5;
        break;
      case 6:
        v8 = 0xE900000000000073;
        v9 = 0x6D61726150797562;
        break;
      case 7:
        v8 = 0xED0000676E697461;
        v9 = 0x52746E65746E6F63;
        break;
      case 8:
        v8 = 0xEB000000006E6F69;
        v9 = 0x7470697263736564;
        break;
      case 9:
        v8 = 0xEE007365746F4E6CLL;
        v9 = 0x6169726F74696465;
        break;
      case 0xA:
        v8 = 0xEB00000000646E69;
        v9 = 0x4B6E6F6974696465;
        break;
      case 0xB:
        v8 = 0xEA00000000007365;
        v9 = 0x6D614E65726E6567;
        break;
      case 0xC:
        v9 = 0xD000000000000016;
        v8 = v4;
        break;
      case 0xD:
        v8 = 0xE700000000000000;
        v9 = 0x6B6F6F42497369;
        break;
      case 0xE:
        v8 = 0xE400000000000000;
        v9 = 1196651369;
        break;
      case 0xF:
        v8 = 0xE400000000000000;
        v9 = 1701667182;
        break;
      case 0x10:
        v8 = 0xE600000000000000;
        v9 = 0x73726566666FLL;
        break;
      case 0x11:
        v9 = 0xD000000000000018;
        v8 = v3;
        break;
      case 0x12:
        v8 = 0xE800000000000000;
        v9 = 0x7377656976657270;
        break;
      case 0x13:
        v8 = 0xED0000656C61636FLL;
        v9 = 0x4C7972616D697270;
        break;
      case 0x14:
        v8 = 0xED00006F666E4972;
        v9 = 0x656873696C627570;
        break;
      case 0x15:
        v8 = v6 + 2048;
        v9 = 0x44657361656C6572;
        break;
      case 0x16:
        v8 = 0xEA00000000006F66;
        v9 = 0x6E49736569726573;
        break;
      case 0x17:
        v9 = 0xD00000000000001ALL;
        v8 = v2;
        break;
      case 0x18:
        v8 = 0xEA0000000000676ELL;
        v9 = 0x6974615272657375;
        break;
      case 0x19:
        v8 = 0xE300000000000000;
        v9 = 7107189;
        break;
      case 0x1A:
        v8 = 0xE700000000000000;
        v9 = 0x6E6F6973726576;
        break;
      case 0x1B:
        v8 = 0xEE0079726F747369;
        v9 = 0x486E6F6973726576;
        break;
      default:
        break;
    }

    v22 = v1;
    v11 = *(v1 + 16);
    v10 = *(v1 + 24);
    if (v11 >= v10 >> 1)
    {
      v13 = v6;
      v19 = v3;
      v20 = v2;
      v17 = v5;
      v18 = v4;
      v16 = v7;
      sub_241C94488((v10 > 1), v11 + 1, 1);
      v7 = v16;
      v5 = v17;
      v4 = v18;
      v3 = v19;
      v6 = v13;
      v2 = v20;
      v1 = v22;
    }

    ++v0;
    *(v1 + 16) = v11 + 1;
    v12 = v1 + 16 * v11;
    *(v12 + 32) = v9;
    *(v12 + 40) = v8;
  }

  while (v0 != 4);
  v14 = sub_241CDE8A8(v1);

  return v14;
}

unint64_t sub_241CADE44(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x636F4C6F69647561;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6B726F576B6F6F62;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6D61726150797562;
      break;
    case 7:
      result = 0x52746E65746E6F63;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    case 9:
      result = 0x6169726F74696465;
      break;
    case 10:
      result = 0x4B6E6F6974696465;
      break;
    case 11:
      result = 0x6D614E65726E6567;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x6B6F6F42497369;
      break;
    case 14:
      result = 1196651369;
      break;
    case 15:
      result = 1701667182;
      break;
    case 16:
      result = 0x73726566666FLL;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x7377656976657270;
      break;
    case 19:
      result = 0x4C7972616D697270;
      break;
    case 20:
      result = 0x656873696C627570;
      break;
    case 21:
      result = 0x44657361656C6572;
      break;
    case 22:
      result = 0x6E49736569726573;
      break;
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 24:
      result = 0x6974615272657375;
      break;
    case 25:
      result = 7107189;
      break;
    case 26:
      result = 0x6E6F6973726576;
      break;
    case 27:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

id MAsset.init(with:config:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_241CF8CF8();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a2;
  v13 = *(a2 + 1);
  v14 = OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache;
  *(v3 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache) = 0;
  v49 = 0;

  v15 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB443C();
  sub_241CD7154(a1, v15, &v47);

  v16 = v47;
  if (!v47)
  {

    goto LABEL_12;
  }

  v45 = v13;
  v46 = v14;
  v49 = 0;
  sub_241CB4490();
  sub_241CD7154(v16, MEMORY[0x277D837D0], &v47);
  v17 = v48;
  if (!v48)
  {
LABEL_11:

    goto LABEL_12;
  }

  v41 = v47;
  v49 = 1;
  sub_241CD7154(v16, v15, &v47);
  v18 = v47;
  if (!v47)
  {
LABEL_10:

    goto LABEL_11;
  }

  v49 = 15;
  sub_241CD7154(v16, MEMORY[0x277D837D0], &v47);
  if (!v48)
  {

    goto LABEL_10;
  }

  v40 = v48;
  v39 = v47;
  v49 = 25;
  sub_241CD7154(v16, MEMORY[0x277D837D0], &v47);

  if (!v48)
  {

    goto LABEL_11;
  }

  sub_241CF8CD8();

  v19 = v43;
  v20 = v44;
  if ((*(v43 + 48))(v9, 1, v44) != 1)
  {
    (*(v19 + 32))(v12, v9, v20);
    v34 = (v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_artistName);
    *v34 = v41;
    v34[1] = v17;
    *(v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_artwork) = v18;
    *(v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_kind) = 2;
    v35 = (v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_name);
    v36 = v40;
    *v35 = v39;
    v35[1] = v36;
    (*(v19 + 16))(v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_url, v12, v20);
    LOBYTE(v47) = v42;
    v48 = v45;
    v37 = MResource.init(with:config:)(a1, &v47);
    (*(v19 + 8))(v12, v20);
    return v37;
  }

  sub_241C8EA54(v9, &qword_27EC69EF0, &unk_241CFBC20);
LABEL_12:
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_241CF8E88();
  sub_241C936C0(v21, qword_27EC69E28);

  v22 = sub_241CF8E68();
  v23 = sub_241CF9508();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v47 = v25;
    *v24 = 136315394;
    v26 = sub_241CAE848(ObjectType);
    v28 = sub_241CB3A88(v26, v27, &v47);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = sub_241CF8F08();
    v31 = v30;

    v32 = sub_241CB3A88(v29, v31, &v47);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_241C8C000, v22, v23, "Invalid data for %s: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v25, -1, -1);
    MEMORY[0x245CFE970](v24, -1, -1);
  }

  else
  {
  }

  type metadata accessor for MAsset(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_241CAE848(uint64_t a1)
{
  (*(a1 + 136))(&v6);
  v1 = 0x6F622D6F69647561;
  v2 = 0x736B6F6F62;
  v3 = 0x7265732D6B6F6F62;
  if (v6 != 4)
  {
    v3 = 0x7365726E6567;
  }

  if (v6 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (v6 != 1)
  {
    v4 = 0x73726F68747561;
  }

  if (v6)
  {
    v1 = v4;
  }

  if (v6 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_241CAE9F0()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v2);
  return v2 == 3;
}

BOOL sub_241CAEA94()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v2);
  return v2 == 0;
}

uint64_t sub_241CAEB00()
{

  v1 = OBJC_IVAR____TtC14BookFoundation6MAsset_url;
  v2 = sub_241CF8CF8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id MAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAsset(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MAsset.cache(object:for:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_241C93664(a1, v6);
  v5 = sub_241CAD6A8();
  sub_241CAC1E0(v6, v3);
  *(v2 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache) = v5;
}

double MAsset.cachedValue(for:)@<D0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_241CAD6A8();
  if (*(v4 + 16) && (v5 = sub_241CF45F0(v3), (v6 & 1) != 0))
  {
    sub_241C93664(*(v4 + 56) + 32 * v5, a2);
  }

  else
  {

    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_241CAED94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65636E6575716573;
  v4 = 0xEE007265626D754ELL;
  v5 = 0x8000000241CFFEB0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000014;
    v4 = 0x8000000241CFFEB0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x614E736569726573;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA0000000000656DLL;
  }

  v8 = 0x65636E6575716573;
  if (*a2 == 1)
  {
    v5 = 0xEE007265626D754ELL;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x614E736569726573;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEA0000000000656DLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_241CF98C8();
  }

  return v11 & 1;
}

uint64_t sub_241CAEEA8()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAEF60(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CAF004(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

unint64_t sub_241CAF0B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_241CB4704(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_241CAF0E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0xEE007265626D754ELL;
  v5 = 0x65636E6575716573;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000241CFFEB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x614E736569726573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t MAsset.sequenceNumber.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
  v2 = sub_241CAF20C(1, v1);

  return v2;
}

uint64_t sub_241CAF20C(char a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0A8, &unk_241CFC460);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (a1)
  {
    v7 = 0x65636E6575716573;
    if (a1 == 1)
    {
      v8 = 0xEE007265626D754ELL;
    }

    else
    {
      v7 = 0xD000000000000014;
      v8 = 0x8000000241CFFEB0;
    }
  }

  else
  {
    v8 = 0xEA0000000000656DLL;
    v7 = 0x614E736569726573;
  }

  v17[1] = v7;
  v17[2] = v8;
  sub_241CF9668();
  if (!*(a2 + 16) || (v9 = sub_241CF45AC(v18), (v10 & 1) == 0))
  {
    sub_241C93610(v18);
    goto LABEL_13;
  }

  sub_241C93664(*(a2 + 56) + 32 * v9, v19);
  sub_241C93610(v18);
  sub_241C93664(v19, v18);
  if (!swift_dynamicCast())
  {
    sub_241C8EEE8(v19);
    goto LABEL_13;
  }

  v11 = sub_241CF8D98();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_241CF9588();
  v14 = v13;

  sub_241C8EA54(v6, &qword_27EC6A0A8, &unk_241CFC460);
  sub_241C8EEE8(v19);
  if ((v14 & 0x100000000) != 0)
  {
LABEL_13:
    result = 0;
    v15 = 1;
    goto LABEL_14;
  }

  v15 = 0;
  result = v12;
LABEL_14:
  LOBYTE(v18[0]) = v15;
  return result;
}

id sub_241CAF458(void *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x140);
  v5 = a1;
  v6 = v4();
  sub_241CB44E4();
  sub_241CD7154(v6, MEMORY[0x277D837D0], v9);

  if (v9[1])
  {
    v7 = sub_241CF9008();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_241CAF574(char a1)
{
  swift_getObjectType();
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0x140))();
  sub_241CB44E4();
  sub_241CD7154(v2, MEMORY[0x277D837D0], &v4);

  return v4;
}

uint64_t sub_241CAF638(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_241CADE44(*a1);
  v5 = v4;
  if (v3 == sub_241CADE44(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_241CF98C8();
  }

  return v8 & 1;
}

uint64_t sub_241CAF6C0()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CADE44(v1);
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAF724(uint64_t a1)
{
  sub_241CADE44(*v1);
  sub_241CF90B8();
}

uint64_t sub_241CAF778(uint64_t a1)
{
  v2 = *v1;
  sub_241CF9998();
  sub_241CADE44(v2);
  sub_241CF90B8();

  return sub_241CF99C8();
}

unint64_t sub_241CAF7D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_241CB4750(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_241CAF808@<X0>(unint64_t *a1@<X8>)
{
  result = sub_241CADE44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MAsset.isExplicit.getter()
{
  result = [v0 contentRating];
  if (result)
  {
    v2 = result;
    v3 = sub_241CF9038();
    v5 = v4;

    if (v3 == 0x746963696C707865 && v5 == 0xE800000000000000)
    {

      return 1;
    }

    else
    {
      v7 = sub_241CF98C8();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t MAsset.genreName.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
  sub_241CB4490();
  sub_241CD7154(v0, v1, &v4);

  if (!v4)
  {
    return 0;
  }

  if (!*(v4 + 16))
  {

    return 0;
  }

  v2 = *(v4 + 32);

  return v2;
}

uint64_t MAsset.buyParams.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69F98, &qword_241CFF7D0);
  sub_241CB4490();
  sub_241CD7154(v0, v1, &v4);

  if (!v4)
  {
    goto LABEL_5;
  }

  if (!*(v4 + 16))
  {

LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = *(v4 + 32);

LABEL_6:
  sub_241CD7154(v2, MEMORY[0x277D837D0], &v4);

  return v4;
}

uint64_t MAsset.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_241CF8D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241CF8E38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 21;
  v10 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v10, MEMORY[0x277D837D0], v19);

  if (v19[1])
  {
    v17 = a1;
    v11 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    sub_241CF8E28();
    v12 = sub_241CF8E18();
    (*(v7 + 8))(v9, v6);
    [v11 setTimeZone_];

    [v11 setFormatOptions_];
    v13 = sub_241CF9008();

    v14 = [v11 dateFromString_];

    if (v14)
    {
      sub_241CF8D78();

      a1 = v17;
      (*(v3 + 32))(v17, v5, v2);
      v15 = 0;
    }

    else
    {

      v15 = 1;
      a1 = v17;
    }
  }

  else
  {
    v15 = 1;
  }

  return (*(v3 + 56))(a1, v15, 1, v2);
}

uint64_t sub_241CB00C8@<X0>(char a3@<W2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v5 = sub_241CF8D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_241CF8E38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  if (a3)
  {
    sub_241CF8E28();
    v14 = sub_241CF8E18();
    (*(v10 + 8))(v12, v9);
    [v13 setTimeZone_];
  }

  [v13 setFormatOptions_];
  v15 = sub_241CF9008();

  v16 = [v13 dateFromString_];

  if (v16)
  {
    sub_241CF8D78();

    v17 = v21;
    (*(v6 + 32))(v21, v8, v5);
    v18 = 0;
  }

  else
  {

    v18 = 1;
    v17 = v21;
  }

  return (*(v6 + 56))(v17, v18, 1, v5);
}

uint64_t sub_241CB033C(char a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v6 = sub_241CADE44(a1);
  sub_241CF9668();
  if (*(a2 + 16) && (v3 = sub_241CF45AC(v7), (v4 & 1) != 0))
  {
    sub_241C93664(*(a2 + 56) + 32 * v3, v8);
    sub_241C93610(v7);
    result = swift_dynamicCast();
    if (result)
    {
      return v6;
    }
  }

  else
  {
    sub_241C93610(v7);
    return 0;
  }

  return result;
}

uint64_t MAsset.bookSampleDownloadURL.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v2, MEMORY[0x277D837D0], v5);

  if (v5[1])
  {
    sub_241CF8CD8();
  }

  else
  {
    v4 = sub_241CF8CF8();
    return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t MAsset.locale.getter()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v3);
  v1 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v1, MEMORY[0x277D837D0], &v3);

  return v3;
}

uint64_t MAsset.pagesAreRTL.getter()
{
  v1 = [v0 pageProgressionDirection];
  if (v1)
  {
    v2 = v1;
    v3 = sub_241CF9038();
    v5 = v4;

    if (v3 == 7107698 && v5 == 0xE300000000000000)
    {

      return 1;
    }

    else
    {
      v7 = sub_241CF98C8();

      return v7 & 1;
    }
  }

  else
  {

    return _s14BookFoundation23LocaleLanguageDirectionV5isRTLSbvgZ_0();
  }
}

id sub_241CB08B4(void *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  v4 = a1;
  v5 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v5, MEMORY[0x277D837D0], v8);

  if (v8[1])
  {
    v6 = sub_241CF9008();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_241CB0994(char a1)
{
  swift_getObjectType();
  v1 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v1, MEMORY[0x277D837D0], &v3);

  return v3;
}

uint64_t sub_241CB0A3C(char a1, uint64_t *a2, uint64_t *a3)
{
  swift_getObjectType();
  v5 = sub_241CF1C04(0);
  v6 = sub_241C93918(a2, a3);
  sub_241CB4490();
  sub_241CD7154(v5, v6, &v8);

  return v8;
}

uint64_t sub_241CB0AF0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = sub_241CF1C04(0);
  v6 = sub_241CB033C(a3, v5);

  return v6 & 1;
}

uint64_t sub_241CB0B54(char a1)
{
  v2 = sub_241CF1C04(0);
  v3 = sub_241CB033C(a1, v2);

  return v3 & 1;
}

uint64_t MAsset.publisherName.getter()
{
  swift_getObjectType();
  v5 = 20;
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB4490();
  sub_241CD7154(v0, v1, v4);

  v2 = v4[0];
  if (!v4[0])
  {
    return 0;
  }

  sub_241CB47A4();
  sub_241CD7154(v2, MEMORY[0x277D837D0], v4);

  if (v4[1])
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CB0CF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F43676E69746172;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEB00000000746E75;
  }

  if (*a2)
  {
    v5 = 0x6F43676E69746172;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xEB00000000746E75;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_241CF98C8();
  }

  return v8 & 1;
}