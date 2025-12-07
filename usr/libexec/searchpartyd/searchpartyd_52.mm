char *sub_1005CEE64(uint64_t a1)
{
  v2 = 0;
  v3 = sub_1000BC4D4(&qword_1016A5888, &qword_1013B3288);
  v4 = __chkstk_darwin(v3 - 8);
  v196 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v190 = &v174 - v6;
  v213 = type metadata accessor for BeaconEstimatedLocation(0);
  v209 = *(v213 - 8);
  v7 = __chkstk_darwin(v213);
  v9 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v203 = &v174 - v10;
  v193 = type metadata accessor for RawSearchResult(0);
  v194 = *(v193 - 8);
  v11 = __chkstk_darwin(v193);
  v174 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v192 = &v174 - v14;
  __chkstk_darwin(v13);
  v191 = &v174 - v15;
  v214 = type metadata accessor for UUID();
  v16 = *(v214 - 8);
  v17 = __chkstk_darwin(v214);
  v215 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v197 = &v174 - v20;
  v21 = __chkstk_darwin(v19);
  v189 = &v174 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v174 - v24;
  __chkstk_darwin(v23);
  v188 = &v174 - v26;
  v186 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v27 = __chkstk_darwin(v186);
  v178 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v185 = &v174 - v30;
  v31 = __chkstk_darwin(v29);
  v177 = &v174 - v32;
  v33 = __chkstk_darwin(v31);
  v183 = &v174 - v34;
  __chkstk_darwin(v33);
  v176 = &v174 - v35;
  v36 = a1 + 64;
  v37 = 1 << *(a1 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(a1 + 64);
  v40 = (v37 + 63) >> 6;
  v212 = (v16 + 16);
  v198 = (v16 + 32);
  v205 = v16;
  v210 = (v16 + 8);
  v187 = a1;

  v41 = _swiftEmptyDictionarySingleton;
  v208 = xmmword_101385D80;
  v184 = 0;
  v182 = a1 + 64;
  v175 = v40;
LABEL_6:
  if (v39)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v42 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_135;
    }

    if (v42 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v42);
    ++v2;
    if (v39)
    {
      v2 = v42;
LABEL_11:
      v181 = (v39 - 1) & v39;
      v180 = v2;
      v43 = __clz(__rbit64(v39)) | (v2 << 6);
      v44 = v187;
      v45 = *(v187 + 6);
      v46 = v205;
      v199 = *(v205 + 72);
      v47 = v176;
      v48 = v214;
      v211 = *(v205 + 16);
      v211(v176, v45 + v199 * v43, v214);
      v49 = *(*(v44 + 7) + 8 * v43);
      v50 = v186;
      v51 = *(v186 + 48);
      v207 = *(v46 + 32);
      v52 = v183;
      (v207)(v183, v47, v48);
      *(v52 + v51) = v49;

      v179 = objc_autoreleasePoolPush();
      v53 = v177;
      sub_1000D2A70(v52, v177, &qword_1016A5890, &qword_1013B3290);

      (v207)(v188, v53, v48);
      a1 = v185;
      sub_1000D2A70(v52, v185, &qword_1016A5890, &qword_1013B3290);
      v54 = 0;
      v55 = *(a1 + *(v50 + 48));
      v56 = 1 << *(v55 + 32);
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      else
      {
        v57 = -1;
      }

      v58 = v57 & *(v55 + 56);
      v59 = (v56 + 63) >> 6;
      v206 = _swiftEmptyArrayStorage;
      while (1)
      {
        v60 = v54;
        if (!v58)
        {
          break;
        }

LABEL_19:
        v61 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v62 = *(v194 + 9);
        v63 = v192;
        sub_10062CD24(*(v55 + 48) + v62 * (v61 | (v54 << 6)), v192, type metadata accessor for RawSearchResult);
        v64 = v63;
        a1 = v191;
        sub_10062CC64(v64, v191, type metadata accessor for RawSearchResult);
        if (*(a1 + *(v193 + 36)) == 15)
        {
          sub_10062CC64(a1, v174, type metadata accessor for RawSearchResult);
          a1 = v206;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v216 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124E24(0, *(a1 + 16) + 1, 1);
            a1 = v216;
          }

          v67 = *(a1 + 16);
          v66 = *(a1 + 24);
          v68 = (v67 + 1);
          if (v67 >= v66 >> 1)
          {
            v206 = *(a1 + 16);
            v207 = (v67 + 1);
            sub_101124E24((v66 > 1), v67 + 1, 1);
            v67 = v206;
            v68 = v207;
            a1 = v216;
          }

          *(a1 + 16) = v68;
          v69 = *(v194 + 80);
          v206 = a1;
          sub_10062CC64(v174, a1 + ((v69 + 32) & ~v69) + v67 * v62, type metadata accessor for RawSearchResult);
        }

        else
        {
          sub_10062CBB8(a1, type metadata accessor for RawSearchResult);
        }
      }

      while (1)
      {
        v54 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_129;
        }

        if (v54 >= v59)
        {
          break;
        }

        v58 = *(v55 + 56 + 8 * v54);
        ++v60;
        if (v58)
        {
          goto LABEL_19;
        }
      }

      v207 = *v210;
      (v207)(v185, v214);
      a1 = v195;
      v70 = sub_1005EECCC(v188, v206);

      v71 = v70;
      v206 = *(v70 + 2);
      if (v206)
      {
        v72 = 0;
        v73 = *(v209 + 80);
        v74 = (v73 + 32) & ~v73;
        v201 = v71 + v74;
        v202 = v73;
        v75 = v203;
        v200 = v71;
        do
        {
          if (v72 >= *(v71 + 2))
          {
            goto LABEL_131;
          }

          sub_10062CD24(&v201[*(v209 + 72) * v72], v75, type metadata accessor for BeaconEstimatedLocation);
          v76 = *(v213 + 24);
          if (*(v41 + 2) && (v77 = sub_1000210EC(v75 + v76), (v78 & 1) != 0))
          {
            v79 = *(*(v41 + 7) + 8 * v77);
          }

          else
          {
            v79 = _swiftEmptyArrayStorage;
          }

          v211(v25, v75 + v76, v214);
          sub_1000BC4D4(&qword_1016A5860, &qword_1013B3220);
          a1 = swift_allocObject();
          *(a1 + 16) = v208;
          sub_10062CD24(v75, a1 + v74, type metadata accessor for BeaconEstimatedLocation);
          v80 = v79[2];
          v81 = swift_isUniquelyReferenced_nonNull_native();
          if (!v81 || (v82 = v79[3] >> 1, v82 <= v80))
          {
            v79 = sub_100A5D0A0(v81, v80 + 1, 1, v79);
            v82 = v79[3] >> 1;
          }

          if (v82 <= v79[2])
          {
            goto LABEL_132;
          }

          swift_arrayInitWithCopy();

          ++v79[2];
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v216 = v41;
          a1 = v41;
          v85 = sub_1000210EC(v25);
          v86 = *(v41 + 2);
          v87 = (v84 & 1) == 0;
          v88 = v86 + v87;
          if (__OFADD__(v86, v87))
          {
            goto LABEL_133;
          }

          v89 = v84;
          if (*(v41 + 3) >= v88)
          {
            if (v83)
            {
              v41 = v216;
              if (v84)
              {
                goto LABEL_28;
              }
            }

            else
            {
              a1 = &v216;
              sub_101008794();
              v41 = v216;
              if (v89)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            sub_100FED8A4(v88, v83);
            a1 = v216;
            v90 = sub_1000210EC(v25);
            if ((v89 & 1) != (v91 & 1))
            {
              goto LABEL_139;
            }

            v85 = v90;
            v41 = v216;
            if (v89)
            {
LABEL_28:
              *(*(v41 + 7) + 8 * v85) = v79;

              (v207)(v25, v214);
              v75 = v203;
              sub_10062CBB8(v203, type metadata accessor for BeaconEstimatedLocation);
              goto LABEL_29;
            }
          }

          *&v41[8 * (v85 >> 6) + 64] |= 1 << v85;
          a1 = v214;
          v211((*(v41 + 6) + v85 * v199), v25, v214);
          *(*(v41 + 7) + 8 * v85) = v79;
          (v207)(v25, a1);
          v75 = v203;
          sub_10062CBB8(v203, type metadata accessor for BeaconEstimatedLocation);
          v92 = *(v41 + 2);
          v93 = __OFADD__(v92, 1);
          v94 = v92 + 1;
          if (v93)
          {
            goto LABEL_134;
          }

          *(v41 + 2) = v94;
LABEL_29:
          ++v72;
          v71 = v200;
        }

        while (v206 != v72);
      }

      (v207)(v188, v214);
      objc_autoreleasePoolPop(v179);
      sub_10000B3A8(v183, &qword_1016A5890, &qword_1013B3290);
      v36 = v182;
      v40 = v175;
      v39 = v181;
      v2 = v180;
      goto LABEL_6;
    }
  }

  v95 = v187;

  v216 = _swiftEmptyArrayStorage;
  v96 = 1 << v95[32];
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & *(v95 + 8);
  v99 = (v96 + 63) >> 6;

  v100 = 0;
  v101 = v196;
  for (i = v187; v98; v36 = v182)
  {
    v103 = v100;
    a1 = v178;
LABEL_58:
    v104 = __clz(__rbit64(v98)) | (v103 << 6);
    (*(v205 + 16))(a1, *(i + 6) + *(v205 + 72) * v104, v214);
    *(a1 + *(v186 + 48)) = *(*(i + 7) + 8 * v104);

    v105 = v184;
    sub_1005F1ECC(&v216, a1);
    v184 = v105;
    if (v105)
    {
      goto LABEL_140;
    }

    v98 &= v98 - 1;
    sub_10000B3A8(a1, &qword_1016A5890, &qword_1013B3290);
    v100 = v103;
  }

  a1 = v178;
  while (1)
  {
    v103 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      goto LABEL_136;
    }

    if (v103 >= v99)
    {
      break;
    }

    v98 = *(v36 + 8 * v103);
    ++v100;
    if (v98)
    {
      goto LABEL_58;
    }
  }

  v106 = v216;
  v191 = *(v216 + 2);
  if (!v191)
  {
LABEL_124:

    return v41;
  }

  v107 = v101;
  v108 = 0;
  v109 = v216 + 32;
  v188 = v216;
  v187 = v216 + 32;
  v204 = v9;
LABEL_63:
  if (v108 >= *(v106 + 2))
  {
    goto LABEL_138;
  }

  v110 = *&v109[8 * v108];
  v192 = v108 + 1;
  v111 = *(v110 + 64);
  v200 = (v110 + 64);
  v112 = 1 << *(v110 + 32);
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  else
  {
    v113 = -1;
  }

  a1 = v113 & v111;
  v193 = (v112 + 63) >> 6;
  v199 = v110;

  for (j = 0; ; j = v203)
  {
    if (a1)
    {
      v203 = j;
      v116 = j;
      goto LABEL_80;
    }

    v117 = v193 <= j + 1 ? j + 1 : v193;
    v118 = v117 - 1;
    do
    {
      v116 = j + 1;
      if (__OFADD__(j, 1))
      {
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
        goto LABEL_137;
      }

      if (v116 >= v193)
      {
        v172 = sub_1000BC4D4(&qword_1016A5898, &qword_1013B3298);
        (*(*(v172 - 8) + 56))(v107, 1, 1, v172);
        v202 = 0;
        v203 = v118;
        goto LABEL_81;
      }

      a1 = *(v200 + v116);
      ++j;
    }

    while (!a1);
    v203 = v116;
LABEL_80:
    v202 = (a1 - 1) & a1;
    v119 = __clz(__rbit64(a1)) | (v116 << 6);
    v120 = v199;
    v121 = v205;
    v122 = v189;
    v123 = v214;
    (*(v205 + 16))(v189, *(v199 + 48) + *(v205 + 72) * v119, v214);
    v124 = *(*(v120 + 56) + 8 * v119);
    v125 = sub_1000BC4D4(&qword_1016A5898, &qword_1013B3298);
    v126 = *(v125 + 48);
    v127 = *(v121 + 32);
    v107 = v196;
    v127(v196, v122, v123);
    *(v107 + v126) = v124;
    (*(*(v125 - 8) + 56))(v107, 0, 1, v125);

LABEL_81:
    v128 = v190;
    sub_1000D2AD8(v107, v190, &qword_1016A5888, &qword_1013B3288);
    a1 = sub_1000BC4D4(&qword_1016A5898, &qword_1013B3298);
    if ((*(*(a1 - 8) + 48))(v128, 1, a1) == 1)
    {

      v108 = v192;
      v106 = v188;
      v109 = v187;
      if (v192 == v191)
      {
        goto LABEL_124;
      }

      goto LABEL_63;
    }

    v129 = *(v128 + *(a1 + 48));
    v130 = *v198;
    v131 = v197;
    (*v198)(v197, v128, v214);
    v115 = objc_autoreleasePoolPush();
    v132 = v131;
    a1 = v195;
    v133 = sub_1005EECCC(v132, v129);

    v207 = *(v133 + 2);
    if (v207)
    {
      break;
    }

LABEL_69:
    objc_autoreleasePoolPop(v115);
    (*v210)(v197, v214);
    a1 = v202;
  }

  v194 = v130;
  v201 = v115;
  v134 = 0;
  v135 = (*(v209 + 80) + 32) & ~*(v209 + 80);
  v206 = (v133 + v135);
  while (1)
  {
    if (v134 >= *(v133 + 2))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    sub_10062CD24(v206 + *(v209 + 72) * v134, v9, type metadata accessor for BeaconEstimatedLocation);
    v136 = *(v213 + 24);
    if (*(v41 + 2) && (v137 = sub_1000210EC(&v9[v136]), (v138 & 1) != 0))
    {
      v139 = *(*(v41 + 7) + 8 * v137);
    }

    else
    {
      v139 = _swiftEmptyArrayStorage;
    }

    v211 = *v212;
    v211(v215, &v9[v136], v214);
    sub_1000BC4D4(&qword_1016A5860, &qword_1013B3220);
    a1 = swift_allocObject();
    *(a1 + 16) = v208;
    sub_10062CD24(v9, a1 + v135, type metadata accessor for BeaconEstimatedLocation);
    v140 = v139[2];
    v141 = swift_isUniquelyReferenced_nonNull_native();
    if (!v141 || (v142 = v139[3] >> 1, v142 <= v140))
    {
      v139 = sub_100A5D0A0(v141, v140 + 1, 1, v139);
      v142 = v139[3] >> 1;
    }

    if (v142 <= v139[2])
    {
      goto LABEL_126;
    }

    swift_arrayInitWithCopy();

    ++v139[2];
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v216 = v41;
    a1 = v41;
    v144 = sub_1000210EC(v215);
    v146 = *(v41 + 2);
    v147 = (v145 & 1) == 0;
    v93 = __OFADD__(v146, v147);
    v148 = v146 + v147;
    if (v93)
    {
      goto LABEL_127;
    }

    v149 = v145;
    if (*(v41 + 3) < v148)
    {
      sub_100FED8A4(v148, v143);
      v41 = v216;
      a1 = v216;
      v144 = sub_1000210EC(v215);
      if ((v149 & 1) != (v150 & 1))
      {
        goto LABEL_139;
      }

LABEL_100:
      if (v149)
      {
        goto LABEL_84;
      }

      goto LABEL_101;
    }

    if (v143)
    {
      goto LABEL_100;
    }

    v178 = v144;
    a1 = sub_1000BC4D4(&qword_1016A58A0, &qword_1013B32A0);
    v186 = static _DictionaryStorage.copy(original:)();
    if (*(v41 + 2))
    {
      break;
    }

LABEL_119:

    v41 = v186;
    v144 = v178;
    if (v149)
    {
LABEL_84:
      *(*(v41 + 7) + 8 * v144) = v139;

      (*v210)(v215, v214);
      sub_10062CBB8(v9, type metadata accessor for BeaconEstimatedLocation);
      goto LABEL_85;
    }

LABEL_101:
    *&v41[8 * (v144 >> 6) + 64] |= 1 << v144;
    v151 = v205;
    a1 = v144;
    v152 = v214;
    v153 = v215;
    v211((*(v41 + 6) + *(v205 + 72) * v144), v215, v214);
    *(*(v41 + 7) + 8 * a1) = v139;
    v154 = v153;
    v9 = v204;
    (*(v151 + 8))(v154, v152);
    sub_10062CBB8(v9, type metadata accessor for BeaconEstimatedLocation);
    v155 = *(v41 + 2);
    v93 = __OFADD__(v155, 1);
    v156 = v155 + 1;
    if (v93)
    {
      goto LABEL_128;
    }

    *(v41 + 2) = v156;
LABEL_85:
    if (++v134 == v207)
    {

      v107 = v196;
      v115 = v201;
      goto LABEL_69;
    }
  }

  v157 = (v186 + 64);
  v158 = v41 + 64;
  v159 = ((1 << *(v186 + 32)) + 63) >> 6;
  v177 = v41 + 64;
  if (v186 != v41 || v157 >= &v158[8 * v159])
  {
    memmove(v157, v158, 8 * v159);
  }

  v160 = 0;
  *(v186 + 16) = *(v41 + 2);
  v161 = 1 << v41[32];
  if (v161 < 64)
  {
    v162 = ~(-1 << v161);
  }

  else
  {
    v162 = -1;
  }

  v163 = v162 & *(v41 + 8);
  v164 = ((v161 + 63) >> 6);
  v179 = v164;
  v180 = v133;
  if (v163)
  {
    do
    {
      v165 = __clz(__rbit64(v163));
      v181 = (v163 - 1) & v163;
LABEL_117:
      v168 = v165 | (v160 << 6);
      v169 = *(v41 + 6);
      v185 = *(v205 + 72) * v168;
      v170 = v189;
      v171 = v168;
      v183 = v168;
      v211(v189, v169 + v185, v214);
      v182 = *(*(v41 + 7) + 8 * v171);
      a1 = v186;
      v194((*(v186 + 48) + v185), v170, v214);
      *(*(a1 + 56) + 8 * v183) = v182;

      v133 = v180;
      v164 = v179;
      v163 = v181;
    }

    while (v181);
  }

  v166 = v160;
  while (1)
  {
    v160 = v166 + 1;
    if (__OFADD__(v166, 1))
    {
      break;
    }

    if (v160 >= v164)
    {
      goto LABEL_119;
    }

    v167 = *&v177[8 * v160];
    ++v166;
    if (v167)
    {
      v165 = __clz(__rbit64(v167));
      v181 = (v167 - 1) & v167;
      goto LABEL_117;
    }
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_140:

  sub_10000B3A8(a1, &qword_1016A5890, &qword_1013B3290);

  __break(1u);
  return result;
}

