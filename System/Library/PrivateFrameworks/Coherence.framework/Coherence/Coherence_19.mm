void sub_1ADF74E94(unint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), uint64_t a4)
{
  v5 = v4;
  v172 = a1;
  v193 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Replica(0);
  v179 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v186 = &v167 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v167 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v167 - v16;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v169 = &v167 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v181 = a3;
  v26 = a3[1];
  if (v26 >= 1)
  {
    v168 = &v167 - v23;
    v176 = v25;
    v184 = v24;
    v167 = a4;
    v27 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v187 = v8;
    while (1)
    {
      v29 = v27 + 1;
      if (v27 + 1 >= v26)
      {
        goto LABEL_39;
      }

      v177 = v26;
      v30 = *v181;
      v31 = *(v179 + 72);
      v183 = v27 + 1;
      v32 = v30 + v31 * v29;
      v185 = type metadata accessor for Replica;
      v33 = v168;
      sub_1ADDDE3A0(v32, v168, type metadata accessor for Replica);
      v173 = v27;
      v180 = v31;
      v34 = v30 + v31 * v27;
      v35 = v169;
      sub_1ADDDE3A0(v34, v169, v185);
      v36 = v35;
      v37 = *(v8 + 20);
      v38 = *(v33 + v37);
      v39 = *(v35 + v37);
      v171 = v5;
      if (v38 == v39)
      {
        v40 = sub_1ADF5EB00(v33);
        v36 = v169;
        LODWORD(v178) = v40;
      }

      else
      {
        LODWORD(v178) = v38 < v39;
      }

      v170 = v28;
      sub_1ADDE4FF8(v36, type metadata accessor for Replica);
      sub_1ADDE4FF8(v33, type metadata accessor for Replica);
      v41 = v173 + 2;
      v42 = v180 * (v173 + 2);
      v43 = v30 + v42;
      v44 = v183;
      v45 = v180 * v183;
      v46 = v30 + v180 * v183;
      v28 = v176;
      do
      {
        v5 = v41;
        v48 = v44;
        v51 = v45;
        v49 = v42;
        if (v41 >= v177)
        {
          break;
        }

        v185 = v44;
        v182 = v42;
        v183 = v41;
        sub_1ADDDE3A0(v43, v28, type metadata accessor for Replica);
        v52 = v184;
        sub_1ADDDE3A0(v46, v184, type metadata accessor for Replica);
        v53 = *(v8 + 20);
        v54 = *(v28 + v53);
        v55 = *(v52 + v53);
        if (v54 == v55)
        {
          v190 = sub_1AE23BFCC();
          LOWORD(v191) = v56;
          BYTE2(v191) = v57;
          BYTE3(v191) = v58;
          BYTE4(v191) = v59;
          BYTE5(v191) = v60;
          BYTE6(v191) = v61;
          HIBYTE(v191) = v62;
          v188 = sub_1AE23BFCC();
          LOWORD(v189) = v63;
          BYTE2(v189) = v64;
          BYTE3(v189) = v65;
          BYTE4(v189) = v66;
          BYTE5(v189) = v67;
          BYTE6(v189) = v68;
          HIBYTE(v189) = v69;
          v70 = bswap64(v190);
          v71 = bswap64(v188);
          if (v70 != v71)
          {
            v28 = v176;
            v5 = v183;
LABEL_19:
            if (v70 < v71)
            {
              v72 = -1;
            }

            else
            {
              v72 = 1;
            }

            v47 = v72 >> 31;
            goto LABEL_10;
          }

          v70 = bswap64(v191);
          v71 = bswap64(v189);
          v5 = v183;
          if (v70 != v71)
          {
            v28 = v176;
            goto LABEL_19;
          }

          v28 = v176;
          v47 = 0;
        }

        else
        {
          v47 = v54 < v55;
          v5 = v183;
        }

LABEL_10:
        sub_1ADDE4FF8(v184, type metadata accessor for Replica);
        sub_1ADDE4FF8(v28, type metadata accessor for Replica);
        v41 = v5 + 1;
        v43 += v180;
        v46 += v180;
        v48 = v185;
        v44 = (v185 + 1);
        v45 = v51 + v180;
        v49 = v182;
        v42 = v182 + v180;
        v50 = (v178 & 1) == v47;
        v8 = v187;
      }

      while (v50);
      if ((v178 & 1) == 0)
      {
        goto LABEL_37;
      }

      v27 = v173;
      if (v5 < v173)
      {
        goto LABEL_146;
      }

      if (v173 >= v5)
      {
        v29 = v5;
        v5 = v171;
        v28 = v170;
      }

      else
      {
        v73 = v173;
        v74 = v173 * v180;
        do
        {
          if (v73 != v48)
          {
            v185 = v48;
            v76 = *v181;
            if (!*v181)
            {
              goto LABEL_152;
            }

            v77 = v49;
            sub_1ADDDE540(v76 + v74, v175, type metadata accessor for Replica);
            if (v74 < v51 || v76 + v74 >= v76 + v77)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v74 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1ADDDE540(v175, v76 + v51, type metadata accessor for Replica);
            v8 = v187;
            v49 = v77;
            v48 = v185;
          }

          v73 = (v73 + 1);
          v51 -= v180;
          v49 -= v180;
          v74 += v180;
          v75 = v73 < v48;
          v48 = (v48 - 1);
        }

        while (v75);
LABEL_37:
        v29 = v5;
        v5 = v171;
        v28 = v170;
        v27 = v173;
      }

LABEL_39:
      v78 = v181[1];
      if (v29 < v78)
      {
        if (__OFSUB__(v29, v27))
        {
          goto LABEL_145;
        }

        if (v29 - v27 < v167)
        {
          v79 = (v27 + v167);
          if (__OFADD__(v27, v167))
          {
            goto LABEL_147;
          }

          if (v79 >= v78)
          {
            v79 = v181[1];
          }

          if (v79 >= v27)
          {
            if (v29 != v79)
            {
              v170 = v28;
              v171 = v5;
              v80 = *v181;
              v81 = *(v179 + 72);
              v82 = *v181 + v81 * (v29 - 1);
              v83 = -v81;
              v173 = v27;
              v174 = v81;
              v84 = v27 - v29;
              v185 = v80;
              v85 = v80 + v29 * v81;
              v177 = v79;
              do
              {
                v182 = v82;
                v183 = v29;
                v178 = v85;
                v180 = v84;
                v86 = v82;
                while (1)
                {
                  sub_1ADDDE3A0(v85, v17, type metadata accessor for Replica);
                  sub_1ADDDE3A0(v86, v14, type metadata accessor for Replica);
                  v87 = *(v8 + 20);
                  v88 = *&v17[v87];
                  v89 = *&v14[v87];
                  if (v88 == v89)
                  {
                    v190 = sub_1AE23BFCC();
                    LOWORD(v191) = v90;
                    BYTE2(v191) = v91;
                    BYTE3(v191) = v92;
                    BYTE4(v191) = v93;
                    BYTE5(v191) = v94;
                    BYTE6(v191) = v95;
                    HIBYTE(v191) = v96;
                    v188 = sub_1AE23BFCC();
                    LOWORD(v189) = v97;
                    BYTE2(v189) = v98;
                    BYTE3(v189) = v99;
                    BYTE4(v189) = v100;
                    BYTE5(v189) = v101;
                    BYTE6(v189) = v102;
                    HIBYTE(v189) = v103;
                    v104 = bswap64(v190);
                    v105 = bswap64(v188);
                    if (v104 == v105 && (v104 = bswap64(v191), v105 = bswap64(v189), v104 == v105))
                    {
                      v106 = 0;
                    }

                    else
                    {
                      v107 = v104 < v105 ? -1 : 1;
                      v106 = v107 >> 31;
                    }
                  }

                  else
                  {
                    v106 = v88 < v89;
                  }

                  sub_1ADDE4FF8(v14, type metadata accessor for Replica);
                  sub_1ADDE4FF8(v17, type metadata accessor for Replica);
                  if (!v106)
                  {
                    break;
                  }

                  if (!v185)
                  {
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
                  }

                  v108 = v17;
                  v109 = v14;
                  v110 = v186;
                  sub_1ADDDE540(v85, v186, type metadata accessor for Replica);
                  v8 = v187;
                  swift_arrayInitWithTakeFrontToBack();
                  v111 = v110;
                  v14 = v109;
                  v17 = v108;
                  sub_1ADDDE540(v111, v86, type metadata accessor for Replica);
                  v86 += v83;
                  v85 += v83;
                  if (__CFADD__(v84++, 1))
                  {
                    goto LABEL_49;
                  }
                }

                v8 = v187;
LABEL_49:
                v29 = v183 + 1;
                v82 = v182 + v174;
                v84 = v180 - 1;
                v85 = v178 + v174;
              }

              while (v183 + 1 != v177);
              v29 = v177;
              v5 = v171;
              v28 = v170;
              v27 = v173;
            }

            goto LABEL_66;
          }

LABEL_148:
          __break(1u);
LABEL_149:
          v28 = sub_1ADF7ACAC(v28);
LABEL_119:
          v192 = v28;
          v162 = *(v28 + 16);
          if (v162 >= 2)
          {
            while (*v181)
            {
              v163 = *(v28 + 16 * v162);
              v164 = v28;
              v165 = *(v28 + 16 * (v162 - 1) + 32);
              v28 = *(v28 + 16 * (v162 - 1) + 40);
              sub_1ADF76338(*v181 + *(v179 + 72) * v163, *v181 + *(v179 + 72) * v165, *v181 + *(v179 + 72) * v28, v27);
              if (v5)
              {
                goto LABEL_127;
              }

              if (v28 < v163)
              {
                goto LABEL_142;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v164 = sub_1ADF7ACAC(v164);
              }

              if (v162 - 2 >= *(v164 + 2))
              {
                goto LABEL_143;
              }

              v166 = &v164[16 * v162];
              *v166 = v163;
              *(v166 + 1) = v28;
              v192 = v164;
              sub_1ADF7AC20(v162 - 1);
              v28 = v192;
              v162 = *(v192 + 16);
              if (v162 <= 1)
              {
                goto LABEL_127;
              }
            }

            goto LABEL_153;
          }

LABEL_127:

          return;
        }
      }

LABEL_66:
      if (v29 < v27)
      {
        goto LABEL_144;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v183 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1ADE5522C(0, *(v28 + 16) + 1, 1, v28);
      }

      v115 = *(v28 + 16);
      v114 = *(v28 + 24);
      v116 = v115 + 1;
      if (v115 >= v114 >> 1)
      {
        v28 = sub_1ADE5522C((v114 > 1), v115 + 1, 1, v28);
      }

      *(v28 + 16) = v116;
      v117 = v28 + 16 * v115;
      v118 = v183;
      *(v117 + 32) = v27;
      *(v117 + 40) = v118;
      v119 = *v172;
      if (!*v172)
      {
        goto LABEL_154;
      }

      if (v115)
      {
        while (2)
        {
          v27 = v116 - 1;
          if (v116 >= 4)
          {
            v124 = v28 + 32 + 16 * v116;
            v125 = *(v124 - 64);
            v126 = *(v124 - 56);
            v130 = __OFSUB__(v126, v125);
            v127 = v126 - v125;
            if (v130)
            {
              goto LABEL_131;
            }

            v129 = *(v124 - 48);
            v128 = *(v124 - 40);
            v130 = __OFSUB__(v128, v129);
            v122 = v128 - v129;
            v123 = v130;
            if (v130)
            {
              goto LABEL_132;
            }

            v131 = (v28 + 16 * v116);
            v133 = *v131;
            v132 = v131[1];
            v130 = __OFSUB__(v132, v133);
            v134 = v132 - v133;
            if (v130)
            {
              goto LABEL_134;
            }

            v130 = __OFADD__(v122, v134);
            v135 = v122 + v134;
            if (v130)
            {
              goto LABEL_137;
            }

            if (v135 >= v127)
            {
              v153 = (v28 + 32 + 16 * v27);
              v155 = *v153;
              v154 = v153[1];
              v130 = __OFSUB__(v154, v155);
              v156 = v154 - v155;
              if (v130)
              {
                goto LABEL_141;
              }

              if (v122 < v156)
              {
                v27 = v116 - 2;
              }
            }

            else
            {
LABEL_86:
              if (v123)
              {
                goto LABEL_133;
              }

              v136 = (v28 + 16 * v116);
              v138 = *v136;
              v137 = v136[1];
              v139 = __OFSUB__(v137, v138);
              v140 = v137 - v138;
              v141 = v139;
              if (v139)
              {
                goto LABEL_136;
              }

              v142 = (v28 + 32 + 16 * v27);
              v144 = *v142;
              v143 = v142[1];
              v130 = __OFSUB__(v143, v144);
              v145 = v143 - v144;
              if (v130)
              {
                goto LABEL_139;
              }

              if (__OFADD__(v140, v145))
              {
                goto LABEL_140;
              }

              if (v140 + v145 < v122)
              {
                goto LABEL_100;
              }

              if (v122 < v145)
              {
                v27 = v116 - 2;
              }
            }
          }

          else
          {
            if (v116 == 3)
            {
              v120 = *(v28 + 32);
              v121 = *(v28 + 40);
              v130 = __OFSUB__(v121, v120);
              v122 = v121 - v120;
              v123 = v130;
              goto LABEL_86;
            }

            v146 = (v28 + 16 * v116);
            v148 = *v146;
            v147 = v146[1];
            v130 = __OFSUB__(v147, v148);
            v140 = v147 - v148;
            v141 = v130;
LABEL_100:
            if (v141)
            {
              goto LABEL_135;
            }

            v149 = v28 + 16 * v27;
            v151 = *(v149 + 32);
            v150 = *(v149 + 40);
            v130 = __OFSUB__(v150, v151);
            v152 = v150 - v151;
            if (v130)
            {
              goto LABEL_138;
            }

            if (v152 < v140)
            {
              break;
            }
          }

          v157 = v27 - 1;
          if (v27 - 1 >= v116)
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
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*v181)
          {
            goto LABEL_151;
          }

          v158 = v28;
          v159 = *(v28 + 32 + 16 * v157);
          v160 = *(v28 + 32 + 16 * v27);
          v28 = *(v28 + 32 + 16 * v27 + 8);
          sub_1ADF76338(*v181 + *(v179 + 72) * v159, *v181 + *(v179 + 72) * v160, *v181 + *(v179 + 72) * v28, v119);
          if (v5)
          {
            goto LABEL_127;
          }

          if (v28 < v159)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v158 = sub_1ADF7ACAC(v158);
          }

          if (v157 >= *(v158 + 2))
          {
            goto LABEL_130;
          }

          v161 = &v158[16 * v157];
          *(v161 + 4) = v159;
          *(v161 + 5) = v28;
          v192 = v158;
          sub_1ADF7AC20(v27);
          v28 = v192;
          v116 = *(v192 + 16);
          v8 = v187;
          if (v116 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v26 = v181[1];
      v27 = v183;
      if (v183 >= v26)
      {
        goto LABEL_117;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_117:
  v27 = *v172;
  if (*v172)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_119;
  }

  __break(1u);
}

uint64_t sub_1ADF75BB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v93[1] = *MEMORY[0x1E69E9840];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v78 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_79;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
LABEL_80:
    __break(1u);
  }

  v20 = (a2 - a1) / v18;
  v92 = a4;
  v93[0] = a1;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    v84 = v14;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v22;
    if (v22 >= 1)
    {
      v48 = -v18;
      v49 = a4 + v22;
      v83 = -v18;
      do
      {
        v79 = v47;
        v50 = a2;
        v51 = a2 + v48;
        v81 = v50;
        v82 = v51;
        while (1)
        {
          if (v50 <= a1)
          {
            v93[0] = v50;
            v91 = v79;
            goto LABEL_77;
          }

          v52 = a3;
          v80 = v47;
          v53 = v49 + v48;
          v54 = v84;
          sub_1ADDCEE40(v49 + v48, v84, &qword_1EB5BA2A0, &unk_1AE242200);
          v55 = v85;
          sub_1ADDCEE40(v51, v85, &qword_1EB5BA2A0, &unk_1AE242200);
          v56 = *(type metadata accessor for Replica(0) + 20);
          v57 = *(v54 + v56);
          v58 = *(v55 + v56);
          if (v57 == v58)
          {
            v89 = sub_1AE23BFCC();
            LOWORD(v90) = v59;
            BYTE2(v90) = v60;
            BYTE3(v90) = v61;
            BYTE4(v90) = v62;
            BYTE5(v90) = v63;
            BYTE6(v90) = v64;
            HIBYTE(v90) = v65;
            v87 = sub_1AE23BFCC();
            LOWORD(v88) = v66;
            BYTE2(v88) = v67;
            BYTE3(v88) = v68;
            BYTE4(v88) = v69;
            BYTE5(v88) = v70;
            BYTE6(v88) = v71;
            HIBYTE(v88) = v72;
            v73 = bswap64(v89);
            v74 = bswap64(v87);
            if (v73 == v74 && (v73 = bswap64(v90), v74 = bswap64(v88), v73 == v74))
            {
              LOBYTE(v75) = 0;
            }

            else
            {
              v76 = v73 < v74 ? -1 : 1;
              v75 = v76 >> 31;
            }
          }

          else
          {
            LOBYTE(v75) = v57 < v58;
          }

          a3 = v52 + v83;
          sub_1ADDCEDE0(v85, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEDE0(v84, &qword_1EB5BA2A0, &unk_1AE242200);
          if (v75)
          {
            break;
          }

          v47 = v53;
          v51 = v82;
          if (v52 < v49 || a3 >= v49)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v53;
          v48 = v83;
          v50 = v81;
          if (v53 <= a4)
          {
            a2 = v81;
            goto LABEL_76;
          }
        }

        a2 = v82;
        if (v52 < v81 || a3 >= v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          v47 = v80;
        }

        else
        {
          v47 = v80;
          if (v52 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v48 = v83;
      }

      while (v49 > a4);
    }

LABEL_76:
    v93[0] = a2;
    v91 = v47;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v85 = a4 + v21;
    v91 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v84 = v18;
      do
      {
        sub_1ADDCEE40(a2, v16, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEE40(a4, v12, &qword_1EB5BA2A0, &unk_1AE242200);
        v24 = *(type metadata accessor for Replica(0) + 20);
        v25 = *&v16[v24];
        v26 = *&v12[v24];
        if (v25 == v26)
        {
          v89 = sub_1AE23BFCC();
          LOWORD(v90) = v27;
          BYTE2(v90) = v28;
          BYTE3(v90) = v29;
          BYTE4(v90) = v30;
          BYTE5(v90) = v31;
          BYTE6(v90) = v32;
          HIBYTE(v90) = v33;
          v87 = sub_1AE23BFCC();
          LOWORD(v88) = v34;
          BYTE2(v88) = v35;
          BYTE3(v88) = v36;
          BYTE4(v88) = v37;
          BYTE5(v88) = v38;
          BYTE6(v88) = v39;
          HIBYTE(v88) = v40;
          v41 = bswap64(v89);
          v42 = bswap64(v87);
          if (v41 == v42 && (v41 = bswap64(v90), v42 = bswap64(v88), v41 == v42))
          {
            v43 = 0;
          }

          else
          {
            if (v41 < v42)
            {
              v44 = -1;
            }

            else
            {
              v44 = 1;
            }

            v43 = v44 >> 31;
          }
        }

        else
        {
          v43 = v25 < v26;
        }

        sub_1ADDCEDE0(v12, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v16, &qword_1EB5BA2A0, &unk_1AE242200);
        if (v43)
        {
          v45 = v84;
          if (a1 < a2 || a1 >= a2 + v84)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v45;
        }

        else
        {
          v45 = v84;
          v46 = a4 + v84;
          if (a1 < a4 || a1 >= v46)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v92 = v46;
          a4 += v45;
        }

        a1 += v45;
        v93[0] = a1;
      }

      while (a4 < v85 && a2 < a3);
    }
  }

LABEL_77:
  sub_1ADF7ACC0(v93, &v92, &v91);
  return 1;
}

uint64_t sub_1ADF76338(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v88[1] = *MEMORY[0x1E69E9840];
  v81 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_78;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
LABEL_79:
    __break(1u);
  }

  v20 = (a2 - a1) / v18;
  v87 = a4;
  v88[0] = a1;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v22;
    if (v22 >= 1)
    {
      v46 = -v18;
      v47 = a4 + v22;
      v78 = -v18;
      do
      {
        v75 = v45;
        v48 = a2;
        a2 += v46;
        v77 = v48;
        while (1)
        {
          if (v48 <= a1)
          {
            v88[0] = v48;
            v86 = v75;
            goto LABEL_76;
          }

          v49 = a3;
          v76 = v45;
          v50 = v47 + v46;
          v51 = v79;
          sub_1ADDDE3A0(v47 + v46, v79, type metadata accessor for Replica);
          v52 = v80;
          sub_1ADDDE3A0(a2, v80, type metadata accessor for Replica);
          v53 = *(v81 + 20);
          v54 = *(v51 + v53);
          v55 = *(v52 + v53);
          if (v54 == v55)
          {
            v84 = sub_1AE23BFCC();
            LOWORD(v85) = v56;
            BYTE2(v85) = v57;
            BYTE3(v85) = v58;
            BYTE4(v85) = v59;
            BYTE5(v85) = v60;
            BYTE6(v85) = v61;
            HIBYTE(v85) = v62;
            v82 = sub_1AE23BFCC();
            LOWORD(v83) = v63;
            BYTE2(v83) = v64;
            BYTE3(v83) = v65;
            BYTE4(v83) = v66;
            BYTE5(v83) = v67;
            BYTE6(v83) = v68;
            HIBYTE(v83) = v69;
            v70 = bswap64(v84);
            v71 = bswap64(v82);
            if (v70 == v71 && (v70 = bswap64(v85), v71 = bswap64(v83), v70 == v71))
            {
              LOBYTE(v72) = 0;
            }

            else
            {
              v73 = v70 < v71 ? -1 : 1;
              v72 = v73 >> 31;
            }
          }

          else
          {
            LOBYTE(v72) = v54 < v55;
          }

          a3 = v49 + v78;
          sub_1ADDE4FF8(v80, type metadata accessor for Replica);
          sub_1ADDE4FF8(v79, type metadata accessor for Replica);
          if (v72)
          {
            break;
          }

          v45 = v50;
          if (v49 < v47 || a3 >= v47)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v50;
          v48 = v77;
          v46 = v78;
          if (v50 <= a4)
          {
            a2 = v77;
            goto LABEL_75;
          }
        }

        if (v49 < v77 || a3 >= v77)
        {
          swift_arrayInitWithTakeFrontToBack();
          v45 = v76;
        }

        else
        {
          v45 = v76;
          if (v49 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v46 = v78;
      }

      while (v47 > a4);
    }

LABEL_75:
    v88[0] = a2;
    v86 = v45;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v80 = a4 + v21;
    v86 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      do
      {
        sub_1ADDDE3A0(a2, v16, type metadata accessor for Replica);
        sub_1ADDDE3A0(a4, v13, type metadata accessor for Replica);
        v24 = *(v81 + 20);
        v25 = *&v16[v24];
        v26 = *&v13[v24];
        if (v25 == v26)
        {
          v84 = sub_1AE23BFCC();
          LOWORD(v85) = v27;
          BYTE2(v85) = v28;
          BYTE3(v85) = v29;
          BYTE4(v85) = v30;
          BYTE5(v85) = v31;
          BYTE6(v85) = v32;
          HIBYTE(v85) = v33;
          v82 = sub_1AE23BFCC();
          LOWORD(v83) = v34;
          BYTE2(v83) = v35;
          BYTE3(v83) = v36;
          BYTE4(v83) = v37;
          BYTE5(v83) = v38;
          BYTE6(v83) = v39;
          HIBYTE(v83) = v40;
          v41 = bswap64(v84);
          v42 = bswap64(v82);
          if (v41 == v42 && (v41 = bswap64(v85), v42 = bswap64(v83), v41 == v42))
          {
            v43 = 0;
          }

          else
          {
            if (v41 < v42)
            {
              v44 = -1;
            }

            else
            {
              v44 = 1;
            }

            v43 = v44 >> 31;
          }
        }

        else
        {
          v43 = v25 < v26;
        }

        sub_1ADDE4FF8(v13, type metadata accessor for Replica);
        sub_1ADDE4FF8(v16, type metadata accessor for Replica);
        if (v43)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v87 = a4 + v18;
          a4 += v18;
        }

        a1 += v18;
        v88[0] = a1;
      }

      while (a4 < v80 && a2 < a3);
    }
  }

LABEL_76:
  sub_1ADF7ADB0(v88, &v87, &v86);
  return 1;
}

void sub_1ADF76AA0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v57 = sub_1AE23C12C();
  v3 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Replica(0);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = *(a2 + 64);
  v44 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v45 = v3 + 16;
  v54 = (v3 + 32);
  v49 = v3;
  v50 = a2;
  v51 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v19 = &qword_1EB5BA2A0;
  v47 = v8;
  v46 = v11;
  while (1)
  {
    v20 = v19;
    v58 = v17;
    if (!v15)
    {
      break;
    }

    v21 = v18;
LABEL_13:
    v24 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v25 = v24 | (v21 << 6);
    v26 = v50;
    v27 = v55;
    sub_1ADDDE3A0(*(v50 + 48) + *(v48 + 72) * v25, v55, type metadata accessor for Replica);
    v28 = v49;
    v30 = v56;
    v29 = v57;
    (*(v49 + 16))(v56, *(v26 + 56) + *(v49 + 72) * v25, v57);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &unk_1AE242200);
    v32 = *(v31 + 48);
    v33 = v27;
    v8 = v47;
    sub_1ADDDE540(v33, v47, type metadata accessor for Replica);
    (*(v28 + 32))(&v8[v32], v30, v29);
    (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
    v23 = v21;
    v19 = v20;
    v11 = v46;
LABEL_14:
    sub_1ADDD2198(v8, v11, &qword_1EB5BA458, &qword_1AE251E00);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, &unk_1AE242200);
    if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
    {

      MEMORY[0x1B26FCBD0](v58);
      return;
    }

    v35 = *(v34 + 48);
    v36 = v55;
    sub_1ADDDE540(v11, v55, type metadata accessor for Replica);
    v37 = v56;
    v38 = v23;
    v39 = v57;
    (*v54)(v56, &v11[v35], v57);
    v40 = *(v53 + 48);
    v61 = *(v53 + 32);
    v62 = v40;
    v63 = *(v53 + 64);
    v41 = *(v53 + 16);
    v59 = *v53;
    v60 = v41;
    sub_1AE23BFAC();
    MEMORY[0x1B26FCBD0](*(v36 + *(v52 + 20)));
    sub_1ADDE4FF8(v36, type metadata accessor for Replica);
    sub_1ADDDF604(&qword_1EB5BB810, MEMORY[0x1E6969B50], MEMORY[0x1E6969B60]);
    sub_1AE23CBCC();
    (*v51)(v37, v39);
    v17 = sub_1AE23E34C() ^ v58;
    v18 = v38;
  }

  if (v16 <= v18 + 1)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v16;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v16)
    {
      v19 = v20;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &unk_1AE242200);
      (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
      v15 = 0;
      goto LABEL_14;
    }

    v15 = *(v44 + 8 * v21);
    ++v18;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_1ADF77044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB7A0;
  if (!qword_1EB5BB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB7A0);
  }

  return result;
}

