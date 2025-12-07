uint64_t sub_1DD525D54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD524D98(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DD525D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD525218(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD525E70(uint64_t a1, uint64_t a2)
{
  sub_1DD522770(a2);
  sub_1DD63FCA8();
}

uint64_t sub_1DD525EF0(void *a1)
{
  v3 = sub_1DD3CE274();
  v4 = MEMORY[0x1E12B1F80](166, &type metadata for ContactRankerFeature, MEMORY[0x1E69E63B0], v3);
  sub_1DD3C2388(a1, v36);
  v5 = sub_1DD63FCB8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return v4;
  }

  else
  {
    v6 = v5;
    v35 = a1;
    v7 = 0;
    v8 = v5 + 64;
    OUTLINED_FUNCTION_4_1();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    while (v11)
    {
LABEL_9:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v7 << 6);
      v17 = (*(v6 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v6 + 56) + 8 * v16);

      v21 = sub_1DD524D98(v18, v19);
      if (v21 != 166)
      {
        v22 = v21;
        swift_isUniquelyReferenced_nonNull_native();
        v36[0] = v4;
        v33 = sub_1DD3FE6CC(v22);
        v34 = v23;
        if (__OFADD__(*(v4 + 16), (v23 & 1) == 0))
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4E8, &unk_1DD657C00);
        if (sub_1DD640A08())
        {
          v24 = sub_1DD3FE6CC(v22);
          v26 = v34;
          if ((v34 & 1) != (v25 & 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          v24 = v33;
          v26 = v34;
        }

        v4 = v36[0];
        if (v26)
        {
          *(*(v36[0] + 56) + 8 * v24) = v20;
        }

        else
        {
          OUTLINED_FUNCTION_14_5(v36[0] + 8 * (v24 >> 6));
          *(v28 + v27) = v22;
          *(*(v4 + 56) + 8 * v27) = v20;
          v29 = *(v4 + 16);
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_23;
          }

          *(v4 + 16) = v31;
        }
      }
    }

    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        __swift_destroy_boxed_opaque_existential_1(v35);

        return v4;
      }

      v11 = *(v8 + 8 * v14);
      ++v7;
      if (v11)
      {
        v7 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_1DD640D58();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD526164@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD525EF0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1DD5261D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DD640CA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ContactMatchRuntimeData(0);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      matched = type metadata accessor for ContactMatchRuntimeData(0);
      OUTLINED_FUNCTION_3(matched);
      v9[0] = (v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
      v9[1] = v5;
      sub_1DD526688(v9, v10, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1DD526304(0, v2, 1, a1);
  }
}

void sub_1DD526304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  MEMORY[0x1EEE9AC00](matched);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v37 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v37 - v15);
  v39 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *(v14 + 72);
  v18 = *a4 + v17 * (a3 - 1);
  v19 = -v17;
  v20 = a1 - a3;
  v44 = *a4;
  v38 = v17;
  v21 = v44 + v17 * a3;
  while (2)
  {
    v42 = v18;
    v43 = a3;
    v40 = v21;
    v41 = v20;
    while (1)
    {
      sub_1DD527BC4(v21, v16, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527BC4(v18, v12, type metadata accessor for ContactMatchRuntimeData);
      v22 = *(matched + 20);
      v23 = *(type metadata accessor for ContactResolver.SignalSet(0) + 204);
      v24 = *(v16 + v22 + v23);
      v25 = *(v12 + v22 + v23);
      if (v24 == 1)
      {
        break;
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      sub_1DD527C20(v12, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v16, type metadata accessor for ContactMatchRuntimeData);
LABEL_15:
      if (!v44)
      {
        __break(1u);
        return;
      }

      v35 = v45;
      sub_1DD527AF8(v21, v45, type metadata accessor for ContactMatchRuntimeData);
      swift_arrayInitWithTakeFrontToBack();
      sub_1DD527AF8(v35, v18, type metadata accessor for ContactMatchRuntimeData);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_20;
      }
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_8:
    v26 = *(matched + 32);
    v27 = *(v12 + v26);
    v28 = *(v16 + v26);
    if (v27 + 0.000000001 < v28)
    {
      goto LABEL_14;
    }

    if (v28 + 0.000000001 < v27)
    {
      goto LABEL_19;
    }

    v29 = v12[10];
    v48 = v12[9];
    v49 = v29;
    v30 = v16[10];
    v46 = v16[9];
    v47 = v30;
    sub_1DD3B7F10();
    v31 = sub_1DD640698();
    if (v31 == 1)
    {
      goto LABEL_14;
    }

    if (v31 != -1)
    {
      v32 = v12[6];
      v48 = v12[5];
      v49 = v32;
      v33 = v16[6];
      v46 = v16[5];
      v47 = v33;
      v34 = sub_1DD640698();
      sub_1DD527C20(v12, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v16, type metadata accessor for ContactMatchRuntimeData);
      if (v34 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

LABEL_19:
    sub_1DD527C20(v12, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD527C20(v16, type metadata accessor for ContactMatchRuntimeData);
LABEL_20:
    a3 = v43 + 1;
    v18 = v42 + v38;
    v20 = v41 - 1;
    v21 = v40 + v38;
    if (v43 + 1 != v39)
    {
      continue;
    }

    break;
  }
}

void sub_1DD526688(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v154 = a1;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v163 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v159 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v172 = &v153 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v153 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v153 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v170 = (&v153 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v169 = (&v153 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v156 = (&v153 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v155 = (&v153 - v23);
  v165 = a3;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_136:
    a3 = *v154;
    if (!*v154)
    {
      goto LABEL_177;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v167;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_138:
      v146 = v26 + 16;
      v147 = *(v26 + 2);
      for (i = v26; v147 >= 2; v26 = i)
      {
        if (!*v165)
        {
          goto LABEL_174;
        }

        v148 = &v26[16 * v147];
        v149 = *v148;
        v150 = &v146[2 * v147];
        v151 = *(v150 + 1);
        sub_1DD5273EC((*v165 + *(v163 + 72) * *v148), (*v165 + *(v163 + 72) * *v150), *v165 + *(v163 + 72) * v151, a3);
        if (v15)
        {
          break;
        }

        if (v151 < v149)
        {
          goto LABEL_162;
        }

        if (v147 - 2 >= *v146)
        {
          goto LABEL_163;
        }

        *v148 = v149;
        *(v148 + 1) = v151;
        v152 = *v146 - v147;
        if (*v146 < v147)
        {
          goto LABEL_164;
        }

        v147 = *v146 - 1;
        sub_1DD4EC4E4(v150 + 16, v152, v150);
        *v146 = v147;
      }

LABEL_146:

      return;
    }

LABEL_171:
    v26 = sub_1DD4EC2B8();
    goto LABEL_138;
  }

  v153 = a4;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v173 = matched;
  while (2)
  {
    v27 = v25++;
    if (v25 >= v24)
    {
      goto LABEL_53;
    }

    v161 = v24;
    v28 = *v165;
    v29 = *(v163 + 72);
    v166 = v25;
    v30 = v155;
    sub_1DD527BC4(&v28[v29 * v25], v155, type metadata accessor for ContactMatchRuntimeData);
    v157 = v27;
    v164 = v29;
    v31 = &v28[v29 * v27];
    v32 = v156;
    sub_1DD527BC4(v31, v156, type metadata accessor for ContactMatchRuntimeData);
    v33 = *(matched + 20);
    v160 = type metadata accessor for ContactResolver.SignalSet(0);
    v34 = *(v160 + 204);
    v35 = *(v30 + v33 + v34);
    v36 = *(v32 + v33 + v34);
    i = v26;
    if (v35 == 1)
    {
      v37 = v157;
      if ((v36 & 1) == 0)
      {
LABEL_15:
        LODWORD(v162) = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v37 = v157;
      if (v36)
      {
        goto LABEL_9;
      }
    }

    v38 = *(matched + 32);
    v39 = *(v156 + v38);
    v40 = *(v155 + v38);
    if (v39 + 0.000000001 >= v40)
    {
      if (v40 + 0.000000001 < v39)
      {
        goto LABEL_15;
      }

      v42 = v156[10];
      v176 = v156[9];
      v177 = v42;
      v43 = v155[10];
      v174 = v155[9];
      v175 = v43;
      sub_1DD3B7F10();
      v44 = sub_1DD640698();
      if (v44 == -1)
      {
        goto LABEL_15;
      }

      if (v44 != 1)
      {
        v45 = v156[6];
        v176 = v156[5];
        v177 = v45;
        v46 = v155[6];
        v174 = v155[5];
        v175 = v46;
        v41 = sub_1DD640698() != -1;
        goto LABEL_10;
      }
    }

LABEL_9:
    v41 = 1;
LABEL_10:
    LODWORD(v162) = v41;
LABEL_16:
    sub_1DD527C20(v156, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD527C20(v155, type metadata accessor for ContactMatchRuntimeData);
    v47 = v37 + 2;
    v48 = v164 * (v37 + 2);
    v49 = &v28[v48];
    v50 = v166;
    v51 = (v164 * v166);
    v52 = &v28[v164 * v166];
    do
    {
      a3 = v47;
      v53 = v50;
      v54 = v51;
      v55 = v48;
      if (v47 >= v161)
      {
        break;
      }

      v171 = v50;
      v166 = v51;
      v56 = v48;
      v57 = v47;
      v58 = v169;
      sub_1DD527BC4(v49, v169, type metadata accessor for ContactMatchRuntimeData);
      v59 = v170;
      sub_1DD527BC4(v52, v170, type metadata accessor for ContactMatchRuntimeData);
      v60 = *(v173 + 20);
      v61 = *(v160 + 204);
      v62 = *(v58 + v60 + v61);
      v63 = *(v59 + v60 + v61);
      a3 = v57;
      if (v62 == 1)
      {
        if ((v63 & 1) == 0)
        {
          v64 = 0;
LABEL_23:
          v55 = v56;
          goto LABEL_26;
        }
      }

      else if (v63)
      {
        v64 = 1;
        goto LABEL_23;
      }

      v65 = *(v173 + 32);
      v66 = *(v170 + v65);
      v67 = *(v169 + v65);
      v55 = v56;
      if (v66 + 0.000000001 >= v67)
      {
        v54 = v166;
        if (v67 + 0.000000001 < v66 || (v68 = v170[10], v176 = v170[9], v177 = v68, v69 = v169[10], v174 = v169[9], v175 = v69, sub_1DD3B7F10(), v70 = sub_1DD640698(), v70 == -1))
        {
          v64 = 0;
        }

        else if (v70 == 1)
        {
          v64 = 1;
        }

        else
        {
          v71 = v170[6];
          v176 = v170[5];
          v177 = v71;
          v72 = v169[6];
          v174 = v169[5];
          v175 = v72;
          v64 = sub_1DD640698() != -1;
        }

        goto LABEL_27;
      }

      v64 = 1;
LABEL_26:
      v54 = v166;
LABEL_27:
      sub_1DD527C20(v170, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v169, type metadata accessor for ContactMatchRuntimeData);
      v47 = (a3 + 1);
      v49 += v164;
      v52 += v164;
      v53 = v171;
      v50 = v171 + 1;
      v51 = (v54 + v164);
      v48 = v55 + v164;
    }

    while (v162 == v64);
    if (!v162)
    {
      goto LABEL_51;
    }

    v27 = v157;
    if (a3 < v157)
    {
      goto LABEL_168;
    }

    if (v157 >= a3)
    {
      v25 = a3;
      v26 = i;
      matched = v173;
    }

    else
    {
      v73 = v157 * v164;
      do
      {
        if (v27 != v53)
        {
          v171 = v53;
          v74 = *v165;
          if (!*v165)
          {
            goto LABEL_175;
          }

          sub_1DD527AF8(&v74[v73], v159, type metadata accessor for ContactMatchRuntimeData);
          v75 = v73 < v54 || &v74[v73] >= &v74[v55];
          if (v75)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1DD527AF8(v159, &v74[v54], type metadata accessor for ContactMatchRuntimeData);
          v53 = v171;
        }

        ++v27;
        v54 -= v164;
        v55 -= v164;
        v73 += v164;
        v76 = v27 < v53--;
      }

      while (v76);
LABEL_51:
      v25 = a3;
      v26 = i;
      matched = v173;
      v27 = v157;
    }

LABEL_53:
    v77 = *(v165 + 1);
    if (v25 >= v77)
    {
      goto LABEL_82;
    }

    if (__OFSUB__(v25, v27))
    {
      goto LABEL_167;
    }

    if (v25 - v27 >= v153)
    {
LABEL_82:
      if (v25 < v27)
      {
        goto LABEL_166;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v26 = v143;
      }

      v99 = *(v26 + 2);
      v100 = v99 + 1;
      if (v99 >= *(v26 + 3) >> 1)
      {
        sub_1DD3BEB7C();
        v26 = v144;
      }

      *(v26 + 2) = v100;
      v101 = v26 + 32;
      v102 = &v26[16 * v99 + 32];
      *v102 = v27;
      *(v102 + 1) = v25;
      v171 = *v154;
      if (!v171)
      {
        goto LABEL_176;
      }

      if (!v99)
      {
LABEL_132:
        v24 = *(v165 + 1);
        matched = v173;
        if (v25 >= v24)
        {
          goto LABEL_136;
        }

        continue;
      }

      i = v26;
      v166 = (v26 + 32);
      while (1)
      {
        v103 = v100 - 1;
        v104 = &v101[16 * v100 - 16];
        v105 = &v26[16 * v100];
        if (v100 >= 4)
        {
          break;
        }

        if (v100 == 3)
        {
          v106 = *(v26 + 4);
          v107 = *(v26 + 5);
          v116 = __OFSUB__(v107, v106);
          v108 = v107 - v106;
          v109 = v116;
LABEL_103:
          if (v109)
          {
            goto LABEL_153;
          }

          v121 = *v105;
          v120 = *(v105 + 1);
          v122 = __OFSUB__(v120, v121);
          v123 = v120 - v121;
          v124 = v122;
          if (v122)
          {
            goto LABEL_156;
          }

          v125 = *(v104 + 1);
          v126 = v125 - *v104;
          if (__OFSUB__(v125, *v104))
          {
            goto LABEL_159;
          }

          if (__OFADD__(v123, v126))
          {
            goto LABEL_161;
          }

          if (v123 + v126 >= v108)
          {
            if (v108 < v126)
            {
              v103 = v100 - 2;
            }

            goto LABEL_125;
          }

          goto LABEL_118;
        }

        if (v100 < 2)
        {
          goto LABEL_155;
        }

        v128 = *v105;
        v127 = *(v105 + 1);
        v116 = __OFSUB__(v127, v128);
        v123 = v127 - v128;
        v124 = v116;
LABEL_118:
        if (v124)
        {
          goto LABEL_158;
        }

        v130 = *v104;
        v129 = *(v104 + 1);
        v116 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v116)
        {
          goto LABEL_160;
        }

        if (v131 < v123)
        {
          goto LABEL_132;
        }

LABEL_125:
        if (v103 - 1 >= v100)
        {
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
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        if (!*v165)
        {
          goto LABEL_173;
        }

        v135 = &v101[16 * v103 - 16];
        v136 = *v135;
        a3 = v103;
        v137 = &v101[16 * v103];
        v138 = *(v137 + 1);
        v139 = v167;
        sub_1DD5273EC((*v165 + *(v163 + 72) * *v135), (*v165 + *(v163 + 72) * *v137), *v165 + *(v163 + 72) * v138, v171);
        v167 = v139;
        if (v139)
        {
          goto LABEL_146;
        }

        if (v138 < v136)
        {
          goto LABEL_148;
        }

        v140 = v15;
        v15 = v12;
        v141 = v25;
        v142 = *(i + 2);
        if (a3 > v142)
        {
          goto LABEL_149;
        }

        *v135 = v136;
        *(v135 + 1) = v138;
        if (a3 >= v142)
        {
          goto LABEL_150;
        }

        v100 = (v142 - 1);
        sub_1DD4EC4E4(v137 + 16, &v142[-a3 - 1], v137);
        v26 = i;
        *(i + 2) = v142 - 1;
        v76 = v142 > 2;
        v25 = v141;
        v12 = v15;
        v15 = v140;
        v101 = v166;
        if (!v76)
        {
          goto LABEL_132;
        }
      }

      v110 = &v101[16 * v100];
      v111 = *(v110 - 8);
      v112 = *(v110 - 7);
      v116 = __OFSUB__(v112, v111);
      v113 = v112 - v111;
      if (v116)
      {
        goto LABEL_151;
      }

      v115 = *(v110 - 6);
      v114 = *(v110 - 5);
      v116 = __OFSUB__(v114, v115);
      v108 = v114 - v115;
      v109 = v116;
      if (v116)
      {
        goto LABEL_152;
      }

      v117 = *(v105 + 1);
      v118 = v117 - *v105;
      if (__OFSUB__(v117, *v105))
      {
        goto LABEL_154;
      }

      v116 = __OFADD__(v108, v118);
      v119 = v108 + v118;
      if (v116)
      {
        goto LABEL_157;
      }

      if (v119 >= v113)
      {
        v133 = *v104;
        v132 = *(v104 + 1);
        v116 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v116)
        {
          goto LABEL_165;
        }

        if (v108 < v134)
        {
          v103 = v100 - 2;
        }

        goto LABEL_125;
      }

      goto LABEL_103;
    }

    break;
  }

  v78 = (v27 + v153);
  if (__OFADD__(v27, v153))
  {
    goto LABEL_169;
  }

  if (v78 >= v77)
  {
    v78 = *(v165 + 1);
  }

  if (v78 < v27)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v25 == v78)
  {
    goto LABEL_82;
  }

  i = v26;
  v79 = *v165;
  v80 = *(v163 + 72);
  v81 = *v165 + v80 * (v25 - 1);
  a3 = -v80;
  v157 = v27;
  v158 = v80;
  v82 = (v27 - v25);
  v171 = v79;
  v83 = &v79[v25 * v80];
  v160 = v78;
  while (2)
  {
    v166 = v25;
    v161 = v83;
    v162 = v82;
    v164 = v81;
    v84 = v81;
LABEL_63:
    sub_1DD527BC4(v83, v15, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD527BC4(v84, v12, type metadata accessor for ContactMatchRuntimeData);
    v85 = *(matched + 20);
    v86 = *(type metadata accessor for ContactResolver.SignalSet(0) + 204);
    v87 = *(v15 + v85 + v86);
    v88 = *(v12 + v85 + v86);
    if (v87 == 1)
    {
      if ((v88 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_67;
    }

    if (v88)
    {
      goto LABEL_73;
    }

LABEL_67:
    v89 = *(v173 + 32);
    v90 = *(v12 + v89);
    v91 = *(v15 + v89);
    if (v90 + 0.000000001 < v91)
    {
      goto LABEL_73;
    }

    if (v91 + 0.000000001 < v90)
    {
      goto LABEL_78;
    }

    v92 = v12[10];
    v176 = v12[9];
    v177 = v92;
    v93 = v15[10];
    v174 = v15[9];
    v175 = v93;
    sub_1DD3B7F10();
    v94 = sub_1DD640698();
    if (v94 == 1)
    {
LABEL_73:
      sub_1DD527C20(v12, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v15, type metadata accessor for ContactMatchRuntimeData);
      goto LABEL_74;
    }

    if (v94 == -1)
    {
LABEL_78:
      sub_1DD527C20(v12, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v15, type metadata accessor for ContactMatchRuntimeData);
LABEL_79:
      matched = v173;
LABEL_80:
      v25 = v166 + 1;
      v81 = v164 + v158;
      v82 = v162 - 1;
      v83 = v161 + v158;
      if (v166 + 1 == v160)
      {
        v25 = v160;
        v26 = i;
        v27 = v157;
        goto LABEL_82;
      }

      continue;
    }

    break;
  }

  v95 = v12[6];
  v176 = v12[5];
  v177 = v95;
  v96 = v15[6];
  v174 = v15[5];
  v175 = v96;
  v97 = sub_1DD640698();
  sub_1DD527C20(v12, type metadata accessor for ContactMatchRuntimeData);
  sub_1DD527C20(v15, type metadata accessor for ContactMatchRuntimeData);
  if (v97 == -1)
  {
    goto LABEL_79;
  }

LABEL_74:
  matched = v173;
  if (v171)
  {
    v98 = v172;
    sub_1DD527AF8(v83, v172, type metadata accessor for ContactMatchRuntimeData);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD527AF8(v98, v84, type metadata accessor for ContactMatchRuntimeData);
    v84 += a3;
    v83 += a3;
    v75 = __CFADD__(v82++, 1);
    if (v75)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
}

void sub_1DD5273EC(char *a1, char *a2, unint64_t a3, char *a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  MEMORY[0x1EEE9AC00](matched);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = (&v67 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v67 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v67 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_84;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_85;
  }

  v23 = v19 / v18;
  v80 = a4;
  v81 = a1;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1DD3C1C14(a1, v19 / v18, a4);
    v73 = &a4[v23 * v18];
    v79 = v73;
    while (1)
    {
      if (a4 >= v73 || a2 >= a3)
      {
        goto LABEL_82;
      }

      sub_1DD527BC4(a2, v16, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527BC4(a4, v13, type metadata accessor for ContactMatchRuntimeData);
      v26 = *(matched + 20);
      v27 = *(type metadata accessor for ContactResolver.SignalSet(0) + 204);
      v28 = *(v16 + v26 + v27);
      v29 = *(v13 + v26 + v27);
      if (v28 == 1)
      {
        if ((v29 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (v29)
      {
        goto LABEL_21;
      }

      v30 = *(matched + 32);
      v31 = *(v13 + v30);
      v32 = *(v16 + v30);
      if (v31 + 0.000000001 < v32)
      {
        goto LABEL_21;
      }

      if (v32 + 0.000000001 < v31 || (v34 = v13[10], v77 = v13[9], v78 = v34, v35 = v16[10], v75 = v16[9], v76 = v35, sub_1DD3B7F10(), v36 = sub_1DD640698(), v36 == -1))
      {
LABEL_36:
        sub_1DD527C20(v13, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD527C20(v16, type metadata accessor for ContactMatchRuntimeData);
LABEL_37:
        if (a1 < a4 || a1 >= &a4[v18])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v80 = &a4[v18];
        a4 += v18;
        goto LABEL_46;
      }

      if (v36 == 1)
      {
LABEL_21:
        sub_1DD527C20(v13, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD527C20(v16, type metadata accessor for ContactMatchRuntimeData);
        goto LABEL_22;
      }

      v37 = v13[6];
      v77 = v13[5];
      v78 = v37;
      v38 = v16[6];
      v75 = v16[5];
      v76 = v38;
      v39 = sub_1DD640698();
      sub_1DD527C20(v13, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD527C20(v16, type metadata accessor for ContactMatchRuntimeData);
      if (v39 == -1)
      {
        goto LABEL_37;
      }

LABEL_22:
      if (a1 < a2 || a1 >= &a2[v18])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v18;
LABEL_46:
      a1 += v18;
      v81 = a1;
    }
  }

  sub_1DD3C1C14(a2, v21 / v18, a4);
  v41 = &a4[v24 * v18];
  v42 = -v18;
  v43 = v41;
  v71 = -v18;
LABEL_48:
  v44 = &a2[v42];
  v45 = a3;
  v68 = v43;
  v70 = &a2[v42];
  while (1)
  {
    if (v41 <= a4)
    {
      v81 = a2;
      goto LABEL_81;
    }

    if (a2 <= a1)
    {
      break;
    }

    v69 = v43;
    v46 = &v41[v42];
    v47 = v72;
    sub_1DD527BC4(&v41[v42], v72, type metadata accessor for ContactMatchRuntimeData);
    v48 = v44;
    v49 = v73;
    sub_1DD527BC4(v48, v73, type metadata accessor for ContactMatchRuntimeData);
    v50 = *(matched + 20);
    v51 = *(type metadata accessor for ContactResolver.SignalSet(0) + 204);
    v52 = *(v47 + v50 + v51);
    v53 = v49[v50 + v51];
    if (v52 == 1)
    {
      if ((v53 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (v53)
    {
      goto LABEL_56;
    }

    v54 = *(matched + 32);
    v55 = *&v73[v54];
    v56 = *(v72 + v54);
    if (v55 + 0.000000001 < v56)
    {
      goto LABEL_56;
    }

    if (v56 + 0.000000001 < v55 || (v58 = *(v73 + 10), v77 = *(v73 + 9), v78 = v58, v59 = v72[10], v75 = v72[9], v76 = v59, sub_1DD3B7F10(), v60 = sub_1DD640698(), v60 == -1))
    {
LABEL_61:
      v57 = 0;
      goto LABEL_62;
    }

    if (v60 == 1)
    {
LABEL_56:
      v57 = 1;
      goto LABEL_62;
    }

    v61 = *(v73 + 6);
    v77 = *(v73 + 5);
    v78 = v61;
    v62 = v72[6];
    v75 = v72[5];
    v76 = v62;
    v57 = sub_1DD640698() != -1;
LABEL_62:
    a3 = v45 + v71;
    sub_1DD527C20(v73, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD527C20(v72, type metadata accessor for ContactMatchRuntimeData);
    if (v57)
    {
      if (v45 < a2 || a3 >= a2)
      {
        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v69;
        v42 = v71;
      }

      else
      {
        v65 = v70;
        v43 = v69;
        v20 = v45 == a2;
        a2 = v70;
        v42 = v71;
        if (!v20)
        {
          v66 = v69;
          swift_arrayInitWithTakeBackToFront();
          a2 = v65;
          v43 = v66;
        }
      }

      goto LABEL_48;
    }

    if (v45 < v41 || a3 >= v41)
    {
      swift_arrayInitWithTakeFrontToBack();
      v45 = a3;
      v41 = v46;
      v43 = v46;
      v44 = v70;
      v42 = v71;
    }

    else
    {
      v43 = v46;
      v20 = v41 == v45;
      v45 = a3;
      v41 = v46;
      v44 = v70;
      v42 = v71;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v45 = a3;
        v41 = v46;
        v43 = v46;
      }
    }
  }

  v81 = a2;
  v43 = v68;
LABEL_81:
  v79 = v43;
LABEL_82:
  sub_1DD4EC2D0(&v81, &v80, &v79);
}

unint64_t sub_1DD527AA0()
{
  result = qword_1EE1638A0;
  if (!qword_1EE1638A0)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1638A0);
  }

  return result;
}

uint64_t sub_1DD527AF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_15_0();
  v5(v4);
  return a2;
}

uint64_t sub_1DD527B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4F8, &qword_1DD657C18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD527BC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_15_0();
  v5(v4);
  return a2;
}

uint64_t sub_1DD527C20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContactRankerFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x5B)
  {
    if (a2 + 165 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 165) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 166;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA6;
  v5 = v6 - 166;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactRankerFeature(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 165 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 165) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x5B)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x5A)
  {
    v6 = ((a2 - 91) >> 8) + 1;
    *result = a2 - 91;
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
          *result = a2 - 91;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD527E24()
{
  result = qword_1EE165288;
  if (!qword_1EE165288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165288);
  }

  return result;
}

unint64_t sub_1DD527E78()
{
  result = qword_1ECCDE528;
  if (!qword_1ECCDE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE528);
  }

  return result;
}

double OUTLINED_FUNCTION_10_39@<D0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a3;
  a1[1] = a2;
  a1[2] = a2;
  v5 = v4 + v3[16];
  *&result = 0x100000001;
  *v5 = 1;
  *(v5 + 4) = 2;
  v7 = (v4 + v3[17]);
  *v7 = 0;
  v7[1] = 0;
  *(v4 + v3[20]) = 0;
  v8 = (v4 + v3[21]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

double OUTLINED_FUNCTION_13_37@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = a1;
  *(v1 + 40) = 0;
  *(v1 + 48) = a1;
  *(v1 + 56) = 0;
  *(v1 + 64) = a1;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = 0;
  *(v1 + 96) = a1;
  *(v1 + 104) = 0;
  *(v1 + 112) = a1;
  *(v1 + 120) = 0;
  *(v1 + 128) = a1;
  *(v1 + 136) = 0;
  *(v1 + 144) = a1;
  *(v1 + 152) = 0;
  *(v1 + 160) = a1;
  result = 0.0;
  *(v1 + 216) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 168) = 0u;
  return result;
}

uint64_t sub_1DD527F68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  v1 = OUTLINED_FUNCTION_3(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - v2;
  sub_1DD63EFC8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  type metadata accessor for PhoneAppSelectionModelCache();
  v8 = swift_allocObject();
  type metadata accessor for MessagesAppSelectionModelCache();
  v9 = swift_allocObject();
  sub_1DD63D798();
  swift_allocObject();
  v10 = sub_1DD63D788();
  type metadata accessor for ModelBasedAppResolverRule(0);
  v11 = swift_allocObject();
  sub_1DD528340(v3, v8, v9, sub_1DD528300, 0, v10);
  return v11;
}

unint64_t sub_1DD52809C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_1DD63FF18())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_1DD640038() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_1DD640CD8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1DD528184(void *a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = (a2 + 56);
  while (v4 != v3)
  {
    if (*(v5 - 3) == *a1 && *(v5 - 2) == a1[1])
    {
      return v3;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    if (sub_1DD640CD8())
    {
      return v3;
    }

    if (v7)
    {
      v9 = a1[3];
      if (v9)
      {
        v10 = v8 == a1[2] && v7 == v9;
        if (v10 || (sub_1DD640CD8() & 1) != 0)
        {
          return v3;
        }
      }
    }

    ++v3;
    v5 += 10;
  }

  return 0;
}

uint64_t sub_1DD52823C()
{
  OUTLINED_FUNCTION_18_7();
  v2 = 0;
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  while (v4 != v2)
  {
    v6 = *(v5 - 1) == v1 && *v5 == v0;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {
      return v2;
    }

    ++v2;
    v5 += 2;
  }

  return 0;
}

id sub_1DD5282C4()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  qword_1ECD0DDA0 = result;
  return result;
}

uint64_t sub_1DD528300(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD3FDEDC(a1);
  v4 = sub_1DD52D648(v3, a2);

  return v4;
}

uint64_t sub_1DD528340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  v13 = OUTLINED_FUNCTION_3(v12);
  MEMORY[0x1EEE9AC00](v13);
  v14 = v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_signalGatheringSignpostName;
  *v14 = "CommsAppSelectionModelInferenceSignalGathering";
  *(v14 + 8) = 46;
  *(v14 + 16) = 2;
  v15 = v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_interactionStatsQuerySignpostName;
  *v15 = "CommsAppSelectionModelInferenceStatsQuery";
  *(v15 + 8) = 41;
  *(v15 + 16) = 2;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_phoneAppSelectionModelCache) = a2;
  *(v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_messageAppSelectionModelCache) = a3;
  v16 = sub_1DD63EFC8();
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) != 1)
  {
    goto LABEL_6;
  }

  sub_1DD63EFB8();
  if (!v22)
  {

    sub_1DD390754(a1, &qword_1ECCDBBC8, &qword_1DD643FC0);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
LABEL_6:
    sub_1DD52DB00();
    *(v6 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_defaultAppProvider) = a6;
    return v6;
  }

  sub_1DD390754(a1, &qword_1ECCDBBC8, &qword_1DD643FC0);

  type metadata accessor for ModelBasedAppResolverRule(0);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_1DD5285A0(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  OUTLINED_FUNCTION_3(v4);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for Signpost(0);
  v3[21] = v5;
  OUTLINED_FUNCTION_3(v5);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD528668, 0, 0);
}

uint64_t sub_1DD528668()
{
  v76 = v0;
  v1 = 0;
  v2 = *(v0[18] + 24);
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_38:

      v62 = sub_1DD63F9D8();
      v63 = sub_1DD640368();
      if (OUTLINED_FUNCTION_37(v63))
      {
        v64 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_11_3(v64);
        OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v65, v66, "ModelBasedAppResolverRule#resolve Unable to generate CoreML model feature input");
        OUTLINED_FUNCTION_23_0();
      }

      v0 = v74;
      v67 = v74[22];
      v68 = v74[17];

      sub_1DD41BFFC(v67);
      *v68 = 0;
      *(v68 + 8) = 0;
      *(v68 + 16) = 3;
      goto LABEL_41;
    }

    v7 = *(v4 - 1);
    v6 = *v4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BE2A4();
      v5 = v10;
    }

    v8 = v5[2];
    if (v8 >= v5[3] >> 1)
    {
      sub_1DD3BE2A4();
      v5 = v11;
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = v7;
    v9[5] = v6;
    v4 += 3;
    ++v1;
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v12 = sub_1DD63F9F8();
  __swift_project_value_buffer(v12, qword_1EE16EFB8);

  v13 = sub_1DD63F9D8();
  v14 = sub_1DD640368();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v75 = v16;
    *v15 = 136315138;
    v17 = MEMORY[0x1E12B2430](v5, MEMORY[0x1E69E6158]);
    v19 = sub_1DD39565C(v17, v18, &v75);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DD38D000, v13, v14, "ModelBasedAppResolverRule#resolve candidate apps: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E12B3DA0](v16, -1, -1);
    MEMORY[0x1E12B3DA0](v15, -1, -1);
  }

  v20 = v0[19];
  v22 = *(v20 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_interactionStatsQuerySignpostName);
  v21 = *(v20 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_interactionStatsQuerySignpostName + 8);
  v23 = *(v20 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_interactionStatsQuerySignpostName + 16);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
    v20 = v0[19];
  }

  v25 = v0[21];
  v24 = v0[22];
  v71 = v0[20];
  v73 = v20;
  v26 = qword_1EE16F0C0;
  v27 = v24 + *(v25 + 20);
  *v27 = v22;
  *(v27 + 8) = v21;
  *(v27 + 16) = v23;
  v28 = v26;
  sub_1DD63F9B8();
  *(v24 + *(v25 + 24)) = v28;
  v28;
  sub_1DD6404D8();
  v74 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DD643F90;
  v30 = sub_1DD6408F8();
  v32 = v31;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1DD392BD8();
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  OUTLINED_FUNCTION_3_61();
  sub_1DD63F998();

  v33 = OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_appMatcher;
  sub_1DD52DAA4();
  v34 = sub_1DD63EFC8();
  if (__swift_getEnumTagSinglePayload(v71, 1, v34) == 1)
  {
    v35 = v0[20];

    sub_1DD390754(v35, &qword_1ECCDBBC8, &qword_1DD643FC0);
    v36 = sub_1DD63F9D8();
    v37 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_37(v37))
    {
LABEL_19:
      v42 = v0[22];
      v43 = v0[17];

      sub_1DD41BFFC(v42);
      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 3;
      goto LABEL_20;
    }

    v38 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v38);
    v41 = "ModelBasedAppResolverRule#resolve bundle stats is nil";
LABEL_18:
    OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v39, v40, v41);
    OUTLINED_FUNCTION_23_0();
    goto LABEL_19;
  }

  v45 = *v0[18];
  if (v45)
  {
    v46 = v45;
    sub_1DD63F398();
  }

  else
  {
    type metadata accessor for CommsAppResolutionFeature(0);
  }

  v72 = sub_1DD63EF98();
  v47 = v0[20];

  (*(*(v34 - 8) + 8))(v47, v34);
  v48 = CommsAppResolutionFeature.getBundleContactStats(appMatcher:bundleIds:groupBySiriDonation:)(v73 + v33, v5, 1);
  v50 = v48;
  if (!v48)
  {

    v36 = sub_1DD63F9D8();
    v56 = sub_1DD640368();
    if (OUTLINED_FUNCTION_37(v56))
    {
      v57 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v57);
      OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v58, v59, "ModelBasedAppResolverRule#resolve bundle contact stats is nil");
      OUTLINED_FUNCTION_23_0();
    }

    goto LABEL_19;
  }

  sub_1DD6404C8();
  sub_1DD63F9A8();
  sub_1DD528E98();
  if (!v0[10])
  {

    sub_1DD390754((v0 + 7), &qword_1ECCDBF80, &unk_1DD657A00);
    v36 = sub_1DD63F9D8();
    v60 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_37(v60))
    {
      goto LABEL_19;
    }

    v61 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v61);
    v41 = "ModelBasedAppResolverRule#resolve Unable to get the CoreML model for prediction";
    goto LABEL_18;
  }

  v51 = v0[18];
  sub_1DD3AA4A8((v0 + 7), (v0 + 2));
  v52 = sub_1DD528EFC(v5, v51, v50, v72);

  if (!v52)
  {
    goto LABEL_38;
  }

  v53 = v0[5];
  v54 = v74[6];
  __swift_project_boxed_opaque_existential_1(v74 + 2, v74[5]);
  (*(v54 + 16))(v52, v53, v54);
  v55 = v74[22];
  v0 = v74;
  v69 = v74[16];
  v70 = v74[15];
  __swift_project_boxed_opaque_existential_1(v74 + 12, v70);
  (*(v69 + 24))(v5, v70, v69);

  sub_1DD41BFFC(v55);
  __swift_destroy_boxed_opaque_existential_1(v74 + 12);
