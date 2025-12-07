uint64_t sub_14D84(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_29A0(&qword_2E2B0, &qword_22958);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v170 - v14;
  v16 = __chkstk_darwin(v13);
  v184 = &v170 - v17;
  v18 = __chkstk_darwin(v16);
  v188 = (&v170 - v19);
  v20 = __chkstk_darwin(v18);
  v172 = &v170 - v21;
  __chkstk_darwin(v20);
  v174 = &v170 - v22;
  v212 = sub_1FEAC();
  v23 = *(v212 - 8);
  v24 = __chkstk_darwin(v212);
  v196 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v209 = &v170 - v27;
  v28 = __chkstk_darwin(v26);
  v181 = &v170 - v29;
  v30 = __chkstk_darwin(v28);
  v185 = (&v170 - v31);
  v32 = __chkstk_darwin(v30);
  v171 = &v170 - v33;
  __chkstk_darwin(v32);
  v35 = &v170 - v34;
  v202 = sub_29A0(&qword_2E2C0, &qword_22978);
  v190 = *(v202 - 8);
  v36 = __chkstk_darwin(v202);
  v170 = (&v170 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __chkstk_darwin(v36);
  v199 = &v170 - v39;
  v40 = __chkstk_darwin(v38);
  v201 = &v170 - v41;
  v42 = __chkstk_darwin(v40);
  v211 = &v170 - v43;
  v44 = __chkstk_darwin(v42);
  v45 = __chkstk_darwin(v44);
  v195 = &v170 - v46;
  v47 = __chkstk_darwin(v45);
  v178 = &v170 - v48;
  result = __chkstk_darwin(v47);
  v177 = &v170 - v51;
  v52 = a3[1];
  v179 = a1;
  if (v52 < 1)
  {
    v54 = _swiftEmptyArrayStorage;
LABEL_115:
    v55 = *v179;
    if (!*v179)
    {
      goto LABEL_154;
    }

    v23 = v54;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v23;
LABEL_118:
      v213 = result;
      v23 = *(result + 16);
      if (v23 >= 2)
      {
        while (*a3)
        {
          v166 = *(result + 16 * v23);
          v167 = result;
          v168 = *(result + 16 * (v23 - 1) + 40);
          sub_168C4(*a3 + *(v190 + 72) * v166, *a3 + *(v190 + 72) * *(result + 16 * (v23 - 1) + 32), *a3 + *(v190 + 72) * v168, v55);
          if (v5)
          {
          }

          if (v168 < v166)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = sub_17B28(v167);
          }

          if (v23 - 2 >= *(v167 + 2))
          {
            goto LABEL_142;
          }

          v169 = &v167[16 * v23];
          *v169 = v166;
          *(v169 + 1) = v168;
          v213 = v167;
          sub_17A9C(v23 - 1);
          result = v213;
          v23 = *(v213 + 16);
          if (v23 <= 1)
          {
          }
        }

        goto LABEL_152;
      }
    }

LABEL_148:
    result = sub_17B28(v23);
    goto LABEL_118;
  }

  v203 = v15;
  v194 = v50;
  v200 = v12;
  v173 = a4;
  v53 = 0;
  v205 = (v23 + 32);
  v206 = (v23 + 48);
  v204 = (v23 + 8);
  v54 = _swiftEmptyArrayStorage;
  v55 = &qword_2E2B0;
  v191 = a3;
  v175 = v35;
  while (1)
  {
    v56 = v53;
    v57 = v53 + 1;
    v192 = v54;
    if (v57 < v52)
    {
      v187 = v52;
      v58 = *a3;
      v59 = *(v190 + 72);
      v193 = v57;
      v60 = v177;
      sub_FBB0(v58 + v59 * v57, v177, &qword_2E2C0, &qword_22978);
      v180 = v56;
      v197 = v59;
      v61 = v58 + v59 * v56;
      v62 = v178;
      sub_FBB0(v61, v178, &qword_2E2C0, &qword_22978);
      v63 = v174;
      sub_FBB0(v60, v174, &qword_2E2B0, &qword_22958);
      v64 = *v206;
      v65 = (*v206)(v63, 1, v212);
      v186 = v64;
      v176 = v5;
      if (v65 == 1)
      {
        sub_469C(v63, &qword_2E2B0, &qword_22958);
        LODWORD(v189) = 0;
        a3 = v188;
      }

      else
      {
        v66 = v212;
        v210 = *v205;
        v210(v35, v63, v212);
        v67 = v172;
        sub_FBB0(v62, v172, &qword_2E2B0, &qword_22958);
        v68 = v64(v67, 1, v66);
        a3 = v188;
        if (v68 == 1)
        {
          (*v204)(v35, v212);
          sub_469C(v67, &qword_2E2B0, &qword_22958);
          LODWORD(v189) = 1;
        }

        else
        {
          v69 = v171;
          v70 = v67;
          v71 = v212;
          v210(v171, v70, v212);
          LODWORD(v189) = sub_1FE7C();
          v72 = *v204;
          (*v204)(v69, v71);
          v72(v35, v71);
        }
      }

      v55 = v180;
      sub_469C(v178, &qword_2E2C0, &qword_22978);
      result = sub_469C(v177, &qword_2E2C0, &qword_22978);
      v73 = v55 + 2;
      v74 = v197 * (v55 + 2);
      v23 = v58 + v74;
      v75 = v193;
      v76 = v197 * v193;
      v77 = v58 + v197 * v193;
      v78 = v185;
      do
      {
        v80 = v73;
        v82 = v75;
        v81 = v76;
        v5 = v74;
        if (v73 >= v187)
        {
          break;
        }

        v207 = v73;
        v208 = v75;
        v210 = v74;
        v198 = v76;
        v84 = v195;
        sub_FBB0(v23, v195, &qword_2E2C0, &qword_22978);
        v85 = v194;
        sub_FBB0(v77, v194, &qword_2E2C0, &qword_22978);
        v86 = v84;
        v55 = &qword_22958;
        sub_FBB0(v86, a3, &qword_2E2B0, &qword_22958);
        v87 = v186;
        if (v186(a3, 1, v212) == 1)
        {
          sub_469C(a3, &qword_2E2B0, &qword_22958);
          v79 = 0;
        }

        else
        {
          v55 = v78;
          v88 = v212;
          v193 = *v205;
          (v193)(v78, a3, v212);
          v89 = v184;
          sub_FBB0(v85, v184, &qword_2E2B0, &qword_22958);
          if (v87(v89, 1, v88) == 1)
          {
            (*v204)(v55, v212);
            sub_469C(v89, &qword_2E2B0, &qword_22958);
            v79 = 1;
            v80 = v207;
            v5 = v210;
            v78 = v55;
            goto LABEL_15;
          }

          v90 = v181;
          v91 = v212;
          (v193)(v181, v89, v212);
          v79 = sub_1FE7C();
          v92 = *v204;
          v78 = v185;
          (*v204)(v90, v91);
          v92(v78, v91);
        }

        v80 = v207;
        v5 = v210;
LABEL_15:
        sub_469C(v194, &qword_2E2C0, &qword_22978);
        result = sub_469C(v195, &qword_2E2C0, &qword_22978);
        v73 = v80 + 1;
        v81 = v198;
        v23 += v197;
        v77 += v197;
        v82 = v208;
        v75 = v208 + 1;
        v76 = v198 + v197;
        v74 = &v5[v197];
        v83 = (v189 & 1) == (v79 & 1);
        a3 = v188;
      }

      while (v83);
      if (v189)
      {
        v56 = v180;
        if (v80 < v180)
        {
          goto LABEL_145;
        }

        if (v180 < v80)
        {
          v93 = v180 * v197;
          v55 = v170;
          while (1)
          {
            if (v56 == v82)
            {
              goto LABEL_29;
            }

            v208 = v82;
            v210 = v5;
            v23 = *v191;
            if (!*v191)
            {
              goto LABEL_151;
            }

            v96 = v81;
            sub_1DFC0(v23 + v93, v55, &qword_2E2C0, &qword_22978);
            v94 = v96;
            if (v93 < v96 || v23 + v93 >= v210 + v23)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              if (v93 == v96)
              {
                goto LABEL_28;
              }

              swift_arrayInitWithTakeBackToFront();
            }

            v94 = v96;
LABEL_28:
            result = sub_1DFC0(v55, v23 + v94, &qword_2E2C0, &qword_22978);
            v81 = v96;
            v5 = v210;
            v82 = v208;
LABEL_29:
            ++v56;
            v81 -= v197;
            v5 -= v197;
            v93 += v197;
            if (v56 >= v82--)
            {
              goto LABEL_37;
            }
          }
        }

        v57 = v80;
        v5 = v176;
        a3 = v191;
      }

      else
      {
LABEL_37:
        v57 = v80;
        v5 = v176;
        a3 = v191;
        v56 = v180;
      }
    }

    v97 = a3[1];
    v193 = v57;
    if (v57 < v97)
    {
      v136 = __OFSUB__(v57, v56);
      v98 = v57 - v56;
      if (v136)
      {
        goto LABEL_144;
      }

      if (v98 < v173)
      {
        break;
      }
    }

LABEL_62:
    if (v193 < v56)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v54 = v192;
    }

    else
    {
      result = sub_11BA0(0, *(v192 + 2) + 1, 1, v192);
      v54 = result;
    }

    v122 = *(v54 + 2);
    v121 = *(v54 + 3);
    v23 = v122 + 1;
    if (v122 >= v121 >> 1)
    {
      result = sub_11BA0((v121 > 1), v122 + 1, 1, v54);
      v54 = result;
    }

    *(v54 + 2) = v23;
    v123 = &v54[16 * v122];
    v124 = v193;
    *(v123 + 4) = v56;
    *(v123 + 5) = v124;
    if (!*v179)
    {
      goto LABEL_153;
    }

    if (v122)
    {
      a3 = *v179;
      v55 = &qword_2E2B0;
      while (1)
      {
        v125 = v23 - 1;
        if (v23 >= 4)
        {
          break;
        }

        if (v23 == 3)
        {
          v126 = *(v54 + 4);
          v127 = *(v54 + 5);
          v136 = __OFSUB__(v127, v126);
          v128 = v127 - v126;
          v129 = v136;
LABEL_83:
          if (v129)
          {
            goto LABEL_132;
          }

          v142 = &v54[16 * v23];
          v144 = *v142;
          v143 = *(v142 + 1);
          v145 = __OFSUB__(v143, v144);
          v146 = v143 - v144;
          v147 = v145;
          if (v145)
          {
            goto LABEL_135;
          }

          v148 = &v54[16 * v125 + 32];
          v150 = *v148;
          v149 = *(v148 + 1);
          v136 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v136)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v146, v151))
          {
            goto LABEL_139;
          }

          if (v146 + v151 >= v128)
          {
            if (v128 < v151)
            {
              v125 = v23 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v152 = &v54[16 * v23];
        v154 = *v152;
        v153 = *(v152 + 1);
        v136 = __OFSUB__(v153, v154);
        v146 = v153 - v154;
        v147 = v136;
LABEL_97:
        if (v147)
        {
          goto LABEL_134;
        }

        v155 = &v54[16 * v125];
        v157 = *(v155 + 4);
        v156 = *(v155 + 5);
        v136 = __OFSUB__(v156, v157);
        v158 = v156 - v157;
        if (v136)
        {
          goto LABEL_137;
        }

        if (v158 < v146)
        {
          goto LABEL_4;
        }

LABEL_104:
        v55 = (v125 - 1);
        if (v125 - 1 >= v23)
        {
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

        if (!*v191)
        {
          goto LABEL_150;
        }

        v163 = v54;
        v23 = *&v54[16 * v55 + 32];
        v164 = *&v54[16 * v125 + 40];
        sub_168C4(*v191 + *(v190 + 72) * v23, *v191 + *(v190 + 72) * *&v54[16 * v125 + 32], *v191 + *(v190 + 72) * v164, a3);
        if (v5)
        {
        }

        if (v164 < v23)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = sub_17B28(v163);
        }

        if (v55 >= *(v163 + 2))
        {
          goto LABEL_129;
        }

        v165 = &v163[16 * v55];
        *(v165 + 4) = v23;
        *(v165 + 5) = v164;
        v213 = v163;
        result = sub_17A9C(v125);
        v54 = v213;
        v23 = *(v213 + 16);
        v55 = &qword_2E2B0;
        if (v23 <= 1)
        {
          goto LABEL_4;
        }
      }

      v130 = &v54[16 * v23 + 32];
      v131 = *(v130 - 64);
      v132 = *(v130 - 56);
      v136 = __OFSUB__(v132, v131);
      v133 = v132 - v131;
      if (v136)
      {
        goto LABEL_130;
      }

      v135 = *(v130 - 48);
      v134 = *(v130 - 40);
      v136 = __OFSUB__(v134, v135);
      v128 = v134 - v135;
      v129 = v136;
      if (v136)
      {
        goto LABEL_131;
      }

      v137 = &v54[16 * v23];
      v139 = *v137;
      v138 = *(v137 + 1);
      v136 = __OFSUB__(v138, v139);
      v140 = v138 - v139;
      if (v136)
      {
        goto LABEL_133;
      }

      v136 = __OFADD__(v128, v140);
      v141 = v128 + v140;
      if (v136)
      {
        goto LABEL_136;
      }

      if (v141 >= v133)
      {
        v159 = &v54[16 * v125 + 32];
        v161 = *v159;
        v160 = *(v159 + 1);
        v136 = __OFSUB__(v160, v161);
        v162 = v160 - v161;
        if (v136)
        {
          goto LABEL_140;
        }

        if (v128 < v162)
        {
          v125 = v23 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

    v55 = &qword_2E2B0;
LABEL_4:
    a3 = v191;
    v52 = v191[1];
    v53 = v193;
    v35 = v175;
    if (v193 >= v52)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v56, v173))
  {
    goto LABEL_146;
  }

  if (v56 + v173 >= v97)
  {
    v99 = v97;
  }

  else
  {
    v99 = (v56 + v173);
  }

  if (v99 < v56)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v193 == v99)
  {
    goto LABEL_62;
  }

  v176 = v5;
  v100 = *a3;
  v101 = *(v190 + 72);
  v102 = *a3 + v101 * (v193 - 1);
  v197 = -v101;
  v180 = v56;
  v103 = (v56 - v193);
  v198 = v100;
  v182 = v101;
  v23 = v100 + v193 * v101;
  v104 = v201;
  a3 = &qword_22958;
  v183 = v99;