unint64_t sub_1ADF770BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB7A8;
  if (!qword_1EB5BB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB7A8);
  }

  return result;
}

void sub_1ADF7721C(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Timestamp(0);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = a3(v7);
  }

  sub_1ADDF3CCC(a1, a2);
  *v3 = v7;
}

uint64_t sub_1ADF772F0(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v55 = a2;
  v50 = sub_1AE23C12C();
  v6 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Timestamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v43 = *a1;
  v44 = v3;
  result = *v3;
  v54 = *(*v3 + 16);
  if (v54)
  {
    v18 = v6;
    v19 = 0;
    v20 = *a3;
    v51 = a3[1];
    v52 = v20;
    v48 = v18;
    v45 = v18 + 8;
    v46 = v18 + 16;
    v21 = MEMORY[0x1E69E7CC0];
    v47 = v9;
    v53 = result;
    while (1)
    {
      if (v19 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v57 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v22 = *(v9 + 72);
      sub_1ADDF8030(result + v57 + v22 * v19, v16, type metadata accessor for Timestamp);
      v23 = *(v55 + 16);
      if (v23)
      {
        v24 = v55 + v57;
        do
        {
          sub_1ADDF8030(v24, v13, type metadata accessor for Timestamp);
          if (*&v13[*(v8 + 20)] == *&v16[*(v8 + 20)] && (v25 = type metadata accessor for Replica(0), *&v13[*(v25 + 20)] == *&v16[*(v25 + 20)]))
          {
            v26 = sub_1AE23BF8C();
            sub_1ADDE5300(v13, type metadata accessor for Timestamp);
            if (v26)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1ADDE5300(v13, type metadata accessor for Timestamp);
          }

          v24 += v22;
          --v23;
        }

        while (v23);
      }

      if (*&v16[*(type metadata accessor for Replica(0) + 20)])
      {
        v27 = v51;
      }

      else
      {
        v27 = v52;
      }

      if (!*(v27 + 16))
      {
        goto LABEL_22;
      }

      v28 = sub_1ADDD8A6C(v16);
      if ((v29 & 1) == 0)
      {
        break;
      }

      v30 = v48;
      v31 = v49;
      v32 = v50;
      (*(v48 + 16))(v49, *(v27 + 56) + *(v48 + 72) * v28, v50);

      v33 = sub_1AE23C0CC();
      v34 = v31;
      v9 = v47;
      (*(v30 + 8))(v34, v32);
      if ((v33 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_1ADDE5300(v16, type metadata accessor for Timestamp);
LABEL_4:
      ++v19;
      result = v53;
      if (v19 == v54)
      {
        goto LABEL_28;
      }
    }

LABEL_22:
    sub_1ADDE5F9C(v16, v56, type metadata accessor for Timestamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v58 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ADE6EF68(0, *(v21 + 16) + 1, 1);
      v21 = v58;
    }

    v37 = *(v21 + 16);
    v36 = *(v21 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_1ADE6EF68((v36 > 1), v37 + 1, 1);
      v21 = v58;
    }

    *(v21 + 16) = v37 + 1;
    sub_1ADDE5F9C(v56, v21 + v57 + v37 * v22, type metadata accessor for Timestamp);
    goto LABEL_4;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v38 = v44;
  *v44 = v21;
  v39 = v55;
  v59 = v55;
  v58 = v43;

  sub_1ADF777D8(&v58);
  v40 = *(v21 + 16);
  sub_1ADF77B64(v59);

  v41 = *(*v38 + 16);
  if (sub_1ADF77EEC(*v38, v39))
  {
    v42 = 256;
  }

  else
  {
    v42 = 0;
  }

  if (v40 >= v41)
  {
    return v42;
  }

  else
  {
    return v42 + 1;
  }
}

uint64_t sub_1ADF777D8(uint64_t *a1)
{
  v37 = sub_1AE23C12C();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Timestamp(0);
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v30 = v1;
  result = *v1;
  v41 = *(*v1 + 16);
  if (v41)
  {
    v12 = 0;
    v13 = *a1;
    v38 = a1[1];
    v39 = v13;
    v34 = v3;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v14 = MEMORY[0x1E69E7CC0];
    v33 = v7;
    v40 = result;
    while (1)
    {
      if (v12 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v16 = *(v5 + 72);
      sub_1ADDF8030(result + v15 + v16 * v12, v10, type metadata accessor for Timestamp);
      if (*&v10[*(type metadata accessor for Replica(0) + 20)])
      {
        v17 = v38;
      }

      else
      {
        v17 = v39;
      }

      if (!*(v17 + 16))
      {
        goto LABEL_14;
      }

      v18 = sub_1ADDD8A6C(v10);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v34;
      v21 = v5;
      v23 = v36;
      v22 = v37;
      (*(v34 + 16))(v36, *(v17 + 56) + *(v34 + 72) * v18, v37);

      v24 = sub_1AE23C0CC();
      v25 = v23;
      v5 = v21;
      v7 = v33;
      (*(v20 + 8))(v25, v22);
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_1ADDE5300(v10, type metadata accessor for Timestamp);
LABEL_4:
      ++v12;
      result = v40;
      if (v41 == v12)
      {
        goto LABEL_20;
      }
    }

LABEL_14:
    sub_1ADDE5F9C(v10, v7, type metadata accessor for Timestamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ADE6EF68(0, *(v14 + 16) + 1, 1);
      v14 = v42;
    }

    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1ADE6EF68((v27 > 1), v28 + 1, 1);
      v14 = v42;
    }

    *(v14 + 16) = v28 + 1;
    sub_1ADDE5F9C(v7, v14 + v15 + v28 * v16, type metadata accessor for Timestamp);
    goto LABEL_4;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *v30 = v14;
  return result;
}

double sub_1ADF77B64(uint64_t a1)
{
  v3 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = *v1;
  if (*(*v1 + 16))
  {
    v24 = v1;
    v26 = *(a1 + 16);
    if (v26)
    {
      v14 = 0;
      v27 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v25 = a1 + v27;
      v15 = *(v10 + 72);
      do
      {
        sub_1ADDF8030(v25 + v15 * v14, v12, type metadata accessor for Timestamp);
        v16 = v13[2];
        if (v16)
        {
          v17 = v13 + v27;
          do
          {
            sub_1ADDF8030(v17, v8, type metadata accessor for Timestamp);
            if (*&v8[*(v3 + 20)] == *&v12[*(v3 + 20)] && (v18 = type metadata accessor for Replica(0), *&v8[*(v18 + 20)] == *&v12[*(v18 + 20)]))
            {
              v19 = sub_1AE23BF8C();
              sub_1ADDE5300(v8, type metadata accessor for Timestamp);
              if (v19)
              {
                sub_1ADDE5300(v12, type metadata accessor for Timestamp);
                goto LABEL_5;
              }
            }

            else
            {
              sub_1ADDE5300(v8, type metadata accessor for Timestamp);
            }

            v17 += v15;
            --v16;
          }

          while (v16);
        }

        sub_1ADDF8030(v12, v5, type metadata accessor for Timestamp);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1ADE09898(0, v13[2] + 1, 1, v13);
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          v13 = sub_1ADE09898((v20 > 1), v21 + 1, 1, v13);
        }

        sub_1ADDE5300(v12, type metadata accessor for Timestamp);
        v13[2] = v21 + 1;
        sub_1ADDE5F9C(v5, v13 + v27 + v21 * v15, type metadata accessor for Timestamp);
        *v24 = v13;
LABEL_5:
        ++v14;
      }

      while (v14 != v26);
    }

    sub_1ADF7721C(sub_1ADF7B924, 0, sub_1ADF799DC);
  }

  else
  {

    *v1 = a1;
  }

  return result;
}

uint64_t sub_1ADF77EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  if (v12 < v11)
  {
    return 1;
  }

  if (!v11)
  {
    return 0;
  }

  v13 = 0;
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = *(v8 + 72);
  v16 = a1 + v14;
  v17 = a2 + v14;
  v23 = v17;
  v24 = a1 + v14;
  while (2)
  {
    v18 = v16 + v15 * v13++;
    sub_1ADDF8030(v18, v10, type metadata accessor for Timestamp);
    v19 = v12;
    while (1)
    {
      sub_1ADDF8030(v17, v6, type metadata accessor for Timestamp);
      if (*&v6[*(v4 + 20)] == *&v10[*(v4 + 20)])
      {
        v20 = type metadata accessor for Replica(0);
        if (*&v6[*(v20 + 20)] == *&v10[*(v20 + 20)])
        {
          break;
        }
      }

      sub_1ADDE5300(v6, type metadata accessor for Timestamp);
LABEL_6:
      v17 += v15;
      if (!--v19)
      {
        sub_1ADDE5300(v10, type metadata accessor for Timestamp);
        return 1;
      }
    }

    v21 = sub_1AE23BF8C();
    sub_1ADDE5300(v6, type metadata accessor for Timestamp);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }

    sub_1ADDE5300(v10, type metadata accessor for Timestamp);
    result = 0;
    v17 = v23;
    v16 = v24;
    if (v13 != v11)
    {
      continue;
    }

    return result;
  }
}

void sub_1ADF78130(uint64_t a1)
{
  v27 = a1;
  v2 = type metadata accessor for Timestamp(0);
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v23 = v1;
  v10 = *v1;
  v25 = *(*v1 + 16);
  if (v25)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v24 = v10;
    while (v11 < *(v10 + 16))
    {
      v15 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v16 = *(v26 + 72);
      sub_1ADDF8030(v10 + v15 + v16 * v11, v9, type metadata accessor for Timestamp);
      v17 = *(v27 + 16);
      if (v17)
      {
        v18 = v27 + v15;
        do
        {
          sub_1ADDF8030(v18, v6, type metadata accessor for Timestamp);
          if (*&v6[*(v2 + 20)] == *&v9[*(v2 + 20)] && (v19 = type metadata accessor for Replica(0), *&v6[*(v19 + 20)] == *&v9[*(v19 + 20)]))
          {
            v20 = sub_1AE23BF8C();
            sub_1ADDE5300(v6, type metadata accessor for Timestamp);
            if (v20)
            {
              sub_1ADDE5300(v9, type metadata accessor for Timestamp);
              v10 = v24;
              goto LABEL_6;
            }
          }

          else
          {
            sub_1ADDE5300(v6, type metadata accessor for Timestamp);
          }

          v18 += v16;
          --v17;
        }

        while (v17);
      }

      sub_1ADDE5F9C(v9, v28, type metadata accessor for Timestamp);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ADE6EF68(0, *(v12 + 16) + 1, 1);
        v12 = v29;
      }

      v10 = v24;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1ADE6EF68((v13 > 1), v14 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v14 + 1;
      sub_1ADDE5F9C(v28, v12 + v15 + v14 * v16, type metadata accessor for Timestamp);
LABEL_6:
      if (++v11 == v25)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_19:

    *v23 = v12;
  }
}

void sub_1ADF7845C(uint64_t *a1)
{
  v3 = sub_1AE23C12C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Timestamp(0);
  v6 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v40 = v1;
  v11 = *v1;
  v12 = *(*v1 + 16);
  if (v12)
  {
    v44 = v3;
    v13 = 0;
    v14 = *a1;
    v50 = a1[1];
    v51 = v14;
    v42 = v4 + 8;
    v43 = v4 + 16;
    v15 = MEMORY[0x1E69E7CC0];
    v41 = v4;
    v48 = v12;
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return;
      }

      v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v17 = *(v6 + 72);
      sub_1ADDF8030(v11 + v16 + v17 * v13, v10, type metadata accessor for Timestamp);
      if (*&v10[*(type metadata accessor for Replica(0) + 20)])
      {
        v18 = v50;
      }

      else
      {
        v18 = v51;
      }

      if (*(v18 + 16))
      {

        v19 = sub_1ADDD8A6C(v10);
        if (v20)
        {
          v21 = *(v18 + 56) + *(v4 + 72) * v19;
          v22 = *(v4 + 16);
          v23 = v46;
          v49 = v17;
          v24 = v16;
          v25 = v11;
          v26 = v6;
          v27 = v15;
          v28 = v4;
          v29 = v44;
          v22(v46, v21, v44);

          v30 = sub_1AE23C0CC();
          v31 = *(v28 + 8);
          v32 = v23;
          v33 = v29;
          v4 = v28;
          v15 = v27;
          v6 = v26;
          v11 = v25;
          v34 = v24;
          v12 = v48;
          v35 = v49;
          v31(v32, v33);
          if (v30)
          {
            sub_1ADDE5F9C(v10, v47, type metadata accessor for Timestamp);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v52 = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1ADE6EF68(0, *(v15 + 16) + 1, 1);
              v15 = v52;
            }

            v38 = *(v15 + 16);
            v37 = *(v15 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_1ADE6EF68((v37 > 1), v38 + 1, 1);
              v15 = v52;
            }

            *(v15 + 16) = v38 + 1;
            sub_1ADDE5F9C(v47, v15 + v34 + v38 * v35, type metadata accessor for Timestamp);
            v4 = v41;
            v12 = v48;
            goto LABEL_5;
          }
        }

        else
        {
        }
      }

      sub_1ADDE5300(v10, type metadata accessor for Timestamp);
LABEL_5:
      if (v12 == ++v13)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *v40 = v15;
}

void sub_1ADF7880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for FinalizedTimestamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Timestamp(0);
  v11 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = *v3;
  v18 = *(*v3 + 16);
  if (v18)
  {
    v41 = v8;
    v42 = v7;
    v37 = v3;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1ADE6EF68(0, v18, 0);
    v19 = v48;
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v36 = v17;
    v21 = v9;
    v22 = v17 + v20;
    v23 = v20;
    v24 = *(v11 + 72);
    v39 = (v21 + 48);
    v40 = v20;
    v45 = a3;
    do
    {
      sub_1ADDF8030(v22, v13, type metadata accessor for Timestamp);
      sub_1ADDF8030(v13, v16, type metadata accessor for Timestamp);
      v25 = *(type metadata accessor for Replica(0) + 20);
      if (*&v16[v25] && *(a3 + 16) && (v26 = sub_1ADDD8A6C(v16), (v27 & 1) != 0))
      {
        sub_1ADDE56CC(*(a3 + 56) + 24 * v26, v46);
        sub_1ADDE5634(v46, v47);
        v28 = v42;
        v44 = *(v43 + 20);
        sub_1AE221574(*&v16[v44], v42);
        sub_1ADDE5C20(v47);
        sub_1ADDE5300(v13, type metadata accessor for Timestamp);
        v29 = v41;
        if ((*v39)(v28, 1, v41) == 1)
        {
          sub_1ADDCEDE0(v28, &qword_1EB5BA460, &qword_1AE251020);
        }

        else
        {
          sub_1ADDE5300(v16, type metadata accessor for Timestamp);
          v32 = v28;
          v33 = v38;
          sub_1ADDE5F9C(v32, v38, type metadata accessor for FinalizedTimestamp);
          v34 = sub_1AE23BFEC();
          (*(*(v34 - 8) + 16))(v16, v33, v34);
          *&v16[v25] = 0;
          v35 = *(v33 + *(v29 + 20));
          sub_1ADDE5300(v33, type metadata accessor for FinalizedTimestamp);
          *&v16[v44] = v35;
        }

        v23 = v40;
      }

      else
      {
        sub_1ADDE5300(v13, type metadata accessor for Timestamp);
      }

      v48 = v19;
      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1ADE6EF68((v30 > 1), v31 + 1, 1);
        v19 = v48;
      }

      *(v19 + 16) = v31 + 1;
      sub_1ADDE5F9C(v16, v19 + v23 + v31 * v24, type metadata accessor for Timestamp);
      v22 += v24;
      --v18;
      a3 = v45;
    }

    while (v18);

    v3 = v37;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  *v3 = v19;
  sub_1ADF7721C(sub_1ADF7B924, 0, sub_1ADF799DC);
}

