void sub_100F6A550(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v195 = a1;
  v216 = type metadata accessor for Calendar.Component();
  v8 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for Date();
  v10 = *(v214 - 8);
  __chkstk_darwin(v214);
  v213 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v212 = &v192 - v13;
  v211 = type metadata accessor for Calendar();
  __chkstk_darwin(v211);
  v225 = &v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[1];
  v218 = a3;
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_201:
    v234 = *v195;
    if (v234)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_236;
      }

      goto LABEL_203;
    }

LABEL_242:
    __break(1u);
    return;
  }

  v194 = a4;
  v17 = 0;
  v210 = enum case for Calendar.Component.day(_:);
  v209 = (v8 + 104);
  v208 = (v8 + 8);
  v207 = (v10 + 8);
  v206 = (v14 + 8);
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v198 = v18;
    v197 = v17;
    if (v17 + 1 >= v16)
    {
      goto LABEL_78;
    }

    v21 = *v218;
    v22 = *v218 + 56 * v20;
    v24 = *(v22 + 16);
    v23 = *(v22 + 32);
    v25 = *v22;
    v231 = *(v22 + 48);
    v230[1] = v24;
    v230[2] = v23;
    v230[0] = v25;
    v26 = (v21 + 56 * v17);
    v28 = v26[1];
    v27 = v26[2];
    v29 = v26[3].i8[0];
    v232[0] = *v26;
    v233 = v29;
    v232[1] = v28;
    v232[2] = v27;
    v234 = v16;
    sub_1000693DC(v230, v229);
    sub_1000693DC(v232, v229);
    LODWORD(v228) = sub_100D27DE4(v230, v232);
    sub_1000698D0(v232);
    sub_1000698D0(v230);
    v30 = v234;
    v20 = v19 + 2;
    if (v19 + 2 < v234)
    {
      break;
    }

    if (v228)
    {
LABEL_8:
      if (v20 < v19)
      {
        goto LABEL_235;
      }

      goto LABEL_9;
    }