BOOL sub_1005D050C(uint64_t a1, char *a2)
{
  v74 = a2;
  v78 = a1;
  v3 = type metadata accessor for MemberSharingCircle(0);
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = __chkstk_darwin(v3);
  v84 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v63 - v6;
  v8 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v8 - 8);
  v77 = &v63 - v9;
  v10 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v76 = &v63 - v12;
  v13 = type metadata accessor for URL();
  v80 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v72 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v73 = &v63 - v17;
  __chkstk_darwin(v16);
  v79 = &v63 - v18;
  v19 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v19 - 8);
  v75 = &v63 - v20;
  v21 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v21 - 8);
  v23 = &v63 - v22;
  v24 = type metadata accessor for SharedBeaconRecord(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(v78, &v83);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v28 = swift_dynamicCast();
  v29 = *(v25 + 56);
  if (v28)
  {
    v71 = v11;
    v78 = v2;
    v29(v23, 0, 1, v24);
    sub_10062CC64(v23, v27, type metadata accessor for SharedBeaconRecord);
    v30 = *v74;
    v31 = *(v24 + 20);
    v64 = v27;
    v74 = &v27[v31];
    v70 = *(v30 + 168);
    if (qword_101694680 != -1)
    {
LABEL_24:
      swift_once();
    }

    v32 = sub_1000076D4(v13, qword_10177AC60);
    v33 = v79;
    v34 = *(v80 + 16);
    v34(v79, v32, v13);
    v35 = v73;
    v34(v73, v33, v13);
    v36 = *(v10 + 40);
    v69 = v36;
    v66 = type metadata accessor for DirectorySequence();
    v37 = *(v66 - 8);
    v65 = *(v37 + 56);
    v67 = v37 + 56;
    v68 = v10;
    v38 = v76;
    v65(&v76[v36], 1, 1, v66);
    v34(v38, v35, v13);
    *&v38[*(v10 + 36)] = v70;
    v34(v72, v35, v13);

    v39 = v77;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v40 = *(v80 + 8);
    v40(v35, v13);
    v40(v79, v13);
    v65(v39, 0, 1, v66);
    v41 = v38;
    sub_10062BF70(v39, &v38[v69]);
    v42 = *(v71 + 56);
    v43 = v75;
    v44 = v68;
    v42(v75, 1, 1, v68);
    sub_10000B3A8(v43, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v41, v43, &qword_1016A5978, &qword_101410D20);
    v45 = (v42)(v43, 0, 1, v44);
    __chkstk_darwin(v45);
    *(&v63 - 2) = v74;
    v46 = v78;
    sub_100E6C1A4(sub_10062BFE0, (&v63 - 4));
    v48 = v47;
    v49 = *(v47 + 16);
    if (v49)
    {
      v78 = v46;
      v10 = 0;
      v50 = _swiftEmptyArrayStorage;
      do
      {
        if (v10 >= *(v48 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v51 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        v52 = *(v81 + 72);
        sub_10062CD24(v48 + v51 + v52 * v10, v7, type metadata accessor for MemberSharingCircle);
        v53 = v7[*(v82 + 40)];
        v54 = v53 > 4;
        v55 = (1 << v53) & 0x16;
        if (v54 || v55 == 0)
        {
          sub_10062CBB8(v7, type metadata accessor for MemberSharingCircle);
        }

        else
        {
          sub_10062CC64(v7, v84, type metadata accessor for MemberSharingCircle);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v50;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101123FA0(0, v50[2] + 1, 1);
            v50 = v83;
          }

          v59 = v50[2];
          v58 = v50[3];
          v13 = v59 + 1;
          if (v59 >= v58 >> 1)
          {
            sub_101123FA0((v58 > 1), v59 + 1, 1);
            v50 = v83;
          }

          v50[2] = v13;
          sub_10062CC64(v84, v50 + v51 + v59 * v52, type metadata accessor for MemberSharingCircle);
        }

        ++v10;
      }

      while (v49 != v10);

      v61 = v50[2];

      sub_10062CBB8(v64, type metadata accessor for SharedBeaconRecord);
      return v61 != 0;
    }

    else
    {
      sub_10062CBB8(v64, type metadata accessor for SharedBeaconRecord);

      return 0;
    }
  }

  else
  {
    v60 = 1;
    v29(v23, 1, 1, v24);
    sub_10000B3A8(v23, &unk_101698C30, &unk_101392630);
  }

  return v60;
}

void sub_1005D0DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(char *, uint64_t, uint64_t), uint64_t a10)
{
  v108 = a8;
  v106 = a2;
  v105 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v16 = __chkstk_darwin(v105);
  v109 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v110 = &v101 - v18;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v20 = *(RequestBeacon - 8);
  __chkstk_darwin(RequestBeacon - 8);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a3;
  v121 = a4;
  v107 = a4;
  v122 = a5;
  v123 = a6;

  v23 = sub_10013D858(sub_10062B22C, v119, a1);
  v24 = v23;
  v116 = v23[2];
  if (!v116)
  {

    return;
  }

  v102 = 0;
  v25 = 0;
  v104 = a10;
  v103 = a9;
  v26 = *(v20 + 80);
  v114 = a7;
  v115 = v23 + ((v26 + 32) & ~v26);
  v112 = v23;
  v113 = v20;
  v111 = v22;
  do
  {
    if (v25 >= v24[2])
    {
      goto LABEL_70;
    }

    sub_10062CD24(&v115[*(v20 + 72) * v25], v22, type metadata accessor for FetchRequestBeacon);
    v28 = sub_100EA96D4();
    v30 = v29;
    v31 = *a7;
    if (*(*a7 + 16) && (v32 = sub_1000210EC(v22), (v33 & 1) != 0))
    {
      v34 = *(*(v31 + 56) + 8 * v32);
    }

    else
    {
      v34 = sub_100904268(_swiftEmptyArrayStorage);
    }

    v117 = v25;
    v125[0] = v28;
    v35 = sub_100397EB4(v30);
    v36 = v125[0];
    v118 = *(v125[0] + 16);
    if (v118)
    {
      v37 = 0;
      v38 = (v125[0] + 40);
      while (1)
      {
        if (v37 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_48;
        }

        v39 = *(v38 - 1);
        v40 = *v38;
        v41 = v34[2];

        if (v41)
        {
          v42 = sub_100771D58(v39, v40);
          if (v43)
          {
            break;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125[0] = v34;
        v56 = sub_100771D58(v39, v40);
        v57 = v34[2];
        v58 = (v55 & 1) == 0;
        v35 = v57 + v58;
        if (__OFADD__(v57, v58))
        {
          __break(1u);
          goto LABEL_65;
        }

        v59 = v55;
        if (v34[3] >= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v55 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            sub_101006344();
            if ((v59 & 1) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          sub_100FE8BB4(v35, isUniquelyReferenced_nonNull_native);
          v35 = sub_100771D58(v39, v40);
          if ((v59 & 1) != (v60 & 1))
          {
            goto LABEL_72;
          }

          v56 = v35;
          if ((v59 & 1) == 0)
          {
LABEL_28:
            v34 = v125[0];
            *(v125[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
            v61 = (v34[6] + 16 * v56);
            *v61 = v39;
            v61[1] = v40;
            *(v34[7] + 8 * v56) = 1;
            v62 = v34[2];
            v50 = __OFADD__(v62, 1);
            v63 = v62 + 1;
            if (v50)
            {
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
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            goto LABEL_38;
          }
        }

        v34 = v125[0];
        *(*(v125[0] + 56) + 8 * v56) = 1;
LABEL_12:
        v37 = (v37 + 1);
        v38 += 2;
        if (v118 == v37)
        {
          goto LABEL_3;
        }
      }

      v44 = *(v34[7] + 8 * v42);
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_67;
      }

      v46 = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v34;
      v35 = sub_100771D58(v39, v40);
      v48 = v34[2];
      v49 = (v47 & 1) == 0;
      v50 = __OFADD__(v48, v49);
      v51 = v48 + v49;
      if (v50)
      {
        goto LABEL_68;
      }

      v52 = v47;
      if (v34[3] >= v51)
      {
        if ((v46 & 1) == 0)
        {
          v65 = v35;
          sub_101006344();
          v35 = v65;
          if ((v52 & 1) == 0)
          {
LABEL_37:
            v34 = v125[0];
            *(v125[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
            v66 = (v34[6] + 16 * v35);
            *v66 = v39;
            v66[1] = v40;
            *(v34[7] + 8 * v35) = v45;
            v67 = v34[2];
            v50 = __OFADD__(v67, 1);
            v63 = v67 + 1;
            if (v50)
            {
              goto LABEL_69;
            }

LABEL_38:
            v34[2] = v63;
            goto LABEL_12;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_100FE8BB4(v51, v46);
        v35 = sub_100771D58(v39, v40);
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_72;
        }
      }

      if ((v52 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_33:
      v64 = v35;

      v34 = v125[0];
      *(*(v125[0] + 56) + 8 * v64) = v45;
      goto LABEL_12;
    }

LABEL_3:
    v25 = v117 + 1;

    a7 = v114;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v125[0] = *a7;
    *a7 = 0x8000000000000000;
    v22 = v111;
    sub_100FFE844(v34, v111, v27);
    *a7 = v125[0];
    sub_10062CBB8(v22, type metadata accessor for FetchRequestBeacon);

    v24 = v112;
    v20 = v113;
  }

  while (v25 != v116);
  v68 = v107;
  v69 = v108;
  if (v108)
  {

    v70 = v102;
    v35 = sub_1005D1FE0(v24, v68 + 24, v69);
    if (!v70)
    {
LABEL_48:
      v80 = v35;

      v81 = v80 + 64;
      v82 = 1 << *(v80 + 32);
      v83 = -1;
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      v84 = v83 & *(v80 + 64);
      v85 = (v82 + 63) >> 6;
      v118 = v80;

      v86 = 0;
      while (v84)
      {
LABEL_58:
        v90 = __clz(__rbit64(v84)) | (v86 << 6);
        v91 = v118;
        isa = v118[6].isa;
        v93 = type metadata accessor for UUID();
        v94 = *(v93 - 8);
        v95 = v110;
        (*(v94 + 16))(v110, isa + *(v94 + 72) * v90, v93);
        v96 = *(v91[7].isa + v90);
        *(v95 + *(v105 + 48)) = v96;
        v97 = v109;
        sub_1000D2A70(v95, v109, &qword_1016A5890, &qword_1013B3290);

        v98 = v106;
        if (*(v106 + 16))
        {
          v99 = sub_1000210EC(v97);
          if (v100)
          {
            v87 = *(*(v98 + 56) + v99);
          }

          else
          {
            v87 = 0;
          }

          v97 = v109;
        }

        else
        {
          v87 = 0;
        }

        v84 &= v84 - 1;
        (*(v94 + 8))(v97, v93);
        v88 = v110;
        v103(v110, v96, v87);
        sub_10000B3A8(v88, &qword_1016A5890, &qword_1013B3290);
      }

      while (1)
      {
        v89 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_71;
        }

        if (v89 >= v85)
        {

          return;
        }

        v84 = *(v81 + 8 * v89);
        ++v86;
        if (v84)
        {
          v86 = v89;
          goto LABEL_58;
        }
      }
    }

    type metadata accessor for LocationFetcher(0);
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v124 = v70;
      v125[0] = v73;
      *v72 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v74 = String.init<A>(describing:)();
      v76 = sub_1000136BC(v74, v75, v125);

      *(v72 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v37, v71, "Error fetching: %{public}s.", v72, 0xCu);
      sub_100007BAC(v73);
    }

    else
    {
LABEL_65:
    }
  }

  else
  {

    type metadata accessor for LocationFetcher(0);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Fatal: Error fetching - while policy specified from ACSN and no server interaction controller provided.", v79, 2u);
    }
  }
}

uint64_t sub_1005D1774(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = __chkstk_darwin(v9 - 8);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v65 - v12;
  v71 = type metadata accessor for UUID();
  v73 = *(v71 - 8);
  v14 = __chkstk_darwin(v71);
  v68 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v65 - v16;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v18 = __chkstk_darwin(RequestBeacon - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v65 - v21;
  swift_beginAccess();
  v23 = *a2;
  v24 = a1;

  v25 = sub_1005C8A30(a1, v23);

  type metadata accessor for LocationFetcher(0);
  if (v25)
  {
    sub_10062CD24(v24, v20, type metadata accessor for FetchRequestBeacon);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v74[0] = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_10062CBB8(v20, type metadata accessor for FetchRequestBeacon);
      v33 = sub_1000136BC(v30, v32, v74);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Skipping completed beacon %{private,mask.hash}s which has enough locations.", v28, 0x16u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_10062CBB8(v20, type metadata accessor for FetchRequestBeacon);
    }

    return !v25;
  }

  v67 = a5;
  v70 = v24;
  sub_10062CD24(v24, v22, type metadata accessor for FetchRequestBeacon);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v74[0] = v65;
    *v36 = 141558275;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = v71;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v13;
    v39 = v25;
    v41 = v40;
    sub_10062CBB8(v22, type metadata accessor for FetchRequestBeacon);
    v42 = sub_1000136BC(v38, v41, v74);
    v25 = v39;
    v13 = v66;

    *(v36 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Can continue fetching beacon %{private,mask.hash}s.", v36, 0x16u);
    sub_100007BAC(v65);
  }

  else
  {

    sub_10062CBB8(v22, type metadata accessor for FetchRequestBeacon);
    v37 = v71;
  }

  v43 = *(v73 + 16);
  v44 = v70;
  v43(v72, v70, v37);
  swift_beginAccess();
  v45 = *a4;
  v46 = v67;
  if (*(*a4 + 16) && (v47 = sub_1000210EC(v44), (v48 & 1) != 0))
  {
    v49 = *(*(v45 + 56) + 8 * v47);
  }

  else
  {
    v49 = 0;
  }

  result = swift_endAccess();
  if (!__OFADD__(v49, 1))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *a4;
    *a4 = 0x8000000000000000;
    v52 = v72;
    sub_100FFE858(v49 + 1, v72, isUniquelyReferenced_nonNull_native);
    (*(v73 + 8))(v52, v37);
    *a4 = v75;
    swift_endAccess();
    swift_beginAccess();
    v53 = *v46;
    if (*(*v46 + 16) && (v54 = sub_1000210EC(v70), (v55 & 1) != 0))
    {
      v56 = v54;
      v57 = *(v53 + 56);
      v58 = type metadata accessor for Date();
      v59 = v25;
      v60 = *(v58 - 8);
      (*(v60 + 16))(v13, v57 + *(v60 + 72) * v56, v58);
      (*(v60 + 56))(v13, 0, 1, v58);
      v25 = v59;
      v37 = v71;
    }

    else
    {
      v58 = type metadata accessor for Date();
      (*(*(v58 - 8) + 56))(v13, 1, 1, v58);
    }

    swift_endAccess();
    type metadata accessor for Date();
    v61 = *(v58 - 8);
    v62 = (*(v61 + 48))(v13, 1, v58);
    sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
    if (v62 == 1)
    {
      v63 = v68;
      v43(v68, v70, v37);
      v64 = v69;
      static Date.trustedNow.getter(v69);
      (*(v61 + 56))(v64, 0, 1, v58);
      swift_beginAccess();
      sub_1001DEE50(v64, v63);
      swift_endAccess();
    }

    return !v25;
  }

  __break(1u);
  return result;
}

NSObject *sub_1005D1FE0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v9 = type metadata accessor for LocationFetcher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005DF640(a3, a1);
  if (!v4)
  {
    v14 = v13;
    v29[1] = 0;
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    v16 = swift_allocObject();
    v33 = a1;
    v17 = v16;
    *(v16 + 16) = 0;
    v34 = (v16 + 16);
    v35 = v14;
    v32 = type metadata accessor for LocationFetcher;
    sub_10062CD24(v6, v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
    v18 = *(v10 + 80);
    v19 = (v18 + 16) & ~v18;
    v31 = v11 + 7;
    v20 = (v11 + 7 + v19) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v30 = type metadata accessor for LocationFetcher;
    sub_10062CC64(v12, v21 + v19, type metadata accessor for LocationFetcher);
    *(v21 + v20) = v17;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v36 = v17;

    v22 = v15;
    Future.addFailure(block:)();

    v23 = swift_allocObject();
    *(v23 + 16) = _swiftEmptyDictionarySingleton;
    v29[0] = v23 + 16;
    sub_10062CD24(v6, v12, v32);
    v24 = (v18 + 24) & ~v18;
    v25 = (v31 + v24) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    sub_10062CC64(v12, v26 + v24, v30);
    *(v26 + v25) = v33;
    *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v5 = v22;

    Future.addSuccess(block:)();

    OS_dispatch_group.wait()();
    v27 = v34;
    swift_beginAccess();
    if (*v27)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {

      swift_beginAccess();
      v5 = *(v23 + 16);
    }
  }

  return v5;
}

uint64_t sub_1005D2344(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v6 = v3[6];
  v7 = v3[7];
  sub_1000035D0(v3 + 3, v6);
  v8 = (*(v7 + 56))(v6, v7);
  v49[0] = a1;

  sub_100626D78(v49, v8);

  v9 = v49[0];
  v54 = 0;
  v52 = _swiftEmptyDictionarySingleton;
  v53 = _swiftEmptyDictionarySingleton;
  v10 = v4[6];
  v11 = v4[7];
  sub_1000035D0(v4 + 3, v10);
  v12 = v11[4](v10, v11);
  v13 = *(v12 + 16);
  v14 = (v12 + 32);
  while (v13)
  {
    if ((*v14 & 1) == 0)
    {

LABEL_7:

      v16 = v4[6];
      v11 = v4[7];
      sub_1000035D0(v4 + 3, v16);
      v17 = v11[4](v16, v11);
      v18 = *(v17 + 16);
      v19 = (v17 + 32);
      while (v18)
      {
        if (*v19)
        {

LABEL_22:

          v33 = v9 + 32;
          v34 = -*(v9 + 16);
          v35 = -1;
          while (v34 + v35 != -1)
          {
            if (++v35 >= *(v9 + 16))
            {
              goto LABEL_35;
            }

            v36 = v33 + 40;
            sub_10001F280(v33, v49);
            v37 = v50;
            v38 = v51;
            sub_1000035D0(v49, v50);
            v39 = (*(v38 + 112))(v37, v38);
            sub_100007BAC(v49);
            v33 = v36;
            if (v39)
            {
              v40 = sub_10130A5E4();
              if ((v40 & 0x8000000000000000) != 0)
              {
                goto LABEL_36;
              }

              v41 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_37;
              }

              v42 = v4[6];
              v43 = v4[7];
              sub_1000035D0(v4 + 3, v42);
              v44 = sub_100890328(v42, v43);
              v23 = v44 * v41;
              if ((v44 * v41) >> 64 != (v44 * v41) >> 63)
              {
                goto LABEL_38;
              }

              v27 = 0;
              v28 = 1;
              v29 = *(v9 + 16);
              if (v29)
              {
                goto LABEL_17;
              }

              goto LABEL_30;
            }
          }

          goto LABEL_13;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v19;
        --v18;
        if (v20)
        {
          goto LABEL_22;
        }
      }

      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v14;
    --v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

LABEL_13:
  v21 = v4[6];
  v22 = v4[7];
  sub_1000035D0(v4 + 3, v21);
  v23 = (*(v22 + 16))(v21, v22);
  v24 = v4[6];
  v25 = v4[7];
  sub_1000035D0(v4 + 3, v24);
  v26 = (*(v25 + 32))(v24, v25);
  if (*(v26 + 16))
  {
    v27 = *(v26 + 32);
  }

  else
  {
    v27 = 0;
  }

  v28 = 0;
  v29 = *(v9 + 16);
  if (v29)
  {
LABEL_17:
    v30 = 0;
    v31 = v9 + 32;
    while (v30 < *(v9 + 16))
    {
      sub_10001F280(v31, v49);
      v11 = objc_autoreleasePoolPush();
      sub_1005E4A90(v4, v49, v23, v27, &v54, &v53, v28, &v52, a2, a3);
      ++v30;
      objc_autoreleasePoolPop(v11);
      sub_100007BAC(v49);
      v31 += 40;
      if (v29 == v30)
      {
        v32 = v53;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    objc_autoreleasePoolPop(v11);
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_30:
    v32 = _swiftEmptyDictionarySingleton;
LABEL_31:

    sub_1005E0BB4(v32);
    if (*(v45 + 16))
    {
      a2();
    }
  }

  return result;
}

uint64_t sub_1005D291C(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v93 = a4;
  v89 = a3;
  v6 = type metadata accessor for UUID();
  v91 = *(v6 - 8);
  v92 = v6;
  __chkstk_darwin(v6);
  v85 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v79 - v9;
  v11 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v12 = __chkstk_darwin(v11);
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v83 = &v79 - v15;
  v16 = __chkstk_darwin(v14);
  v97 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v96 = &v79 - v19;
  v20 = __chkstk_darwin(v18);
  v88 = &v79 - v21;
  __chkstk_darwin(v20);
  v23 = &v79 - v22;
  v24 = type metadata accessor for Date();
  v98 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v84 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v95 = &v79 - v28;
  __chkstk_darwin(v27);
  v30 = &v79 - v29;
  v31 = a1;
  sub_1000D2A70(a1, v23, &qword_1016A5890, &qword_1013B3290);
  v90 = v11;

  swift_beginAccess();
  v32 = *a2;
  if (*(v32 + 16) && (v33 = sub_1000210EC(v23), (v34 & 1) != 0))
  {
    v35 = v24;
    (*(v98 + 16))(v10, *(v32 + 56) + *(v98 + 72) * v33, v24);
    v36 = 0;
    v37 = v91;
  }

  else
  {
    v36 = 1;
    v37 = v91;
    v35 = v24;
  }

  v38 = v98;
  (*(v98 + 56))(v10, v36, 1, v35);
  swift_endAccess();
  v39 = *(v38 + 48);
  v40 = v39(v10, 1, v35);
  v94 = v35;
  if (v40 == 1)
  {
    static Date.distantPast.getter();
    if (v39(v10, 1, v35) != 1)
    {
      sub_10000B3A8(v10, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v38 + 32))(v30, v10, v35);
  }

  v41 = v37;
  v42 = *(v37 + 8);
  v43 = v92;
  v91 = v37 + 8;
  v87 = v42;
  v42(v23, v92);
  type metadata accessor for LocationFetcher(0);
  v44 = v31;
  v45 = v31;
  v46 = v88;
  sub_1000D2A70(v45, v88, &qword_1016A5890, &qword_1013B3290);
  sub_1000D2A70(v44, v96, &qword_1016A5890, &qword_1013B3290);
  v47 = v98;
  (*(v98 + 16))(v95, v30, v94);
  sub_1000D2A70(v44, v97, &qword_1016A5890, &qword_1013B3290);
  swift_retain_n();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v81 = v49;
    v82 = v48;
    v89 = v30;
    v50 = v43;
    v51 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v99 = v80;
    *v51 = 134219011;
    v52 = v83;
    sub_1000D2A70(v46, v83, &qword_1016A5890, &qword_1013B3290);
    v53 = *(*(v52 + *(v90 + 48)) + 16);

    v54 = v87;
    v87(v52, v50);
    sub_10000B3A8(v46, &qword_1016A5890, &qword_1013B3290);
    *(v51 + 4) = v53;
    *(v51 + 12) = 2160;
    *(v51 + 14) = 1752392040;
    *(v51 + 22) = 2081;
    v55 = v96;
    sub_1000D2A70(v96, v52, &qword_1016A5890, &qword_1013B3290);

    v56 = v85;
    (*(v41 + 32))(v85, v52, v50);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    v54(v56, v50);
    sub_10000B3A8(v55, &qword_1016A5890, &qword_1013B3290);
    v60 = sub_1000136BC(v57, v59, &v99);

    *(v51 + 24) = v60;
    *(v51 + 32) = 2048;
    v61 = v84;
    static Date.trustedNow.getter(v84);
    v62 = v95;
    Date.timeIntervalSince(_:)();
    v64 = v63;
    v65 = *(v47 + 8);
    v66 = v61;
    v67 = v94;
    v65(v66, v94);
    v65(v62, v67);
    *(v51 + 34) = fabs(v64);
    *(v51 + 42) = 2048;
    v68 = v97;
    v69 = v86;
    sub_1000D2A70(v97, v86, &qword_1016A5890, &qword_1013B3290);

    v70 = v93;
    swift_beginAccess();
    v71 = *(v70 + 16);
    if (*(v71 + 16) && (v72 = sub_1000210EC(v69), (v73 & 1) != 0))
    {
      v74 = *(*(v71 + 56) + 8 * v72);
    }

    else
    {
      v74 = 0;
    }

    swift_endAccess();
    v87(v69, v92);

    sub_10000B3A8(v68, &qword_1016A5890, &qword_1013B3290);
    *(v51 + 44) = v74;

    v78 = v82;
    _os_log_impl(&_mh_execute_header, v82, v81, "Unterminated fetch with %ld results for beacon %{private,mask.hash}s after %f seconds, %ld round trip(s).", v51, 0x34u);
    sub_100007BAC(v80);

    return (v65)(v89, v67);
  }

  else
  {

    sub_10000B3A8(v97, &qword_1016A5890, &qword_1013B3290);
    sub_10000B3A8(v46, &qword_1016A5890, &qword_1013B3290);

    v75 = *(v47 + 8);
    v76 = v94;
    v75(v95, v94);
    sub_10000B3A8(v96, &qword_1016A5890, &qword_1013B3290);
    return (v75)(v30, v76);
  }
}

uint64_t sub_1005D322C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for BeaconObservation(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a2 + 8);
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 16))(v12, a1, v14);
  v15 = *(v9 + 28);
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 16))(&v12[v15], a3, v16);
  v12[*(v9 + 32)] = a4;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  sub_10062CD24(v12, v18 + v17, type metadata accessor for BeaconObservation);
  type metadata accessor for Transaction();
  v21 = v13;
  v22 = v18;
  v23 = 0;
  v24 = 0;
  static Transaction.named<A>(_:with:)();

  return sub_10062CBB8(v12, type metadata accessor for BeaconObservation);
}

uint64_t sub_1005D346C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Date();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for BeaconIdentifier(0);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for BeaconEstimatedLocation(0);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for DeviceEvent.Location(0);
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[30] = v8;
  *v8 = v3;
  v8[1] = sub_1005D376C;

  return daemon.getter();
}

uint64_t sub_1005D376C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 248) = a1;

  v3 = swift_task_alloc();
  *(v2 + 256) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009774(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_1005D3948;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005D3948(uint64_t a1)
{
  *(*v2 + 264) = a1;

  if (v1)
  {

    v4 = sub_1005D3AA0;
    v5 = 0;
  }

  else
  {

    v4 = sub_1005D3C48;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005D3AA0()
{
  type metadata accessor for LocationFetcher(0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Missing PencilPairingService!", v3, 2u);
  }

  **(v0 + 24) = sub_100909DD0(_swiftEmptyArrayStorage);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1005D3C48()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1005D3CEC;
  v2 = *(v0 + 40);

  return sub_100B6A720(v2);
}

uint64_t sub_1005D3CEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v4 = sub_1005D47A0;
  }

  else
  {
    v4 = sub_1005D3E00;
  }

  return _swift_task_switch(v4, 0, 0);
}

unint64_t sub_1005D3E00()
{
  v1 = *(v0 + 280);
  v100 = *(v0 + 184);
  v89 = *(v0 + 160);
  v90 = *(v0 + 176);
  v82 = *(v0 + 128);
  v87 = *(v0 + 120);
  v88 = *(v0 + 144);
  v2 = *(v0 + 96);
  v86 = *(v0 + 72);
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v96 = (*(v0 + 168) + 48);
  v99 = (v2 + 8);
  v8 = *(v0 + 56);
  v91 = (v8 + 16);
  v85 = (v8 + 56);
  v97 = *(v0 + 96);
  v83 = (v8 + 32);
  v84 = (v2 + 32);
  v98 = *(v0 + 280);

  v9 = 0;
  v92 = _swiftEmptyDictionarySingleton;
  v95 = v3;
  for (i = v7; v6; v7 = i)
  {
    v10 = v9;
LABEL_8:
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v13 = *(v0 + 152);
    v101 = *(v0 + 160);
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v10 << 6);
    v16 = *(v97 + 72);
    v93 = *(v97 + 16);
    v93(v11, *(v98 + 48) + v16 * v15, *(v0 + 88));
    v17 = *(v98 + 56);
    v18 = type metadata accessor for DeviceEvent(0);
    sub_10062CD24(v17 + *(*(v18 - 8) + 72) * v15, v11 + *(v100 + 48), type metadata accessor for DeviceEvent);
    sub_1000D2A70(v11, v12, &qword_1016A58E0, &unk_1013B3330);
    v19 = v12 + *(v100 + 48);
    v20 = v18;
    sub_1000D2A70(v19 + *(v18 + 28), v13, &qword_101699E50, &qword_1013D97C0);
    sub_10062CBB8(v19, type metadata accessor for DeviceEvent);
    v21 = (*v96)(v13, 1, v101);
    v22 = *(v0 + 224);
    if (v21 == 1)
    {
      v23 = *(v0 + 152);
      v24 = *(v0 + 88);
      sub_10000B3A8(*(v0 + 232), &qword_1016A58E0, &unk_1013B3330);
      sub_10000B3A8(v23, &qword_101699E50, &qword_1013D97C0);
      (*v99)(v22, v24);
    }

    else
    {
      v66 = v16;
      v25 = *(v0 + 208);
      v67 = *(v0 + 216);
      v71 = *(v0 + 104);
      v73 = *(v0 + 176);
      v27 = *(v0 + 80);
      v26 = *(v0 + 88);
      v78 = *(v0 + 64);
      v80 = *(v0 + 200);
      v75 = *(v0 + 48);
      v28 = *(v0 + 232);
      sub_10062CC64(*(v0 + 152), v73, type metadata accessor for DeviceEvent.Location);
      v102 = *v99;
      (*v99)(v22, v26);
      sub_1000D2A70(v28, v67, &qword_1016A58E0, &unk_1013B3330);
      UUID.init()();
      sub_1000D2A70(v28, v25, &qword_1016A58E0, &unk_1013B3330);
      v29 = v25 + *(v100 + 48);
      v77 = v20;
      sub_10062CD24(v29 + *(v20 + 36), v27, type metadata accessor for BeaconIdentifier);
      sub_10062CBB8(v29, type metadata accessor for DeviceEvent);
      v93(v71, v27 + *(v86 + 20), v26);
      sub_10062CBB8(v27, type metadata accessor for BeaconIdentifier);
      v30 = *v73;
      v32 = *(v90 + 8);
      v31 = *(v90 + 16);
      v69 = *v91;
      (*v91)(v78, &v73[*(v89 + 28)], v75);
      sub_1000D2A70(v28, v80, &qword_1016A58E0, &unk_1013B3330);
      v33 = v80 + *(v100 + 48);
      LOBYTE(v29) = *(v33 + 9);
      sub_10062CBB8(v33, type metadata accessor for DeviceEvent);
      v34 = *(v0 + 232);
      v74 = 0x104121110040200uLL >> (8 * v29);
      v76 = *(v0 + 208);
      v35 = *(v0 + 192);
      v36 = *(v0 + 144);
      v79 = *(v0 + 136);
      v81 = *(v0 + 216);
      v68 = *(v0 + 112);
      v37 = *(v0 + 88);
      v70 = *(v0 + 104);
      v72 = *(v0 + 64);
      v38 = *(v0 + 48);
      v102(*(v0 + 200), v37);
      v39 = v87[12];
      sub_1000D2A70(v34, v35, &qword_1016A58E0, &unk_1013B3330);
      v40 = v35 + *(v100 + 48);
      v69(&v36[v39], (v40 + *(v77 + 24)), v38);
      sub_10062CBB8(v40, type metadata accessor for DeviceEvent);
      (*v85)(&v36[v39], 0, 1, v38);
      *v36 = 0;
      *(v88 + 8) = 0xC000000000000000;
      v41 = *v84;
      (*v84)(&v36[v87[5]], v68, v37);
      v41(&v36[v87[6]], v70, v37);
      *&v36[v87[7]] = v30;
      *&v36[v87[8]] = v32;
      *&v36[v87[9]] = v31;
      (*v83)(&v36[v87[10]], v72, v38);
      v36[v87[11]] = v74;
      *&v36[v87[13]] = 0;
      v102(v35, v37);
      v102(v76, v37);
      sub_10062CC64(v36, v79, type metadata accessor for BeaconEstimatedLocation);
      v42 = v92;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1000210EC(v81);
      v46 = v92[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v50 = v45;
      if (v92[3] >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = result;
          sub_101009DF0();
          result = v64;
          v42 = v92;
        }
      }

      else
      {
        v51 = *(v0 + 216);
        sub_100FEFF9C(v49, isUniquelyReferenced_nonNull_native);
        v42 = v92;
        result = sub_1000210EC(v51);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_27;
        }
      }

      v53 = *(v0 + 232);
      v92 = v42;
      if (v50)
      {
        v54 = *(v0 + 176);
        sub_10062AF58(*(v0 + 136), v42[7] + *(v82 + 72) * result);
        sub_10062CBB8(v54, type metadata accessor for DeviceEvent.Location);
        sub_10000B3A8(v53, &qword_1016A58E0, &unk_1013B3330);
      }

      else
      {
        v55 = *(v0 + 216);
        v56 = *(v0 + 176);
        v57 = *(v0 + 136);
        v58 = *(v0 + 88);
        v42[(result >> 6) + 8] |= 1 << result;
        v59 = result;
        v93(v42[6] + result * v66, v55, v58);
        sub_10062CC64(v57, v42[7] + *(v82 + 72) * v59, type metadata accessor for BeaconEstimatedLocation);
        sub_10062CBB8(v56, type metadata accessor for DeviceEvent.Location);
        result = sub_10000B3A8(v53, &qword_1016A58E0, &unk_1013B3330);
        v60 = v42[2];
        v48 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v48)
        {
          goto LABEL_31;
        }

        v42[2] = v61;
      }

      v62 = *(v0 + 216);
      v63 = *(v100 + 48);
      v102(v62, *(v0 + 88));
      sub_10062CBB8(v62 + v63, type metadata accessor for DeviceEvent);
    }

    v9 = v10;
    v3 = v95;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      **(v0 + 24) = v92;

      v65 = *(v0 + 8);

      return v65();
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_27:

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1005D47A0()
{
  *(v0 + 16) = *(v0 + 288);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 296) != 1)
  {
    type metadata accessor for LocationFetcher(0);
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138543362;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, v1, v2, "Failure on local findable locations fetch! %{public}@", v3, 0xCu);
      sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  v6 = sub_100909DD0(_swiftEmptyArrayStorage);

  **(v0 + 24) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005D4A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = *(type metadata accessor for LocationFetcher(0) - 8);
  v4[26] = v5;
  v4[27] = *(v5 + 64);
  v4[28] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[29] = v6;
  v7 = *(v6 - 8);
  v4[30] = v7;
  v4[31] = *(v7 + 64);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle(0);
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[41] = v9;
  *v9 = v4;
  v9[1] = sub_1005D4C24;

  return daemon.getter();
}

uint64_t sub_1005D4C24(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 336) = a1;

  v3 = swift_task_alloc();
  *(v2 + 344) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009774(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_1005D4E00;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005D4E00(uint64_t a1)
{
  *(*v2 + 352) = a1;

  if (v1)
  {

    v3 = sub_1005D61F8;
  }

  else
  {

    v3 = sub_1005D4F50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005D4F50()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 16);
  *(v0 + 360) = v2;
  if (v2)
  {
    v3 = *(v0 + 352);
    *(v0 + 368) = 0;
    sub_10001F280(v1 + 32, v0 + 16);
    v4 = *(v3 + 136);
    *(v0 + 376) = v4;
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v5);
    (*(*(*(v6 + 8) + 8) + 32))(v5);

    return _swift_task_switch(sub_1005D50E0, v4, 0);
  }

  else
  {

    (*(v0 + 176))(v7);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1005D50E0()
{
  v1 = v0[47];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[30];
  v5 = v0[29];
  v6 = *(v4 + 16);
  v0[48] = v6;
  v0[49] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v5);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[50] = v8;
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, v3, v5);

  v9 = swift_task_alloc();
  v0[51] = v9;
  v10 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v9 = v0;
  v9[1] = sub_1005D525C;

  return unsafeBlocking<A>(context:_:)(v0 + 19, 0xD000000000000010, 0x800000010134A8C0, sub_10062CA88, v8, v10);
}

uint64_t sub_1005D525C()
{
  v1 = *(*v0 + 376);

  return _swift_task_switch(sub_1005D5388, v1, 0);
}

uint64_t sub_1005D5388()
{
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[30];
  v4 = *(v3 + 8);
  v0[52] = v4;
  v0[53] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v0[54] = v0[19];

  return _swift_task_switch(sub_1005D5414, 0, 0);
}

uint64_t sub_1005D5414()
{
  v39 = v0;
  v1 = *(v0 + 432);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 384);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v5 = *(v0 + 296);
    v6 = *(v0 + 272);
    v7 = *(v0 + 232);
    v8 = *(*(v0 + 304) + 80);
    sub_10062CD24(v1 + ((v8 + 32) & ~v8), v3, type metadata accessor for MemberSharingCircle);

    sub_10062CC64(v3, v4, type metadata accessor for MemberSharingCircle);
    v2(v6, v4 + *(v5 + 28), v7);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v9);
    (*(*(*(v10 + 8) + 8) + 32))(v9);
    v11 = swift_task_alloc();
    *(v0 + 440) = v11;
    *v11 = v0;
    v11[1] = sub_1005D58EC;
    v12 = *(v0 + 264);
    v13 = *(v0 + 272);

    return sub_1002D901C(v13, v12);
  }

  else
  {

    if (qword_101694518 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177A830);
    sub_10001F280(v0 + 16, v0 + 96);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 416);
      v19 = *(v0 + 288);
      v20 = *(v0 + 232);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      v24 = *(v0 + 120);
      v23 = *(v0 + 128);
      sub_1000035D0((v0 + 96), v24);
      (*(*(*(v23 + 8) + 8) + 32))(v24);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v18(v19, v20);
      sub_100007BAC((v0 + 96));
      v28 = sub_1000136BC(v25, v27, &v38);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "No member sharing circle found for imported beacon %{private,mask.hash}s.", v21, 0x16u);
      sub_100007BAC(v22);
    }

    else
    {

      sub_100007BAC((v0 + 96));
    }

    v29 = *(v0 + 360);
    v30 = *(v0 + 368) + 1;
    sub_100007BAC((v0 + 16));
    if (v30 == v29)
    {

      (*(v0 + 176))(v31);

      v32 = *(v0 + 8);

      return v32();
    }

    else
    {
      v33 = *(v0 + 368);
      *(v0 + 368) = v33 + 1;
      v34 = *(v0 + 352);
      sub_10001F280(*(v0 + 192) + 40 * v33 + 72, v0 + 16);
      v35 = *(v34 + 136);
      *(v0 + 376) = v35;
      v36 = *(v0 + 40);
      v37 = *(v0 + 48);
      sub_1000035D0((v0 + 16), v36);
      (*(*(*(v37 + 8) + 8) + 32))(v36);

      return _swift_task_switch(sub_1005D50E0, v35, 0);
    }
  }
}