void *sub_1ADF78CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    if (v9 == v8)
    {

      return a2;
    }

    sub_1ADDF8030(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8++, v7, type metadata accessor for Timestamp);
    v10 = *&v7[*(type metadata accessor for Replica(0) + 20)];
    sub_1ADDE5300(v7, type metadata accessor for Timestamp);
  }

  while (!v10);

  v12 = sub_1ADF78ED0(v11, v20);
  v13 = v20[0];
  v14 = v20[1];
  if (qword_1ED96B308 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v12);
  *&v17[-32] = v13;
  *&v17[-24] = v14;
  *&v17[-16] = v15;
  *&v17[-8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
  sub_1AE23D6AC();

  v18 = v19;
  return sub_1ADF7B134(&v18, *&v19);
}

uint64_t sub_1ADF78ED0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = sub_1AE23C12C();
  v4 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Timestamp(0);
  v6 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a1 + 16);
  if (!v54)
  {

    v10 = MEMORY[0x1E69E7CC8];
    v45 = MEMORY[0x1E69E7CC8];
LABEL_30:
    *a2 = v45;
    a2[1] = v10;
    return result;
  }

  v9 = 0;
  v53 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v47 = a2;
  v48 = v4 + 32;
  v10 = MEMORY[0x1E69E7CC8];
  v51 = MEMORY[0x1E69E7CC8];
  v52 = v6;
  while (v9 < *(a1 + 16))
  {
    sub_1ADDF8030(v53 + *(v6 + 72) * v9, v8, type metadata accessor for Timestamp);
    v11 = type metadata accessor for Replica(0);
    v12 = *&v8[*(v11 + 20)];
    v56 = *&v8[*(v55 + 20)];
    if (!v12)
    {
      v24 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v24;
      v26 = sub_1ADDD8A6C(v8);
      v28 = v24[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_33;
      }

      v32 = v27;
      if (v24[3] < v31)
      {
        sub_1ADDDDED0(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_1ADDD8A6C(v8);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_36;
        }

        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_22:
        v38 = v57;
        if ((v32 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v43 = v26;
        sub_1ADDFB81C();
        v26 = v43;
        v6 = v52;
        v38 = v57;
        if ((v32 & 1) == 0)
        {
LABEL_23:
          v39 = v49;
          v40 = v26;
          sub_1AE23C11C();
          v38[(v40 >> 6) + 8] |= 1 << v40;
          sub_1ADDF8030(v8, v38[6] + *(*(v11 - 8) + 72) * v40, type metadata accessor for Replica);
          (*(v4 + 32))(v38[7] + *(v4 + 72) * v40, v39, v50);
          v41 = v38[2];
          v30 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v30)
          {
            goto LABEL_35;
          }

          v38[2] = v42;
          v51 = v38;
          goto LABEL_25;
        }
      }

      v51 = v38;
      goto LABEL_4;
    }

    v13 = v4;
    v14 = a1;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v10;
    v17 = sub_1ADDD8A6C(v8);
    v18 = v10[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_32;
    }

    v21 = v16;
    if (v10[3] >= v20)
    {
      if ((v15 & 1) == 0)
      {
        sub_1ADDFB81C();
      }
    }

    else
    {
      sub_1ADDDDED0(v20, v15);
      v22 = sub_1ADDD8A6C(v8);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_36;
      }

      v17 = v22;
    }

    a1 = v14;
    v34 = v57;
    v4 = v13;
    if (v21)
    {
      v10 = v57;
LABEL_25:
      v6 = v52;
      goto LABEL_4;
    }

    v35 = v49;
    sub_1AE23C11C();
    v34[(v17 >> 6) + 8] |= 1 << v17;
    sub_1ADDF8030(v8, v34[6] + *(*(v11 - 8) + 72) * v17, type metadata accessor for Replica);
    (*(v13 + 32))(v34[7] + *(v13 + 72) * v17, v35, v50);
    v36 = v34[2];
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    v6 = v52;
    if (v30)
    {
      goto LABEL_34;
    }

    v34[2] = v37;
    v10 = v34;
LABEL_4:
    ++v9;
    sub_1AE23C08C();
    sub_1ADDE5300(v8, type metadata accessor for Timestamp);
    if (v54 == v9)
    {

      a2 = v47;
      v45 = v51;
      goto LABEL_30;
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
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

BOOL sub_1ADF793D8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Timestamp(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  v7 = v5 < v6;
  if (v5 == v6)
  {
    v8 = *(type metadata accessor for Replica(0) + 20);
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);
    v7 = v9 < v10;
    if (v9 == v10)
    {
      return sub_1ADF5EB00(a1) & 1;
    }
  }

  return v7;
}

void sub_1ADF7945C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = sub_1ADF78ED0(a2, &v14);
  v8 = sub_1ADE71C08(v5, v6, v7);
  if (v3)
  {
  }

  else
  {
    v9 = *(v8 + 16);

    sub_1ADDF5C7C(v9);
    v11 = v10;
    v13 = v12;
    swift_beginAccess();
    sub_1AE1B6DB0(v11, v13);
    swift_endAccess();
  }
}

uint64_t sub_1ADF79558()
{

  sub_1ADF78ED0(v0, &v3);
  v1 = CRVersion.description.getter();

  return v1;
}

void sub_1ADF795C4()
{
  v1 = type metadata accessor for Timestamp(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v6 = *v0;
  v7 = *(v6 + 16);
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    sub_1ADDF8030(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v5++, v4, type metadata accessor for Timestamp);
    v8 = *&v4[*(type metadata accessor for Replica(0) + 20)];
    sub_1ADDE5300(v4, type metadata accessor for Timestamp);
    if (v8)
    {
      return;
    }
  }
}

void sub_1ADF79704(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1ADF7B044(a2, a3, a4);
  if (!v4)
  {
    *a1 = v6;
  }
}

uint64_t sub_1ADF7974C(uint64_t a1)
{
  v3 = sub_1AE23C12C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v24);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = v1[1];
    v25 = *v1;
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v23[1] = v4 + 16;
    v13 = *(v7 + 72);
    v14 = v10 - 1;
    while (1)
    {
      sub_1ADDF8030(v12, v9, type metadata accessor for Timestamp);
      v15 = *&v9[*(type metadata accessor for Replica(0) + 20)] ? v11 : v25;
      if (!*(v15 + 16))
      {
        break;
      }

      v16 = sub_1ADDD8A6C(v9);
      if ((v17 & 1) == 0)
      {

        break;
      }

      (*(v4 + 16))(v6, *(v15 + 56) + *(v4 + 72) * v16, v3);

      v18 = sub_1AE23C0CC();
      sub_1ADDE5300(v9, type metadata accessor for Timestamp);
      (*(v4 + 8))(v6, v3);
      v20 = v14-- != 0;
      if (v18)
      {
        v12 += v13;
        if (v20)
        {
          continue;
        }
      }

      v21 = v18 ^ 1;
      return v21 & 1;
    }

    sub_1ADDE5300(v9, type metadata accessor for Timestamp);
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1ADF79A54(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1AE23D97C();
  }

  return sub_1AE23DACC();
}