LABEL_41:
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
LABEL_20:

  v44 = v0[1];

  return v44();
}

uint64_t sub_1DD528E98()
{
  CommsAppResolutionFeature.isMessage.getter();
  if (v1)
  {
    return sub_1DD51E098();
  }

  else
  {
    return sub_1DD54F698();
  }
}

id sub_1DD528EFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v317 = a4;
  v316 = a3;
  v368 = a2;
  v356 = sub_1DD63FB78();
  OUTLINED_FUNCTION_0();
  v355 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v7);
  v354 = sub_1DD63FBD8();
  OUTLINED_FUNCTION_0();
  v314 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v10);
  v353 = sub_1DD63FB88();
  OUTLINED_FUNCTION_0();
  v312 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v13);
  v373 = sub_1DD63F1B8();
  OUTLINED_FUNCTION_0();
  v370 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v372 = v16;
  v351 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v367 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v350 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v21 = OUTLINED_FUNCTION_3(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v31);
  v366 = sub_1DD63F148();
  OUTLINED_FUNCTION_0();
  v357 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_0();
  v374 = v36;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v308 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v308 - v41;
  v43 = sub_1DD63D898();
  OUTLINED_FUNCTION_0();
  v310 = v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v308 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v49 = swift_allocObject();
  v375 = xmmword_1DD64D850;
  *(v49 + 16) = xmmword_1DD64D850;
  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  *(v49 + 32) = sub_1DD640598();
  v50 = a1[2];
  *(v49 + 40) = sub_1DD6402C8();
  v51 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v52 = v49;
  v53 = 0;
  v54 = sub_1DD521130(v52, 65568);
  v343 = v50;
  v364 = v42;
  v365 = v39;
  v344 = v47;
  v309 = v43;
  if (!v54)
  {
    if (qword_1EE162D98 != -1)
    {
      goto LABEL_118;
    }

    goto LABEL_3;
  }

  v59 = v54;
  v331 = v48;
  sub_1DD52C8C0();
  sub_1DD52B204();
  v62 = v61;
  sub_1DD52B204();
  v341 = v63;
  sub_1DD52BB0C();
  v65 = v64;
  v66 = v317;
  sub_1DD52B204();
  OUTLINED_FUNCTION_15_36();
  sub_1DD52BB0C();
  OUTLINED_FUNCTION_57_11();
  v338 = v65;
  sub_1DD52B7F8();
  v335 = v67;
  v340 = v62;
  sub_1DD52B7F8();
  v334 = v68;
  v337 = v66;
  sub_1DD52B7F8();
  v333 = v69;
  v339 = v50;
  sub_1DD52B7F8();
  v332 = v70;
  v71 = v368;
  v342 = *(v368 + 24);
  CommsAppResolutionFeature.isMessage.getter();
  v318 = sub_1DD63D778();
  v336 = v72;
  if (*v71)
  {
    v73 = *v71;
    v74 = sub_1DD640558();
    v75 = sub_1DD640538();
  }

  else
  {
    v76 = type metadata accessor for CommsAppResolutionFeature(0);
    v74 = *(v71 + *(v76 + 44));
    v75 = *(v71 + *(v76 + 40));
  }

  v77 = v353;
  OUTLINED_FUNCTION_23_27();
  v78 = v352;
  v53 = 0;
  v358 = v357 + 16;
  v363 = v357 + 32;
  v330 = (v367 + 8);
  v329 = *MEMORY[0x1E69D2A28];
  v79 = v370++;
  v371 = (v79 + 13);
  v328 = *MEMORY[0x1E69D2A00];
  v327 = *MEMORY[0x1E69D2A20];
  v326 = *MEMORY[0x1E69D29F0];
  v325 = *MEMORY[0x1E69D2A10];
  v324 = *MEMORY[0x1E69D29F8];
  v321 = (v357 + 8);
  v367 = v342 + 48;
  v323 = *MEMORY[0x1E69D2A08];
  v322 = *MEMORY[0x1E69D2A18];
  v320 = v74 & 1;
  v319 = v75 & 1;
  OUTLINED_FUNCTION_56_8();
  OUTLINED_FUNCTION_61_7();
  v369 = v59;
  while (1)
  {
    v84 = v354;
    if (v80 == v53)
    {
      v295 = v82;
      v296 = v83;

      sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
      v297 = v312;
      v298 = v311;
      (*(v312 + 104))(v311, *MEMORY[0x1E69E7F80], v77);
      v299 = sub_1DD6404B8();
      v300 = v77;
      v301 = v299;
      (*(v297 + 8))(v298, v300);
      v302 = swift_allocObject();
      v303 = v316;
      v302[2] = v59;
      v302[3] = v303;
      v302[4] = v317;
      v380 = sub_1DD52DA98;
      v381 = v302;
      aBlock = MEMORY[0x1E69E9820];
      v377 = 1107296256;
      v378 = sub_1DD3CBCD0;
      v379 = &block_descriptor_17;
      v304 = _Block_copy(&aBlock);
      v305 = v59;

      v306 = v313;
      sub_1DD63FBA8();
      v382 = MEMORY[0x1E69E7CC0];
      sub_1DD52DA40();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
      sub_1DD44FA38();
      v307 = v315;
      sub_1DD640718();
      MEMORY[0x1E12B27A0](0, v306, v307, v304);
      _Block_release(v304);

      (*(v296 + 8))(v307, v295);
      (*(v314 + 8))(v306, v84);
      (*(v310 + 8))(v344, v309);

      return v59;
    }

    v85 = *(v81 - 1);
    v86 = *v81;
    v360 = v81;
    v384 = -1.0;
    v385 = 0xBFF0000000000000;
    OUTLINED_FUNCTION_31_18();
    v368 = v85;
    if (v87)
    {

      sub_1DD3978DC();
      OUTLINED_FUNCTION_59_7();
      if (v88)
      {
        v89 = v366;
        OUTLINED_FUNCTION_27_21();
        v90();
        OUTLINED_FUNCTION_10_15();
      }

      else
      {
        OUTLINED_FUNCTION_65_0();
        v89 = v366;
      }

      __swift_storeEnumTagSinglePayload(v91, v92, v93, v89);
      OUTLINED_FUNCTION_23_27();
    }

    else
    {
      OUTLINED_FUNCTION_65_0();
      v89 = v366;
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v366);

      OUTLINED_FUNCTION_59_7();
    }

    sub_1DD52DB00();
    OUTLINED_FUNCTION_65_5(v85);
    if (v128)
    {
      sub_1DD63F138();
      sub_1DD390754(v85, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v97(v364, v85, v89);
    }

    OUTLINED_FUNCTION_31_18();
    if (v98)
    {
      OUTLINED_FUNCTION_8_50();
      sub_1DD3978DC();
      if (v99)
      {
        OUTLINED_FUNCTION_26_23();
        v100 = v345;
        OUTLINED_FUNCTION_27_21();
        v101();
        OUTLINED_FUNCTION_23_27();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_23_27();
    }

    else
    {
      v102 = 1;
    }

    v100 = v345;
LABEL_28:
    __swift_storeEnumTagSinglePayload(v100, v102, 1, v89);
    sub_1DD52DB00();
    OUTLINED_FUNCTION_65_5(v78);
    if (v128)
    {
      sub_1DD63F138();
      sub_1DD390754(v78, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v103(v365, v78, v89);
    }

    OUTLINED_FUNCTION_31_18();
    if (v104)
    {
      OUTLINED_FUNCTION_8_50();
      sub_1DD3978DC();
      if (v105)
      {
        OUTLINED_FUNCTION_26_23();
        v106 = v346;
        OUTLINED_FUNCTION_27_21();
        v107();
        OUTLINED_FUNCTION_23_27();
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_23_27();
    }

    else
    {
      v108 = 1;
    }

    v106 = v346;
LABEL_37:
    __swift_storeEnumTagSinglePayload(v106, v108, 1, v89);
    v109 = v349;
    sub_1DD52DB00();
    OUTLINED_FUNCTION_65_5(v109);
    if (v128)
    {
      sub_1DD63F138();
      sub_1DD390754(v109, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v110(v374, v109, v89);
    }

    OUTLINED_FUNCTION_31_18();
    if (v111)
    {
      OUTLINED_FUNCTION_8_50();
      sub_1DD3978DC();
      if (v112)
      {
        OUTLINED_FUNCTION_26_23();
        OUTLINED_FUNCTION_27_21();
        v113();
        OUTLINED_FUNCTION_23_27();
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_23_27();
    }

    else
    {
      v115 = 1;
    }

    v114 = v347;
LABEL_46:
    __swift_storeEnumTagSinglePayload(v114, v115, 1, v89);
    v116 = v366;
    sub_1DD52DB00();
    OUTLINED_FUNCTION_1_87(v48);
    if (v128)
    {
      sub_1DD63F138();
      sub_1DD390754(v48, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v117(v361, v48, v116);
    }

    v118 = v362;
    OUTLINED_FUNCTION_31_18();
    if (v119)
    {
      OUTLINED_FUNCTION_8_50();
      sub_1DD3978DC();
      if (v120)
      {
        OUTLINED_FUNCTION_26_23();
        v121 = v348;
        v122(v348);
        v123 = 0;
      }

      else
      {
        v123 = 1;
        v121 = v348;
      }
    }

    else
    {
      v123 = 1;
      v121 = v348;
    }

    __swift_storeEnumTagSinglePayload(v121, v123, 1, v116);
    sub_1DD52DB00();
    OUTLINED_FUNCTION_1_87(v84);
    if (v128)
    {
      sub_1DD63F138();
      sub_1DD390754(v84, &qword_1ECCDCB80, &qword_1DD64A0E0);
    }

    else
    {
      OUTLINED_FUNCTION_18_30();
      v124(v118, v84, v116);
    }

    v125 = v350;
    sub_1DD63F108();
    sub_1DD63CFF8();
    v127 = v126;
    (*v330)(v125, v351);
    if (v336)
    {
      v128 = v368 == v318 && v336 == v86;
      v129 = v369;
      v130 = v128 ? 1 : sub_1DD640CD8();
    }

    else
    {
      v130 = 0;
      v129 = v369;
    }

    sub_1DD63D978();
    v131 = v368;
    v132 = v344;
    sub_1DD63D888();

    sub_1DD63D998();
    sub_1DD63D888();

    v133 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v133);
    v134 = sub_1DD6402C8();
    v133[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v134);
    OUTLINED_FUNCTION_41_12();
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_64_4();
    v135 = OUTLINED_FUNCTION_5_62();
    [v135 v136];

    v137 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v137);
    v138 = sub_1DD6402C8();
    v139 = OUTLINED_FUNCTION_66_4(v138);
    OUTLINED_FUNCTION_40_10(v139);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_67_3();
    v140 = OUTLINED_FUNCTION_5_62();
    [v140 v141];

    v142 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v142);
    v143 = sub_1DD6402C8();
    v144 = OUTLINED_FUNCTION_66_4(v143);
    OUTLINED_FUNCTION_40_10(v144);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_67_3();
    v145 = OUTLINED_FUNCTION_5_62();
    [v145 v146];

    v147 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v147);
    v147[2].n128_u64[0] = sub_1DD6402C8();
    v147[2].n128_u64[1] = sub_1DD6402C8();
    if (v53 >= *(v342 + 16))
    {
      break;
    }

    sub_1DD640198();
    v148 = OUTLINED_FUNCTION_48_13();

    v149 = OUTLINED_FUNCTION_19_27();
    [v149 v150];

    v151 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v151);
    v151[2].n128_u64[0] = sub_1DD6402C8();
    v151[2].n128_u64[1] = sub_1DD6402C8();
    sub_1DD640208();
    v152 = OUTLINED_FUNCTION_48_13();

    v153 = OUTLINED_FUNCTION_19_27();
    [v153 v154];

    v155 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v155);
    v156 = sub_1DD6402C8();
    v157 = OUTLINED_FUNCTION_66_4(v156);
    OUTLINED_FUNCTION_40_10(v157);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_67_3();
    v158 = OUTLINED_FUNCTION_5_62();
    [v158 v159];

    v160 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v160);
    v160[2].n128_u64[0] = sub_1DD6402C8();
    v160[2].n128_u64[1] = sub_1DD6402C8();
    sub_1DD52B124(v384);
    v161 = OUTLINED_FUNCTION_48_13();

    v162 = OUTLINED_FUNCTION_19_27();
    [v162 v163];

    v164 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v164);
    v165 = sub_1DD6402C8();
    v164[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v165);
    OUTLINED_FUNCTION_31_18();
    if (v166 && (OUTLINED_FUNCTION_8_50(), v167 = sub_1DD3978DC(), (v168 & 1) != 0))
    {
      v169 = *(v160[3].n128_u64[1] + 8 * v167);
    }

    else
    {
      OUTLINED_FUNCTION_41_12();
    }

    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_64_4();
    v170 = OUTLINED_FUNCTION_5_62();
    [v170 v171];

    v172 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v172);
    v173 = sub_1DD6402C8();
    v172[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v173);
    OUTLINED_FUNCTION_31_18();
    if (v174 && (OUTLINED_FUNCTION_8_50(), v175 = sub_1DD3978DC(), (v176 & 1) != 0))
    {
      v177 = *(v160[3].n128_u64[1] + 8 * v175);
    }

    else
    {
      OUTLINED_FUNCTION_41_12();
    }

    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_64_4();
    v178 = OUTLINED_FUNCTION_5_62();
    [v178 v179];

    v180 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v180);
    v181 = sub_1DD6402C8();
    v182 = OUTLINED_FUNCTION_66_4(v181);
    OUTLINED_FUNCTION_40_10(v182);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_67_3();
    v183 = OUTLINED_FUNCTION_5_62();
    [v183 v184];

    v185 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v185);
    v186 = sub_1DD6402C8();
    v185[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v186);
    OUTLINED_FUNCTION_31_18();
    if (v187 && (OUTLINED_FUNCTION_8_50(), v188 = sub_1DD3978DC(), (v189 & 1) != 0))
    {
      v190 = *(v160[3].n128_u64[1] + 8 * v188);
    }

    else
    {
      v190 = OUTLINED_FUNCTION_41_12();
    }

    v191 = v190;
    v359 = v130;
    sub_1DD6400F8();
    OUTLINED_FUNCTION_64_4();
    v192 = OUTLINED_FUNCTION_5_62();
    [v192 v193];

    v194 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_13_38(v194);
    v195 = sub_1DD6402C8();
    v194[2].n128_u64[1] = OUTLINED_FUNCTION_51_8(v195);
    OUTLINED_FUNCTION_31_18();
    if (v196)
    {
      OUTLINED_FUNCTION_8_50();
      v130 = sub_1DD3978DC();
      v180 = v197;

      if (v180)
      {
        v198 = *(v191[7] + 8 * v130);
        goto LABEL_83;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_41_12();
LABEL_83:
    OUTLINED_FUNCTION_57_11();
    v199 = sub_1DD6400F8();

    v200 = OUTLINED_FUNCTION_19_27();
    [v200 v201];

    v202 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v202);
    v203 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v203);
    OUTLINED_FUNCTION_41_12();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    v204 = OUTLINED_FUNCTION_5_62();
    [v204 v205];

    v206 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v206);
    v207 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v207);
    v208 = *(v367 - 8);
    aBlock = *(v367 - 16);
    v377 = v208;
    v382 = 0x6C7070612E6D6F63;
    v383 = 0xE900000000000065;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    sub_1DD63FD48();
    v209 = sub_1DD640198();

    sub_1DD6400F8();
    OUTLINED_FUNCTION_15_36();

    v210 = OUTLINED_FUNCTION_5_62();
    [v210 v211];

    v212 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v212);
    v213 = sub_1DD6402C8();
    v214 = OUTLINED_FUNCTION_34_1(v213);
    OUTLINED_FUNCTION_29_19(v214);
    sub_1DD63F0E8();
    v215 = v372;
    v216 = *v371;
    v217 = v373;
    (*v371)(v372, v329, v373);
    v218 = sub_1DD63F1A8();
    v219 = v215;
    v220 = *v370;
    (*v370)(v219, v217);
    if (v218 < 0)
    {
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_33_12();
    if (v221)
    {
      goto LABEL_103;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    [v129 setObject:v218 forKeyedSubscript:v217];

    v222 = v373;
    v223 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v223);
    v224 = sub_1DD6402C8();
    v225 = OUTLINED_FUNCTION_34_1(v224);
    OUTLINED_FUNCTION_29_19(v225);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40();
    v216();
    sub_1DD63F1A8();
    v226 = OUTLINED_FUNCTION_2_76();
    v220(v226);
    if ((v129 & 0x8000000000000000) != 0)
    {
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_33_12();
    if (v221)
    {
      goto LABEL_105;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v227, sel_setObject_forKeyedSubscript_);

    v228 = v373;
    v229 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v229);
    v230 = sub_1DD6402C8();
    v231 = OUTLINED_FUNCTION_34_1(v230);
    OUTLINED_FUNCTION_29_19(v231);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40();
    v216();
    sub_1DD63F1A8();
    v232 = OUTLINED_FUNCTION_2_76();
    v220(v232);
    if ((v129 & 0x8000000000000000) != 0)
    {
      goto LABEL_106;
    }

    OUTLINED_FUNCTION_33_12();
    if (v221)
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v233, sel_setObject_forKeyedSubscript_);

    v234 = v373;
    v235 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v235);
    v236 = sub_1DD6402C8();
    v237 = OUTLINED_FUNCTION_34_1(v236);
    OUTLINED_FUNCTION_29_19(v237);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40();
    v216();
    sub_1DD63F1A8();
    v238 = OUTLINED_FUNCTION_2_76();
    v220(v238);
    if ((v129 & 0x8000000000000000) != 0)
    {
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_33_12();
    if (v221)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v239, sel_setObject_forKeyedSubscript_);

    v240 = v373;
    v241 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v241);
    v242 = sub_1DD6402C8();
    v243 = OUTLINED_FUNCTION_34_1(v242);
    OUTLINED_FUNCTION_29_19(v243);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40();
    v216();
    sub_1DD63F1A8();
    v244 = OUTLINED_FUNCTION_2_76();
    v220(v244);
    if ((v129 & 0x8000000000000000) != 0)
    {
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_33_12();
    if (v221)
    {
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v245, sel_setObject_forKeyedSubscript_);

    v246 = v373;
    v247 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v247);
    v248 = sub_1DD6402C8();
    v249 = OUTLINED_FUNCTION_34_1(v248);
    OUTLINED_FUNCTION_29_19(v249);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40();
    v216();
    sub_1DD63F1A8();
    v250 = OUTLINED_FUNCTION_2_76();
    v220(v250);
    if ((v129 & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_33_12();
    if (v221)
    {
      goto LABEL_113;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v251, sel_setObject_forKeyedSubscript_);

    v252 = v373;
    v253 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v253);
    v254 = sub_1DD6402C8();
    v255 = OUTLINED_FUNCTION_34_1(v254);
    OUTLINED_FUNCTION_29_19(v255);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40();
    v216();
    sub_1DD63F1A8();
    v256 = OUTLINED_FUNCTION_2_76();
    v220(v256);
    if ((v129 & 0x8000000000000000) != 0)
    {
      goto LABEL_114;
    }

    OUTLINED_FUNCTION_33_12();
    if (v221)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_25_16(v257, sel_setObject_forKeyedSubscript_);

    v258 = v373;
    v259 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v259);
    v260 = sub_1DD6402C8();
    v261 = OUTLINED_FUNCTION_34_1(v260);
    OUTLINED_FUNCTION_29_19(v261);
    sub_1DD63F0E8();
    OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_10_40();
    v216();
    v262 = v129;
    sub_1DD63F1A8();
    v263 = OUTLINED_FUNCTION_2_76();
    v220(v263);
    if ((v129 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_33_12();
    if (v221)
    {
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_21_26();
    sub_1DD640DE8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    v59 = v369;
    [v369 setObject:v262 forKeyedSubscript:v258];

    v264 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v264);
    v265 = sub_1DD6402C8();
    v266 = OUTLINED_FUNCTION_34_1(v265);
    OUTLINED_FUNCTION_29_19(v266);
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v267 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v267);
    v268 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v268);
    v269 = v364;
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v270 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v270);
    v271 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v271);
    v272 = v365;
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v273 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v273);
    v274 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v274);
    v275 = v362;
    v276 = v362;
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v277 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v277);
    v278 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v278);
    v279 = v361;
    v280 = v361;
    sub_1DD63F128();
    sub_1DD6402C8();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v281 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v281);
    v282 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v282);
    OUTLINED_FUNCTION_41_12();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v283 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v283);
    v284 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v284);
    OUTLINED_FUNCTION_41_12();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v285 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v285);
    v286 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v286);
    sub_1DD52B124(fabs(round(v127)));
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v287 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v287);
    v288 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v288);
    sub_1DD640198();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v289 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v289);
    v290 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v290);
    sub_1DD640198();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v291 = OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_1_88(v291);
    v292 = sub_1DD6402C8();
    *(v130 + 40) = OUTLINED_FUNCTION_34_1(v292);
    sub_1DD640198();
    OUTLINED_FUNCTION_14_35();
    OUTLINED_FUNCTION_15_36();

    OUTLINED_FUNCTION_7_47();

    v48 = v321;
    v293 = *v321;
    v294 = v366;
    (*v321)(v275, v366);
    v293(v279, v294);
    v293(v374, v294);
    v293(v365, v294);
    v293(v364, v294);
    v367 += 24;
    ++v53;
    OUTLINED_FUNCTION_56_8();
    v77 = v353;
    OUTLINED_FUNCTION_23_27();
    v78 = v352;
    OUTLINED_FUNCTION_61_7();
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
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
  OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