uint64_t sub_1005D58EC(uint64_t a1)
{
  v4 = *v2;
  v4[56] = v1;

  v5 = v4[52];
  v6 = v4[33];
  v7 = v4[29];
  if (v1)
  {
    v5(v6, v7);
    v8 = sub_1005D62D0;
  }

  else
  {
    v4[57] = a1;
    v5(v6, v7);
    v8 = sub_1005D5A70;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005D5A70()
{
  v1 = v0[57];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  sub_10062CD24(v0[25], v2, type metadata accessor for LocationFetcher);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v0[58] = v7;
  sub_10062CC64(v2, v7 + v5, type metadata accessor for LocationFetcher);
  *(v7 + v6) = v1;
  v8 = swift_task_alloc();
  v0[59] = v8;
  v9 = sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  *v8 = v0;
  v8[1] = sub_1005D5BE0;

  return unsafeBlocking<A>(context:_:)(v0 + 21, 0xD000000000000011, 0x800000010135B520, sub_10062CFC4, v7, v9);
}

uint64_t sub_1005D5BE0()
{

  return _swift_task_switch(sub_1005D5D1C, 0, 0);
}

uint64_t sub_1005D5D1C()
{
  v1 = *(v0 + 320);
  (*(v0 + 416))(*(v0 + 272), *(v0 + 232));
  sub_10062CBB8(v1, type metadata accessor for MemberSharingCircle);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368) + 1;
  sub_100007BAC((v0 + 16));
  if (v3 == v2)
  {

    (*(v0 + 176))(v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 368);
    *(v0 + 368) = v7 + 1;
    v8 = *(v0 + 352);
    sub_10001F280(*(v0 + 192) + 40 * v7 + 72, v0 + 16);
    v9 = *(v8 + 136);
    *(v0 + 376) = v9;
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v10);
    (*(*(*(v11 + 8) + 8) + 32))(v10);

    return _swift_task_switch(sub_1005D50E0, v9, 0);
  }
}

uint64_t sub_1005D5EF8()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1005D66E8;
  }

  else
  {
    v2 = sub_1005D600C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005D600C()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 232);

  v1(v3, v4);
  sub_10062CBB8(v2, type metadata accessor for MemberSharingCircle);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368) + 1;
  sub_100007BAC((v0 + 16));
  if (v6 == v5)
  {

    (*(v0 + 176))(v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 368);
    *(v0 + 368) = v10 + 1;
    v11 = *(v0 + 352);
    sub_10001F280(*(v0 + 192) + 40 * v10 + 72, v0 + 16);
    v12 = *(v11 + 136);
    *(v0 + 376) = v12;
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v13);
    (*(*(*(v14 + 8) + 8) + 32))(v13);

    return _swift_task_switch(sub_1005D50E0, v12, 0);
  }
}

uint64_t sub_1005D61F8()
{
  (*(v0 + 176))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005D62D0()
{
  if (qword_101694518 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 496) = sub_1000076D4(v1, qword_10177A830);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch imported item locations: %@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = *(v0 + 448);

  *(v0 + 160) = v7;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 144) == 1 && *(v0 + 136) > 5)
  {
    v22 = swift_task_alloc();
    *(v0 + 480) = v22;
    *v22 = v0;
    v22[1] = sub_1005D5EF8;
    v23 = *(v0 + 272);

    return sub_100191968(v23, 2);
  }

  else
  {
    v8 = *(v0 + 416);
    v9 = *(v0 + 320);
    v10 = *(v0 + 272);
    v11 = *(v0 + 232);

    v8(v10, v11);
    sub_10062CBB8(v9, type metadata accessor for MemberSharingCircle);
    v12 = *(v0 + 360);
    v13 = *(v0 + 368) + 1;
    sub_100007BAC((v0 + 16));
    if (v13 == v12)
    {

      (*(v0 + 176))(v14);

      v15 = *(v0 + 8);

      return v15();
    }

    else
    {
      v17 = *(v0 + 368);
      *(v0 + 368) = v17 + 1;
      v18 = *(v0 + 352);
      sub_10001F280(*(v0 + 192) + 40 * v17 + 72, v0 + 16);
      v19 = *(v18 + 136);
      *(v0 + 376) = v19;
      v20 = *(v0 + 40);
      v21 = *(v0 + 48);
      sub_1000035D0((v0 + 16), v20);
      (*(*(*(v21 + 8) + 8) + 32))(v20);

      return _swift_task_switch(sub_1005D50E0, v19, 0);
    }
  }
}

uint64_t sub_1005D66E8()
{
  v40 = v0;
  (*(v0 + 384))(*(v0 + 256), *(v0 + 272), *(v0 + 232));
  sub_10001F280(v0 + 16, v0 + 56);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 416);
  v5 = *(v0 + 320);
  if (v3)
  {
    v6 = *(v0 + 288);
    v38 = *(v0 + 272);
    v36 = v2;
    v7 = *(v0 + 256);
    log = v1;
    v8 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v9 = 141559043;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v5;
    v12 = v11;
    v4(v7, v8);
    v13 = sub_1000136BC(v10, v12, &v39);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    sub_1000035D0((v0 + 56), v14);
    (*(*(*(v15 + 8) + 8) + 32))(v14);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v4(v6, v8);
    sub_100007BAC((v0 + 56));
    v19 = sub_1000136BC(v16, v18, &v39);

    *(v9 + 34) = v19;
    *(v9 + 42) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 44) = v20;
    *v35 = v20;
    _os_log_impl(&_mh_execute_header, log, v36, "Failed to stop imported share for share identifier %{private,mask.hash}s, beaconIdentifier: %{private,mask.hash}s: %@.", v9, 0x34u);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v4(v38, v8);
    sub_10062CBB8(v37, type metadata accessor for MemberSharingCircle);
  }

  else
  {
    v21 = *(v0 + 272);
    v22 = *(v0 + 256);
    v23 = *(v0 + 232);

    v4(v22, v23);
    v4(v21, v23);
    sub_10062CBB8(v5, type metadata accessor for MemberSharingCircle);
    sub_100007BAC((v0 + 56));
  }

  v24 = *(v0 + 360);
  v25 = *(v0 + 368) + 1;
  sub_100007BAC((v0 + 16));
  if (v25 == v24)
  {

    (*(v0 + 176))(v26);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 368);
    *(v0 + 368) = v29 + 1;
    v30 = *(v0 + 352);
    sub_10001F280(*(v0 + 192) + 40 * v29 + 72, v0 + 16);
    v31 = *(v30 + 136);
    *(v0 + 376) = v31;
    v32 = *(v0 + 40);
    v33 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v32);
    (*(*(*(v33 + 8) + 8) + 32))(v32);

    return _swift_task_switch(sub_1005D50E0, v31, 0);
  }
}

uint64_t sub_1005D6BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[55] = a3;
  v4[56] = a4;
  v4[53] = a1;
  v4[54] = a2;
  v5 = *(type metadata accessor for LocationFetcher(0) - 8);
  v4[57] = v5;
  v4[58] = *(v5 + 64);
  v4[59] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[60] = v6;
  v4[61] = *(v6 - 8);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = sub_1000BC4D4(&qword_10169C9C8, &qword_101398A58);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4[67] = swift_task_alloc();
  v4[68] = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4[69] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[70] = v7;
  v4[71] = *(v7 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[74] = v8;
  *v8 = v4;
  v8[1] = sub_1005D6E68;

  return daemon.getter();
}

uint64_t sub_1005D6E68(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 600) = a1;

  v3 = swift_task_alloc();
  *(v2 + 608) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009774(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_1005D7044;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005D7044(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 616) = a1;
  *(v3 + 624) = v1;

  if (v1)
  {

    v4 = sub_1005D8FD4;
  }

  else
  {

    v4 = sub_1005D7198;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005D7198()
{
  v73 = v0;
  v1 = *(v0 + 440);
  v2 = *(v1 + 16);
  *(v0 + 632) = v2;
  if (v2)
  {
    *(v0 + 752) = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
    *(v0 + 640) = 0;
    sub_10001F280(v1 + 32, v0 + 160);
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    sub_1000035D0((v0 + 160), v3);
    if ((*(v4 + 112))(v3, v4))
    {
      v5 = *(v0 + 576);
      v6 = *(v0 + 568);
      v7 = *(v0 + 560);
      static Date.trustedNow.getter(v5);
      Date.addingTimeInterval(_:)();
      (*(v6 + 8))(v5, v7);
LABEL_23:
      v24 = *(v0 + 448);
      v25 = v24[6];
      v26 = v24[7];
      sub_1000035D0(v24 + 3, v25);
      v27 = (*(v26 + 72))(v25, v26);
      if ((v29 & 1) != 0 || !v27)
      {
        v42 = *(v0 + 528);
        v43 = *(*(v0 + 512) + 48);
        (*(*(v0 + 568) + 16))(v42, *(v0 + 584), *(v0 + 560));
        *(v42 + v43) = 7;
        if (qword_101694510 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_1000076D4(v44, qword_10177A818);
        sub_10001F280(v0 + 160, v0 + 240);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = *(v0 + 504);
          v48 = *(v0 + 480);
          v49 = *(v0 + 488);
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v72 = v51;
          *v50 = 141558275;
          *(v50 + 4) = 1752392040;
          *(v50 + 12) = 2081;
          v53 = *(v0 + 264);
          v52 = *(v0 + 272);
          sub_1000035D0((v0 + 240), v53);
          (*(*(*(v52 + 8) + 8) + 32))(v53);
          sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v54 = dispatch thunk of CustomStringConvertible.description.getter();
          v56 = v55;
          (*(v49 + 8))(v47, v48);
          sub_100007BAC((v0 + 240));
          v57 = sub_1000136BC(v54, v56, &v72);

          *(v50 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v45, v46, "Fetching shared beacon: %{private,mask.hash}s.", v50, 0x16u);
          sub_100007BAC(v51);
        }

        else
        {

          sub_100007BAC((v0 + 240));
        }

        v58 = *(v0 + 520);
        v59 = *(v0 + 512);
        v60 = *(v0 + 448);
        sub_1000D2A70(*(v0 + 528), v58, &qword_10169C9C8, &qword_101398A58);
        v61 = *(v58 + *(v59 + 48));
        sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
        inited = swift_initStackObject();
        *(v0 + 680) = inited;
        *(inited + 16) = xmmword_101385D80;
        sub_10001F280(v0 + 160, inited + 32);
        v63 = v60[6];
        v64 = v60[7];
        sub_1000035D0(v60 + 3, v63);
        v65 = (*(v64 + 48))(v63, v64);
        v67 = v66;
        v69 = v68;
        *(v0 + 688) = v68;
        v70 = swift_task_alloc();
        *(v0 + 696) = v70;
        *v70 = v0;
        v70[1] = sub_1005D7E8C;
        v71 = *(v0 + 520);

        return sub_1002A0294(v71, v61, inited, v65, v67, v69);
      }

      else
      {
        v30 = *(v0 + 448);
        v31 = v27;
        v32 = v28;
        sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
        v33 = swift_initStackObject();
        *(v0 + 648) = v33;
        *(v33 + 16) = xmmword_101385D80;
        sub_10001F280(v0 + 160, v33 + 32);
        v34 = v30[6];
        v35 = v30[7];
        sub_1000035D0(v30 + 3, v34);
        v36 = (*(v35 + 48))(v34, v35);
        v38 = v37;
        v40 = v39;
        *(v0 + 656) = v39;
        v41 = swift_task_alloc();
        *(v0 + 664) = v41;
        *v41 = v0;
        v41[1] = sub_1005D7BBC;

        return sub_100291924(v31, v32, v33, v36, v38, v40);
      }
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 376) = 0x7365547265646E75;
    *(v0 + 384) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 756) == 1)
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 isInternalBuild];

      if (v12)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v13 = *(v0 + 568);
        v14 = *(v0 + 560);
        v15 = *(v0 + 552);
        v16 = sub_1000076D4(*(v0 + 544), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v16, v15, &unk_101696900, &unk_10138B1E0);
        if ((*(v13 + 48))(v15, 1, v14) != 1)
        {
          (*(*(v0 + 568) + 32))(*(v0 + 584), *(v0 + 552), *(v0 + 560));
          goto LABEL_23;
        }

        sub_10000B3A8(*(v0 + 552), &unk_101696900, &unk_10138B1E0);
      }
    }

    v17 = *(v0 + 752);
    My = type metadata accessor for Feature.FindMy();
    *(v0 + 224) = My;
    *(v0 + 232) = sub_100009774(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v19 = sub_1000280DC((v0 + 200));
    (*(*(My - 8) + 104))(v19, v17, My);
    LOBYTE(v17) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 200));
    if (v17)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v0 + 392) - *(v0 + 400) > 86400.0)
      {
        v21 = *(v0 + 536);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
        v23 = swift_allocObject();
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        sub_10025EDD4(0, 0, v21, &unk_10138B610, v23);
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

    goto LABEL_23;
  }

  (*(v0 + 424))(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1005D7BBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[41] = v2;
  v4[42] = a1;
  v4[43] = v1;
  v4[84] = v1;

  v5 = v3[81];

  swift_setDeallocating();
  sub_100007BAC((v5 + 32));
  if (v1)
  {
    v6 = sub_1005D90C4;
  }

  else
  {
    v6 = sub_1005D7D1C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005D7D1C()
{
  v1 = v0[42];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  sub_10062CD24(v0[56], v2, type metadata accessor for LocationFetcher);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v0[89] = v7;
  sub_10062CC64(v2, v7 + v5, type metadata accessor for LocationFetcher);
  *(v7 + v6) = v1;
  v8 = swift_task_alloc();
  v0[90] = v8;
  v9 = sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  *v8 = v0;
  v8[1] = sub_1005D81F4;

  return unsafeBlocking<A>(context:_:)(v0 + 52, 0xD000000000000011, 0x800000010135B520, sub_10062C8C4, v7, v9);
}

uint64_t sub_1005D7E8C(uint64_t a1)
{
  v3 = *v2;
  v3[44] = v2;
  v3[45] = a1;
  v3[46] = v1;
  v3[88] = v1;

  if (v1)
  {

    swift_setDeallocating();
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    swift_arrayDestroy();
    v4 = sub_1005D92EC;
  }

  else
  {
    v5 = v3[71];
    v6 = v3[70];
    v7 = v3[65];

    swift_setDeallocating();
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    swift_arrayDestroy();
    (*(v5 + 8))(v7, v6);
    v4 = sub_1005D806C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005D806C()
{
  sub_10000B3A8(v0[66], &qword_10169C9C8, &qword_101398A58);
  v1 = v0[45];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  sub_10062CD24(v0[56], v2, type metadata accessor for LocationFetcher);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v0[89] = v7;
  sub_10062CC64(v2, v7 + v5, type metadata accessor for LocationFetcher);
  *(v7 + v6) = v1;
  v8 = swift_task_alloc();
  v0[90] = v8;
  v9 = sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  *v8 = v0;
  v8[1] = sub_1005D81F4;

  return unsafeBlocking<A>(context:_:)(v0 + 52, 0xD000000000000011, 0x800000010135B520, sub_10062C8C4, v7, v9);
}

uint64_t sub_1005D81F4()
{

  return _swift_task_switch(sub_1005D8330, 0, 0);
}

uint64_t sub_1005D8330()
{
  (*(v0[71] + 8))(v0[73], v0[70]);
  v0[91] = 0;
  v1 = v0[23];
  v2 = v0[24];
  sub_1000035D0(v0 + 20, v1);
  (*(*(*(v2 + 8) + 8) + 32))(v1);
  v3 = swift_task_alloc();
  v0[92] = v3;
  *v3 = v0;
  v3[1] = sub_1005D8430;
  v4 = v0[62];

  return sub_1005DA0E4(v4, 0);
}

uint64_t sub_1005D8430()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  (*(v2[61] + 8))(v2[62], v2[60]);
  if (v0)
  {
    v3 = sub_1005D954C;
  }

  else
  {
    v3 = sub_1005D8598;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005D8598()
{
  v74 = v0;

  v1 = *(v0 + 632);
  v2 = *(v0 + 640) + 1;
  sub_100007BAC((v0 + 160));
  if (v2 == v1)
  {

    (*(v0 + 424))(v3);

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 640);
  *(v0 + 640) = v6 + 1;
  sub_10001F280(*(v0 + 440) + 40 * v6 + 72, v0 + 160);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  sub_1000035D0((v0 + 160), v7);
  if (((*(v8 + 112))(v7, v8) & 1) == 0)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 376) = 0x7365547265646E75;
    *(v0 + 384) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 756) == 1)
    {
      v12 = [objc_opt_self() sharedInstance];
      v13 = [v12 isInternalBuild];

      if (v13)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v14 = *(v0 + 568);
        v15 = *(v0 + 560);
        v16 = *(v0 + 552);
        v17 = sub_1000076D4(*(v0 + 544), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v17, v16, &unk_101696900, &unk_10138B1E0);
        if ((*(v14 + 48))(v16, 1, v15) != 1)
        {
          (*(*(v0 + 568) + 32))(*(v0 + 584), *(v0 + 552), *(v0 + 560));
          goto LABEL_23;
        }

        sub_10000B3A8(*(v0 + 552), &unk_101696900, &unk_10138B1E0);
      }
    }

    v18 = *(v0 + 752);
    My = type metadata accessor for Feature.FindMy();
    *(v0 + 224) = My;
    *(v0 + 232) = sub_100009774(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v20 = sub_1000280DC((v0 + 200));
    (*(*(My - 8) + 104))(v20, v18, My);
    LOBYTE(v18) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 200));
    if (v18)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v0 + 392) - *(v0 + 400) > 86400.0)
      {
        v22 = *(v0 + 536);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v23 = type metadata accessor for TaskPriority();
        (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
        v24 = swift_allocObject();
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        sub_10025EDD4(0, 0, v22, &unk_10138B610, v24);
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

    goto LABEL_23;
  }

  v9 = *(v0 + 576);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  static Date.trustedNow.getter(v9);
  Date.addingTimeInterval(_:)();
  (*(v10 + 8))(v9, v11);
LABEL_23:
  v25 = *(v0 + 448);
  v26 = v25[6];
  v27 = v25[7];
  sub_1000035D0(v25 + 3, v26);
  v28 = (*(v27 + 72))(v26, v27);
  if ((v30 & 1) != 0 || !v28)
  {
    v43 = *(v0 + 528);
    v44 = *(*(v0 + 512) + 48);
    (*(*(v0 + 568) + 16))(v43, *(v0 + 584), *(v0 + 560));
    *(v43 + v44) = 7;
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000076D4(v45, qword_10177A818);
    sub_10001F280(v0 + 160, v0 + 240);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = *(v0 + 504);
      v49 = *(v0 + 480);
      v50 = *(v0 + 488);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v73 = v52;
      *v51 = 141558275;
      *(v51 + 4) = 1752392040;
      *(v51 + 12) = 2081;
      v54 = *(v0 + 264);
      v53 = *(v0 + 272);
      sub_1000035D0((v0 + 240), v54);
      (*(*(*(v53 + 8) + 8) + 32))(v54);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v50 + 8))(v48, v49);
      sub_100007BAC((v0 + 240));
      v58 = sub_1000136BC(v55, v57, &v73);

      *(v51 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "Fetching shared beacon: %{private,mask.hash}s.", v51, 0x16u);
      sub_100007BAC(v52);
    }

    else
    {

      sub_100007BAC((v0 + 240));
    }

    v59 = *(v0 + 520);
    v60 = *(v0 + 512);
    v61 = *(v0 + 448);
    sub_1000D2A70(*(v0 + 528), v59, &qword_10169C9C8, &qword_101398A58);
    v62 = *(v59 + *(v60 + 48));
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    inited = swift_initStackObject();
    *(v0 + 680) = inited;
    *(inited + 16) = xmmword_101385D80;
    sub_10001F280(v0 + 160, inited + 32);
    v64 = v61[6];
    v65 = v61[7];
    sub_1000035D0(v61 + 3, v64);
    v66 = (*(v65 + 48))(v64, v65);
    v68 = v67;
    v70 = v69;
    *(v0 + 688) = v69;
    v71 = swift_task_alloc();
    *(v0 + 696) = v71;
    *v71 = v0;
    v71[1] = sub_1005D7E8C;
    v72 = *(v0 + 520);

    return sub_1002A0294(v72, v62, inited, v66, v68, v70);
  }

  else
  {
    v31 = *(v0 + 448);
    v32 = v28;
    v33 = v29;
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v34 = swift_initStackObject();
    *(v0 + 648) = v34;
    *(v34 + 16) = xmmword_101385D80;
    sub_10001F280(v0 + 160, v34 + 32);
    v35 = v31[6];
    v36 = v31[7];
    sub_1000035D0(v31 + 3, v35);
    v37 = (*(v36 + 48))(v35, v36);
    v39 = v38;
    v41 = v40;
    *(v0 + 656) = v40;
    v42 = swift_task_alloc();
    *(v0 + 664) = v42;
    *v42 = v0;
    v42[1] = sub_1005D7BBC;

    return sub_100291924(v32, v33, v34, v37, v39, v41);
  }
}

uint64_t sub_1005D8FD4()
{
  (*(v0 + 424))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005D90C4()
{
  (*(v0[71] + 8))(v0[73], v0[70]);
  v1 = v0[84];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch shared item locations: %@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[91] = v1;
  v8 = v0[23];
  v9 = v0[24];
  sub_1000035D0(v0 + 20, v8);
  (*(*(*(v9 + 8) + 8) + 32))(v8);
  v10 = swift_task_alloc();
  v0[92] = v10;
  *v10 = v0;
  v10[1] = sub_1005D8430;
  v11 = v0[62];

  return sub_1005DA0E4(v11, v1);
}

uint64_t sub_1005D92EC()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[65];
  sub_10000B3A8(v0[66], &qword_10169C9C8, &qword_101398A58);
  v5 = *(v2 + 8);
  v5(v1, v3);
  v5(v4, v3);
  v6 = v0[88];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A818);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch shared item locations: %@.", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[91] = v6;
  v13 = v0[23];
  v14 = v0[24];
  sub_1000035D0(v0 + 20, v13);
  (*(*(*(v14 + 8) + 8) + 32))(v13);
  v15 = swift_task_alloc();
  v0[92] = v15;
  *v15 = v0;
  v15[1] = sub_1005D8430;
  v16 = v0[62];

  return sub_1005DA0E4(v16, v6);
}

uint64_t sub_1005D954C()
{
  v82 = v0;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A818);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v81[0] = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1000136BC(v7, v8, v81);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to handle shared beacon revoke: %s.", v5, 0xCu);
    sub_100007BAC(v6);

    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
  }

  else
  {
  }

  v10 = *(v0 + 632);
  v11 = *(v0 + 640) + 1;
  sub_100007BAC((v0 + 160));
  if (v11 == v10)
  {

    (*(v0 + 424))(v12);

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 640);
  *(v0 + 640) = v15 + 1;
  sub_10001F280(*(v0 + 440) + 40 * v15 + 72, v0 + 160);
  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  sub_1000035D0((v0 + 160), v16);
  if (((*(v17 + 112))(v16, v17) & 1) == 0)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 376) = 0x7365547265646E75;
    *(v0 + 384) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 756) == 1)
    {
      v21 = [objc_opt_self() sharedInstance];
      v22 = [v21 isInternalBuild];

      if (v22)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v23 = *(v0 + 568);
        v24 = *(v0 + 560);
        v25 = *(v0 + 552);
        v26 = sub_1000076D4(*(v0 + 544), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v26, v25, &unk_101696900, &unk_10138B1E0);
        if ((*(v23 + 48))(v25, 1, v24) != 1)
        {
          (*(*(v0 + 568) + 32))(*(v0 + 584), *(v0 + 552), *(v0 + 560));
          goto LABEL_28;
        }

        sub_10000B3A8(*(v0 + 552), &unk_101696900, &unk_10138B1E0);
      }
    }

    v27 = *(v0 + 752);
    My = type metadata accessor for Feature.FindMy();
    *(v0 + 224) = My;
    *(v0 + 232) = sub_100009774(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v29 = sub_1000280DC((v0 + 200));
    (*(*(My - 8) + 104))(v29, v27, My);
    LOBYTE(v27) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 200));
    if (v27)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v0 + 392) - *(v0 + 400) > 86400.0)
      {
        v31 = *(v0 + 536);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v32 = type metadata accessor for TaskPriority();
        (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        *(v33 + 24) = 0;
        sub_10025EDD4(0, 0, v31, &unk_10138B610, v33);
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

    goto LABEL_28;
  }

  v18 = *(v0 + 576);
  v19 = *(v0 + 568);
  v20 = *(v0 + 560);
  static Date.trustedNow.getter(v18);
  Date.addingTimeInterval(_:)();
  (*(v19 + 8))(v18, v20);
LABEL_28:
  v34 = *(v0 + 448);
  v35 = v34[6];
  v36 = v34[7];
  sub_1000035D0(v34 + 3, v35);
  v37 = (*(v36 + 72))(v35, v36);
  if ((v39 & 1) != 0 || !v37)
  {
    v52 = *(v0 + 528);
    v53 = *(*(v0 + 512) + 48);
    (*(*(v0 + 568) + 16))(v52, *(v0 + 584), *(v0 + 560));
    *(v52 + v53) = 7;
    if (p_weak_ivar_lyt[162] != -1)
    {
      swift_once();
    }

    sub_1000076D4(v2, qword_10177A818);
    sub_10001F280(v0 + 160, v0 + 240);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 504);
      v57 = *(v0 + 480);
      v58 = *(v0 + 488);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v81[0] = v60;
      *v59 = 141558275;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2081;
      v62 = *(v0 + 264);
      v61 = *(v0 + 272);
      sub_1000035D0((v0 + 240), v62);
      (*(*(*(v61 + 8) + 8) + 32))(v62);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      (*(v58 + 8))(v56, v57);
      sub_100007BAC((v0 + 240));
      v66 = sub_1000136BC(v63, v65, v81);

      *(v59 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "Fetching shared beacon: %{private,mask.hash}s.", v59, 0x16u);
      sub_100007BAC(v60);
    }

    else
    {

      sub_100007BAC((v0 + 240));
    }

    v67 = *(v0 + 520);
    v68 = *(v0 + 512);
    v69 = *(v0 + 448);
    sub_1000D2A70(*(v0 + 528), v67, &qword_10169C9C8, &qword_101398A58);
    v70 = *(v67 + *(v68 + 48));
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    inited = swift_initStackObject();
    *(v0 + 680) = inited;
    *(inited + 16) = xmmword_101385D80;
    sub_10001F280(v0 + 160, inited + 32);
    v72 = v69[6];
    v73 = v69[7];
    sub_1000035D0(v69 + 3, v72);
    v74 = (*(v73 + 48))(v72, v73);
    v76 = v75;
    v78 = v77;
    *(v0 + 688) = v77;
    v79 = swift_task_alloc();
    *(v0 + 696) = v79;
    *v79 = v0;
    v79[1] = sub_1005D7E8C;
    v80 = *(v0 + 520);

    return sub_1002A0294(v80, v70, inited, v74, v76, v78);
  }

  else
  {
    v40 = *(v0 + 448);
    v41 = v37;
    v42 = v38;
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v43 = swift_initStackObject();
    *(v0 + 648) = v43;
    *(v43 + 16) = xmmword_101385D80;
    sub_10001F280(v0 + 160, v43 + 32);
    v44 = v40[6];
    v45 = v40[7];
    sub_1000035D0(v40 + 3, v44);
    v46 = (*(v45 + 48))(v44, v45);
    v48 = v47;
    v50 = v49;
    *(v0 + 656) = v49;
    v51 = swift_task_alloc();
    *(v0 + 664) = v51;
    *v51 = v0;
    v51[1] = sub_1005D7BBC;

    return sub_100291924(v41, v42, v43, v46, v48, v50);
  }
}