void sub_1ADF79ACC(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a4;
  v142 = a5;
  v129 = a1;
  v134 = type metadata accessor for Timestamp(0);
  v139 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v131 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v118 - v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v118 - v19;
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v140 = a3;
  if (a3[1] < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v20 = *v129;
    if (*v129)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v27 = a3[1];
  v124 = &v118 - v23;
  v125 = v26;
  v135 = v25;
  v132 = v24;
  v123 = a6;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v122 = v16;
  while (1)
  {
    if (v28 + 1 >= v27)
    {
      v42 = v28 + 1;
    }

    else
    {
      v127 = v27;
      v30 = *v140;
      v31 = *(v139 + 72);
      v32 = v28;
      v33 = *v140 + v31 * (v28 + 1);
      v34 = v124;
      sub_1ADDF8030(v33, v124, type metadata accessor for Timestamp);
      v138 = v30;
      v35 = v30 + v31 * v32;
      v36 = v125;
      sub_1ADDF8030(v35, v125, type metadata accessor for Timestamp);
      LODWORD(v137) = v141(v34, v36);
      if (v7)
      {
        sub_1ADDE5300(v36, type metadata accessor for Timestamp);
        v117 = v34;
        goto LABEL_112;
      }

      sub_1ADDE5300(v36, type metadata accessor for Timestamp);
      sub_1ADDE5300(v34, type metadata accessor for Timestamp);
      v121 = v127 - 1;
      v136 = v127 - 2;
      v37 = v138 + v31 * (v32 + 2);
      v126 = v32;
      v38 = v31;
      v138 = v31;
      while (v136 != v32)
      {
        sub_1ADDF8030(v37, v20, type metadata accessor for Timestamp);
        v39 = v20;
        v40 = v135;
        sub_1ADDF8030(v33, v135, type metadata accessor for Timestamp);
        v41 = v141(v39, v40);
        sub_1ADDE5300(v40, type metadata accessor for Timestamp);
        sub_1ADDE5300(v39, type metadata accessor for Timestamp);
        ++v32;
        v38 = v138;
        v37 += v138;
        v33 += v138;
        v20 = v39;
        if ((v137 ^ v41))
        {
          v42 = v32 + 1;
          goto LABEL_12;
        }
      }

      v32 = v121;
      v42 = v127;
LABEL_12:
      v28 = v126;
      if ((v137 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v42 < v126)
      {
        goto LABEL_136;
      }

      if (v126 <= v32)
      {
        v43 = v42;
        v44 = v38 * (v42 - 1);
        v45 = v43 * v38;
        v127 = v43;
        v128 = v20;
        v46 = v43;
        v47 = v126;
        v48 = v126 * v38;
        do
        {
          if (v47 != --v46)
          {
            v49 = *v140;
            if (!*v140)
            {
              goto LABEL_140;
            }

            sub_1ADDE5F9C(v49 + v48, v131, type metadata accessor for Timestamp);
            if (v48 < v44 || v49 + v48 >= (v49 + v45))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1ADDE5F9C(v131, v49 + v44, type metadata accessor for Timestamp);
            v20 = v128;
            v38 = v138;
          }

          ++v47;
          v44 -= v38;
          v45 -= v38;
          v48 += v38;
        }

        while (v47 < v46);
        v16 = v122;
        v28 = v126;
        v42 = v127;
      }

      else
      {
LABEL_15:
        v16 = v122;
      }
    }

    v50 = v140[1];
    if (v42 >= v50)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v42, v28))
    {
      goto LABEL_132;
    }

    if (v42 - v28 >= v123)
    {
LABEL_36:
      v52 = v42;
      if (v42 < v28)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v28, v123))
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
      goto LABEL_139;
    }

    if (v28 + v123 >= v50)
    {
      v51 = v140[1];
    }

    else
    {
      v51 = v28 + v123;
    }

    if (v51 < v28)
    {
      goto LABEL_135;
    }

    if (v42 == v51)
    {
      goto LABEL_36;
    }

    v128 = v20;
    v100 = *v140;
    v101 = *(v139 + 72);
    v102 = *v140 + v101 * (v42 - 1);
    v137 = -v101;
    v138 = v100;
    v126 = v28;
    v103 = v28 - v42;
    v119 = v101;
    v104 = v100 + v42 * v101;
    v136 = v51;
    v130 = v29;
    do
    {
      v120 = v104;
      v121 = v103;
      v127 = v102;
      while (1)
      {
        sub_1ADDF8030(v104, v16, type metadata accessor for Timestamp);
        v105 = v16;
        v106 = v132;
        sub_1ADDF8030(v102, v132, type metadata accessor for Timestamp);
        v107 = v141(v105, v106);
        if (v7)
        {
          sub_1ADDE5300(v106, type metadata accessor for Timestamp);
          v117 = v105;
LABEL_112:
          sub_1ADDE5300(v117, type metadata accessor for Timestamp);
          goto LABEL_113;
        }

        v108 = v107;
        v109 = v42;
        sub_1ADDE5300(v106, type metadata accessor for Timestamp);
        sub_1ADDE5300(v105, type metadata accessor for Timestamp);
        v16 = v105;
        if ((v108 & 1) == 0)
        {
          break;
        }

        if (!v138)
        {
          goto LABEL_138;
        }

        v110 = v133;
        sub_1ADDE5F9C(v104, v133, type metadata accessor for Timestamp);
        swift_arrayInitWithTakeFrontToBack();
        sub_1ADDE5F9C(v110, v102, type metadata accessor for Timestamp);
        v102 += v137;
        v104 += v137;
        v111 = __CFADD__(v103++, 1);
        v42 = v109;
        v7 = 0;
        v29 = v130;
        if (v111)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v29 = v130;
LABEL_95:
      ++v42;
      v102 = v127 + v119;
      v103 = v121 - 1;
      v104 = v120 + v119;
      v52 = v136;
    }

    while (v42 != v136);
    v20 = v128;
    v28 = v126;
    if (v136 < v126)
    {
      goto LABEL_131;
    }

LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1ADE5522C(0, *(v29 + 2) + 1, 1, v29);
    }

    v54 = *(v29 + 2);
    v53 = *(v29 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v29 = sub_1ADE5522C((v53 > 1), v54 + 1, 1, v29);
    }

    *(v29 + 2) = v55;
    v56 = &v29[16 * v54];
    *(v56 + 4) = v28;
    *(v56 + 5) = v52;
    v136 = v52;
    v57 = *v129;
    if (!*v129)
    {
      goto LABEL_141;
    }

    if (v54)
    {
      break;
    }

LABEL_3:
    v27 = v140[1];
    v28 = v136;
    if (v136 >= v27)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v58 = v55 - 1;
    if (v55 >= 4)
    {
      v63 = &v29[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_118;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_119;
      }

      v70 = &v29[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_121;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_124;
      }

      if (v74 >= v66)
      {
        v92 = &v29[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_130;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v62)
        {
          goto LABEL_120;
        }

        v75 = &v29[16 * v55];
        v77 = *v75;
        v76 = *(v75 + 1);
        v78 = __OFSUB__(v76, v77);
        v79 = v76 - v77;
        v80 = v78;
        if (v78)
        {
          goto LABEL_123;
        }

        v81 = &v29[16 * v58 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v79, v84))
        {
          goto LABEL_127;
        }

        if (v79 + v84 < v61)
        {
          goto LABEL_70;
        }

        if (v61 < v84)
        {
          v58 = v55 - 2;
        }
      }
    }

    else
    {
      if (v55 == 3)
      {
        v59 = *(v29 + 4);
        v60 = *(v29 + 5);
        v69 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        v62 = v69;
        goto LABEL_56;
      }

      v85 = &v29[16 * v55];
      v87 = *v85;
      v86 = *(v85 + 1);
      v69 = __OFSUB__(v86, v87);
      v79 = v86 - v87;
      v80 = v69;
LABEL_70:
      if (v80)
      {
        goto LABEL_122;
      }

      v88 = &v29[16 * v58];
      v90 = *(v88 + 4);
      v89 = *(v88 + 5);
      v69 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v69)
      {
        goto LABEL_125;
      }

      if (v91 < v79)
      {
        goto LABEL_3;
      }
    }

    v96 = v58 - 1;
    if (v58 - 1 < v55)
    {
      if (!*v140)
      {
        goto LABEL_137;
      }

      v97 = *&v29[16 * v96 + 32];
      v98 = *&v29[16 * v58 + 40];
      sub_1ADF7A5C4(*v140 + *(v139 + 72) * v97, *v140 + *(v139 + 72) * *&v29[16 * v58 + 32], *v140 + *(v139 + 72) * v98, v57, v141, v142);
      if (v7)
      {
        goto LABEL_113;
      }

      if (v98 < v97)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1ADF7ACAC(v29);
      }

      if (v96 >= *(v29 + 2))
      {
        goto LABEL_117;
      }

      v99 = &v29[16 * v96];
      *(v99 + 4) = v97;
      *(v99 + 5) = v98;
      v143 = v29;
      sub_1ADF7AC20(v58);
      v29 = v143;
      v55 = *(v143 + 2);
      if (v55 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  v29 = sub_1ADF7ACAC(v29);
LABEL_101:
  v143 = v29;
  v112 = *(v29 + 2);
  if (v112 < 2)
  {
LABEL_113:

    return;
  }

  v113 = v141;
  while (*v140)
  {
    v114 = *&v29[16 * v112];
    v115 = *&v29[16 * v112 + 24];
    sub_1ADF7A5C4(*v140 + *(v139 + 72) * v114, *v140 + *(v139 + 72) * *&v29[16 * v112 + 16], *v140 + *(v139 + 72) * v115, v20, v113, v142);
    if (v7)
    {
      goto LABEL_113;
    }

    if (v115 < v114)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1ADF7ACAC(v29);
    }

    if (v112 - 2 >= *(v29 + 2))
    {
      goto LABEL_129;
    }

    v116 = &v29[16 * v112];
    *v116 = v114;
    *(v116 + 1) = v115;
    v143 = v29;
    sub_1ADF7AC20(v112 - 1);
    v29 = v143;
    v112 = *(v143 + 2);
    if (v112 <= 1)
    {
      goto LABEL_113;
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_1ADF7A5C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v53);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v52 = *(v22 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v23 = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < v23 || v23 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v23)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v23 = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = v23;
          sub_1ADDF8030(a2, v21, type metadata accessor for Timestamp);
          sub_1ADDF8030(a4, v18, type metadata accessor for Timestamp);
          v30 = v55(v21, v18);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_1ADDE5300(v18, type metadata accessor for Timestamp);
          sub_1ADDE5300(v21, type metadata accessor for Timestamp);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          v23 = v34 + v33;
          v59 = v23;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_1ADDE5300(v18, type metadata accessor for Timestamp);
        sub_1ADDE5300(v21, type metadata accessor for Timestamp);
      }

LABEL_64:
      sub_1ADF7ADE0(&v59, &v58, &v57, type metadata accessor for Timestamp);
      return;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v15;
          v48 = v12;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= v23)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_1ADDF8030(v38 + v37, v15, type metadata accessor for Timestamp);
              sub_1ADDF8030(v50, v12, type metadata accessor for Timestamp);
              v42 = v55(v15, v12);
              if (v7)
              {
                sub_1ADDE5300(v12, type metadata accessor for Timestamp);
                sub_1ADDE5300(v15, type metadata accessor for Timestamp);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_1ADDE5300(v12, type metadata accessor for Timestamp);
              sub_1ADDE5300(v15, type metadata accessor for Timestamp);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              v23 = v51;
              v15 = v47;
              v12 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v23 = v51;
            v38 = v52;
            v15 = v47;
            v12 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
}

uint64_t sub_1ADF7AC20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1ADF7ACAC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1ADF7ACC0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1ADF7ADE0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1ADF7AEC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA130, &qword_1AE241B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1ADF7B044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xD00000000000001BLL;
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = "Invalid UUID index.";
    if ((~v6 & 0xF000000000000007) != 0 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 6)
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v9 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      sub_1ADDF4A24(v8, v9, a1);
      return;
    }
  }

  else
  {
    v7 = "Not decoding a CRDT.";
    v4 = 0xD000000000000017;
  }

  v10 = v7 | 0x8000000000000000;
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v11 = v4;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  swift_willThrow();
}