LABEL_3:
  v55 = sub_1DD63F9F8();
  __swift_project_value_buffer(v55, qword_1EE16EFB8);
  v56 = sub_1DD63F9D8();
  v57 = sub_1DD640368();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v58);
    _os_log_impl(&dword_1DD38D000, v56, v57, "ModelBasedAppResolverRule#generateModelInput Unable to initialize MLMultiArray", v53, 2u);
    OUTLINED_FUNCTION_23_0();
  }

  return 0;
}

void sub_1DD52ADDC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE162D98 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16EFB8);
  v5 = a1;
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640368();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1DD38D000, v6, v7, "ModelBasedAppResolverRule#features array: %@", v8, 0xCu);
    sub_1DD390754(v9, &qword_1ECCDBF90, &qword_1DD6445B0);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    sub_1DD63F148();
    v15 = sub_1DD63FC68();
    v17 = sub_1DD39565C(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1DD38D000, v11, v12, "ModelBasedAppResolverRule#history bundle contact stats: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12B3DA0](v14, -1, -1);
    MEMORY[0x1E12B3DA0](v13, -1, -1);
  }

  oslog = sub_1DD63F9D8();
  v18 = sub_1DD640368();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    sub_1DD63F148();
    v21 = sub_1DD63FC68();
    v23 = sub_1DD39565C(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DD38D000, oslog, v18, "ModelBasedAppResolverRule#history bundle stats: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12B3DA0](v20, -1, -1);
    MEMORY[0x1E12B3DA0](v19, -1, -1);
  }
}

id sub_1DD52B124(double a1)
{
  if (a1 == 0.0)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v2 = 0.0001;
LABEL_3:

    return [v1 initWithDouble_];
  }

  if (a1 >= 0.0 && a1 <= 2592000.0)
  {
    v5 = log(fabs(a1));
    v1 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v2 = v5;
    goto LABEL_3;
  }

  if (qword_1ECCDB0A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECD0DDA0;

  return v4;
}

void sub_1DD52B204()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD63F148();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v81 = v8 - v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v78 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_3();
  v83 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE580, &qword_1DD657E38);
  v16 = OUTLINED_FUNCTION_3(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v94 = (v17 - v18);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_3();
  v93 = v20;
  v82 = sub_1DD63FC88();
  v21 = v3 + 64;
  OUTLINED_FUNCTION_43_14();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v84 = v6;
  v85 = (v6 + 16);
  v95 = (v6 + 32);
  if (v1)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  v28 = 0xE500000000000000;
  if (v1)
  {
    v28 = 0xE400000000000000;
  }

  v90 = v28;
  v91 = v27;
  v88 = (v6 + 8);
  v78[1] = v6 + 40;
  v86 = v3;

  v29 = 0;
  v87 = v3 + 64;
  v92 = v12;
  v89 = v26;
  while (v24)
  {
    v30 = v29;
LABEL_13:
    v31 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v32 = v31 | (v30 << 6);
    v33 = (*(v86 + 48) + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    v37 = v83;
    v36 = v84;
    (*(v84 + 16))(v83, *(v86 + 56) + *(v84 + 72) * v32, v4);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
    v39 = *(v38 + 48);
    v40 = v94;
    *v94 = v35;
    *(v40 + 1) = v34;
    (*(v36 + 32))(&v40[v39], v37, v4);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v38);

LABEL_14:
    v44 = v93;
    sub_1DD52DB00();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
    OUTLINED_FUNCTION_1_87(v44);
    if (v46)
    {

      OUTLINED_FUNCTION_17();
      return;
    }

    v47 = *v44;
    v48 = *(v44 + 1);
    v49 = v92;
    v50 = *v95;
    (*v95)(v92, &v44[*(v45 + 48)], v4);
    v51 = sub_1DD52C574();
    v53 = v52;
    v98 = v47;
    v99 = v48;
    v96 = v91;
    v97 = v90;
    sub_1DD3B7F10();
    LOBYTE(v47) = sub_1DD6406D8();

    if (v47)
    {
      v58 = v50;
      v59 = *v85;
      v79 = v4;
      v59(v81, v49, v4);
      v60 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v60;
      sub_1DD3978DC();
      OUTLINED_FUNCTION_7_5();
      v26 = v89;
      if (__OFADD__(v63, v64))
      {
        goto LABEL_28;
      }

      v65 = v61;
      v66 = v51;
      v67 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE590, &qword_1DD657E48);
      if (sub_1DD640A08())
      {
        v68 = sub_1DD3978DC();
        if ((v67 & 1) != (v69 & 1))
        {
          goto LABEL_30;
        }

        v65 = v68;
      }

      if (v67)
      {

        v82 = v98;
        v70 = v84;
        v4 = v79;
        (*(v84 + 40))(v98[7] + *(v84 + 72) * v65, v81, v79);
        (*(v70 + 8))(v92, v4);
        v21 = v87;
      }

      else
      {
        v71 = v65;
        v72 = v98;
        v98[(v71 >> 6) + 8] |= 1 << v71;
        v73 = (v72[6] + 16 * v71);
        *v73 = v66;
        v73[1] = v53;
        v74 = v84;
        v4 = v79;
        v58(v72[7] + *(v84 + 72) * v71, v81, v79);
        (*(v74 + 8))(v92, v4);
        v75 = v72[2];
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_29;
        }

        v82 = v72;
        v72[2] = v77;
        v21 = v87;
      }
    }

    else
    {
      (*v88)(v49, v4);

      v21 = v87;
      v26 = v89;
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
      v24 = 0;
      goto LABEL_14;
    }

    v24 = *(v21 + 8 * v30);
    ++v29;
    if (v24)
    {
      v29 = v30;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_1DD640D58();
  __break(1u);
}

void sub_1DD52B7F8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = sub_1DD63F148();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v33 = v16;
  v17 = *(v3 + 16);
  v29 = v3;
  if (v17)
  {
    v30 = v14 + 16;
    v32 = (v14 + 32);
    v18 = v3 + 40;
    v19 = MEMORY[0x1E69E7CC0];
    v31 = v8;
    do
    {
      if (*(v1 + 16))
      {
        v20 = v11;

        v21 = sub_1DD3978DC();
        v23 = v22;

        if (v23)
        {
          v11 = v20;
          (*(v14 + 16))(v20, *(v1 + 56) + *(v14 + 72) * v21, v12);
          v24 = 0;
        }

        else
        {
          v24 = 1;
          v11 = v20;
        }

        v8 = v31;
      }

      else
      {
        v24 = 1;
      }

      __swift_storeEnumTagSinglePayload(v11, v24, 1, v12);
      sub_1DD52DB00();
      if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
      {
        sub_1DD63F138();
        sub_1DD390754(v8, &qword_1ECCDCB80, &qword_1DD64A0E0);
      }

      else
      {
        (*v32)(v33, v8, v12);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BE850();
        v19 = v26;
      }

      v25 = *(v19 + 16);
      if (v25 >= *(v19 + 24) >> 1)
      {
        sub_1DD3BE850();
        v19 = v27;
      }

      *(v19 + 16) = v25 + 1;
      (*(v14 + 32))(v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, v33, v12);
      v18 += 16;
      --v17;
    }

    while (v17);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1DD52C5F8(v29, v19);
  OUTLINED_FUNCTION_57_11();

  OUTLINED_FUNCTION_17();
}

void sub_1DD52BB0C()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = sub_1DD63F148();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v79 = v6 - v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_0();
  v73 = v10;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_0();
  v84 = v12;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_3();
  v74 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE580, &qword_1DD657E38);
  v16 = OUTLINED_FUNCTION_3(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_3();
  v77 = v21;
  v22 = sub_1DD63FC88();
  v78 = v1 + 64;
  OUTLINED_FUNCTION_43_14();
  v25 = v24 & v23;
  v83 = (v4 + 32);
  v72 = (v26 + 63) >> 6;
  v81 = v4;
  v75 = v1;
  v76 = (v4 + 8);

  v27 = 0;
  v80 = v19;
  v82 = (v4 + 16);
  while (v25)
  {
    v28 = v27;
LABEL_8:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v29 | (v28 << 6);
    v31 = (*(v75 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    (*(v81 + 16))(v74, *(v75 + 56) + *(v81 + 72) * v30, v2);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
    v35 = *(v34 + 48);
    *v80 = v33;
    *(v80 + 1) = v32;
    v36 = v2;
    (*(v81 + 32))(&v80[v35], v74, v2);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);

LABEL_9:
    sub_1DD52DB00();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
    OUTLINED_FUNCTION_1_87(v77);
    if (v41)
    {

      OUTLINED_FUNCTION_17();
      return;
    }

    v42 = *(v40 + 48);
    v43 = *v83;
    (*v83)(v84, v77 + v42, v36);
    sub_1DD52C574();

    if (*(v22 + 16))
    {
      v44 = OUTLINED_FUNCTION_52_8();
      v45 = *v82;
      if ((v46 & 1) == 0)
      {
        goto LABEL_17;
      }

      v45(v73, *(v22 + 56) + *(v81 + 72) * v44, v36);
      sub_1DD52C16C();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_52_8();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v48, v49))
      {
        goto LABEL_34;
      }

      v2 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE590, &qword_1DD657E48);
      if (OUTLINED_FUNCTION_63_2())
      {
        OUTLINED_FUNCTION_52_8();
        if ((v2 & 1) != (v50 & 1))
        {
          goto LABEL_36;
        }
      }

      if (v2)
      {
        OUTLINED_FUNCTION_54_9();
        v68();
      }

      else
      {
        OUTLINED_FUNCTION_22_26();
        OUTLINED_FUNCTION_54_9();
        v43();
        v69 = *(v22 + 16);
        v62 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v62)
        {
          goto LABEL_35;
        }

        *(v22 + 16) = v70;
      }

      v71 = *v76;
      (*v76)(v73, v2);
      v71(v84, v2);
    }

    else
    {
      v45 = *v82;
LABEL_17:
      v45(v79, v84, v36);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_52_8();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v52, v53))
      {
        goto LABEL_32;
      }

      v2 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE590, &qword_1DD657E48);
      if (OUTLINED_FUNCTION_63_2())
      {
        OUTLINED_FUNCTION_52_8();
        if ((v2 & 1) != (v54 & 1))
        {
          goto LABEL_36;
        }
      }

      if (v2)
      {

        OUTLINED_FUNCTION_54_9();
        v55();
        v56 = OUTLINED_FUNCTION_53_8();
        v57(v56);
      }

      else
      {
        OUTLINED_FUNCTION_22_26();
        OUTLINED_FUNCTION_54_9();
        v58();
        v59 = OUTLINED_FUNCTION_53_8();
        v60(v59);
        v61 = *(v22 + 16);
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_33;
        }

        *(v22 + 16) = v63;
      }
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v72)
    {
      v36 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
      v25 = 0;
      goto LABEL_9;
    }

    v25 = *(v78 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_1DD640D58();
  __break(1u);
}

void sub_1DD52C16C()
{
  OUTLINED_FUNCTION_18_4();
  v30[1] = v0;
  v1 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v14 = sub_1DD63F198();
  v15 = sub_1DD52C408(0, v14);
  v16 = sub_1DD63F0E8();
  v17 = *(v16 + 16);
  if (v17)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v18 = 0;
      v19 = *(v15 + 16);
      while (v18 < v19)
      {
        *(v15 + 2 * v18 + 32) = *(v16 + 32 + 2 * v18);
        if (v17 == ++v18)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_1DD5869A0();
      v15 = v28;
    }
  }

LABEL_6:

  v16 = sub_1DD63F0E8();
  v17 = *(v16 + 16);
  v30[0] = v13;
  if (v17)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD5869A0();
      v15 = v29;
    }

    v20 = 0;
    v21 = v16 + 32;
    v22 = *(v15 + 16);
    while (v20 < v22)
    {
      v23 = v15 + 2 * v20;
      v24 = *(v23 + 32) + *(v21 + 2 * v20);
      if ((*(v23 + 32) + *(v21 + 2 * v20)) != v24)
      {
        goto LABEL_16;
      }

      ++v20;
      *(v23 + 32) = v24;
      if (v17 == v20)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_13:
  v25 = v3;

  sub_1DD63F108();
  sub_1DD63F108();
  sub_1DD63CFB8();
  v26 = *(v3 + 8);
  v26(v7, v1);
  v26(v10, v1);
  v27 = v30[0];
  sub_1DD63F108();
  (*(v25 + 16))(v10, v27, v1);
  sub_1DD63F118();
  v26(v27, v1);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD52C408(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1DD640158();
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = (result + 46);
    *(result + 16) = a2;
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DD642F70)));
      if (vuzp1_s8(vuzp1_s16(v8, *v5.i8), *v5.i8).u8[0])
      {
        *(v6 - 7) = v3;
      }

      if (vuzp1_s8(vuzp1_s16(v8, *&v5), *&v5).i8[1])
      {
        *(v6 - 6) = v3;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DD657DB0)))), *&v5).i8[2])
      {
        *(v6 - 5) = v3;
        *(v6 - 4) = v3;
      }

      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DD657DA0)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i32[1])
      {
        *(v6 - 3) = v3;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i8[5])
      {
        *(v6 - 2) = v3;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DD657D90))))).i8[6])
      {
        *(v6 - 1) = v3;
        *v6 = v3;
      }

      v4 += 8;
      v6 += 8;
    }

    while (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD52C574()
{
  OUTLINED_FUNCTION_18_7();
  sub_1DD52809C(124, 0xE100000000000000, v1, v0);
  if (v2)
  {
  }

  else
  {
    v3 = sub_1DD640058();
    v1 = MEMORY[0x1E12B2190](v3);
  }

  return v1;
}

void *sub_1DD52C5F8(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  v4 = sub_1DD63FC88();
  sub_1DD63F348();
  v5 = sub_1DD63F0F8();
  v6 = v5;
  v35 = *(v5 + 16);
  if (v35)
  {
    v7 = 0;
    v33 = v5 + 32;
    v34 = *(a1 + 16);
    v8 = (a1 + 40);
    v32 = v5;
    while (v7 < *(v6 + 16))
    {
      if (v34 == v7)
      {
        goto LABEL_20;
      }

      v9 = *(v33 + 8 * v7);
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      OUTLINED_FUNCTION_57_11();

      v13 = [isUniquelyReferenced_nonNull_native initWithDouble_];
      if (v13)
      {
        v14 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DD3978DC();
        OUTLINED_FUNCTION_7_5();
        if (__OFADD__(v17, v18))
        {
          goto LABEL_21;
        }

        v19 = v15;
        v20 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE578, &qword_1DD657E30);
        if (OUTLINED_FUNCTION_62_6())
        {
          v21 = sub_1DD3978DC();
          if ((v20 & 1) != (v22 & 1))
          {
            goto LABEL_23;
          }

          v19 = v21;
        }

        if (v20)
        {

          v23 = v4[7];
          v24 = *(v23 + 8 * v19);
          *(v23 + 8 * v19) = v14;
        }

        else
        {
          v4[(v19 >> 6) + 8] |= 1 << v19;
          v27 = (v4[6] + 16 * v19);
          *v27 = v11;
          v27[1] = v10;
          *(v4[7] + 8 * v19) = v14;
          v28 = v4[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_22;
          }

          v4[2] = v30;
        }

        v6 = v32;
      }

      else
      {
        v25 = sub_1DD3978DC();
        isUniquelyReferenced_nonNull_native = v26;

        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE578, &qword_1DD657E30);
          OUTLINED_FUNCTION_62_6();

          sub_1DD640A28();
        }
      }

      ++v7;
      v8 += 2;
      if (v35 == v7)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1DD640D58();
    __break(1u);
  }

  else
  {
LABEL_18:

    return v4;
  }

  return result;
}