LABEL_78:
    v81 = v218[1];
    if (v20 >= v81)
    {
      goto LABEL_148;
    }

    if (__OFSUB__(v20, v19))
    {
      goto LABEL_232;
    }

    if (v20 - v19 >= v194)
    {
      goto LABEL_148;
    }

    v82 = v19 + v194;
    if (__OFADD__(v19, v194))
    {
      goto LABEL_233;
    }

    if (v82 >= v81)
    {
      v82 = v218[1];
    }

    if (v82 < v19)
    {
LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

    if (v20 == v82)
    {
      goto LABEL_148;
    }

    v193 = v5;
    v83 = *v218;
    v84 = *v218 + 56 * v20 - 56;
    v85 = v19 - v20;
    v219 = *v218;
    v196 = v82;
    while (2)
    {
      v220 = v20;
      v204 = v85;
      v205 = v84;
      while (1)
      {
        v88 = v84 + 56;
        v87 = *(v84 + 56);
        v90 = *(v84 + 64);
        v89 = *(v84 + 72);
        v92 = *(v84 + 80);
        v91 = *(v84 + 88);
        v93 = *(v84 + 96);
        v94 = *(v84 + 104);
        v95 = *v84;
        v96 = *(v84 + 8);
        v97 = *(v84 + 16);
        v98 = *(v84 + 24);
        v100 = *(v84 + 32);
        v99 = *(v84 + 40);
        v101 = v94 >> 6;
        v102 = *(v84 + 48);
        if (v94 >> 6 <= 1)
        {
          if (!v101)
          {
            goto LABEL_141;
          }

          if ((v102 & 0xC0) == 0x40)
          {
            v103 = *(v84 + 56);
            v234 = *(v84 + 64);
            v226 = v97;
            v227 = v92;
            v228 = v91;
            v223 = v93;
            v224 = v99;
            v222 = v89;
            v221 = v87;
            sub_100076F8C(v103, v234, v89, v92, v91, v93, v94);
            sub_100076F8C(v95, v96, v226, v98, v100, v224, v102);
            static Calendar.current.getter();
            v104 = v212;
            Date.init(timeIntervalSinceReferenceDate:)();
            v105 = v213;
            Date.init(timeIntervalSinceReferenceDate:)();
            v106 = v215;
            v107 = v216;
            (*v209)(v215, v210, v216);
            v226 = Calendar.compare(_:to:toGranularity:)();
            (*v208)(v106, v107);
            v108 = *v207;
            v109 = v214;
            (*v207)(v105, v214);
            v108(v104, v109);
            (*v206)(v225, v211);
            sub_1000771BC(v221, v234, v222, v227, v228, v223, v94);
            v83 = v219;
            if (v226 != -1)
            {
              goto LABEL_90;
            }

            goto LABEL_141;
          }

          goto LABEL_121;
        }

        if (v101 != 2)
        {
          break;
        }

        if ((v102 & 0xC0) == 0x80)
        {
          if ((v94 & 1) == 0)
          {
            if (v102)
            {
              goto LABEL_90;
            }

            v226 = *(v84 + 16);
            v202 = v98;
            v203 = v100;
            v224 = v99;
            if (v90)
            {
              v110 = v87;
            }

            else
            {
              v110 = 0;
            }

            v111 = 0xE000000000000000;
            if (v90)
            {
              v112 = v90;
            }

            else
            {
              v112 = 0xE000000000000000;
            }

            v217 = v95;
            if (v96)
            {
              v113 = v95;
            }

            else
            {
              v113 = 0;
            }

            if (v96)
            {
              v111 = v96;
            }

            v228 = v91;
            v227 = v92;
            v223 = v93;
            v222 = v89;
            v221 = v87;
            v201 = v112;
            v200 = v111;
            if (v110 == v113 && v112 == v111)
            {
              v130 = v90;
              sub_100076F8C(v87, v90, v89, v92, v91, v93, v94);
              v131 = v217;
              v132 = v226;
              v133 = v202;
              v134 = v203;
              v135 = v224;
              sub_100076F8C(v217, v96, v226, v202, v203, v224, v102);

              sub_1000771BC(v131, v96, v132, v133, v134, v135, v102);
              sub_1000771BC(v221, v130, v222, v227, v228, v223, v94);
              goto LABEL_89;
            }

            v234 = v90;
            v114 = v93;
            v115 = v89;
            v116 = v87;
            v199 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100076F8C(v116, v234, v115, v227, v228, v114, v94);
            v117 = v202;
            v118 = v203;
            v119 = v224;
            sub_100076F8C(v217, v96, v226, v202, v203, v224, v102);

            sub_1000771BC(v217, v96, v226, v117, v118, v119, v102);
            sub_1000771BC(v221, v234, v222, v227, v228, v223, v94);
            v83 = v219;
            if ((v199 & 1) == 0)
            {
              goto LABEL_90;
            }
          }

          goto LABEL_141;
        }

LABEL_121:
        if (v102 < 0x40)
        {
          goto LABEL_90;
        }

        v120 = 0;
        if (v102 >= 0xC0)
        {
          goto LABEL_123;
        }

LABEL_125:
        if (!v120 || v94 != 192 || v87 != 1 || v89 | v90 | v92 | v91 | v93)
        {
          if (v102 < 0xC0)
          {
            goto LABEL_140;
          }

          v121 = v97 | v96 | v98 | v100 | v99;
          if (v102 == 192 && v95 == 1 && !v121)
          {
            v86 = 1;
            goto LABEL_88;
          }

          if (v102 == 192 && v95 == 2 && !v121)
          {
            sub_100076F8C(2, 0, v97, *(v84 + 24), *(v84 + 32), v99, 0xC0u);
            v83 = v219;
          }

          else
          {
LABEL_140:
            if (v120 && v94 == 192 && v87 == 2 && !(v89 | v90 | v92 | v91 | v93))
            {
              goto LABEL_90;
            }
          }
        }

LABEL_141:
        if (!v83)
        {
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

        v122 = *(v84 + 104);
        v123 = *(v84 + 72);
        v124 = *(v84 + 88);
        v125 = *v84;
        v126 = *(v84 + 16);
        *v84 = *(v84 + 56);
        *(v84 + 16) = v123;
        v127 = *(v84 + 32);
        v128 = *(v84 + 48);
        *(v84 + 32) = v124;
        *(v84 + 48) = v122;
        v84 -= 56;
        *v88 = v125;
        *(v88 + 16) = v126;
        *(v88 + 32) = v127;
        *(v88 + 48) = v128;
        if (__CFADD__(v85++, 1))
        {
          goto LABEL_90;
        }
      }

      if (v102 < 0x40)
      {
        goto LABEL_90;
      }

      v120 = 1;
      if (!(v89 | v90 | v87 | v92 | v91 | v93) && v94 == 192)
      {
        goto LABEL_141;
      }

      if (v102 < 0xC0)
      {
        goto LABEL_125;
      }

LABEL_123:
      if (v97 | v96 | v95 | v98 | v100 | v99 || v102 != 192)
      {
        goto LABEL_125;
      }

      v86 = 0;
LABEL_88:
      sub_100076F8C(v86, 0, v97, *(v84 + 24), *(v84 + 32), v99, 0xC0u);
LABEL_89:
      v83 = v219;
LABEL_90:
      v20 = v220 + 1;
      v84 = v205 + 56;
      v85 = v204 - 1;
      if ((v220 + 1) != v196)
      {
        continue;
      }

      break;
    }

    v20 = v196;
    v5 = v193;
    v18 = v198;
    v19 = v197;
LABEL_148:
    if (v20 < v19)
    {
      goto LABEL_231;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100B355CC(0, *(v18 + 16) + 1, 1, v18);
    }

    v137 = *(v18 + 16);
    v136 = *(v18 + 24);
    v138 = v137 + 1;
    if (v137 >= v136 >> 1)
    {
      v18 = sub_100B355CC((v136 > 1), v137 + 1, 1, v18);
    }

    *(v18 + 16) = v138;
    v139 = v18 + 32;
    v140 = (v18 + 32 + 16 * v137);
    *v140 = v19;
    v140[1] = v20;
    v141 = *v195;
    if (!*v195)
    {
LABEL_241:
      __break(1u);
      goto LABEL_242;
    }

    v220 = v20;
    if (v137)
    {
      while (2)
      {
        v142 = v138 - 1;
        if (v138 >= 4)
        {
          v147 = v139 + 16 * v138;
          v148 = *(v147 - 64);
          v149 = *(v147 - 56);
          v153 = __OFSUB__(v149, v148);
          v150 = v149 - v148;
          if (v153)
          {
            goto LABEL_216;
          }

          v152 = *(v147 - 48);
          v151 = *(v147 - 40);
          v153 = __OFSUB__(v151, v152);
          v145 = v151 - v152;
          v146 = v153;
          if (v153)
          {
            goto LABEL_217;
          }

          v154 = (v18 + 16 * v138);
          v156 = *v154;
          v155 = v154[1];
          v153 = __OFSUB__(v155, v156);
          v157 = v155 - v156;
          if (v153)
          {
            goto LABEL_219;
          }

          v153 = __OFADD__(v145, v157);
          v158 = v145 + v157;
          if (v153)
          {
            goto LABEL_221;
          }

          if (v158 >= v150)
          {
            v176 = (v139 + 16 * v142);
            v178 = *v176;
            v177 = v176[1];
            v153 = __OFSUB__(v177, v178);
            v179 = v177 - v178;
            if (v153)
            {
              goto LABEL_227;
            }

            if (v145 < v179)
            {
              v142 = v138 - 2;
            }
          }

          else
          {
LABEL_168:
            if (v146)
            {
              goto LABEL_218;
            }

            v159 = (v18 + 16 * v138);
            v161 = *v159;
            v160 = v159[1];
            v162 = __OFSUB__(v160, v161);
            v163 = v160 - v161;
            v164 = v162;
            if (v162)
            {
              goto LABEL_220;
            }

            v165 = (v139 + 16 * v142);
            v167 = *v165;
            v166 = v165[1];
            v153 = __OFSUB__(v166, v167);
            v168 = v166 - v167;
            if (v153)
            {
              goto LABEL_223;
            }

            if (__OFADD__(v163, v168))
            {
              goto LABEL_225;
            }

            if (v163 + v168 < v145)
            {
              goto LABEL_183;
            }

            if (v145 < v168)
            {
              v142 = v138 - 2;
            }
          }
        }

        else
        {
          if (v138 == 3)
          {
            v143 = *(v18 + 32);
            v144 = *(v18 + 40);
            v153 = __OFSUB__(v144, v143);
            v145 = v144 - v143;
            v146 = v153;
            goto LABEL_168;
          }

          if (v138 < 2)
          {
            goto LABEL_226;
          }

          v169 = (v18 + 16 * v138);
          v171 = *v169;
          v170 = v169[1];
          v153 = __OFSUB__(v170, v171);
          v163 = v170 - v171;
          v164 = v153;
LABEL_183:
          if (v164)
          {
            goto LABEL_222;
          }

          v172 = (v139 + 16 * v142);
          v174 = *v172;
          v173 = v172[1];
          v153 = __OFSUB__(v173, v174);
          v175 = v173 - v174;
          if (v153)
          {
            goto LABEL_224;
          }

          if (v175 < v163)
          {
            break;
          }
        }

        if (v142 - 1 >= v138)
        {
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
          goto LABEL_234;
        }

        if (!*v218)
        {
          goto LABEL_238;
        }

        v180 = v18;
        v181 = (v139 + 16 * (v142 - 1));
        v182 = *v181;
        v183 = (v139 + 16 * v142);
        v18 = v183[1];
        sub_100F6D354((*v218 + 56 * *v181), (*v218 + 56 * *v183), *v218 + 56 * v18, v141);
        if (v5)
        {
          goto LABEL_210;
        }

        if (v18 < v182)
        {
          goto LABEL_213;
        }

        if (v142 > *(v180 + 16))
        {
          goto LABEL_214;
        }

        *v181 = v182;
        v181[1] = v18;
        v184 = *(v180 + 16);
        if (v142 >= v184)
        {
          goto LABEL_215;
        }

        v18 = v180;
        v138 = v184 - 1;
        memmove((v139 + 16 * v142), v183 + 2, 16 * (v184 - 1 - v142));
        *(v180 + 16) = v184 - 1;
        if (v184 <= 2)
        {
          break;
        }

        continue;
      }
    }

    v16 = v218[1];
    v17 = v220;
    if (v220 >= v16)
    {
      goto LABEL_201;
    }
  }

  v193 = v5;
  v31 = (v21 + 56 * v19 + 80);
  v32 = v228;
  while (1)
  {
    v220 = v20;
    v47 = v31;
    v49 = v31[4];
    v48 = v31[5];
    v50 = v31[6];
    v52 = v31[7];
    v31 += 7;
    v51 = v52;
    v54 = v47[8];
    v53 = v47[9];
    v55 = *(v47 + 80);
    v56 = *(v47 - 3);
    v57 = *(v47 - 2);
    v59 = *(v47 - 1);
    v58 = *v47;
    v61 = v47[1];
    v60 = v47[2];
    v62 = *(v47 + 24);
    v63 = v55 >> 6;
    if (v55 >> 6 > 1)
    {
      if (v63 != 2)
      {
        if (v62 < 0x40)
        {
          goto LABEL_62;
        }

        v77 = 1;
        if (!(v50 | v48 | v49 | v51 | v54 | v53) && v55 == 192)
        {
          goto LABEL_16;
        }

        if (v62 >= 0xC0)
        {
          goto LABEL_49;
        }

        goto LABEL_52;
      }

      if ((v62 & 0xC0) == 0x80)
      {
        if (v55)
        {
          goto LABEL_16;
        }

        if ((v62 & 1) == 0)
        {
          if (v48)
          {
            v73 = v49;
          }

          else
          {
            v73 = 0;
          }

          v74 = 0xE000000000000000;
          if (v48)
          {
            v75 = v48;
          }

          else
          {
            v75 = 0xE000000000000000;
          }

          if (v57)
          {
            v76 = v56;
          }

          else
          {
            v76 = 0;
          }

          if (v57)
          {
            v74 = v57;
          }

          v226 = v53;
          v224 = v50;
          v223 = v51;
          v222 = v54;
          v227 = v48;
          v221 = v49;
          v217 = v75;
          v205 = v74;
          if (v73 == v76 && v75 == v74)
          {
            LODWORD(v219) = 0;
          }

          else
          {
            v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v49 = v221;
            v48 = v227;
            v54 = v222;
            v51 = v223;
            v50 = v224;
            v53 = v226;
            LODWORD(v219) = v80;
          }

          sub_100076F8C(v49, v48, v50, v51, v54, v53, v55);
          sub_100076F8C(v56, v57, v59, v58, v61, v60, v62);

          sub_1000771BC(v56, v57, v59, v58, v61, v60, v62);
          sub_1000771BC(v221, v227, v224, v223, v222, v226, v55);
          v72 = v219;
LABEL_22:
          v32 = v228;
          v18 = v198;
          v20 = v220;
          v19 = v197;
          v30 = v234;
          if ((v228 ^ v72))
          {
            goto LABEL_75;
          }

          goto LABEL_17;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v63)
      {
        goto LABEL_16;
      }

      if ((v62 & 0xC0) == 0x40)
      {
        v227 = v48;
        v223 = v51;
        v222 = v54;
        v226 = v53;
        v224 = v50;
        v221 = v49;
        sub_100076F8C(v49, v48, v50, v51, v54, v53, v55);
        sub_100076F8C(v56, v57, v59, v58, v61, v60, v62);
        v64 = v225;
        static Calendar.current.getter();
        v65 = v212;
        Date.init(timeIntervalSinceReferenceDate:)();
        v66 = v213;
        Date.init(timeIntervalSinceReferenceDate:)();
        v67 = v215;
        v68 = v216;
        (*v209)(v215, v210, v216);
        v69 = Calendar.compare(_:to:toGranularity:)();
        (*v208)(v67, v68);
        v70 = *v207;
        v71 = v214;
        (*v207)(v66, v214);
        v70(v65, v71);
        (*v206)(v64, v211);
        sub_1000771BC(v221, v227, v224, v223, v222, v226, v55);
        v72 = v69 == -1;
        goto LABEL_22;
      }
    }

    if (v62 < 0x40)
    {
      goto LABEL_62;
    }

    v77 = 0;
    if (v62 >= 0xC0)
    {
LABEL_49:
      if (!(v59 | v57 | v56 | v58 | v61 | v60) && v62 == 192)
      {
        v78 = 0;
LABEL_61:
        sub_100076F8C(v78, 0, v59, v58, v61, v60, 0xC0u);
        v30 = v234;
        v32 = v228;
        goto LABEL_62;
      }
    }

LABEL_52:
    if (v77 && v55 == 192 && v49 == 1 && !(v50 | v48 | v51 | v54 | v53))
    {
      goto LABEL_16;
    }

    if (v62 >= 0xC0)
    {
      v79 = v59 | v57 | v58 | v61 | v60;
      if (v62 == 192 && v56 == 1 && !v79)
      {
        v78 = 1;
        goto LABEL_61;
      }

      if (v62 == 192 && v56 == 2 && !v79)
      {
        sub_100076F8C(2, 0, v59, v58, v61, v60, 0xC0u);
        v32 = v228;
        v30 = v234;
LABEL_16:
        v18 = v198;
        v20 = v220;
        v19 = v197;
        if ((v32 & 1) == 0)
        {
          v5 = v193;
          goto LABEL_78;
        }

        goto LABEL_17;
      }
    }

    if (!v77 || v55 != 192 || v49 != 2 || v50 | v48 | v51 | v54 | v53)
    {
      goto LABEL_16;
    }

LABEL_62:
    v18 = v198;
    v20 = v220;
    v19 = v197;
    if (v32)
    {
      break;
    }

LABEL_17:
    if (v30 == ++v20)
    {
      v20 = v30;
LABEL_75:
      v5 = v193;
      if (v32)
      {
        goto LABEL_8;
      }

      goto LABEL_78;
    }
  }

  v5 = v193;
  if (v220 >= v197)
  {
LABEL_9:
    if (v19 < v20)
    {
      v33 = 56 * v20;
      v34 = v20;
      v35 = v19;
      v36 = 56 * v19;
      while (1)
      {
        if (v35 != --v34)
        {
          v37 = *v218;
          if (!*v218)
          {
            goto LABEL_239;
          }

          v38 = v37 + v36;
          v39 = *(v37 + v36 + 48);
          v40 = v37 + v33;
          v41 = *v38;
          v42 = *(v38 + 16);
          v43 = *(v38 + 32);
          v44 = *(v40 - 40);
          v45 = *(v40 - 24);
          v46 = *(v40 - 56);
          *(v38 + 48) = *(v40 - 8);
          *(v38 + 16) = v44;
          *(v38 + 32) = v45;
          *v38 = v46;
          *(v40 - 56) = v41;
          *(v40 - 40) = v42;
          *(v40 - 24) = v43;
          *(v40 - 8) = v39;
        }

        ++v35;
        v33 -= 56;
        v36 += 56;
        if (v35 >= v34)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_235:
  __break(1u);
LABEL_236:
  v18 = sub_10113DE48(v18);
LABEL_203:
  v185 = v5;
  v186 = (v18 + 16);
  v187 = *(v18 + 16);
  if (v187 >= 2)
  {
    while (*v218)
    {
      v188 = v18;
      v189 = (v18 + 16 * v187);
      v18 = *v189;
      v190 = &v186[2 * v187];
      v5 = v190[1];
      sub_100F6D354((*v218 + 56 * *v189), (*v218 + 56 * *v190), *v218 + 56 * v5, v234);
      if (v185)
      {
        goto LABEL_210;
      }

      if (v5 < v18)
      {
        goto LABEL_228;
      }

      if (v187 - 2 >= *v186)
      {
        goto LABEL_229;
      }

      *v189 = v18;
      v189[1] = v5;
      v191 = *v186 - v187;
      if (*v186 < v187)
      {
        goto LABEL_230;
      }

      v187 = *v186 - 1;
      memmove(v190, v190 + 2, 16 * v191);
      *v186 = v187;
      v18 = v188;
      if (v187 <= 1)
      {
        goto LABEL_210;
      }
    }

    goto LABEL_240;
  }

LABEL_210:
}

void sub_100F6BA5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v95 = a3;
  v84 = _s5BoardVMa(0);
  __chkstk_darwin(v84);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v78 - v11;
  __chkstk_darwin(v12);
  v86 = &v78 - v13;
  __chkstk_darwin(v14);
  v92 = &v78 - v15;
  v94 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v94);
  v91 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v90 = &v78 - v18;
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v93 = &v78 - v21;
  __chkstk_darwin(v22);
  v24 = &v78 - v23;
  __chkstk_darwin(v25);
  v27 = &v78 - v26;
  __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v33 = &v78 - v32;
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return;
  }

  v36 = a2;
  if (a2 - a1 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_84;
  }

  v37 = v95 - a2;
  if (v95 - a2 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_85;
  }

  v38 = (a2 - a1) / v35;
  v98 = a1;
  v97 = a4;
  v88 = v35;
  if (v38 < v37 / v35)
  {
    v39 = v38 * v35;
    v91 = v24;
    v93 = v30;
    if (a4 < a1 || a1 + v39 <= a4)
    {
      v40 = v36;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a1)
      {
LABEL_17:
        v42 = a4 + v39;
        v96 = a4 + v39;
        if (v39 < 1 || v36 >= v95)
        {
          goto LABEL_82;
        }

        v44 = v86;
        if (a5)
        {
          v45 = v92;
        }

        else
        {
          v45 = v86;
        }

        v85 = v45;
        if ((a5 & 1) == 0)
        {
          v44 = v92;
        }

        v83 = v44;
        v90 = a4 + v39;
        while (1)
        {
          v46 = v33;
          v47 = v36;
          sub_1000652DC(v36, v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v48 = v93;
          sub_1000652DC(a4, v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v49 = v48;
          sub_1000652DC(v46, v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v51 = v27;
          if (EnumCaseMultiPayload != 2)
          {
            goto LABEL_35;
          }

          v52 = v46;
          sub_100065D50(v27, v92, _s5BoardVMa);
          v53 = v48;
          v54 = v91;
          sub_1000652DC(v53, v91, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            break;
          }

          v55 = v86;
          sub_100065D50(v54, v86, _s5BoardVMa);
          LODWORD(v89) = static Date.< infix(_:_:)();
          v56 = v55;
          v57 = v92;
          v35 = v88;
          sub_10000BBC4(v56, _s5BoardVMa);
          sub_10000BBC4(v57, _s5BoardVMa);
          sub_10000BBC4(v49, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v33 = v52;
          sub_10000BBC4(v52, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v42 = v90;
          if ((v89 & 1) == 0)
          {
            goto LABEL_36;
          }

          if (a1 < v47 || a1 >= v47 + v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v36 = v47 + v35;
LABEL_42:
          a1 += v35;
          v98 = a1;
          if (a4 >= v42 || v36 >= v95)
          {
            goto LABEL_82;
          }
        }

        sub_10000BBC4(v92, _s5BoardVMa);
        v51 = v54;
        v42 = v90;
LABEL_35:
        sub_10000BBC4(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000BBC4(v49, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000BBC4(v46, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v33 = v46;
LABEL_36:
        if (a1 < a4 || a1 >= a4 + v35)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v97 = a4 + v35;
        a4 += v35;
        v36 = v47;
        goto LABEL_42;
      }

      v40 = v36;
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = v40;
    goto LABEL_17;
  }

  v41 = v37 / v35 * v35;
  v92 = v31;
  if (a4 < a2 || a2 + v41 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else
  {
    if (a4 == a2)
    {
      goto LABEL_49;
    }

    swift_arrayInitWithTakeBackToFront();
  }

  v36 = a2;
LABEL_49:
  v58 = a4 + v41;
  if (v41 < 1)
  {
    goto LABEL_81;
  }

  v59 = -v88;
  v60 = v82;
  if (a5)
  {
    v61 = v83;
  }

  else
  {
    v61 = v82;
  }

  if ((a5 & 1) == 0)
  {
    v60 = v83;
  }

  v80 = v60;
  v81 = v61;
  v62 = a4 + v41;
  v86 = -v88;
  v87 = a4;
  while (2)
  {
    while (2)
    {
      v79 = v58;
      v63 = v36;
      v64 = v36 + v59;
      v88 = v36;
      v89 = v36 + v59;
      while (1)
      {
        v65 = v95;
        if (v63 <= a1)
        {
          v98 = v63;
          v96 = v79;
          goto LABEL_82;
        }

        v85 = v58;
        v66 = v62 + v59;
        v67 = v62 + v59;
        v68 = v64;
        v69 = v93;
        sub_1000652DC(v67, v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v70 = v92;
        sub_1000652DC(v68, v92, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v71 = v90;
        sub_1000652DC(v69, v90, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v72 = v83;
          sub_100065D50(v71, v83, _s5BoardVMa);
          sub_1000652DC(v70, v91, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v73 = v82;
            sub_100065D50(v91, v82, _s5BoardVMa);
            v74 = static Date.< infix(_:_:)();
            sub_10000BBC4(v73, _s5BoardVMa);
            sub_10000BBC4(v72, _s5BoardVMa);
            goto LABEL_66;
          }

          sub_10000BBC4(v72, _s5BoardVMa);
          v75 = v91;
        }

        else
        {
          v75 = v71;
        }

        sub_10000BBC4(v75, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v74 = 0;
LABEL_66:
        v59 = v86;
        v76 = v87;
        v63 = v88;
        v95 = v65 + v86;
        sub_10000BBC4(v92, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000BBC4(v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (v74)
        {
          break;
        }

        v58 = v66;
        if (v65 < v62 || v95 >= v62)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v65 != v62)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v62 = v66;
        v64 = v89;
        if (v66 <= v76)
        {
          v36 = v63;
          goto LABEL_81;
        }
      }

      if (v65 >= v63 && v95 < v63)
      {
        v36 = v89;
        v58 = v85;
        if (v65 != v63)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = v89;
        }

        if (v62 <= v76)
        {
          goto LABEL_81;
        }

        continue;
      }

      break;
    }

    v77 = v89;
    swift_arrayInitWithTakeFrontToBack();
    v36 = v77;
    v58 = v85;
    if (v62 > v76)
    {
      continue;
    }

    break;
  }

LABEL_81:
  v98 = v36;
  v96 = v58;
LABEL_82:
  sub_10063F7DC(&v98, &v97, &v96);
}

uint64_t sub_100F6C3E8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v153 = type metadata accessor for Calendar.Component();
  v8 = *(v153 - 8);
  __chkstk_darwin(v153);
  v152 = &v132[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v151 = type metadata accessor for Date();
  v164 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v132[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v149 = &v132[-v12];
  v148 = type metadata accessor for Calendar();
  v13 = *(v148 - 8);
  __chkstk_darwin(v148);
  v162 = &v132[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v163 = v14;
  v165 = a1;
  v16 = (a2 - a1) / 56;
  v17 = a3 - a2;
  v18 = v17 / 56;
  if (v16 < v17 / 56)
  {
    v19 = 7 * v16;
    if (a4 != v165 || &v165[v19] <= a4)
    {
      memmove(a4, v165, v19 * 8);
      v14 = v163;
    }

    v20 = &a4[v19];
    if (a2 - a1 < 56 || a2 >= v14)
    {
LABEL_165:
      v126 = v165;
      goto LABEL_167;
    }

    v144 = (v8 + 104);
    v147 = (v8 + 8);
    LODWORD(v146) = enum case for Calendar.Component.day(_:);
    v145 = (v164 + 8);
    v143 = (v13 + 8);
    while (1)
    {
      v22 = *a2;
      v21 = a2[1];
      v24 = a2[2];
      v23 = a2[3];
      v25 = a2[4];
      v26 = a2[5];
      v27 = *(a2 + 48);
      v29 = *a4;
      v28 = a4[1];
      v30 = a4[2];
      v31 = a4[3];
      v32 = *(a4 + 48);
      v33 = v32 >> 6;
      v34 = a4[4];
      v35 = a4[5];
      if (v32 >> 6 <= 1)
      {
        break;
      }

      if (v33 != 2)
      {
        if (v27 < 0x40)
        {
          goto LABEL_80;
        }

        if (!(v30 | v28 | v29 | v31 | v34 | v35) && v32 == 192)
        {
          v58 = 0;
LABEL_52:
          sub_100076F8C(v58, 0, v30, a4[3], v34, v35, 0xC0u);
          v14 = v163;
LABEL_53:
          v63 = a2;
          v50 = v165 == a2;
          a2 += 7;
          if (v50)
          {
            goto LABEL_55;
          }

LABEL_54:
          v64 = *v63;
          v65 = *(v63 + 1);
          v66 = *(v63 + 2);
          v67 = v165;
          v165[6] = v63[6];
          *(v67 + 1) = v65;
          *(v67 + 2) = v66;
          *v67 = v64;
          goto LABEL_55;
        }

        if (v27 > 0xBF)
        {
          v59 = 1;
          goto LABEL_43;
        }

        v61 = 0;
LABEL_48:
        v62 = v30 | v28 | v31 | v34 | v35;
        if (v32 == 192 && v29 == 1 && !v62)
        {
          v58 = 1;
          goto LABEL_52;
        }

        if (!v61)
        {
          goto LABEL_74;
        }

        LOBYTE(v61) = 0;
        v60 = v24 | v21;
LABEL_60:
        v68 = v60 | v23 | v25 | v26;
        if (v27 != 192 || v22 != 1 || v68)
        {
          if (v22 == 2 && v68 == 0 && v27 == 192)
          {
            LOBYTE(v61) = 1;
          }

          if (v61)
          {
            goto LABEL_53;
          }

          v62 = v30 | v28 | v31 | v34 | v35;
LABEL_74:
          if (v32 != 192 || v29 != 2 || v62)
          {
            goto LABEL_53;
          }

          sub_100076F8C(2, 0, v30, a4[3], v34, v35, 0xC0u);
LABEL_79:
          v14 = v163;
          goto LABEL_80;
        }

        goto LABEL_80;
      }

      if ((v27 & 0xC0) != 0x80)
      {
        goto LABEL_38;
      }

      if (v32)
      {
        goto LABEL_53;
      }

      if ((v27 & 1) == 0)
      {
        v164 = a4[4];
        v141 = v30;
        v142 = v35;
        v140 = v31;
        if (v28)
        {
          v46 = v29;
        }

        else
        {
          v46 = 0;
        }

        v47 = 0xE000000000000000;
        if (v28)
        {
          v48 = v28;
        }

        else
        {
          v48 = 0xE000000000000000;
        }

        if (v21)
        {
          v49 = v22;
        }

        else
        {
          v49 = 0;
        }

        if (v21)
        {
          v47 = v21;
        }

        v50 = v46 == v49 && v48 == v47;
        v51 = v28;
        v160 = v25;
        v161 = v23;
        v158 = v26;
        v159 = v24;
        v157 = v22;
        v139 = v48;
        v138 = v47;
        if (v50)
        {
          v71 = v22;
          v72 = v21;
          sub_100076F8C(v71, v21, v24, v23, v25, v26, v27);
          v73 = v140;
          sub_100076F8C(v29, v51, v141, v140, v164, v142, v32);

          sub_1000771BC(v29, v51, v141, v73, v164, v142, v32);
          sub_1000771BC(v157, v72, v159, v161, v160, v158, v27);
          goto LABEL_79;
        }

        v155 = v21;
        v156 = v28;
        v154 = v29;
        v52 = v25;
        v53 = v24;
        LODWORD(v137) = _stringCompareWithSmolCheck(_:_:expecting:)();
        v54 = v22;
        v55 = v155;
        sub_100076F8C(v54, v155, v53, v161, v52, v26, v27);
        v56 = v154;
        v57 = v140;
        sub_100076F8C(v154, v156, v141, v140, v164, v142, v32);

        sub_1000771BC(v56, v156, v141, v57, v164, v142, v32);
        sub_1000771BC(v157, v55, v159, v161, v160, v158, v27);
        v14 = v163;
        if (v137)
        {
          goto LABEL_53;
        }
      }

LABEL_80:
      v63 = a4;
      v50 = v165 == a4;
      a4 += 7;
      if (!v50)
      {
        goto LABEL_54;
      }

LABEL_55:
      v165 += 7;
      if (a4 >= v20 || a2 >= v14)
      {
        goto LABEL_165;
      }
    }

    if (!v33)
    {
      goto LABEL_53;
    }

    if ((v27 & 0xC0) == 0x40)
    {
      v36 = *a2;
      v156 = a4[1];
      v157 = v22;
      v154 = v29;
      v155 = v21;
      v37 = v30;
      v160 = v25;
      v161 = v23;
      v164 = v34;
      v158 = v26;
      v159 = v24;
      v38 = v35;
      sub_100076F8C(v36, v21, v24, v23, v25, v26, v27);
      sub_100076F8C(v154, v156, v37, v31, v164, v38, v32);
      v39 = v162;
      static Calendar.current.getter();
      v40 = v149;
      Date.init(timeIntervalSinceReferenceDate:)();
      v41 = v150;
      Date.init(timeIntervalSinceReferenceDate:)();
      v43 = v152;
      v42 = v153;
      (*v144)(v152, v146, v153);
      v164 = Calendar.compare(_:to:toGranularity:)();
      (*v147)(v43, v42);
      LODWORD(v156) = v27;
      v44 = *v145;
      v45 = v151;
      (*v145)(v41, v151);
      v44(v40, v45);
      (*v143)(v39, v148);
      sub_1000771BC(v157, v155, v159, v161, v160, v158, v156);
      v14 = v163;
      if (v164 == -1)
      {
        goto LABEL_53;
      }

      goto LABEL_80;
    }

LABEL_38:
    if (v27 < 0x40)
    {
      goto LABEL_80;
    }

    if (v27 < 0xC0)
    {
      goto LABEL_53;
    }

    v59 = 0;
LABEL_43:
    v60 = v24 | v21;
    if (!(v24 | v21 | v22 | v23 | v25 | v26) && v27 == 192)
    {
      goto LABEL_80;
    }

    v61 = 1;
    if (v59)
    {
      goto LABEL_48;
    }

    goto LABEL_60;
  }

  v74 = 7 * v18;
  if (a4 != a2 || &a2[v74] <= a4)
  {
    memmove(a4, a2, 56 * v18);
    v14 = v163;
  }

  v20 = &a4[v74];
  if (v17 < 56 || a2 <= v165)
  {
LABEL_166:
    v126 = a2;
    goto LABEL_167;
  }

  v141 = (v8 + 104);
  v140 = (v8 + 8);
  LODWORD(v139) = enum case for Calendar.Component.day(_:);
  v138 = (v164 + 8);
  v137 = (v13 + 8);
  v142 = a4;
  do
  {
    v75 = 0;
    v164 = v20;
    v134 = a2 - 7;
    v163 = v14;
    while (1)
    {
      v76 = v164 + v75;
      v78 = v164 + v75 - 56;
      v77 = *v78;
      v80 = *(v164 + v75 - 48);
      v79 = *(v164 + v75 - 40);
      v82 = *(v164 + v75 - 32);
      v81 = *(v164 + v75 - 24);
      v83 = *(v164 + v75 - 16);
      v84 = *(v164 + v75 - 8);
      v86 = *(a2 - 7);
      v85 = *(a2 - 6);
      v87 = *(a2 - 5);
      v88 = *(a2 - 4);
      v89 = *(a2 - 8);
      v90 = v89 >> 6;
      v91 = *(a2 - 3);
      v92 = *(a2 - 2);
      if (v89 >> 6 <= 1)
      {
        break;
      }

      if (v90 == 2)
      {
        if ((v84 & 0xC0) != 0x80)
        {
          goto LABEL_122;
        }

        if (v89)
        {
          goto LABEL_160;
        }

        if ((v84 & 1) == 0)
        {
          LODWORD(v161) = *(a2 - 8);
          v160 = v91;
          v143 = v87;
          v145 = v92;
          v144 = v88;
          if (v85)
          {
            v93 = v86;
          }

          else
          {
            v93 = 0;
          }

          v94 = 0xE000000000000000;
          if (v85)
          {
            v95 = v85;
          }

          else
          {
            v95 = 0xE000000000000000;
          }

          if (v80)
          {
            v96 = v77;
          }

          else
          {
            v96 = 0;
          }

          if (v80)
          {
            v94 = v80;
          }

          v97 = v93 == v96 && v95 == v94;
          v98 = v85;
          v157 = v83;
          v158 = v82;
          v159 = v81;
          v155 = v77;
          v156 = v79;
          v136 = v95;
          v135 = v94;
          if (v97)
          {
            sub_100076F8C(v77, v80, v79, v82, v81, v83, v84);
            sub_100076F8C(v86, v98, v143, v144, v160, v145, v161);

            sub_1000771BC(v86, v98, v143, v144, v160, v145, v161);
            sub_1000771BC(v155, v80, v156, v158, v159, v157, v84);
LABEL_154:
            v14 = v163;
            goto LABEL_155;
          }

          v146 = v86;
          v147 = v80;
          v99 = v77;
          v154 = v85;
          v100 = v83;
          v101 = v79;
          v133 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v102 = v99;
          v103 = v147;
          sub_100076F8C(v102, v147, v101, v158, v159, v100, v84);
          v104 = v146;
          sub_100076F8C(v146, v154, v143, v144, v160, v145, v161);

          sub_1000771BC(v104, v154, v143, v144, v160, v145, v161);
          sub_1000771BC(v155, v103, v156, v158, v159, v157, v84);
          v14 = v163;
          if (v133)
          {
            goto LABEL_160;
          }
        }
      }

      else if (v84 >= 0x40)
      {
        if (!(v87 | v85 | v86 | v88 | v91 | v92) && v89 == 192)
        {
          v124 = 0;
          goto LABEL_159;
        }

        if (v84 > 0xBF)
        {
          v113 = 1;
          goto LABEL_125;
        }

        v115 = 0;
        goto LABEL_130;
      }

LABEL_155:
      if (v14 + v75 != v76)
      {
        v120 = v14 + v75 - 56;
        v121 = *v78;
        v122 = *(v78 + 16);
        v123 = *(v78 + 32);
        *(v120 + 48) = *(v78 + 48);
        *(v120 + 16) = v122;
        *(v120 + 32) = v123;
        *v120 = v121;
      }

      v75 -= 56;
      v20 = (v164 + v75);
      if (v164 + v75 <= a4)
      {
        goto LABEL_166;
      }
    }

    if (v90 != 1)
    {
      goto LABEL_160;
    }

    if ((v84 & 0xC0) == 0x40)
    {
      v146 = *(a2 - 7);
      v147 = v80;
      v154 = v85;
      v155 = v77;
      v105 = v87;
      v158 = v82;
      v159 = v81;
      v160 = v91;
      v156 = v79;
      v157 = v83;
      LODWORD(v161) = v89;
      sub_100076F8C(v77, v80, v79, v82, v81, v83, v84);
      sub_100076F8C(v146, v154, v105, v88, v160, v92, v161);
      static Calendar.current.getter();
      LODWORD(v161) = v84;
      v106 = v149;
      Date.init(timeIntervalSinceReferenceDate:)();
      v107 = v150;
      Date.init(timeIntervalSinceReferenceDate:)();
      v108 = v152;
      v109 = v153;
      (*v141)(v152, v139, v153);
      v160 = Calendar.compare(_:to:toGranularity:)();
      (*v140)(v108, v109);
      v110 = *v138;
      v111 = v107;
      a4 = v142;
      v112 = v151;
      (*v138)(v111, v151);
      v110(v106, v112);
      (*v137)(v162, v148);
      sub_1000771BC(v155, v147, v156, v158, v159, v157, v161);
      v14 = v163;
      if (v160 == -1)
      {
        goto LABEL_160;
      }

      goto LABEL_155;
    }

LABEL_122:
    if (v84 < 0x40)
    {
      goto LABEL_155;
    }

    if (v84 < 0xC0)
    {
      goto LABEL_160;
    }

    v113 = 0;
LABEL_125:
    v114 = v79 | v80;
    if (!(v79 | v80 | v77 | v82 | v81 | v83) && v84 == 192)
    {
      goto LABEL_155;
    }

    v115 = 1;
    if (!v113)
    {
LABEL_135:
      v117 = v114 | v82 | v81 | v83;
      if (v84 == 192 && v77 == 1 && !v117)
      {
        goto LABEL_155;
      }

      if (v77 == 2 && v117 == 0 && v84 == 192)
      {
        LOBYTE(v115) = 1;
      }

      if (v115)
      {
        goto LABEL_160;
      }

      v116 = v87 | v85 | v88 | v91 | v92;
      goto LABEL_149;
    }

LABEL_130:
    v116 = v87 | v85 | v88 | v91 | v92;
    if (v89 != 192 || v86 != 1 || v116)
    {
      if (v115)
      {
        LOBYTE(v115) = 0;
        v114 = v79 | v80;
        goto LABEL_135;
      }

LABEL_149:
      if (v89 != 192 || v86 != 2 || v116)
      {
        goto LABEL_160;
      }

      sub_100076F8C(2, 0, v87, *(a2 - 4), v91, *(a2 - 2), 0xC0u);
      goto LABEL_154;
    }

    v124 = 1;
LABEL_159:
    sub_100076F8C(v124, 0, v87, *(a2 - 4), v91, *(a2 - 2), 0xC0u);
    v14 = v163;
LABEL_160:
    v125 = (v14 + v75);
    v14 = v14 + v75 - 56;
    v126 = v134;
    if (v125 != a2)
    {
      v127 = *v134;
      v128 = *(v134 + 1);
      v129 = *(v134 + 2);
      *(v14 + 48) = v134[6];
      *(v14 + 16) = v128;
      *(v14 + 32) = v129;
      *v14 = v127;
    }

    v20 = (v164 + v75);
    if (v164 + v75 <= a4)
    {
      break;
    }

    a2 = v126;
  }

  while (v126 > v165);
  v20 = (v164 + v75);
LABEL_167:
  v130 = 7 * ((v20 - a4) / 56);
  if (v126 != a4 || v126 >= &a4[v130])
  {
    memmove(v126, a4, v130 * 8);
  }

  return 1;
}

uint64_t sub_100F6D354(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v142 = type metadata accessor for Calendar.Component();
  v7 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Date();
  v9 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = &v124 - v12;
  v137 = type metadata accessor for Calendar();
  v13 = *(v137 - 8);
  __chkstk_darwin(v137);
  v153 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v14;
  v156 = a1;
  v16 = (a2 - a1) / 56;
  v17 = v14 - a2;
  v18 = (v14 - a2) / 56;
  if (v16 < v18)
  {
    v19 = 7 * v16;
    if (a4 != v156 || &v156[v19] <= a4)
    {
      memmove(a4, v156, v19 * 8);
      v14 = v154;
    }

    v20 = &a4[v19];
    if (a2 - a1 < 56 || a2 >= v14)
    {
LABEL_145:
      v118 = v156;
      goto LABEL_147;
    }

    v144 = (v7 + 104);
    LODWORD(v143) = enum case for Calendar.Component.day(_:);
    v136 = (v7 + 8);
    v134 = (v9 + 8);
    v133 = (v13 + 8);
    while (1)
    {
      v22 = *a2;
      v21 = a2[1];
      v24 = a2[2];
      v23 = a2[3];
      v25 = a2[4];
      v26 = a2[5];
      v27 = *(a2 + 48);
      v29 = *a4;
      v28 = a4[1];
      v31 = a4[2];
      v30 = a4[3];
      v33 = a4[4];
      v32 = a4[5];
      v34 = v27 >> 6;
      v35 = *(a4 + 48);
      if (v27 >> 6 > 1)
      {
        if (v34 != 2)
        {
          if (v35 < 0x40)
          {
            goto LABEL_60;
          }

          v63 = 1;
          if (!(v24 | v21 | v22 | v23 | v25 | v26) && v27 == 192)
          {
            goto LABEL_10;
          }

          if (v35 >= 0xC0)
          {
            goto LABEL_46;
          }

          goto LABEL_49;
        }

        if ((v35 & 0xC0) == 0x80)
        {
          if (v27)
          {
            goto LABEL_10;
          }

          if ((v35 & 1) == 0)
          {
            v131 = a4[2];
            v132 = v30;
            v135 = v33;
            v150 = v25;
            v151 = v32;
            if (v21)
            {
              v41 = v22;
            }

            else
            {
              v41 = 0;
            }

            v42 = 0xE000000000000000;
            if (v21)
            {
              v43 = v21;
            }

            else
            {
              v43 = 0xE000000000000000;
            }

            if (v28)
            {
              v44 = v29;
            }

            else
            {
              v44 = 0;
            }

            if (v28)
            {
              v42 = v28;
            }

            v45 = v41 == v44 && v43 == v42;
            v155 = v23;
            LODWORD(v152) = v27;
            v147 = v22;
            v148 = v24;
            v146 = v26;
            v130 = v43;
            v129 = v42;
            v128 = v29;
            if (v45)
            {
              v66 = v21;
              sub_100076F8C(v22, v21, v24, v23, v25, v26, v27);
              v67 = v29;
              v68 = v131;
              v69 = v132;
              v70 = v151;
              sub_100076F8C(v67, v28, v131, v132, v135, v151, v35);

              sub_1000771BC(v128, v28, v68, v69, v135, v70, v35);
              sub_1000771BC(v147, v66, v148, v155, v150, v146, v152);
              goto LABEL_59;
            }

            v149 = v21;
            v145 = v28;
            v46 = v25;
            v47 = v24;
            v48 = v22;
            LODWORD(v127) = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100076F8C(v48, v149, v47, v155, v46, v26, v152);
            v49 = v29;
            v50 = v145;
            v51 = v131;
            v52 = v132;
            v53 = v135;
            v54 = v151;
            sub_100076F8C(v49, v145, v131, v132, v135, v151, v35);

            sub_1000771BC(v128, v50, v51, v52, v53, v54, v35);
            sub_1000771BC(v147, v149, v148, v155, v150, v146, v152);
            v14 = v154;
            if (v127)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_60;
        }
      }

      else
      {
        if (!v34)
        {
          goto LABEL_10;
        }

        if ((v35 & 0xC0) == 0x40)
        {
          v55 = *a2;
          v149 = a2[1];
          v150 = v25;
          v145 = v28;
          v146 = v26;
          v155 = v23;
          v151 = v32;
          LODWORD(v152) = v27;
          v147 = v22;
          v148 = v24;
          sub_100076F8C(v55, v149, v24, v23, v25, v26, v27);
          sub_100076F8C(v29, v145, v31, v30, v33, v151, v35);
          v56 = v153;
          static Calendar.current.getter();
          v57 = v138;
          Date.init(timeIntervalSinceReferenceDate:)();
          v58 = v139;
          Date.init(timeIntervalSinceReferenceDate:)();
          v60 = v141;
          v59 = v142;
          (*v144)(v141, v143, v142);
          v151 = Calendar.compare(_:to:toGranularity:)();
          (*v136)(v60, v59);
          v61 = *v134;
          v62 = v140;
          (*v134)(v58, v140);
          v61(v57, v62);
          (*v133)(v56, v137);
          sub_1000771BC(v147, v149, v148, v155, v150, v146, v152);
          v14 = v154;
          if (v151 == -1)
          {
            goto LABEL_10;
          }

          goto LABEL_60;
        }
      }

      if (v35 < 0x40)
      {
        goto LABEL_60;
      }

      v63 = 0;
      if (v35 >= 0xC0)
      {
LABEL_46:
        if (!(v31 | v28 | v29 | v30 | v33 | v32) && v35 == 192)
        {
          v64 = 0;
LABEL_58:
          sub_100076F8C(v64, 0, a4[2], a4[3], a4[4], v32, 0xC0u);
LABEL_59:
          v14 = v154;
          goto LABEL_60;
        }
      }

LABEL_49:
      if (v63 && v27 == 192 && v22 == 1 && !(v24 | v21 | v23 | v25 | v26))
      {
        goto LABEL_10;
      }

      if (v35 >= 0xC0)
      {
        v65 = v31 | v28 | v30 | v33 | v32;
        if (v35 == 192 && v29 == 1 && !v65)
        {
          v64 = 1;
          goto LABEL_58;
        }

        if (v35 == 192 && v29 == 2 && !v65)
        {
          sub_100076F8C(2, 0, a4[2], a4[3], a4[4], v32, 0xC0u);
          v14 = v154;
LABEL_10:
          v36 = a2;
          v45 = v156 == a2;
          a2 += 7;
          if (v45)
          {
            goto LABEL_12;
          }

LABEL_11:
          v37 = *v36;
          v38 = *(v36 + 1);
          v39 = *(v36 + 2);
          v40 = v156;
          v156[6] = v36[6];
          *(v40 + 1) = v38;
          *(v40 + 2) = v39;
          *v40 = v37;
          goto LABEL_12;
        }
      }

      if (!v63 || v27 != 192 || v22 != 2 || v24 | v21 | v23 | v25 | v26)
      {
        goto LABEL_10;
      }

LABEL_60:
      v36 = a4;
      v45 = v156 == a4;
      a4 += 7;
      if (!v45)
      {
        goto LABEL_11;
      }

LABEL_12:
      v156 += 7;
      if (a4 >= v20 || a2 >= v14)
      {
        goto LABEL_145;
      }
    }
  }

  v71 = 7 * v18;
  if (a4 != a2 || &a2[v71] <= a4)
  {
    memmove(a4, a2, 56 * v18);
    v14 = v154;
  }

  v20 = &a4[v71];
  if (v17 < 56 || a2 <= v156)
  {
LABEL_146:
    v118 = a2;
    goto LABEL_147;
  }

  v134 = (v7 + 104);
  LODWORD(v133) = enum case for Calendar.Component.day(_:);
  v132 = (v7 + 8);
  v131 = (v9 + 8);
  v130 = (v13 + 8);
  v135 = a4;
  do
  {
    v72 = 0;
    v155 = v20;
    v126 = a2 - 7;
    v154 = v14;
    while (1)
    {
      v73 = v155 + v72;
      v75 = v155 + v72 - 56;
      v74 = *v75;
      v77 = *(v155 + v72 - 48);
      v76 = *(v155 + v72 - 40);
      v79 = *(v155 + v72 - 32);
      v78 = *(v155 + v72 - 24);
      v80 = *(v155 + v72 - 16);
      v81 = *(v155 + v72 - 8);
      v82 = *(a2 - 7);
      v83 = *(a2 - 6);
      v84 = *(a2 - 5);
      v85 = *(a2 - 4);
      v87 = *(a2 - 3);
      v86 = *(a2 - 2);
      v88 = *(a2 - 8);
      v89 = v81 >> 6;
      if (v81 >> 6 <= 1)
      {
        break;
      }

      if (v89 != 2)
      {
        if (v88 < 0x40)
        {
          goto LABEL_137;
        }

        v108 = 1;
        if (!(v76 | v77 | v74 | v79 | v78 | v80) && v81 == 192)
        {
          goto LABEL_140;
        }

        if (v88 < 0xC0)
        {
          goto LABEL_117;
        }

LABEL_114:
        if (!(v84 | v83 | v82 | v85 | v87 | v86) && v88 == 192)
        {
          v109 = 0;
LABEL_126:
          sub_100076F8C(v109, 0, v84, v85, *(a2 - 3), v86, 0xC0u);
LABEL_136:
          v14 = v154;
          goto LABEL_137;
        }

        goto LABEL_117;
      }

      if ((v88 & 0xC0) != 0x80)
      {
        goto LABEL_112;
      }

      if (v81)
      {
        goto LABEL_140;
      }

      if ((v88 & 1) == 0)
      {
        v151 = *(a2 - 5);
        v152 = v85;
        v129 = v87;
        v150 = v86;
        if (v77)
        {
          v90 = v74;
        }

        else
        {
          v90 = 0;
        }

        v91 = 0xE000000000000000;
        if (v77)
        {
          v92 = v77;
        }

        else
        {
          v92 = 0xE000000000000000;
        }

        if (v83)
        {
          v93 = v82;
        }

        else
        {
          v93 = 0;
        }

        if (v83)
        {
          v91 = v83;
        }

        v94 = v90 == v93 && v92 == v91;
        v136 = v82;
        v95 = v83;
        v146 = v80;
        v148 = v79;
        v149 = v78;
        LODWORD(v147) = v81;
        v143 = v74;
        v144 = v76;
        v128 = v92;
        v127 = v91;
        if (v94)
        {
          v111 = v77;
          sub_100076F8C(v74, v77, v76, v79, v78, v80, v81);
          v112 = v129;
          sub_100076F8C(v136, v95, v151, v152, v129, v150, v88);

          sub_1000771BC(v136, v95, v151, v152, v112, v150, v88);
          sub_1000771BC(v143, v111, v144, v148, v149, v146, v147);
          goto LABEL_136;
        }

        v145 = v77;
        v124 = v83;
        v96 = v80;
        v97 = v76;
        v125 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100076F8C(v74, v145, v97, v148, v149, v96, v147);
        v98 = v124;
        v99 = v129;
        v100 = v150;
        sub_100076F8C(v136, v124, v151, v152, v129, v150, v88);

        sub_1000771BC(v136, v98, v151, v152, v99, v100, v88);
        sub_1000771BC(v143, v145, v144, v148, v149, v146, v147);
        v14 = v154;
        if (v125)
        {
          goto LABEL_140;
        }
      }

LABEL_137:
      if (v14 + v72 != v73)
      {
        v113 = v14 + v72 - 56;
        v114 = *v75;
        v115 = *(v75 + 16);
        v116 = *(v75 + 32);
        *(v113 + 48) = *(v75 + 48);
        *(v113 + 16) = v115;
        *(v113 + 32) = v116;
        *v113 = v114;
      }

      v72 -= 56;
      v20 = (v155 + v72);
      if (v155 + v72 <= a4)
      {
        goto LABEL_146;
      }
    }

    if (v89 != 1)
    {
      goto LABEL_140;
    }

    if ((v88 & 0xC0) == 0x40)
    {
      v145 = *(v155 + v72 - 48);
      v146 = v80;
      v151 = v84;
      v152 = v85;
      v148 = v79;
      v149 = v78;
      v150 = v86;
      LODWORD(v147) = v81;
      v143 = v74;
      v144 = v76;
      sub_100076F8C(v74, v77, v76, v79, v78, v80, v81);
      sub_100076F8C(v82, v83, v151, v152, v87, v150, v88);
      static Calendar.current.getter();
      v101 = v138;
      Date.init(timeIntervalSinceReferenceDate:)();
      v102 = v139;
      Date.init(timeIntervalSinceReferenceDate:)();
      v103 = v141;
      v104 = v142;
      (*v134)(v141, v133, v142);
      v152 = Calendar.compare(_:to:toGranularity:)();
      (*v132)(v103, v104);
      v105 = *v131;
      v106 = v140;
      (*v131)(v102, v140);
      v107 = v101;
      a4 = v135;
      v105(v107, v106);
      (*v130)(v153, v137);
      sub_1000771BC(v143, v145, v144, v148, v149, v146, v147);
      v14 = v154;
      if (v152 == -1)
      {
        goto LABEL_140;
      }

      goto LABEL_137;
    }

LABEL_112:
    if (v88 < 0x40)
    {
      goto LABEL_137;
    }

    v108 = 0;
    if (v88 >= 0xC0)
    {
      goto LABEL_114;
    }

LABEL_117:
    if (v108 && v81 == 192 && v74 == 1 && !(v76 | v77 | v79 | v78 | v80))
    {
      goto LABEL_140;
    }

    if (v88 < 0xC0)
    {
      goto LABEL_153;
    }

    v110 = v84 | v83 | v85 | v87 | v86;
    if (v88 == 192 && v82 == 1 && !v110)
    {
      v109 = 1;
      goto LABEL_126;
    }

    if (v88 != 192 || v82 != 2 || v110)
    {
LABEL_153:
      if (!v108 || v81 != 192 || v74 != 2 || v76 | v77 | v79 | v78 | v80)
      {
        goto LABEL_140;
      }

      goto LABEL_137;
    }

    sub_100076F8C(2, 0, v84, v85, *(a2 - 3), v86, 0xC0u);
    v14 = v154;
LABEL_140:
    v117 = (v14 + v72);
    v14 = v14 + v72 - 56;
    v118 = v126;
    if (v117 != a2)
    {
      v119 = *v126;
      v120 = *(v126 + 1);
      v121 = *(v126 + 2);
      *(v14 + 48) = v126[6];
      *(v14 + 16) = v120;
      *(v14 + 32) = v121;
      *v14 = v119;
    }

    v20 = (v155 + v72);
    if (v155 + v72 <= a4)
    {
      break;
    }

    a2 = v118;
  }

  while (v118 > v156);
  v20 = (v155 + v72);
LABEL_147:
  v122 = 7 * ((v20 - a4) / 56);
  if (v118 != a4 || v118 >= &a4[v122])
  {
    memmove(v118, a4, v122 * 8);
  }

  return 1;
}

void sub_100F6E298(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v350 = a7;
  v319 = a6;
  v334 = a5;
  v346 = a4;
  v332 = a2;
  v9 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  __chkstk_darwin(v9 - 8);
  v339 = &v312 - v10;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v313 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v314 = v12;
  v315 = &v312 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v333 = &v312 - v14;
  v15 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v15 - 8);
  v340 = &v312 - v16;
  v318 = _s5BoardVMa(0);
  __chkstk_darwin(v318);
  v344 = &v312 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v323 = *(v18 - 8);
  v324 = v18;
  __chkstk_darwin(v18);
  v322 = &v312 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v20 - 8);
  v326 = &v312 - v21;
  v325 = _s4NodeVMa(0);
  v327 = *(v325 - 8);
  __chkstk_darwin(v325);
  v316 = &v312 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v321 = &v312 - v24;
  v25 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v25 - 8);
  v312 = &v312 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v317 = &v312 - v28;
  __chkstk_darwin(v29);
  v336 = &v312 - v30;
  v31 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v354 = *(v31 - 8);
  __chkstk_darwin(v31);
  v328 = &v312 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v352 = &v312 - v34;
  __chkstk_darwin(v35);
  v349 = &v312 - v36;
  __chkstk_darwin(v37);
  v351 = &v312 - v38;
  __chkstk_darwin(v39);
  v345 = &v312 - v40;
  v342 = v41;
  __chkstk_darwin(v42);
  v341 = &v312 - v43;
  v44 = sub_1005B981C(&qword_101A23CF0, &qword_10146F348);
  __chkstk_darwin(v44 - 8);
  v329 = &v312 - v45;
  v46 = type metadata accessor for UIBackgroundConfiguration();
  v330 = *(v46 - 8);
  v331 = v46;
  __chkstk_darwin(v46);
  v343 = &v312 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AppEntityVisualState();
  v337 = *(v48 - 1);
  v338 = v48;
  __chkstk_darwin(v48);
  v50 = &v312 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v51 - 8);
  v53 = &v312 - v52;
  v54 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_item;
  swift_beginAccess();
  sub_10000BE14(&a1[v54], v53, &unk_101A15B20, &qword_10146F1E0);
  v347 = sub_100F73970(a1, v53, a3, &OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
  sub_10000CAAC(v53, &unk_101A15B20, &qword_10146F1E0);
  v55 = sub_100F88220();
  sub_100EE1DF0(v55, v56);
  v348 = a3;
  sub_1000652DC(a3, v53, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v57 = v354[7];
  v353 = v31;
  v57(v53, 0, 1, v31);
  swift_beginAccess();
  sub_10002C638(v53, &a1[v54], &unk_101A15B20, &qword_10146F1E0);
  swift_endAccess();
  *&a1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxDelegate + 8] = &off_1018A9040;
  v58 = v350;
  swift_unknownObjectWeakAssign();
  v59 = [v58 collectionView];
  if (!v59)
  {
    __break(1u);
    goto LABEL_145;
  }

  v60 = v59;
  v61 = [v59 isEditing];

  v62 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController;
  v63 = *&a1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController];
  if (!v63)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  v64 = *((swift_isaMask & *v63) + 0x168);
  v65 = v63;
  v64(v61);

  [a1 isSelected];
  [a1 isHighlighted];
  v335 = v62;
  v66 = *&a1[v62];
  if (!v66)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  (*((swift_isaMask & *v66) + 0x160))();
  AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
  v67 = a1;
  UIView.updateAppEntityAnnotation(with:)();
  (*(v337 + 8))(v50, v338);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v68 = a1;
  }

  else
  {
    v68 = 0;
  }

  v70 = v343;
  v69 = v344;
  v71 = v339;
  if (v68)
  {
    v72 = v67;
    v73 = v67;
    v74 = [v350 collectionView];
    if (!v74)
    {
      goto LABEL_152;
    }

    v75 = v74;
    v76 = [v74 indexPathsForSelectedItems];

    if (v76)
    {
      type metadata accessor for IndexPath();
      v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v78 = v73;
      [v68 setSelected:{sub_1012CD684(v332, v77)}];

      v79 = v78;
      UICollectionViewCell.defaultBackgroundConfiguration()();

      UIBackgroundConfiguration.cornerRadius.setter();
      v80 = [v350 collectionView];
      if (!v80)
      {
        goto LABEL_153;
      }

      v81 = v80;

      v82 = [v81 backgroundColor];

      UIBackgroundConfiguration.backgroundColor.setter();
      v83 = v329;
      v84 = v330;
      v85 = v331;
      (*(v330 + 16))(v329, v70, v331);
      (*(v84 + 56))(v83, 0, 1, v85);
      v86 = v79;
      UICollectionViewCell.backgroundConfiguration.setter();

      (*(v84 + 8))(v70, v85);
    }

    else
    {
    }

    v67 = v72;
  }

  v87 = swift_allocObject();
  *(v87 + 24) = &off_1018A7C78;
  swift_unknownObjectWeakInit();
  v88 = v348;
  v89 = v341;
  sub_1000652DC(v348, v341, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v90 = (*(v354 + 80) + 24) & ~*(v354 + 80);
  v337 = *(v354 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = v87;
  v343 = v91;
  sub_100065D50(v89, v91 + v90, type metadata accessor for CRLBoardLibraryViewModel.Item);
  [objc_opt_self() crl_screenScale];
  v93 = v92;
  v94 = v345;
  sub_1000652DC(v88, v345, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v338 = v68;
  if (!EnumCaseMultiPayload)
  {
    v320 = v67;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v106 = sub_100F8903C();
    v108 = v107;
    *(inited + 56) = &type metadata for String;
    v109 = sub_1000053B0();
    *(inited + 32) = v106;
    v353 = v109;
    v354 = (inited + 32);
    *(inited + 64) = v109;
    *(inited + 40) = v108;
    v351 = objc_opt_self();
    LODWORD(v67) = [v351 _atomicIncrementAssertCount];
    v355[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v355, "Unhandled item: %@", 18, 2u);
    StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
    v352 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
    v110 = String._bridgeToObjectiveC()();

    v111 = [v110 lastPathComponent];

    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_143;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_45:
    sub_100065D50(v94, v69, _s5BoardVMa);
    type metadata accessor for CRLBoardLibrary();
    v140 = swift_dynamicCastClass();
    if (!v140)
    {
      v354 = objc_opt_self();
      v165 = [v354 _atomicIncrementAssertCount];
      v355[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v355, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
      v166 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
      v167 = String._bridgeToObjectiveC()();

      v168 = [v167 lastPathComponent];

      v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v171 = v170;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v172 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v173 = swift_initStackObject();
      *(v173 + 16) = xmmword_10146CA70;
      *(v173 + 56) = &type metadata for Int32;
      *(v173 + 64) = &protocol witness table for Int32;
      *(v173 + 32) = v165;
      v174 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v173 + 96) = v174;
      v175 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v173 + 104) = v175;
      *(v173 + 72) = v166;
      *(v173 + 136) = &type metadata for String;
      v176 = sub_1000053B0();
      *(v173 + 112) = v169;
      *(v173 + 120) = v171;
      *(v173 + 176) = &type metadata for UInt;
      *(v173 + 184) = &protocol witness table for UInt;
      *(v173 + 144) = v176;
      *(v173 + 152) = 297;
      v177 = v355[0];
      *(v173 + 216) = v174;
      *(v173 + 224) = v175;
      *(v173 + 192) = v177;
      v178 = v166;
      v179 = v177;
      v180 = static os_log_type_t.error.getter();
      sub_100005404(v172, &_mh_execute_header, v180, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v173);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v181 = static os_log_type_t.error.getter();
      sub_100005404(v172, &_mh_execute_header, v181, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v182 = swift_allocObject();
      v182[2] = 8;
      v182[3] = 0;
      v182[4] = 0;
      v182[5] = 0;
      v183 = __VaListBuilder.va_list()();
      StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
      v184 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
      v185 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v186 = String._bridgeToObjectiveC()();

      [v354 handleFailureInFunction:v184 file:v185 lineNumber:297 isFatal:0 format:v186 args:v183];

      sub_10000BBC4(v344, _s5BoardVMa);

LABEL_135:
      return;
    }

    v141 = v140;
    v112 = v333;
    sub_1000652DC(v69, v333, type metadata accessor for CRLBoardIdentifier);
    v142 = v318;
    v143 = *(v318 + 32);
    swift_unknownObjectRetain();
    v348 = sub_101303CCC(v69 + v143);
    v345 = v144;
    v341 = v146;
    v342 = v145;
    sub_10000BE14(v69 + v142[20], v71, &qword_1019F33D0, &unk_101468A70);
    v147 = _s5BoardV13ShareMetadataVMa(0);
    if ((*(*(v147 - 8) + 48))(v71, 1, v147) == 1)
    {
      v148 = sub_10000CAAC(v71, &qword_1019F33D0, &unk_101468A70);
      v336 = 0;
      v337 = 0;
    }

    else
    {
      v244 = (v71 + *(v147 + 24));
      v245 = *v244;
      v336 = v244[1];
      v337 = v245;

      v148 = sub_10000BBC4(v71, _s5BoardV13ShareMetadataVMa);
    }

    v246 = v142[15];
    LODWORD(v349) = *(v69 + v142[14]);
    if (*(v69 + v246) != 1)
    {
      v249 = v312;
      sub_1000652DC(v350 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v312, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v250 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
      v251 = (*(*(v250 - 8) + 48))(v249, 5, v250);
      sub_10000BBC4(v249, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v320 = v67;
      LODWORD(v351) = v251 != 5;
      if (v251 == 5)
      {
        LODWORD(v353) = 0;
      }

      else
      {
        if (*(v69 + v142[10]))
        {
          v252 = 2;
        }

        else
        {
          v252 = 0;
        }

        LODWORD(v353) = v252;
      }

      v269 = type metadata accessor for TaskPriority();
      (*(*(v269 - 8) + 56))(v340, 1, 1, v269);
      v270 = v315;
      sub_1000652DC(v333, v315, type metadata accessor for CRLBoardIdentifier);
      type metadata accessor for MainActor();
      v271 = v347;
      v272 = v319;
      v273 = v343;

      v274 = static MainActor.shared.getter();
      v275 = (*(v313 + 80) + 32) & ~*(v313 + 80);
      v276 = (v314 + v275 + 7) & 0xFFFFFFFFFFFFFFF8;
      v277 = (v276 + 15) & 0xFFFFFFFFFFFFFFF8;
      v278 = swift_allocObject();
      *(v278 + 16) = v274;
      *(v278 + 24) = &protocol witness table for MainActor;
      sub_100065D50(v270, v278 + v275, type metadata accessor for CRLBoardIdentifier);
      *(v278 + v276) = v272;
      *(v278 + v277) = v93;
      v279 = (v278 + ((v277 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v279 = sub_100F795B0;
      v279[1] = v273;
      sub_10064191C(0, 0, v340, &unk_1014B9908, v278);
      swift_unknownObjectRelease();

      sub_10000BBC4(v344, _s5BoardVMa);
      sub_10000BBC4(v333, type metadata accessor for CRLBoardIdentifier);
      v157 = 0;
      v354 = 0;
      v158 = 0;
      v352 = 0;
      v155 = v347;
      v162 = v348;
      v164 = v345;
      v67 = v320;
      goto LABEL_119;
    }

    v247 = *(*(v141 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
    __chkstk_darwin(v148);
    v356._object = v112;

    v211 = sub_101107CA8(sub_100F794EC, (&v312 - 4), v247);

    if (!v211)
    {
      goto LABEL_118;
    }

    v248 = *&v211[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_previewImage];
    v102 = v335;
    if (v248)
    {
      v350 = [v248 UIImage];
      goto LABEL_122;
    }

LABEL_121:
    v350 = 0;
LABEL_122:
    v280 = *(v67 + v102);
    if (v280)
    {
      v281 = *(v280 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView);
      if (v281)
      {
        v352 = v281;
        v282 = v281;
        v283 = v350;
      }

      else
      {
        v284 = objc_allocWithZone(SWAttributionView);
        v285 = v350;
        v282 = [v284 init];
        [v282 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v282 setHorizontalAlignment:2];
        [v282 setBackgroundStyle:2];
        v352 = v282;
      }

      [v282 setHighlight:*&v211[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight]];
      swift_unknownObjectRelease();
      sub_10000BBC4(v69, _s5BoardVMa);
      sub_10000BBC4(v112, type metadata accessor for CRLBoardIdentifier);

      LODWORD(v351) = 0;
      v354 = 0;
      v158 = 0;
      v157 = 1;
      LODWORD(v353) = 1;
      v162 = v348;
      v164 = v345;
      v163 = v341;
      v161 = v342;
      v160 = v336;
      v159 = v337;
      v155 = v350;
      goto LABEL_127;
    }

    goto LABEL_154;
  }

  v320 = v67;
  sub_100065D50(v94, v336, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v96 = *(v346 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v97 = *(v346 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 8);
  v98 = *(v346 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 24);
  inited = *(v346 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 32);

  v100 = v322;
  sub_10003E264(v322);
  if (*(v98 + 16))
  {
    v344 = v97;
    v345 = v96;
    v101 = sub_10003E994(v100);
    v102 = v327;
    v69 = v328;
    v103 = v325;
    if (v104)
    {
      v67 = v326;
      sub_1000652DC(*(v98 + 56) + *(v327 + 72) * v101, v326, _s4NodeVMa);
      (*(v323 + 8))(v100, v324);

      v105 = 0;
    }

    else
    {

      (*(v323 + 8))(v100, v324);
      v105 = 1;
      v67 = v326;
    }
  }

  else
  {

    (*(v323 + 8))(v100, v324);
    v105 = 1;
    v102 = v327;
    v69 = v328;
    v103 = v325;
    v67 = v326;
  }

  (*(v102 + 56))(v67, v105, 1, v103);
  if ((*(v102 + 48))(v67, 1, v103) != 1)
  {
    goto LABEL_82;
  }

  sub_10000CAAC(v67, &unk_1019FB770, &unk_10146FA30);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v187 = v317;
  sub_1000652DC(v336, v317, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v188 = sub_10006A888();
  v190 = v189;
  sub_10000BBC4(v187, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  *(inited + 56) = &type metadata for String;
  v191 = sub_1000053B0();
  *(inited + 32) = v188;
  v353 = v191;
  v354 = (inited + 32);
  *(inited + 64) = v191;
  *(inited + 40) = v190;
  v351 = objc_opt_self();
  v192 = [v351 _atomicIncrementAssertCount];
  v355[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v355, "Filter does not exist: %@", 25, 2u);
  StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
  v352 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
  v193 = String._bridgeToObjectiveC()();

  v194 = [v193 lastPathComponent];

  v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v197 = v196;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v198 = static OS_os_log.crlAssert;
  v199 = swift_initStackObject();
  *(v199 + 16) = xmmword_10146CA70;
  *(v199 + 56) = &type metadata for Int32;
  *(v199 + 64) = &protocol witness table for Int32;
  *(v199 + 32) = v192;
  v200 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v199 + 96) = v200;
  v201 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  v202 = v352;
  *(v199 + 72) = v352;
  v203 = v353;
  *(v199 + 136) = &type metadata for String;
  *(v199 + 144) = v203;
  *(v199 + 104) = v201;
  *(v199 + 112) = v195;
  *(v199 + 120) = v197;
  *(v199 + 176) = &type metadata for UInt;
  *(v199 + 184) = &protocol witness table for UInt;
  *(v199 + 152) = 254;
  v204 = v355[0];
  *(v199 + 216) = v200;
  *(v199 + 224) = v201;
  *(v199 + 192) = v204;
  v205 = v202;
  v206 = v204;
  v207 = static os_log_type_t.error.getter();
  sub_100005404(v198, &_mh_execute_header, v207, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v199);
  swift_setDeallocating();
  v353 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v208 = static os_log_type_t.error.getter();
  sub_100005404(v198, &_mh_execute_header, v208, "Filter does not exist: %@", 25, 2, inited);

  type metadata accessor for __VaListBuilder();
  v69 = swift_allocObject();
  v69[2] = 8;
  v69[3] = 0;
  v112 = (v69 + 3);
  v69[4] = 0;
  v69[5] = 0;
  v114 = *(inited + 16);
  if (!v114)
  {
LABEL_88:
    v233 = __VaListBuilder.va_list()();
    StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
    v234 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
    v235 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Filter does not exist: %@", 25, 2);
    v236 = String._bridgeToObjectiveC()();

    [v351 handleFailureInFunction:v234 file:v235 lineNumber:254 isFatal:0 format:v236 args:v233];

    swift_setDeallocating();
    swift_arrayDestroy();

    sub_10000BBC4(v336, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    return;
  }

  v209 = 0;
  v102 = 40;
  while (1)
  {
    v210 = &v354[5 * v209];
    v211 = v210[4];
    LODWORD(v67) = sub_100020E58(v210, v210[3]);
    v212 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v103 = *v112;
    v213 = *(v212 + 16);
    v128 = __OFADD__(*v112, v213);
    v214 = *v112 + v213;
    if (v128)
    {
      goto LABEL_138;
    }

    v67 = v69[4];
    if (v67 >= v214)
    {
      goto LABEL_74;
    }

    if (v67 + 0x4000000000000000 < 0)
    {
      goto LABEL_141;
    }

    v211 = v69[5];
    if (2 * v67 > v214)
    {
      v214 = 2 * v67;
    }

    v69[4] = v214;
    if ((v214 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_142;
    }

    v215 = inited;
    v216 = v212;
    v217 = swift_slowAlloc();
    v218 = v217;
    v69[5] = v217;
    if (!v211)
    {
      break;
    }

    if (v217 != v211 || v217 >= &v211[8 * v103])
    {
      memmove(v217, v211, 8 * v103);
    }

    v67 = v69;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v212 = v216;
    inited = v215;
    v102 = 40;
LABEL_74:
    v218 = v69[5];
    if (!v218)
    {
      goto LABEL_81;
    }

LABEL_75:
    v220 = *(v212 + 16);
    if (v220)
    {
      v221 = (v212 + 32);
      v222 = *v112;
      while (1)
      {
        v223 = *v221++;
        *&v218[8 * v222] = v223;
        v222 = *v112 + 1;
        if (__OFADD__(*v112, 1))
        {
          break;
        }

        *v112 = v222;
        if (!--v220)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_121;
    }

LABEL_59:

    if (++v209 == v114)
    {
      goto LABEL_88;
    }
  }

  v212 = v216;
  inited = v215;
  v102 = 40;
  if (v218)
  {
    goto LABEL_75;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  v114 = v337;
  v112 = ~v337;
  v224 = v67;
  v225 = v321;
  sub_100065D50(v224, v321, _s4NodeVMa);
  v226 = *(v225 + *(v103 + 20));
  v227 = *(v226 + 16);
  v228 = _swiftEmptyArrayStorage;
  v344 = ~v114;
  if (v227)
  {
    v355[0] = _swiftEmptyArrayStorage;
    sub_100776764(0, v227, 0);
    v228 = v355[0];
    inited = v226 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v229 = *(v102 + 72);
    v112 &= v114 + 32;
    v230 = v316;
    do
    {
      sub_1000652DC(inited, v230, _s4NodeVMa);
      sub_1000652DC(v230, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v230, _s4NodeVMa);
      v355[0] = v228;
      v232 = v228[2];
      v231 = v228[3];
      if (v232 >= v231 >> 1)
      {
        sub_100776764((v231 > 1), v232 + 1, 1);
        v230 = v316;
        v228 = v355[0];
      }

      v228[2] = v232 + 1;
      sub_100065D50(v69, v228 + v112 + v354[9] * v232, type metadata accessor for CRLBoardLibraryViewModel.Item);
      inited += v229;
      --v227;
    }

    while (v227);
    v114 = v337;
  }

  v237 = v228[2];
  v238 = v349;
  if (!v237)
  {
    v67 = _swiftEmptyArrayStorage;
LABEL_111:
    v253 = *(v67 + 16);

    if (v253)
    {
      v254 = [objc_opt_self() mainBundle];
      v356._object = 0x80000001015B3C50;
      v255._countAndFlagsBits = 0x72616F6220756C25;
      v255._object = 0xEC00000029732864;
      v356._countAndFlagsBits = 0xD00000000000001ALL;
      v256._countAndFlagsBits = 0;
      v256._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v255, 0, v254, v256, v356);

      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v257 = swift_allocObject();
      *(v257 + 16) = xmmword_10146C6B0;
      *(v257 + 56) = &type metadata for Int;
      *(v257 + 64) = &protocol witness table for Int;
      *(v257 + 32) = v253;
      v354 = static String.localizedStringWithFormat(_:_:)();
      v345 = v258;
    }

    else
    {
      v354 = 0;
      v345 = 0;
    }

    v259 = type metadata accessor for TaskPriority();
    v260 = v340;
    (*(*(v259 - 8) + 56))(v340, 1, 1, v259);
    v261 = v341;
    sub_1000652DC(v348, v341, type metadata accessor for CRLBoardLibraryViewModel.Item);
    type metadata accessor for MainActor();
    v262 = v347;
    v263 = v350;
    v264 = v319;
    v265 = v343;

    v266 = static MainActor.shared.getter();
    v267 = (v337 + 80) & v344;
    v268 = swift_allocObject();
    v268[2] = v266;
    v268[3] = &protocol witness table for MainActor;
    v268[4] = v228;
    v268[5] = v264;
    v268[6] = v263;
    v268[7] = v93;
    v268[8] = sub_100F795B0;
    v268[9] = v265;
    sub_100065D50(v261, v268 + v267, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10064191C(0, 0, v260, &unk_1014B9910, v268);

    sub_10000BBC4(v336, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10000BBC4(v321, _s4NodeVMa);
    v157 = 0;
    LODWORD(v349) = 0;
    LODWORD(v351) = 0;
    LODWORD(v353) = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v352 = 0;
    v163 = 0xE000000000000000;
    v155 = v347;
    v164 = 0xE000000000000000;
    v67 = v320;
    v102 = v335;
    v158 = v345;
    goto LABEL_127;
  }

  v239 = 0;
  v345 = (v114 + 32) & v344;
  v240 = v228 + v345;
  v67 = _swiftEmptyArrayStorage;
  while (v239 < v228[2])
  {
    v112 = v354[9];
    v114 = v351;
    sub_1000652DC(&v240[v112 * v239], v351, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1000652DC(v114, v238, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10000BBC4(v238, _s5BoardVMa);
      sub_100065D50(v114, v352, type metadata accessor for CRLBoardLibraryViewModel.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v355[0] = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776764(0, *(v67 + 16) + 1, 1);
        v67 = v355[0];
      }

      v243 = *(v67 + 16);
      v242 = *(v67 + 24);
      inited = v243 + 1;
      if (v243 >= v242 >> 1)
      {
        sub_100776764((v242 > 1), v243 + 1, 1);
        v67 = v355[0];
      }

      *(v67 + 16) = inited;
      sub_100065D50(v352, v67 + v345 + v243 * v112, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v238 = v349;
    }

    else
    {
      inited = type metadata accessor for CRLBoardLibraryViewModel.Item;
      sub_10000BBC4(v114, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v238, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    if (v237 == ++v239)
    {
      goto LABEL_111;
    }
  }

  while (2)
  {
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
    swift_once();
LABEL_20:
    v115 = static OS_os_log.crlAssert;
    v116 = swift_initStackObject();
    *(v116 + 16) = xmmword_10146CA70;
    *(v116 + 56) = &type metadata for Int32;
    *(v116 + 64) = &protocol witness table for Int32;
    *(v116 + 32) = v67;
    v117 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v116 + 96) = v117;
    v118 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    v119 = v352;
    *(v116 + 72) = v352;
    v120 = v353;
    *(v116 + 136) = &type metadata for String;
    *(v116 + 144) = v120;
    *(v116 + 104) = v118;
    *(v116 + 112) = v112;
    *(v116 + 120) = v114;
    *(v116 + 176) = &type metadata for UInt;
    *(v116 + 184) = &protocol witness table for UInt;
    *(v116 + 152) = 361;
    v121 = v355[0];
    *(v116 + 216) = v117;
    *(v116 + 224) = v118;
    *(v116 + 192) = v121;
    v122 = v119;
    v123 = v121;
    v124 = static os_log_type_t.error.getter();
    sub_100005404(v115, &_mh_execute_header, v124, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v116);
    swift_setDeallocating();
    v353 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v125 = static os_log_type_t.error.getter();
    sub_100005404(v115, &_mh_execute_header, v125, "Unhandled item: %@", 18, 2, inited);

    type metadata accessor for __VaListBuilder();
    v69 = swift_allocObject();
    v69[2] = 8;
    v69[3] = 0;
    v112 = (v69 + 3);
    v69[4] = 0;
    v69[5] = 0;
    v114 = *(inited + 16);
    if (!v114)
    {
LABEL_48:
      v149 = __VaListBuilder.va_list()();
      StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
      v150 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
      v151 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Unhandled item: %@", 18, 2);
      v152 = String._bridgeToObjectiveC()();

      [v351 handleFailureInFunction:v150 file:v151 lineNumber:361 isFatal:0 format:v152 args:v149];

      swift_setDeallocating();
      swift_arrayDestroy();
      v153 = objc_opt_self();
      v154 = String._bridgeToObjectiveC()();
      v155 = [v153 systemImageNamed:v154];

      v156 = v155;
      sub_10000BBC4(v345, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v157 = 0;
      LODWORD(v349) = 0;
      LODWORD(v351) = 0;
      LODWORD(v353) = 0;
      v354 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
      v162 = 0;
      v352 = 0;
      v163 = 0xE000000000000000;
      v164 = 0xE000000000000000;
      v67 = v320;
      v102 = v335;
      goto LABEL_127;
    }

    v71 = 0;
LABEL_23:
    LODWORD(v67) = sub_100020E58(&v354[5 * v71], v354[5 * v71 + 3]);
    v126 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v94 = *v112;
    v127 = *(v126 + 16);
    v128 = __OFADD__(*v112, v127);
    v129 = *v112 + v127;
    if (v128)
    {
      __break(1u);
      continue;
    }

    break;
  }

  v67 = v69[4];
  if (v67 >= v129)
  {
LABEL_37:
    v134 = v69[5];
    if (!v134)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (v67 + 0x4000000000000000 < 0)
    {
      goto LABEL_139;
    }

    v130 = v69[5];
    if (2 * v67 > v129)
    {
      v129 = 2 * v67;
    }

    v69[4] = v129;
    if ((v129 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_140;
    }

    v131 = inited;
    v132 = v126;
    v133 = swift_slowAlloc();
    v134 = v133;
    v69[5] = v133;
    if (v130)
    {
      if (v133 != v130 || v133 >= &v130[8 * v94])
      {
        memmove(v133, v130, 8 * v94);
      }

      v67 = v69;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v126 = v132;
      inited = v131;
      goto LABEL_37;
    }

    v126 = v132;
    inited = v131;
    if (!v134)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  v136 = *(v126 + 16);
  if (!v136)
  {
LABEL_22:

    if (++v71 == v114)
    {
      goto LABEL_48;
    }

    goto LABEL_23;
  }

  v137 = (v126 + 32);
  v138 = *v112;
  while (1)
  {
    v139 = *v137++;
    *&v134[8 * v138] = v139;
    v138 = *v112 + 1;
    if (__OFADD__(*v112, 1))
    {
      break;
    }

    *v112 = v138;
    if (!--v136)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_118:
  sub_10000BBC4(v69, _s5BoardVMa);
  swift_unknownObjectRelease();
  sub_10000BBC4(v112, type metadata accessor for CRLBoardIdentifier);
  LODWORD(v351) = 0;
  v155 = 0;
  v354 = 0;
  v158 = 0;
  v352 = 0;
  v157 = 1;
  LODWORD(v353) = 1;
  v162 = v348;
  v164 = v345;
LABEL_119:
  v102 = v335;
  v160 = v336;
  v163 = v341;
  v161 = v342;
  v159 = v337;
LABEL_127:
  sub_100EE1E90(v162, v164);
  v286 = (v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxLastEditedTimestampText);
  *v286 = v161;
  v286[1] = v163;

  v287 = (v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName);
  v288 = *(v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName);
  v289 = *(v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName + 8);
  *v287 = v159;
  v287[1] = v160;
  sub_100EE2C24(v288, v289);

  v290 = (v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_folderName);
  *v290 = v354;
  v290[1] = v158;

  v291 = *(v67 + v102);
  if (!v291)
  {
    goto LABEL_147;
  }

  [*(v291 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setImage:v155];
  v292 = v155;

  v293 = *(v67 + v102);
  if (!v293)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v294 = v67;
  v295 = *&v293[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView];
  v296 = v295;
  v297 = v293;
  v298 = v352;
  v299 = v352;
  sub_100EE10AC(v298);

  sub_10068DD4C(v295);
  v294[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardAccessState] = v353;
  v300 = *&v294[v102];
  if (!v300)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v301 = v300;
  sub_100EE1210();

  v302 = v351;
  v294[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_canShowFavoriteButton] = v351;
  v303 = *&v294[v102];
  if (!v303)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  [*(v303 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton) setHidden:v302 ^ 1u];
  v294[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_isFavorite] = v349;
  sub_100EE2D94();
  v294[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_dimsThumbnail] = v157;
  v304 = *&v294[v102];
  if (v304)
  {
    *(v304 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dimsThumbnail) = v157;
    v305 = 1.0;
    if (v157)
    {
      v305 = 0.5;
    }

    [*(v304 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setAlpha:v305];
    v306 = type metadata accessor for TaskPriority();
    v307 = v340;
    (*(*(v306 - 8) + 56))(v340, 1, 1, v306);
    type metadata accessor for MainActor();
    v308 = v294;
    v309 = v346;
    swift_unknownObjectRetain();
    v310 = static MainActor.shared.getter();
    v311 = swift_allocObject();
    v311[2] = v310;
    v311[3] = &protocol witness table for MainActor;
    v311[4] = v308;
    v311[5] = &off_1018A7C78;
    v311[6] = v309;
    v311[7] = v334;
    sub_10064191C(0, 0, v307, &unk_1014B9900, v311);

    goto LABEL_135;
  }

LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void sub_100F70EEC(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v345 = a7;
  v318 = a6;
  v332 = a5;
  v342 = a4;
  v334 = a2;
  v9 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  __chkstk_darwin(v9 - 8);
  v316 = &v309 - v10;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v311 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v312 = v12;
  v313 = &v309 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v319 = (&v309 - v14);
  v15 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v15 - 8);
  v336 = &v309 - v16;
  v317 = _s5BoardVMa(0);
  __chkstk_darwin(v317);
  v330 = &v309 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v324 = *(v18 - 8);
  v325 = v18;
  __chkstk_darwin(v18);
  v321 = &v309 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v20 - 8);
  v326 = &v309 - v21;
  v22 = _s4NodeVMa(0);
  v23 = *(v22 - 8);
  v322 = v22;
  v323 = v23;
  __chkstk_darwin(v22);
  v314 = &v309 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v320 = &v309 - v26;
  v27 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v27 - 8);
  v310 = &v309 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v315 = &v309 - v30;
  __chkstk_darwin(v31);
  v333 = &v309 - v32;
  v33 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v335 = &v309 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v347 = &v309 - v37;
  __chkstk_darwin(v38);
  v344 = &v309 - v39;
  __chkstk_darwin(v40);
  v346 = &v309 - v41;
  __chkstk_darwin(v42);
  v340 = &v309 - v43;
  v338 = v44;
  __chkstk_darwin(v45);
  v337 = &v309 - v46;
  v47 = sub_1005B981C(&qword_101A23CF0, &qword_10146F348);
  __chkstk_darwin(v47 - 8);
  v327 = &v309 - v48;
  v49 = type metadata accessor for UIBackgroundConfiguration();
  v328 = *(v49 - 8);
  v329 = v49;
  __chkstk_darwin(v49);
  v339 = &v309 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v51 - 8);
  v53 = &v309 - v52;
  v54 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_item;
  swift_beginAccess();
  sub_10000BE14(&a1[v54], v53, &unk_101A15B20, &qword_10146F1E0);
  v341 = sub_100F73970(a1, v53, a3, &OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
  sub_10000CAAC(v53, &unk_101A15B20, &qword_10146F1E0);
  v55 = sub_100F88220();
  sub_1008F36C4(v55, v56);
  v343 = a3;
  sub_1000652DC(a3, v53, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v349 = v34;
  (*(v34 + 7))(v53, 0, 1, v33);
  swift_beginAccess();
  v57 = v53;
  v58 = a1;
  sub_10002C638(v57, &a1[v54], &unk_101A15B20, &qword_10146F1E0);
  swift_endAccess();
  *&a1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxDelegate + 8] = &off_1018A9040;
  v59 = v345;
  swift_unknownObjectWeakAssign();
  v60 = [v59 collectionView];
  if (!v60)
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v61 = v60;
  v348 = v33;
  v62 = [v60 isEditing];

  sub_1008F31A8(v62);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v63 = a1;
  }

  else
  {
    v63 = 0;
  }

  v64 = v335;
  if (v63)
  {
    v65 = a1;
    v66 = [v345 collectionView];
    if (!v66)
    {
      goto LABEL_147;
    }

    v67 = v66;
    v68 = [v66 indexPathsForSelectedItems];

    v69 = v339;
    if (v68)
    {
      type metadata accessor for IndexPath();
      v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = v65;
      [v63 setSelected:{sub_1012CD684(v334, v70)}];

      v72 = v71;
      UICollectionViewCell.defaultBackgroundConfiguration()();

      UIBackgroundConfiguration.cornerRadius.setter();
      v73 = [v345 collectionView];
      if (!v73)
      {
        goto LABEL_148;
      }

      v74 = v73;

      v75 = [v74 backgroundColor];

      UIBackgroundConfiguration.backgroundColor.setter();
      v76 = v327;
      v77 = v328;
      v78 = v329;
      (*(v328 + 16))(v327, v69, v329);
      (*(v77 + 56))(v76, 0, 1, v78);
      v79 = v72;
      UICollectionViewCell.backgroundConfiguration.setter();

      (*(v77 + 8))(v69, v78);
    }

    else
    {
    }

    v58 = a1;
  }

  v334 = v63;
  v80 = swift_allocObject();
  *(v80 + 24) = &off_10188CE10;
  swift_unknownObjectWeakInit();
  v81 = v343;
  v82 = v337;
  sub_1000652DC(v343, v337, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v83 = v349[80];
  v84 = swift_allocObject();
  *(v84 + 16) = v80;
  v339 = v84;
  sub_100065D50(v82, v84 + ((v83 + 24) & ~v83), type metadata accessor for CRLBoardLibraryViewModel.Item);
  [objc_opt_self() crl_screenScale];
  v86 = v85;
  v87 = v340;
  sub_1000652DC(v81, v340, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_43:
      v119 = v330;
      sub_100065D50(v87, v330, _s5BoardVMa);
      type metadata accessor for CRLBoardLibrary();
      v135 = swift_dynamicCastClass();
      if (!v135)
      {
        v349 = objc_opt_self();
        v163 = [v349 _atomicIncrementAssertCount];
        v350[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v350, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
        v164 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
        v165 = String._bridgeToObjectiveC()();

        v166 = [v165 lastPathComponent];

        v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v169 = v168;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v170 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v163;
        v172 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v172;
        v173 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(inited + 104) = v173;
        *(inited + 72) = v164;
        *(inited + 136) = &type metadata for String;
        v174 = sub_1000053B0();
        *(inited + 112) = v167;
        *(inited + 120) = v169;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v174;
        *(inited + 152) = 297;
        v175 = v350[0];
        *(inited + 216) = v172;
        *(inited + 224) = v173;
        *(inited + 192) = v175;
        v176 = v164;
        v177 = v175;
        v178 = static os_log_type_t.error.getter();
        sub_100005404(v170, &_mh_execute_header, v178, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v179 = static os_log_type_t.error.getter();
        sub_100005404(v170, &_mh_execute_header, v179, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v180 = swift_allocObject();
        v180[2] = 8;
        v180[3] = 0;
        v180[4] = 0;
        v180[5] = 0;
        v181 = __VaListBuilder.va_list()();
        StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
        v182 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
        v183 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v184 = String._bridgeToObjectiveC()();

        [v349 handleFailureInFunction:v182 file:v183 lineNumber:297 isFatal:0 format:v184 args:v181];

        sub_10000BBC4(v330, _s5BoardVMa);

LABEL_133:
        return;
      }

      v136 = v135;
      v64 = v319;
      sub_1000652DC(v119, v319, type metadata accessor for CRLBoardIdentifier);
      v137 = v317;
      v138 = *(v317 + 32);
      swift_unknownObjectRetain();
      v139 = sub_101303CCC(v119 + v138);
      v343 = v140;
      v344 = v139;
      v340 = v141;
      v338 = v142;
      v143 = v316;
      sub_10000BE14(v119 + v137[20], v316, &qword_1019F33D0, &unk_101468A70);
      v144 = _s5BoardV13ShareMetadataVMa(0);
      if ((*(*(v144 - 8) + 48))(v143, 1, v144) == 1)
      {
        v145 = sub_10000CAAC(v143, &qword_1019F33D0, &unk_101468A70);
        v337 = 0;
        v118 = 0;
      }

      else
      {
        v243 = (v143 + *(v144 + 24));
        v118 = v243[1];
        v337 = *v243;

        v145 = sub_10000BBC4(v143, _s5BoardV13ShareMetadataVMa);
      }

      v244 = v137[15];
      LODWORD(v346) = *(v119 + v137[14]);
      v245 = *(v119 + v244);
      v331 = v58;
      if (v245 == 1)
      {
        v246 = *(*(v136 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
        __chkstk_darwin(v145);
        v351._object = v64;

        v87 = sub_101107CA8(sub_100F794EC, (&v309 - 4), v246);

        if (!v87)
        {
          goto LABEL_117;
        }

        v247 = *(v87 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_previewImage);
        if (v247)
        {
          v248 = [v247 UIImage];
        }

        else
        {
LABEL_119:
          v248 = 0;
        }

        v281 = *(v331 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
        if (!v281)
        {
          goto LABEL_149;
        }

        v160 = *(v281 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView);
        v335 = v118;
        v348 = v248;
        if (v160)
        {
          v282 = v160;
          v283 = v248;
        }

        else
        {
          v284 = objc_allocWithZone(SWAttributionView);
          v285 = v248;
          v282 = [v284 init];
          [v282 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v282 setHorizontalAlignment:2];
          [v282 setBackgroundStyle:2];
          v160 = v282;
        }

        [v282 setHighlight:*(v87 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight)];
        swift_unknownObjectRelease();
        sub_10000BBC4(v119, _s5BoardVMa);
        sub_10000BBC4(v64, type metadata accessor for CRLBoardIdentifier);

        LODWORD(v347) = 0;
        v155 = 0;
        v156 = 0;
        v154 = 1;
        LODWORD(v349) = 1;
      }

      else
      {
        v335 = v118;
        v249 = v310;
        sub_1000652DC(v345 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v310, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v250 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
        v251 = (*(*(v250 - 8) + 48))(v249, 5, v250);
        sub_10000BBC4(v249, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        LODWORD(v347) = v251 != 5;
        if (v251 == 5)
        {
          LODWORD(v349) = 0;
        }

        else
        {
          if (*(v119 + v137[10]))
          {
            v252 = 2;
          }

          else
          {
            v252 = 0;
          }

          LODWORD(v349) = v252;
        }

        v270 = type metadata accessor for TaskPriority();
        (*(*(v270 - 8) + 56))(v336, 1, 1, v270);
        v271 = v313;
        sub_1000652DC(v64, v313, type metadata accessor for CRLBoardIdentifier);
        type metadata accessor for MainActor();
        v272 = v341;
        v273 = v341;
        v348 = v318;
        v274 = v339;

        v275 = static MainActor.shared.getter();
        v276 = (*(v311 + 80) + 32) & ~*(v311 + 80);
        v277 = (v312 + v276 + 7) & 0xFFFFFFFFFFFFFFF8;
        v278 = (v277 + 15) & 0xFFFFFFFFFFFFFFF8;
        v279 = swift_allocObject();
        *(v279 + 16) = v275;
        *(v279 + 24) = &protocol witness table for MainActor;
        sub_100065D50(v271, v279 + v276, type metadata accessor for CRLBoardIdentifier);
        *(v279 + v277) = v348;
        *(v279 + v278) = v86;
        v280 = (v279 + ((v278 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v280 = sub_100F77560;
        v280[1] = v274;
        sub_10064191C(0, 0, v336, &unk_1014B98E8, v279);
        swift_unknownObjectRelease();

        sub_10000BBC4(v330, _s5BoardVMa);
        sub_10000BBC4(v319, type metadata accessor for CRLBoardIdentifier);
        v154 = 0;
        v155 = 0;
        v156 = 0;
        v160 = 0;
        v348 = v272;
      }

      v162 = v343;
      v159 = v344;
      v158 = v340;
      v157 = v337;
      v161 = v338;
      v118 = v335;
      goto LABEL_126;
    }

    v330 = v83;
    v331 = v58;
    sub_100065D50(v87, v333, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v89 = *(v342 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
    v90 = *(v342 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 8);
    v91 = *(v342 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 24);

    v92 = v321;
    sub_10003E264(v321);
    if (*(v91 + 16))
    {
      v329 = v90;
      v340 = v89;
      v93 = sub_10003E994(v92);
      v94 = v322;
      v95 = v323;
      if (v96)
      {
        v87 = v326;
        sub_1000652DC(*(v91 + 56) + *(v323 + 72) * v93, v326, _s4NodeVMa);
        (*(v324 + 8))(v92, v325);

        v97 = 0;
LABEL_53:
        (*(v95 + 56))(v87, v97, 1, v94);
        v185 = (*(v95 + 48))(v87, 1, v94);
        v104 = v330;
        if (v185 == 1)
        {
          sub_10000CAAC(v87, &unk_1019FB770, &unk_10146FA30);
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v95 = swift_initStackObject();
          *(v95 + 16) = xmmword_10146C6B0;
          v186 = v315;
          sub_1000652DC(v333, v315, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v187 = sub_10006A888();
          v189 = v188;
          sub_10000BBC4(v186, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          *(v95 + 56) = &type metadata for String;
          v190 = sub_1000053B0();
          *(v95 + 32) = v187;
          v348 = v190;
          v349 = (v95 + 32);
          *(v95 + 64) = v190;
          *(v95 + 40) = v189;
          v346 = objc_opt_self();
          v191 = [v346 _atomicIncrementAssertCount];
          v350[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(v95, v350, "Filter does not exist: %@", 25, 2u);
          StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
          v347 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
          v192 = String._bridgeToObjectiveC()();

          v193 = [v192 lastPathComponent];

          v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v196 = v195;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v197 = static OS_os_log.crlAssert;
          v198 = swift_initStackObject();
          *(v198 + 16) = xmmword_10146CA70;
          *(v198 + 56) = &type metadata for Int32;
          *(v198 + 64) = &protocol witness table for Int32;
          *(v198 + 32) = v191;
          v199 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(v198 + 96) = v199;
          v200 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
          v201 = v347;
          *(v198 + 72) = v347;
          v202 = v348;
          *(v198 + 136) = &type metadata for String;
          *(v198 + 144) = v202;
          *(v198 + 104) = v200;
          *(v198 + 112) = v194;
          *(v198 + 120) = v196;
          *(v198 + 176) = &type metadata for UInt;
          *(v198 + 184) = &protocol witness table for UInt;
          *(v198 + 152) = 254;
          v203 = v350[0];
          *(v198 + 216) = v199;
          *(v198 + 224) = v200;
          *(v198 + 192) = v203;
          v204 = v201;
          v205 = v203;
          v206 = static os_log_type_t.error.getter();
          sub_100005404(v197, &_mh_execute_header, v206, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v198);
          swift_setDeallocating();
          v348 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v207 = static os_log_type_t.error.getter();
          sub_100005404(v197, &_mh_execute_header, v207, "Filter does not exist: %@", 25, 2, v95);

          type metadata accessor for __VaListBuilder();
          v64 = swift_allocObject();
          v64[2] = 8;
          v64[3] = 0;
          v208 = v64 + 3;
          v64[4] = 0;
          v64[5] = 0;
          v58 = *(v95 + 16);
          if (!v58)
          {
LABEL_87:
            v232 = __VaListBuilder.va_list()();
            StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
            v233 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
            v234 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Filter does not exist: %@", 25, 2);
            v235 = String._bridgeToObjectiveC()();

            [v346 handleFailureInFunction:v233 file:v234 lineNumber:254 isFatal:0 format:v235 args:v232];

            swift_setDeallocating();
            swift_arrayDestroy();

            sub_10000BBC4(v333, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            return;
          }

          v118 = 0;
          v119 = 40;
          while (1)
          {
            v209 = &v349[40 * v118];
            v104 = *(v209 + 4);
            LODWORD(v87) = sub_100020E58(v209, *(v209 + 3));
            v210 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
            v94 = *v208;
            v211 = *(v210 + 16);
            v124 = __OFADD__(*v208, v211);
            v212 = *v208 + v211;
            if (v124)
            {
              goto LABEL_136;
            }

            v87 = v64[4];
            if (v87 >= v212)
            {
              goto LABEL_73;
            }

            if (v87 + 0x4000000000000000 < 0)
            {
              goto LABEL_139;
            }

            v104 = v64[5];
            if (2 * v87 > v212)
            {
              v212 = 2 * v87;
            }

            v64[4] = v212;
            if ((v212 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_140;
            }

            v213 = v95;
            v214 = v210;
            v215 = swift_slowAlloc();
            v216 = v215;
            v64[5] = v215;
            if (v104)
            {
              break;
            }

            v210 = v214;
            v95 = v213;
            v119 = 40;
            if (!v216)
            {
LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

LABEL_74:
            v218 = *(v210 + 16);
            if (v218)
            {
              v219 = (v210 + 32);
              v220 = *v208;
              while (1)
              {
                v221 = *v219++;
                v216[v220] = v221;
                v220 = *v208 + 1;
                if (__OFADD__(*v208, 1))
                {
                  break;
                }

                *v208 = v220;
                if (!--v218)
                {
                  goto LABEL_58;
                }
              }

              __break(1u);
              goto LABEL_119;
            }

LABEL_58:

            if (++v118 == v58)
            {
              goto LABEL_87;
            }
          }

          if (v215 != v104 || v215 >= v104 + 8 * v94)
          {
            memmove(v215, v104, 8 * v94);
          }

          v87 = v64;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v210 = v214;
          v95 = v213;
          v119 = 40;
LABEL_73:
          v216 = v64[5];
          if (!v216)
          {
            goto LABEL_80;
          }

          goto LABEL_74;
        }

LABEL_81:
        v222 = v87;
        v223 = v320;
        sub_100065D50(v222, v320, _s4NodeVMa);
        v224 = *(v223 + *(v94 + 20));
        v225 = *(v224 + 16);
        v226 = _swiftEmptyArrayStorage;
        v329 = ~v104;
        if (v225)
        {
          v350[0] = _swiftEmptyArrayStorage;
          sub_100776764(0, v225, 0);
          v226 = v350[0];
          v227 = v224 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          v95 = *(v95 + 72);
          v228 = (v104 + 32) & ~v104;
          v229 = v314;
          do
          {
            sub_1000652DC(v227, v229, _s4NodeVMa);
            sub_1000652DC(v229, v64, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000BBC4(v229, _s4NodeVMa);
            v350[0] = v226;
            v231 = v226[2];
            v230 = v226[3];
            if (v231 >= v230 >> 1)
            {
              sub_100776764((v230 > 1), v231 + 1, 1);
              v229 = v314;
              v226 = v350[0];
            }

            v226[2] = v231 + 1;
            sub_100065D50(v64, v226 + v228 + *(v349 + 9) * v231, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v227 += v95;
            --v225;
          }

          while (v225);
          v104 = v330;
        }

        v236 = v226[2];
        v237 = v344;
        if (!v236)
        {
          v87 = _swiftEmptyArrayStorage;
LABEL_110:
          v253 = *(v87 + 16);

          if (v253)
          {
            v254 = [objc_opt_self() mainBundle];
            v351._object = 0x80000001015B3C50;
            v255._countAndFlagsBits = 0x72616F6220756C25;
            v255._object = 0xEC00000029732864;
            v351._countAndFlagsBits = 0xD00000000000001ALL;
            v256._countAndFlagsBits = 0;
            v256._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v255, 0, v254, v256, v351);

            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v257 = swift_allocObject();
            *(v257 + 16) = xmmword_10146C6B0;
            *(v257 + 56) = &type metadata for Int;
            *(v257 + 64) = &protocol witness table for Int;
            *(v257 + 32) = v253;
            v344 = static String.localizedStringWithFormat(_:_:)();
            v340 = v258;
          }

          else
          {
            v344 = 0;
            v340 = 0;
          }

          v259 = v318;
          v260 = type metadata accessor for TaskPriority();
          v261 = v336;
          (*(*(v260 - 8) + 56))(v336, 1, 1, v260);
          v262 = v337;
          sub_1000652DC(v343, v337, type metadata accessor for CRLBoardLibraryViewModel.Item);
          type metadata accessor for MainActor();
          v263 = v341;
          v264 = v345;
          v265 = v259;
          v266 = v339;

          v267 = static MainActor.shared.getter();
          v268 = (v330 + 80) & v329;
          v269 = swift_allocObject();
          v269[2] = v267;
          v269[3] = &protocol witness table for MainActor;
          v269[4] = v226;
          v269[5] = v265;
          v269[6] = v264;
          v269[7] = v86;
          v269[8] = sub_100F77560;
          v269[9] = v266;
          sub_100065D50(v262, v269 + v268, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10064191C(0, 0, v261, &unk_1014B98F0, v269);

          sub_10000BBC4(v333, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          sub_10000BBC4(v320, _s4NodeVMa);
          v154 = 0;
          LODWORD(v346) = 0;
          LODWORD(v347) = 0;
          LODWORD(v349) = 0;
          v157 = 0;
          v118 = 0;
          v158 = 0;
          v159 = 0;
          v160 = 0;
          v161 = 0xE000000000000000;
          v156 = v340;
          v348 = v341;
          v162 = 0xE000000000000000;
          v155 = v344;
          goto LABEL_126;
        }

        v58 = 0;
        v340 = (v104 + 32) & v329;
        v238 = v226 + v340;
        v87 = _swiftEmptyArrayStorage;
        while (v58 < v226[2])
        {
          v239 = *(v349 + 9);
          v104 = v346;
          sub_1000652DC(&v238[v239 * v58], v346, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_1000652DC(v104, v237, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            sub_10000BBC4(v237, _s5BoardVMa);
            sub_100065D50(v104, v347, type metadata accessor for CRLBoardLibraryViewModel.Item);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v350[0] = v87;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100776764(0, *(v87 + 16) + 1, 1);
              v87 = v350[0];
            }

            v242 = *(v87 + 16);
            v241 = *(v87 + 24);
            v95 = v242 + 1;
            if (v242 >= v241 >> 1)
            {
              sub_100776764((v241 > 1), v242 + 1, 1);
              v87 = v350[0];
            }

            *(v87 + 16) = v95;
            sub_100065D50(v347, v87 + v340 + v242 * v239, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v237 = v344;
          }

          else
          {
            v95 = type metadata accessor for CRLBoardLibraryViewModel.Item;
            sub_10000BBC4(v104, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000BBC4(v237, type metadata accessor for CRLBoardLibraryViewModel.Item);
          }

          if (v236 == ++v58)
          {
            goto LABEL_110;
          }
        }

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
        goto LABEL_141;
      }

      (*(v324 + 8))(v92, v325);
      v97 = 1;
    }

    else
    {

      (*(v324 + 8))(v92, v325);
      v97 = 1;
      v94 = v322;
      v95 = v323;
    }

    v87 = v326;
    goto LABEL_53;
  }

  v331 = v58;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v95 = swift_initStackObject();
  *(v95 + 16) = xmmword_10146C6B0;
  v98 = sub_100F8903C();
  v100 = v99;
  *(v95 + 56) = &type metadata for String;
  v101 = sub_1000053B0();
  *(v95 + 32) = v98;
  v348 = v101;
  v349 = (v95 + 32);
  *(v95 + 64) = v101;
  *(v95 + 40) = v100;
  v346 = objc_opt_self();
  LODWORD(v87) = [v346 _atomicIncrementAssertCount];
  v350[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v95, v350, "Unhandled item: %@", 18, 2u);
  StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
  v347 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
  v102 = String._bridgeToObjectiveC()();

  v103 = [v102 lastPathComponent];

  v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v105;

  if (qword_1019F20A0 != -1)
  {
LABEL_141:
    swift_once();
  }

  v106 = static OS_os_log.crlAssert;
  v107 = swift_initStackObject();
  *(v107 + 16) = xmmword_10146CA70;
  *(v107 + 56) = &type metadata for Int32;
  *(v107 + 64) = &protocol witness table for Int32;
  *(v107 + 32) = v87;
  v108 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v107 + 96) = v108;
  v109 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  v110 = v347;
  *(v107 + 72) = v347;
  v111 = v348;
  *(v107 + 136) = &type metadata for String;
  *(v107 + 144) = v111;
  *(v107 + 104) = v109;
  *(v107 + 112) = v104;
  *(v107 + 120) = v58;
  *(v107 + 176) = &type metadata for UInt;
  *(v107 + 184) = &protocol witness table for UInt;
  *(v107 + 152) = 361;
  v112 = v350[0];
  *(v107 + 216) = v108;
  *(v107 + 224) = v109;
  *(v107 + 192) = v112;
  v113 = v110;
  v114 = v112;
  v115 = static os_log_type_t.error.getter();
  sub_100005404(v106, &_mh_execute_header, v115, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v107);
  swift_setDeallocating();
  v348 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v116 = static os_log_type_t.error.getter();
  sub_100005404(v106, &_mh_execute_header, v116, "Unhandled item: %@", 18, 2, v95);

  type metadata accessor for __VaListBuilder();
  v64 = swift_allocObject();
  v64[2] = 8;
  v64[3] = 0;
  v117 = v64 + 3;
  v64[4] = 0;
  v64[5] = 0;
  v58 = *(v95 + 16);
  if (!v58)
  {
LABEL_46:
    v146 = __VaListBuilder.va_list()();
    StaticString.description.getter("configure(cell:at:using:libraryProvider:boardPreviewImageCache:)", 64, 2);
    v147 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLFolderGridViewController.swift", 103, 2);
    v148 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unhandled item: %@", 18, 2);
    v149 = String._bridgeToObjectiveC()();

    [v346 handleFailureInFunction:v147 file:v148 lineNumber:361 isFatal:0 format:v149 args:v146];

    swift_setDeallocating();
    swift_arrayDestroy();
    v150 = objc_opt_self();
    v151 = String._bridgeToObjectiveC()();
    v152 = [v150 systemImageNamed:v151];

    v348 = v152;
    v153 = v152;
    sub_10000BBC4(v340, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v154 = 0;
    LODWORD(v346) = 0;
    LODWORD(v347) = 0;
    LODWORD(v349) = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v118 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0xE000000000000000;
    v162 = 0xE000000000000000;
    goto LABEL_126;
  }

  v118 = 0;
  v119 = 40;
  while (1)
  {
    v120 = &v349[40 * v118];
    v104 = *(v120 + 4);
    LODWORD(v87) = sub_100020E58(v120, *(v120 + 3));
    v121 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v122 = *v117;
    v123 = *(v121 + 16);
    v124 = __OFADD__(*v117, v123);
    v125 = *v117 + v123;
    if (v124)
    {
      __break(1u);
      goto LABEL_135;
    }

    v87 = v64[4];
    if (v87 >= v125)
    {
      goto LABEL_35;
    }

    if (v87 + 0x4000000000000000 < 0)
    {
      goto LABEL_137;
    }

    v104 = v64[5];
    if (2 * v87 > v125)
    {
      v125 = 2 * v87;
    }

    v64[4] = v125;
    if ((v125 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_138;
    }

    v126 = v95;
    v127 = v121;
    v128 = swift_slowAlloc();
    v129 = v128;
    v64[5] = v128;
    if (v104)
    {
      if (v128 != v104 || v128 >= v104 + 8 * v122)
      {
        memmove(v128, v104, 8 * v122);
      }

      v87 = v64;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v121 = v127;
      v95 = v126;
      v119 = 40;
LABEL_35:
      v129 = v64[5];
      if (!v129)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    v121 = v127;
    v95 = v126;
    v119 = 40;
    if (!v129)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_36:
    v131 = *(v121 + 16);
    if (v131)
    {
      break;
    }

LABEL_20:

    if (++v118 == v58)
    {
      goto LABEL_46;
    }
  }

  v132 = (v121 + 32);
  v133 = *v117;
  while (1)
  {
    v134 = *v132++;
    v129[v133] = v134;
    v133 = *v117 + 1;
    if (__OFADD__(*v117, 1))
    {
      break;
    }

    *v117 = v133;
    if (!--v131)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_117:
  sub_10000BBC4(v119, _s5BoardVMa);
  swift_unknownObjectRelease();
  sub_10000BBC4(v64, type metadata accessor for CRLBoardIdentifier);
  LODWORD(v347) = 0;
  v348 = 0;
  v155 = 0;
  v156 = 0;
  v160 = 0;
  v154 = 1;
  LODWORD(v349) = 1;
  v162 = v343;
  v159 = v344;
  v158 = v340;
  v157 = v337;
  v161 = v338;
LABEL_126:
  v286 = v331;
  sub_1008F36E4(v159, v162);
  v287 = &v286[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxLastEditedTimestampText];
  *v287 = v158;
  v287[1] = v161;

  v288 = &v286[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName];
  v289 = *&v286[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName];
  v290 = *&v286[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName + 8];
  *v288 = v157;
  v288[1] = v118;
  sub_1008F37B4(v289, v290);

  v291 = &v286[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_folderName];
  *v291 = v155;
  v291[1] = v156;

  v292 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController;
  v293 = *&v286[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController];
  if (!v293)
  {
    goto LABEL_143;
  }

  v294 = v348;
  [*(v293 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setImage:v348];

  v295 = v160;
  sub_1008F39E4(v160);
  v286[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_boardAccessState] = v349;
  v296 = *&v286[v292];
  if (!v296)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v297 = v286;
  v298 = v296;
  sub_100EE1210();

  v299 = v347;
  v297[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_canShowFavoriteButton] = v347;
  v300 = *&v297[v292];
  if (!v300)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  [*(v300 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton) setHidden:v299 ^ 1u];
  v297[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_isFavorite] = v346;
  sub_1008F38F0();
  v297[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_dimsThumbnail] = v154;
  v301 = *&v297[v292];
  if (v301)
  {
    *(v301 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dimsThumbnail) = v154;
    v302 = 1.0;
    if (v154)
    {
      v302 = 0.5;
    }

    [*(v301 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setAlpha:v302];
    v303 = type metadata accessor for TaskPriority();
    v304 = v336;
    (*(*(v303 - 8) + 56))(v336, 1, 1, v303);
    type metadata accessor for MainActor();
    v305 = v297;
    v306 = v342;
    swift_unknownObjectRetain();
    v307 = static MainActor.shared.getter();
    v308 = swift_allocObject();
    v308[2] = v307;
    v308[3] = &protocol witness table for MainActor;
    v308[4] = v305;
    v308[5] = &off_10188CE10;
    v308[6] = v306;
    v308[7] = v332;
    sub_10064191C(0, 0, v304, &unk_1014B98E0, v308);

    goto LABEL_133;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

id sub_100F73970(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = a1;
  v53 = a4;
  v6 = type metadata accessor for UUID();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v51 - v9;
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  v16 = _s5BoardVMa(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v51 - v20;
  v21 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v21 - 8);
  v23 = &v51 - v22;
  v24 = sub_1005B981C(&qword_101A23CF8, &qword_1014B98F8);
  __chkstk_darwin(v24 - 8);
  v26 = &v51 - v25;
  v28 = *(v27 + 56);
  sub_10000BE14(a2, &v51 - v25, &unk_101A15B20, &qword_10146F1E0);
  sub_1000652DC(a3, &v26[v28], type metadata accessor for CRLBoardLibraryViewModel.Item);
  v29 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  if ((*(*(v29 - 8) + 48))(v26, 1, v29) == 1)
  {
    goto LABEL_16;
  }

  sub_10000BE14(v26, v23, &unk_101A15B20, &qword_10146F1E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = type metadata accessor for CRLBoardLibraryViewModel.Item;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v32 = swift_getEnumCaseMultiPayload();
    v31 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    if (v32 == 1)
    {
      sub_100065D50(v23, v15, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100065D50(&v26[v28], v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v33 = v55;
      sub_10003E264(v55);
      v34 = v56;
      sub_10003E264(v56);
      v35 = static UUID.== infix(_:_:)();
      v36 = *(v57 + 8);
      v37 = v34;
      v38 = v58;
      v36(v37, v58);
      v36(v33, v38);
      sub_10000BBC4(v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v39 = v15;
      v40 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v42 = swift_getEnumCaseMultiPayload();
  v31 = _s5BoardVMa;
  if (v42 != 2)
  {
LABEL_15:
    sub_10000BBC4(v23, v31);
LABEL_16:
    v49 = &qword_101A23CF8;
    v50 = &qword_1014B98F8;
LABEL_17:
    sub_10000CAAC(v26, v49, v50);
    return 0;
  }

  v43 = v54;
  sub_100065D50(v23, v54, _s5BoardVMa);
  sub_100065D50(&v26[v28], v18, _s5BoardVMa);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_10000BBC4(v18, _s5BoardVMa);
    sub_10000BBC4(v43, _s5BoardVMa);
    v49 = &unk_101A15B20;
    v50 = &qword_10146F1E0;
    goto LABEL_17;
  }

  v44 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v45 = *(v43 + v44);
  v46 = *(v43 + v44 + 8);
  v47 = &v18[v44];
  if (v45 == *v47 && v46 == *(v47 + 1))
  {
    sub_10000BBC4(v18, _s5BoardVMa);
    sub_10000BBC4(v43, _s5BoardVMa);
    result = sub_10000CAAC(v26, &unk_101A15B20, &qword_10146F1E0);
    goto LABEL_13;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_10000BBC4(v18, _s5BoardVMa);
  v39 = v43;
  v40 = _s5BoardVMa;
LABEL_6:
  sub_10000BBC4(v39, v40);
  result = sub_10000CAAC(v26, &unk_101A15B20, &qword_10146F1E0);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v48 = *(v52 + *v53);
  if (v48)
  {
    return [*(v48 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) image];
  }

  __break(1u);
  return result;
}

uint64_t sub_100F73F4C(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          if (a4 != 3 || a3 != 1)
          {
            return 0;
          }
        }

        else if (a4 != 3 || a3 != 2)
        {
          return 0;
        }
      }

      else if (a4 != 3 || a3)
      {
        return 0;
      }

      return 1;
    }

    if (a4 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!a2)
    {
      if (!a4)
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (a4 == 1)
    {
LABEL_9:
      sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
      return static NSObject.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

void sub_100F74038(uint64_t a1, void *a2)
{
  v47 = _convertErrorToNSError(_:)();
  if ([v47 code] == 3072)
  {
  }

  else
  {
    sub_100006370(0, &qword_1019F6EE0, OS_os_log_ptr);
    v3 = static OS_os_log.default.getter();
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v46 = a2;
    v7 = v6;
    *(inited + 56) = &type metadata for String;
    v8 = sub_1000053B0();
    *(inited + 64) = v8;
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v9 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v9, "Sharing failed with error: %@", 29, 2, inited);

    swift_setDeallocating();
    sub_100005070((inited + 32));
    v45 = objc_opt_self();
    v10 = [v45 mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = [v45 mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = static OS_os_log.default.getter();
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146C4D0;
    *(v24 + 32) = v44;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v8;
    *(v24 + 40) = v15;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v8;
    *(v24 + 72) = v20;
    *(v24 + 80) = v22;
    swift_getErrorValue();

    v25 = Error.localizedDescription.getter();
    *(v24 + 136) = &type metadata for String;
    *(v24 + 144) = v8;
    *(v24 + 112) = v25;
    *(v24 + 120) = v26;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v23, &_mh_execute_header, v27, "Alert: %@ %@ With error: %@", 27, 2, v24);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v28 = String._bridgeToObjectiveC()();

    v29 = String._bridgeToObjectiveC()();

    v30 = [objc_opt_self() alertControllerWithTitle:v28 message:v29 preferredStyle:1];

    v31 = [v45 mainBundle];
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = String._bridgeToObjectiveC()();

    v36 = [objc_opt_self() actionWithTitle:v35 style:0 handler:0];

    [v30 addAction:v36];
    v37 = [v46 presentedViewController];
    if (v37 && (v38 = v37, objc_opt_self(), v39 = swift_dynamicCastObjCClass(), v38, v39))
    {
      v40 = swift_allocObject();
      *(v40 + 16) = v46;
      *(v40 + 24) = v30;
      aBlock[4] = sub_100AB9F58;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018A90A0;
      v41 = _Block_copy(aBlock);
      v42 = v46;
      v43 = v30;

      [v42 dismissViewControllerAnimated:1 completion:v41];

      _Block_release(v41);
    }

    else
    {
      [v46 presentViewController:v30 animated:1 completion:0];
    }
  }
}

uint64_t sub_100F74690(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100F5EED4(a1, v7, v4, v5, v6);
}

uint64_t sub_100F7475C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v8 = *(v6 + 72);
  while ((sub_1012CD6CC(v7, a2) & 1) == 0)
  {
    ++v5;
    v7 += v8;
    if (v2 == v5)
    {
      return 0;
    }
  }

  return v5;
}

void sub_100F74844()
{
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_thumbnailProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_pendingBoardIdentifiersToRefresh) = _swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_storeMetadataObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_iCloudStatusObserver);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController) = 0;
  v3 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  v4 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections) = _swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___layoutBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___editModeToolbarButtonToDuplicateSelectedItems) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_defaultTitleForToolbarItemToSelectAllOrNone);
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *v5 = v11;
  v5[1] = v13;
  v14 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_alternateTitleForToolbarItemToSelectAllOrNone);
  v15 = [v6 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *v14 = v19;
  v14[1] = v21;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100F74BF0()
{
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_thumbnailProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_pendingBoardIdentifiersToRefresh) = _swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_storeMetadataObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_iCloudStatusObserver);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController) = 0;
  v3 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  v4 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections) = _swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___layoutBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___editModeToolbarButtonToDuplicateSelectedItems) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_defaultTitleForToolbarItemToSelectAllOrNone);
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *v5 = v11;
  v5[1] = v13;
  v14 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_alternateTitleForToolbarItemToSelectAllOrNone);
  v15 = [v6 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *v14 = v19;
  v14[1] = v21;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_100F74F9C(uint64_t a1)
{
  v1 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v53 - v2;
  v4 = sub_10005AFE0();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v5 = type metadata accessor for UUID();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_10000CAAC(v3, &qword_1019F6990, &qword_10146D2F0);
  if (v6 == 1)
  {
    v55 = 1;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    type metadata accessor for IndexPath();
    sub_10006852C(&qword_101A23D10, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v8 = inited;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    *(inited + 56) = &type metadata for String;
    v12 = sub_1000053B0();
    *(inited + 32) = v9;
    v57 = v12;
    v58 = inited + 32;
    *(inited + 64) = v12;
    *(inited + 40) = v11;
    v54 = objc_opt_self();
    LODWORD(v13) = [v54 _atomicIncrementAssertCount];
    v59 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v59, "No item for index path: %@", 26, 2u);
    StaticString.description.getter("collectionView(_:shouldBeginMultipleSelectionInteractionAt:)", 60, 2);
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v19 = static OS_os_log.crlAssert;
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_10146CA70;
      *(v20 + 56) = &type metadata for Int32;
      *(v20 + 64) = &protocol witness table for Int32;
      *(v20 + 32) = v13;
      v21 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v20 + 96) = v21;
      v22 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      v23 = v56;
      *(v20 + 72) = v56;
      v24 = v57;
      *(v20 + 136) = &type metadata for String;
      *(v20 + 144) = v24;
      *(v20 + 104) = v22;
      *(v20 + 112) = v16;
      *(v20 + 120) = v18;
      *(v20 + 176) = &type metadata for UInt;
      *(v20 + 184) = &protocol witness table for UInt;
      *(v20 + 152) = 1610;
      v25 = v59;
      *(v20 + 216) = v21;
      *(v20 + 224) = v22;
      *(v20 + 192) = v25;
      v26 = v23;
      v27 = v25;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v20);
      swift_setDeallocating();
      v57 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v29, "No item for index path: %@", 26, 2, v8);

      type metadata accessor for __VaListBuilder();
      v30 = swift_allocObject();
      v30[2] = 8;
      v30[3] = 0;
      v31 = v30 + 3;
      v30[4] = 0;
      v30[5] = 0;
      v18 = *(v8 + 16);
      if (!v18)
      {
LABEL_28:
        v48 = __VaListBuilder.va_list()();
        StaticString.description.getter("collectionView(_:shouldBeginMultipleSelectionInteractionAt:)", 60, 2);
        v49 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
        v50 = String._bridgeToObjectiveC()();

        StaticString.description.getter("No item for index path: %@", 26, 2);
        v51 = String._bridgeToObjectiveC()();

        [v54 handleFailureInFunction:v49 file:v50 lineNumber:1610 isFatal:0 format:v51 args:v48];

        swift_setDeallocating();
        swift_arrayDestroy();
        v6 = v55;
        return v6 != 1;
      }

      v32 = 0;
      while (1)
      {
        v33 = (v58 + 40 * v32);
        v16 = v33[3];
        LODWORD(v13) = sub_100020E58(v33, v16);
        v34 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v35 = *v31;
        v36 = *(v34 + 16);
        v37 = __OFADD__(*v31, v36);
        v38 = *v31 + v36;
        if (v37)
        {
          break;
        }

        v13 = v30[4];
        if (v13 >= v38)
        {
          goto LABEL_20;
        }

        if (v13 + 0x4000000000000000 < 0)
        {
          goto LABEL_32;
        }

        v16 = v30[5];
        if (2 * v13 > v38)
        {
          v38 = 2 * v13;
        }

        v30[4] = v38;
        if ((v38 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_33;
        }

        v39 = v8;
        v40 = v34;
        v41 = swift_slowAlloc();
        v42 = v41;
        v30[5] = v41;
        if (v16)
        {
          if (v41 != v16 || v41 >= &v16[8 * v35])
          {
            memmove(v41, v16, 8 * v35);
          }

          LODWORD(v13) = v30;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v34 = v40;
          v8 = v39;
LABEL_20:
          v42 = v30[5];
          if (!v42)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v34 = v40;
        v8 = v39;
        if (!v42)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v44 = *(v34 + 16);
        if (v44)
        {
          v45 = (v34 + 32);
          v46 = *v31;
          while (1)
          {
            v47 = *v45++;
            *&v42[8 * v46] = v47;
            v46 = *v31 + 1;
            if (__OFADD__(*v31, 1))
            {
              break;
            }

            *v31 = v46;
            if (!--v44)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v32 == v18)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  return v6 != 1;
}

id sub_100F75648(void *a1, void *a2)
{
  v98 = a1;
  v102 = type metadata accessor for IndexPath();
  v97 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = v4;
  v96 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s5BoardVMa(0);
  v103 = *(v5 - 8);
  __chkstk_darwin(v5);
  v99 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_1019FA3E0, &unk_101474F20);
  __chkstk_darwin(v7 - 8);
  v9 = &v91 - v8;
  v10 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v10 - 8);
  v12 = &v91 - v11;
  v101 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v94 = *(v101 - 1);
  __chkstk_darwin(v101);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v91 - v16);
  __chkstk_darwin(v18);
  v20 = &v91 - v19;
  v104 = v2;
  v21 = sub_10005AFE0();
  v22 = a2;
  sub_10079330C(a2, v12);

  v23 = _s4NodeVMa(0);
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) != 1)
  {
LABEL_28:
    v93 = v22;
    v59 = v102;
    sub_1000652DC(v12, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000BBC4(v12, _s4NodeVMa);
    sub_100065D50(v17, v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v60 = v103[7];
    v100 = v9;
    v92 = v5;
    v60();
    type metadata accessor for CRLBoardLibrary();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v62 = v61;
      sub_1000652DC(v20, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v63 = v99;
        v64 = sub_100065D50(v14, v99, _s5BoardVMa);
        v91 = &v91;
        v65 = *(*(v62 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
        __chkstk_darwin(v64);
        *(&v91 - 2) = v63;
        swift_unknownObjectRetain();

        v66 = sub_101107CA8(sub_100F794EC, (&v91 - 4), v65);
        swift_unknownObjectRelease();

        v67 = v100;
        sub_10000CAAC(v100, &unk_1019FA3E0, &unk_101474F20);
        sub_100065D50(v63, v67, _s5BoardVMa);
        v68 = v92;
        (v60)(v67, 0, 1, v92);
        v69 = v104;
LABEL_34:
        v9 = v100;
        if ((v103[6])(v100, 1, v68) || v9[*(v68 + 60)] != 1)
        {
          v90 = sub_100F44F1C(v20, v93, v66);
        }

        else
        {
          if (!v66)
          {
            goto LABEL_42;
          }

          v76 = v96;
          v75 = v97;
          (*(v97 + 16))(v96, v93, v59);
          v77 = (*(v75 + 80) + 24) & ~*(v75 + 80);
          v78 = swift_allocObject();
          v79 = v98;
          *(v78 + 16) = v98;
          v80 = v78;
          (*(v75 + 32))(v78 + v77, v76, v59);
          sub_1005B981C(&qword_101A23C10, &unk_10146F210);
          v81 = (*(v94 + 80) + 32) & ~*(v94 + 80);
          v82 = swift_allocObject();
          v104 = v20;
          v83 = v82;
          *(v82 + 16) = xmmword_10146C6B0;
          sub_1000652DC(v104, v82 + v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v66 = v66;
          v84 = v79;
          sub_100E93FF4(v83);
          swift_setDeallocating();
          sub_10000BBC4(v83 + v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
          swift_deallocClassInstance();
          sub_10006852C(&qword_1019F66A0, type metadata accessor for CRLBoardLibraryViewModel.Item, aY_45);
          isa = Set._bridgeToObjectiveC()().super.isa;

          v86 = swift_allocObject();
          *(v86 + 16) = v69;
          *(v86 + 24) = v66;
          v103 = objc_opt_self();
          v109 = sub_100F77F9C;
          v110 = v80;
          v105 = _NSConcreteStackBlock;
          v106 = *"";
          v107 = sub_1006499AC;
          v108 = &unk_1018A9A00;
          v87 = _Block_copy(&v105);
          v88 = v69;

          v109 = sub_100F77FB4;
          v110 = v86;
          v9 = v100;
          v105 = _NSConcreteStackBlock;
          v106 = *"";
          v107 = sub_1006465C4;
          v108 = &unk_1018A9A28;
          v89 = _Block_copy(&v105);

          v90 = [v103 configurationWithIdentifier:isa previewProvider:v87 actionProvider:v89];

          v20 = v104;

          _Block_release(v89);
          _Block_release(v87);
        }

LABEL_40:
        sub_10000BBC4(v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000CAAC(v9, &unk_1019FA3E0, &unk_101474F20);
        return v90;
      }

      sub_10000BBC4(v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    v66 = 0;
    v69 = v104;
    v68 = v92;
    goto LABEL_34;
  }

  sub_10000CAAC(v12, &unk_1019FB770, &unk_10146FA30);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  sub_10006852C(&qword_101A23D10, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  v27 = v26;
  *(inited + 56) = &type metadata for String;
  v28 = sub_1000053B0();
  *(inited + 32) = v25;
  v9 = (inited + 32);
  v103 = v28;
  *(inited + 64) = v28;
  *(inited + 40) = v27;
  v101 = objc_opt_self();
  LODWORD(v29) = [v101 _atomicIncrementAssertCount];
  v105 = [objc_allocWithZone(NSString) init];
  v104 = inited;
  sub_100604538(inited, &v105, "No item for index path: %@", 26, 2u);
  StaticString.description.getter("collectionView(_:contextMenuConfigurationForItemAt:point:)", 58, 2);
  v102 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v30 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v32;

  if (qword_1019F20A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v33 = static OS_os_log.crlAssert;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_10146CA70;
  *(v34 + 56) = &type metadata for Int32;
  *(v34 + 64) = &protocol witness table for Int32;
  *(v34 + 32) = v29;
  v35 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v34 + 96) = v35;
  v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  v37 = v102;
  *(v34 + 72) = v102;
  v38 = v103;
  *(v34 + 136) = &type metadata for String;
  *(v34 + 144) = v38;
  *(v34 + 104) = v36;
  *(v34 + 112) = v20;
  *(v34 + 120) = v5;
  *(v34 + 176) = &type metadata for UInt;
  *(v34 + 184) = &protocol witness table for UInt;
  *(v34 + 152) = 1627;
  v39 = v105;
  *(v34 + 216) = v35;
  *(v34 + 224) = v36;
  *(v34 + 192) = v39;
  v40 = v37;
  v41 = v39;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v34);
  swift_setDeallocating();
  v103 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v43 = static os_log_type_t.error.getter();
  v44 = v104;
  sub_100005404(v33, &_mh_execute_header, v43, "No item for index path: %@", 26, 2, v104);

  type metadata accessor for __VaListBuilder();
  v22 = swift_allocObject();
  v22[2] = 8;
  v22[3] = 0;
  v17 = v22 + 3;
  v22[4] = 0;
  v22[5] = 0;
  v5 = *(v44 + 16);
  if (v5)
  {
    v12 = 0;
    while (1)
    {
      v45 = &v9[40 * v12];
      v20 = *(v45 + 4);
      LODWORD(v29) = sub_100020E58(v45, *(v45 + 3));
      v46 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v14 = *v17;
      v47 = *(v46 + 16);
      v48 = __OFADD__(*v17, v47);
      v49 = *v17 + v47;
      if (v48)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v29 = v22[4];
      if (v29 >= v49)
      {
        goto LABEL_20;
      }

      if (v29 + 0x4000000000000000 < 0)
      {
        goto LABEL_44;
      }

      v20 = v22[5];
      if (2 * v29 > v49)
      {
        v49 = 2 * v29;
      }

      v22[4] = v49;
      if ((v49 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_45;
      }

      v50 = v9;
      v51 = v46;
      v52 = swift_slowAlloc();
      v53 = v52;
      v22[5] = v52;
      if (v20)
      {
        break;
      }

      v46 = v51;
      v9 = v50;
      if (!v53)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v55 = *(v46 + 16);
      if (v55)
      {
        v56 = (v46 + 32);
        v57 = *v17;
        while (1)
        {
          v58 = *v56++;
          *&v53[8 * v57] = v58;
          v57 = *v17 + 1;
          if (__OFADD__(*v17, 1))
          {
            break;
          }

          *v17 = v57;
          if (!--v55)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_42:
        v90 = 0;
        goto LABEL_40;
      }

LABEL_5:

      if (++v12 == v5)
      {
        goto LABEL_31;
      }
    }

    if (v52 != v20 || v52 >= &v20[8 * v14])
    {
      memmove(v52, v20, 8 * v14);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v46 = v51;
    v9 = v50;
LABEL_20:
    v53 = v22[5];
    if (!v53)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_31:
  v70 = __VaListBuilder.va_list()();
  StaticString.description.getter("collectionView(_:contextMenuConfigurationForItemAt:point:)", 58, 2);
  v71 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2);
  v72 = String._bridgeToObjectiveC()();

  StaticString.description.getter("No item for index path: %@", 26, 2);
  v73 = String._bridgeToObjectiveC()();

  [v101 handleFailureInFunction:v71 file:v72 lineNumber:1627 isFatal:0 format:v73 args:v70];

  swift_setDeallocating();
  swift_arrayDestroy();
  return 0;
}

void sub_100F7649C(void *a1)
{
  v3 = *(sub_100070F30() + 48);

  if (*(v3 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(2uLL), NSObject.hash(into:)(), v4 = Hasher._finalize()(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v23 = v1;
    v7 = ~v5;
    while (1)
    {
      v8 = *(v3 + 48) + 16 * v6;
      if (*(v8 + 8) == 2)
      {
        v9 = *v8;
        sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
        v10 = v9;
        v11 = static NSObject.== infix(_:_:)();
        sub_1007A98C8(v9, 2u);
        if (v11)
        {
          break;
        }
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v12 = *(v23 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter);

    sub_100F5FB78(a1, 2u, 0);
    v13 = *(v12 + 48);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(2uLL);

    NSObject.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      while (1)
      {
        v18 = *(v13 + 48) + 16 * v16;
        if (*(v18 + 8) == 2)
        {
          v19 = *v18;
          v20 = *v18;
          v21 = static NSObject.== infix(_:_:)();
          sub_1007A98C8(v19, 2u);
          if (v21)
          {
            break;
          }
        }

        v16 = (v16 + 1) & v17;
        if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_100E85E84();
      }

      sub_1007A98C8(*(*(v13 + 48) + 16 * v16), *(*(v13 + 48) + 16 * v16 + 8));
      sub_100F65BD4(v16);
    }

LABEL_15:
    v22 = *(v12 + 48);

    sub_100F5DE4C(v13);
    *(v12 + 48) = v13;

    sub_100F5E170(v22);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_100F767A0(void *a1, int a2)
{
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37[-v6];
  v8 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37[-v9];
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v15);
  v18 = &v37[-v17];
  if (!a1)
  {
    (*(v12 + 56))(v10, 1, 1, v11, v16);
    return sub_10000CAAC(v10, &unk_1019F52D0, &unk_10147C1C0);
  }

  v39 = v7;
  v40 = v2;
  v19 = [a1 recordID];
  v20 = [v19 zoneID];

  sub_100EE9190(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CAAC(v10, &unk_1019F52D0, &unk_10147C1C0);
  }

  v38 = a2;
  sub_100065D50(v10, v18, type metadata accessor for CRLBoardIdentifier);
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v23 = UUID.uuidString.getter();
  v25 = v24;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v23;
  *(inited + 40) = v25;
  v26 = static os_log_type_t.default.getter();
  sub_100005404(v21, &_mh_execute_header, v26, "Stopped sharing board: %@", 25, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  sub_100F39EE8(v18);
  type metadata accessor for CRLBoardLibrary();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = type metadata accessor for TaskPriority();
    v30 = v39;
    (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
    sub_1000652DC(v18, v14, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain_n();
    v31 = a1;
    v32 = static MainActor.shared.getter();
    v33 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v28;
    sub_100065D50(v14, v34 + v33, type metadata accessor for CRLBoardIdentifier);
    v35 = v34 + ((v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v35 = a1;
    v35[8] = v38 & 1;
    sub_100796D54(0, 0, v30, &unk_1014B97E0, v34);
    swift_unknownObjectRelease();
  }

  return sub_10000BBC4(v18, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_100F76C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100F591CC(a1, v4, v5, v7, v6);
}

uint64_t sub_100F76D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100F59738(a1, v4, v5, v7, v6);
}

uint64_t sub_100F76E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100F55E4C(a1, v4, v5, v6, v7, v8, v9, v10);
}

double sub_100F76F60()
{
  v1 = *(sub_1005B981C(&unk_101A23860, qword_10147BC00) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_100F584D4(v2, v3, v4, v5);
}

uint64_t sub_100F76FD4(uint64_t a1)
{
  v4 = *(sub_1005B981C(&unk_101A23860, qword_10147BC00) - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100F58724(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_100F770EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F59EF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100F7724C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100F772DC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_100F622A4(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100F77378(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v4 = *(v1 + 16);
  v5 = sub_1012CD6CC(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), a1);
  return v4(v5 & 1);
}

uint64_t sub_100F77458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1005B981C(&qword_101A23CA0, &qword_1014B98C0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1005B981C(&qword_101A23C98, &qword_1014B98B8) - 8);
  v11 = *(v3 + 16);
  v12 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_100F62E04(a1, a2, a3, v11, v3 + v8, v12);
}

uint64_t sub_100F77578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1012C9ED8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100F7764C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10002D4C8;

  return sub_1012C989C(v11, a1, v12, v13, v1 + v6, v10, v14, v15);
}

uint64_t sub_100F777A8(uint64_t a1)
{
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002D4C8;

  return sub_1012C8E50(v9, a1, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t sub_100F778D8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100F77920()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100F77A48()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100F77F38()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_100F467D8(v1, v2);
}

void sub_100F77FBC()
{
  v1 = [*(v0 + 16) actionBlock];
  v1[2]();

  _Block_release(v1);
}

uint64_t sub_100F78038(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

UIMenu sub_100F780B0(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100F50D20(a1, v5, v1 + v4, v6);
}

uint64_t sub_100F78150(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100F5409C(a1, a2, v6, v7, v8);
}

void sub_100F782D8(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_100F5B1F0(a1, a2, v6, v7);
}

uint64_t sub_100F7835C(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100F5C50C(a1, v1 + v4, v6, v7);
}

uint64_t sub_100F78404(uint64_t a1)
{
  v3 = *(_s5BoardVMa(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v8 = *(v1 + v5 + 8);
  v13 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100F5C7FC(a1, v15, v14, v1 + v4, v13, v8, v9, v10);
}

uint64_t sub_100F786AC(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F4F368(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100F787A4(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F548EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100F788A4(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F4AA40(a1, v6, v7, v8, v1 + v5);
}

double sub_100F789A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_100F4F03C(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100F78A40(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100F4F2AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100F78B50(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_100F78C04(void (*a1)(void, __n128), void (*a2)(void), uint64_t a3)
{
  swift_unknownObjectRelease();
  (a1)(*(v3 + 32));
  a2(*(v3 + 40));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100F78C70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F59B64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100F78DB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100F38F3C(a1, v4, v5, v6);
}

uint64_t sub_100F78E64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100F38D54(a1, v4, v5, v6);
}

uint64_t sub_100F78F30(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100F78F90()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100F795BC(void *a1)
{
  v2 = [a1 accessibilityContrast];
  v3 = [a1 userInterfaceStyle];
  v4 = objc_opt_self();
  v5 = v3 == 2 && v2 == 1;
  v6 = &selRef_blackColor;
  if (!v5)
  {
    v6 = &selRef_whiteColor;
  }

  v7 = [v4 *v6];

  return v7;
}

double sub_100F796E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  return *v3;
}

double sub_100F79734(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void sub_100F79788(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v11 = (a1 + *a7);
  swift_beginAccess();
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
}

void sub_100F797FC(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = (v5 + *a1);
  swift_beginAccess();
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
}

id CRLiOSPageTitleButton.init(title:insets:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v40[1] = a1;
  v40[2] = a2;
  v11 = sub_1005B981C(&unk_1019F4CD0, &unk_10146CEE0);
  __chkstk_darwin(v11 - 8);
  v13 = v40 - v12;
  v14 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UIButton.Configuration();
  v18 = *(v41 - 8);
  __chkstk_darwin(v41);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_selectedTitleColor;
  v22 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100F795BC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1005B9BD8;
  aBlock[3] = &unk_1018AA270;
  v23 = _Block_copy(aBlock);
  v24 = [v22 initWithDynamicProvider:v23];
  _Block_release(v23);

  *&v6[v21] = v24;
  v25 = &v6[OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_hitTestingInsets];
  v26 = *&UIEdgeInsetsZero.bottom;
  *v25 = *&UIEdgeInsetsZero.top;
  *(v25 + 1) = v26;
  v27 = &v6[OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_insets];
  *v27 = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v28 = type metadata accessor for CRLiOSPageTitleButton();
  v42.receiver = v6;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  static UIButton.Configuration.plain()();
  UIButton.Configuration.title.setter();
  v30 = *(v15 + 104);
  v30(v17, enum case for UIButton.Configuration.CornerStyle.large(_:), v14);
  UIButton.Configuration.cornerStyle.setter();
  if (_UISolariumEnabled())
  {
    v30(v17, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v14);
    UIButton.Configuration.cornerStyle.setter();
  }

  v31 = v41;
  (*(v18 + 16))(v13, v20, v41);
  (*(v18 + 56))(v13, 0, 1, v31);
  v32 = v29;
  UIButton.configuration.setter();

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v33 = [v32 layer];
    [v33 setCornerRadius:7.5];
  }

  [v32 setPointerInteractionEnabled:1];
  *(swift_allocObject() + 16) = v32;
  v34 = v32;
  UIButton.pointerStyleProvider.setter();
  v35 = v34;
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v35 setShowsLargeContentViewer:1];
  v36 = [objc_opt_self() sharedHelper];
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101465920;
  *(v37 + 32) = v35;
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 startHandlingTouchUpDownAnimationsForControl:v35 withViews:isa];

  (*(v18 + 8))(v20, v31);
  return v35;
}

id CRLiOSPageTitleButton.__deallocating_deinit()
{
  v1 = [objc_opt_self() sharedHelper];
  [v1 stopHandlingTouchUpDownAnimationsForControl:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CRLiOSPageTitleButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id CRLiOSAutoSizingHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

Swift::Void __swiftcall CRLiOSPageTitleButton.setAttributedTitle(_:for:)(NSAttributedString_optional _, UIControlState a2)
{
  v3 = *&_.is_nil;
  if (_.value.super.isa)
  {
    v4 = [(objc_class *)_.value.super.isa string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v2 setTitle:v5 forState:v3];
}

Swift::Void __swiftcall CRLiOSPageTitleButton.updateConfiguration()()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F4CE0, &qword_10146F270);
  __chkstk_darwin(v2 - 8);
  v36 = &v36 - v3;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1005B981C(&unk_1019F4CD0, &unk_10146CEE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v36 - v17;
  if ([v0 isSelected])
  {
    static UIButton.Configuration.filled()();
  }

  else if ([v0 isHighlighted])
  {
    static UIButton.Configuration.tinted()();
  }

  else
  {
    static UIButton.Configuration.plain()();
  }

  UIButton.configuration.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100F7AFD8(v10);
    if (!_UISolariumEnabled())
    {
LABEL_8:
      v19 = &selRef_tintColor;
      v20 = v0;
      goto LABEL_11;
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    UIButton.Configuration.title.getter();
    UIButton.Configuration.title.setter();
    UIButton.Configuration.cornerStyle.getter();
    UIButton.Configuration.cornerStyle.setter();
    sub_1004A48FC();
    swift_beginAccess();
    UIButton.Configuration.contentInsets.setter();
    (*(v12 + 8))(v14, v11);
    if (!_UISolariumEnabled())
    {
      goto LABEL_8;
    }
  }

  v20 = objc_opt_self();
  v19 = &selRef_labelColor;
LABEL_11:
  v21 = [v20 *v19];
  v22 = [v0 isSelected];
  v23 = v21;
  if (v22)
  {
    v23 = *&v0[OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_selectedTitleColor];
  }

  v24 = v23;
  v25 = _UISolariumEnabled();
  v26 = objc_opt_self();
  v27 = &UIFontWeightMedium;
  if (!v25)
  {
    v27 = &UIFontWeightRegular;
  }

  v28 = [v26 systemFontOfSize:14.0 weight:*v27];
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v24;
  v30 = v28;
  v31 = v24;
  v32 = v36;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v33 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  (*(v12 + 16))(v7, v18, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  UIButton.configuration.setter();
  UIButton.Configuration.title.getter();
  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
  }

  else
  {
    v35 = 0;
  }

  [v1 setAccessibilityLabel:v35];

  (*(v12 + 8))(v18, v11);
}

uint64_t sub_100F7A6A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AttributeContainer();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  sub_1005D9028();
  v9 = a2;
  AttributeContainer.subscript.setter();
  sub_100F7B048();
  v10 = a3;
  return AttributeContainer.subscript.setter();
}

id CRLiOSPageTitleButton.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  if ([v3 isEnabled] && (objc_msgSend(v3, "isHidden") & 1) == 0)
  {
    [v3 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = &v3[OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_hitTestingInsets];
    swift_beginAccess();
    v19.origin.x = sub_100BDDE50(v9, v11, v13, v15, *v16, v16[1]);
    v18.x = a2;
    v18.y = a3;
    return CGRectContainsPoint(v19, v18);
  }

  else
  {
    v17.receiver = v3;
    v17.super_class = type metadata accessor for CRLiOSPageTitleButton();
    return objc_msgSendSuper2(&v17, "pointInside:withEvent:", a1, a2, a3);
  }
}

id CRLiOSPageTitleButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t sub_100F7AAF0()
{
  v0 = sub_1005B981C(&qword_101A23DE8, &qword_1014B9A48);
  __chkstk_darwin(v0 - 8);
  v39 = &v36 - v1;
  v38 = type metadata accessor for UIPointerShape();
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = UIPointerEffect.preview.getter();
  v12 = sub_1005B981C(&qword_101A23DF0, &qword_1014B9A50);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  *v10 = v11;
  v16 = enum case for UIPointerEffect.TintMode.underlay(_:);
  v17 = type metadata accessor for UIPointerEffect.TintMode();
  (*(*(v17 - 8) + 104))(&v10[v13], v16, v17);
  v10[v14] = 0;
  v10[v15] = 0;
  v18 = v5;
  (*(v6 + 104))(v10, enum case for UIPointerEffect.hover(_:), v5);
  v19 = v11;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v21 = &selRef_frame;
  if (!IsReduceMotionEnabled)
  {
    v21 = &selRef_bounds;
  }

  [v36 *v21];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = _UISolariumEnabled();
  v31 = v29;
  if ((v30 & 1) == 0)
  {
    static UIPointerShape.defaultCornerRadius.getter();
  }

  *v4 = v23;
  v4[1] = v25;
  v4[2] = v27;
  v4[3] = v29;
  v4[4] = v31;
  v32 = v38;
  (*(v2 + 104))(v4, enum case for UIPointerShape.roundedRect(_:), v38);
  sub_100006370(0, &qword_101A23DF8, UIPointerStyle_ptr);
  (*(v6 + 16))(v37, v10, v18);
  v33 = v39;
  (*(v2 + 16))(v39, v4, v32);
  (*(v2 + 56))(v33, 0, 1, v32);
  v34 = UIPointerStyle.init(effect:shape:)();

  (*(v2 + 8))(v4, v32);
  (*(v6 + 8))(v10, v18);
  return v34;
}

void _s8Freeform21CRLiOSPageTitleButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_selectedTitleColor;
  v2 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100F795BC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1005B9BD8;
  aBlock[3] = &unk_1018AA2E8;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithDynamicProvider:v3];
  _Block_release(v3);

  *(v0 + v1) = v4;
  v5 = (v0 + OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_hitTestingInsets);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100F7AFD8(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F4CD0, &unk_10146CEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100F7B048()
{
  result = qword_101A23DE0;
  if (!qword_101A23DE0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AttributeScopes.UIKitAttributes.ForegroundColorAttribute, &type metadata for AttributeScopes.UIKitAttributes.ForegroundColorAttribute, v0, v1);
    atomic_store(result, &qword_101A23DE0);
  }

  return result;
}

id sub_100F7B108(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLSharingStringsProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100F7B160()
{
  v6[3] = &type metadata for CRLAppleAccountFeatureFlags;
  v6[4] = sub_1008B57B8();
  isFeatureEnabled(_:)();
  sub_100005070(v6);
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100F7B278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = v1, [v2 copy], _bridgeAnyObjectToAny(_:)(), v2, swift_unknownObjectRelease(), sub_100F7B8DC(), (swift_dynamicCast() & 1) != 0) && (v3 = objc_msgSend(v18, "owner"), v18, v4 = sub_100CE7CBC(0), v6 = v5, v3, v6))
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10146C6B0;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000053B0();
    *(v11 + 32) = v4;
    *(v11 + 40) = v6;
    v12 = String.init(format:_:)();
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v12;
}

uint64_t sub_100F7B574(unint64_t a1)
{
  if (a1 >= 2)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }

  return result;
}

uint64_t sub_100F7B674(unint64_t a1)
{
  if (a1 > 1)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }

  return result;
}

uint64_t sub_100F7B790(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C6B0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000053B0();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = String.init(format:_:)();

  return v9;
}

unint64_t sub_100F7B8DC()
{
  result = qword_1019F52C0;
  if (!qword_1019F52C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F52C0);
  }

  return result;
}

uint64_t sub_100F7B928@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 64;
    do
    {
      v5 = *(v4 - 32);
      v4 += 40;
      swift_bridgeObjectRetain_n();

      sub_1006370B0(v5);

      sub_100636CB4(v6);

      sub_100636CB4(v7);

      sub_10063718C(v8);

      sub_10063718C(v9);

      --v3;
    }

    while (v3);
  }

  *a2 = _swiftEmptySetSingleton;
  a2[1] = _swiftEmptySetSingleton;
  a2[2] = _swiftEmptySetSingleton;
  a2[3] = _swiftEmptySetSingleton;
  a2[4] = _swiftEmptySetSingleton;
  return result;
}

uint64_t sub_100F7BA78(unsigned __int8 a1)
{
  if (a1 - 2 >= 3)
  {
    if (a1)
    {
      return sub_100F7BB70(1u);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }
}

uint64_t sub_100F7BB70(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return a1;
    }

LABEL_5:
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v1;
  }

  if (a1 - 2 < 2)
  {
    goto LABEL_5;
  }

  v7 = objc_opt_self();
  v8 = [v7 _atomicIncrementAssertCount];
  v32 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v32, "we should never have mixed share state on a single deletion. please file a bug.", 79, 2u);
  StaticString.description.getter("deleteConfirmationTitleText", 27, 2);
  v9 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardLibraryProviding.swift", 100, 2);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v8;
  v17 = sub_1005CF000();
  *(inited + 96) = v17;
  v18 = sub_100F7D104(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v18;
  *(inited + 72) = v9;
  *(inited + 136) = &type metadata for String;
  v19 = sub_1000053B0();
  *(inited + 112) = v12;
  *(inited + 120) = v14;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v19;
  *(inited + 152) = 403;
  v20 = v32;
  *(inited + 216) = v17;
  *(inited + 224) = v18;
  *(inited + 192) = v20;
  v21 = v9;
  v22 = v20;
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v24 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v24, "we should never have mixed share state on a single deletion. please file a bug.", 79, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "we should never have mixed share state on a single deletion. please file a bug.");
  type metadata accessor for __VaListBuilder();
  v25 = swift_allocObject();
  v25[2] = 8;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = 0;
  v26 = __VaListBuilder.va_list()();
  StaticString.description.getter("deleteConfirmationTitleText", 27, 2);
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardLibraryProviding.swift", 100, 2);
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter("we should never have mixed share state on a single deletion. please file a bug.", 79, 2);
  v29 = String._bridgeToObjectiveC()();

  [v7 handleFailureInFunction:v27 file:v28 lineNumber:403 isFatal:1 format:v29 args:v26];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v30, v31);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100F7C028(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      return sub_100F7C224(1u);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }
}

uint64_t sub_100F7C224(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return a1;
    }

LABEL_8:
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v1;
  }

  if (a1 == 2 || a1 == 3)
  {
    goto LABEL_8;
  }

  v7 = objc_opt_self();
  v8 = [v7 _atomicIncrementAssertCount];
  v32 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v32, "we should never have mixed share state on a single deletion. please file a bug.", 79, 2u);
  StaticString.description.getter("deleteConfirmationMessageText", 29, 2);
  v9 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardLibraryProviding.swift", 100, 2);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v8;
  v17 = sub_1005CF000();
  *(inited + 96) = v17;
  v18 = sub_100F7D104(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v18;
  *(inited + 72) = v9;
  *(inited + 136) = &type metadata for String;
  v19 = sub_1000053B0();
  *(inited + 112) = v12;
  *(inited + 120) = v14;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v19;
  *(inited + 152) = 439;
  v20 = v32;
  *(inited + 216) = v17;
  *(inited + 224) = v18;
  *(inited + 192) = v20;
  v21 = v9;
  v22 = v20;
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v24 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v24, "we should never have mixed share state on a single deletion. please file a bug.", 79, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "we should never have mixed share state on a single deletion. please file a bug.");
  type metadata accessor for __VaListBuilder();
  v25 = swift_allocObject();
  v25[2] = 8;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = 0;
  v26 = __VaListBuilder.va_list()();
  StaticString.description.getter("deleteConfirmationMessageText", 29, 2);
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardLibraryProviding.swift", 100, 2);
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter("we should never have mixed share state on a single deletion. please file a bug.", 79, 2);
  v29 = String._bridgeToObjectiveC()();

  [v7 handleFailureInFunction:v27 file:v28 lineNumber:439 isFatal:1 format:v29 args:v26];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v30, v31);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100F7C6F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100F7C7E0(char a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

uint64_t sub_100F7C9D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100F7CA18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100F7CA60()
{
  sub_1005B981C(&qword_101A12AA8, &unk_10149FAD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 32) = 0xD000000000000027;
  *(inited + 40) = 0x80000001015B47C0;
  v15 = *v0;
  v2 = sub_1005B981C(&unk_1019FB880, &unk_101474EC0);
  *(inited + 48) = v15;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD00000000000002ELL;
  *(inited + 88) = 0x80000001015B47F0;
  v14 = v0[1];
  v3 = sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  *(inited + 96) = v14;
  *(inited + 120) = v3;
  *(inited + 128) = 0xD00000000000002ELL;
  v4 = v0[2];
  v12 = v0[3];
  v5 = v12;
  v13 = v4;
  *(inited + 136) = 0x80000001015B4820;
  *(inited + 144) = v4;
  *(inited + 168) = v3;
  *(inited + 176) = 0xD00000000000002FLL;
  *(inited + 184) = 0x80000001015B4850;
  v6 = sub_1005B981C(&qword_1019FB890, &qword_101474ED0);
  *(inited + 192) = v5;
  *(inited + 216) = v6;
  *(inited + 224) = 0xD00000000000002FLL;
  v11 = v0[4];
  v7 = v11;
  *(inited + 264) = v6;
  *(inited + 232) = 0x80000001015B4880;
  *(inited + 240) = v7;
  sub_10000BE14(&v15, v10, &unk_1019FB880, &unk_101474EC0);
  sub_10000BE14(&v14, v10, &unk_101A22E80, &unk_1014A08B0);
  sub_10000BE14(&v13, v10, &unk_101A22E80, &unk_1014A08B0);
  sub_10000BE14(&v12, v10, &qword_1019FB890, &qword_101474ED0);
  sub_10000BE14(&v11, v10, &qword_1019FB890, &qword_101474ED0);
  v8 = sub_10000BCE4(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A2F5D0, &qword_10149E8C0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_100F7CC80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = sub_10007C02C(v4);

  if (!v5)
  {
    goto LABEL_20;
  }

  if (!*(v5 + 16) || (v6 = sub_10000BE7C(0xD000000000000027, 0x80000001015B47C0), (v7 & 1) == 0))
  {
LABEL_19:

LABEL_20:
    v23 = type metadata accessor for Notification();
    result = (*(*(v23 - 8) + 8))(a1, v23);
LABEL_21:
    v8 = 0;
    v11 = 0;
    v14 = 0;
    v17 = 0;
    v22 = 0;
    goto LABEL_22;
  }

  sub_100064288(*(v5 + 56) + 32 * v6, v29);
  sub_1005B981C(&unk_1019FB880, &unk_101474EC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = type metadata accessor for Notification();
    (*(*(v24 - 8) + 8))(a1, v24);
LABEL_24:

    goto LABEL_21;
  }

  v8 = v28;
  if (!*(v5 + 16))
  {
    goto LABEL_25;
  }

  v9 = sub_10000BE7C(0xD00000000000002ELL, 0x80000001015B47F0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_100064288(*(v5 + 56) + 32 * v9, v29);
  sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = type metadata accessor for Notification();
    (*(*(v25 - 8) + 8))(a1, v25);
LABEL_27:

    goto LABEL_24;
  }

  v11 = v28;
  if (!*(v5 + 16))
  {
    goto LABEL_28;
  }

  v12 = sub_10000BE7C(0xD00000000000002ELL, 0x80000001015B4820);
  if ((v13 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_100064288(*(v5 + 56) + 32 * v12, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = type metadata accessor for Notification();
    (*(*(v26 - 8) + 8))(a1, v26);
LABEL_30:

    goto LABEL_27;
  }

  v14 = v28;
  if (!*(v5 + 16))
  {
    goto LABEL_31;
  }

  v15 = sub_10000BE7C(0xD00000000000002FLL, 0x80000001015B4850);
  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_100064288(*(v5 + 56) + 32 * v15, v29);
  sub_1005B981C(&qword_1019FB890, &qword_101474ED0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = type metadata accessor for Notification();
    (*(*(v27 - 8) + 8))(a1, v27);

    goto LABEL_30;
  }

  v17 = v28;
  if (!*(v5 + 16) || (v18 = sub_10000BE7C(0xD00000000000002FLL, 0x80000001015B4880), (v19 & 1) == 0))
  {

LABEL_31:

LABEL_28:

LABEL_25:

    goto LABEL_19;
  }

  sub_100064288(*(v5 + 56) + 32 * v18, v29);
  v20 = type metadata accessor for Notification();
  (*(*(v20 - 8) + 8))(a1, v20);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    goto LABEL_24;
  }

  v22 = v28;
LABEL_22:
  *a2 = v8;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v17;
  a2[4] = v22;
  return result;
}

uint64_t sub_100F7D104(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100F7D180()
{
  result = qword_101A23EE8;
  if (!qword_101A23EE8)
  {
    result = swift_getWitnessTable(byte_1014B9C38, &type metadata for CRLBoardLibraryError, v0, v1);
    atomic_store(result, &qword_101A23EE8);
  }

  return result;
}

unint64_t sub_100F7D1D8()
{
  result = qword_101A23EF0;
  if (!qword_101A23EF0)
  {
    result = swift_getWitnessTable(a9_7, &type metadata for CRLBoardLibraryBoardOpenError, v0, v1);
    atomic_store(result, &qword_101A23EF0);
  }

  return result;
}

unint64_t sub_100F7D230()
{
  result = qword_101A23EF8;
  if (!qword_101A23EF8)
  {
    result = swift_getWitnessTable("ј7", &type metadata for CRLDeleteConfirmationType, v0, v1);
    atomic_store(result, &qword_101A23EF8);
  }

  return result;
}

void sub_100F7D3C4(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 excludedActivityTypes];
  if (v3)
  {

    v4 = [v1 excludedActivityTypes];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for ActivityType(0);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10079AC54(v7);
      if (v6)
      {
        v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v8.super.isa = 0;
      }

      [v2 setExcludedActivityTypes:v8.super.isa];
    }

    else
    {
      [v1 setExcludedActivityTypes:0];
    }
  }

  else
  {
    type metadata accessor for ActivityType(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v1 setExcludedActivityTypes:isa];
  }
}

id sub_100F7D5F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLSelectionAwareActivityViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

NSString sub_100F7D648()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8950 = result;
  return result;
}

void *sub_100F7D680(void *a1)
{
  sub_1005B981C(&unk_101A0A150, &qword_101489D40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146D2A0;
  if (qword_1019F2750 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD8950;
  *(v2 + 32) = qword_101AD8950;
  *(v2 + 40) = UIActivityTypeCopyToPasteboard;
  *(v2 + 48) = UIActivityTypeAddToReadingList;
  *(v2 + 56) = UIActivityTypeAssignToContact;
  type metadata accessor for ActivityType(0);
  v4 = v3;
  v5 = UIActivityTypeCopyToPasteboard;
  v6 = UIActivityTypeAddToReadingList;
  v7 = UIActivityTypeAssignToContact;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setExcludedActivityTypes:isa];

  return a1;
}

unint64_t sub_100F7D79C()
{
  result = qword_1019FC268;
  if (!qword_1019FC268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019FC268);
  }

  return result;
}

Freeform::BoardCollectionData __swiftcall BoardCollectionData.init(totalBoardCount:totalSharedBoardCount:totalFavoriteBoardCount:totalRecentAccessedBoardCount:totalRecentDeletedBoardCount:)(Swift::Int32 totalBoardCount, Swift::Int32 totalSharedBoardCount, Swift::Int32 totalFavoriteBoardCount, Swift::Int32 totalRecentAccessedBoardCount, Swift::Int32 totalRecentDeletedBoardCount)
{
  v5 = totalBoardCount | (*&totalSharedBoardCount << 32);
  v6 = totalFavoriteBoardCount | (*&totalRecentAccessedBoardCount << 32);
  result.totalFavoriteBoardCount = v6;
  result.totalRecentAccessedBoardCount = HIDWORD(v6);
  result.totalBoardCount = v5;
  result.totalSharedBoardCount = HIDWORD(v5);
  result.totalRecentDeletedBoardCount = totalRecentDeletedBoardCount;
  return result;
}

unint64_t sub_100F7D840()
{
  v1 = *v0;
  v2 = 0x616F426C61746F74;
  v3 = 0xD00000000000001CLL;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100F7D8F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F7DC68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F7D91C(uint64_t a1)
{
  v2 = sub_100F7DB90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F7D958(uint64_t a1)
{
  v2 = sub_100F7DB90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BoardCollectionData.encode(to:)(void *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11[3] = a4;
  v6 = sub_1005B981C(&qword_101A23F30, &qword_1014B9DE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100020E58(a1, a1[3]);
  sub_100F7DB90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_100F7DB90()
{
  result = qword_101A23F38;
  if (!qword_101A23F38)
  {
    result = swift_getWitnessTable("љ7", &type metadata for BoardCollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A23F38);
  }

  return result;
}

unint64_t BoardCollectionData.init(from:)(void *a1)
{
  result = sub_100F7DE24(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t sub_100F7DC0C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100F7DE24(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100F7DC68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616F426C61746F74 && a2 == 0xEF746E756F436472;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001015B4E20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001015B4E40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001015B4E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001015B4E80 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_100F7DE24(void *a1)
{
  v3 = sub_1005B981C(&qword_101A23F68, &qword_1014B9FD8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100F7DB90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100005070(a1);
  }

  v16 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 3;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100005070(a1);
  return v7 | (v8 << 32);
}

unint64_t sub_100F7E048()
{
  result = qword_101A23F40;
  if (!qword_101A23F40)
  {
    result = swift_getWitnessTable("њ7", &type metadata for BoardCollectionData, v0, v1);
    atomic_store(result, &qword_101A23F40);
  }

  return result;
}

unint64_t sub_100F7E0A0()
{
  result = qword_101A23F48;
  if (!qword_101A23F48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoardCollectionData, &type metadata for BoardCollectionData, v0, v1);
    atomic_store(result, &qword_101A23F48);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for BoardCollectionData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BoardCollectionData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BoardCollectionData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

unint64_t sub_100F7E178()
{
  result = qword_101A23F50;
  if (!qword_101A23F50)
  {
    result = swift_getWitnessTable(aY_19, &type metadata for BoardCollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A23F50);
  }

  return result;
}

unint64_t sub_100F7E1D0()
{
  result = qword_101A23F58;
  if (!qword_101A23F58)
  {
    result = swift_getWitnessTable(aI_19, &type metadata for BoardCollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A23F58);
  }

  return result;
}

unint64_t sub_100F7E228()
{
  result = qword_101A23F60;
  if (!qword_101A23F60)
  {
    result = swift_getWitnessTable(aQ_18, &type metadata for BoardCollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A23F60);
  }

  return result;
}

uint64_t sub_100F7E3B8()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_10061655C(v0, static BoardInitialAppStateEvent.timeDurationGranularity);
  sub_1005EB3DC(v0, static BoardInitialAppStateEvent.timeDurationGranularity);
  return static TimeDurationGranularity.milliseconds.getter();
}

uint64_t BoardInitialAppStateEvent.boardCollectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardInitialAppStateEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D78, &qword_1014B9FF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardInitialAppStateEvent.boardCollectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardInitialAppStateEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D78, &qword_1014B9FF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardInitialAppStateEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1005B981C(&qword_1019F2D40, &unk_1014669C0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for BoardInitialAppStateEvent(0) + 20);
  v5 = sub_1005B981C(&qword_1019F2D78, &qword_1014B9FF0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t BoardInitialAppStateEvent.Model.init(eventData:boardCollectionData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v7 = a2;
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v12 = type metadata accessor for EventData();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = type metadata accessor for BoardInitialAppStateEvent.Model(0);
  v14 = (a5 + *(result + 20));
  *v14 = v7;
  v14[1] = v10;
  v14[2] = v6;
  v14[3] = v11;
  v14[4] = a4;
  return result;
}

uint64_t sub_100F7E7BC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_100F7E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001015B4EA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100F7E8EC(uint64_t a1)
{
  v2 = sub_100F7EB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F7E928(uint64_t a1)
{
  v2 = sub_100F7EB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BoardInitialAppStateEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A23F70, &qword_1014B9FF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100F7EB2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for EventData();
  sub_1006F6604(&qword_1019FB930, &protocol conformance descriptor for EventData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for BoardInitialAppStateEvent.Model(0) + 20));
    v10 = *(v9 + 4);
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_100F7E0A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100F7EB2C()
{
  result = qword_101A23F78;
  if (!qword_101A23F78)
  {
    result = swift_getWitnessTable(byte_1014BA1A4, &type metadata for BoardInitialAppStateEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A23F78);
  }

  return result;
}

uint64_t BoardInitialAppStateEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = type metadata accessor for EventData();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A23F80, &qword_1014BA000);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for BoardInitialAppStateEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100F7EB2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  LOBYTE(v30) = 0;
  sub_1006F6604(&qword_1019FB948, &protocol conformance descriptor for EventData);
  v15 = v29;
  v16 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v32 = 1;
  sub_100F7E048();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v9, v16);
  v18 = v31;
  v19 = v23;
  v20 = v23 + *(v24 + 20);
  *v20 = v30;
  *(v20 + 16) = v18;
  sub_100F7EED8(v19, v25);
  sub_100005070(a1);
  return sub_100F7EF3C(v19);
}

uint64_t sub_100F7EED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoardInitialAppStateEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F7EF3C(uint64_t a1)
{
  v2 = type metadata accessor for BoardInitialAppStateEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100F7F070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1005B981C(&qword_1019F2D40, &unk_1014669C0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_1005B981C(&qword_1019F2D78, &qword_1014B9FF0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_100F7F170(uint64_t a1)
{
  sub_1006F1928(319);
  if (v1 <= 0x3F)
  {
    sub_100F7F1F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100F7F1F4(uint64_t a1)
{
  if (!qword_101A23FF0)
  {
    sub_100F7E048();
    sub_100F7E0A0();
    v1 = type metadata accessor for EventProperty();
    if (!v2)
    {
      atomic_store(v1, &qword_101A23FF0);
    }
  }
}

uint64_t sub_100F7F284(uint64_t a1)
{
  result = type metadata accessor for EventData();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100F7F30C()
{
  result = qword_101A240B0;
  if (!qword_101A240B0)
  {
    result = swift_getWitnessTable(asc_1014BA17C, &type metadata for BoardInitialAppStateEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A240B0);
  }

  return result;
}

unint64_t sub_100F7F364()
{
  result = qword_101A240B8;
  if (!qword_101A240B8)
  {
    result = swift_getWitnessTable(aM_6, &type metadata for BoardInitialAppStateEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A240B8);
  }

  return result;
}

unint64_t sub_100F7F3BC()
{
  result = qword_101A240C0;
  if (!qword_101A240C0)
  {
    result = swift_getWitnessTable(a5_7, &type metadata for BoardInitialAppStateEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A240C0);
  }

  return result;
}

uint64_t sub_100F7F410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100F7F434, 0, 0);
}

uint64_t sub_100F7F434(uint64_t a1)
{
  if (URL.isFileURL.getter())
  {
    v2 = v1[4];
    if (v2)
    {
      v3 = v1[4];
    }

    else
    {
      v7 = v1[3];
      ObjectType = swift_getObjectType();
      v3 = sub_1009F7C78(v7, 0, 0, ObjectType);
      v2 = 0;
    }

    v1[6] = v3;
    v9 = v2;
    v10 = swift_task_alloc();
    v1[7] = v10;
    *v10 = v1;
    v10[1] = sub_100F7F58C;
    v11 = v1[2];

    return sub_100CF18DC(v11);
  }

  else
  {
    sub_1009DB968();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100F7F58C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100F7F704;
  }

  else
  {
    v2 = sub_100F7F6A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F7F6A0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F7F704()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F7F768(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 136) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for CRLAssetData(0);
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100F7F830, 0, 0);
}

uint64_t sub_100F7F830(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_100F7F914;

  return sub_100FC6E1C();
}

uint64_t sub_100F7F914(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_100F7FE2C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_100F7FA3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F7FA3C(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v1[11] = v2;
  static Task<>.checkCancellation()();
  if (v3)
  {

    v10 = v1[1];

    return v10();
  }

  else
  {
    static Task<>.checkCancellation()();
    v4 = sub_1009DCA30();
    v1[12] = v4;
    v1[13] = v5;
    v7 = aLinkMetadata[0];
    v6 = aLinkMetadata[1];
    v8 = v4;
    v9 = v5;

    swift_getObjectType();
    v1[14] = sub_1009F7A0C(v8, v9, v7, v6);

    static Task<>.checkCancellation()();
    v12 = swift_task_alloc();
    v1[15] = v12;
    *v12 = v1;
    v12[1] = sub_100F7FBCC;
    v13 = v1[7];

    return sub_100CF18DC(v13);
  }
}

uint64_t sub_100F7FBCC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100F7FDB0;
  }

  else
  {
    v2 = sub_100F7FCE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F7FCE0()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  sub_10002640C(v2, v1);
  sub_1006008F0(v4, v7);
  (*(v5 + 56))(v7, 0, 1, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100F7FDB0()
{
  sub_10002640C(*(v0 + 96), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F7FE2C(uint64_t a1)
{
  if (*(v1 + 136))
  {
    v2 = sub_100F17268();

    *(v1 + 88) = v2;
    static Task<>.checkCancellation()();
    static Task<>.checkCancellation()();
    v3 = sub_1009DCA30();
    *(v1 + 96) = v3;
    *(v1 + 104) = v4;
    v6 = aLinkMetadata[0];
    v5 = aLinkMetadata[1];
    v7 = v3;
    v8 = v4;

    swift_getObjectType();
    *(v1 + 112) = sub_1009F7A0C(v7, v8, v6, v5);

    static Task<>.checkCancellation()();
    v11 = swift_task_alloc();
    *(v1 + 120) = v11;
    *v11 = v1;
    v11[1] = sub_100F7FBCC;
    v12 = *(v1 + 56);

    return sub_100CF18DC(v12);
  }

  else
  {
    swift_willThrow();

    v9 = *(v1 + 8);

    return v9();
  }
}

uint64_t sub_100F80000(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100F80024, 0, 0);
}

uint64_t sub_100F80024(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v2 = sub_100F17268();
  v3 = sub_1009DCA30();
  v5 = v4;
  v1[5] = v3;
  v1[6] = v4;

  v6 = aLinkMetadata[0];
  v7 = aLinkMetadata[1];

  swift_getObjectType();
  v1[7] = sub_1009F7A0C(v3, v5, v6, v7);

  static Task<>.checkCancellation()();
  v8 = swift_task_alloc();
  v1[8] = v8;
  *v8 = v1;
  v8[1] = sub_100F801AC;
  v9 = v1[2];

  return sub_100CF18DC(v9);
}

uint64_t sub_100F801AC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100F80334;
  }

  else
  {
    v2 = sub_100F802C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F802C0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  sub_10002640C(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100F80334()
{
  sub_10002640C(*(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100F8040C()
{
  result = qword_101A24190;
  if (!qword_101A24190)
  {
    result = swift_getWitnessTable("ْ7", &type metadata for CRLBoardItemImporterHelperError, v0, v1);
    atomic_store(result, &qword_101A24190);
  }

  return result;
}

uint64_t sub_100F80460()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16) && (v3 = sub_10000BE7C(0xD000000000000026, 0x800000010158BA90), (v4 & 1) != 0))
  {
    sub_100064288(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100F80544(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v2[21] = *(type metadata accessor for CRLBoardEntity(0) - 8);
  v2[22] = swift_task_alloc();
  v2[23] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_100F80658, 0, 0);
}

uint64_t sub_100F80658()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 168);
    sub_10004B394(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = *(v0 + 192);
      v8 = *(v0 + 176);
      sub_100616494(v5, v8, type metadata accessor for CRLBoardEntity);
      sub_100616494(v8, v7, type metadata accessor for CRLBoardIdentifier);
      sub_100689004(v8);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10004B394((v9 > 1), v10 + 1, 1);
      }

      *(v0 + 256) = _swiftEmptyArrayStorage;
      v11 = *(v0 + 192);
      _swiftEmptyArrayStorage[2] = v10 + 1;
      sub_1005EB270(v11, _swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10);
      v5 += v6;
      --v2;
    }

    while (v2);
    *(v0 + 200) = *sub_100020E58(*(v0 + 160), *(*(v0 + 160) + 24));
    type metadata accessor for MainActor();
    *(v0 + 208) = static MainActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 216) = v12;
    *(v0 + 224) = v13;

    return _swift_task_switch(sub_100F808B4, v12, v13);
  }

  else
  {
    type metadata accessor for _PrebuiltAppIntentError();
    sub_1007D2540();
    swift_allocError();
    static _UnrecoverableError.unknownError.getter();
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100F808B4()
{
  v1 = sub_10004B3DC(v0[32]);
  v0[29] = v1;

  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_100F80964;

  return sub_1010B719C(v1);
}

uint64_t sub_100F80964()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_100F80AFC;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_100F80A80;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100F80A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F80AFC()
{

  return _swift_task_switch(sub_100F80B70, 0, 0);
}

uint64_t sub_100F80B70()
{
  v0[17] = v0[31];
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {

    type metadata accessor for _PrebuiltAppIntentError();
    sub_1007D2540();
    swift_allocError();
    static _UnrecoverableError.entityNotFound.getter();
  }

  else
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v1 = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v3 = Error.publicDescription.getter(v0[15], v0[16]);
    v5 = v4;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    v6 = static os_log_type_t.error.getter();
    sub_100005404(v1, &_mh_execute_header, v6, "Error deleting boards: %@", 25, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    type metadata accessor for _PrebuiltAppIntentError();
    sub_1007D2540();
    swift_allocError();
    static _UnrecoverableError.unknownError.getter();
  }

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t *sub_100F80DC0(char a1, __n128 a2)
{
  v3 = v2;
  v30 = *v3;
  v5 = v30;
  v29 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v20 = *(v5 + 736);
  swift_beginAccess();
  if (a1)
  {
    v28 = v10;
    sub_10000BE14(v3 + v20, v16, &unk_101A226A0, &unk_10146E610);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0, &unk_10146E610, byte_101478D54);
    CRType.copy(renamingReferences:)();
    v10 = v28;
    sub_10000CAAC(v16, &unk_101A226A0, &unk_10146E610);
    v21 = qword_101AD89B8;
    swift_beginAccess();
    sub_100F85AD0(v3 + v21, v7, type metadata accessor for CRLFileItemCRDTData);
    sub_100F85328(&qword_101A15000, type metadata accessor for CRLFileItemCRDTData, byte_1014BA780);
    CRType.copy(renamingReferences:)();
    sub_100F85B38(v7, type metadata accessor for CRLFileItemCRDTData);
  }

  else
  {
    sub_10000BE14(v3 + v20, v19, &unk_101A226A0, &unk_10146E610);
    v22 = qword_101AD89B8;
    swift_beginAccess();
    sub_100F85AD0(v3 + v22, v10, type metadata accessor for CRLFileItemCRDTData);
  }

  sub_10000BE14(v19, v16, &unk_101A226A0, &unk_10146E610);
  sub_100F85AD0(v10, v7, type metadata accessor for CRLFileItemCRDTData);
  v23 = *(v3 + 5);
  v31[0] = *(v3 + 3);
  v31[1] = v23;
  v32 = *(v3 + 56);
  v29 = v3[2];
  v24 = v10;
  v25 = swift_allocObject();
  sub_100F85AD0(v7, v25 + qword_101AD89B8, type metadata accessor for CRLFileItemCRDTData);
  sub_10000BE14(v16, v13, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v13, v25 + *(*v25 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v13, &unk_101A226A0, &unk_10146E610);
  sub_100F85B38(v7, type metadata accessor for CRLFileItemCRDTData);
  sub_10000CAAC(v16, &unk_101A226A0, &unk_10146E610);
  sub_100F85B38(v24, type metadata accessor for CRLFileItemCRDTData);
  sub_10000CAAC(v19, &unk_101A226A0, &unk_10146E610);
  return sub_100747AF0(v31, v29);
}

uint64_t sub_100F81264(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v9 - 8);
  v47 = v44 - v10;
  v11 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v11);
  v49 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v44 - v14;
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  v19 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap;
  swift_beginAccess();
  v50 = a1;
  if (*(*(a1 + v19) + 16))
  {
    v44[1] = qword_101AD89B8;
    swift_beginAccess();
    v44[2] = sub_1005B981C(&qword_101A0B528, &unk_1014BA390);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
    sub_100C038F0(v15, v18);
    v20 = type metadata accessor for CRLAssetData(0);
    v45 = v2;
    v46 = v6;
    v21 = v20;
    v22 = *(v20 + 20);
    v23 = *(v20 + 24);
    v25 = *&v15[v22];
    v24 = *&v15[v22 + 8];
    v26 = *&v15[v23];
    v27 = &v18[v22];
    *v27 = v25;
    *(v27 + 1) = v24;
    *&v18[*(v21 + 24)] = v26;
    v28 = *(v11 + 20);
    v29 = &v15[v28];
    v30 = v7;
    v31 = &v18[v28];

    sub_100C038F0(v29, v31);
    v32 = *(v21 + 20);
    v34 = *(v29 + v32);
    v33 = *(v29 + v32 + 8);
    v35 = *(v29 + *(v21 + 24));
    v36 = (v31 + v32);
    *v36 = v34;
    v36[1] = v33;
    v37 = *(v21 + 24);
    v6 = v46;
    *(v31 + v37) = v35;
    v7 = v30;
    v38 = *&v15[*(v11 + 24)];

    sub_100F85B38(v15, type metadata accessor for CRLFileItemAtomicDataStruct);
    *&v18[*(v11 + 24)] = v38;
    sub_100F85AD0(v18, v15, type metadata accessor for CRLFileItemAtomicDataStruct);
    swift_beginAccess();
    sub_100F85AD0(v15, v49, type metadata accessor for CRLFileItemAtomicDataStruct);
    CRRegister.wrappedValue.setter();
    sub_100F85B38(v15, type metadata accessor for CRLFileItemAtomicDataStruct);
    swift_endAccess();
    v3 = v45;
    sub_100F85B38(v18, type metadata accessor for CRLFileItemAtomicDataStruct);
  }

  v39 = *(*v4 + 736);
  swift_beginAccess();
  sub_10124DE14(v50);
  result = swift_endAccess();
  if (!v3)
  {
    v41 = v47;
    sub_10000BE14(v4 + v39, v47, &unk_101A226A0, &unk_10146E610);
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    v42 = v48;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v41, &unk_101A226A0, &unk_10146E610);
    v43 = *(*v4 + 744);
    swift_beginAccess();
    (*(v7 + 40))(v4 + v43, v42, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100F816D4()
{
  qword_101AD89A0 = 97;
  *algn_101AD89A8 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD89B0 = result;
  return result;
}

uint64_t sub_100F81714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  sub_100F85AD0(a1, &v20 - v12, type metadata accessor for CRLAssetData);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for UUID();
  v15 = sub_1005EB3DC(v14, qword_101AD8F08);
  v16 = &v13[*(v5 + 20)];
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  v17 = type metadata accessor for CRLAssetData(0);
  v18 = &v16[*(v17 + 20)];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  *&v16[*(v17 + 24)] = _swiftEmptyDictionarySingleton;
  *&v13[*(v5 + 24)] = _swiftEmptyDictionarySingleton;
  sub_100F85AD0(v13, v10, type metadata accessor for CRLFileItemAtomicDataStruct);
  *(a2 + *(type metadata accessor for CRLFileItemCRDTData(0) + 20)) = _swiftEmptyDictionarySingleton;
  sub_100F85AD0(v10, v7, type metadata accessor for CRLFileItemAtomicDataStruct);
  sub_100F85328(&qword_101A14FE0, type metadata accessor for CRLFileItemAtomicDataStruct, byte_1014BA978);
  CRRegister.init(_:)();
  sub_100F85B38(a1, type metadata accessor for CRLAssetData);
  sub_100F85B38(v10, type metadata accessor for CRLFileItemAtomicDataStruct);
  return sub_100F85B38(v13, type metadata accessor for CRLFileItemAtomicDataStruct);
}

uint64_t sub_100F81990(__n128 a1)
{
  v1 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1005B981C(&qword_101A0B528, &unk_1014BA390);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  sub_100F859AC(v6, v3);
  v8 = v7;
  sub_100F85B38(v3, type metadata accessor for CRLFileItemAtomicDataStruct);
  sub_100F85B38(v6, type metadata accessor for CRLFileItemAtomicDataStruct);
  return v8 & 1;
}

uint64_t sub_100F81A9C()
{
  if (qword_1019F2770 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD89A0;

  return v0;
}

uint64_t sub_100F81B1C(uint64_t a1)
{
  v2 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData, byte_1014BA950);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_100F81B88@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for UUID();
  v6 = sub_1005EB3DC(v5, qword_101AD8F08);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = &v4[*(v2 + 20)];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *&v4[*(v2 + 24)] = _swiftEmptyDictionarySingleton;
  return sub_100F81714(v4, a1);
}

uint64_t sub_100F81CA8(uint64_t a1)
{
  v2 = sub_100F85328(&qword_101A15000, type metadata accessor for CRLFileItemCRDTData, byte_1014BA780);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100F81D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData, byte_1014BA950);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100F81D90(uint64_t a1, uint64_t a2)
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData, byte_1014BA950);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_100F81E14(uint64_t a1, uint64_t a2)
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData, byte_1014BA950);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_100F81E90(uint64_t a1, uint64_t a2)
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData, byte_1014BA950);

  return CRStruct_1.hasDelta(from:)();
}