void *sub_1ADF7B134(__int128 *a1, double a2)
{
  v67 = sub_1AE23BFFC();
  v3 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA490, &qword_1AE2514C0);
  MEMORY[0x1EEE9AC00](v55);
  v6 = &v51 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v51 - v11;
  v61 = type metadata accessor for Timestamp(0);
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0;
  v52 = &v70;
  v70 = *a1;
  v64 = (v3 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v17 = *(v52 + v15);
    v53 = v14;
    v18 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v17 + 64);
    v22 = (v19 + 63) >> 6;
    v58 = v17;

    v23 = 0;
    v57 = v18;
    v56 = v22;
    while (v21)
    {
      v24 = v23;
LABEL_13:
      v59 = v24;
      v60 = (v21 - 1) & v21;
      v25 = __clz(__rbit64(v21)) | (v24 << 6);
      v26 = v58;
      v27 = *(v58 + 48);
      v28 = type metadata accessor for Replica(0);
      v29 = v54;
      sub_1ADDF8030(v27 + *(*(v28 - 8) + 72) * v25, v54, type metadata accessor for Replica);
      v30 = *(v26 + 56);
      v31 = sub_1AE23C12C();
      v32 = *(v31 - 8);
      v33 = v30 + *(v32 + 72) * v25;
      v34 = v65;
      v35 = *(v65 + 48);
      (*(v32 + 16))(v29 + v35, v33, v31);
      v36 = *(v34 + 48);
      v37 = v68;
      sub_1ADDE5F9C(v29, v68, type metadata accessor for Replica);
      (*(v32 + 32))(v37 + v36, v29 + v35, v31);
      sub_1AE23C01C();
      sub_1ADF7B86C(&qword_1ED967148, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
      v38 = (v32 + 8);
      while (1)
      {
        v39 = v66;
        sub_1AE23D46C();
        sub_1ADF7B86C(&qword_1ED967158, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
        v40 = v67;
        v41 = sub_1AE23CCBC();
        (*v64)(v39, v40);
        if (v41)
        {
          break;
        }

        v42 = sub_1AE23D51C();
        v44 = *v43;
        v42(v69, 0);
        sub_1AE23D47C();
        v45 = v62;
        sub_1ADF7B8B4(v68, v62);
        v46 = *(v65 + 48);
        sub_1ADDE5F9C(v45, v13, type metadata accessor for Replica);
        *&v13[*(v61 + 20)] = v44;
        (*v38)(v45 + v46, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1ADE09898(0, v16[2] + 1, 1, v16);
        }

        v48 = v16[2];
        v47 = v16[3];
        if (v48 >= v47 >> 1)
        {
          v16 = sub_1ADE09898((v47 > 1), v48 + 1, 1, v16);
        }

        v16[2] = v48 + 1;
        sub_1ADDE5F9C(v13, v16 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v48, type metadata accessor for Timestamp);
      }

      sub_1ADDCEDE0(v6, &qword_1EB5BA490, &qword_1AE2514C0);
      sub_1ADDCEDE0(v68, &qword_1EB5BA2A0, &unk_1AE242200);
      v23 = v59;
      v21 = v60;
      v18 = v57;
      v22 = v56;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_23:
        v16 = sub_1ADF799DC(v16);
        goto LABEL_21;
      }

      if (v24 >= v22)
      {
        break;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    v14 = 1;
    v15 = 1;
    if ((v53 & 1) == 0)
    {
      continue;
    }

    break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB818, &qword_1AE24CF08);
  swift_arrayDestroy();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v49 = v16[2];
  v69[0] = v16 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
  v69[1] = v49;
  sub_1ADDF3CCC(sub_1ADF7B924, 0);
  return v16;
}

uint64_t sub_1ADF7B86C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ADF7B8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1ADF7B940(void *result, unint64_t a2)
{
  v3 = result;
  v4 = (a2 - result);
  if (a2 >= result)
  {
    if ((a2 - result) >= 0)
    {
LABEL_5:
      if (v4)
      {
        v5 = sub_1AE194254(v4, 0);
        if (sub_1ADF7BD20(v6, (v5 + 4), v4, v3, a2) == v4)
        {
          return v5;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    if ((result - a2) >= 0)
    {
      v4 = (a2 - result);
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1ADF7B9DC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1AE23D97C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1AE1943C8(v3, 0);
  sub_1ADF7E1A0((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1ADF7BA70(uint64_t a1, uint64_t (*a2)(id *), uint64_t a3)
{
  type metadata accessor for Key(0);
  v6 = v5;
  v7 = sub_1ADF7F290(&qword_1EB5B8BE0, type metadata accessor for Key, &unk_1AE240E70);
  v8 = MEMORY[0x1B26FBB90](0, v6, v7);
  v9 = 0;
  v17[1] = v8;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return;
    }

    v12 = *(a1 + 64 + 8 * v14);
    ++v9;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v17[0] = *(*(a1 + 48) + ((v14 << 9) | (8 * v15)));
        v16 = v17[0];
        if (a2(v17))
        {
          sub_1ADEC0B88(v17, v16);

          v9 = v14;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v9 = v14;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v14 = v9;
      }
    }
  }

  __break(1u);
}

void sub_1ADF7BBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1ADDDF1A4(a1, a2, a3);
  v6 = 0;
  v16[2] = MEMORY[0x1B26FBB90](v4, &type metadata for CRKeyPath, v5);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];
    sub_1ADDD86D8(*v13, v15);
    sub_1ADDE0110(v16, v14, v15);
    sub_1ADDCC35C(v16[0], v16[1]);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t *sub_1ADF7BD20(unint64_t *result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADF7BDBC(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1ADF7AFE0(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1AE23DD7C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2B0, &unk_1AE242210);
      v7 = sub_1AE23D06C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1ADF7DA14(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void CRValueStruct.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xD00000000000001FLL;
  v5 = *(a1 + 72);
  if (!v5)
  {
    v7 = "Not decoding a CRDT.";
    v4 = 0xD000000000000017;
LABEL_7:
    v12 = v7 | 0x8000000000000000;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v13 = v4;
    *(v13 + 8) = v12;
    *(v13 + 16) = 0;
    swift_willThrow();
    goto LABEL_8;
  }

  v6 = *(v5 + 16);
  v7 = "pos=";
  if ((~v6 & 0xF000000000000007) == 0 || ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) != 0xD)
  {
    goto LABEL_7;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v9 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  type metadata accessor for CRStructDecoder();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v8;
  v10[4] = v9;
  v11 = *(v8 + 16);

  if (v11)
  {
  }

  else
  {
    v10[3] = sub_1ADF7B940(0, *(v9 + 16));
  }

  sub_1ADF7F290(qword_1ED9692A0, type metadata accessor for CRStructDecoder, &unk_1AE24E0AC);
  sub_1AE23D2BC();
LABEL_8:
}

double CRValueStruct.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);

    sub_1ADF9DBE0(v3, a2, v9, v8);
  }

  return result;
}

void sub_1ADF7C140()
{
  v2 = *(v0 + 16);
  v3 = type metadata accessor for CRStructEncoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  v4[3] = MEMORY[0x1E69E7CC0];
  v6 = v4 + 3;
  v4[4] = v5;
  v4[2] = v2;
  v25[3] = v3;
  v25[4] = sub_1ADF7F290(qword_1ED968040, type metadata accessor for CRStructEncoder, &unk_1AE24E70C);
  v25[0] = v4;
  sub_1AE23BDDC();
  sub_1ADF7F290(&qword_1EB5BB920, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);

  sub_1AE23CBAC();
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    swift_beginAccess();
    v7 = *v6;
    if (*(*v6 + 16))
    {
      v26 = v4 + 3;
      v8 = v4[4];

      sub_1AE03C634(v7, v8);
      v24[0] = v9;
      sub_1ADF7BDBC(v24);

      v10 = v24[0];
      v11 = *(v24[0] + 16);
      if (v11)
      {
        v24[0] = v5;
        sub_1ADE6F00C(0, v11, 0);
        v12 = v24[0];
        v13 = *(v24[0] + 16);
        v14 = 32;
        v15 = v11;
        do
        {
          v16 = *(v10 + v14);
          v24[0] = v12;
          v17 = *(v12 + 24);
          if (v13 >= v17 >> 1)
          {
            sub_1ADE6F00C((v17 > 1), v13 + 1, 1);
            v12 = v24[0];
          }

          *(v12 + 16) = v13 + 1;
          *(v12 + 8 * v13 + 32) = v16;
          v14 += 16;
          ++v13;
          --v15;
        }

        while (v15);
        *v26 = v12;

        v5 = MEMORY[0x1E69E7CC0];
        v24[0] = MEMORY[0x1E69E7CC0];
        sub_1AE23DB1C();
        v18 = 40;
        do
        {

          sub_1AE23DAEC();
          sub_1AE23DB2C();
          sub_1AE23DB3C();
          sub_1AE23DAFC();
          v18 += 16;
          --v11;
        }

        while (v11);

        v19 = v24[0];
        v6 = v26;
      }

      else
      {
        v6 = v26;
        *v26 = v5;

        v19 = v5;
      }

      v4[4] = v19;

      v20 = *(v4[3] + 16);
    }

    else
    {
      v20 = 0;
    }

    sub_1ADF7B940(0, v20);
    v21 = sub_1ADE522B8();

    if (v21)
    {
      *v6 = v5;
    }

    v22 = v4[3];
    v23 = v4[4];
    swift_beginAccess();

    sub_1AE1B6BF8(v22, v23);
    swift_endAccess();
  }
}

void sub_1ADF7C4F0(void *a1)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8D8, &qword_1AE24D2F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - v4;
  v32 = v1;
  v6 = *(v1 + 16);
  type metadata accessor for CRStructEncoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = MEMORY[0x1E69E7CC0];
  v9 = v7 + 3;
  v7[4] = v8;
  v7[2] = v6;
  v35 = v7;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8F0, &unk_1AE24D300);
  v10 = v7;
  sub_1ADDCC7D4(&qword_1EB5BB8F8, &qword_1EB5BB8F0, &unk_1AE24D300, &unk_1AE24E7C4);
  sub_1AE23DD6C();
  v35 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  sub_1ADF7EF7C(&qword_1EB5BB8E0, sub_1ADF7F000, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  v11 = v36;
  sub_1AE23DD5C();
  (*(v3 + 8))(v5, v2);

  if (!v11)
  {
    swift_beginAccess();
    v12 = *v9;
    v13 = v7 + 3;
    if (*(*v9 + 16))
    {
      v14 = v7[4];

      sub_1AE03C634(v12, v14);
      v34[0] = v15;
      sub_1ADF7BDBC(v34);
      v16 = MEMORY[0x1E69E7CC0];
      v36 = 0;

      v17 = v34[0];
      v18 = *(v34[0] + 16);
      if (v18)
      {
        v33 = v7;
        v34[0] = v16;
        v19 = v7 + 3;
        sub_1ADE6F00C(0, v18, 0);
        v20 = v34[0];
        v21 = *(v34[0] + 16);
        v22 = 32;
        v23 = v18;
        do
        {
          v24 = *(v17 + v22);
          v34[0] = v20;
          v25 = *(v20 + 24);
          if (v21 >= v25 >> 1)
          {
            sub_1ADE6F00C((v25 > 1), v21 + 1, 1);
            v20 = v34[0];
          }

          *(v20 + 16) = v21 + 1;
          *(v20 + 8 * v21 + 32) = v24;
          v22 += 16;
          ++v21;
          --v23;
        }

        while (v23);
        *v19 = v20;

        v16 = MEMORY[0x1E69E7CC0];
        v34[0] = MEMORY[0x1E69E7CC0];
        sub_1AE23DB1C();
        v26 = 40;
        do
        {

          sub_1AE23DAEC();
          sub_1AE23DB2C();
          sub_1AE23DB3C();
          sub_1AE23DAFC();
          v26 += 16;
          --v18;
        }

        while (v18);

        v10 = v33;
        v27 = v34[0];
        v13 = v19;
      }

      else
      {
        *v9 = v16;

        v27 = v16;
      }

      v10[4] = v27;

      v28 = *(v10[3] + 16);
    }

    else
    {
      v28 = 0;
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADF7B940(0, v28);
    v29 = sub_1ADE522B8();

    if (v29)
    {
      *v13 = v16;
    }

    v30 = v10[3];
    v31 = v10[4];
    swift_beginAccess();

    sub_1AE1B6BF8(v30, v31);
    swift_endAccess();
  }
}

uint64_t sub_1ADF7C97C()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](-1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF7C9E8(uint64_t a1)
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](-1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF7CA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001AE2610D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AE23E00C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1ADF7CB28()
{
  v0 = sub_1ADE55D4C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_1ADE55D4C((v1 > 1), v2 + 1, 1, v0);
  }

  *(v0 + 2) = v2 + 1;
  *&v0[8 * v2 + 32] = -1;
  v3 = sub_1ADF7EA50(v0);

  return v3;
}

uint64_t sub_1ADF7CBB4()
{
  v0 = sub_1ADE55D4C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_1ADE55D4C((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  *&v0[8 * v2 + 32] = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_1ADE55D4C((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  *&v0[8 * v4 + 32] = 1;
  v6 = sub_1ADF7EA50(v0);

  return v6;
}

uint64_t static CodingKey<>.intCases.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v15[-v10];
  sub_1AE23DA4C();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  swift_getAssociatedConformanceWitness();
  v12 = sub_1AE23CECC();
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  v13 = sub_1ADF7EA50(v12);

  return v13;
}

uint64_t sub_1ADF7CDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADF7ED0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1ADF7CE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADF7ED0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1ADF7CE74(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8D8, &qword_1AE24D2F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADF7ED0C(v8, v9, v10);
  sub_1AE23E3CC();
  v12[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  sub_1ADF7EF7C(&qword_1EB5BB8E0, sub_1ADF7F000, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  sub_1AE23DD5C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1ADF7D008()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1ADDF5580(v3, v1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF7D050(uint64_t a1)
{
  v2 = *v1;
  sub_1AE23E31C();
  sub_1ADDF5580(v4, v2);
  return sub_1AE23E34C();
}

uint64_t sub_1ADF7D09C(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *sub_1ADF7D0F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1ADF7E3CC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t CRExtendableValueStruct.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = (*(a3 + 16))(a2, a3);
  sub_1ADF7D878(v8, a1);
  v10 = v9;

  return (*(a3 + 24))(v10, a2, a3);
}

uint64_t sub_1ADF7D254@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;

  sub_1ADF7D878(v4, &v9);
  v7 = v6;

  *a2 = v7;
  return result;
}

uint64_t CRExtendableValueStruct.copy(renamingReferences:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*(*(a3 + 8) + 8) + 8);
  v7 = *(v6 + 24);

  v7(&v9, a2, v6);
}

void sub_1ADF7D394(void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = *(*(a2 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
      v12 = a1[3];
      v11 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v12);
      v14 = *(v11 + 8);

      if (v14(v12, v11))
      {
        break;
      }

      v6 &= v6 - 1;
      (*(*v10 + 120))(a1);

      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void CRExtendableValueStruct.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 16))(a2, a3);
  v5 = 0;
  v7 = v4 + 64;
  v6 = *(v4 + 64);
  v16 = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = v5;
LABEL_8:
      v13 = *(*(v16 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
      v15 = a1[3];
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      v17 = *(v14 + 8);

      if (v17(v15, v14))
      {
        break;
      }

      v10 &= v10 - 1;
      (*(*v13 + 120))(a1);

      v5 = v12;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_12;
      }

      v10 = *(v7 + 8 * v12);
      ++v5;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_1ADF7D698@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1AE204010(a2, a3, a4);
  if (!v4)
  {
    *a1 = result;
  }

  return result;
}

double sub_1ADF7D6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    sub_1ADF7C4F0(v5);
  }

  return result;
}

uint64_t AnyCRValue.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v4 = 0xD000000000000027;
  *(v4 + 8) = 0x80000001AE2610A0;
  *(v4 + 16) = 3;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1ADF7D790(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v4 = 0xD000000000000027;
  *(v4 + 8) = 0x80000001AE2610A0;
  *(v4 + 16) = 3;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_1ADF7D82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v3)
  {

    sub_1ADF7C140();
  }

  return result;
}

void sub_1ADF7D878(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0A8, &qword_1AE241888);
  v3 = sub_1AE23DCBC();
  v4 = v3;
  v5 = 0;
  v24 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v23 = v3 + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(*(v24 + 48) + 8 * v16);
      v18 = *(**(*(v24 + 56) + 8 * v16) + 104);

      v19 = v18(a2);

      *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(v4[6] + 8 * v16) = v17;
      *(v4[7] + 8 * v16) = v19;
      v20 = v4[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v4[2] = v22;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ADF7DA14(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1ADF7ACAC(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1ADF7DF9C((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1ADE5522C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1ADE5522C((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_1ADF7DF9C((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1ADF7DF9C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1ADF7E1A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE23D97C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1AE23D97C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1ADDCC7D4(&qword_1EB5BB918, &qword_1EB5BB910, qword_1AE24D310, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB910, qword_1AE24D310);
            v9 = sub_1ADF7E344(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRDecodeContext.AnyDecodingReference();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1ADF7E344(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B26FC360](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1ADF7E3C4;
  }

  __break(1u);
  return result;
}

void *sub_1ADF7E3CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8B8, &qword_1AE24D2E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADF7ED0C(v7, v8, v9);
  sub_1AE23E39C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
    sub_1ADF7EF7C(&qword_1EB5BB8C8, sub_1ADF7EF28, MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1AE23DD3C();
    (*(v4 + 8))(v6, v3);
    v7 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1ADF7E588@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AE23E3DC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1ADF7E5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1ADF7F150(a1, a2, a3);
  result = MEMORY[0x1B26FBB90](v4, &type metadata for CRUnknownCRDT.Sibling, v5);
  v15 = result;
  if (v4)
  {
    v7 = (a1 + 56);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      sub_1ADE42C78(v11, v10);
      sub_1ADDD86D8(v9, v8);
      sub_1ADEC0E1C(v14, v11, v10, v9, v8);
      v12 = v14[2];
      v13 = v14[3];
      sub_1ADE42CB8(v14[0], v14[1]);
      sub_1ADDCC35C(v12, v13);
      v7 += 4;
      --v4;
    }

    while (v4);
    return v15;
  }

  return result;
}

uint64_t sub_1ADF7E6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1ADDDF1A4(a1, a2, a3);
  result = MEMORY[0x1B26FBB90](v4, &type metadata for CRKeyPath, v5);
  v11 = result;
  if (v4)
  {
    v7 = (a1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      sub_1ADDD86D8(v9, *v7);
      sub_1ADDE0110(v10, v9, v8);
      sub_1ADDCC35C(v10[0], v10[1]);
      v7 += 2;
      --v4;
    }

    while (v4);
    return v11;
  }

  return result;
}

uint64_t sub_1ADF7E740(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B26FBB90](v2, MEMORY[0x1E69E7290], MEMORY[0x1E69E72A0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1ADEC1B64(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1ADF7E7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1ADF7F23C(a1, a2, a3);
  result = MEMORY[0x1B26FBB90](v4, &type metadata for CRCodableVersion, v5);
  v10 = result;
  if (v4)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1ADEC1C4C(&v9, v8);
      --v4;
    }

    while (v4);
    return v10;
  }

  return result;
}

uint64_t sub_1ADF7E828(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_1ADF7F290(&unk_1ED966B50, type metadata accessor for URLResourceKey, &unk_1AE2411E4);
  result = MEMORY[0x1B26FBB90](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1ADEC1D44(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1ADF7E8E4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1AE23D97C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for AnyReference();
  v5 = sub_1ADF7F290(&qword_1EB5B9508, type metadata accessor for AnyReference, &unk_1AE24E640);
  result = MEMORY[0x1B26FBB90](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B26FC360](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1ADEC0BB0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1AE23D97C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1ADF7EA50(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B26FBB90](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1ADEC23B0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1ADF7EB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB860;
  if (!qword_1EB5BB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB860);
  }

  return result;
}

unint64_t sub_1ADF7EBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB868;
  if (!qword_1EB5BB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB868);
  }

  return result;
}

unint64_t sub_1ADF7EBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB870;
  if (!qword_1EB5BB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB870);
  }

  return result;
}

uint64_t sub_1ADF7EC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 16) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1ADF7ECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB878;
  if (!qword_1EB5BB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB878);
  }

  return result;
}

unint64_t sub_1ADF7ED0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB880;
  if (!qword_1EB5BB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB880);
  }

  return result;
}

unint64_t sub_1ADF7ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB888;
  if (!qword_1EB5BB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB888);
  }

  return result;
}

unint64_t sub_1ADF7EDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB890;
  if (!qword_1EB5BB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB890);
  }

  return result;
}

unint64_t sub_1ADF7EE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADF7EE7C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADF7EE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB8A8;
  if (!qword_1EB5BB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB8A8);
  }

  return result;
}