uint64_t sub_1005DA0E4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for MemberSharingCircle(0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v3[15] = *(v6 + 64);
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for LocationFetcher(0);
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v3[19] = *(v8 + 64);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1005DA27C, 0, 0);
}

uint64_t sub_1005DA27C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[6];
  sub_10062CD24(v0[8], v1, type metadata accessor for LocationFetcher);
  (*(v6 + 16))(v4, v7, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = (v2 + *(v6 + 80) + v8) & ~*(v6 + 80);
  v10 = swift_allocObject();
  v0[21] = v10;
  sub_10062CC64(v1, v10 + v8, type metadata accessor for LocationFetcher);
  (*(v6 + 32))(v10 + v9, v4, v5);
  v11 = swift_task_alloc();
  v0[22] = v11;
  v12 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v11 = v0;
  v11[1] = sub_1005DA448;

  return unsafeBlocking<A>(context:_:)(v0 + 4, 0xD000000000000011, 0x800000010135B520, sub_10062C8C8, v10, v12);
}

uint64_t sub_1005DA448()
{

  return _swift_task_switch(sub_1005DA560, 0, 0);
}

uint64_t sub_1005DA560()
{
  v28 = v0;
  v1 = *(v0 + 32);
  *(v0 + 184) = v1;
  v2 = *(v1 + 16);
  *(v0 + 192) = v2;
  if (!v2)
  {
    goto LABEL_13;
  }

  *(v0 + 28) = *(*(v0 + 80) + 80);
  *(v0 + 200) = 0;
  if (!*(v1 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:

    v9 = *(v0 + 8);

    return v9();
  }

  v3 = 0;
  while (1)
  {
    v4 = *(v0 + 56);
    sub_10062CD24(v1 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 80) + 72) * v3, *(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (!v4)
    {
      break;
    }

    *(v0 + 40) = *(v0 + 56);
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
    {
      v22 = swift_task_alloc();
      *(v0 + 208) = v22;
      *v22 = v0;
      v22[1] = sub_1005DAA40;
      v23 = *(v0 + 96);

      return sub_10107F924(v23);
    }

LABEL_10:
    v7 = *(v0 + 192);
    v8 = *(v0 + 200) + 1;
    sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (v8 == v7)
    {
      goto LABEL_13;
    }

    v3 = *(v0 + 200) + 1;
    *(v0 + 200) = v3;
    v1 = *(v0 + 184);
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_12;
    }
  }

  v5 = *(v0 + 72);
  v6 = *(v0 + 96);
  *(v0 + 216) = *(*(v0 + 64) + *(*(v0 + 136) + 44));
  if (*(v6 + *(v5 + 40)) != 4)
  {
    goto LABEL_10;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
    v6 = *(v0 + 96);
  }

  v11 = *(v0 + 88);
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177A560);
  sub_10062CD24(v6, v11, type metadata accessor for MemberSharingCircle);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 88);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10062CBB8(v15, type metadata accessor for MemberSharingCircle);
    v21 = sub_1000136BC(v18, v20, &v27);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Cleaning up revoke state for circle %{private,mask.hash}s.", v16, 0x16u);
    sub_100007BAC(v17);
  }

  else
  {
    v24 = *(v0 + 88);

    sub_10062CBB8(v24, type metadata accessor for MemberSharingCircle);
  }

  v25 = swift_task_alloc();
  *(v0 + 224) = v25;
  *v25 = v0;
  v25[1] = sub_1005DB018;
  v26 = *(v0 + 96);

  return sub_10108240C(v26, 1);
}

uint64_t sub_1005DAA40()
{

  return _swift_task_switch(sub_1005DAB3C, 0, 0);
}

uint64_t sub_1005DAB3C()
{
  v29 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200) + 1;
  sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
  if (v2 == v1)
  {
LABEL_2:

    v3 = *(v0 + 8);

    return v3();
  }

  while (1)
  {
    v9 = *(v0 + 200) + 1;
    *(v0 + 200) = v9;
    v10 = *(v0 + 184);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v11 = *(v0 + 56);
    sub_10062CD24(v10 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 80) + 72) * v9, *(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (!v11)
    {
      break;
    }

    *(v0 + 40) = *(v0 + 56);
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
    {
      v12 = swift_task_alloc();
      *(v0 + 208) = v12;
      *v12 = v0;
      v12[1] = sub_1005DAA40;
      v13 = *(v0 + 96);

      return sub_10107F924(v13);
    }

LABEL_7:
    v7 = *(v0 + 192);
    v8 = *(v0 + 200) + 1;
    sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (v8 == v7)
    {
      goto LABEL_2;
    }
  }

  v5 = *(v0 + 72);
  v6 = *(v0 + 96);
  *(v0 + 216) = *(*(v0 + 64) + *(*(v0 + 136) + 44));
  if (*(v6 + *(v5 + 40)) != 4)
  {
    goto LABEL_7;
  }

  if (qword_101694480 == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  swift_once();
  v6 = *(v0 + 96);
LABEL_17:
  v14 = *(v0 + 88);
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177A560);
  sub_10062CD24(v6, v14, type metadata accessor for MemberSharingCircle);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 88);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_10062CBB8(v18, type metadata accessor for MemberSharingCircle);
    v24 = sub_1000136BC(v21, v23, &v28);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cleaning up revoke state for circle %{private,mask.hash}s.", v19, 0x16u);
    sub_100007BAC(v20);
  }

  else
  {
    v25 = *(v0 + 88);

    sub_10062CBB8(v25, type metadata accessor for MemberSharingCircle);
  }

  v26 = swift_task_alloc();
  *(v0 + 224) = v26;
  *v26 = v0;
  v26[1] = sub_1005DB018;
  v27 = *(v0 + 96);

  return sub_10108240C(v27, 1);
}

uint64_t sub_1005DB018()
{
  *(*v1 + 232) = v0;

  if (v0)
  {

    v2 = sub_1005DB678;
  }

  else
  {
    v2 = sub_1005DB134;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005DB134()
{
  v31 = v0;
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 72) + 24);
  sub_1000035D0((*(v0 + 216) + 32), *(*(v0 + 216) + 56));
  type metadata accessor for BeaconObservationStore(0);
  sub_1007ADFFC(v1 + v2, sub_101084AD8, 0);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200) + 1;
  sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
  if (v4 == v3)
  {
LABEL_2:

    v5 = *(v0 + 8);

    return v5();
  }

  while (1)
  {
    v11 = *(v0 + 200) + 1;
    *(v0 + 200) = v11;
    v12 = *(v0 + 184);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v13 = *(v0 + 56);
    sub_10062CD24(v12 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 80) + 72) * v11, *(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (!v13)
    {
      break;
    }

    *(v0 + 40) = *(v0 + 56);
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
    {
      v14 = swift_task_alloc();
      *(v0 + 208) = v14;
      *v14 = v0;
      v14[1] = sub_1005DAA40;
      v15 = *(v0 + 96);

      return sub_10107F924(v15);
    }

LABEL_7:
    v9 = *(v0 + 192);
    v10 = *(v0 + 200) + 1;
    sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);
    if (v10 == v9)
    {
      goto LABEL_2;
    }
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 96);
  *(v0 + 216) = *(*(v0 + 64) + *(*(v0 + 136) + 44));
  if (*(v8 + *(v7 + 40)) != 4)
  {
    goto LABEL_7;
  }

  if (qword_101694480 == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  swift_once();
  v8 = *(v0 + 96);
LABEL_17:
  v16 = *(v0 + 88);
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177A560);
  sub_10062CD24(v8, v16, type metadata accessor for MemberSharingCircle);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 88);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_10062CBB8(v20, type metadata accessor for MemberSharingCircle);
    v26 = sub_1000136BC(v23, v25, &v30);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Cleaning up revoke state for circle %{private,mask.hash}s.", v21, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {
    v27 = *(v0 + 88);

    sub_10062CBB8(v27, type metadata accessor for MemberSharingCircle);
  }

  v28 = swift_task_alloc();
  *(v0 + 224) = v28;
  *v28 = v0;
  v28[1] = sub_1005DB018;
  v29 = *(v0 + 96);

  return sub_10108240C(v29, 1);
}

uint64_t sub_1005DB678()
{
  sub_10062CBB8(*(v0 + 96), type metadata accessor for MemberSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005DB724(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v44 = &v35 - v5;
  v6 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v35 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v17 - 8);
  v43 = &v35 - v18;
  v41 = *(*a1 + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v8, qword_10177AC60);
  v20 = *(v9 + 16);
  v20(v16, v19, v8);
  v20(v14, v16, v8);
  v21 = v14;
  v22 = *(v6 + 40);
  v39 = v22;
  v23 = type metadata accessor for DirectorySequence();
  v36 = v16;
  v37 = v23;
  v24 = *(*(v23 - 8) + 56);
  v25 = v6;
  v38 = v6;
  v26 = v40;
  v24(&v40[v22], 1, 1, v23);
  v20(v26, v21, v8);
  v27 = v42;
  *(v26 + *(v25 + 36)) = v41;
  v20(v27, v21, v8);

  v28 = v44;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v29 = *(v9 + 8);
  v29(v21, v8);
  v29(v36, v8);
  v24(v28, 0, 1, v37);
  sub_10062BF70(v28, v26 + v39);
  v30 = *(v45 + 56);
  v31 = v43;
  v32 = v38;
  v30(v43, 1, 1, v38);
  sub_10000B3A8(v31, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v26, v31, &qword_1016A5978, &qword_101410D20);
  v33 = (v30)(v31, 0, 1, v32);
  __chkstk_darwin(v33);
  *(&v35 - 2) = v46;
  sub_100E6C1A4(sub_10062CF74, (&v35 - 4));
  *v47 = v34;
}

uint64_t sub_1005DBBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = *(type metadata accessor for LocationFetcher(0) - 8);
  v4[40] = v5;
  v4[41] = *(v5 + 64);
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v7 = type metadata accessor for BeaconIdentifier(0);
  v4[46] = v7;
  v4[47] = *(v7 - 8);
  v4[48] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[49] = v8;
  *v8 = v4;
  v8[1] = sub_1005DBD68;

  return daemon.getter();
}