void sub_1DD52C8C0()
{
  OUTLINED_FUNCTION_18_4();
  v44 = v2;
  v45 = v1;
  sub_1DD63FC18();
  OUTLINED_FUNCTION_0();
  v40 = v4;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_3();
  v38 = v9;
  v10 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v0;
  v14 = v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_signalGatheringSignpostName;
  v15 = *(v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_signalGatheringSignpostName);
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v18 = qword_1EE16F0C0;
  v19 = &v13[*(v10 + 20)];
  *v19 = v15;
  *(v19 + 1) = v16;
  v19[16] = v17;
  v20 = v18;
  sub_1DD63F9B8();
  *&v13[*(v10 + 24)] = v20;
  v20;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD643F90;
  v22 = v16;
  v23 = sub_1DD6408F8();
  v25 = v24;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1DD392BD8();
  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  OUTLINED_FUNCTION_3_61();
  v43 = v15;
  v37 = v22;
  v42 = v17;
  sub_1DD63F998();

  v26 = dispatch_semaphore_create(0);
  v27 = swift_allocObject();
  sub_1DD63D4F8();
  *(v27 + 16) = sub_1DD63FC88();

  v28 = v26;
  sub_1DD52D558(v45, v39, v27, v28);
  sub_1DD63FBE8();
  v29 = v38;
  sub_1DD63FC38();
  v30 = *(v40 + 8);
  v31 = v7;
  v32 = v41;
  v30(v31, v41);
  sub_1DD6404E8();
  v30(v29, v32);
  if (sub_1DD63FB68())
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v33 = sub_1DD63F9F8();
    __swift_project_value_buffer(v33, qword_1EE16EFB8);
    v34 = sub_1DD63F9D8();
    v35 = sub_1DD640368();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_9();
      *v36 = 0;
      _os_log_impl(&dword_1DD38D000, v34, v35, "ModelBasedAppResolverRule#gatherSignals timeout on gathering signal values", v36, 2u);
      MEMORY[0x1E12B3DA0](v36, -1, -1);
    }
  }

  sub_1DD6404C8();
  sub_1DD63F9A8();
  swift_beginAccess();

  sub_1DD63D878();

  sub_1DD41BFFC(v13);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD52CCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v3 = sub_1DD63FB78();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1DD63FBD8();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DD63FB88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DD63D558();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF28, &qword_1DD655820);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  sub_1DD52DAA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1EE162D98 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16EFB8);
    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640368();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DD38D000, v20, v21, "ModelBasedAppResolverRule#gatherSignals gathering failed", v22, 2u);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }

    return sub_1DD390754(v18, &qword_1ECCDDF28, &qword_1DD655820);
  }

  else
  {
    v24 = *(v47 + 32);
    v25 = v18;
    v26 = v48;
    v24(v15, v25, v48);
    sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
    (*(v7 + 104))(v9, *MEMORY[0x1E69E7F80], v6);
    v46 = sub_1DD6404B8();
    (*(v7 + 8))(v9, v6);
    v27 = v47;
    (*(v47 + 16))(v12, v15, v26);
    v28 = v27;
    v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v30 = swift_allocObject();
    v24((v30 + v29), v12, v26);
    aBlock[4] = sub_1DD52D9CC;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD3CBCD0;
    aBlock[3] = &block_descriptor_11;
    v31 = _Block_copy(aBlock);
    v32 = v38;
    sub_1DD63FBA8();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1DD52DA40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
    sub_1DD44FA38();
    v33 = v40;
    v34 = v43;
    sub_1DD640718();
    v35 = v46;
    MEMORY[0x1E12B27A0](0, v32, v33, v31);
    _Block_release(v31);

    (*(v42 + 8))(v33, v34);
    (*(v39 + 8))(v32, v41);

    v36 = sub_1DD63D548();
    v37 = v44;
    swift_beginAccess();
    *(v37 + 16) = v36;

    sub_1DD640508();
    return (*(v28 + 8))(v15, v48);
  }
}

void sub_1DD52D2F4(uint64_t a1)
{
  v2 = sub_1DD63D558();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE162D98 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16EFB8);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_1DD63D548();
    sub_1DD63D4F8();
    v11 = sub_1DD63FC98();
    v13 = v12;

    (*(v3 + 8))(v5, v2);
    v14 = sub_1DD39565C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DD38D000, v7, v8, "ModelBasedAppResolverRule#gatherSignals gathered values: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12B3DA0](v10, -1, -1);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1DD52D558(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1DD63D988();
  v9 = sub_1DD63D9A8();
  sub_1DD607140(v9);
  (*(a2 + 16))(v8, a1);

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  v11 = a4;
  sub_1DD63D568();
}

uint64_t sub_1DD52D648(uint64_t a1, uint64_t a2)
{
  sub_1DD63D588();
  swift_allocObject();

  return sub_1DD63D578();
}

uint64_t sub_1DD52D6C8()
{

  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference25ModelBasedAppResolverRule_appMatcher, &qword_1ECCDBBC8, &qword_1DD643FC0);

  return v0;
}

uint64_t sub_1DD52D738()
{
  sub_1DD52D6C8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelBasedAppResolverRule(uint64_t a1)
{
  result = qword_1ECCDE560;
  if (!qword_1ECCDE560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD52D7E4(uint64_t a1)
{
  sub_1DD52D8A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DD52D8A0(uint64_t a1)
{
  if (!qword_1ECCDE570)
  {
    sub_1DD63EFC8();
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCDE570);
    }
  }
}

uint64_t sub_1DD52D8F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD3B5438;

  return sub_1DD5285A0(a1, a2);
}

void sub_1DD52D9CC()
{
  v1 = sub_1DD63D558();
  OUTLINED_FUNCTION_3(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1DD52D2F4(v3);
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1DD52DA40()
{
  result = qword_1EE163978;
  if (!qword_1EE163978)
  {
    sub_1DD63FB78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163978);
  }

  return result;
}

uint64_t sub_1DD52DAA4()
{
  OUTLINED_FUNCTION_18_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_7();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1DD52DB00()
{
  OUTLINED_FUNCTION_18_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_7();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_12_32()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_13_38(__n128 *a1)
{
  result = *(v1 - 208);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_35()
{

  return sub_1DD6400F8();
}

void OUTLINED_FUNCTION_22_26()
{
  *(v1 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v4 = (*(v1 + 48) + 16 * v0);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t OUTLINED_FUNCTION_38_13()
{

  return sub_1DD6400F8();
}

uint64_t OUTLINED_FUNCTION_40_10(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1DD640598();
}

uint64_t OUTLINED_FUNCTION_41_12()
{

  return sub_1DD640598();
}

uint64_t OUTLINED_FUNCTION_47_9()
{

  return sub_1DD6400F8();
}

uint64_t OUTLINED_FUNCTION_51_8(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_1DD6402C8();
}

unint64_t OUTLINED_FUNCTION_52_8()
{

  return sub_1DD3978DC();
}

uint64_t OUTLINED_FUNCTION_62_6()
{

  return sub_1DD640A08();
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return sub_1DD640A08();
}

uint64_t OUTLINED_FUNCTION_64_4()
{
}

uint64_t OUTLINED_FUNCTION_66_4(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_1DD6402C8();
}

uint64_t OUTLINED_FUNCTION_67_3()
{
}

uint64_t sub_1DD52DE0C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x4E574F4E4B4E55;
  }

  MEMORY[0x1E12B2260](v1, v2);

  return 0x2D6C65646F6DLL;
}

void *sub_1DD52DE94(char *a1)
{
  v44 = a1;
  v1 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v50 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v42 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  [v42 setComputeUnits_];
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v13 = qword_1EE16F0C0;
  v14 = v12 + *(v8 + 20);
  *v14 = "PER.Model.load";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v15 = v13;
  sub_1DD63F9B8();
  *(v12 + *(v8 + 24)) = v15;
  v16 = v15;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DD643F90;
  v18 = sub_1DD6408F8();
  v20 = v19;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1DD392BD8();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v40 = v16;
  sub_1DD63F998();

  v21 = *(v50 + 16);
  v22 = v44;
  v21(v7, v44, v1);
  sub_1DD39638C(0, &qword_1EE163888, 0x1E695FE90);
  v23 = v41;
  v21(v41, v7, v1);
  v24 = v42;
  v25 = v43;
  v26 = sub_1DD551650(v23, v24);
  if (v25)
  {
    v27 = *(v50 + 8);
    v27(v7, v1);

    v27(v22, v1);
    OUTLINED_FUNCTION_0_106();
    sub_1DD530774(v12, v28);
    type metadata accessor for ModelBasedLearning();
    v29 = v45;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v26;
    v50 = *(v50 + 8);
    (v50)(v7, v1);
    type metadata accessor for PervasiveEntityResolution();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    v29 = v45;
    v45[2] = v31;
    sub_1DD6404C8();
    sub_1DD63F9A8();
    v32 = [*(v29[2] + 16) modelDescription];
    v33 = [v32 metadata];

    type metadata accessor for MLModelMetadataKey(0);
    sub_1DD5307CC(&qword_1EE1638A0, 255, type metadata accessor for MLModelMetadataKey, &unk_1DD642D4C);
    v34 = sub_1DD63FC58();

    sub_1DD59B8A0(v34, &v48);

    (v50)(v22, v1);
    OUTLINED_FUNCTION_0_106();
    sub_1DD530774(v12, v35);
    if (v49)
    {
      v36 = swift_dynamicCast();
      v37 = v46;
      v38 = v47;
      if (!v36)
      {
        v37 = 0;
        v38 = 0;
      }
    }

    else
    {
      sub_1DD390754(&v48, &qword_1ECCDB980, &unk_1DD643DC0);
      v37 = 0;
      v38 = 0;
    }

    v29[3] = v37;
    v29[4] = v38;
  }

  return v29;
}

uint64_t sub_1DD52E3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v41 - v7);
  v9 = type metadata accessor for LearnedDisambiguation(0);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  if (a1)
  {
    v16 = sub_1DD52E898(a1, v3);
    v20 = v16;
    if (!v16)
    {
      goto LABEL_18;
    }

    v21 = sub_1DD52E860(v16);
    if ((v21 & 0x100000000) == 0)
    {
      v22 = v21;

      v42 = a1;
      v24 = *(a1 + 16);
      do
      {
        v25 = v24;
        if (!v24)
        {
          break;
        }

        --v24;
      }

      while (*(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * (v25 - 1) + *(v9 + 32)) != v22);
      MEMORY[0x1EEE9AC00](v23);
      *(&v41 - 2) = &v42;
      sub_1DD530624(sub_1DD530754, v26, v27, v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        sub_1DD4F298C(v8, v15);
        sub_1DD4F298C(v15, a2);
        __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
        v39 = type metadata accessor for LearningResult(0);
        OUTLINED_FUNCTION_4_59(v39);
        *(a2 + v40) = 2;
      }

      sub_1DD390754(v8, &qword_1ECCDD880, &qword_1DD652070);
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
      }

      v28 = sub_1DD63F9F8();
      __swift_project_value_buffer(v28, qword_1ECD0DDF0);
      v29 = sub_1DD63F9D8();
      v30 = sub_1DD640378();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DD38D000, v29, v30, "The predicted selection was not found in history.", v31, 2u);
        MEMORY[0x1E12B3DA0](v31, -1, -1);
      }

      goto LABEL_18;
    }

    v34 = *(v20 + 2);

    if (v34 < 2)
    {
LABEL_18:
      OUTLINED_FUNCTION_5_63();
      v32 = type metadata accessor for LearningResult(0);
      OUTLINED_FUNCTION_4_59(v32);
      *(a2 + v33) = 0;
    }

    OUTLINED_FUNCTION_5_63();
    v36 = *(v3 + 24);
    v35 = *(v3 + 32);
    v37 = type metadata accessor for LearningResult(0);
    v38 = (a2 + *(v37 + 20));
    *v38 = v36;
    v38[1] = v35;
    *(a2 + *(v37 + 24)) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_63();
    v17 = type metadata accessor for LearningResult(0);
    OUTLINED_FUNCTION_4_59(v17);
    *(a2 + v18) = 0;
  }
}

unint64_t sub_1DD52E860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 != 1) << 32);
}

uint64_t (*sub_1DD52E898(uint64_t a1, uint64_t a2))(void)
{
  v4 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v89 - v8;
  v10 = sub_1DD63D078();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v89 - v15;
  if (!a1 || !*(a1 + 16))
  {
    if (qword_1ECCDB0E0 != -1)
    {
      goto LABEL_53;
    }

    goto LABEL_9;
  }

  v98 = v4;
  sub_1DD558FFC(a1, v16);
  v17 = type metadata accessor for LearnedDisambiguation(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1DD390754(v16, &qword_1ECCDD880, &qword_1DD652070);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1ECD0DDF0);
    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640368();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "No first historical record.";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v96 = a2;
  v26 = *&v16[*(v17 + 28)];

  sub_1DD530774(v16, type metadata accessor for LearnedDisambiguation);
  v27 = sub_1DD63D068();
  sub_1DD480258(v27);
  v29 = v28;
  (*(v11 + 8))(v13, v10);
  sub_1DD52FB98(v29, v104);
  if (v106)
  {

    return 0;
  }

  v97 = v26;
  v94 = v6;
  v107[0] = v104[0];
  v107[1] = v104[1];
  v108 = v105;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v30 = qword_1EE16F0C0;
  v31 = v98;
  v32 = &v9[*(v98 + 20)];
  *v32 = "PER.Model.inputCreation";
  *(v32 + 1) = 23;
  v32[16] = 2;
  v33 = v30;
  sub_1DD63F9B8();
  *&v9[*(v31 + 24)] = v33;
  v34 = v33;
  sub_1DD6404D8();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v35 = swift_allocObject();
  v92 = xmmword_1DD643F90;
  *(v35 + 16) = xmmword_1DD643F90;
  v36 = sub_1DD6408F8();
  v38 = v37;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  v90 = sub_1DD392BD8();
  *(v35 + 64) = v90;
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  v91 = v34;
  v95 = v9;
  sub_1DD63F998();

  v40 = sub_1DD4C23E4(v39, v29);
  v99 = v41;
  v43 = v42;

  v44 = sub_1DD4C2A64(v107, v40);
  v45 = *(v97 + 16);
  if (v45)
  {
    *&v101 = v44;
    v109 = MEMORY[0x1E69E7CC0];
    sub_1DD42BD48(0, v45, 0);
    v46 = v97;
    v47 = 0;
    v48 = v109;
    v49 = v97 + 32;
    v50 = v100;
    do
    {
      if (v47 >= *(v46 + 16))
      {
        goto LABEL_52;
      }

      v102 = *(v49 + 4 * v47);
      v51 = v40;
      v52 = v43;
      sub_1DD52F414(&v102, v40, v99, v43, v101, &v103);
      v53 = v103;
      v109 = v48;
      v55 = *(v48 + 16);
      v54 = *(v48 + 24);
      v56 = v48;
      if (v55 >= v54 >> 1)
      {
        v100 = v50;
        sub_1DD42BD48(v54 > 1, v55 + 1, 1);
        v46 = v97;
        v50 = v100;
        v56 = v109;
      }

      ++v47;
      *(v56 + 16) = v55 + 1;
      *(v56 + 8 * v55 + 32) = v53;
      v48 = v56;
      v40 = v51;
      v43 = v52;
    }

    while (v45 != v47);
    v100 = v50;
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v48 + 16))
  {

    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v63 = sub_1DD63F9F8();
    __swift_project_value_buffer(v63, qword_1ECD0DDF0);
    v64 = sub_1DD63F9D8();
    v65 = sub_1DD640378();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v95;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1DD38D000, v64, v65, "Cannot create input from empty data.", v68, 2u);
      MEMORY[0x1E12B3DA0](v68, -1, -1);
    }

    sub_1DD530774(v67, type metadata accessor for Signpost);
    return 0;
  }

  v57 = v48 + 32;
  v58 = sub_1DD3CC020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v59 = v48;
  v24 = swift_allocObject();
  v101 = xmmword_1DD64D850;
  *(v24 + 16) = xmmword_1DD64D850;
  *(v24 + 32) = sub_1DD6402C8();
  v60 = *(v57 - 16);
  *(v24 + 40) = sub_1DD6402C8();
  v61 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v62 = v100;
  result = sub_1DD521130(v24, 65600);
  if (v62)
  {
    sub_1DD530774(v95, type metadata accessor for Signpost);

    return v24;
  }

  v89[1] = v59;
  if (v58 < 0)
  {
    __break(1u);
    return result;
  }

  v69 = result;
  v100 = 0;
  if (!v58)
  {
LABEL_47:

    type metadata accessor for PervasiveEntityResolutionInput();
    v76 = swift_allocObject();
    *(v76 + 16) = v69;
    *&v101 = v69;
    sub_1DD6404C8();
    v77 = v91;
    v78 = v95;
    sub_1DD63F9A8();
    v79 = v98;
    v80 = v94;
    v81 = &v94[*(v98 + 20)];
    *v81 = "PER.Model.prediction";
    *(v81 + 1) = 20;
    v81[16] = 2;
    v82 = v77;
    sub_1DD63F9B8();
    *(v80 + *(v79 + 24)) = v82;
    v83 = v82;
    sub_1DD6404D8();
    v84 = swift_allocObject();
    *(v84 + 16) = v92;
    v85 = sub_1DD6408F8();
    v86 = v90;
    *(v84 + 56) = MEMORY[0x1E69E6158];
    *(v84 + 64) = v86;
    *(v84 + 32) = v85;
    *(v84 + 40) = v87;
    sub_1DD63F998();

    v88 = v100;
    sub_1DD63B874(v76);
    if (v88)
    {

      v24 = type metadata accessor for Signpost;
    }

    else
    {
      sub_1DD6404C8();
      sub_1DD63F9A8();
      v24 = sub_1DD52F8BC(v97);
    }

    sub_1DD530774(v80, type metadata accessor for Signpost);
    sub_1DD530774(v78, type metadata accessor for Signpost);
    return v24;
  }

  v70 = 0;
  v99 = v58;
  while (!v60)
  {
LABEL_46:
    if (++v70 == v99)
    {
      goto LABEL_47;
    }
  }

  v71 = 0;
  while (1)
  {
    v72 = swift_allocObject();
    *(v72 + 16) = v101;
    *(v72 + 32) = sub_1DD6402C8();
    *(v72 + 40) = sub_1DD6402C8();
    v73 = *(v57 + 8 * v71);
    if ((v73 & 0xC000000000000001) != 0)
    {

      v74 = MEMORY[0x1E12B2C10](v70, v73);

      goto LABEL_43;
    }

    if (v70 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v74 = *(v73 + 8 * v70 + 32);
LABEL_43:
    ++v71;
    sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
    v75 = sub_1DD6400F8();

    [v69 setObject:v74 forKeyedSubscript:v75];

    if (v60 == v71)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  swift_once();
LABEL_9:
  v23 = sub_1DD63F9F8();
  __swift_project_value_buffer(v23, qword_1ECD0DDF0);
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640368();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "No historical records to predict from.";
LABEL_11:
    _os_log_impl(&dword_1DD38D000, v19, v20, v22, v21, 2u);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
  }

LABEL_12:

  return 0;
}

uint64_t sub_1DD52F414@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v64 = a6;
  v66 = a5;
  v10 = sub_1DD63D818();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  v24 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DD657E50;
  *(v25 + 32) = sub_1DD640EB8();
  v26 = v25;
  sub_1DD4C2830(v24, a2);
  *(v25 + 40) = sub_1DD640248();
  sub_1DD4C2940(v24, a2, a3, a4);
  *(v25 + 48) = sub_1DD6402C8();
  sub_1DD4C2994(v24, a2, a3, a4);
  *(v25 + 56) = sub_1DD6402C8();
  v27 = v24;
  sub_1DD4C29E8(v24, a2);
  v26[8] = sub_1DD6402C8();
  v58 = *MEMORY[0x1E69D2BD0];
  v28 = v11;
  v29 = v11 + 104;
  v30 = *(v11 + 104);
  v30(v23);
  v31 = v29;
  v32 = v30;
  v56 = v27;
  v33 = v66;
  sub_1DD4C3A74(v27, v23, v66);
  v34 = *(v28 + 8);
  v34(v23, v10);
  v26[9] = sub_1DD640248();
  v57 = *MEMORY[0x1E69D2BE0];
  v35 = v59;
  v32(v59);
  v65 = v31;
  sub_1DD4C3A74(v27, v35, v33);
  v36 = v10;
  v34(v35, v10);
  v55 = v34;
  v26[10] = sub_1DD640248();
  LODWORD(v59) = *MEMORY[0x1E69D2BD8];
  v37 = v60;
  v32(v60);
  v38 = v56;
  sub_1DD4C3A74(v56, v37, v33);
  v34(v37, v36);
  v26[11] = sub_1DD640248();
  v39 = v26;
  v54 = v26;
  v40 = v61;
  (v32)(v61, v58, v36);
  v41 = v32;
  v42 = v38;
  v43 = v66;
  v44 = sub_1DD4C3A74(v38, v40, v66);
  v45 = v55;
  (v55)(v40, v36, v44);
  v39[12] = sub_1DD6402C8();
  v46 = v62;
  (v32)(v62, v57, v36);
  v47 = sub_1DD4C3A74(v42, v46, v43);
  v45(v46, v36, v47);
  v48 = sub_1DD6402C8();
  v49 = v54;
  v54[13] = v48;
  v50 = v63;
  (v41)(v63, v59, v36);
  v51 = sub_1DD4C3A74(v42, v50, v43);
  v45(v50, v36, v51);
  result = sub_1DD6402C8();
  v49[14] = result;
  *v64 = v49;
  return result;
}

uint64_t sub_1DD52F8BC(uint64_t a1)
{
  sub_1DD63B5FC();
  v3 = v2;
  v4 = [v2 count];

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  if (v4)
  {
    sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
    v5 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v6 = &selRef_setUnderlyingQueue_;
    while (1)
    {
      sub_1DD63B5FC();
      v8 = v7;
      v9 = [v7 v6[396]];

      if (qword_1ECCDB0A8 != -1)
      {
        swift_once();
      }

      v10 = sub_1DD6405B8();

      if (v10)
      {
        if (v5 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v11 = *(a1 + 32 + 4 * v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3C018C();
          v1 = v13;
        }

        v12 = *(v1 + 16);
        if (v12 >= *(v1 + 24) >> 1)
        {
          sub_1DD3C018C();
          v1 = v14;
        }

        *(v1 + 16) = v12 + 1;
        *(v1 + 4 * v12 + 32) = v11;
        v6 = &selRef_setUnderlyingQueue_;
      }

      if (v4 == ++v5)
      {
        goto LABEL_16;
      }
    }
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_16:

  v15 = qword_1ECCDB0E0;

  if (v15 != -1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v16 = sub_1DD63F9F8();
  __swift_project_value_buffer(v16, qword_1ECD0DDF0);

  v17 = sub_1DD63F9D8();
  v18 = sub_1DD640368();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    v20 = *(v1 + 16);

    *(v19 + 4) = v20;

    _os_log_impl(&dword_1DD38D000, v17, v18, "ML model predicted choice count=%ld", v19, 0xCu);
    MEMORY[0x1E12B3DA0](v19, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v1;
}

__n128 sub_1DD52FB98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v8 + 56) = 1;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v9 = qword_1EE16F0C0;
  v10 = v7 + *(v3 + 20);
  *v10 = "PER.Model.locationData";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v11 = v9;
  sub_1DD63F9B8();
  *(v7 + *(v3 + 24)) = v11;
  v12 = v11;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD643F90;
  v14 = sub_1DD6408F8();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DD392BD8();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  OUTLINED_FUNCTION_6_57();
  sub_1DD63F998();

  sub_1DD63D718();
  sub_1DD63D708();
  MEMORY[0x1E12AFB40]();
  sub_1DD63D6F8();

  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1DD63D7A8();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = a1;

  sub_1DD63D568();

  sub_1DD6404C8();
  OUTLINED_FUNCTION_6_57();
  sub_1DD63F9A8();

  OUTLINED_FUNCTION_0_106();
  sub_1DD530774(v7, v18);
  swift_beginAccess();
  v19 = *(v8 + 48);
  v20 = *(v8 + 56);
  v22 = *(v8 + 32);
  v24 = *(v8 + 16);

  result = v24;
  *a2 = v24;
  *(a2 + 16) = v22;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  return result;
}

void sub_1DD52FE78(uint64_t a1, uint64_t a2, char *a3)
{
  v36 = a3;
  v5 = sub_1DD63D7B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  *&v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_1DD63D558();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF28, &qword_1DD655820);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  sub_1DD530468(a1, &v35 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v17, v5);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1ECD0DDF0);
    v19 = *(v6 + 16);
    v20 = v37;
    v19(v37, v10, v5);
    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640378();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = v10;
      v24 = v20;
      v25 = v23;
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      sub_1DD5307CC(&qword_1ECCDDF30, 255, MEMORY[0x1E69D2BB8], MEMORY[0x1E69D2BC0]);
      swift_allocError();
      v19(v27, v24, v5);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = *(v6 + 8);
      v29(v24, v5);
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1DD38D000, v21, v22, "Problem gathering current location: %@", v25, 0xCu);
      sub_1DD390754(v26, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v26, -1, -1);
      MEMORY[0x1E12B3DA0](v25, -1, -1);

      v29(v36, v5);
    }

    else
    {

      v34 = *(v6 + 8);
      v34(v20, v5);
      v34(v10, v5);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v30 = sub_1DD63D548();
    sub_1DD4C3088(v30, v36, &v38);
    v31 = v38;
    v32 = v39;
    v37 = v40;
    v33 = v41;
    (*(v12 + 8))(v14, v11);
    swift_beginAccess();
    *(a2 + 16) = v31;
    *(a2 + 24) = v32;
    *(a2 + 32) = v37;
    *(a2 + 48) = v33;
    *(a2 + 56) = 0;
  }
}