unint64_t sub_1ADF7EED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB8B0;
  if (!qword_1EB5BB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB8B0);
  }

  return result;
}

unint64_t sub_1ADF7EF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB8D0;
  if (!qword_1EB5BB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB8D0);
  }

  return result;
}

uint64_t sub_1ADF7EF7C(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ADF7F000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB8E8;
  if (!qword_1EB5BB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB8E8);
  }

  return result;
}

uint64_t sub_1ADF7F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1ADF7F0FC(a1, a2, a3);
  result = MEMORY[0x1B26FBB90](v4, &type metadata for CRVersion, v5);
  v11 = result;
  if (v4)
  {
    v7 = (a1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;

      sub_1ADEC2490(&v10, v9, v8);

      v7 += 2;
      --v4;
    }

    while (v4);
    return v11;
  }

  return result;
}

unint64_t sub_1ADF7F0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB900;
  if (!qword_1EB5BB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB900);
  }

  return result;
}

unint64_t sub_1ADF7F150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB908;
  if (!qword_1EB5BB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB908);
  }

  return result;
}

uint64_t sub_1ADF7F1A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B26FBB90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1ADEC2648(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1ADF7F23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B92A8;
  if (!qword_1EB5B92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92A8);
  }

  return result;
}

uint64_t sub_1ADF7F290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1ADF7F2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB928;
  if (!qword_1EB5BB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB928);
  }

  return result;
}

void *sub_1ADF7F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[6] = a2;
  result[7] = a5;
  v11 = MEMORY[0x1E69E7CC8];
  result[8] = a4;
  result[2] = v11;
  result[3] = v11;
  result[4] = a3;
  result[5] = a1;
  return result;
}

void sub_1ADF7F408()
{
  v2 = *v0;
  v3 = sub_1AE018FC4();
  if (v1)
  {
    return;
  }

  v146 = v2;
  v150 = 0;
  v147 = v3;
  swift_beginAccess();
  v4 = v0[2];
  if (!*(v4 + 16))
  {
LABEL_97:

    return;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v157 = v0;
LABEL_4:
  v170 = v5;
  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (2)
    {
      v11 = v10;
LABEL_14:
      v171 = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));

      v1 = v150;
      v12 = sub_1ADF80290(&v171, v0);
      if (v1)
      {
        goto LABEL_112;
      }

      v150 = 0;
      v8 &= v8 - 1;
      if (v12)
      {
        sub_1AE23DAEC();
        sub_1AE23DB2C();
        sub_1AE23DB3C();
        sub_1AE23DAFC();
        v0 = v157;
        v10 = v11;
        if (v8)
        {
          continue;
        }
      }

      else
      {

        v10 = v11;
        if (v8)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_103;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      goto LABEL_14;
    }
  }

  v13 = sub_1ADF7B9DC(v170);
  MEMORY[0x1EEE9AC00](v13);
  v15 = *(v146 + 240);
  v143 = *(v146 + 232);
  v14 = v143;
  v144 = v15;
  v145 = v147;
  v16 = type metadata accessor for CRDecodeContext.AnyDecodingReference();
  v17 = v14;
  v0 = v157;
  v19 = type metadata accessor for CRDataStoreBundleDecodeContext(0, v17, v15, v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB930, &unk_1AE24D460);
  v149 = v13;
  sub_1ADF5D268(sub_1ADF80E34, v0, sub_1ADF80E3C, &v142, v13, v16, v19, v20);
  v22 = v21;
  v148 = v23;
  v0[2] = sub_1ADE51410(MEMORY[0x1E69E7CC0]);

  if (!sub_1AE23D0AC())
  {
    goto LABEL_75;
  }

  v24 = 0;
  v153 = v22 + 32;
  v152 = v19;
  v151 = v22;
LABEL_20:
  v25 = sub_1AE23D08C();
  sub_1AE23D00C();
  if (v25)
  {
    v26 = *(v153 + 8 * v24);

    v27 = __OFADD__(v24, 1);
    v28 = v24 + 1;
    if (v27)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v26 = sub_1AE23DAAC();
    v27 = __OFADD__(v24, 1);
    v28 = v24 + 1;
    if (v27)
    {
      goto LABEL_106;
    }
  }

  v155 = v28;
  swift_beginAccess();
  v29 = *(v26 + 16);
  swift_beginAccess();
  v156 = v26;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v0;
  v32 = v0[2];
  v171 = v32;
  v31[2] = 0x8000000000000000;
  v33 = v29 + 64;
  v34 = -1 << *(v29 + 32);
  if (-v34 < 64)
  {
    v35 = ~(-1 << -v34);
  }

  else
  {
    v35 = -1;
  }

  v1 = v35 & *(v29 + 64);
  v166 = -1 << *(v29 + 32);
  v36 = (63 - v34) >> 6;
  v168 = v29;

  v37 = 0;
LABEL_28:
  if (v1)
  {
    LODWORD(v169) = isUniquelyReferenced_nonNull_native;
    v167 = v1;
    v39 = v1;
    v40 = v37;
    goto LABEL_35;
  }

  v41 = v37;
  while (1)
  {
    v40 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v40 >= v36)
    {
      goto LABEL_45;
    }

    v39 = *(v33 + 8 * v40);
    ++v41;
    if (v39)
    {
      LODWORD(v169) = isUniquelyReferenced_nonNull_native;
      v167 = 0;
LABEL_35:
      v42 = __clz(__rbit64(v39)) | (v40 << 6);
      v43 = (*(v168 + 48) + 16 * v42);
      v45 = *v43;
      v44 = v43[1];
      v46 = *(*(v168 + 56) + 8 * v42);
      sub_1ADDD86D8(*v43, v44);
      swift_retain_n();
      sub_1ADDD86D8(v45, v44);
      sub_1ADDCC35C(v45, v44);

      if (v46)
      {
        v47 = sub_1ADDDE7CC(v45, v44);
        v49 = v32[2];
        v50 = (v48 & 1) == 0;
        v27 = __OFADD__(v49, v50);
        v51 = v49 + v50;
        if (v27)
        {
          goto LABEL_101;
        }

        v52 = v48;
        if (v32[3] >= v51)
        {
          if ((v169 & 1) == 0)
          {
            v169 = v47;
            sub_1ADF6F03C();
            v47 = v169;
          }
        }

        else
        {
          sub_1ADDE9894(v51, v169 & 1);
          v47 = sub_1ADDDE7CC(v45, v44);
          if ((v52 & 1) != (v53 & 1))
          {
            goto LABEL_111;
          }
        }

        v1 = (v39 - 1) & v39;
        v32 = v171;
        if (v52)
        {
          v38 = v47;
          sub_1ADDCC35C(v45, v44);
          *(v32[7] + 8 * v38) = v46;
        }

        else
        {
          v171[(v47 >> 6) + 8] |= 1 << v47;
          v54 = (v32[6] + 16 * v47);
          *v54 = v45;
          v54[1] = v44;
          *(v32[7] + 8 * v47) = v46;
          v55 = v32[2];
          v27 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v27)
          {
            goto LABEL_104;
          }

          v32[2] = v56;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v37 = v40;
        goto LABEL_28;
      }

LABEL_45:
      sub_1ADDDCE74(v168);

      v57 = v157;
      v157[2] = v32;
      swift_endAccess();
      v58 = v156;
      swift_beginAccess();
      v59 = *(v58 + 24);

      swift_beginAccess();
      v1 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v57[3];
      v171 = v167;
      v57[3] = 0x8000000000000000;
      v60 = v59 + 64;
      v61 = -1 << *(v59 + 32);
      if (-v61 < 64)
      {
        v62 = ~(-1 << -v61);
      }

      else
      {
        v62 = -1;
      }

      v63 = v62 & *(v59 + 64);
      v154 = -1 << *(v59 + 32);
      v64 = (63 - v61) >> 6;
      v162 = v59;

      v65 = 0;
      v161 = v59 + 64;
      for (i = v64; ; v64 = i)
      {
        v160 = v63;
        if (!v63)
        {
          break;
        }

        LODWORD(v166) = v1;
        v158 = v65;
        v70 = v65;
LABEL_58:
        v73 = __clz(__rbit64(v63)) | (v70 << 6);
        v74 = (*(v162 + 48) + 16 * v73);
        v76 = *v74;
        v75 = v74[1];
        v77 = (*(v162 + 56) + 48 * v73);
        v78 = *v77;
        v164 = v77[1];
        v79 = v77[2];
        v80 = v77[3];
        v81 = v77[5];
        v168 = v77[4];
        sub_1ADDD86D8(v76, v75);
        v169 = v78;

        sub_1ADDD86D8(v76, v75);

        sub_1ADDCC35C(v76, v75);
        v165 = v81;

        v163 = v79;
        if (!v79)
        {
          v72 = v167;
          goto LABEL_68;
        }

        v82 = v167;
        v84 = sub_1ADDDE7CC(v76, v75);
        v85 = *(v82 + 2);
        v86 = (v83 & 1) == 0;
        v87 = v85 + v86;
        if (__OFADD__(v85, v86))
        {
          goto LABEL_102;
        }

        v88 = v83;
        if (*(v82 + 3) >= v87)
        {
          if ((v166 & 1) == 0)
          {
            sub_1ADF706B8();
          }
        }

        else
        {
          sub_1ADE17954(v87, v166 & 1);
          v89 = sub_1ADDDE7CC(v76, v75);
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_111;
          }

          v84 = v89;
        }

        v63 &= v63 - 1;
        v91 = v171;
        v167 = v171;
        if (v88)
        {
          sub_1ADDCC35C(v76, v75);
          v66 = (v91[7] + 48 * v84);
          v67 = v163;
          v68 = v164;
          *v66 = v169;
          v66[1] = v68;
          v66[2] = v67;
          v66[3] = v80;
          v69 = v165;
          v66[4] = v168;
          v66[5] = v69;
        }

        else
        {
          v171[(v84 >> 6) + 8] |= 1 << v84;
          v92 = (v91[6] + 16 * v84);
          *v92 = v76;
          v92[1] = v75;
          v93 = (v91[7] + 48 * v84);
          v94 = v163;
          v95 = v164;
          *v93 = v169;
          v93[1] = v95;
          v93[2] = v94;
          v93[3] = v80;
          v96 = v165;
          v93[4] = v168;
          v93[5] = v96;
          v97 = v91[2];
          v27 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v27)
          {
            goto LABEL_105;
          }

          v91[2] = v98;
        }

        v1 = 1;
        v65 = v70;
        v60 = v161;
      }

      v71 = v65;
      v72 = v167;
      while (1)
      {
        v70 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_100;
        }

        if (v70 >= v64)
        {
          break;
        }

        v63 = *(v60 + 8 * v70);
        ++v71;
        if (v63)
        {
          v158 = v65;
          LODWORD(v166) = v1;
          goto LABEL_58;
        }
      }

LABEL_68:
      sub_1ADDDCE74(v162);

      v99 = v157;
      v157[3] = v72;
      v0 = v99;
      swift_endAccess();

      v100 = sub_1AE23D0AC();
      v24 = v155;
      if (v155 != v100)
      {
        goto LABEL_20;
      }