uint64_t sub_1005DBD68(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 400) = a1;

  v3 = swift_task_alloc();
  *(v2 + 408) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009774(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1005DBF44;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005DBF44(uint64_t a1)
{
  *(*v2 + 416) = a1;

  if (v1)
  {

    v3 = sub_1005DC094;
  }

  else
  {

    v3 = sub_1005DC1DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005DC094()
{
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AFA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "beaconsFromDisk could not get the ObservationStoreService.", v4, 2u);
  }

  v5 = *(v0 + 288);

  v5(_swiftEmptyDictionarySingleton);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1005DC1DC()
{
  v1 = v0[38];
  v2 = *(v1 + 16);
  v0[53] = v2;
  if (v2)
  {
    v0[54] = 0;
    v0[55] = _swiftEmptyDictionarySingleton;
    sub_10001F280(v1 + 32, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v3 = qword_10177B348;
    v0[56] = qword_10177B348;

    v4 = swift_task_alloc();
    v0[57] = v4;
    *v4 = v0;
    v4[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v3, &type metadata for Configuration);
  }

  else
  {
    v5 = v0[36];

    v5(v6);
    swift_bridgeObjectRelease_n();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1005DC390()
{

  return _swift_task_switch(sub_1005DC4A8, 0, 0);
}

uint64_t sub_1005DC4A8()
{
  v1 = v0[32];
  KeyPath = swift_getKeyPath();
  v3 = sub_1010790F4(KeyPath, v1);
  if (v4)
  {
    _StringGuts.grow(_:)(40);
    v0[30] = 0;
    v0[31] = 0xE000000000000000;
    v5._object = 0x800000010134CA80;
    v5._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v5);
    v0[33] = KeyPath;
    sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v7 = v3;
    v8 = v0[52];

    v0[58] = v7;
    v9 = getuid();
    sub_1000294F0(v9);
    v10 = v0[5];
    v11 = v0[6];
    sub_1000035D0(v0 + 2, v10);
    (*(*(*(v11 + 8) + 8) + 32))(v10);

    return _swift_task_switch(sub_1005DC670, v8, 0);
  }
}

uint64_t sub_1005DC670()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  sub_1000BC4D4(&qword_1016A5878, &qword_1013B3268);
  v3 = *(v1 + 80);
  *(v0 + 560) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 472) = v5;
  *(v5 + 16) = xmmword_101385D80;
  sub_10062CD24(v2, v5 + v4, type metadata accessor for BeaconIdentifier);
  v6 = swift_task_alloc();
  *(v0 + 480) = v6;
  *v6 = v0;
  v6[1] = sub_1005DC784;
  v7 = *(v0 + 464);

  return sub_1010D2DD4(v5, v7, 0);
}

uint64_t sub_1005DC784(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v5 = *(v3 + 472);
  v6 = (*(v4 + 560) + 32) & ~*(v4 + 560);
  if (v1)
  {
    v7 = *(v4 + 416);
    swift_setDeallocating();
    sub_10062CBB8(v5 + v6, type metadata accessor for BeaconIdentifier);
    swift_deallocClassInstance();
    v8 = sub_1005DCF58;
    v9 = v7;
  }

  else
  {
    sub_10062CBB8(*(v4 + 384), type metadata accessor for BeaconIdentifier);
    swift_setDeallocating();
    sub_10062CBB8(v5 + v6, type metadata accessor for BeaconIdentifier);
    swift_deallocClassInstance();
    v8 = sub_1005DC950;
    v9 = 0;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1005DC950()
{
  v47 = v0;
  v1 = v0 + 16;
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AFA0);
  sub_10001F280(v0 + 16, v0 + 96);
  swift_bridgeObjectRetain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 488);
  if (v5)
  {
    v7 = *(v0 + 352);
    v8 = *(v0 + 360);
    v43 = v4;
    v9 = *(v0 + 344);
    v10 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46[0] = v44;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    sub_1000035D0((v0 + 96), v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v7 + 8))(v8, v9);
    sub_100007BAC((v0 + 96));
    v16 = sub_1000136BC(v13, v15, v46);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2048;
    v17 = *(v6 + 16);

    *(v10 + 24) = v17;

    _os_log_impl(&_mh_execute_header, v3, v43, "Disk fetch for beacon %{private,mask.hash}s found %ld observations.", v10, 0x20u);
    sub_100007BAC(v44);

    v1 = v0 + 16;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_100007BAC((v0 + 96));
  }

  v18 = *(v0 + 488);
  v19 = swift_task_alloc();
  *(v19 + 16) = v1;
  v20 = sub_1005C7500(sub_100627378, v19, v18);

  sub_10001F280(v1, v0 + 136);
  swift_bridgeObjectRetain_n();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 352);
    v24 = *(v0 + 360);
    v25 = *(v0 + 344);
    v26 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v26 = 141558531;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v28 = *(v0 + 160);
    v27 = *(v0 + 168);
    sub_1000035D0((v0 + 136), v28);
    (*(*(*(v27 + 8) + 8) + 32))(v28);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v23 + 8))(v24, v25);
    sub_100007BAC((v0 + 136));
    v32 = sub_1000136BC(v29, v31, v46);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2048;
    v33 = v20[2];

    *(v26 + 24) = v33;

    _os_log_impl(&_mh_execute_header, v21, v22, "Disk fetch for beacon %{private,mask.hash}s found %ld locations.", v26, 0x20u);
    sub_100007BAC(v45);

    v1 = v0 + 16;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_100007BAC((v0 + 136));
  }

  v35 = *(v0 + 328);
  v34 = *(v0 + 336);
  v36 = *(v0 + 320);
  sub_10062CD24(*(v0 + 312), v34, type metadata accessor for LocationFetcher);
  sub_10001F280(v1, v0 + 176);
  v37 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v38 = (v35 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v0 + 504) = v39;
  sub_10062CC64(v34, v39 + v37, type metadata accessor for LocationFetcher);
  sub_10000A748((v0 + 176), v39 + v38);
  *(v39 + ((v38 + 47) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v40 = swift_task_alloc();
  *(v0 + 512) = v40;
  v41 = sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  *v40 = v0;
  v40[1] = sub_1005DD420;

  return unsafeBlocking<A>(context:_:)(v0 + 280, 0xD000000000000011, 0x800000010135B520, sub_100627394, v39, v41);
}

uint64_t sub_1005DCF58()
{
  sub_10062CBB8(*(v0 + 384), type metadata accessor for BeaconIdentifier);

  return _swift_task_switch(sub_1005DCFD4, 0, 0);
}

uint64_t sub_1005DCFD4()
{
  v29 = v0;
  v1 = v0[55];
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AFA0);
  sub_10001F280((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[44];
    v6 = v0[45];
    v7 = v0[43];
    v27 = v1;
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v9 = v0[10];
    v10 = v0[11];
    sub_1000035D0(v0 + 7, v9);
    (*(*(*(v10 + 8) + 8) + 32))(v9);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v6, v7);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v28);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_1000136BC(v15, v16, &v28);

    *(v8 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not fetch beacon %{private,mask.hash}s, %s.", v8, 0x20u);
    swift_arrayDestroy();

    v1 = v27;
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v18 = v0[53];
  v19 = v0[54] + 1;
  sub_100007BAC(v0 + 2);
  if (v19 == v18)
  {
    v20 = v0[36];

    v20(v21);
    swift_bridgeObjectRelease_n();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[54];
    v0[54] = v24 + 1;
    v0[55] = v1;
    sub_10001F280(v0[38] + 40 * v24 + 72, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v25 = qword_10177B348;
    v0[56] = qword_10177B348;

    v26 = swift_task_alloc();
    v0[57] = v26;
    *v26 = v0;
    v26[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v25, &type metadata for Configuration);
  }
}

uint64_t sub_1005DD420()
{

  return _swift_task_switch(sub_1005DD538, 0, 0);
}

uint64_t sub_1005DD538()
{
  v0[65] = v0[35];
  v1 = swift_task_alloc();
  v0[66] = v1;
  *v1 = v0;
  v1[1] = sub_1005DD5D8;
  v2 = v0[61];

  return sub_1010CDD28(v2);
}

uint64_t sub_1005DD5D8()
{
  v2 = *v1;
  v2[67] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005DDA2C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[68] = v3;
    *v3 = v2;
    v3[1] = sub_1005DD74C;
    v4 = v2[61];

    return sub_1010CDED8(v4);
  }
}

uint64_t sub_1005DD74C()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1005DDE80;
  }

  else
  {
    v2 = sub_1005DD860;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005DD860()
{

  v1 = v0[65];
  v2 = v0[53];
  v3 = v0[54] + 1;
  sub_100007BAC(v0 + 2);
  if (v3 == v2)
  {
    v4 = v0[36];

    v4(v5);
    swift_bridgeObjectRelease_n();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[54];
    v0[54] = v8 + 1;
    v0[55] = v1;
    sub_10001F280(v0[38] + 40 * v8 + 72, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v9 = qword_10177B348;
    v0[56] = qword_10177B348;

    v10 = swift_task_alloc();
    v0[57] = v10;
    *v10 = v0;
    v10[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v9, &type metadata for Configuration);
  }
}

uint64_t sub_1005DDA2C()
{
  v29 = v0;

  v1 = v0[65];
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AFA0);
  sub_10001F280((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[44];
    v6 = v0[45];
    v7 = v0[43];
    v27 = v1;
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v9 = v0[10];
    v10 = v0[11];
    sub_1000035D0(v0 + 7, v9);
    (*(*(*(v10 + 8) + 8) + 32))(v9);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v6, v7);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v28);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_1000136BC(v15, v16, &v28);

    *(v8 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not fetch beacon %{private,mask.hash}s, %s.", v8, 0x20u);
    swift_arrayDestroy();

    v1 = v27;
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v18 = v0[53];
  v19 = v0[54] + 1;
  sub_100007BAC(v0 + 2);
  if (v19 == v18)
  {
    v20 = v0[36];

    v20(v21);
    swift_bridgeObjectRelease_n();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[54];
    v0[54] = v24 + 1;
    v0[55] = v1;
    sub_10001F280(v0[38] + 40 * v24 + 72, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v25 = qword_10177B348;
    v0[56] = qword_10177B348;

    v26 = swift_task_alloc();
    v0[57] = v26;
    *v26 = v0;
    v26[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v25, &type metadata for Configuration);
  }
}

uint64_t sub_1005DDE80()
{
  v29 = v0;

  v1 = v0[65];
  if (qword_1016947F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AFA0);
  sub_10001F280((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[44];
    v6 = v0[45];
    v7 = v0[43];
    v27 = v1;
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v9 = v0[10];
    v10 = v0[11];
    sub_1000035D0(v0 + 7, v9);
    (*(*(*(v10 + 8) + 8) + 32))(v9);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v6, v7);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v28);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_1000136BC(v15, v16, &v28);

    *(v8 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not fetch beacon %{private,mask.hash}s, %s.", v8, 0x20u);
    swift_arrayDestroy();

    v1 = v27;
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v18 = v0[53];
  v19 = v0[54] + 1;
  sub_100007BAC(v0 + 2);
  if (v19 == v18)
  {
    v20 = v0[36];

    v20(v21);
    swift_bridgeObjectRelease_n();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[54];
    v0[54] = v24 + 1;
    v0[55] = v1;
    sub_10001F280(v0[38] + 40 * v24 + 72, (v0 + 2));
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v25 = qword_10177B348;
    v0[56] = qword_10177B348;

    v26 = swift_task_alloc();
    v0[57] = v26;
    *v26 = v0;
    v26[1] = sub_1005DC390;

    return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v25, &type metadata for Configuration);
  }
}

uint64_t sub_1005DE2D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v126 = a2;
  v142 = a1;
  v143 = a3;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = __chkstk_darwin(v3 - 8);
  v139 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v134 = &v121 - v6;
  v138 = type metadata accessor for Date();
  v137 = *(v138 - 8);
  v7 = __chkstk_darwin(v138);
  v136 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v133 = &v121 - v9;
  v10 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v11 = __chkstk_darwin(v10 - 8);
  v135 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v130 = &v121 - v14;
  __chkstk_darwin(v13);
  v132 = &v121 - v15;
  v128 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v124 = *(v128 - 8);
  v16 = __chkstk_darwin(v128);
  v121 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v122 = &v121 - v18;
  v19 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v20 = __chkstk_darwin(v19 - 8);
  v127 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v121 - v23;
  __chkstk_darwin(v22);
  v26 = &v121 - v25;
  v141 = type metadata accessor for UUID();
  v131 = *(v141 - 8);
  v27 = __chkstk_darwin(v141);
  v129 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v123 = &v121 - v29;
  v30 = type metadata accessor for ObservedAdvertisement(0);
  v31 = __chkstk_darwin(v30);
  v125 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v121 - v33;
  v35 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  __chkstk_darwin(v35 - 8);
  v37 = &v121 - v36;
  v38 = type metadata accessor for ObservedAdvertisement.Location(0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v30;
  v42 = *(v30 + 48);
  v43 = v142;
  v45 = v44;
  sub_1000D2A70(v142 + v42, v37, &qword_1016AA430, &unk_101392650);
  if ((*(v39 + 48))(v37, 1, v45) == 1)
  {
    sub_10000B3A8(v37, &qword_1016AA430, &unk_101392650);
    v46 = type metadata accessor for RawSearchResult(0);
    v47 = *(*(v46 - 8) + 56);
    v48 = v143;
LABEL_25:
    v83 = 1;
    return v47(v48, v83, 1, v46);
  }

  sub_10062CC64(v37, v41, type metadata accessor for ObservedAdvertisement.Location);
  v49 = v41;
  v50 = v43;
  if (*(v43 + 9) - 1 >= 2)
  {
    v57 = v143;
    if (qword_1016947F8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177AFA0);
    sub_10062CD24(v43, v34, type metadata accessor for ObservedAdvertisement);
    sub_10001F280(v126, &v146);
    v59 = v43;
    v60 = v125;
    sub_10062CD24(v59, v125, type metadata accessor for ObservedAdvertisement);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v142 = v49;
      v63 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *&v144 = v140;
      *v63 = 136446979;
      v64 = 0xE800000000000000;
      v65 = 0x6E776F6E6B6E752ELL;
      v66 = 0xED000072656E6E61;
      v67 = 0x6353686365656C2ELL;
      if (v34[9] != 2)
      {
        v67 = 0x6E7363612ELL;
        v66 = 0xE500000000000000;
      }

      if (v34[9])
      {
        v65 = 0x747365767261682ELL;
        v64 = 0xEA00000000007265;
      }

      if (v34[9] <= 1u)
      {
        v68 = v65;
      }

      else
      {
        v68 = v67;
      }

      if (v34[9] <= 1u)
      {
        v69 = v64;
      }

      else
      {
        v69 = v66;
      }

      sub_10062CBB8(v34, type metadata accessor for ObservedAdvertisement);
      v70 = sub_1000136BC(v68, v69, &v144);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2160;
      *(v63 + 14) = 1752392040;
      *(v63 + 22) = 2081;
      v72 = v147;
      v71 = v148;
      sub_1000035D0(&v146, v147);
      v73 = v123;
      (*(*(*(v71 + 8) + 8) + 32))(v72);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v74 = v141;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      (*(v131 + 8))(v73, v74);
      sub_100007BAC(&v146);
      v78 = sub_1000136BC(v75, v77, &v144);

      *(v63 + 24) = v78;
      *(v63 + 32) = 2080;
      v79 = sub_100018680();
      v81 = v80;
      sub_10062CBB8(v60, type metadata accessor for ObservedAdvertisement);
      v82 = sub_1000136BC(v79, v81, &v144);

      *(v63 + 34) = v82;
      _os_log_impl(&_mh_execute_header, v61, v62, "Disk fetch for beacon ignoring %{public}s result %{private,mask.hash}s, %s.", v63, 0x2Au);
      swift_arrayDestroy();

      sub_10062CBB8(v142, type metadata accessor for ObservedAdvertisement.Location);
      v57 = v143;
    }

    else
    {

      sub_10062CBB8(v60, type metadata accessor for ObservedAdvertisement);
      sub_10062CBB8(v34, type metadata accessor for ObservedAdvertisement);
      sub_10062CBB8(v49, type metadata accessor for ObservedAdvertisement.Location);
      sub_100007BAC(&v146);
    }

    v46 = type metadata accessor for RawSearchResult(0);
    v47 = *(*(v46 - 8) + 56);
    v48 = v57;
    goto LABEL_25;
  }

  v51 = (v124 + 48);
  v52 = v141;
  v53 = v50 + *(v140 + 52);
  if ((*(v50 + 31) & 0x20) != 0)
  {
    sub_1000D2A70(v53, v26, &qword_101699DB0, &unk_101393100);
    v54 = *v51;
    v55 = v128;
    if ((*v51)(v26, 1, v128) == 1)
    {
      sub_10000B3A8(v26, &qword_101699DB0, &unk_101393100);
      v149 = 0u;
      v150 = 0u;
      v151 = 0;
    }

    else
    {
      v91 = *&v26[*(v55 + 24)];
      sub_10062CBB8(v26, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(&v150 + 1) = &type metadata for PrimaryIndex;
      v151 = sub_10002A2B8();
      *&v149 = v91;
    }

    v56 = 5;
    goto LABEL_31;
  }

  sub_1000D2A70(v53, v24, &qword_101699DB0, &unk_101393100);
  v54 = *v51;
  v55 = v128;
  if ((*v51)(v24, 1, v128) == 1)
  {
    sub_10000B3A8(v24, &qword_101699DB0, &unk_101393100);
    v149 = 0u;
    v150 = 0u;
    v151 = 0;
    v56 = 6;
LABEL_31:
    LODWORD(v126) = v56;
    v86 = v132;
    v92 = v127;
    goto LABEL_35;
  }

  v84 = v24;
  v85 = v122;
  sub_10062CC64(v84, v122, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v86 = v132;
  if ((*(v85 + *(v55 + 20)) & 1) == 0)
  {

    goto LABEL_33;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v87)
  {
LABEL_33:
    v88 = v122;
    v89 = *(v122 + *(v55 + 24));
    *(&v150 + 1) = &type metadata for PrimaryWildIndex;
    LODWORD(v126) = 6;
    v90 = sub_10022A528();
    goto LABEL_34;
  }

  v88 = v122;
  v89 = *(v122 + *(v55 + 24));
  *(&v150 + 1) = &type metadata for SecondaryIndex;
  LODWORD(v126) = 12;
  v90 = sub_10022A4D4();
LABEL_34:
  v151 = v90;
  *&v149 = v89;
  sub_10062CBB8(v88, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v92 = v127;
  v52 = v141;
LABEL_35:
  sub_1000D2A70(&v149, &v144, &qword_10169C988, &unk_1013B3320);
  if (v145)
  {
    sub_10000A748(&v144, &v146);
    sub_1000D2A70(v50 + *(v140 + 52), v92, &qword_101699DB0, &unk_101393100);
    if (v54(v92, 1, v55) != 1)
    {
      v97 = v92;
      v98 = v121;
      sub_10062CC64(v97, v121, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      (*(v131 + 32))(v86, v98, v52);
      v99 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
      sub_10000A748(&v146, v86 + *(v99 + 20));
      (*(*(v99 - 8) + 56))(v86, 0, 1, v99);
      goto LABEL_41;
    }

    sub_100007BAC(&v146);
    v93 = &qword_101699DB0;
    v94 = &unk_101393100;
    v95 = v92;
  }

  else
  {
    v93 = &qword_10169C988;
    v94 = &unk_1013B3320;
    v95 = &v144;
  }

  sub_10000B3A8(v95, v93, v94);
  v96 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  (*(*(v96 - 8) + 56))(v86, 1, 1, v96);
LABEL_41:
  LODWORD(v128) = *(v50 + 32);
  v100 = v137;
  v101 = *(v137 + 16);
  v102 = v49 + *(v45 + 28);
  v103 = v133;
  v104 = v138;
  v101(v133, v102, v138);
  v106 = *v49;
  v105 = v49[1];
  v107 = v49[2];
  v108 = v49;
  v109 = v134;
  v101(v134, v50 + *(v140 + 44), v104);
  (*(v100 + 56))(v109, 0, 1, v104);
  v110 = v130;
  sub_1000D2A70(v86, v130, &unk_1016C1120, &qword_1013C49D0);
  v101(v136, v103, v104);
  sub_1000D2A70(v109, v139, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v110, v135, &unk_1016C1120, &qword_1013C49D0);
  if ((v126 & 0xE) == 0xC)
  {
    v111 = v129;
    if (qword_101694E00 != -1)
    {
      swift_once();
    }

    v112 = v108;
    v113 = v141;
    v114 = sub_1000076D4(v141, qword_10177BF20);
    v115 = v131;
    (*(v131 + 16))(v111, v114, v113);
  }

  else
  {
    v112 = v108;
    v111 = v129;
    UUID.init()();
    v115 = v131;
    v113 = v141;
  }

  sub_10000B3A8(v110, &unk_1016C1120, &qword_1013C49D0);
  sub_10000B3A8(v134, &unk_101696900, &unk_10138B1E0);
  v116 = v137;
  v117 = v138;
  (*(v137 + 8))(v133, v138);
  sub_10000B3A8(v132, &unk_1016C1120, &qword_1013C49D0);
  sub_10062CBB8(v112, type metadata accessor for ObservedAdvertisement.Location);
  v118 = v143;
  *v143 = v128;
  v119 = type metadata accessor for RawSearchResult(0);
  (*(v116 + 32))(&v118[v119[5]], v136, v117);
  *&v118[v119[6]] = v106;
  *&v118[v119[7]] = v105;
  *&v118[v119[8]] = v107;
  v118[v119[9]] = v126;
  sub_1000D2AD8(v139, &v118[v119[10]], &unk_101696900, &unk_10138B1E0);
  sub_1000D2AD8(v135, &v118[v119[11]], &unk_1016C1120, &qword_1013C49D0);
  (*(v115 + 32))(&v118[v119[12]], v111, v113);
  *&v118[v119[13]] = 256;
  sub_10000B3A8(&v149, &qword_10169C988, &unk_1013B3320);
  v47 = *(*(v119 - 1) + 56);
  v48 = v118;
  v83 = 0;
  v46 = v119;
  return v47(v48, v83, 1, v46);
}

uint64_t sub_1005DF498@<X0>(void *a1@<X1>, char **a3@<X8>)
{
  sub_1000BC4D4(&qword_10169C9D0, &qword_101398A88);
  v4 = (sub_1000BC4D4(&qword_10169C9D8, &qword_1013B3280) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = v6 + v5;
  v8 = v4[14];
  v10 = a1[3];
  v9 = a1[4];
  sub_1000035D0(a1, v10);
  (*(*(*(v9 + 8) + 8) + 32))(v10);

  v12 = sub_10112A090(v11);

  *(v7 + v8) = v12;
  v13 = sub_1009089B8(v6);
  swift_setDeallocating();
  sub_10000B3A8(v7, &qword_10169C9D8, &qword_1013B3280);
  swift_deallocClassInstance();
  v14 = sub_1005CEE64(v13);

  *a3 = v14;
  return result;
}

uint64_t sub_1005DF640(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v55 = &v48 - v8;
  v9 = type metadata accessor for LocationFetcher(0);
  v52 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v53 = v11;
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v48 - v12);
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v15 = *(RequestBeacon - 8);
  __chkstk_darwin(RequestBeacon - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A5950, &qword_1013B3458);
  swift_allocObject();
  v18 = Future.init()();
  v19 = v18;
  if (!a2[2])
  {
    sub_10062B0D0();
    swift_allocError();
    *v35 = 1;
    Future.finish(error:)();

    return v19;
  }

  v49 = v18;
  v56 = a2;

  sub_1005FBB98(&v56);
  if (!v3)
  {
    v50 = a2;
    v51 = a1;
    v20 = v56;
    v21 = v56[2];
    if (v21)
    {
      v22 = 0;
      while (v22 < v20[2])
      {
        sub_10062CD24(v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v22, v17, type metadata accessor for FetchRequestBeacon);
        sub_1005F62D4(v17);
        ++v22;
        sub_10062CBB8(v17, type metadata accessor for FetchRequestBeacon);
        if (v21 == v22)
        {
          goto LABEL_8;
        }
      }

      __break(1u);

      sub_10062CBB8(v17, type metadata accessor for FetchRequestBeacon);
      __break(1u);
      goto LABEL_16;
    }

LABEL_8:

    sub_10062CD24(v4, v13, type metadata accessor for LocationFetcher);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56 = v48;
      *v25 = 136446210;
      v27 = v13[6];
      v26 = v13[7];
      sub_1000035D0(v13 + 3, v27);
      v28 = (*(v26 + 48))(v27, v26);
      v31 = sub_100EAAD78(v28, v29, v30);
      v33 = v32;

      sub_10062CBB8(v13, type metadata accessor for LocationFetcher);
      v34 = sub_1000136BC(v31, v33, &v56);

      *(v25 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Location fetch request for context: %{public}s.", v25, 0xCu);
      sub_100007BAC(v48);
    }

    else
    {

      sub_10062CBB8(v13, type metadata accessor for LocationFetcher);
    }

    v37 = v50;
    v38 = v4[6];
    v39 = v4[7];
    sub_1000035D0(v4 + 3, v38);
    LODWORD(v50) = (*(v39 + 64))(v38, v39);
    v40 = type metadata accessor for TaskPriority();
    v41 = v55;
    (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
    v42 = v54;
    sub_10062CD24(v4, v54, type metadata accessor for LocationFetcher);
    v43 = (*(v52 + 80) + 40) & ~*(v52 + 80);
    v44 = v43 + v53;
    v45 = (((v43 + v53) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v37;
    sub_10062CC64(v42, v46 + v43, type metadata accessor for LocationFetcher);
    *(v46 + v44) = v50 & 1;
    *(v46 + (v44 & 0xFFFFFFFFFFFFFFF8) + 8) = v51;
    v36 = v49;
    *(v46 + v45) = v49;

    sub_10025EDD4(0, 0, v41, &unk_1013B3468, v46);

    return v36;
  }

LABEL_16:

  __break(1u);
  return result;
}

void sub_1005DFC44(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  type metadata accessor for LocationFetcher(0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, v14);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch error: %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }

  swift_beginAccess();
  *(a3 + 16) = a1;

  swift_errorRetain();
  dispatch_group_leave(a4);
}

void sub_1005DFDCC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v7 = sub_1005DFEA4(*a1, a4);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_10062B710(v7, sub_10060D9D0, 0, isUniquelyReferenced_nonNull_native, &v9);

  *(a2 + 16) = v9;
  swift_endAccess();
  dispatch_group_leave(a5);
}

uint64_t sub_1005DFEA4(uint64_t a1, unint64_t a2)
{
  v99 = a1;
  v107 = sub_1000BC4D4(&qword_1016A5920, &unk_1013B33B8);
  v3 = __chkstk_darwin(v107);
  v102 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v101 = &v97 - v6;
  __chkstk_darwin(v5);
  v113 = &v97 - v7;
  v105 = type metadata accessor for FetchResponse.SearchResult(0);
  v100 = *(v105 - 8);
  v8 = __chkstk_darwin(v105 - 8);
  v110 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v97 - v11;
  v13 = __chkstk_darwin(v10);
  v111 = &v97 - v14;
  v15 = __chkstk_darwin(v13);
  v98 = &v97 - v16;
  __chkstk_darwin(v15);
  v104 = &v97 - v17;
  v116 = type metadata accessor for UUID();
  v18 = *(v116 - 8);
  __chkstk_darwin(v116);
  v117 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FetchRequestBeacon(0) - 8;
  __chkstk_darwin(v20);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + 16);
  v108 = a2;
  *&v103 = v18;
  if (v24)
  {
    v25 = a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    v115 = (v18 + 16);
    v112 = (v18 + 8);
    v27 = _swiftEmptyDictionarySingleton;
    v114 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v28 = v12;
      sub_10062CD24(v25, v23, type metadata accessor for FetchRequestBeacon);
      v29 = *v115;
      v30 = v117;
      (*v115)(v117, v23, v116);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v27;
      v33 = sub_1000210EC(v30);
      v34 = v27[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        break;
      }

      v37 = v32;
      if (v27[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101007198();
        }
      }

      else
      {
        sub_100FEA770(v36, isUniquelyReferenced_nonNull_native);
        v38 = sub_1000210EC(v117);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_52;
        }

        v33 = v38;
      }

      v12 = v28;
      v40 = v119;
      if (v37)
      {
        *(v119[7] + v33) = &_swiftEmptySetSingleton;

        (*v112)(v117, v116);
        v23 = v114;
        sub_10062CBB8(v114, type metadata accessor for FetchRequestBeacon);
      }

      else
      {
        v109 = v24;
        v41 = v26;
        v42 = v28;
        v119[(v33 >> 6) + 8] = (v119[(v33 >> 6) + 8] | (1 << v33));
        v43 = v103;
        v44 = v116;
        v45 = v117;
        v29(v40[6] + *(v103 + 72) * v33, v117, v116);
        *(v40[7] + v33) = &_swiftEmptySetSingleton;

        (*(v43 + 8))(v45, v44);
        v23 = v114;
        sub_10062CBB8(v114, type metadata accessor for FetchRequestBeacon);
        v46 = v40[2];
        v47 = __OFADD__(v46, 1);
        v48 = (v46 + 1);
        if (v47)
        {
          goto LABEL_51;
        }

        v40[2] = v48;
        v12 = v42;
        v26 = v41;
        v24 = v109;
      }

      v25 += v26;
      v27 = v40;
      if (!--v24)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v40 = _swiftEmptyDictionarySingleton;
LABEL_15:
    v115 = v40;
    v106 = *(type metadata accessor for LocationFetcher(0) + 32);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Owned locations processing", v51, 2u);
    }

    v53 = v105;
    v54 = v98;
    v117 = *(v99 + 16);
    if (v117)
    {
      v55 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v56 = *(v100 + 72);
      v57 = v99 + v55;
      v112 = _swiftEmptyArrayStorage;
      v58 = v117;
      v59 = v104;
      do
      {
        sub_10062CD24(v57, v59, type metadata accessor for FetchResponse.SearchResult);
        if (*(v59 + *(v53 + 28)) == 15)
        {
          sub_10062CC64(v59, v54, type metadata accessor for FetchResponse.SearchResult);
          v60 = v112;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v62 = v60;
          v119 = v60;
          if ((v61 & 1) == 0)
          {
            sub_101124EAC(0, v60[2] + 1, 1);
            v53 = v105;
            v62 = v119;
          }

          v64 = v62[2];
          v63 = v62[3];
          if (v64 >= v63 >> 1)
          {
            sub_101124EAC((v63 > 1), v64 + 1, 1);
            v53 = v105;
            v62 = v119;
          }

          v62[2] = (v64 + 1);
          v112 = v62;
          sub_10062CC64(v54, v62 + v55 + v64 * v56, type metadata accessor for FetchResponse.SearchResult);
          v59 = v104;
        }

        else
        {
          sub_10062CBB8(v59, type metadata accessor for FetchResponse.SearchResult);
        }

        v57 += v56;
        --v58;
      }

      while (v58);
    }

    else
    {
      v112 = _swiftEmptyArrayStorage;
    }

    v98 = v12;
    v65 = v112[2];
    if (v65)
    {
      v66 = v112 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v109 = *(v100 + 72);
      v104 = (v103 + 8);
      *&v52 = 136446210;
      v103 = v52;
      v67 = v108;
      v68 = v111;
      v69 = v113;
      do
      {
        sub_10062CD24(v66, v68, type metadata accessor for FetchResponse.SearchResult);
        v70 = objc_autoreleasePoolPush();
        v71 = sub_1005E9858(v69, v68, v67);
        *(v69 + *(v107 + 48)) = v71;
        v72 = v101;
        sub_1000D2A70(v69, v101, &qword_1016A5920, &unk_1013B33B8);

        v73 = v115[2];
        v114 = v70;
        if (v73 && (v74 = sub_1000210EC(v72), (v75 & 1) != 0))
        {
          v119 = *(v115[7] + v74);
        }

        else
        {
          v119 = &_swiftEmptySetSingleton;
        }

        v76 = *v104;
        v77 = v116;
        (*v104)(v72, v116);
        v78 = v102;
        sub_1000D2A70(v69, v102, &qword_1016A5920, &unk_1013B33B8);
        sub_1006254B4(*(v78 + *(v107 + 48)));

        v76(v78, v77);
        sub_1000D2A70(v113, v78, &qword_1016A5920, &unk_1013B33B8);

        v79 = v119;
        v80 = v115;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v118 = v80;
        sub_100FFC200(v79, v78, v81);
        v69 = v113;
        v76(v78, v77);
        v115 = v118;
        sub_10000B3A8(v69, &qword_1016A5920, &unk_1013B33B8);
        v67 = v108;
        objc_autoreleasePoolPop(v114);
        v68 = v111;
        sub_10062CBB8(v111, type metadata accessor for FetchResponse.SearchResult);
        v66 += v109;
        v65 = (v65 - 1);
      }

      while (v65);
    }

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    v84 = os_log_type_enabled(v82, v83);
    v85 = v98;
    if (v84)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Unowned locations processing", v86, 2u);
    }

    if (v117)
    {
      v87 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v88 = *(v100 + 72);
      v89 = v99 + v87;
      v90 = _swiftEmptyArrayStorage;
      v91 = v105;
      do
      {
        sub_10062CD24(v89, v85, type metadata accessor for FetchResponse.SearchResult);
        if (*(v85 + *(v91 + 28)) == 15)
        {
          sub_10062CBB8(v85, type metadata accessor for FetchResponse.SearchResult);
        }

        else
        {
          sub_10062CC64(v85, v110, type metadata accessor for FetchResponse.SearchResult);
          v92 = swift_isUniquelyReferenced_nonNull_native();
          v119 = v90;
          if ((v92 & 1) == 0)
          {
            sub_101124EAC(0, v90[2] + 1, 1);
            v91 = v105;
            v90 = v119;
          }

          v94 = v90[2];
          v93 = v90[3];
          if (v94 >= v93 >> 1)
          {
            sub_101124EAC((v93 > 1), v94 + 1, 1);
            v91 = v105;
            v90 = v119;
          }

          v90[2] = (v94 + 1);
          sub_10062CC64(v110, v90 + v87 + v94 * v88, type metadata accessor for FetchResponse.SearchResult);
        }

        v89 += v88;
        --v117;
      }

      while (v117);
    }

    else
    {
      v90 = _swiftEmptyArrayStorage;
    }

    v95 = sub_1005EB758(v90, v108, v115);

    return v95;
  }

  return result;
}

void sub_1005E0BB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A58E8, &qword_1013B3348);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v7 = *(RequestBeacon - 8);
  v8 = __chkstk_darwin(RequestBeacon);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v36 - v10;
  v43 = sub_1000BC4D4(&qword_1016A58F0, &unk_1013B3350);
  __chkstk_darwin(v43);
  v12 = &v36 - v11;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v38 = v7;
  v41 = (v7 + 48);
  v45 = a1;

  v18 = 0;
  v40 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v18;
    if (!v16)
    {
      break;
    }

    v20 = v12;
    v46 = v2;
    v21 = v6;
LABEL_10:
    v22 = __clz(__rbit64(v16)) | (v18 << 6);
    v23 = v45;
    v24 = *(v45 + 48);
    v25 = type metadata accessor for UUID();
    v26 = *(v25 - 8);
    v27 = v24 + *(v26 + 72) * v22;
    v12 = v20;
    (*(v26 + 16))(v20, v27, v25);
    v28 = *(*(v23 + 56) + 8 * v22);
    *(v20 + *(v43 + 48)) = v28;

    v6 = v21;
    v29 = v28;
    v30 = v46;
    sub_1005E0FF0(v29, v44, v21);
    v2 = v30;
    if (v30)
    {

      sub_10000B3A8(v20, &qword_1016A58F0, &unk_1013B3350);

      return;
    }

    v16 &= v16 - 1;
    sub_10000B3A8(v20, &qword_1016A58F0, &unk_1013B3350);
    if ((*v41)(v6, 1, RequestBeacon) == 1)
    {
      sub_10000B3A8(v6, &qword_1016A58E8, &qword_1013B3348);
    }

    else
    {
      v31 = v37;
      sub_10062CC64(v6, v37, type metadata accessor for FetchRequestBeacon);
      sub_10062CC64(v31, v39, type metadata accessor for FetchRequestBeacon);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_100A5D0C8(0, v40[2] + 1, 1, v40);
      }

      v33 = v40[2];
      v32 = v40[3];
      if (v33 >= v32 >> 1)
      {
        v40 = sub_100A5D0C8((v32 > 1), v33 + 1, 1, v40);
      }

      v34 = v39;
      v35 = v40;
      v40[2] = v33 + 1;
      sub_10062CC64(v34, v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v33, type metadata accessor for FetchRequestBeacon);
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v18);
    ++v19;
    if (v16)
    {
      v20 = v12;
      v46 = v2;
      v21 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1005E0FF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v146 = a2;
  v5 = sub_1000BC4D4(&qword_1016A58E8, &qword_1013B3348);
  v6 = __chkstk_darwin(v5 - 8);
  v137 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v121 = &v116 - v9;
  __chkstk_darwin(v8);
  v147 = &v116 - v10;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v12 = *(RequestBeacon - 8);
  v13 = __chkstk_darwin(RequestBeacon);
  v116 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v118 = &v116 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v116 - v18;
  v20 = __chkstk_darwin(v17);
  v126 = &v116 - v21;
  v22 = __chkstk_darwin(v20);
  v136 = &v116 - v23;
  v24 = __chkstk_darwin(v22);
  v135 = &v116 - v25;
  v26 = __chkstk_darwin(v24);
  v125 = &v116 - v27;
  v28 = __chkstk_darwin(v26);
  v124 = &v116 - v29;
  v30 = __chkstk_darwin(v28);
  v140 = &v116 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v116 - v33;
  v35 = __chkstk_darwin(v32);
  v134 = &v116 - v36;
  v37 = __chkstk_darwin(v35);
  v133 = &v116 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v116 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v116 - v43;
  __chkstk_darwin(v42);
  v46 = &v116 - v45;
  v144 = *(v12 + 56);
  v145 = v12 + 56;
  v144(a3, 1, 1, RequestBeacon);
  v48 = a1;
  v49 = *(a1 + 16);
  v119 = v41;
  v117 = v19;
  v120 = v12;
  if (v49)
  {
    v50 = v12;
    v51 = v48 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v143 = (v50 + 48);
    v141 = *(v50 + 72);
    *&v47 = 141558531;
    v123 = v47;
    *&v47 = 141559299;
    v122 = v47;
    v138 = v34;
    v139 = a3;
    v142 = RequestBeacon;
    v52 = v147;
    v132 = v44;
    v131 = v46;
    while (1)
    {
      sub_10062CD24(v51, v46, type metadata accessor for FetchRequestBeacon);
      sub_1000D2A70(a3, v52, &qword_1016A58E8, &qword_1013B3348);
      v55 = (*v143)(v52, 1, RequestBeacon);
      v148 = v51;
      v149 = v49;
      if (v55 != 1)
      {
        break;
      }

      sub_10000B3A8(a3, &qword_1016A58E8, &qword_1013B3348);
      sub_10000B3A8(v52, &qword_1016A58E8, &qword_1013B3348);
      sub_10062CD24(v46, a3, type metadata accessor for FetchRequestBeacon);
      v144(a3, 0, 1, RequestBeacon);
      type metadata accessor for LocationFetcher(0);
      v56 = v135;
      sub_10062CD24(v46, v135, type metadata accessor for FetchRequestBeacon);
      v57 = v46;
      v58 = v46;
      v59 = v136;
      sub_10062CD24(v57, v136, type metadata accessor for FetchRequestBeacon);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = v61;
        v63 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *v63 = v123;
        *(v63 + 4) = 1752392040;
        *(v63 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        sub_10062CBB8(v56, type metadata accessor for FetchRequestBeacon);
        v67 = sub_1000136BC(v64, v66, &v153);

        *(v63 + 14) = v67;
        *(v63 + 22) = 2082;
        v68 = v126;
        sub_10062CD24(v59, v126, type metadata accessor for FetchRequestBeacon);
        v69 = objc_autoreleasePoolPush();
        v70 = v150;
        sub_100EABD30(v68, &v151);
        if (v70)
        {
          v115 = v59;
          goto LABEL_29;
        }

        objc_autoreleasePoolPop(v69);
        sub_10062CBB8(v68, type metadata accessor for FetchRequestBeacon);
        sub_10062CBB8(v59, type metadata accessor for FetchRequestBeacon);
        v71 = sub_1000136BC(v151, v152, &v153);

        *(v63 + 24) = v71;
        _os_log_impl(&_mh_execute_header, v60, v62, "Initial fetch instruction %{private,mask.hash}s, %{public}s.", v63, 0x20u);
        swift_arrayDestroy();

        v46 = v131;
        sub_10062CBB8(v131, type metadata accessor for FetchRequestBeacon);
        v150 = 0;
        a3 = v139;
        v44 = v132;
LABEL_15:
        v53 = v148;
        v54 = v149;
        goto LABEL_4;
      }

      sub_10062CBB8(v59, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v56, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v58, type metadata accessor for FetchRequestBeacon);
      a3 = v139;
      v46 = v58;
      v53 = v148;
      v54 = v149;
LABEL_4:
      RequestBeacon = v142;
      v51 = v53 + v141;
      v49 = v54 - 1;
      v52 = v147;
      if (!v49)
      {
        goto LABEL_17;
      }
    }

    sub_10062CC64(v52, v44, type metadata accessor for FetchRequestBeacon);
    v72 = v137;
    v73 = v150;
    sub_100EA9B38(v46, v137);
    v150 = v73;
    if (v73)
    {
      sub_10062CBB8(v44, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v46, type metadata accessor for FetchRequestBeacon);
      return sub_10000B3A8(a3, &qword_1016A58E8, &qword_1013B3348);
    }

    sub_10000B3A8(a3, &qword_1016A58E8, &qword_1013B3348);
    v144(v72, 0, 1, RequestBeacon);
    sub_1000D2AD8(v72, a3, &qword_1016A58E8, &qword_1013B3348);
    type metadata accessor for LocationFetcher(0);
    v74 = v133;
    sub_10062CD24(v44, v133, type metadata accessor for FetchRequestBeacon);
    v62 = v134;
    sub_10062CD24(v44, v134, type metadata accessor for FetchRequestBeacon);
    v75 = v138;
    sub_10062CD24(v46, v138, type metadata accessor for FetchRequestBeacon);
    v76 = v140;
    sub_10062CD24(v46, v140, type metadata accessor for FetchRequestBeacon);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v129 = v78;
      v130 = v77;
      v79 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v153 = v128;
      *v79 = v122;
      *(v79 + 4) = 1752392040;
      *(v79 + 12) = 2081;
      v80 = type metadata accessor for UUID();
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v127 = v80;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      sub_10062CBB8(v74, type metadata accessor for FetchRequestBeacon);
      v84 = sub_1000136BC(v81, v83, &v153);

      *(v79 + 14) = v84;
      *(v79 + 22) = 2082;
      v85 = v124;
      sub_10062CD24(v62, v124, type metadata accessor for FetchRequestBeacon);
      v86 = objc_autoreleasePoolPush();
      v87 = v150;
      sub_100EABD30(v85, &v151);
      if (v87)
      {
        v69 = type metadata accessor for FetchRequestBeacon;
        sub_10062CBB8(v140, type metadata accessor for FetchRequestBeacon);
        sub_10062CBB8(v138, type metadata accessor for FetchRequestBeacon);
        sub_10062CBB8(v62, type metadata accessor for FetchRequestBeacon);
        objc_autoreleasePoolPop(v86);
        __break(1u);
        v115 = v75;
        goto LABEL_29;
      }

      objc_autoreleasePoolPop(v86);
      sub_10062CBB8(v85, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v62, type metadata accessor for FetchRequestBeacon);
      v88 = sub_1000136BC(v151, v152, &v153);

      *(v79 + 24) = v88;
      *(v79 + 32) = 2160;
      *(v79 + 34) = 1752392040;
      *(v79 + 42) = 2081;
      v89 = v138;
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      sub_10062CBB8(v89, type metadata accessor for FetchRequestBeacon);
      v93 = sub_1000136BC(v90, v92, &v153);

      *(v79 + 44) = v93;
      *(v79 + 52) = 2082;
      v94 = v140;
      v95 = v125;
      sub_10062CD24(v140, v125, type metadata accessor for FetchRequestBeacon);
      v96 = objc_autoreleasePoolPush();
      sub_100EABD30(v95, &v151);
      v150 = 0;
      v53 = v148;
      v54 = v149;
      objc_autoreleasePoolPop(v96);
      sub_10062CBB8(v95, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v94, type metadata accessor for FetchRequestBeacon);
      v97 = sub_1000136BC(v151, v152, &v153);

      *(v79 + 54) = v97;
      v98 = v130;
      _os_log_impl(&_mh_execute_header, v130, v129, "Combining fetch instruction %{private,mask.hash}s %{public}s with %{private,mask.hash}s %{public}s.", v79, 0x3Eu);
      swift_arrayDestroy();

      v44 = v132;
      sub_10062CBB8(v132, type metadata accessor for FetchRequestBeacon);
      v46 = v131;
      sub_10062CBB8(v131, type metadata accessor for FetchRequestBeacon);
      a3 = v139;
      goto LABEL_4;
    }

    sub_10062CBB8(v76, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v75, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v62, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v74, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v44, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v46, type metadata accessor for FetchRequestBeacon);
    goto LABEL_15;
  }

LABEL_17:
  v99 = RequestBeacon;
  v100 = v121;
  sub_1000D2A70(a3, v121, &qword_1016A58E8, &qword_1013B3348);
  if ((*(v120 + 48))(v100, 1, v99) == 1)
  {
    return sub_10000B3A8(v100, &qword_1016A58E8, &qword_1013B3348);
  }

  v102 = v119;
  sub_10062CC64(v100, v119, type metadata accessor for FetchRequestBeacon);
  type metadata accessor for LocationFetcher(0);
  v103 = v117;
  sub_10062CD24(v102, v117, type metadata accessor for FetchRequestBeacon);
  v62 = v118;
  sub_10062CD24(v102, v118, type metadata accessor for FetchRequestBeacon);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *v106 = 141558531;
    *(v106 + 4) = 1752392040;
    *(v106 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    v109 = v108;
    sub_10062CBB8(v103, type metadata accessor for FetchRequestBeacon);
    v110 = sub_1000136BC(v107, v109, &v153);

    *(v106 + 14) = v110;
    *(v106 + 22) = 2082;
    v111 = v116;
    sub_10062CD24(v62, v116, type metadata accessor for FetchRequestBeacon);
    v69 = objc_autoreleasePoolPush();
    v112 = v150;
    sub_100EABD30(v111, &v151);
    v150 = v112;
    if (v112)
    {
      while (1)
      {
        v115 = v62;
LABEL_29:
        sub_10062CBB8(v115, type metadata accessor for FetchRequestBeacon);
        objc_autoreleasePoolPop(v69);
        __break(1u);
      }
    }

    objc_autoreleasePoolPop(v69);
    sub_10062CBB8(v111, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v62, type metadata accessor for FetchRequestBeacon);
    v113 = sub_1000136BC(v151, v152, &v153);

    *(v106 + 24) = v113;
    _os_log_impl(&_mh_execute_header, v104, v105, "Combined fetch instruction result %{private,mask.hash}s %{public}s.", v106, 0x20u);
    swift_arrayDestroy();

    v114 = v119;
  }

  else
  {

    sub_10062CBB8(v62, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v103, type metadata accessor for FetchRequestBeacon);
    v114 = v102;
  }

  return sub_10062CBB8(v114, type metadata accessor for FetchRequestBeacon);
}

