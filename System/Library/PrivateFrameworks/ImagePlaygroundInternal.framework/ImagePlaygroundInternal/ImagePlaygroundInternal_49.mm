void *sub_1D27CEB98(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10, &qword_1D2881580);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1D27CEC20(uint64_t *a1)
{
  v2 = *(type metadata accessor for ConversationContextItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D286FD8C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D27CECC8(v5);
  *a1 = v3;
}

void sub_1D27CECC8(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D28795B8();
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
        type metadata accessor for ConversationContextItem(0);
        v6 = sub_1D2878468();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ConversationContextItem(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1D27CF2BC(v8, v9, a1, v4);
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
    sub_1D27CEDF4(0, v2, 1, a1);
  }
}

void sub_1D27CEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v43 - v11;
  v12 = sub_1D2871798();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v43 - v16;
  v53 = type metadata accessor for ConversationContextItem(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v43 - v22;
  v45 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v25 = (v13 + 48);
    v54 = (v13 + 32);
    v26 = (v13 + 8);
    v27 = v23 + v24 * (a3 - 1);
    v50 = -v24;
    v51 = v23;
    v28 = a1 - a3;
    v44 = v24;
    v29 = v23 + v24 * a3;
LABEL_5:
    v48 = v27;
    v49 = a3;
    v46 = v29;
    v47 = v28;
    v30 = v57;
    while (1)
    {
      v31 = v58;
      sub_1D27D2F44(v29, v58);
      sub_1D27D2F44(v27, v60);
      sub_1D22BD1D0(v31, v30, &unk_1EC6DAE40, &unk_1D287EC70);
      v32 = *v25;
      if ((*v25)(v30, 1, v12) == 1)
      {
        sub_1D2871778();
        v33 = v32(v30, 1, v12);
        v34 = v56;
        if (v33 != 1)
        {
          sub_1D22BD238(v57, &unk_1EC6DAE40, &unk_1D287EC70);
        }
      }

      else
      {
        (*v54)(v59, v30, v12);
        v34 = v56;
      }

      sub_1D22BD1D0(v60, v34, &unk_1EC6DAE40, &unk_1D287EC70);
      if (v32(v34, 1, v12) == 1)
      {
        v35 = v55;
        sub_1D2871778();
        if (v32(v34, 1, v12) != 1)
        {
          sub_1D22BD238(v34, &unk_1EC6DAE40, &unk_1D287EC70);
        }
      }

      else
      {
        v35 = v55;
        (*v54)(v55, v34, v12);
      }

      v36 = v59;
      v37 = sub_1D2871748();
      v38 = v35;
      v39 = v37;
      v40 = *v26;
      (*v26)(v38, v12);
      v40(v36, v12);
      sub_1D27D2FA8(v60);
      sub_1D27D2FA8(v58);
      v30 = v57;
      if ((v39 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v27 = v48 + v44;
        v28 = v47 - 1;
        v29 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v41 = v52;
      sub_1D27D30F0(v29, v52);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D27D30F0(v41, v27);
      v27 += v50;
      v29 += v50;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D27CF2BC(char **a1, uint64_t a2, unint64_t *a3, char *a4)
{
  v145 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v168 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v141 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v141 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v141 - v15;
  v17 = sub_1D2871798();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v141 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v141 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v161 = &v141 - v26;
  v166 = type metadata accessor for ConversationContextItem(0);
  v159 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v149 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v141 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v175 = &v141 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v141 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v141 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v160 = &v141 - v38;
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  v43 = a3;
  if (a3[1] < 1)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v47 = v147;
    v48 = v43;
LABEL_114:
    a4 = *v145;
    if (!*v145)
    {
      goto LABEL_155;
    }

    v18 = v46;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v134 = v18;
LABEL_117:
      v176 = v134;
      v18 = *(v134 + 2);
      if (v18 >= 2)
      {
        do
        {
          v135 = *v48;
          if (!*v48)
          {
            goto LABEL_153;
          }

          v136 = v48;
          v48 = (v18 - 1);
          v137 = *&v134[16 * v18];
          v138 = v134;
          v139 = *&v134[16 * v18 + 24];
          sub_1D27D01DC(&v135[*(v159 + 72) * v137], &v135[*(v159 + 72) * *&v134[16 * v18 + 16]], &v135[*(v159 + 72) * v139], a4);
          if (v47)
          {
            break;
          }

          if (v139 < v137)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_1D269163C(v138);
          }

          if (v18 - 2 >= *(v138 + 2))
          {
            goto LABEL_143;
          }

          v140 = &v138[16 * v18];
          *v140 = v137;
          *(v140 + 1) = v139;
          v176 = v138;
          sub_1D26915B0(v48);
          v134 = v176;
          v18 = *(v176 + 2);
          v48 = v136;
        }

        while (v18 > 1);
      }

LABEL_125:

      return;
    }

LABEL_149:
    v134 = sub_1D269163C(v18);
    goto LABEL_117;
  }

  v44 = a3[1];
  v142 = &v141 - v41;
  v143 = v42;
  v172 = v10;
  v141 = a4;
  v45 = 0;
  v171 = (v18 + 48);
  v170 = (v18 + 32);
  v169 = (v18 + 8);
  v46 = MEMORY[0x1E69E7CC0];
  v157 = v16;
  v158 = v13;
  v167 = v20;
  v156 = v36;
  v47 = v147;
  v48 = v43;
  v49 = v44;
  v146 = v43;
  while (1)
  {
    v50 = v45;
    v150 = v46;
    if ((v45 + 1) >= v49)
    {
      v49 = v45 + 1;
    }

    else
    {
      v51 = *v48;
      v52 = *(v159 + 72);
      v53 = v45;
      v54 = &v51[v52 * (v45 + 1)];
      v147 = v47;
      v55 = v142;
      sub_1D27D2F44(v54, v142);
      v56 = v143;
      sub_1D27D2F44(&v51[v52 * v53], v143);
      v57 = v147;
      LODWORD(v164) = sub_1D27CC0B4(v55, v56);
      v147 = v57;
      if (v57)
      {
        sub_1D27D2FA8(v56);
        sub_1D27D2FA8(v55);

        return;
      }

      sub_1D27D2FA8(v56);
      sub_1D27D2FA8(v55);
      v144 = v53;
      a4 = (v53 + 2);
      v18 = &v51[v52 * (v53 + 2)];
      v162 = v49;
      v163 = v52;
      while (v49 != a4)
      {
        v62 = v160;
        sub_1D27D2F44(v18, v160);
        sub_1D27D2F44(v54, v36);
        v63 = v157;
        sub_1D22BD1D0(v62, v157, &unk_1EC6DAE40, &unk_1D287EC70);
        v64 = *v171;
        if ((*v171)(v63, 1, v17) == 1)
        {
          sub_1D2871778();
          if (v64(v63, 1, v17) != 1)
          {
            sub_1D22BD238(v157, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        else
        {
          (*v170)(v161, v63, v17);
        }

        v65 = v158;
        sub_1D22BD1D0(v36, v158, &unk_1EC6DAE40, &unk_1D287EC70);
        if (v64(v65, 1, v17) == 1)
        {
          v58 = v155;
          sub_1D2871778();
          if (v64(v65, 1, v17) != 1)
          {
            sub_1D22BD238(v158, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        else
        {
          v58 = v155;
          (*v170)(v155, v65, v17);
        }

        v59 = v161;
        v60 = sub_1D2871748();
        v61 = *v169;
        (*v169)(v58, v17);
        v61(v59, v17);
        v36 = v156;
        sub_1D27D2FA8(v156);
        sub_1D27D2FA8(v160);
        ++a4;
        v49 = v162;
        v18 += v163;
        v54 += v163;
        if ((v164 ^ v60))
        {
          v49 = a4 - 1;
          break;
        }
      }

      v47 = v147;
      v48 = v146;
      v50 = v144;
      if (v164)
      {
        if (v49 < v144)
        {
          goto LABEL_148;
        }

        if (v144 < v49)
        {
          v66 = v163;
          a4 = (v163 * (v49 - 1));
          v67 = v49 * v163;
          v162 = v49;
          v68 = v49;
          v69 = v144;
          v70 = v144 * v163;
          do
          {
            if (v69 != --v68)
            {
              v18 = *v146;
              if (!*v146)
              {
                goto LABEL_152;
              }

              sub_1D27D30F0(v18 + v70, v149);
              if (v70 < a4 || v18 + v70 >= v18 + v67)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v70 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D27D30F0(v149, &a4[v18]);
            }

            ++v69;
            a4 -= v66;
            v67 -= v66;
            v70 += v66;
          }

          while (v69 < v68);
          v47 = v147;
          v48 = v146;
          v36 = v156;
          v50 = v144;
          v49 = v162;
        }
      }
    }

    v71 = v48[1];
    if (v49 >= v71)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v49, v50))
    {
      goto LABEL_145;
    }

    if (v49 - v50 >= v141)
    {
LABEL_42:
      a4 = v49;
      if (v49 < v50)
      {
        goto LABEL_144;
      }

      goto LABEL_43;
    }

    if (__OFADD__(v50, v141))
    {
      goto LABEL_146;
    }

    if (&v141[v50] >= v71)
    {
      a4 = v48[1];
    }

    else
    {
      a4 = &v141[v50];
    }

    if (a4 < v50)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    if (v49 == a4)
    {
      goto LABEL_42;
    }

    v147 = v47;
    v117 = *v48;
    v118 = *(v159 + 72);
    v119 = &(*v48)[v118 * (v49 - 1)];
    v163 = -v118;
    v144 = v50;
    v120 = v50 - v49;
    v164 = v117;
    v148 = v118;
    v18 = &v117[v49 * v118];
    v121 = v168;
    v151 = a4;
LABEL_95:
    v162 = v49;
    v152 = v18;
    v153 = v120;
    v154 = v119;
    v122 = v119;
LABEL_96:
    v123 = v173;
    sub_1D27D2F44(v18, v173);
    sub_1D27D2F44(v122, v175);
    v124 = v172;
    sub_1D22BD1D0(v123, v172, &unk_1EC6DAE40, &unk_1D287EC70);
    v125 = *v171;
    if ((*v171)(v124, 1, v17) == 1)
    {
      sub_1D2871778();
      if (v125(v124, 1, v17) != 1)
      {
        sub_1D22BD238(v172, &unk_1EC6DAE40, &unk_1D287EC70);
      }
    }

    else
    {
      (*v170)(v174, v124, v17);
    }

    sub_1D22BD1D0(v175, v121, &unk_1EC6DAE40, &unk_1D287EC70);
    v126 = v125(v121, 1, v17);
    v127 = v167;
    if (v126 == 1)
    {
      sub_1D2871778();
      v128 = v17;
      if (v125(v121, 1, v17) != 1)
      {
        sub_1D22BD238(v121, &unk_1EC6DAE40, &unk_1D287EC70);
      }
    }

    else
    {
      (*v170)(v167, v121, v17);
      v128 = v17;
    }

    v129 = v174;
    v130 = sub_1D2871748();
    v131 = *v169;
    (*v169)(v127, v128);
    v131(v129, v128);
    sub_1D27D2FA8(v175);
    sub_1D27D2FA8(v173);
    if (v130)
    {
      break;
    }

    v121 = v168;
    v17 = v128;
LABEL_94:
    v49 = v162 + 1;
    v119 = v154 + v148;
    v120 = v153 - 1;
    v18 = v152 + v148;
    a4 = v151;
    if (v162 + 1 != v151)
    {
      goto LABEL_95;
    }

    v47 = v147;
    v48 = v146;
    v36 = v156;
    v50 = v144;
    if (v151 < v144)
    {
      goto LABEL_144;
    }

LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v46 = v150;
    }

    else
    {
      v46 = sub_1D2691650(0, *(v150 + 2) + 1, 1, v150);
    }

    a4 = *(v46 + 2);
    v73 = *(v46 + 3);
    v18 = (a4 + 1);
    if (a4 >= v73 >> 1)
    {
      v46 = sub_1D2691650((v73 > 1), (a4 + 1), 1, v46);
    }

    *(v46 + 2) = v18;
    v74 = &v46[16 * a4];
    v75 = v151;
    *(v74 + 4) = v50;
    *(v74 + 5) = v75;
    v164 = *v145;
    if (!v164)
    {
      goto LABEL_154;
    }

    if (a4)
    {
      while (2)
      {
        v76 = v18 - 1;
        if (v18 >= 4)
        {
          v81 = &v46[16 * v18 + 32];
          v82 = *(v81 - 64);
          v83 = *(v81 - 56);
          v87 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          if (v87)
          {
            goto LABEL_131;
          }

          v86 = *(v81 - 48);
          v85 = *(v81 - 40);
          v87 = __OFSUB__(v85, v86);
          v79 = v85 - v86;
          v80 = v87;
          if (v87)
          {
            goto LABEL_132;
          }

          v88 = &v46[16 * v18];
          v90 = *v88;
          v89 = *(v88 + 1);
          v87 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v87)
          {
            goto LABEL_134;
          }

          v87 = __OFADD__(v79, v91);
          v92 = v79 + v91;
          if (v87)
          {
            goto LABEL_137;
          }

          if (v92 >= v84)
          {
            v110 = &v46[16 * v76 + 32];
            v112 = *v110;
            v111 = *(v110 + 1);
            v87 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v87)
            {
              goto LABEL_141;
            }

            if (v79 < v113)
            {
              v76 = v18 - 2;
            }
          }

          else
          {
LABEL_62:
            if (v80)
            {
              goto LABEL_133;
            }

            v93 = &v46[16 * v18];
            v95 = *v93;
            v94 = *(v93 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_136;
            }

            v99 = &v46[16 * v76 + 32];
            v101 = *v99;
            v100 = *(v99 + 1);
            v87 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v87)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v97, v102))
            {
              goto LABEL_140;
            }

            if (v97 + v102 < v79)
            {
              goto LABEL_76;
            }

            if (v79 < v102)
            {
              v76 = v18 - 2;
            }
          }
        }

        else
        {
          if (v18 == 3)
          {
            v77 = *(v46 + 4);
            v78 = *(v46 + 5);
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
            goto LABEL_62;
          }

          v103 = &v46[16 * v18];
          v105 = *v103;
          v104 = *(v103 + 1);
          v87 = __OFSUB__(v104, v105);
          v97 = v104 - v105;
          v98 = v87;
LABEL_76:
          if (v98)
          {
            goto LABEL_135;
          }

          v106 = &v46[16 * v76];
          v108 = *(v106 + 4);
          v107 = *(v106 + 5);
          v87 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v87)
          {
            goto LABEL_138;
          }

          if (v109 < v97)
          {
            break;
          }
        }

        a4 = (v76 - 1);
        if (v76 - 1 >= v18)
        {
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
          goto LABEL_147;
        }

        if (!*v48)
        {
          goto LABEL_151;
        }

        v114 = v46;
        v18 = *&v46[16 * a4 + 32];
        v115 = *&v46[16 * v76 + 40];
        sub_1D27D01DC(&(*v48)[*(v159 + 72) * v18], &(*v48)[*(v159 + 72) * *&v46[16 * v76 + 32]], &(*v48)[*(v159 + 72) * v115], v164);
        if (v47)
        {
          goto LABEL_125;
        }

        if (v115 < v18)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_1D269163C(v114);
        }

        if (a4 >= *(v114 + 2))
        {
          goto LABEL_130;
        }

        v116 = &v114[16 * a4];
        *(v116 + 4) = v18;
        *(v116 + 5) = v115;
        v176 = v114;
        sub_1D26915B0(v76);
        v46 = v176;
        v18 = *(v176 + 2);
        if (v18 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v49 = v48[1];
    v45 = v151;
    if (v151 >= v49)
    {
      goto LABEL_114;
    }
  }

  if (v164)
  {
    v132 = v165;
    sub_1D27D30F0(v18, v165);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D27D30F0(v132, v122);
    v122 += v163;
    v18 += v163;
    v133 = __CFADD__(v120++, 1);
    v121 = v168;
    v17 = v128;
    if (v133)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

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
}

void sub_1D27D01DC(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = (&v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v86 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v86 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = sub_1D2871798();
  v90 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v100 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v86 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v86 - v24;
  v99 = type metadata accessor for ConversationContextItem(0);
  MEMORY[0x1EEE9AC00](v99);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v98 = &v86 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v103 = &v86 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v101 = &v86 - v32;
  v34 = *(v33 + 72);
  if (!v34)
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return;
  }

  v91 = a1;
  if (a2 - a1 == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_76;
  }

  v35 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_77;
  }

  v36 = (a2 - a1) / v34;
  v106 = v91;
  v105 = a4;
  if (v36 >= v35 / v34)
  {
    v39 = v35 / v34 * v34;
    if (a4 < a2 || &a2[v39] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = &a4[v39];
    if (v39 >= 1)
    {
      v96 = a4;
      v60 = -v34;
      v61 = v90;
      v102 = v90 + 48;
      v103 = -v34;
      v89 = (v90 + 32);
      v90 = v26;
      v88 = (v61 + 8);
      v62 = &a4[v39];
      v63 = v94;
      do
      {
        v87 = v59;
        v64 = a2;
        v65 = &a2[v60];
        v97 = a2;
        while (1)
        {
          if (v64 <= v91)
          {
            v106 = v64;
            v104 = v87;
            goto LABEL_74;
          }

          v67 = a3;
          v95 = v59;
          v101 = &v62[v60];
          v68 = v98;
          sub_1D27D2F44(&v62[v60], v98);
          v69 = v26;
          sub_1D27D2F44(v65, v26);
          sub_1D22BD1D0(v68, v63, &unk_1EC6DAE40, &unk_1D287EC70);
          v70 = *v102;
          if ((*v102)(v63, 1, v17) == 1)
          {
            sub_1D2871778();
            v71 = v70(v63, 1, v17);
            v72 = v93;
            if (v71 != 1)
            {
              sub_1D22BD238(v63, &unk_1EC6DAE40, &unk_1D287EC70);
            }
          }

          else
          {
            (*v89)(v100, v63, v17);
            v72 = v93;
          }

          sub_1D22BD1D0(v69, v72, &unk_1EC6DAE40, &unk_1D287EC70);
          if (v70(v72, 1, v17) == 1)
          {
            v73 = v92;
            sub_1D2871778();
            v74 = v70(v72, 1, v17) == 1;
            v75 = v72;
            v76 = v17;
            if (!v74)
            {
              sub_1D22BD238(v75, &unk_1EC6DAE40, &unk_1D287EC70);
            }
          }

          else
          {
            v73 = v92;
            (*v89)(v92, v72, v17);
            v76 = v17;
          }

          a3 = (v67 + v103);
          v77 = v100;
          v78 = sub_1D2871748();
          v79 = v73;
          v80 = v78;
          v81 = *v88;
          (*v88)(v79, v76);
          v82 = v77;
          v83 = v76;
          v81(v82, v76);
          v26 = v90;
          sub_1D27D2FA8(v90);
          sub_1D27D2FA8(v98);
          if (v80)
          {
            break;
          }

          v84 = v101;
          v59 = v101;
          if (v67 < v62 || a3 >= v62)
          {
            v66 = v101;
            swift_arrayInitWithTakeFrontToBack();
            v59 = v66;
            v63 = v94;
            v17 = v83;
          }

          else
          {
            v63 = v94;
            v17 = v83;
            if (v67 != v62)
            {
              v85 = v101;
              swift_arrayInitWithTakeBackToFront();
              v59 = v85;
            }
          }

          v62 = v59;
          v64 = v97;
          v60 = v103;
          if (v84 <= v96)
          {
            a2 = v97;
            goto LABEL_73;
          }
        }

        if (v67 < v97 || a3 >= v97)
        {
          a2 = v65;
          swift_arrayInitWithTakeFrontToBack();
          v63 = v94;
          v17 = v83;
        }

        else
        {
          v74 = v67 == v97;
          a2 = v65;
          v63 = v94;
          v17 = v83;
          if (!v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = v95;
        v60 = v103;
      }

      while (v62 > v96);
    }

LABEL_73:
    v106 = a2;
    v104 = v59;
  }

  else
  {
    v37 = v36 * v34;
    v38 = v91;
    if (a4 < v91 || &v91[v37] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v91)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v98 = &a4[v37];
    v104 = &a4[v37];
    if (v37 >= 1 && a2 < a3)
    {
      v41 = (v90 + 48);
      v92 = v90 + 8;
      v93 = (v90 + 32);
      v94 = v34;
      v95 = a3;
      v100 = v90 + 48;
      do
      {
        v42 = v101;
        sub_1D27D2F44(a2, v101);
        sub_1D27D2F44(a4, v103);
        sub_1D22BD1D0(v42, v16, &unk_1EC6DAE40, &unk_1D287EC70);
        v43 = *v41;
        if ((*v41)(v16, 1, v17) == 1)
        {
          sub_1D2871778();
          if (v43(v16, 1, v17) != 1)
          {
            sub_1D22BD238(v16, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        else
        {
          (*v93)(v102, v16, v17);
        }

        v44 = v16;
        v45 = a4;
        v46 = v97;
        sub_1D22BD1D0(v103, v97, &unk_1EC6DAE40, &unk_1D287EC70);
        v47 = a2;
        if (v43(v46, 1, v17) == 1)
        {
          v48 = v96;
          sub_1D2871778();
          v49 = v17;
          if (v43(v46, 1, v17) != 1)
          {
            sub_1D22BD238(v46, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        else
        {
          v48 = v96;
          (*v93)(v96, v46, v17);
          v49 = v17;
        }

        v50 = v102;
        v51 = sub_1D2871748();
        v52 = v48;
        v53 = *v92;
        (*v92)(v52, v49);
        v54 = v50;
        v55 = v49;
        v53(v54, v49);
        sub_1D27D2FA8(v103);
        sub_1D27D2FA8(v101);
        v16 = v44;
        if (v51)
        {
          v56 = v47;
          v57 = v94;
          a2 = &v94[v47];
          if (v38 < v47 || v38 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a4 = v45;
            v17 = v55;
          }

          else
          {
            a4 = v45;
            v17 = v55;
            if (v38 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v57 = v94;
          v58 = &v94[v45];
          a2 = v47;
          if (v38 < v45 || v38 >= v58)
          {
            swift_arrayInitWithTakeFrontToBack();
            v17 = v55;
          }

          else
          {
            v17 = v55;
            if (v38 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v105 = v58;
          a4 = &v57[v45];
        }

        v41 = v100;
        v38 = &v57[v38];
        v106 = v38;
      }

      while (a4 < v98 && a2 < v95);
    }
  }

LABEL_74:
  sub_1D2396684(&v106, &v105, &v104);
}

void sub_1D27D0C14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v55 = a2;
  v63 = type metadata accessor for ConversationContextItem(0);
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2128, &unk_1D28A7598);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v51 - v16;
  v18 = a4 >> 1;
  v56 = a3;
  v19 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v53 = v15;
  v20 = *v4;
  v21 = *(*v4 + 16);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v59 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v20;
  if (isUniquelyReferenced_nonNull_native)
  {
    v24 = *(v20 + 24) >> 1;
    if (v24 >= v22)
    {
      goto LABEL_12;
    }

    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }
  }

  else if (v21 <= v22)
  {
    v25 = v21 + v19;
  }

  else
  {
    v25 = v21;
  }

  sub_1D23D8C6C(isUniquelyReferenced_nonNull_native, v25, 1);
  v20 = *v4;
  v24 = *(*v4 + 24) >> 1;
LABEL_12:
  v54 = v20;
  v26 = v24 - *(v20 + 16);
  if (v59 == v56)
  {
    if (v19 <= 0)
    {
      v27 = v56;
      if (v26)
      {
        goto LABEL_41;
      }

LABEL_20:
      v51[1] = a1;
      v32 = *(v54 + 16);
      v33 = v60;
      v34 = v63;
      v57 = *(v60 + 56);
      v58 = v60 + 56;
      v57(v17, 1, 1, v63);
      v35 = v53;
      sub_1D22BD1D0(v17, v53, &qword_1EC6E2128, &unk_1D28A7598);
      v61 = *(v33 + 48);
      v62 = v33 + 48;
      if (v61(v35, 1, v34) == 1)
      {
        v36 = v54;
      }

      else
      {
        v36 = v54;
        v52 = v4;
        do
        {
          sub_1D22BD238(v35, &qword_1EC6E2128, &unk_1D28A7598);
          v39 = *(v36 + 24);
          if (v32 + 1 > (v39 >> 1))
          {
            sub_1D23D8C6C((v39 > 1), v32 + 1, 1);
          }

          v40 = *v4;
          v41 = *(*v4 + 24);
          v42 = *(v60 + 80);
          sub_1D22BD1D0(v17, v12, &qword_1EC6E2128, &unk_1D28A7598);
          v43 = v61(v12, 1, v63);
          v54 = v40;
          if (v43 != 1)
          {
            v44 = v40 + ((v42 + 32) & ~v42);
            if (v32 <= (v41 >> 1))
            {
              v37 = v41 >> 1;
            }

            else
            {
              v37 = v32;
            }

            do
            {
              sub_1D27D30F0(v12, v9);
              if (v37 == v32)
              {
                sub_1D27D2FA8(v9);
                v32 = v37;
                goto LABEL_25;
              }

              sub_1D22BD238(v17, &qword_1EC6E2128, &unk_1D28A7598);
              v48 = v9;
              v49 = *(v60 + 72);
              v50 = v48;
              sub_1D27D30F0(v48, v44 + v49 * v32);
              if (v27 == v59)
              {
                v45 = 1;
                v27 = v59;
              }

              else
              {
                if (v27 < v56 || v27 >= v59)
                {
                  __break(1u);
                  goto LABEL_44;
                }

                sub_1D27D2F44(v55 + v49 * v27, v17);
                v45 = 0;
                ++v27;
              }

              v46 = v63;
              v57(v17, v45, 1, v63);
              sub_1D22BD1D0(v17, v12, &qword_1EC6E2128, &unk_1D28A7598);
              v47 = v61(v12, 1, v46);
              ++v32;
              v9 = v50;
            }

            while (v47 != 1);
          }

          sub_1D22BD238(v12, &qword_1EC6E2128, &unk_1D28A7598);
          v37 = v32;
LABEL_25:
          v35 = v53;
          v36 = v54;
          *(v54 + 16) = v37;
          sub_1D22BD1D0(v17, v35, &qword_1EC6E2128, &unk_1D28A7598);
          v38 = v61(v35, 1, v63);
          v4 = v52;
        }

        while (v38 != 1);
      }

      sub_1D22BD238(v17, &qword_1EC6E2128, &unk_1D28A7598);
      swift_unknownObjectRelease();
      sub_1D22BD238(v35, &qword_1EC6E2128, &unk_1D28A7598);
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  if (v26 < v19)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v28 = v54;
  swift_arrayInitWithCopy();
  if (v19 <= 0)
  {
    v27 = v59;
    if (v19 == v26)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, v19);
  v31 = v29 + v19;
  v27 = v59;
  if (!v30)
  {
    *(v28 + 16) = v31;
    if (v19 == v26)
    {
      goto LABEL_20;
    }

LABEL_41:
    swift_unknownObjectRelease();
    v36 = v54;
LABEL_42:
    *v4 = v36;
    return;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_1D27D1170(uint64_t a1)
{
  v4 = *(sub_1D2873D98() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D27C9E54(a1, v6, v7, v8, v1 + v5);
}

BOOL sub_1D27D1268(uint64_t a1)
{
  type metadata accessor for SummarizationClientError(0);
  sub_1D27D31B8(&qword_1EC6D93A0, type metadata accessor for SummarizationClientError, &unk_1D287D1A0);
  sub_1D2871478();
  if (v2 == 2018)
  {
    return 1;
  }

  sub_1D2871478();
  return (v2 - 2013) < 4;
}

uint64_t sub_1D27D1330(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2008, &qword_1D28A72E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v59 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v59 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v59 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v59 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v59 - v18);
  v20 = sub_1D2873E58();
  v22 = v21;
  v68 = a2;
  v23 = sub_1D2873E58();
  v25 = v24;
  if (v22)
  {
    if (!v24)
    {
LABEL_8:

      return v25 & 1;
    }

    if (v20 == v23 && v22 == v24)
    {
    }

    else
    {
      v26 = sub_1D2879618();

      v25 = 0;
      if ((v26 & 1) == 0)
      {
        return v25 & 1;
      }
    }

LABEL_10:
    v27 = sub_1D2873E68();
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      v31 = sub_1D2873E68();
      if (v32)
      {
        if (v29 != v31 || v30 != v32)
        {
          v40 = sub_1D2879618();

          return v40 & 1;
        }

        goto LABEL_55;
      }
    }

    sub_1D2873E28();
    v33 = sub_1D2873E38();
    v34 = *(v33 - 8);
    v66 = v34[6];
    v35 = (v66)(v19, 1, v33);
    v65 = v5;
    if (v35 == 1)
    {
      sub_1D22BD238(v19, &qword_1EC6E2008, &qword_1D28A72E8);
    }

    else
    {
      v36 = v34[11];
      v37 = (v36)(v19, v33);
      if (v37 == *MEMORY[0x1E69C9B08])
      {
        LODWORD(v63) = v37;
        v64 = v36;
        v60 = v34[12];
        v61 = (v34 + 12);
        v60(v19, v33);
        v38 = *v19;
        v39 = v19[1];
        v62 = v38;
        sub_1D2873E28();
        if ((v66)(v16, 1, v33) == 1)
        {

          sub_1D22BD238(v16, &qword_1EC6E2008, &qword_1D28A72E8);
        }

        else
        {
          v57 = (v64)(v16, v33);
          if (v57 == v63)
          {
            v60(v16, v33);
            if (v62 == *v16 && v39 == v16[1])
            {
              goto LABEL_55;
            }

LABEL_57:
            v25 = sub_1D2879618();

            goto LABEL_8;
          }

          v34[1](v16, v33);
        }
      }

      else
      {
        v34[1](v19, v33);
      }

      v5 = v65;
    }

    sub_1D2873E28();
    if ((v66)(v13, 1, v33) == 1)
    {
      sub_1D22BD238(v13, &qword_1EC6E2008, &qword_1D28A72E8);
      goto LABEL_31;
    }

    v42 = v34[11];
    v43 = v42(v13, v33);
    if (v43 == *MEMORY[0x1E69C9B10])
    {
      v44 = v43;
      v64 = v34;
      v61 = v34[12];
      v62 = v34 + 12;
      v61(v13, v33);
      v45 = *v13;
      v46 = v13[1];
      v63 = v45;
      v47 = v67;
      sub_1D2873E28();
      v48 = v47;
      if ((v66)(v47, 1, v33) == 1)
      {

        sub_1D22BD238(v47, &qword_1EC6E2008, &qword_1D28A72E8);
        v34 = v64;
        v5 = v65;
        goto LABEL_31;
      }

      if (v42(v47, v33) == v44)
      {
        v61(v47, v33);
        if (v63 == *v47 && v46 == *(v47 + 1))
        {
          goto LABEL_55;
        }

        goto LABEL_57;
      }

      v34 = v64;
      (v64)[1](v48, v33);
    }

    else
    {
      v34[1](v13, v33);
    }

    v5 = v65;
LABEL_31:
    sub_1D2873E28();
    if ((v66)(v8, 1, v33) == 1)
    {
      v49 = v8;
LABEL_33:
      sub_1D22BD238(v49, &qword_1EC6E2008, &qword_1D28A72E8);
      v25 = 0;
      return v25 & 1;
    }

    v50 = v34[11];
    v51 = v50(v8, v33);
    v52 = v34;
    if (v51 != *MEMORY[0x1E69C9B18])
    {
      (v34)[1](v8, v33);
      v25 = 0;
      return v25 & 1;
    }

    v53 = v51;
    v64 = v52;
    v54 = v52[12];
    v54(v8, v33);
    v55 = *v8;
    v56 = v8[1];
    v67 = v55;
    sub_1D2873E28();
    if ((v66)(v5, 1, v33) == 1)
    {

      v49 = v5;
      goto LABEL_33;
    }

    if (v50(v5, v33) != v53)
    {

      (v64)[1](v5, v33);
      v25 = 0;
      return v25 & 1;
    }

    v54(v5, v33);
    if (v67 == *v5 && v56 == v5[1])
    {
LABEL_55:

      v25 = 1;
      return v25 & 1;
    }

    goto LABEL_57;
  }

  if (!v24)
  {
    goto LABEL_10;
  }

  v25 = 0;
  return v25 & 1;
}

void *sub_1D27D1AFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2008, &qword_1D28A72E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v84 = v75 - v3;
  v89 = sub_1D2873E78();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v80 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v85 = v75 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v90 = v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2128, &unk_1D28A7598);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = (v75 - v10);
  v11 = type metadata accessor for ConversationContextItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v81 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = v75 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v88 = v75 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v75 - v19;
  v21 = sub_1D25DAEF4(MEMORY[0x1E69E7CC0]);
  v22 = *(a1 + 16);
  v83 = v11;
  v79 = v12;
  if (v22)
  {
    v23 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v24 = *(v12 + 72);
    v82 = (v12 + 56);
    do
    {
      sub_1D27D2F44(v23, v20);
      v25 = &v20[*(v11 + 24)];
      v26 = v25[1];
      if (v26)
      {
        v27 = *v25;
        v28 = *(v21 + 16);
        sub_1D2870F68();
        if (!v28 || (v29 = sub_1D25D0410(v27, v26), (v30 & 1) == 0))
        {
          v32 = v86;
          (*v82)(v86, 1, 1, v11);
          sub_1D22BD238(v32, &qword_1EC6E2128, &unk_1D28A7598);
          v33 = v20;
          sub_1D27D2F44(v20, v88);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v91 = v21;
          v36 = sub_1D25D0410(v27, v26);
          v37 = *(v21 + 16);
          v38 = (v35 & 1) == 0;
          v39 = v37 + v38;
          if (__OFADD__(v37, v38))
          {
            goto LABEL_46;
          }

          v40 = v35;
          if (*(v21 + 24) >= v39)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v35 & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              sub_1D24EFF4C();
              if ((v40 & 1) == 0)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
            sub_1D24E69C0(v39, isUniquelyReferenced_nonNull_native);
            v41 = sub_1D25D0410(v27, v26);
            if ((v40 & 1) != (v42 & 1))
            {
              goto LABEL_48;
            }

            v36 = v41;
            if ((v40 & 1) == 0)
            {
LABEL_18:
              v21 = v91;
              *(v91 + 8 * (v36 >> 6) + 64) |= 1 << v36;
              v43 = (*(v21 + 48) + 16 * v36);
              *v43 = v27;
              v43[1] = v26;
              sub_1D27D30F0(v88, *(v21 + 56) + v36 * v24);
              v20 = v33;
              sub_1D27D2FA8(v33);
              v44 = *(v21 + 16);
              v45 = __OFADD__(v44, 1);
              v46 = v44 + 1;
              if (v45)
              {
                goto LABEL_47;
              }

              *(v21 + 16) = v46;
              goto LABEL_20;
            }
          }

          v21 = v91;
          sub_1D27D3154(v88, *(v91 + 56) + v36 * v24);
          v20 = v33;
          sub_1D27D2FA8(v33);
LABEL_20:
          v11 = v83;
          goto LABEL_4;
        }

        v31 = v86;
        sub_1D27D2F44(*(v21 + 56) + v29 * v24, v86);
        (*v82)(v31, 0, 1, v11);
        sub_1D27D2FA8(v20);

        sub_1D22BD238(v31, &qword_1EC6E2128, &unk_1D28A7598);
      }

      else
      {
        sub_1D27D2FA8(v20);
      }

LABEL_4:
      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v47 = (v21 + 64);
  v48 = 1 << *(v21 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v21 + 64);
  v51 = (v48 + 63) >> 6;
  v76 = *MEMORY[0x1E69C9B18];
  v86 = (v87 + 16);
  v88 = v87 + 8;
  v75[1] = v87 + 32;
  sub_1D2870F68();
  v52 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  v54 = v84;
  v82 = (v21 + 64);
  v77 = v51;
LABEL_26:
  if (v50)
  {
LABEL_31:
    v58 = v78;
    sub_1D27D2F44(*(v21 + 56) + *(v79 + 72) * (__clz(__rbit64(v50)) | (v52 << 6)), v78);
    v59 = v81;
    sub_1D27D30F0(v58, v81);
    v60 = (v59 + *(v11 + 24));
    v61 = v60[1];
    if (v61)
    {
      *v54 = *v60;
      *(v54 + 1) = v61;
      v62 = sub_1D2873E38();
      v63 = *(v62 - 8);
      (*(v63 + 104))(v84, v76, v62);
      (*(v63 + 56))(v84, 0, 1, v62);
    }

    else
    {
      v64 = sub_1D2873E38();
      (*(*(v64 - 8) + 56))(v54, 1, 1, v64);
    }

    v50 &= v50 - 1;
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D2873E48();
    v65 = 0;
    v66 = v53[2];
    while (1)
    {
      if (v66 == v65)
      {
        (*v86)(v80, v90, v89);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1D27CE1D0(0, v53[2] + 1, 1, v53, &qword_1EC6DACB0, &qword_1D28852E8, MEMORY[0x1E69C9B20]);
        }

        v11 = v83;
        v54 = v84;
        v73 = v53[2];
        v72 = v53[3];
        if (v73 >= v72 >> 1)
        {
          v53 = sub_1D27CE1D0((v72 > 1), v73 + 1, 1, v53, &qword_1EC6DACB0, &qword_1D28852E8, MEMORY[0x1E69C9B20]);
        }

        v55 = v87;
        v56 = v89;
        (*(v87 + 8))(v90, v89);
        v53[2] = v73 + 1;
        (*(v55 + 32))(v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v73, v80, v56);
        goto LABEL_25;
      }

      if (v65 >= v53[2])
      {
        break;
      }

      v67 = v87;
      v68 = v85;
      v69 = v89;
      (*(v87 + 16))(v85, v53 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v65++, v89);
      v70 = sub_1D27D1330(v68, v90);
      v71 = *(v67 + 8);
      v71(v68, v69);
      if (v70)
      {
        v71(v90, v89);
        v11 = v83;
        v54 = v84;
LABEL_25:
        sub_1D27D2FA8(v81);
        v47 = v82;
        v51 = v77;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v57 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v57 >= v51)
      {

        return v53;
      }

      v50 = v47[v57];
      ++v52;
      if (v50)
      {
        v52 = v57;
        goto LABEL_31;
      }
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1D28796E8();
  __break(1u);
  return result;
}

char *sub_1D27D23E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2008, &qword_1D28A72E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_1D2873E38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v39 - v10;
  v56 = sub_1D28721C8();
  v11 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v39 - v14;
  v15 = sub_1D2873E78();
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = *(v16 + 16);
    v21 = v16 + 16;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v61 = *(v21 + 56);
    v62 = v22;
    v59 = (v6 + 48);
    v51 = (v6 + 88);
    v52 = (v6 + 32);
    v50 = *MEMORY[0x1E69C9B10];
    v49 = *MEMORY[0x1E69C9B08];
    v41 = (v6 + 8);
    v40 = (v6 + 96);
    v24 = (v21 - 8);
    v42 = v11;
    v47 = (v11 + 32);
    v58 = MEMORY[0x1E69E7CC0];
    v46 = *MEMORY[0x1E69C9B18];
    v53 = v15;
    v54 = v4;
    v43 = v5;
    v60 = v21;
    v48 = (v21 - 8);
    v22(v19, v23, v15, v17);
    while (1)
    {
      sub_1D2873E58();
      if (!v26)
      {
        goto LABEL_4;
      }

      sub_1D2873E28();
      if ((*v59)(v4, 1, v5) == 1)
      {
        break;
      }

      v27 = v4;
      v28 = v8;
      v29 = *v52;
      v30 = v57;
      (*v52)(v57, v27, v5);
      v29(v28, v30, v5);
      v8 = v28;
      v31 = (*v51)(v28, v5);
      if (v31 != v50 && v31 != v49 && v31 != v46)
      {

        (*v41)(v28, v5);
        v15 = v53;
        v4 = v54;
        v24 = v48;
        goto LABEL_4;
      }

      (*v40)(v28, v5);
      v34 = v44;
      sub_1D28721A8();
      v24 = v48;
      v15 = v53;
      (*v48)(v19, v53);
      v45 = *v47;
      v45(v55, v34, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1D27CE1D0(0, *(v58 + 2) + 1, 1, v58, &qword_1EC6E20C8, &qword_1D28A7510, MEMORY[0x1E696E440]);
      }

      v4 = v54;
      v36 = *(v58 + 2);
      v35 = *(v58 + 3);
      v5 = v43;
      if (v36 >= v35 >> 1)
      {
        v58 = sub_1D27CE1D0((v35 > 1), v36 + 1, 1, v58, &qword_1EC6E20C8, &qword_1D28A7510, MEMORY[0x1E696E440]);
      }

      v37 = v58;
      *(v58 + 2) = v36 + 1;
      v45(&v37[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v36], v55, v56);
LABEL_5:
      v23 += v61;
      if (!--v20)
      {
        return v58;
      }

      v62(v19, v23, v15, v25);
    }

    sub_1D22BD238(v4, &qword_1EC6E2008, &qword_1D28A72E8);
LABEL_4:
    (*v24)(v19, v15);
    goto LABEL_5;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D27D2998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_1D2871798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - v9;
  v10 = type metadata accessor for ConversationContextItem(0) - 8;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(v13 + 72);
    v18 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v36 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v37 = (v6 + 32);
    v44 = (v6 + 8);
    v45 = (v6 + 48);
    v42 = MEMORY[0x1E69E7CC0];
    v43 = v5;
    v38 = v17;
    v39 = v4;
    do
    {
      sub_1D27D2F44(v18, v15);
      sub_1D22BD1D0(v15, v4, &unk_1EC6DAE40, &unk_1D287EC70);
      if ((*v45)(v4, 1, v5) == 1)
      {
        sub_1D27D2FA8(v15);
        sub_1D22BD238(v4, &unk_1EC6DAE40, &unk_1D287EC70);
      }

      else
      {
        (*v37)(v46, v4, v5);
        v19 = v41;
        sub_1D2871778();
        sub_1D2871718();
        v21 = v20;
        v22 = *v44;
        (*v44)(v19, v5);
        if (qword_1ED8A4928 != -1)
        {
          swift_once();
        }

        sub_1D23B7BB8();
        v23 = sub_1D2878A58();
        v24 = sub_1D2878068();
        v25 = [v23 valueForKey_];

        if (v25)
        {
          sub_1D2879008();
          swift_unknownObjectRelease();
          sub_1D22BD238(v47, &qword_1EC6E1900, &qword_1D288CA00);
          v26 = sub_1D2878A58();
          v27 = sub_1D2878068();
          v28 = [v26 integerForKey_];

          v5 = v43;
          v22(v46, v43);
          v29 = v28 * 86400.0;
        }

        else
        {
          v5 = v43;
          v22(v46, v43);
          memset(v47, 0, sizeof(v47));
          sub_1D22BD238(v47, &qword_1EC6E1900, &qword_1D288CA00);
          v29 = 172800.0;
        }

        v17 = v38;
        v4 = v39;
        if (v21 >= v29)
        {
          sub_1D27D2FA8(v15);
        }

        else
        {
          sub_1D27D30F0(v15, v40);
          v30 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D23D8C6C(0, *(v30 + 16) + 1, 1);
            v30 = v48;
          }

          v33 = *(v30 + 16);
          v32 = *(v30 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_1D23D8C6C((v32 > 1), v33 + 1, 1);
            v30 = v48;
          }

          *(v30 + 16) = v33 + 1;
          v42 = v30;
          sub_1D27D30F0(v40, v30 + v36 + v33 * v17);
          v5 = v43;
        }
      }

      v18 += v17;
      --v16;
    }

    while (v16);
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  *&v47[0] = v42;
  sub_1D2870F78();
  sub_1D27CEC20(v47);

  v34 = *&v47[0];
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v35 = _s23ImagePlaygroundInternal13DebugSettingsC19contextMessageCountSivg_0();
  sub_1D27CC398(v35, v34);
}

uint64_t sub_1D27D2F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationContextItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27D2FA8(uint64_t a1)
{
  v2 = type metadata accessor for ConversationContextItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D27D309C()
{
  result = qword_1EC6E2020;
  if (!qword_1EC6E2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2020);
  }

  return result;
}

uint64_t sub_1D27D30F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationContextItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27D3154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationContextItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27D31B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D27D3214(uint64_t a1, char a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v97 = *&a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9E8, &unk_1D288E650);
  v91 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v95 = v79 - v15;
  v96 = sub_1D2874B38();
  v90 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v85 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v82 = v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F0, &unk_1D28A7730);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v83 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v79 - v22;
  v84 = sub_1D2874C68();
  v24 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v26 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F8, &unk_1D288E660);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = v79 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA00, &unk_1D28A7740);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v79 - v31;
  if (a2)
  {
    return;
  }

  if (__OFSUB__(a9, 1))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v89 = a9;
  v33 = a9;
  v34 = (v97 - (a9 - 1) * a4) / a9;
  v97 = COERCE_DOUBLE(sub_1D25DB0DC(MEMORY[0x1E69E7CC0]));
  v35 = *(v24 + 16);
  v79[1] = a7;
  v36 = v84;
  v35(v29, a7, v84);
  v37.n128_f64[0] = (*(v24 + 32))(v26, v29, v36);
  sub_1D24DB6A0(&qword_1ED89DEA8, MEMORY[0x1E697E3D0], v37);
  sub_1D2878318();
  v80 = *(v30 + 36);
  *&v32[v80] = 0;
  v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08, &unk_1D288E670) + 36);
  v39 = sub_1D24DB6A0(&qword_1ED89DEA0, MEMORY[0x1E697E3D8], v38);
  v40 = 0;
  v81 = (v90 + 16);
  v41 = (v90 + 32);
  v42 = v91;
  v91 += 6;
  v92 = (v42 + 7);
  v88 = v34;
  v87 = (v90 + 8);
  v43 = v95;
  v44 = v85;
  v45 = v83;
  v90 = v39;
  v94 = v14;
  while (1)
  {
    sub_1D2878868();
    if (*&v32[v93] == *&v99[0])
    {
      v46 = 1;
      v47 = v94;
    }

    else
    {
      v86 = v40;
      v48 = sub_1D28788B8();
      v49 = v82;
      v50 = v96;
      (*v81)(v82);
      v48(v99, 0);
      v51 = v86;
      sub_1D2878878();
      v47 = v94;
      v52 = *(v94 + 48);
      *v43 = v51;
      (*v41)(v43 + v52, v49, v50);
      v53 = __OFADD__(v51, 1);
      v40 = v51 + 1;
      if (v53)
      {
        goto LABEL_48;
      }

      *&v32[v80] = v40;
      v45 = v83;
      sub_1D22EC9BC(v43, v83, &qword_1EC6DC9E8, &unk_1D288E650);
      v46 = 0;
      v44 = v85;
    }

    (*v92)(v45, v46, 1, v47);
    sub_1D22EC9BC(v45, v23, &qword_1EC6DC9F0, &unk_1D28A7730);
    if ((*v91)(v23, 1, v47) == 1)
    {
      break;
    }

    v54 = *v23;
    (*v41)(v44, &v23[*(v47 + 48)], v96);
    if (!v89)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v54 == 0x8000000000000000 && v89 == -1)
    {
      goto LABEL_49;
    }

    LOBYTE(v99[0]) = 0;
    LOBYTE(v98) = 1;
    v55 = v54 / v89;
    sub_1D2874B08();
    v57 = v56;
    v58 = v97;
    if (*(*&v97 + 16) && (v59 = sub_1D25D0574(v55), v58 = v97, (v60 & 1) != 0))
    {
      if (*(*(*&v97 + 56) + 8 * v59) >= v57)
      {
        goto LABEL_17;
      }
    }

    else if (v57 <= 0.0)
    {
      goto LABEL_17;
    }

    LODWORD(v86) = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v58;
    v62 = sub_1D25D0574(v55);
    v63 = *(*&v97 + 16);
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_56;
    }

    if (*(*&v97 + 24) >= v65)
    {
      if ((v86 & 1) == 0)
      {
        LODWORD(v97) = v61;
        v86 = v62;
        sub_1D24F01AC();
        v62 = v86;
        LOBYTE(v61) = LOBYTE(v97);
      }
    }

    else
    {
      LODWORD(v97) = v61;
      sub_1D24E6D38(v65, v86);
      v66 = sub_1D25D0574(v55);
      v67 = v61 & 1;
      LOBYTE(v61) = LOBYTE(v97);
      if ((LOBYTE(v97) & 1) != v67)
      {
        goto LABEL_58;
      }

      v62 = v66;
    }

    v68 = v99[0];
    v97 = v99[0];
    if (v61)
    {
      *(*(*&v99[0] + 56) + 8 * v62) = v57;
LABEL_17:
      (*v87)(v44, v96);
      goto LABEL_18;
    }

    *(*&v99[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
    *(*(*&v68 + 48) + 8 * v62) = v55;
    *(*(*&v68 + 56) + 8 * v62) = v57;
    (*v87)(v44, v96);
    v69 = *(*&v68 + 16);
    v53 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v53)
    {
      goto LABEL_57;
    }

    *(*&v68 + 16) = v70;
LABEL_18:
    v43 = v95;
  }

  sub_1D24DB6E4(v32);
  sub_1D2878818();
  sub_1D2878868();
  v71 = ceil(sub_1D2878858() / v33);
  if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_51;
  }

  if (v71 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v71 >= 9.22337204e18)
  {
    goto LABEL_53;
  }

  v72 = v71;
  if (!__OFSUB__(v71, 1))
  {
    if ((v72 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    v73 = (v71 - 1) * a3;
    if (!v72)
    {
LABEL_44:

      return;
    }

    v74 = 0;
    v75 = *(*&v97 + 16);
    while (1)
    {
      v76 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v75 && (v77 = sub_1D25D0574(v74), (v78 & 1) != 0))
      {
        v73 = v73 + *(*(*&v97 + 56) + 8 * v77);
        if (v76 == v72)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v73 = v73 + 0.0;
        if (v76 == v72)
        {
          goto LABEL_44;
        }
      }

      ++v74;
      if (v76 >= v72)
      {
        __break(1u);
        goto LABEL_44;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  sub_1D28796E8();
  __break(1u);
}

void (*sub_1D27D3BB0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D2874228();
  return sub_1D24DA5F4;
}

unint64_t sub_1D27D3C3C()
{
  result = qword_1EC6D8378;
  if (!qword_1EC6D8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8378);
  }

  return result;
}

void sub_1D27D3C90(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v131 = a10;
  v128 = a7;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9E8, &unk_1D288E650);
  v17 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v139 = (&v118 - v18);
  v154 = sub_1D2874B38();
  v19 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v143 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v118 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v153 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v134 = &v118 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F0, &unk_1D28A7730);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v145 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v144 = (&v118 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v118 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v118 - v35);
  v37 = sub_1D2874C68();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v132 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F8, &unk_1D288E660);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v126 = &v118 - v41;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA00, &unk_1D28A7740);
  MEMORY[0x1EEE9AC00](v129);
  v135 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v118 - v44;
  v158.origin.x = a2;
  v158.origin.y = a3;
  v158.size.width = a4;
  v141 = a5;
  v158.size.height = a5;
  v46.n128_f64[0] = CGRectGetWidth(v158);
  v155 = a9;
  if (__OFSUB__(a9, 1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v47 = v46.n128_f64[0];
  v151 = v17;
  v48 = v155;
  v49 = sub_1D24DB6A0(&qword_1ED89DEA0, MEMORY[0x1E697E3D8], v46);
  sub_1D2878818();
  sub_1D2878868();
  v150 = v37;
  v50 = ceil(sub_1D2878858() / v48);
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    sub_1D28796E8();
    __break(1u);
    return;
  }

  if (v50 >= 9.22337204e18)
  {
    goto LABEL_77;
  }

  v51 = (v47 - (a9 - 1) * v128) / v48;
  v125 = v50;
  v52 = sub_1D25DB0DC(MEMORY[0x1E69E7CC0]);
  v53 = *(v38 + 16);
  v54 = v126;
  v136 = a1;
  v55 = a1;
  v56 = v150;
  v123 = v38 + 16;
  v122 = v53;
  v53(v126, v55, v150);
  v57 = *(v38 + 32);
  v124 = v38 + 32;
  v121 = v57;
  v58.n128_f64[0] = (v57)(v132, v54, v56);
  v120 = sub_1D24DB6A0(&qword_1ED89DEA8, MEMORY[0x1E697E3D0], v58);
  sub_1D2878318();
  v133 = *(v129 + 36);
  *&v133[v45] = 0;
  v59 = 0;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08, &unk_1D288E670);
  v60 = *(v119 + 36);
  v138 = (v19 + 16);
  v152 = (v19 + 32);
  v148 = (*&v151 + 56);
  v147 = (*&v151 + 48);
  v127 = v51;
  v151 = v51;
  v61 = (v19 + 8);
  v62 = v60;
  v146 = v61;
  v137 = v49;
  v142 = v60;
LABEL_6:
  v140 = v52;
  while (1)
  {
    sub_1D2878868();
    if (*&v62[v45] == v156)
    {
      v63 = 1;
      v64 = v149;
    }

    else
    {
      v65 = v36;
      v66 = v33;
      v67 = sub_1D28788B8();
      v68 = v134;
      v69 = v154;
      (*v138)(v134);
      v67(&v156, 0);
      v56 = v150;
      sub_1D2878878();
      v64 = v149;
      v70 = *(v149 + 48);
      v71 = v139;
      *v139 = v59;
      (*v152)(v71 + v70, v68, v69);
      v72 = __OFADD__(v59++, 1);
      if (v72)
      {
        goto LABEL_69;
      }

      *&v133[v45] = v59;
      v33 = v66;
      sub_1D22EC9BC(v71, v66, &qword_1EC6DC9E8, &unk_1D288E650);
      v63 = 0;
      v52 = v140;
      v36 = v65;
    }

    v73 = *v148;
    (*v148)(v33, v63, 1, v64);
    sub_1D22EC9BC(v33, v36, &qword_1EC6DC9F0, &unk_1D28A7730);
    v74 = *v147;
    if ((*v147)(v36, 1, v64) == 1)
    {
      break;
    }

    v75 = *v36;
    (*v152)(v153, v36 + *(v64 + 48), v154);
    if (!v155)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v75 == 0x8000000000000000 && v155 == -1)
    {
      goto LABEL_70;
    }

    LOBYTE(v156) = 0;
    LOBYTE(v157) = 1;
    v76 = v75 / v155;
    sub_1D2874B08();
    v78 = v77;
    if (v52[2] && (v79 = sub_1D25D0574(v76), (v80 & 1) != 0))
    {
      v62 = v142;
      if (*(v52[7] + 8 * v79) < v78)
      {
LABEL_20:
        LODWORD(v140) = swift_isUniquelyReferenced_nonNull_native();
        v156 = v52;
        v82 = sub_1D25D0574(v76);
        v83 = v52[2];
        v84 = (v81 & 1) == 0;
        v85 = v83 + v84;
        if (__OFADD__(v83, v84))
        {
          goto LABEL_79;
        }

        v86 = v81;
        if (v52[3] >= v85)
        {
          if (v140)
          {
            v52 = v156;
            if ((v81 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v89 = v82;
            sub_1D24F01AC();
            v82 = v89;
            v52 = v156;
            if ((v86 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_27:
          *(v52[7] + 8 * v82) = v78;
          (*v146)(v153, v154);
          v56 = v150;
          goto LABEL_6;
        }

        sub_1D24E6D38(v85, v140);
        v87 = sub_1D25D0574(v76);
        if ((v86 & 1) != (v88 & 1))
        {
          goto LABEL_81;
        }

        v82 = v87;
        v52 = v156;
        if (v86)
        {
          goto LABEL_27;
        }

LABEL_29:
        v52[(v82 >> 6) + 8] |= 1 << v82;
        *(v52[6] + 8 * v82) = v76;
        *(v52[7] + 8 * v82) = v78;
        (*v146)(v153, v154);
        v90 = v52[2];
        v72 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v72)
        {
          goto LABEL_80;
        }

        v52[2] = v91;
        v56 = v150;
        goto LABEL_6;
      }
    }

    else
    {
      v62 = v142;
      if (v78 > 0.0)
      {
        goto LABEL_20;
      }
    }

    (*v146)(v153, v154);
    v56 = v150;
  }

  v133 = v74;
  sub_1D24DB6E4(v45);
  v92 = v125;
  if (v125 < 0)
  {
    goto LABEL_78;
  }

  if (v125)
  {
    v93 = 0;
    v153 = v125 - 1;
    v94 = MEMORY[0x1E69E7CC0];
    v95 = 0.0;
    v96 = v135;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_1D27CE3AC(0, *(v94 + 2) + 1, 1, v94);
      }

      v98 = *(v94 + 2);
      v97 = *(v94 + 3);
      if (v98 >= v97 >> 1)
      {
        v94 = sub_1D27CE3AC((v97 > 1), v98 + 1, 1, v94);
      }

      *(v94 + 2) = v98 + 1;
      *&v94[8 * v98 + 32] = v95;
      if (v52[2] && (v99 = sub_1D25D0574(v93), (v100 & 1) != 0))
      {
        v101 = *(v52[7] + 8 * v99);
      }

      else
      {
        v101 = 0.0;
      }

      v102 = 0.0;
      if (v93 < v153)
      {
        v102 = a6;
      }

      ++v93;
      v95 = v95 + v102 + v101;
    }

    while (v92 != v93);
  }

  else
  {
    v94 = MEMORY[0x1E69E7CC0];
    v153 = -1;
    v96 = v135;
  }

  v103 = v126;
  v122(v126, v136, v56);
  v121(v132, v103, v56);
  sub_1D2878318();
  v104 = 0;
  v129 = *(v129 + 36);
  *(v96 + v129) = 0;
  v134 = *(v119 + 36);
  v132 = v94 + 32;
  v142 = v94;
  while (1)
  {
    sub_1D2878868();
    if (*&v134[v96] == v156)
    {
      v105 = v149;
      v73(v145, 1, 1, v149);
    }

    else
    {
      v106 = v145;
      v107 = sub_1D28788B8();
      v108 = v130;
      v109 = v154;
      (*v138)(v130);
      v107(&v156, 0);
      sub_1D2878878();
      v105 = v149;
      v110 = *(v149 + 48);
      v111 = v139;
      *v139 = v104;
      (*v152)(v111 + v110, v108, v109);
      v72 = __OFADD__(v104++, 1);
      if (v72)
      {
        goto LABEL_71;
      }

      *(v96 + v129) = v104;
      sub_1D22EC9BC(v111, v106, &qword_1EC6DC9E8, &unk_1D288E650);
      v73(v106, 0, 1, v105);
    }

    v112 = v144;
    sub_1D22EC9BC(v145, v144, &qword_1EC6DC9F0, &unk_1D28A7730);
    if ((v133)(v112, 1, v105) == 1)
    {
      break;
    }

    v113 = *v144;
    (*v152)(v143, v144 + *(v105 + 48), v154);
    LOBYTE(v156) = 0;
    LOBYTE(v157) = 1;
    sub_1D2874B08();
    if (!v155)
    {
      goto LABEL_66;
    }

    if (v113 == 0x8000000000000000 && v155 == -1)
    {
      goto LABEL_72;
    }

    sub_1D2878818();
    sub_1D2878868();
    v114 = sub_1D2878858();
    if (v114 == 0x8000000000000000 && v155 == -1)
    {
      goto LABEL_73;
    }

    v115 = v113 / v155;
    if (v113 / v155 == v153 && v114 % v155 >= 1)
    {
      v159.origin.x = a2;
      v159.origin.y = a3;
      v159.size.width = a4;
      v159.size.height = v141;
      CGRectGetWidth(v159);
      sub_1D2875928();
      if ((sub_1D2875908() & 1) == 0)
      {
        sub_1D2875938();
        sub_1D2875908();
      }
    }

    v160.origin.x = a2;
    v160.origin.y = a3;
    v160.size.width = a4;
    v116 = v141;
    v160.size.height = v141;
    CGRectGetMinX(v160);
    v161.origin.x = a2;
    v161.origin.y = a3;
    v161.size.width = a4;
    v161.size.height = v116;
    CGRectGetMinY(v161);
    if ((v115 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    if (v115 >= *(v142 + 2))
    {
      goto LABEL_68;
    }

    sub_1D2877A98();
    LOBYTE(v156) = 0;
    LOBYTE(v157) = 0;
    v117 = v143;
    sub_1D2874B18();
    (*v146)(v117, v154);
    v96 = v135;
  }

  sub_1D24DB6E4(v96);
}

void sub_1D27D4D48(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27D71DC();
    sub_1D28719D8();
  }
}

uint64_t sub_1D27D4E1C()
{
  v0 = sub_1D2877B38();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = (&v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v24 - v3;
  v4 = sub_1D2877BA8();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D2877B48();
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2877B68();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D27D7290;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_49;
  v16 = _Block_copy(aBlock);
  sub_1D2870F78();
  sub_1D27A17E4(ObjectType);
  sub_1D27A17E8();
  sub_1D2878B78();
  _Block_release(v16);
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v13, v10);

  sub_1D2877B78();
  v17 = v26;
  sub_1D27A194C(v26);
  v18 = v27;
  sub_1D27A18D4(v27);
  v19 = v18;
  MEMORY[0x1D38A16E0](v6, v17, v18, ObjectType);
  v20 = *(v30 + 8);
  v21 = v19;
  v22 = v31;
  v20(v21, v31);
  v20(v17, v22);
  (*(v28 + 8))(v6, v29);
  return sub_1D2878B98();
}

uint64_t sub_1D27D5218()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1D27D5290()
{
  v1 = v0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D2878B88();
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio;
  v3 = sub_1D2871DD8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_1D22729C0(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate);
  sub_1D233EE24(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState), *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState + 8));

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel___observationRegistrar;
  v5 = sub_1D2871A28();
  v6 = *(*(v5 - 8) + 8);
  v6(v1 + v4, v5);
  swift_unknownObjectRelease();
  v6(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel___observationRegistrar, v5);
  return v1;
}

uint64_t sub_1D27D53D0()
{
  sub_1D27D5290();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MagicEffectViewModel(uint64_t a1)
{
  result = qword_1EC6E21A8;
  if (!qword_1EC6E21A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D27D547C(uint64_t a1)
{
  result = sub_1D2871A28();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D27D555C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isIdle;
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isIdle) = a1;
  sub_1D2872658();
  sub_1D2870F78();
  v12 = sub_1D2873CA8();
  v13 = sub_1D28789F8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = *(v2 + v11);

    _os_log_impl(&dword_1D226E000, v12, v13, "MagicEffectViewModel - isIdle: %{BOOL}d", v14, 8u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  else
  {
  }

  v15 = *(v5 + 8);
  v15(v10, v4);
  v16 = &qword_1EC6E3000;
  if ((*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isInWandState) & 1) == 0)
  {
    v17 = a1 & 1;
    sub_1D28724E8();
    v18 = sub_1D2873CA8();
    v19 = sub_1D2878A08();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = a1 & 1;
      _os_log_impl(&dword_1D226E000, v18, v19, "setGenerating - transitionToBlobOrAppleEffect showAppleEffect %{BOOL}d", v20, 8u);
      v21 = v20;
      v17 = a1 & 1;
      v16 = &qword_1EC6E3000;
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    v15(v7, v4);
    v22 = *(v2 + v16[504]);
    swift_getKeyPath();
    v27[1] = v2;
    sub_1D27D71DC();
    sub_1D28719E8();

    v23 = 0.5;
    if ((v22 | a1))
    {
      v23 = 0.0;
    }

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__needsTransitionFromWand))
    {
      v24 = 0.05;
    }

    else
    {
      v24 = v23;
    }

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    *(v26 + 32) = v17;
    *(v26 + 33) = v22;
    sub_1D2870F78();
    sub_1D2758420(v2, sub_1D27D7234, v26);
  }

  *(v2 + v16[504]) = 0;
}

uint64_t sub_1D27D58D0(uint64_t a1, double a2, double a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28724E8();
  v10 = sub_1D2873CA8();
  v11 = sub_1D2878A08();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v23[0] = v13;
    *v12 = 136315138;
    v14 = sub_1D2878CB8();
    v16 = sub_1D23D7C84(v14, v15, v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1D226E000, v10, v11, "didSetEffectViewSize - effectViewSize: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1D38A3520](v13, -1, -1);
    MEMORY[0x1D38A3520](v12, -1, -1);
  }

  v17 = (*(v7 + 8))(v9, v6);
  v17.n128_f64[0] = a2;
  v18.n128_f64[0] = a3;
  sub_1D2776E90(v23, v17, v18, 0.0, 0.0, 0.0, 0.0);
  v19 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition;
  v20 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v23[2];
  *(v19 + 48) = v24;
  return sub_1D275FC64();
}

void sub_1D27D5ADC(char *a1, uint64_t a2, char a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  v19 = sub_1D2873CB8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v71 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v71 - v27;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    if (a3)
    {
      v31 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__needsTransitionFromWand);
      v75 = v20;
      LODWORD(v74) = a4;
      v73 = OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__needsTransitionFromWand;
      if (v31 == 1)
      {
        *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__needsTransitionFromWand) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v71 - 2) = v30;
        *(&v71 - 8) = 1;
        *&v77 = v30;
        sub_1D27D71DC();
        sub_1D28719D8();
      }

      sub_1D28724E8();
      v45 = a1;
      v46 = sub_1D2873CA8();
      v47 = sub_1D2878A08();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v76[0] = v72;
        *v48 = 136315394;
        v49 = v45[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 48];
        v77 = *&v45[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition];
        v78 = *&v45[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 16];
        v79 = *&v45[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 32];
        v80 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6E21C0, &qword_1D28A7818);
        v50 = sub_1D2878F08();
        v52 = sub_1D23D7C84(v50, v51, v76);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = sub_1D2878CA8();
        v55 = sub_1D23D7C84(v53, v54, v76);

        *(v48 + 14) = v55;
        _os_log_impl(&dword_1D226E000, v46, v47, "didSetAdjustedState - sceneManager.magicEffectPosition: %s - adjustedFrame: %s", v48, 0x16u);
        v56 = v72;
        swift_arrayDestroy();
        MEMORY[0x1D38A3520](v56, -1, -1);
        MEMORY[0x1D38A3520](v48, -1, -1);
      }

      v57 = *(v75 + 8);
      v58 = v57(v28, v19);
      v59 = v74;
      v58.n128_f64[0] = a9;
      v60.n128_f64[0] = a10;
      sub_1D2776E90(&v77, v58, v60, a5, a6, a7, a8);
      v61 = &v45[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition];
      *v61 = v77;
      *(v61 + 1) = v78;
      *(v61 + 2) = v79;
      v61[48] = v80;
      sub_1D275FC64();
      sub_1D28724E8();
      v62 = sub_1D2873CA8();
      v63 = sub_1D2878A08();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 67109120;
        *(v64 + 4) = v59 & 1;
        _os_log_impl(&dword_1D226E000, v62, v63, "didSetAdjustedEditState - transitionToBlobOrAppleEffect showAppleEffect%{BOOL}d", v64, 8u);
        MEMORY[0x1D38A3520](v64, -1, -1);
      }

      v57(v25, v19);
      swift_getKeyPath();
      v76[0] = v30;
      sub_1D27D71DC();
      sub_1D28719E8();

      v65 = 0.5;
      if (v59)
      {
        v65 = 0.0;
      }

      if (*(v30 + v73))
      {
        v66 = 0.05;
      }

      else
      {
        v66 = v65;
      }

      v67 = swift_allocObject();
      swift_weakInit();
      v68 = swift_allocObject();
      *(v68 + 16) = v67;
      *(v68 + 24) = v66;
      *(v68 + 32) = v59 & 1;
      *(v68 + 33) = 0;
      sub_1D2870F78();
      sub_1D2758420(v30, sub_1D27D72B8, v68);
    }

    else
    {
      sub_1D28724E8();
      v32 = sub_1D2873CA8();
      v33 = sub_1D2878A08();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v77 = v35;
        *v34 = 136315394;
        v36 = sub_1D2878CB8();
        v74 = v19;
        v38 = sub_1D23D7C84(v36, v37, &v77);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = sub_1D2878CA8();
        v41 = sub_1D23D7C84(v39, v40, &v77);

        *(v34 + 14) = v41;
        _os_log_impl(&dword_1D226E000, v32, v33, "didSetAdjustedState - latestEffectViewSize: %s - adjustedFrame: %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38A3520](v35, -1, -1);
        MEMORY[0x1D38A3520](v34, -1, -1);

        (*(v20 + 8))(v22, v74);
      }

      else
      {

        v42 = (*(v20 + 8))(v22, v19);
      }

      v42.n128_f64[0] = a9;
      v43.n128_f64[0] = a10;
      sub_1D2776E90(&v77, v42, v43, a5, a6, a7, a8);
      v69 = &a1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition];
      v70 = v78;
      *v69 = v77;
      *(v69 + 1) = v70;
      *(v69 + 2) = v79;
      v69[48] = v80;
      sub_1D275FC64();
      sub_1D2768CF8();
    }
  }
}