uint64_t sub_1DD5302F8()
{

  return v0;
}

uint64_t sub_1DD530320()
{
  sub_1DD5302F8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD5303C0(uint64_t a1, uint64_t a2)
{
  result = sub_1DD5307CC(&qword_1ECCDE5A0, a2, type metadata accessor for ModelBasedLearning, &unk_1DD657E84);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DD530418()
{
  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  result = sub_1DD640598();
  qword_1ECCDE598 = result;
  return result;
}

uint64_t sub_1DD530468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF28, &qword_1DD655820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD5304D8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = *(type metadata accessor for LearnedDisambiguation(0) - 8);
      return sub_1DD4BC018(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a3);
    }
  }

  __break(1u);
  return result;
}

id sub_1DD5305B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, BOOL, uint64_t))
{
  v5 = a2 & 0xC000000000000001;
  a3(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v5)
  {
    return MEMORY[0x1E12B2C10](a1, a2);
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

void *sub_1DD530624@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = type metadata accessor for LearnedDisambiguation(0);
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = type metadata accessor for LearnedDisambiguation(0);
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    }
  }

  return result;
}

void *sub_1DD5306C4(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD530774(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD5307CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t DateTime.Date.MonthOfYear.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  if (result < 0xC)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD53084C()
{
  result = qword_1ECCDE5A8;
  if (!qword_1ECCDE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5A8);
  }

  return result;
}

uint64_t sub_1DD5308A8@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.MonthOfYear.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s11MonthOfYearOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD530A5C()
{
  result = qword_1ECCDE5B0;
  if (!qword_1ECCDE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5B0);
  }

  return result;
}

uint64_t sub_1DD530AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6435D0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_6_58(7, 0, 0, v1, 11, v2, v3, v4);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_0_18(0, v5, v6, v7, v8, v9, v10, v11);
  *(inited + 96) = xmmword_1DD6435F0;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_4_60();
  v12 = OUTLINED_FUNCTION_0_85();
  *(inited + 120) = OUTLINED_FUNCTION_6_58(v12, v13, v14, v15, 12, v16, v17, v18);
  *(inited + 128) = xmmword_1DD643600;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_15();
  v19 = OUTLINED_FUNCTION_0_85();
  *(inited + 152) = OUTLINED_FUNCTION_2_6(v19, v20, v21, v22, v23, v24, v25, v26);
  *(inited + 160) = xmmword_1DD643610;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_1_15();
  v27 = OUTLINED_FUNCTION_0_85();
  *(inited + 184) = OUTLINED_FUNCTION_2_6(v27, v28, v29, v30, v31, v32, v33, v34);
  *(inited + 192) = xmmword_1DD643620;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_1_12();
  *(inited + 216) = OUTLINED_FUNCTION_6_58(7, 0, 0, v35, 1, v36, v37, v38);
  *(inited + 224) = xmmword_1DD643630;
  *(inited + 240) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 248) = OUTLINED_FUNCTION_0_18(0, v39, v40, v41, v42, v43, v44, v45);
  *(inited + 256) = xmmword_1DD643640;
  *(inited + 272) = 0;
  OUTLINED_FUNCTION_1_15();
  v46 = OUTLINED_FUNCTION_0_85();
  *(inited + 280) = OUTLINED_FUNCTION_2_6(v46, v47, v48, v49, v50, v51, v52, v53);
  *(inited + 288) = xmmword_1DD643650;
  *(inited + 304) = 0;
  OUTLINED_FUNCTION_1_15();
  v54 = OUTLINED_FUNCTION_0_85();
  *(inited + 312) = OUTLINED_FUNCTION_6_58(v54, v55, v56, v57, 9, v58, v59, v60);
  *(inited + 320) = xmmword_1DD643660;
  *(inited + 336) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 344) = OUTLINED_FUNCTION_0_18(7, v61, v62, v63, v64, v65, v66, v67);
  *(inited + 352) = xmmword_1DD643670;
  *(inited + 368) = 0;
  OUTLINED_FUNCTION_4_60();
  v68 = OUTLINED_FUNCTION_0_85();
  *(inited + 376) = OUTLINED_FUNCTION_6_58(v68, v69, v70, v71, 12, v72, v73, v74);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD530CF4(uint64_t a1)
{
  v46 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v44 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v45 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = objc_opt_self();
  v17 = sub_1DD63D138();
  v18 = [v16 getAssetPathForLocale_];

  if (v18)
  {
    sub_1DD63CE48();

    sub_1DD63CE58();
    sub_1DD63DAB8();
    if (v1)
    {
      (*(v11 + 8))(v15, v45);
    }

    else
    {

      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
      }

      v31 = sub_1DD63F9F8();
      __swift_project_value_buffer(v31, qword_1EE16F068);
      v32 = v44;
      v33 = v46;
      (*(v44 + 16))(v9, a1, v46);
      v34 = sub_1DD63F9D8();
      v35 = sub_1DD640368();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v47 = v43;
        *v36 = 136315138;
        v42 = sub_1DD63D118();
        v38 = v37;
        (*(v32 + 8))(v9, v46);
        v39 = sub_1DD39565C(v42, v38, &v47);

        *(v36 + 4) = v39;
        _os_log_impl(&dword_1DD38D000, v34, v35, "registered Morphun assets. locale=%s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        (*(v32 + 8))(v9, v33);
      }

      return (*(v11 + 8))(v15, v45);
    }
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);
    v21 = v44;
    v22 = v46;
    (*(v44 + 16))(v6, a1, v46);
    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640378();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136446210;
      sub_1DD531664();
      v27 = sub_1DD640CB8();
      v29 = v28;
      (*(v21 + 8))(v6, v22);
      v30 = sub_1DD39565C(v27, v29, &v47);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1DD38D000, v23, v24, "morphun asset path is nil after downloading assets. locale=%{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      (*(v21 + 8))(v6, v22);
    }

    sub_1DD531768();
    swift_allocError();
    *v40 = 1;
    return swift_willThrow();
  }
}

uint64_t static MorphunAssetManager.prepare(locale:)(uint64_t a1)
{
  sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v45 = v3;
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = sub_1DD63FB58();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = (v12 - v11);
  v14 = sub_1DD63FC18();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  sub_1DD63FBE8();
  *v13 = 20;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E7F48], v7);
  sub_1DD63FBF8();
  (*(v9 + 8))(v13, v7);
  v23 = *(v16 + 8);
  v23(v19, v14);
  v24 = sub_1DD63FC08();
  v23(v22, v14);
  v25 = objc_opt_self();
  v26 = sub_1DD63D138();
  v27 = [v25 blockingOnDemandDownloadForLocale:v26 withTimeout:v24 withProgress:0];

  if (!v27)
  {
    return sub_1DD530CF4(a1);
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v28 = sub_1DD63F9F8();
  __swift_project_value_buffer(v28, qword_1EE16F068);
  v30 = v45;
  v29 = v46;
  (*(v45 + 16))(v6, a1, v46);
  v31 = v27;
  v32 = sub_1DD63F9D8();
  v33 = sub_1DD640378();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v34 = 136446466;
    sub_1DD531664();
    v35 = sub_1DD640CB8();
    v37 = v36;
    (*(v30 + 8))(v6, v29);
    v38 = sub_1DD39565C(v35, v37, &v48);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    v47 = v31;
    v39 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v40 = sub_1DD63FE38();
    v42 = sub_1DD39565C(v40, v41, &v48);

    *(v34 + 14) = v42;
    _os_log_impl(&dword_1DD38D000, v32, v33, "error when downloading morphun assets. locale=%{public}s: %{public}s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    (*(v30 + 8))(v6, v29);
  }

  byte_1ECCDE5B8 = 1;
  return swift_willThrow();
}

unint64_t sub_1DD531664()
{
  result = qword_1EE1637E8;
  if (!qword_1EE1637E8)
  {
    sub_1DD63D168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1637E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MorphunAssetManager(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD531768()
{
  result = qword_1ECCDE5C0;
  if (!qword_1ECCDE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MorphunAssetManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD53189C()
{
  result = qword_1ECCDE5C8;
  if (!qword_1ECCDE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5C8);
  }

  return result;
}

void sub_1DD531900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63FB88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD406E2C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F88], v4);
  v8 = sub_1DD6404B8();
  (*(v5 + 8))(v7, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  aBlock[4] = sub_1DD531C28;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD531BC8;
  aBlock[3] = &block_descriptor_12;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  _Block_release(v10);
}

uint64_t sub_1DD531AC0(unsigned int a1, void (*a2)(void *))
{
  v4 = sub_1DD63D4F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D2B58], v4, v6);
  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DD531BC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

SiriInference::NeighborhoodPlaceName __swiftcall NeighborhoodPlaceName.init(name:prefix:suffix:)(SiriInference::NeighborhoodPlaceName name, SiriInference::NeighborhoodPlaceName::Prefix_optional prefix, SiriInference::NeighborhoodPlaceName::Suffix_optional suffix)
{
  v4 = *prefix.value;
  v5 = *suffix.value;
  *v3 = name.name;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  name.prefix = prefix;
  return name;
}

SiriInference::NeighborhoodPlaceName::Prefix_optional __swiftcall NeighborhoodPlaceName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NeighborhoodPlaceName.Prefix.rawValue.getter()
{
  result = 28265;
  switch(*v0)
  {
    case 1:
      result = 0x7463697274736964;
      break;
    case 2:
      result = 1918985582;
      break;
    case 3:
      result = 0x726F62686769656ELL;
      break;
    default:
      return result;
  }

  return result;
}

SiriInference::NeighborhoodPlaceName::Suffix_optional __swiftcall NeighborhoodPlaceName.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NeighborhoodPlaceName.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static NeighborhoodPlaceName.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 == 4 || (sub_1DD3B2D94() & 1) == 0)
  {
    return 0;
  }

  result = v5 == 4 && v3 == 4;
  if (v3 != 4 && v5 != 4)
  {

    return sub_1DD3B2D94();
  }

  return result;
}

uint64_t sub_1DD532048(uint64_t a1)
{
  v2 = sub_1DD5324BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD532084(uint64_t a1)
{
  v2 = sub_1DD5324BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NeighborhoodPlaceName.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE5D0, &qword_1DD658170);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1DD5324BC();
  sub_1DD640EF8();
  v23 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v17;
    v22 = v18;
    v21 = 1;
    sub_1DD532510();
    sub_1DD640C08();
    v20 = v14;
    v19 = 2;
    sub_1DD532564();
    sub_1DD640C08();
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t NeighborhoodPlaceName.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE5F0, &qword_1DD658178);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5324BC();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15[2] = 0;
  v6 = sub_1DD640B28();
  v8 = v7;
  v15[0] = 1;
  sub_1DD5325B8();
  OUTLINED_FUNCTION_3_4(&type metadata for NeighborhoodPlaceName.Prefix, v15);
  v13 = v15[1];
  v14[0] = 2;
  sub_1DD53260C();
  OUTLINED_FUNCTION_3_4(&type metadata for NeighborhoodPlaceName.Suffix, v14);
  v10 = OUTLINED_FUNCTION_0_0();
  v11(v10);
  v12 = v14[1];
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 17) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5324BC()
{
  result = qword_1ECCDE5D8;
  if (!qword_1ECCDE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5D8);
  }

  return result;
}

unint64_t sub_1DD532510()
{
  result = qword_1ECCDE5E0;
  if (!qword_1ECCDE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5E0);
  }

  return result;
}

unint64_t sub_1DD532564()
{
  result = qword_1ECCDE5E8;
  if (!qword_1ECCDE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5E8);
  }

  return result;
}

unint64_t sub_1DD5325B8()
{
  result = qword_1ECCDE5F8;
  if (!qword_1ECCDE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE5F8);
  }

  return result;
}

unint64_t sub_1DD53260C()
{
  result = qword_1ECCDE600;
  if (!qword_1ECCDE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE600);
  }

  return result;
}

unint64_t sub_1DD532664()
{
  result = qword_1ECCDE608;
  if (!qword_1ECCDE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE608);
  }

  return result;
}

unint64_t sub_1DD5326BC()
{
  result = qword_1ECCDE610;
  if (!qword_1ECCDE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE610);
  }

  return result;
}

_BYTE *sub_1DD532728(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NeighborhoodPlaceName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5328E0()
{
  result = qword_1ECCDE618;
  if (!qword_1ECCDE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE618);
  }

  return result;
}

unint64_t sub_1DD532938()
{
  result = qword_1ECCDE620;
  if (!qword_1ECCDE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE620);
  }

  return result;
}

unint64_t sub_1DD532990()
{
  result = qword_1ECCDE628;
  if (!qword_1ECCDE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE628);
  }

  return result;
}

unint64_t sub_1DD5329E4()
{
  result = qword_1ECCDE630;
  if (!qword_1ECCDE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE630);
  }

  return result;
}

unint64_t sub_1DD532A38()
{
  result = qword_1ECCDE638;
  if (!qword_1ECCDE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE638);
  }

  return result;
}

uint64_t sub_1DD532A9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD658570;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_3_6(7, 0, 0, v1, 11, v2, v3, v4);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_2_77();
  v5 = OUTLINED_FUNCTION_0_107();
  *(inited + 88) = OUTLINED_FUNCTION_3_6(v5, v6, v7, v8, 5, v9, v10, v11);
  *(inited + 96) = xmmword_1DD6435F0;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_1_12();
  *(inited + 120) = OUTLINED_FUNCTION_3_63(6, v12, v13, v14, v15, v16, v17, v18);
  *(inited + 128) = xmmword_1DD652A60;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_1_12();
  *(inited + 152) = OUTLINED_FUNCTION_3_63(11, v19, v20, v21, v22, v23, v24, v25);
  *(inited + 160) = xmmword_1DD643600;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_2_77();
  v26 = OUTLINED_FUNCTION_0_107();
  *(inited + 184) = OUTLINED_FUNCTION_3_6(v26, v27, v28, v29, 4, v30, v31, v32);
  *(inited + 192) = xmmword_1DD643610;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_1_12();
  *(inited + 216) = OUTLINED_FUNCTION_3_63(6, v33, v34, v35, v36, v37, v38, v39);
  *(inited + 224) = xmmword_1DD643620;
  *(inited + 240) = 0;
  OUTLINED_FUNCTION_2_77();
  v40 = OUTLINED_FUNCTION_0_107();
  *(inited + 248) = OUTLINED_FUNCTION_3_6(v40, v41, v42, v43, 3, v44, v45, v46);
  *(inited + 256) = xmmword_1DD643650;
  *(inited + 272) = 0;
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 280) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(0, 0, 0, v47, 6, 0, 0, v48);
  *(inited + 288) = xmmword_1DD643660;
  *(inited + 304) = 0;
  swift_allocObject();
  v49 = OUTLINED_FUNCTION_0_107();
  *(inited + 312) = OUTLINED_FUNCTION_3_6(v49, v50, v51, v52, 11, v53, v54, v55);
  *(inited + 320) = xmmword_1DD643670;
  *(inited + 336) = 0;
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_1_12();
  *(inited + 344) = OUTLINED_FUNCTION_3_63(6, v56, v57, v58, v59, v60, v61, v62);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t OUTLINED_FUNCTION_3_63(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, 0, 0, a4, 5, 0, 0, a8);
}