void sub_1005E20B0(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v258 = a4;
  v255 = a3;
  v270 = a2;
  v264 = a6;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v263 = *(RequestBeacon - 8);
  v10 = __chkstk_darwin(RequestBeacon);
  v245 = &v226 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v248 = &v226 - v13;
  __chkstk_darwin(v12);
  v256 = &v226 - v14;
  v15 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v260 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v268 = (&v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v17 - 8);
  v243 = &v226 - v18;
  v19 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v241 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v226 - v24;
  v26 = __chkstk_darwin(v23);
  v242 = &v226 - v27;
  v28 = __chkstk_darwin(v26);
  v240 = &v226 - v29;
  __chkstk_darwin(v28);
  v244 = &v226 - v30;
  v31 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v31 - 8);
  v254 = &v226 - v32;
  v262 = type metadata accessor for UUID();
  v261 = *(v262 - 8);
  v33 = __chkstk_darwin(v262);
  v246 = &v226 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v269 = &v226 - v35;
  v253 = type metadata accessor for Date();
  v252 = *(v253 - 8);
  v36 = __chkstk_darwin(v253);
  v251 = &v226 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v250 = &v226 - v39;
  v40 = __chkstk_darwin(v38);
  v249 = &v226 - v41;
  v42 = __chkstk_darwin(v40);
  v44 = &v226 - v43;
  __chkstk_darwin(v42);
  v257 = &v226 - v45;
  v46 = type metadata accessor for DateInterval();
  v47 = __chkstk_darwin(v46);
  v48 = __chkstk_darwin(v47);
  v52 = &v226 - v51;
  v266 = a1;
  v53 = *(a1 + 16);
  if (!v53)
  {
    type metadata accessor for LocationFetcher(0);
    sub_10001F280(v270, &v271);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v274[0] = swift_slowAlloc();
      *v74 = 141558531;
      *(v74 + 4) = 1752392040;
      *(v74 + 12) = 2081;
      v76 = v272;
      v75 = v273;
      sub_1000035D0(&v271, v272);
      v77 = v269;
      (*(*(*(v75 + 8) + 8) + 32))(v76);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v78 = v262;
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      (*(v261 + 8))(v77, v78);
      sub_100007BAC(&v271);
      v82 = sub_1000136BC(v79, v81, v274);

      *(v74 + 14) = v82;
      *(v74 + 22) = 2082;
      if (v255)
      {
        v83 = 0x61646E6F6365732ELL;
      }

      else
      {
        v83 = 0x7972616D6972702ELL;
      }

      if (v255)
      {
        v84 = 0xEA00000000007972;
      }

      else
      {
        v84 = 0xE800000000000000;
      }

      v85 = sub_1000136BC(v83, v84, v274);

      *(v74 + 24) = v85;
      _os_log_impl(&_mh_execute_header, v72, v73, "No keys to fetch for beacon %{private,mask.hash}s, sequence: %{public}s.", v74, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100007BAC(&v271);
    }

    goto LABEL_23;
  }

  v54 = *(a1 + 16);
  v55 = a5;
  if ((*(a5 + 8) & 1) == 0)
  {
    v54 = *a5;
    if (*a5 <= 0)
    {
LABEL_23:
      (*(v263 + 56))(v264, 1, 1, RequestBeacon);
      return;
    }
  }

  v56 = v54 - v258;
  if (__OFSUB__(v54, v258))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v56 > v54)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v56 > v53)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v53 < v54)
  {
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
    swift_once();
    goto LABEL_32;
  }

  v57 = v50;
  v239 = v49;
  v258 = v48;
  v237 = v55;
  v259 = v54;
  v58 = type metadata accessor for TimeBasedKey(0);
  v59 = *(v58 - 8);
  if (v56 == v259)
  {
    type metadata accessor for LocationFetcher(0);

    sub_10001F280(v270, &v271);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v274[0] = v63;
      *v62 = 141558275;
      *(v62 + 4) = 1752392040;
      *(v62 + 12) = 2081;
      v65 = v272;
      v64 = v273;
      sub_1000035D0(&v271, v272);
      v66 = v269;
      (*(*(*(v64 + 8) + 8) + 32))(v65);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v67 = v262;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v261 + 8))(v66, v67);
      sub_100007BAC(&v271);
      v71 = sub_1000136BC(v68, v70, v274);

      *(v62 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v60, v61, "Keys with invalid date interval for beacon %{private,mask.hash}s.", v62, 0x16u);
      sub_100007BAC(v63);
    }

    else
    {

      sub_100007BAC(&v271);
    }

    sub_10062B0D0();
    swift_allocError();
    *v108 = 2;
    swift_willThrow();

    return;
  }

  if (v56 >= v259)
  {
    goto LABEL_131;
  }

  v229 = v20;
  v228 = v21;
  v230 = v19;
  v227 = v25;
  v247 = v6;
  v86 = v266 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v235 = *(v59 + 72);
  v236 = v56 & ~(v56 >> 63);
  v87 = v57 + 16;
  v88 = *(v57 + 16);
  v89 = v86 + v235 * v236 + *(v58 + 20);
  v90 = v239;
  v234 = v58;
  v238 = v52;
  v91 = v258;
  v88(v239, v89, v258);

  DateInterval.start.getter();
  v93 = v57 + 8;
  v92 = *(v57 + 8);
  v92(v90, v91);
  v94 = v252;
  v95 = v44;
  v96 = v253;
  (*(v252 + 32))(v257, v95, v253);
  v233 = v86;
  v97 = v86 + v235 * (v259 - 1) + *(v234 + 5);
  v232 = v87;
  v231 = v88;
  v88(v90, v97, v91);
  v98 = v249;
  DateInterval.end.getter();
  v235 = v93;
  v234 = v92;
  v92(v90, v91);
  v99 = *(v94 + 16);
  v100 = v257;
  v99(v250, v257, v96);
  v99(v251, v98, v96);
  DateInterval.init(start:end:)();
  v101 = *(v94 + 8);
  v101(v98, v96);
  v101(v100, v96);
  v102 = v270[3];
  v103 = v270[4];
  sub_1000035D0(v270, v102);
  v104 = v254;
  (*(v103 + 200))(v102, v103);
  v105 = v261;
  v106 = v262;
  if ((*(v261 + 48))(v104, 1, v262) == 1)
  {
    sub_10000B3A8(v104, &qword_1016980D0, &unk_10138F3B0);
    LODWORD(v252) = 0;
    v7 = v247;
    v20 = v269;
    v107 = v267;
  }

  else
  {
    v109 = v246;
    (*(v105 + 32))(v246, v104, v106);
    v107 = v267;
    sub_100ACBC98(v109, &v271);
    v110 = v272;
    v7 = v247;
    v20 = v269;
    if (v272)
    {
      v111 = v273;
      sub_1000035D0(&v271, v272);
      LODWORD(v252) = (*(v111 + 24))(v110, v111);
      (*(v105 + 8))(v109, v106);
      sub_100007BAC(&v271);
    }

    else
    {
      (*(v105 + 8))(v109, v106);
      sub_10000B3A8(&v271, &unk_1016AA480, &unk_1013BD050);
      LODWORD(v252) = 0;
    }
  }

  v112 = v107[6];
  v113 = v107[7];
  sub_1000035D0(v107 + 3, v112);
  v114 = (*(v113 + 40))(v112, v113);
  v52 = _swiftEmptyArrayStorage;
  v276 = _swiftEmptyArrayStorage;
  v115 = v107[6];
  v116 = v107[7];
  sub_1000035D0(v107 + 3, v115);
  v117 = (*(v116 + 64))(v115, v116);
  LODWORD(v251) = v114;
  if ((v117 & 1) == 0)
  {
    goto LABEL_41;
  }

  if (qword_101694E50 != -1)
  {
    goto LABEL_134;
  }

LABEL_32:

  OS_dispatch_queue.sync<A>(execute:)();

  v118 = v271;

  if (v118 != 1)
  {
    v247 = v7;
LABEL_41:
    v139 = v266;
    v140 = v256;
    v141 = v255;
    v142 = v270;
    v143 = v238;
    goto LABEL_42;
  }

  sub_10001F280(v270, &v271);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v119 = v243;
  v120 = v230;
  v121 = swift_dynamicCast();
  v122 = *(v229 + 56);
  if ((v121 & 1) == 0)
  {
    v247 = v7;
    v122(v119, 1, 1, v120);
    sub_10000B3A8(v119, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_41;
  }

  v122(v119, 0, 1, v120);
  v123 = v244;
  sub_10062CC64(v119, v244, type metadata accessor for OwnedBeaconRecord);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v124 = sub_1012DEC1C((v123 + *(v120 + 20)));
  v125 = &qword_101695000;
  if (v7)
  {

    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    sub_1000076D4(v126, qword_10177CE28);
    v127 = v241;
    sub_10062CD24(v123, v241, type metadata accessor for OwnedBeaconRecord);
    swift_errorRetain();
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v271 = v132;
      *v130 = 141558531;
      *(v130 + 4) = 1752392040;
      *(v130 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v133 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v127;
      v136 = v135;
      sub_10062CBB8(v134, type metadata accessor for OwnedBeaconRecord);
      v137 = sub_1000136BC(v133, v136, &v271);

      *(v130 + 14) = v137;
      *(v130 + 22) = 2112;
      swift_errorRetain();
      v138 = _swift_stdlib_bridgeErrorToNSError();
      *(v130 + 24) = v138;
      *v131 = v138;
      _os_log_impl(&_mh_execute_header, v128, v129, "Failed to get ownedDeviceKeys for %{private,mask.hash}s error %@.", v130, 0x20u);
      sub_10000B3A8(v131, &qword_10169BB30, &unk_10138B3C0);
      v125 = &qword_101695000;

      sub_100007BAC(v132);

      v123 = v244;
    }

    else
    {

      sub_10062CBB8(v127, type metadata accessor for OwnedBeaconRecord);
    }

    v174 = v227;
  }

  else
  {
    v173 = v124;

    v276 = v173;
    v174 = v227;
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    sub_1000076D4(v175, qword_10177CE28);
    v176 = v240;
    sub_10062CD24(v123, v240, type metadata accessor for OwnedBeaconRecord);
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v271 = v180;
      *v179 = 141558275;
      *(v179 + 4) = 1752392040;
      *(v179 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v181 = dispatch thunk of CustomStringConvertible.description.getter();
      v182 = v176;
      v184 = v183;
      sub_10062CBB8(v182, type metadata accessor for OwnedBeaconRecord);
      v185 = sub_1000136BC(v181, v184, &v271);

      *(v179 + 14) = v185;
      _os_log_impl(&_mh_execute_header, v177, v178, "Successfully fetched ownedDeviceKeys for %{private,mask.hash}s.", v179, 0x16u);
      sub_100007BAC(v180);

      v123 = v244;
    }

    else
    {

      sub_10062CBB8(v176, type metadata accessor for OwnedBeaconRecord);
    }

    v125 = &qword_101695000;
  }

  v186 = v242;
  sub_10062CD24(v123, v242, type metadata accessor for OwnedBeaconRecord);
  v187 = (*(v229 + 80) + 16) & ~*(v229 + 80);
  v188 = swift_allocObject();
  sub_10062CC64(v186, v188 + v187, type metadata accessor for OwnedBeaconRecord);
  sub_1000BC4D4(&qword_1016A5900, &unk_1013B3380);
  unsafeFromAsyncTask<A>(_:)();

  v7 = v271;
  if (v125[158] != -1)
  {
    swift_once();
  }

  v189 = type metadata accessor for Logger();
  sub_1000076D4(v189, qword_10177CE28);
  sub_10062CD24(v123, v174, type metadata accessor for OwnedBeaconRecord);

  v190 = Logger.logObject.getter();
  v191 = static os_log_type_t.default.getter();
  v192 = os_log_type_enabled(v190, v191);
  v257 = v7;
  v247 = 0;
  if (v192)
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v271 = v194;
    *v193 = 134218499;
    *(v193 + 4) = *(v257 + 2);

    *(v193 + 12) = 2160;
    *(v193 + 14) = 1752392040;
    *(v193 + 22) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v195 = dispatch thunk of CustomStringConvertible.description.getter();
    v196 = v174;
    v198 = v197;
    sub_10062CBB8(v196, type metadata accessor for OwnedBeaconRecord);
    v199 = sub_1000136BC(v195, v198, &v271);

    *(v193 + 24) = v199;
    _os_log_impl(&_mh_execute_header, v190, v191, "Found %ld own device keys for shared beacon %{private,mask.hash}s.", v193, 0x20u);
    sub_100007BAC(v194);

    v7 = v257;
  }

  else
  {

    sub_10062CBB8(v174, type metadata accessor for OwnedBeaconRecord);
  }

  v200 = *(v7 + 16);
  v20 = v269;
  if (v200)
  {
    v271 = v52;
    sub_101124EF0(0, v200, 0);
    v201 = 0;
    v202 = v271;
    v254 = (v7 + ((*(v260 + 80) + 32) & ~*(v260 + 80)));
    v253 = v200;
    while (1)
    {
      if (v201 >= *(v7 + 16))
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v203 = v268;
      sub_10062CD24(&v254[*(v260 + 72) * v201], v268, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v167 = *v203;
      v204 = v203[1];
      v205 = v204 >> 62;
      if ((v204 >> 62) > 1)
      {
        if (v205 != 2)
        {
          v52 = 0;
          v206 = 0;
          v208 = 0;
          v207 = 0;
          goto LABEL_77;
        }

        v206 = *(v167 + 16);
        v52 = *(v167 + 24);
      }

      else
      {
        if (!v205)
        {
          v206 = 0;
          v207 = 0;
          v52 = BYTE6(v204);
          v208 = BYTE6(v204);
          goto LABEL_77;
        }

        v206 = v167;
        v52 = v167 >> 32;
      }

      sub_100017D5C(v167, v204);
      if (v52 < v206)
      {
        goto LABEL_121;
      }

      if (v205 == 2)
      {
        v207 = *(v167 + 16);
        v208 = *(v167 + 24);
      }

      else
      {
        v207 = v167;
        v208 = v167 >> 32;
      }

LABEL_77:
      if (v208 < v52 || v52 < v207)
      {
        goto LABEL_122;
      }

      if (__OFSUB__(v52, v206))
      {
        goto LABEL_123;
      }

      if ((v52 - v206) < 0x39)
      {
        if (v205 <= 1)
        {
          if (!v205)
          {
            goto LABEL_104;
          }

          v209 = v167 >> 32;
LABEL_100:
          v212 = v167;
          goto LABEL_103;
        }

        if (v205 != 2)
        {
          goto LABEL_104;
        }

        v209 = *(v167 + 24);
LABEL_102:
        v212 = *(v167 + 16);
        goto LABEL_103;
      }

      v209 = v206 + 57;
      if (__OFADD__(v206, 57))
      {
        goto LABEL_129;
      }

      if (v205 > 1)
      {
        if (v205 == 2)
        {
          v210 = *(v167 + 16);
          v211 = *(v167 + 24);
        }

        else
        {
          v211 = 0;
          v210 = 0;
        }
      }

      else if (v205)
      {
        v210 = v167;
        v211 = v167 >> 32;
      }

      else
      {
        v210 = 0;
        v211 = BYTE6(v204);
      }

      if (v211 < v209 || v209 < v210)
      {
        goto LABEL_130;
      }

      v212 = 0;
      if (v205 <= 1)
      {
        if (!v205)
        {
          goto LABEL_103;
        }

        goto LABEL_100;
      }

      if (v205 != 3)
      {
        goto LABEL_102;
      }

LABEL_103:
      if (v209 < v212)
      {
        goto LABEL_124;
      }

LABEL_104:
      v154 = Data._Representation.subscript.getter();
      v214 = v213;
      sub_100016590(v167, v204);
      v215 = v214 >> 62;
      if ((v214 >> 62) > 1)
      {
        if (v215 != 2)
        {
          goto LABEL_135;
        }

        v218 = *(v154 + 16);
        v217 = *(v154 + 24);
        v219 = __OFSUB__(v217, v218);
        v216 = v217 - v218;
        if (v219)
        {
          goto LABEL_133;
        }
      }

      else if (v215)
      {
        LODWORD(v216) = HIDWORD(v154) - v154;
        if (__OFSUB__(HIDWORD(v154), v154))
        {
          goto LABEL_132;
        }

        v216 = v216;
      }

      else
      {
        v216 = BYTE6(v214);
      }

      if (v216 != 57)
      {
LABEL_135:
        sub_100016590(v154, v214);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_136:
        sub_10062CBB8(v154, type metadata accessor for FetchRequestBeacon);
        objc_autoreleasePoolPop(v167);
        __break(1u);
        return;
      }

      v220 = v268;
      v221 = *v268;
      v52 = v268[1];
      sub_100017D5C(*v268, v52);
      sub_10062CBB8(v220, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v271 = v202;
      v223 = v202[2];
      v222 = v202[3];
      if (v223 >= v222 >> 1)
      {
        sub_101124EF0((v222 > 1), v223 + 1, 1);
        v202 = v271;
      }

      ++v201;
      v202[2] = v223 + 1;
      v224 = &v202[4 * v223];
      v224[4] = v154;
      v224[5] = v214;
      v224[6] = v221;
      v224[7] = v52;
      v20 = v269;
      v7 = v257;
      if (v253 == v201)
      {

        v225 = v266;
        v140 = v256;
        v141 = v255;
        v142 = v270;
        v143 = v238;
        v123 = v244;
        goto LABEL_119;
      }
    }
  }

  v202 = _swiftEmptyArrayStorage;
  v225 = v266;
  v140 = v256;
  v141 = v255;
  v142 = v270;
  v143 = v238;
LABEL_119:
  sub_100399E48(v202);
  sub_10062CBB8(v123, type metadata accessor for OwnedBeaconRecord);
  v139 = v225;
LABEL_42:
  v144 = (2 * v259) | 1;
  v146 = v142[3];
  v145 = v142[4];
  sub_1000035D0(v142, v146);
  (*(*(*(v145 + 8) + 8) + 32))(v146);
  v147 = v239;
  v148 = v143;
  v149 = v258;
  v231(v239, v148, v258);
  v150 = v276;
  if (v251)
  {
    v151 = 256;
  }

  else
  {
    v151 = 0;
  }

  v152 = v151 & 0xFFFFFF00 | v252;

  sub_100EA9D94(v20, v147, v139, v233, v236, v144, v141 & 1, v152, v140, 1, v150);
  type metadata accessor for LocationFetcher(0);
  sub_10001F280(v142, &v271);
  v153 = v140;
  v154 = v248;
  sub_10062CD24(v153, v248, type metadata accessor for FetchRequestBeacon);
  v155 = Logger.logObject.getter();
  v156 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v155, v156))
  {
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v159 = v262;
    v275 = v158;
    *v157 = 141558531;
    *(v157 + 4) = 1752392040;
    *(v157 + 12) = 2081;
    v161 = v272;
    v160 = v273;
    sub_1000035D0(&v271, v272);
    (*(*(*(v160 + 8) + 8) + 32))(v161);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v162 = dispatch thunk of CustomStringConvertible.description.getter();
    v164 = v163;
    (*(v261 + 8))(v20, v159);
    sub_100007BAC(&v271);
    v165 = sub_1000136BC(v162, v164, &v275);

    *(v157 + 14) = v165;
    *(v157 + 22) = 2082;
    v166 = v245;
    sub_10062CD24(v154, v245, type metadata accessor for FetchRequestBeacon);
    v167 = objc_autoreleasePoolPush();
    v168 = v247;
    sub_100EABD30(v166, v274);
    v247 = v168;
    if (v168)
    {
      goto LABEL_136;
    }

    objc_autoreleasePoolPop(v167);
    sub_10062CBB8(v166, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v154, type metadata accessor for FetchRequestBeacon);
    v169 = sub_1000136BC(v274[0], v274[1], &v275);

    *(v157 + 24) = v169;
    _os_log_impl(&_mh_execute_header, v155, v156, "Created fetch instruction for beacon %{private,mask.hash}s: %{public}s.", v157, 0x20u);
    swift_arrayDestroy();

    v234(v238, v258);
  }

  else
  {

    sub_10062CBB8(v154, type metadata accessor for FetchRequestBeacon);
    v234(v238, v149);
    sub_100007BAC(&v271);
  }

  v170 = v256;
  v171 = v237;
  *v237 = v236;
  *(v171 + 8) = 0;
  v172 = v264;
  sub_10062CC64(v170, v264, type metadata accessor for FetchRequestBeacon);
  (*(v263 + 56))(v172, 0, 1, RequestBeacon);
}

uint64_t sub_1005E4220(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1005E42B4;

  return daemon.getter();
}

uint64_t sub_1005E42B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009774(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_1005E4490;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005E4490(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_1005E4658, 0, 0);
  }

  else
  {
    v6 = v4[3];

    v4[7] = a1;
    v7 = *(type metadata accessor for OwnedBeaconRecord(0) + 20);
    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v5;
    v8[1] = sub_1005E467C;

    return sub_10029BFD0(v6 + v7);
  }
}

uint64_t sub_1005E467C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1005E477C, 0, 0);
}

uint64_t sub_1005E477C()
{

  **(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E47E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1005E48C0(unsigned __int8 a1, uint64_t a2)
{
  v14 = *(a2 + 16);
  v2 = 0;
  if (v14)
  {
    v16 = a2 + 32;
    v3 = 0xE700000000000000;
    v15 = a1;
    while (1)
    {
      v4 = *(v16 + v2);
      if (v4 <= 1)
      {
        if (*(v16 + v2))
        {
          v5 = 0x726576726573;
        }

        else
        {
          v5 = 0x746C7561666564;
        }

        if (*(v16 + v2))
        {
          v6 = 0xE600000000000000;
        }

        else
        {
          v6 = 0xE700000000000000;
        }
      }

      else if (v4 == 2)
      {
        v6 = 0xE500000000000000;
        v5 = 0x73656C6F72;
      }

      else
      {
        if (v4 == 3)
        {
          v5 = 0x6166654472657375;
        }

        else
        {
          v5 = 0x5365636976726573;
        }

        if (v4 == 3)
        {
          v6 = 0xEC00000073746C75;
        }

        else
        {
          v6 = 0xEF73676E69747465;
        }
      }

      if (v15 == 3)
      {
        v7 = 0x6166654472657375;
      }

      else
      {
        v7 = 0x5365636976726573;
      }

      if (v15 == 3)
      {
        v8 = 0xEC00000073746C75;
      }

      else
      {
        v8 = 0xEF73676E69747465;
      }

      if (v15 == 2)
      {
        v7 = 0x73656C6F72;
        v8 = 0xE500000000000000;
      }

      if (v15)
      {
        v9 = 0x726576726573;
      }

      else
      {
        v9 = 0x746C7561666564;
      }

      if (v15)
      {
        v3 = 0xE600000000000000;
      }

      v10 = v15 <= 1 ? v9 : v7;
      v11 = v15 <= 1 ? v3 : v8;
      if (v5 == v10 && v6 == v11)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        return v2;
      }

      ++v2;
      v3 = 0xE700000000000000;
      if (v14 == v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1005E4A90(uint64_t *a1, void *a2, uint64_t a3, int a4, void *a5, uint64_t *a6, int a7, uint64_t *a8, void (*a9)(void), uint64_t a10)
{
  v11 = v10;
  v168 = a8;
  v155 = a7;
  v165 = a6;
  LODWORD(v162) = a4;
  v144 = a10;
  v143 = a9;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v167 = *(RequestBeacon - 8);
  __chkstk_darwin(RequestBeacon);
  v151 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016A58E8, &qword_1013B3348);
  v19 = __chkstk_darwin(v18 - 8);
  v147 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v150 = &v139 - v22;
  v23 = __chkstk_darwin(v21);
  v152 = &v139 - v24;
  __chkstk_darwin(v23);
  v164 = &v139 - v25;
  v160 = type metadata accessor for UUID();
  v153 = *(v160 - 8);
  v26 = __chkstk_darwin(v160);
  v169 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v142 = &v139 - v28;
  v29 = type metadata accessor for DateInterval();
  v140 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005E5BE0(a2, a1 + 3, v31);
  v163 = a3;
  v161 = a1;
  v166 = RequestBeacon;
  v158 = a2;
  v141 = v29;
  v139 = v31;
  if (a3 < 1)
  {
    type metadata accessor for LocationFetcher(0);
    sub_10001F280(a2, &v171);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v175 = v159;
      *v57 = 141558275;
      *(v57 + 4) = 1752392040;
      *(v57 + 12) = 2081;
      LODWORD(v157) = v56;
      v59 = v173;
      v58 = v174;
      sub_1000035D0(&v171, v173);
      v60 = v142;
      (*(*(*(v58 + 8) + 8) + 32))(v59);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61 = v160;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v153 + 8))(v60, v61);
      sub_100007BAC(&v171);
      v65 = sub_1000136BC(v62, v64, &v175);

      *(v57 + 14) = v65;
      sub_100007BAC(v159);

      a2 = v158;
    }

    else
    {

      sub_100007BAC(&v171);
    }

    v54 = v164;
    v156 = v162 & 1;
  }

  else
  {
    v32 = *a1;
    v33 = a2[3];
    v34 = a2[4];
    v35 = sub_1000035D0(a2, v33);
    v156 = v162 & 1;
    v36 = sub_100B03A58(v35, v31, v156, 1, 0, v32, v33, v34);
    v40 = v36;
    if (v38 <= 1u)
    {
      if (v38)
      {
        RequestBeacon = v166;
        v54 = v164;
      }

      else
      {
        v162 = v37;
        type metadata accessor for LocationFetcher(0);
        sub_10001F280(a2, &v171);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        v43 = os_log_type_enabled(v41, v42);
        RequestBeacon = v166;
        if (v43)
        {
          v44 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v175 = v159;
          *v44 = 141558275;
          *(v44 + 4) = 1752392040;
          *(v44 + 12) = 2081;
          LODWORD(v154) = v42;
          v46 = v173;
          v45 = v174;
          sub_1000035D0(&v171, v173);
          v47 = *(*(*(v45 + 8) + 8) + 32);
          v157 = v40;
          v48 = v142;
          v47(v46);
          sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v49 = v160;
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          (*(v153 + 8))(v48, v49);
          sub_100007BAC(&v171);
          v53 = sub_1000136BC(v50, v52, &v175);

          *(v44 + 14) = v53;
          sub_100007BAC(v159);

          a2 = v158;

          v40 = v157;
          sub_100359088(v157, v162, 0);
        }

        else
        {

          sub_100359088(v40, v162, 0);
          sub_100007BAC(&v171);
        }

        a3 = v163;
        v54 = v164;
      }

      goto LABEL_19;
    }

    if (v38 == 2)
    {
      sub_100359088(v36, v37, 2u);
    }

    type metadata accessor for LocationFetcher(0);
    sub_10001F280(a2, &v171);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    v68 = os_log_type_enabled(v66, v67);
    RequestBeacon = v166;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v175 = v162;
      *v69 = 141558275;
      *(v69 + 4) = 1752392040;
      *(v69 + 12) = 2081;
      LODWORD(v159) = v67;
      v71 = v173;
      v70 = v174;
      sub_1000035D0(&v171, v173);
      v72 = v142;
      (*(*(*(v70 + 8) + 8) + 32))(v71);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v73 = v160;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v153 + 8))(v72, v73);
      sub_100007BAC(&v171);
      v77 = sub_1000136BC(v74, v76, &v175);

      *(v69 + 14) = v77;
      sub_100007BAC(v162);

      a2 = v158;
    }

    else
    {

      sub_100007BAC(&v171);
    }

    v54 = v164;
  }

  v40 = _swiftEmptyArrayStorage;
  a3 = v163;