char *sub_1D27D6258(uint64_t a1, double a2, double a3)
{
  v6 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPoint;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = 0;
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxShouldDispatchWand) = 1;
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPathPoints;
  v8 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPathPoints);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v7) = v8;
  if ((result & 1) == 0)
  {
    result = sub_1D27CDB58(0, *(v8 + 2) + 1, 1, v8);
    v8 = result;
    *(a1 + v7) = result;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    result = sub_1D27CDB58((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = a2;
  *(v12 + 5) = a3;
  *(a1 + v7) = v8;
  return result;
}

uint64_t sub_1D27D63A0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D27D71DC();
  sub_1D28719E8();

  return *(v2 + *a2);
}

void sub_1D27D6410(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D27D71DC();
  sub_1D28719E8();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1D27D6494(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D2758420(v2, sub_1D27D72B0, v3);
  }

  return result;
}

void sub_1D27D6540(double a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(v52) = a5;
  v55 = sub_1D2877B38();
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v45 - v11);
  v13 = sub_1D2877BA8();
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v45 - v16;
  v17 = sub_1D2873CB8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = a1 * 1000.0;
  if (COERCE__INT64(fabs(a1 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v23 = Strong;
  v46 = a4;
  v48 = v13;
  v49 = v9;
  v24 = v22;
  sub_1D28724E8();
  sub_1D2870F78();
  v25 = sub_1D2873CA8();
  v26 = sub_1D2878A08();
  v27 = os_log_type_enabled(v25, v26);
  v50 = v7;
  v47 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v45 = v12;
    v29 = v28;
    *v28 = 134218240;
    *(v28 + 4) = v24;
    *(v28 + 12) = 1024;
    swift_getKeyPath();
    v56 = v23;
    sub_1D27D71DC();
    sub_1D28719E8();

    *(v29 + 14) = v23[OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__showAppleEffectOnNextTransition];

    _os_log_impl(&dword_1D226E000, v25, v26, "scheduleTransitionToBlobOrAppleEffect in %ldms - showAppleEffectOnNextTransition: %{BOOL}d", v29, 0x12u);
    v30 = v29;
    v12 = v45;
    MEMORY[0x1D38A3520](v30, -1, -1);
  }

  else
  {
  }

  (*(v18 + 8))(v20, v17);
  v31 = v46 & 1;
  if (v23[OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__showAppleEffectOnNextTransition] == (v46 & 1))
  {
    v23[OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__showAppleEffectOnNextTransition] = v31;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v45 - 2) = v23;
    *(&v45 - 8) = v31;
    v56 = v23;
    sub_1D27D71DC();
    sub_1D28719D8();
  }

  v33 = v52 & 1;
  if (v23[OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__hideRectangleOnNextTransition] == (v52 & 1))
  {
    v23[OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__hideRectangleOnNextTransition] = v33;
  }

  else
  {
    v34 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v34);
    *(&v45 - 2) = v23;
    *(&v45 - 8) = v33;
    v56 = v23;
    sub_1D27D71DC();
    sub_1D28719D8();
  }

  v35 = v53;
  v36 = v47;
  v52 = *&v23[OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_debounceTimer];
  ObjectType = swift_getObjectType();
  sub_1D2877B88();
  *v12 = v36;
  v38 = *MEMORY[0x1E69E7F38];
  v53 = v23;
  v39 = v50;
  v40 = v55;
  (*(v50 + 104))(v12, v38, v55);
  v41 = v51;
  sub_1D2877B98();
  v42 = *(v39 + 8);
  v42(v12, v40);
  v54 = *(v54 + 8);
  v43 = v48;
  (v54)(v35, v48);
  sub_1D27A194C(v12);
  v44 = v49;
  sub_1D27A18D4(v49);
  MEMORY[0x1D38A16E0](v41, v12, v44, ObjectType);
  v42(v44, v40);
  v42(v12, v40);
  (v54)(v41, v43);
}