LABEL_51:
  v186 = v23;
  v187 = v103;
  v189 = v102;
  v105 = v102;
  while (1)
  {
    v210 = v103;
    v106 = v211;
    sub_FBB0(v23, v211, &qword_2E2C0, &qword_22978);
    sub_FBB0(v105, v104, &qword_2E2C0, &qword_22978);
    v107 = v203;
    v55 = &qword_22978;
    sub_FBB0(v106, v203, &qword_2E2B0, a3);
    v108 = a3;
    v109 = *v206;
    if ((*v206)(v107, 1, v212) == 1)
    {
      sub_469C(v107, &qword_2E2B0, v108);
      sub_469C(v104, &qword_2E2C0, &qword_22978);
      sub_469C(v211, &qword_2E2C0, &qword_22978);
      a3 = v108;
      goto LABEL_50;
    }

    v208 = v23;
    v55 = v205;
    v110 = v209;
    v111 = v212;
    v207 = *v205;
    (v207)(v209, v107, v212);
    v112 = v200;
    sub_FBB0(v104, v200, &qword_2E2B0, v108);
    if (v109(v112, 1, v111) == 1)
    {
      (*v204)(v110, v212);
      sub_469C(v112, &qword_2E2B0, v108);
      v104 = v201;
      sub_469C(v201, &qword_2E2C0, &qword_22978);
      result = sub_469C(v211, &qword_2E2C0, &qword_22978);
      goto LABEL_56;
    }

    v113 = v212;
    v114 = v196;
    (v207)(v196, v112, v212);
    v115 = sub_1FE7C();
    v55 = v204;
    v116 = *v204;
    (*v204)(v114, v113);
    v116(v209, v113);
    v104 = v201;
    sub_469C(v201, &qword_2E2C0, &qword_22978);
    result = sub_469C(v211, &qword_2E2C0, &qword_22978);
    if ((v115 & 1) == 0)
    {
      a3 = &qword_22958;
LABEL_50:
      v102 = v189 + v182;
      v103 = (v187 - 1);
      v23 = v186 + v182;
      if (++v193 == v183)
      {
        v193 = v183;
        v5 = v176;
        v56 = v180;
        goto LABEL_62;
      }

      goto LABEL_51;
    }

LABEL_56:
    v117 = v210;
    if (!v198)
    {
      break;
    }

    v118 = v208;
    v119 = v199;
    sub_1DFC0(v208, v199, &qword_2E2C0, &qword_22978);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DFC0(v119, v105, &qword_2E2C0, &qword_22978);
    v105 += v197;
    v23 = v118 + v197;
    v120 = __CFADD__(v117, 1);
    v103 = v117 + 1;
    a3 = &qword_22958;
    if (v120)
    {
      goto LABEL_50;
    }
  }

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
  return result;
}

void sub_1602C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_104:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v112 = *(v8 + 2);
      if (v112 >= 2)
      {
        while (*v5)
        {
          v113 = v8;
          v8 = (v112 - 1);
          v114 = *&v113[16 * v112];
          v115 = *&v113[16 * v112 + 24];
          sub_17680((*v5 + 16 * v114), (*v5 + 16 * *&v113[16 * v112 + 16]), (*v5 + 16 * v115), v4);
          if (v131)
          {
            goto LABEL_114;
          }

          if (v115 < v114)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_17B28(v113);
          }

          if (v112 - 2 >= *(v113 + 2))
          {
            goto LABEL_130;
          }

          v116 = &v113[16 * v112];
          *v116 = v114;
          *(v116 + 1) = v115;
          sub_17A9C(v112 - 1);
          v8 = v113;
          v112 = *(v113 + 2);
          if (v112 <= 1)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_140;
      }

LABEL_114:

      return;
    }

LABEL_136:
    v8 = sub_17B28(v8);
    goto LABEL_106;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    v127 = v8;
    if (v7 < v6)
    {
      v123 = v6;
      v10 = v7;
      v11 = *v5;
      v128 = v10;
      v120 = v9;
      v12 = *(*v5 + 16 * v9);
      v13 = *(*v5 + 16 * v10);

      v14 = v12;

      v15 = [v13 displayName];
      v16 = sub_2041C();
      v4 = v17;

      v18 = [v14 displayName];
      v19 = sub_2041C();
      v21 = v20;

      if (v16 == v19 && v4 == v21)
      {
        v125 = 0;
      }

      else
      {
        v125 = sub_2090C();
      }

      v23 = (v120 + 2);
      v24 = v11 + 16 * v120 + 24;
      v25 = 16 * v120 + 16;
      v8 = v127;
      v26 = v128;
      do
      {
        v7 = v23;
        v28 = v26;
        v29 = v25;
        if (v23 >= v123)
        {
          break;
        }

        v134 = v23;
        v30 = *(v24 - 8);
        v31 = *(v24 + 8);

        v32 = v30;

        v129 = v31;
        v33 = [v31 displayName];
        v34 = sub_2041C();
        v4 = v35;

        v36 = [v32 displayName];
        v37 = sub_2041C();
        v39 = v38;

        v40 = v34 == v37 && v4 == v39;
        v27 = v40 ? 0 : sub_2090C();

        v7 = v134;
        v23 = (v134 + 1);
        v24 += 16;
        v26 = (v28 + 1);
        v25 = v29 + 16;
        v8 = v127;
      }

      while (((v125 ^ v27) & 1) == 0);
      if (v125)
      {
        v41 = v120;
        v5 = a3;
        if (v7 < v120)
        {
          goto LABEL_133;
        }

        if (v120 >= v7)
        {
          v9 = v120;
          goto LABEL_32;
        }

        v42 = 16 * v120;
        do
        {
          if (v41 != v28)
          {
            v44 = *a3;
            if (!*a3)
            {
              goto LABEL_139;
            }

            v45 = *(v44 + v42);
            *(v44 + v42) = *(v44 + v29);
            *(v44 + v29) = v45;
          }

          ++v41;
          v29 -= 16;
          v42 += 16;
          v43 = v41 < v28;
          v28 = (v28 - 1);
        }

        while (v43);
      }

      else
      {
        v5 = a3;
      }

      v9 = v120;
    }