LABEL_19:
  v171 = 0;
  v172 = 1;
  v154 = (v167 + 7);
  v162 = v167 + 6;
  v148 = v153 + 16;
  v159 = (v153 + 8);
  *&v39 = 136446210;
  v145 = v39;
  v157 = v40;
  v149 = a5;
  while (1)
  {
    v80 = objc_autoreleasePoolPush();
    v81 = a3 - *a5;
    if (__OFSUB__(a3, *a5))
    {
      break;
    }

    v167 = v80;
    sub_1005E20B0(v40, a2, v156, v81, &v171, v54);
    v82 = v11;
    if (v11)
    {

      (*v154)(v54, 1, 1, RequestBeacon);
      v82 = 0;
    }

    sub_1005E76F4(v54, a5, v165);
    v83 = a2[3];
    v84 = a2[4];
    sub_1000035D0(a2, v83);
    v85 = a3;
    if ((*(v84 + 112))(v83, v84))
    {
      v85 = a3;
      if (v155)
      {
        v86 = v152;
        sub_1000D2A70(v164, v152, &qword_1016A58E8, &qword_1013B3348);
        v87 = *v162;
        v88 = v166;
        if ((*v162)(v86, 1, v166) == 1)
        {
          sub_10000B3A8(v86, &qword_1016A58E8, &qword_1013B3348);
          v85 = v163;
          a5 = v149;
        }

        else
        {
          sub_10062CC64(v86, v151, type metadata accessor for FetchRequestBeacon);
          v89 = v150;
          sub_1005E79F8(a2, v150);
          v90 = v89;
          v91 = v147;
          sub_1000D2A70(v90, v147, &qword_1016A58E8, &qword_1013B3348);
          if (v87(v91, 1, v88) == 1)
          {
            sub_10000B3A8(v91, &qword_1016A58E8, &qword_1013B3348);
            v92 = 0;
          }

          else
          {
            v93 = *(v91 + *(v88 + 28));

            sub_10062CBB8(v91, type metadata accessor for FetchRequestBeacon);
            v92 = *(v93 + 16);
          }

          v94 = __OFADD__(v163, v92);
          v85 = v163 + v92;
          if (v94)
          {
            goto LABEL_61;
          }

          v95 = v150;
          v96 = v149;
          sub_1005E76F4(v150, v149, v165);
          a5 = v96;
          sub_10000B3A8(v95, &qword_1016A58E8, &qword_1013B3348);
          sub_10062CBB8(v151, type metadata accessor for FetchRequestBeacon);
        }
      }
    }

    v97 = a5;
    v98 = v82;
    v100 = a2[3];
    v99 = a2[4];
    sub_1000035D0(a2, v100);
    v101 = v169;
    (*(*(*(v99 + 8) + 8) + 32))(v100);
    v102 = v172;
    v103 = v171 == 0;
    v104 = v168;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175 = *v104;
    v106 = v175;
    *v104 = 0x8000000000000000;
    v108 = sub_1000210EC(v101);
    v109 = *(v106 + 16);
    v110 = (v107 & 1) == 0;
    v111 = v109 + v110;
    if (__OFADD__(v109, v110))
    {
      goto LABEL_58;
    }

    v112 = v107;
    if (*(v106 + 24) >= v111)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10100A144();
      }
    }

    else
    {
      sub_100FF05B4(v111, isUniquelyReferenced_nonNull_native);
      v113 = sub_1000210EC(v169);
      if ((v112 & 1) != (v114 & 1))
      {
        goto LABEL_62;
      }

      v108 = v113;
    }

    v115 = v103 & ~v102;
    v116 = v175;
    if (v112)
    {
      *(v175[7] + v108) = v115;
      v117 = *v159;
      (*v159)(v169, v160);
      v11 = v98;
    }

    else
    {
      v175[(v108 >> 6) + 8] |= 1 << v108;
      v118 = v153;
      v119 = v169;
      v120 = v160;
      (*(v153 + 16))(v116[6] + *(v153 + 72) * v108, v169, v160);
      *(v116[7] + v108) = v115;
      v117 = *(v118 + 8);
      v117(v119, v120);
      v121 = v116[2];
      v94 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (v94)
      {
        goto LABEL_60;
      }

      v11 = v98;
      v116[2] = v122;
    }

    *v168 = v116;

    RequestBeacon = v166;
    if (__OFSUB__(v85, *v97))
    {
      goto LABEL_59;
    }

    a5 = v97;
    if (v85 - *v97 >= 1)
    {

      a2 = v158;
      a3 = v163;
    }

    else
    {
      sub_1005E0BB4(*v165);
      a3 = v163;
      if (v11)
      {

        type metadata accessor for LocationFetcher(0);
        swift_errorRetain();
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v175 = v127;
          *v126 = v145;
          v170 = v11;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v128 = String.init<A>(describing:)();
          v130 = sub_1000136BC(v128, v129, &v175);
          v146 = v11;
          v131 = v130;

          *(v126 + 4) = v131;
          _os_log_impl(&_mh_execute_header, v124, v125, "Invalid fetch combination %{public}s.", v126, 0xCu);
          sub_100007BAC(v127);
        }

        else
        {
        }

        v11 = 0;
        a2 = v158;
        RequestBeacon = v166;
      }

      else
      {
        if (*(v123 + 16))
        {
          v143();

          v132 = v165;

          *v132 = _swiftEmptyDictionarySingleton;
          *a5 = 0;
        }

        else
        {
        }

        a2 = v158;
      }
    }

    v54 = v164;
    v78 = (*v162)(v164, 1, RequestBeacon);
    sub_10000B3A8(v54, &qword_1016A58E8, &qword_1013B3348);
    objc_autoreleasePoolPop(v167);
    v79 = v78 == 1;
    v40 = v157;
    if (v79)
    {

      v133 = a2[3];
      v134 = a2[4];
      sub_1000035D0(a2, v133);
      v135 = v142;
      (*(*(*(v134 + 8) + 8) + 32))(v133);
      v136 = v168;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      v175 = *v136;
      *v136 = 0x8000000000000000;
      sub_100FFEC98(1, v135, v137);
      v117(v135, v160);
      (*(v140 + 8))(v139, v141);
      *v136 = v175;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005E5BE0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v194 = a2;
  v207 = a1;
  v200 = a3;
  v202 = type metadata accessor for DateInterval();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v204 = &v192 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v211 = *(v4 - 8);
  v212 = v4;
  v5 = __chkstk_darwin(v4);
  v197 = (&v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v205 = &v192 - v7;
  v216 = type metadata accessor for LocationFetcher(0);
  v8 = *(v216 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v216);
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = __chkstk_darwin(v10);
  v210 = (&v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = &v192 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v192 - v17;
  __chkstk_darwin(v16);
  v214 = &v192 - v19;
  v215 = type metadata accessor for Date();
  v206 = *(v215 - 8);
  v20 = __chkstk_darwin(v215);
  v199 = &v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v198 = &v192 - v23;
  v24 = __chkstk_darwin(v22);
  v203 = &v192 - v25;
  v26 = __chkstk_darwin(v24);
  v213 = &v192 - v27;
  v28 = __chkstk_darwin(v26);
  v193 = &v192 - v29;
  __chkstk_darwin(v28);
  v209 = &v192 - v30;
  static Date.trustedNow.getter(&v192 - v30);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v196 = qword_10177B348;
  OS_dispatch_queue.sync<A>(execute:)();
  v195 = 0;
  v31 = sub_101074868(v221);

  if (v31)
  {
    v32 = v208;
    sub_10062CD24(v208, &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
    v33 = v207;
    sub_10001F280(v207, &v221);
    v34 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v35 = swift_allocObject();
    sub_10062CC64(&v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for LocationFetcher);
    sub_10000A748(&v221, v35 + ((v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    v36 = v214;
    unsafeFromAsyncTask<A>(_:)();

    sub_1000D2A70(v36, v18, &unk_101696900, &unk_10138B1E0);
    sub_10001F280(v33, &v221);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v218[0] = swift_slowAlloc();
      *v39 = 136446723;
      sub_1000D2A70(v18, v15, &unk_101696900, &unk_10138B1E0);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      sub_10000B3A8(v18, &unk_101696900, &unk_10138B1E0);
      v43 = sub_1000136BC(v40, v42, v218);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2160;
      *(v39 + 14) = 1752392040;
      *(v39 + 22) = 2081;
      v44 = v222;
      v45 = v223;
      sub_1000035D0(&v221, v222);
      v46 = v205;
      (*(*(v45[1] + 1) + 32))(v44);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v47 = v212;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v51 = v46;
      v32 = v208;
      (*(v211 + 8))(v51, v47);
      sub_100007BAC(&v221);
      v52 = sub_1000136BC(v48, v50, v218);

      *(v39 + 24) = v52;
      _os_log_impl(&_mh_execute_header, v37, v38, "Using last known good key: %{public}s, for beacon %{private,mask.hash}s.", v39, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000B3A8(v18, &unk_101696900, &unk_10138B1E0);
      sub_100007BAC(&v221);
    }

    v73 = v209;
    v74 = v210;
    v54 = v215;
    v72 = v216;
    v53 = v206;
    v56 = v207;
  }

  else
  {
    v53 = v206;
    v54 = v215;
    (*(v206 + 56))(v214, 1, 1, v215);
    v55 = v216;
    v56 = v207;
    sub_10001F280(v207, &v221);
    v32 = v208;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v218[0] = v60;
      *v59 = 141558275;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2081;
      v62 = v222;
      v61 = v223;
      sub_1000035D0(&v221, v222);
      v63 = v205;
      (*(*(v61[1] + 1) + 32))(v62);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = v53;
      v65 = v212;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = v63;
      v32 = v208;
      v70 = v65;
      v53 = v64;
      (*(v211 + 8))(v69, v70);
      sub_100007BAC(&v221);
      v71 = sub_1000136BC(v66, v68, v218);

      *(v59 + 14) = v71;
      sub_100007BAC(v60);
      v72 = v216;

      v54 = v215;

      v73 = v209;
      v74 = v210;
    }

    else
    {

      sub_100007BAC(&v221);
      v73 = v209;
      v74 = v210;
      v72 = v55;
    }
  }

  v75 = v194[3];
  v76 = v194[4];
  sub_1000035D0(v194, v75);
  if ((*(v76 + 40))(v75, v76))
  {
    v77 = v56[3];
    v78 = v56[4];
    sub_1000035D0(v56, v77);
    (*(v78 + 192))(v77, v78);
    (*(v53 + 56))(v74, 0, 1, v54);
    v79 = v72;
    sub_10001F280(v56, &v221);
    sub_10001F280(v56, v218);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v80, v81))
    {

      sub_100007BAC(&v221);
      sub_100007BAC(v218);
      v114 = v197;
      v100 = v79;
      v73 = v209;
      goto LABEL_19;
    }

    v82 = v53;
    v83 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v217 = v194;
    *v83 = 136446723;
    v84 = v222;
    v85 = v223;
    sub_1000035D0(&v221, v222);
    v86 = v193;
    (v85[24])(v84, v85);
    sub_100009774(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    v89 = v88;
    (*(v82 + 8))(v86, v54);
    sub_100007BAC(&v221);
    v90 = sub_1000136BC(v87, v89, &v217);

    *(v83 + 4) = v90;
    *(v83 + 12) = 2160;
    *(v83 + 14) = 1752392040;
    *(v83 + 22) = 2081;
    v92 = v219;
    v91 = v220;
    sub_1000035D0(v218, v219);
    v93 = v205;
    (*(*(*(v91 + 8) + 8) + 32))(v92);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v94 = v212;
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = v96;
    v98 = v93;
    v32 = v208;
    (*(v211 + 8))(v98, v94);
    sub_100007BAC(v218);
    v99 = sub_1000136BC(v95, v97, &v217);

    *(v83 + 24) = v99;
    _os_log_impl(&_mh_execute_header, v80, v81, "Using policy fetch limit of baseDate/Pairing: %{public}s for beacon %{private,mask.hash}s.", v83, 0x20u);
    swift_arrayDestroy();
    v74 = v210;
    v100 = v216;

    v73 = v209;
  }

  else
  {
    (*(v53 + 56))(v74, 1, 1, v54);
    v101 = v72;
    sub_10001F280(v56, &v221);
    v80 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v80, v102))
    {

      sub_100007BAC(&v221);
      v114 = v197;
      v100 = v101;
      goto LABEL_19;
    }

    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v218[0] = v104;
    *v103 = 141558275;
    *(v103 + 4) = 1752392040;
    *(v103 + 12) = 2081;
    v106 = v222;
    v105 = v223;
    sub_1000035D0(&v221, v222);
    v107 = v205;
    (*(*(v105[1] + 1) + 32))(v106);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v108 = v212;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    v112 = v107;
    v32 = v208;
    (*(v211 + 8))(v112, v108);
    sub_100007BAC(&v221);
    v113 = sub_1000136BC(v109, v111, v218);

    *(v103 + 14) = v113;
    sub_100007BAC(v104);
    v74 = v210;
    v100 = v216;
  }

  v114 = v197;
LABEL_19:
  v115 = *(v32 + *(v100 + 36));
  v117 = v56[3];
  v116 = v56[4];
  sub_1000035D0(v56, v117);
  (*(*(*(v116 + 8) + 8) + 32))(v117);
  if (*(v115 + 16) && (v118 = sub_1000210EC(v114), (v119 & 1) != 0))
  {
    v120 = *(v211 + 8);
    v121 = *(*(v115 + 56) + 8 * v118);
    v197 = v120;
    v120(v114, v212);
  }

  else
  {
    v197 = *(v211 + 8);
    v197(v114, v212);
    v121 = 0;
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v222 = &type metadata for Configuration;
  v223 = &off_101616308;
  sub_100884E1C(v56, v73, v74, v214, v121, &v221, v213);

  sub_100007BAC(&v221);
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  LODWORD(v196) = v221;
  if ((v221 & 1) == 0)
  {
    sub_10001F280(v56, &v221);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v218[0] = v139;
      *v138 = 141558275;
      *(v138 + 4) = 1752392040;
      *(v138 + 12) = 2081;
      v141 = v222;
      v140 = v223;
      sub_1000035D0(&v221, v222);
      v142 = v205;
      (*(*(v140[1] + 1) + 32))(v141);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = v212;
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      v197(v142, v143);
      sub_100007BAC(&v221);
      v147 = sub_1000136BC(v144, v146, v218);

      *(v138 + 14) = v147;
      _os_log_impl(&_mh_execute_header, v136, v137, "Manual time is enabled. Adding 24h to current time for end date for beacon %{private,mask.hash}s.", v138, 0x16u);
      sub_100007BAC(v139);
    }

    else
    {

      sub_100007BAC(&v221);
    }

    v160 = v204;
    v161 = v206;
    goto LABEL_37;
  }

  v122 = v56[3];
  v123 = v56[4];
  sub_1000035D0(v56, v122);
  if ((*(v123 + 112))(v122, v123))
  {
    sub_10001F280(v56, &v221);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v218[0] = v127;
      *v126 = 141558275;
      *(v126 + 4) = 1752392040;
      *(v126 + 12) = 2081;
      v129 = v222;
      v128 = v223;
      sub_1000035D0(&v221, v222);
      v130 = v205;
      (*(*(v128[1] + 1) + 32))(v129);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v131 = v212;
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v133;
      v197(v130, v131);
      sub_100007BAC(&v221);
      v135 = sub_1000136BC(v132, v134, v218);

      *(v126 + 14) = v135;
      _os_log_impl(&_mh_execute_header, v124, v125, "Manual time is disabled. Adding 4h to current time for end date for beacon %{private,mask.hash}s.", v126, 0x16u);
      sub_100007BAC(v127);
    }

    else
    {

      sub_100007BAC(&v221);
    }

    v160 = v204;
    v161 = v206;
LABEL_37:
    v162 = v203;
    Date.addingTimeInterval(_:)();
    goto LABEL_40;
  }

  sub_10001F280(v56, &v221);
  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v218[0] = v151;
    *v150 = 141558275;
    *(v150 + 4) = 1752392040;
    *(v150 + 12) = 2081;
    v153 = v222;
    v152 = v223;
    sub_1000035D0(&v221, v222);
    v154 = v205;
    (*(*(v152[1] + 1) + 32))(v153);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v155 = v212;
    v156 = dispatch thunk of CustomStringConvertible.description.getter();
    v158 = v157;
    v197(v154, v155);
    sub_100007BAC(&v221);
    v159 = sub_1000136BC(v156, v158, v218);

    *(v150 + 14) = v159;
    _os_log_impl(&_mh_execute_header, v148, v149, "Manual time is disabled. Using current time as end date for beacon %{private,mask.hash}s.", v150, 0x16u);
    sub_100007BAC(v151);
  }

  else
  {

    sub_100007BAC(&v221);
  }

  v160 = v204;
  v161 = v206;
  v162 = v203;
  (*(v206 + 16))(v203, v73, v215);
LABEL_40:
  v163 = *(v161 + 16);
  v164 = v213;
  v165 = v215;
  v163(v198, v213, v215);
  sub_100009774(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v166 = v164;
  }

  else
  {
    v166 = v162;
  }

  v163(v199, v166, v165);
  v167 = v200;
  DateInterval.init(start:end:)();
  sub_10001F280(v207, &v221);
  v168 = v201;
  v169 = v202;
  (*(v201 + 16))(v160, v167, v202);
  v170 = Logger.logObject.getter();
  v171 = v162;
  v172 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v170, v172))
  {
    v173 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    v218[0] = v216;
    *v173 = 141558787;
    *(v173 + 4) = 1752392040;
    *(v173 + 12) = 2081;
    v174 = v169;
    v176 = v222;
    v175 = v223;
    sub_1000035D0(&v221, v222);
    v177 = v205;
    (*(*(v175[1] + 1) + 32))(v176);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v178 = v212;
    v179 = dispatch thunk of CustomStringConvertible.description.getter();
    v181 = v180;
    v197(v177, v178);
    sub_100007BAC(&v221);
    v182 = sub_1000136BC(v179, v181, v218);

    *(v173 + 14) = v182;
    *(v173 + 22) = 1024;
    *(v173 + 24) = v196;
    *(v173 + 28) = 2082;
    sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v183 = v204;
    v184 = dispatch thunk of CustomStringConvertible.description.getter();
    v186 = v185;
    (*(v168 + 8))(v183, v174);
    v187 = sub_1000136BC(v184, v186, v218);

    *(v173 + 30) = v187;
    _os_log_impl(&_mh_execute_header, v170, v172, "Fetch interval computed for beacon %{private,mask.hash}s, automaticTime: %{BOOL}d, dateInterval: %{public}s.", v173, 0x26u);
    swift_arrayDestroy();

    v188 = *(v161 + 8);
    v189 = v215;
    v188(v203, v215);
    v188(v213, v189);
    sub_10000B3A8(v210, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v214, &unk_101696900, &unk_10138B1E0);
    return (v188)(v209, v189);
  }

  else
  {

    (*(v168 + 8))(v160, v169);
    v191 = *(v161 + 8);
    v191(v171, v165);
    v191(v213, v165);
    sub_10000B3A8(v210, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v214, &unk_101696900, &unk_10138B1E0);
    v191(v209, v165);
    return sub_100007BAC(&v221);
  }
}

uint64_t sub_1005E76F4(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1000BC4D4(&qword_1016A58E8, &qword_1013B3348);
  __chkstk_darwin(v6 - 8);
  v8 = (&v26 - v7);
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v10 = *(RequestBeacon - 8);
  v11 = __chkstk_darwin(RequestBeacon);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  sub_1000D2A70(a1, v8, &qword_1016A58E8, &qword_1013B3348);
  if ((*(v10 + 48))(v8, 1, RequestBeacon) == 1)
  {
    return sub_10000B3A8(v8, &qword_1016A58E8, &qword_1013B3348);
  }

  sub_10062CC64(v8, v15, type metadata accessor for FetchRequestBeacon);
  v17 = *(*&v15[*(RequestBeacon + 28)] + 16);
  v18 = __OFADD__(*a2, v17);
  v19 = *a2 + v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *a2 = v19;
    v20 = *a3;
    if (*(*a3 + 16) && (v21 = sub_1000210EC(v15), (v22 & 1) != 0))
    {
      v8 = *(*(v20 + 56) + 8 * v21);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    sub_10062CD24(v15, v13, type metadata accessor for FetchRequestBeacon);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  v8 = sub_100A5D0C8(0, v8[2] + 1, 1, v8);
LABEL_9:
  v24 = v8[2];
  v23 = v8[3];
  if (v24 >= v23 >> 1)
  {
    v8 = sub_100A5D0C8((v23 > 1), v24 + 1, 1, v8);
  }

  v8[2] = v24 + 1;
  sub_10062CC64(v13, v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, type metadata accessor for FetchRequestBeacon);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *a3;
  sub_100FFEE38(v8, v15, isUniquelyReferenced_nonNull_native);
  *a3 = v27;
  return sub_10062CBB8(v15, type metadata accessor for FetchRequestBeacon);
}

uint64_t sub_1005E79F8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_100EAA7E8();
  if (v6)
  {
    RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
    v8 = *(*(RequestBeacon - 8) + 56);

    return v8(a2, 1, 1, RequestBeacon);
  }

  else
  {
    __chkstk_darwin(v5);
    v13[2] = v2;
    v13[3] = a1;
    v12 = sub_1005C781C(sub_10062AFBC, v13, v10, v11);
    v14 = 0;
    v15 = 1;
    sub_1005E20B0(v12, a1, 1, v12[2], &v14, a2);
  }
}

uint64_t sub_1005E7BCC@<X0>(uint64_t *a1@<X0>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v56 = a4;
  v57 = type metadata accessor for BeaconKeyManager.IndexInformation(0) - 8;
  __chkstk_darwin(v57);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Date();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  v14 = __chkstk_darwin(v12);
  v51 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v18 = *a1;
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v58 = v4;
  v19 = v63;
  v21 = a3[3];
  v20 = a3[4];
  sub_1000035D0(a3, v21);
  (*(*(*(v20 + 8) + 8) + 32))(v21);
  v23 = a3[3];
  v22 = a3[4];
  v24 = a3;
  v25 = v60;
  sub_1000035D0(v24, v23);
  v26 = *(v22 + 192);
  v53 = v11;
  v26(v23, v22);
  v62[3] = &type metadata for SecondaryIndex;
  v62[4] = sub_10022A4D4();
  v52 = v18;
  v62[0] = v18;
  v27 = *(v61 + 16);
  v59 = v17;
  v27(v8, v17, v25);
  sub_10001F280(v62, v8 + *(v57 + 28));
  sub_1012DE5A0(v8, 0, &v63);
  sub_10062CBB8(v8, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100007BAC(v62);
  v28 = v65;
  if (v65 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177BA08);
    v30 = v51;
    v27(v51, v59, v25);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v33 = 136447491;
      v67 = *v19;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v34 = String.init<A>(describing:)();
      LODWORD(v57) = v32;
      v36 = sub_1000136BC(v34, v35, v62);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_1000136BC(0xD00000000000004BLL, 0x800000010135B660, v62);
      *(v33 + 22) = 2160;
      *(v33 + 24) = 1752392040;
      *(v33 + 32) = 2081;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      v40 = *(v61 + 8);
      v40(v30, v60);
      v41 = sub_1000136BC(v37, v39, v62);

      *(v33 + 34) = v41;
      *(v33 + 42) = 2082;
      *(v33 + 44) = sub_1000136BC(0x61646E6F6365732ELL, 0xEA00000000007972, v62);
      *(v33 + 52) = 2048;
      *(v33 + 54) = v52;
      _os_log_impl(&_mh_execute_header, v31, v57, "%{public}s: %{public}s. Unable to obtain keys for beacon %{private,mask.hash}s, sequence %{public}s, index %llu", v33, 0x3Eu);
      swift_arrayDestroy();
      v25 = v60;
    }

    else
    {

      v40 = *(v61 + 8);
      v40(v30, v25);
    }

    (*(v54 + 8))(v53, v55);
    v40(v59, v25);
    v49 = type metadata accessor for TimeBasedKey(0);
    return (*(*(v49 - 8) + 56))(v56, 1, 1, v49);
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v42 = sub_101073C10(v62[0]);

    if ((v42 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v44 = type metadata accessor for TimeBasedKey(0);
      v45 = v56;
      v47 = v52;
      v46 = v53;
      sub_1008849E8(v53, v52, v42, v56 + *(v44 + 20));

      *v45 = v47;
      v48 = v45 + *(v44 + 24);
      *v48 = v63;
      *(v48 + 2) = v64;
      *(v48 + 3) = v28;
      *(v48 + 2) = v66;
      (*(v54 + 8))(v46, v55);
      (*(v61 + 8))(v59, v25);
      return (*(*(v44 - 8) + 56))(v45, 0, 1, v44);
    }
  }

  return result;
}