double sub_1D27D6B8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v44 = v9;
    v45 = v6;
    v46 = v4;
    v47 = v3;
    v48 = a1;
    swift_getKeyPath();
    v49 = v21;
    sub_1D27D71DC();
    sub_1D28719E8();

    v22 = *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__showAppleEffectOnNextTransition);
    swift_getKeyPath();
    v49 = v21;
    sub_1D28719E8();

    v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__needsTransitionFromWand;
    if (*(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__needsTransitionFromWand) == 1)
    {
      sub_1D28724E8();
      v24 = sub_1D2873CA8();
      v25 = sub_1D2878A08();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 67109120;
        *(v26 + 4) = v22;
        _os_log_impl(&dword_1D226E000, v24, v25, "_transitionToBlobOrAppleEffect - transitionWandToBlobOrAppleEffect: %{BOOL}d", v26, 8u);
        MEMORY[0x1D38A3520](v26, -1, -1);
      }

      (*(v46 + 8))(v18, v47);
      sub_1D27691C0(v22, CGRectMake, 0);
      if (*(v21 + v23))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v44 - 2) = v21;
        *(&v44 - 8) = 0;
        v49 = v21;
        sub_1D28719D8();

        return result;
      }

      *(v21 + v23) = 0;
    }

    else
    {
      swift_getKeyPath();
      v49 = v21;
      sub_1D28719E8();

      if (*(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel__hideRectangleOnNextTransition) == 1)
      {
        v28 = v46;
        if (v22)
        {
          sub_1D28724E8();
          v29 = sub_1D2873CA8();
          v30 = sub_1D2878A08();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_1D226E000, v29, v30, "_transitionToBlobOrAppleEffect - transitionRectangleToCircle", v31, 2u);
            MEMORY[0x1D38A3520](v31, -1, -1);
          }

          (*(v28 + 8))(v15, v47);
          sub_1D276A104();
        }

        else
        {
          sub_1D28724E8();
          v37 = sub_1D2873CA8();
          v38 = sub_1D2878A08();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_1D226E000, v37, v38, "_transitionToBlobOrAppleEffect - transition wand to blob", v39, 2u);
            MEMORY[0x1D38A3520](v39, -1, -1);
          }

          (*(v28 + 8))(v12, v47);
          sub_1D27691C0(0, CGRectMake, 0);
        }
      }

      else
      {
        v32 = v46;
        if (v22)
        {
          v33 = v44;
          sub_1D28724E8();
          v34 = sub_1D2873CA8();
          v35 = sub_1D2878A08();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_1D226E000, v34, v35, "_transitionToBlobOrAppleEffect - transition blob to circle", v36, 2u);
            MEMORY[0x1D38A3520](v36, -1, -1);
          }

          (*(v32 + 8))(v33, v47);
          sub_1D276A578();
        }

        else
        {
          v40 = v45;
          sub_1D28724E8();
          v41 = sub_1D2873CA8();
          v42 = sub_1D2878A08();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&dword_1D226E000, v41, v42, "_transitionToBlobOrAppleEffect - transitionCircleToBlob", v43, 2u);
            MEMORY[0x1D38A3520](v43, -1, -1);
          }

          (*(v32 + 8))(v40, v47);
          sub_1D276A54C();
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D27D71DC()
{
  result = qword_1EC6E21B8;
  if (!qword_1EC6E21B8)
  {
    type metadata accessor for MagicEffectViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E21B8);
  }

  return result;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D27D7304@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D263B83C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D27D7378(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 128) = a1;
  v3 = sub_1D2873CB8();
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  sub_1D2878568();
  *(v2 + 80) = sub_1D2878558();
  v5 = sub_1D28784F8();
  *(v2 + 88) = v5;
  *(v2 + 96) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D27D7470, v5, v4);
}