LABEL_75:
      swift_bridgeObjectRelease_n();
      v101 = v148;
      v161 = *(v148 + 16);
      if (v161)
      {
        v102 = 0;
        v160 = v149 & 0xC000000000000001;
        i = v149 & 0xFFFFFFFFFFFFFF8;
        v103 = (v148 + 80);
        do
        {
          if (v102 >= *(v101 + 16))
          {
            goto LABEL_107;
          }

          v116 = *(v103 - 6);
          v115 = *(v103 - 5);
          v118 = *(v103 - 4);
          v117 = *(v103 - 3);
          v119 = *(v103 - 2);
          v120 = *(v103 - 1);
          if (*v103)
          {
            sub_1ADF80E48(*(v103 - 6), v115, *(v103 - 4), *(v103 - 3), *(v103 - 2), *(v103 - 1), 1);

            swift_willThrow();
            return;
          }

          v168 = v102;
          v169 = v115;
          v167 = v103;
          if (v160)
          {
            v141 = sub_1ADF80E48(v116, v115, v118, v117, v119, v120, 0);
            v121 = MEMORY[0x1B26FC360](v102, v149, v141);
          }

          else
          {
            if (v102 >= *(i + 16))
            {
              goto LABEL_109;
            }

            v121 = *(v149 + 8 * v102 + 32);
            sub_1ADF80E48(v116, v115, v118, v117, v119, v120, 0);
          }

          v122 = v119;
          v123 = *(v121 + 16);
          v124 = *(v121 + 24);
          sub_1ADDD86D8(v123, v124);

          v125 = v157;
          swift_beginAccess();
          v165 = v116;

          v162 = v118;

          v163 = v117;

          v164 = v122;

          v166 = v120;

          v126 = swift_isUniquelyReferenced_nonNull_native();
          v171 = v125[3];
          v127 = v171;
          v125[3] = 0x8000000000000000;
          v129 = sub_1ADDDE7CC(v123, v124);
          v130 = v127[2];
          v131 = (v128 & 1) == 0;
          v132 = v130 + v131;
          if (__OFADD__(v130, v131))
          {
            goto LABEL_108;
          }

          v133 = v128;
          if (v127[3] >= v132)
          {
            if (v126)
            {
              v136 = v171;
              if ((v128 & 1) == 0)
              {
                goto LABEL_91;
              }
            }

            else
            {
              sub_1ADF706B8();
              v136 = v171;
              if ((v133 & 1) == 0)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
            sub_1ADE17954(v132, v126);
            v134 = sub_1ADDDE7CC(v123, v124);
            if ((v133 & 1) != (v135 & 1))
            {
              goto LABEL_111;
            }

            v129 = v134;
            v136 = v171;
            if ((v133 & 1) == 0)
            {
LABEL_91:
              v136[(v129 >> 6) + 8] |= 1 << v129;
              v137 = (v136[6] + 16 * v129);
              *v137 = v123;
              v137[1] = v124;
              v138 = (v136[7] + 48 * v129);
              v111 = v164;
              v113 = v165;
              v108 = v169;
              *v138 = v165;
              v138[1] = v108;
              v110 = v162;
              v109 = v163;
              v138[2] = v162;
              v138[3] = v109;
              v112 = v166;
              v138[4] = v111;
              v138[5] = v112;
              v139 = v136[2];
              v27 = __OFADD__(v139, 1);
              v140 = v139 + 1;
              if (v27)
              {
                goto LABEL_110;
              }

              v136[2] = v140;
              goto LABEL_78;
            }
          }

          v104 = (v136[7] + 48 * v129);
          v158 = *v104;
          v105 = v104[3];
          v155 = v104[2];
          v154 = v105;
          v106 = v165;
          v107 = v123;
          v156 = v124;
          v108 = v169;
          *v104 = v165;
          v104[1] = v108;
          v110 = v162;
          v109 = v163;
          v104[2] = v162;
          v104[3] = v109;
          v111 = v164;
          v112 = v166;
          v104[4] = v164;
          v104[5] = v112;

          v113 = v106;

          sub_1ADDCC35C(v107, v156);
LABEL_78:
          v102 = v168 + 1;
          v114 = v157;
          v157[3] = v136;
          v0 = v114;
          swift_endAccess();
          sub_1ADF80EC0(v113, v108, v110, v109, v111, v112, 0);
          v103 = v167 + 56;
          v101 = v148;
        }

        while (v161 != v102);
      }

      v4 = v0[2];
      v5 = MEMORY[0x1E69E7CC0];
      if (!*(v4 + 16))
      {
        goto LABEL_97;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
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
  sub_1AE23E27C();
  __break(1u);
LABEL_112:

  __break(1u);
}

uint64_t sub_1ADF80290(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  swift_beginAccess();
  if (*(*(a2 + 24) + 16))
  {

    sub_1ADDDE7CC(v3, v4);
    v6 = v5;

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1ADF80324@<X0>(void *a1@<X0>, void *a2@<X8>, uint64_t a3@<X3>)
{
  type metadata accessor for CRDataStoreBundleDecodeContext(0, *(*a1 + 232), *(*a1 + 240), a3);
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v10 = a1 + 7;
  v8 = a1[7];
  v9 = v10[1];
  v11 = swift_allocObject();
  v11[6] = v7;
  v11[7] = v8;
  v12 = MEMORY[0x1E69E7CC8];
  v11[8] = v9;
  v11[2] = v12;
  v11[3] = v12;
  v11[4] = v6;
  v11[5] = v5;
  *a2 = v11;
  v13 = v9;
  v14 = v8;
}

void sub_1ADF803EC(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1ADF8047C(a3, *a2, *a1, v8);
  v5 = v9;
  v6 = v10;
  v7 = v11;
  *a4 = v8[1];
  *(a4 + 8) = v5;
  *(a4 + 24) = v6;
  *(a4 + 40) = v7;
  *(a4 + 48) = 0;
}

void sub_1ADF8047C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (!*(a1 + 16) || (v8 = a1, a1 = sub_1ADDDE7CC(a2[2], a2[3]), (a2 & 1) == 0))
  {
    sub_1ADE42E40(a1, a2, a3);
    v14 = swift_allocError();
    *v16 = 0xD00000000000001BLL;
    *(v16 + 8) = 0x80000001AE2611B0;
    *(v16 + 16) = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  v9 = (*(v8 + 56) + 32 * a1);
  v18 = a4;
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  v17 = *(*a2 + 104);
  sub_1ADDD86D8(*v9, v11);
  sub_1ADDD86D8(v13, v12);
  sub_1ADDD86D8(v10, v11);
  sub_1ADDD86D8(v13, v12);
  v17(v10, v11, v13, v12, a3);
  v14 = v4;
  sub_1ADDCC35C(v13, v12);
  sub_1ADDCC35C(v10, v11);
  v15 = v10;
  a4 = v18;
  sub_1ADDCC35C(v15, v11);
  sub_1ADDCC35C(v13, v12);
  if (v4)
  {
LABEL_6:
    *a4 = v14;
  }
}

double sub_1ADF80610@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v30 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  v17 = *(v16 + 48);
  v31 = *a2;
  v18 = a3;
  v19 = v32;
  result = sub_1AE018FE8(v27 - v14, (v27 + v17 - v14), a1, &v31, v5, a3, a4);
  if (!v19)
  {
    v21 = v29;
    v22 = *(v29 + 16);
    v32 = 0;
    v22(v12, v15, TupleTypeMetadata2, result);

    sub_1ADDD9FE4(v12, v18, &v31);
    v28 = v31;
    (v22)(v12, v15, TupleTypeMetadata2);
    *v27 = *&v12[*(TupleTypeMetadata2 + 48)];
    v23 = MEMORY[0x1E69E7CC0];
    v24 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v25 = sub_1ADDD9ECC(v23);
    sub_1ADDDA5BC(v23);
    sub_1ADDD9ECC(v23);
    (*(v21 + 8))(v15, TupleTypeMetadata2);

    swift_bridgeObjectRelease_n();
    (*(*(v18 - 8) + 8))(v12, v18);
    v26 = v30;
    *v30 = v28;
    v26[1] = 0;
    result = v27[0];
    *(v26 + 1) = *v27;
    v26[4] = v24;
    v26[5] = v25;
  }

  return result;
}

void sub_1ADF808D0()
{

  v1 = *(v0 + 64);
}

uint64_t sub_1ADF80910()
{

  return v0;
}

uint64_t sub_1ADF80960()
{
  sub_1ADF80910();

  return swift_deallocClassInstance();
}

double sub_1ADF809AC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1ADF80A18()
{

  return swift_deallocClassInstance();
}

void sub_1ADF80A84(uint64_t a1@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA478, &qword_1AE24D470);
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v36 - v4;
  v5 = type metadata accessor for Replica(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB938, &qword_1AE24D478);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v12;
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v18;
  v40 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    sub_1ADDDE768(*(v16 + 48) + *(v37 + 72) * v25, v7);
    sub_1ADDE56CC(*(v16 + 56) + 24 * v25, v41);
    v26 = *(v38 + 48);
    v27 = v7;
    v28 = v38;
    sub_1ADDD8010(v27, v14);
    sub_1ADDE5634(v41, &v14[v26]);
    (*(v3 + 56))(v14, 0, 1, v28);
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v39;
    v1[3] = v23;
    v1[4] = v24;
    v29 = v1[5];
    sub_1ADDD2198(v14, v10, &qword_1EB5BB938, &qword_1AE24D478);
    v30 = 1;
    v31 = (*(v3 + 48))(v10, 1, v28);
    v32 = v40;
    if (v31 != 1)
    {
      v33 = v10;
      v34 = v36;
      sub_1ADDD2198(v33, v36, &qword_1EB5BA478, &qword_1AE24D470);
      v29(v34);
      sub_1ADDCEDE0(v34, &qword_1EB5BA478, &qword_1AE24D470);
      v30 = 0;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810);
    (*(*(v35 - 8) + 56))(v32, v30, 1, v35);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v28 = v38;
        (*(v3 + 56))(&v36 - v12, 1, 1, v38, v13);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

double sub_1ADF80E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    v8 = a1;
  }

  else
  {
  }

  return result;
}

double sub_1ADF80EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1ADF80F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 104) >= 2u)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    type metadata accessor for Proto_Register._StorageClass();
    v6 = swift_initStaticObject();
    MEMORY[0x1EEE9AC00](v6);
    v7 = sub_1ADE6B938(sub_1ADF832E0);
    if (!v3)
    {
      v9 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        v6 = sub_1ADDE8D20(v6);
      }

      swift_beginAccess();
      *(v6 + 40) = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = swift_allocObject();
        v11 = *(inited + 16);
        *(v10 + 16) = v11;
        sub_1ADE5215C(v11);

        inited = v10;
      }

      v12 = swift_allocObject();
      *(v12 + 16) = v6;
      v13 = *(inited + 16);
      *(inited + 16) = v12;
      sub_1ADE52174(v13);
    }
  }

  else
  {
    inited = 0x80000001AE2611D0;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v5 = 0xD00000000000003ALL;
    *(v5 + 8) = 0x80000001AE2611D0;
    *(v5 + 16) = 3;
    swift_willThrow();
  }

  return inited;
}

uint64_t sub_1ADF811C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CRMaxRegister(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  v6 = CRMaxRegister.projectedValue.modify();
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(&v9, 0);
}

uint64_t CRMaxRegister.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

uint64_t sub_1ADF81340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, v7);
  v11 = type metadata accessor for CRMaxRegister(0, v4, v5, v6);
  return CRMaxRegister.value.setter(v9, v11);
}

uint64_t CRMaxRegister.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (*(*(a2 + 24) + 16))(a1, v4);
  v6 = *(v4 - 8);
  if (v5)
  {
    v7 = *(v6 + 40);

    return v7(v2, a1, v4);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, v4);
  }
}

void (*CRMaxRegister.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_1ADF81618;
}

void sub_1ADF81618(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    CRMaxRegister.value.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CRMaxRegister.value.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRMaxRegister.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1ADF82E68(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*CRMaxRegister.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_1ADF818A4;
}

void sub_1ADF818A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1ADF82E68(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1ADF82E68((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRMaxRegister.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v12;
  v16 = *(v7 + 16);
  if (*(*v15 + 16))
  {
    v16(v9, v11, v6, v13);
    (*(*(*(a2 + 32) + 8) + 24))(a1, v6);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v16(&v18 - v12, v11, v6, v13);
  }

  return (*(v7 + 32))(a3, v14, v6);
}

uint64_t CRMaxRegister.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRMaxRegister.copy(renamingReferences:)(&v7, a2, a3);
}

uint64_t CRMaxRegister.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v9 + 8) + 8) + 40))(v6);
  if (!v2)
  {
    return (*(v5 + 32))(a2, v8, a1);
  }

  return result;
}

uint64_t CRMaxRegister.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X8>)
{
  v32 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = *(v6 + 16);
  v31 = v14;
  v13(&v27 - v11, v14, v5, v10);
  v30 = a1;
  (v13)(v8, a1, v5);
  v15 = *(a2 + 24);
  v28 = *(v15 + 16);
  v29 = a2;
  v16 = v28(v8, v5, v15);
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v12, v5);
  if (v16)
  {
    v18 = v29;
    v19 = *(v29 - 8);
    v20 = v31;
    (*(v19 + 8))(v31, v29);
    result = (*(v19 + 16))(v20, v30, v18);
    if (qword_1EB5B9910 != -1)
    {
      result = swift_once();
    }

    v22 = &word_1EB5D750B;
  }

  else
  {
    (v13)(v12, v30, v5);
    (v13)(v8, v31, v5);
    v23 = v28(v8, v5, v15);
    v17(v8, v5);
    result = (v17)(v12, v5);
    if (v23)
    {
      if (qword_1EB5B9908 != -1)
      {
        result = swift_once();
      }

      v22 = &word_1EB5D7508;
    }

    else
    {
      if (qword_1ED9670C0 != -1)
      {
        result = swift_once();
      }

      v22 = &word_1ED96F220;
    }
  }

  v24 = *v22;
  v25 = *(v22 + 2);
  v26 = v32;
  *v32 = v24;
  *(v26 + 2) = v25;
  return result;
}

uint64_t CRMaxRegister.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1AE23DA2C();

  strcpy(v8, "CRMaxRegister[");
  HIBYTE(v8[1]) = -18;
  (*(v3 + 16))(v5, v1, v2);
  v6 = sub_1AE23CD6C();
  MEMORY[0x1B26FB670](v6);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return v8[0];
}

uint64_t CRMaxRegister.hasDelta(from:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, v9);
  (v12)(v7, v2, v4);
  v13 = (*(*(a2 + 24) + 16))(v7, v4);
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v11, v4);
  return v13 & 1;
}

uint64_t CRMaxRegister.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = *(v8 + 16);
  v15(&v21 - v13, v12);
  (v15)(v10, v4, v7);
  v16 = (*(*(a2 + 24) + 16))(v10, v7);
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v14, v7);
  v18 = *(a2 - 8);
  if (v16)
  {
    (*(*(a2 - 8) + 16))(a3, v4, a2);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v18 + 56))(a3, v19, 1, a2);
}

uint64_t CRMaxRegister.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v6 = a3;
  v31 = a2;
  v34 = a1;
  v8 = *(a3 + 16);
  v30 = *(*(a3 + 32) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = sub_1AE23D7CC();
  v10 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v29 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  v21 = *(*(AssociatedTypeWitness - 8) + 56);
  v33 = a4;
  v21(a4, 1, 1, AssociatedTypeWitness, v18);
  v22 = *(v13 + 16);
  v32 = v5;
  v23 = v5;
  v24 = v34;
  v22(v20, v23, v8);
  v22(v16, v24, v8);
  LOBYTE(v6) = (*(*(v6 + 24) + 16))(v16, v8);
  v25 = *(v13 + 8);
  v25(v16, v8);
  result = (v25)(v20, v8);
  if ((v6 & 1) == 0)
  {
    (*(v30 + 40))(v24, v31, v8);
    v27 = v33;
    v28 = v29;
    (*(v10 + 8))(v33, v29);
    return (*(v10 + 32))(v27, v12, v28);
  }

  return result;
}

double CRMaxRegister.encode(to:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];

    sub_1ADE6BBC8(v3, v7, v8, v9);
  }

  return result;
}

uint64_t CRMaxRegister.isDefaultState.getter(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  LOBYTE(v1) = (*(*(*(*(v1 + 32) + 8) + 8) + 48))(v2);
  (*(v3 + 8))(v6, v2);
  return v1 & 1;
}

uint64_t static CRMaxRegister.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v16 = *(type metadata accessor for CRMaxRegister(0, v13, v14, v15) + 16);
  v17 = *(*(v16 - 8) + 16);
  v17(v12, a1, v16);
  v17(v9, a2, v16);
  v18 = sub_1AE23CCBC();
  v19 = *(v7 + 8);
  v19(v9, a3);
  v19(v12, a3);
  return v18 & 1;
}

uint64_t sub_1ADF82B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRMaxRegister(0, v12, v13, v14);
  (*(*(*(v15 + 16) - 8) + 16))(v11, a1);
  (*(*(*(a5 + 8) + 8) + 16))(a2, a3);
  return (*(v9 + 8))(v11, a3);
}

uint64_t CRMaxRegister<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1AE23E3BC();
  (*(v5 + 16))(v7, v3, v4);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1AE23E06C();
  (*(v5 + 8))(v7, v4);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1ADF82E68(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  return CRMaxRegister.value.setter(v5, a2);
}

uint64_t sub_1ADF82F98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1ADF830D8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t static Timestamp.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Timestamp(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  v7 = v5 < v6;
  if (v5 != v6)
  {
    return v7;
  }

  v8 = *(type metadata accessor for Replica(0) + 20);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  v7 = v9 < v10;
  if (v9 != v10)
  {
    return v7;
  }

  return sub_1ADF5EB00(a1);
}

uint64_t sub_1ADF833C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19[-v7];
  v9 = type metadata accessor for FinalizedTimestamp(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for Replica(0);
  v14 = *(result + 20);
  if (*(v4 + v14))
  {
    if (*(a3 + 16))
    {
      result = sub_1ADDD8A6C(v4);
      if (v15)
      {
        sub_1ADDE56CC(*(a3 + 56) + 24 * result, v19);
        sub_1ADDE5634(v19, v20);
        v16 = *(type metadata accessor for Timestamp(0) + 20);
        sub_1AE221574(*(v4 + v16), v8);
        sub_1ADDE5C20(v20);
        if ((*(v10 + 48))(v8, 1, v9) == 1)
        {
          return sub_1ADE1727C(v8);
        }

        else
        {
          sub_1ADDE5300(v4, type metadata accessor for Timestamp);
          sub_1ADDE5F9C(v8, v12, type metadata accessor for FinalizedTimestamp);
          v17 = sub_1AE23BFEC();
          (*(*(v17 - 8) + 16))(v4, v12, v17);
          *(v4 + v14) = 0;
          v18 = *&v12[*(v9 + 20)];
          result = sub_1ADDE5300(v12, type metadata accessor for FinalizedTimestamp);
          *(v4 + v16) = v18;
        }
      }
    }
  }

  return result;
}

uint64_t Timestamp.hash(into:)(uint64_t a1)
{
  sub_1AE23BFAC();
  v2 = type metadata accessor for Replica(0);
  MEMORY[0x1B26FCBD0](*(v1 + *(v2 + 20)));
  v3 = type metadata accessor for Timestamp(0);
  return MEMORY[0x1B26FCBD0](*(v1 + *(v3 + 20)));
}

uint64_t static Timestamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = type metadata accessor for Replica(0);
  if (*(a1 + *(v5 + 20)) != *(a2 + *(v5 + 20)))
  {
    return 0;
  }

  return sub_1AE23BF8C();
}

uint64_t Timestamp.description.getter()
{
  v2 = sub_1AE1B6A38();
  MEMORY[0x1B26FB670](40, 0xE100000000000000);
  type metadata accessor for Timestamp(0);
  v0 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v0);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return v2;
}

void Timestamp.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *(v11 + 16);
    if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 9)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFFBLL;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    sub_1ADE017C0(v14, v15, a1, v10);
    if (!v2)
    {
      sub_1ADDE5F9C(v10, a2, type metadata accessor for Timestamp);
    }
  }

  else
  {
    sub_1ADE42E40(v6, v7, v8);
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }
}

void Timestamp.encode(to:)()
{
  v2 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADE71C08(v5, v6, v7);
  if (!v1)
  {
    sub_1ADDDE3A0(v0, v4, type metadata accessor for Replica);

    v8 = sub_1ADDF66A8(v4);
    v9 = sub_1AE23BFEC();
    (*(*(v9 - 8) + 8))(v4, v9);
    v10 = *(v0 + *(type metadata accessor for Timestamp(0) + 20));
    swift_beginAccess();
    sub_1AE1B6B44(v8, v10);
    swift_endAccess();
  }
}