uint64_t sub_1DD532D04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD110, &qword_1DD64D860);
  v1 = swift_allocObject();
  sub_1DD3AE030(v1, 376);
  *v2 = "manager";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "assistant";
  *(v2 + 32) = 9;
  *(v2 + 40) = 2;
  *(v2 + 48) = "spouse";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  *(v2 + 72) = "family";
  *(v2 + 80) = 6;
  *(v2 + 88) = 2;
  *(v2 + 96) = "partner";
  *(v2 + 104) = 7;
  *(v2 + 112) = 2;
  *(v2 + 120) = "manager_f";
  *(v2 + 128) = 9;
  *(v2 + 136) = 2;
  *(v2 + 144) = "friend_f";
  *(v2 + 152) = 8;
  *(v2 + 160) = 2;
  *(v2 + 168) = "parent";
  *(v2 + 176) = 6;
  *(v2 + 184) = 2;
  *(v2 + 192) = "mother";
  *(v2 + 200) = 6;
  *(v2 + 208) = 2;
  *(v2 + 216) = "friend";
  *(v2 + 224) = 6;
  *(v2 + 232) = 2;
  *(v2 + 240) = "assistant_f";
  *(v2 + 248) = 11;
  *(v2 + 256) = 2;
  *(v2 + 264) = "partner_f";
  *(v2 + 272) = 9;
  *(v2 + 280) = 2;
  *(v2 + 288) = "husband";
  *(v2 + 296) = 7;
  *(v2 + 304) = 2;
  *(v2 + 312) = "father";
  *(v2 + 320) = 6;
  *(v2 + 328) = 2;
  *(v2 + 336) = "sister";
  *(v2 + 344) = 6;
  *(v2 + 352) = 2;
  *(v2 + 360) = "older-sister";
  *(v2 + 368) = 12;
  *(v2 + 376) = 2;
  *(v2 + 384) = "younger-sister";
  *(v2 + 392) = 14;
  *(v2 + 400) = 2;
  *(v2 + 408) = "child";
  *(v2 + 416) = 5;
  *(v2 + 424) = 2;
  *(v2 + 432) = "stepchild";
  *(v2 + 440) = 9;
  *(v2 + 448) = 2;
  *(v2 + 456) = "son";
  *(v2 + 464) = 3;
  *(v2 + 472) = 2;
  *(v2 + 480) = "daughter";
  *(v2 + 488) = 8;
  *(v2 + 496) = 2;
  *(v2 + 504) = "child_f";
  *(v2 + 512) = 7;
  *(v2 + 520) = 2;
  *(v2 + 528) = "spouse_f";
  *(v2 + 536) = 8;
  *(v2 + 544) = 2;
  *(v2 + 552) = "wife";
  *(v2 + 560) = 4;
  *(v2 + 568) = 2;
  *(v2 + 576) = "sibling";
  *(v2 + 584) = 7;
  *(v2 + 592) = 2;
  *(v2 + 600) = "younger-sibling";
  *(v2 + 608) = 15;
  *(v2 + 616) = 2;
  *(v2 + 624) = "younger-brother-or-sister";
  *(v2 + 632) = 25;
  *(v2 + 640) = 2;
  *(v2 + 648) = "brother";
  *(v2 + 656) = 7;
  *(v2 + 664) = 2;
  *(v2 + 672) = "older-brother";
  *(v2 + 680) = 13;
  *(v2 + 688) = 2;
  *(v2 + 696) = "younger-brother";
  *(v2 + 704) = 15;
  *(v2 + 712) = 2;
  *(v2 + 720) = "colleague";
  *(v2 + 728) = 9;
  *(v2 + 736) = 2;
  *(v2 + 744) = "teacher";
  *(v2 + 752) = 7;
  *(v2 + 760) = 2;
  *(v2 + 768) = "younger sibling";
  *(v2 + 776) = 15;
  *(v2 + 784) = 2;
  *(v2 + 792) = "elder sibling";
  *(v2 + 800) = 13;
  *(v2 + 808) = 2;
  *(v2 + 816) = "youngest sister";
  *(v2 + 824) = 15;
  *(v2 + 832) = 2;
  *(v2 + 840) = "youngest brother";
  *(v2 + 848) = 16;
  *(v2 + 856) = 2;
  *(v2 + 864) = "younger sister";
  *(v2 + 872) = 14;
  *(v2 + 880) = 2;
  *(v2 + 888) = "younger brother";
  *(v2 + 896) = 15;
  *(v2 + 904) = 2;
  *(v2 + 912) = "eldest sister";
  *(v2 + 920) = 13;
  *(v2 + 928) = 2;
  *(v2 + 936) = "eldest brother";
  *(v2 + 944) = 14;
  *(v2 + 952) = 2;
  *(v2 + 960) = "elder sister";
  *(v2 + 968) = 12;
  *(v2 + 976) = 2;
  *(v2 + 984) = "elder brother";
  *(v2 + 992) = 13;
  *(v2 + 1000) = 2;
  *(v2 + 1008) = "elder_sister_female";
  *(v2 + 1016) = 19;
  *(v2 + 1032) = "elder_sister_male";
  *(v2 + 1056) = "elder_brother_female";
  *(v2 + 1080) = "elder_brother_male";
  *(v2 + 1104) = "male_friend";
  *(v2 + 1128) = "female_friend";
  *(v2 + 1136) = 13;
  *(v2 + 1152) = "male_partner";
  *(v2 + 1176) = "female_partner";
  *(v2 + 1184) = 14;
  *(v2 + 1200) = "girlfriend";
  *(v2 + 1224) = "boyfriend";
  *(v2 + 1232) = 9;
  *(v2 + 1248) = "grandparent";
  *(v2 + 1272) = "grandmother";
  *(v2 + 1296) = "grandmother_mothers_mother";
  *(v2 + 1304) = 26;
  *(v2 + 1320) = "grandmother_fathers_mother";
  *(v2 + 1328) = 26;
  *(v2 + 1344) = "grandfather";
  *(v2 + 1368) = "grandfather_mothers_father";
  *(v2 + 1376) = 26;
  *(v2 + 1392) = "grandfather_fathers_father";
  *(v2 + 1400) = 26;
  *(v2 + 1416) = "great grandparent";
  *(v2 + 1440) = "great grandfather";
  *(v2 + 1464) = "great grandmother";
  *(v2 + 1488) = "grandchild";
  *(v2 + 1512) = "granddaughter";
  *(v2 + 1520) = 13;
  *(v2 + 1536) = "grandson";
  *(v2 + 1544) = 8;
  *(v2 + 1560) = "great grandchild";
  *(v2 + 1584) = "great grandson";
  *(v2 + 1592) = 14;
  *(v2 + 1608) = "great granddaughter";
  *(v2 + 1632) = "parent-in-law";
  *(v2 + 1640) = 13;
  *(v2 + 1656) = "mother-in-law";
  *(v2 + 1680) = "mother-in-law_wifes_mother";
  *(v2 + 1688) = 26;
  *(v2 + 1704) = "mother-in-law_husbands_mother";
  *(v2 + 1712) = 29;
  *(v2 + 1728) = "father-in-law";
  *(v2 + 1752) = "father-in-law_wifes_father";
  *(v2 + 1760) = 26;
  *(v2 + 1776) = "father-in-law_husbands_father";
  *(v2 + 1784) = 29;
  *(v2 + 1800) = "co_parent-in-law";
  *(v2 + 1824) = "co_mother-in-law";
  *(v2 + 1848) = "co_father-in-law";
  *(v2 + 1872) = "co_sibling-in-law";
  *(v2 + 1896) = "younger_sibling-in-law";
  *(v2 + 1920) = "elder_sibling-in-law";
  *(v2 + 1944) = "sister-in-law";
  *(v2 + 1968) = "younger_sister-in-law";
  *(v2 + 1992) = "elder_sister-in-law";
  *(v2 + 2016) = "sister-in-law_spouses_sister";
  *(v2 + 2024) = 28;
  *(v2 + 2040) = "sister-in-law_wifes_sister";
  *(v2 + 2048) = 26;
  *(v2 + 2064) = "sister-in-law_husbands_sister";
  *(v2 + 2072) = 29;
  *(v2 + 2088) = "sister-in-law_brothers_wife";
  *(v2 + 2112) = "sister-in-law_younger_brothers_wife";
  *(v2 + 2136) = "sister-in-law_elder_brother_wife";
  *(v2 + 2160) = "brother-in-law";
  *(v2 + 2168) = 14;
  *(v2 + 2184) = "younger_brother-in-law";
  *(v2 + 2208) = "elder_brother-in-law";
  *(v2 + 2232) = "brother-in-law_spouses_brother";
  *(v2 + 2240) = 30;
  *(v2 + 2256) = "brother-in-law_husbands_brother";
  *(v2 + 2280) = "brother-in-law_wifes_brother";
  *(v2 + 2288) = 28;
  *(v2 + 2304) = "brother-in-law_sisters_husband";
  *(v2 + 2312) = 30;
  *(v2 + 2328) = "brother-in-law_younger_sisters_husband";
  *(v2 + 2352) = "brother-in-law_elder_sisters_husband";
  *(v2 + 2376) = "sister-in-law_wifes_brothers_wife";
  *(v2 + 2400) = "sister-in-law_husbands_brothers_wife";
  *(v2 + 2424) = "brother-in-law_wifes_sisters_husband";
  *(v2 + 2448) = "brother-in-law_husbands_sisters_husband";
  *(v2 + 2472) = "co_sister-in-law";
  *(v2 + 2496) = "co_brother-in-law";
  *(v2 + 2520) = "child-in-law";
  *(v2 + 2544) = "daughter-in-law";
  *(v2 + 2552) = 15;
  *(v2 + 2568) = "son-in-law";
  *(v2 + 2592) = "cousin";
  *(v2 + 2600) = 6;
  *(v2 + 2616) = "male_cousin";
  *(v2 + 2640) = "female_cousin";
  *(v2 + 2664) = "cousin_parents_siblings_child";
  *(v2 + 2672) = 29;
  *(v2 + 2688) = "cousin_parents_siblings_son";
  *(v2 + 2712) = "younger_cousin_parents_siblings_son";
  *(v2 + 2736) = "elder_cousin_parents_siblings_son";
  *(v2 + 2760) = "cousin_parents_siblings_daughter";
  *(v2 + 2784) = "younger_cousin_parents_siblings_daughter";
  *(v2 + 2808) = "elder_cousin_parents_siblings_daughter";
  *(v2 + 2832) = "cousin_mothers_sisters_daughter";
  *(v2 + 2856) = "younger_cousin_mothers_sisters_daughter";
  *(v2 + 2880) = "elder_cousin_mothers_sisters_daughter";
  *(v2 + 2904) = "cousin_mothers_sisters_son";
  *(v2 + 2912) = 26;
  *(v2 + 2928) = "younger_cousin_mothers_sisters_son";
  *(v2 + 2952) = "elder_cousin_mothers_sisters_son";
  *(v2 + 2976) = "cousin_mothers_brothers_daughter";
  *(v2 + 3000) = "younger_cousin_mothers_brothers_daughter";
  *(v2 + 3024) = "elder_cousin_mothers_brothers_daughter";
  *(v2 + 3048) = "cousin_mothers_brothers_son";
  *(v2 + 3072) = "younger_cousin_mothers_brothers_son";
  *(v2 + 3096) = "elder_cousin_mothers_brothers_son";
  *(v2 + 3120) = "cousin_fathers_sisters_daughter";
  *(v2 + 3144) = "younger_cousin_fathers_sisters_daughter";
  *(v2 + 3168) = "elder_cousin_fathers_sisters_daughter";
  *(v2 + 3192) = "cousin_fathers_sisters_son";
  *(v2 + 3200) = 26;
  *(v2 + 3216) = "younger_cousin_fathers_sisters_son";
  *(v2 + 3240) = "elder_cousin_fathers_sisters_son";
  *(v2 + 3264) = "cousin_fathers_brothers_daughter";
  *(v2 + 3288) = "younger_cousin_fathers_brothers_daughter";
  *(v2 + 3312) = "elder_cousin_fathers_brothers_daughter";
  *(v2 + 3336) = "cousin_fathers_brothers_son";
  *(v2 + 3360) = "younger_cousin_fathers_brothers–son";
  *(v2 + 3384) = "elder_cousin_fathers_brothers_son";
  *(v2 + 3408) = "cousin_grandparents_siblings_child";
  *(v2 + 3432) = "cousin_grandparents_siblings_daughter";
  *(v2 + 3456) = "cousin_grandparents_siblings_son";
  *(v2 + 3480) = "younger_cousin_mothers_siblings_son_or_fathers_sisters_son";
  *(v2 + 3488) = 58;
  *(v2 + 3504) = "elder_cousin_mothers_siblings_son_or_fathers_sisters_son";
  *(v2 + 3512) = 56;
  *(v2 + 3528) = "younger_cousin_mothers_siblings_daughter_or_fathers_sisters_daughter";
  *(v2 + 3536) = 68;
  *(v2 + 3552) = "elder_cousin_mothers_siblings_daughter_or_fathers_sisters_daughter";
  *(v2 + 3560) = 66;
  *(v2 + 3576) = "parents_sibling";
  *(v2 + 3584) = 15;
  *(v2 + 3600) = "parents_younger_sibling";
  *(v2 + 3624) = "parents_elder_sibling";
  *(v2 + 3648) = "parents_sibling_mothers_sibling";
  *(v2 + 3672) = "parents_sibling_mothers_younger_sibling";
  *(v2 + 3696) = "parents_sibling_mothers_elder_sibling";
  *(v2 + 3720) = "parents_sibling_fathers_sibling";
  *(v2 + 3744) = "parents_sibling_fathers_younger_sibling";
  *(v2 + 3768) = "parents_sibling_fathers_elder_sibling";
  *(v2 + 3792) = "aunt_parents_sister";
  *(v2 + 3816) = "aunt_parents_younger_sister";
  *(v2 + 3840) = "aunt_parents_elder_sister";
  *(v2 + 3864) = "aunt_fathers_sister";
  *(v2 + 3888) = "aunt_fathers_younger_sister";
  *(v2 + 3912) = "aunt_fathers_elder_sister";
  *(v2 + 3936) = "aunt_father_brothers_wife";
  *(v2 + 3960) = "aunt_fathers_younger_brothers_wife";
  *(v2 + 3984) = "aunt_fathers_elder_brothers_wife";
  *(v2 + 4008) = "aunt_mothers_sister";
  *(v2 + 4032) = "aunt_mothers_younger_sister";
  *(v2 + 4056) = "aunt_mothers_elder_sister";
  *(v2 + 4080) = "aunt_mothers_brothers_wife";
  *(v2 + 4088) = 26;
  *(v2 + 4104) = "grandaunt";
  *(v2 + 4112) = 9;
  *(v2 + 4128) = "uncle_parents_brother";
  *(v2 + 4152) = "uncle_parents_younger_brother";
  *(v2 + 4160) = 29;
  *(v2 + 4176) = "uncle_parents_elder_brother";
  *(v2 + 4200) = "uncle_mothers_brother";
  *(v2 + 4224) = "uncle_mothers_younger_brother";
  *(v2 + 4232) = 29;
  *(v2 + 4248) = "uncle_mothers_elder_brother";
  *(v2 + 4272) = "uncle_mothers_sisters_husband";
  *(v2 + 4280) = 29;
  *(v2 + 4296) = "uncle_fathers_brother";
  *(v2 + 4320) = "uncle_fathers_younger_brother";
  *(v2 + 4328) = 29;
  *(v2 + 4344) = "uncle_fathers_elder_brother";
  *(v2 + 4368) = "uncle_fathers_sisters_husband";
  *(v2 + 4376) = 29;
  *(v2 + 4392) = "uncle_fathers_younger_sisters_husband";
  *(v2 + 4416) = "uncle_fathers_elder_sisters_husband";
  *(v2 + 4440) = "granduncle";
  *(v2 + 4464) = "siblings_child";
  *(v2 + 4472) = 14;
  *(v2 + 4488) = "niece_or_cousin";
  *(v2 + 4496) = 15;
  *(v2 + 4512) = "niece_sisters_daughter";
  *(v2 + 4536) = "niece_brother_daughter";
  *(v2 + 4560) = "niece_sisters_daughter_or_wifes_siblings_daughter";
  *(v2 + 4568) = 49;
  *(v2 + 4584) = "niece_brothers_daughter_or_husbands_siblings_daughter";
  *(v2 + 4592) = 53;
  *(v2 + 4608) = "nephew__sisters_son";
  *(v2 + 4632) = "nephew__brothers_son";
  *(v2 + 4656) = "nephew__brothers_son_or_husbands_siblings_son";
  *(v2 + 4680) = "nephew__sisters_son_or_wifes_siblings_son";
  *(v2 + 4704) = "grandniece";
  *(v2 + 4728) = "grandniece_sisters_granddaughter";
  *(v2 + 4752) = "grandniece_brothers_granddaughter";
  *(v2 + 4776) = "grandnephew_";
  *(v2 + 4800) = "grandnephew__sisters_grandson";
  *(v2 + 4808) = 29;
  *(v2 + 4824) = "grandnephew__brothers_grandson";
  *(v2 + 4832) = 30;
  *(v2 + 4848) = "stepparent";
  *(v2 + 4872) = "stepfather";
  *(v2 + 4896) = "stepmother";
  *(v2 + 4920) = "stepson";
  *(v2 + 4928) = 7;
  *(v2 + 4944) = "stepdaughter";
  *(v2 + 4968) = "stepbrother";
  *(v2 + 4992) = "stepsister";
  *(v2 + 5016) = "mother-in-law_or_stepmother";
  *(v2 + 5024) = 27;
  *(v2 + 5040) = "father-in-law_or–stepfather";
  *(v2 + 5048) = 29;
  *(v2 + 5064) = "daughter-in-law_or_stepdaughter";
  *(v2 + 5088) = "son-in-law_or_stepson";
  *(v2 + 5112) = "cousin_or_siblings_child";
  *(v2 + 5136) = "nephew__or_cousin";
  *(v2 + 5160) = "grandchild_or_siblings_child";
  *(v2 + 5168) = 28;
  *(v2 + 5184) = "great_grandchild_or_siblings_grandchild";
  *(v2 + 5208) = "daughter-in-law_or_sister-in-law";
  *(v2 + 5232) = "son-in-law_or_brother-in-law";
  *(v2 + 5240) = 28;
  *(v2 + 5256) = "uncle";
  *(v2 + 5264) = 5;
  *(v2 + 5280) = "uncle_fathers_younger_brother_hindi";
  *(v2 + 5304) = "uncle_fathers_elder_brother_hindi";
  *(v2 + 5328) = "uncle_mothers_sisters_husband_hindi";
  *(v2 + 5352) = "uncle_mothers_brother_hindi";
  *(v2 + 5376) = "uncle_mothers_younger_brother_hindi";
  *(v2 + 5400) = "uncle_mothers_elder_brother_hindi";
  *(v2 + 5424) = "uncle_fathers_sisters_husband_hindi";
  *(v2 + 5448) = "aunt";
  *(v2 + 5456) = 4;
  *(v2 + 6960) = "father-in-law_malayalam";
  *(v2 + 5472) = "aunt_fathers_younger_brothers_wife_hindi";
  *(v2 + 6936) = "mother-in-law_malayalam";
  *(v2 + 6944) = 23;
  *(v2 + 6952) = 2;
  *(v2 + 5496) = "aunt_fathers_elder_brothers_wife_hindi";
  *(v2 + 6912) = "daughter-in-law_malayalam";
  *(v2 + 6920) = 25;
  *(v2 + 6928) = 2;
  *(v2 + 6896) = 20;
  *(v2 + 6904) = 2;
  *(v2 + 5520) = "aunt_mothers_sister_hindi";
  *(v2 + 6872) = 24;
  *(v2 + 6880) = 2;
  *(v2 + 6888) = "son-in-law_malayalam";
  *(v2 + 5544) = "aunt_mothers_younger_sister_hindi";
  *(v2 + 6848) = 14;
  *(v2 + 6856) = 2;
  *(v2 + 6864) = "brother-in-law_malayalam";
  *(v2 + 5568) = "aunt_mothers_elder_sister_hindi";
  *(v2 + 6824) = 15;
  *(v2 + 6832) = 2;
  *(v2 + 6840) = "aunt_malayalam";
  *(v2 + 6808) = 2;
  *(v2 + 6816) = "uncle_malayalam";
  *(v2 + 5592) = "aunt_mothers_brothers_wife_hindi";
  *(v2 + 6784) = 2;
  *(v2 + 6792) = "father-in-law_punjabi";
  *(v2 + 6800) = 21;
  *(v2 + 6768) = "daughter-in-law_punjabi";
  *(v2 + 6776) = 23;
  *(v2 + 5616) = "aunt_fathers_sister_hindi";
  *(v2 + 6744) = "son-in-law_punjabi";
  *(v2 + 6752) = 18;
  *(v2 + 6760) = 2;
  *(v2 + 6720) = "brother-in-law_younger_sisters_husband_punjabi";
  *(v2 + 6728) = 46;
  *(v2 + 6736) = 2;
  *(v2 + 6696) = "brother-in-law_husbands_sisters_husband_punjabi";
  *(v2 + 6704) = 47;
  *(v2 + 6712) = 2;
  *(v2 + 6672) = "brother-in-law_elder_sisters_husband_punjabi";
  *(v2 + 6680) = 44;
  *(v2 + 6688) = 2;
  *(v2 + 6656) = 41;
  *(v2 + 6664) = 2;
  *(v2 + 5640) = "aunt_fathers_elder_sister_hindi";
  *(v2 + 6632) = 35;
  *(v2 + 6640) = 2;
  *(v2 + 6648) = "sister-in-law_elder_brothers_wife_punjabi";
  *(v2 + 6624) = "aunt_fathers_younger_sister_punjabi";
  *(v2 + 6608) = 33;
  *(v2 + 6616) = 2;
  *(v2 + 6576) = "aunt_fathers_sister_punjabi";
  *(v2 + 6584) = 27;
  *(v2 + 6592) = 2;
  *(v2 + 6600) = "aunt_fathers_elder_sister_punjabi";
  *(v2 + 6552) = "aunt_mothers_elder_sister_punjabi";
  *(v2 + 6560) = 33;
  *(v2 + 6568) = 2;
  *(v2 + 5664) = "aunt_fathers_younger_sister_hindi";
  *(v2 + 6528) = "aunt_mothers_younger_sister_punjabi";
  *(v2 + 6536) = 35;
  *(v2 + 6544) = 2;
  *(v2 + 5688) = "brother-in-law_wifes_brother_hindi";
  *(v2 + 6504) = "aunt_mothers_sister_punjabi";
  *(v2 + 6512) = 27;
  *(v2 + 6520) = 2;
  *(v2 + 6488) = 40;
  *(v2 + 6496) = 2;
  *(v2 + 6456) = "uncle_fathers_sisters_husband_punjabi";
  *(v2 + 6464) = 37;
  *(v2 + 6472) = 2;
  *(v2 + 6480) = "aunt_fathers_elder_brothers_wife_punjabi";
  *(v2 + 6424) = 2;
  *(v2 + 6432) = "uncle_mothers_elder_brother_punjabi";
  *(v2 + 6440) = 35;
  *(v2 + 6448) = 2;
  *(v2 + 6392) = 37;
  *(v2 + 6400) = 2;
  *(v2 + 6408) = "uncle_mothers_younger_brother_punjabi";
  *(v2 + 6416) = 37;
  *(v2 + 6384) = "uncle_mothers_sisters_husband_punjabi";
  *(v2 + 6368) = 35;
  *(v2 + 6376) = 2;
  *(v2 + 6312) = "father-in-law_gujarati";
  *(v2 + 6344) = 37;
  *(v2 + 6352) = 2;
  *(v2 + 6360) = "uncle_fathers_elder_brother_punjabi";
  *(v2 + 6336) = "uncle_fathers_younger_brother_punjabi";
  *(v2 + 6320) = 22;
  *(v2 + 6328) = 2;
  *(v2 + 6288) = "mother-in-law_gujarati";
  *(v2 + 6280) = 2;
  *(v2 + 6296) = 22;
  *(v2 + 6304) = 2;
  *(v2 + 5120) = 24;
  *(v2 + 6264) = "daughter-in-law_gujarati";
  *(v2 + 6256) = 2;
  *(v2 + 6272) = 24;
  *(v2 + 6224) = 45;
  *(v2 + 6232) = 2;
  *(v2 + 6240) = "son-in-law_gujarati";
  *(v2 + 6248) = 19;
  *(v2 + 6216) = "brother-in-law_elder_sisters_husband_gujarati";
  *(v2 + 6200) = 23;
  *(v2 + 6208) = 2;
  *(v2 + 6096) = "uncle_mothers_sisters_husband_gujarati";
  *(v2 + 6176) = 13;
  *(v2 + 6184) = 2;
  *(v2 + 6192) = "brother-in-law_gujarati";
  *(v2 + 6168) = "aunt_gujarati";
  *(v2 + 6160) = 2;
  *(v2 + 6144) = "uncle_fathers_sisters_husband_gujarati";
  *(v2 + 6128) = 36;
  *(v2 + 6136) = 2;
  *(v2 + 6152) = 38;
  *(v2 + 1664) = 13;
  *(v2 + 6120) = "uncle_mothers_elder_brother_gujarati";
  *(v2 + 6104) = 38;
  *(v2 + 6112) = 2;
  *(v2 + 6072) = "uncle_fathers_elder_brother_gujarati";
  *(v2 + 6064) = 2;
  *(v2 + 6080) = 36;
  *(v2 + 6088) = 2;
  *(v2 + 6048) = "father-in-law_hindi";
  *(v2 + 6032) = 19;
  *(v2 + 6040) = 2;
  *(v2 + 6056) = 19;
  *(v2 + 1736) = 13;
  *(v2 + 6024) = "mother-in-law_hindi";
  *(v2 + 6008) = 21;
  *(v2 + 6016) = 2;
  *(v2 + 5976) = "son-in-law_hindi";
  *(v2 + 5984) = 16;
  *(v2 + 5992) = 2;
  *(v2 + 6000) = "daughter-in-law_hindi";
  *(v2 + 5944) = 2;
  *(v2 + 5952) = "co_mother-in-law_hindi";
  *(v2 + 5960) = 22;
  *(v2 + 5968) = 2;
  *(v2 + 5928) = "co_father-in-law_hindi";
  *(v2 + 5920) = 2;
  *(v2 + 5936) = 22;
  *(v2 + 5904) = "grandmother_mothers_mother_hindi";
  *(v2 + 5888) = 32;
  *(v2 + 5896) = 2;
  *(v2 + 5912) = 32;
  *(v2 + 1952) = 13;
  *(v2 + 5880) = "grandmother_fathers_mother_hindi";
  *(v2 + 5864) = 32;
  *(v2 + 5872) = 2;
  *(v2 + 5832) = "grandfather_fathers_father_hindi";
  *(v2 + 5840) = 32;
  *(v2 + 5848) = 2;
  *(v2 + 5856) = "grandfather_mothers_father_hindi";
  *(v2 + 5808) = "brother-in-law_younger_sisters_husband_hindi";
  *(v2 + 5816) = 44;
  *(v2 + 5824) = 2;
  *(v2 + 5712) = "sister-in-law_wifes_sister_hindi";
  *(v2 + 5784) = "brother-in-law_husbands_sisters_husband_hindi";
  *(v2 + 5792) = 45;
  *(v2 + 5800) = 2;
  *(v2 + 5760) = "brother-in-law_elder_sisters_husband_hindi";
  *(v2 + 5768) = 42;
  *(v2 + 5776) = 2;
  *(v2 + 5728) = 2;
  *(v2 + 5736) = "sister-in-law_elder_brothers_wife_hindi";
  *(v2 + 5744) = 39;
  *(v2 + 5752) = 2;
  *(v2 + 2648) = 13;
  *(v2 + 6984) = "uncle_kannada";
  *(v2 + 5696) = 34;
  *(v2 + 5704) = 2;
  *(v2 + 5720) = 32;
  *(v2 + 5672) = 33;
  *(v2 + 5680) = 2;
  *(v2 + 6992) = 13;
  *(v2 + 7008) = "aunt_kannada";
  *(v2 + 7032) = "brother-in-law_kannada";
  *(v2 + 5648) = 31;
  *(v2 + 5656) = 2;
  *(v2 + 7056) = "brother-in-law_husbands_sisters_husband_kannada";
  *(v2 + 5608) = 2;
  *(v2 + 5624) = 25;
  *(v2 + 5632) = 2;
  *(v2 + 7080) = "sister-in-law_kannada";
  *(v2 + 5576) = 31;
  *(v2 + 5584) = 2;
  *(v2 + 5600) = 32;
  *(v2 + 5528) = 25;
  *(v2 + 5536) = 2;
  *(v2 + 5552) = 33;
  *(v2 + 5560) = 2;
  *(v2 + 7104) = "son-in-law_kannada";
  *(v2 + 1088) = 18;
  *(v2 + 5480) = 40;
  *(v2 + 5488) = 2;
  *(v2 + 5504) = 38;
  *(v2 + 5512) = 2;
  *(v2 + 5408) = 33;
  *(v2 + 5416) = 2;
  *(v2 + 5432) = 35;
  *(v2 + 5440) = 2;
  *(v2 + 5464) = 2;
  *(v2 + 7112) = 18;
  *(v2 + 7128) = "daughter-in-law_kannada";
  *(v2 + 7152) = "uncle_tamil";
  *(v2 + 7176) = "uncle_mothers_younger_brother_tamil";
  *(v2 + 7200) = "aunt_tamil";
  *(v2 + 1208) = 10;
  *(v2 + 5360) = 27;
  *(v2 + 5368) = 2;
  *(v2 + 5384) = 35;
  *(v2 + 5392) = 2;
  *(v2 + 1496) = 10;
  *(v2 + 2576) = 10;
  *(v2 + 5312) = 33;
  *(v2 + 5320) = 2;
  *(v2 + 5336) = 35;
  *(v2 + 5344) = 2;
  *(v2 + 4448) = 10;
  *(v2 + 4712) = 10;
  *(v2 + 4856) = 10;
  *(v2 + 5272) = 2;
  *(v2 + 5288) = 35;
  *(v2 + 5296) = 2;
  *(v2 + 4880) = 10;
  *(v2 + 4904) = 10;
  *(v2 + 5000) = 10;
  *(v2 + 5176) = 2;
  *(v2 + 5224) = 2;
  *(v2 + 5248) = 2;
  *(v2 + 5192) = 39;
  *(v2 + 5200) = 2;
  *(v2 + 5216) = 32;
  *(v2 + 7208) = 10;
  *(v2 + 7224) = "brother-in-law_wifes_brother_tamil";
  *(v2 + 7248) = "sister-in-law_wifes_sister_tamil";
  *(v2 + 7272) = "sister-in-law_elder_brothers_wife_tamil";
  *(v2 + 7296) = "brother-in-law_husbands_sisters_husband_tamil";
  *(v2 + 7320) = "brother-in-law_younger_sisters_husband_tamil";
  *(v2 + 5144) = 17;
  *(v2 + 5152) = 2;
  *(v2 + 7344) = "son-in-law_tamil";
  *(v2 + 5128) = 2;
  *(v2 + 7368) = "daughter-in-law_tamil";
  *(v2 + 7392) = "mother-in-law_tamil";
  *(v2 + 5096) = 21;
  *(v2 + 5104) = 2;
  *(v2 + 7416) = "father-in-law_tamil";
  *(v2 + 5056) = 0;
  *(v2 + 5072) = 31;
  *(v2 + 5080) = 2;
  *(v2 + 7440) = "uncle_telugu";
  *(v2 + 1160) = 12;
  *(v2 + 2528) = 12;
  *(v2 + 4784) = 12;
  *(v2 + 5008) = 2;
  *(v2 + 5032) = 2;
  *(v2 + 4912) = 2;
  *(v2 + 4952) = 12;
  *(v2 + 4960) = 2;
  *(v2 + 4976) = 11;
  *(v2 + 4984) = 2;
  *(v2 + 7016) = 12;
  *(v2 + 7448) = 12;
  *(v2 + 7464) = "uncle_fathers_younger_brother_telugu";
  *(v2 + 4936) = 2;
  *(v2 + 7488) = "uncle_mothers_younger_brother_telugu";
  *(v2 + 7512) = "uncle_mothers_elder_brother_telugu";
  *(v2 + 7536) = "aunt_telugu";
  *(v2 + 1112) = 11;
  *(v2 + 1256) = 11;
  *(v2 + 4864) = 2;
  *(v2 + 4888) = 2;
  *(v2 + 1280) = 11;
  *(v2 + 1352) = 11;
  *(v2 + 2624) = 11;
  *(v2 + 4576) = 2;
  *(v2 + 4816) = 2;
  *(v2 + 4840) = 2;
  *(v2 + 4600) = 2;
  *(v2 + 4616) = 19;
  *(v2 + 4624) = 2;
  *(v2 + 4640) = 20;
  *(v2 + 4768) = 2;
  *(v2 + 4792) = 2;
  *(v2 + 4664) = 45;
  *(v2 + 4672) = 2;
  *(v2 + 4688) = 41;
  *(v2 + 4736) = 32;
  *(v2 + 4744) = 2;
  *(v2 + 4760) = 33;
  *(v2 + 4696) = 2;
  *(v2 + 4720) = 2;
  *(v2 + 7160) = 11;
  *(v2 + 7544) = 11;
  *(v2 + 7560) = "aunt_mothers_younger_sister_telugu";
  *(v2 + 7584) = "aunt_mothers_elder_sister_telugu";
  *(v2 + 7608) = "aunt_fathers_elder_sister_telugu";
  *(v2 + 7632) = "brother-in-law_wifes_brother_telugu";
  *(v2 + 7656) = "sister-in-law_wifes_sister_telugu";
  *(v2 + 7680) = "sister-in-law_telugu";
  *(v2 + 4648) = 2;
  *(v2 + 7704) = "brother-in-law_elder_sisters_husband_telugu";
  *(v2 + 7712) = 43;
  *(v2 + 7728) = "brother-in-law_husbands_sisters_husband_telugu";
  *(v2 + 7752) = "brother-in-law_younger_sisters_husband_telugu";
  *(v2 + 7776) = "grandmother_fathers_mother_telugu";
  *(v2 + 7800) = "grandmother_mothers_mother_telugu";
  *(v2 + 7824) = "co_father-in-law_telugu";
  *(v2 + 7848) = "co_mother-in-law_telugu";
  *(v2 + 7872) = "son-in-law_telugu";
  *(v2 + 1040) = 17;
  *(v2 + 4520) = 22;
  *(v2 + 4528) = 2;
  *(v2 + 4544) = 22;
  *(v2 + 4552) = 2;
  *(v2 + 1424) = 17;
  *(v2 + 1448) = 17;
  *(v2 + 1472) = 17;
  *(v2 + 1880) = 17;
  *(v2 + 2504) = 17;
  *(v2 + 4504) = 2;
  *(v2 + 7880) = 17;
  *(v2 + 7896) = "daughter-in-law_telugu";
  *(v2 + 4456) = 2;
  *(v2 + 4480) = 2;
  *(v2 + 1904) = 22;
  *(v2 + 2192) = 22;
  *(v2 + 4400) = 37;
  *(v2 + 4408) = 2;
  *(v2 + 4424) = 35;
  *(v2 + 4432) = 2;
  *(v2 + 4360) = 2;
  *(v2 + 4384) = 2;
  *(v2 + 7040) = 22;
  *(v2 + 7904) = 22;
  *(v2 + 7920) = "mother-in-law_telugu";
  *(v2 + 1064) = 20;
  *(v2 + 1928) = 20;
  *(v2 + 4312) = 2;
  *(v2 + 4336) = 2;
  *(v2 + 4352) = 27;
  *(v2 + 2216) = 20;
  *(v2 + 2888) = 37;
  *(v2 + 3176) = 37;
  *(v2 + 4264) = 2;
  *(v2 + 4288) = 2;
  *(v2 + 4304) = 21;
  *(v2 + 3368) = 37;
  *(v2 + 3440) = 37;
  *(v2 + 3704) = 37;
  *(v2 + 4216) = 2;
  *(v2 + 4240) = 2;
  *(v2 + 4256) = 27;
  *(v2 + 3776) = 37;
  *(v2 + 4024) = 2;
  *(v2 + 4168) = 2;
  *(v2 + 4184) = 27;
  *(v2 + 4192) = 2;
  *(v2 + 4208) = 21;
  *(v2 + 4040) = 27;
  *(v2 + 4048) = 2;
  *(v2 + 4064) = 25;
  *(v2 + 4072) = 2;
  *(v2 + 4136) = 21;
  *(v2 + 4144) = 2;
  *(v2 + 4096) = 2;
  *(v2 + 4120) = 2;
  *(v2 + 7688) = 20;
  *(v2 + 7928) = 20;
  *(v2 + 7944) = "uncle_fathers_younger_brother_bengali";
  *(v2 + 7952) = 37;
  *(v2 + 7992) = "uncle_mothers_sisters_husband_bengali";
  *(v2 + 8000) = 37;
  *(v2 + 8016) = "uncle_mothers_younger_brother_bengali";
  *(v2 + 8024) = 37;
  *(v2 + 8040) = "uncle_mothers_elder_brother_bengali";
  *(v2 + 8064) = "uncle_fathers_sisters_husband_bengali";
  *(v2 + 8072) = 37;
  *(v2 + 8088) = "aunt_fathers_younger_brothers_wife_bengali";
  *(v2 + 3976) = 2;
  *(v2 + 3992) = 32;
  *(v2 + 4000) = 2;
  *(v2 + 4016) = 19;
  *(v2 + 2872) = 2;
  *(v2 + 2896) = 2;
  *(v2 + 3928) = 2;
  *(v2 + 3944) = 25;
  *(v2 + 3952) = 2;
  *(v2 + 3968) = 34;
  *(v2 + 2920) = 2;
  *(v2 + 2936) = 34;
  *(v2 + 3880) = 2;
  *(v2 + 3896) = 27;
  *(v2 + 3904) = 2;
  *(v2 + 3920) = 25;
  *(v2 + 2944) = 2;
  *(v2 + 2960) = 32;
  *(v2 + 3832) = 2;
  *(v2 + 3848) = 25;
  *(v2 + 3856) = 2;
  *(v2 + 3872) = 19;
  *(v2 + 2968) = 2;
  *(v2 + 2984) = 32;
  *(v2 + 3784) = 2;
  *(v2 + 3800) = 19;
  *(v2 + 3808) = 2;
  *(v2 + 3824) = 27;
  *(v2 + 2992) = 2;
  *(v2 + 3008) = 40;
  *(v2 + 3016) = 2;
  *(v2 + 3736) = 2;
  *(v2 + 3752) = 39;
  *(v2 + 3760) = 2;
  *(v2 + 3032) = 38;
  *(v2 + 3040) = 2;
  *(v2 + 3056) = 27;
  *(v2 + 3688) = 2;
  *(v2 + 3712) = 2;
  *(v2 + 3728) = 31;
  *(v2 + 3064) = 2;
  *(v2 + 3080) = 35;
  *(v2 + 3640) = 2;
  *(v2 + 3656) = 31;
  *(v2 + 3664) = 2;
  *(v2 + 3680) = 39;
  *(v2 + 3088) = 2;
  *(v2 + 3104) = 33;
  *(v2 + 3592) = 2;
  *(v2 + 3608) = 23;
  *(v2 + 3616) = 2;
  *(v2 + 3632) = 21;
  *(v2 + 3112) = 2;
  *(v2 + 3128) = 31;
  *(v2 + 3136) = 2;
  *(v2 + 3152) = 39;
  *(v2 + 3544) = 2;
  *(v2 + 3568) = 2;
  *(v2 + 3160) = 2;
  *(v2 + 3184) = 2;
  *(v2 + 3208) = 2;
  *(v2 + 3224) = 34;
  *(v2 + 3496) = 2;
  *(v2 + 3520) = 2;
  *(v2 + 3232) = 2;
  *(v2 + 3248) = 32;
  *(v2 + 3256) = 2;
  *(v2 + 3448) = 2;
  *(v2 + 3464) = 32;
  *(v2 + 3472) = 2;
  *(v2 + 3272) = 32;
  *(v2 + 3280) = 2;
  *(v2 + 3296) = 40;
  *(v2 + 3400) = 2;
  *(v2 + 3416) = 34;
  *(v2 + 3424) = 2;
  *(v2 + 3304) = 2;
  *(v2 + 3320) = 38;
  *(v2 + 3328) = 2;
  *(v2 + 3352) = 2;
  *(v2 + 3376) = 0;
  *(v2 + 3392) = 33;
  *(v2 + 3344) = 27;
  *(v2 + 6976) = 2;
  *(v2 + 7000) = 2;
  *(v2 + 7024) = 2;
  *(v2 + 7048) = 2;
  *(v2 + 7072) = 2;
  *(v2 + 7096) = 2;
  *(v2 + 7120) = 2;
  *(v2 + 7144) = 2;
  *(v2 + 7168) = 2;
  *(v2 + 7192) = 2;
  *(v2 + 7216) = 2;
  *(v2 + 7240) = 2;
  *(v2 + 7264) = 2;
  *(v2 + 7288) = 2;
  *(v2 + 7312) = 2;
  *(v2 + 7336) = 2;
  *(v2 + 7360) = 2;
  *(v2 + 7384) = 2;
  *(v2 + 7408) = 2;
  *(v2 + 7432) = 2;
  *(v2 + 7456) = 2;
  *(v2 + 7480) = 2;
  *(v2 + 7504) = 2;
  *(v2 + 7528) = 2;
  *(v2 + 7552) = 2;
  *(v2 + 7576) = 2;
  *(v2 + 7600) = 2;
  *(v2 + 7624) = 2;
  *(v2 + 7648) = 2;
  *(v2 + 7672) = 2;
  *(v2 + 7696) = 2;
  *(v2 + 7720) = 2;
  *(v2 + 7744) = 2;
  *(v2 + 7768) = 2;
  *(v2 + 7792) = 2;
  *(v2 + 7816) = 2;
  *(v2 + 7840) = 2;
  *(v2 + 7864) = 2;
  *(v2 + 7888) = 2;
  *(v2 + 7912) = 2;
  *(v2 + 7936) = 2;
  *(v2 + 7960) = 2;
  *(v2 + 7984) = 2;
  *(v2 + 8008) = 2;
  *(v2 + 8032) = 2;
  *(v2 + 8056) = 2;
  *(v2 + 8080) = 2;
  *(v2 + 8096) = 42;
  *(v2 + 8112) = "aunt_fathers_elder_brothers_wife_bengali";
  *(v2 + 8104) = 2;
  *(v2 + 8128) = 2;
  *(v2 + 8136) = "aunt_mothers_younger_sister_bengali";
  *(v2 + 8152) = 2;
  *(v2 + 8160) = "aunt_mothers_elder_sister_bengali";
  *(v2 + 8176) = 2;
  *(v2 + 8184) = "aunt_mothers_brothers_wife_bengali";
  *(v2 + 7968) = "uncle_fathers_elder_brother_bengali";
  *(v2 + 8208) = "aunt_fathers_sister_bengali";
  *(v2 + 8232) = "aunt_fathers_elder_sister_bengali";
  *(v2 + 8256) = "aunt_fathers_younger_sister_bengali";
  *(v2 + 8280) = "brother-in-law_wifes_brother_bengali";
  *(v2 + 2824) = 2;
  *(v2 + 2840) = 31;
  *(v2 + 2848) = 2;
  *(v2 + 2864) = 39;
  *(v2 + 2360) = 36;
  *(v2 + 2408) = 36;
  *(v2 + 2776) = 2;
  *(v2 + 2792) = 40;
  *(v2 + 2800) = 2;
  *(v2 + 2816) = 38;
  *(v2 + 2432) = 36;
  *(v2 + 2720) = 35;
  *(v2 + 2728) = 2;
  *(v2 + 2744) = 33;
  *(v2 + 2752) = 2;
  *(v2 + 2768) = 32;
  *(v2 + 7472) = 36;
  *(v2 + 7496) = 36;
  *(v2 + 8288) = 36;
  *(v2 + 8304) = "sister-in-law_wifes_sister_bengali";
  *(v2 + 8328) = "sister-in-law_elder_brothers_wife_bengali";
  *(v2 + 2680) = 2;
  *(v2 + 2696) = 27;
  *(v2 + 2704) = 2;
  *(v2 + 8336) = 41;
  *(v2 + 8352) = "brother-in-law_elder_sisters_husband_bengali";
  *(v2 + 2656) = 2;
  *(v2 + 7328) = 44;
  *(v2 + 8360) = 44;
  *(v2 + 8376) = "brother-in-law_husbands_sisters_husband_bengali";
  *(v2 + 2632) = 2;
  *(v2 + 7064) = 47;
  *(v2 + 8384) = 47;
  *(v2 + 8400) = "brother-in-law_younger_sisters_husband_bengali";
  *(v2 + 2584) = 2;
  *(v2 + 2608) = 2;
  *(v2 + 2392) = 2;
  *(v2 + 2416) = 2;
  *(v2 + 2440) = 2;
  *(v2 + 2456) = 39;
  *(v2 + 2536) = 2;
  *(v2 + 2560) = 2;
  *(v2 + 2464) = 2;
  *(v2 + 2480) = 16;
  *(v2 + 2488) = 2;
  *(v2 + 2512) = 2;
  *(v2 + 7232) = 34;
  *(v2 + 7520) = 34;
  *(v2 + 7568) = 34;
  *(v2 + 7736) = 46;
  *(v2 + 0x2000) = 34;
  *(v2 + 8408) = 46;
  *(v2 + 8312) = 34;
  *(v2 + 8424) = "grandfather_fathers_father_bengali";
  *(v2 + 8432) = 34;
  *(v2 + 8448) = "grandfather_mothers_father_bengali";
  *(v2 + 8456) = 34;
  *(v2 + 8472) = "grandmother_fathers_mother_bengali";
  *(v2 + 8480) = 34;
  *(v2 + 8496) = "daughter-in-law_bengali";
  *(v2 + 2248) = 2;
  *(v2 + 2344) = 2;
  *(v2 + 2368) = 2;
  *(v2 + 2384) = 33;
  *(v2 + 2264) = 31;
  *(v2 + 2272) = 2;
  *(v2 + 2296) = 2;
  *(v2 + 2320) = 2;
  *(v2 + 2336) = 38;
  *(v2 + 6968) = 23;
  *(v2 + 7136) = 23;
  *(v2 + 7832) = 23;
  *(v2 + 7856) = 23;
  *(v2 + 8504) = 23;
  *(v2 + 8520) = "mother-in-law_bengali";
  *(v2 + 8544) = "father-in-law_bengali";
  *(v2 + 8568) = "uncle_fathers_younger_brother_oriya";
  *(v2 + 8592) = "uncle_fathers_elder_brother_oriya";
  *(v2 + 8616) = "uncle_mothers_sisters_husband_oriya";
  *(v2 + 8640) = "uncle_mothers_brother_oriya";
  *(v2 + 2200) = 2;
  *(v2 + 2224) = 2;
  *(v2 + 2096) = 27;
  *(v2 + 2104) = 2;
  *(v2 + 2120) = 35;
  *(v2 + 2128) = 2;
  *(v2 + 2144) = 32;
  *(v2 + 2176) = 2;
  *(v2 + 2152) = 2;
  *(v2 + 8120) = 40;
  *(v2 + 8216) = 27;
  *(v2 + 8648) = 27;
  *(v2 + 8664) = "uncle_mothers_younger_brother_oriya";
  *(v2 + 8688) = "uncle_mothers_elder_brother_oriya";
  *(v2 + 8712) = "uncle_fathers_sisters_husband_oriya";
  *(v2 + 8736) = "aunt_fathers_younger_brothers_wife_oriya";
  *(v2 + 8744) = 40;
  *(v2 + 8760) = "aunt_fathers_elder_brothers_wife_oriya";
  *(v2 + 8768) = 38;
  *(v2 + 2056) = 2;
  *(v2 + 2080) = 2;
  *(v2 + 1024) = 2;
  *(v2 + 1048) = 2;
  *(v2 + 2000) = 19;
  *(v2 + 2008) = 2;
  *(v2 + 2032) = 2;
  *(v2 + 1072) = 2;
  *(v2 + 1096) = 2;
  *(v2 + 1120) = 2;
  *(v2 + 1960) = 2;
  *(v2 + 1976) = 21;
  *(v2 + 1984) = 2;
  *(v2 + 1144) = 2;
  *(v2 + 1168) = 2;
  *(v2 + 1192) = 2;
  *(v2 + 1216) = 2;
  *(v2 + 1912) = 2;
  *(v2 + 1936) = 2;
  *(v2 + 1240) = 2;
  *(v2 + 1264) = 2;
  *(v2 + 1288) = 2;
  *(v2 + 1856) = 16;
  *(v2 + 1864) = 2;
  *(v2 + 1888) = 2;
  *(v2 + 1312) = 2;
  *(v2 + 1336) = 2;
  *(v2 + 1808) = 16;
  *(v2 + 1816) = 2;
  *(v2 + 1832) = 16;
  *(v2 + 1840) = 2;
  *(v2 + 1360) = 2;
  *(v2 + 1384) = 2;
  *(v2 + 1408) = 2;
  *(v2 + 1432) = 2;
  *(v2 + 1768) = 2;
  *(v2 + 1792) = 2;
  *(v2 + 1456) = 2;
  *(v2 + 1480) = 2;
  *(v2 + 1504) = 2;
  *(v2 + 1528) = 2;
  *(v2 + 1720) = 2;
  *(v2 + 1744) = 2;
  *(v2 + 1552) = 2;
  *(v2 + 1568) = 16;
  *(v2 + 1576) = 2;
  *(v2 + 1600) = 2;
  *(v2 + 1672) = 2;
  *(v2 + 1696) = 2;
  *(v2 + 1616) = 19;
  *(v2 + 1624) = 2;
  *(v2 + 1648) = 2;
  *(v2 + 8200) = 2;
  *(v2 + 8224) = 2;
  *(v2 + 8248) = 2;
  *(v2 + 8272) = 2;
  *(v2 + 8296) = 2;
  *(v2 + 8320) = 2;
  *(v2 + 8344) = 2;
  *(v2 + 8368) = 2;
  *(v2 + 8392) = 2;
  *(v2 + 8416) = 2;
  *(v2 + 8440) = 2;
  *(v2 + 8464) = 2;
  *(v2 + 8488) = 2;
  *(v2 + 8512) = 2;
  *(v2 + 8536) = 2;
  *(v2 + 8560) = 2;
  *(v2 + 8584) = 2;
  *(v2 + 8608) = 2;
  *(v2 + 8632) = 2;
  *(v2 + 8656) = 2;
  *(v2 + 8680) = 2;
  *(v2 + 8704) = 2;
  *(v2 + 8728) = 2;
  *(v2 + 8752) = 2;
  *(v2 + 8776) = 2;
  *(v2 + 8800) = 2;
  *(v2 + 8824) = 2;
  *(v2 + 8848) = 2;
  *(v2 + 8872) = 2;
  *(v2 + 8896) = 2;
  *(v2 + 8920) = 2;
  *(v2 + 8944) = 2;
  *(v2 + 8968) = 2;
  *(v2 + 8992) = 2;
  *(v2 + 9016) = 2;
  *(v2 + 8784) = "aunt_mothers_brothers_wife_oriya";
  *(v2 + 8808) = "aunt_fathers_sister_oriya";
  *(v2 + 8816) = 25;
  *(v2 + 8832) = "aunt_fathers_elder_sister_oriya";
  *(v2 + 8840) = 31;
  *(v2 + 8856) = "aunt_fathers_younger_sister_oriya";
  *(v2 + 7664) = 33;
  *(v2 + 7784) = 33;
  *(v2 + 7808) = 33;
  *(v2 + 8168) = 33;
  *(v2 + 8240) = 33;
  *(v2 + 8600) = 33;
  *(v2 + 8696) = 33;
  *(v2 + 8864) = 33;
  *(v2 + 8880) = "sister-in-law_wifes_sister_oriya";
  *(v2 + 7256) = 32;
  *(v2 + 7592) = 32;
  *(v2 + 7616) = 32;
  *(v2 + 8792) = 32;
  *(v2 + 8888) = 32;
  *(v2 + 8904) = "sister-in-law_elder_brothers_wife_oriya";
  *(v2 + 7280) = 39;
  *(v2 + 8912) = 39;
  *(v2 + 8928) = "brother-in-law_husbands_sisters_husband_oriya";
  *(v2 + 7304) = 45;
  *(v2 + 7760) = 45;
  *(v2 + 8936) = 45;
  *(v2 + 8952) = "son-in-law_oriya";
  *(v2 + 7352) = 16;
  *(v2 + 8960) = 16;
  *(v2 + 8976) = "daughter-in-law_oriya";
  *(v2 + 7088) = 21;
  *(v2 + 7376) = 21;
  *(v2 + 8528) = 21;
  *(v2 + 8552) = 21;
  *(v2 + 8984) = 21;
  *(v2 + 9000) = "father-in-law_oriya";
  *(v2 + 7400) = 19;
  *(v2 + 7424) = 19;
  *(v2 + 9008) = 19;
  *(v2 + 7184) = 35;
  *(v2 + 7640) = 35;
  *(v2 + 8048) = 35;
  *(v2 + 8144) = 35;
  *(v2 + 8264) = 35;
  *(v2 + 8576) = 35;
  *(v2 + 8624) = 35;
  *(v2 + 8672) = 35;
  *(v2 + 8720) = 35;
  *(v2 + 7976) = 35;
  nullsub_1();
  v3 = sub_1DD640AA8();

  v4 = v3 - 128;
  if (v3 < 0x80)
  {
    return v3;
  }

  if (v4 < 0x40)
  {
    return v4 | 0x80;
  }

  if (v3 - 192 < 0x40)
  {
    return (v3 - 192) | 0xC0u;
  }

  v6 = v3 - 256;
  result = 289;
  v3 = 256;
  switch(v6)
  {
    case 0uLL:
      return v3;
    case 1uLL:
      return 257;
    case 2uLL:
      return 258;
    case 3uLL:
      return 259;
    case 4uLL:
      return 260;
    case 5uLL:
      return 261;
    case 6uLL:
      return 262;
    case 7uLL:
      return 263;
    case 8uLL:
      return 264;
    case 9uLL:
      return 265;
    case 0xAuLL:
      return 266;
    case 0xBuLL:
      return 267;
    case 0xCuLL:
      return 268;
    case 0xDuLL:
      return 269;
    case 0xEuLL:
      return 270;
    case 0xFuLL:
      return 271;
    case 0x10uLL:
      return 272;
    case 0x11uLL:
      return 273;
    case 0x12uLL:
      return 274;
    case 0x13uLL:
      return 275;
    case 0x14uLL:
      return 276;
    case 0x15uLL:
      return 277;
    case 0x16uLL:
      return 278;
    case 0x17uLL:
      return 279;
    case 0x18uLL:
      return 280;
    case 0x19uLL:
      return 281;
    case 0x1AuLL:
      return 282;
    case 0x1BuLL:
      return 283;
    case 0x1CuLL:
      return 284;
    case 0x1DuLL:
      return 285;
    case 0x1EuLL:
      return 286;
    case 0x1FuLL:
      return 287;
    case 0x20uLL:
      return 288;
    case 0x21uLL:
      return result;
    case 0x22uLL:
      result = 290;
      break;
    case 0x23uLL:
      result = 291;
      break;
    case 0x24uLL:
      result = 292;
      break;
    case 0x25uLL:
      result = 293;
      break;
    case 0x26uLL:
      result = 294;
      break;
    case 0x27uLL:
      result = 295;
      break;
    case 0x28uLL:
      result = 296;
      break;
    case 0x29uLL:
      result = 297;
      break;
    case 0x2AuLL:
      result = 298;
      break;
    case 0x2BuLL:
      result = 299;
      break;
    case 0x2CuLL:
      result = 300;
      break;
    case 0x2DuLL:
      result = 301;
      break;
    case 0x2EuLL:
      result = 302;
      break;
    case 0x2FuLL:
      result = 303;
      break;
    case 0x30uLL:
      result = 304;
      break;
    case 0x31uLL:
      result = 305;
      break;
    case 0x32uLL:
      result = 306;
      break;
    case 0x33uLL:
      result = 307;
      break;
    case 0x34uLL:
      result = 308;
      break;
    case 0x35uLL:
      result = 309;
      break;
    case 0x36uLL:
      result = 310;
      break;
    case 0x37uLL:
      result = 311;
      break;
    case 0x38uLL:
      result = 312;
      break;
    case 0x39uLL:
      result = 313;
      break;
    case 0x3AuLL:
      result = 314;
      break;
    case 0x3BuLL:
      result = 315;
      break;
    case 0x3CuLL:
      result = 316;
      break;
    case 0x3DuLL:
      result = 317;
      break;
    case 0x3EuLL:
      result = 318;
      break;
    case 0x3FuLL:
      result = 319;
      break;
    default:
      result = 376;
      break;
  }

  return result;
}