uint64_t sub_1D27D7470()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 80);
  *(v0 + 104) = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 16), *(*(v0 + 48) + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1D27D7594;
    v5 = *(v0 + 128);

    return sub_1D23E8FB0(v3, v5);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D27D7594()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1D27D7870;
  }

  else
  {
    v5 = sub_1D27D76D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D27D76D0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 128);

  v3 = *(*v1 + 208);
  if (v2 == *(v1 + v3))
  {
    v9 = *(v0 + 128);

    *(v1 + v3) = v9;
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 48);
    v6 = *(v0 + 128);
    v7 = swift_task_alloc();
    *v7 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
    v7[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    v8 = swift_task_alloc();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    *(v0 + 40) = v5;
    sub_1D2583618();
    sub_1D28719D8();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D27D7870()
{
  v1 = *(v0 + 120);

  sub_1D28724F8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = v6;
    *(v7 + 8) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 10) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Cannot set asset favorite flag to %{BOOL}d with error: %@", v7, 0x12u);
    sub_1D22BF6D0(v8);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = *(v0 + 56);

  (*(v12 + 8))(v11, v13);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  sub_1D25428EC(v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D27D7A40()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    *(v3 + 24) = v1;
    *(v3 + 32) = 0;
    *(v3 + 16) = (v2 & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  sub_1D2870F78();
  return v3;
}

uint64_t sub_1D27D7ADC()
{
  v1[3] = v0;
  v1[4] = sub_1D2878568();
  v1[5] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D27D7B78, v3, v2);
}

uint64_t sub_1D27D7B78()
{
  v1 = *(v0[3] + 24);
  v0[8] = v1;
  if (v1)
  {
    v2 = qword_1ED8A4928;
    sub_1D2870F78();
    if (v2 != -1)
    {
      swift_once();
    }

    if (os_variant_has_internal_ui())
    {
      sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
      v3 = sub_1D2878A58();
      v4 = sub_1D2878068();
      v5 = [v3 BOOLForKey_];

      if (v5)
      {
        v0[9] = sub_1D2878558();
        v7 = sub_1D28784F8();
        v0[10] = v7;
        v0[11] = v6;

        return MEMORY[0x1EEE6DFA0](sub_1D27D7D1C, v7, v6);
      }
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D27D7D1C()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  *v2 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  v2[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  v0[2] = v1;
  sub_1D2583618();
  sub_1D28719E8();

  v3 = *(v1 + *(*v1 + 208));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1D27D7E64;

  return sub_1D27D7378((v3 & 1) == 0);
}

uint64_t sub_1D27D7E64()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D27D7F84, v3, v2);
}

uint64_t sub_1D27D7F84()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D27D7FE8, v1, v2);
}

uint64_t sub_1D27D7FE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D27D8058()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D27D80BC()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D27D81FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BC8FC;

  return sub_1D27D7ADC();
}

void *sub_1D27D82FC()
{
  v1 = v0;
  v2 = *v0;

  v3 = *(v2 + 96);
  v6[0] = *(v2 + 80);
  v6[1] = v3;
  type metadata accessor for AsyncMultipleValuesFetcher.State(255, v6);
  v4 = sub_1D2872748();
  sub_1D27E3D28(v4);

  return v1;
}

uint64_t sub_1D27D8388()
{
  sub_1D27D82FC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D27D83EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal26AsyncMultipleValuesFetcherC11CacheBinder33_C1974169AD42B92C24AA74D7CBA91537LLVyxq_q0__GSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D27D8440(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D27D8488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D27D84D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6E22D0, &qword_1D28A7A50);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a1;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1D25D9938(MEMORY[0x1E69E7CC0]);
  *(v8 + 40) = 0;
  *(v8 + 48) = v10;
  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0;
  *(v8 + 120) = a2;
  return v8;
}

uint64_t sub_1D27D856C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1D27D85C0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D28785F8();
    if (v2 <= 0x3F)
    {
      sub_1D2871818();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0, &unk_1D287D430);
      sub_1D2878528();
      sub_1D24FEF24();
      sub_1D2877EC8();
      if (v3 <= 0x3F)
      {
        sub_1D27D8C28(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D27D86D8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1D28785F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(v8 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 <= 3)
  {
    v16 = ((a2 - v12 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v7 == v12)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v24 = &a1[v13] & ~v11;
    if (v10 == v12)
    {
      v25 = *(v9 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *((v14 + v24) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_1D27D8948(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1D28785F8() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = v12 + v13;
  v17 = (v12 + v13) & ~v13;
  v18 = v14 + 7;
  v19 = ((((v14 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 >= a3)
  {
    v22 = 0;
    if (v15 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v15 >= a2)
    {
LABEL_19:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v19] = 0;
      }

      else if (v22)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 == v15)
      {
        v25 = *(v29 + 56);

        v25(a1, a2, v9, v7);
      }

      else
      {
        v26 = &a1[v16] & ~v13;
        if (v11 == v15)
        {
          v27 = *(v10 + 56);

          v27(v26, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v28 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v28 = (a2 - 1);
          }

          *((v18 + v26) & 0xFFFFFFFFFFFFFFF8) = v28;
        }
      }

      return;
    }
  }

  v23 = ~v15 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_29:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

void sub_1D27D8C28(uint64_t a1)
{
  if (!qword_1EC6E23D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E23E0, qword_1D28A7AD8);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC6E23D8);
    }
  }
}

uint64_t sub_1D27D8C8C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D28780A8();
    v4 = v3;

    if (v2 == 0xD000000000000015 && 0x80000001D28B8A20 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2879618();
    }
  }

  return v1 & 1;
}

uint64_t sub_1D27D8D5C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D28780A8();
    v4 = v3;

    if (v2 == 0xD000000000000021 && 0x80000001D28B0980 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2879618();
    }
  }

  return v1 & 1;
}

uint64_t sub_1D27D8E2C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D28780A8();
    v4 = v3;

    if (v2 == 0xD000000000000029 && 0x80000001D28C3670 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2879618();
    }
  }

  return v1 & 1;
}

uint64_t sub_1D27D8EFC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D28780A8();
    v4 = v3;

    if (v2 == 0xD000000000000035 && 0x80000001D28C3610 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2879618();
    }
  }

  return v1 & 1;
}

uint64_t sub_1D27D8FCC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D28780A8();
    v4 = v3;

    if (v2 == 0xD00000000000001CLL && 0x80000001D28C3650 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2879618();
    }
  }

  return v1 & 1;
}