uint64_t Timestamp.hashValue.getter()
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v1 = type metadata accessor for Replica(0);
  MEMORY[0x1B26FCBD0](*(v0 + *(v1 + 20)));
  v2 = type metadata accessor for Timestamp(0);
  MEMORY[0x1B26FCBD0](*(v0 + *(v2 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1ADF83ABC(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v3 = type metadata accessor for Replica(0);
  MEMORY[0x1B26FCBD0](*(v1 + *(v3 + 20)));
  MEMORY[0x1B26FCBD0](*(v1 + *(a1 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1ADF83B34(uint64_t a1, uint64_t a2)
{
  sub_1AE23BFAC();
  v4 = type metadata accessor for Replica(0);
  MEMORY[0x1B26FCBD0](*(v2 + *(v4 + 20)));
  return MEMORY[0x1B26FCBD0](*(v2 + *(a2 + 20)));
}

uint64_t sub_1ADF83B8C(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v4 = type metadata accessor for Replica(0);
  MEMORY[0x1B26FCBD0](*(v2 + *(v4 + 20)));
  MEMORY[0x1B26FCBD0](*(v2 + *(a2 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1ADF83C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  v6 = v4 < v5;
  if (v4 != v5)
  {
    return v6;
  }

  v9 = *(type metadata accessor for Replica(0) + 20);
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  v6 = v10 < v11;
  if (v10 != v11)
  {
    return v6;
  }

  return sub_1ADF5EB00(a1);
}

BOOL sub_1ADF83C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == v5)
  {
    v8 = *(type metadata accessor for Replica(0) + 20);
    v9 = *(a2 + v8);
    v10 = *(a1 + v8);
    if (v9 == v10)
    {
      v11 = sub_1ADF5EB00(a2);
    }

    else
    {
      v11 = v9 < v10;
    }
  }

  else
  {
    v11 = v4 < v5;
  }

  return (v11 & 1) == 0;
}

BOOL sub_1ADF83CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == v5)
  {
    v8 = *(type metadata accessor for Replica(0) + 20);
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);
    if (v9 == v10)
    {
      v11 = sub_1ADF5EB00(a1);
    }

    else
    {
      v11 = v9 < v10;
    }
  }

  else
  {
    v11 = v4 < v5;
  }

  return (v11 & 1) == 0;
}

uint64_t sub_1ADF83D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  v6 = v4 < v5;
  if (v4 != v5)
  {
    return v6;
  }

  v9 = *(type metadata accessor for Replica(0) + 20);
  v10 = *(a2 + v9);
  v11 = *(a1 + v9);
  v6 = v10 < v11;
  if (v10 != v11)
  {
    return v6;
  }

  return sub_1ADF5EB00(a2);
}

uint64_t sub_1ADF83DF0()
{
  v2 = sub_1AE1B6A38();
  MEMORY[0x1B26FB670](40, 0xE100000000000000);
  v0 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v0);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return v2;
}

uint64_t sub_1ADF83E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  v5 = type metadata accessor for Replica(0);
  if (*(a1 + *(v5 + 20)) != *(a2 + *(v5 + 20)))
  {
    return 0;
  }

  return sub_1AE23BF8C();
}

id sub_1ADF840B4()
{
  v23 = sub_1AE23BFEC();
  v1 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Replica(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp;
  sub_1ADDDE3A0(v0 + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, &v22 - v12, type metadata accessor for Timestamp);
  sub_1ADDE5F9C(v13, v7, type metadata accessor for Replica);
  v15 = v7;
  v16 = v23;
  (*(v1 + 32))(v3, v15, v23);
  sub_1ADDDE3A0(v0 + v14, v10, type metadata accessor for Timestamp);
  v17 = *&v10[*(v5 + 28)];
  sub_1ADDE5300(v10, type metadata accessor for Replica);
  v18 = type metadata accessor for ObjCReplica(0);
  v19 = objc_allocWithZone(v18);
  (*(v1 + 16))(&v19[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v3, v16);
  *&v19[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v17;
  v24.receiver = v19;
  v24.super_class = v18;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  (*(v1 + 8))(v3, v16);
  return v20;
}

id sub_1ADF845F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1ADF8466C()
{
  result = qword_1EB5BB940;
  if (!qword_1EB5BB940)
  {
    type metadata accessor for Timestamp(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB940);
  }

  return result;
}

uint64_t sub_1ADF846F4(uint64_t a1)
{
  result = type metadata accessor for Timestamp(319);
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

unint64_t sub_1ADF8478C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BB958[0];
  if (!qword_1EB5BB958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BB958);
  }

  return result;
}

uint64_t sub_1ADF847E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1ADF84834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_1AE23CCBC() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for RetainedResource.Retained(0, a3, a4, a5);
  return *(a1 + *(v10 + 44)) == *(a2 + *(v10 + 44));
}

uint64_t sub_1ADF848C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for RetainedResource.Retained(0, a3, a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68930](a1, a2, AssociatedTypeWitness, v11, AssociatedConformanceWitness, WitnessTable);
}

uint64_t sub_1ADF849D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADF84A50(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
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
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1ADF84B54(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
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
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_1ADF84CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  sub_1AE23C9DC();
  v6 = *(a1 + 16);
  if ((~v6 & 0xF000000000000007) != 0 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 0xA)
  {
  }

  sub_1AE23D11C();
  sub_1AE23D02C();
  v7 = *(a1 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xA)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v8 + 16);
  if (v13)
  {
    v9 = 0;
    while (v9 < *(v8 + 16))
    {
      v10 = *(v8 + 8 * v9 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();

      sub_1ADE0262C(v10, a2);

      v11 = *(*(*(a4 + 8) + 8) + 8);

      v11(v12);
      if (v4)
      {

        return;
      }

      ++v9;
      sub_1AE23D0CC();

      if (v13 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_1ADF84F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  v22[2] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a1;
  v10 = sub_1AE23D11C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1ADE08EB0(sub_1ADF863D4, v21, v10, &type metadata for Proto_Value, v11, WitnessTable, MEMORY[0x1E69E7288], v22);
  if (!v4)
  {
    v14 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = swift_allocObject();
      v16 = *(inited + 16);
      *(v15 + 16) = v16;
      sub_1ADE51B2C(v16);

      inited = v15;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    v18 = v17 | 0x5000000000000000;
    v19 = *(inited + 16);
    *(inited + 16) = v18;
    sub_1ADE51B48(v19);
  }

  return inited;
}

unint64_t Array<A>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE65FE0(a2, a3);
    v7 = v6;
  }

  else
  {
    v7 = 0x80000001AE25FB70;
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v8 = 0xD000000000000017;
    *(v8 + 8) = 0x80000001AE25FB70;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  return v7;
}

double Array<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    sub_1ADE6DC08(a2, a3, a4);
  }

  return result;
}

uint64_t Array<A>.observableDifference(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1AE23D0AC();
  v9 = 0;
  if (v8 == sub_1AE23D0AC())
  {
    v10 = sub_1AE23D11C();
    WitnessTable = swift_getWitnessTable();
    v12 = sub_1AE23E25C();
    v29 = v31;
    v30 = v32;
    MEMORY[0x1EEE9AC00](v12);
    v22[8] = a4;
    v22[9] = a5;
    v23 = a2;
    MEMORY[0x1EEE9AC00](v13);
    v22[2] = a4;
    v22[3] = a5;
    v22[4] = sub_1ADF860D4;
    v22[5] = v14;
    v25 = v10;
    v26 = v10;
    v27 = WitnessTable;
    v28 = WitnessTable;
    v15 = sub_1AE23DA9C();
    swift_getAssociatedTypeWitness();
    v16 = sub_1AE23D7CC();
    v17 = swift_getWitnessTable();
    v9 = sub_1ADE13AA8(sub_1ADF86120, v22, v15, v16, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);

    v25 = v9;
    MEMORY[0x1EEE9AC00](v19);
    v23 = a4;
    v24 = a5;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v20 = sub_1AE23CF4C();
    if (v20)
    {
      v25 = v9;
      MEMORY[0x1EEE9AC00](v20);
      v23 = a4;
      v24 = a5;
      if (sub_1AE23CF4C())
      {

        return 0;
      }
    }

    else
    {

      return 1;
    }
  }

  return v9;
}

uint64_t sub_1ADF8551C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, a1, v5, v7);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v9, v5);
LABEL_6:
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB9E0, &qword_1AE24D830);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v10 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
LABEL_7:
    sub_1ADF8636C(&v14);
    v12 = 0;
    return v12 & 1;
  }

  v11 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  v12 = (*(v11 + 16))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v12 & 1;
}

uint64_t Array<A>.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v25 = a4;
  v26 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  result = sub_1AE23D0AC();
  if (result)
  {
    v14 = 0;
    v23 = (v26 + 32);
    v24 = (v26 + 16);
    v22 = (v26 + 8);
    do
    {
      v15 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v15)
      {
        (*(v26 + 16))(v12, a2 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v14, a3);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        if (v21 != 8)
        {
          __break(1u);
          return result;
        }

        v27 = result;
        (*v24)(v12, &v27, a3);
        swift_unknownObjectRelease();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_11:
          __break(1u);
          return (*v22)(v9, a3);
        }
      }

      v17 = v12;
      (*v23)(v9, v12, a3);
      v19 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      if ((*(v18 + 8))(v19, v18))
      {
        return (*v22)(v9, a3);
      }

      (*(*(v25 + 8) + 48))(a1, a3);
      (*v22)(v9, a3);
      result = sub_1AE23D0AC();
      ++v14;
      v12 = v17;
    }

    while (v16 != result);
  }

  return result;
}

void *Array<A>.copy(renamingReferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v5 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  return sub_1ADE08EB0(sub_1ADF86234, v9, v5, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
}

void *Array<A>.copy(renamingReferences:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v10 = v7;

  v8 = Array<A>.copy(renamingReferences:)(&v10, a2, a3, a4);

  return v8;
}

uint64_t Array<A>.needToFinalizeTimestamps()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23D11C();
  swift_getWitnessTable();
  return sub_1AE23CF4C() & 1;
}

uint64_t Array<A>.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v26 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = sub_1AE23D7CC();
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v25 - v14);
  v29 = v3;
  v34[1] = *v3;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](v34, a2, WitnessTable);
  v33 = v34[0];
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v27 = a2;
  v17 = sub_1AE23DC8C();
  v18 = (v10 + 32);
  v30 = TupleTypeMetadata2 - 8;
  v31 = v17;
  v25[1] = v6 + 32;
  while (1)
  {
    sub_1AE23DC7C();
    (*v18)(v15, v12, v32);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v19 = *v15;
    (*(v6 + 32))(v8, v15 + *(TupleTypeMetadata2 + 48), v5);
    (*(*(v28 + 8) + 64))(v26, v5);
    v20 = v29;
    sub_1AE23D04C();
    v21 = *v20;
    sub_1ADF86080(v19, v21, v5);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v23 = v21 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v23 = v21;
    }

    (*(v6 + 40))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v8, v5);
  }
}

void *sub_1ADF85F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = Array<A>.copy(renamingReferences:)(a1, *v4, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

void *sub_1ADF85F5C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = Array<A>.copy(renamingReferences:)(a1, *v4, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t sub_1ADF85F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.observableDifference(from:with:)(*a1, a2, *v5, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

unint64_t sub_1ADF86018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = Array<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1ADF86080(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1ADF86120(uint64_t a1)
{
  v3 = *(v1 + 32);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1ADF862CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADF8631C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADF8636C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BA3B8, &qword_1AE242400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADF863D4@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1ADE6B938(sub_1ADE74060);
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

void sub_1ADF8644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v32 = a2;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v9);
  v29 = v25 - v10;
  v12 = *(v11 + 16);
  if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 0xA)
  {
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);

  v34 = MEMORY[0x1B26FBB90](v14, a3, v31);
  v15 = *(a1 + 16);
  if ((~v15 & 0xF000000000000007) != 0 && ((v15 >> 59) & 0x1E | (v15 >> 2) & 1) == 0xA)
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v16 + 16);
  if (v28)
  {
    v33 = v5;
    v17 = 0;
    v25[1] = a1;
    v26 = (v8 + 8);
    v27 = v16;
    while (v17 < *(v16 + 16))
    {
      v18 = *(v16 + 8 * v17 + 32);
      type metadata accessor for CRDecoder();
      swift_allocObject();
      swift_retain_n();
      v19 = v32;

      sub_1ADE0262C(v18, v19);

      v20 = *(*(v30 + 8) + 8);
      v21 = *(v20 + 8);

      v23 = v33;
      v21(v22, a3, v20);
      v33 = v23;
      if (v23)
      {

        return;
      }

      ++v17;
      sub_1AE23D38C();
      v24 = v29;
      sub_1AE23D33C();

      (*v26)(v24, a3);
      v16 = v27;
      if (v28 == v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

uint64_t sub_1ADF8676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  v24[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a1;
  v12 = sub_1AE23D38C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1ADE08EB0(sub_1ADF87ED8, v23, v12, &type metadata for Proto_Value, v13, WitnessTable, MEMORY[0x1E69E7288], v24);
  if (!v5)
  {
    v16 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = swift_allocObject();
      v18 = *(inited + 16);
      *(v17 + 16) = v18;
      sub_1ADE51B2C(v18);

      inited = v17;
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    v20 = v19 | 0x5000000000000000;
    v21 = *(inited + 16);
    *(inited + 16) = v20;
    sub_1ADE51B48(v21);
  }

  return inited;
}

void Set<>.observableDifference(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a2;
  v77 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = sub_1AE23D7CC();
  v11 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v73 = &v53 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v53 - v17;
  v62 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v53 - v21;
  v22 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v75 = &v53 - v23;
  v24 = sub_1AE23D32C();
  v80 = a6;
  if (v24 != sub_1AE23D32C())
  {
    return;
  }

  v79 = v11;
  v70 = AssociatedTypeWitness;
  v82 = sub_1AE23C9DC();
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AE23D93C();
    v25 = a4;
    sub_1AE23D36C();
    a3 = v83;
    v26 = v84;
    v27 = v85;
    v28 = v86;
    v29 = v87;
    v30 = v76;
  }

  else
  {
    v31 = -1 << *(a3 + 32);
    v32 = ~v31;
    v33 = -v31;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v29 = v34 & *(a3 + 56);

    v27 = v32;
    v28 = 0;
    v30 = v76;
    v25 = a4;
    v26 = a3 + 56;
  }

  v71 = (v62 + 56);
  v53 = v27;
  v35 = (v27 + 64) >> 6;
  v58 = v62 + 16;
  v67 = (v62 + 32);
  v64 = v77 + 40;
  v78 = (v62 + 8);
  v63 = (v13 + 48);
  v57 = (v13 + 32);
  v56 = (v13 + 16);
  v55 = (v13 + 8);
  v54 = (v79 + 8);
  v68 = v26;
  v69 = a3;
  v65 = v35;
  v66 = a1;
  while (a3 < 0)
  {
    if (!sub_1AE23D9AC())
    {
LABEL_23:
      (*v71)(v75, 1, 1, v25);
      sub_1ADDDCE74(a3);
      v81 = v82;
      sub_1AE23D11C();
      swift_getWitnessTable();
      if (sub_1AE23D4CC())
      {
      }

      return;
    }

    v40 = v75;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v38 = v28;
    v79 = v29;
LABEL_20:
    (*v71)(v40, 0, 1, v25);
    (*v67)(v30, v40, v25);
    v41 = sub_1AE23D2CC();
    if (v43 == -1)
    {
      (*v78)(v30, v25);
      sub_1ADDDCE74(v69);

      return;
    }

    v44 = v41;
    v45 = v42;
    v46 = v43;
    v47 = v72;
    sub_1AE23D3AC();
    v48 = v73;
    (*(v77 + 40))(v47, v74, v25);
    v49 = v48;
    v50 = *v78;
    (*v78)(v47, v25);
    v51 = v70;
    if ((*v63)(v49, 1, v70) == 1)
    {
      v36 = v76;
      v50(v76, v25);
      sub_1ADF87E20(v44, v45, v46);
      (*v54)(v49, v61);
      v28 = v38;
      v29 = v79;
      a3 = v69;
      v30 = v36;
    }

    else
    {
      v52 = v59;
      (*v57)(v59, v49, v51);
      (*v56)(v60, v52, v51);
      sub_1AE23D11C();
      sub_1AE23D0CC();
      sub_1ADF87E20(v44, v45, v46);
      (*v55)(v52, v51);
      v30 = v76;
      v50(v76, v25);
      v28 = v38;
      v29 = v79;
      a3 = v69;
    }

    v26 = v68;
    v35 = v65;
  }

  v37 = v29;
  v38 = v28;
  if (v29)
  {
LABEL_17:
    v79 = (v37 - 1) & v37;
    v40 = v75;
    (*(v62 + 16))(v75, *(a3 + 48) + *(v62 + 72) * (__clz(__rbit64(v37)) | (v38 << 6)), v25);
    goto LABEL_20;
  }

  v39 = v28;
  while (1)
  {
    v38 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v38 >= v35)
    {
      goto LABEL_23;
    }

    v37 = *(v26 + 8 * v38);
    ++v39;
    if (v37)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}