LABEL_32:
    v46 = v5[1];
    if (v7 < v46)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_132;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_11BA0(0, *(v8 + 2) + 1, 1, v8);
    }

    v66 = *(v8 + 2);
    v65 = *(v8 + 3);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v8 = sub_11BA0((v65 > 1), v66 + 1, 1, v8);
    }

    *(v8 + 2) = v67;
    v68 = &v8[16 * v66];
    *(v68 + 4) = v9;
    *(v68 + 5) = v7;
    v69 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v66)
    {
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v8 + 4);
          v72 = *(v8 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_73:
          if (v74)
          {
            goto LABEL_120;
          }

          v87 = &v8[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_123;
          }

          v93 = &v8[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_127;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v97 = &v8[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_87:
        if (v92)
        {
          goto LABEL_122;
        }

        v100 = &v8[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_125;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_94:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
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
          goto LABEL_135;
        }

        if (!*v5)
        {
          goto LABEL_138;
        }

        v4 = v7;
        v109 = *&v8[16 * v108 + 32];
        v110 = *&v8[16 * v70 + 40];
        sub_17680((*v5 + 16 * v109), (*v5 + 16 * *&v8[16 * v70 + 32]), (*v5 + 16 * v110), v69);
        if (v131)
        {
          goto LABEL_114;
        }

        if (v110 < v109)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_17B28(v8);
        }

        if (v108 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v111 = &v8[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        sub_17A9C(v70);
        v67 = *(v8 + 2);
        v7 = v4;
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v8[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_118;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_119;
      }

      v82 = &v8[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_121;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_124;
      }

      if (v86 >= v78)
      {
        v104 = &v8[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_128;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v47 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_134;
  }

  if (v47 >= v46)
  {
    v47 = v5[1];
  }

  if (v47 < v9)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v7 == v47)
  {
    goto LABEL_53;
  }

  v132 = *v5;
  v48 = *v5 + 16 * v7 - 16;
  v121 = v9;
  v122 = v47;
  v49 = v9 - v7;
LABEL_43:
  v130 = v7;
  v50 = *(v132 + 16 * v7);
  v124 = v49;
  v126 = v48;
  v51 = v49;
  v52 = v48;
  while (1)
  {
    v133 = v51;
    v53 = *v52;
    v54 = v50;

    v55 = v53;

    v56 = [v54 displayName];
    v135 = sub_2041C();
    v58 = v57;

    v59 = [v55 displayName];
    v60 = sub_2041C();
    v4 = v61;

    if (v135 == v60 && v58 == v4)
    {

LABEL_42:
      v7 = (v130 + 1);
      v48 = v126 + 16;
      v49 = v124 - 1;
      if ((v130 + 1) == v122)
      {
        v7 = v122;
        v5 = a3;
        v8 = v127;
        v9 = v121;
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    v63 = sub_2090C();

    if ((v63 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v132)
    {
      break;
    }

    v64 = *v52;
    v50 = *(v52 + 16);
    *v52 = v50;
    *(v52 + 16) = v64;
    v52 -= 16;
    v51 = v133 + 1;
    if (v133 == -1)
    {
      goto LABEL_42;
    }
  }

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
}

uint64_t sub_168C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v105 = a3;
  v9 = sub_29A0(&qword_2E2B0, &qword_22958);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v101 = &v90 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v90 - v16;
  __chkstk_darwin(v15);
  v111 = &v90 - v18;
  v110 = sub_1FEAC();
  v19 = *(v110 - 8);
  v20 = __chkstk_darwin(v110);
  v93 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v102 = (&v90 - v23);
  v24 = __chkstk_darwin(v22);
  v96 = &v90 - v25;
  __chkstk_darwin(v24);
  v99 = &v90 - v26;
  v107 = sub_29A0(&qword_2E2C0, &qword_22978);
  v27 = __chkstk_darwin(v107);
  v28 = __chkstk_darwin(v27);
  v106 = &v90 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v90 - v31;
  result = __chkstk_darwin(v30);
  v100 = &v90 - v35;
  v37 = *(v36 + 72);
  if (!v37)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (a2 - a1 == 0x8000000000000000 && v37 == -1)
  {
    goto LABEL_73;
  }

  v38 = v105 - a2;
  if (v105 - a2 != 0x8000000000000000 || v37 != -1)
  {
    v39 = (a2 - a1) / v37;
    v115 = a1;
    v40 = a4;
    v114 = a4;
    v104 = v37;
    v92 = v5;
    if (v39 < v38 / v37)
    {
      v41 = v39 * v37;
      v101 = v17;
      v42 = a4;
      v106 = v32;
      if (a4 < a1 || a1 + v41 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v43 = v100;
      }

      else
      {
        v43 = v100;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v103 = a4 + v41;
      v113 = a4 + v41;
      if (v41 >= 1 && a2 < v105)
      {
        v49 = (v19 + 48);
        v97 = (v19 + 8);
        v98 = v19 + 32;
        v102 = (v19 + 48);
        while (1)
        {
          v112 = a1;
          sub_FBB0(a2, v43, &qword_2E2C0, &qword_22978);
          v50 = v106;
          sub_FBB0(v42, v106, &qword_2E2C0, &qword_22978);
          v51 = a2;
          v52 = v111;
          sub_FBB0(v43, v111, &qword_2E2B0, &qword_22958);
          v53 = *v49;
          v54 = v52;
          v55 = v110;
          if ((*v49)(v54, 1, v110) == 1)
          {
            sub_469C(v111, &qword_2E2B0, &qword_22958);
            sub_469C(v50, &qword_2E2C0, &qword_22978);
            sub_469C(v43, &qword_2E2C0, &qword_22978);
            v56 = v104;
            a2 = v51;
          }

          else
          {
            v108 = v42;
            v109 = v51;
            v58 = v55;
            v59 = v99;
            v60 = *v98;
            (*v98)(v99, v111, v58);
            v61 = v101;
            sub_FBB0(v50, v101, &qword_2E2B0, &qword_22958);
            if (v53(v61, 1, v58) == 1)
            {
              (*v97)(v59, v58);
              sub_469C(v61, &qword_2E2B0, &qword_22958);
              sub_469C(v50, &qword_2E2C0, &qword_22978);
              v43 = v100;
              sub_469C(v100, &qword_2E2C0, &qword_22978);
              v42 = v108;
              a2 = v109;
              v56 = v104;
LABEL_32:
              v57 = v112;
              if (v112 < a2 || v112 >= a2 + v56)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v112 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              a2 += v56;
              goto LABEL_38;
            }

            v62 = v59;
            v63 = v96;
            v60(v96, v61, v58);
            v64 = sub_1FE7C();
            v65 = *v97;
            (*v97)(v63, v58);
            v66 = v62;
            v56 = v104;
            v65(v66, v58);
            sub_469C(v50, &qword_2E2C0, &qword_22978);
            v43 = v100;
            sub_469C(v100, &qword_2E2C0, &qword_22978);
            v42 = v108;
            a2 = v109;
            if (v64)
            {
              goto LABEL_32;
            }
          }

          v57 = v112;
          if (v112 < v42 || v112 >= v42 + v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v112 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v114 = v42 + v56;
          v42 += v56;
LABEL_38:
          a1 = v57 + v56;
          v115 = a1;
          v49 = v102;
          if (v42 >= v103 || a2 >= v105)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_71;
    }

    v44 = v19;
    v45 = v38 / v37 * v37;
    v46 = v40;
    v111 = v34;
    if (v40 < a2 || a2 + v45 <= v40)
    {
      v47 = v40;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v40 == a2)
      {
LABEL_43:
        if (v45 < 1)
        {
          v71 = v46 + v45;
        }

        else
        {
          v67 = v105;
          v68 = -v104;
          v69 = (v44 + 48);
          v94 = (v44 + 8);
          v70 = v46 + v45;
          v71 = v46 + v45;
          v98 = -v104;
          v99 = (v44 + 48);
          v108 = v46;
          v95 = (v44 + 32);
          v96 = v12;
          v112 = a1;
          do
          {
            v91 = v71;
            v72 = a2 + v68;
            v109 = a2 + v68;
            v100 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v115 = a2;
                v113 = v91;
                goto LABEL_71;
              }

              v104 = v67;
              v105 = v70;
              v97 = v71;
              v103 = v70 + v68;
              v74 = v106;
              v75 = v69;
              sub_FBB0(v70 + v68, v106, &qword_2E2C0, &qword_22978);
              v76 = v72;
              v78 = v110;
              v77 = v111;
              sub_FBB0(v76, v111, &qword_2E2C0, &qword_22978);
              v79 = v101;
              sub_FBB0(v74, v101, &qword_2E2B0, &qword_22958);
              v80 = *v75;
              if ((*v75)(v79, 1, v78) == 1)
              {
                sub_469C(v79, &qword_2E2B0, &qword_22958);
                v81 = 0;
                v82 = v108;
                a1 = v112;
                v83 = v98;
              }

              else
              {
                v84 = *v95;
                (*v95)(v102, v79, v78);
                v85 = v96;
                sub_FBB0(v77, v96, &qword_2E2B0, &qword_22958);
                if (v80(v85, 1, v78) == 1)
                {
                  (*v94)(v102, v78);
                  sub_469C(v85, &qword_2E2B0, &qword_22958);
                  v81 = 1;
                }

                else
                {
                  v86 = v93;
                  v84(v93, v85, v78);
                  v81 = sub_1FE7C();
                  v87 = *v94;
                  (*v94)(v86, v78);
                  v87(v102, v78);
                }

                v82 = v108;
                v83 = v98;
                a1 = v112;
              }

              v88 = v104;
              v68 = v83;
              v67 = v104 + v83;
              sub_469C(v111, &qword_2E2C0, &qword_22978);
              sub_469C(v106, &qword_2E2C0, &qword_22978);
              a2 = v100;
              if (v81)
              {
                break;
              }

              v89 = v103;
              v71 = v103;
              if (v88 < v105 || v67 >= v105)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v88 != v105)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v70 = v71;
              v73 = v89 > v82;
              v72 = v109;
              v69 = v99;
              if (!v73)
              {
                goto LABEL_69;
              }
            }

            if (v88 < v100 || v67 >= v100)
            {
              a2 = v109;
              swift_arrayInitWithTakeFrontToBack();
              v71 = v97;
            }

            else
            {
              a2 = v109;
              v71 = v97;
              if (v88 != v100)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v70 = v105;
            v69 = v99;
          }

          while (v105 > v82);
        }

LABEL_69:
        v115 = a2;
        v113 = v71;
LABEL_71:
        sub_17B3C(&v115, &v114, &v113);
        return 1;
      }

      v47 = v40;
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = v47;
    goto LABEL_43;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_17380(void **a1, void **a2, id *a3, void **a4, void (*a5)(char *__return_ptr, id *, void **), uint64_t a6)
{
  v12 = swift_allocObject();
  v36 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v17 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v35 = a4;
LABEL_27:
      v34 = a2;
      v24 = a2 - 1;
      --a3;
      v25 = v17;
      do
      {
        v26 = a3 + 1;
        v27 = *--v25;
        v28 = v24;
        v29 = *v24;
        v39 = v27;
        v38 = v29;
        v30 = v27;
        v31 = v29;
        v36(&v37, &v39, &v38);

        if (v37 == 1)
        {
          v32 = v28;
          if (v26 != v34)
          {
            *a3 = *v28;
          }

          a4 = v35;
          if (v17 <= v35 || (a2 = v32, v32 <= a1))
          {
            a2 = v32;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v26 != v17)
        {
          *a3 = *v25;
        }

        --a3;
        v17 = v25;
        v24 = v28;
      }

      while (v25 > v35);
      v17 = v25;
      a2 = v34;
      a4 = v35;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v17 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v18 = a2;
      while (1)
      {
        v19 = *a4;
        v39 = *v18;
        v38 = v19;
        v20 = v39;
        v21 = v19;
        v36(&v37, &v39, &v38);

        if (v37 != 1)
        {
          break;
        }

        v22 = v18;
        v23 = a1 == v18++;
        if (!v23)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++a1;
        if (a4 >= v17 || v18 >= a3)
        {
          goto LABEL_20;
        }
      }

      v22 = a4;
      v23 = a1 == a4++;
      if (v23)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_38:
  if (a2 != a4 || a2 >= (a4 + ((v17 - a4 + (v17 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v17 - a4));
  }

  return 1;
}

uint64_t sub_17680(char *__dst, id *__src, char *a3, void **a4)
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
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[2 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v52 = &v4[2 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v49 = v4;
      v46 = v7;
LABEL_31:
      v45 = v6 - 2;
      v5 -= 16;
      v29 = v52;
      v51 = v6;
      do
      {
        v30 = *(v29 - 2);
        v29 -= 2;
        v31 = *(v6 - 2);
        v32 = v30;

        v33 = v31;

        v34 = [v32 displayName];
        v35 = sub_2041C();
        v37 = v36;

        v38 = [v33 displayName];
        v39 = sub_2041C();
        v41 = v40;

        if (v35 == v39 && v37 == v41)
        {
          v43 = 0;
        }

        else
        {
          v43 = sub_2090C();
        }

        if (v43)
        {
          v4 = v49;
          if (v5 + 16 != v51)
          {
            *v5 = *v45;
          }

          if (v52 <= v49 || (v6 = v45, v45 <= v46))
          {
            v6 = v45;
            goto LABEL_48;
          }

          goto LABEL_31;
        }

        v4 = v49;
        v6 = v51;
        if (v5 + 16 != v52)
        {
          *v5 = *v29;
        }

        v5 -= 16;
        v52 = v29;
      }

      while (v29 > v49);
      v52 = v29;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v52 = &v4[2 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      v47 = v5;
      while (1)
      {
        v48 = v4;
        v50 = v6;
        v14 = *v4;
        v15 = *v6;

        v16 = v14;

        v17 = [v15 displayName];
        v18 = sub_2041C();
        v20 = v19;

        v21 = [v16 displayName];
        v22 = sub_2041C();
        v24 = v23;

        if (v18 == v22 && v20 == v24)
        {
          break;
        }

        v26 = sub_2090C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_19;
        }

        v4 = v48;
        v27 = v50;
        v28 = v50;
        v6 = v50 + 2;
LABEL_20:
        if (v7 != v27)
        {
          *v7 = *v28;
        }

        v7 += 16;
        if (v4 >= v52 || v6 >= v47)
        {
          goto LABEL_24;
        }
      }

LABEL_19:
      v27 = v48;
      v6 = v50;
      v28 = v48;
      v4 = v48 + 2;
      goto LABEL_20;
    }

LABEL_24:
    v6 = v7;
  }

LABEL_48:
  if (v6 != v4 || v6 >= (v4 + ((v52 - v4 + (v52 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * ((v52 - v4) / 16));
  }

  return 1;
}

uint64_t sub_17A9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_17B28(v3);
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

uint64_t sub_17B3C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_29A0(&qword_2E2C0, &qword_22978);
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

uint64_t sub_17C2C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2072C();

    if (v9)
    {

      sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2071C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_17E64(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_18054(v20 + 1);
    }

    v18 = v8;
    sub_1827C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
  v11 = sub_2068C(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_18300(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2069C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_17E64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A0(&qword_2E360, &qword_229E8);
    v2 = sub_2077C();
    v15 = v2;
    sub_2070C();
    if (sub_2073C())
    {
      sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_18054(v9 + 1);
        }

        v2 = v15;
        result = sub_2068C(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_2073C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_18054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29A0(&qword_2E360, &qword_229E8);
  result = sub_2076C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_2068C(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1827C(uint64_t a1, void *a2)
{
  sub_2068C(a2[5]);
  result = sub_206FC();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_18300(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18054(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_18470();
      goto LABEL_12;
    }

    sub_185C0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_2068C(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2069C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2091C();
  __break(1u);
}

id sub_18470()
{
  v1 = v0;
  sub_29A0(&qword_2E360, &qword_229E8);
  v2 = *v0;
  v3 = sub_2075C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_185C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29A0(&qword_2E360, &qword_229E8);
  result = sub_2076C();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_2068C(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_187D4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_2087C();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_11CA4(v3, 0);
  sub_18A08((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18868(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2087C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_2087C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1EB28(&qword_2E380, &qword_2E378, &qword_22A08);
          for (i = 0; i != v6; ++i)
          {
            sub_29A0(&qword_2E378, &qword_22A08);
            v9 = sub_18BA8(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2958(0, &qword_2DD68, UIView_ptr);
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

uint64_t sub_18A08(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2087C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_2087C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1EB28(&qword_2E2D0, &qword_2E2C8, &qword_22980);
          for (i = 0; i != v6; ++i)
          {
            sub_29A0(&qword_2E2C8, &qword_22980);
            v9 = sub_18C28(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2958(0, &qword_2E0E0, REMReminder_ptr);
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

void (*sub_18BA8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_207AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1F60C;
  }

  __break(1u);
  return result;
}

void (*sub_18C28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_207AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_18CA8;
  }

  __break(1u);
  return result;
}

uint64_t sub_18CB0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_2083C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_2086C())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_2958(0, &qword_2E0E0, REMReminder_ptr);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t *sub_18EB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_29A0(&qword_2E2C0, &qword_22978);
  v37 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v38 = &v33 - v11;
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_19:
    v24 = 0;
    a3 = 0;
LABEL_26:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v13 - 32);
    v35 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = (&dword_0 + 1);
    v36 = a3;
    while (v17)
    {
      v41 = v20;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v42;
      v27 = *(v42 + 48);
      v28 = v27 + *(*(sub_29A0(&qword_2E2B0, &qword_22958) - 8) + 72) * v25;
      v29 = v39;
      sub_FBB0(v28, v39, &qword_2E2B0, &qword_22958);
      *(v29 + *(v40 + 48)) = *(*(v26 + 56) + 8 * v25);
      v30 = v29;
      v31 = v38;
      sub_1DFC0(v30, v38, &qword_2E2C0, &qword_22978);
      sub_1DFC0(v31, a2, &qword_2E2C0, &qword_22978);
      a3 = v36;
      a1 = v41;
      if (v41 == v36)
      {

        goto LABEL_24;
      }

      a2 += *(v37 + 72);

      result = a1;
      v20 = a1 + 1;
      v18 = v24;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v41 = v20;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v32 = v18 + 1;
    }

    else
    {
      v32 = v19;
    }

    v24 = v32 - 1;
    a3 = result;
LABEL_24:
    v15 = v34;
    a1 = v35;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_19188(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;

        goto LABEL_23;
      }

      v11 += 2;
      v20 = v18;

      result = v14;
      v21 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_19388(unint64_t a1)
{
  v36 = sub_1FF4C();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1FEAC();
  v4 = *(v44 - 8);
  v5 = __chkstk_darwin(v44);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v45 = _swiftEmptyDictionarySingleton;
  if (!(a1 >> 62))
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_29:
  v9 = sub_2087C();
  if (!v9)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v38 = v8;
  v8 = 0;
  v41 = a1 & 0xFFFFFFFFFFFFFF8;
  v42 = a1 & 0xC000000000000001;
  v43 = (v4 + 8);
  v10 = _swiftEmptyDictionarySingleton;
  v34 = (v2 + 8);
  v37 = xmmword_22660;
  v40 = v9;
  while (1)
  {
    if (v42)
    {
      v11 = sub_207AC();
    }

    else
    {
      if (v8 >= *(v41 + 16))
      {
        goto LABEL_26;
      }

      v11 = *(a1 + 8 * v8 + 32);
    }

    v12 = v11;
    v13 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v14 = a1;
    v15 = [v11 displayDate];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 date];

      v18 = v38;
      sub_1FE8C();

      v19 = v39;
      sub_1FE9C();
      LOBYTE(v16) = sub_1FE7C();
      a1 = *v43;
      (*v43)(v19, v44);
      if (v16)
      {
        v4 = 1;
      }

      else
      {
        v20 = [objc_opt_self() currentCalendar];
        v21 = v35;
        sub_1FF0C();

        v4 = sub_1FEEC();
        (*v34)(v21, v36);
      }

      (a1)(v18, v44);
    }

    else
    {
      v4 = 0;
    }

    v2 = v10;
    v22 = sub_12020(v4 & 1);
    v24 = v10[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_27;
    }

    a1 = v23;
    if (v10[3] < v27)
    {
      sub_1340C(v27, 1);
      v10 = v45;
      v22 = sub_12020(v4 & 1);
      if ((a1 & 1) != (v28 & 1))
      {
        break;
      }
    }

    if (a1)
    {
      v2 = v10[7] + 8 * v22;
      sub_2048C();
      if (*(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v4 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
        sub_204BC();
      }

      sub_204DC();
    }

    else
    {
      v2 = v22;
      sub_29A0(&qword_2DD50, &unk_22710);
      v29 = swift_allocObject();
      *(v29 + 16) = v37;
      *(v29 + 32) = v12;
      v10[(v2 >> 6) + 8] |= 1 << v2;
      *(v10[6] + v2) = v4 & 1;
      *(v10[7] + 8 * v2) = v29;
      v30 = v10[2];
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
        goto LABEL_28;
      }

      v10[2] = v31;
    }

    a1 = v14;
    ++v8;
    if (v13 == v40)
    {
      return v10;
    }
  }

  result = sub_2092C();
  __break(1u);
  return result;
}

uint64_t sub_19818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIIntentsSnippetSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1987C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
    sub_1EAC0();
    result = sub_2051C();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_207AC();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_17C2C(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_2087C();
  }

  v5 = result;
  v4 = sub_2087C();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_199BC(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_2087C();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_207AC();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = sub_2053C();
    v10 = sub_1229C(v8);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_22;
    }

    v14 = v9;
    if (_swiftEmptyDictionarySingleton[3] < v13)
    {
      break;
    }

LABEL_16:
    if (v14)
    {

      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v10);
      sub_2048C();
      if (*(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_204BC();
      }

      sub_204DC();
    }

    else
    {
      sub_29A0(&qword_2DD50, &unk_22710);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22660;
      *(v17 + 32) = v6;
      _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v10) = v8;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v17;
      v18 = _swiftEmptyDictionarySingleton[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v20;
    }

    if (v7 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  sub_13C00(v13, 1);
  v15 = sub_1229C(v8);
  if ((v14 & 1) == (v16 & 1))
  {
    v10 = v15;
    goto LABEL_16;
  }

  sub_29A0(&qword_2E350, &qword_229D8);
  result = sub_2092C();
  __break(1u);
  return result;
}

uint64_t sub_19C1C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(char *__return_ptr, id *, void **), uint64_t a6)
{
  v7 = v6;
  v12 = swift_allocObject();
  v116 = a3;
  v117 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = a3[1];
  v118 = a6;
  swift_retain_n();
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_90:
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    v97 = swift_allocObject();
    *(v97 + 16) = v117;
    *(v97 + 24) = v118;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v15 = sub_17B28(v15);
    }

    v122 = v15;
    v98 = *(v15 + 2);
    if (v98 >= 2)
    {
      do
      {
        v99 = *v116;
        if (!*v116)
        {
          goto LABEL_128;
        }

        v100 = *&v15[16 * v98];
        v101 = *&v15[16 * v98 + 24];
        v102 = (v99 + 8 * v100);
        v103 = (v99 + 8 * *&v15[16 * v98 + 16]);
        v104 = (v99 + 8 * v101);

        sub_17380(v102, v103, v104, v115, v117, v118);
        if (v7)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_17B28(v15);
        }

        if (v98 - 2 >= *(v15 + 2))
        {
          goto LABEL_118;
        }

        v105 = &v15[16 * v98];
        *v105 = v100;
        *(v105 + 1) = v101;
        v122 = v15;
        sub_17A9C(v98 - 1);
        v15 = v122;
        v98 = *(v122 + 2);
      }

      while (v98 > 1);
    }
  }

  v107 = a4;
  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    if (v14 + 1 < v13)
    {
      v108 = v7;
      v7 = 8 * v14;
      v18 = (*v116 + 8 * v14);
      v20 = *v18;
      v19 = v18 + 2;
      v121 = *(*v116 + 8 * v17);
      v120 = v20;
      v21 = v121;
      v22 = v20;
      v117(&v119, &v121, &v120);

      v23 = v119;
      v110 = v16;
      v24 = v16 + 2;
      while (v13 != v24)
      {
        v25 = *(v19 - 1);
        v121 = *v19;
        v120 = v25;
        v26 = v121;
        v27 = v25;
        v117(&v119, &v121, &v120);

        ++v24;
        ++v19;
        if (v23 != v119)
        {
          v17 = v24 - 1;
          v16 = v110;
          if (!v23)
          {
            goto LABEL_19;
          }

          goto LABEL_11;
        }
      }

      v17 = v13;
      v16 = v110;
      if (!v23)
      {
        goto LABEL_19;
      }

LABEL_11:
      if (v17 < v16)
      {
        goto LABEL_121;
      }

      if (v16 < v17)
      {
        v28 = 8 * v17 - 8;
        v29 = v17;
        v30 = v16;
        do
        {
          if (v30 != --v29)
          {
            v32 = *v116;
            if (!*v116)
            {
              goto LABEL_127;
            }

            v31 = *(v32 + v7);
            *(v32 + v7) = *(v32 + v28);
            *(v32 + v28) = v31;
          }

          v30 = (v30 + 1);
          v28 -= 8;
          v7 += 8;
        }

        while (v30 < v29);
      }

LABEL_19:
      v7 = v108;
    }

    v33 = v116[1];
    if (v17 < v33)
    {
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_120;
      }

      if (v17 - v16 < v107)
      {
        if (__OFADD__(v16, v107))
        {
          goto LABEL_122;
        }

        if (v16 + v107 >= v33)
        {
          v34 = v116[1];
        }

        else
        {
          v34 = v16 + v107;
        }

        if (v34 < v16)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v17 != v34)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v17 < v16)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_11BA0(0, *(v15 + 2) + 1, 1, v15);
    }

    v48 = *(v15 + 2);
    v47 = *(v15 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v15 = sub_11BA0((v47 > 1), v48 + 1, 1, v15);
    }

    *(v15 + 2) = v49;
    v50 = &v15[16 * v48];
    *(v50 + 4) = v16;
    *(v50 + 5) = v17;
    v114 = *a1;
    v115 = v17;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v48)
    {
      while (1)
      {
        v51 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v15 + 4);
          v53 = *(v15 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_58:
          if (v55)
          {
            goto LABEL_108;
          }

          v68 = &v15[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_111;
          }

          v74 = &v15[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_115;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v49 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v78 = &v15[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_72:
        if (v73)
        {
          goto LABEL_110;
        }

        v81 = &v15[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_113;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_79:
        v89 = v51 - 1;
        if (v51 - 1 >= v49)
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

        v90 = *v116;
        if (!*v116)
        {
          goto LABEL_126;
        }

        v91 = *&v15[16 * v89 + 32];
        v92 = *&v15[16 * v51 + 40];
        v93 = (v90 + 8 * v91);
        v94 = (v90 + 8 * *&v15[16 * v51 + 32]);
        v95 = (v90 + 8 * v92);

        sub_17380(v93, v94, v95, v114, v117, v118);
        if (v7)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_17B28(v15);
        }

        if (v89 >= *(v15 + 2))
        {
          goto LABEL_105;
        }

        v96 = &v15[16 * v89];
        *(v96 + 4) = v91;
        *(v96 + 5) = v92;
        v122 = v15;
        sub_17A9C(v51);
        v15 = v122;
        v49 = *(v122 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v15[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_106;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_107;
      }

      v63 = &v15[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_109;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_112;
      }

      if (v67 >= v59)
      {
        v85 = &v15[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_116;
        }

        if (v54 < v88)
        {
          v51 = v49 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v14 = v115;
    v13 = v116[1];
    if (v115 >= v13)
    {
      goto LABEL_90;
    }
  }

  v35 = *v116;
  v36 = v16;
  v37 = *v116 + 8 * v17 - 8;
  v109 = v7;
  v111 = v36;
  v38 = v36 - v17;
  v113 = v34;
LABEL_31:
  v115 = v17;
  v39 = *(v35 + 8 * v17);
  v40 = v38;
  v41 = v37;
  while (1)
  {
    v42 = *v41;
    v121 = v39;
    v120 = v42;
    v43 = v39;
    v44 = v42;
    v117(&v119, &v121, &v120);

    if (v119 != 1)
    {
LABEL_30:
      v17 = v115 + 1;
      v37 += 8;
      --v38;
      if ((v115 + 1) != v113)
      {
        goto LABEL_31;
      }

      v17 = v113;
      v7 = v109;
      v16 = v111;
      goto LABEL_38;
    }

    if (!v35)
    {
      break;
    }

    v45 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v45;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

Swift::Int sub_1A3C8(uint64_t *a1, void (*a2)(char *__return_ptr, id *, void **), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_208EC(v7);
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_2958(0, &qword_2E0E0, REMReminder_ptr);
        v11 = sub_204CC();
        *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) = v10;
      }

      v12[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v12[1] = v10;

      sub_19C1C(v12, v13, a1, v9, a2, a3);

      *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_14A58(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1A560(uint64_t *a1, void (*a2)(char *__return_ptr, id *, void **), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_19314(v7);
    *a1 = v7;
  }

  v9 = *(v7 + 16);
  v11[0] = v7 + 32;
  v11[1] = v9;

  sub_1A3C8(v11, a2, a3);

  sub_207EC();
}

void *sub_1A63C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1 >> 62;
  v71 = a1;
  if (a1 >> 62)
  {
    goto LABEL_86;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (v5)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_207FC();
    if (v5 < 0)
    {
      __break(1u);
LABEL_91:
      __break(1u);
      swift_bridgeObjectRelease_n();

      __break(1u);
      swift_bridgeObjectRelease_n();

      __break(1u);
      return result;
    }

    v6 = 0;
    do
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v7 = sub_207AC();
      }

      else
      {
        v7 = *(v71 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 objectID];

      sub_207DC();
      sub_2080C();
      sub_2081C();
      sub_207EC();
    }

    while (v5 != v6);
    v10 = v74;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v72 = sub_1987C(v10);

  v74 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v11 = sub_2087C();
  }

  else
  {
    v11 = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = v72;
  swift_bridgeObjectRetain_n();
  v64 = a2;
  if (v11)
  {
    v12 = 0;
    v13 = v71 & 0xC000000000000001;
    v14 = v71 & 0xFFFFFFFFFFFFFF8;
    v69 = v72 + 56;
    while (1)
    {
      if (v13)
      {
        v15 = sub_207AC();
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_83;
        }

        v15 = *(v71 + 32 + 8 * v12);
      }

      v16 = v15;
      v17 = __OFADD__(v12++, 1);
      if (v17)
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v5 = sub_2087C();
        goto LABEL_3;
      }

      v18 = sub_2053C();
      if (v18)
      {
        v19 = v18;
        if (![v16 isSubtask])
        {
          goto LABEL_34;
        }

        if ((v72 & 0xC000000000000001) != 0)
        {
          v20 = v19;
          v21 = sub_2074C();

          if ((v21 & 1) == 0)
          {

            v14 = v71 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_18;
          }
        }

        else
        {
          if (!*(v4 + 16))
          {
LABEL_34:

            goto LABEL_18;
          }

          sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
          v22 = sub_2068C(*(v4 + 40));
          v23 = -1 << *(v4 + 32);
          v24 = v22 & ~v23;
          if (((*(v69 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
LABEL_33:

            a2 = v64;
            v13 = v71 & 0xC000000000000001;
            v4 = v72;
            v14 = v71 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_18;
          }

          v25 = ~v23;
          while (1)
          {
            v26 = *(*(v72 + 48) + 8 * v24);
            v27 = sub_2069C();

            if (v27)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v69 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          a2 = v64;
          v13 = v71 & 0xC000000000000001;
          v4 = v72;
        }

        sub_207DC();
        sub_2080C();
        sub_2081C();
        sub_207EC();
        v14 = v71 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

LABEL_18:
      if (v12 == v11)
      {
        v28 = v74;
        goto LABEL_40;
      }
    }
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_40:
  v29 = sub_199BC(v28);

  if (a2)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    *(v30 + 24) = a3;
    swift_retain_n();
    sub_1EA74(a2, a3);

    v74 = sub_187D4(v31);
    sub_1A560(&v74, sub_1F5EC, v30);

    v32 = v74;
  }

  else
  {
    v32 = v71;
  }

  v74 = _swiftEmptyArrayStorage;
  if (v32 >> 62)
  {
    v33 = sub_2087C();
    if (v33)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v33 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
    if (v33)
    {
LABEL_45:
      a2 = 0;
      v68 = v32 & 0xFFFFFFFFFFFFFF8;
      v70 = v32 & 0xC000000000000001;
      v71 = v32;
      v63 = v4 & 0xC000000000000001;
      v34 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 < 0)
      {
        v34 = v4;
      }

      v61 = v34;
      v66 = v4 + 56;
      v67 = v32 + 32;
      v65 = v33;
      while (1)
      {
        if (v70)
        {
          v35 = sub_207AC();
        }

        else
        {
          if (a2 >= *(v68 + 16))
          {
            goto LABEL_85;
          }

          v35 = *(v67 + 8 * a2);
        }

        v36 = v35;
        v17 = __OFADD__(a2++, 1);
        if (v17)
        {
          goto LABEL_84;
        }

        v37 = sub_2053C();
        if (v37)
        {
          v38 = v37;
          if ([v36 isSubtask])
          {
            if (v63)
            {
              v39 = v38;
              v40 = sub_2074C();

              if (v40)
              {
                goto LABEL_49;
              }

              goto LABEL_65;
            }

            if (*(v4 + 16))
            {
              sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
              v41 = sub_2068C(*(v4 + 40));
              v42 = -1 << *(v4 + 32);
              v43 = v41 & ~v42;
              if ((*(v66 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
              {
                v44 = ~v42;
                while (1)
                {
                  v45 = *(*(v4 + 48) + 8 * v43);
                  v46 = sub_2069C();

                  if (v46)
                  {
                    break;
                  }

                  v43 = (v43 + 1) & v44;
                  v4 = v72;
                  if (((*(v66 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                  {
                    goto LABEL_64;
                  }
                }

                v36 = v38;
                v4 = v72;
                v33 = v65;
                goto LABEL_49;
              }
            }
          }

LABEL_64:

          v33 = v65;
        }

LABEL_65:
        v36 = v36;
        sub_2048C();
        if (*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_204BC();
        }

        sub_204DC();
        v47 = [v36 objectID];
        v48 = v47;
        if (v29[2])
        {
          v49 = sub_1229C(v47);
          if (v50)
          {
            v51 = *(v29[7] + 8 * v49);

            if (v64)
            {
              v52 = swift_allocObject();
              *(v52 + 16) = v64;
              *(v52 + 24) = a3;
              if (!(v51 >> 62))
              {
                v53 = (v51 & 0xFFFFFFFFFFFFFF8);
                swift_retain_n();
                sub_1EA74(v64, a3);

                goto LABEL_72;
              }

              v54 = sub_2087C();
              if (v54)
              {
                v55 = v54;
                v53 = sub_11CA4(v54, 0);
                swift_retain_n();
                sub_1EA74(v64, a3);

                sub_18A08((v53 + 4), v55, v51);
                v57 = v56;

                v58 = v57 == v55;
                v4 = v72;
                if (!v58)
                {
                  goto LABEL_91;
                }
              }

              else
              {
                swift_retain_n();
                sub_1EA74(v64, a3);
                v53 = _swiftEmptyArrayStorage;
LABEL_72:

                v4 = v72;
              }

              v73 = v53;

              sub_1A560(&v73, sub_1EA70, v52);

              v51 = v73;
            }

            sub_10470(v51, sub_18A08);
            goto LABEL_49;
          }
        }

LABEL_49:
        if (a2 == v33)
        {
          v59 = v74;
          goto LABEL_89;
        }
      }
    }
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_89:

  swift_bridgeObjectRelease_n();
  return v59;
}

void *sub_1AED8(uint64_t a1)
{
  v2 = sub_1FF3C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29A0(&qword_2E2F0, &qword_229A0);
    v9 = sub_2078C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E028(&qword_2E2F8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_203AC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1E028(&qword_2E300, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_203DC();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1B1F8(unint64_t a1)
{
  v55 = sub_1FF4C();
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1FE0C();
  v4 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1FEAC();
  v6 = *(v60 - 8);
  __chkstk_darwin(v60);
  v62 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29A0(&qword_2E2B0, &qword_22958);
  v44 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v65 = v41 - v10;
  v66 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_28:
    v39 = v9;
    v11 = sub_2087C();
    v9 = v39;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
LABEL_3:
      v41[1] = v9;
      v12 = 0;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = a1 & 0xC000000000000001;
      v51 = (v2 + 8);
      v50 = (v4 + 1);
      v48 = enum case for Calendar.Component.month(_:);
      v49 = enum case for Calendar.Component.year(_:);
      v47 = enum case for Calendar.Component.day(_:);
      v46 = (v6 + 8);
      v42 = (v6 + 56);
      v4 = _swiftEmptyDictionarySingleton;
      v43 = xmmword_22660;
      v45 = xmmword_22920;
      v56 = v11;
      v57 = a1;
      while (1)
      {
        if (v59)
        {
          v9 = sub_207AC();
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v12 >= *(v58 + 16))
          {
            goto LABEL_25;
          }

          v9 = *(a1 + 8 * v12 + 32);
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v63 = v13;
        v64 = v9;
        v14 = [v9 displayDate];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 date];

          sub_1FE8C();
          v61 = v4;
          v17 = v54;
          sub_1FF2C();
          sub_29A0(&qword_2E2E8, &qword_22998);
          v18 = sub_1FF3C();
          v19 = *(v18 - 8);
          v20 = *(v19 + 72);
          v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
          v22 = swift_allocObject();
          *(v22 + 16) = v45;
          v23 = v22 + v21;
          v24 = *(v19 + 104);
          v24(v23, v49, v18);
          v24(v23 + v20, v48, v18);
          v24(v23 + 2 * v20, v47, v18);
          sub_1AED8(v22);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v25 = v52;
          v26 = v62;
          sub_1FEFC();

          a1 = *v51;
          v6 = v55;
          (*v51)(v17, v55);
          sub_1FF2C();
          sub_1FF1C();
          v27 = v17;
          v4 = v61;
          (a1)(v27, v6);
          (*v50)(v25, v53);
          (*v46)(v26, v60);
        }

        else
        {
          (*v42)(v65, 1, 1, v60);
        }

        v2 = sub_1208C(v65);
        v29 = v4[2];
        v30 = (v28 & 1) == 0;
        v9 = (v29 + v30);
        if (__OFADD__(v29, v30))
        {
          goto LABEL_26;
        }

        v31 = v28;
        if (v4[3] >= v9)
        {
          v34 = v56;
          a1 = v57;
          if (v28)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1369C(v9, 1);
          v4 = v66;
          v32 = sub_1208C(v65);
          v34 = v56;
          a1 = v57;
          if ((v31 & 1) != (v33 & 1))
          {
            result = sub_2092C();
            __break(1u);
            return result;
          }

          v2 = v32;
          if (v31)
          {
LABEL_4:
            sub_469C(v65, &qword_2E2B0, &qword_22958);
            v2 = v4[7] + 8 * v2;
            sub_2048C();
            if (*(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_204BC();
            }

            v9 = sub_204DC();
            goto LABEL_7;
          }
        }

        sub_29A0(&qword_2DD50, &unk_22710);
        v35 = swift_allocObject();
        *(v35 + 16) = v43;
        *(v35 + 32) = v64;
        v4[(v2 >> 6) + 8] |= 1 << v2;
        v9 = sub_1DFC0(v65, v4[6] + *(v44 + 72) * v2, &qword_2E2B0, &qword_22958);
        *(v4[7] + 8 * v2) = v35;
        v36 = v4[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_27;
        }

        v4[2] = v38;
LABEL_7:
        ++v12;
        if (v63 == v34)
        {
          return v4;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1B960(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A0(&qword_2E2B0, &qword_22958);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_1FEAC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  sub_FBB0(a1, v9, &qword_2E2B0, &qword_22958);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_469C(v9, &qword_2E2B0, &qword_22958);
    v18 = 0;
  }

  else
  {
    v19 = v9;
    v20 = *(v11 + 32);
    v20(v16, v19, v10);
    sub_FBB0(a2, v7, &qword_2E2B0, &qword_22958);
    if (v17(v7, 1, v10) == 1)
    {
      (*(v11 + 8))(v16, v10);
      sub_469C(v7, &qword_2E2B0, &qword_22958);
      v18 = 1;
    }

    else
    {
      v20(v14, v7, v10);
      v18 = sub_1FE7C();
      v21 = *(v11 + 8);
      v21(v14, v10);
      v21(v16, v10);
    }
  }

  return v18 & 1;
}

uint64_t sub_1BC04(void *a1, void *a2)
{
  v4 = sub_29A0(&qword_2E2B0, &qword_22958);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = [a1 displayDate];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 date];

    sub_1FE8C();
    v13 = sub_1FEAC();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = sub_1FEAC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = [a2 displayDate];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 date];

    sub_1FE8C();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_1FEAC();
  (*(*(v19 - 8) + 56))(v7, v18, 1, v19);
  v20 = sub_1B960(v9, v7);
  sub_469C(v7, &qword_2E2B0, &qword_22958);
  sub_469C(v9, &qword_2E2B0, &qword_22958);
  return v20 & 1;
}

uint64_t sub_1BE44(uint64_t a1, id *a2, id *a3, id *a4)
{
  v8 = sub_1FEAC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v108 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v113 = &v107 - v13;
  v14 = __chkstk_darwin(v12);
  v110 = &v107 - v15;
  __chkstk_darwin(v14);
  v118 = &v107 - v16;
  v17 = sub_29A0(&qword_2E2B0, &qword_22958);
  v18 = __chkstk_darwin(v17 - 8);
  v111 = (&v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v115 = (&v107 - v21);
  v22 = __chkstk_darwin(v20);
  v121 = &v107 - v23;
  v24 = __chkstk_darwin(v22);
  v124 = &v107 - v25;
  v26 = __chkstk_darwin(v24);
  v27 = __chkstk_darwin(v26);
  v116 = (&v107 - v28);
  v29 = __chkstk_darwin(v27);
  v114 = &v107 - v30;
  __chkstk_darwin(v29);
  v34 = &v107 - v33;
  v35 = a2 - a1;
  v36 = v35 / 8;
  v126 = a3;
  v37 = a3 - a2;
  v38 = v37 / 8;
  if (v35 / 8 >= v37 / 8)
  {
    v123 = v32;
    if (a4 != a2 || &a2[v38] <= a4)
    {
      memmove(a4, a2, 8 * v38);
    }

    v122 = a4;
    v125 = &a4[v38];
    if (v37 < 8)
    {
      v40 = v122;
      v69 = a2;
    }

    else
    {
      v69 = a2;
      v40 = v122;
      if (a2 > v123)
      {
        v119 = (v9 + 56);
        v109 = (v9 + 8);
        v110 = (v9 + 32);
        v70 = &TTRBundleLookupObject__metaData;
        v71 = &qword_2E2B0;
        v114 = (v9 + 48);
LABEL_33:
        v120 = v69;
        v72 = v69 - 1;
        --v126;
        v73 = v125;
        v116 = v69 - 1;
        do
        {
          v74 = *--v73;
          v75 = *v72;
          v76 = v74;
          v77 = v75;
          v78 = [v76 v70[53].name];
          if (v78)
          {
            v79 = v78;
            v80 = [v78 date];

            v81 = v124;
            sub_1FE8C();

            v82 = 0;
          }

          else
          {
            v82 = 1;
            v81 = v124;
          }

          v83 = *v119;
          v84 = 1;
          (*v119)(v81, v82, 1, v8);
          v85 = [v77 v70[53].name];
          v117 = v77;
          v118 = v76;
          if (v85)
          {
            v86 = v85;
            v87 = [v85 date];

            v88 = v121;
            sub_1FE8C();

            v84 = 0;
          }

          else
          {
            v88 = v121;
          }

          v83(v88, v84, 1, v8);
          v89 = v115;
          sub_FBB0(v124, v115, v71, &qword_22958);
          v90 = v88;
          v91 = v71;
          v92 = *v114;
          if ((*v114)(v89, 1, v8) == 1)
          {
            sub_469C(v89, v71, &qword_22958);
            v93 = 0;
            v94 = v124;
            v95 = v118;
          }

          else
          {
            v112 = v73;
            v96 = *v110;
            (*v110)(v113, v89, v8);
            v97 = v90;
            v98 = v111;
            sub_FBB0(v97, v111, v71, &qword_22958);
            if (v92(v98, 1, v8) == 1)
            {
              (*v109)(v113, v8);
              sub_469C(v98, v71, &qword_22958);
              v93 = 1;
              v94 = v124;
              v70 = &TTRBundleLookupObject__metaData;
            }

            else
            {
              v99 = v8;
              v100 = v113;
              v101 = v108;
              v96(v108, v98, v99);
              v93 = sub_1FE7C();
              v102 = *v109;
              v103 = v101;
              v104 = v100;
              v8 = v99;
              (*v109)(v103, v99);
              v102(v104, v99);
              v94 = v124;
              v70 = &TTRBundleLookupObject__metaData;
            }

            v71 = v91;
            v95 = v118;
            v73 = v112;
          }

          sub_469C(v121, v71, &qword_22958);
          sub_469C(v94, v71, &qword_22958);

          v40 = v122;
          if (v93)
          {
            v105 = v116;
            if (v126 + 1 != v120)
            {
              *v126 = *v116;
            }

            if (v125 <= v40 || (v69 = v105, v105 <= v123))
            {
              v69 = v105;
              goto LABEL_58;
            }

            goto LABEL_33;
          }

          v72 = v116;
          if (v126 + 1 != v125)
          {
            *v126 = *v73;
          }

          --v126;
          v125 = v73;
        }

        while (v73 > v40);
        v125 = v73;
        v69 = v120;
      }
    }
  }

  else
  {
    v39 = a4 == v32;
    v40 = a4;
    v41 = v32;
    v113 = v31;
    if (!v39 || &v32[v36] <= v40)
    {
      memmove(v40, v32, 8 * v36);
    }

    v125 = &v40[v36];
    if (v35 >= 8)
    {
      v42 = a2;
      if (a2 < v126)
      {
        v124 = (v9 + 56);
        v43 = (v9 + 48);
        v111 = (v9 + 8);
        v112 = (v9 + 32);
        v44 = &TTRBundleLookupObject__metaData;
        v115 = v43;
        v117 = v34;
        while (1)
        {
          v123 = v41;
          v120 = v42;
          v45 = *v40;
          v46 = *v42;
          v47 = v45;
          name = v44[53].name;
          v119 = v46;
          v49 = [v46 name];
          if (v49)
          {
            v50 = v49;
            v51 = [v49 date];

            sub_1FE8C();
            v52 = 0;
          }

          else
          {
            v52 = 1;
          }

          v53 = *v124;
          v54 = 1;
          (*v124)(v34, v52, 1, v8);
          v55 = [v47 v44[53].name];
          v121 = v47;
          if (v55)
          {
            v56 = v55;
            v57 = [v55 date];

            v58 = v114;
            sub_1FE8C();

            v54 = 0;
            v59 = v118;
          }

          else
          {
            v59 = v118;
            v58 = v114;
          }

          v53(v58, v54, 1, v8);
          v60 = v116;
          v34 = v117;
          sub_FBB0(v117, v116, &qword_2E2B0, &qword_22958);
          v61 = *v115;
          if ((*v115)(v60, 1, v8) == 1)
          {
            break;
          }

          v122 = v40;
          v64 = *v112;
          (*v112)(v59, v60, v8);
          v65 = v113;
          sub_FBB0(v58, v113, &qword_2E2B0, &qword_22958);
          if (v61(v65, 1, v8) == 1)
          {
            (*v111)(v59, v8);
            sub_469C(v65, &qword_2E2B0, &qword_22958);
            sub_469C(v58, &qword_2E2B0, &qword_22958);
            v34 = v117;
            sub_469C(v117, &qword_2E2B0, &qword_22958);

            v40 = v122;
          }

          else
          {
            v66 = v110;
            v64(v110, v65, v8);
            v67 = sub_1FE7C();
            v68 = *v111;
            (*v111)(v66, v8);
            v68(v118, v8);
            sub_469C(v58, &qword_2E2B0, &qword_22958);
            v34 = v117;
            sub_469C(v117, &qword_2E2B0, &qword_22958);

            v40 = v122;
            if ((v67 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v62 = v120;
          v42 = v120 + 1;
          v63 = v123;
          v44 = &TTRBundleLookupObject__metaData;
          if (v123 != v120)
          {
            goto LABEL_18;
          }

LABEL_19:
          v41 = (v63 + 1);
          if (v40 >= v125 || v42 >= v126)
          {
            goto LABEL_55;
          }
        }

        sub_469C(v60, &qword_2E2B0, &qword_22958);
        sub_469C(v58, &qword_2E2B0, &qword_22958);
        sub_469C(v34, &qword_2E2B0, &qword_22958);

LABEL_17:
        v62 = v40;
        v63 = v123;
        v39 = v123 == v40++;
        v42 = v120;
        v44 = &TTRBundleLookupObject__metaData;
        if (v39)
        {
          goto LABEL_19;
        }

LABEL_18:
        *v63 = *v62;
        goto LABEL_19;
      }
    }

LABEL_55:
    v69 = v41;
  }

LABEL_58:
  if (v69 != v40 || v69 >= (v40 + ((v125 - v40 + (v125 - v40 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v69, v40, 8 * (v125 - v40));
  }

  return 1;
}

uint64_t sub_1C97C(uint64_t *a1, id *a2, void *a3)
{
  v5 = a1;
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_17B28(v6);
    v6 = result;
  }

  v15 = v5;
  *v5 = v6;
  v8 = (v6 + 16);
  v9 = *(v6 + 16);
  if (v9 < 2)
  {
LABEL_9:
    *v15 = v6;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v10 = v6 + 16 * v9;
      v5 = *v10;
      v11 = &v8[2 * v9];
      v12 = v11[1];
      sub_1BE44(*a3 + 8 * *v10, (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
      if (v3)
      {
        goto LABEL_9;
      }

      if (v12 < v5)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v13 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_11;
      }

      *v10 = v5;
      *(v10 + 8) = v12;
      v14 = v13 - v9;
      if (v13 < v9)
      {
        goto LABEL_12;
      }

      v9 = v13 - 1;
      result = memmove(v11, v11 + 2, 16 * v14);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v15 = v6;
    __break(1u);
  }

  return result;
}

void sub_1CAAC(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v159 = a1;
  v6 = sub_1FEAC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v173 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v157 - v11;
  v13 = __chkstk_darwin(v10);
  v160 = &v157 - v14;
  __chkstk_darwin(v13);
  v166 = &v157 - v15;
  v16 = sub_29A0(&qword_2E2B0, &qword_22958);
  v17 = __chkstk_darwin(v16 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v157 - v19;
  v21 = __chkstk_darwin(v18);
  v185 = &v157 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v157 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v157 - v27;
  v29 = __chkstk_darwin(v26);
  v165 = &v157 - v30;
  v31 = __chkstk_darwin(v29);
  v170 = &v157 - v32;
  __chkstk_darwin(v31);
  v171 = &v157 - v34;
  v190 = _swiftEmptyArrayStorage;
  v168 = a3;
  v35 = a3[1];
  if (v35 >= 1)
  {
    v36 = 0;
    v189 = (v7 + 56);
    v181 = (v7 + 48);
    v178 = (v7 + 32);
    v179 = (v7 + 8);
    v172 = _swiftEmptyArrayStorage;
    v158 = a4;
    v183 = v12;
    v175 = v6;
    v176 = v33;
    v188 = v25;
    v180 = v28;
    while (1)
    {
      v37 = v36 + 1;
      v162 = v36;
      if (v36 + 1 < v35)
      {
        v38 = v36;
        v39 = *v168;
        v40 = *(*v168 + 8 * v37);
        v164 = 8 * v38;
        v41 = (v39 + 8 * v38);
        v43 = *v41;
        v42 = v41 + 2;
        v44 = v40;
        v45 = v43;
        LODWORD(v177) = sub_1BC04(v44, v45);

        v46 = v38 + 2;
        v47 = v171;
        v167 = v35;
        while (v35 != v46)
        {
          v50 = *(v42 - 1);
          v51 = *v42;
          v187 = v50;
          v52 = [v51 displayDate];
          v184 = v46;
          v182 = v51;
          if (v52)
          {
            v53 = v52;
            v54 = [v52 date];

            sub_1FE8C();
            v55 = 0;
          }

          else
          {
            v55 = 1;
          }

          v56 = *v189;
          v57 = 1;
          (*v189)(v47, v55, 1, v6);
          v58 = [v187 displayDate];
          v186 = v42;
          if (v58)
          {
            v59 = v58;
            v60 = [v58 date];

            v61 = v170;
            sub_1FE8C();

            v57 = 0;
          }

          else
          {
            v61 = v170;
          }

          v56(v61, v57, 1, v6);
          v62 = v165;
          sub_FBB0(v171, v165, &qword_2E2B0, &qword_22958);
          v63 = *v181;
          if ((*v181)(v62, 1, v6) == 1)
          {
            sub_469C(v62, &qword_2E2B0, &qword_22958);
            v48 = 0;
            v47 = v171;
          }

          else
          {
            v64 = v62;
            v65 = *v178;
            (*v178)(v166, v64, v6);
            sub_FBB0(v61, v28, &qword_2E2B0, &qword_22958);
            if (v63(v28, 1, v6) == 1)
            {
              (*v179)(v166, v6);
              sub_469C(v28, &qword_2E2B0, &qword_22958);
              v48 = 1;
            }

            else
            {
              v66 = v160;
              v65(v160, v28, v6);
              v48 = sub_1FE7C();
              v67 = *v179;
              (*v179)(v66, v6);
              v67(v166, v6);
            }

            v47 = v171;
            v35 = v167;
          }

          sub_469C(v170, &qword_2E2B0, &qword_22958);
          sub_469C(v47, &qword_2E2B0, &qword_22958);

          v49 = v48 & 1;
          v46 = v184 + 1;
          v42 = v186 + 1;
          if ((v177 & 1) != v49)
          {
            v35 = v184;
            break;
          }
        }

        v68 = v164;
        a4 = v158;
        v25 = v188;
        if (v177)
        {
          v69 = v162;
          if (v35 < v162)
          {
            goto LABEL_130;
          }

          if (v162 < v35)
          {
            v70 = 8 * v35 - 8;
            v71 = v35;
            do
            {
              if (v69 != --v71)
              {
                v72 = *v168;
                if (!*v168)
                {
                  goto LABEL_135;
                }

                v73 = *(v72 + v68);
                *(v72 + v68) = *(v72 + v70);
                *(v72 + v70) = v73;
              }

              ++v69;
              v70 -= 8;
              v68 += 8;
            }

            while (v69 < v71);
          }
        }

        v37 = v35;
      }

      v74 = v168[1];
      if (v37 >= v74)
      {
        goto LABEL_60;
      }

      if (__OFSUB__(v37, v162))
      {
        goto LABEL_129;
      }

      if (v37 - v162 >= a4)
      {
        goto LABEL_60;
      }

      v75 = v162 + a4;
      if (__OFADD__(v162, a4))
      {
        goto LABEL_131;
      }

      if (v75 >= v74)
      {
        v75 = v168[1];
      }

      if (v75 < v162)
      {
        break;
      }

      if (v37 == v75)
      {
        goto LABEL_60;
      }

      v177 = *v168;
      v76 = (v177 + 8 * v37 - 8);
      v77 = v162 - v37;
      v174 = v20;
      v161 = v75;
      while (2)
      {
        v167 = v37;
        v78 = v77;
        v79 = *(v177 + 8 * v37);
        v163 = v78;
        v80 = v78;
        v164 = v76;
        while (1)
        {
          v184 = v80;
          v81 = *v76;
          v82 = v79;
          v83 = v81;
          v186 = v82;
          v84 = [v82 displayDate];
          if (v84)
          {
            v85 = v84;
            v86 = [v84 date];

            sub_1FE8C();
            v87 = 0;
          }

          else
          {
            v87 = 1;
          }

          v88 = *v189;
          v89 = 1;
          (*v189)(v25, v87, 1, v6);
          v187 = v83;
          v90 = [v83 displayDate];
          if (v90)
          {
            v91 = v90;
            v92 = [v90 date];

            v93 = v185;
            sub_1FE8C();

            v89 = 0;
          }

          else
          {
            v93 = v185;
          }

          v88(v93, v89, 1, v6);
          sub_FBB0(v188, v20, &qword_2E2B0, &qword_22958);
          v94 = *v181;
          if ((*v181)(v20, 1, v6) == 1)
          {
            sub_469C(v20, &qword_2E2B0, &qword_22958);
            sub_469C(v93, &qword_2E2B0, &qword_22958);
            v25 = v188;
            sub_469C(v188, &qword_2E2B0, &qword_22958);

            goto LABEL_41;
          }

          v182 = v76;
          v95 = *v178;
          v96 = v183;
          (*v178)(v183, v20, v6);
          v97 = v176;
          sub_FBB0(v93, v176, &qword_2E2B0, &qword_22958);
          if (v94(v97, 1, v6) != 1)
          {
            break;
          }

          (*v179)(v96, v6);
          sub_469C(v97, &qword_2E2B0, &qword_22958);
          sub_469C(v185, &qword_2E2B0, &qword_22958);
          v25 = v188;
          sub_469C(v188, &qword_2E2B0, &qword_22958);

          v98 = v182;
LABEL_54:
          v20 = v174;
          v28 = v180;
          v102 = v184;
          if (!v177)
          {
            goto LABEL_133;
          }

          v103 = *v98;
          v79 = v98[1];
          *v98 = v79;
          v98[1] = v103;
          v76 = v98 - 1;
          v104 = __CFADD__(v102, 1);
          v80 = v102 + 1;
          v6 = v175;
          if (v104)
          {
            goto LABEL_42;
          }
        }

        v99 = v173;
        v95(v173, v97, v6);
        v100 = sub_1FE7C();
        v101 = *v179;
        (*v179)(v99, v6);
        v101(v183, v6);
        sub_469C(v185, &qword_2E2B0, &qword_22958);
        v25 = v188;
        sub_469C(v188, &qword_2E2B0, &qword_22958);

        v98 = v182;
        if (v100)
        {
          goto LABEL_54;
        }

        v20 = v174;
        v6 = v175;
LABEL_41:
        v28 = v180;
LABEL_42:
        v37 = v167 + 1;
        v76 = (v164 + 8);
        v77 = v163 - 1;
        if (v167 + 1 != v161)
        {
          continue;
        }

        break;
      }

      v37 = v161;
LABEL_60:
      v105 = v172;
      if (v37 < v162)
      {
        goto LABEL_128;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_11BA0(0, *(v105 + 2) + 1, 1, v105);
      }

      v107 = *(v105 + 2);
      v106 = *(v105 + 3);
      v108 = v107 + 1;
      v167 = v37;
      if (v107 >= v106 >> 1)
      {
        v105 = sub_11BA0((v106 > 1), v107 + 1, 1, v105);
      }

      *(v105 + 2) = v108;
      v109 = v105 + 32;
      v110 = &v105[16 * v107 + 32];
      v111 = v167;
      *v110 = v162;
      *(v110 + 1) = v111;
      v190 = v105;
      v187 = *v159;
      if (!v187)
      {
        goto LABEL_136;
      }

      v172 = v105;
      if (v107)
      {
        while (1)
        {
          v112 = v108 - 1;
          if (v108 >= 4)
          {
            break;
          }

          if (v108 == 3)
          {
            v113 = *(v105 + 4);
            v114 = *(v105 + 5);
            v123 = __OFSUB__(v114, v113);
            v115 = v114 - v113;
            v116 = v123;
LABEL_80:
            if (v116)
            {
              goto LABEL_119;
            }

            v129 = &v105[16 * v108];
            v131 = *v129;
            v130 = *(v129 + 1);
            v132 = __OFSUB__(v130, v131);
            v133 = v130 - v131;
            v134 = v132;
            if (v132)
            {
              goto LABEL_122;
            }

            v135 = &v109[16 * v112];
            v137 = *v135;
            v136 = *(v135 + 1);
            v123 = __OFSUB__(v136, v137);
            v138 = v136 - v137;
            if (v123)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v133, v138))
            {
              goto LABEL_126;
            }

            if (v133 + v138 >= v115)
            {
              if (v115 < v138)
              {
                v112 = v108 - 2;
              }

              goto LABEL_101;
            }

            goto LABEL_94;
          }

          v139 = &v105[16 * v108];
          v141 = *v139;
          v140 = *(v139 + 1);
          v123 = __OFSUB__(v140, v141);
          v133 = v140 - v141;
          v134 = v123;
LABEL_94:
          if (v134)
          {
            goto LABEL_121;
          }

          v142 = &v109[16 * v112];
          v144 = *v142;
          v143 = *(v142 + 1);
          v123 = __OFSUB__(v143, v144);
          v145 = v143 - v144;
          if (v123)
          {
            goto LABEL_124;
          }

          if (v145 < v133)
          {
            goto LABEL_3;
          }

LABEL_101:
          if (v112 - 1 >= v108)
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
            goto LABEL_132;
          }

          if (!*v168)
          {
            goto LABEL_134;
          }

          v150 = &v109[16 * v112 - 16];
          v151 = *v150;
          v152 = &v109[16 * v112];
          v153 = *(v152 + 1);
          v154 = v169;
          sub_1BE44(*v168 + 8 * *v150, (*v168 + 8 * *v152), (*v168 + 8 * v153), v187);
          v169 = v154;
          if (v154)
          {
            v190 = v172;
            goto LABEL_112;
          }

          if (v153 < v151)
          {
            goto LABEL_114;
          }

          v155 = *(v172 + 2);
          if (v112 > v155)
          {
            goto LABEL_115;
          }

          *v150 = v151;
          *(v150 + 1) = v153;
          if (v112 >= v155)
          {
            goto LABEL_116;
          }

          v108 = v155 - 1;
          memmove(&v109[16 * v112], v152 + 16, 16 * (v155 - 1 - v112));
          v105 = v172;
          *(v172 + 2) = v155 - 1;
          v156 = v155 > 2;
          v28 = v180;
          if (!v156)
          {
LABEL_3:
            v190 = v105;
            goto LABEL_4;
          }
        }

        v117 = &v109[16 * v108];
        v118 = *(v117 - 8);
        v119 = *(v117 - 7);
        v123 = __OFSUB__(v119, v118);
        v120 = v119 - v118;
        if (v123)
        {
          goto LABEL_117;
        }

        v122 = *(v117 - 6);
        v121 = *(v117 - 5);
        v123 = __OFSUB__(v121, v122);
        v115 = v121 - v122;
        v116 = v123;
        if (v123)
        {
          goto LABEL_118;
        }

        v124 = &v105[16 * v108];
        v126 = *v124;
        v125 = *(v124 + 1);
        v123 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v123)
        {
          goto LABEL_120;
        }

        v123 = __OFADD__(v115, v127);
        v128 = v115 + v127;
        if (v123)
        {
          goto LABEL_123;
        }

        if (v128 >= v120)
        {
          v146 = &v109[16 * v112];
          v148 = *v146;
          v147 = *(v146 + 1);
          v123 = __OFSUB__(v147, v148);
          v149 = v147 - v148;
          if (v123)
          {
            goto LABEL_127;
          }

          if (v115 < v149)
          {
            v112 = v108 - 2;
          }

          goto LABEL_101;
        }

        goto LABEL_80;
      }

LABEL_4:
      v35 = v168[1];
      v36 = v167;
      a4 = v158;
      v25 = v188;
      if (v167 >= v35)
      {
        goto LABEL_110;
      }
    }

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
    goto LABEL_137;
  }

LABEL_110:
  if (!*v159)
  {
LABEL_137:
    __break(1u);
    return;
  }

  sub_1C97C(&v190, *v159, v168);
LABEL_112:
}

void sub_1D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1FEAC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_29A0(&qword_2E2B0, &qword_22958);
  v15 = __chkstk_darwin(v14 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v19 = __chkstk_darwin(v16);
  v63 = &v52 - v20;
  __chkstk_darwin(v19);
  v65 = &v52 - v22;
  v53 = a2;
  if (a3 != a2)
  {
    v69 = (v9 + 56);
    v23 = *a4;
    v61 = (v9 + 32);
    v62 = (v9 + 48);
    v58 = (v9 + 8);
    v59 = v18;
    v64 = v23;
    v24 = v23 + 8 * a3 - 8;
    v25 = a1 - a3;
    v66 = v13;
    v60 = v21;
LABEL_6:
    v55 = v24;
    v56 = a3;
    v26 = *(v64 + 8 * a3);
    v54 = v25;
    v27 = v25;
    v28 = v65;
    while (1)
    {
      v67 = v27;
      v29 = *v24;
      v30 = v26;
      v70 = v29;
      v68 = v30;
      v31 = [v30 displayDate];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 date];

        sub_1FE8C();
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = v63;
      v36 = v61;
      v37 = *v69;
      v38 = 1;
      (*v69)(v28, v34, 1, v8);
      v39 = [v70 displayDate];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 date];

        sub_1FE8C();
        v38 = 0;
      }

      v37(v35, v38, 1, v8);
      sub_FBB0(v28, v18, &qword_2E2B0, &qword_22958);
      v42 = *v62;
      if ((*v62)(v18, 1, v8) == 1)
      {
        sub_469C(v18, &qword_2E2B0, &qword_22958);
        sub_469C(v35, &qword_2E2B0, &qword_22958);
        sub_469C(v28, &qword_2E2B0, &qword_22958);

LABEL_5:
        a3 = v56 + 1;
        v24 = v55 + 8;
        v25 = v54 - 1;
        if (v56 + 1 == v53)
        {
          return;
        }

        goto LABEL_6;
      }

      v43 = *v36;
      v44 = v66;
      (*v36)(v66, v18, v8);
      v45 = v60;
      sub_FBB0(v35, v60, &qword_2E2B0, &qword_22958);
      if (v42(v45, 1, v8) == 1)
      {
        (*v58)(v44, v8);
        sub_469C(v45, &qword_2E2B0, &qword_22958);
        sub_469C(v35, &qword_2E2B0, &qword_22958);
        v28 = v65;
        sub_469C(v65, &qword_2E2B0, &qword_22958);

        v18 = v59;
        v46 = v67;
      }

      else
      {
        v47 = v57;
        v43(v57, v45, v8);
        v48 = sub_1FE7C();
        v49 = *v58;
        (*v58)(v47, v8);
        v49(v66, v8);
        sub_469C(v35, &qword_2E2B0, &qword_22958);
        v28 = v65;
        sub_469C(v65, &qword_2E2B0, &qword_22958);

        v18 = v59;
        v46 = v67;
        if ((v48 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v64)
      {
        break;
      }

      v50 = *v24;
      v26 = *(v24 + 8);
      *v24 = v26;
      *(v24 + 8) = v50;
      v24 -= 8;
      v51 = __CFADD__(v46, 1);
      v27 = v46 + 1;
      if (v51)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1DEAC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_208EC(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_2958(0, &qword_2E0E0, REMReminder_ptr);
        v6 = sub_204CC();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1CAAC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D920(0, v2, 1, a1);
  }
}

uint64_t sub_1DFC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_29A0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E070(unint64_t a1)
{
  v22 = a1;
  v1 = sub_29A0(&qword_2E000, &qword_22850);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  sub_29A0(&qword_2E0D0, &unk_22960);
  v7 = (type metadata accessor for TTRIIntentsSnippetSection(0) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22590;
  v10 = (v9 + v8);
  v11 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
  v12 = sub_202CC();
  (*(*(v12 - 8) + 104))(v6, v11, v12);
  v13 = enum case for REMNavigationSpecifier.flagged(_:);
  v14 = sub_2030C();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v6, v13, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  v23._countAndFlagsBits = 0x64656767616C46;
  v24._object = 0x8000000000022110;
  v23._object = 0xE700000000000000;
  v24._countAndFlagsBits = 0xD000000000000012;
  v16 = sub_2001C(v23, v24);
  v18 = v17;
  sub_FBB0(v6, v4, &qword_2E000, &qword_22850);
  *v10 = v16;
  v10[1] = v18;
  sub_FBB0(v4, v10 + v7[7], &qword_2E000, &qword_22850);
  v19 = sub_1A63C(v22, 0, 0);
  sub_469C(v4, &qword_2E000, &qword_22850);
  sub_469C(v6, &qword_2E000, &qword_22850);
  *(v10 + v7[8]) = v19;
  return v9;
}

void *sub_1E334(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_2087C();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_207AC();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = [v5 list];
    v10 = sub_1232C(v8);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_22;
    }

    v14 = v9;
    if (_swiftEmptyDictionarySingleton[3] < v13)
    {
      break;
    }

LABEL_16:
    if (v14)
    {

      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v10);
      sub_2048C();
      if (*(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_204BC();
      }

      sub_204DC();
    }

    else
    {
      sub_29A0(&qword_2DD50, &unk_22710);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22660;
      *(v17 + 32) = v6;
      _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v10) = v8;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v17;
      v18 = _swiftEmptyDictionarySingleton[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v20;
    }

    if (v7 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  sub_13EB8(v13, 1);
  v15 = sub_1232C(v8);
  if ((v14 & 1) == (v16 & 1))
  {
    v10 = v15;
    goto LABEL_16;
  }

  sub_2958(0, &qword_2E340, REMList_ptr);
  result = sub_2092C();
  __break(1u);
  return result;
}

void *sub_1E5A8(uint64_t a1)
{
  v1 = sub_29A0(&qword_2E000, &qword_22850);
  __chkstk_darwin(v1 - 8);
  v38 = (&v34 - v2);
  v3 = type metadata accessor for TTRIIntentsSnippetSection(0);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v42 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));

  v6 = sub_1E334(v5);

  v7 = v6[2];
  if (v7)
  {
    v8 = sub_11E34(v6[2], 0);
    v9 = sub_19188(v43, v8 + 4, v7, v6);
    v10 = v43[0];
    v41 = v43[4];

    sub_FB4C(v10);
    if (v9 != v7)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v43[0] = v8;
  sub_14258(v43);

  v11 = v43[0];
  v12 = *(v43[0] + 16);
  if (v12)
  {
    v43[0] = _swiftEmptyArrayStorage;
    sub_12B54(0, v12, 0);
    v13 = 0;
    v14 = v43[0];
    v35 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
    v15 = (v11 + 40);
    v34 = enum case for REMNavigationSpecifier.list(_:);
    v36 = v12;
    v37 = v11;
    while (v13 < *(v11 + 16))
    {
      v16 = *v15;
      v17 = *(v15 - 1);

      v41 = v17;
      v18 = [v17 displayName];
      v19 = sub_2041C();
      v21 = v20;

      v22 = *(sub_29A0(&qword_2E328, &qword_229B8) + 48);
      v23 = [v17 objectID];
      v24 = v38;
      *v38 = v23;
      v25 = sub_202DC();
      (*(*(v25 - 8) + 104))(v24 + v22, v35, v25);
      v26 = sub_2030C();
      v27 = *(v26 - 8);
      (*(v27 + 104))(v24, v34, v26);
      (*(v27 + 56))(v24, 0, 1, v26);
      *v42 = v19;
      v28 = v42;
      v42[1] = v21;
      v29 = v40;
      sub_FBB0(v24, v28 + *(v40 + 20), &qword_2E000, &qword_22850);
      v30 = sub_1A63C(v16, sub_1933C, 0);
      sub_469C(v24, &qword_2E000, &qword_22850);

      *(v28 + *(v29 + 24)) = v30;
      v43[0] = v14;
      v32 = *(v14 + 16);
      v31 = *(v14 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_12B54((v31 > 1), v32 + 1, 1);
        v14 = v43[0];
      }

      ++v13;
      *(v14 + 16) = v32 + 1;
      sub_19818(v28, v14 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32);
      v15 += 2;
      v11 = v37;
      if (v36 == v13)
      {

        return v14;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1EA38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1EA74(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1EA84@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result & 1;
  return result;
}

unint64_t sub_1EAC0()
{
  result = qword_2E0F0;
  if (!qword_2E0F0)
  {
    sub_2958(255, &qword_2E0E8, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2E0F0);
  }

  return result;
}

uint64_t sub_1EB28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2A4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1EB7C(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a3 + 20);
    v9 = sub_2030C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      v12 = sub_29A0(&qword_2E000, &qword_22850);
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    *&v4[*(a3 + 24)] = *&a2[*(a3 + 24)];
  }

  return v4;
}

uint64_t sub_1ED08(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_2030C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }
}

char *sub_1EDD0(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 20);
  v8 = sub_2030C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(&a2[v7], 1, v8))
  {
    v11 = sub_29A0(&qword_2E000, &qword_22850);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

char *sub_1EF10(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 20);
  v7 = sub_2030C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = sub_29A0(&qword_2E000, &qword_22850);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

char *sub_1F0C8(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_2030C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = sub_29A0(&qword_2E000, &qword_22850);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *sub_1F1EC(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = sub_2030C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(&a1[v7], &a2[v7], v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_29A0(&qword_2E000, &qword_22850);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(&a1[v7], &a2[v7], v8);
  (*(v9 + 56))(&a1[v7], 0, 1, v8);
LABEL_7:
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

uint64_t sub_1F3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29A0(&qword_2E000, &qword_22850);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1F480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29A0(&qword_2E000, &qword_22850);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1F548(uint64_t a1)
{
  sub_C9E0(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1F610()
{
  v0 = sub_2036C();
  sub_F9EC(v0, qword_2E420);
  v1 = sub_F954(v0, qword_2E420);
  if (qword_2DB98 != -1)
  {
    swift_once();
  }

  v2 = sub_F954(v0, qword_2E890);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id RemindersSiriSnippetFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemindersSiriSnippetFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemindersSiriSnippetFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id RemindersSiriSnippetFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RemindersSiriSnippetFactory();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id _s21RemindersSiriUIPlugin0aB14SnippetFactoryC14viewController3forSo0b6UIBased4ViewG0CSgSo11SAUISnippetCSg_tF_0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 0;
  }

  result = [v5 interactions];
  if (!result)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v7 = result;
  sub_1FD58();
  v8 = sub_204AC();

  if (!(v8 >> 62))
  {
    if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  if (!sub_2087C())
  {
LABEL_32:

    return 0;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_207AC();
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_37:
      swift_once();
LABEL_28:
      v34 = sub_2036C();
      sub_F954(v34, qword_2E420);
      v35 = sub_2035C();
      v36 = sub_2055C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "Could not load view controller", v37, 2u);
      }

      return 0;
    }

    v9 = *(v8 + 32);
  }

  v7 = v9;

  result = [v7 intent];
  if (!result)
  {
    goto LABEL_39;
  }

  v10 = result;
  v11 = [result typeName];

  result = [v7 intent];
  if (!result)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = result;
  isa = [result data];

  if (isa)
  {
    v14 = sub_1FE5C();
    v16 = v15;

    isa = sub_1FE4C().super.isa;
    sub_1FDA4(v14, v16);
  }

  v1 = INIntentCreate();

  if (!v1)
  {
    if (qword_2DBA8 != -1)
    {
      swift_once();
    }

    v30 = sub_2036C();
    sub_F954(v30, qword_2E420);
    v31 = sub_2035C();
    v32 = sub_2055C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Could not decode intent from AceInteraction", v33, 2u);
    }

    return 0;
  }

  result = [v7 intentResponse];
  if (!result)
  {
    goto LABEL_41;
  }

  v17 = result;
  v18 = [result typeName];

  result = [v7 intentResponse];
  if (result)
  {
    v19 = result;
    v20 = [result data];

    if (v20)
    {
      v21 = sub_1FE5C();
      v23 = v22;

      v20 = sub_1FE4C().super.isa;
      sub_1FDA4(v21, v23);
    }

    v2 = INIntentResponseCreate();

    type metadata accessor for TTRIIntentsSnippetViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v25 = sub_203EC();
    v4 = [objc_opt_self() storyboardWithName:v25 bundle:v3];

    v26 = [v4 instantiateInitialViewController];
    if (v26)
    {
      v27 = v26;
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        sub_B19C(v1, v2);

        return v29;
      }
    }

    if (qword_2DBA8 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_1FD58()
{
  result = qword_2E4C0;
  if (!qword_2E4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2E4C0);
  }

  return result;
}

uint64_t sub_1FDA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}