void *sub_1D27D909C(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = swift_allocObject();
  *(v44 + 16) = [objc_allocWithZone(MEMORY[0x1E695DFF0]) init];
  v6 = swift_allocObject();
  *(v6 + 16) = 256;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = objc_opt_self();
  sub_1D2870F78();
  sub_1D2870F78();
  v9 = [v8 defaultCenter];
  v10 = *MEMORY[0x1E69DE338];
  v43 = a1;
  v11 = [a1 window];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 windowScene];

    if (v13)
    {
      aBlock = v13;
      sub_1D22BCFD0(0, &unk_1ED89CDA8, 0x1E69DD2F0);
      v13 = sub_1D2879608();
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  v14[2] = v44;
  v14[3] = v6;
  v14[4] = sub_1D27DA084;
  v14[5] = v7;
  v49 = sub_1D27DA090;
  v50 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D2745810;
  v48 = &block_descriptor_50;
  v15 = _Block_copy(&aBlock);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();

  v16 = [v9 addObserverForName:v10 object:v13 queue:0 usingBlock:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
  v42[2] = v16;
  v41 = *MEMORY[0x1E69DE358];
  v17 = [a1 window];
  if (!v17)
  {
    v18 = v9;
    goto LABEL_9;
  }

  v18 = v9;
  v19 = v17;
  v20 = [v17 &selRef_CGColor];

  if (!v20)
  {
LABEL_9:
    v21 = v6;
    v22 = 0;
    goto LABEL_10;
  }

  v21 = v6;
  aBlock = v20;
  sub_1D22BCFD0(0, &unk_1ED89CDA8, 0x1E69DD2F0);
  v22 = sub_1D2879608();

LABEL_10:
  v23 = swift_allocObject();
  v23[2] = v44;
  v23[3] = v21;
  v23[4] = sub_1D27DA084;
  v23[5] = v7;
  v49 = sub_1D27DA0FC;
  v50 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D2745810;
  v48 = &block_descriptor_16;
  v24 = _Block_copy(&aBlock);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();

  v25 = [v18 addObserverForName:v41 object:v22 queue:0 usingBlock:v24];
  _Block_release(v24);
  swift_unknownObjectRelease();
  v42[3] = v25;
  v26 = *MEMORY[0x1E696A7E0];
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1D27DA084;
  *(v27 + 24) = v7;
  v49 = sub_1D27DA108;
  v50 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D2745810;
  v48 = &block_descriptor_22;
  v28 = _Block_copy(&aBlock);
  sub_1D2870F78();

  v29 = [v18 addObserverForName:v26 object:0 queue:0 usingBlock:v28];
  _Block_release(v28);
  v42[4] = v29;
  v30 = *MEMORY[0x1E6986A90];
  v31 = swift_allocObject();
  v31[2] = v21;
  v31[3] = sub_1D27DA084;
  v31[4] = v7;
  v49 = sub_1D27DA110;
  v50 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D2745810;
  v48 = &block_descriptor_28;
  v32 = _Block_copy(&aBlock);
  sub_1D2870F78();
  sub_1D2870F78();

  v33 = [v18 addObserverForName:v30 object:0 queue:0 usingBlock:v32];
  _Block_release(v32);
  v42[5] = v33;
  v34 = *MEMORY[0x1E6986A98];
  v35 = swift_allocObject();
  v35[2] = v21;
  v35[3] = sub_1D27DA084;
  v35[4] = v7;
  v49 = sub_1D27DA154;
  v50 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D2745810;
  v48 = &block_descriptor_34;
  v36 = _Block_copy(&aBlock);
  sub_1D2870F78();
  sub_1D2870F78();

  v37 = [v18 addObserverForName:v34 object:0 queue:0 usingBlock:v36];
  _Block_release(v36);
  v42[6] = v37;
  v38 = swift_allocObject();
  v38[2] = v21;
  v38[3] = sub_1D27DA084;
  v38[4] = v7;
  type metadata accessor for PerformanceMitigationNotifier();
  swift_allocObject();
  sub_1D2870F78();
  v39 = sub_1D27E0590(sub_1D27DA198, v38);

  v42[7] = v39;

  return v42;
}

uint64_t sub_1D27D97BC(uint64_t (*a1)(void, __n128), uint64_t a2, unsigned __int8 *a3)
{
  swift_beginAccess();
  if (a3[19])
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  if (a3[18])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (a3[17])
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return (a1)(v7 | a3[16] | v6 | v5);
}

uint64_t sub_1D27D9850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 + 16;
  v8 = a3 + 16;
  sub_1D2878568();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = a4;
  v10[5] = a5;
  return sub_1D239DDE8(sub_1D27DA308, v10, "ImagePlaygroundInternal/AppStateMonitor.swift", 45, 2u, 91);
}

uint64_t sub_1D27D98D8(id *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  [*a1 invalidate];
  v6 = swift_beginAccess();
  *(a2 + 1) = 1;
  return a3(v6);
}

void sub_1D27D9968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v14[4] = sub_1D27DA2A0;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D23B9478;
  v14[3] = &block_descriptor_61_0;
  v11 = _Block_copy(v14);
  sub_1D2870F78();
  sub_1D2870F78();

  v12 = [v9 scheduledTimerWithTimeInterval:0 repeats:v11 block:15.0];
  _Block_release(v11);
  swift_beginAccess();
  v13 = *(a2 + 16);
  *(a2 + 16) = v12;
}

uint64_t sub_1D27D9AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 16;
  sub_1D2878568();
  v8[2] = v6;
  v8[3] = a3;
  v8[4] = a4;
  return sub_1D239DDE8(sub_1D27DA2AC, v8, "ImagePlaygroundInternal/AppStateMonitor.swift", 45, 2u, 101);
}

double sub_1D27D9B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D2877B48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2877B68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
  v13 = sub_1D2878AB8();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1D22D5EBC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_55;
  v15 = _Block_copy(aBlock);
  sub_1D2870F78();
  sub_1D2877B58();
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1D24B0908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D22D5EFC();
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v12, v8, v15);
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);

  return result;
}

double sub_1D27D9DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v23 = a3;
  v9 = sub_1D2877B48();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2877B68();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
  v16 = sub_1D2878AB8();
  v17 = swift_allocObject();
  v19 = v23;
  v18 = v24;
  v17[2] = a2;
  v17[3] = v19;
  v17[4] = a4;
  aBlock[4] = v18;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2877B58();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D24B0908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D22D5EFC();
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v15, v12, v20);
  _Block_release(v20);

  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v26);

  return result;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t objectdestroy_9Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D27DA198(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1 == 2;
  v5 = swift_beginAccess();
  *(v2 + 19) = v4;
  return v3(v5);
}

uint64_t sub_1D27DA208(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_beginAccess();
  *(v3 + 18) = a1;
  return v4(v5);
}

uint64_t objectdestroy_24Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D27DA2AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_beginAccess();
  *(v1 + 1) = 0;
  return v2(v3);
}

void sub_1D27DA368(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  *a2 = *(v3 + 123);
}

uint64_t GenmojiComposingViewModel.__allocating_init(delegate:creationViewStyle:)(uint64_t a1, uint64_t a2, char *a3)
{
  swift_allocObject();
  v6 = sub_1D27DF2EC(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

void sub_1D27DA49C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 48);
}

uint64_t sub_1D27DA56C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &qword_1EC6E1D50, &qword_1D28A6470);
}

uint64_t sub_1D27DA644(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50, &qword_1D28A6470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1D22BD1D0(a1, &v9[-v5], &qword_1EC6E1D50, &qword_1D28A6470);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1D27DFC74(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719D8();

  return sub_1D22BD238(v6, &qword_1EC6E1D50, &qword_1D28A6470);
}

uint64_t sub_1D27DA794()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_1D27DA7F4(v0);
    *(v0 + 16) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D27DA7F4(uint64_t a1)
{
  v2 = *(a1 + 56);
  sub_1D2870F78();
  sub_1D27DD774(v23);
  v3 = *(a1 + 64);
  v4 = *(a1 + 24);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  v11 = _s7ManagerCMa(0);
  v22[3] = v11;
  v22[4] = &off_1F4DC2000;
  v22[0] = v10;
  type metadata accessor for ComposingViewModel(0);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  sub_1D2870F78();
  sub_1D2870F78();
  v19 = sub_1D256D120(v2, v18, v3, v4, 0, a1, &protocol witness table for GenmojiComposingViewModel, 1, v12);

  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v20 = v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  *(v20 + 8) = &protocol witness table for GenmojiComposingViewModel;
  swift_unknownObjectWeakAssign();
  return v19;
}

uint64_t sub_1D27DAA64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v3 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  v7[0] = v3;
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  if (!Strong)
  {
    return swift_unknownObjectRelease();
  }

  sub_1D27DD774(v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1D23B5FEC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t (*sub_1D27DAB8C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 40);
  *a1 = Strong;
  a1[1] = v4;
  return sub_1D27DABDC;
}

uint64_t sub_1D27DABDC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1D27DAA64(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  sub_1D27DAA64(v3, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D27DAC4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1D27DACFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D27DADCC()
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D27DAE74(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719D8();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D27DAF54(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23ImagePlaygroundInternal25GenmojiComposingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  v4[7] = sub_1D27DAB8C(v4);
  return sub_1D27DB08C;
}

uint64_t sub_1D27DB098()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30, &unk_1D2881A80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = *(v0 + 56);
  v8 = sub_1D2871818();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1D2872438();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  type metadata accessor for FeedbackInput(0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
  v12 = *MEMORY[0x1E699C2C8];
  v13 = sub_1D2871CD8();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  v14 = v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 48) = -1;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  sub_1D22EC9BC(v6, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, &qword_1EC6D8F70, &qword_1D2881410);
  sub_1D22EC9BC(v3, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, &unk_1EC6DDE30, &unk_1D2881A80);
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D256F040(&v20, v14);
  swift_endAccess();
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved) = 2;
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification) = 0;
  v15 = v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = -4;
  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  if (*(&v21 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE40, &qword_1D2893E70);
    _s22OnDeviceImageGeneratorCMa(0);
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_1D22BD238(v18, &qword_1EC6DA1F0, &unk_1D2881AF0);
  }

  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  return v10;
}

uint64_t sub_1D27DB3E4()
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  return *(v0 + 48);
}

void sub_1D27DB484(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D27DB594()
{
  v0 = sub_1D27DA794();
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 2)
  {
    if (qword_1EC6D8C48 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC6E3CC0;
  }

  else
  {
    if (qword_1EC6D8C40 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC6E3CB8;
  }

  v2 = *v1;
  sub_1D2870F68();

  type metadata accessor for TapToRadarManager.LogReason();
  v3 = swift_allocObject();
  *(v3 + 48) = 0xD000000000000010;
  *(v3 + 56) = 0x80000001D28AFBF0;
  *(v3 + 64) = 5459817;
  *(v3 + 72) = 0xE300000000000000;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 16) = 0x2E2E2E726568744FLL;
  *(v3 + 24) = 0xE800000000000000;
  *(v3 + 32) = xmmword_1D2888230;
  MEMORY[0x1D38A0E30]();
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  return v2;
}

void sub_1D27DB798(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_1D28785F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v8 = sub_1D2878558();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = a1;
  sub_1D22AE01C(0, 0, v6, &unk_1D28A7E10, v9);

  if (*(v2 + 48))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12[-2] = v2;
    LOBYTE(v12[-1]) = 0;
    v12[1] = v2;
    sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v2 + 48) = 0;
  }
}

uint64_t sub_1D27DB9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D2878568();
  v5[4] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D27DBA40, v7, v6);
}

uint64_t sub_1D27DBA40()
{
  v0[7] = sub_1D23C8560();
  v1 = sub_1D27DB098();
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1D256C1D4;
  v3 = v0[3];

  return sub_1D242ECF0(v3, v1);
}

uint64_t sub_1D27DBB10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50, &qword_1D28A6470);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (v7 - v1);
  sub_1D27DA794();
  sub_1D22F7DF4();

  v3 = sub_1D22C3068();

  swift_getKeyPath();
  v7[1] = v3;
  sub_1D27DFC74(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  sub_1D22BD1D0(v3 + v4, v2, &qword_1EC6E1D50, &qword_1D28A6470);

  v5 = *v2;
  sub_1D2870F68();
  sub_1D22BD238(v2, &qword_1EC6E1D50, &qword_1D28A6470);
  return v5;
}

void sub_1D27DBC8C(uint64_t a1, uint64_t a2)
{
  v71 = sub_1D28712C8();
  MEMORY[0x1EEE9AC00](v71);
  v78 = sub_1D2871318();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v68 - v7;
  v76 = sub_1D2871798();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v80 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40, &unk_1D289B180);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v68 - v13;
  v74 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v74);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  v19 = sub_1D2871158();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v69 = v18;
    v70 = v2;
    aBlock = a1;
    v83 = a2;
    sub_1D2871128();
    sub_1D22BD06C();
    v23 = sub_1D2878F88();
    v25 = v24;
    v26 = v19;
    v27 = v23;
    (*(v20 + 8))(v22, v26);

    v28 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v28 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {

      return;
    }

    v29 = v77;
    v30 = v79;
    v31 = v78;
    (*(v77 + 56))(v79, 1, 1, v78);
    sub_1D2871778();
    sub_1D22BD1D0(v30, v11, &unk_1EC6E1D40, &unk_1D289B180);
    if ((*(v29 + 48))(v11, 1, v31) == 1)
    {
      sub_1D22BD238(v11, &unk_1EC6E1D40, &unk_1D289B180);
      if (qword_1ED89CD48 != -1)
      {
        swift_once();
      }

      *(v15 + 3) = sub_1D24B63AC(qword_1ED8B0010, v27, v25);
      v15[32] = v32 & 1;
      v33 = sub_1D27E1420(v27, v25);
      v35 = v34;
      v36 = v69;
    }

    else
    {
      v68 = v27;
      v37 = v73;
      (*(v29 + 32))(v73, v11, v31);
      v38 = v29;
      if (qword_1ED89CD48 != -1)
      {
        swift_once();
      }

      v39 = qword_1ED8B0010;
      sub_1D28712B8();
      sub_1D27DFC74(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      aBlock = sub_1D28782D8();
      v83 = v40;
      *&v88 = 12369903;
      *(&v88 + 1) = 0xA300000000000000;
      v81[0] = 0;
      v81[1] = 0xE000000000000000;
      v41 = sub_1D2878FA8();
      v43 = v42;

      v44 = sub_1D24B63AC(v39, v41, v43);
      LODWORD(v71) = v45;

      *&v88 = v44;
      sub_1D22BCFD0(0, &qword_1ED89CD40, 0x1E696AAB0);
      (*(v38 + 16))(v72, v37, v78);
      v46 = sub_1D2878AE8();
      v47 = *MEMORY[0x1E69DB5F0];
      v48 = [v46 length];
      v49 = swift_allocObject();
      *(v49 + 16) = &v88;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_1D2436B8C;
      *(v50 + 24) = v49;
      v86 = sub_1D2436B94;
      v87 = v50;
      aBlock = MEMORY[0x1E69E9820];
      v83 = 1107296256;
      v84 = sub_1D267502C;
      v85 = &block_descriptor_51;
      v51 = _Block_copy(&aBlock);
      sub_1D2870F78();

      [v46 enumerateAttribute:v47 inRange:0 options:v48 usingBlock:{0, v51}];

      _Block_release(v51);
      LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

      if (v46)
      {
        __break(1u);
        return;
      }

      v52 = v88;

      *(v15 + 3) = v52;
      v15[32] = v71 & 1;
      v53 = v73;
      v54 = sub_1D27E0DA0();
      v33 = sub_1D27E1420(v54, v55);
      v35 = v56;

      (*(v38 + 8))(v53, v78);
      v36 = v69;
    }

    v57 = MEMORY[0x1E69E7CC0];
    *(v15 + 1) = v33;
    *(v15 + 2) = v35;
    *(v15 + 5) = v57;
    v58 = v74;
    v59 = v75;
    v60 = v80;
    v61 = v76;
    (*(v75 + 16))(&v15[*(v74 + 36)], v80, v76);
    v15[*(v58 + 40)] = 0;
    sub_1D2879838();
    sub_1D2877F38();

    v62 = sub_1D2879818();
    (*(v59 + 8))(v60, v61);
    sub_1D22BD238(v79, &unk_1EC6E1D40, &unk_1D289B180);
    *v15 = v62;
    sub_1D27DF5A0(v15, v36);
    v63 = v70;
    sub_1D27DA794();
    v64 = sub_1D22FC2DC();

    v89 = v58;
    v90 = sub_1D27DFC74(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
    sub_1D27DF604(v36, boxed_opaque_existential_1);
    type metadata accessor for AddImageConditioningRepresentationOperation();
    v66 = swift_allocObject();
    *(v66 + 32) = 0u;
    *(v66 + 48) = 0u;
    *(v66 + 64) = 0u;
    *(v66 + 80) = 0u;
    *(v66 + 96) = 0u;
    *(v66 + 16) = 0u;
    *(v66 + 112) = 1;
    *(v66 + 114) = 1;
    sub_1D227268C(&v88, &aBlock);
    v87 = v64;
    swift_beginAccess();
    sub_1D22BD298(&aBlock, v66 + 16, &qword_1EC6D9A18, &qword_1D287EC90);
    swift_endAccess();
    *(v66 + 113) = 0;
    sub_1D27DF668(v36);
    v67 = *(v63 + 64);
    sub_1D2870F78();
    sub_1D27FDB14();
    sub_1D27DF058(v66, v67);
  }
}

void sub_1D27DC6F4(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28725B8();
    v7 = a1;
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot add image conditioning representation with error: %@", v10, 0xCu);
      sub_1D22BD238(v11, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

void (*sub_1D27DC8F0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50, &qword_1D28A6470) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[7] = v7;
  sub_1D27DA794();
  sub_1D22F7DF4();

  v9 = sub_1D22C3068();

  swift_getKeyPath();
  v5[5] = v9;
  sub_1D27DFC74(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719E8();

  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  sub_1D22BD1D0(v9 + v10, v8, &qword_1EC6E1D50, &qword_1D28A6470);

  v12 = *v8;
  v11 = v8[1];
  sub_1D2870F68();
  sub_1D22BD238(v8, &qword_1EC6E1D50, &qword_1D28A6470);
  v5[3] = v12;
  v5[4] = v11;
  return sub_1D27DCAB8;
}

void sub_1D27DCAB8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  if (a2)
  {
    sub_1D2870F68();
    sub_1D27DBC8C(v3, v4);
  }

  else
  {
    sub_1D27DBC8C(*(*a1 + 24), v4);
  }

  free(v5);

  free(v2);
}

double sub_1D27DCB44(char a1)
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  if (*(v1 + 72) & 1) == 0 && (a1)
  {
    sub_1D27DDD58();
    swift_beginAccess();
    if (*(v1 + 73) == 1)
    {
      *(v1 + 73) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D28719D8();
    }
  }

  return result;
}

void (*sub_1D27DCCB4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 72);
  return sub_1D27DCCE0;
}

void sub_1D27DCCE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1D27DCB44(v2);
  *(v1 + 72) = v2;
}

uint64_t sub_1D27DCD10()
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  return *(v0 + 72);
}

void sub_1D27DCDB0(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 72) == (a1 & 1))
  {
    sub_1D27DCB44(a1 & 1);
    *(v1 + 72) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t (*sub_1D27DCEC8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23ImagePlaygroundInternal25GenmojiComposingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  v4[7] = sub_1D27DCCB4(v4);
  return sub_1D27DD000;
}

void sub_1D27DD05C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  *a2 = *(v3 + 73);
}

uint64_t sub_1D27DD140()
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return *(v0 + 73);
}

void sub_1D27DD1F4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 73) == v2)
  {
    *(v1 + 73) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t (*sub_1D27DD318(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23ImagePlaygroundInternal25GenmojiComposingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  v4[7] = sub_1D27DD00C(v4);
  return sub_1D27DD450;
}

void sub_1D27DD45C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1D28719F8();

  free(v3);
}

uint64_t sub_1D27DD4F0()
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D27DD594@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 80);
  return sub_1D2870F78();
}