uint64_t sub_1005E8380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v53 = a6;
  v54 = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = a5[6];
  v18 = a5[7];
  sub_1000035D0(a5 + 3, v17);
  result = sub_100890328(v17, v18);
  v20 = a4 * result;
  if ((a4 * result) >> 64 == (a4 * result) >> 63)
  {
    v49 = a2;
    v50 = a1;
    v22 = a1 >= a4 || v20 <= a2;
    type metadata accessor for LocationFetcher(0);
    v51 = v11;
    v23 = *(v11 + 16);
    v52 = v22;
    if (v22)
    {
      v23(v16, v53, v10);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v24, v25))
      {

        (*(v51 + 8))(v16, v10);
        return v52;
      }

      v26 = v10;
      v27 = v20 <= v49;
      v28 = v50 >= a4;
      v29 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v29 = 67110147;
      *(v29 + 4) = v28;
      *(v29 + 8) = 1024;
      *(v29 + 10) = v27;
      *(v29 + 14) = 2160;
      *(v29 + 16) = 1752392040;
      *(v29 + 24) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v51 + 8))(v16, v26);
      v33 = sub_1000136BC(v30, v32, &v55);

      *(v29 + 26) = v33;
      *(v29 + 34) = 2082;
      v34 = Array.description.getter();
      v36 = sub_1000136BC(v34, v35, &v55);

      *(v29 + 36) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "Found enough primary results: %{BOOL}d, or enough secondary results: %{BOOL}d to terminate beacon: %{private,mask.hash}s, parts: %{public}s.", v29, 0x2Cu);
      swift_arrayDestroy();
    }

    else
    {
      v23(v14, v53, v10);

      v24 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v24, v37))
      {

        (*(v51 + 8))(v14, v10);
        return v52;
      }

      v38 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v38 = 67110147;
      *(v38 + 8) = 1024;
      *(v38 + 10) = 0;
      *(v38 + 14) = 2160;
      *(v38 + 16) = 1752392040;
      *(v38 + 24) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v10;
      v41 = v39;
      v43 = v42;
      (*(v51 + 8))(v14, v40);
      v44 = sub_1000136BC(v41, v43, &v55);

      *(v38 + 26) = v44;
      *(v38 + 34) = 2082;
      v45 = Array.description.getter();
      v47 = sub_1000136BC(v45, v46, &v55);

      *(v38 + 36) = v47;
      _os_log_impl(&_mh_execute_header, v24, v37, "Not enough primary results: %{BOOL}d, or enough secondary results: %{BOOL}d to terminate beacon: %{private,mask.hash}s, parts: %{public}s.", v38, 0x2Cu);
      swift_arrayDestroy();
    }

    return v52;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005E88B4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v55 = a4;
  v8 = type metadata accessor for UUID();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for RawSearchResult(0);
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = swift_allocObject();
  LODWORD(v64) = a2;
  v14[16] = a2;
  v14[17] = a1;
  v14[18] = BYTE1(a1) & 1;
  v14[19] = BYTE2(a1) & 1;
  v53 = v14;
  v14[20] = HIBYTE(a1) & 1;
  v15 = a3 + 56;

  result = _HashTable.startBucket.getter();
  v17 = result;
  v18 = *(a3 + 36);
  v19 = 1 << *(a3 + 32);
  if (result == v19)
  {
    v20 = *(a3 + 36);
LABEL_37:
    v36 = sub_10061CDE4(v17, v20, 0, v19, v18, 0, a3, sub_10062C000, v53);

    type metadata accessor for LocationFetcher(0);
    v37 = v56;
    v38 = v57;
    (*(v56 + 16))(v10, v54, v57);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v37;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64 = v36;
      v65 = v43;
      *v42 = 134218755;
      *(v42 + 4) = v64;
      *(v42 + 12) = 2160;
      *(v42 + 14) = 1752392040;
      *(v42 + 22) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v41 + 8))(v10, v38);
      v47 = sub_1000136BC(v44, v46, &v65);

      *(v42 + 24) = v47;
      *(v42 + 32) = 2082;
      v48 = sub_100019E48(a1 & 0x10101FF);
      v50 = sub_1000136BC(v48, v49, &v65);

      *(v42 + 34) = v50;
      _os_log_impl(&_mh_execute_header, v39, v40, "Found %ld results for %{private,mask.hash}s, multipart: %{public}s.", v42, 0x2Au);
      swift_arrayDestroy();
      v36 = v64;
    }

    else
    {

      (*(v37 + 8))(v10, v38);
    }

    return v36;
  }

  v52 = a1;
  v61 = a1 & 0x1010100;
  if ((a1 & 0x10000) != 0)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = 0x1000000;
  }

  v58 = v21;
  v59 = a1 & 0x100;
  v60 = a3 + 64;
  while ((v17 & 0x8000000000000000) == 0 && v17 < v19)
  {
    v23 = v10;
    v24 = v17 >> 6;
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_42;
    }

    sub_10062CD24(*(a3 + 48) + *(v62 + 72) * v17, v13, type metadata accessor for RawSearchResult);
    v25 = v13[*(v63 + 36)];
    if (v25 == 12)
    {
      if ((v64 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v25 != 13) == (v64 & 1))
    {
      goto LABEL_25;
    }

    v26 = sub_10001993C(*v13 & 0xB);
    v27 = v26;
    if (!v61)
    {
      if ((v26 & 0x100) == 0)
      {
        result = sub_10062CBB8(v13, type metadata accessor for RawSearchResult);
        if ((v27 & 0x1010000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

LABEL_25:
      result = sub_10062CBB8(v13, type metadata accessor for RawSearchResult);
      goto LABEL_26;
    }

    if (v59)
    {
      v28 = v26 & 0x100;
    }

    else
    {
      v28 = v26 & v58;
    }

    result = sub_10062CBB8(v13, type metadata accessor for RawSearchResult);
    if (v28)
    {
LABEL_35:
      v22 = v17;
      v10 = v23;
LABEL_36:
      v20 = v18;
      v18 = *(a3 + 36);
      v19 = 1 << *(a3 + 32);
      v17 = v22;
      a1 = v52;
      goto LABEL_37;
    }

LABEL_26:
    v22 = 1 << *(a3 + 32);
    if (v17 >= v22)
    {
      goto LABEL_43;
    }

    v29 = *(v15 + 8 * v24);
    if ((v29 & (1 << v17)) == 0)
    {
      goto LABEL_44;
    }

    if (v18 != *(a3 + 36))
    {
      goto LABEL_45;
    }

    v30 = v29 & (-2 << (v17 & 0x3F));
    if (v30)
    {
      v22 = __clz(__rbit64(v30)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v24 << 6;
      v32 = v24 + 1;
      v33 = (v60 + 8 * v24);
      while (v32 < (v22 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_1000BB408(v17, v18, 0);
          v22 = __clz(__rbit64(v34)) + v31;
          goto LABEL_8;
        }
      }

      result = sub_1000BB408(v17, v18, 0);
    }

LABEL_8:
    v18 = *(a3 + 36);
    v19 = 1 << *(a3 + 32);
    v17 = v22;
    v10 = v23;
    if (v22 == v19)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

BOOL sub_1005E8F1C(_BYTE *a1, char a2, int a3)
{
  v6 = a1[*(type metadata accessor for RawSearchResult(0) + 36)];
  if (v6 == 12)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v6 != 13) == (a2 & 1))
  {
    return 0;
  }

  v8 = sub_10001993C(*a1 & 0xB);
  if ((a3 & 0x10000) != 0)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0x1000000;
  }

  v10 = v8 & v9;
  if ((a3 & 0x100) != 0)
  {
    v10 = v8 & 0x100;
  }

  if (v10)
  {
    v7 = (a3 & 0x1010100) != 0;
  }

  else
  {
    v7 = 0;
  }

  if (!(a3 & 0x1010100 | v8 & 0x100))
  {
    return (v8 & 0x1010000) == 0;
  }

  return v7;
}

void *sub_1005E8FE4(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = type metadata accessor for UUID();
  v68 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v66 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v54 - v10;
  v12 = __chkstk_darwin(v9);
  v62 = v54 - v13;
  __chkstk_darwin(v12);
  v64 = v54 - v14;
  v15 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v15);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v18 - 8);
  v20 = v54 - v19;
  v21 = type metadata accessor for OwnedBeaconRecord(0);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v67 = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v54 - v25;
  sub_10001F280(a1, v71);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v27 = swift_dynamicCast();
  v28 = *(v22 + 56);
  if (!v27)
  {
    v28(v20, 1, 1, v21);
    sub_10000B3A8(v20, &unk_1016A9A20, &qword_10138B280);
    return _swiftEmptyArrayStorage;
  }

  v28(v20, 0, 1, v21);
  sub_10062CC64(v20, v26, type metadata accessor for OwnedBeaconRecord);
  sub_10062CD24(&v26[*(v21 + 24)], v17, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10062CBB8(v17, type metadata accessor for StableIdentifier);
    goto LABEL_7;
  }

  v29 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

  v30 = v17[*(v29 + 96)];
  v31 = v68;
  v60 = *(v68 + 8);
  v61 = v68 + 8;
  v60(v17, v6);
  sub_1000D2A70(&v26[*(v21 + 28)], v5, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v31 + 48))(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
LABEL_7:
    sub_10062CBB8(v26, type metadata accessor for OwnedBeaconRecord);
    return _swiftEmptyArrayStorage;
  }

  v57 = v21;
  v33 = *(v31 + 32);
  v34 = v64;
  v33(v64, v5, v6);
  sub_100ACBC98(v34, &v69);
  if (!v70)
  {
    v60(v34, v6);
    sub_10000B3A8(&v69, &unk_1016AA480, &unk_1013BD050);
    goto LABEL_7;
  }

  sub_10000A748(&v69, v71);
  v56 = v31 + 32;
  v55 = v33;
  if (v30 > 3)
  {
    v35 = &off_1016098E8;
  }

  else
  {
    v35 = off_10162B820[v30];
  }

  v54[0] = v35;
  v36 = v72;
  v37 = v73;
  sub_1000035D0(v71, v72);
  v38 = (*(v37 + 16))(v36, v37);
  sub_10062CD24(v26, v67, type metadata accessor for OwnedBeaconRecord);
  v40 = v38 + 56;
  v39 = *(v38 + 56);
  *&v69 = _swiftEmptyArrayStorage;
  v41 = 1 << *(v38 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v39;
  v44 = (v41 + 63) >> 6;
  v54[1] = v31 + 16;
  v58 = v38;

  v45 = 0;
  v59 = v26;
  while (v43)
  {
LABEL_25:
    v49 = v66;
    (*(v68 + 16))(v66, *(v58 + 48) + *(v68 + 72) * (__clz(__rbit64(v43)) | (v45 << 6)), v6);
    v50 = v49;
    v38 = v6;
    v51 = v55;
    v55(v11, v50, v6);
    sub_100009774(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v47 = v11;
    }

    else
    {
      v46 = v62;
      v51(v62, v11, v6);
      sub_1005FB414(&v69, v46, v65, v54[0], v63, v59);
      v47 = v46;
    }

    v43 &= v43 - 1;
    v60(v47, v6);
    v26 = v59;
  }

  while (1)
  {
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v48 >= v44)
    {

      v52 = v69;
      sub_10062CBB8(v67, type metadata accessor for OwnedBeaconRecord);

      v53 = sub_10039CB64(v52);

      v60(v64, v6);
      sub_100007BAC(v71);
      sub_10062CBB8(v26, type metadata accessor for OwnedBeaconRecord);
      return v53;
    }

    v43 = *(v40 + 8 * v48);
    ++v45;
    if (v43)
    {
      v45 = v48;
      goto LABEL_25;
    }
  }

  __break(1u);
  sub_10062CBB8(v67, type metadata accessor for OwnedBeaconRecord);
  v60(v62, v38);

  __break(1u);
  return result;
}

char *sub_1005E9858(uint64_t a1, uint64_t a2, char *a3)
{
  v249 = a3;
  v244 = a1;
  v3 = type metadata accessor for FetchResponse.SearchResult(0);
  __chkstk_darwin(v3);
  v258 = &v224 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v5 - 8);
  v257 = &v224 - v6;
  v246 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v246);
  v256 = &v224 - v7;
  v271 = type metadata accessor for Date();
  v245 = *(v271 - 8);
  __chkstk_darwin(v271);
  v255 = &v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for RawSearchResult(0);
  v253 = *(v254 - 8);
  v9 = __chkstk_darwin(v254);
  v267 = &v224 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v265 = &v224 - v12;
  __chkstk_darwin(v11);
  v270 = (&v224 - v13);
  v261 = type metadata accessor for BeaconPayloadv1(0);
  v14 = __chkstk_darwin(v261);
  v260 = (&v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v264 = &v224 - v17;
  v18 = __chkstk_darwin(v16);
  v263 = &v224 - v19;
  v20 = __chkstk_darwin(v18);
  v262 = &v224 - v21;
  v22 = __chkstk_darwin(v20);
  v252 = &v224 - v23;
  v24 = __chkstk_darwin(v22);
  v248 = (&v224 - v25);
  v26 = __chkstk_darwin(v24);
  v247 = (&v224 - v27);
  v28 = __chkstk_darwin(v26);
  v251 = &v224 - v29;
  __chkstk_darwin(v28);
  v266 = &v224 - v30;
  v31 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v31 - 8);
  v33 = &v224 - v32;
  v259 = type metadata accessor for OwnedBeaconRecord(0);
  v34 = *(v259 - 8);
  v35 = __chkstk_darwin(v259);
  v37 = &v224 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35);
  v250 = &v224 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v224 - v41;
  __chkstk_darwin(v40);
  v44 = &v224 - v43;
  v45 = sub_1000BC4D4(&qword_1016A5940, &qword_1013B3448);
  __chkstk_darwin(v45 - 8);
  v47 = &v224 - v46;
  v268 = sub_1000BC4D4(&qword_1016A5948, &qword_1013B3450);
  v48 = *(v268 - 8);
  v49 = __chkstk_darwin(v268);
  v50 = __chkstk_darwin(v49);
  v52 = &v224 - v51;
  v53 = __chkstk_darwin(v50);
  v54 = __chkstk_darwin(v53);
  v56 = &v224 - v55;
  __chkstk_darwin(v54);
  v269 = (&v224 - v60);
  if (*(v59 + *(v3 + 28)) != 15)
  {
    sub_10062B0D0();
    v66 = swift_allocError();
    *v67 = 3;
    v272 = v66;
    swift_willThrow();
    return v42;
  }

  v242 = v52;
  v241 = v3;
  v237 = v37;
  v239 = v58;
  v238 = v57;
  v243 = v44;
  v61 = *v59;
  v62 = v59[1];
  v63 = v59;
  sub_100017D5C(*v59, v62);
  v64 = v272;
  sub_1004A4714(v61, v62, &v274);
  v65 = v64;
  if (v64)
  {
    v272 = v64;
    return v42;
  }

  v240 = v63;
  v68 = v274;
  v69 = v275;
  sub_10062D370(v274, v275, v249, v47);
  if ((*(v48 + 48))(v47, 1, v268) == 1)
  {
    v70 = &qword_1016A5940;
    v71 = &qword_1013B3448;
    v72 = v47;
LABEL_14:
    sub_10000B3A8(v72, v70, v71);
    sub_10062B0D0();
    v272 = swift_allocError();
    *v102 = 0;
    swift_willThrow();
    sub_100016590(v68, v69);
    return v42;
  }

  v73 = v47;
  v74 = v269;
  sub_1000D2AD8(v73, v269, &qword_1016A5948, &qword_1013B3450);
  sub_100025020(v74, &v274);
  if (!v276)
  {
    sub_10000B3A8(&v274, &qword_101696920, &unk_10138B200);
    (*(v34 + 56))(v33, 1, 1, v259);
    goto LABEL_13;
  }

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v75 = v259;
  v76 = swift_dynamicCast();
  (*(v34 + 56))(v33, v76 ^ 1u, 1, v75);
  if ((*(v34 + 48))(v33, 1, v75) == 1)
  {
LABEL_13:
    sub_10000B3A8(v33, &unk_1016A9A20, &qword_10138B280);
    v70 = &qword_1016A5948;
    v71 = &qword_1013B3450;
    v72 = v269;
    goto LABEL_14;
  }

  v224 = v68;
  v225 = v69;
  v77 = v243;
  sub_10062CC64(v33, v243, type metadata accessor for OwnedBeaconRecord);
  v78 = v269;
  if (qword_1016954F0 != -1)
  {
LABEL_56:
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_1000076D4(v79, qword_10177CE28);
  sub_10062CD24(v77, v42, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(v78, v56, &qword_1016A5948, &qword_1013B3450);
  v78 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  v81 = os_log_type_enabled(v78, v80);
  v82 = v268;
  v272 = v65;
  if (v81)
  {
    v83 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    v273 = v249;
    *v83 = 141558787;
    *(v83 + 4) = 1752392040;
    *(v83 + 12) = 2081;
    LODWORD(v236) = v80;
    v235 = type metadata accessor for UUID();
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v85;
    sub_10062CBB8(v42, type metadata accessor for OwnedBeaconRecord);
    v87 = sub_1000136BC(v84, v86, &v273);

    *(v83 + 14) = v87;
    *(v83 + 22) = 2160;
    *(v83 + 24) = 1752392040;
    *(v83 + 32) = 2081;
    v88 = v239;
    sub_1000D2A70(v56, v239, &qword_1016A5948, &qword_1013B3450);
    v89 = (v88 + *(v82 + 12));
    v90 = *v89;
    v91 = v89[1];
    sub_100016590(*(v88 + *(v82 + 16)), *(v88 + *(v82 + 16) + 8));
    v92 = PublicKey.advertisement.getter(v90, v91);
    v94 = v93;
    sub_100016590(v90, v91);
    sub_100017D5C(v92, v94);
    v95 = static MACAddress.length.getter();
    sub_10002EA98(v95, v92, v94, &v274);
    sub_100016590(v92, v94);
    v96 = v274;
    v97 = v275;
    v65 = Data.hexString.getter();
    v99 = v98;
    sub_100016590(v96, v97);
    sub_10000B3A8(v56, &qword_1016A5948, &qword_1013B3450);
    (*(*(v235 - 8) + 8))(v88);
    v77 = v243;
    v100 = sub_1000136BC(v65, v99, &v273);
    v82 = v268;

    *(v83 + 34) = v100;
    _os_log_impl(&_mh_execute_header, v78, v236, "Using decryption key for beacon %{private,mask.hash}s,\nadvertisementAddress: %{private,mask.hash}s.", v83, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v56, &qword_1016A5948, &qword_1013B3450);
    sub_10062CBB8(v42, type metadata accessor for OwnedBeaconRecord);
  }

  v104 = *(v240 + 16);
  v231 = *(v104 + 16);
  if (!v231)
  {
    v42 = _swiftEmptyArrayStorage;
LABEL_46:
    sub_100016590(v224, v225);
    v187 = *(v259 + 20);
    v188 = type metadata accessor for UUID();
    (*(*(v188 - 8) + 16))(v244, v77 + v187, v188);
    sub_10062CBB8(v77, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v269, &qword_1016A5948, &qword_1013B3450);
    return v42;
  }

  v56 = 0;
  v229 = (v245 + 16);
  v228 = (v245 + 8);
  v42 = _swiftEmptyArrayStorage;
  v105 = (v104 + 40);
  *&v101 = 141560323;
  v226 = v101;
  v230 = v104;
  while (1)
  {
    v249 = v42;
    v106 = *(v104 + 16);
    v236 = v56;
    if (v56 >= v106)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v42 = v82;
    v107 = *(v105 - 1);
    v65 = *v105;
    v56 = v42;
    v108 = v269;
    sub_100017D5C(v107, *v105);
    v109 = v272;
    v110 = sub_100496ABC();
    v272 = v109;
    if (v109)
    {
      sub_100016590(v107, v65);

      goto LABEL_49;
    }

    v78 = v110;
    v235 = v105;
    v111 = v242;
    sub_1000D2A70(v108, v242, &qword_1016A5948, &qword_1013B3450);
    v112 = (v111 + *(v42 + 12));
    v77 = *v112;
    v113 = v112[1];
    v114 = (v111 + *(v42 + 16));
    v115 = *v114;
    v116 = v114[1];
    v245 = v107;
    sub_100017D5C(v107, v65);
    sub_100016590(v115, v116);
    v117 = PublicKey.advertisement.getter(v77, v113);
    v119 = v118;
    sub_100016590(v77, v113);
    v120 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v120 != 2)
      {
        v77 = 0;
        goto LABEL_31;
      }

      v121 = v245;
      v123 = *(v245 + 16);
      v122 = *(v245 + 24);
      v77 = v122 - v123;
      if (__OFSUB__(v122, v123))
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (!v120)
      {
        v77 = BYTE6(v65);
LABEL_31:
        v121 = v245;
        goto LABEL_32;
      }

      v121 = v245;
      if (__OFSUB__(HIDWORD(v245), v245))
      {
        goto LABEL_54;
      }

      v77 = HIDWORD(v245) - v245;
    }

LABEL_32:
    sub_100A2A240(3);
    v234 = v65;
    if (v77 >= v124)
    {
      v125 = v248;
      v126 = v272;
      sub_100A2AA58(v78, v121, v65, v117, v119, v248);
    }

    else
    {
      v125 = v247;
      v126 = v272;
      sub_100A2B118(v78, v121, v65, v117, v119, v247);
    }

    v127 = v261;
    v272 = v126;
    if (v126)
    {
      break;
    }

    v128 = v251;
    sub_10062CC64(v125, v251, type metadata accessor for BeaconPayloadv1);
    v129 = v266;
    sub_10062CC64(v128, v266, type metadata accessor for BeaconPayloadv1);
    v130 = type metadata accessor for UUID();
    v131 = *(*(v130 - 8) + 8);
    v232 = v130;
    v131(v242);
    LODWORD(v233) = *(v129 + v127[10]);
    v132 = *v229;
    v133 = v255;
    (*v229)(v255, v129 + v127[5], v271);
    v134 = *(v129 + v127[7]);
    v135 = *(v129 + v127[8]);
    v136 = *(v129 + v127[9]);
    v137 = v256;
    sub_1000D2A70(v240 + *(v241 + 24), v256, &unk_101696900, &unk_10138B1E0);
    v138 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v139 = v257;
    (*(*(v138 - 8) + 56))(v257, 1, 1, v138);
    v65 = v254;
    v140 = v270;
    v132(v270 + *(v254 + 20), v133, v271);
    sub_1000D2A70(v137, v140 + *(v65 + 40), &unk_101696900, &unk_10138B1E0);
    sub_1000D2A70(v139, v140 + *(v65 + 44), &unk_1016C1120, &qword_1013C49D0);
    UUID.init()();
    sub_10000B3A8(v139, &unk_1016C1120, &qword_1013C49D0);
    sub_10000B3A8(v137, &unk_101696900, &unk_10138B1E0);
    (*v228)(v133, v271);
    LOBYTE(v140->isa) = v233;
    *(&v140->isa + *(v65 + 24)) = v134;
    *(&v140->isa + *(v65 + 28)) = v135;
    *(&v140->isa + *(v65 + 32)) = v136;
    *(&v140->isa + *(v65 + 36)) = 15;
    *(&v140->isa + *(v65 + 52)) = 256;
    type metadata accessor for LocationFetcher(0);
    v141 = v250;
    sub_10062CD24(v243, v250, type metadata accessor for OwnedBeaconRecord);
    v142 = v252;
    sub_10062CD24(v129, v252, type metadata accessor for BeaconPayloadv1);
    v143 = v258;
    sub_10062CD24(v240, v258, type metadata accessor for FetchResponse.SearchResult);
    sub_10062CD24(v140, v265, type metadata accessor for RawSearchResult);
    sub_10062CD24(v129, v262, type metadata accessor for BeaconPayloadv1);
    sub_10062CD24(v129, v263, type metadata accessor for BeaconPayloadv1);
    sub_10062CD24(v129, v264, type metadata accessor for BeaconPayloadv1);
    v144 = v260;
    sub_10062CD24(v129, v260, type metadata accessor for BeaconPayloadv1);
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.default.getter();
    v147 = v146;
    if (os_log_type_enabled(v145, v146))
    {
      v148 = swift_slowAlloc();
      v227 = v147;
      v149 = v148;
      v233 = swift_slowAlloc();
      v273 = v233;
      *v149 = v226;
      *(v149 + 4) = 1752392040;
      *(v149 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v150 = dispatch thunk of CustomStringConvertible.description.getter();
      v152 = v151;
      sub_10062CBB8(v141, type metadata accessor for OwnedBeaconRecord);
      v153 = sub_1000136BC(v150, v152, &v273);

      *(v149 + 14) = v153;
      *(v149 + 22) = 2082;
      v154 = v261;
      sub_100009774(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v143;
      v158 = v157;
      sub_10062CBB8(v142, type metadata accessor for BeaconPayloadv1);
      v159 = sub_1000136BC(v155, v158, &v273);

      *(v149 + 24) = v159;
      *(v149 + 32) = 2082;
      v160 = Optional.debugDescription.getter();
      v162 = v161;
      sub_10062CBB8(v156, type metadata accessor for FetchResponse.SearchResult);
      v163 = sub_1000136BC(v160, v162, &v273);

      *(v149 + 34) = v163;
      *(v149 + 42) = 2082;
      v164 = *(v65 + 36);
      v165 = v265;
      v166 = sub_100013454(*(v265 + v164));
      v168 = v167;
      sub_10062CBB8(v165, type metadata accessor for RawSearchResult);
      v169 = sub_1000136BC(v166, v168, &v273);

      *(v149 + 44) = v169;
      *(v149 + 52) = 2049;
      v170 = *(v262 + v154[7]);
      sub_10062CBB8(v262, type metadata accessor for BeaconPayloadv1);
      *(v149 + 54) = v170;
      *(v149 + 62) = 2049;
      v171 = *(v263 + v154[8]);
      sub_10062CBB8(v263, type metadata accessor for BeaconPayloadv1);
      *(v149 + 64) = v171;
      *(v149 + 72) = 2050;
      v172 = *(v264 + v154[9]);
      sub_10062CBB8(v264, type metadata accessor for BeaconPayloadv1);
      *(v149 + 74) = v172;
      *(v149 + 82) = 2160;
      *(v149 + 84) = 1752392040;
      *(v149 + 92) = 2081;
      v173 = v260;
      v174 = *v260;
      v175 = v260[1];
      sub_100017D5C(*v260, v175);
      v176 = static MACAddress.length.getter();
      sub_10002EA98(v176, v174, v175, &v274);
      v177 = v274;
      v178 = v275;
      v65 = Data.hexString.getter();
      v180 = v179;
      sub_100016590(v177, v178);
      sub_10062CBB8(v173, type metadata accessor for BeaconPayloadv1);
      v77 = v243;
      v181 = sub_1000136BC(v65, v180, &v273);
      v82 = v268;

      *(v149 + 94) = v181;
      _os_log_impl(&_mh_execute_header, v145, v227, "Packet decrypted for beacon %{private,mask.hash}s,\nlocationTimestamp: %{public}s,\nscanDate: %{public}s,\nsource: %{public}s,\nlatitude: %{private}f,\nlongitude: %{private}f,\nhorizontalAccuracy: %{public}f,\nadvertisementAddress: %{private,mask.hash}s.", v149, 0x66u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10062CBB8(v264, type metadata accessor for BeaconPayloadv1);
      sub_10062CBB8(v263, type metadata accessor for BeaconPayloadv1);
      sub_10062CBB8(v262, type metadata accessor for BeaconPayloadv1);
      sub_10062CBB8(v265, type metadata accessor for RawSearchResult);
      sub_10062CBB8(v143, type metadata accessor for FetchResponse.SearchResult);
      sub_10062CBB8(v142, type metadata accessor for BeaconPayloadv1);
      sub_10062CBB8(v141, type metadata accessor for OwnedBeaconRecord);
      sub_10062CBB8(v144, type metadata accessor for BeaconPayloadv1);
      v77 = v243;
      v82 = v268;
    }

    v182 = v235;
    sub_10062CD24(v270, v267, type metadata accessor for RawSearchResult);
    v42 = v249;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v230;
    v184 = v236;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_100A5D328(0, *(v42 + 2) + 1, 1, v42);
    }

    v186 = *(v42 + 2);
    v185 = *(v42 + 3);
    v78 = (v186 + 1);
    if (v186 >= v185 >> 1)
    {
      v42 = sub_100A5D328((v185 > 1), v186 + 1, 1, v42);
    }

    v56 = v184 + 1;
    sub_100016590(v245, v234);
    sub_10062CBB8(v270, type metadata accessor for RawSearchResult);
    sub_10062CBB8(v266, type metadata accessor for BeaconPayloadv1);
    *(v42 + 2) = v78;
    sub_10062CC64(v267, &v42[((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v186], type metadata accessor for RawSearchResult);
    v105 = (v182 + 24);
    if (v231 == v56)
    {
      goto LABEL_46;
    }
  }

  sub_100016590(v121, v65);

  v189 = type metadata accessor for UUID();
  (*(*(v189 - 8) + 8))(v242, v189);
  v77 = v243;
LABEL_49:
  v274 = 0;
  v275 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v274 = 0xD000000000000020;
  v275 = 0x800000010135B6F0;
  swift_getErrorValue();
  v273 = Error.code.getter();
  v190._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v190);

  v191._countAndFlagsBits = 0x6F44726F72726520;
  v191._object = 0xED00003A6E69616DLL;
  String.append(_:)(v191);
  swift_getErrorValue();
  v192._countAndFlagsBits = Error.domain.getter();
  String.append(_:)(v192);

  sub_101172840(v274, v275);

  type metadata accessor for LocationFetcher(0);
  v193 = v77;
  v194 = v237;
  sub_10062CD24(v77, v237, type metadata accessor for OwnedBeaconRecord);
  v195 = v238;
  sub_1000D2A70(v269, v238, &qword_1016A5948, &qword_1013B3450);
  swift_errorRetain();
  v196 = Logger.logObject.getter();
  v197 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v271 = swift_slowAlloc();
    v273 = v271;
    *v198 = 141559043;
    *(v198 + 4) = 1752392040;
    v270 = v196;
    *(v198 + 12) = 2081;
    LODWORD(v267) = v197;
    v42 = type metadata accessor for UUID();
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v199 = dispatch thunk of CustomStringConvertible.description.getter();
    v200 = v268;
    v202 = v201;
    sub_10062CBB8(v194, type metadata accessor for OwnedBeaconRecord);
    v203 = sub_1000136BC(v199, v202, &v273);

    *(v198 + 14) = v203;
    *(v198 + 22) = 2160;
    *(v198 + 24) = 1752392040;
    *(v198 + 32) = 2081;
    v204 = v239;
    sub_1000D2A70(v195, v239, &qword_1016A5948, &qword_1013B3450);
    v205 = (v204 + *(v200 + 48));
    v207 = *v205;
    v206 = v205[1];
    sub_100016590(*(v204 + *(v200 + 64)), *(v204 + *(v200 + 64) + 8));
    v208 = PublicKey.advertisement.getter(v207, v206);
    v210 = v209;
    sub_100016590(v207, v206);
    sub_100017D5C(v208, v210);
    v211 = static MACAddress.length.getter();
    sub_10002EA98(v211, v208, v210, &v274);
    sub_100016590(v208, v210);
    v212 = v274;
    v213 = v275;
    v214 = Data.hexString.getter();
    v216 = v215;
    sub_100016590(v212, v213);
    sub_10000B3A8(v195, &qword_1016A5948, &qword_1013B3450);
    (*(*(v42 - 1) + 8))(v204, v42);
    v217 = v269;
    v218 = sub_1000136BC(v214, v216, &v273);

    *(v198 + 34) = v218;
    *(v198 + 42) = 2082;
    v274 = v272;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v219 = String.init<A>(describing:)();
    v221 = sub_1000136BC(v219, v220, &v273);

    *(v198 + 44) = v221;
    v222 = v243;
    v223 = v270;
    _os_log_impl(&_mh_execute_header, v270, v267, "Error decrypting location for beacon: %{private,mask.hash}s,\nadvertisementAddress: %{private,mask.hash}s,\n%{public}s.", v198, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v195, &qword_1016A5948, &qword_1013B3450);
    sub_10062CBB8(v194, type metadata accessor for OwnedBeaconRecord);
    v222 = v193;
    v217 = v269;
  }

  swift_willThrow();
  sub_100016590(v224, v225);
  sub_10062CBB8(v222, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v217, &qword_1016A5948, &qword_1013B3450);
  return v42;
}