uint64_t sub_1DD534E3C(__int16 a1)
{
  switch(a1)
  {
    case 1:
    case 10:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = OUTLINED_FUNCTION_6(v6);
      *(v2 + 16) = xmmword_1DD643F80;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v7;
      *(v2 + 48) = 0xD000000000000010;
      *(v2 + 56) = 0x80000001DD66F6C0;
      break;
    case 2:
    case 7:
    case 9:
    case 17:
    case 24:
    case 28:
    case 29:
    case 53:
    case 56:
    case 59:
    case 62:
    case 65:
    case 69:
    case 72:
    case 75:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = OUTLINED_FUNCTION_81_0(v78);
      *(v2 + 16) = xmmword_1DD6444F0;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v79;
      *(v2 + 48) = sub_1DD63FDD8();
      *(v2 + 56) = v80;
      *(v2 + 64) = sub_1DD63FDD8();
      *(v2 + 72) = v81;
      break;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD658590;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v10;
      *(v2 + 48) = sub_1DD63FDD8();
      *(v2 + 56) = v11;
      *(v2 + 64) = sub_1DD63FDD8();
      *(v2 + 72) = v12;
      *(v2 + 80) = sub_1DD63FDD8();
      *(v2 + 88) = v13;
      *(v2 + 96) = sub_1DD63FDD8();
      *(v2 + 104) = v14;
      *(v2 + 112) = sub_1DD63FDD8();
      *(v2 + 120) = v15;
      *(v2 + 128) = sub_1DD63FDD8();
      *(v2 + 136) = v16;
      *(v2 + 144) = sub_1DD63FDD8();
      *(v2 + 152) = v17;
      *(v2 + 160) = sub_1DD63FDD8();
      *(v2 + 168) = v18;
      *(v2 + 176) = sub_1DD63FDD8();
      *(v2 + 184) = v19;
      *(v2 + 192) = sub_1DD63FDD8();
      *(v2 + 200) = v20;
      *(v2 + 208) = sub_1DD63FDD8();
      *(v2 + 216) = v21;
      *(v2 + 224) = sub_1DD63FDD8();
      *(v2 + 232) = v22;
      *(v2 + 240) = sub_1DD63FDD8();
      *(v2 + 248) = v23;
      *(v2 + 256) = sub_1DD63FDD8();
      *(v2 + 264) = v24;
      *(v2 + 272) = sub_1DD63FDD8();
      *(v2 + 280) = v25;
      *(v2 + 288) = sub_1DD63FDD8();
      *(v2 + 296) = v26;
      *(v2 + 304) = sub_1DD63FDD8();
      *(v2 + 312) = v27;
      *(v2 + 320) = sub_1DD63FDD8();
      *(v2 + 328) = v28;
      *(v2 + 336) = sub_1DD63FDD8();
      *(v2 + 344) = v29;
      *(v2 + 352) = sub_1DD63FDD8();
      *(v2 + 360) = v30;
      break;
    case 4:
    case 11:
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = OUTLINED_FUNCTION_6(v1);
      *(v2 + 16) = xmmword_1DD643F80;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v3;
      v4 = 0x73756F70532D5845;
      v5 = 0xED0000656D614E65;
      goto LABEL_5;
    case 6:
    case 8:
    case 13:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 30:
    case 31:
    case 34:
    case 35:
    case 38:
    case 39:
    case 42:
    case 43:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 54:
    case 55:
    case 57:
    case 58:
    case 60:
    case 61:
    case 63:
    case 66:
    case 67:
    case 70:
    case 71:
    case 73:
    case 74:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 257:
    case 258:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 314:
    case 318:
    case 319:
    case 320:
    case 321:
    case 322:
    case 323:
    case 324:
    case 325:
    case 326:
    case 327:
    case 328:
    case 329:
    case 330:
    case 345:
    case 346:
    case 347:
    case 348:
    case 349:
    case 350:
    case 351:
    case 352:
    case 353:
    case 354:
    case 355:
    case 356:
    case 370:
    case 371:
    case 372:
    case 373:
    case 374:
    case 375:
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = OUTLINED_FUNCTION_1_89(v82);
      *(v2 + 16) = xmmword_1DD643F90;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v83;
      break;
    case 12:
    case 15:
    case 16:
    case 23:
    case 36:
    case 37:
    case 40:
    case 41:
    case 44:
    case 45:
    case 64:
    case 253:
    case 254:
    case 255:
    case 256:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 299:
    case 311:
    case 312:
    case 313:
    case 315:
    case 316:
    case 317:
    case 331:
    case 332:
    case 333:
    case 334:
    case 335:
    case 336:
    case 337:
    case 338:
    case 339:
    case 340:
    case 341:
    case 342:
    case 343:
    case 344:
    case 357:
    case 358:
    case 359:
    case 360:
    case 361:
    case 362:
    case 363:
    case 364:
    case 365:
    case 366:
    case 367:
    case 368:
    case 369:
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = OUTLINED_FUNCTION_6(v58);
      *(v2 + 16) = xmmword_1DD643F80;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v59;
      *(v2 + 48) = sub_1DD63FDD8();
      *(v2 + 56) = v60;
      break;
    case 14:
    case 27:
    case 33:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD652040;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v73;
      *(v2 + 48) = sub_1DD63FDD8();
      *(v2 + 56) = v74;
      *(v2 + 64) = sub_1DD63FDD8();
      *(v2 + 72) = v75;
      *(v2 + 80) = sub_1DD63FDD8();
      *(v2 + 88) = v76;
      *(v2 + 96) = sub_1DD63FDD8();
      *(v2 + 104) = v77;
      break;
    case 25:
    case 32:
    case 52:
    case 68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD6504B0;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v51;
      *(v2 + 48) = sub_1DD63FDD8();
      *(v2 + 56) = v52;
      *(v2 + 64) = sub_1DD63FDD8();
      *(v2 + 72) = v53;
      *(v2 + 80) = sub_1DD63FDD8();
      *(v2 + 88) = v54;
      *(v2 + 96) = sub_1DD63FDD8();
      *(v2 + 104) = v55;
      *(v2 + 112) = sub_1DD63FDD8();
      *(v2 + 120) = v56;
      *(v2 + 128) = sub_1DD63FDD8();
      *(v2 + 136) = v57;
      break;
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD644F40;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v31;
      *(v2 + 48) = sub_1DD63FDD8();
      *(v2 + 56) = v32;
      *(v2 + 64) = sub_1DD63FDD8();
      *(v2 + 72) = v33;
      *(v2 + 80) = sub_1DD63FDD8();
      *(v2 + 88) = v34;
      *(v2 + 96) = sub_1DD63FDD8();
      *(v2 + 104) = v35;
      *(v2 + 112) = sub_1DD63FDD8();
      *(v2 + 120) = v36;
      break;
    case 108:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD644F50;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v37;
      *(v2 + 48) = sub_1DD63FDD8();
      *(v2 + 56) = v38;
      *(v2 + 64) = sub_1DD63FDD8();
      *(v2 + 72) = v39;
      *(v2 + 80) = sub_1DD63FDD8();
      *(v2 + 88) = v40;
      *(v2 + 96) = sub_1DD63FDD8();
      *(v2 + 104) = v41;
      *(v2 + 112) = sub_1DD63FDD8();
      *(v2 + 120) = v42;
      *(v2 + 128) = sub_1DD63FDD8();
      *(v2 + 136) = v43;
      *(v2 + 144) = sub_1DD63FDD8();
      *(v2 + 152) = v44;
      *(v2 + 160) = sub_1DD63FDD8();
      *(v2 + 168) = v45;
      *(v2 + 176) = sub_1DD63FDD8();
      *(v2 + 184) = v46;
      *(v2 + 192) = sub_1DD63FDD8();
      *(v2 + 200) = v47;
      *(v2 + 208) = sub_1DD63FDD8();
      *(v2 + 216) = v48;
      *(v2 + 224) = sub_1DD63FDD8();
      *(v2 + 232) = v49;
      *(v2 + 240) = sub_1DD63FDD8();
      *(v2 + 248) = v50;
      break;
    case 219:
    case 227:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD658580;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v61;
      *(v2 + 48) = sub_1DD63FDD8();
      *(v2 + 56) = v62;
      *(v2 + 64) = sub_1DD63FDD8();
      *(v2 + 72) = v63;
      *(v2 + 80) = sub_1DD63FDD8();
      *(v2 + 88) = v64;
      *(v2 + 96) = sub_1DD63FDD8();
      *(v2 + 104) = v65;
      *(v2 + 112) = sub_1DD63FDD8();
      *(v2 + 120) = v66;
      *(v2 + 128) = sub_1DD63FDD8();
      *(v2 + 136) = v67;
      *(v2 + 144) = sub_1DD63FDD8();
      *(v2 + 152) = v68;
      *(v2 + 160) = sub_1DD63FDD8();
      *(v2 + 168) = v69;
      *(v2 + 176) = sub_1DD63FDD8();
      *(v2 + 184) = v70;
      *(v2 + 192) = sub_1DD63FDD8();
      *(v2 + 200) = v71;
      *(v2 + 208) = sub_1DD63FDD8();
      *(v2 + 216) = v72;
      break;
    default:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v2 = OUTLINED_FUNCTION_6(v8);
      *(v2 + 16) = xmmword_1DD643F80;
      *(v2 + 32) = sub_1DD63FDD8();
      *(v2 + 40) = v9;
      v4 = 0x67616E614D2D5845;
      v5 = 0xEA00000000007265;
LABEL_5:
      *(v2 + 48) = v4;
      *(v2 + 56) = v5;
      break;
  }

  return v2;
}