double sub_1D27DD640(uint64_t a1)
{
  if (*(v1 + 80) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27DD774@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_1D22BD1D0(v1 + 88, &v7, &qword_1EC6E23E8, &qword_1D28A7C00);
  if (v8)
  {
    return sub_1D227268C(&v7, a1);
  }

  sub_1D22BD238(&v7, &qword_1EC6E23E8, &qword_1D28A7C00);
  v4 = _s7ManagerCMa(0);
  swift_allocObject();
  v5 = sub_1D2870F78();
  v6 = sub_1D239E2B0(v5, 4);
  a1[3] = v4;
  a1[4] = &off_1F4DC2000;
  *a1 = v6;
  sub_1D22D7044(a1, &v7);
  swift_beginAccess();
  sub_1D22BD298(&v7, v1 + 88, &qword_1EC6E23E8, &qword_1D28A7C00);
  return swift_endAccess();
}

uint64_t GenmojiComposingViewModel.init(delegate:creationViewStyle:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = sub_1D27DF2EC(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1D27DD8D4()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D27DA794();
  sub_1D2317108(&v43);

  v6 = v43;
  if (v43)
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
    v8 = v47;
    v9 = v48;
    v38 = v49;
    v10 = sub_1D23C7CA8();
    v40 = sub_1D2878068();
    v39 = sub_1D2878068();
    v11 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    if (*(v10 + 48))
    {
      sub_1D2870F68();
      v12 = sub_1D2878068();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v11;
      sub_1D24E8054(v12, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v11 = v43;
    }

    v14 = sub_1D2878068();
    v15 = sub_1D2418030(v11);

    if (v15)
    {
      type metadata accessor for IAPayloadKey(0);
      v37[1] = v16;
      sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
      sub_1D27DFC74(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
      v17 = sub_1D2877E78();
    }

    else
    {
      v17 = 0;
    }

    v22 = objc_opt_self();
    v24 = v39;
    v23 = v40;
    [v22 asyncSendSignal:v39 toChannel:v40 withNullableUniqueStringID:v14 withPayload:v17];

    swift_getKeyPath();
    v43 = v1;
    sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v28 = v41;
      v27 = v42;
      v43 = v6;
      v44 = v41;
      v45 = v42;
      v46 = v7;
      v47 = v8;
      v48 = v9;
      v29 = v38;
      v49 = v38;
      (*(v25 + 8))(&v43, ObjectType, v25);
      swift_unknownObjectRelease();
      v30 = v6;
      v31 = v28;
      v32 = v27;
      v33 = v7;
      v34 = v8;
      v35 = v9;
      v36 = v29;
    }

    else
    {
      v30 = v6;
      v31 = v41;
      v32 = v42;
      v33 = v7;
      v34 = v8;
      v35 = v9;
      v36 = v38;
    }

    return sub_1D23413F4(v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    sub_1D28724D8();
    v18 = sub_1D2873CA8();
    v19 = sub_1D2878A18();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D226E000, v18, v19, "Could not retrieve Genmoji result for current preview", v20, 2u);
      MEMORY[0x1D38A3520](v20, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

double sub_1D27DDD14(uint64_t a1)
{
  sub_1D27DA794();
  sub_1D2323AD0(a1);

  return result;
}

double sub_1D27DDD58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80, &qword_1D287F3C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v11 - v2;
  sub_1D27DA794();
  v4 = sub_1D22F7DF4();

  swift_getKeyPath();
  v11[1] = v4;
  sub_1D27DFC74(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v4 + 80, &v12, &qword_1EC6D9A58, &qword_1D287F000);

  if (v13)
  {
    sub_1D227268C(&v12, v15);
    swift_getKeyPath();
    *&v12 = v0;
    sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
    sub_1D28719E8();

    v5 = v16;
    v6 = v17;
    v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v13 = v5;
    v14 = *(v6 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
    sub_1D2870F78();
    sub_1D2352940(&v12, v3);
    ImageGenerationPersonSelectionState.selection.setter(v3);

    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_1D22BD238(&v12, &qword_1EC6D9A58, &qword_1D287F000);
    swift_getKeyPath();
    v15[0] = v0;
    sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
    sub_1D28719E8();

    v10 = type metadata accessor for ImageGenerationPerson(0);
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    sub_1D2870F78();
    ImageGenerationPersonSelectionState.selection.setter(v3);
  }

  return result;
}

double sub_1D27DE084()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D2878568();
  sub_1D2870F78();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_1D22AE01C(0, 0, v4, &unk_1D28A7BF8, v7);

  return result;
}

uint64_t sub_1D27DE1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1D2878568();
  v4[9] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D27DE240, v6, v5);
}

uint64_t sub_1D27DE240()
{
  sub_1D27DA794();
  v1 = sub_1D22FFBF8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGenerationCancelledFromBackgrounding) == 1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGenerationCancelledFromBackgrounding) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    v0[7] = v1;
    sub_1D27DFC74(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
    sub_1D28719D8();
  }

  sub_1D2870F78();
  v0[12] = sub_1D22FFBF8();

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1D27DE404;

  return sub_1D25A544C();
}

uint64_t sub_1D27DE404()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D27DE548, v3, v2);
}

uint64_t sub_1D27DE548()
{

  sub_1D27DD774(v0 + 2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_1D23B5FEC();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1();
}

char *GenmojiComposingViewModel.deinit()
{

  sub_1D22729C0(v0 + 32);

  sub_1D22BD238(v0 + 88, &qword_1EC6E23E8, &qword_1D28A7C00);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal25GenmojiComposingViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GenmojiComposingViewModel.__deallocating_deinit()
{

  sub_1D22729C0(v0 + 32);

  sub_1D22BD238(v0 + 88, &qword_1EC6E23E8, &qword_1D28A7C00);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal25GenmojiComposingViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall GenmojiComposingViewModel.genmojiPreviewsViewDidInsertGenmoji()()
{
  sub_1D27DA794();
  sub_1D2317108(&v10);

  v1 = v10;
  if (v10)
  {
    v3 = v11;
    v2 = v12;
    v5 = v13;
    v4 = v14;
    v7 = v15;
    v6 = v16;
    swift_getKeyPath();
    v10 = v0;
    sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0 + 40);
      ObjectType = swift_getObjectType();
      v10 = v1;
      v11 = v3;
      v12 = v2;
      v13 = v5;
      v14 = v4;
      v15 = v7;
      v16 = v6;
      (*(v8 + 8))(&v10, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    sub_1D23413F4(v1, v3, v2, v5, v4, v7, v6);
  }
}

Swift::Void __swiftcall GenmojiComposingViewModel.genmojiComposingViewDidTapAllEmojiButton()()
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_1D27DA794();
  sub_1D22F7DF4();

  v3 = sub_1D22C3068();

  swift_getKeyPath();
  sub_1D27DFC74(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (v4)
  {
    v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
    sub_1D2870F78();
    v4(0);

    sub_1D22D7900(v4, v5);
  }

  else
  {
  }

  sub_1D2870F78();
  v6 = sub_1D22F7DF4();

  if (*(v6 + 123))
  {
    *(v6 + 123) = 1;
    sub_1D22C2EAC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27DFC74(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719D8();
  }

  sub_1D2870F78();
  sub_1D22F7DF4();

  sub_1D22C3068();

  sub_1D27A11B4(0);

  sub_1D2870F78();
  sub_1D22F7DF4();

  v8 = sub_1D22C3068();

  swift_getKeyPath();
  sub_1D28719E8();

  v9 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (v9)
  {
    v10 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
    sub_1D2870F78();
    v9(1);

    sub_1D22D7900(v9, v10);
  }

  else
  {
  }
}

void (*sub_1D27DEC78(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D27DCEC8(v2);
  return sub_1D24DA5F4;
}

uint64_t GenmojiComposingViewModel.composingViewModelDidCancel(_:requiresShowingGrid:)()
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t GenmojiComposingViewModel.composingViewModelHasSignificantEditsDidChange(_:hasSignificantEdits:)(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 56))(a2 & 1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D27DEEA4()
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D27DEF78(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_1D27DFC74(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel, &protocol conformance descriptor for GenmojiComposingViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 56))(a2 & 1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D27DF058(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[2];
  if (v8)
  {
    v18 = v8;
    [v18 beginUndoGrouping];
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a1;
    v10[4] = &off_1EEC2DCA8;
    sub_1D2870F78();
    sub_1D28789E8();

    if (([v18 isUndoing] & 1) == 0)
    {
      sub_1D27FD404();
      if (v11)
      {
        v12 = sub_1D2878068();

        [v18 setActionName_];
      }
    }

    [v18 endUndoGrouping];
    v13 = v18;
  }

  else
  {
    sub_1D2872628();
    v14 = sub_1D2873CA8();
    v15 = sub_1D2878A18();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D226E000, v14, v15, "UndoManager is nil when trying to register an undo operation", v16, 2u);
      MEMORY[0x1D38A3520](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D27DF2EC(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80, &qword_1D287F3C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = *a3;
  *(v4 + 16) = 0;
  *(v4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 72) = 0;
  v13 = type metadata accessor for ImageGenerationPerson(0);
  *(v4 + 48) = 0;
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 1, 1, v13);
  type metadata accessor for ImageGenerationPersonSelectionState(0);
  v15 = swift_allocObject();
  v14((v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal35ImageGenerationPersonSelectionState__selection), 1, 1, v13);
  sub_1D2871A18();
  sub_1D22BD1D0(v11, v8, &qword_1EC6D8F80, &qword_1D287F3C0);
  ImageGenerationPersonSelectionState.selection.setter(v8);
  sub_1D22BD238(v11, &qword_1EC6D8F80, &qword_1D287F3C0);
  *(v4 + 80) = v15;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0;
  sub_1D2871A18();
  *(v4 + 24) = v12;
  swift_unknownObjectRetain();
  sub_1D22729C0(v4 + 32);
  *(v4 + 40) = v20;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  type metadata accessor for ServicesFetcher();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  *(v4 + 56) = v16;
  type metadata accessor for SessionUndoManager();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v4 + 64) = v17;
  return v4;
}

uint64_t type metadata accessor for GenmojiComposingViewModel(uint64_t a1)
{
  result = qword_1EC6D8340;
  if (!qword_1EC6D8340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D27DF5A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27DF604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27DF668(uint64_t a1)
{
  v2 = type metadata accessor for Prompt(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

void sub_1D27DF6DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D27DCB44(v2);
  *(v1 + 72) = v2;
}

uint64_t sub_1D27DF738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D27DE1A8(a1, v4, v5, v6);
}

uint64_t sub_1D27DF7F4(uint64_t a1)
{
  result = sub_1D2871A28();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D27DFB58()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D27DFB94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D27DB9A8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D27DFC74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D27DFCBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 73) = v2;
}

uint64_t sub_1D27DFD1C()
{
  v1 = *(v0 + 32);
  v2 = swift_unknownObjectRetain();
  return sub_1D27DAA64(v2, v1);
}

void sub_1D27DFD88(uint64_t a1)
{
  sub_1D2874918();
  sub_1D28748F8();
  sub_1D2874948();

  MEMORY[0x1D38A0390](v1, 0.3, 1.0, 0.0);
  sub_1D2874978();

  sub_1D28748F8();
  MEMORY[0x1D38A0390](0.15, 1.0, 0.0);
  sub_1D2874978();

  v2 = sub_1D28748E8();

  qword_1EC6E3FC8 = v2;
}

uint64_t sub_1D27DFE94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A20, &unk_1D287EDC0);
  __swift_allocate_value_buffer(v0, qword_1EC6E3B78);
  v1 = __swift_project_value_buffer(v0, qword_1EC6E3B78);
  v2 = sub_1D2877B38();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1D27DFF34()
{
  v0 = [objc_opt_self() darkGrayColor];
  result = sub_1D2877128();
  qword_1EC6E3FD0 = result;
  return result;
}

void sub_1D27DFFD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1D28777D8();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED8B0058;
  sub_1D2877788();
}

uint64_t sub_1D27E00AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = a2;
  v4 = sub_1D2875E18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - v17;
  (*(v5 + 104))(v25 - v17, *MEMORY[0x1E697FF38], v4, v16);
  (*(v5 + 56))(v18, 0, 1, v4);
  v19 = *(v9 + 56);
  sub_1D24B17B0(a3, v11);
  sub_1D24B17B0(v18, &v11[v19]);
  v20 = *(v5 + 48);
  if (v20(v11, 1, v4) == 1)
  {
    sub_1D22BD238(v18, &qword_1EC6D99B8, &unk_1D287E890);
    if (v20(&v11[v19], 1, v4) == 1)
    {
      sub_1D22BD238(v11, &qword_1EC6D99B8, &unk_1D287E890);
LABEL_9:
      sub_1D2874E88();
      sub_1D24B1820(&qword_1ED89DE78, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
      v21 = sub_1D2877F78();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1D24B17B0(v11, v14);
  if (v20(&v11[v19], 1, v4) == 1)
  {
    sub_1D22BD238(v18, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_1D22BD238(v11, &qword_1EC6E0DB0, &qword_1D288C390);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v11[v19], v4);
  sub_1D24B1820(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v22 = sub_1D2877F98();
  v23 = *(v5 + 8);
  v23(v7, v4);
  sub_1D22BD238(v18, &qword_1EC6D99B8, &unk_1D287E890);
  v23(v14, v4);
  sub_1D22BD238(v11, &qword_1EC6D99B8, &unk_1D287E890);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

void sub_1D27E04B8()
{
  if ((v0[24] & 1) != 0 || (v0[32] & 1) != 0 || v0[40] != 1)
  {
    v1 = 2;
  }

  else
  {
    v1 = v0[16];
  }

  if (v0[64] != v1)
  {
    v0[64] = v1;
    v2 = sub_1D2878568();
    v3[1] = MEMORY[0x1EEE9AC00](v2);
    v4 = v1;
    sub_1D239DDE8(sub_1D27E0CE0, v3, "ImagePlaygroundInternal/PerformanceMitigationNotifier.swift", 59, 2u, 59);
  }
}

uint64_t sub_1D27E0590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
  *(v2 + 36) = 0;
  v4 = (v2 + 36);
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 64) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  sub_1D24614C4();
  sub_1D2870F78();
  v5 = sub_1D2878AB8();
  v6 = swift_allocObject();
  swift_weakInit();
  v21 = sub_1D27E0CB0;
  v22 = v6;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D27E09AC;
  v20 = &block_descriptor_52;
  v7 = _Block_copy(&v17);
  sub_1D2870F78();

  swift_beginAccess();
  v8 = notify_register_dispatch("com.apple.springboard.lockstate", (v2 + 20), v5, v7);
  swift_endAccess();
  _Block_release(v7);

  *(v2 + 17) = v8 == 0;
  v9 = sub_1D2878AB8();
  v10 = swift_allocObject();
  swift_weakInit();
  v21 = sub_1D27E0CD0;
  v22 = v10;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D27E09AC;
  v20 = &block_descriptor_9;
  v11 = _Block_copy(&v17);

  swift_beginAccess();
  v12 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", (v2 + 28), v9, v11);
  swift_endAccess();
  _Block_release(v11);

  *(v2 + 25) = v12 == 0;
  v13 = sub_1D2878AB8();
  v14 = swift_allocObject();
  swift_weakInit();

  v21 = sub_1D27E0CD8;
  v22 = v14;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D27E09AC;
  v20 = &block_descriptor_13;
  v15 = _Block_copy(&v17);

  swift_beginAccess();
  LODWORD(v4) = notify_register_dispatch("com.apple.iokit.hid.displayStatus", v4, v13, v15);
  swift_endAccess();

  _Block_release(v15);

  *(v3 + 33) = v4 == 0;
  return v3;
}

double sub_1D27E08F0(uint64_t a1, uint64_t a2)
{
  v5[7] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5[0] = 0;
    swift_beginAccess();
    if (!notify_get_state(*(v4 + 20), v5))
    {
      *(v4 + 24) = v5[0] != 0;
      sub_1D27E04B8();
    }
  }

  return result;
}

double sub_1D27E09AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1D2870F78();
  v3(a2);

  return result;
}

double sub_1D27E0A00(uint64_t a1, uint64_t a2)
{
  v5[7] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5[0] = 0;
    swift_beginAccess();
    if (!notify_get_state(*(v4 + 28), v5))
    {
      *(v4 + 32) = v5[0] != 0;
      sub_1D27E04B8();
    }
  }

  return result;
}

double sub_1D27E0ABC(uint64_t a1, uint64_t a2)
{
  v5[7] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5[0] = 0;
    swift_beginAccess();
    if (!notify_get_state(*(v4 + 36), v5))
    {
      *(v4 + 40) = v5[0] != 0;
      sub_1D27E04B8();
    }
  }

  return result;
}

uint64_t sub_1D27E0B78()
{
  if (*(v0 + 17) == 1)
  {
    swift_beginAccess();
    notify_cancel(*(v0 + 20));
  }

  if (*(v0 + 25) == 1)
  {
    swift_beginAccess();
    notify_cancel(*(v0 + 28));
  }

  if (*(v0 + 33) == 1)
  {
    swift_beginAccess();
    notify_cancel(*(v0 + 36));
  }

  return swift_deallocClassInstance();
}

unint64_t sub_1D27E0C5C()
{
  result = qword_1EC6E23F0;
  if (!qword_1EC6E23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E23F0);
  }

  return result;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

double sub_1D27E0D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  sub_1D2870F78();
  v9(a2, a3, a4, a5);

  return result;
}

uint64_t sub_1D27E0DA0()
{
  v49 = sub_1D2871158();
  v1 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2871318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &qword_1ED89CD40, 0x1E696AAB0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = sub_1D2878AE8();
  v8 = MEMORY[0x1E69E7CC0];
  v61 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  p_aBlock = *MEMORY[0x1E69DB5F0];
  v10 = [v7 length];
  v11 = swift_allocObject();
  v11[2] = &v61;
  v11[3] = v7;
  v11[4] = &v62;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D27E1F34;
  *(v12 + 24) = v11;
  v46 = v11;
  v59 = sub_1D2436B94;
  v60 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1D267502C;
  v58 = &block_descriptor_53;
  v13 = _Block_copy(&aBlock);
  v14 = v7;
  sub_1D2870F78();

  [v14 enumerateAttribute:p_aBlock inRange:0 options:v10 usingBlock:{0, v13}];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = [v14 length];
  if (__OFSUB__(v15, v61))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = v14;
  if (v15 - v61 >= 1)
  {
    v16 = [v14 attributedSubstringFromRange_];
    v17 = [v16 string];

    p_aBlock = sub_1D28780A8();
    v10 = v18;

    v14 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_5:
      v21 = *(v14 + 2);
      v20 = *(v14 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v14 = sub_1D27CC674((v20 > 1), v21 + 1, 1, v14);
      }

      *(v14 + 2) = v22;
      v23 = &v14[16 * v21];
      *(v23 + 4) = p_aBlock;
      *(v23 + 5) = v10;
      v62 = v14;
      goto LABEL_9;
    }

LABEL_31:
    v14 = sub_1D27CC674(0, *(v14 + 2) + 1, 1, v14);
    v62 = v14;
    goto LABEL_5;
  }

  v14 = v62;
  v22 = *(v62 + 2);
  if (v22)
  {
LABEL_9:
    v54 = v8;
    sub_1D2870F68();
    sub_1D23D81B8(0, v22, 0);
    v10 = v54;
    v47 = (v1 + 8);
    sub_1D22BD06C();
    v44 = v14;
    v24 = (v14 + 40);
    v25 = v48;
    do
    {
      v26 = *v24;
      aBlock = *(v24 - 1);
      v56 = v26;
      v52 = 12369903;
      v53 = 0xA300000000000000;
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1D2870F68();
      p_aBlock = &aBlock;
      aBlock = sub_1D2878FA8();
      v56 = v27;
      sub_1D2871128();
      v28 = sub_1D2878F88();
      v30 = v29;

      (*v47)(v25, v49);

      v54 = v10;
      v32 = v10[2];
      v31 = v10[3];
      if (v32 >= v31 >> 1)
      {
        p_aBlock = &v54;
        sub_1D23D81B8((v31 > 1), v32 + 1, 1);
        v10 = v54;
      }

      v10[2] = v32 + 1;
      v33 = &v10[2 * v32];
      *(v33 + 4) = v28;
      *(v33 + 5) = v30;
      v24 += 2;
      --v22;
    }

    while (v22);

    goto LABEL_14;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v14 = 0;
  v1 = v10[2];
  v8 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v34 = &v10[2 * v14 + 5];
  while (v1 != v14)
  {
    if (v14 >= v10[2])
    {
      __break(1u);
      goto LABEL_29;
    }

    ++v14;
    v36 = *(v34 - 1);
    v35 = *v34;
    v34 += 2;
    v37 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v37 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      sub_1D2870F68();
      v38 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v8;
      if ((v38 & 1) == 0)
      {
        p_aBlock = &aBlock;
        sub_1D23D81B8(0, *(v8 + 16) + 1, 1);
        v8 = aBlock;
      }

      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      if (v40 >= v39 >> 1)
      {
        p_aBlock = &aBlock;
        sub_1D23D81B8((v39 > 1), v40 + 1, 1);
        v8 = aBlock;
      }

      *(v8 + 16) = v40 + 1;
      v41 = v8 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v35;
      goto LABEL_15;
    }
  }

  aBlock = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
  sub_1D238D968();
  v42 = sub_1D2877F68();

  return v42;
}

char *sub_1D27E1420(uint64_t *a1, unint64_t a2)
{
  v2 = a1;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_37;
  }

  if (qword_1ED89CF60 != -1)
  {
LABEL_47:
    swift_once();
  }

  if (!qword_1ED89CF50)
  {
LABEL_37:
    sub_1D2870F68();
    return v2;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v5 = sub_1D2878068();
  [v5 length];
  aBlock[4] = sub_1D27E1FC8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D27E0D28;
  aBlock[3] = &block_descriptor_9_0;
  v6 = _Block_copy(aBlock);
  sub_1D2870F78();

  CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
  _Block_release(v6);

  swift_beginAccess();
  if (!*(*(v4 + 16) + 16))
  {
    sub_1D2870F68();

    return v2;
  }

  sub_1D22BCFD0(0, &qword_1EC6E23F8, 0x1E696AD60);
  v39 = v5;
  v41 = sub_1D2878DB8();
  sub_1D22BCFD0(0, &qword_1EC6D9420, 0x1E696AEC0);
  v40 = sub_1D2878DA8();
  v7 = *(*(v4 + 16) + 16);
  if (!v7)
  {
LABEL_39:
    v2 = sub_1D28780A8();

    return v2;
  }

  v8 = 0;
  v38 = sub_1D2870F68();
  v2 = (v38 + 64);
  while (1)
  {
    v9 = *(v2 - 1);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v2 - 2);
    v12 = *v2;
    sub_1D2870F68();
    v13 = v11;
    [v41 replaceCharactersInRange:v10 withString:{v12, v13}];
    v14 = v10 - 1;
    if (v10 >= 1)
    {
      v15 = [v41 substringWithRange_];
      v16 = sub_1D28780A8();
      v18 = v17;

      if (v16 == 32 && v18 == 0xE100000000000000)
      {
      }

      else
      {
        v20 = sub_1D2879618();

        if ((v20 & 1) == 0)
        {
          v21 = sub_1D2878068();
          [v41 insertString:v21 atIndex:v10];

          v22 = __OFADD__(v8++, 1);
          if (v22)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v23 = [v13 length];
    v24 = &v23[v10];
    if (__OFADD__(v10, v23))
    {
      goto LABEL_42;
    }

    v25 = v41;
    v26 = [v25 length];
    v27 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      goto LABEL_43;
    }

    if (v26 < v27)
    {

      goto LABEL_28;
    }

    v28 = [v25 length];

    if (v27 < v28)
    {
      v29 = [v25 substringWithRange_];
      v30 = sub_1D28780A8();
      v32 = v31;

      if (v30 == 32 && v32 == 0xE100000000000000)
      {

        goto LABEL_28;
      }

      v35 = sub_1D2879618();

      if ((v35 & 1) == 0)
      {
        break;
      }
    }

LABEL_28:
    v33 = [v13 length];

    v34 = &v33[-v12];
    if (__OFSUB__(v33, v12))
    {
      goto LABEL_44;
    }

    v22 = __OFADD__(v8, v34);
    v8 += v34;
    if (v22)
    {
      goto LABEL_45;
    }

    v2 += 5;
    if (!--v7)
    {

      goto LABEL_39;
    }
  }

  result = [v13 length];
  if (!__OFADD__(v10, result))
  {
    [v25 insertString:v40 atIndex:&result[v10]];
    v37 = [v40 length];
    v22 = __OFADD__(v8, v37);
    v8 += v37;
    if (v22)
    {
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_1D27E1928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return;
  }

  String = CEMEmojiTokenGetString();
  if (!String)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = String;
  v10 = CEMEmojiTokenCopyName();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = v9;
  v13 = sub_1D2878108();
  v15 = v14;
  swift_beginAccess();
  v16 = *(a5 + 16);
  sub_1D2870F68();
  v17 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1D27CE4B0(0, *(v16 + 2) + 1, 1, v16);
    *(a5 + 16) = v16;
  }

  v20 = *(v16 + 2);
  v19 = *(v16 + 3);
  if (v20 >= v19 >> 1)
  {
    v16 = sub_1D27CE4B0((v19 > 1), v20 + 1, 1, v16);
  }

  *(v16 + 2) = v20 + 1;
  v21 = &v16[40 * v20];
  *(v21 + 4) = v13;
  *(v21 + 5) = v15;
  *(v21 + 6) = v17;
  *(v21 + 7) = a2;
  *(v21 + 8) = a3;
  *(a5 + 16) = v16;
  swift_endAccess();
}

void sub_1D27E1A80()
{
  v0 = sub_1D28718F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28718C8();
  sub_1D2871838();
  (*(v1 + 8))(v3, v0);
  v4 = sub_1D2878068();

  v5 = CEMCreateEmojiLocaleData();

  qword_1ED89CF50 = v5;
}

uint64_t sub_1D27E1B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, char **a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210, &unk_1D2886B20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v45 - v14);
  v16 = type metadata accessor for CuratedPrompt(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D27E1F58(a1, v49);
  if (!v50)
  {
    v24 = &qword_1EC6E1900;
    v25 = &qword_1D288CA00;
    v26 = v49;
    return sub_1D22BD238(v26, v24, v25);
  }

  sub_1D22BCFD0(0, &qword_1EC6DC5F8, 0x1E69DB780);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v48;
    sub_1D24B6A60(v15);
    v23 = *(v17 + 48);
    v22 = (v17 + 48);
    if (v23(v15, 1, v16) == 1)
    {

      v24 = &qword_1EC6DA210;
      v25 = &unk_1D2886B20;
      v26 = v15;
      return sub_1D22BD238(v26, v24, v25);
    }

    sub_1D26D64FC(v15, v19);
    v27 = &v19[*(v16 + 92)];
    v28 = v27[48];
    if (v28 == 255)
    {

      return sub_1D26D64A0(v19);
    }

    v30 = *v27;
    v29 = *(v27 + 1);
    if (v28)
    {
      if (*(v27 + 3))
      {
        v30 = *(v27 + 2);
        v29 = sub_1D2870F68();
        goto LABEL_15;
      }

      if (!v29)
      {
        v30 = *(v27 + 4);
        v29 = *(v27 + 5);
      }
    }

    sub_1D2870F68();
LABEL_15:
    if (*a5 >= a2)
    {
      goto LABEL_21;
    }

    if (__OFSUB__(a2, *a5))
    {
      __break(1u);
    }

    else
    {
      v47 = v29;
      v31 = [a6 attributedSubstringFromRange_];
      v32 = [v31 string];

      v29 = sub_1D28780A8();
      v34 = v33;

      v22 = *a7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a7 = v22;
      v45 = v34;
      v46 = v30;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v37 = *(v22 + 2);
        v36 = *(v22 + 3);
        if (v37 >= v36 >> 1)
        {
          v22 = sub_1D27CC674((v36 > 1), v37 + 1, 1, v22);
          *a7 = v22;
        }

        *(v22 + 2) = v37 + 1;
        v38 = &v22[16 * v37];
        v39 = v45;
        v30 = v46;
        *(v38 + 4) = v29;
        *(v38 + 5) = v39;
        v29 = v47;
LABEL_21:
        if (__OFADD__(a2, a3))
        {
          __break(1u);
        }

        else
        {
          *a5 = a2 + a3;
          a5 = *a7;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          *a7 = a5;
          if (v40)
          {
LABEL_23:
            v42 = *(a5 + 2);
            v41 = *(a5 + 3);
            if (v42 >= v41 >> 1)
            {
              *a7 = sub_1D27CC674((v41 > 1), v42 + 1, 1, a5);
            }

            v43 = *a7;
            *(v43 + 2) = v42 + 1;
            v44 = &v43[16 * v42];
            *(v44 + 4) = v30;
            *(v44 + 5) = v29;
            return sub_1D26D64A0(v19);
          }
        }

        a5 = sub_1D27CC674(0, *(a5 + 2) + 1, 1, a5);
        *a7 = a5;
        goto LABEL_23;
      }
    }

    v22 = sub_1D27CC674(0, *(v22 + 2) + 1, 1, v22);
    *a7 = v22;
    goto LABEL_18;
  }

  return result;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D27E1F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1900, &qword_1D288CA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ExecutionContext.clientIdentity()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428, &unk_1D28A7FD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  if (qword_1ED8A3548 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430, &unk_1D28835E0);
  v10 = __swift_project_value_buffer(v9, qword_1ED8A3550);
  os_unfair_lock_lock(v10);
  sub_1D27E246C(v10 + *(v9 + 28), v8);
  os_unfair_lock_unlock(v10);
  v11 = sub_1D28729E8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v8, v11);
  }

  sub_1D22BD238(v8, &qword_1EC6DA428, &unk_1D28A7FD0);
  sub_1D2872658();
  v13 = sub_1D2873CA8();
  v14 = sub_1D2878A28();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D226E000, v13, v14, "default ClientIdentity was required before it was initialized, using fallback...", v15, 2u);
    MEMORY[0x1D38A3520](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_1D28729D8();
}

