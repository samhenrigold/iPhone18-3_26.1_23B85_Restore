void sub_1D1C73218(uint64_t a1)
{
  if (!qword_1EC64CBF0)
  {
    type metadata accessor for StaticAccessory(255);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC64CBF0);
    }
  }
}

void sub_1D1C73270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D1E681FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D1C732E0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v193 = a4;
  v194 = a1;
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v199 = &v187 - v12;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v217);
  v214 = &v187 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v207 = &v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v187 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v216 = &v187 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v215 = &v187 - v22;
  v23 = type metadata accessor for StaticActionSet(0);
  v208 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v195 = &v187 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v224 = &v187 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v221 = &v187 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v227 = &v187 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v226 = &v187 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v191 = &v187 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v209 = a3;
  v41 = a3[1];
  if (v41 < 1)
  {
    swift_bridgeObjectRetain_n();
    v43 = MEMORY[0x1E69E7CC0];
LABEL_136:
    v227 = *v194;
    if (v227)
    {
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v220;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_138;
    }

    goto LABEL_179;
  }

  v189 = &v187 - v38;
  v188 = v40;
  v200 = v39;
  v206 = v19;
  v211 = (v8 + 48);
  v212 = (v8 + 56);
  v197 = (v8 + 32);
  v205 = (v8 + 8);
  swift_bridgeObjectRetain_n();
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v225 = a5;
  v213 = v7;
  v198 = v11;
  v219 = v23;
  v44 = v226;
  while (1)
  {
    a5 = v42;
    v45 = v42 + 1;
    if (v45 >= v41)
    {
      v60 = v45;
    }

    else
    {
      v192 = v43;
      v46 = *v209;
      v47 = *(v208 + 72);
      v48 = *v209 + v47 * v45;
      v49 = v189;
      sub_1D1C66B60(v48, v189, type metadata accessor for StaticActionSet);
      v50 = v191;
      sub_1D1C66B60(v46 + v47 * a5, v191, type metadata accessor for StaticActionSet);
      v51 = v220;
      LODWORD(v222) = sub_1D1D0CC54(v49, v50, v225);
      v220 = v51;
      if (v51)
      {
        sub_1D1C72E20(v50, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v49, type metadata accessor for StaticActionSet);
        goto LABEL_149;
      }

      v210 = v41;
      sub_1D1C72E20(v50, type metadata accessor for StaticActionSet);
      sub_1D1C72E20(v49, type metadata accessor for StaticActionSet);
      v190 = a5;
      v52 = a5 + 2;
      v53 = v46 + v47 * (a5 + 2);
      v54 = v188;
      v55 = v47;
      v223 = v47;
      v41 = v222;
      while (v210 != v52)
      {
        sub_1D1C66B60(v53, v54, type metadata accessor for StaticActionSet);
        v56 = v200;
        sub_1D1C66B60(v48, v200, type metadata accessor for StaticActionSet);
        v57 = v220;
        v58 = sub_1D1D0CC54(v54, v56, v225);
        v220 = v57;
        if (v57)
        {
          sub_1D1C72E20(v56, type metadata accessor for StaticActionSet);
          sub_1D1C72E20(v54, type metadata accessor for StaticActionSet);
LABEL_149:
          swift_bridgeObjectRelease_n();
        }

        v59 = v58;
        sub_1D1C72E20(v56, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v54, type metadata accessor for StaticActionSet);
        ++v52;
        v55 = v223;
        v53 += v223;
        v48 += v223;
        if ((v41 ^ v59))
        {
          v60 = v52 - 1;
          goto LABEL_13;
        }
      }

      v60 = v210;
LABEL_13:
      v44 = v226;
      a5 = v190;
      if ((v41 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v60 < v190)
      {
        goto LABEL_173;
      }

      if (v190 < v60)
      {
        v61 = v55 * (v60 - 1);
        v62 = v60 * v55;
        v63 = v60;
        v64 = v190;
        v65 = v190 * v55;
        do
        {
          if (v64 != --v63)
          {
            v41 = *v209;
            if (!*v209)
            {
              goto LABEL_177;
            }

            sub_1D1C72E80(v41 + v65, v195, type metadata accessor for StaticActionSet);
            if (v65 < v61 || v41 + v65 >= v41 + v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v65 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D1C72E80(v195, v41 + v61, type metadata accessor for StaticActionSet);
            v55 = v223;
          }

          ++v64;
          v61 -= v55;
          v62 -= v55;
          v65 += v55;
        }

        while (v64 < v63);
        v43 = v192;
        v44 = v226;
        a5 = v190;
      }

      else
      {
LABEL_26:
        v43 = v192;
      }
    }

    v66 = v209[1];
    if (v60 >= v66)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v60, a5))
    {
      goto LABEL_169;
    }

    if (v60 - a5 >= v193)
    {
LABEL_37:
      v68 = v60;
      if (v60 < a5)
      {
        goto LABEL_168;
      }

      goto LABEL_38;
    }

    if (__OFADD__(a5, v193))
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_175:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_176:

      __break(1u);
LABEL_177:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_178:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_179:
      result = swift_bridgeObjectRelease_n();
      __break(1u);
      return result;
    }

    if (a5 + v193 >= v66)
    {
      v67 = v209[1];
    }

    else
    {
      v67 = a5 + v193;
    }

    if (v67 < a5)
    {
      goto LABEL_172;
    }

    if (v60 == v67)
    {
      goto LABEL_37;
    }

    v192 = v43;
    v124 = *v209;
    v125 = *(v208 + 72);
    v126 = *v209 + v125 * (v60 - 1);
    v222 = -v125;
    v190 = a5;
    v127 = a5 - v60;
    v223 = v124;
    v196 = v125;
    v128 = v124 + v60 * v125;
    v201 = v67;
    while (2)
    {
      v210 = v60;
      v202 = v128;
      v203 = v127;
      v129 = v127;
      v204 = v126;
      v130 = v126;
      while (1)
      {
        sub_1D1C66B60(v128, v44, type metadata accessor for StaticActionSet);
        v41 = v227;
        sub_1D1C66B60(v130, v227, type metadata accessor for StaticActionSet);
        v131 = v225;
        v132 = sub_1D18E4158(v44, v225);
        v134 = v133;
        v135 = sub_1D18E4158(v41, v131);
        if (v134)
        {
          if ((v136 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (v136)
          {
            goto LABEL_115;
          }

          v137 = v132 < v135;
          if (v132 != v135)
          {
            goto LABEL_110;
          }
        }

        v41 = v221;
        sub_1D1C66B60(v227, v221, type metadata accessor for StaticActionSet);
        v138 = *(v44 + *(v23 + 24)) == 7 ? 4 : *(v44 + *(v23 + 24));
        v139 = sub_1D18E4248(v138, &unk_1F4D5EDD8);
        v141 = v140;
        v142 = *(v41 + *(v23 + 24)) == 7 ? 4 : *(v41 + *(v23 + 24));
        v143 = sub_1D18E4248(v142, &unk_1F4D5EDD8);
        v145 = v144;
        sub_1D1C72E20(v41, type metadata accessor for StaticActionSet);
        if (v141)
        {
          v44 = v226;
          if ((v145 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v44 = v226;
          if (v145)
          {
            goto LABEL_115;
          }

          v137 = v139 < v143;
          if (v139 != v143)
          {
LABEL_110:
            v155 = v137;
            goto LABEL_127;
          }
        }

        v146 = v213;
        v147 = *v212;
        v148 = v215;
        (*v212)(v215, 1, 1, v213);
        v149 = v216;
        v147(v216, 1, 1, v146);
        v150 = *(v217 + 48);
        v151 = v148;
        v152 = v214;
        v41 = &qword_1EC642570;
        sub_1D1741A90(v151, v214, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A90(v149, v152 + v150, &qword_1EC642570, &qword_1D1E6C6A0);
        v153 = *v211;
        if ((*v211)(v152, 1, v146) == 1)
        {
          break;
        }

        v41 = v206;
        sub_1D1741C08(v152, v206, &qword_1EC642570, &qword_1D1E6C6A0);
        v218 = v150;
        if (v153(v152 + v150, 1, v146) != 1)
        {
          sub_1D1741C08(v152 + v218, v207, &qword_1EC642570, &qword_1D1E6C6A0);
          v156 = *v197;
          v157 = v199;
          (*v197)(v199, v41, v146);
          v41 = v157;
          v158 = v152;
          v159 = v198;
          v156(v198, v207, v146);
          sub_1D1C75134(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
          if (sub_1D1E6775C())
          {
            v160 = *v205;
            (*v205)(v159, v146);
            v160(v41, v146);
            v152 = v158;
            v44 = v226;
            goto LABEL_118;
          }

          v155 = sub_1D1E6696C();
          v171 = v159;
          v172 = *v205;
          (*v205)(v171, v146);
          v172(v41, v146);
          sub_1D1741A30(v158 + v218, &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v158, &qword_1EC642570, &qword_1D1E6C6A0);
          v23 = v219;
LABEL_126:
          v44 = v226;
LABEL_127:
          sub_1D1C72E20(v227, type metadata accessor for StaticActionSet);
          sub_1D1C72E20(v44, type metadata accessor for StaticActionSet);
          if ((v155 & 1) == 0)
          {
            goto LABEL_89;
          }

          goto LABEL_128;
        }

        (*v205)(v41, v146);
        sub_1D1741A30(v152 + v218, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v152, &qword_1EC642570, &qword_1D1E6C6A0);
        v23 = v219;
        v44 = v226;
LABEL_115:
        sub_1D1C72E20(v227, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v44, type metadata accessor for StaticActionSet);
LABEL_128:
        if (!v223)
        {
          goto LABEL_174;
        }

        v173 = v224;
        sub_1D1C72E80(v128, v224, type metadata accessor for StaticActionSet);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D1C72E80(v173, v130, type metadata accessor for StaticActionSet);
        v130 += v222;
        v128 += v222;
        if (__CFADD__(v129++, 1))
        {
          goto LABEL_89;
        }
      }

      v154 = v153(v152 + v150, 1, v146);
      v44 = v226;
      if (v154 != 1)
      {
        sub_1D1741A30(v152 + v150, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v152, &qword_1EC642570, &qword_1D1E6C6A0);
        v23 = v219;
        goto LABEL_88;
      }

LABEL_118:
      sub_1D1741A30(v152, &qword_1EC642AC0, &qword_1D1E6E810);
      v23 = v219;
      v161 = *(v219 + 20);
      v162 = *(v44 + v161);
      v163 = *(v44 + v161 + 8);
      v164 = (v227 + v161);
      v165 = *v164;
      v166 = v164[1];
      if ((v162 != *v164 || v163 != v166) && (sub_1D1E6904C() & 1) == 0)
      {
        v230 = v162;
        v231 = v163;
        v228 = v165;
        v229 = v166;
        sub_1D17D8EF0();
        v155 = sub_1D1E685FC() == -1;
        goto LABEL_126;
      }

      v44 = v226;
      v167 = sub_1D1E66A1C();
      v169 = v168;
      if (v167 != sub_1D1E66A1C() || v169 != v170)
      {
        v155 = sub_1D1E6904C();

        goto LABEL_127;
      }

LABEL_88:
      sub_1D1C72E20(v227, type metadata accessor for StaticActionSet);
      sub_1D1C72E20(v44, type metadata accessor for StaticActionSet);
LABEL_89:
      v60 = v210 + 1;
      v126 = v204 + v196;
      v127 = v203 - 1;
      v128 = v202 + v196;
      v68 = v201;
      if (v210 + 1 != v201)
      {
        continue;
      }

      break;
    }

    v43 = v192;
    a5 = v190;
    if (v201 < v190)
    {
      goto LABEL_168;
    }

LABEL_38:
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v68;
    if ((v69 & 1) == 0)
    {
      v43 = sub_1D177D070(0, *(v43 + 16) + 1, 1, v43);
    }

    v71 = *(v43 + 16);
    v70 = *(v43 + 24);
    v72 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v43 = sub_1D177D070((v70 > 1), v71 + 1, 1, v43);
    }

    *(v43 + 16) = v72;
    v73 = v43 + 16 * v71;
    v74 = v201;
    *(v73 + 32) = a5;
    *(v73 + 40) = v74;
    v223 = *v194;
    if (!v223)
    {
      goto LABEL_178;
    }

    if (v71)
    {
      break;
    }

LABEL_3:
    v41 = v209[1];
    v42 = v201;
    a5 = v225;
    if (v201 >= v41)
    {
      goto LABEL_136;
    }
  }

  while (1)
  {
    a5 = v72 - 1;
    if (v72 >= 4)
    {
      v79 = v43 + 32 + 16 * v72;
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_155;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_156;
      }

      v86 = (v43 + 16 * v72);
      v88 = *v86;
      v87 = v86[1];
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_158;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_161;
      }

      if (v90 >= v82)
      {
        v108 = (v43 + 32 + 16 * a5);
        v110 = *v108;
        v109 = v108[1];
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_167;
        }

        if (v77 < v111)
        {
          a5 = v72 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v72 == 3)
    {
      v75 = *(v43 + 32);
      v76 = *(v43 + 40);
      v85 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      v78 = v85;
LABEL_57:
      if (v78)
      {
        goto LABEL_157;
      }

      v91 = (v43 + 16 * v72);
      v93 = *v91;
      v92 = v91[1];
      v94 = __OFSUB__(v92, v93);
      v95 = v92 - v93;
      v96 = v94;
      if (v94)
      {
        goto LABEL_160;
      }

      v97 = (v43 + 32 + 16 * a5);
      v99 = *v97;
      v98 = v97[1];
      v85 = __OFSUB__(v98, v99);
      v100 = v98 - v99;
      if (v85)
      {
        goto LABEL_163;
      }

      if (__OFADD__(v95, v100))
      {
        goto LABEL_164;
      }

      if (v95 + v100 >= v77)
      {
        if (v77 < v100)
        {
          a5 = v72 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v101 = (v43 + 16 * v72);
    v103 = *v101;
    v102 = v101[1];
    v85 = __OFSUB__(v102, v103);
    v95 = v102 - v103;
    v96 = v85;
LABEL_71:
    if (v96)
    {
      goto LABEL_159;
    }

    v104 = v43 + 16 * a5;
    v106 = *(v104 + 32);
    v105 = *(v104 + 40);
    v85 = __OFSUB__(v105, v106);
    v107 = v105 - v106;
    if (v85)
    {
      goto LABEL_162;
    }

    if (v107 < v95)
    {
      goto LABEL_3;
    }

LABEL_78:
    v112 = a5 - 1;
    if (a5 - 1 >= v72)
    {
      break;
    }

    v113 = *v209;
    if (!*v209)
    {
      goto LABEL_175;
    }

    v114 = v43;
    v115 = *(v43 + 32 + 16 * v112);
    v116 = *(v43 + 32 + 16 * a5 + 8);
    v117 = *(v208 + 72);
    v118 = v113 + v117 * v115;
    v119 = v113 + v117 * *(v43 + 32 + 16 * a5);
    v120 = v113 + v117 * v116;
    v43 = v225;

    v121 = v118;
    v122 = v220;
    sub_1D1C6A11C(v121, v119, v120, v223, v43);
    v41 = v122;
    if (v122)
    {
      goto LABEL_149;
    }

    if (v116 < v115)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_1D1E0BE44(v114);
    }

    if (v112 >= *(v114 + 2))
    {
      goto LABEL_154;
    }

    v220 = 0;
    v123 = &v114[16 * v112];
    *(v123 + 4) = v115;
    *(v123 + 5) = v116;
    v232 = v114;
    sub_1D1E0BDB8(a5);
    v43 = v232;
    v72 = *(v232 + 16);
    v23 = v219;
    v44 = v226;
    if (v72 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_170:
  v43 = sub_1D1E0BE44(v43);
LABEL_138:
  v232 = v43;
  v176 = *(v43 + 16);
  if (v176 >= 2)
  {
    do
    {
      v177 = *v209;
      if (!*v209)
      {
        goto LABEL_176;
      }

      v178 = *(v43 + 16 * v176);
      v179 = v43;
      v180 = *(v43 + 16 * (v176 - 1) + 32);
      v43 = *(v43 + 16 * (v176 - 1) + 40);
      v181 = *(v208 + 72);
      v182 = v177 + v181 * v178;
      v183 = v177 + v181 * v180;
      v184 = v177 + v181 * v43;

      sub_1D1C6A11C(v182, v183, v184, v227, a5);
      if (v41)
      {
        break;
      }

      if (v43 < v178)
      {
        goto LABEL_165;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v179 = sub_1D1E0BE44(v179);
      }

      if (v176 - 2 >= *(v179 + 2))
      {
        goto LABEL_166;
      }

      v185 = &v179[16 * v176];
      *v185 = v178;
      *(v185 + 1) = v43;
      v232 = v179;
      sub_1D1E0BDB8(v176 - 1);
      v43 = v232;
      v176 = *(v232 + 16);
    }

    while (v176 > 1);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C746E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v38 = a5;
  v37 = type metadata accessor for StaticActionSet(0);
  v10 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = *a4;
    v29 = v19;
    v23 = v35 + v19 * a3;
LABEL_4:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v20;
    while (1)
    {
      sub_1D1C66B60(v23, v18, type metadata accessor for StaticActionSet);
      sub_1D1C66B60(v24, v14, type metadata accessor for StaticActionSet);
      v25 = sub_1D1D0CC54(v18, v14, v38);
      sub_1D1C72E20(v14, type metadata accessor for StaticActionSet);
      result = sub_1D1C72E20(v18, type metadata accessor for StaticActionSet);
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = v36;
        sub_1D1C72E80(v23, v36, type metadata accessor for StaticActionSet);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D1C72E80(v26, v24, type metadata accessor for StaticActionSet);
        v24 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D1C74950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, __n128), void (*a5)(void, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v10 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  result = sub_1D1E68F9C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      if (v10 <= 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a3(0);
        v13 = sub_1D1E67C8C();
        *(v13 + 16) = v10 / 2;
      }

      v14 = *(a3(0) - 8);
      v15[0] = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v15[1] = v10 / 2;

      (a4)(v15, v16, a1, v12, a2);

      *(v13 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {

    (a5)(0, v10, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C74B00(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticActionSet(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0BFCC(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1C74950(v8, a2, type metadata accessor for StaticActionSet, sub_1D1C732E0, sub_1D1C746E4);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C74C24(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v6, 0);
    v7 = v19;
    v8 = type metadata accessor for StaticServiceGroup(0);
    v9 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v10 = *(*(v8 - 8) + 72);
    v11 = sub_1D1C75134(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
    do
    {
      v18[3] = v8;
      v18[4] = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D1C66B60(v9, boxed_opaque_existential_1, type metadata accessor for StaticServiceGroup);
      sub_1D17419CC(v18, v17);
      sub_1D1C572DC(v17, v5);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178CD64((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D1C72E80(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for BoxedTileInfoBearer);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D1C74E6C(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v6, 0);
    v7 = v19;
    v8 = type metadata accessor for StaticService(0);
    v9 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v10 = *(*(v8 - 8) + 72);
    v11 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    do
    {
      v18[3] = v8;
      v18[4] = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D1C66B60(v9, boxed_opaque_existential_1, type metadata accessor for StaticService);
      sub_1D17419CC(v18, v17);
      sub_1D1C572DC(v17, v5);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178CD64((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D1C72E80(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for BoxedTileInfoBearer);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D1C75134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1C75324(uint64_t a1)
{
  v1 = type metadata accessor for StaticUserActionPrediction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1D1C753A4(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    result = sub_1D1C75440();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for BoxedTileInfoBearer.TileSort(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D1C75440()
{
  result = qword_1EC64CC28;
  if (!qword_1EC64CC28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC64CC28);
  }

  return result;
}

uint64_t TileInfoBearer.analyticsElementType.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v85 = a2;
  v68 = type metadata accessor for StaticEndpoint(0);
  v3 = MEMORY[0x1EEE9AC00](v68);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v64 - v5;
  v71 = type metadata accessor for StaticMatterDevice(0);
  v6 = MEMORY[0x1EEE9AC00](v71);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v64 - v8;
  v74 = type metadata accessor for StaticMediaSystem(0);
  v9 = MEMORY[0x1EEE9AC00](v74);
  v69 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v64 - v11;
  v76 = type metadata accessor for StaticMediaProfile(0);
  v12 = MEMORY[0x1EEE9AC00](v76);
  v72 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v64 - v14;
  v77 = type metadata accessor for StaticCameraProfile(0);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StaticService(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v64 - v26;
  v28 = type metadata accessor for StaticAccessory(0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v64 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v37;
  (*(v37 + 16))(v36, v83, a1);
  if (swift_dynamicCast())
  {
    sub_1D1C7FC04(v34, v31, type metadata accessor for StaticAccessory);
    StaticAccessory.primaryStaticService.getter(v27);
    sub_1D1C80150(v31, type metadata accessor for StaticAccessory);
    if ((*(v19 + 48))(v27, 1, v18) == 1)
    {
      sub_1D1741A30(v27, &qword_1EC6436F0, &qword_1D1E99BC0);
      v38 = 0;
    }

    else
    {
      v38 = v27[*(v18 + 104)];
      sub_1D1C80150(v27, type metadata accessor for StaticService);
    }

    v86 = v38;
    v40 = &v86;
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
    v41 = v82;
    if (swift_dynamicCast())
    {
      *v85 = 54;
      v42 = type metadata accessor for StaticServiceGroup;
LABEL_15:
      sub_1D1C80150(v41, v42);
      return (*(v84 + 8))(v36, a1);
    }

    v41 = v80;
    if (swift_dynamicCast())
    {
      *v85 = 55;
      v42 = type metadata accessor for StaticActionSet;
      goto LABEL_15;
    }

    v41 = v78;
    if (swift_dynamicCast())
    {
      *v85 = 63;
      v42 = type metadata accessor for StaticCameraProfile;
      goto LABEL_15;
    }

    v45 = v75;
    v44 = v76;
    if (swift_dynamicCast())
    {
      v46 = v72;
      sub_1D1C7FC04(v45, v72, type metadata accessor for StaticMediaProfile);
      v47 = v46 + *(v44 + 92);
      v48 = *v47;
      v49 = *(v47 + 8);
      sub_1D18EB144(*v47, *(v47 + 8));
      sub_1D1C80150(v46, type metadata accessor for StaticMediaProfile);
      if (v49 > 1)
      {
        if (v49 != 2)
        {
          if (v49 != 3)
          {
            LOBYTE(v50) = 64;
LABEL_39:
            *v85 = v50;
            return (*(v84 + 8))(v36, a1);
          }

LABEL_26:
          v50 = 0x27273A32u >> (8 * v48);
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      goto LABEL_27;
    }

    v52 = v73;
    v51 = v74;
    if (swift_dynamicCast())
    {
      v53 = v69;
      sub_1D1C7FC04(v52, v69, type metadata accessor for StaticMediaSystem);
      v54 = v53 + *(v51 + 24);
      v48 = *v54;
      v49 = *(v54 + 8);
      sub_1D18EB144(*v54, *(v54 + 8));
      sub_1D1C80150(v53, type metadata accessor for StaticMediaSystem);
      if (v49 > 1)
      {
        if (v49 != 2)
        {
          if (v49 != 3)
          {
            LOBYTE(v50) = 65;
            goto LABEL_39;
          }

          goto LABEL_26;
        }

LABEL_32:
        LOBYTE(v50) = 39;
        goto LABEL_39;
      }

LABEL_27:
      if (v49)
      {
        LOBYTE(v50) = 59;
      }

      else
      {
        sub_1D18EB2D8(v48, 0);
        LOBYTE(v50) = 56;
      }

      goto LABEL_39;
    }

    v55 = v70;
    v56 = v71;
    if (swift_dynamicCast())
    {
      v57 = v55;
      v58 = v66;
      sub_1D1C7FC04(v57, v66, type metadata accessor for StaticMatterDevice);
      static MatterDeviceType.primaryDeviceType(for:)(*(v58 + *(v56 + 32)), &v89);
      sub_1D1C80150(v58, type metadata accessor for StaticMatterDevice);
      if (v89 != 28)
      {
        v88 = v89;
        v59 = &v88;
LABEL_41:
        HomeAnalyticsUtilities.HomeElementType.init(matterDeviceType:)(v59, v85);
        return (*(v84 + 8))(v36, a1);
      }
    }

    else
    {
      v60 = v67;
      v61 = v68;
      if (!swift_dynamicCast())
      {
        LOBYTE(v50) = 1;
        goto LABEL_39;
      }

      v62 = v60;
      v63 = v65;
      sub_1D1C7FC04(v62, v65, type metadata accessor for StaticEndpoint);
      static MatterDeviceType.primaryDeviceType(for:)(*(v63 + *(v61 + 32)), v91);
      sub_1D1C80150(v63, type metadata accessor for StaticEndpoint);
      if (v91[0] != 28)
      {
        v90 = v91[0];
        v59 = &v90;
        goto LABEL_41;
      }
    }

    *v85 = 0;
    return (*(v84 + 8))(v36, a1);
  }

  sub_1D1C7FC04(v24, v22, type metadata accessor for StaticService);
  v39 = v22[*(v18 + 104)];
  sub_1D1C80150(v22, type metadata accessor for StaticService);
  v87 = v39;
  v40 = &v87;
LABEL_8:
  HomeAnalyticsUtilities.HomeElementType.init(serviceKind:)(v40, v85);
  return (*(v84 + 8))(v36, a1);
}

uint64_t sub_1D1C75ED0(uint64_t a1)
{
  v35 = sub_1D1E66A7C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_1D1E6869C();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_1D1E66A1C();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1D178CD24((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1D1716920(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1D1716920(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t TileInfoBearer.description.getter(uint64_t a1)
{
  v29 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StaticMatterDevice(0);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticMediaSystem(0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticCameraProfile(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticAccessory(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v37, a1);
  if (swift_dynamicCast())
  {
    v21 = 0x6341636974617473;
    sub_1D1C80150(v17, type metadata accessor for StaticAccessory);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v21 = 0x6341636974617473;
    sub_1D1C80150(v13, type metadata accessor for StaticActionSet);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    sub_1D1C80150(v10, type metadata accessor for StaticCameraProfile);
    v21 = 0xD000000000000013;
    goto LABEL_16;
  }

  v22 = v36;
  if (swift_dynamicCast())
  {
    sub_1D1C80150(v22, type metadata accessor for StaticMediaSystem);
    v21 = 0xD000000000000011;
    goto LABEL_16;
  }

  v23 = v34;
  if (swift_dynamicCast())
  {
    sub_1D1C80150(v23, type metadata accessor for StaticService);
    v21 = 0x6553636974617473;
    goto LABEL_16;
  }

  v24 = v33;
  if (swift_dynamicCast())
  {
    v21 = 0xD000000000000012;
    v25 = type metadata accessor for StaticServiceGroup;
LABEL_15:
    sub_1D1C80150(v24, v25);
    goto LABEL_16;
  }

  v24 = v31;
  if (swift_dynamicCast())
  {
    v21 = 0xD000000000000012;
    v25 = type metadata accessor for StaticMatterDevice;
    goto LABEL_15;
  }

  v27 = v28;
  if (swift_dynamicCast())
  {
    sub_1D1C80150(v27, type metadata accessor for StaticEndpoint);
    v21 = 0x6E45636974617473;
  }

  else
  {
    v21 = 0;
  }

LABEL_16:
  (*(v18 + 8))(v20, a1);
  return v21;
}

uint64_t TileInfoBearer.staticServices.getter(uint64_t a1)
{
  v40 = type metadata accessor for StaticServiceGroup(0);
  v3 = MEMORY[0x1EEE9AC00](v40);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v38 - v5;
  v6 = type metadata accessor for StaticService(0);
  v41 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for StaticAccessory(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v38 - v17;
  v19 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v1, a1);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v24 = sub_1D1C7FC04(v18, v15, type metadata accessor for StaticAccessory);
      MEMORY[0x1EEE9AC00](v24);
      *(&v38 - 2) = v15;
      v23 = sub_1D17868B8(sub_1D1820ECC, (&v38 - 4), v25);
      v26 = type metadata accessor for StaticAccessory;
      v27 = v15;
LABEL_5:
      sub_1D1C80150(v27, v26);
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      sub_1D1C7FC04(v11, v9, type metadata accessor for StaticService);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
      v28 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D1E739C0;
      sub_1D1C7FC04(v9, v23 + v28, type metadata accessor for StaticService);
      goto LABEL_13;
    }

    v29 = v39;
    v30 = v40;
    if (swift_dynamicCast())
    {
      v31 = v29;
      v32 = v38;
      sub_1D1C7FC04(v31, v38, type metadata accessor for StaticServiceGroup);
      v33 = *(v32 + *(v30 + 56));
      v34 = v33[2];
      if (v34)
      {
        v23 = sub_1D18042C8(v33[2], 0);
        v35 = sub_1D1804A58(&v42, v23 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v34, v33);
        v36 = v42;
        v40 = v44;
        v41 = v35;

        sub_1D1716918(v36);
        if (v41 != v34)
        {
          __break(1u);
          goto LABEL_12;
        }
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      v26 = type metadata accessor for StaticServiceGroup;
      v27 = v38;
      goto LABEL_5;
    }

LABEL_12:
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  sub_1D17419CC(v45 + 16, &v42);
  v22 = v43;
  __swift_project_boxed_opaque_existential_1(&v42, v43);
  v23 = TileInfoBearer.staticServices.getter(v22);
  __swift_destroy_boxed_opaque_existential_1(&v42);

LABEL_13:
  (*(v19 + 8))(v21, a1);
  return v23;
}

uint64_t TileInfoBearer.statusString(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = (*(a3 + 192))(a1, v8, a2, a3);
  sub_1D1741A30(v8, &qword_1EC643650, &qword_1D1E71D40);
  return v10;
}

uint64_t (*sub_1D1C76E38(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
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
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7E834(v4, v9);
  return sub_1D1C76F50;
}

uint64_t (*sub_1D1C76F54(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1D1C7E974(v4, a2);
  return sub_1D1C76FCC;
}

void sub_1D1C76FCC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*sub_1D1C77018(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
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
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7EA78(v4, v9);
  return sub_1D1C801B4;
}

uint64_t (*sub_1D1C77130(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
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
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7EBB4(v4, v9);
  return sub_1D1C801B4;
}

uint64_t (*sub_1D1C77248(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
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
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7ECF0(v4, v9);
  return sub_1D1C801B4;
}

uint64_t (*sub_1D1C77360(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
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
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7EE2C(v4, v9);
  return sub_1D1C801B4;
}

void sub_1D1C77478(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t TileInfoBearer.serviceKinds.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticServiceGroup(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v101 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v98 - v7;
  v9 = type metadata accessor for StaticService(0);
  v109 = *(v9 - 8);
  v110 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v98 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v15 = MEMORY[0x1EEE9AC00](v108);
  v107 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v106 = &v98 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v98 - v19;
  v20 = type metadata accessor for StaticAccessory(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v100 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v28;
  (*(v28 + 16))(v27, v2, a1);
  if (swift_dynamicCast())
  {
    sub_1D17419CC(v117[0] + 16, v114);
    v29 = v115;
    v30 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v31 = (*(v30 + 96))(v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v114);

LABEL_47:
    (*(v102 + 8))(v27, a1);
    return v31;
  }

  if (!swift_dynamicCast())
  {
    v65 = v110;
    if (swift_dynamicCast())
    {
      sub_1D1C7FC04(v14, v12, type metadata accessor for StaticService);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D1E739C0;
      *(v31 + 32) = v12[*(v65 + 104)];
      sub_1D1C80150(v12, type metadata accessor for StaticService);
      goto LABEL_47;
    }

    v66 = swift_dynamicCast();
    v31 = MEMORY[0x1E69E7CC0];
    if (!v66)
    {
      goto LABEL_47;
    }

    v99 = v27;
    v67 = v101;
    sub_1D1C7FC04(v8, v101, type metadata accessor for StaticServiceGroup);
    v68 = *(v67 + *(v4 + 56));
    v69 = *(v68 + 16);
    if (v69)
    {
      v98 = a1;
      v114[0] = v31;

      sub_1D178CF80(0, v69, 0);
      v31 = v114[0];
      v70 = v68 + 64;
      result = sub_1D1E6869C();
      v71 = result;
      v72 = 0;
      v100 = v68 + 72;
      v103 = v69;
      v104 = v68 + 64;
      while ((v71 & 0x8000000000000000) == 0 && v71 < 1 << *(v68 + 32))
      {
        v75 = v71 >> 6;
        if ((*(v70 + 8 * (v71 >> 6)) & (1 << v71)) == 0)
        {
          goto LABEL_56;
        }

        v76 = *(v68 + 36);
        v111 = v72;
        v112 = v76;
        v77 = v68;
        v78 = v108;
        v113 = v31;
        v79 = *(v108 + 48);
        v80 = *(v77 + 48);
        v81 = sub_1D1E66A7C();
        v82 = *(v81 - 8);
        v83 = v105;
        (*(v82 + 16))(v105, v80 + *(v82 + 72) * v71, v81);
        sub_1D1C3EB34(*(v77 + 56) + *(v109 + 72) * v71, &v83[v79], type metadata accessor for StaticService);
        v84 = v106;
        (*(v82 + 32))(v106, v83, v81);
        sub_1D1C7FC04(&v83[v79], v84 + *(v78 + 48), type metadata accessor for StaticService);
        v85 = v107;
        sub_1D1741A90(v84, v107, &qword_1EC642DB0, &unk_1D1E6F360);
        v86 = v85 + *(v78 + 48);
        v87 = *(v86 + *(v110 + 104));
        sub_1D1C80150(v86, type metadata accessor for StaticService);
        v88 = v85;
        v31 = v113;
        result = (*(v82 + 8))(v88, v81);
        v114[0] = v31;
        v90 = *(v31 + 16);
        v89 = *(v31 + 24);
        if (v90 >= v89 >> 1)
        {
          result = sub_1D178CF80((v89 > 1), v90 + 1, 1);
          v31 = v114[0];
        }

        *(v31 + 16) = v90 + 1;
        *(v31 + v90 + 32) = v87;
        v73 = 1 << *(v77 + 32);
        if (v71 >= v73)
        {
          goto LABEL_57;
        }

        v70 = v104;
        v91 = *(v104 + 8 * v75);
        if ((v91 & (1 << v71)) == 0)
        {
          goto LABEL_58;
        }

        v68 = v77;
        if (v112 != *(v77 + 36))
        {
          goto LABEL_59;
        }

        v92 = v91 & (-2 << (v71 & 0x3F));
        if (v92)
        {
          v73 = __clz(__rbit64(v92)) | v71 & 0x7FFFFFFFFFFFFFC0;
          v74 = v111;
        }

        else
        {
          v93 = v75 << 6;
          v94 = v75 + 1;
          v95 = (v100 + 8 * v75);
          v74 = v111;
          while (v94 < (v73 + 63) >> 6)
          {
            v97 = *v95++;
            v96 = v97;
            v93 += 64;
            ++v94;
            if (v97)
            {
              result = sub_1D1716920(v71, v112, 0);
              v73 = __clz(__rbit64(v96)) + v93;
              goto LABEL_30;
            }
          }

          result = sub_1D1716920(v71, v112, 0);
        }

LABEL_30:
        v72 = v74 + 1;
        v71 = v73;
        if (v72 == v103)
        {
          sub_1D1C80150(v101, type metadata accessor for StaticServiceGroup);
LABEL_25:

          a1 = v98;
          goto LABEL_46;
        }
      }

      goto LABEL_55;
    }

    sub_1D1C80150(v67, type metadata accessor for StaticServiceGroup);
LABEL_46:
    v27 = v99;
    goto LABEL_47;
  }

  v99 = v27;
  v32 = v25;
  v33 = v100;
  sub_1D1C7FC04(v32, v100, type metadata accessor for StaticAccessory);
  v34 = *(v33 + *(v20 + 80));
  v35 = *(v34 + 16);
  if (!v35)
  {
    sub_1D1C80150(v33, type metadata accessor for StaticAccessory);
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v98 = a1;
  v114[0] = MEMORY[0x1E69E7CC0];

  sub_1D178CF80(0, v35, 0);
  v31 = v114[0];
  v36 = v34 + 64;
  result = sub_1D1E6869C();
  v38 = result;
  v39 = 0;
  v101 = v34 + 72;
  v103 = v35;
  v104 = v34 + 64;
  while ((v38 & 0x8000000000000000) == 0 && v38 < 1 << *(v34 + 32))
  {
    v41 = v38 >> 6;
    if ((*(v36 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
    {
      goto LABEL_51;
    }

    v42 = *(v34 + 36);
    v111 = v39;
    v112 = v42;
    v43 = v34;
    v44 = v108;
    v45 = *(v108 + 48);
    v113 = v31;
    v46 = *(v43 + 48);
    v47 = sub_1D1E66A7C();
    v48 = *(v47 - 8);
    v49 = v105;
    (*(v48 + 16))(v105, v46 + *(v48 + 72) * v38, v47);
    sub_1D1C3EB34(*(v43 + 56) + *(v109 + 72) * v38, &v49[v45], type metadata accessor for StaticService);
    v50 = v106;
    (*(v48 + 32))(v106, v49, v47);
    sub_1D1C7FC04(&v49[v45], &v50[*(v44 + 48)], type metadata accessor for StaticService);
    v51 = v50;
    v52 = v107;
    sub_1D1741A90(v51, v107, &qword_1EC642DB0, &unk_1D1E6F360);
    v53 = v52 + *(v44 + 48);
    v54 = *(v53 + *(v110 + 104));
    sub_1D1C80150(v53, type metadata accessor for StaticService);
    v55 = v52;
    v31 = v113;
    result = (*(v48 + 8))(v55, v47);
    v114[0] = v31;
    v57 = *(v31 + 16);
    v56 = *(v31 + 24);
    if (v57 >= v56 >> 1)
    {
      result = sub_1D178CF80((v56 > 1), v57 + 1, 1);
      v31 = v114[0];
    }

    *(v31 + 16) = v57 + 1;
    *(v31 + v57 + 32) = v54;
    v40 = 1 << *(v43 + 32);
    if (v38 >= v40)
    {
      goto LABEL_52;
    }

    v36 = v104;
    v58 = *(v104 + 8 * v41);
    if ((v58 & (1 << v38)) == 0)
    {
      goto LABEL_53;
    }

    v34 = v43;
    if (v112 != *(v43 + 36))
    {
      goto LABEL_54;
    }

    v59 = v58 & (-2 << (v38 & 0x3F));
    if (v59)
    {
      v40 = __clz(__rbit64(v59)) | v38 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v60 = v41 << 6;
      v61 = v41 + 1;
      v62 = (v101 + 8 * v41);
      while (v61 < (v40 + 63) >> 6)
      {
        v64 = *v62++;
        v63 = v64;
        v60 += 64;
        ++v61;
        if (v64)
        {
          result = sub_1D1716920(v38, v112, 0);
          v40 = __clz(__rbit64(v63)) + v60;
          goto LABEL_7;
        }
      }

      result = sub_1D1716920(v38, v112, 0);
    }

LABEL_7:
    v39 = v111 + 1;
    v38 = v40;
    if (v111 + 1 == v103)
    {
      sub_1D1C80150(v100, type metadata accessor for StaticAccessory);
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t TileInfoBearer.debugDescription.getter(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v70 - v5;
  v6 = type metadata accessor for StatusStrings.Options(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78[0] = 0;
  *(&v78[0] + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v80 = v78[0];
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v14 = (*(a2 + 144))(a1, a2);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v14 = 0x6E776F6E6B6E75;
    v16 = 0xE700000000000000;
  }

  MEMORY[0x1D3890F70](v14, v16);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E6886C();
  sub_1D1886B8C();
  v17 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v17);

  (*(v11 + 8))(v13, v10);
  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v18 = (*(a2 + 56))(a1, a2);
  MEMORY[0x1D3890F70](v18);

  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v19 = v7[13];
  v20 = sub_1D1E669FC();
  (*(*(v20 - 8) + 56))(&v9[v19], 1, 1, v20);
  *v9 = 65793;
  *(v9 + 2) = 1;
  v9[6] = 0;
  v9[v7[14]] = 2;
  v21 = &v9[v7[15]];
  v21[4] = 0;
  *v21 = 2;
  v22 = type metadata accessor for StaticMatterDevice(0);
  v23 = v71;
  (*(*(v22 - 8) + 56))(v71, 1, 1, v22);
  v24 = (*(a2 + 192))(v9, v23, a1, a2);
  v26 = v25;
  sub_1D1741A30(v23, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C80150(v9, type metadata accessor for StatusStrings.Options);
  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = 7104878;
  }

  if (!v26)
  {
    v26 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v27, v26);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  v28 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v28);

  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  (*(a2 + 72))(v78, a1, a2);
  v75 = v78[2];
  v76 = v78[3];
  v77[0] = v79[0];
  *(v77 + 9) = *(v79 + 9);
  v73 = v78[0];
  v74 = v78[1];
  sub_1D1E68ABC();
  sub_1D18A98A0(v78);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v29 = (*(a2 + 88))(a1, a2);
  v30 = (v29 & 1) == 0;
  if (v29)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (v30)
  {
    v32 = 0xE500000000000000;
  }

  else
  {
    v32 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v31, v32);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  v33 = (*(a2 + 176))(a1, a2);
  v34 = (v33 & 1) == 0;
  if (v33)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v34)
  {
    v36 = 0xE500000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v35, v36);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  v37 = *(a2 + 96);
  v71 = a1;
  v38 = v37(a1, a2);
  v39 = *(v38 + 16);
  if (v39)
  {
    *&v73 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v39, 0);
    v40 = 32;
    v41 = v73;
    do
    {
      v72 = *(v38 + v40);
      v42 = ServiceKind.localizedDescription.getter();
      *&v73 = v41;
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        v70 = v42;
        v47 = v43;
        sub_1D178CD24((v44 > 1), v45 + 1, 1);
        v43 = v47;
        v42 = v70;
        v41 = v73;
      }

      *(v41 + 16) = v45 + 1;
      v46 = v41 + 16 * v45;
      *(v46 + 32) = v42;
      *(v46 + 40) = v43;
      ++v40;
      --v39;
    }

    while (v39);
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
  }

  *&v73 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v48 = sub_1D1E6770C();
  v50 = v49;

  MEMORY[0x1D3890F70](v48, v50);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  v51 = v71;
  v52 = (*(a2 + 136))(v71, a2);
  v53 = sub_1D1C75ED0(v52);

  *&v73 = v53;
  v54 = sub_1D1E6770C();
  v56 = v55;

  MEMORY[0x1D3890F70](v54, v56);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  v57 = (*(a2 + 120))(v51, a2);
  v58 = (v57 & 1) == 0;
  if (v57)
  {
    v59 = 1702195828;
  }

  else
  {
    v59 = 0x65736C6166;
  }

  if (v58)
  {
    v60 = 0xE500000000000000;
  }

  else
  {
    v60 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v59, v60);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  v61 = (*(a2 + 128))(v51, a2);
  v62 = (v61 & 1) == 0;
  if (v61)
  {
    v63 = 1702195828;
  }

  else
  {
    v63 = 0x65736C6166;
  }

  if (v62)
  {
    v64 = 0xE500000000000000;
  }

  else
  {
    v64 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v63, v64);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v65 = (*(a2 + 152))(v51, a2);
  v66 = (v65 & 1) == 0;
  if (v65)
  {
    v67 = 1702195828;
  }

  else
  {
    v67 = 0x65736C6166;
  }

  if (v66)
  {
    v68 = 0xE500000000000000;
  }

  else
  {
    v68 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v67, v68);

  return v80;
}

uint64_t sub_1D1C78A48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  ActionMatterDevice.mainActionEndpoint.getter(v2);
  v7 = type metadata accessor for ActionEndpoint(0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1741A30(v2, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v9 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
    sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1C80150(v2, type metadata accessor for ActionEndpoint);
    return v9;
  }
}

uint64_t sub_1D1C78C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = a4(a1, v8);
  sub_1D1741A30(v8, &qword_1EC643650, &qword_1D1E71D40);
  return v10;
}

uint64_t sub_1D1C78D3C(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  (*(*(a2 - 8) + 56))(&v9 - v5, 1, 1, a2);
  v7 = StaticMatterDevice.statusString(with:associatedMatterDevice:)(a1);
  sub_1D1741A30(v6, &qword_1EC643650, &qword_1D1E71D40);
  return v7;
}

uint64_t sub_1D1C78E2C()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 96))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1C78EAC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(a2 + 60)) == 2)
  {
    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC64E0);
  }

  else
  {
    return 0;
  }
}

uint64_t TileInfoBearer.cameraProfile.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for StaticCameraProfile(0);
  v6 = swift_dynamicCast();
  return (*(*(v5 - 8) + 56))(a2, v6 ^ 1u, 1, v5);
}

uint64_t TileInfoBearer.statusString(for:associatedMatterDevice:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for StatusStrings.Options(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v14 = v11[13];
  v15 = sub_1D1E669FC();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  *v13 = 65793;
  v13[4] = a1;
  *(v13 + 5) = 0;
  v13[v11[14]] = 2;
  v16 = &v13[v11[15]];
  v16[4] = 0;
  *v16 = 2;
  v17 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = (*(a4 + 192))(v13, v9, a3, a4);
  sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C80150(v13, type metadata accessor for StatusStrings.Options);
  return v18;
}

void TileInfoBearer.primaryStaticService.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v69 = type metadata accessor for StaticService(0);
  v5 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v60 = *(v68 - 8);
  v8 = MEMORY[0x1EEE9AC00](v68);
  v66 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v61 = &v53 - v15;
  v16 = type metadata accessor for StaticAccessory(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  v22 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v2, a1);
  if (swift_dynamicCast())
  {
    v69 = v71;
    v70 = v71;
    sub_1D1BA89F0(a2);

LABEL_22:
    (*(v22 + 8))(v24, a1);
    return;
  }

  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_1D1C7FC04(v7, a2, type metadata accessor for StaticService);
      (*(v5 + 56))(a2, 0, 1, v69);
    }

    else
    {
      (*(v5 + 56))(a2, 1, 1, v69);
    }

    goto LABEL_22;
  }

  v54 = v24;
  v62 = v5;
  v55 = a2;
  v56 = a1;
  v25 = v63;
  sub_1D1C7FC04(v21, v63, type metadata accessor for StaticAccessory);
  v26 = *(v25 + *(v16 + 80));
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v32 = 0;
  v57 = v26 + 64;
  v58 = v26;
  v59 = v22;
  if (v30)
  {
    while (1)
    {
      v33 = v69;
      v34 = v32;
LABEL_12:
      v35 = __clz(__rbit64(v30)) | (v34 << 6);
      v36 = *(v26 + 48);
      v37 = sub_1D1E66A7C();
      v38 = *(v37 - 8);
      v64 = v37;
      v65 = v38;
      (*(v38 + 16))(v13, v36 + *(v38 + 72) * v35, v37);
      v39 = *(v26 + 56) + *(v62 + 72) * v35;
      v40 = v68;
      sub_1D1C3EB34(v39, &v13[*(v68 + 48)], type metadata accessor for StaticService);
      v41 = v13;
      v42 = v13;
      v43 = v67;
      sub_1D1741A90(v42, v67, &qword_1EC642DB0, &unk_1D1E6F360);
      v44 = v66;
      sub_1D1741C08(v43, v66, &qword_1EC642DB0, &unk_1D1E6F360);
      v45 = v44 + *(v40 + 48);
      LODWORD(v40) = *(v45 + *(v33 + 24));
      sub_1D1C80150(v45, type metadata accessor for StaticService);
      (*(v65 + 8))(v44, v64);
      if (v40 == 1)
      {
        break;
      }

      v30 &= v30 - 1;
      sub_1D1741A30(v43, &qword_1EC642DB0, &unk_1D1E6F360);
      v32 = v34;
      v13 = v41;
      v26 = v58;
      v22 = v59;
      v27 = v57;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

    sub_1D1C80150(v63, type metadata accessor for StaticAccessory);

    v47 = v61;
    sub_1D1741A90(v43, v61, &qword_1EC642DB0, &unk_1D1E6F360);
    v46 = v60;
    v48 = v68;
    (*(v60 + 56))(v47, 0, 1, v68);
    v22 = v59;
LABEL_18:

    v49 = (*(v46 + 48))(v47, 1, v48);
    v50 = v55;
    a1 = v56;
    v51 = v62;
    v24 = v54;
    if (v49 == 1)
    {
      sub_1D1741A30(v47, &qword_1EC643C68, &unk_1D1E764C0);
      (*(v51 + 56))(v50, 1, 1, v69);
    }

    else
    {
      sub_1D1C7FC04(v47 + *(v48 + 48), v55, type metadata accessor for StaticService);
      (*(v51 + 56))(v50, 0, 1, v69);
      v52 = sub_1D1E66A7C();
      (*(*(v52 - 8) + 8))(v47, v52);
    }

    goto LABEL_22;
  }

LABEL_8:
  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      sub_1D1C80150(v63, type metadata accessor for StaticAccessory);

      v46 = v60;
      v47 = v61;
      v48 = v68;
      (*(v60 + 56))(v61, 1, 1, v68);
      goto LABEL_18;
    }

    v30 = *(v27 + 8 * v34);
    ++v32;
    if (v30)
    {
      v33 = v69;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t TileInfoBearer.tileStatusStringIconSymbolSuffix.getter(uint64_t a1)
{
  v65 = type metadata accessor for StaticService(0);
  v2 = MEMORY[0x1EEE9AC00](v65);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v61 - v4;
  v68 = type metadata accessor for StaticMediaSystem(0);
  v5 = MEMORY[0x1EEE9AC00](v68);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v61 - v7;
  v72 = type metadata accessor for StaticMediaProfile(0);
  v8 = MEMORY[0x1EEE9AC00](v72);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v61 - v14;
  v15 = type metadata accessor for StaticMatterDevice(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v73 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  v20 = type metadata accessor for StaticServiceGroup(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - v24;
  v26 = type metadata accessor for StaticAccessory(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v61 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v35;
  (*(v35 + 16))(v34, v74, a1);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_1D1C7FC04(v25, v23, type metadata accessor for StaticServiceGroup);
      v37 = StaticServiceGroup.tileStatusStringIconSymbolSuffix.getter();
      v41 = type metadata accessor for StaticServiceGroup;
LABEL_6:
      v39 = v41;
      v40 = v23;
      goto LABEL_18;
    }

    if (!swift_dynamicCast())
    {
      v51 = v71;
      v52 = v72;
      if (swift_dynamicCast())
      {
        v53 = v51;
        v54 = v66;
        sub_1D1C7FC04(v53, v66, type metadata accessor for StaticMediaProfile);
        v37 = sub_1D1C08924(*(v54 + v52[15]), v54 + v52[25], *(v54 + v52[24]));
        v55 = type metadata accessor for StaticMediaProfile;
      }

      else
      {
        v56 = v67;
        v57 = v68;
        if (!swift_dynamicCast())
        {
          v60 = v64;
          v37 = 0;
          if (!swift_dynamicCast())
          {
            goto LABEL_19;
          }

          v29 = v62;
          sub_1D1C7FC04(v60, v62, type metadata accessor for StaticService);
          v37 = StaticService.tileStatusStringIconSymbolSuffix.getter();
          v38 = type metadata accessor for StaticService;
          goto LABEL_3;
        }

        v58 = v56;
        v54 = v63;
        sub_1D1C7FC04(v58, v63, type metadata accessor for StaticMediaSystem);
        v37 = sub_1D1C08924(*(v54 + v57[13]), v54 + v57[18], *(v54 + v57[17]));
        v55 = type metadata accessor for StaticMediaSystem;
      }

      v39 = v55;
      v40 = v54;
      goto LABEL_18;
    }

    v42 = v19;
    v43 = v73;
    v44 = sub_1D1C7FC04(v42, v73, type metadata accessor for StaticMatterDevice);
    if (*(v43 + *(v15 + 28)) == 1)
    {
      v45 = *(v43 + *(v15 + 56));
      MEMORY[0x1EEE9AC00](v44);
      *(&v61 - 2) = v43;

      v46 = v69;
      sub_1D1746B78(sub_1D18076C8, v45, v69);

      v47 = type metadata accessor for StaticEndpoint(0);
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);
      if (v49(v46, 1, v47) == 1)
      {

        v23 = v70;
        sub_1D1771D7C(v50, v70);

        if (v49(v46, 1, v47) != 1)
        {
          sub_1D1741A30(v46, &qword_1EC644780, &qword_1D1E91AA0);
        }
      }

      else
      {
        v23 = v70;
        sub_1D1C7FC04(v46, v70, type metadata accessor for StaticEndpoint);
        (*(v48 + 56))(v23, 0, 1, v47);
      }

      if (v49(v23, 1, v47) != 1)
      {
        v37 = StaticEndpoint.tileStatusStringIconSymbolSuffix.getter();
        sub_1D1C80150(v43, type metadata accessor for StaticMatterDevice);
        v41 = type metadata accessor for StaticEndpoint;
        goto LABEL_6;
      }

      sub_1D1C80150(v43, type metadata accessor for StaticMatterDevice);
      sub_1D1741A30(v23, &qword_1EC644780, &qword_1D1E91AA0);
    }

    else
    {
      sub_1D1C80150(v43, type metadata accessor for StaticMatterDevice);
    }

    v37 = 0;
    goto LABEL_19;
  }

  sub_1D1C7FC04(v32, v29, type metadata accessor for StaticAccessory);
  StaticAccessory.tileStatusStringIconSymbolSuffix.getter();
  v37 = v36;
  v38 = type metadata accessor for StaticAccessory;
LABEL_3:
  v39 = v38;
  v40 = v29;
LABEL_18:
  sub_1D1C80150(v40, v39);
LABEL_19:
  (*(v75 + 8))(v34, a1);
  return v37;
}

void TileInfoBearer.writeInProgress.getter(uint64_t a1)
{
  v73 = type metadata accessor for StaticServiceGroup(0);
  v2 = MEMORY[0x1EEE9AC00](v73);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v69 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = MEMORY[0x1EEE9AC00](v80);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v79 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v69 - v10;
  v11 = type metadata accessor for StaticAccessory(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v74 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - v14;
  v16 = type metadata accessor for StaticService(0);
  v78 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v77 = v24;
  v25 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))();
  if (swift_dynamicCast())
  {
    sub_1D1C7FC04(v22, v19, type metadata accessor for StaticService);
    sub_1D1C7AAF4();
    sub_1D1C80150(v19, type metadata accessor for StaticService);
LABEL_31:
    (*(v77 + 8))(v25, a1);
    return;
  }

  if (swift_dynamicCast())
  {
    v70 = v25;
    v71 = a1;
    v26 = v74;
    sub_1D1C7FC04(v15, v74, type metadata accessor for StaticAccessory);
    v27 = *(v26 + *(v11 + 80));
    v30 = *(v27 + 64);
    v29 = v27 + 64;
    v28 = v30;
    v31 = 1 << *(*(v26 + *(v11 + 80)) + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v28;
    v34 = (v31 + 63) >> 6;
    v73 = *(v26 + *(v11 + 80));
    swift_bridgeObjectRetain_n();
    v35 = 0;
    while (v33)
    {
      v36 = v35;
LABEL_13:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v73;
      v40 = *(v73 + 48);
      v75 = sub_1D1E66A7C();
      v41 = *(v75 - 1);
      v42 = v76;
      (*(v41 + 16))(v76, v40 + *(v41 + 72) * v38, v75);
      v43 = *(v39 + 56) + *(v78 + 72) * v38;
      v44 = v80;
      sub_1D1C3EB34(v43, v42 + *(v80 + 48), type metadata accessor for StaticService);
      v45 = v79;
      sub_1D1741C08(v42, v79, &qword_1EC642DB0, &unk_1D1E6F360);
      v46 = *(v44 + 48);
      LOBYTE(v44) = sub_1D1C7AAF4();
      sub_1D1741A30(v42, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1C80150(v45 + v46, type metadata accessor for StaticService);
      (*(v41 + 8))(v45, v75);
      if (v44)
      {
LABEL_27:
        sub_1D1C80150(v74, type metadata accessor for StaticAccessory);
        goto LABEL_30;
      }
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v34)
      {
        goto LABEL_27;
      }

      v33 = *(v29 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v47 = v73;
    if (!swift_dynamicCast())
    {
      goto LABEL_31;
    }

    v70 = v25;
    v71 = a1;
    v48 = v72;
    sub_1D1C7FC04(v5, v72, type metadata accessor for StaticServiceGroup);
    v49 = *(v48 + *(v47 + 56));
    v52 = *(v49 + 64);
    v51 = v49 + 64;
    v50 = v52;
    v53 = 1 << *(*(v48 + *(v47 + 56)) + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & v50;
    v56 = (v53 + 63) >> 6;
    v74 = *(v48 + *(v47 + 56));
    swift_bridgeObjectRetain_n();
    v57 = 0;
    while (v55)
    {
      v58 = v57;
LABEL_25:
      v59 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v60 = v59 | (v58 << 6);
      v61 = v74;
      v62 = *(v74 + 48);
      v76 = sub_1D1E66A7C();
      v63 = *(v76 - 1);
      v64 = v75;
      (*(v63 + 16))(v75, v62 + *(v63 + 72) * v60, v76);
      v65 = *(v61 + 56) + *(v78 + 72) * v60;
      v66 = v80;
      sub_1D1C3EB34(v65, v64 + *(v80 + 48), type metadata accessor for StaticService);
      v67 = v79;
      sub_1D1741C08(v64, v79, &qword_1EC642DB0, &unk_1D1E6F360);
      v68 = *(v66 + 48);
      LOBYTE(v66) = sub_1D1C7AAF4();
      sub_1D1741A30(v64, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1C80150(v67 + v68, type metadata accessor for StaticService);
      (*(v63 + 8))(v67, v76);
      if (v66)
      {
LABEL_29:
        sub_1D1C80150(v72, type metadata accessor for StaticServiceGroup);
LABEL_30:

        v25 = v70;
        a1 = v71;
        goto LABEL_31;
      }
    }

    while (1)
    {
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        goto LABEL_29;
      }

      v55 = *(v51 + 8 * v58);
      ++v57;
      if (v55)
      {
        v57 = v58;
        goto LABEL_25;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1D1C7AAF4()
{
  v1 = type metadata accessor for StaticCharacteristic(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StaticService(0);
  v6 = *(v0 + *(result + 128));
  v7 = v6[2];
  if (v7)
  {
    v8 = sub_1D18044EC(v6[2], 0);
    v9 = sub_1D1805F54(v26, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v7, v6);
    v10 = v26[0];
    v24[1] = v26[4];
    v25 = v9;

    result = sub_1D1716918(v10);
    if (v25 != v7)
    {
      goto LABEL_29;
    }

    v11 = v8[2];
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {
LABEL_26:
      v23 = 0;
LABEL_27:

      return v23;
    }
  }

  v12 = 0;
  while (v12 < v8[2])
  {
    sub_1D1C3EB34(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v4, type metadata accessor for StaticCharacteristic);
    v19 = &v4[*(v1 + 32)];
    v20 = *v19;
    v16 = *(v19 + 1);
    v17 = *(v19 + 2);
    v21 = v19[24];
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v13 = v17;
        v14 = v16;

        v15 = v20;
        v16 = v14;
        v17 = v13;
        v18 = 2;
      }

      else
      {
        if (v17 | v16 | v20)
        {
          if (v20 == 1 && (v17 | v16) == 0)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        v17 = 0;
        v18 = 3;
      }

      goto LABEL_8;
    }

    if (!v21)
    {
      v15 = v20;
      v18 = 0;
LABEL_8:
      sub_1D1757A60(v15, v16, v17, v18);
      sub_1D1757A60(0, 0, 0, 1);
      result = sub_1D1C80150(v4, type metadata accessor for StaticCharacteristic);
      goto LABEL_9;
    }

    v23 = 1;
    sub_1D1757A60(v20, v16, v17, 1);
    sub_1D1757A60(0, 0, 0, 1);
    result = sub_1D1C80150(v4, type metadata accessor for StaticCharacteristic);
    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_9:
    if (v11 == ++v12)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t TileInfoBearer.uuid.getter@<X0>(uint64_t a3@<X8>)
{
  sub_1D1E6886C();
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t TileInfoBearer.isAccessoryLike.getter(uint64_t a1)
{
  v3 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticAccessory(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v1, a1);
  if (swift_dynamicCast())
  {
    v13 = type metadata accessor for StaticAccessory;
    v14 = v9;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v15 = 0;
      goto LABEL_7;
    }

    v13 = type metadata accessor for StaticService;
    v14 = v5;
  }

  sub_1D1C80150(v14, v13);
  v15 = 1;
LABEL_7:
  (*(v10 + 8))(v12, a1);
  return v15;
}

BOOL TileInfoBearer.hasError.getter(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticActionSet(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  v17 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v2, a1);
  if (swift_dynamicCast())
  {
    sub_1D1C7FC04(v16, v13, type metadata accessor for StaticActionSet);
    v20 = v13[*(v10 + 60)];
    sub_1D1C80150(v13, type metadata accessor for StaticActionSet);
    v21 = v20 == 2;
  }

  else
  {
    v22 = v7[11];
    v23 = sub_1D1E669FC();
    (*(*(v23 - 8) + 56))(&v9[v22], 1, 1, v23);
    *v9 = 257;
    *(v9 + 2) = 0;
    v9[6] = 0;
    v9[v7[12]] = 2;
    v24 = &v9[v7[13]];
    v24[4] = 0;
    *v24 = 2;
    v25 = type metadata accessor for StaticMatterDevice(0);
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    (*(v29 + 192))(v9, v6, a1);
    v21 = v26;
    sub_1D1741A30(v6, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1C80150(v9, type metadata accessor for StatusStrings.Options);
    if (v21)
    {

      v21 = 1;
    }
  }

  (*(v17 + 8))(v19, a1);
  return v21;
}

BOOL TileInfoBearer.hasError(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v6 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticActionSet(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - v14;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v3, a2);
  if (swift_dynamicCast())
  {
    sub_1D1C7FC04(v15, v12, type metadata accessor for StaticActionSet);
    v19 = v12[*(v9 + 60)];
    sub_1D1C80150(v12, type metadata accessor for StaticActionSet);
    v20 = v19 == 2;
  }

  else
  {
    v21 = v6[11];
    v22 = sub_1D1E669FC();
    (*(*(v22 - 8) + 56))(&v8[v21], 1, 1, v22);
    *v8 = 257;
    *(v8 + 2) = 0;
    v8[6] = 0;
    v8[v6[12]] = 2;
    v23 = &v8[v6[13]];
    v23[4] = 0;
    *v23 = 2;
    (*(a3 + 192))(v8, v27, a2, a3);
    v20 = v24;
    sub_1D1C80150(v8, type metadata accessor for StatusStrings.Options);
    if (v20)
    {

      v20 = 1;
    }
  }

  (*(v16 + 8))(v18, a2);
  return v20;
}

uint64_t static HomeState.toggleAll(_:)(uint64_t a1)
{
  v1[49] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646080, &qword_1D1E7E488);
  v1[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  v1[51] = swift_task_alloc();
  v2 = type metadata accessor for StaticServiceGroup(0);
  v1[52] = v2;
  v1[53] = *(v2 - 8);
  v1[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v1[56] = swift_task_alloc();
  v3 = type metadata accessor for StaticAccessory(0);
  v1[57] = v3;
  v1[58] = *(v3 - 8);
  v1[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v4 = type metadata accessor for StaticService(0);
  v1[63] = v4;
  v1[64] = *(v4 - 8);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v1[70] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v1[71] = v5;
  v1[72] = *(v5 - 8);
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C7BA40, 0, 0);
}

uint64_t sub_1D1C7BA40()
{
  v1 = *(v0 + 392);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 344) = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  *(v0 + 632) = v3;
  if (v3)
  {
    v4 = *(v0 + 576);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 800) = v6;
    *(v0 + 640) = *(v4 + 56);
    *(v0 + 648) = v5;
    *(v0 + 656) = 0;
    v5(*(v0 + 624), v1 + ((v6 + 32) & ~v6), *(v0 + 568));
    if (qword_1EE07AF78 != -1)
    {
LABEL_53:
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v7 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v7 == 2 || (v7 & 1) == 0)
    {
      type metadata accessor for HomeState.Stream();
      swift_allocObject();
      v8 = HomeState.Stream.init()();
    }

    else
    {
      if (qword_1EC642308 != -1)
      {
        swift_once();
      }

      sub_1D1E693FC();
      v8 = *(v0 + 384);
      if (!v8)
      {
        if (qword_1EC642310 != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&dword_1EC649BC0);
        if (off_1EC649BC8)
        {
          v8 = off_1EC649BC8;
        }

        else
        {
          type metadata accessor for HomeState.Stream();
          swift_allocObject();
          off_1EC649BC8 = HomeState.Stream.init()();
          v8 = off_1EC649BC8;
        }

        os_unfair_lock_unlock(&dword_1EC649BC0);
      }
    }

    *(v0 + 664) = v8[3];

    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC64ABE8;
    v10 = sub_1D1C7C044;
  }

  else
  {
    *(v0 + 672) = v2;
    v13 = sub_1D18D7C70(v2);
    *(v0 + 272) = v13;
    *(v0 + 280) = 0;
    *(v0 + 288) = 2;
    v14 = *(v2 + 16);
    *(v0 + 680) = v14;
    if (!v14)
    {
      v20 = v13;

      v21 = 0;
      v22 = 2;
LABEL_27:
      *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
      *(v0 + 296) = v20;
      *(v0 + 304) = v21;
      *(v0 + 312) = v22;
      v23 = swift_task_alloc();
      *(v0 + 792) = v23;
      *v23 = v0;
      v23[1] = sub_1D1C7E51C;
      v24 = *(v0 + 400);

      return HomeState.Stream.write(characteristicValueSet:timeout:)(v24, (v0 + 296), 0, 1);
    }

    v15 = 0;
    *(v0 + 804) = *(*(v0 + 512) + 80);
    while (1)
    {
      *(v0 + 696) = v15;
      *(v0 + 688) = 0;
      v16 = *(v0 + 672);
      if (v15 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      v17 = *(v0 + 520);
      v18 = *(v0 + 504);
      sub_1D1C3EB34(v16 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v15, v17, type metadata accessor for StaticService);
      v19 = *(v17 + *(v18 + 104));
      if (v19 <= 0x30)
      {
        if (((1 << v19) & 0x1940000320008) != 0)
        {
          v26 = 3;
          goto LABEL_33;
        }

        if (((1 << v19) & 0x20410010000) != 0)
        {
          v26 = 105;
          goto LABEL_33;
        }

        if (((1 << v19) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v15 = *(v0 + 696) + 1;
      if (v15 == *(v0 + 680))
      {

        v20 = *(v0 + 272);
        v21 = *(v0 + 280);
        v22 = *(v0 + 288);
        goto LABEL_27;
      }
    }

    v26 = 84;
LABEL_33:
    *(v0 + 808) = v26;
    if (qword_1EE07AF78 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v27 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v27 == 2 || (v27 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v28 = *(v0 + 352);
    if (!v28)
    {
      if (qword_1EC642310 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC649BC0);
      v28 = off_1EC649BC8;

      os_unfair_lock_unlock(&dword_1EC649BC0);
      if (!v28)
      {
LABEL_46:
        *(v0 + 728) = sub_1D1E67E1C();
        *(v0 + 736) = sub_1D1E67E0C();
        v29 = sub_1D1E67D4C();
        v31 = v30;
        v11 = sub_1D1C7DD04;
        v9 = v29;
        v12 = v31;
        goto LABEL_47;
      }
    }

    *(v0 + 704) = v28;
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC64ABE8;
    v10 = sub_1D1C7CFF0;
  }

  v11 = v10;
  v12 = 0;
LABEL_47:

  return MEMORY[0x1EEE6DFA0](v11, v9, v12);
}

uint64_t sub_1D1C7C044()
{
  HomeState.AllHomesModel.currentStateSnapshot.getter(*(v0 + 560));

  return MEMORY[0x1EEE6DFA0](sub_1D1C7C0B8, 0, 0);
}

uint64_t sub_1D1C7C0B8()
{
  v1 = *(v0 + 560);
  v2 = type metadata accessor for StateSnapshot(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  else
  {
    StateSnapshot.tileInfo(for:)(*(v0 + 624), (v0 + 16));
    sub_1D1C80150(v1, type metadata accessor for StateSnapshot);
  }

  sub_1D1741C08(v0 + 16, v0 + 56, &qword_1EC643668, &qword_1D1E71D60);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 496);
  if (!*(v0 + 80))
  {
    sub_1D1741A30(v0 + 56, &qword_1EC643668, &qword_1D1E71D60);
    v7 = *(v4 + 56);
    v7(v5, 1, 1, v3);
LABEL_12:
    sub_1D1741A30(*(v0 + 496), &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741C08(v0 + 16, v0 + 96, &qword_1EC643668, &qword_1D1E71D60);
    v19 = *(v0 + 456);
    v20 = *(v0 + 464);
    v21 = *(v0 + 448);
    if (*(v0 + 120))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      v22 = swift_dynamicCast();
      (*(v20 + 56))(v21, v22 ^ 1u, 1, v19);
      if ((*(v20 + 48))(v21, 1, v19) != 1)
      {
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 472);
        v26 = *(v0 + 456);
        v27 = *(v0 + 440);
        sub_1D1C7FC04(*(v0 + 448), v25, type metadata accessor for StaticAccessory);
        sub_1D1741C08(v25 + *(v26 + 88), v27, &qword_1EC642590, qword_1D1E71260);
        if ((*(v23 + 48))(v27, 1, v24) == 1)
        {
          sub_1D1741A30(*(v0 + 440), &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v47 = *(v0 + 472);
          v48 = *(v0 + 456);
          (*(*(v0 + 576) + 32))(*(v0 + 616), *(v0 + 440), *(v0 + 568));
          v49 = *(v47 + *(v48 + 80));
          if (*(v49 + 16))
          {

            v50 = sub_1D1742188();
            v51 = *(v0 + 616);
            v52 = *(v0 + 576);
            v53 = *(v0 + 568);
            if (v54)
            {
              sub_1D1C3EB34(*(v49 + 56) + *(*(v0 + 512) + 72) * v50, *(v0 + 480), type metadata accessor for StaticService);
              (*(v52 + 8))(v51, v53);

              v55 = 0;
LABEL_30:
              v56 = *(v0 + 504);
              v57 = *(v0 + 512);
              v59 = *(v0 + 480);
              v58 = *(v0 + 488);
              v7(v59, v55, 1, v56);
              sub_1D1741A90(v59, v58, &qword_1EC6436F0, &qword_1D1E99BC0);
              if ((*(v57 + 48))(v58, 1, v56) != 1)
              {
                v61 = *(v0 + 536);
                v62 = *(v0 + 528);
                sub_1D1C7FC04(*(v0 + 488), v61, type metadata accessor for StaticService);
                sub_1D1C3EB34(v61, v62, type metadata accessor for StaticService);
                v10 = *(v0 + 344);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v10 = sub_1D177D048(0, v10[2] + 1, 1, v10);
                }

                v64 = v10[2];
                v63 = v10[3];
                if (v64 >= v63 >> 1)
                {
                  v10 = sub_1D177D048((v63 > 1), v64 + 1, 1, v10);
                }

                v65 = *(v0 + 624);
                v66 = *(v0 + 576);
                v67 = *(v0 + 568);
                v16 = *(v0 + 528);
                v68 = *(v0 + 512);
                v69 = *(v0 + 472);
                sub_1D1C80150(*(v0 + 536), type metadata accessor for StaticService);
                sub_1D1C80150(v69, type metadata accessor for StaticAccessory);
                sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
                (*(v66 + 8))(v65, v67);
                v10[2] = v64 + 1;
                v18 = v10 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v64;
                goto LABEL_37;
              }

              v60 = *(v0 + 488);
              sub_1D1C80150(*(v0 + 472), type metadata accessor for StaticAccessory);
              v29 = &qword_1EC6436F0;
              v30 = &qword_1D1E99BC0;
              v28 = v60;
LABEL_18:
              sub_1D1741A30(v28, v29, v30);
              sub_1D1741C08(v0 + 16, v0 + 136, &qword_1EC643668, &qword_1D1E71D60);
              if (*(v0 + 160))
              {
                v31 = *(v0 + 416);
                v32 = *(v0 + 424);
                v33 = *(v0 + 408);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
                v34 = swift_dynamicCast();
                (*(v32 + 56))(v33, v34 ^ 1u, 1, v31);
                v35 = (*(v32 + 48))(v33, 1, v31);
                v36 = *(v0 + 624);
                v37 = *(v0 + 576);
                v38 = *(v0 + 568);
                if (v35 != 1)
                {
                  v45 = *(v0 + 432);
                  sub_1D1C7FC04(*(v0 + 408), v45, type metadata accessor for StaticServiceGroup);

                  sub_1D17A5D28(v46);
                  sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
                  (*(v37 + 8))(v36, v38);
                  sub_1D1C80150(v45, type metadata accessor for StaticServiceGroup);
                  goto LABEL_38;
                }

                sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
                (*(v37 + 8))(v36, v38);
              }

              else
              {
                v39 = *(v0 + 624);
                v40 = *(v0 + 576);
                v41 = *(v0 + 568);
                v42 = *(v0 + 416);
                v43 = *(v0 + 424);
                v44 = *(v0 + 408);
                sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
                (*(v40 + 8))(v39, v41);
                sub_1D1741A30(v0 + 136, &qword_1EC643668, &qword_1D1E71D60);
                (*(v43 + 56))(v44, 1, 1, v42);
              }

              sub_1D1741A30(*(v0 + 408), &qword_1EC64CC40, &unk_1D1EAADA0);
              goto LABEL_38;
            }

            (*(v52 + 8))(v51, v53);
          }

          else
          {
            (*(*(v0 + 576) + 8))(*(v0 + 616), *(v0 + 568));
          }
        }

        v55 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      sub_1D1741A30(v0 + 96, &qword_1EC643668, &qword_1D1E71D60);
      (*(v20 + 56))(v21, 1, 1, v19);
    }

    v28 = *(v0 + 448);
    v29 = &qword_1EC6436C8;
    v30 = &unk_1D1E97C40;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v6 = swift_dynamicCast();
  v7 = *(v4 + 56);
  v7(v5, v6 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 552);
  v9 = *(v0 + 544);
  sub_1D1C7FC04(*(v0 + 496), v8, type metadata accessor for StaticService);
  sub_1D1C3EB34(v8, v9, type metadata accessor for StaticService);
  v10 = *(v0 + 344);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1D177D048(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1D177D048((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 624);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 544);
  v17 = *(v0 + 512);
  sub_1D1C80150(*(v0 + 552), type metadata accessor for StaticService);
  sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
  (*(v14 + 8))(v13, v15);
  v10[2] = v12 + 1;
  v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v12;
LABEL_37:
  sub_1D1C7FC04(v16, v18, type metadata accessor for StaticService);
  *(v0 + 344) = v10;
LABEL_38:
  v70 = *(v0 + 656) + 1;
  if (v70 == *(v0 + 632))
  {
    v71 = *(v0 + 344);
    *(v0 + 672) = v71;
    v72 = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
    *(v0 + 272) = v72;
    *(v0 + 280) = 0;
    *(v0 + 288) = 2;
    v73 = *(v71 + 16);
    *(v0 + 680) = v73;
    if (!v73)
    {
      v79 = v72;

      v80 = 0;
      v81 = 2;
LABEL_64:
      *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
      *(v0 + 296) = v79;
      *(v0 + 304) = v80;
      *(v0 + 312) = v81;
      v88 = swift_task_alloc();
      *(v0 + 792) = v88;
      *v88 = v0;
      v88[1] = sub_1D1C7E51C;
      v89 = *(v0 + 400);

      return HomeState.Stream.write(characteristicValueSet:timeout:)(v89, (v0 + 296), 0, 1);
    }

    v74 = 0;
    *(v0 + 804) = *(*(v0 + 512) + 80);
    while (1)
    {
      *(v0 + 696) = v74;
      *(v0 + 688) = 0;
      v75 = *(v0 + 672);
      if (v74 >= *(v75 + 16))
      {
        __break(1u);
        goto LABEL_90;
      }

      v76 = *(v0 + 520);
      v77 = *(v0 + 504);
      sub_1D1C3EB34(v75 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v74, v76, type metadata accessor for StaticService);
      v78 = *(v76 + *(v77 + 104));
      if (v78 <= 0x30)
      {
        if (((1 << v78) & 0x1940000320008) != 0)
        {
          v91 = 3;
          goto LABEL_70;
        }

        if (((1 << v78) & 0x20410010000) != 0)
        {
          v91 = 105;
          goto LABEL_70;
        }

        if (((1 << v78) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v74 = *(v0 + 696) + 1;
      if (v74 == *(v0 + 680))
      {

        v79 = *(v0 + 272);
        v80 = *(v0 + 280);
        v81 = *(v0 + 288);
        goto LABEL_64;
      }
    }

    v91 = 84;
LABEL_70:
    *(v0 + 808) = v91;
    if (qword_1EE07AF78 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v92 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v92 == 2 || (v92 & 1) == 0)
    {
      goto LABEL_83;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v93 = *(v0 + 352);
    if (!v93)
    {
      if (qword_1EC642310 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC649BC0);
      v93 = off_1EC649BC8;

      os_unfair_lock_unlock(&dword_1EC649BC0);
      if (!v93)
      {
LABEL_83:
        *(v0 + 728) = sub_1D1E67E1C();
        *(v0 + 736) = sub_1D1E67E0C();
        v94 = sub_1D1E67D4C();
        v96 = v95;
        v86 = sub_1D1C7DD04;
        v84 = v94;
        v87 = v96;
        goto LABEL_84;
      }
    }

    *(v0 + 704) = v93;
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v84 = qword_1EC64ABE8;
    v85 = sub_1D1C7CFF0;
  }

  else
  {
    *(v0 + 656) = v70;
    (*(v0 + 648))(*(v0 + 624), *(v0 + 392) + ((*(v0 + 800) + 32) & ~*(v0 + 800)) + *(v0 + 640) * v70, *(v0 + 568));
    if (qword_1EE07AF78 != -1)
    {
LABEL_90:
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v82 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v82 == 2 || (v82 & 1) == 0)
    {
      type metadata accessor for HomeState.Stream();
      swift_allocObject();
      v83 = HomeState.Stream.init()();
    }

    else
    {
      if (qword_1EC642308 != -1)
      {
        swift_once();
      }

      sub_1D1E693FC();
      v83 = *(v0 + 384);
      if (!v83)
      {
        if (qword_1EC642310 != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&dword_1EC649BC0);
        if (off_1EC649BC8)
        {
          v83 = off_1EC649BC8;
        }

        else
        {
          type metadata accessor for HomeState.Stream();
          swift_allocObject();
          off_1EC649BC8 = HomeState.Stream.init()();
          v83 = off_1EC649BC8;
        }

        os_unfair_lock_unlock(&dword_1EC649BC0);
      }
    }

    *(v0 + 664) = v83[3];

    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v84 = qword_1EC64ABE8;
    v85 = sub_1D1C7C044;
  }

  v86 = v85;
  v87 = 0;
LABEL_84:

  return MEMORY[0x1EEE6DFA0](v86, v84, v87);
}

uint64_t sub_1D1C7CFF0()
{
  v44 = v0;
  v3 = v0[88];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (!v4)
  {
    v10 = v0[86];
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v5 = [v4 homes];
  sub_1D1821898();
  v6 = sub_1D1E67C1C();

  if (v6 >> 62)
  {
LABEL_37:
    v39 = sub_1D1E6873C();
    if (!v39)
    {
      goto LABEL_43;
    }

    v40 = v39;
    v7 = sub_1D1808600();

    sub_1D18D2FC0(v7 + 32, v40, v6);
    v42 = v41;

    if (v42 != v40)
    {
      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  while (1)
  {
    v8 = v0[86];
    v0[45] = v7;
    sub_1D1747DDC(v0 + 45);
    if (v8)
    {
      break;
    }

    v10 = 0;
    v6 = v0[45];
LABEL_10:
    v0[89] = v10;
    v11 = v0[75];
    v12 = v0[71];
    v13 = v0[65];
    v14 = *(v0[72] + 16);
    v14(v0[76], v13, v12);
    v14(v11, v13, v12);
    v1 = v6 & 0xFFFFFFFFFFFFFF8;
    v2 = v6 >> 62;
    if (v6 >> 62)
    {
LABEL_40:
      v15 = sub_1D1E6873C();
    }

    else
    {
      v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v17 = v6 & 0xC000000000000001;
    while (v15 != v16)
    {
      if (v17)
      {
        v18 = MEMORY[0x1D3891EF0](v16, v6);
      }

      else
      {
        if (v16 >= *(v1 + 16))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v18 = *(v6 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v0[75];
      v43[0] = v18;
      sub_1D1A8B334(v43, v20, v0 + 46);

      v21 = v0[46];
      if (v21)
      {
        v15 = v16;
        break;
      }

      if (__OFADD__(v16++, 1))
      {
        goto LABEL_36;
      }
    }

    if (v2)
    {
      if (v15 == sub_1D1E6873C())
      {
LABEL_31:
        v33 = v0[75];
        v34 = v0[71];
        v35 = *(v0[72] + 8);
        v35(v0[76], v34);

        v35(v33, v34);
        v32 = sub_1D1C7D3BC;
        goto LABEL_32;
      }
    }

    else if (v15 == *(v1 + 16))
    {
      goto LABEL_31;
    }

    if (v17)
    {
      v23 = MEMORY[0x1D3891EF0](v15, v6);
LABEL_28:
      v24 = v23;
      v25 = v0[76];
      v26 = v0[72];
      v27 = v0[71];
      v43[0] = v23;
      sub_1D1A8B334(v43, v25, v0 + 47);
      v28 = *(v26 + 8);
      v28(v25, v27);

      v29 = v0[47];
      v0[90] = v29;
      v30 = v0[75];
      v31 = v0[71];
      if (v29)
      {

        v28(v30, v31);
        v32 = sub_1D1C7D7A4;
LABEL_32:
        v36 = v32;
        v37 = 0;
        v38 = 0;
      }

      else
      {
        v36 = (v28)(v0[75], v0[71]);
        __break(1u);
      }

      return MEMORY[0x1EEE6DFA0](v36, v37, v38);
    }

    if (v15 < *(v1 + 16))
    {
      v23 = *(v6 + 32 + 8 * v15);
      goto LABEL_28;
    }

    __break(1u);
LABEL_43:
    v7 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D1C7D3BC()
{

  v1 = *(v0 + 712);
  sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
  v2 = *(v0 + 696) + 1;
  if (v2 == *(v0 + 680))
  {
LABEL_2:

    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
    *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    *(v0 + 296) = v3;
    *(v0 + 304) = v4;
    *(v0 + 312) = v5;
    v6 = swift_task_alloc();
    *(v0 + 792) = v6;
    *v6 = v0;
    v6[1] = sub_1D1C7E51C;
    v7 = *(v0 + 400);

    return HomeState.Stream.write(characteristicValueSet:timeout:)(v7, (v0 + 296), 0, 1);
  }

  else
  {
    while (1)
    {
      *(v0 + 696) = v2;
      *(v0 + 688) = v1;
      v9 = *(v0 + 672);
      if (v2 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v10 = *(v0 + 520);
      v11 = *(v0 + 504);
      sub_1D1C3EB34(v9 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v2, v10, type metadata accessor for StaticService);
      v12 = *(v10 + *(v11 + 104));
      if (v12 <= 0x30)
      {
        if (((1 << v12) & 0x1940000320008) != 0)
        {
          v13 = 3;
          goto LABEL_15;
        }

        if (((1 << v12) & 0x20410010000) != 0)
        {
          v13 = 105;
          goto LABEL_15;
        }

        if (((1 << v12) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v2 = *(v0 + 696) + 1;
      if (v2 == *(v0 + 680))
      {
        goto LABEL_2;
      }
    }

    v13 = 84;
LABEL_15:
    *(v0 + 808) = v13;
    if (qword_1EE07AF78 == -1)
    {
      goto LABEL_16;
    }

LABEL_32:
    swift_once();
LABEL_16:
    os_unfair_lock_lock(&dword_1EE07AF80);
    v14 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v14 == 2 || (v14 & 1) == 0)
    {
      goto LABEL_27;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v15 = *(v0 + 352);
    if (v15)
    {
      goto LABEL_24;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v15 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v15)
    {
LABEL_24:
      *(v0 + 704) = v15;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v16 = qword_1EC64ABE8;
      v17 = sub_1D1C7CFF0;
      v18 = 0;
    }

    else
    {
LABEL_27:
      *(v0 + 728) = sub_1D1E67E1C();
      *(v0 + 736) = sub_1D1E67E0C();
      v19 = sub_1D1E67D4C();
      v21 = v20;
      v17 = sub_1D1C7DD04;
      v16 = v19;
      v18 = v21;
    }

    return MEMORY[0x1EEE6DFA0](v17, v16, v18);
  }
}

uint64_t sub_1D1C7D7A4()
{

  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = StaticService.isActivated.getter();
  v4 = [v1 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v0 + 176) = (v3 & 1) == 0;
  *(v0 + 200) = MEMORY[0x1E69E6370];
  v5 = *(v0 + 272);
  if (!*(v5 + 16) || (sub_1D1742188(), (v6 & 1) == 0))
  {
    v7 = *(v0 + 592);
    v8 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1752B8C(v8, v7, isUniquelyReferenced_nonNull_native);
    *(v0 + 272) = v5;
  }

  (*(*(v0 + 576) + 16))(*(v0 + 584), *(v0 + 592), *(v0 + 568));
  v10 = sub_1D1C76E38((v0 + 208));
  if (*v11)
  {
    v12 = *(v0 + 808);
    sub_1D1741970(v0 + 176, v0 + 240);
    sub_1D1B0CE00(v0 + 240, v12);
  }

  (v10)(v0 + 208, 0);
  v13 = *(v0 + 592);
  v14 = *(v0 + 568);
  v15 = *(v0 + 520);
  v16 = *(*(v0 + 576) + 8);
  v16(*(v0 + 584), v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v16(v13, v14);
  sub_1D1C80150(v15, type metadata accessor for StaticService);
  v17 = *(v0 + 696) + 1;
  if (v17 == *(v0 + 680))
  {
LABEL_7:

    v18 = *(v0 + 272);
    v19 = *(v0 + 280);
    v20 = *(v0 + 288);
    *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    *(v0 + 296) = v18;
    *(v0 + 304) = v19;
    *(v0 + 312) = v20;
    v21 = swift_task_alloc();
    *(v0 + 792) = v21;
    *v21 = v0;
    v21[1] = sub_1D1C7E51C;
    v22 = *(v0 + 400);

    return HomeState.Stream.write(characteristicValueSet:timeout:)(v22, (v0 + 296), 0, 1);
  }

  else
  {
    while (1)
    {
      *(v0 + 696) = v17;
      *(v0 + 688) = v2;
      v24 = *(v0 + 672);
      if (v17 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v25 = *(v0 + 520);
      v26 = *(v0 + 504);
      sub_1D1C3EB34(v24 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v17, v25, type metadata accessor for StaticService);
      v27 = *(v25 + *(v26 + 104));
      if (v27 <= 0x30)
      {
        if (((1 << v27) & 0x1940000320008) != 0)
        {
          v28 = 3;
          goto LABEL_20;
        }

        if (((1 << v27) & 0x20410010000) != 0)
        {
          v28 = 105;
          goto LABEL_20;
        }

        if (((1 << v27) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v17 = *(v0 + 696) + 1;
      if (v17 == *(v0 + 680))
      {
        goto LABEL_7;
      }
    }

    v28 = 84;
LABEL_20:
    *(v0 + 808) = v28;
    if (qword_1EE07AF78 == -1)
    {
      goto LABEL_21;
    }

LABEL_37:
    swift_once();
LABEL_21:
    os_unfair_lock_lock(&dword_1EE07AF80);
    v29 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v29 == 2 || (v29 & 1) == 0)
    {
      goto LABEL_32;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v30 = *(v0 + 352);
    if (v30)
    {
      goto LABEL_29;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v30 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v30)
    {
LABEL_29:
      *(v0 + 704) = v30;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v31 = qword_1EC64ABE8;
      v32 = sub_1D1C7CFF0;
      v33 = 0;
    }

    else
    {
LABEL_32:
      *(v0 + 728) = sub_1D1E67E1C();
      *(v0 + 736) = sub_1D1E67E0C();
      v34 = sub_1D1E67D4C();
      v36 = v35;
      v32 = sub_1D1C7DD04;
      v31 = v34;
      v33 = v36;
    }

    return MEMORY[0x1EEE6DFA0](v32, v31, v33);
  }
}

uint64_t sub_1D1C7DD04()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DD9C, 0, 0);
}

uint64_t sub_1D1C7DD9C(uint64_t a1)
{
  *(v1 + 744) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DE28, v3, v2);
}

uint64_t sub_1D1C7DE28()
{

  *(v0 + 752) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DE9C, 0, 0);
}

uint64_t sub_1D1C7DE9C(uint64_t a1)
{
  *(v1 + 760) = sub_1D1E66A2C();
  *(v1 + 768) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DF34, v3, v2);
}

uint64_t sub_1D1C7DF34()
{
  v1 = v0[95];
  v2 = v0[94];

  v0[97] = [v2 serviceFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DFC8, 0, 0);
}

uint64_t sub_1D1C7DFC8()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 688);
  if (v1)
  {
    v3 = StaticService.isActivated.getter();
    v4 = [v1 uniqueIdentifier];
    sub_1D1E66A5C();

    *(v0 + 200) = MEMORY[0x1E69E6370];
    *(v0 + 176) = (v3 & 1) == 0;
    v5 = *(v0 + 272);
    if (!*(v5 + 16) || (sub_1D1742188(), (v6 & 1) == 0))
    {
      v7 = *(v0 + 592);
      v8 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D1752B8C(v8, v7, isUniquelyReferenced_nonNull_native);
      *(v0 + 272) = v5;
    }

    (*(*(v0 + 576) + 16))(*(v0 + 584), *(v0 + 592), *(v0 + 568));
    v10 = sub_1D1C76E38((v0 + 208));
    if (*v11)
    {
      v12 = *(v0 + 808);
      sub_1D1741970(v0 + 176, v0 + 240);
      sub_1D1B0CE00(v0 + 240, v12);
    }

    (v10)(v0 + 208, 0);
    v13 = *(v0 + 592);
    v14 = *(v0 + 568);
    v15 = *(v0 + 520);
    v16 = *(*(v0 + 576) + 8);
    v16(*(v0 + 584), v14);
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));

    v16(v13, v14);
  }

  else
  {
    v15 = *(v0 + 520);
  }

  sub_1D1C80150(v15, type metadata accessor for StaticService);
  v17 = *(v0 + 696) + 1;
  if (v17 == *(v0 + 680))
  {
LABEL_10:

    v18 = *(v0 + 272);
    v19 = *(v0 + 280);
    v20 = *(v0 + 288);
    *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    *(v0 + 296) = v18;
    *(v0 + 304) = v19;
    *(v0 + 312) = v20;
    v21 = swift_task_alloc();
    *(v0 + 792) = v21;
    *v21 = v0;
    v21[1] = sub_1D1C7E51C;
    v22 = *(v0 + 400);

    return HomeState.Stream.write(characteristicValueSet:timeout:)(v22, (v0 + 296), 0, 1);
  }

  else
  {
    while (1)
    {
      *(v0 + 696) = v17;
      *(v0 + 688) = v2;
      v24 = *(v0 + 672);
      if (v17 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v25 = *(v0 + 520);
      v26 = *(v0 + 504);
      sub_1D1C3EB34(v24 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v17, v25, type metadata accessor for StaticService);
      v27 = *(v25 + *(v26 + 104));
      if (v27 <= 0x30)
      {
        if (((1 << v27) & 0x1940000320008) != 0)
        {
          v28 = 3;
          goto LABEL_23;
        }

        if (((1 << v27) & 0x20410010000) != 0)
        {
          v28 = 105;
          goto LABEL_23;
        }

        if (((1 << v27) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v17 = *(v0 + 696) + 1;
      if (v17 == *(v0 + 680))
      {
        goto LABEL_10;
      }
    }

    v28 = 84;
LABEL_23:
    *(v0 + 808) = v28;
    if (qword_1EE07AF78 == -1)
    {
      goto LABEL_24;
    }

LABEL_40:
    swift_once();
LABEL_24:
    os_unfair_lock_lock(&dword_1EE07AF80);
    v29 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v29 == 2 || (v29 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v30 = *(v0 + 352);
    if (v30)
    {
      goto LABEL_32;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v30 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v30)
    {
LABEL_32:
      *(v0 + 704) = v30;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v31 = qword_1EC64ABE8;
      v32 = sub_1D1C7CFF0;
      v33 = 0;
    }

    else
    {
LABEL_35:
      *(v0 + 728) = sub_1D1E67E1C();
      *(v0 + 736) = sub_1D1E67E0C();
      v34 = sub_1D1E67D4C();
      v36 = v35;
      v32 = sub_1D1C7DD04;
      v31 = v34;
      v33 = v36;
    }

    return MEMORY[0x1EEE6DFA0](v32, v31, v33);
  }
}

uint64_t sub_1D1C7E51C()
{
  v1 = *(*v0 + 400);

  sub_1D1741A30(v1, &qword_1EC646080, &qword_1D1E7E488);

  return MEMORY[0x1EEE6DFA0](sub_1D1C7E684, 0, 0);
}

uint64_t sub_1D1C7E684()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StateSnapshot.userIDs.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D1785BE4();
}

uint64_t (*sub_1D1C7E834(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1D1E66A7C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1D1C7FBA8(v6);
  v6[12] = sub_1D1C7F000(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1D1C7E970;
}

void (*sub_1D1C7E974(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1D1C7FBDC(v5);
  v5[9] = sub_1D1C7F1DC(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1D1C7EA18;
}

void sub_1D1C7EA18(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_1D1C7EA78(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1D1E66A7C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1D1C7FBDC(v6);
  v6[12] = sub_1D1C7F3D4(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1D1C801B8;
}

uint64_t (*sub_1D1C7EBB4(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1D1E66A7C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1D1C7FBDC(v6);
  v6[12] = sub_1D1C7F584(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1D1C801B8;
}

uint64_t (*sub_1D1C7ECF0(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1D1E66A7C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1D1C7FBDC(v6);
  v6[12] = sub_1D1C7F734(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1D1C801B8;
}

uint64_t (*sub_1D1C7EE2C(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1D1E66A7C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1D1C7FBDC(v6);
  v6[12] = sub_1D1C7F8E4(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1D1C801B8;
}

void sub_1D1C7EF68(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1D1C7F000(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188();
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D1734AF0();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D1721C88(v20, a3 & 1);
    v15 = sub_1D1742188();
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_1D1C7F1B0;
}

void (*sub_1D1C7F1DC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = v3;
  *(v8 + 32) = a2;
  v10 = *v3;
  v11 = sub_1D171D15C(a2);
  *(v9 + 34) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1D1737FB4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1D1726C68(v16, a3 & 1);
    v11 = sub_1D171D15C(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  v21 = 0uLL;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 16 * v11);
  }

  *v9 = v21;
  return sub_1D1C7F324;
}

void sub_1D1C7F324(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = **a1;
  v4 = *(*a1 + 34);
  v5 = (*a1)[1];
  if (v3)
  {
    v6 = v1[3];
    v7 = *v1[2];
    if (v4)
    {
      *(v7[7] + 16 * v6) = v2;
    }

    else
    {
      sub_1D19DB5A0(v6, *(v1 + 16), v3, v5, v7);
    }
  }

  else if (*(*a1 + 34))
  {
    sub_1D174F8DC(v1[3], *v1[2]);
  }

  v8 = *v1;
  v9 = v1[1];
  sub_1D1C2B374(v3, v5);
  sub_1D1791518(v8, v9);

  free(v1);
}

void (*sub_1D1C7F3D4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188();
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D1738B78();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D1728014(v20, a3 & 1);
    v15 = sub_1D1742188();
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_1D1C7F1B0;
}

void (*sub_1D1C7F584(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188();
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D1738B3C();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D1727FD8(v20, a3 & 1);
    v15 = sub_1D1742188();
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_1D1C7F1B0;
}

void (*sub_1D1C7F734(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188();
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D173BFB0();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D172DC94(v20, a3 & 1);
    v15 = sub_1D1742188();
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_1D1C7F1B0;
}

void (*sub_1D1C7F8E4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188();
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D173C234();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D172E068(v20, a3 & 1);
    v15 = sub_1D1742188();
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_1D1C7F1B0;
}

void sub_1D1C7FA94(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    v6 = *v4[2];
    v7 = v4[6];
    if ((*a1)[7])
    {
      *(*(v6 + 56) + 8 * v7) = v5;
    }

    else
    {
      v11 = v4[5];
      (*(v4[4] + 16))(v11, v4[1], v4[3], a4);
      a3(v7, v11, v5, v6);
    }
  }

  else if ((*a1)[7])
  {
    v8 = v4[6];
    v9 = *v4[2];
    (*(v4[4] + 8))(*(v9 + 48) + *(v4[4] + 72) * v8, v4[3], a3);
    a4(v8, v9);
  }

  v13 = v4[5];

  free(v13);

  free(v4);
}

uint64_t (*sub_1D1C7FBA8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D1C7FBD0;
}

uint64_t (*sub_1D1C7FBDC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D1C801B0;
}

uint64_t sub_1D1C7FC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of TileInfoBearer.toggle()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 200) + **(a3 + 200));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4BFC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TileInfoBearer.set(showInDashboard:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 208) + **(a3 + 208));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TileInfoBearer.set(includeInStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 216) + **(a3 + 216));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4BFC;

  return v9(a1, a2, a3);
}

uint64_t sub_1D1C80150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AccessoryNoResponseContextFlags.hash(into:)()
{
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6922C();
}

uint64_t AccessoryNoResponseContextFlags.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C802D0(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D1C803C0()
{
  result = qword_1EC64CC48;
  if (!qword_1EC64CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CC48);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

void *Collection<>.sorted(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DashboardSortableData(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436D8, &unk_1D1E71E30);
  v11 = a3;
  v12 = 0;
  v14 = sub_1D18CE91C(sub_1D1C823C0, 0, a2, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v13);
  if (*(v14 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD0, &qword_1D1E6E818);
    v15 = sub_1D1E68BCC();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC8];
  }

  v43 = v15;
  sub_1D1C84198(v14, 1, &v43);

  v16 = v43;
  v17 = v43[2];
  if (v17)
  {
    v37 = 0;
    v18 = sub_1D1804444(v17, 0);
    v39 = v7;
    v40 = sub_1D18085B4();
    v19 = v43;
    v12 = v44;
    swift_retain_n();
    v38 = a1;

    sub_1D1716918(v19);
    if (v40 != v17)
    {
      __break(1u);
      goto LABEL_24;
    }

    a1 = v38;
    v7 = v39;
    v12 = v37;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v43 = v18;

  sub_1D1C86C80(&v43, a1, sub_1D1D26390);
  if (v12)
  {
LABEL_24:
    swift_bridgeObjectRelease_n();

    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();
  v20 = v43[2];
  if (v20)
  {
    v21 = *(v7 + 80);
    v39 = v43;
    v22 = v43 + ((v21 + 32) & ~v21);
    v23 = *(v7 + 72);
    v24 = MEMORY[0x1E69E7CC0];
    v40 = v23;
    do
    {
      sub_1D1C86EA8(v22, v9, type metadata accessor for DashboardSortableData);
      if (*(v16 + 16) && (v25 = sub_1D171DC84(v9), (v26 & 1) != 0))
      {
        sub_1D17419CC(*(v16 + 56) + 40 * v25, v41);
        sub_1D1C86FC0(v9, type metadata accessor for DashboardSortableData);
        sub_1D16EEE20(v41, &v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1D177F2B8(0, v24[2] + 1, 1, v24);
          v42 = v24;
        }

        v29 = v24[2];
        v28 = v24[3];
        if (v29 >= v28 >> 1)
        {
          v24 = sub_1D177F2B8((v28 > 1), v29 + 1, 1, v24);
          v42 = v24;
        }

        v30 = v44;
        v31 = v45;
        v32 = __swift_mutable_project_boxed_opaque_existential_1(&v43, v44);
        MEMORY[0x1EEE9AC00](v32);
        v34 = &v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v34);
        sub_1D1D20B74(v29, v34, &v42, v30, v31);
        __swift_destroy_boxed_opaque_existential_1(&v43);
        v23 = v40;
      }

      else
      {
        sub_1D1C86FC0(v9, type metadata accessor for DashboardSortableData);
      }

      v22 += v23;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v24;
}

uint64_t type metadata accessor for DashboardSortableData(uint64_t a1)
{
  result = qword_1EC64CC60;
  if (!qword_1EC64CC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1C8098C(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v49 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v46 - v11;
  v12 = type metadata accessor for StaticAccessory(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C86EA8(v2, v15, type metadata accessor for StaticAccessory);
  v16 = *(v13 + 88);
  v48 = v15;
  v17 = *&v15[v16];
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v23 = 0;
  v55 = v3;
  v52 = v8;
  v53 = v17;
  if (v21)
  {
    while (1)
    {
      v24 = v23;
LABEL_8:
      v25 = __clz(__rbit64(v21)) | (v24 << 6);
      v26 = *(v17 + 48);
      v27 = sub_1D1E66A7C();
      v28 = *(v27 - 8);
      v56 = v27;
      v57 = v28;
      v29 = v51;
      (*(v28 + 16))(v51, v26 + *(v28 + 72) * v25, v27);
      v30 = *(v17 + 56);
      v31 = (type metadata accessor for StaticService(0) - 8);
      v32 = v55;
      sub_1D1C86EA8(v30 + *(*v31 + 72) * v25, v29 + *(v55 + 48), type metadata accessor for StaticService);
      v33 = v52;
      sub_1D1741A90(v29, v52, &qword_1EC642DB0, &unk_1D1E6F360);
      v34 = v54;
      sub_1D1741C08(v33, v54, &qword_1EC642DB0, &unk_1D1E6F360);
      v35 = v34 + *(v32 + 48);
      LODWORD(v31) = *(v35 + v31[8]);
      sub_1D1C86FC0(v35, type metadata accessor for StaticService);
      (*(v57 + 8))(v34, v56);
      if (v31 == 1)
      {
        break;
      }

      v21 &= v21 - 1;
      sub_1D1741A30(v33, &qword_1EC642DB0, &unk_1D1E6F360);
      v23 = v24;
      v17 = v53;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    sub_1D1C86FC0(v48, type metadata accessor for StaticAccessory);

    v37 = v50;
    sub_1D1741A90(v33, v50, &qword_1EC642DB0, &unk_1D1E6F360);
    v36 = v49;
    v38 = *(v49 + 56);
    v39 = v37;
    v40 = 0;
LABEL_12:
    v41 = v55;
    v38(v39, v40, 1, v55);

    if ((*(v36 + 48))(v37, 1, v41) == 1)
    {
      sub_1D1741A30(v37, &qword_1EC643C68, &unk_1D1E764C0);
      v42 = type metadata accessor for StaticService(0);
      (*(*(v42 - 8) + 56))(v47, 1, 1, v42);
    }

    else
    {
      v43 = v47;
      sub_1D1C86F58(v37 + *(v41 + 48), v47, type metadata accessor for StaticService);
      v44 = type metadata accessor for StaticService(0);
      (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
      v45 = sub_1D1E66A7C();
      (*(*(v45 - 8) + 8))(v37, v45);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
        sub_1D1C86FC0(v48, type metadata accessor for StaticAccessory);

        v36 = v49;
        v37 = v50;
        v38 = *(v49 + 56);
        v39 = v50;
        v40 = 1;
        goto LABEL_12;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void HMHome.sortID.getter()
{
  v1 = [v0 uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t StaticResident.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D1C81010@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C8098C(v5);
  v10 = type metadata accessor for StaticService(0);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    return (*(v7 + 16))(a1, v1, v6);
  }

  else
  {
    (*(v7 + 16))(v9, v5, v6);
    sub_1D1C86FC0(v5, type metadata accessor for StaticService);
    return (*(v7 + 32))(a1, v9, v6);
  }
}

uint64_t TileInfoBearer.sortID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v31 - v10;
  v12 = type metadata accessor for StaticMatterDevice(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v31 - v17;
  v19 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v3, a1);
  if (swift_dynamicCast())
  {
    sub_1D1C86F58(v18, v15, type metadata accessor for StaticMatterDevice);
    v22 = *(v12 + 48);
    v23 = sub_1D1E66A7C();
    (*(*(v23 - 8) + 16))(a3, &v15[v22], v23);
    sub_1D1C86FC0(v15, type metadata accessor for StaticMatterDevice);
  }

  else
  {
    v24 = a3;
    TileInfoBearer.primaryStaticService.getter(a1, v8);
    v25 = type metadata accessor for StaticService(0);
    if ((*(*(v25 - 8) + 48))(v8, 1, v25) == 1)
    {
      sub_1D1741A30(v8, &qword_1EC6436F0, &qword_1D1E99BC0);
      v26 = sub_1D1E66A7C();
      v27 = *(v26 - 8);
      (*(v27 + 56))(v11, 1, 1, v26);
      sub_1D1E6886C();
      if ((*(v27 + 48))(v11, 1, v26) != 1)
      {
        sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      v28 = sub_1D1E66A7C();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v11, v8, v28);
      sub_1D1C86FC0(v8, type metadata accessor for StaticService);
      (*(v29 + 56))(v11, 0, 1, v28);
      (*(v29 + 32))(v24, v11, v28);
    }
  }

  return (*(v19 + 8))(v21, a1);
}

uint64_t sub_1D1C81660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v146 = a2;
  v130 = sub_1D1E669FC();
  v136 = *(v130 - 8);
  v9 = MEMORY[0x1EEE9AC00](v130);
  v112 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v110 - v11;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v129);
  v137 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v111 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v122 = &v110 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v128 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v110 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v125 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v110 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v141 = AssociatedTypeWitness;
  v132 = *(AssociatedTypeWitness - 8);
  v26 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v123 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v131 = &v110 - v28;
  v29 = type metadata accessor for StaticActionSet(0);
  v134 = *(v29 - 8);
  v135 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v121 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v124 = &v110 - v32;
  v33 = sub_1D1E66A7C();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v118 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v117 = &v110 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v110 - v39;
  v41 = *(a6 + 24);
  v138 = a1;
  v41(AssociatedTypeWitness);
  v126 = sub_1D18E4158(v40, a3);
  LODWORD(v140) = v42;
  v43 = *(v34 + 8);
  v43(v40, v33);
  v139 = a6;
  v116 = a6 + 24;
  v115 = v41;
  (v41)(v141, a6);
  v44 = sub_1D18E4158(v40, a3);
  v46 = v45;
  v120 = v33;
  v119 = v34 + 8;
  v114 = v43;
  v43(v40, v33);
  if (v140)
  {
    if ((v46 & 1) == 0)
    {
LABEL_3:
      v47 = 0;
      return v47 & 1;
    }
  }

  else
  {
    if (v46)
    {
      goto LABEL_5;
    }

    v48 = v126 < v44;
    if (v126 != v44)
    {
      goto LABEL_37;
    }
  }

  v49 = *(v132 + 16);
  v50 = v141;
  v49(v131, v138, v141);
  v51 = v133;
  v52 = v135;
  v53 = swift_dynamicCast();
  v54 = *(v134 + 56);
  if (!v53)
  {
    v56 = v51;
    v58 = v139;
    v59 = v136;
LABEL_20:
    v54(v56, 1, 1, v52);
    sub_1D1741A30(v56, &qword_1EC643718, &qword_1D1E71E70);
    v68 = v137;
    goto LABEL_21;
  }

  v54(v51, 0, 1, v52);
  v55 = v124;
  sub_1D1C86F58(v51, v124, type metadata accessor for StaticActionSet);
  v49(v123, v146, v50);
  v56 = v125;
  v57 = swift_dynamicCast();
  v58 = v139;
  v59 = v136;
  if ((v57 & 1) == 0)
  {
    sub_1D1C86FC0(v55, type metadata accessor for StaticActionSet);
    goto LABEL_20;
  }

  v54(v56, 0, 1, v52);
  v60 = v121;
  sub_1D1C86F58(v56, v121, type metadata accessor for StaticActionSet);
  if (*(v55 + *(v52 + 24)) == 7)
  {
    v61 = 4;
  }

  else
  {
    v61 = *(v55 + *(v52 + 24));
  }

  v140 = sub_1D18E4248(v61, &unk_1F4D660E8);
  v63 = v62;
  if (*(v60 + *(v52 + 24)) == 7)
  {
    v64 = 4;
  }

  else
  {
    v64 = *(v60 + *(v52 + 24));
  }

  v65 = sub_1D18E4248(v64, &unk_1F4D660E8);
  v67 = v66;
  sub_1D1C86FC0(v60, type metadata accessor for StaticActionSet);
  sub_1D1C86FC0(v55, type metadata accessor for StaticActionSet);
  if (v63)
  {
    v68 = v137;
    v50 = v141;
    if ((v67 & 1) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  v68 = v137;
  if (v67)
  {
LABEL_5:
    v47 = 1;
    return v47 & 1;
  }

  v48 = v140 < v65;
  v50 = v141;
  if (v140 != v65)
  {
LABEL_37:
    v47 = v48;
    return v47 & 1;
  }

LABEL_21:
  v69 = *(v58 + 8);
  v70 = v127;
  v69(v50, v58);
  v71 = v58;
  v72 = v128;
  v69(v50, v71);
  v73 = *(v129 + 48);
  sub_1D1741A90(v70, v68, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v72, v68 + v73, &qword_1EC642570, &qword_1D1E6C6A0);
  v74 = v59;
  v75 = *(v59 + 48);
  v76 = v130;
  if (v75(v68, 1, v130) == 1)
  {
    if (v75(v68 + v73, 1, v76) != 1)
    {
      sub_1D1741A30(v68 + v73, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v68, &qword_1EC642570, &qword_1D1E6C6A0);
      v47 = 0;
      return v47 & 1;
    }
  }

  else
  {
    v77 = v122;
    sub_1D1741C08(v68, v122, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v75(v68 + v73, 1, v76) == 1)
    {
      (*(v74 + 8))(v77, v76);
      sub_1D1741A30(v68 + v73, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v68, &qword_1EC642570, &qword_1D1E6C6A0);
      v47 = 1;
      return v47 & 1;
    }

    v78 = v111;
    sub_1D1741C08(v68 + v73, v111, &qword_1EC642570, &qword_1D1E6C6A0);
    v79 = *(v74 + 32);
    v80 = v113;
    v79(v113, v77, v76);
    v81 = v74;
    v82 = v112;
    v79(v112, v78, v76);
    sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v47 = sub_1D1E6696C();
      v104 = *(v81 + 8);
      v104(v82, v76);
      v104(v80, v76);
      sub_1D1741A30(v68 + v73, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v68, &qword_1EC642570, &qword_1D1E6C6A0);
      return v47 & 1;
    }

    v83 = *(v81 + 8);
    v83(v82, v76);
    v83(v80, v76);
  }

  sub_1D1741A30(v68, &qword_1EC642AC0, &qword_1D1E6E810);
  v84 = v139;
  v85 = *(v139 + 16);
  v86 = v141;
  v87 = v85(v141, v139);
  v89 = v88;
  if (v87 == v85(v86, v84) && v89 == v90)
  {
  }

  else
  {
    v91 = sub_1D1E6904C();

    if ((v91 & 1) == 0)
    {
      v105 = v141;
      v144 = v85(v141, v84);
      v145 = v106;
      v142 = v85(v105, v84);
      v143 = v107;
      sub_1D17D8EF0();
      v108 = sub_1D1E685FC();

      v47 = v108 == -1;
      return v47 & 1;
    }
  }

  v92 = v117;
  v93 = v141;
  v94 = v115;
  (v115)(v141, v84);
  v140 = sub_1D1E66A1C();
  v138 = v95;
  v96 = v92;
  v97 = v120;
  v98 = v114;
  v114(v96, v120);
  v99 = v118;
  v94(v93, v84);
  v100 = v138;
  v101 = sub_1D1E66A1C();
  v103 = v102;
  v98(v99, v97);
  if (v140 == v101 && v100 == v103)
  {

    v47 = 0;
  }

  else
  {
    v47 = sub_1D1E6904C();
  }

  return v47 & 1;
}

uint64_t sub_1D1C823C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436D8, &unk_1D1E71E30) + 48);
  sub_1D17419CC(a1, v17);
  v5 = v18;
  v6 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v6 + 64))(v5, v6);
  v7 = v18;
  v8 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = (*(v8 + 56))(v7, v8);
  v11 = v10;
  v12 = type metadata accessor for DashboardSortableData(0);
  v13 = (a2 + *(v12 + 20));
  *v13 = v9;
  v13[1] = v11;
  v14 = v18;
  v15 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  TileInfoBearer.sortID.getter(v14, v15, a2 + *(v12 + 24));
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_1D17419CC(a1, a2 + v4);
}

uint64_t DashboardSortableData.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 64))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 56))(v6, v7);
  v10 = v9;
  v11 = type metadata accessor for DashboardSortableData(0);
  v12 = (a2 + *(v11 + 20));
  *v12 = v8;
  v12[1] = v10;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  TileInfoBearer.sortID.getter(v13, v14, a2 + *(v11 + 24));

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

char *Collection<>.sorted(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DashboardSortableData(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC50, &qword_1D1EA2260);
  v11 = a3;
  v12 = 0;
  v14 = sub_1D18CE91C(sub_1D1C82A18, 0, a2, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v13);
  if (*(v14 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A48, &unk_1D1E6E7A0);
    v15 = sub_1D1E68BCC();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC8];
  }

  *&v44 = v15;
  sub_1D1C84678(v14, 1, &v44);

  v16 = v44;
  v17 = *(v44 + 16);
  if (v17)
  {
    v39 = 0;
    v18 = sub_1D1804444(v17, 0);
    v41 = v7;
    v42 = sub_1D18085B4();
    v19 = v44;
    v12 = *(&v45 + 1);
    swift_retain_n();
    v40 = a1;

    sub_1D1716918(v19);
    if (v42 != v17)
    {
      __break(1u);
      goto LABEL_24;
    }

    v7 = v41;
    a1 = v40;
    v12 = v39;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *&v44 = v18;

  sub_1D1C86C80(&v44, a1, sub_1D1D26390);
  if (v12)
  {
LABEL_24:
    swift_bridgeObjectRelease_n();

    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();
  v20 = *(v44 + 16);
  if (v20)
  {
    v21 = v44 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1C86EA8(v21, v9, type metadata accessor for DashboardSortableData);
      if (*(v16 + 16) && (v24 = sub_1D171DC84(v9), (v25 & 1) != 0))
      {
        v26 = (*(v16 + 56) + 96 * v24);
        v27 = v26[1];
        v44 = *v26;
        v45 = v27;
        v28 = v26[5];
        v30 = v26[2];
        v29 = v26[3];
        v48 = v26[4];
        v49 = v28;
        v46 = v30;
        v47 = v29;
        sub_1D1741914(&v44, v43);
        sub_1D1C86FC0(v9, type metadata accessor for DashboardSortableData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D177FD04(0, *(v23 + 2) + 1, 1, v23);
        }

        v32 = *(v23 + 2);
        v31 = *(v23 + 3);
        if (v32 >= v31 >> 1)
        {
          v23 = sub_1D177FD04((v31 > 1), v32 + 1, 1, v23);
        }

        *(v23 + 2) = v32 + 1;
        v33 = &v23[96 * v32];
        v34 = v45;
        *(v33 + 2) = v44;
        *(v33 + 3) = v34;
        v35 = v46;
        v36 = v47;
        v37 = v49;
        *(v33 + 6) = v48;
        *(v33 + 7) = v37;
        *(v33 + 4) = v35;
        *(v33 + 5) = v36;
      }

      else
      {
        sub_1D1C86FC0(v9, type metadata accessor for DashboardSortableData);
      }

      v21 += v22;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v23;
}

uint64_t sub_1D1C82A18@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 3);
  v15 = *(a1 + 2);
  v16 = v4;
  v5 = *(a1 + 5);
  v17 = *(a1 + 4);
  v18 = v5;
  v6 = *(a1 + 1);
  v13 = *a1;
  v14 = v6;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC50, &qword_1D1EA2260) + 48));
  sub_1D1741914(&v13, v12);
  DashboardSortableData.init(_:)(a1, a2);
  v8 = v16;
  v7[2] = v15;
  v7[3] = v8;
  v9 = v18;
  v7[4] = v17;
  v7[5] = v9;
  v10 = v14;
  *v7 = v13;
  v7[1] = v10;
  return sub_1D1741914(&v13, v12);
}

uint64_t DashboardSortableData.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - v8;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  v26[4] = *(a1 + 3);
  v26[5] = v16;
  v17 = *(a1 + 5);
  v26[2] = *(a1 + 6);
  v26[3] = v17;
  v26[1] = *(a1 + 7);
  v26[6] = *(a1 + 9);
  v26[7] = v15;
  v26[8] = *(a1 + 11);
  v18 = sub_1D1E669FC();
  (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  v29 = v14;
  v19 = UmbrellaCategory.localizedDescription.getter();
  v21 = v20;
  v27 = type metadata accessor for DashboardSortableData(0);
  v28 = a2;
  v22 = (a2 + *(v27 + 20));
  *v22 = v19;
  v22[1] = v21;
  sub_1D1E66A0C();

  v23 = *(v11 + 48);
  if (v23(v9, 1, v10) != 1)
  {

    v25 = *(v11 + 32);
    v25(v13, v9, v10);
    return (v25)(v28 + *(v27 + 24), v13, v10);
  }

  sub_1D1E66A0C();
  result = (v23)(v7, 1, v10);
  if (result != 1)
  {

    v25 = *(v11 + 32);
    v25(v13, v7, v10);
    if (v23(v9, 1, v10) != 1)
    {
      sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
    }

    return (v25)(v28 + *(v27 + 24), v13, v10);
  }

  __break(1u);
  return result;
}

uint64_t DashboardSortableData.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for DashboardSortableData(0) + 20));

  return v1;
}

uint64_t DashboardSortableData.sortID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DashboardSortableData(0) + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DashboardSortableData.init(dateAdded:name:sortID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D1741A90(a1, a5, &qword_1EC642570, &qword_1D1E6C6A0);
  v9 = type metadata accessor for DashboardSortableData(0);
  v10 = (a5 + *(v9 + 20));
  *v10 = a2;
  v10[1] = a3;
  v11 = *(v9 + 24);
  v12 = sub_1D1E66A7C();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a4, v12);
}

uint64_t DashboardSortableData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E669FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D1741C08(v2, &v11 - v8, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D1E6922C();
    sub_1D1C86F10(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for DashboardSortableData(0);
  sub_1D1E678EC();
  sub_1D1E66A7C();
  sub_1D1C86F10(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D1E676EC();
}

uint64_t DashboardSortableData.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_1D1E6920C();
  sub_1D1741C08(v1, v8, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D1C86F10(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for DashboardSortableData(0);
  sub_1D1E678EC();
  sub_1D1E66A7C();
  sub_1D1C86F10(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C83538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E6920C();
  sub_1D1741C08(v3, v10, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D1C86F10(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  sub_1D1E678EC();
  sub_1D1E66A7C();
  sub_1D1C86F10(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C837DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *, uint64_t))
{
  v64 = a6;
  v7 = v6;
  v62 = type metadata accessor for DashboardSortableData(0);
  v13 = MEMORY[0x1EEE9AC00](v62);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v23 = &v53 - v22;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a2 - a1 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_65;
  }

  v26 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v25 != -1)
  {
    v27 = (a2 - a1) / v25;
    v69 = a1;
    v68 = a4;
    v65 = v25;
    if (v27 < v26 / v25)
    {
      v28 = v27 * v25;
      v61 = v19;
      if (a4 < a1 || a1 + v28 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v60 = a4 + v28;
      v67 = (a4 + v28);
      if (v28 >= 1 && a2 < a3)
      {
        v63 = a5;
        while (1)
        {
          v31 = a3;
          sub_1D1C86EA8(a2, v23, type metadata accessor for DashboardSortableData);
          v32 = v23;
          v33 = v61;
          sub_1D1C86EA8(a4, v61, type metadata accessor for DashboardSortableData);
          v34 = v64(v32, v33, a5);
          if (v7)
          {
            break;
          }

          v35 = v34;
          v66 = 0;
          v36 = a2;
          sub_1D1C86FC0(v33, type metadata accessor for DashboardSortableData);
          sub_1D1C86FC0(v32, type metadata accessor for DashboardSortableData);
          v23 = v32;
          if (v35)
          {
            v37 = a2;
            v38 = v65;
            a2 += v65;
            a3 = v31;
            if (a1 < v36 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              v38 = v65;
              v7 = v66;
            }

            else
            {
              v7 = v66;
              if (a1 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
                v38 = v65;
              }
            }
          }

          else
          {
            v38 = v65;
            v39 = a4 + v65;
            a3 = v31;
            if (a1 < a4 || a1 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v38 = v65;
              v7 = v66;
            }

            else
            {
              v7 = v66;
              if (a1 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v38 = v65;
              }
            }

            v68 = v39;
            a4 = v39;
          }

          a5 = v63;
          a1 += v38;
          v69 = a1;
          if (a4 >= v60 || a2 >= a3)
          {
            goto LABEL_63;
          }
        }

        sub_1D1C86FC0(v33, type metadata accessor for DashboardSortableData);
        sub_1D1C86FC0(v32, type metadata accessor for DashboardSortableData);
      }

LABEL_63:
      sub_1D1DC71BC(&v69, &v68, &v67);

      return 1;
    }

    v29 = v26 / v25 * v25;
    v60 = v21;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_39:
        v40 = a4 + v29;
        if (v29 >= 1)
        {
          v58 = v15;
          v41 = -v25;
          v42 = a4 + v29;
          v63 = a5;
          v55 = -v25;
          v56 = a4;
          do
          {
            v61 = v40;
            v54 = v40;
            v43 = a2 + v41;
            v57 = a2 + v41;
            v59 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v69 = a2;
                v67 = v54;
                goto LABEL_63;
              }

              v45 = a3;
              v46 = a1;
              v47 = v7;
              v65 = v42;
              v48 = v42 + v41;
              v49 = v60;
              sub_1D1C86EA8(v42 + v41, v60, type metadata accessor for DashboardSortableData);
              v50 = v58;
              sub_1D1C86EA8(v43, v58, type metadata accessor for DashboardSortableData);
              v51 = v64(v49, v50, v63);
              v66 = v47;
              if (v47)
              {
                sub_1D1C86FC0(v50, type metadata accessor for DashboardSortableData);
                sub_1D1C86FC0(v49, type metadata accessor for DashboardSortableData);
                v69 = v59;
                v67 = v61;
                goto LABEL_63;
              }

              v52 = v51;
              a3 += v41;
              sub_1D1C86FC0(v50, type metadata accessor for DashboardSortableData);
              sub_1D1C86FC0(v49, type metadata accessor for DashboardSortableData);
              if (v52)
              {
                break;
              }

              a1 = v46;
              if (v45 < v65 || a3 >= v65)
              {
                swift_arrayInitWithTakeFrontToBack();
                v43 = v57;
              }

              else
              {
                v43 = v57;
                if (v45 != v65)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v61 = v48;
              v42 = v48;
              v41 = v55;
              v44 = v48 > v56;
              v7 = v66;
              a2 = v59;
              if (!v44)
              {
                v40 = v61;
                goto LABEL_62;
              }
            }

            a1 = v46;
            if (v45 < v59 || a3 >= v59)
            {
              a2 = v57;
              swift_arrayInitWithTakeFrontToBack();
              v41 = v55;
            }

            else
            {
              a2 = v57;
              v41 = v55;
              if (v45 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v65;
            v7 = v66;
            v40 = v61;
          }

          while (v65 > v56);
        }

LABEL_62:
        v69 = a2;
        v67 = v40;
        goto LABEL_63;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v25 = v65;
    goto LABEL_39;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel017DashboardSortableB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_1D1741C08(a1, &v25 - v13, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741C08(a2, &v14[v15], &qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D1741C08(v14, v10, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v18 = sub_1D1E6775C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
      if ((v18 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1D1741A30(v14, &qword_1EC642AC0, &qword_1D1E6E810);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_9:
  v20 = *(type metadata accessor for DashboardSortableData(0) + 20);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1] || (sub_1D1E6904C() & 1) != 0)
  {
    v17 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D1C84198(uint64_t a1, char a2, void *a3)
{
  v46 = type metadata accessor for DashboardSortableData(0);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436D8, &unk_1D1E71E30);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  if (*(a1 + 16))
  {
    v47 = *(a1 + 16);
    v48 = a1;
    v13 = *(result + 48);
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v51 = *(v10 + 72);
    v45 = v14;
    sub_1D1741C08(a1 + v14, &v44 - v11, &qword_1EC6436D8, &unk_1D1E71E30);
    sub_1D1C86F58(v12, v7, type metadata accessor for DashboardSortableData);
    sub_1D16EEE20(&v12[v13], v50);
    v15 = *a3;
    v17 = sub_1D171DC84(v7);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      sub_1D172E834(v20, a2 & 1);
      v22 = sub_1D171DC84(v7);
      if ((v21 & 1) != (v23 & 1))
      {
LABEL_27:
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      v17 = v22;
      v24 = *a3;
      if ((v21 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_1D1C86FC0(v7, type metadata accessor for DashboardSortableData);
      v25 = (v24[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = sub_1D16EEE20(v50, v25);
LABEL_13:
      v29 = v47 - 1;
      if (v47 == 1)
      {
        return result;
      }

      v30 = v48 + v51 + v45;
      while (1)
      {
        sub_1D1741C08(v30, v12, &qword_1EC6436D8, &unk_1D1E71E30);
        sub_1D1C86F58(v12, v7, type metadata accessor for DashboardSortableData);
        sub_1D16EEE20(&v12[v13], v50);
        v32 = *a3;
        v34 = sub_1D171DC84(v7);
        v35 = v32[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_25;
        }

        v38 = v33;
        if (v32[3] < v37)
        {
          sub_1D172E834(v37, 1);
          v39 = sub_1D171DC84(v7);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_27;
          }

          v34 = v39;
        }

        v41 = *a3;
        if (v38)
        {
          sub_1D1C86FC0(v7, type metadata accessor for DashboardSortableData);
          v31 = (v41[7] + 40 * v34);
          __swift_destroy_boxed_opaque_existential_1(v31);
          result = sub_1D16EEE20(v50, v31);
        }

        else
        {
          v41[(v34 >> 6) + 8] |= 1 << v34;
          sub_1D1C86F58(v7, v41[6] + *(v49 + 72) * v34, type metadata accessor for DashboardSortableData);
          result = sub_1D16EEE20(v50, v41[7] + 40 * v34);
          v42 = v41[2];
          v27 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v27)
          {
            goto LABEL_26;
          }

          v41[2] = v43;
        }

        v30 += v51;
        if (!--v29)
        {
          return result;
        }
      }
    }

    if (a2)
    {
      v24 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1D173C740();
      v24 = *a3;
      if (v21)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v24[(v17 >> 6) + 8] |= 1 << v17;
    sub_1D1C86F58(v7, v24[6] + *(v49 + 72) * v17, type metadata accessor for DashboardSortableData);
    result = sub_1D16EEE20(v50, v24[7] + 40 * v17);
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v24[2] = v28;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D1C84678(uint64_t a1, char a2, void *a3)
{
  v46[0] = type metadata accessor for DashboardSortableData(0);
  v47 = *(v46[0] - 8);
  MEMORY[0x1EEE9AC00](v46[0]);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC50, &qword_1D1EA2260);
  result = MEMORY[0x1EEE9AC00](v8);
  v56 = v46 - v11;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return result;
  }

  v13 = (v56 + *(result + 48));
  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v48 = *(v10 + 72);
  for (i = v12 - 1; ; --i)
  {
    v16 = v56;
    sub_1D1741C08(v14, v56, &qword_1EC64CC50, &qword_1D1EA2260);
    sub_1D1C86F58(v16, v7, type metadata accessor for DashboardSortableData);
    v17 = v13[3];
    v52 = v13[2];
    v53 = v17;
    v18 = v13[5];
    v54 = v13[4];
    v55 = v18;
    v19 = v13[1];
    v50 = *v13;
    v51 = v19;
    v20 = *a3;
    v22 = sub_1D171DC84(v7);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if (a2)
      {
        if (v21)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D173DD20();
        if (v26)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1D1731334(v25, a2 & 1);
      v27 = sub_1D171DC84(v7);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
      if (v26)
      {
LABEL_10:
        v29 = *a3;
        sub_1D1C86FC0(v7, type metadata accessor for DashboardSortableData);
        v30 = (v29[7] + 96 * v22);
        v32 = v30[4];
        v31 = v30[5];
        v33 = v30[2];
        v49[3] = v30[3];
        v49[4] = v32;
        v49[5] = v31;
        v34 = v30[1];
        v49[0] = *v30;
        v49[1] = v34;
        v49[2] = v33;
        v35 = v53;
        v30[2] = v52;
        v30[3] = v35;
        v36 = v55;
        v30[4] = v54;
        v30[5] = v36;
        v37 = v51;
        *v30 = v50;
        v30[1] = v37;
        result = sub_1D1B539E4(v49);
        if (!i)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    v38 = *a3;
    *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    result = sub_1D1C86F58(v7, v38[6] + *(v47 + 72) * v22, type metadata accessor for DashboardSortableData);
    v39 = (v38[7] + 96 * v22);
    v40 = v51;
    *v39 = v50;
    v39[1] = v40;
    v41 = v55;
    v39[4] = v54;
    v39[5] = v41;
    v42 = v53;
    v39[2] = v52;
    v39[3] = v42;
    v43 = v38[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_18;
    }

    v38[2] = v45;
    if (!i)
    {
      return result;
    }

LABEL_15:
    v14 += v48;
    a2 = 1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1C84A14(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t), uint64_t (*a7)(char *, char *, uint64_t))
{
  v226 = a7;
  v207 = a6;
  v210 = a1;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v224 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v223 = &v204 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v204 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v204 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v230 = &v204 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v204 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v212 = &v204 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v213 = &v204 - v29;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v30 = MEMORY[0x1EEE9AC00](v236);
  v237 = &v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v215 = &v204 - v32;
  v33 = type metadata accessor for DashboardSortableData(0);
  v227 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v217 = &v204 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v242 = &v204 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v248 = &v204 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v247 = &v204 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v235 = &v204 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v234 = &v204 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v46);
  v228 = a3;
  v49 = a3[1];
  v245 = a5;
  if (v49 < 1)
  {
    swift_bridgeObjectRetain_n();
    v51 = MEMORY[0x1E69E7CC0];
LABEL_151:
    v49 = *v210;
    if (!*v210)
    {
      goto LABEL_191;
    }

    v11 = v51;
    v33 = v245;
    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_153:
      v253 = v11;
      v192 = *(v11 + 16);
      if (v192 >= 2)
      {
        do
        {
          v193 = *v228;
          if (!*v228)
          {
            goto LABEL_189;
          }

          v194 = *(v11 + 16 * v192);
          v195 = v11;
          v196 = *(v11 + 16 * (v192 - 1) + 40);
          v197 = *(v227 + 72);
          v198 = v193 + v197 * v194;
          v199 = v193 + v197 * *(v11 + 16 * (v192 - 1) + 32);
          v200 = v193 + v197 * v196;

          v201 = v198;
          v202 = v233;
          sub_1D1C837DC(v201, v199, v200, v49, v33, v226);
          v11 = v202;
          if (v202)
          {
            break;
          }

          if (v196 < v194)
          {
            goto LABEL_178;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v195 = sub_1D1E0BE44(v195);
          }

          if (v192 - 2 >= *(v195 + 2))
          {
            goto LABEL_179;
          }

          v233 = 0;
          v203 = &v195[16 * v192];
          *v203 = v194;
          *(v203 + 1) = v196;
          v253 = v195;
          sub_1D1E0BDB8(v192 - 1);
          v11 = v253;
          v192 = *(v253 + 16);
        }

        while (v192 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_185:
    v11 = sub_1D1E0BE44(v11);
    goto LABEL_153;
  }

  v205 = &v204 - v47;
  v206 = v48;
  v243 = (v11 + 48);
  v225 = (v11 + 32);
  v232 = (v11 + 8);
  swift_bridgeObjectRetain_n();
  v50 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  v209 = a4;
  v238 = v10;
  v211 = v18;
  v214 = v20;
  v229 = v26;
  v52 = v237;
  v246 = v33;
  v53 = v10;
LABEL_4:
  v54 = v50;
  v55 = v50 + 1;
  v218 = v51;
  if (v55 >= v49)
  {
    v64 = v55;
    goto LABEL_51;
  }

  v231 = v49;
  v56 = *v228;
  v49 = *(v227 + 72);
  v57 = *v228 + v49 * v55;
  v58 = v205;
  sub_1D1C86EA8(v57, v205, type metadata accessor for DashboardSortableData);
  v59 = v206;
  sub_1D1C86EA8(v56 + v49 * v54, v206, type metadata accessor for DashboardSortableData);
  v60 = v54;
  v61 = v233;
  LODWORD(v241) = v207(v58, v59, v245);
  if (v61)
  {
    sub_1D1C86FC0(v59, type metadata accessor for DashboardSortableData);
    sub_1D1C86FC0(v58, type metadata accessor for DashboardSortableData);
    swift_bridgeObjectRelease_n();
  }

  v233 = 0;
  v11 = type metadata accessor for DashboardSortableData;
  sub_1D1C86FC0(v59, type metadata accessor for DashboardSortableData);
  sub_1D1C86FC0(v58, type metadata accessor for DashboardSortableData);
  v208 = v54;
  v62 = v54 + 2;
  v63 = v56 + v49 * (v60 + 2);
  v64 = v231;
  v52 = v237;
  v65 = v49;
  v244 = v49;
  while (v64 != v62)
  {
    v66 = v234;
    sub_1D1C86EA8(v63, v234, type metadata accessor for DashboardSortableData);
    v67 = v235;
    sub_1D1C86EA8(v57, v235, type metadata accessor for DashboardSortableData);
    v240 = *(v33 + 24);
    v68 = v66 + v240;
    v49 = v245;
    v69 = sub_1D18E4158(v68, v245);
    v71 = v70;
    v72 = sub_1D18E4158(v67 + *(v33 + 24), v49);
    if (v71)
    {
      if ((v73 & 1) == 0)
      {
        v11 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      if (v73)
      {
        v11 = 1;
        goto LABEL_32;
      }

      if (v69 != v72)
      {
        v11 = v69 < v72;
        goto LABEL_32;
      }
    }

    v74 = *(v236 + 48);
    v49 = v215;
    sub_1D1741C08(v234, v215, &qword_1EC642570, &qword_1D1E6C6A0);
    v239 = v74;
    sub_1D1741C08(v235, v49 + v74, &qword_1EC642570, &qword_1D1E6C6A0);
    v75 = *v243;
    v76 = v238;
    if ((*v243)(v49, 1, v238) == 1)
    {
      if (v75(v49 + v239, 1, v76) != 1)
      {
        sub_1D1741A30(v49 + v239, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
        v11 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v77 = v213;
      sub_1D1741C08(v49, v213, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v75(v49 + v239, 1, v76) == 1)
      {
        (*v232)(v77, v76);
        sub_1D1741A30(v49 + v239, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
        v11 = 1;
        v52 = v237;
        goto LABEL_32;
      }

      sub_1D1741C08(v49 + v239, v212, &qword_1EC642570, &qword_1D1E6C6A0);
      v78 = *v225;
      (*v225)(v214, v77, v76);
      v78(v211, v212, v76);
      sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      if ((sub_1D1E6775C() & 1) == 0)
      {
        v90 = v211;
        v11 = sub_1D1E6696C();
        v91 = *v232;
        (*v232)(v90, v76);
        v91(v214, v76);
        sub_1D1741A30(v49 + v239, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
        v52 = v237;
        goto LABEL_32;
      }

      v79 = *v232;
      (*v232)(v211, v76);
      v79(v214, v76);
      v52 = v237;
    }

    sub_1D1741A30(v49, &qword_1EC642AC0, &qword_1D1E6E810);
    v80 = *(v246 + 20);
    v81 = (v234 + v80);
    v82 = *(v234 + v80);
    v49 = *(v234 + v80 + 8);
    v83 = (v235 + v80);
    v84 = *v83;
    v85 = v83[1];
    if (*v81 == *v83 && v49 == v85 || (sub_1D1E6904C() & 1) != 0)
    {
      v86 = sub_1D1E66A1C();
      v49 = v87;
      v88 = sub_1D1E66A1C();
      v64 = v231;
      if (v86 == v88 && v49 == v89)
      {

        v11 = 0;
      }

      else
      {
        v11 = sub_1D1E6904C();
      }

      v33 = v246;
      goto LABEL_33;
    }

    v251 = v82;
    v252 = v49;
    v249 = v84;
    v250 = v85;
    sub_1D17D8EF0();
    v11 = sub_1D1E685FC() == -1;
LABEL_32:
    v33 = v246;
    v64 = v231;
LABEL_33:
    sub_1D1C86FC0(v235, type metadata accessor for DashboardSortableData);
    sub_1D1C86FC0(v234, type metadata accessor for DashboardSortableData);
    ++v62;
    v65 = v244;
    v63 += v244;
    v57 += v244;
    if ((v241 ^ v11))
    {
      v64 = v62 - 1;
      break;
    }
  }

  a4 = v209;
  v54 = v208;
  if ((v241 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v64 < v208)
  {
    goto LABEL_184;
  }

  if (v208 >= v64)
  {
LABEL_49:
    v53 = v238;
    goto LABEL_51;
  }

  v49 = v65 * (v64 - 1);
  v92 = v64 * v65;
  v93 = v64;
  v94 = v208;
  v95 = v208 * v65;
  do
  {
    if (v94 != --v64)
    {
      v96 = *v228;
      if (!*v228)
      {
        goto LABEL_188;
      }

      v11 = v96 + v95;
      sub_1D1C86F58(v96 + v95, v217, type metadata accessor for DashboardSortableData);
      if (v95 < v49 || v11 >= v96 + v92)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v95 != v49)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      sub_1D1C86F58(v217, v96 + v49, type metadata accessor for DashboardSortableData);
      v65 = v244;
    }

    ++v94;
    v49 -= v65;
    v92 -= v65;
    v95 += v65;
  }

  while (v94 < v64);
  a4 = v209;
  v64 = v93;
  v54 = v208;
  v52 = v237;
  v53 = v238;
LABEL_51:
  v97 = v228[1];
  if (v64 >= v97)
  {
    goto LABEL_60;
  }

  if (__OFSUB__(v64, v54))
  {
    goto LABEL_181;
  }

  if (v64 - v54 >= a4)
  {
LABEL_60:
    v99 = v64;
    if (v64 < v54)
    {
      goto LABEL_180;
    }

    goto LABEL_61;
  }

  if (__OFADD__(v54, a4))
  {
    goto LABEL_182;
  }

  if (v54 + a4 >= v97)
  {
    v98 = v228[1];
  }

  else
  {
    v98 = v54 + a4;
  }

  if (v98 < v54)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  if (v64 == v98)
  {
    goto LABEL_60;
  }

  v154 = *v228;
  v155 = *(v227 + 72);
  v156 = *v228 + v155 * (v64 - 1);
  v240 = -v155;
  v208 = v54;
  v157 = v54 - v64;
  v241 = v154;
  v216 = v155;
  v158 = v154 + v64 * v155;
  v219 = v98;
  while (2)
  {
    v231 = v64;
    v220 = v158;
    v221 = v157;
    v159 = v157;
    v222 = v156;
    v160 = v156;
LABEL_115:
    v49 = v52;
    v161 = v247;
    sub_1D1C86EA8(v158, v247, type metadata accessor for DashboardSortableData);
    v162 = v248;
    sub_1D1C86EA8(v160, v248, type metadata accessor for DashboardSortableData);
    v244 = *(v33 + 24);
    v163 = v245;
    v164 = sub_1D18E4158(v161 + v244, v245);
    LOBYTE(v161) = v165;
    v166 = *(v33 + 24);
    v167 = sub_1D18E4158(v162 + v166, v163);
    if ((v161 & 1) == 0)
    {
      v169 = v243;
      v52 = v49;
      if (v168)
      {
        goto LABEL_125;
      }

      if (v164 == v167)
      {
        goto LABEL_120;
      }

      v11 = v164 < v167;
      goto LABEL_139;
    }

    v169 = v243;
    v52 = v49;
    if ((v168 & 1) == 0)
    {
      goto LABEL_112;
    }

LABEL_120:
    v239 = v166;
    v170 = *(v236 + 48);
    v49 = &qword_1D1E6C6A0;
    sub_1D1741C08(v247, v52, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741C08(v248, v52 + v170, &qword_1EC642570, &qword_1D1E6C6A0);
    v171 = *v169;
    v172 = v238;
    if ((*v169)(v52, 1, v238) == 1)
    {
      if (v171(v52 + v170, 1, v172) == 1)
      {
        goto LABEL_128;
      }

      v49 = &qword_1EC642570;
      sub_1D1741A30(v52 + v170, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v52, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_112:
      v11 = type metadata accessor for DashboardSortableData;
      sub_1D1C86FC0(v248, type metadata accessor for DashboardSortableData);
      sub_1D1C86FC0(v247, type metadata accessor for DashboardSortableData);
      v33 = v246;
LABEL_113:
      v64 = v231 + 1;
      v156 = v222 + v216;
      v157 = v221 - 1;
      v158 = v220 + v216;
      v99 = v219;
      if (v231 + 1 != v219)
      {
        continue;
      }

      v54 = v208;
      v53 = v238;
      if (v219 < v208)
      {
        goto LABEL_180;
      }

LABEL_61:
      v100 = v53;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v51 = v218;
      }

      else
      {
        v51 = sub_1D177D070(0, *(v218 + 2) + 1, 1, v218);
      }

      v49 = *(v51 + 2);
      v101 = *(v51 + 3);
      v11 = v49 + 1;
      if (v49 >= v101 >> 1)
      {
        v51 = sub_1D177D070((v101 > 1), v49 + 1, 1, v51);
      }

      v53 = v100;
      *(v51 + 2) = v11;
      v102 = &v51[16 * v49];
      *(v102 + 4) = v54;
      *(v102 + 5) = v99;
      v219 = v99;
      v103 = *v210;
      if (!*v210)
      {
        goto LABEL_190;
      }

      if (v49)
      {
        while (2)
        {
          v104 = v11 - 1;
          if (v11 >= 4)
          {
            v109 = &v51[16 * v11 + 32];
            v110 = *(v109 - 64);
            v111 = *(v109 - 56);
            v115 = __OFSUB__(v111, v110);
            v112 = v111 - v110;
            if (v115)
            {
              goto LABEL_167;
            }

            v114 = *(v109 - 48);
            v113 = *(v109 - 40);
            v115 = __OFSUB__(v113, v114);
            v107 = v113 - v114;
            v108 = v115;
            if (v115)
            {
              goto LABEL_168;
            }

            v116 = &v51[16 * v11];
            v118 = *v116;
            v117 = *(v116 + 1);
            v115 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v115)
            {
              goto LABEL_170;
            }

            v115 = __OFADD__(v107, v119);
            v120 = v107 + v119;
            if (v115)
            {
              goto LABEL_173;
            }

            if (v120 >= v112)
            {
              v138 = &v51[16 * v104 + 32];
              v140 = *v138;
              v139 = *(v138 + 1);
              v115 = __OFSUB__(v139, v140);
              v141 = v139 - v140;
              if (v115)
              {
                goto LABEL_177;
              }

              if (v107 < v141)
              {
                v104 = v11 - 2;
              }
            }

            else
            {
LABEL_80:
              if (v108)
              {
                goto LABEL_169;
              }

              v121 = &v51[16 * v11];
              v123 = *v121;
              v122 = *(v121 + 1);
              v124 = __OFSUB__(v122, v123);
              v125 = v122 - v123;
              v126 = v124;
              if (v124)
              {
                goto LABEL_172;
              }

              v127 = &v51[16 * v104 + 32];
              v129 = *v127;
              v128 = *(v127 + 1);
              v115 = __OFSUB__(v128, v129);
              v130 = v128 - v129;
              if (v115)
              {
                goto LABEL_175;
              }

              if (__OFADD__(v125, v130))
              {
                goto LABEL_176;
              }

              if (v125 + v130 < v107)
              {
                goto LABEL_94;
              }

              if (v107 < v130)
              {
                v104 = v11 - 2;
              }
            }
          }

          else
          {
            if (v11 == 3)
            {
              v105 = *(v51 + 4);
              v106 = *(v51 + 5);
              v115 = __OFSUB__(v106, v105);
              v107 = v106 - v105;
              v108 = v115;
              goto LABEL_80;
            }

            v131 = &v51[16 * v11];
            v133 = *v131;
            v132 = *(v131 + 1);
            v115 = __OFSUB__(v132, v133);
            v125 = v132 - v133;
            v126 = v115;
LABEL_94:
            if (v126)
            {
              goto LABEL_171;
            }

            v134 = &v51[16 * v104];
            v136 = *(v134 + 4);
            v135 = *(v134 + 5);
            v115 = __OFSUB__(v135, v136);
            v137 = v135 - v136;
            if (v115)
            {
              goto LABEL_174;
            }

            if (v137 < v125)
            {
              break;
            }
          }

          v49 = v104 - 1;
          if (v104 - 1 >= v11)
          {
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
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
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
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v142 = *v228;
          if (!*v228)
          {
            goto LABEL_187;
          }

          v33 = v51;
          v143 = *&v51[16 * v49 + 32];
          v144 = *&v51[16 * v104 + 40];
          v145 = *(v227 + 72);
          v146 = v142 + v145 * v143;
          v147 = v142 + v145 * *&v51[16 * v104 + 32];
          v148 = v142 + v145 * v144;
          v149 = v245;

          v150 = v146;
          v151 = v233;
          sub_1D1C837DC(v150, v147, v148, v103, v149, v226);
          v11 = v151;
          if (v151)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v144 < v143)
          {
            goto LABEL_165;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v152 = v33;
          }

          else
          {
            v152 = sub_1D1E0BE44(v33);
          }

          v33 = v246;
          if (v49 >= *(v152 + 2))
          {
            goto LABEL_166;
          }

          v233 = 0;
          v153 = &v152[16 * v49];
          *(v153 + 4) = v143;
          *(v153 + 5) = v144;
          v253 = v152;
          sub_1D1E0BDB8(v104);
          v51 = v253;
          v11 = *(v253 + 16);
          v52 = v237;
          v53 = v238;
          if (v11 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v49 = v228[1];
      v50 = v219;
      a4 = v209;
      if (v219 >= v49)
      {
        goto LABEL_151;
      }

      goto LABEL_4;
    }

    break;
  }

  v173 = v229;
  sub_1D1741C08(v52, v229, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v171(v52 + v170, 1, v172) != 1)
  {
    sub_1D1741C08(v52 + v170, v230, &qword_1EC642570, &qword_1D1E6C6A0);
    v174 = *v225;
    v175 = v223;
    (*v225)(v223, v173, v172);
    v49 = v224;
    v174(v224, v230, v172);
    sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if (sub_1D1E6775C())
    {
      v176 = *v232;
      (*v232)(v49, v172);
      v176(v175, v172);
      v52 = v237;
LABEL_128:
      sub_1D1741A30(v52, &qword_1EC642AC0, &qword_1D1E6E810);
      v177 = *(v246 + 20);
      v178 = *(v247 + v177);
      v179 = *(v247 + v177 + 8);
      v180 = (v248 + v177);
      v182 = *v180;
      v181 = v180[1];
      v183 = v178 == *v180 && v179 == v181;
      if (v183 || (sub_1D1E6904C() & 1) != 0)
      {
        v184 = sub_1D1E66A1C();
        v186 = v185;
        if (v184 == sub_1D1E66A1C() && v186 == v187)
        {

          v52 = v237;
          goto LABEL_112;
        }

        v11 = sub_1D1E6904C();

        v52 = v237;
      }

      else
      {
        v251 = v178;
        v252 = v179;
        v249 = v182;
        v250 = v181;
        sub_1D17D8EF0();
        v11 = sub_1D1E685FC() == -1;
        v52 = v237;
      }
    }

    else
    {
      v11 = sub_1D1E6696C();
      v188 = v49;
      v189 = *v232;
      (*v232)(v188, v172);
      v189(v175, v172);
      v52 = v237;
      v49 = &qword_1D1E6C6A0;
      sub_1D1741A30(&v237[v170], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v52, &qword_1EC642570, &qword_1D1E6C6A0);
    }

LABEL_139:
    sub_1D1C86FC0(v248, type metadata accessor for DashboardSortableData);
    sub_1D1C86FC0(v247, type metadata accessor for DashboardSortableData);
    v33 = v246;
    if ((v11 & 1) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_140;
  }

  (*v232)(v173, v172);
  sub_1D1741A30(v52 + v170, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v52, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_125:
  sub_1D1C86FC0(v248, type metadata accessor for DashboardSortableData);
  sub_1D1C86FC0(v247, type metadata accessor for DashboardSortableData);
  v33 = v246;
LABEL_140:
  if (v241)
  {
    v11 = type metadata accessor for DashboardSortableData;
    v49 = v242;
    sub_1D1C86F58(v158, v242, type metadata accessor for DashboardSortableData);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1C86F58(v49, v160, type metadata accessor for DashboardSortableData);
    v160 += v240;
    v158 += v240;
    if (__CFADD__(v159++, 1))
    {
      goto LABEL_113;
    }

    goto LABEL_115;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_188:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_189:

  __break(1u);
LABEL_190:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_191:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1C861FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v96 = a5;
  v9 = sub_1D1E669FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v75[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v80 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v75[-v18];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v75[-v19];
  v20 = type metadata accessor for DashboardSortableData(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v75[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v105 = &v75[-v24];
  result = MEMORY[0x1EEE9AC00](v23);
  v100 = &v75[-v27];
  v77 = a2;
  if (a3 != a2)
  {
    v28 = result;
    v29 = *a4;
    v30 = *(v26 + 72);
    v31 = (v10 + 48);
    v78 = (v10 + 32);
    v85 = (v10 + 8);
    v32 = v29 + v30 * (a3 - 1);
    v93 = -v30;
    v94 = v29;
    v33 = a1 - a3;
    v76 = v30;
    v34 = v29 + v30 * a3;
    v98 = v9;
    v79 = v13;
    v88 = v31;
    v89 = result;
LABEL_6:
    v84 = a3;
    v81 = v34;
    v82 = v33;
    v35 = v33;
    v83 = v32;
    while (1)
    {
      v99 = v35;
      v36 = v100;
      sub_1D1C86EA8(v34, v100, type metadata accessor for DashboardSortableData);
      v37 = v105;
      sub_1D1C86EA8(v32, v105, type metadata accessor for DashboardSortableData);
      v38 = *(v28 + 24);
      v39 = v96;
      v40 = sub_1D18E4158(&v36[v38], v96);
      v42 = v41;
      v43 = *(v28 + 24);
      v44 = sub_1D18E4158(&v37[v43], v39);
      if (v42)
      {
        v97 = v38;
        v46 = v92;
        v47 = v98;
        if ((v45 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v47 = v98;
        if (v45)
        {
          goto LABEL_17;
        }

        v97 = v38;
        v46 = v92;
        if (v40 != v44)
        {
          v71 = v40 < v44;
          goto LABEL_31;
        }
      }

      v48 = v90;
      v49 = *(v91 + 48);
      sub_1D1741C08(v100, v90, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v105, &v48[v49], &qword_1EC642570, &qword_1D1E6C6A0);
      v50 = *v88;
      if ((*v88)(v48, 1, v47) == 1)
      {
        if (v50(&v48[v49], 1, v47) != 1)
        {
          sub_1D1741A30(&v48[v49], &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v48, &qword_1EC642570, &qword_1D1E6C6A0);
          v28 = v89;
LABEL_4:
          sub_1D1C86FC0(v105, type metadata accessor for DashboardSortableData);
          result = sub_1D1C86FC0(v100, type metadata accessor for DashboardSortableData);
LABEL_5:
          a3 = v84 + 1;
          v32 = v83 + v76;
          v33 = v82 - 1;
          v34 = v81 + v76;
          if (v84 + 1 == v77)
          {
            return result;
          }

          goto LABEL_6;
        }

        goto LABEL_20;
      }

      v87 = v43;
      v51 = v86;
      sub_1D1741C08(v48, v86, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v50(&v48[v49], 1, v47) == 1)
      {
        (*v85)(v51, v47);
        sub_1D1741A30(&v48[v49], &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v48, &qword_1EC642570, &qword_1D1E6C6A0);
        v28 = v89;
LABEL_17:
        sub_1D1C86FC0(v105, type metadata accessor for DashboardSortableData);
        result = sub_1D1C86FC0(v100, type metadata accessor for DashboardSortableData);
        v52 = v99;
        goto LABEL_32;
      }

      v53 = v80;
      sub_1D1741C08(&v48[v49], v80, &qword_1EC642570, &qword_1D1E6C6A0);
      v54 = *v78;
      (*v78)(v46, v51, v98);
      v55 = v46;
      v56 = v79;
      v57 = v53;
      v58 = v98;
      v54(v79, v57, v98);
      sub_1D1C86F10(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      if (sub_1D1E6775C())
      {
        v59 = *v85;
        (*v85)(v56, v58);
        v59(v55, v58);
LABEL_20:
        sub_1D1741A30(v48, &qword_1EC642AC0, &qword_1D1E6E810);
        v28 = v89;
        v60 = *(v89 + 20);
        v61 = *&v100[v60];
        v62 = *&v100[v60 + 8];
        v63 = &v105[v60];
        v64 = *v63;
        v65 = v63[1];
        v66 = v61 == *v63 && v62 == v65;
        if (v66 || (sub_1D1E6904C() & 1) != 0)
        {
          v67 = sub_1D1E66A1C();
          v69 = v68;
          if (v67 == sub_1D1E66A1C() && v69 == v70)
          {

            goto LABEL_4;
          }

          v71 = sub_1D1E6904C();
        }

        else
        {
          v103 = v61;
          v104 = v62;
          v101 = v64;
          v102 = v65;
          sub_1D17D8EF0();
          v71 = sub_1D1E685FC() == -1;
        }

        goto LABEL_31;
      }

      v71 = sub_1D1E6696C();
      v72 = *v85;
      (*v85)(v56, v58);
      v72(v92, v58);
      sub_1D1741A30(&v48[v49], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v48, &qword_1EC642570, &qword_1D1E6C6A0);
      v28 = v89;
LABEL_31:
      sub_1D1C86FC0(v105, type metadata accessor for DashboardSortableData);
      result = sub_1D1C86FC0(v100, type metadata accessor for DashboardSortableData);
      v52 = v99;
      if ((v71 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v94)
      {
        __break(1u);
        return result;
      }

      v73 = v95;
      sub_1D1C86F58(v34, v95, type metadata accessor for DashboardSortableData);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1C86F58(v73, v32, type metadata accessor for DashboardSortableData);
      v32 += v93;
      v34 += v93;
      v74 = __CFADD__(v52, 1);
      v35 = v52 + 1;
      if (v74)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1C86AE8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t))
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1D1E68F9C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DashboardSortableData(0);
        v10 = sub_1D1E67C8C();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for DashboardSortableData(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;

      sub_1D1C84A14(v12, v13, a1, v8, a2, a3, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_1D1C861FC(0, v6, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C86C80(uint64_t *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DashboardSortableData(0) - 8);
  v7 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D1E0C0BC(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;

  sub_1D1C86AE8(v10, a2, a3);

  *a1 = v7;
  return swift_bridgeObjectRelease_n();
}

void sub_1D1C86E1C(uint64_t a1)
{
  sub_1D17B77BC(319);
  if (v1 <= 0x3F)
  {
    sub_1D1E66A7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D1C86EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C86F10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1C86F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C86FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ActionService(uint64_t a1)
{
  result = qword_1EC64CC78;
  if (!qword_1EC64CC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActionService.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService(0) + 20));

  return v1;
}

uint64_t ActionService.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionService(0) + 32);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionService.customIconSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService(0) + 40));

  return v1;
}

uint64_t ActionService.serviceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActionService(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t ActionService.displayServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActionService(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t ActionService.serviceSubKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActionService(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

double ActionService.linkedStaticServices.getter()
{
  type metadata accessor for ActionService(0);

  return result;
}

double ActionService.staticCharacteristicsBag.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ActionService(0) + 60));

  return result;
}

double ActionService.staticProfileBag.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ActionService(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

double ActionService.bridgedValveServices.getter()
{
  type metadata accessor for ActionService(0);

  return result;
}

uint64_t ActionService.init(with:overrideCharacteristicValues:overrideProfileValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a2;
  v78 = a3;
  v6 = type metadata accessor for StaticService(0);
  v71 = *(v6 - 1);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - v9;
  v11 = type metadata accessor for ActionService(0);
  v12 = *(v11 - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v69 - v15;
  v17 = sub_1D1E66A7C();
  v18 = *(*(v17 - 8) + 16);
  v18(a4, a1, v17);
  v19 = (a1 + v6[5]);
  v20 = *v19;
  v21 = v19[1];
  v22 = (a4 + v11[5]);
  *v22 = v20;
  v22[1] = v21;
  v70 = v21;
  *(a4 + v11[6]) = *(a1 + v6[6]);
  *(a4 + v11[7]) = *(a1 + v6[7]);
  v18(a4 + v11[8], a1 + v6[11], v17);
  v23 = (a1 + v6[12]);
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  v25 = a4 + v11[9];
  *v25 = v24;
  *(v25 + 8) = v23;
  v26 = (a1 + v6[25]);
  v27 = *v26;
  v28 = v26[1];
  v29 = (a4 + v11[10]);
  *v29 = v27;
  v29[1] = v28;
  v30 = *(a1 + v6[26]);
  *(a4 + v11[11]) = v30;
  if (*(a1 + v6[28]) != 53)
  {
    v30 = *(a1 + v6[28]);
  }

  *(a4 + v11[12]) = v30;
  v31 = *(a1 + v6[27]);
  v74 = a4;
  v75 = v11;
  *(a4 + v11[13]) = v31;
  v72 = a1;
  v73 = v6;
  v32 = *(a1 + v6[31]);
  v33 = *(v32 + 16);
  if (v33)
  {
    *&v81 = MEMORY[0x1E69E7CC0];

    sub_1D178DC80(0, v33, 0);
    v34 = v81;
    v35 = v32 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v36 = *(v71 + 72);
    do
    {
      sub_1D1C8D2B4(v35, v10, type metadata accessor for StaticService);
      v37 = v76;
      sub_1D1C8D2B4(v10, v76, type metadata accessor for StaticService);
      v38 = v78;

      v39 = v77;

      ActionService.init(with:overrideCharacteristicValues:overrideProfileValues:)(v37, v39, v38, v16);
      sub_1D1C8D31C(v10, type metadata accessor for StaticService);
      *&v81 = v34;
      v41 = *(v34 + 16);
      v40 = *(v34 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1D178DC80((v40 > 1), v41 + 1, 1);
        v34 = v81;
      }

      *(v34 + 16) = v41 + 1;
      sub_1D1C8D398(v16, v34 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v41, type metadata accessor for ActionService);
      v35 += v36;
      --v33;
    }

    while (v33);
    a1 = v72;
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  v42 = v77;
  v43 = v74;
  *(v74 + v75[14]) = v34;
  v82 = sub_1D1C8ACE8(a1, v42);
  v44 = v73;
  v45 = (a1 + v73[33]);
  v46 = *v45;

  v47 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
  v48 = v78;

  sub_1D1C8AAD8(v47, v46, v48, &v82);
  v50 = v49;

  v51 = v82;
  v52 = sub_1D1C8C368(v82, *(a1 + v44[32]));
  v53 = v45[1];
  v79 = *v45;
  v80 = v53;

  sub_1D1B9F16C(v50, &v81);

  v54 = v75;
  *(v43 + v75[16]) = v81;
  *(v43 + v54[15]) = v52;
  v55 = *(a1 + v44[36]);
  v56 = *(v55 + 16);
  if (v56)
  {
    v70 = v51;
    *&v81 = MEMORY[0x1E69E7CC0];
    sub_1D178DC80(0, v56, 0);
    v57 = v81;
    v58 = v55 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v59 = *(v71 + 72);
    v60 = v69;
    do
    {
      sub_1D1C8D2B4(v58, v10, type metadata accessor for StaticService);
      v61 = v76;
      sub_1D1C8D2B4(v10, v76, type metadata accessor for StaticService);
      v62 = v78;

      v63 = v77;

      ActionService.init(with:overrideCharacteristicValues:overrideProfileValues:)(v61, v63, v62, v60);
      sub_1D1C8D31C(v10, type metadata accessor for StaticService);
      *&v81 = v57;
      v65 = *(v57 + 16);
      v64 = *(v57 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1D178DC80((v64 > 1), v65 + 1, 1);
        v57 = v81;
      }

      *(v57 + 16) = v65 + 1;
      sub_1D1C8D398(v60, v57 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v65, type metadata accessor for ActionService);
      v58 += v59;
      --v56;
    }

    while (v56);

    a1 = v72;
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
  }

  v67 = v74;
  v66 = v75;
  *(v74 + v75[17]) = v57;
  sub_1D1741C08(a1 + v73[39], v67 + v66[18], &qword_1EC644870, &unk_1D1EABA00);
  return sub_1D1C8D31C(a1, type metadata accessor for StaticService);
}

void sub_1D1C87B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v51[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51[0] = v51 - v5;
  v6 = sub_1D1E66A7C();
  v62 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v52 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v54);
  v9 = v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v51 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v51 - v16;
  sub_1D1741C08(a2, &v60, &qword_1EC646C38, &qword_1D1E82548);
  v18 = v60;
  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_1D1741C08(a2, &v60, &qword_1EC646C38, &qword_1D1E82548);

  sub_1D1742194(v61, v59);
  v55 = v18;
  v19 = [v18 service];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 uniqueIdentifier];

    sub_1D1E66A5C();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v62;
  v24 = *(v62 + 56);
  v24(v17, v22, 1, v6);
  (*(v23 + 16))(v15, v56, v6);
  v24(v15, 0, 1, v6);
  v25 = *(v54 + 48);
  sub_1D1741C08(v17, v9, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v15, &v9[v25], &qword_1EC642590, qword_1D1E71260);
  v26 = *(v23 + 48);
  if (v26(v9, 1, v6) != 1)
  {
    v27 = v53;
    sub_1D1741C08(v9, v53, &qword_1EC642590, qword_1D1E71260);
    if (v26(&v9[v25], 1, v6) != 1)
    {
      v28 = v62;
      v29 = v52;
      (*(v62 + 32))(v52, &v9[v25], v6);
      sub_1D1C8D400(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      LODWORD(v54) = sub_1D1E6775C();
      v30 = *(v28 + 8);
      v30(v29, v6);
      sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
      v30(v27, v6);
      sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
      if (v54)
      {
        goto LABEL_12;
      }

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v59);

      return;
    }

    sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
    (*(v62 + 8))(v27, v6);
LABEL_9:
    sub_1D1741A30(v9, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_10;
  }

  sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
  if (v26(&v9[v25], 1, v6) != 1)
  {
    goto LABEL_9;
  }

  sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
LABEL_12:
  v31 = *(v56 + *(type metadata accessor for StaticService(0) + 104));
  LOBYTE(v60) = v31;
  v32 = ServiceKind.requiredCharacteristicKinds.getter();
  LOBYTE(v57[0]) = v31;
  v33 = ServiceKind.optionalCharacteristicKinds.getter();
  v34 = sub_1D18C0104(v33, v32);
  v35 = v55;
  v36 = [v55 characteristicType];
  v37 = sub_1D1E6781C();
  v39 = v38;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  CharacteristicKind.init(rawValue:)(v40);
  if (v60 == 174)
  {
    v41 = 0;
  }

  else
  {
    v41 = v60;
  }

  v42 = sub_1D171974C(v41, v34);

  if (v42)
  {
    v43 = [v35 characteristicType];
    v44 = sub_1D1E6781C();
    v46 = v45;

    v47._countAndFlagsBits = v44;
    v47._object = v46;
    CharacteristicKind.init(rawValue:)(v47);
    if (v60 == 174)
    {
      v48 = 0;
    }

    else
    {
      v48 = v60;
    }

    sub_1D1741970(v59, &v60);
    v57[1] = 0;
    v57[2] = 0;
    v57[0] = 1;
    v58 = 3;
    v49 = v35;
    v50 = v51[0];
    StaticCharacteristic.init(from:value:loadingState:)(v49, &v60, v57, v51[0]);
    sub_1D1B0F194(v50, v48);

    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }
}

uint64_t sub_1D1C88250(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v121 = a1;
  v120 = a4;
  v6 = sub_1D1E669FC();
  v118 = *(v6 - 8);
  v119 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v122 = v8;
  v123 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v116 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v104 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v107 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v104 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v108 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v106 = &v104 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v112 = &v104 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v104 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v110 = &v104 - v26;
  v109 = type metadata accessor for StaticCharacteristic(0);
  v113 = *(v109 - 8);
  v27 = MEMORY[0x1EEE9AC00](v109);
  v104 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v114 = &v104 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v104 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v104 - v37;
  v39 = a2;
  sub_1D1741C08(a2, &v104 - v37, &qword_1EC645578, &qword_1D1E79B20);
  v40 = *(v30 + 48);
  if (!*(a3 + 16) || (v41 = sub_1D1742188(), (v42 & 1) == 0))
  {
    sub_1D1C8D31C(&v38[v40], type metadata accessor for StaticLightProfile);
    v44 = v122;
    v45 = *(v123 + 8);
    v45(v38, v122);
LABEL_11:
    v62 = sub_1D179B3D4(&unk_1F4D61268);

    v64 = sub_1D17829C8(v63);
    v66 = sub_1D1E63FD8(v62, v64, v65);

    v67 = v66[2];

    if (v67)
    {
      v68 = 0;
    }

    else
    {
      sub_1D1741C08(v39, v33, &qword_1EC645578, &qword_1D1E79B20);
      v69 = &v33[*(v30 + 48)];
      v70 = (v69 + *(type metadata accessor for StaticLightProfile(0) + 24));
      v71 = *v70;
      v72 = v70[1];
      if (v72 == 2)
      {
        v68 = v71;
      }

      else
      {
        v68 = v72;
      }

      sub_1D1C8D31C(v69, type metadata accessor for StaticLightProfile);
      v45(v33, v44);
    }

    sub_1D1741C08(v39, v36, &qword_1EC645578, &qword_1D1E79B20);
    v73 = *(v30 + 48);
    v74 = v121;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124 = *v74;
    sub_1D17560EC(v68 & 1, v36, isUniquelyReferenced_nonNull_native);
    v45(v36, v44);
    *v74 = v124;
    v76 = type metadata accessor for StaticLightProfile;
    v77 = &v36[v73];
    return sub_1D1C8D31C(v77, v76);
  }

  v43 = *(*(a3 + 56) + v41);
  sub_1D1C8D31C(&v38[v40], type metadata accessor for StaticLightProfile);
  v44 = v122;
  v45 = *(v123 + 8);
  v45(v38, v122);
  if ((v43 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  sub_1D1741C08(v39, v36, &qword_1EC645578, &qword_1D1E79B20);
  v46 = *(v30 + 48);
  v47 = v121;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v47;
  sub_1D17560EC(v43, v36, v48);
  v45(v36, v44);
  *v47 = v124;
  result = sub_1D1C8D31C(&v36[v46], type metadata accessor for StaticLightProfile);
  if (v43)
  {
    v50 = *v120;
    if (*(*v120 + 16))
    {
      result = sub_1D171D140(26);
      if (v51)
      {
        v52 = v104;
        sub_1D1C8D2B4(*(v50 + 56) + *(v113 + 72) * result, v104, type metadata accessor for StaticCharacteristic);
        v53 = v114;
        sub_1D1C8D398(v52, v114, type metadata accessor for StaticCharacteristic);
        v54 = v122;
        v55 = v123;
        v56 = *(v123 + 56);
        v57 = v105;
        v56(v105, 1, 1, v122);
        v59 = v118;
        v58 = v119;
        (*(v118 + 56))(v111, 1, 1, v119);
        v56(v112, 1, 1, v54);
        v60 = v106;
        sub_1D1741A90(v57, v106, &qword_1EC642590, qword_1D1E71260);
        v61 = *(v55 + 48);
        if (v61(v60, 1, v54) == 1)
        {
          (*(v55 + 16))(v115, v53, v54);
          if (v61(v60, 1, v54) != 1)
          {
            sub_1D1741A30(v60, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          (*(v55 + 32))(v115, v60, v54);
        }

        v78 = v109;
        LODWORD(v106) = *(v53 + *(v109 + 20));
        v79 = v107;
        sub_1D1741A90(v111, v107, &qword_1EC642570, &qword_1D1E6C6A0);
        v80 = *(v59 + 48);
        if (v80(v79, 1, v58) == 1)
        {
          (*(v59 + 16))(v117, v53 + v78[7], v58);
          v81 = v80(v79, 1, v58);
          v82 = v116;
          if (v81 != 1)
          {
            sub_1D1741A30(v79, &qword_1EC642570, &qword_1D1E6C6A0);
          }
        }

        else
        {
          (*(v59 + 32))(v117, v79, v58);
          v82 = v116;
        }

        v83 = v78[9];
        v84 = v53 + v78[8];
        v85 = *v84;
        v121 = *(v84 + 8);
        v111 = *(v84 + 16);
        LODWORD(v107) = *(v84 + 24);
        v105 = *(v53 + v83);
        v86 = v108;
        sub_1D1741A90(v112, v108, &qword_1EC642590, qword_1D1E71260);
        v87 = v122;
        v88 = v61(v86, 1, v122);
        v104 = v85;
        if (v88 == 1)
        {
          v89 = v123;
          (*(v123 + 16))(v82, v53 + v78[10], v87);
          v90 = v61(v86, 1, v87);
          sub_1D17418FC(v85, v121, v111, v107);
          if (v90 != 1)
          {
            sub_1D1741A30(v86, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          v89 = v123;
          (*(v123 + 32))(v82, v86, v87);
          sub_1D17418FC(v85, v121, v111, v107);
        }

        v91 = (v53 + v78[11]);
        v92 = v91[1];
        v123 = *v91;
        v93 = v91[2];
        v94 = v91[3];
        v95 = v91[4];
        v96 = *(v89 + 32);
        v97 = v78;
        v98 = v110;
        v96(v110, v115, v87);
        *(v98 + v97[5]) = v106;
        v99 = v98 + v97[6];
        *v99 = xmmword_1D1EA2400;
        *(v99 + 16) = 5;
        (*(v118 + 32))(v98 + v97[7], v117, v119);
        v100 = v98 + v97[8];
        v101 = v121;
        *v100 = v104;
        *(v100 + 8) = v101;
        *(v100 + 16) = v111;
        *(v100 + 24) = v107;
        *(v98 + v97[9]) = v105;
        v96((v98 + v97[10]), v116, v87);
        v102 = (v98 + v97[11]);
        v103 = v123;
        *v102 = v123;
        v102[1] = v92;
        v102[2] = v93;
        v102[3] = v94;
        v102[4] = v95;
        (*(v113 + 56))(v98, 0, 1, v97);
        sub_1D18F323C(v103, v92, v93, v94, v95);
        sub_1D1B0F194(v98, 26);
        v76 = type metadata accessor for StaticCharacteristic;
        v77 = v114;
        return sub_1D1C8D31C(v77, v76);
      }
    }
  }

  return result;
}

uint64_t ActionService.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EndpointPath(0);
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = v36 - v7;
  v8 = type metadata accessor for ActionService(0);
  v9 = *(v8 - 1);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v36 - v13;
  v15 = sub_1D1E66A7C();
  v16 = sub_1D1C8D400(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  sub_1D1E6922C();
  sub_1D1E6922C();
  v36[1] = v16;
  v36[2] = v15;
  sub_1D1E676EC();
  v17 = (v1 + v8[9]);
  v18 = *(v17 + 8);
  v40 = v4;
  if (v18 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v19 = *v17;
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v19);
  }

  v20 = v9;
  if (*(v1 + v8[10] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v42 = *(v1 + v8[11]);
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  v41 = *(v1 + v8[12]);
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  v21 = *(v1 + v8[13]);
  sub_1D1E6922C();
  if (v21 != 5)
  {
    sub_1D1E678EC();
  }

  v22 = *(v1 + v8[14]);
  MEMORY[0x1D3892850](*(v22 + 16));
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v25 = *(v20 + 72);
    do
    {
      sub_1D1C8D2B4(v24, v14, type metadata accessor for ActionService);
      ActionService.hash(into:)(a1);
      sub_1D1C8D31C(v14, type metadata accessor for ActionService);
      v24 += v25;
      --v23;
    }

    while (v23);
  }

  sub_1D18563E0(a1, *(v1 + v8[15]));
  v26 = (v1 + v8[16]);
  v27 = v26[1];
  sub_1D18582DC(a1, *v26);
  sub_1D1857C7C(a1, v27);
  v28 = *(v2 + v8[17]);
  MEMORY[0x1D3892850](*(v28 + 16));
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v28 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v31 = *(v20 + 72);
    do
    {
      sub_1D1C8D2B4(v30, v12, type metadata accessor for ActionService);
      ActionService.hash(into:)(a1);
      sub_1D1C8D31C(v12, type metadata accessor for ActionService);
      v30 += v31;
      --v29;
    }

    while (v29);
  }

  v32 = v38;
  sub_1D1741C08(v2 + v8[18], v38, &qword_1EC644870, &unk_1D1EABA00);
  v33 = v40;
  if ((*(v39 + 48))(v32, 1, v40) == 1)
  {
    return sub_1D1E6922C();
  }

  v35 = v37;
  sub_1D1C8D398(v32, v37, type metadata accessor for EndpointPath);
  sub_1D1E6922C();
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v35 + *(v33 + 20)));
  sub_1D1E6923C();
  return sub_1D1C8D31C(v35, type metadata accessor for EndpointPath);
}

uint64_t ActionService.hashValue.getter()
{
  sub_1D1E6920C();
  ActionService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C89434()
{
  sub_1D1E6920C();
  ActionService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C89478(uint64_t a1)
{
  sub_1D1E6920C();
  ActionService.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t ActionService.canBeToggled.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService(0) + 44));
  if (v1 - 3) < 0x2E && ((0x32C892066001uLL >> (v1 - 3)))
  {
    v2 = 1;
  }

  else
  {
    if (qword_1EC642230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = off_1EC646318;

    v2 = sub_1D171951C(v1, v3);
  }

  return v2 & 1;
}