uint64_t sub_1DD538AD0(__int16 a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  switch(a1)
  {
    case 8:
    case 13:
    case 14:
    case 19:
    case 20:
    case 21:
    case 25:
    case 27:
    case 32:
    case 33:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89(v5);
      *(v1 + 16) = xmmword_1DD643F90;
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v6;
      break;
    case 15:
    case 16:
    case 28:
    case 29:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6(v2);
      *(v1 + 16) = xmmword_1DD643F80;
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v3;
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v4;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t static NLRelationlabel.makeCNLabelContactRelation(nlRelationLabel:)(uint64_t a1)
{

  v2 = sub_1DD532D04(a1);
  if (v2 == 376)
  {
    return 0;
  }

  v3 = v2;
  if (sub_1DD538ED0(v2) == 0x796C696D6166 && v4 == 0xE600000000000000)
  {
    goto LABEL_9;
  }

  v6 = sub_1DD640CD8();

  if (v6)
  {
    return 0;
  }

  v7 = sub_1DD534E3C(v3);
  if (!*(v7 + 16))
  {
LABEL_9:

    return 0;
  }

  v8 = *(v7 + 32);

  return v8;
}

uint64_t sub_1DD538D38(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD63FE58();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v6 = sub_1DD3B7F10();

  v8 = MEMORY[0x1E69E6158];
  v16 = OUTLINED_FUNCTION_4_61(v7, v9, v10, v11, v12, v13, v14, v15, MEMORY[0x1E69E6158], v6, v6, v6, 0, 0xE000000000000000, 32);
  v24 = OUTLINED_FUNCTION_0_108(v16, v17, v18, v19, v20, v21, v22, v23, v65);
  *(inited + 48) = v24;
  *(inited + 56) = v25;
  v32 = OUTLINED_FUNCTION_4_61(v24, v25, v26, v27, v28, v29, v30, v31, v66, v68, v6, v6, 45, 0xE100000000000000, 32);
  v40 = OUTLINED_FUNCTION_0_108(v32, v33, v34, v35, v36, v37, v38, v39, v8);
  *(inited + 64) = v40;
  *(inited + 72) = v41;
  v48 = OUTLINED_FUNCTION_4_61(v40, v41, v42, v43, v44, v45, v46, v47, v67, v6, v6, v6, 95, 0xE100000000000000, 32);
  v56 = OUTLINED_FUNCTION_0_108(v48, v49, v50, v51, v52, v53, v54, v55, v8);
  v58 = v57;

  v59 = 0;
  *(inited + 80) = v56;
  *(inited + 88) = v58;
  while (1)
  {
    v60 = v59 + 16;
    if (v59 == 64)
    {
      break;
    }

    v61 = *(inited + v59 + 32);

    v62 = sub_1DD532D04(v61);
    v59 = v60;
    if (v62 != 376)
    {

      v63 = sub_1DD532D04(v61);
      if (v63 != 376)
      {
        goto LABEL_7;
      }

      __break(1u);
      break;
    }
  }

  v63 = 376;
LABEL_7:
  swift_setDeallocating();
  sub_1DD46CAFC();
  return v63;
}

uint64_t sub_1DD538ED0(__int16 a1)
{
  result = 0x726567616E616DLL;
  switch(a1)
  {
    case 1:
      return 0x6E61747369737361;
    case 2:
      return 0x6573756F7073;
    case 3:
      return 0x796C696D6166;
    case 4:
      v3 = 0x656E74726170;
      return v3 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
    case 5:
      v5 = 0x6567616E616DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x5F72000000000000;
    case 6:
      v10 = 0x646E65697266;
      return v10 & 0xFFFFFFFFFFFFLL | 0x665F000000000000;
    case 7:
      return 0x746E65726170;
    case 8:
      return 0x726568746F6DLL;
    case 9:
      return 0x646E65697266;
    case 10:
      v7 = 0x747369737361;
      goto LABEL_33;
    case 11:
      v5 = 0x656E74726170;
      return v5 & 0xFFFFFFFFFFFFLL | 0x5F72000000000000;
    case 12:
      return 0x646E6162737568;
    case 13:
      v12 = 1752457574;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 14:
      v12 = 1953720691;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 15:
      v33 = 0x2D7265646C6FLL;
      return v33 & 0xFFFFFFFFFFFFLL | 0x6973000000000000;
    case 16:
      return 0x2D7265676E756F79;
    case 17:
      return 0x646C696863;
    case 18:
      return 0x6C69686370657473;
    case 19:
      return 7237491;
    case 20:
    case 106:
      return 0x7265746867756164;
    case 21:
      return 0x665F646C696863;
    case 22:
      v10 = 0x6573756F7073;
      return v10 & 0xFFFFFFFFFFFFLL | 0x665F000000000000;
    case 23:
      return 1701210487;
    case 24:
      return 0x676E696C626973;
    case 25:
      return 0x2D7265676E756F79;
    case 26:
    case 160:
    case 163:
    case 164:
    case 169:
    case 230:
    case 234:
    case 288:
    case 367:
      OUTLINED_FUNCTION_5_64();
      return v29 - 10;
    case 27:
      v43 = 1953460834;
      goto LABEL_131;
    case 28:
      v15 = 0x2D7265646C6FLL;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7262000000000000;
    case 29:
      return 0x2D7265676E756F79;
    case 30:
      return 0x756761656C6C6F63;
    case 31:
      v43 = 1667327348;
LABEL_131:
      v3 = v43 & 0xFFFF0000FFFFFFFFLL | 0x656800000000;
      return v3 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
    case 32:
      return 0x207265676E756F79;
    case 33:
      return 0x6973207265646C65;
    case 34:
      return 0x747365676E756F79;
    case 35:
    case 65:
    case 75:
    case 76:
    case 77:
    case 103:
    case 249:
    case 306:
    case 373:
      OUTLINED_FUNCTION_5_64();
      return v49 - 19;
    case 36:
      return 0x207265676E756F79;
    case 37:
      return 0x207265676E756F79;
    case 38:
      return 0x7320747365646C65;
    case 39:
      return 0x6220747365646C65;
    case 40:
      v33 = 0x207265646C65;
      return v33 & 0xFFFFFFFFFFFFLL | 0x6973000000000000;
    case 41:
      v15 = 0x207265646C65;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7262000000000000;
    case 42:
    case 67:
    case 83:
    case 158:
    case 161:
    case 167:
    case 192:
    case 251:
    case 252:
    case 260:
    case 308:
    case 309:
    case 375:
      OUTLINED_FUNCTION_5_64();
      return v38 - 16;
    case 43:
    case 59:
    case 60:
    case 61:
    case 78:
    case 104:
    case 214:
    case 328:
      OUTLINED_FUNCTION_5_64();
      return v53 - 18;
    case 44:
    case 80:
    case 92:
    case 193:
    case 287:
    case 320:
    case 330:
      OUTLINED_FUNCTION_5_64();
      return v40 - 15;
    case 45:
    case 281:
    case 296:
      OUTLINED_FUNCTION_5_64();
      return v19 - 17;
    case 46:
      return 0x6972665F656C616DLL;
    case 47:
      v10 = 0x656C616D6566;
      return v10 & 0xFFFFFFFFFFFFLL | 0x665F000000000000;
    case 48:
      v16 = 0x705F656C616DLL;
      return v16 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 49:
      return 0x705F656C616D6566;
    case 50:
      v9 = 0x72666C726967;
      return v9 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
    case 51:
      return 0x6E65697266796F62;
    case 52:
      v16 = 0x70646E617267;
      return v16 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 53:
      v13 = 0x6D646E617267;
      goto LABEL_108;
    case 54:
    case 55:
    case 57:
    case 58:
    case 70:
    case 73:
    case 85:
    case 121:
    case 133:
    case 170:
      OUTLINED_FUNCTION_5_64();
      return v52 - 9;
    case 56:
      return 0x746166646E617267;
    case 62:
      return 0x696863646E617267;
    case 63:
      return 0x756164646E617267;
    case 64:
      return 0x6E6F73646E617267;
    case 66:
      return 0x7267207461657267;
    case 68:
      v4 = 0x746E65726170;
      return v4 & 0xFFFFFFFFFFFFLL | 0x692D000000000000;
    case 69:
      return 0x692D726568746F6DLL;
    case 71:
    case 74:
    case 86:
    case 111:
    case 173:
    case 176:
    case 178:
    case 180:
    case 182:
    case 200:
      OUTLINED_FUNCTION_5_64();
      return v34 - 6;
    case 72:
      v6 = 1752457574;
      goto LABEL_49;
    case 79:
    case 91:
    case 188:
    case 189:
    case 247:
    case 248:
    case 262:
    case 263:
    case 293:
    case 329:
      OUTLINED_FUNCTION_5_64();
      return v41 - 13;
    case 81:
      v6 = 1953720691;
LABEL_49:
      v4 = v6 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      return v4 & 0xFFFFFFFFFFFFLL | 0x692D000000000000;
    case 82:
    case 151:
    case 172:
    case 175:
    case 179:
    case 212:
    case 250:
    case 283:
    case 295:
    case 307:
    case 355:
    case 356:
    case 374:
      OUTLINED_FUNCTION_5_64();
      return v36 - 14;
    case 84:
    case 95:
    case 215:
    case 218:
      OUTLINED_FUNCTION_5_64();
      return v25 - 7;
    case 87:
    case 112:
    case 127:
    case 139:
    case 159:
    case 162:
    case 168:
    case 174:
    case 177:
    case 181:
    case 209:
    case 223:
    case 271:
    case 274:
    case 342:
    case 360:
      OUTLINED_FUNCTION_5_64();
      return v44 - 8;
    case 88:
      return 0xD000000000000023;
    case 89:
    case 115:
    case 123:
    case 124:
    case 135:
    case 136:
    case 144:
    case 166:
    case 197:
    case 217:
    case 233:
    case 238:
    case 243:
    case 244:
    case 245:
    case 246:
    case 302:
    case 316:
    case 317:
    case 366:
    case 370:
      OUTLINED_FUNCTION_5_64();
      return v46 - 3;
    case 90:
      return 0x2D726568746F7262;
    case 93:
    case 96:
    case 201:
      OUTLINED_FUNCTION_5_64();
      return v51 - 5;
    case 94:
    case 118:
    case 130:
    case 152:
    case 155:
    case 211:
    case 232:
    case 235:
    case 368:
      OUTLINED_FUNCTION_5_64();
      return v35 - 4;
    case 97:
    case 117:
    case 126:
    case 138:
    case 229:
    case 254:
    case 256:
    case 365:
      OUTLINED_FUNCTION_5_64();
      return v30 + 3;
    case 98:
    case 100:
    case 101:
    case 253:
    case 255:
    case 311:
    case 312:
    case 345:
      OUTLINED_FUNCTION_5_64();
      return v47 + 1;
    case 99:
    case 114:
    case 129:
    case 141:
    case 198:
    case 221:
    case 225:
    case 231:
    case 236:
    case 273:
    case 275:
    case 319:
    case 324:
    case 325:
    case 340:
    case 343:
    case 358:
    case 362:
    case 369:
      OUTLINED_FUNCTION_5_64();
      return v48 - 2;
    case 102:
    case 119:
    case 131:
    case 153:
    case 156:
    case 216:
    case 239:
    case 303:
    case 371:
      OUTLINED_FUNCTION_5_64();
      return v39 | 4;
    case 105:
      return 0x6E692D646C696863;
    case 107:
      return 0x6C2D6E692D6E6F73;
    case 108:
      return 0x6E6973756F63;
    case 109:
      return 0x756F635F656C616DLL;
    case 110:
      return 0x635F656C616D6566;
    case 113:
      return 0xD000000000000023;
    case 116:
    case 125:
    case 137:
    case 228:
    case 270:
    case 338:
    case 364:
      OUTLINED_FUNCTION_5_64();
      return v50 + 5;
    case 120:
    case 132:
    case 143:
    case 154:
    case 157:
    case 183:
    case 264:
    case 266:
    case 267:
    case 269:
    case 331:
    case 333:
    case 334:
    case 336:
      OUTLINED_FUNCTION_5_64();
      return v45 + 2;
    case 122:
    case 134:
    case 142:
    case 165:
    case 237:
    case 301:
    case 313:
    case 315:
    case 341:
    case 346:
    case 351:
    case 352:
    case 353:
      OUTLINED_FUNCTION_5_64();
      return v37 - 1;
    case 128:
      return 0xD000000000000023;
    case 140:
      return 0x1000000000000025;
    case 145:
      OUTLINED_FUNCTION_5_64();
      return v18 + 23;
    case 146:
      OUTLINED_FUNCTION_5_64();
      return v42 + 21;
    case 147:
      OUTLINED_FUNCTION_5_64();
      return v11 + 33;
    case 148:
      OUTLINED_FUNCTION_5_64();
      return v14 + 31;
    case 149:
      return 0x5F73746E65726170;
    case 150:
    case 258:
    case 282:
    case 289:
    case 290:
    case 297:
    case 326:
    case 327:
    case 354:
      OUTLINED_FUNCTION_5_64();
      return v26 - 12;
    case 171:
      return 0x6E7561646E617267;
    case 184:
      return 0xD000000000000023;
    case 185:
      return 0x636E75646E617267;
    case 186:
      return 0x73676E696C626973;
    case 187:
      return 0x726F5F656365696ELL;
    case 190:
      OUTLINED_FUNCTION_5_64();
      return v17 + 14;
    case 191:
      OUTLINED_FUNCTION_5_64();
      return v8 + 18;
    case 194:
    case 241:
    case 259:
    case 304:
    case 323:
    case 372:
      OUTLINED_FUNCTION_5_64();
      return v28 + 10;
    case 195:
    case 277:
    case 347:
      OUTLINED_FUNCTION_5_64();
      return v21 + 6;
    case 196:
      v9 = 0x6E646E617267;
      return v9 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
    case 199:
      return 0x70656E646E617267;
    case 202:
      return 0x6572617070657473;
    case 203:
      v20 = 0x616670657473;
      goto LABEL_99;
    case 204:
      v20 = 0x6F6D70657473;
LABEL_99:
      result = v20 & 0xFFFFFFFFFFFFLL | 0x6874000000000000;
      break;
    case 205:
      result = 0x6E6F7370657473;
      break;
    case 206:
      result = 0x6775616470657473;
      break;
    case 207:
      v13 = 0x726270657473;
LABEL_108:
      result = v13 & 0xFFFFFFFFFFFFLL | 0x746F000000000000;
      break;
    case 208:
      result = 0x7473697370657473;
      break;
    case 210:
      result = 0x100000000000001DLL;
      break;
    case 213:
    case 261:
    case 286:
      OUTLINED_FUNCTION_5_64();
      result = v31 - 11;
      break;
    case 219:
      result = 0x656C636E75;
      break;
    case 220:
      result = 0xD000000000000023;
      break;
    case 222:
      result = 0xD000000000000023;
      break;
    case 224:
      result = 0xD000000000000023;
      break;
    case 226:
      result = 0xD000000000000023;
      break;
    case 227:
      result = 1953396065;
      break;
    case 240:
    case 337:
      OUTLINED_FUNCTION_5_64();
      result = v22 + 7;
      break;
    case 242:
    case 278:
    case 305:
    case 348:
      OUTLINED_FUNCTION_5_64();
      result = v32 + 9;
      break;
    case 257:
      result = 0x6A75675F746E7561;
      break;
    case 265:
    case 268:
    case 272:
    case 276:
    case 299:
    case 318:
    case 332:
    case 335:
    case 339:
    case 344:
    case 357:
    case 359:
    case 361:
    case 363:
      result = 0xD000000000000023;
      break;
    case 279:
    case 294:
    case 349:
      OUTLINED_FUNCTION_5_64();
      result = v23 | 0xC;
      break;
    case 280:
    case 322:
    case 350:
      OUTLINED_FUNCTION_5_64();
      result = v27 + 11;
      break;
    case 284:
      result = 0x616D5F656C636E75;
      break;
    case 285:
      result = 0x6C616D5F746E7561;
      break;
    case 291:
      result = 0x616B5F656C636E75;
      break;
    case 292:
      v7 = 0x6B5F746E7561;
LABEL_33:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x6E61000000000000;
      break;
    case 298:
      result = 0x61745F656C636E75;
      break;
    case 300:
      result = 0x6D61745F746E7561;
      break;
    case 310:
      result = 0x65745F656C636E75;
      break;
    case 314:
      result = 0x6C65745F746E7561;
      break;
    case 321:
      OUTLINED_FUNCTION_5_64();
      result = v24 | 8;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD53A9B0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1DD532D04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD53A9E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD538ED0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRelationlabel(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for NLSemanticRelationLabel(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE89)
  {
    if (a2 + 375 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 375 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 376;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x178;
  v5 = v6 - 376;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}