uint64_t sub_1D27E22B8(uint64_t (*a1)(char *))
{
  v2 = sub_1D28729E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ExecutionContext.clientIdentity()(v4);
  return a1(v4);
}

uint64_t sub_1D27E233C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428, &unk_1D28A7FD0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430, &unk_1D28835E0);
  __swift_allocate_value_buffer(v3, qword_1ED8A3550);
  v4 = __swift_project_value_buffer(v3, qword_1ED8A3550);
  v5 = sub_1D28729E8();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  *v4 = 0;
  v6 = *(v3 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6E2408, qword_1D28A80C0);
  bzero(v4 + v6, *(*(v7 - 8) + 64));
  return sub_1D27E377C(v2, v4 + v6);
}

uint64_t sub_1D27E246C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428, &unk_1D28A7FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D27E24DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_1D28714B8();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1D27E25E4(__SecTask *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  error[0] = 0;
  v9 = SecTaskCopySigningIdentifier(a1, error);
  if (v9)
  {
    v10 = v9;
    sub_1D28780A8();
    v11 = sub_1D2878288();

    if (v11)
    {

      return 1;
    }

    sub_1D2872578();
    v25 = v10;
    v26 = sub_1D2873CA8();
    v27 = sub_1D2878A18();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v10;
      v30 = v25;
      _os_log_impl(&dword_1D226E000, v26, v27, "Could not validate client identity: %@.", v28, 0xCu);
      sub_1D22BD238(v29, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v29, -1, -1);
      MEMORY[0x1D38A3520](v28, -1, -1);
    }

    else
    {
      v30 = v26;
      v26 = v25;
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v13 = error[0];
    if (error[0])
    {
      v14 = CFErrorCopyDescription(error[0]);
      if (v14)
      {
        v15 = v14;
        sub_1D2872578();
        v16 = v15;
        v17 = sub_1D2873CA8();
        v18 = sub_1D2878A18();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v31 = v16;
          v32 = v20;
          v21 = v20;
          *v19 = 136315138;
          v22 = sub_1D28780A8();
          v24 = sub_1D23D7C84(v22, v23, &v32);

          *(v19 + 4) = v24;
          _os_log_impl(&dword_1D226E000, v17, v18, "Could not validate client identity. %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x1D38A3520](v21, -1, -1);
          MEMORY[0x1D38A3520](v19, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v5, v2);
      }

      else
      {
      }
    }
  }

  return 0;
}

SecTaskRef sub_1D27E2970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  result = SecTaskCreateWithAuditToken(0, &token);
  if (result)
  {
    v5 = result;
    v6 = sub_1D2878068();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7 && (swift_dynamicCast() & 1) != 0)
    {
      return *token.val;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

SecTaskRef sub_1D27E2A4C(void *a1)
{
  v2 = [a1 processIdentifier];
  [a1 auditToken];
  result = sub_1D27E2970(v12, v13, v14, v15);
  if (!v4)
  {
    sub_1D27E3730();
    v5 = sub_1D27E24DC(v12, v13, v14, v15);
    if (v5)
    {
      v8 = v5;
      v9 = [v5 bundleIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1D28780A8();

        return v11;
      }
    }

    v6 = swift_slowAlloc();
    if (proc_name(v2, v6, 0x400u) < 1)
    {
      MEMORY[0x1D38A3520](v6, -1, -1);
      return 0;
    }

    else
    {
      v7 = sub_1D28781F8();
      MEMORY[0x1D38A3520](v6, -1, -1);
      return v7;
    }
  }

  return result;
}

uint64_t _s23ImagePlaygroundInternal16ExecutionContextV17setClientIdentityyyAC08GPClientH0OFZ_0(uint64_t a1)
{
  v2 = sub_1D2873CB8();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v77 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  v22 = *a1;
  v23 = *(a1 + 8);
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  v26 = *(a1 + 32);
  if (v26 <= 1)
  {
    v81 = v18;
    v82 = v19;
    if (v26)
    {
      v60 = v24;
      if (qword_1ED8A3548 != -1)
      {
        swift_once();
      }

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430, &unk_1D28835E0);
      v62 = __swift_project_value_buffer(v61, qword_1ED8A3550);
      os_unfair_lock_lock(v62);
      v63 = *(v61 + 28);
      sub_1D22BD238(v62 + v63, &qword_1EC6DA428, &unk_1D28A7FD0);
      sub_1D2870F68();
      sub_1D28729A8();
      v64 = sub_1D28729E8();
      (*(*(v64 - 8) + 56))(v62 + v63, 0, 1, v64);
      os_unfair_lock_unlock(v62);
      sub_1D2872658();
      sub_1D2870F68();
      v65 = sub_1D2873CA8();
      v66 = sub_1D2878A38();
      sub_1D253CD98(v22, v23, v25, v60, 1);
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *atoken.val = v68;
        *v67 = 136315394;
        *(v67 + 4) = sub_1D23D7C84(v23, v25, &atoken);
        *(v67 + 12) = 1024;
        *(v67 + 14) = v22;
        _os_log_impl(&dword_1D226E000, v65, v66, "Attribution: process (%s[%d]).", v67, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x1D38A3520](v68, -1, -1);
        MEMORY[0x1D38A3520](v67, -1, -1);
      }

      return (*(v82 + 8))(v13, v81);
    }

    else
    {
      v37 = v24;
      if (qword_1ED8A3548 != -1)
      {
        swift_once();
      }

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430, &unk_1D28835E0);
      v39 = __swift_project_value_buffer(v38, qword_1ED8A3550);
      os_unfair_lock_lock(v39);
      v40 = *(v38 + 28);
      sub_1D22BD238(v39 + v40, &qword_1EC6DA428, &unk_1D28A7FD0);
      sub_1D27E2A4C(v22);
      if (v41)
      {
        [v22 processIdentifier];
        sub_1D28729A8();
      }

      else
      {
        [v22 processIdentifier];
        sub_1D28729B8();
      }

      v72 = sub_1D28729E8();
      (*(*(v72 - 8) + 56))(v39 + v40, 0, 1, v72);
      os_unfair_lock_unlock(v39);
      sub_1D2872658();
      v73 = v22;
      v74 = sub_1D2873CA8();
      v75 = sub_1D2878A38();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 67109120;
        *(v76 + 4) = [v73 processIdentifier];
        sub_1D253CD98(v22, v23, v25, v37, 0);
        _os_log_impl(&dword_1D226E000, v74, v75, "Attribution: connection (%d).", v76, 8u);
        MEMORY[0x1D38A3520](v76, -1, -1);
      }

      else
      {
        sub_1D253CD98(v22, v23, v25, v37, 0);
      }

      return (*(v82 + 8))(v16, v81);
    }
  }

  else if (v26 == 2)
  {
    v81 = v18;
    v82 = v19;
    v42 = v24;
    v43 = sub_1D27E2970(v22, v23, v25, v24);
    if (v44)
    {
      v79 = HIDWORD(v22);
      v80 = v43;
      v78 = HIDWORD(v23);
      if (qword_1ED8A3548 != -1)
      {
        swift_once();
      }

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430, &unk_1D28835E0);
      v46 = __swift_project_value_buffer(v45, qword_1ED8A3550);
      os_unfair_lock_lock(v46);
      v47 = *(v45 + 28);
      sub_1D22BD238(v46 + v47, &qword_1EC6DA428, &unk_1D28A7FD0);
      atoken.val[0] = v22;
      atoken.val[1] = v79;
      atoken.val[2] = v23;
      atoken.val[3] = v78;
      *&atoken.val[4] = v25;
      *&atoken.val[6] = v42;
      audit_token_to_pid(&atoken);
      sub_1D28729A8();
      v48 = sub_1D28729E8();
      (*(*(v48 - 8) + 56))(v46 + v47, 0, 1, v48);
      os_unfair_lock_unlock(v46);
      sub_1D2872658();
      v49 = sub_1D2873CA8();
      v50 = sub_1D2878A38();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 67109120;
        *(v51 + 4) = HIDWORD(v25);
        _os_log_impl(&dword_1D226E000, v49, v50, "Attribution: audit token (%u.", v51, 8u);
        MEMORY[0x1D38A3520](v51, -1, -1);
      }

      return (*(v82 + 8))(v10, v81);
    }

    else
    {
      sub_1D2872658();
      v69 = sub_1D2873CA8();
      v70 = sub_1D2878A18();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_1D226E000, v69, v70, "Could not get client identity for audit token.", v71, 2u);
        MEMORY[0x1D38A3520](v71, -1, -1);
      }

      return (*(v82 + 8))(v7, v81);
    }
  }

  else
  {
    v27 = v18;
    v28 = v19;
    if (v26 == 3)
    {
      if (qword_1ED8A3548 != -1)
      {
        swift_once();
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430, &unk_1D28835E0);
      v30 = __swift_project_value_buffer(v29, qword_1ED8A3550);
      os_unfair_lock_lock(v30);
      v31 = *(v29 + 28);
      sub_1D22BD238(v30 + v31, &qword_1EC6DA428, &unk_1D28A7FD0);
      sub_1D2870F68();
      sub_1D28729A8();
      v32 = sub_1D28729E8();
      (*(*(v32 - 8) + 56))(v30 + v31, 0, 1, v32);
      os_unfair_lock_unlock(v30);
      sub_1D2872658();
      v33 = sub_1D2873CA8();
      v34 = sub_1D2878A38();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1D226E000, v33, v34, "Attribution: automatic.", v35, 2u);
        MEMORY[0x1D38A3520](v35, -1, -1);
      }

      return (*(v28 + 8))(v4, v27);
    }

    else
    {
      if (qword_1ED8A3548 != -1)
      {
        swift_once();
      }

      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430, &unk_1D28835E0);
      v53 = __swift_project_value_buffer(v52, qword_1ED8A3550);
      os_unfair_lock_lock(v53);
      v54 = *(v52 + 28);
      sub_1D22BD238(v53 + v54, &qword_1EC6DA428, &unk_1D28A7FD0);
      v55 = [objc_opt_self() processInfo];
      sub_1D2872998();
      v56 = sub_1D28729E8();
      (*(*(v56 - 8) + 56))(v53 + v54, 0, 1, v56);
      os_unfair_lock_unlock(v53);
      sub_1D2872658();
      v57 = sub_1D2873CA8();
      v58 = sub_1D2878A38();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1D226E000, v57, v58, "Attribution: current process.", v59, 2u);
        MEMORY[0x1D38A3520](v59, -1, -1);
      }

      return (*(v28 + 8))(v21, v27);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal16ExecutionContextV16GPClientIdentityO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_1D27E3674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D27E36BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D27E3704(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1D27E3730()
{
  result = qword_1EC6E2400;
  if (!qword_1EC6E2400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6E2400);
  }

  return result;
}

uint64_t sub_1D27E377C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428, &unk_1D28A7FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27E37EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncValueFetcher.State(255, *(a1 + 80), a3, a4);
  result = sub_1D2872738();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1D27E38A4()
{
  v1 = *v0;

  type metadata accessor for AsyncValueFetcher.State(255, *(v1 + 80), v2, v3);
  sub_1D2872738();
  sub_1D2872748();
  sub_1D2878EF8();
  return v0;
}

uint64_t sub_1D27E393C()
{
  sub_1D27E38A4();

  return swift_deallocClassInstance();
}

void sub_1D27E39C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0, &unk_1D287D430);
  sub_1D2879848();
  sub_1D2878F18();
  if (v1 <= 0x3F)
  {
    sub_1D2871818();
    sub_1D2878528();
    sub_1D24FEF24();
    sub_1D2877EC8();
    if (v2 <= 0x3F)
    {
      sub_1D27D8C28(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D27E3AE0(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v6 <= 3)
  {
    v7 = ((a2 - 2147483392) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9 == 4)
  {
    v10 = *&a1[v6];
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  else if (v9 == 2)
  {
    v10 = *&a1[v6];
    if (!*&a1[v6])
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = a1[v6];
    if (!a1[v6])
    {
LABEL_5:
      v4 = *(&a1[v3 + 8] & 0xFFFFFFFFFFFFFFF8);
      if (v4 >= 0xFFFFFFFF)
      {
        LODWORD(v4) = -1;
      }

      return (v4 + 1);
    }
  }

  v11 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v12 = *a1;
  }

  else
  {
    v11 = 0;
    v12 = *a1;
  }

  return (v12 | v11) ^ 0x80000000;
}

void sub_1D27E3BD8(char *a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = *(*(*(a4 + 16) - 8) + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (a3 < 0)
  {
    if (v7 <= 3)
    {
      v9 = ((a3 - 2147483392) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v11 = (a2 >> 8) & 0x7FFFFF;
    bzero(a1, v7);
    if (v7 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 1;
    }

    if (v7 <= 3)
    {
      *a1 = a2;
      if (v8 > 1)
      {
LABEL_24:
        if (v8 == 2)
        {
          *&a1[v7] = v12;
        }

        else
        {
          *&a1[v7] = v12;
        }

        return;
      }
    }

    else
    {
      *a1 = a2 & 0x7FFFFFFF;
      if (v8 > 1)
      {
        goto LABEL_24;
      }
    }

    if (v8)
    {
      a1[v7] = v12;
    }

    return;
  }

  v8 = 0;
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_28;
  }

  *&a1[v7] = 0;
  if (a2)
  {
LABEL_29:
    *(&a1[v6 + 8] & 0xFFFFFFFFFFFFFFF8) = a2 - 1;
  }
}

uint64_t type metadata accessor for OBKCarouselView(uint64_t a1)
{
  result = qword_1EC6E2518;
  if (!qword_1EC6E2518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D27E3DAC(uint64_t a1)
{
  sub_1D27E4064(319, &qword_1EC6E2528, type metadata accessor for FacePickerCarouselViewModel, MEMORY[0x1E697DA80]);
  if (v1 <= 0x3F)
  {
    sub_1D24C9A34();
    if (v2 <= 0x3F)
    {
      sub_1D27E4064(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1D27E4014(319, &qword_1ED89DF40, &type metadata for ComposingFocusState.Value, MEMORY[0x1E697BF18]);
        if (v4 <= 0x3F)
        {
          sub_1D27E4014(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1D27E4064(319, &qword_1ED89D178, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1D27E4014(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1D27E4064(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1D22EAE8C(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1D27E4014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D27E4064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D27E40E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CE580();
  *a1 = result & 1;
  return result;
}

void sub_1D27E4110(unsigned __int8 *a1)
{
  sub_1D23B7BB8();
  v1 = sub_1D2878A58();
  v2 = sub_1D28784E8();
  v3 = sub_1D2878068();
  [v1 setValue:v2 forKey:v3];
}

void sub_1D27E41AC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27EA808(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__viewHasAppeared);
}

void sub_1D27E4284(int a1)
{
  v30 = a1;
  v2 = sub_1D28719B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5C8, &qword_1D288CEA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  off_1EEC2AFA0(v31);
  if (v31[1])
  {
    v29 = v5;
    off_1EEC2AF98[0]();
    v12 = v11;
    MEMORY[0x1EEE9AC00](v11);
    *(&v26 - 2) = v1;
    *(&v26 - 1) = v31;
    v13 = sub_1D25A6234(sub_1D27E9BAC, (&v26 - 4), v12);
    v15 = v14;

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      MEMORY[0x1D389A410](v13, 0);
      v16 = 0;
    }

    v17 = *(v3 + 56);
    v17(v10, v16, 1, v2);
    v18 = (*(v3 + 48))(v10, 1, v2);
    v19 = v29;
    if (v18 == 1)
    {

      sub_1D22BD238(v10, &qword_1EC6DC5C8, &qword_1D288CEA8);
      return;
    }

    v20 = sub_1D28719A8();
    v27 = *(v3 + 8);
    v27(v10, v2);
    if (v30)
    {
      v21 = v20 - 1;
      if (!__OFSUB__(v20, 1))
      {
LABEL_12:
        MEMORY[0x1D389A410](v21, 0);
        sub_1D27E46B0();
        if (v22)
        {
          v23 = v28;
          (*(v3 + 16))(v28, v19, v2);
          v17(v23, 0, 1, v2);
          sub_1D27E4988(v23, 1);

          sub_1D22BD238(v23, &qword_1EC6DC5C8, &qword_1D288CEA8);
          v27(v19, v2);
        }

        else if (UIAccessibilityIsVoiceOverRunning())
        {
          v24 = *MEMORY[0x1E69DD888];
          v25 = sub_1D2878068();
          UIAccessibilityPostNotification(v24, v25);

          v27(v19, v2);
        }

        else
        {
          v27(v19, v2);
        }

        return;
      }

      __break(1u);
    }

    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return;
    }

    goto LABEL_12;
  }
}

void sub_1D27E46B0()
{
  v0 = type metadata accessor for CarouselFace(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = off_1EEC2AF98[0];
  off_1EEC2AF98[0]();

  v4();
  v6 = *(v5 + 16);

  v7 = sub_1D28719A8();
  if (v7 < 0 || v7 >= v6)
  {
    return;
  }

  v4();
  v9 = v8;
  v10 = sub_1D28719A8();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1D27E9CBC(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v3, type metadata accessor for CarouselFace);

  off_1EEC2AFA0(&v18);
  type metadata accessor for PhotosPersonAsset(0);
  v11 = objc_opt_self();
  v12 = sub_1D2878068();
  v13 = [v11 uuidFromLocalIdentifier_];

  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = sub_1D28780A8();
  v16 = v15;

  if (v19)
  {
    if (v18 != v14 || v19 != v16)
    {
      sub_1D2879618();
    }
  }

  else
  {
  }

  sub_1D27EA850(v3, type metadata accessor for CarouselFace);
}

uint64_t sub_1D27E4988(uint64_t a1, int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC5C8, &qword_1D288CEA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-v6];
  v8 = sub_1D28719B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26[-v16];
  sub_1D27E9BCC(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D22BD238(v7, &qword_1EC6DC5C8, &qword_1D288CEA8);
  }

  v28 = *(v9 + 32);
  v28(v17, v7, v8);
  sub_1D27E46B0();
  if ((v19 & 1) == 0)
  {
    return (*(v9 + 8))(v17, v8);
  }

  v27 = a2;
  v20 = *(v9 + 16);
  v20(v14, v17, v8);
  v20(v11, v14, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  v28((v22 + v21), v14, v8);
  if (v27)
  {
    v23 = *(v9 + 8);
    sub_1D2870F78();
    v23(v11, v8);
    v24 = MEMORY[0x1D38A0390](0.15, 0.85, 0.25);
    MEMORY[0x1EEE9AC00](v24);
    *&v26[-16] = sub_1D27E9C3C;
    *&v26[-8] = v22;
    sub_1D2874BE8();

    return (v23)(v17, v8);
  }

  else
  {
    sub_1D2870F78();
    sub_1D27E4F40();

    v25 = *(v9 + 8);
    v25(v11, v8);
    return (v25)(v17, v8);
  }
}

uint64_t sub_1D27E4D10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2874AE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  sub_1D2877718();
  sub_1D2874AD8();
  sub_1D27EA808(&qword_1ED89DEF0, MEMORY[0x1E697BFB8], MEMORY[0x1E697BFC8]);
  v9 = sub_1D2877F98();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v9)
  {
    v10(v8, v2);
    v11 = 1;
  }

  else
  {
    sub_1D2874A68();
    v12 = sub_1D2877F98();
    v10(v5, v2);
    v10(v8, v2);
    if ((v12 & 1) == 0)
    {
      v13 = MEMORY[0x1E697D778];
      goto LABEL_7;
    }

    v11 = 0;
  }

  sub_1D27E4284(v11);
  v13 = MEMORY[0x1E697D770];
LABEL_7:
  v14 = *v13;
  v15 = sub_1D2877758();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

void sub_1D27E4F40()
{
  v0 = type metadata accessor for CarouselFace(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = off_1EEC2AF98[0];
  type metadata accessor for FacePickerCarouselViewModel(0);
  v4();
  v6 = v5;
  v7 = sub_1D28719A8();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 >= *(v6 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1D27E9CBC(v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7, v3, type metadata accessor for CarouselFace);

  type metadata accessor for PhotosPersonAsset(0);
  v8 = objc_opt_self();
  v9 = sub_1D2878068();
  v10 = [v8 uuidFromLocalIdentifier_];

  if (v10)
  {
    v11 = sub_1D28780A8();
    v13 = v12;

    sub_1D27EA850(v3, type metadata accessor for CarouselFace);
    sub_1D248FA3C(v11, v13);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1D27E5114@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for OBKCarouselView(0);
  v4 = a2 + v3[5];
  *v4 = sub_1D28742D8() & 1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6 & 1;
  v7 = a2 + v3[6];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  swift_getKeyPath();
  sub_1D28746D8();
  v8 = a2 + v3[8];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a2 + v3[9];
  type metadata accessor for CGSize(0);
  sub_1D28772F8();
  *v9 = v14;
  *(v9 + 16) = v15;
  *(a2 + v3[10]) = 0x4010000000000000;
  *(a2 + v3[11]) = 0x406A400000000000;
  v10 = a2 + v3[12];
  sub_1D28772F8();
  *v10 = v14;
  *(v10 + 8) = *(&v14 + 1);
  v11 = v3[13];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
  swift_storeEnumTagMultiPayload();
  v12 = v3[14];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FacePickerCarouselViewModel(0);
  return sub_1D2874328();
}

uint64_t sub_1D27E52EC()
{
  v0 = sub_1D2872008();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2510, &qword_1D28A8160);
  sub_1D2874338();
  v7 = *(v1 + 16);
  v7(v6, v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_defaultStyle, v0);

  sub_1D2871FC8();
  v8 = MEMORY[0x1D389AA00](v6, v3);
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    sub_1D2874338();
    v7(v6, v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_defaultStyle, v0);

    sub_1D2871E98();
    v10 = MEMORY[0x1D389AA00](v6, v3);
    v9(v3, v0);
    v9(v6, v0);
  }

  return v10 & 1;
}

uint64_t sub_1D27E54F0()
{
  v1 = v0;
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2872068();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E696E398], v6, v8);
  v11 = sub_1D2872058();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v12 = v1 + *(type metadata accessor for OBKCarouselView(0) + 24);
    if (*(v12 + 8) == 1)
    {
      v17 = *v12;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v14 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v17 = off_1ED8A4930;
    sub_1D27EA808(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
    sub_1D28719E8();
    sub_1D2870F78();
    v13 = sub_1D23CE580();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D27E57F0()
{
  type metadata accessor for OBKCarouselView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  sub_1D2877308();
  result = sub_1D27E52EC();
  if ((result & 1) == 0)
  {
    return sub_1D27E54F0();
  }

  return result;
}

double sub_1D27E58EC()
{
  v0 = sub_1D27E54F0();
  v1 = sub_1D27E52EC();
  if (v0)
  {
    if (v1)
    {
      v2 = &xmmword_1EC6E3E40 + 9;
      v3 = &xmmword_1EC6E3E40 + 10;
      if (qword_1EC6D8CB8 == -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = &xmmword_1EC6E3DD0 + 9;
      v3 = &xmmword_1EC6E3DD0 + 10;
      if (qword_1EC6D8CB0 == -1)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v1)
  {
    v2 = &xmmword_1EC6E3D60 + 9;
    v3 = &xmmword_1EC6E3D60 + 10;
    if (qword_1EC6D8CA8 == -1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = &xmmword_1EC6E3CF0 + 9;
    v3 = &xmmword_1EC6E3CF0 + 10;
    if (qword_1EC6D8CA0 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  result = dbl_1D28A8150[*v2 >> 7];
  if (*v3)
  {
    return 0.75;
  }

  return result;
}

void sub_1D27E5A1C(uint64_t a1)
{
  v1 = type metadata accessor for CarouselFace(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosPersonAsset(0);
  v4 = objc_opt_self();
  v5 = sub_1D2878068();
  v6 = [v4 uuidFromLocalIdentifier_];

  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = sub_1D28780A8();
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2510, &qword_1D28A8160);
  sub_1D2874338();
  sub_1D24864FC(v3);

  v10 = sub_1D2878068();
  v11 = [v4 uuidFromLocalIdentifier_];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = sub_1D28780A8();
  v14 = v13;

  sub_1D27EA850(v3, type metadata accessor for CarouselFace);
  if (v7 != v12 || v9 != v14)
  {
    sub_1D2879618();
  }
}

uint64_t sub_1D27E5BF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v180 = sub_1D2877748();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1D2876038();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v158 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for OBKCarouselView(0);
  v183 = *(v187 - 8);
  *&v182 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v147 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2876268();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v141 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1D2876288();
  v145 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v139 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1D2875D38();
  v188 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v10 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2538, &qword_1D28A81F0);
  v131 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v12 = &v128 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2540, &qword_1D28A81F8);
  v133 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v14 = &v128 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2548, &qword_1D28A8200);
  v136 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v130 = &v128 - v15;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2550, &qword_1D28A8208);
  v144 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v184 = &v128 - v16;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2558, &qword_1D28A8210);
  v146 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v128 - v17;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2560, &qword_1D28A8218);
  v150 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v137 = &v128 - v18;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2568, &qword_1D28A8220);
  v151 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v148 = &v128 - v19;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2570, &qword_1D28A8228);
  v152 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v149 = &v128 - v20;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2578, &qword_1D28A8230);
  v157 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v155 = &v128 - v21;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2580, &qword_1D28A8238);
  v162 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v159 = &v128 - v22;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2588, &qword_1D28A8240);
  v163 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v160 = &v128 - v23;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2590, &qword_1D28A8248);
  v169 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v186 = &v128 - v24;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2598, &qword_1D28A8250);
  v170 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v168 = &v128 - v25;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25A0, &qword_1D28A8258);
  MEMORY[0x1EEE9AC00](v167);
  v174 = &v128 - v26;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25A8, &qword_1D28A8260);
  MEMORY[0x1EEE9AC00](v172);
  v176 = &v128 - v27;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25B0, &qword_1D28A8268);
  MEMORY[0x1EEE9AC00](v175);
  v177 = &v128 - v28;
  sub_1D28762F8();
  v190 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25B8, &qword_1D28A8270);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E25C0, &unk_1D28A8278);
  v30 = sub_1D22BB9D8(&qword_1EC6E25C8, &qword_1EC6E25C0, &unk_1D28A8278, MEMORY[0x1E69817F8]);
  *&v198 = v29;
  *(&v198 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  sub_1D28743A8();
  v31 = sub_1D2876328();
  v32 = v187;
  v33 = v1 + *(v187 + 36);
  v34 = *(v33 + 16);
  v198 = *v33;
  v199 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  sub_1D2877308();
  v35 = *&v195;
  v189 = v1;
  sub_1D27E57F0();
  v37 = (v35 - v36) * 0.5 + -10.0;
  sub_1D2875D18();
  v38 = sub_1D22BB9D8(&qword_1EC6E25D0, &qword_1EC6E2538, &qword_1D28A81F0, MEMORY[0x1E697BE60]);
  v39 = v31;
  v40 = v129;
  MEMORY[0x1D389F3F0](v39, *&v37, 0, v10, v129, v38);
  v41 = *(v188 + 8);
  v188 += 8;
  v42 = v134;
  v41(v10, v134);
  v43 = v12;
  v44 = v40;
  (*(v131 + 8))(v43, v40);
  v45 = sub_1D2876328();
  v46 = *(v2 + *(v32 + 40));
  sub_1D2875D28();
  *&v198 = v44;
  *(&v198 + 1) = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v130;
  v49 = v46;
  v50 = v132;
  MEMORY[0x1D389F3F0](v45, v49, 0, v10, v132, OpaqueTypeConformance2);
  v41(v10, v42);
  (*(v133 + 8))(v14, v50);
  sub_1D2876258();
  v51 = v139;
  sub_1D2876278();
  *&v198 = v50;
  *(&v198 + 1) = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v135;
  v54 = v143;
  sub_1D2876C38();
  (*(v145 + 8))(v51, v54);
  v55 = v53;
  (*(v136 + 8))(v48, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2510, &qword_1D28A8160);
  sub_1D2874358();
  v56 = v198;
  v57 = v199;
  swift_getKeyPath();
  v201 = v56;
  v202 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25D8, &qword_1D28A82B0);
  sub_1D2877508();

  v58 = v198;
  v59 = v199;
  v60 = v200;

  v195 = v58;
  v196 = v59;
  v197 = v60;
  v191 = v55;
  v192 = v54;
  v193 = v52;
  v194 = MEMORY[0x1E697CC08];
  v61 = swift_getOpaqueTypeConformance2();
  v62 = MEMORY[0x1E69E6158];
  v63 = v138;
  v64 = v142;
  v65 = v184;
  sub_1D2876998();

  v66 = v137;

  v67 = v140;

  (*(v144 + 8))(v65, v64);
  v68 = v147;
  sub_1D27E9CBC(v189, v147, type metadata accessor for OBKCarouselView);
  v69 = (*(v183 + 80) + 16) & ~*(v183 + 80);
  v184 = *(v183 + 80);
  v183 = v69 + v182;
  v70 = swift_allocObject();
  v188 = v69;
  v71 = v70 + v69;
  v72 = v68;
  sub_1D27EA1C8(v68, v71, type metadata accessor for OBKCarouselView);
  *&v198 = v64;
  *(&v198 + 1) = v62;
  v199 = v61;
  v200 = MEMORY[0x1E69E6168];
  v73 = swift_getOpaqueTypeConformance2();
  sub_1D2876B98();
  v74 = v158;

  (*(v146 + 8))(v63, v67);
  sub_1D2875B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBDD0, &qword_1D288A850);
  inited = swift_initStackObject();
  v182 = xmmword_1D287F550;
  *(inited + 16) = xmmword_1D287F550;
  LOBYTE(v68) = sub_1D2876318();
  *(inited + 32) = v68;
  v76 = sub_1D28762F8();
  *(inited + 33) = v76;
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v68)
  {
    sub_1D2876308();
  }

  sub_1D2876308();
  if (sub_1D2876308() != v76)
  {
    sub_1D2876308();
  }

  *&v198 = v67;
  *(&v198 + 1) = v73;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = v148;
  v79 = v153;
  sub_1D2876A48();
  (*(v165 + 8))(v74, v166);
  (*(v150 + 8))(v66, v79);
  *&v198 = v79;
  *(&v198 + 1) = v77;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v149;
  v82 = v154;
  sub_1D2876B28();
  (*(v151 + 8))(v78, v82);
  *&v198 = v82;
  *(&v198 + 1) = v80;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = v155;
  v85 = v156;
  sub_1D2876F98();
  (*(v152 + 8))(v81, v85);
  v86 = v189;
  v87 = (v189 + *(v187 + 20));
  v88 = *v87;
  v89 = *(v87 + 1);
  LOBYTE(v87) = v87[16];
  LOBYTE(v198) = v88;
  *(&v198 + 1) = v89;
  LOBYTE(v199) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718, &qword_1D2895FC0);
  sub_1D28742C8();
  *&v198 = v85;
  *(&v198 + 1) = v83;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v159;
  v92 = v161;
  sub_1D2876EB8();

  (*(v157 + 8))(v84, v92);
  swift_getKeyPath();
  LOBYTE(v195) = 2;
  *&v198 = v92;
  *(&v198 + 1) = v90;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = v160;
  v95 = v164;
  sub_1D28768D8();

  (*(v162 + 8))(v91, v95);
  *&v198 = v95;
  *(&v198 + 1) = &type metadata for ComposingFocusState.Value;
  v199 = v93;
  v187 = swift_getOpaqueTypeConformance2();
  v96 = v185;
  sub_1D2876B78();
  (*(v163 + 8))(v94, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D30, &unk_1D28A82F0);
  sub_1D2874AE8();
  v97 = swift_allocObject();
  *(v97 + 16) = v182;
  sub_1D2874AD8();
  sub_1D2874A68();
  v98 = sub_1D2402C24(v97);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D27E9CBC(v86, v72, type metadata accessor for OBKCarouselView);
  v99 = swift_allocObject();
  sub_1D27EA1C8(v72, v99 + v188, type metadata accessor for OBKCarouselView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC720, &unk_1D288D9F0);
  v100 = v179;
  v101 = swift_allocObject();
  *(v101 + 16) = v182;
  sub_1D2877728();
  sub_1D2877738();
  *&v198 = v101;
  sub_1D27EA808(&qword_1ED89D040, MEMORY[0x1E697D760], MEMORY[0x1E697D768]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC728, &qword_1D28A8300);
  sub_1D22BB9D8(&qword_1ED89CEC0, &qword_1EC6DC728, &qword_1D28A8300, MEMORY[0x1E69E6328]);
  v102 = v178;
  v103 = v180;
  sub_1D2879088();
  *&v198 = v185;
  *(&v198 + 1) = v187;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v168;
  v106 = v171;
  v107 = v186;
  MEMORY[0x1D389F1F0](v98, v102, sub_1D27E9A44, v99, v171, v104);

  (*(v100 + 8))(v102, v103);
  (*(v169 + 8))(v107, v106);
  v108 = v189;
  sub_1D27E9CBC(v189, v72, type metadata accessor for OBKCarouselView);
  v109 = swift_allocObject();
  v110 = v188;
  sub_1D27EA1C8(v72, v109 + v188, type metadata accessor for OBKCarouselView);
  v111 = v174;
  (*(v170 + 32))(v174, v105, v173);
  v112 = &v111[*(v167 + 36)];
  *v112 = sub_1D22A585C;
  *(v112 + 1) = 0;
  *(v112 + 2) = sub_1D27E9A5C;
  *(v112 + 3) = v109;
  sub_1D27E9CBC(v108, v72, type metadata accessor for OBKCarouselView);
  v113 = swift_allocObject();
  sub_1D27EA1C8(v72, v113 + v110, type metadata accessor for OBKCarouselView);
  v114 = v111;
  v115 = v176;
  sub_1D22EC9BC(v114, v176, &qword_1EC6E25A0, &qword_1D28A8258);
  v116 = (v115 + *(v172 + 36));
  *v116 = sub_1D27E9ACC;
  v116[1] = v113;
  v116[2] = 0;
  v116[3] = 0;
  sub_1D27E9CBC(v108, v72, type metadata accessor for OBKCarouselView);
  v117 = swift_allocObject();
  sub_1D27EA1C8(v72, v117 + v110, type metadata accessor for OBKCarouselView);
  v118 = v115;
  v119 = v177;
  sub_1D22EC9BC(v118, v177, &qword_1EC6E25A8, &qword_1D28A8260);
  v120 = (v119 + *(v175 + 36));
  *v120 = 0;
  v120[1] = 0;
  v120[2] = sub_1D27E9AE4;
  v120[3] = v117;
  v121 = sub_1D2877848();
  v123 = v122;
  v124 = v119;
  v125 = v181;
  sub_1D22EC9BC(v124, v181, &qword_1EC6E25B0, &qword_1D28A8268);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E25F0, &qword_1D28A8308);
  v127 = (v125 + *(result + 36));
  *v127 = v121;
  v127[1] = v123;
  return result;
}