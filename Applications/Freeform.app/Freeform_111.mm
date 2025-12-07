void *sub_100DF6D54(uint64_t a1, uint64_t a2, int a3)
{
  v217 = a3;
  v256 = a1;
  v5 = sub_1005B981C(&qword_101A21DF8, &unk_1014B6770);
  __chkstk_darwin(v5 - 8);
  v229 = &v207 - v6;
  v223 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v223);
  v222 = &v207 - v7;
  v251 = type metadata accessor for UUID();
  v8 = *(v251 - 8);
  __chkstk_darwin(v251);
  v233 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v207 - v11;
  __chkstk_darwin(v13);
  v15 = &v207 - v14;
  __chkstk_darwin(v16);
  v225 = &v207 - v17;
  __chkstk_darwin(v18);
  v219 = &v207 - v19;
  __chkstk_darwin(v20);
  v230 = &v207 - v21;
  __chkstk_darwin(v22);
  v236 = &v207 - v23;
  __chkstk_darwin(v24);
  v240 = &v207 - v25;
  v228 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v253 = *(v228 - 8);
  __chkstk_darwin(v228);
  v27 = &v207 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v218 = &v207 - v29;
  __chkstk_darwin(v30);
  v214 = &v207 - v31;
  __chkstk_darwin(v32);
  v215 = &v207 - v33;
  __chkstk_darwin(v34);
  v220 = &v207 - v35;
  __chkstk_darwin(v36);
  v226 = &v207 - v37;
  __chkstk_darwin(v38);
  v232 = &v207 - v39;
  __chkstk_darwin(v40);
  v242 = &v207 - v41;
  __chkstk_darwin(v42);
  v231 = &v207 - v43;
  __chkstk_darwin(v44);
  v237 = &v207 - v45;
  v250 = sub_1005B981C(&qword_1019F6998, &qword_10146F760);
  __chkstk_darwin(v250);
  v249 = (&v207 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v47);
  v255 = (&v207 - v48);
  v49 = type metadata accessor for DispatchPredicate();
  v50 = *(v49 - 8);
  v51 = __chkstk_darwin(v49);
  v53 = (&v207 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v53 = v54;
  (*(v50 + 104))(v53, enum case for DispatchPredicate.onQueue(_:), v49, v51);
  v55 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  (*(v50 + 8))(v53, v49);
  if ((v54 & 1) == 0)
  {
    goto LABEL_108;
  }

  v216 = v15;
  v243 = v27;
  v234 = v12;
  v56 = a2 + 64;
  v57 = 1 << *(a2 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(a2 + 64);
  v60 = (v57 + 63) >> 6;
  v254 = (v8 + 48);
  v247 = (v8 + 32);
  v238 = (v8 + 16);
  v224 = (v8 + 56);
  v245 = (v8 + 8);
  v235 = v8;
  v227 = v8 + 40;

  v61 = 0;
  v62 = &qword_10146D2F0;
  v241 = _swiftEmptyDictionarySingleton;
  v239 = _swiftEmptyDictionarySingleton;
  v246 = a2;
  v63 = v251;
  v244 = v60;
  if (v59)
  {
    while (1)
    {
      v64 = v256;
LABEL_10:
      v66 = __clz(__rbit64(v59)) | (v61 << 6);
      v67 = *(a2 + 56);
      v68 = (*(a2 + 48) + 16 * v66);
      v69 = *v68;
      v70 = v68[1];
      v71 = *(v253 + 72);
      v72 = v255;
      v248 = *(v250 + 48);
      sub_10000BE14(v67 + v71 * v66, v255 + v248, &qword_1019F6990, v62);
      *v72 = v69;
      v72[1] = v70;
      v73 = *(v64 + 16);
      v252 = v70;
      v74 = v69;

      if (!v73)
      {
        goto LABEL_19;
      }

      v75 = sub_10000BE7C(v69, v252);
      if ((v76 & 1) == 0)
      {
        goto LABEL_19;
      }

      v77 = *(v256 + 56) + v75 * v71;
      v78 = v231;
      v79 = v62;
      sub_10000BE14(v77, v231, &qword_1019F6990, v62);
      v80 = v78;
      v81 = v237;
      sub_10003DFF8(v80, v237, &qword_1019F6990, v62);
      v82 = v232;
      sub_10000BE14(v81, v232, &qword_1019F6990, v62);
      v83 = *v254;
      if ((*v254)(v82, 1, v63) == 1)
      {
        sub_10000CAAC(v81, &qword_1019F6990, v62);
        v84 = v82;
LABEL_18:
        sub_10000CAAC(v84, &qword_1019F6990, v79);
        v62 = v79;
LABEL_19:
        v89 = v242;
        sub_10000BE14(v255 + v248, v242, &qword_1019F6990, v62);
        if ((*v254)(v89, 1, v63) != 1)
        {
          v91 = *v247;
          v92 = v240;
          (*v247)(v240, v89, v63);
          if (qword_1019F2878 != -1)
          {
            swift_once();
          }

          sub_1005EB3DC(v63, qword_101AD8F08);
          sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            (*v245)(v92, v63);
            a2 = v246;
          }

          else
          {
            (*v238)(v236, v92, v63);
            v93 = v252;

            v94 = v241;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v257 = v94;
            v97 = sub_10000BE7C(v74, v93);
            v98 = v94[2];
            v99 = (v96 & 1) == 0;
            v100 = v98 + v99;
            if (__OFADD__(v98, v99))
            {
              goto LABEL_109;
            }

            v101 = v96;
            if (v94[3] >= v100)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100AABED8();
              }
            }

            else
            {
              sub_100A96648(v100, isUniquelyReferenced_nonNull_native);
              v102 = sub_10000BE7C(v74, v252);
              if ((v101 & 1) != (v103 & 1))
              {
                goto LABEL_115;
              }

              v97 = v102;
            }

            v104 = v240;
            v105 = v257;
            v241 = v257;
            if (v101)
            {
              v63 = v251;
              (*(v235 + 40))(v257[7] + *(v235 + 72) * v97, v236, v251);
            }

            else
            {
              v257[(v97 >> 6) + 8] |= 1 << v97;
              v106 = (v105[6] + 16 * v97);
              v63 = v251;
              v107 = v252;
              *v106 = v74;
              v106[1] = v107;
              v91((v105[7] + *(v235 + 72) * v97), v236, v63);
              v108 = v105[2];
              v109 = __OFADD__(v108, 1);
              v110 = v108 + 1;
              if (v109)
              {
                goto LABEL_111;
              }

              v105[2] = v110;
            }

            (*v245)(v104, v63);
            a2 = v246;
            v62 = &qword_10146D2F0;
          }

          goto LABEL_37;
        }

        goto LABEL_20;
      }

      v221 = v83;
      v85 = *v247;
      v86 = v230;
      (*v247)(v230, v82, v63);
      if (qword_1019F2878 != -1)
      {
        swift_once();
      }

      v87 = sub_1005EB3DC(v63, qword_101AD8F08);
      v88 = sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*v245)(v86, v63);
        v84 = v237;
        v79 = &qword_10146D2F0;
        goto LABEL_18;
      }

      v210 = v88;
      v209 = v87;
      v213 = v85;
      v111 = v226;
      v211 = *v238;
      v211(v226, v86, v63);
      v208 = *v224;
      v208(v111, 0, 1, v63);
      v112 = *(v223 + 48);
      v113 = v222;
      sub_10000BE14(v111, v222, &qword_1019F6990, &qword_10146D2F0);
      v212 = v112;
      sub_10000BE14(v255 + v248, v113 + v112, &qword_1019F6990, &qword_10146D2F0);
      v114 = v221;
      if (v221(v113, 1, v63) == 1)
      {
        sub_10000CAAC(v111, &qword_1019F6990, &qword_10146D2F0);
        v115 = v114(v113 + v212, 1, v63);
        v116 = v230;
        v117 = v213;
        if (v115 == 1)
        {
          sub_10000CAAC(v113, &qword_1019F6990, &qword_10146D2F0);
          v118 = v237;
LABEL_62:
          if (v217)
          {
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v144 = static OS_os_log.boardStore;
            v145 = static os_log_type_t.default.getter();
            sub_100005404(v144, &_mh_execute_header, v145, "Should deleteAllExistingReferencesFirst, so we need to add the newAssetUUID back into insert if it equals oldAssetUUID", 118, 2, _swiftEmptyArrayStorage);
            v146 = v215;
            v62 = &qword_10146D2F0;
            sub_10000BE14(v255 + v248, v215, &qword_1019F6990, &qword_10146D2F0);
            if (v221(v146, 1, v63) == 1)
            {
              v147 = v252;

              sub_10000CAAC(v146, &qword_1019F6990, &qword_10146D2F0);
              v148 = v147;
              v149 = v241;
              v150 = sub_10000BE7C(v74, v148);
              v151 = v214;
              if (v152)
              {
                v153 = v150;
                v154 = swift_isUniquelyReferenced_nonNull_native();
                v257 = v149;
                if (!v154)
                {
                  sub_100AABED8();
                  v149 = v257;
                }

                v155 = v251;
                v156.n128_f64[0] = (v213)(v151, *(v149 + 56) + *(v235 + 72) * v153, v251);
                v241 = v149;
                sub_100BD1308(v153, v149, v156);
                v157 = 0;
              }

              else
              {
                v157 = 1;
                v155 = v251;
              }

              v208(v151, v157, 1, v155);

              sub_10000CAAC(v151, &qword_1019F6990, &qword_10146D2F0);
              v63 = v155;
            }

            else
            {
              v213(v219, v146, v63);
              v158 = v252;

              v159 = v241;
              v160 = swift_isUniquelyReferenced_nonNull_native();
              v257 = v159;
              v161 = v230;
              sub_100AA0B88(v219, v74, v158, v160);
              v116 = v161;

              v241 = v257;
            }

            v60 = v244;
            (*v245)(v116, v63);
            sub_10000CAAC(v237, &qword_1019F6990, &qword_10146D2F0);
            a2 = v246;
            goto LABEL_38;
          }

          (*v245)(v116, v63);
          v90 = v118;
          v62 = &qword_10146D2F0;
          goto LABEL_21;
        }
      }

      else
      {
        v119 = v220;
        sub_10000BE14(v113, v220, &qword_1019F6990, &qword_10146D2F0);
        if (v114(v113 + v212, 1, v63) != 1)
        {
          v141 = v219;
          v213(v219, v113 + v212, v63);
          v142 = dispatch thunk of static Equatable.== infix(_:_:)();
          v143 = *v245;
          (*v245)(v141, v251);
          sub_10000CAAC(v226, &qword_1019F6990, &qword_10146D2F0);
          v143(v220, v251);
          v63 = v251;
          v117 = v213;
          sub_10000CAAC(v113, &qword_1019F6990, &qword_10146D2F0);
          v116 = v230;
          v118 = v237;
          if (v142)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        sub_10000CAAC(v226, &qword_1019F6990, &qword_10146D2F0);
        (*v245)(v119, v63);
        v116 = v230;
        v117 = v213;
      }

      sub_10000CAAC(v113, &unk_101A0AFE0, &unk_10146F3C0);
LABEL_46:
      v211(v225, v116, v63);
      v120 = v252;

      v121 = v239;
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v257 = v121;
      v123 = sub_10000BE7C(v74, v120);
      v125 = v121[2];
      v126 = (v124 & 1) == 0;
      v109 = __OFADD__(v125, v126);
      v127 = v125 + v126;
      if (v109)
      {
        goto LABEL_113;
      }

      v128 = v124;
      if (v121[3] >= v127)
      {
        if ((v122 & 1) == 0)
        {
          v162 = v123;
          sub_100AABED8();
          v123 = v162;
        }
      }

      else
      {
        sub_100A96648(v127, v122);
        v123 = sub_10000BE7C(v74, v252);
        if ((v128 & 1) != (v129 & 1))
        {
          goto LABEL_115;
        }
      }

      v63 = v251;
      v130 = v257;
      v239 = v257;
      if (v128)
      {
        (*(v235 + 40))(v257[7] + *(v235 + 72) * v123, v225, v251);
      }

      else
      {
        v257[(v123 >> 6) + 8] |= 1 << v123;
        v131 = (v130[6] + 16 * v123);
        v132 = v252;
        *v131 = v74;
        v131[1] = v132;
        v117((v130[7] + *(v235 + 72) * v123), v225, v63);
        v133 = v130[2];
        v109 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v109)
        {
          goto LABEL_114;
        }

        v130[2] = v134;
      }

      v89 = v218;
      v62 = &qword_10146D2F0;
      sub_10000BE14(v255 + v248, v218, &qword_1019F6990, &qword_10146D2F0);
      if (v221(v89, 1, v63) != 1)
      {
        v135 = v117;
        v136 = v216;
        v135(v216, v89, v63);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          v211(v219, v136, v63);
          v137 = v252;

          v138 = v241;
          v139 = swift_isUniquelyReferenced_nonNull_native();
          v257 = v138;
          sub_100AA0B88(v219, v74, v137, v139);

          v241 = v257;
        }

        v140 = *v245;
        (*v245)(v136, v63);
        v140(v230, v63);
        v90 = v237;
        goto LABEL_21;
      }

      (*v245)(v230, v63);
      sub_10000CAAC(v237, &qword_1019F6990, &qword_10146D2F0);
LABEL_20:
      v90 = v89;
LABEL_21:
      sub_10000CAAC(v90, &qword_1019F6990, v62);
      a2 = v246;
LABEL_37:
      v60 = v244;
LABEL_38:
      v59 &= v59 - 1;
      sub_10000CAAC(v255, &qword_1019F6998, &qword_10146F760);
      if (!v59)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v65 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v65 >= v60)
    {
      break;
    }

    v59 = *(v56 + 8 * v65);
    ++v61;
    if (v59)
    {
      v64 = v256;
      v61 = v65;
      goto LABEL_10;
    }
  }

  v163 = v256 + 64;
  v164 = 1 << *(v256 + 32);
  v165 = -1;
  if (v164 < 64)
  {
    v165 = ~(-1 << v164);
  }

  v166 = v165 & *(v256 + 64);
  v167 = (v164 + 63) >> 6;
  v244 = (v253 + 56);

  v168 = 0;
  v169 = v234;
  v252 = v167;
  while (v166)
  {
LABEL_85:
    v171 = __clz(__rbit64(v166)) | (v168 << 6);
    v172 = *(v256 + 56);
    v173 = (*(v256 + 48) + 16 * v171);
    v174 = *v173;
    v175 = v173[1];
    v248 = *(v253 + 72);
    v176 = v249;
    v177 = *(v250 + 48);
    sub_10000BE14(v172 + v248 * v171, v249 + v177, &qword_1019F6990, &qword_10146D2F0);
    v255 = v174;
    *v176 = v174;
    v176[1] = v175;
    v178 = v176 + v177;
    v179 = v243;
    sub_10000BE14(v178, v243, &qword_1019F6990, &qword_10146D2F0);
    v180 = v251;
    if ((*v254)(v179, 1, v251) == 1)
    {

      v181 = v179;
      v182 = &qword_1019F6990;
      v183 = &qword_10146D2F0;
LABEL_87:
      sub_10000CAAC(v181, v182, v183);
      goto LABEL_79;
    }

    v184 = *v247;
    (*v247)(v169, v179, v180);
    v185 = qword_1019F2878;

    if (v185 != -1)
    {
      swift_once();
    }

    sub_1005EB3DC(v180, qword_101AD8F08);
    sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      (*v245)(v169, v180);
      goto LABEL_79;
    }

    v186 = v246;
    if (*(v246 + 16))
    {
      v187 = sub_10000BE7C(v255, v175);
      if (v188)
      {
        v189 = v229;
        sub_10000BE14(*(v186 + 56) + v187 * v248, v229, &qword_1019F6990, &qword_10146D2F0);
        (*v244)(v189, 0, 1, v228);
        (*v245)(v169, v251);
        v181 = v189;
        v182 = &qword_101A21DF8;
        v183 = &unk_1014B6770;
        goto LABEL_87;
      }
    }

    v190 = v229;
    (*v244)(v229, 1, 1, v228);
    sub_10000CAAC(v190, &qword_101A21DF8, &unk_1014B6770);
    (*v238)(v233, v169, v251);

    v191 = v239;
    v192 = swift_isUniquelyReferenced_nonNull_native();
    v257 = v191;
    v194 = sub_10000BE7C(v255, v175);
    v195 = v191[2];
    v196 = (v193 & 1) == 0;
    v197 = v195 + v196;
    if (__OFADD__(v195, v196))
    {
      goto LABEL_110;
    }

    v198 = v193;
    if (v191[3] >= v197)
    {
      if ((v192 & 1) == 0)
      {
        sub_100AABED8();
      }
    }

    else
    {
      sub_100A96648(v197, v192);
      v199 = sub_10000BE7C(v255, v175);
      if ((v198 & 1) != (v200 & 1))
      {
        goto LABEL_115;
      }

      v194 = v199;
    }

    v201 = v257;
    v239 = v257;
    if (v198)
    {
      v202 = v251;
      (*(v235 + 40))(v257[7] + *(v235 + 72) * v194, v233, v251);
    }

    else
    {
      v257[(v194 >> 6) + 8] |= 1 << v194;
      v203 = (v201[6] + 16 * v194);
      *v203 = v255;
      v203[1] = v175;
      v184((v201[7] + *(v235 + 72) * v194), v233, v251);
      v204 = v201[2];
      v109 = __OFADD__(v204, 1);
      v205 = v204 + 1;
      if (v109)
      {
        goto LABEL_112;
      }

      v201[2] = v205;
      v202 = v251;
    }

    v169 = v234;
    (*v245)(v234, v202);
LABEL_79:
    v167 = v252;
    v166 &= v166 - 1;
    sub_10000CAAC(v249, &qword_1019F6998, &qword_10146F760);
  }

  while (1)
  {
    v170 = v168 + 1;
    if (__OFADD__(v168, 1))
    {
      break;
    }

    if (v170 >= v167)
    {

      return v241;
    }

    v166 = *(v163 + 8 * v170);
    ++v168;
    if (v166)
    {
      v168 = v170;
      goto LABEL_85;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_100DF8718(void *a1)
{
  v2 = v1;
  v77 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v14 = v15;
  v16 = *(v11 + 104);
  v74 = enum case for DispatchPredicate.onQueue(_:);
  v75 = v11 + 104;
  v76 = v16;
  v16(v14, v12);
  v17 = v15;
  v18 = _dispatchPreconditionTest(_:)();
  v20 = *(v11 + 8);
  v19 = v11 + 8;
  v71 = v10;
  v73 = v20;
  v20(v14, v10);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v72 = v14;
  v21 = v80;
  v22 = sub_100E34410(v77);
  if (v21)
  {
    return result;
  }

  v18 = v2;
  v70 = 0;
  v80 = v22;
  if (v22 >> 62)
  {
LABEL_18:
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_19:

    v26 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_5:
  v81 = _swiftEmptyArrayStorage;
  sub_100776524(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v68 = v19;
  v69 = v18;
  v25 = v80;
  v26 = v81;
  if ((v80 & 0xC000000000000001) != 0)
  {
    v27 = 0;
    v79 = (v4 + 32);
    do
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      (*(v4 + 16))(v9, v28 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v3);
      swift_unknownObjectRelease();
      v81 = v26;
      v30 = v26[2];
      v29 = v26[3];
      if (v30 >= v29 >> 1)
      {
        sub_100776524((v29 > 1), v30 + 1, 1);
        v26 = v81;
      }

      ++v27;
      v26[2] = v30 + 1;
      (*(v4 + 32))(v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, v9, v3);
    }

    while (v24 != v27);
  }

  else
  {
    v31 = *(v4 + 16);
    v78 = v4 + 32;
    v79 = v31;
    v32 = 32;
    do
    {
      v79(v6, *(v25 + v32) + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v3);
      v81 = v26;
      v34 = v26[2];
      v33 = v26[3];
      if (v34 >= v33 >> 1)
      {
        sub_100776524((v33 > 1), v34 + 1, 1);
        v26 = v81;
      }

      v26[2] = v34 + 1;
      (*(v4 + 32))(v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v34, v6, v3);
      v32 += 8;
      --v24;
      v25 = v80;
    }

    while (v24);
  }

  v18 = v69;
LABEL_20:
  v35 = sub_100E93A84(v26);

  v36 = v76;
  if (!v35[2] || (type metadata accessor for SQLiteStatement(), swift_initStackObject(), v37 = , v38 = v70, v39 = sub_10001CC04(v37, 0xD00000000000003CLL, 0x80000001015A4450), , v38))
  {

    return result;
  }

  v69 = v18;
  v40 = sub_1005C6934();
  v80 = v41;
  v42 = v40;
  v43 = *(*(v39 + 16) + 32);
  v44 = v36;
  v46 = v71;
  v45 = v72;
  *v72 = v43;
  v44(v45, v74, v46);
  v47 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v48 = v73;
  v73(v45, v46);
  if ((v43 & 1) == 0)
  {
    goto LABEL_35;
  }

  v49 = v42;
  v50 = v42;
  v51 = v80;
  sub_100DCCAB4(v50, v80, v39, 1);
  sub_10002640C(v49, v51);
  v52 = *(*(v39 + 16) + 32);
  *v45 = v52;
  v76(v45, v74, v46);
  v53 = v52;
  LOBYTE(v52) = _dispatchPreconditionTest(_:)();
  v48(v45, v46);
  if ((v52 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v54 = *(v39 + 16);

  v55 = sub_10001CEC4(v54, v39);

  if (v55 == 101)
  {
    sub_100E339A0(v35);
    v55 = v73;
    v45 = v76;
    goto LABEL_30;
  }

  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v56._object = 0x80000001015A4490;
  v56._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v56);
  type metadata accessor for CRLAssetReferrerIdentifier(0);
  _print_unlocked<A, B>(_:_:)();
  v57 = v81;
  v58 = v82;
  sub_10089C7D0();
  swift_allocError();
  *v59 = v55;
  *(v59 + 8) = v57;
  *(v59 + 16) = v58;
  swift_willThrow();
  v60 = *(*(v39 + 16) + 32);
  v61 = v72;
  *v72 = v60;
  v76(v61, v74, v46);
  v62 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  v73(v61, v46);
  if ((v60 & 1) == 0)
  {
    __break(1u);
LABEL_30:

    v63 = *(*(v39 + 16) + 32);
    v65 = v71;
    v64 = v72;
    *v72 = v63;
    (v45)(v64, v74, v65);
    v66 = v63;
    LOBYTE(v63) = _dispatchPreconditionTest(_:)();
    v55(v64, v65);
    if (v63)
    {
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
  }

LABEL_31:
  swift_beginAccess();
  v67 = *(v39 + 24);
  if (v67)
  {
    sqlite3_finalize(v67);
    *(v39 + 24) = 0;
  }

  return result;
}

void sub_100DF8FA8(void (**a1)(char *, void *), void *a2)
{
  v95 = a1;
  v94 = type metadata accessor for String.Encoding();
  v91 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = v2;
  v11 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  v13 = v7 + 104;
  v12 = *(v7 + 104);
  v96 = enum case for DispatchPredicate.onQueue(_:);
  v97 = v12;
  v12(v10, v8);
  v14 = v11;
  v15 = _dispatchPreconditionTest(_:)();
  v18 = *(v7 + 8);
  v17 = v7 + 8;
  v16 = v18;
  v18(v10, v6);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    __break(1u);
    goto LABEL_35;
  }

  v19 = a2[2];
  if (v19)
  {
    v20 = sub_100E328FC(v95, a2);
    if (!v3)
    {
      if (v20[2])
      {
        v85 = v20;
        v88 = v13;
        v89 = v10;
        v90 = v6;
        v92 = v19;
        v101 = 0;
        v102 = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        v101 = 0xD000000000000058;
        v102 = 0x80000001015A47D0;
        v99 = sub_1000341B8(0x3F, 0xE100000000000000, v92);
        sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
        sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
        v21 = BidirectionalCollection<>.joined(separator:)();
        v23 = v22;

        v24._countAndFlagsBits = v21;
        v24._object = v23;
        String.append(_:)(v24);

        v25._countAndFlagsBits = 10537;
        v25._object = 0xE200000000000000;
        String.append(_:)(v25);
        v26 = v101;
        v27 = v102;
        type metadata accessor for SQLiteStatement();
        swift_initStackObject();

        v29 = sub_10001CC04(v28, v26, v27);

        v30 = sub_1005C6934();
        v84 = v31;
        v83 = v30;
        v32 = *(*(v29 + 16) + 32);
        v33 = v29;
        v34 = v89;
        v35 = v90;
        *v89 = v32;
        v97(v34, v96, v35);
        v36 = v32;
        v37 = _dispatchPreconditionTest(_:)();
        v87 = v16;
        v16(v34, v35);
        if (v37)
        {
          v38 = v33;

          v39 = v83;
          v40 = v84;
          sub_100DCCAB4(v83, v84, v33, 1);
          v82 = 0;
          sub_10002640C(v39, v40);
          swift_beginAccess();
          ++v91;
          v41 = a2 + 5;
          v42 = 2;
          v43 = 2147483646;
          v86 = v38;
          do
          {
            v44 = *(v41 - 1);
            v45 = *v41;
            v46 = *(*(v38 + 16) + 32);
            v47 = v89;
            *v89 = v46;
            v48 = v17;
            v49 = v90;
            v97(v47, v96, v90);

            v50 = v46;
            LOBYTE(v46) = _dispatchPreconditionTest(_:)();
            v51 = v49;
            v17 = v48;
            v87(v47, v51);
            if ((v46 & 1) == 0)
            {
              goto LABEL_33;
            }

            v99 = v44;
            v100 = v45;
            v52 = v93;
            static String.Encoding.utf8.getter();
            sub_100017CD8();
            v53 = StringProtocol.cString(using:)();
            (*v91)(v52, v94);

            if (!v43)
            {
              goto LABEL_34;
            }

            v38 = v86;
            v54 = *(v86 + 24);
            if (qword_1019F17C8 != -1)
            {
              v56 = *(v86 + 24);
              swift_once();
              v54 = v56;
            }

            if (v53)
            {
              v55 = (v53 + 32);
            }

            else
            {
              v55 = 0;
            }

            sqlite3_bind_text(v54, v42, v55, -1, qword_101AD69D0);

            ++v42;
            --v43;
            v41 += 2;
            --v92;
          }

          while (v92);
          v57 = *(*(v38 + 16) + 32);
          v58 = v38;
          v59 = v89;
          v60 = v90;
          *v89 = v57;
          v97(v59, v96, v60);
          v61 = v57;
          v62 = _dispatchPreconditionTest(_:)();
          v87(v59, v60);
          if (v62)
          {
            v63 = *(v58 + 16);

            v64 = v63;
            v65 = v82;
            LODWORD(v66) = sub_10001CEC4(v64, v58);

            if (v66 != 101)
            {
              goto LABEL_25;
            }

            sub_100E339A0(v85);
            if (v65)
            {

              v66 = v86;
              v67 = *(*(v86 + 16) + 32);
              *v59 = v67;
              v97(v59, v96, v60);
              v68 = v67;
              v69 = _dispatchPreconditionTest(_:)();
              v87(v59, v60);
              if ((v69 & 1) == 0)
              {
                __break(1u);
LABEL_25:

                v99 = 0;
                v100 = 0xE000000000000000;
                _StringGuts.grow(_:)(43);
                v70._object = 0x80000001015A4830;
                v70._countAndFlagsBits = 0xD000000000000029;
                String.append(_:)(v70);
                type metadata accessor for CRLAssetReferrerIdentifier(0);
                _print_unlocked<A, B>(_:_:)();
                v71 = v99;
                v72 = v100;
                sub_10089C7D0();
                swift_allocError();
                *v73 = v66;
                *(v73 + 8) = v71;
                *(v73 + 16) = v72;
                swift_willThrow();
                v74 = *(*(v58 + 16) + 32);
                *v59 = v74;
                v97(v59, v96, v60);
                v75 = v74;
                LOBYTE(v72) = _dispatchPreconditionTest(_:)();
                v87(v59, v60);
                if (v72)
                {
                  swift_beginAccess();
                  v76 = *(v58 + 24);
                  if (v76)
                  {
                    sqlite3_finalize(v76);
                    *(v58 + 24) = 0;
                  }

LABEL_9:

                  return;
                }

                goto LABEL_37;
              }
            }

            else
            {

              v66 = v86;
              v77 = *(*(v86 + 16) + 32);
              *v59 = v77;
              v97(v59, v96, v60);
              v78 = v77;
              v79 = _dispatchPreconditionTest(_:)();
              v87(v59, v60);
              if ((v79 & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            swift_beginAccess();
            v80 = *(v66 + 24);
            if (v80)
            {
              sqlite3_finalize(v80);
              *(v66 + 24) = 0;
            }

            goto LABEL_9;
          }

LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }
  }
}

void sub_100DF9920(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v5 = v4;
  v207 = a3;
  v219 = a2;
  v220 = type metadata accessor for UUID();
  v206 = *(v220 - 8);
  __chkstk_darwin(v220);
  v202 = &v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v201 = &v197 - v9;
  v215 = sub_1005B981C(&qword_101A22DF0, &qword_1014B6750);
  __chkstk_darwin(v215);
  v214 = &v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v222 = (&v197 - v12);
  v13 = sub_1005B981C(&qword_101A21DE8, &qword_1014B6758);
  __chkstk_darwin(v13 - 8);
  v217 = &v197 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v216 = (&v197 - v16);
  v17 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v17);
  v208 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v197 - v20;
  v22 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v22 - 8);
  v210 = &v197 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v221 = &v197 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = (&v197 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v30 = v31;
  v32 = *(v27 + 104);
  v224 = enum case for DispatchPredicate.onQueue(_:);
  v225 = v32;
  v226 = v27 + 104;
  v32(v30, v28);
  v200 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v34 = *(v27 + 8);
  v33 = v27 + 8;
  v228 = v30;
  v229 = v26;
  v227 = v34;
  v34(v30, v26);
  if ((v31 & 1) == 0)
  {
    goto LABEL_79;
  }

  sub_10000C83C(a1, v21, type metadata accessor for CRLAssetReferrerIdentifier);
  v211 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v223 = a1;
  if (EnumCaseMultiPayload == 1)
  {
    v36 = sub_1005B981C(&qword_1019F4720, &qword_101478A30);
    v37 = v221;
    sub_100025668(&v21[*(v36 + 48)], v221, type metadata accessor for CRLBoardIdentifier);
    v38 = type metadata accessor for CRLBoardIdentifier(0);
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    (*(v206 + 8))(v21, v220);
  }

  else
  {
    v39 = v221;
    sub_100025668(v21, v221, type metadata accessor for CRLBoardIdentifier);
    v40 = type metadata accessor for CRLBoardIdentifier(0);
    (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }

  v41 = *(v219 + 16);
  if (v41)
  {

    v43 = sub_100DCAE8C(v42);
    v44 = sub_100E31084(v43);
    if (v4)
    {
      sub_10000CAAC(v221, &unk_1019F52D0, &unk_10147C1C0);
    }

    else
    {
      v46 = v44[2];
      v47 = v43[2];
      v198 = v3;
      if (v46 > v47 >> 3)
      {
        v48 = sub_1012D5CC4(v44, v43);
      }

      else
      {
        v231 = v43;
        sub_1012D4DC4(v45, v44);

        v48 = v231;
      }

      v49 = 0;
      v230._countAndFlagsBits = 0;
      v230._object = 0xE000000000000000;
      do
      {
        v50._countAndFlagsBits = 0xD000000000000012;
        v50._object = 0x80000001015A46E0;
        String.append(_:)(v50);
        if (v49 < v41 - 1)
        {
          v51._countAndFlagsBits = 8236;
          v51._object = 0xE200000000000000;
          String.append(_:)(v51);
        }

        ++v49;
      }

      while (v41 != v49);
      v231 = 0;
      v232 = 0xE000000000000000;
      _StringGuts.grow(_:)(101);
      v52._countAndFlagsBits = 0x4920545245534E49;
      v52._object = 0xEC000000204F544ELL;
      String.append(_:)(v52);
      v53._object = 0x80000001015A3180;
      v53._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v53);
      v54._countAndFlagsBits = 10272;
      v54._object = 0xE200000000000000;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 0xD000000000000013;
      v55._object = 0x80000001015A3FA0;
      String.append(_:)(v55);
      v56._countAndFlagsBits = 8236;
      v56._object = 0xE200000000000000;
      String.append(_:)(v56);
      v57._object = 0x8000000101585360;
      v57._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v57);
      v58._countAndFlagsBits = 8236;
      v58._object = 0xE200000000000000;
      String.append(_:)(v58);
      v59._countAndFlagsBits = 0x7265727265666572;
      v59._object = 0xED0000657079745FLL;
      String.append(_:)(v59);
      v60._countAndFlagsBits = 8236;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = 0xD000000000000013;
      v61._object = 0x80000001015A3FC0;
      String.append(_:)(v61);
      v62._countAndFlagsBits = 8236;
      v62._object = 0xE200000000000000;
      String.append(_:)(v62);
      v63._countAndFlagsBits = 0x75755F7465737361;
      v63._object = 0xEA00000000006469;
      String.append(_:)(v63);
      v64._countAndFlagsBits = 8236;
      v64._object = 0xE200000000000000;
      String.append(_:)(v64);
      v65._object = 0x80000001015A33D0;
      v65._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v65);
      v66._countAndFlagsBits = 0x5345554C41562029;
      v66._object = 0xE900000000000020;
      String.append(_:)(v66);
      String.append(_:)(v230);

      v67._countAndFlagsBits = 0x464E4F43204E4F20;
      v67._object = 0xEE0028205443494CLL;
      String.append(_:)(v67);
      v68._countAndFlagsBits = 0xD000000000000013;
      v68._object = 0x80000001015A3FA0;
      String.append(_:)(v68);
      v69._countAndFlagsBits = 8236;
      v69._object = 0xE200000000000000;
      String.append(_:)(v69);
      v70._countAndFlagsBits = 0xD000000000000013;
      v70._object = 0x80000001015A3FC0;
      String.append(_:)(v70);
      v71._object = 0x80000001015A4700;
      v71._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v71);
      v72._countAndFlagsBits = 0x75755F7465737361;
      v72._object = 0xEA00000000006469;
      String.append(_:)(v72);
      v73._countAndFlagsBits = 0x756C637865203D20;
      v73._object = 0xEC0000002E646564;
      String.append(_:)(v73);
      v74._countAndFlagsBits = 0x75755F7465737361;
      v74._object = 0xEA00000000006469;
      String.append(_:)(v74);
      v75 = v231;
      v76 = v232;
      type metadata accessor for SQLiteStatement();
      swift_initStackObject();

      v78 = sub_10001CC04(v77, v75, v76);
      v197 = v48;

      v79 = -1 << *(v219 + 32);
      v80 = *(v219 + 64);
      v81 = ~v79;
      v82 = -v79;
      v231 = v219;
      v232 = v219 + 64;
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      else
      {
        v83 = -1;
      }

      v233 = v81;
      v234 = 0;
      v235 = v83 & v80;
      v236 = 0;

      swift_beginAccess();
      v204 = (v206 + 32);
      v199 = (v206 + 8);
      v203 = v78;
      v205 = v33;
      while (1)
      {
        v84 = v217;
        sub_100DCBCD4(v217);
        v85 = v84;
        v86 = v216;
        sub_10003DFF8(v85, v216, &qword_101A21DE8, &qword_1014B6758);
        v87 = sub_1005B981C(&qword_101A21DF0, &unk_1014B6760);
        if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
        {
          break;
        }

        v219 = *v86;
        v88 = (v86 + *(v87 + 48));
        v90 = *v88;
        v89 = v88[1];
        v91 = v215;
        v92 = *(v215 + 48);
        v93 = *v204;
        v94 = v214;
        v95 = v220;
        (*v204)(&v214[v92], v88 + v92, v220);
        v96 = *(v91 + 48);
        v97 = v222;
        v213 = v90;
        *v222 = v90;
        v97[1] = v89;
        v212 = v89;
        v93(v97 + v96, &v94[v92], v95);
        v98 = 6 * v219;
        if ((v219 * 6) >> 64 != (6 * v219) >> 63)
        {
          goto LABEL_77;
        }

        v99 = sub_1005C6934();
        if (v5)
        {
          sub_100035F90(v231);

          sub_10000CAAC(v222, &qword_101A22DF0, &qword_1014B6750);
          v150 = v203;
          v151 = *(*(v203 + 16) + 32);
          v153 = v228;
          v152 = v229;
          *v228 = v151;
          v225(v153, v224, v152);
          v154 = v151;
          LOBYTE(v151) = _dispatchPreconditionTest(_:)();
          v227(v153, v152);
          if ((v151 & 1) == 0)
          {
            goto LABEL_92;
          }

LABEL_47:
          v155 = *(v150 + 24);
          if (v155)
          {
LABEL_48:
            sqlite3_finalize(v155);
            sub_10000CAAC(v221, &unk_1019F52D0, &unk_10147C1C0);
            *(v150 + 24) = 0;
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        v101 = v99;
        v102 = v100;
        v209 = v96;
        v103 = v203;
        v104 = *(*(v203 + 16) + 32);
        v106 = v228;
        v105 = v229;
        *v228 = v104;
        v225(v106, v224, v105);
        v107 = v104;
        LOBYTE(v104) = _dispatchPreconditionTest(_:)();
        v227(v106, v105);
        if ((v104 & 1) == 0)
        {
          goto LABEL_78;
        }

        v219 = v98;
        sub_100DCCAB4(v101, v102, v103, v98 | 1);
        sub_10002640C(v101, v102);
        v108 = v210;
        sub_10000BE14(v221, v210, &unk_1019F52D0, &unk_10147C1C0);
        v109 = type metadata accessor for CRLBoardIdentifier(0);
        if ((*(*(v109 - 8) + 48))(v108, 1, v109) == 1)
        {
          v218 = 0;
          sub_10000CAAC(v108, &unk_1019F52D0, &unk_10147C1C0);
          v110 = 0;
          v111 = 0xF000000000000000;
        }

        else
        {
          v112 = type metadata accessor for CRLBoardIdentifierStorage(0);
          v113 = sub_10084DAE4(v108, *(v108 + *(v112 + 20)), *(v108 + *(v112 + 20) + 8));
          v218 = 0;
          v110 = v113;
          v111 = v114;
          sub_100026028(v108, type metadata accessor for CRLBoardIdentifier);
        }

        v115 = v219;
        if (__OFADD__(v219, 2))
        {
          goto LABEL_80;
        }

        sub_10089BB64(v110, v111, v219 + 2);
        sub_100025870(v110, v111);
        v116 = v208;
        sub_10000C83C(v223, v208, type metadata accessor for CRLAssetReferrerIdentifier);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v117 = sub_1005B981C(&qword_1019F4720, &qword_101478A30);
          sub_100026028(v116 + *(v117 + 48), type metadata accessor for CRLBoardIdentifier);
          (*v199)(v116, v220);
          v118 = 1;
        }

        else
        {
          sub_100026028(v116, type metadata accessor for CRLAssetReferrerIdentifier);
          v118 = 0;
        }

        v119 = v115 + 3;
        if (__OFADD__(v115, 3))
        {
          goto LABEL_81;
        }

        v120 = *(*(v103 + 16) + 32);
        v122 = v228;
        v121 = v229;
        *v228 = v120;
        v225(v122, v224, v121);
        v123 = v120;
        LOBYTE(v120) = _dispatchPreconditionTest(_:)();
        v227(v122, v121);
        if ((v120 & 1) == 0)
        {
          goto LABEL_82;
        }

        if (v119 < 0xFFFFFFFF80000000)
        {
          goto LABEL_83;
        }

        if (v119 > 0x7FFFFFFF)
        {
          goto LABEL_84;
        }

        sqlite3_bind_int(*(v103 + 24), v115 + 3, v118);
        if (__OFADD__(v115, 4))
        {
          goto LABEL_85;
        }

        v124 = sub_1000285F8(v213, v212, v115 + 4);
        if (__OFADD__(v115, 5))
        {
          goto LABEL_86;
        }

        v125 = UUID.crl_data()(v124);
        v127 = v126;
        v128 = v103;
        v129 = *(*(v103 + 16) + 32);
        v131 = v228;
        v130 = v229;
        *v228 = v129;
        v225(v131, v224, v130);
        v132 = v129;
        v133 = _dispatchPreconditionTest(_:)();
        v227(v131, v130);
        if ((v133 & 1) == 0)
        {
          goto LABEL_87;
        }

        v134 = v218;
        sub_100DCCAB4(v125, v127, v128, v115 + 5);
        v5 = v134;
        sub_10002640C(v125, v127);
        if (__OFADD__(v219, 6))
        {
          goto LABEL_88;
        }

        v78 = v128;
        sub_100034254(v207, v219 + 6);
        sub_10000CAAC(v222, &qword_101A22DF0, &qword_1014B6750);
      }

      sub_100035F90(v231);
      v135 = *(*(v78 + 16) + 32);
      v137 = v228;
      v136 = v229;
      *v228 = v135;
      v225(v137, v224, v136);
      v138 = v135;
      LOBYTE(v135) = _dispatchPreconditionTest(_:)();
      v227(v137, v136);
      if ((v135 & 1) == 0)
      {
        goto LABEL_91;
      }

      v139 = *(v78 + 16);

      v140 = sub_10001CEC4(v139, v78);

      v141 = v198;
      if (v140 == 101)
      {
        v218 = v5;
        v142 = 0;
        v143 = v197;
        v144 = v197 + 7;
        v145 = 1 << *(v197 + 32);
        v146 = -1;
        if (v145 < 64)
        {
          v146 = ~(-1 << v145);
        }

        v147 = v146 & v197[7];
        v219 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
        v148 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
        v149 = ((v145 + 63) >> 6);
        v223 = v206 + 16;
        v222 = v149;
LABEL_51:
        if (v147)
        {
          v156 = v148;
          v157 = v142;
          goto LABEL_57;
        }

        while (1)
        {
          v157 = v142 + 1;
          if (__OFADD__(v142, 1))
          {
            goto LABEL_89;
          }

          if (v157 >= v149)
          {
            break;
          }

          v147 = v144[v157];
          ++v142;
          if (v147)
          {
            v156 = v148;
LABEL_57:
            v158 = v206;
            v159 = v201;
            v160 = v220;
            (*(v206 + 16))(v201, v143[6] + *(v206 + 72) * (__clz(__rbit64(v147)) | (v157 << 6)), v220);
            (*(v158 + 32))(v202, v159, v160);
            v162 = v228;
            v161 = v229;
            v163 = v200;
            *v228 = v200;
            v225(v162, v224, v161);
            v164 = v163;
            LOBYTE(v163) = _dispatchPreconditionTest(_:)();
            v227(v162, v161);
            if ((v163 & 1) == 0)
            {
              goto LABEL_90;
            }

            v165 = v218;
            v166 = sub_100E39C08();
            v218 = v165;
            if (v165)
            {
              (*v199)(v202, v220);
              goto LABEL_75;
            }

            v167 = v166;
            v147 &= v147 - 1;
            if (!v166)
            {
              (*v199)(v202, v220);
              v142 = v157;
              v143 = v197;
              v148 = v156;
              goto LABEL_50;
            }

            v168 = v141;
            v169 = *&v141[v219];
            os_unfair_lock_lock(*(v169 + 16));
            v148 = v156;
            v170 = *&v141[v156];
            if (v170)
            {
              v171 = *&v141[v156];
            }

            else
            {
              v172 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
              v173 = v141;
              v174 = sub_10001F1A0(v173);

              v175 = *&v168[v148];
              *&v168[v148] = v174;
              v171 = v174;

              v170 = 0;
            }

            v176 = *(v169 + 16);
            v177 = v170;
            os_unfair_lock_unlock(v176);
            v178 = v202;
            v179 = v218;
            sub_101091618(v202, *(v167 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension), *(v167 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8));
            v218 = v179;
            if (!v179)
            {
              (*v199)(v178, v220);

              v142 = v157;
              v141 = v198;
              v143 = v197;
LABEL_50:
              v149 = v222;
              goto LABEL_51;
            }

            (*v199)(v178, v220);

LABEL_75:

            v150 = v203;
            v193 = *(*(v203 + 16) + 32);
            v195 = v228;
            v194 = v229;
            *v228 = v193;
            v225(v195, v224, v194);
            v196 = v193;
            LOBYTE(v193) = _dispatchPreconditionTest(_:)();
            v227(v195, v194);
            if ((v193 & 1) == 0)
            {
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
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
              __break(1u);
LABEL_94:
              __break(1u);
            }

            goto LABEL_47;
          }
        }

        v150 = v203;
        v189 = *(*(v203 + 16) + 32);
        v191 = v228;
        v190 = v229;
        *v228 = v189;
        v225(v191, v224, v190);
        v192 = v189;
        LOBYTE(v189) = _dispatchPreconditionTest(_:)();
        v227(v191, v190);
        if ((v189 & 1) == 0)
        {
          goto LABEL_94;
        }

        v155 = *(v150 + 24);
        if (v155)
        {
          goto LABEL_48;
        }
      }

      else
      {

        v231 = 0;
        v232 = 0xE000000000000000;
        _StringGuts.grow(_:)(60);
        v180._countAndFlagsBits = 0xD00000000000003ALL;
        v180._object = 0x80000001015A4720;
        String.append(_:)(v180);
        _print_unlocked<A, B>(_:_:)();
        v181 = v231;
        v182 = v232;
        sub_10089C7D0();
        swift_allocError();
        *v183 = v140;
        *(v183 + 8) = v181;
        *(v183 + 16) = v182;
        swift_willThrow();
        v184 = *(*(v78 + 16) + 32);
        v186 = v228;
        v185 = v229;
        *v228 = v184;
        v225(v186, v224, v185);
        v187 = v184;
        LOBYTE(v184) = _dispatchPreconditionTest(_:)();
        v227(v186, v185);
        if ((v184 & 1) == 0)
        {
          goto LABEL_93;
        }

        v188 = *(v78 + 24);
        if (v188)
        {
          sqlite3_finalize(v188);
          sub_10000CAAC(v221, &unk_1019F52D0, &unk_10147C1C0);
          *(v78 + 24) = 0;
          goto LABEL_71;
        }
      }

LABEL_70:
      sub_10000CAAC(v221, &unk_1019F52D0, &unk_10147C1C0);
LABEL_71:
    }
  }

  else
  {
    sub_10000CAAC(v221, &unk_1019F52D0, &unk_10147C1C0);
  }
}

void sub_100DFB14C(void (**a1)(char *, uint64_t, uint64_t, uint64_t), void *a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  v12 = *(v7 + 104);
  v70 = enum case for DispatchPredicate.onQueue(_:);
  v71 = v12;
  v68 = v7 + 104;
  v12(v10, v8);
  v13 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v7 + 8);
  v69 = v6;
  v14(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100DFB858(a1, a2);
  if (v3)
  {
    return;
  }

  v65 = a2;
  v66 = a1;
  v67 = v14;
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v15._countAndFlagsBits = 0x20455441445055;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x74695F6472616F62;
  v16._object = 0xEB00000000736D65;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x2054455320;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6E6F7473626D6F74;
  v18._object = 0xEA00000000006465;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x202C31203D20;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._object = 0x80000001015A33D0;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 2112800;
  v21._object = 0xE300000000000000;
  String.append(_:)(v21);
  v22._object = 0x80000001015A33D0;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x454857203F207C20;
  v23._object = 0xEC00000028204552;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x6975755F6D657469;
  v24._object = 0xE900000000000064;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._object = 0x8000000101585360;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x28204E492029;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = sub_100E9D4E0(&off_101874AC0, 0);
  String.append(_:)(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v72;
  v31 = v73;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v33 = sub_10001CC04(v32, v30, v31);

  v34 = sub_100034254(16, 1);
  v35 = UUID.crl_data()(v34);
  v37 = v36;
  v38 = *(*(v33 + 16) + 32);
  *v10 = v38;
  v39 = v69;
  v71(v10, v70, v69);
  v40 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v67(v10, v39);
  if ((v38 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100DCCAB4(v35, v37, v33, 2);
  sub_10002640C(v35, v37);
  v41 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v42 = sub_10084DAE4(v65, *(v65 + *(v41 + 20)), *(v65 + *(v41 + 20) + 8));
  v66 = 0;
  v64 = v42;
  v65 = v43;
  v44 = *(*(v33 + 16) + 32);
  *v10 = v44;
  v45 = v70;
  v46 = v71;
  v71(v10, v70, v39);
  v47 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  v48 = v67;
  v67(v10, v39);
  if ((v44 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v49 = v66;
  sub_100DCCAB4(v64, v65, v33, 3);
  v66 = v49;
  v50 = *(*(v33 + 16) + 32);
  *v10 = v50;
  v46(v10, v45, v39);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  v48(v10, v39);
  if ((v50 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v52 = *(v33 + 16);

  v53 = sub_10001CEC4(v52, v33);

  if (v53 == 101)
  {
    sub_10002640C(v64, v65);
    v54 = *(*(v33 + 16) + 32);
    *v10 = v54;
    v71(v10, v70, v39);
    v55 = v54;
    v56 = _dispatchPreconditionTest(_:)();
    v67(v10, v39);
    if (v56)
    {
      swift_beginAccess();
      v57 = *(v33 + 24);
      if (v57)
      {
        sqlite3_finalize(v57);
        *(v33 + 24) = 0;
      }

      return;
    }

    goto LABEL_20;
  }

  sub_10089C7D0();
  v58 = swift_allocError();
  *v59 = v53;
  *(v59 + 8) = 0xD000000000000024;
  *(v59 + 16) = 0x80000001015A5280;
  v66 = v58;
  swift_willThrow();
  sub_10002640C(v64, v65);
  v60 = *(*(v33 + 16) + 32);
  *v10 = v60;
  v71(v10, v70, v39);
  v61 = v60;
  v62 = _dispatchPreconditionTest(_:)();
  v67(v10, v39);
  if ((v62 & 1) == 0)
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  v63 = *(v33 + 24);
  if (v63)
  {
    sqlite3_finalize(v63);
    *(v33 + 24) = 0;
  }
}

double sub_100DFB858(void (**a1)(char *, uint64_t, uint64_t, uint64_t), void *a2)
{
  v78 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v78);
  v80 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  v13 = *(v8 + 104);
  v82 = enum case for DispatchPredicate.onQueue(_:);
  v83 = v13;
  v81 = v8 + 104;
  v13(v11, v9);
  v14 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = *(v8 + 8);
  v79 = v8 + 8;
  v15(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    __break(1u);
    goto LABEL_23;
  }

  v16 = sub_100E34C00(a1, a2);
  if (!v3)
  {
    if (*(v16 + 2))
    {
      v75 = v15;
      v76 = v7;
      v77 = v16;
      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v84 = 0xD00000000000004FLL;
      v85 = 0x80000001015A6060;
      v18._countAndFlagsBits = sub_100E9D4E0(&off_101874A98, 0);
      String.append(_:)(v18);

      v19._countAndFlagsBits = 41;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20 = v84;
      v21 = v85;
      type metadata accessor for SQLiteStatement();
      swift_initStackObject();

      v23 = sub_10001CC04(v22, v20, v21);

      v24 = *(sub_1005B981C(&qword_1019F4720, &qword_101478A30) + 48);
      v25 = type metadata accessor for UUID();
      v26 = v80;
      (*(*(v25 - 8) + 16))(v80, a1, v25);
      sub_10000C83C(a2, v26 + v24, type metadata accessor for CRLBoardIdentifier);
      swift_storeEnumTagMultiPayload();
      v27 = sub_1005C6934();
      v73 = v25;
      v29 = v28;
      v30 = v23;
      v31 = v27;
      v78 = v30;
      v32 = *(*(v30 + 16) + 32);
      *v11 = v32;
      v33 = v76;
      v83(v11, v82, v76);
      v34 = v32;
      LOBYTE(v32) = _dispatchPreconditionTest(_:)();
      v75(v11, v33);
      if (v32)
      {
        v35 = v78;

        sub_100DCCAB4(v31, v29, v35, 1);
        sub_10002640C(v31, v29);
        v36 = type metadata accessor for CRLBoardIdentifierStorage(0);
        v37 = sub_10084DAE4(a2, *(a2 + *(v36 + 20)), *(a2 + *(v36 + 20) + 8));
        v74 = 0;
        v71 = v37;
        v72 = v38;
        v39 = *(*(v78 + 16) + 32);
        *v11 = v39;
        v40 = v82;
        v41 = v76;
        v83(v11, v82, v76);
        v42 = v39;
        LOBYTE(v39) = _dispatchPreconditionTest(_:)();
        v43 = v75;
        v75(v11, v41);
        if (v39)
        {
          v44 = v78;

          v45 = v74;
          sub_100DCCAB4(v71, v72, v44, 2);
          v74 = v45;
          v46 = *(*(v44 + 16) + 32);
          *v11 = v46;
          v83(v11, v40, v41);
          v47 = v46;
          LOBYTE(v46) = _dispatchPreconditionTest(_:)();
          v43(v11, v41);
          if (v46)
          {
            v48 = v78;
            v49 = *(v78 + 16);

            v50 = v49;
            v51 = v74;
            LODWORD(v52) = sub_10001CEC4(v50, v48);

            if (v52 != 101)
            {
              goto LABEL_14;
            }

            v53 = v78;
            v54 = sub_100E93A84(v77);

            sub_100E339A0(v54);
            if (v51)
            {
              sub_100026028(v80, type metadata accessor for CRLAssetReferrerIdentifier);

              sub_10002640C(v71, v72);
              v55 = *(*(v53 + 16) + 32);
              *v11 = v55;
              v52 = v76;
              v83(v11, v82, v76);
              v56 = v55;
              LOBYTE(v55) = _dispatchPreconditionTest(_:)();
              v75(v11, v52);
              if ((v55 & 1) == 0)
              {
                __break(1u);
LABEL_14:

                v84 = 0;
                v85 = 0xE000000000000000;
                _StringGuts.grow(_:)(73);
                v57._object = 0x80000001015A60B0;
                v57._countAndFlagsBits = 0xD000000000000047;
                String.append(_:)(v57);
                sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v58);

                v59 = v84;
                v60 = v85;
                sub_10089C7D0();
                swift_allocError();
                *v61 = v52;
                *(v61 + 8) = v59;
                *(v61 + 16) = v60;
                swift_willThrow();
                sub_10002640C(v71, v72);
                sub_100026028(v80, type metadata accessor for CRLAssetReferrerIdentifier);
                v62 = v78;
                v63 = *(*(v78 + 16) + 32);
                *v11 = v63;
                v64 = v76;
                v83(v11, v82, v76);
                v65 = v63;
                LOBYTE(v63) = _dispatchPreconditionTest(_:)();
                v75(v11, v64);
                if (v63)
                {
                  swift_beginAccess();
                  v66 = *(v62 + 24);
                  if (v66)
                  {
                    sqlite3_finalize(v66);
                    *(v62 + 24) = 0;
                  }

LABEL_17:

                  return result;
                }

                goto LABEL_26;
              }
            }

            else
            {
              sub_100026028(v80, type metadata accessor for CRLAssetReferrerIdentifier);

              sub_10002640C(v71, v72);
              v67 = *(*(v53 + 16) + 32);
              *v11 = v67;
              v68 = v76;
              v83(v11, v82, v76);
              v69 = v67;
              LOBYTE(v67) = _dispatchPreconditionTest(_:)();
              v75(v11, v68);
              if ((v67 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            swift_beginAccess();
            v70 = *(v53 + 24);
            if (v70)
            {
              sqlite3_finalize(v70);
              *(v53 + 24) = 0;
            }

            goto LABEL_17;
          }

LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      __break(1u);
      goto LABEL_24;
    }
  }

  return result;
}

double sub_100DFC224(uint64_t a1, unint64_t a2)
{
  v73 = a2;
  v4 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v4);
  v6 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  v13 = *(v8 + 104);
  v71 = enum case for DispatchPredicate.onQueue(_:);
  v69 = v13;
  v67 = v8 + 104;
  v13(v11, v9);
  v14 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = *(v8 + 8);
  v65 = v11;
  v66 = v8 + 8;
  v68 = v7;
  v70 = v15;
  v15(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = *(sub_1005B981C(&qword_1019F4720, &qword_101478A30) + 48);
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 16))(v6, a1, v17);
  v18 = v73;
  sub_10000C83C(v73, v6 + v16, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v19 = v72;
  sub_100DF8718(v6);
  sub_100026028(v6, type metadata accessor for CRLAssetReferrerIdentifier);
  if (v19)
  {
    return result;
  }

  v74 = 0;
  v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v21._countAndFlagsBits = 0x20455441445055;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x74695F6472616F62;
  v22._object = 0xEB00000000736D65;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x2054455320;
  v23._object = 0xE500000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x6E6F7473626D6F74;
  v24._object = 0xEA00000000006465;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x202C31203D20;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._object = 0x80000001015A33D0;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 2112800;
  v27._object = 0xE300000000000000;
  String.append(_:)(v27);
  v28._object = 0x80000001015A33D0;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x454857203F207C20;
  v29._object = 0xEB00000000204552;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x6975755F6D657469;
  v30._object = 0xE900000000000064;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x444E41203F203D20;
  v31._object = 0xE900000000000020;
  String.append(_:)(v31);
  v32._object = 0x8000000101585360;
  v32._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 1059077408;
  v33._object = 0xE400000000000000;
  String.append(_:)(v33);
  v34 = v74;
  v35 = v75;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v37 = sub_10001CC04(v36, v34, v35);

  v38 = sub_100034254(16, 1);
  v39 = UUID.crl_data()(v38);
  v41 = v40;
  v42 = *(*(v37 + 16) + 32);
  v43 = v65;
  *v65 = v42;
  v44 = v68;
  v69(v43, v71, v68);
  v45 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v70(v43, v44);
  if ((v42 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_100DCCAB4(v39, v41, v37, 2);
  sub_10002640C(v39, v41);
  v46 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v47 = sub_10084DAE4(v18, *(v18 + *(v46 + 20)), *(v18 + *(v46 + 20) + 8));
  v73 = v48;
  v72 = v47;
  v49 = *(*(v37 + 16) + 32);
  *v43 = v49;
  v50 = v68;
  v51 = v69;
  v69(v43, v71, v68);
  v52 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  v53 = v70;
  v70(v43, v50);
  if ((v49 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100DCCAB4(v72, v73, v37, 3);
  v54 = *(*(v37 + 16) + 32);
  *v43 = v54;
  v51(v43, v71, v50);
  v55 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  v53(v43, v50);
  if ((v54 & 1) == 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v56 = *(v37 + 16);

  v57 = sub_10001CEC4(v56, v37);

  if (v57 == 101)
  {
    sub_10002640C(v72, v73);
    v58 = *(*(v37 + 16) + 32);
    *v43 = v58;
    v69(v43, v71, v50);
    v59 = v58;
    LOBYTE(v58) = _dispatchPreconditionTest(_:)();
    v70(v43, v50);
    if (v58)
    {
      swift_beginAccess();
      v60 = *(v37 + 24);
      if (v60)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    goto LABEL_19;
  }

  sub_10089C7D0();
  swift_allocError();
  *v61 = v57;
  *(v61 + 8) = 0xD000000000000024;
  *(v61 + 16) = 0x80000001015A5280;
  swift_willThrow();
  sub_10002640C(v72, v73);
  v62 = *(*(v37 + 16) + 32);
  *v43 = v62;
  v69(v43, v71, v50);
  v63 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  v70(v43, v50);
  if ((v62 & 1) == 0)
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v60 = *(v37 + 24);
  if (v60)
  {
LABEL_12:
    sqlite3_finalize(v60);
    *(v37 + 24) = 0;
  }

LABEL_13:

  return result;
}

double sub_100DFCA00(void (**a1)(char *, uint64_t, uint64_t, uint64_t), void *a2)
{
  v112 = a2;
  v4 = v2;
  v109 = type metadata accessor for UUID();
  v105 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v107 = v92 - v8;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v106 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v15 = v16;
  v18 = v12 + 104;
  v17 = *(v12 + 104);
  v110 = enum case for DispatchPredicate.onQueue(_:);
  (v17)(v15, v13);
  v19 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v22 = *(v12 + 8);
  v20 = v12 + 8;
  v21 = v22;
  v22(v15, v11);
  if (v16)
  {
    v3 = v111;
    result = sub_100DFB858(a1, v112);
    if (v3)
    {
      return result;
    }

    v103 = v17;
    v24 = sub_100DEC510(a1, v112, 1);
    v17 = v24;
    v101 = v4;
    v93 = v21;
    v96 = v15;
    v97 = v20;
    v113 = _swiftEmptyArrayStorage;
    v102 = a1;
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
LABEL_32:
    __break(1u);
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:
  v26 = v110;
  v95 = v18;
  v94 = v11;
  v104 = v3;
  if (v25)
  {
    v11 = 0;
    v18 = v17 & 0xC000000000000001;
    v27 = v17 & 0xFFFFFFFFFFFFFF8;
    v111 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v29 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v31 = v113;
          goto LABEL_22;
        }
      }

      else
      {
        if (v11 >= *(v27 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v28 = *(v17 + 8 * v11 + 32);

        v29 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_19;
        }
      }

      v30 = *(v28 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges);
      if (v30 & 2) == 0 || (v30)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v26 = v110;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v27 = v111;
      }

      ++v11;
      if (v29 == v25)
      {
        goto LABEL_20;
      }
    }
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_22:

  v33 = v31 < 0 || (v31 & 0x4000000000000000) != 0;
  if (v33)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v34 = v106;
    if (!v32)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v34 = v106;
    if (!*(v31 + 16))
    {
      goto LABEL_44;
    }
  }

  v111 = v31 & 0xC000000000000001;
  v100 = v31;
  if ((v31 & 0xC000000000000001) != 0)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    sub_10000C83C(v37 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v34, type metadata accessor for CRLBoardIdentifier);
    swift_unknownObjectRelease();
    v38 = v104;
    v32 = sub_100DEB448(v34);
    v35 = v38;
    if (v38)
    {
      v34 = v106;
      goto LABEL_30;
    }
  }

  else
  {
    v35 = *(v31 + 16);
    if (v35)
    {
      sub_10000C83C(*(v31 + 32) + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v34, type metadata accessor for CRLBoardIdentifier);
      v36 = v104;
      v32 = sub_100DEB448(v34);
      if (v36)
      {
LABEL_30:
        sub_100026028(v34, type metadata accessor for CRLBoardIdentifier);

        return result;
      }

      goto LABEL_40;
    }

    __break(1u);
  }

  v36 = v35;
  v26 = v110;
  v34 = v106;
  v31 = v100;
LABEL_40:
  v104 = v36;
  if (v32)
  {
    v39 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
    v40 = v32;
    swift_beginAccess();
    v41 = v105;
    v42 = *(v105 + 16);
    v99 = v105 + 16;
    v98 = v42;
    v42(v107, v40 + v39, v109);
    v92[1] = v40;
    if (v33)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v43 = *(v31 + 16);
    }

    v77 = (v41 + 8);
    if (v43)
    {
      v105 = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v78 = 0;
      do
      {
        if (v111)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v80 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v78 >= *(v31 + 16))
          {
            goto LABEL_76;
          }

          v79 = *(v31 + 8 * v78 + 32);

          v80 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
          }
        }

        v82 = v108;
        v81 = v109;
        v98(v108, v79 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v109);
        sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v83 = dispatch thunk of static Equatable.== infix(_:_:)();
        v84 = *v77;
        (*v77)(v82, v81);
        if (v83)
        {
          v31 = v100;
        }

        else
        {
          v85 = v104;
          sub_100DFD6B8(v79, v107, v101);
          v104 = v85;
          v31 = v100;
          if (v85)
          {

            v84(v107, v109);
            sub_100026028(v106, type metadata accessor for CRLBoardIdentifier);
            return result;
          }
        }

        ++v78;
      }

      while (v80 != v43);

      v34 = v106;
    }

    else
    {

      v84 = *v77;
    }

    v84(v107, v109);
    sub_100026028(v34, type metadata accessor for CRLBoardIdentifier);
    v26 = v110;
    goto LABEL_45;
  }

  sub_100026028(v34, type metadata accessor for CRLBoardIdentifier);
LABEL_44:

LABEL_45:
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v45 = v104;
  v46 = sub_10001CC04(v44, 0xD000000000000046, 0x80000001015A5FF0);

  if (!v45)
  {
    v48 = UUID.crl_data()(v47);
    v50 = v49;
    v51 = *(*(v46 + 16) + 32);
    v52 = v96;
    *v96 = v51;
    v53 = v94;
    v103(v52, v26, v94);
    v54 = v51;
    v55 = _dispatchPreconditionTest(_:)();
    v56 = v52;
    v57 = v93;
    v93(v56, v53);
    if ((v55 & 1) == 0)
    {
      goto LABEL_77;
    }

    sub_100DCCAB4(v48, v50, v46, 1);
    sub_10002640C(v48, v50);
    v58 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v59 = sub_10084DAE4(v112, *(v112 + *(v58 + 20)), *(v112 + *(v58 + 20) + 8));
    v112 = v60;
    v104 = 0;
    v111 = v59;
    v61 = *(*(v46 + 16) + 32);
    v62 = v57;
    v63 = v96;
    *v96 = v61;
    v64 = v103;
    v103(v63, v110, v53);
    v65 = v61;
    v66 = _dispatchPreconditionTest(_:)();
    v62(v63, v53);
    if ((v66 & 1) == 0)
    {
      goto LABEL_78;
    }

    sub_100DCCAB4(v111, v112, v46, 2);
    v67 = *(*(v46 + 16) + 32);
    *v63 = v67;
    v64(v63, v110, v53);
    v68 = v67;
    LOBYTE(v67) = _dispatchPreconditionTest(_:)();
    v62(v63, v53);
    if ((v67 & 1) == 0)
    {
      goto LABEL_79;
    }

    v69 = v62;
    v70 = *(v46 + 16);

    v71 = sub_10001CEC4(v70, v46);

    if (v71 == 101)
    {
      sub_10002640C(v111, v112);
      v72 = *(*(v46 + 16) + 32);
      v73 = v96;
      *v96 = v72;
      v103(v73, v110, v53);
      v74 = v72;
      v75 = _dispatchPreconditionTest(_:)();
      v69(v73, v53);
      if ((v75 & 1) == 0)
      {
        goto LABEL_80;
      }

      swift_beginAccess();
      v76 = *(v46 + 24);
      if (v76)
      {
        sqlite3_finalize(v76);
        *(v46 + 24) = 0;
      }
    }

    else
    {
      sub_10089C7D0();
      swift_allocError();
      *v86 = v71;
      *(v86 + 8) = 0xD00000000000001DLL;
      *(v86 + 16) = 0x80000001015A6040;
      swift_willThrow();
      sub_10002640C(v111, v112);
      v87 = *(*(v46 + 16) + 32);
      v88 = v96;
      *v96 = v87;
      v103(v88, v110, v53);
      v89 = v87;
      v90 = _dispatchPreconditionTest(_:)();
      v69(v88, v53);
      if ((v90 & 1) == 0)
      {
        goto LABEL_81;
      }

      swift_beginAccess();
      v91 = *(v46 + 24);
      if (v91)
      {
        sqlite3_finalize(v91);
        *(v46 + 24) = 0;
      }
    }
  }

  return result;
}

void sub_100DFD6B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v121 = a3;
  v127 = a2;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v118 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v114 = (&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v116 = &v97 - v10;
  __chkstk_darwin(v11);
  v115 = &v97 - v12;
  v13 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v97 - v15;
  v17 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v17 - 8);
  v117 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v119 = &v97 - v20;
  __chkstk_darwin(v21);
  v125 = &v97 - v22;
  __chkstk_darwin(v23);
  v25 = &v97 - v24;
  v26 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  swift_beginAccess();
  v27 = *(v7 + 16);
  v122 = v7 + 16;
  v120 = v27;
  v27(v25, v127, v6);
  v123 = *(v7 + 56);
  v124 = v7 + 56;
  v123(v25, 0, 1, v6);
  v28 = *(v14 + 56);
  v29 = a1 + v26;
  v30 = a1;
  sub_10000BE14(v29, v16, &qword_1019F6990, &qword_10146D2F0);
  sub_10000BE14(v25, &v16[v28], &qword_1019F6990, &qword_10146D2F0);
  v31 = *(v7 + 48);
  if (v31(v16, 1, v6) == 1)
  {
    sub_10000CAAC(v25, &qword_1019F6990, &qword_10146D2F0);
    if (v31(&v16[v28], 1, v6) == 1)
    {
      sub_10000CAAC(v16, &qword_1019F6990, &qword_10146D2F0);
      return;
    }
  }

  else
  {
    sub_10000BE14(v16, v125, &qword_1019F6990, &qword_10146D2F0);
    if (v31(&v16[v28], 1, v6) != 1)
    {
      v43 = v115;
      (*(v7 + 32))(v115, &v16[v28], v6);
      sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = v125;
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v113 = v7;
      v46 = *(v7 + 8);
      v46(v43, v6);
      sub_10000CAAC(v25, &qword_1019F6990, &qword_10146D2F0);
      v32 = v6;
      v46(v44, v6);
      sub_10000CAAC(v16, &qword_1019F6990, &qword_10146D2F0);
      v33 = v126;
      v34 = v123;
      if (v45)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10000CAAC(v25, &qword_1019F6990, &qword_10146D2F0);
    (*(v7 + 8))(v125, v6);
  }

  v113 = v7;
  v32 = v6;
  sub_10000CAAC(v16, &unk_101A0AFE0, &unk_10146F3C0);
  v33 = v126;
  v34 = v123;
LABEL_7:
  v35 = sub_100E929EC(v30);
  if (v35)
  {
    v36 = v35;
    v37 = v119;
    v38 = v32;
    v39 = v32;
    v40 = v120;
    v120(v119, v127, v39);
    v125 = v38;
    v34(v37, 0, 1, v38);
    (*(*v36 + 280))(v37);
    v41 = (*(*v36 + 520))(*(v121 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext), 0);
    if (v33)
    {
LABEL_9:

      return;
    }

    v111 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) | 0x16;
    v47 = (*v36 + 264);
    v48 = *v47;
    v112 = v42;
    v123 = v41;
    v100 = v48;
    v99 = v47;
    v48();
    v106 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 32);
    v105 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
    v49 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 16);
    v104 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
    v103 = v49;
    v50 = v117;
    v51 = v125;
    v40(v117, v127, v125);
    v34(v50, 0, 1, v51);
    v52 = v34;
    v98 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier;
    sub_10000C83C(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, v118, type metadata accessor for CRLBoardIdentifier);
    v53 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8);
    v110 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
    v109 = v53;
    v108 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16);
    v126 = 0;
    v54 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    v102 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v101 = v54;
    v55 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    v122 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v120 = v55;
    v56 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    v119 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v127 = v56;
    v57 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
    v107 = *(v30 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v58 = v107;
    v115 = v57;
    type metadata accessor for CRLBoardItemDatabaseRow(0);
    v59 = swift_allocObject();
    v60 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
    v52(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v51);
    v124 = v30;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
    (*(v113 + 32))(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v116, v51);
    v61 = v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
    v62 = v103;
    *v61 = v104;
    *(v61 + 16) = v62;
    *(v61 + 32) = v106;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = v105;
    swift_beginAccess();
    v63 = v123;
    v64 = v112;
    sub_100024E98(v123, v112);
    v65 = v102;
    v66 = v101;
    sub_100024E84(v102, v101);
    sub_100024E84(v122, v120);
    sub_100024E84(v119, v127);
    sub_100024E84(v58, v115);
    sub_10002C638(v117, v59 + v60, &qword_1019F6990, &qword_10146D2F0);
    swift_endAccess();
    sub_100025668(v118, v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v67 = v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
    v68 = v109;
    *v67 = v110;
    *(v67 + 8) = v68;
    *(v67 + 16) = v108;
    v69 = v64;
    v70 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v71 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v72 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
    sub_100024E98(v63, v69);
    *v70 = v63;
    v70[1] = v69;
    sub_100025870(v71, v72);
    sub_10002640C(v63, v69);
    v73 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v74 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v75 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    sub_100024E84(v65, v66);
    *v73 = v65;
    v73[1] = v66;
    sub_100025870(v74, v75);
    sub_100025870(v65, v66);
    v76 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v77 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v78 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    v79 = v122;
    v80 = v120;
    sub_100024E84(v122, v120);
    *v76 = v79;
    v76[1] = v80;
    sub_100025870(v77, v78);
    sub_100025870(v79, v80);
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 1;
    *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = v111;
    v81 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v82 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v83 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    v84 = v119;
    v85 = v127;
    sub_100024E84(v119, v127);
    *v81 = v84;
    v81[1] = v85;
    sub_100025870(v82, v83);
    sub_100025870(v84, v85);
    v86 = (v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v87 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v88 = *(v59 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
    v89 = v107;
    v90 = v115;
    sub_100024E84(v107, v115);
    *v86 = v89;
    v86[1] = v90;
    sub_100025870(v87, v88);
    sub_100025870(v89, v90);
    v91 = v126;
    v92 = sub_100DF3D48(v59);
    if (!v91)
    {
      v93 = v123;
      v94 = v113;
      v95 = v114;
      v96 = v125;
      v100(v92);
      sub_100DFB14C(v95, (v124 + v98));
      (*(v94 + 8))(v95, v96);
      sub_10002640C(v93, v112);
      swift_setDeallocating();
      sub_100FE3A40();
      swift_deallocClassInstance();
      goto LABEL_9;
    }

    sub_10002640C(v123, v69);

    swift_setDeallocating();
    sub_100FE3A40();
    swift_deallocClassInstance();
  }
}

void sub_100DFE34C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v45) = a4;
  v43 = a2;
  v44 = a3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v47 = *(v8 + 104);
  v47(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v14 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v46 = *(v8 + 8);
  v46(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = a1;
  v48 = v13;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v16 = sub_10001CC04(v15, 0xD00000000000005BLL, 0x80000001015A3DA0);

  if (v5)
  {
    return;
  }

  v17 = v44;
  sub_10089BB64(v43, v44, 1);
  sub_10089B9A4(v45 & (v17 >> 60 != 15), 2);
  v18 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v19 = sub_10084DAE4(v42, *(v42 + *(v18 + 20)), *(v42 + *(v18 + 20) + 8));
  v45 = v20;
  v21 = v19;
  v22 = *(*(v16 + 16) + 32);
  *v11 = v22;
  (v47)(v11, v48, v7);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v24 = v46;
  v46(v11, v7);
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = v21;
  v26 = v21;
  v27 = v45;
  sub_100DCCAB4(v26, v45, v16, 3);
  sub_10002640C(v25, v27);
  v28 = *(*(v16 + 16) + 32);
  *v11 = v28;
  v29 = v47;
  (v47)(v11, v48, v7);
  v30 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v24(v11, v7);
  if ((v28 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v31 = *(v16 + 16);

  v32 = sub_10001CEC4(v31, v16);

  if (v32 == 101)
  {
    v33 = *(*(v16 + 16) + 32);
    *v11 = v33;
    v29(v11, v48, v7);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v24(v11, v7);
    if (v35)
    {
      swift_beginAccess();
      v36 = *(v16 + 24);
      if (v36)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  sub_10089C7D0();
  swift_allocError();
  *v37 = v32;
  *(v37 + 8) = 0xD000000000000023;
  *(v37 + 16) = 0x80000001015A3E00;
  swift_willThrow();
  v38 = *(*(v16 + 16) + 32);
  *v11 = v38;
  v29(v11, v48, v7);
  v39 = v38;
  v40 = _dispatchPreconditionTest(_:)();
  v46(v11, v7);
  if ((v40 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v36 = *(v16 + 24);
  if (v36)
  {
LABEL_11:
    sqlite3_finalize(v36);
    *(v16 + 24) = 0;
  }

LABEL_12:
}

uint64_t (*sub_100DFE838(uint64_t (*a1)(uint64_t a1), int a2, uint64_t a3, unint64_t a4, int a5, int a6))(uint64_t a1)
{
  LODWORD(v425) = a6;
  LODWORD(v433) = a5;
  v423 = a4;
  v417 = a3;
  LODWORD(v431) = a2;
  v438 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v401 = *(v9 - 8);
  __chkstk_darwin(v9);
  v398 = &v387 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v399 = *(v11 - 8);
  v400 = v11;
  __chkstk_darwin(v11);
  v397 = &v387 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v403 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  __chkstk_darwin(v403);
  v396 = &v387 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v404 = &v387 - v15;
  v409 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v409);
  v391 = (&v387 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v405 = &v387 - v18;
  __chkstk_darwin(v19);
  v421 = (&v387 - v20);
  v21 = type metadata accessor for MergeResult();
  v407 = *(v21 - 8);
  v408 = v21;
  __chkstk_darwin(v21);
  v406 = &v387 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  __chkstk_darwin(v426);
  v413 = &v387 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v412 = &v387 - v25;
  v26 = sub_1005B981C(&qword_101A21C68, &qword_1014B6530);
  __chkstk_darwin(v26 - 8);
  *&v428 = &v387 - v27;
  *&v434 = type metadata accessor for CRLBoardCRDTData(0);
  *&v427 = *(v434 - 8);
  __chkstk_darwin(v434);
  v411 = &v387 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v387 - v30;
  __chkstk_darwin(v32);
  v422 = &v387 - v33;
  __chkstk_darwin(v34);
  v429 = &v387 - v35;
  __chkstk_darwin(v36);
  v416 = &v387 - v37;
  __chkstk_darwin(v38);
  v415 = &v387 - v39;
  __chkstk_darwin(v40);
  v414 = &v387 - v41;
  __chkstk_darwin(v42);
  v449 = &v387 - v43;
  v432 = type metadata accessor for UUID();
  v430 = *(v432 - 8);
  __chkstk_darwin(v432);
  v420 = (&v387 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v419 = &v387 - v46;
  __chkstk_darwin(v47);
  v439 = &v387 - v48;
  v49 = type metadata accessor for CRLBoardIdentifier(0);
  v392 = *(v49 - 8);
  __chkstk_darwin(v49 - 8);
  v394 = &v387 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v393 = &v387 - v52;
  __chkstk_darwin(v53);
  v402 = &v387 - v54;
  __chkstk_darwin(v55);
  v57 = &v387 - v56;
  __chkstk_darwin(v58);
  v435 = &v387 - v59;
  __chkstk_darwin(v60);
  v436 = &v387 - v61;
  v62 = type metadata accessor for DispatchPredicate();
  v63 = *(v62 - 8);
  v64 = __chkstk_darwin(v62);
  v66 = (&v387 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v440 = v6;
  v67 = *&v6[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v66 = v67;
  (*(v63 + 104))(v66, enum case for DispatchPredicate.onQueue(_:), v62, v64);
  v68 = v67;
  LOBYTE(v67) = _dispatchPreconditionTest(_:)();
  v70 = *(v63 + 8);
  v69 = v63 + 8;
  v70(v66, v62);
  if ((v67 & 1) == 0)
  {
    __break(1u);
    goto LABEL_134;
  }

  v410 = v31;
  v418 = v57;
  v395 = v9;
  v72 = v438;
  v73 = v438 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v74 = v449;
  sub_10000C83C(v73, v449, type metadata accessor for CRLBoardCRDTData);
  v75 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  v76 = v439;
  CRRegister.wrappedValue.getter();
  sub_100026028(v74, type metadata accessor for CRLBoardCRDTData);
  v77 = *(v72 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v78 = *(v72 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  v79 = v436;
  sub_10084BD4C(v76, v77, v78, v436);
  v80 = v437;
  v81 = sub_100DEB448(v79);
  *&v437 = v80;
  if (v80)
  {
    v438 = type metadata accessor for CRLBoardIdentifier;
    sub_100026028(v79, type metadata accessor for CRLBoardIdentifier);
    v82 = v449;
    sub_10000C83C(v73, v449, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_100026028(v82, type metadata accessor for CRLBoardCRDTData);

    v83 = v435;
    sub_10084BD4C(v76, v77, v78, v435);
    swift_beginAccess();
    sub_101270EDC(v83, 1);
    swift_endAccess();
    v84 = v83;
    v85 = v438;
    return sub_100026028(v84, v85);
  }

  v86 = v81;
  v389 = v78;
  v390 = v73;
  v424 = v75;
  v388 = v77;
  sub_100026028(v79, type metadata accessor for CRLBoardIdentifier);
  if (!v86)
  {
    v119 = v437;
    if (v433 & 1) != 0 || (v425)
    {
      v431 = v431 == 0;
      v120 = *&v440[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
      v121 = v390;
      v122 = v422;
      sub_10000C83C(v390, v422, type metadata accessor for CRLBoardCRDTData);
      v123 = v449;
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v124 = type metadata accessor for CRCodableVersion();
      v125 = sub_1005EB3DC(v124, qword_101AD6348);
      sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);
      v126 = CRDT.serializedData(_:version:)();
      if (v119)
      {
        sub_100026028(v122, type metadata accessor for CRLBoardCRDTData);
        sub_10000C83C(v121, v123, type metadata accessor for CRLBoardCRDTData);
        v128 = v439;
        CRRegister.wrappedValue.getter();
        sub_100026028(v123, type metadata accessor for CRLBoardCRDTData);
        v129 = v389;

        v130 = v435;
        sub_10084BD4C(v128, v388, v129, v435);
        swift_beginAccess();
        sub_101270EDC(v130, 1);
        swift_endAccess();
        return sub_100026028(v130, type metadata accessor for CRLBoardIdentifier);
      }

      v415 = v125;
      v416 = v120;
      v436 = v127;
      *&v437 = 0;
      v433 = v126;
      sub_100026028(v122, type metadata accessor for CRLBoardCRDTData);
      sub_10000C83C(v121, v123, type metadata accessor for CRLBoardCRDTData);
      v199 = v439;
      CRRegister.wrappedValue.getter();
      sub_100026028(v123, type metadata accessor for CRLBoardCRDTData);
      v200 = v389;

      sub_10084BD4C(v199, v388, v200, v418);
      v201 = v123;
      LODWORD(v429) = *(v438 + 56);
      v202 = *(v438 + 24);
      v427 = *(v438 + 40);
      v428 = v202;
      v203 = v410;
      sub_10000C83C(v121, v410, type metadata accessor for CRLBoardCRDTData);
      CRRegister.wrappedValue.getter();
      sub_100026028(v203, type metadata accessor for CRLBoardCRDTData);
      v204 = v411;
      sub_10000C83C(v121, v411, type metadata accessor for CRLBoardCRDTData);
      type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
      CRRegister.wrappedValue.getter();
      sub_100026028(v204, type metadata accessor for CRLBoardCRDTData);
      sub_100024E98(v433, v436);
      static Date.timeIntervalSinceReferenceDate.getter();
      v206 = v205;
      sub_10000C83C(v121, v201, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&qword_1019F4858, &unk_10146C6D0);
      CRMaxRegister.wrappedValue.getter();
      sub_100026028(v201, type metadata accessor for CRLBoardCRDTData);
      v207 = v443;
      sub_10000C83C(v121, v201, type metadata accessor for CRLBoardCRDTData);
      v414 = sub_1005B981C(&qword_101A2C810, &unk_101480B50);
      CRRegister.wrappedValue.getter();
      sub_100026028(v201, type metadata accessor for CRLBoardCRDTData);
      LODWORD(v426) = v443;
      v422 = sub_10001FF1C();
      type metadata accessor for CRLBoardDatabaseRow(0);
      v109 = swift_allocObject();
      v434 = xmmword_101486780;
      *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data] = xmmword_101486780;
      *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData] = xmmword_101486780;
      *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData] = xmmword_101486780;
      v208 = v418;
      sub_10000C83C(v418, &v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], type metadata accessor for CRLBoardIdentifier);
      v209 = (v208 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v210 = v208;
      v211 = *v209;
      v212 = v209[1];

      sub_100026028(v210, type metadata accessor for CRLBoardIdentifier);
      v213 = &v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName];
      *v213 = v211;
      v213[1] = v212;
      v421 = v212;
      v214 = &v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions];
      v215 = v427;
      *v214 = v428;
      *(v214 + 1) = v215;
      v214[32] = v429;
      v216 = v430[4];
      v217 = v432;
      v216(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID], v419, v432);
      v216(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID], v420, v217);
      v218 = &v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data];
      v219 = *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data];
      v220 = *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8];
      v221 = v433;
      v222 = v436;
      sub_100024E98(v433, v436);
      *v218 = v221;
      v218[1] = v222;
      sub_100025870(v219, v220);
      sub_10002640C(v221, v222);
      v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone] = 0;
      *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges] = v431;
      v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges] = 0;
      v223 = &v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData];
      v224 = *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData];
      v225 = *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8];
      v226 = v417;
      v227 = v423;
      sub_100024E84(v417, v423);
      *v223 = v226;
      v223[1] = v227;
      sub_100025870(v224, v225);
      *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate] = v206;
      v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted] = 0;
      v228 = *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData];
      v229 = *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8];
      *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData] = v434;
      sub_100025870(v228, v229);
      *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime] = v207;
      v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable] = v426;
      *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion] = v422;
      v230 = v437;
      sub_100E03D90(v109);
      if (!v230)
      {
        sub_100E04BA4(v438);
        v171 = 0;
        goto LABEL_109;
      }

      sub_10002640C(v433, v436);
      swift_setDeallocating();
      sub_100026028(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], type metadata accessor for CRLBoardIdentifier);

      v231 = v430[1];
      v231(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID], v217);
      v231(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID], v217);
      sub_100025870(*&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data], *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8]);
      sub_100025870(*&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData], *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8]);
      sub_100025870(*&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData], *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8]);
      swift_deallocClassInstance();
      v232 = v449;
      sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
      v233 = v439;
      CRRegister.wrappedValue.getter();
      sub_100026028(v232, type metadata accessor for CRLBoardCRDTData);
      v234 = v389;

      v235 = v435;
      sub_10084BD4C(v233, v388, v234, v435);
      swift_beginAccess();
      sub_101270EDC(v235, 1);
      swift_endAccess();
      v84 = v235;
LABEL_63:
      v85 = type metadata accessor for CRLBoardIdentifier;
      return sub_100026028(v84, v85);
    }

LABEL_26:
    v133 = 0;
    goto LABEL_27;
  }

  v87 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone;
  v88 = *(v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone);
  v422 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges;
  v89 = *(v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges);
  v90 = (v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v91 = *(v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  v92 = v437;
  v387 = v86;
  v420 = (v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  if (v91 >> 60 == 15)
  {
    if (v433)
    {
LABEL_7:
      v93 = v89 | 2;
      if (v88)
      {
        v93 = 4;
      }

      if (v431)
      {
        v93 = 0;
      }

      v418 = v87;
      v419 = v93;
      v94 = v438;

      v95 = sub_100BD5554(_swiftEmptyArrayStorage);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v428 = _swiftEmptyDictionarySingleton;
      *&v443 = _swiftEmptyDictionarySingleton;
      sub_100E9CD68(v95, sub_100E8FDF4, 0, isUniquelyReferenced_nonNull_native, &v443);
      v425 = v92;
      v97 = v387;

      v433 = v443;

      LODWORD(v412) = 0;
      LODWORD(v413) = 0;
      LODWORD(v427) = 0;
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v419 = v89;
  LODWORD(v436) = v88;
  v109 = *v90;
  sub_100024E84(*v90, v91);
  sub_100024E84(v109, v91);
  sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);

  v108 = v428;
  v131 = v434;
  v132 = v86;
  v111 = v92;
  CRDT.init(serializedData:)();
  if (v92)
  {

    sub_100025870(v109, v91);

    (*(v427 + 56))(v108, 1, 1, v131);
    sub_10000CAAC(v108, &qword_101A21C68, &qword_1014B6530);
    v92 = 0;
    v88 = v436;
    v89 = v419;
    if (v433)
    {
      goto LABEL_7;
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_57:
  v425 = v111;
  v418 = v87;
  (*(v427 + 56))(v108, 0, 1, v131);
  v185 = v414;
  sub_100025668(v108, v414, type metadata accessor for CRLBoardCRDTData);
  LODWORD(v428) = *(v132 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
  v186 = *(v132 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
  v437 = *(v132 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
  v427 = v186;
  v187 = v449;
  sub_10000C83C(v185, v449, type metadata accessor for CRLBoardCRDTData);
  v188 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v189 = (v132 + v188 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v191 = *v189;
  v190 = v189[1];
  type metadata accessor for CRLBoardData(0);
  v192 = swift_allocObject();

  v193 = v109;
  v194 = v192;
  sub_100025870(v193, v91);

  sub_100026028(v185, type metadata accessor for CRLBoardCRDTData);
  *(v192 + 16) = 7;
  *(v192 + 40) = v427;
  *(v192 + 24) = v437;
  *(v192 + 56) = v428;
  sub_100025668(v187, v192 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
  v195 = (v192 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  *v195 = v191;
  v195[1] = v190;
  if (v431)
  {
    if (v431 == 1)
    {
      v196 = (v419 >> 2) & 1;
      v197 = sub_100E02DAC(v438);
      v198 = v434;
      if (v436 & v196)
      {
        v197 |= 4uLL;
LABEL_76:
        v419 = v197;
        LODWORD(v414) = 1;
        LODWORD(v427) = 1;
LABEL_81:
        v433 = _swiftEmptyDictionarySingleton;
        *&v428 = _swiftEmptyDictionarySingleton;
        goto LABEL_85;
      }

      if (v436)
      {
        v419 = v197;
        LODWORD(v427) = (v433 ^ 1) & v436;
LABEL_80:
        LODWORD(v414) = 1;
        goto LABEL_81;
      }
    }

    else
    {
      v197 = 0;
      v198 = v434;
      if (v436)
      {
        goto LABEL_76;
      }
    }
  }

  else
  {
    v254 = sub_100E02DAC(v192);
    v197 = v254 | v419;
    v198 = v434;
    if (v436)
    {
      LODWORD(v427) = v433 ^ 1;
      if (v433)
      {
        v197 |= 4uLL;
      }

      v419 = v197;
      goto LABEL_80;
    }
  }

  v419 = v197;
  v255 = v449;
  sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
  swift_beginAccess();
  sub_1000066D0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);
  v256 = CRStruct_6.hasDelta(from:)();
  sub_100026028(v255, type metadata accessor for CRLBoardCRDTData);
  if (v256)
  {
    v257 = sub_100BD5554(_swiftEmptyArrayStorage);
    v258 = swift_isUniquelyReferenced_nonNull_native();
    *&v443 = _swiftEmptyDictionarySingleton;
    v259 = v425;
    sub_100E9CD68(v257, sub_100E8FDF4, 0, v258, &v443);
    v198 = v434;

    *&v428 = v443;
    v260 = sub_100BD5554(_swiftEmptyArrayStorage);
    v261 = swift_isUniquelyReferenced_nonNull_native();
    *&v443 = _swiftEmptyDictionarySingleton;
    sub_100E9CD68(v260, sub_100E8FDF4, 0, v261, &v443);
    v425 = v259;

    LODWORD(v414) = 0;
    LODWORD(v427) = 0;
    v433 = v443;
  }

  else
  {
    LODWORD(v414) = 0;
    LODWORD(v427) = 0;
    v433 = _swiftEmptyDictionarySingleton;
    *&v428 = _swiftEmptyDictionarySingleton;
  }

LABEL_85:
  v410 = v194;
  v262 = v194 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v411 = v262;
  v263 = v415;
  sub_10000C83C(v262, v415, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  sub_100026028(v263, type metadata accessor for CRLBoardCRDTData);
  v264 = v443;
  v265 = v416;
  sub_10000C83C(v390, v416, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_100026028(v265, type metadata accessor for CRLBoardCRDTData);
  if (v264 == v443)
  {

LABEL_88:
    v267 = v412;
    sub_10000C83C(v411 + *(v198 + 32), v412, type metadata accessor for CRLSharedBoardMetadataCRDTData);
    v268 = v198;
    sub_1005B981C(&qword_101A2C810, &unk_101480B50);
    CRRegister.wrappedValue.getter();
    sub_100026028(v267, type metadata accessor for CRLSharedBoardMetadataCRDTData);
    v269 = v443;
    v270 = *(v268 + 32);
    v271 = v390;
    v272 = v413;
    sub_10000C83C(&v390[v270], v413, type metadata accessor for CRLSharedBoardMetadataCRDTData);
    CRRegister.wrappedValue.getter();
    sub_100026028(v272, type metadata accessor for CRLSharedBoardMetadataCRDTData);
    LODWORD(v412) = v269 ^ v443;
    goto LABEL_90;
  }

  v266 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v266)
  {
    goto LABEL_88;
  }

  LODWORD(v412) = 1;
  v271 = v390;
LABEL_90:
  v94 = v438;
  v273 = v410;
  v274 = sub_10001FF1C() < v437;
  if (v431 == 2)
  {
    swift_retain_n();
  }

  else
  {
    v275 = v271;
    v276 = v449;
    sub_10000C83C(v275, v449, type metadata accessor for CRLBoardCRDTData);
    swift_beginAccess();
    sub_1000066D0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);
    swift_retain_n();
    v277 = v406;
    CRStruct_6.merge(_:)();
    sub_100026028(v276, type metadata accessor for CRLBoardCRDTData);
    (*(v407 + 8))(v277, v408);
    swift_endAccess();
    v278 = *(v94 + 40);
    v447[0] = *(v94 + 24);
    v447[1] = v278;
    v448 = *(v94 + 56);
    sub_1012F22F0(v447);
    v94 = v273;
  }

  v97 = v387;
  LODWORD(v413) = v274;
  if (v436)
  {
    if ((v427 & 1) == 0)
    {

      v279 = sub_100BD5554(_swiftEmptyArrayStorage);
      v280 = v433;
      v281 = swift_isUniquelyReferenced_nonNull_native();
      *&v443 = v280;
      v282 = v425;
      sub_100E9CD68(v279, sub_100E8FDF4, 0, v281, &v443);
      v425 = v282;

      v97 = v387;

      LODWORD(v427) = 0;
      v433 = v443;
LABEL_12:
      LODWORD(v414) = 1;
      goto LABEL_13;
    }

    LODWORD(v427) = 1;
  }

  else
  {
  }

LABEL_13:
  v416 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime;
  v7 = *(v97 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime);
  v98 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v436 = v98;
  v99 = v449;
  *&v437 = type metadata accessor for CRLBoardCRDTData;
  sub_10000C83C(v94 + v98, v449, type metadata accessor for CRLBoardCRDTData);
  v415 = sub_1005B981C(&qword_1019F4858, &unk_10146C6D0);
  CRMaxRegister.wrappedValue.getter();
  v438 = type metadata accessor for CRLBoardCRDTData;
  sub_100026028(v99, type metadata accessor for CRLBoardCRDTData);
  v8 = *&v443;
  v100 = *(v94 + 56);
  v101 = v97 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
  v102 = *(v94 + 40);
  *v101 = *(v94 + 24);
  *(v101 + 16) = v102;
  *(v101 + 32) = v100;
  sub_10000C83C(v94 + v98, v99, type metadata accessor for CRLBoardCRDTData);
  v103 = v439;
  CRRegister.wrappedValue.getter();
  sub_100026028(v99, type metadata accessor for CRLBoardCRDTData);
  v104 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  v105 = v387;
  swift_beginAccess();
  v106 = v430[5];
  v106(v105 + v104, v103, v432);
  swift_endAccess();
  sub_10000C83C(v94 + v436, v99, v437);
  type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
  CRRegister.wrappedValue.getter();
  sub_100026028(v99, v438);
  v107 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
  swift_beginAccess();
  v106(v105 + v107, v103, v432);
  swift_endAccess();
  v438 = v94;
  v108 = v436;
  v109 = v429;
  sub_10000C83C(v94 + v436, v429, v437);
  if (qword_1019F1520 != -1)
  {
LABEL_151:
    swift_once();
  }

  v110 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v110, qword_101AD6348);
  sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);
  v111 = v425;
  v112 = CRDT.serializedData(_:version:)();
  v114 = v389;
  if (v111)
  {

    sub_100026028(v109, type metadata accessor for CRLBoardCRDTData);

    v115 = v449;
    sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
    v116 = v439;
    CRRegister.wrappedValue.getter();
    sub_100026028(v115, type metadata accessor for CRLBoardCRDTData);

    v117 = v435;
    sub_10084BD4C(v116, v388, v114, v435);
    swift_beginAccess();
    sub_101270EDC(v117, 1);
    swift_endAccess();
    v85 = type metadata accessor for CRLBoardIdentifier;
    v84 = v117;
    return sub_100026028(v84, v85);
  }

  v138 = v112;
  v139 = v113;
  *&v437 = 0;
  sub_100026028(v109, type metadata accessor for CRLBoardCRDTData);
  v140 = v420;
  v141 = *v420;
  v142 = v420[1];
  *v420 = v138;
  v140[1] = v139;
  sub_100025870(v141, v142);
  v143 = v438;
  v144 = v449;
  sub_10000C83C(v108 + v438, v449, type metadata accessor for CRLBoardCRDTData);
  CRMaxRegister.wrappedValue.getter();
  sub_100026028(v144, type metadata accessor for CRLBoardCRDTData);
  v145 = v387;
  *(v387 + v416) = v443;
  v146 = v418;
  *(v145 + v422) = v419;
  *(v145 + v146) = v427 & 1;
  v147 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable;
  LODWORD(v432) = *(v145 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable);
  sub_10000C83C(v108 + v143, v144, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  v148 = v145;
  v69 = v389;
  sub_100026028(v144, type metadata accessor for CRLBoardCRDTData);
  v149 = v443;
  *(v148 + v147) = v443;
  if ((v432 & 1) != 0 || !v149)
  {
LABEL_65:
    v240 = v423;
    if (v423 >> 60 != 15)
    {
      v241 = (v148 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
      v242 = *(v148 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
      v243 = v241[1];
      v244 = v417;
      *v241 = v417;
      v241[1] = v240;
      sub_100024E98(v244, v240);
      v245 = v242;
      v148 = v387;
      sub_100025870(v245, v243);
    }

    v246 = v440;
    v247 = v437;
    sub_100E02F80(v148);
    v31 = v439;
    v248 = v433;
    if (v247)
    {

      v249 = v449;
      sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
      CRRegister.wrappedValue.getter();
      sub_100026028(v249, type metadata accessor for CRLBoardCRDTData);

      v250 = v435;
      sub_10084BD4C(v31, v388, v69, v435);
      swift_beginAccess();
      sub_101270EDC(v250, 1);
      swift_endAccess();
      return sub_100026028(v250, type metadata accessor for CRLBoardIdentifier);
    }

    if (v431)
    {
      v251 = sub_100BD5554(_swiftEmptyArrayStorage);
      v252 = sub_100DCB0EC(v251);

      v436 = sub_1012D944C(v253, v252);
    }

    else
    {
      v436 = _swiftEmptySetSingleton;
    }

    v283 = v388;
    v284 = v449;
    sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_100026028(v284, type metadata accessor for CRLBoardCRDTData);

    sub_10084BD4C(v31, v283, v69, v421);
    swift_storeEnumTagMultiPayload();
    if (*(v428 + 16))
    {
      goto LABEL_103;
    }

    v285 = v414;
    if (*(v248 + 16))
    {
      v285 = 1;
    }

    if (v285)
    {
LABEL_103:
      v286 = v69;
      v287 = v414;
      v289 = sub_100DF6D54(v428, v248, v414);
      v290 = v288;
      if (v287)
      {
        sub_100DF8718(v421);
        v69 = v286;
      }

      else
      {
        *&v437 = 0;
        v291 = *(v288 + 16);
        if (v291)
        {
          v292 = sub_100B39C98(*(v288 + 16), 0);
          *&v434 = sub_100B3C454(&v443, v292 + 4, v291, v290);
          v293 = v443;

          result = sub_100035F90(v293);
          if (v434 != v291)
          {
            __break(1u);
            goto LABEL_158;
          }

          v31 = v439;
          v283 = v388;
          v69 = v389;
        }

        else
        {
          v292 = _swiftEmptyArrayStorage;
          v69 = v286;
        }

        v304 = v437;
        sub_100DF8FA8(v421, v292);
        if (v304)
        {

          sub_100026028(v421, type metadata accessor for CRLAssetReferrerIdentifier);
          v305 = v449;
          sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
          CRRegister.wrappedValue.getter();
          sub_100026028(v305, type metadata accessor for CRLBoardCRDTData);

          v306 = v435;
          sub_10084BD4C(v31, v283, v69, v435);
          swift_beginAccess();
          sub_101270EDC(v306, 1);
          swift_endAccess();
          return sub_100026028(v306, type metadata accessor for CRLBoardIdentifier);
        }
      }

      sub_100DF9920(v421, v289, 1);

      v246 = v440;
    }

    else
    {
    }

    sub_100026028(v421, type metadata accessor for CRLAssetReferrerIdentifier);
    v307 = v449;
    sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_100026028(v307, type metadata accessor for CRLBoardCRDTData);

    sub_10084BD4C(v31, v283, v69, v405);
    swift_storeEnumTagMultiPayload();
    v308 = *(v436 + 16);
    if (v308)
    {
      v309 = sub_100B39C98(*(v436 + 16), 0);
      v310 = sub_100B3B5B0(&v443, v309 + 4, v308, v436);
      sub_100035F90(v443);
      if (v310 == v308)
      {
LABEL_121:
        v311 = v405;
        sub_100DF4A2C(v405, v309, 0);
        sub_100026028(v311, type metadata accessor for CRLAssetReferrerIdentifier);

        v312 = *(v438 + 3);

        v313 = sub_10001FF1C();

        if (v313 >= v312)
        {
          v314 = _swiftEmptySetSingleton;
          v446 = _swiftEmptySetSingleton;
          v71 = 0;
          if (v412)
          {
            *&v437 = 0;
            goto LABEL_132;
          }

          goto LABEL_135;
        }

        v314 = _swiftEmptySetSingleton;
        v71 = 0;
        if ((v413 & 1) == 0)
        {
          *&v437 = 0;
          goto LABEL_131;
        }

        v446 = _swiftEmptySetSingleton;
        if (v412)
        {
          *&v437 = 0;
          LODWORD(v413) = 0;
          goto LABEL_132;
        }

LABEL_134:
        LODWORD(v413) = 0;
LABEL_135:
        v350 = v388;
        if (v7 != v8)
        {
          *&v437 = v71;
          sub_1005B981C(&unk_101A19BD0, &qword_10146FA00);
          v351 = (*(v392 + 80) + 32) & ~*(v392 + 80);
          v352 = swift_allocObject();
          *(v352 + 16) = xmmword_10146C6B0;
          v353 = v449;
          sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
          CRRegister.wrappedValue.getter();
          sub_100026028(v353, type metadata accessor for CRLBoardCRDTData);

          sub_10084BD4C(v31, v350, v69, v352 + v351);
          v354 = sub_1005BF2F8(v352);
          swift_setDeallocating();
          sub_100026028(v352 + v351, type metadata accessor for CRLBoardIdentifier);
          swift_deallocClassInstance();
          v355 = sub_100BD9514(_swiftEmptyArrayStorage);
          if (v354[2])
          {
            sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
            v436 = static OS_dispatch_queue.main.getter();
            v356 = swift_allocObject();
            v357 = v440;
            *(v356 + 16) = v440;
            *(v356 + 24) = v354;
            *(v356 + 32) = 0;
            *(v356 + 40) = v355;
            *&v445[0] = sub_10007A264;
            *(&v445[0] + 1) = v356;
            *&v443 = _NSConcreteStackBlock;
            *(&v443 + 1) = *"";
            *&v444 = sub_100007638;
            *(&v444 + 1) = &unk_1018A5258;
            v358 = _Block_copy(&v443);
            v359 = v357;

            v360 = v397;
            static DispatchQoS.unspecified.getter();
            *&v443 = _swiftEmptyArrayStorage;
            sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
            sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
            v361 = v398;
            v362 = v395;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v363 = v436;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v358);

            (*(v401 + 8))(v361, v362);
            (*(v399 + 8))(v360, v400);
          }

          else
          {
LABEL_147:
          }

          goto LABEL_148;
        }

        v133 = v438;
LABEL_27:
        v134 = v449;
        sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
        v135 = v439;
        CRRegister.wrappedValue.getter();
        sub_100026028(v134, type metadata accessor for CRLBoardCRDTData);
        v136 = v389;

        v137 = v435;
        sub_10084BD4C(v135, v388, v136, v435);
        swift_beginAccess();
        sub_101270EDC(v137, 1);
        swift_endAccess();

        sub_100026028(v137, type metadata accessor for CRLBoardIdentifier);
        return v133;
      }

      __break(1u);
    }

    v309 = _swiftEmptyArrayStorage;
    goto LABEL_121;
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v151 = UUID.uuidString.getter();
  v153 = v152;
  *(inited + 56) = &type metadata for String;
  v154 = sub_1000053B0();
  *(inited + 32) = v151;
  v436 = inited + 32;
  *&v434 = v154;
  *(inited + 64) = v154;
  *(inited + 40) = v153;
  v429 = objc_opt_self();
  v155 = [v429 _atomicIncrementAssertCount];
  *&v443 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v443, "Non-discardable board became discardable for %{public}@. This can cause data loss.", 82, 2u);
  StaticString.description.getter("_mergeBoardData(_:syncChangeTrackingType:syncDataToOverwrite:canSaveNewBoardOrUndeleteTombstone:incomingDataIsServerData:)", 122, 2);
  v432 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v156 = String._bridgeToObjectiveC()();

  v157 = [v156 lastPathComponent];

  v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v430 = v159;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v160 = static OS_os_log.crlAssert;
  v161 = swift_initStackObject();
  *(v161 + 16) = xmmword_10146CA70;
  *(v161 + 56) = &type metadata for Int32;
  *(v161 + 64) = &protocol witness table for Int32;
  *(v161 + 32) = v155;
  v162 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v161 + 96) = v162;
  v163 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  v164 = v432;
  *(v161 + 72) = v432;
  v165 = v434;
  *(v161 + 136) = &type metadata for String;
  *(v161 + 144) = v165;
  *(v161 + 104) = v163;
  *(v161 + 112) = v158;
  *(v161 + 120) = v430;
  *(v161 + 176) = &type metadata for UInt;
  *(v161 + 184) = &protocol witness table for UInt;
  *(v161 + 152) = 4152;
  v166 = v443;
  *(v161 + 216) = v162;
  *(v161 + 224) = v163;
  *(v161 + 192) = v166;
  v167 = v164;
  v168 = v166;
  v169 = static os_log_type_t.error.getter();
  sub_100005404(v160, &_mh_execute_header, v169, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v161);
  swift_setDeallocating();
  v432 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v170 = static os_log_type_t.error.getter();
  sub_100005404(v160, &_mh_execute_header, v170, "Non-discardable board became discardable for %{public}@. This can cause data loss.", 82, 2, inited);

  type metadata accessor for __VaListBuilder();
  v87 = swift_allocObject();
  v87[2] = 8;
  v87[3] = 0;
  v108 = v87 + 3;
  v87[4] = 0;
  v87[5] = 0;
  *&v434 = *(inited + 16);
  if (!v434)
  {
LABEL_64:
    v236 = __VaListBuilder.va_list()();
    StaticString.description.getter("_mergeBoardData(_:syncChangeTrackingType:syncDataToOverwrite:canSaveNewBoardOrUndeleteTombstone:incomingDataIsServerData:)", 122, 2);
    v237 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v238 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Non-discardable board became discardable for %{public}@. This can cause data loss.", 82, 2);
    v239 = String._bridgeToObjectiveC()();

    [v429 handleFailureInFunction:v237 file:v238 lineNumber:4152 isFatal:0 format:v239 args:v236];

    swift_setDeallocating();
    swift_arrayDestroy();
    v69 = v389;
    v148 = v387;
    goto LABEL_65;
  }

  v171 = 0;
  while (1)
  {
    v109 = inited;
    v172 = (v436 + 40 * v171);
    v132 = v172[3];
    v91 = v172[4];
    sub_100020E58(v172, v132);
    v173 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v131 = *v108;
    v174 = *(v173 + 16);
    v175 = __OFADD__(*v108, v174);
    v176 = *v108 + v174;
    if (v175)
    {
      __break(1u);
      goto LABEL_147;
    }

    v177 = v87[4];
    if (v177 >= v176)
    {
      goto LABEL_49;
    }

    if (v177 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v91 = v87[5];
    if (2 * v177 > v176)
    {
      v176 = 2 * v177;
    }

    v87[4] = v176;
    if ((v176 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_150;
    }

    v132 = v173;
    v178 = swift_slowAlloc();
    v179 = v178;
    v87[5] = v178;
    if (v91)
    {
      if (v178 != v91 || v178 >= v91 + 8 * v131)
      {
        memmove(v178, v91, 8 * v131);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v173 = v132;
LABEL_49:
      v179 = v87[5];
      if (!v179)
      {
        goto LABEL_56;
      }

      goto LABEL_50;
    }

    v173 = v132;
    if (!v179)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_50:
    inited = v109;
    v181 = *(v173 + 16);
    if (v181)
    {
      break;
    }

LABEL_34:

    if (++v171 == v434)
    {
      goto LABEL_64;
    }
  }

  v182 = (v173 + 32);
  v183 = *v108;
  while (1)
  {
    v184 = *v182++;
    v179[v183] = v184;
    v183 = *v108 + 1;
    if (__OFADD__(*v108, 1))
    {
      break;
    }

    *v108 = v183;
    if (!--v181)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_109:
  *(v404 + *(v403 + 36)) = _swiftEmptyDictionarySingleton;
  LOBYTE(v441[0]) = 0;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v441[0]) = 1;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v441[0]) = 1;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v441[0]) = 0;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v441[0]) = 0;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v441[0]) = 1;
  v443 = 0x3FF0000000000000uLL;
  v444 = 0uLL;
  LOBYTE(v445[0]) = 1;
  *(v445 + 8) = v434;
  *(&v445[1] + 8) = v434;
  BYTE8(v445[2]) = 0;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v441[2] = v445[0];
  v442[0] = v445[1];
  *(v442 + 9) = *(&v445[1] + 9);
  v441[0] = v443;
  v441[1] = v444;
  sub_100EA2550();
  v294 = v171;
  v295 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v297 = v449;
  v298 = v430;
  if (v294)
  {
    sub_100026028(v404, type metadata accessor for CRLUserBoardMetadataCRDTData);

    swift_setDeallocating();
    sub_100026028(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], type metadata accessor for CRLBoardIdentifier);

    v299 = v298[1];
    v300 = v432;
    v299(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID], v432);
    v299(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID], v300);
    sub_100025870(*&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data], *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8]);
    sub_100025870(*&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData], *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8]);
    sub_100025870(*&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData], *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8]);
    swift_deallocClassInstance();
    sub_10002640C(v433, v436);
    sub_1006D62E4(&v443);
    sub_10000C83C(v390, v297, type metadata accessor for CRLBoardCRDTData);
    v301 = v439;
    CRRegister.wrappedValue.getter();
    sub_100026028(v297, type metadata accessor for CRLBoardCRDTData);
    v302 = v389;

    v303 = v435;
    sub_10084BD4C(v301, v388, v302, v435);
    swift_beginAccess();
    sub_101270EDC(v303, 1);
    swift_endAccess();
    v84 = v303;
    goto LABEL_63;
  }

  *&v428 = v295;
  v429 = v296;

  sub_1006D62E4(&v443);
  sub_10000C83C(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], v402, type metadata accessor for CRLBoardIdentifier);
  v315 = v396;
  sub_10000C83C(v404, v396, type metadata accessor for CRLUserBoardMetadataCRDTData);
  sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCCE0);
  v316 = CRDT.serializedData(_:version:)();
  *&v437 = 0;
  *&v427 = 0x1000000000000;
  v422 = v316;
  v420 = v317;
  CRRegister.wrappedValue.getter();
  LODWORD(v419) = LOBYTE(v441[0]);
  CRRegister.wrappedValue.getter();
  v318 = v441[0];
  CRRegister.wrappedValue.getter();
  LODWORD(v426) = LOBYTE(v441[0]);
  CRRegister.wrappedValue.getter();
  LODWORD(v423) = LOBYTE(v441[0]);
  CRRegister.wrappedValue.getter();
  sub_100026028(v315, type metadata accessor for CRLUserBoardMetadataCRDTData);
  v319 = v441[0];
  v320 = v393;
  sub_100025668(v402, v393, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for CRLUserBoardMetadataDatabaseRow(0);
  v321 = swift_allocObject();
  v322 = (v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
  *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData) = v434;
  sub_100025668(v320, v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v323 = (v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
  v324 = v420;
  *v323 = v422;
  v323[1] = v324;
  *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite) = v419;
  *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors) = v318;
  v325 = (v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
  v326 = v429;
  *v325 = v428;
  v325[1] = v326;
  v327 = v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion;
  *v327 = 0;
  *(v327 + 8) = 1;
  *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = 1;
  v328 = *v322;
  v329 = v322[1];
  *v322 = v434;
  sub_100025870(v328, v329);
  *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity) = v427;
  *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) = v426;
  *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled) = v423;
  *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen) = v319;
  v330 = v437;
  sub_100E064E4(v321);
  v331 = v330;
  if (v330)
  {
    sub_10002640C(v433, v436);
    swift_setDeallocating();
    sub_100026028(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
    sub_10002640C(*(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
    sub_100025870(*(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
    swift_deallocClassInstance();
    swift_setDeallocating();
    sub_100026028(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier], type metadata accessor for CRLBoardIdentifier);

    v332 = v430[1];
    v333 = v432;
    v332(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID], v432);
    v332(&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID], v333);
    sub_100025870(*&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data], *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8]);
    sub_100025870(*&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData], *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8]);
    sub_100025870(*&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData], *&v109[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8]);
    swift_deallocClassInstance();
    sub_100026028(v404, type metadata accessor for CRLUserBoardMetadataCRDTData);
    v334 = v449;
    sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
    v335 = v439;
    CRRegister.wrappedValue.getter();
    sub_100026028(v334, type metadata accessor for CRLBoardCRDTData);
    v336 = v389;

    v337 = v435;
    sub_10084BD4C(v335, v388, v336, v435);
    swift_beginAccess();
    sub_101270EDC(v337, 1);
    swift_endAccess();
    return sub_100026028(v337, type metadata accessor for CRLBoardIdentifier);
  }

  v364 = _swiftEmptyArrayStorage;
  v365 = sub_100BD5554(_swiftEmptyArrayStorage);
  v366 = v449;
  sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
  v367 = v439;
  CRRegister.wrappedValue.getter();
  sub_100026028(v366, type metadata accessor for CRLBoardCRDTData);
  v368 = v389;

  v369 = v391;
  sub_10084BD4C(v367, v388, v368, v391);
  swift_storeEnumTagMultiPayload();
  v370 = sub_100BD5554(_swiftEmptyArrayStorage);
  if (!*(v370 + 16) && !*(v365 + 16))
  {
    *&v437 = 0;
    goto LABEL_154;
  }

  v432 = v370;
  *&v434 = v365;
  v371 = sub_100DF6D54(v370, v365, 0);
  v373 = v371;
  v374 = v372[2];
  v430 = v372;
  if (!v374)
  {
    goto LABEL_144;
  }

  v375 = v372;
  v429 = v371;
  *&v437 = 0;
  *&v428 = sub_100B39C98(v374, 0);
  v376 = sub_100B3C454(v441, (v428 + 32), v374, v375);
  v377 = *&v441[0];

  result = sub_100035F90(v377);
  if (v376 == v374)
  {
    v331 = v437;
    v369 = v391;
    v373 = v429;
    v364 = v428;
LABEL_144:
    sub_100DF8FA8(v369, v364);
    if (v331)
    {
      *&v437 = v331;

      v378 = v439;
      v380 = v389;
      v379 = v390;
      v381 = v404;
      sub_10002640C(v433, v436);
      sub_100026028(v369, type metadata accessor for CRLAssetReferrerIdentifier);
      sub_100026028(v381, type metadata accessor for CRLUserBoardMetadataCRDTData);
      v382 = v379;
      v383 = v449;
      sub_10000C83C(v382, v449, type metadata accessor for CRLBoardCRDTData);
      CRRegister.wrappedValue.getter();
      sub_100026028(v383, type metadata accessor for CRLBoardCRDTData);

      v384 = v435;
      sub_10084BD4C(v378, v388, v380, v435);
      swift_beginAccess();
      sub_101270EDC(v384, 1);
      swift_endAccess();
      v85 = type metadata accessor for CRLBoardIdentifier;
      v84 = v384;
      return sub_100026028(v84, v85);
    }

    sub_100DF9920(v369, v373, v431);
    *&v437 = 0;

LABEL_154:

    sub_100026028(v391, type metadata accessor for CRLAssetReferrerIdentifier);
    v385 = *(v438 + 3);

    v386 = sub_10001FF1C();
    sub_10002640C(v433, v436);

    swift_setDeallocating();
    sub_100026028(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
    sub_10002640C(*(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
    sub_100025870(*(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v321 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
    swift_deallocClassInstance();
    sub_100026028(v404, type metadata accessor for CRLUserBoardMetadataCRDTData);

    if (v386 >= v385)
    {
      LODWORD(v413) = 0;
      v314 = _swiftEmptySetSingleton;
      v446 = _swiftEmptySetSingleton;
      v246 = v440;
    }

    else
    {
      v246 = v440;
LABEL_131:
      v446 = _swiftEmptySetSingleton;
      v338 = v449;
      sub_10000C83C(v390, v449, type metadata accessor for CRLBoardCRDTData);
      v339 = v439;
      CRRegister.wrappedValue.getter();
      sub_100026028(v338, type metadata accessor for CRLBoardCRDTData);
      v340 = v389;

      v341 = v394;
      sub_10084BD4C(v339, v388, v340, v394);
      v342 = v435;
      sub_100031F10(v435, v341);
      sub_100026028(v342, type metadata accessor for CRLBoardIdentifier);
      LODWORD(v413) = 2;
      v314 = v446;
    }

LABEL_132:
    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v436 = static OS_dispatch_queue.main.getter();
    v343 = swift_allocObject();
    *(v343 + 16) = _swiftEmptySetSingleton;
    *(v343 + 24) = _swiftEmptySetSingleton;
    *(v343 + 32) = v314;
    *(v343 + 40) = 0;
    *(v343 + 48) = v246;
    *&v445[0] = sub_100079418;
    *(&v445[0] + 1) = v343;
    *&v443 = _NSConcreteStackBlock;
    *(&v443 + 1) = *"";
    *&v444 = sub_100007638;
    *(&v444 + 1) = &unk_1018A52A8;
    v344 = _Block_copy(&v443);
    v345 = v246;

    v346 = v397;
    static DispatchQoS.unspecified.getter();
    *&v443 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    v347 = v398;
    v348 = v395;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v349 = v436;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v344);

    (*(v401 + 8))(v347, v348);
    (*(v399 + 8))(v346, v400);
LABEL_148:
    v133 = v438;
    goto LABEL_27;
  }

LABEL_158:
  __break(1u);
  return result;
}

uint64_t sub_100E02DAC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10000C83C(v1 + v10, v9, type metadata accessor for CRLBoardCRDTData);
  v11 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10000C83C(a1 + v11, v6, type metadata accessor for CRLBoardCRDTData);
  sub_1000066D0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);
  v12 = CRStruct_6.hasDelta(from:)();
  sub_100026028(v6, type metadata accessor for CRLBoardCRDTData);
  sub_100026028(v9, type metadata accessor for CRLBoardCRDTData);
  v13 = 2;
  if ((v12 & 1) == 0)
  {
    v13 = 0;
  }

  if (v2[3] != a1[3])
  {
    v13 |= 8uLL;
  }

  if (v2[4] != a1[4])
  {
    v13 |= 0x20uLL;
  }

  if (v2[5] == a1[5])
  {
    return v13;
  }

  else
  {
    return v13 | 0x40;
  }
}

void sub_100E02F80(unint64_t a1)
{
  v147 = a1;
  v2 = type metadata accessor for UUID();
  v144 = *(v2 - 8);
  __chkstk_darwin(v2);
  v140 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v5 + 104);
  v146 = v5 + 104;
  (v11)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v12 = v9;
  v13 = _dispatchPreconditionTest(_:)();
  v15 = *(v5 + 8);
  v14 = v5 + 8;
  v145 = v15;
  v15(v8, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v143 = v2;
  v148 = v10;
  v149 = v11;
  v150 = 0;
  v151 = 0xE000000000000000;
  _StringGuts.grow(_:)(162);
  v16._countAndFlagsBits = 0x20455441445055;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x736472616F62;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x2054455320;
  v18._object = 0xE500000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x656E6961746E6F63;
  v19._object = 0xEE00646975755F72;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x202C3F203D20;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD000000000000018;
  v21._object = 0x80000001015A34C0;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x202C3F203D20;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 1635017060;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x202C3F203D20;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x6E6F7473626D6F74;
  v25._object = 0xEA00000000006465;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x202C3F203D20;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._object = 0x80000001015A33D0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x202C3F203D20;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000018;
  v29._object = 0x80000001015A37D0;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C3F203D20;
  v30._object = 0xE600000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x7461645F636E7973;
  v31._object = 0xE900000000000061;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x202C3F203D20;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);
  v33._object = 0xEE00657461645F65;
  v33._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x202C3F203D20;
  v34._object = 0xE600000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001ALL;
  v35._object = 0x80000001015A37F0;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x202C3F203D20;
  v36._object = 0xE600000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x5F65726168736B63;
  v37._object = 0xEC00000061746164;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x202C3F203D20;
  v38._object = 0xE600000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD000000000000014;
  v39._object = 0x80000001015A3590;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x202C3F203D20;
  v40._object = 0xE600000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD000000000000012;
  v41._object = 0x80000001015A3810;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x202C3F203D20;
  v42._object = 0xE600000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x61637369645F7369;
  v43._object = 0xEE00656C62616472;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x202C3F203D20;
  v44._object = 0xE600000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0xD00000000000002DLL;
  v45._object = 0x80000001015A3760;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x202C3F203D20;
  v46._object = 0xE600000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD000000000000026;
  v47._object = 0x80000001015A33F0;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x202C3F203D20;
  v48._object = 0xE600000000000000;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0xD00000000000001BLL;
  v49._object = 0x80000001015A3790;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x202C3F203D20;
  v50._object = 0xE600000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0xD000000000000015;
  v51._object = 0x80000001015A3830;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x48570A203F203D20;
  v52._object = 0xEC00000020455245;
  String.append(_:)(v52);
  v53._object = 0x8000000101585360;
  v53._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 1059077408;
  v54._object = 0xE400000000000000;
  String.append(_:)(v54);
  v55 = v150;
  v56 = v151;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v58 = v142;
  v59 = sub_10001CC04(v57, v55, v56);

  if (v58)
  {
    return;
  }

  v139 = 0;
  v60 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  v61 = v147;
  swift_beginAccess();
  v62 = v140;
  v138 = v144[2];
  v63 = v138(v140, v61 + v60, v143);
  v64 = UUID.crl_data()(v63);
  v66 = v65;
  v67 = *(*(v59 + 16) + 32);
  *v8 = v67;
  v149(v8, v148, v4);
  v68 = v67;
  LOBYTE(v67) = _dispatchPreconditionTest(_:)();
  v141 = v4;
  v142 = v14;
  v145(v8, v4);
  if ((v67 & 1) == 0)
  {
    goto LABEL_25;
  }

  v69 = v139;
  sub_100DCCAB4(v64, v66, v59, 1);
  v139 = v69;
  sub_10002640C(v64, v66);
  v70 = v143;
  v71 = v144[1];
  ++v144;
  v71(v62, v143);
  v72 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
  v73 = v147;
  swift_beginAccess();
  v74 = v138(v62, v73 + v72, v70);
  v75 = UUID.crl_data()(v74);
  v77 = v76;
  v78 = *(*(v59 + 16) + 32);
  *v8 = v78;
  v79 = v141;
  v149(v8, v148, v141);
  v80 = v78;
  LOBYTE(v73) = _dispatchPreconditionTest(_:)();
  v145(v8, v79);
  if ((v73 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v81 = v139;
  sub_100DCCAB4(v75, v77, v59, 2);
  v139 = v81;
  sub_10002640C(v75, v77);
  v71(v62, v143);
  v82 = v147;
  v83 = *(v147 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v84 = *(v147 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  sub_100024E84(v83, v84);
  sub_10089BB64(v83, v84, 3);
  sub_100025870(v83, v84);
  sub_10089B9A4(*(v82 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone), 4);
  sub_100034254(*(v82 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges), 5);
  sub_10089B9A4(*(v82 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges), 6);
  v85 = *(v82 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
  v86 = *(v82 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8);
  sub_100024E84(v85, v86);
  sub_10089BB64(v85, v86, 7);
  v87 = v141;
  sub_100025870(v85, v86);
  v88 = *(v82 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate);
  v89 = *(*(v59 + 16) + 32);
  *v8 = v89;
  v90 = v148;
  v149(v8, v148, v87);
  v91 = v89;
  LOBYTE(v89) = _dispatchPreconditionTest(_:)();
  v92 = v87;
  v93 = v145;
  v145(v8, v92);
  if ((v89 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  swift_beginAccess();
  sqlite3_bind_double(*(v59 + 24), 8, v88);
  v94 = v93;
  v95 = v147;
  sub_10089B9A4(*(v147 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted), 9);
  v96 = *(v95 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
  v97 = *(v95 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
  sub_100024E84(v96, v97);
  sub_10089BB64(v96, v97, 10);
  v98 = v96;
  v99 = v141;
  sub_100025870(v98, v97);
  v100 = v95 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
  sub_100034254(*(v95 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions), 11);
  v101 = *(v95 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime);
  v102 = *(*(v59 + 16) + 32);
  *v8 = v102;
  v149(v8, v90, v99);
  v103 = v102;
  LOBYTE(v102) = _dispatchPreconditionTest(_:)();
  v144 = v8;
  v94(v8, v99);
  if ((v102 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sqlite3_bind_double(*(v59 + 24), 12, v101);
  v104 = v147;
  sub_10089B9A4(*(v147 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable), 13);
  sub_100034254(*(v100 + 8), 14);
  sub_100034254(*(v100 + 16), 15);
  if (*(v100 + 32))
  {
    v105 = *(*(v59 + 16) + 32);
    v106 = v144;
    *v144 = v105;
    v107 = v149;
    v149(v106, v148, v99);
    v108 = v105;
    LOBYTE(v105) = _dispatchPreconditionTest(_:)();
    v94(v106, v99);
    if (v105)
    {
      sqlite3_bind_null(*(v59 + 24), 16);
      goto LABEL_11;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_100034254(*(v100 + 24), 16);
  v107 = v149;
LABEL_11:
  sub_100034254(*(v104 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion), 17);
  v109 = v104 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v110 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v111 = v139;
  v112 = sub_10084DAE4(v109, *(v109 + *(v110 + 20)), *(v109 + *(v110 + 20) + 8));
  if (v111)
  {
    v114 = *(*(v59 + 16) + 32);
    v115 = v144;
    *v144 = v114;
    v107(v115, v148, v99);
    v116 = v114;
    v117 = _dispatchPreconditionTest(_:)();
    v112 = (v145)(v115, v99);
    if (v117)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v147 = v113;
  v118 = v107;
  v119 = v112;
  v120 = *(*(v59 + 16) + 32);
  v121 = v144;
  *v144 = v120;
  v118(v121, v148, v99);
  v122 = v120;
  v123 = _dispatchPreconditionTest(_:)();
  v145(v121, v99);
  if ((v123 & 1) == 0)
  {
    goto LABEL_30;
  }

  v124 = v147;
  sub_100DCCAB4(v119, v147, v59, 18);
  sub_10002640C(v119, v124);
  v125 = *(*(v59 + 16) + 32);
  *v121 = v125;
  v149(v121, v148, v99);
  v126 = v125;
  v127 = _dispatchPreconditionTest(_:)();
  v145(v121, v99);
  if ((v127 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v128 = *(v59 + 16);

  v129 = sub_10001CEC4(v128, v59);

  if (v129 != 101)
  {
    goto LABEL_19;
  }

  v130 = *(*(v59 + 16) + 32);
  *v121 = v130;
  v149(v121, v148, v99);
  v131 = v130;
  v129 = _dispatchPreconditionTest(_:)();
  v145(v121, v99);
  if ((v129 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    sub_10089C7D0();
    swift_allocError();
    *v132 = v129;
    *(v132 + 8) = 0xD000000000000016;
    *(v132 + 16) = 0x80000001015A46C0;
    swift_willThrow();
    v133 = *(*(v59 + 16) + 32);
    *v121 = v133;
    v149(v121, v148, v99);
    v134 = v133;
    v135 = _dispatchPreconditionTest(_:)();
    v145(v121, v99);
    if (v135)
    {
      goto LABEL_20;
    }

LABEL_32:
    __break(1u);
  }

LABEL_20:
  v136 = *(v59 + 24);
  if (v136)
  {
    sqlite3_finalize(v136);
    *(v59 + 24) = 0;
  }
}

void sub_100E03D90(uint64_t a1)
{
  v127 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v124 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v12 = v6 + 104;
  v11 = *(v6 + 104);
  v132 = enum case for DispatchPredicate.onQueue(_:);
  v131 = v11;
  v11(v9, v7);
  v13 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v14 = *(v6 + 8);
  v128 = v6 + 8;
  v129 = v5;
  v14(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v126 = v3;
  v125 = v2;
  v133 = 0;
  v134 = 0xE000000000000000;
  _StringGuts.grow(_:)(149);
  v15._countAndFlagsBits = 0x4920545245534E49;
  v15._object = 0xEC000000204F544ELL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x736472616F62;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._object = 0x8000000101585360;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x616E5F72656E776FLL;
  v20._object = 0xEA0000000000656DLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x656E6961746E6F63;
  v22._object = 0xEE00646975755F72;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000018;
  v24._object = 0x80000001015A34C0;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 1635017060;
  v26._object = 0xE400000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 8236;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x6E6F7473626D6F74;
  v28._object = 0xEA00000000006465;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._object = 0x80000001015A33D0;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x7461645F636E7973;
  v32._object = 0xE900000000000061;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 8236;
  v33._object = 0xE200000000000000;
  String.append(_:)(v33);
  v34._object = 0xEE00657461645F65;
  v34._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD00000000000001ALL;
  v36._object = 0x80000001015A37F0;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 8236;
  v37._object = 0xE200000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x5F65726168736B63;
  v38._object = 0xEC00000061746164;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 8236;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD000000000000014;
  v40._object = 0x80000001015A3590;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 8236;
  v41._object = 0xE200000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD000000000000012;
  v42._object = 0x80000001015A3810;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 8236;
  v43._object = 0xE200000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x61637369645F7369;
  v44._object = 0xEE00656C62616472;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 8236;
  v45._object = 0xE200000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD00000000000002DLL;
  v46._object = 0x80000001015A3760;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 8236;
  v47._object = 0xE200000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD000000000000026;
  v48._object = 0x80000001015A33F0;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 8236;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0xD00000000000001BLL;
  v50._object = 0x80000001015A3790;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 8236;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0xD000000000000015;
  v52._object = 0x80000001015A3830;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0xD00000000000003FLL;
  v53._object = 0x80000001015A4B00;
  String.append(_:)(v53);
  v54 = v133;
  v55 = v134;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v57 = v130;
  v58 = sub_10001CC04(v56, v54, v55);

  if (v57)
  {
    return;
  }

  v59 = v14;
  v60 = v127 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
  v61 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v62 = sub_10084DAE4(v60, *(v60 + *(v61 + 20)), *(v60 + *(v61 + 20) + 8));
  v64 = v63;
  v65 = *(*(v58 + 16) + 32);
  *v9 = v65;
  v66 = v129;
  v130 = v12;
  v131(v9, v132, v129);
  v67 = v65;
  LOBYTE(v65) = _dispatchPreconditionTest(_:)();
  v123 = v59;
  v59(v9, v66);
  if ((v65 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100DCCAB4(v62, v64, v58, 1);
  v121 = 0;
  sub_10002640C(v62, v64);
  v68 = v127;
  sub_1000285F8(*(v127 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName), *(v127 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName + 8), 2);
  v69 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  swift_beginAccess();
  v70 = v124;
  v122 = *(v126 + 16);
  v71 = v122(v124, v68 + v69, v125);
  v72 = UUID.crl_data()(v71);
  v74 = v73;
  v75 = *(*(v58 + 16) + 32);
  *v9 = v75;
  v76 = v129;
  v131(v9, v132, v129);
  v77 = v75;
  LOBYTE(v75) = _dispatchPreconditionTest(_:)();
  v123(v9, v76);
  if ((v75 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v78 = v121;
  sub_100DCCAB4(v72, v74, v58, 3);
  v120 = v78;
  sub_10002640C(v72, v74);
  v79 = *(v126 + 8);
  v80 = v125;
  v126 += 8;
  v121 = v79;
  v79(v70, v125);
  v81 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
  swift_beginAccess();
  v82 = v122(v70, v68 + v81, v80);
  v83 = UUID.crl_data()(v82);
  v85 = v84;
  v86 = *(*(v58 + 16) + 32);
  *v9 = v86;
  v87 = v129;
  v88 = v131;
  v131(v9, v132, v129);
  v89 = v86;
  LOBYTE(v86) = _dispatchPreconditionTest(_:)();
  v123(v9, v87);
  if ((v86 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v90 = v120;
  sub_100DCCAB4(v83, v85, v58, 4);
  v122 = v90;
  sub_10002640C(v83, v85);
  (v121)(v70, v125);
  v91 = *(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v92 = *(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  sub_100024E84(v91, v92);
  sub_10089BB64(v91, v92, 5);
  sub_100025870(v91, v92);
  sub_10089B9A4(*(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone), 6);
  sub_100034254(*(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges), 7);
  v93 = *(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
  v94 = *(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8);
  sub_100024E84(v93, v94);
  sub_10089BB64(v93, v94, 8);
  sub_100025870(v93, v94);
  v95 = *(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate);
  v96 = *(*(v58 + 16) + 32);
  *v9 = v96;
  v97 = v129;
  v88(v9, v132, v129);
  v98 = v96;
  LOBYTE(v96) = _dispatchPreconditionTest(_:)();
  v123(v9, v97);
  if ((v96 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v126 = v58 + 24;
  swift_beginAccess();
  sqlite3_bind_double(*(v58 + 24), 9, v95);
  sub_10089B9A4(*(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted), 10);
  v99 = v68;
  v100 = *(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
  v101 = *(v68 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
  sub_100024E84(v100, v101);
  sub_10089BB64(v100, v101, 11);
  sub_100025870(v100, v101);
  v102 = v99 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
  sub_100034254(*(v99 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions), 12);
  v103 = *(v99 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime);
  v104 = *(*(v58 + 16) + 32);
  *v9 = v104;
  v88(v9, v132, v97);
  v105 = v104;
  LOBYTE(v104) = _dispatchPreconditionTest(_:)();
  v106 = v123;
  v123(v9, v97);
  if ((v104 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sqlite3_bind_double(*(v58 + 24), 13, v103);
  sub_10089B9A4(*(v99 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable), 14);
  sub_100034254(*(v102 + 8), 15);
  sub_100034254(*(v102 + 16), 16);
  if (*(v102 + 32))
  {
    v107 = *(*(v58 + 16) + 32);
    *v9 = v107;
    v108 = v132;
    v131(v9, v132, v97);
    v109 = v107;
    LOBYTE(v107) = _dispatchPreconditionTest(_:)();
    v106(v9, v97);
    v110 = v126;
    if ((v107 & 1) == 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sqlite3_bind_null(*v126, 17);
  }

  else
  {
    sub_100034254(*(v102 + 24), 17);
    v108 = v132;
    v110 = v126;
  }

  sub_100034254(*(v127 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion), 18);
  v111 = *(*(v58 + 16) + 32);
  *v9 = v111;
  v131(v9, v108, v97);
  v112 = v111;
  LOBYTE(v111) = _dispatchPreconditionTest(_:)();
  v106(v9, v97);
  if ((v111 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v113 = *(v58 + 16);

  v114 = sub_10001CEC4(v113, v58);

  if (v114 != 101)
  {
    goto LABEL_20;
  }

  v115 = *(*(v58 + 16) + 32);
  *v9 = v115;
  v131(v9, v108, v97);
  v116 = v115;
  v114 = _dispatchPreconditionTest(_:)();
  v106(v9, v97);
  if ((v114 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    sub_10089C7D0();
    swift_allocError();
    *v117 = v114;
    *(v117 + 8) = 0xD000000000000016;
    *(v117 + 16) = 0x80000001015A4B40;
    swift_willThrow();
    v118 = *(*(v58 + 16) + 32);
    *v9 = v118;
    v131(v9, v108, v97);
    v119 = v118;
    LOBYTE(v118) = _dispatchPreconditionTest(_:)();
    v123(v9, v97);
    if (v118)
    {
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
  }

LABEL_21:
  if (*v110)
  {
    sqlite3_finalize(*v110);
    *v110 = 0;
  }
}

void sub_100E04BA4(char *a1)
{
  v209 = a1;
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v3 - 8);
  v179 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v197 = &v168 - v6;
  __chkstk_darwin(v7);
  v184 = &v168 - v8;
  __chkstk_darwin(v9);
  v199 = &v168 - v10;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v178 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v185 = &v168 - v14;
  __chkstk_darwin(v15);
  v183 = &v168 - v16;
  __chkstk_darwin(v17);
  v195 = &v168 - v18;
  __chkstk_darwin(v19);
  v194 = &v168 - v20;
  __chkstk_darwin(v21);
  *&v202 = &v168 - v22;
  __chkstk_darwin(v23);
  v213 = &v168 - v24;
  v25 = type metadata accessor for UUID();
  v207 = *(v25 - 8);
  __chkstk_darwin(v25);
  v177 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v196 = &v168 - v28;
  __chkstk_darwin(v29);
  v182 = &v168 - v30;
  __chkstk_darwin(v31);
  v198 = &v168 - v32;
  __chkstk_darwin(v33);
  v201 = &v168 - v34;
  __chkstk_darwin(v35);
  v37 = &v168 - v36;
  __chkstk_darwin(v38);
  v211 = &v168 - v39;
  *&v212 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v212);
  v180 = &v168 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v168 - v42;
  __chkstk_darwin(v44);
  v200 = (&v168 - v45);
  __chkstk_darwin(v46);
  v208 = &v168 - v47;
  __chkstk_darwin(v48);
  v50 = &v168 - v49;
  v51 = type metadata accessor for DispatchPredicate();
  v52 = *(v51 - 8);
  v53 = __chkstk_darwin(v51);
  v55 = (&v168 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v206 = v2;
  v56 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v55 = v56;
  v57 = *(v52 + 104);
  v189 = enum case for DispatchPredicate.onQueue(_:);
  v190 = v52 + 104;
  v188 = v57;
  v57(v55, v53);
  v186 = v56;
  LOBYTE(v56) = _dispatchPreconditionTest(_:)();
  v59 = *(v52 + 8);
  v58 = v52 + 8;
  v191 = v55;
  v193 = v51;
  v192 = v58;
  v187 = v59;
  v59(v55, v51);
  if ((v56 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_11;
  }

  v181 = v43;
  v210 = v25;
  v60 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  v61 = v209;
  swift_beginAccess();
  sub_10000C83C(&v61[v60], v50, type metadata accessor for CRLBoardCRDTData);
  v62 = v37;
  v63 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  v64 = v211;
  CRRegister.wrappedValue.getter();
  sub_100026028(v50, type metadata accessor for CRLBoardCRDTData);
  v205 = v60;
  v65 = v208;
  sub_10000C83C(&v61[v60], v208, type metadata accessor for CRLBoardCRDTData);
  v203 = v63;
  CRRegister.wrappedValue.getter();
  sub_100026028(v65, type metadata accessor for CRLBoardCRDTData);
  v67 = *&v61[OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName];
  v66 = *&v61[OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8];

  v68 = v213;
  sub_10084BD4C(v62, v67, v66, v213);
  v69 = v204;
  v70 = sub_100DECDC4(v64, v68);
  if (v69)
  {
    sub_100026028(v213, type metadata accessor for CRLBoardIdentifier);
    (*(v207 + 8))(v211, v210);
    return;
  }

  v174 = v70;
  sub_100026028(v213, type metadata accessor for CRLBoardIdentifier);
  v175 = v62;
  v213 = v67;
  v204 = *(v207 + 8);
  v176 = v207 + 8;
  v204(v211, v210);
  v211 = 0;
  v71 = v209;
  v72 = v200;
  sub_10000C83C(&v209[v205], v200, type metadata accessor for CRLBoardCRDTData);
  v173 = type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
  v73 = v201;
  CRRegister.wrappedValue.getter();
  v74 = v175;
  sub_100026028(v72, type metadata accessor for CRLBoardCRDTData);
  v75 = v208;
  sub_10000C83C(&v71[v205], v208, type metadata accessor for CRLBoardCRDTData);
  v76 = v213;
  CRRegister.wrappedValue.getter();
  sub_100026028(v75, type metadata accessor for CRLBoardCRDTData);

  v77 = v202;
  sub_10084BD4C(v74, v76, v66, v202);
  v78 = v211;
  v79 = sub_100DECDC4(v73, v77);
  v43 = v71;
  if (v78)
  {

    sub_100026028(v77, type metadata accessor for CRLBoardIdentifier);
    v204(v73, v210);
    return;
  }

  v80 = v79;
  v172 = v66;
  sub_100026028(v77, type metadata accessor for CRLBoardIdentifier);
  v81 = v210;
  v204(v73, v210);
  if (v174)
  {
    v82 = 0;
    goto LABEL_8;
  }

  v171 = v80;
  v211 = 0;
  v1 = v208;
  v58 = v172;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_20;
  }

LABEL_11:
  v200 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *&v202 = type metadata accessor for CRLBoardCRDTData;
  sub_10000C83C(&v43[v205], v1, type metadata accessor for CRLBoardCRDTData);
  v83 = v175;
  CRRegister.wrappedValue.getter();
  v201 = type metadata accessor for CRLBoardCRDTData;
  sub_100026028(v1, type metadata accessor for CRLBoardCRDTData);
  swift_bridgeObjectRetain_n();
  v86 = v194;
  sub_10084BD4C(v83, v213, v58, v194);
  v87 = v207;
  v88 = v43;
  v89 = *(v207 + 16);
  v90 = v210;
  v170 = v207 + 16;
  v169 = v89;
  v89(v83, v86, v210);
  sub_100026028(v86, type metadata accessor for CRLBoardIdentifier);
  v91 = UUID.uuidString.getter();
  v93 = v92;
  v204(v83, v90);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v91;
  *(inited + 40) = v93;
  v94 = static os_log_type_t.default.getter();
  sub_100005404(v200, &_mh_execute_header, v94, "Inserting placeholder root container for board %{public}@", 57, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v95 = v205;
  v96 = &v88[v205];
  v97 = v181;
  v98 = v202;
  sub_10000C83C(v96, v181, v202);
  CRRegister.wrappedValue.getter();
  v99 = v97;
  v81 = v201;
  sub_100026028(v99, v201);
  v200 = *(v87 + 56);
  (v200)(v199, 1, 1, v90);
  sub_10000C83C(&v209[v95], v1, v98);
  CRRegister.wrappedValue.getter();
  sub_100026028(v1, v81);
  v100 = v195;
  sub_10084BD4C(v83, v213, v172, v195);
  v101 = v191;
  v102 = v186;
  *v191 = v186;
  v103 = v193;
  v188(v101, v189, v193);
  v104 = v102;
  v84 = _dispatchPreconditionTest(_:)();
  v187(v101, v103);
  if ((v84 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  v105 = v182;
  v106 = v210;
  v169(v182, v198, v210);
  v201 = 0x2000400000000;
  v107 = v184;
  sub_10000BE14(v199, v184, &qword_1019F6990, &qword_10146D2F0);
  v108 = v183;
  sub_10000C83C(v100, v183, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for CRLBoardItemDatabaseRow(0);
  v109 = swift_allocObject();
  v110 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  (v200)(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v106);
  v202 = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
  (*(v207 + 32))(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v105, v106);
  v111 = v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  v112 = v201;
  *v111 = 0x1000000000000;
  *(v111 + 8) = v112;
  *(v111 + 16) = 0x1000000000000;
  *(v111 + 24) = 0;
  *(v111 + 32) = 1;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
  swift_beginAccess();
  sub_10002C638(v107, v109 + v110, &qword_1019F6990, &qword_10146D2F0);
  swift_endAccess();
  sub_100025668(v108, v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  v113 = v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
  *v113 = xmmword_101474CF0;
  *(v113 + 16) = 0;
  v114 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v115 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v202;
  sub_100025870(v114, v115);
  v116 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v117 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v202;
  sub_100025870(v116, v117);
  v118 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v119 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v202;
  sub_100025870(v118, v119);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
  v120 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v121 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = v202;
  sub_100025870(v120, v121);
  v122 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v123 = *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  *(v109 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = v202;
  sub_100025870(v122, v123);
  v124 = v211;
  sub_100DF5A90(v109);
  v82 = v124;
  if (v124)
  {

    swift_setDeallocating();
    sub_100FE3A40();
    swift_deallocClassInstance();
    sub_100026028(v195, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v199, &qword_1019F6990, &qword_10146D2F0);
    v125 = v198;
    v126 = v210;
LABEL_17:
    v204(v125, v126);
    return;
  }

  swift_setDeallocating();
  sub_100FE3A40();
  swift_deallocClassInstance();
  sub_100026028(v195, type metadata accessor for CRLBoardIdentifier);
  sub_10000CAAC(v199, &qword_1019F6990, &qword_10146D2F0);
  v81 = v210;
  v204(v198, v210);
  v80 = v171;
LABEL_8:
  v83 = v207;
  v84 = v205;
  if (v80)
  {

    return;
  }

  v211 = v82;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_22;
  }

LABEL_15:
  *&v202 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v127 = swift_initStackObject();
  *(v127 + 16) = xmmword_10146C6B0;
  v200 = type metadata accessor for CRLBoardCRDTData;
  v128 = v208;
  sub_10000C83C(&v209[v84], v208, type metadata accessor for CRLBoardCRDTData);
  v129 = v175;
  CRRegister.wrappedValue.getter();
  v201 = type metadata accessor for CRLBoardCRDTData;
  sub_100026028(v128, type metadata accessor for CRLBoardCRDTData);
  v130 = v172;
  swift_bridgeObjectRetain_n();
  v131 = v194;
  sub_10084BD4C(v129, v213, v130, v194);
  v132 = *(v83 + 16);
  v199 = v83 + 16;
  v198 = v132;
  (v132)(v129, v131, v81);
  sub_100026028(v131, type metadata accessor for CRLBoardIdentifier);
  v133 = UUID.uuidString.getter();
  v134 = v81;
  v136 = v135;
  v204(v129, v134);
  *(v127 + 56) = &type metadata for String;
  *(v127 + 64) = sub_1000053B0();
  *(v127 + 32) = v133;
  *(v127 + 40) = v136;
  v137 = static os_log_type_t.default.getter();
  sub_100005404(v202, &_mh_execute_header, v137, "Inserting placeholder alternate root container for board %{public}@", 67, 2, v127);
  swift_setDeallocating();
  sub_100005070((v127 + 32));
  v138 = v209;
  v139 = v205;
  v140 = v180;
  v141 = v200;
  sub_10000C83C(&v209[v205], v180, v200);
  CRRegister.wrappedValue.getter();
  v142 = v140;
  v143 = v201;
  sub_100026028(v142, v201);
  *&v212 = *(v83 + 56);
  (v212)(v197, 1, 1, v210);
  sub_10000C83C(&v138[v139], v128, v141);
  CRRegister.wrappedValue.getter();
  sub_100026028(v128, v143);
  v144 = v185;
  sub_10084BD4C(v129, v213, v172, v185);
  v145 = v191;
  v146 = v186;
  *v191 = v186;
  v147 = v193;
  v188(v145, v189, v193);
  v148 = v146;
  LOBYTE(v146) = _dispatchPreconditionTest(_:)();
  v187(v145, v147);
  if (v146)
  {
    v149 = v177;
    v150 = v210;
    (v198)(v177, v196, v210);
    v213 = 0x2000400000000;
    v151 = v179;
    sub_10000BE14(v197, v179, &qword_1019F6990, &qword_10146D2F0);
    v152 = v178;
    sub_10000C83C(v144, v178, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for CRLBoardItemDatabaseRow(0);
    v153 = swift_allocObject();
    v154 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
    (v212)(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v150);
    v212 = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
    (*(v207 + 32))(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v149, v150);
    v155 = v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
    v156 = v213;
    *v155 = 0x1000000000000;
    *(v155 + 8) = v156;
    *(v155 + 16) = 0x1000000000000;
    *(v155 + 24) = 0;
    *(v155 + 32) = 1;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
    swift_beginAccess();
    sub_10002C638(v151, v153 + v154, &qword_1019F6990, &qword_10146D2F0);
    swift_endAccess();
    sub_100025668(v152, v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v157 = v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
    *v157 = xmmword_101474CF0;
    *(v157 + 16) = 0;
    v158 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v159 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v212;
    sub_100025870(v158, v159);
    v160 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v161 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v212;
    sub_100025870(v160, v161);
    v162 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v163 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v212;
    sub_100025870(v162, v163);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
    v164 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v165 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = v212;
    sub_100025870(v164, v165);
    v166 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v167 = *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
    *(v153 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = v212;
    sub_100025870(v166, v167);
    sub_100DF5A90(v153);

    swift_setDeallocating();
    sub_100FE3A40();
    swift_deallocClassInstance();
    sub_100026028(v185, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v197, &qword_1019F6990, &qword_10146D2F0);
    v125 = v196;
    v126 = v150;
    goto LABEL_17;
  }

  __break(1u);
}

void sub_100E064E4(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v80 = enum case for DispatchPredicate.onQueue(_:);
  v81 = v10;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v79 = a1;
  v82 = 0;
  v83 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v13._countAndFlagsBits = 0x4920545245534E49;
  v13._object = 0xEC000000204F544ELL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x6D5F736472616F62;
  v14._object = 0xEF61746164617465;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._object = 0x8000000101585360;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x7461645F74647263;
  v18._object = 0xE900000000000061;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x726F7661665F7369;
  v20._object = 0xEB00000000657469;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD00000000000001BLL;
  v22._object = 0x80000001015A3390;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x6174735F77656976;
  v24._object = 0xEF617461645F6574;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000019;
  v26._object = 0x80000001015A33B0;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 8236;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  v28._object = 0x80000001015A33D0;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000026;
  v30._object = 0x80000001015A33F0;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000021;
  v31._object = 0x80000001015A4950;
  String.append(_:)(v31);
  v32 = v82;
  v33 = v83;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v35 = sub_10001CC04(v34, v32, v33);

  if (v2)
  {
    return;
  }

  v78 = v12;
  v36 = v79 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier;
  v37 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v38 = sub_10084DAE4(v36, *(v36 + *(v37 + 20)), *(v36 + *(v37 + 20) + 8));
  v40 = v39;
  v41 = v4;
  v42 = v38;
  v43 = *(*(v35 + 16) + 32);
  *v8 = v43;
  v81(v8, v80, v41);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v78(v8, v41);
  if ((v43 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_100DCCAB4(v42, v40, v35, 1);
  v77 = 0;
  sub_10002640C(v42, v40);
  v45 = v79;
  v46 = *(v79 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
  v47 = *(v79 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8);
  v48 = *(*(v35 + 16) + 32);
  *v8 = v48;
  v81(v8, v80, v41);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v78(v8, v41);
  if ((v48 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v50 = v77;
  sub_100DCCAB4(v46, v47, v35, 2);
  v77 = v50;
  sub_10089B9A4(*(v45 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite), 3);
  sub_10089B9A4(*(v45 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors), 4);
  v51 = *(v45 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
  v52 = *(v45 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8);
  v53 = *(*(v35 + 16) + 32);
  *v8 = v53;
  v81(v8, v80, v41);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v76 = v41;
  v55 = v41;
  v56 = v78;
  v78(v8, v55);
  if ((v53 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_100DCCAB4(v51, v52, v35, 5);
  if (*(v45 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion + 8))
  {
    v57 = *(*(v35 + 16) + 32);
    *v8 = v57;
    v58 = v76;
    v59 = v81;
    v81(v8, v80, v76);
    v60 = v57;
    LOBYTE(v57) = _dispatchPreconditionTest(_:)();
    v56(v8, v58);
    if ((v57 & 1) == 0)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    swift_beginAccess();
    sqlite3_bind_null(*(v35 + 24), 6);
  }

  else
  {
    sub_100034254(*(v45 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion), 6);
    v58 = v76;
    v59 = v81;
  }

  v61 = v79;
  sub_100034254(*(v79 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges), 7);
  sub_100034254(*(v61 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity), 8);
  v62 = *(*(v35 + 16) + 32);
  *v8 = v62;
  v63 = v80;
  v59(v8, v80, v58);
  v64 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  v78(v8, v58);
  if ((v62 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v65 = *(v35 + 16);

  v66 = sub_10001CEC4(v65, v35);

  if (v66 == 101)
  {
    v67 = *(*(v35 + 16) + 32);
    *v8 = v67;
    v81(v8, v63, v58);
    v68 = v67;
    v69 = _dispatchPreconditionTest(_:)();
    v78(v8, v58);
    if (v69)
    {
      swift_beginAccess();
      v70 = *(v35 + 24);
      if (v70)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    goto LABEL_26;
  }

  sub_10089C7D0();
  swift_allocError();
  *v71 = v66;
  *(v71 + 8) = 0xD00000000000001FLL;
  *(v71 + 16) = 0x80000001015A4980;
  swift_willThrow();
  v72 = *(*(v35 + 16) + 32);
  *v8 = v72;
  v81(v8, v63, v58);
  v73 = v72;
  v74 = _dispatchPreconditionTest(_:)();
  v78(v8, v58);
  if ((v74 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v70 = *(v35 + 24);
  if (v70)
  {
LABEL_17:
    sqlite3_finalize(v70);
    *(v35 + 24) = 0;
  }

LABEL_18:
}

uint64_t sub_100E06DBC(uint64_t a1, int a2, unint64_t a3, unint64_t a4, int a5, __n128 a6)
{
  v8 = v6;
  LODWORD(v103) = a5;
  v106 = a4;
  v105 = a3;
  LODWORD(v102) = a2;
  v10 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  __chkstk_darwin(v10);
  v104 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v100 = &v90 - v13;
  __chkstk_darwin(v14);
  v101 = &v90 - v15;
  v16 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v16 - 8);
  v99 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v115 = &v90 - v19;
  __chkstk_darwin(v20);
  v22 = &v90 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = (&v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v8 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23, v25);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v32(v27, v23);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_57:
    swift_once();
LABEL_42:
    v64 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v64, qword_101AD6348);
    sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCCE0);
    v65 = CRDT.serializedData(_:version:)();
    if (v31)
    {

      v31 = v106;
      v67 = v105;
      sub_100025870(v106, v105);
      v68 = v103;
      sub_10002640C(v103, v22);

      sub_100025870(v31, v67);
      sub_10002640C(v68, v22);

      sub_100026028(v10, type metadata accessor for CRLUserBoardMetadataCRDTData);
      sub_100026028(v115, type metadata accessor for CRLBoardIdentifier);
      v35 = v30;
      goto LABEL_50;
    }

    v69 = v65;
    v70 = v66;
    v96 = 0;
    v92 = v30;
    v93 = a1;
    sub_1005B981C(&qword_101A2C810, &unk_101480B50);
    CRRegister.wrappedValue.getter();
    v71 = v107;
    CRRegister.wrappedValue.getter();
    v94 = v22;
    v72 = v107;
    CRRegister.wrappedValue.getter();
    v91 = v107;
    CRRegister.wrappedValue.getter();
    v90 = v107;
    CRRegister.wrappedValue.getter();
    sub_100026028(v10, type metadata accessor for CRLUserBoardMetadataCRDTData);
    v73 = v107;
    v74 = v99;
    sub_100025668(v115, v99, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for CRLUserBoardMetadataDatabaseRow(0);
    v75 = swift_allocObject();
    v76 = (v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
    *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData) = xmmword_101486780;
    sub_100025668(v74, v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v77 = (v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
    *v77 = v69;
    v77[1] = v70;
    *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite) = v71;
    *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors) = v72;
    v78 = v94;
    v79 = (v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
    v80 = v103;
    *v79 = v103;
    v79[1] = v78;
    v81 = v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion;
    *v81 = v100;
    *(v81 + 8) = v95;
    *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = v102;
    v82 = *v76;
    v83 = v76[1];
    v84 = v105;
    *v76 = v106;
    v76[1] = v84;
    sub_100025870(v82, v83);
    *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity) = v104;
    *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled) = v91;
    *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled) = v90;
    *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen) = v73;
    if (v97)
    {
      v85 = v96;
      sub_100E08660(v75);
      v31 = v93;
      v86 = v92;
      if (v85)
      {

        sub_10002640C(v80, v78);
        sub_100025870(v106, v84);
        swift_setDeallocating();
        sub_100026028(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        sub_10002640C(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
        sub_10002640C(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
        sub_100025870(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
        swift_deallocClassInstance();

LABEL_49:

        v35 = v86;
        goto LABEL_50;
      }

      v89 = sub_100969E64(v75);

      if ((v89 & 1) == 0)
      {

        sub_10002640C(v80, v94);
        sub_100025870(v106, v105);
        swift_setDeallocating();
        sub_100026028(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        sub_10002640C(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
        sub_10002640C(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
        sub_100025870(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
        swift_deallocClassInstance();

LABEL_55:
        sub_100026028(v86, type metadata accessor for CRLBoardIdentifier);
        return v31;
      }
    }

    else
    {
      v87 = v96;
      sub_100E064E4(v75);
      v31 = v93;
      v86 = v92;
      if (v87)
      {

        sub_10002640C(v80, v78);
        sub_100025870(v106, v84);
        swift_setDeallocating();
        sub_100026028(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        sub_10002640C(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
        sub_10002640C(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
        sub_100025870(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
        swift_deallocClassInstance();
        goto LABEL_49;
      }
    }

    sub_100DE02C4(v86, &unk_1018A4C78, sub_100E58E54, &unk_1018A4C90);
    sub_10002640C(v80, v94);
    sub_100025870(v106, v105);

    swift_setDeallocating();
    sub_100026028(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
    sub_10002640C(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8));
    sub_100025870(*(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData), *(v75 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8));
    swift_deallocClassInstance();
    goto LABEL_55;
  }

  sub_10000C83C(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, v22, type metadata accessor for CRLBoardIdentifier);
  v33 = sub_100E07F54(v22);
  v34 = v7;
  v30 = v22;
  if (v7)
  {
    v35 = v22;
LABEL_50:
    sub_100026028(v35, type metadata accessor for CRLBoardIdentifier);
    return v31;
  }

  v36 = v33;
  v98 = v8;
  if (v33)
  {
    v37 = swift_retain_n();
    v38 = sub_100EA2998(v37);
    v39 = v10;
    if (v38)
    {
      v40 = v38;
      v96 = 0;
      if (v102)
      {
        if (v102 != 1)
        {
          v102 = 0;
          goto LABEL_25;
        }

        v41 = v36;
        v42 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
        swift_beginAccess();
        v43 = v101;
        sub_10000C83C(v40 + v42, v101, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v44 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
        swift_beginAccess();
        v45 = a1 + v44;
        v36 = v41;
        v46 = v100;
        sub_10000C83C(v45, v100, type metadata accessor for CRLUserBoardMetadataCRDTData);
        sub_1000066D0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);
        v47 = CRStruct_5.hasDelta(from:)();
        sub_100026028(v46, type metadata accessor for CRLUserBoardMetadataCRDTData);
        sub_100026028(v43, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v48 = 2;
        if ((v47 & 1) == 0)
        {
          v48 = 0;
        }

        if (*(v40 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) != *(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity))
        {
          v48 |= 4uLL;
        }
      }

      else
      {
        v103 = *(v36 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges);
        v50 = v36;
        v51 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
        swift_beginAccess();
        v52 = v101;
        sub_10000C83C(a1 + v51, v101, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v53 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
        swift_beginAccess();
        v54 = v40 + v53;
        v36 = v50;
        v55 = v100;
        sub_10000C83C(v54, v100, type metadata accessor for CRLUserBoardMetadataCRDTData);
        sub_1000066D0(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData, byte_1014DCE78);
        v56 = CRStruct_5.hasDelta(from:)();
        sub_100026028(v55, type metadata accessor for CRLUserBoardMetadataCRDTData);
        sub_100026028(v52, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v57 = 2;
        if ((v56 & 1) == 0)
        {
          v57 = 0;
        }

        if (*(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) != *(v40 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity))
        {
          v57 |= 4uLL;
        }

        v48 = v57 | v103;
      }

      v102 = v48;
LABEL_25:
      v101 = v39;
      swift_retain_n();
      sub_100D64DB0(a1, v58);

      a1 = v40;
      v34 = v96;
      v10 = v104;
      goto LABEL_26;
    }

    v10 = v104;
    if (v103)
    {
      v101 = v39;
      v102 = v102 == 0;
      swift_retain_n();
LABEL_26:
      v59 = *(v36 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
      v22 = *(v36 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8);
      v100 = *(v36 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion);
      v95 = *(v36 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion + 8);
      v103 = v59;
      sub_100024E98(v59, v22);
      if (v106 >= 0xF000000000000000)
      {
        v60 = 0xF000000000000000;
      }

      else
      {
        v60 = v106;
      }

      if (v106 >> 60 == 15)
      {
        v61 = 0;
      }

      else
      {
        v61 = v105;
      }

      v97 = v36;
      if (v106 >> 60 == 15)
      {
        v61 = *(v36 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
        v60 = *(v36 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8);
        sub_100024E84(v61, v60);
      }

LABEL_41:
      v31 = v34;
      sub_10000C83C(v30, v115, type metadata accessor for CRLBoardIdentifier);
      v63 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
      swift_beginAccess();
      sub_10000C83C(a1 + v63, v10, type metadata accessor for CRLUserBoardMetadataCRDTData);
      v104 = *(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity);
      sub_100024E84(v105, v106);
      sub_100024E98(v103, v22);
      v106 = v61;
      v105 = v60;
      sub_100024E84(v61, v60);
      if (qword_1019F1520 == -1)
      {
        goto LABEL_42;
      }

      goto LABEL_57;
    }
  }

  else if (v103)
  {
    v97 = 0;
    LOBYTE(v108) = 1;
    v112 = 0x3FF0000000000000uLL;
    v113 = 0uLL;
    v114[0] = 1;
    *&v114[8] = xmmword_101486780;
    *&v114[24] = xmmword_101486780;
    v114[40] = 0;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    swift_retain_n();
    JSONEncoder.init()();
    v110 = *v114;
    v111[0] = *&v114[16];
    *(v111 + 9) = *&v114[25];
    v108 = v112;
    v109 = v113;
    sub_100EA2550();
    v49 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v22 = v62;
    v101 = v10;
    v103 = v49;

    v102 = v102 == 0;
    sub_1006D62E4(&v112);
    v100 = 0;
    if (v106 >> 60 == 15)
    {
      v61 = 0;
    }

    else
    {
      v61 = v105;
    }

    if (v106 >= 0xF000000000000000)
    {
      v60 = 0xF000000000000000;
    }

    else
    {
      v60 = v106;
    }

    v95 = 1;
    v34 = 0;
    v10 = v104;
    goto LABEL_41;
  }

  sub_100026028(v22, type metadata accessor for CRLBoardIdentifier);

  return 0;
}

uint64_t sub_100E07F54(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v56 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v54 = *(v5 + 8);
  v54(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  v55 = v10;
  v53 = v4;
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v57 = 0x205443454C4553;
  v58 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_100EA017C(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x6D5F736472616F62;
  v14._object = 0xEF61746164617465;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._object = 0x8000000101585360;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x293F203D20;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = v57;
  v19 = v58;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, v18, v19);
  if (!v2)
  {
    v22 = v21;

    v23 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v24 = sub_10084DAE4(a1, *(a1 + *(v23 + 20)), *(a1 + *(v23 + 20) + 8));
    v52 = v32;
    v33 = v24;
    v34 = *(*(v22 + 16) + 32);
    *v8 = v34;
    v35 = v53;
    v55(v8, v56, v53);
    v36 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v37 = v54;
    v54(v8, v35);
    if (v34)
    {

      v38 = v33;
      v39 = v33;
      v40 = v52;
      sub_100DCCAB4(v39, v52, v22, 1);
      sub_10002640C(v38, v40);
      v41 = *(*(v22 + 16) + 32);
      *v8 = v41;
      v55(v8, v56, v35);
      v42 = v41;
      LOBYTE(v41) = _dispatchPreconditionTest(_:)();
      v37(v8, v35);
      if (v41)
      {
        type metadata accessor for SQLiteRowIterator();
        inited = swift_initStackObject();
        inited[4] = 0;
        inited[5] = 1;
        inited[2] = v22;
        inited[3] = 0;

        v44 = sub_10001E1D0();
        if (!v44)
        {

          swift_setDeallocating();
          sub_10001E364(inited[3], inited[4], inited[5]);
          v49 = *(*(v22 + 16) + 32);
          *v8 = v49;
          v55(v8, v56, v35);
          v50 = v49;
          LOBYTE(v49) = _dispatchPreconditionTest(_:)();
          v37(v8, v35);
          if (v49)
          {
            v47 = (v22 + 24);
            swift_beginAccess();
            v27 = 0;
            v48 = *(v22 + 24);
            if (!v48)
            {
              goto LABEL_13;
            }

            goto LABEL_12;
          }

LABEL_22:
          __break(1u);
        }

        v27 = sub_100EA0450(v44, 0);

        swift_setDeallocating();
        sub_10001E364(inited[3], inited[4], inited[5]);
        v45 = *(*(v22 + 16) + 32);
        *v8 = v45;
        v55(v8, v56, v35);
        v46 = v45;
        LOBYTE(v45) = _dispatchPreconditionTest(_:)();
        v37(v8, v35);
        if (v45)
        {
          v47 = (v22 + 24);
          swift_beginAccess();
          v48 = *(v22 + 24);
          if (!v48)
          {
LABEL_13:

            return v27;
          }

LABEL_12:
          sqlite3_finalize(v48);
          *v47 = 0;
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_18;
  }

LABEL_5:
  v25 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v27 = Error.localizedDescription.getter();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000053B0();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v30, "Failed to fetch board metadata record with error %@", 51, 2, v26);
  swift_setDeallocating();
  sub_100005070((v26 + 32));
  swift_willThrow();
  return v27;
}

void sub_100E08660(unint64_t a1)
{
  v96 = a1;
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v91[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v91[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v10 = v11;
  v12 = *(v7 + 104);
  v100 = enum case for DispatchPredicate.onQueue(_:);
  v98 = v7 + 104;
  v12(v10, v8);
  v13 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v16 = *(v7 + 8);
  v15 = v7 + 8;
  v14 = v16;
  v16(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v97 = v5;
  v99 = v12;
  v103 = 0;
  v104 = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  v17._countAndFlagsBits = 0x20455441445055;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6D5F736472616F62;
  v18._object = 0xEF61746164617465;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x2054455320;
  v19._object = 0xE500000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x7461645F74647263;
  v20._object = 0xE900000000000061;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x202C3F203D20;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x726F7661665F7369;
  v22._object = 0xEB00000000657469;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x202C3F203D20;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  v24._object = 0x80000001015A3390;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x202C3F203D20;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6174735F77656976;
  v26._object = 0xEF617461645F6574;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x202C3F203D20;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000019;
  v28._object = 0x80000001015A33B0;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x202C3F203D20;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._object = 0x80000001015A33D0;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C3F203D20;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x7461645F636E7973;
  v32._object = 0xE900000000000061;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x202C3F203D20;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000026;
  v34._object = 0x80000001015A33F0;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x454857203F203D20;
  v35._object = 0xEB00000000204552;
  String.append(_:)(v35);
  v36._object = 0x8000000101585360;
  v36._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 1059077408;
  v37._object = 0xE400000000000000;
  String.append(_:)(v37);
  v38 = v103;
  v39 = v104;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v41 = sub_10001CC04(v40, v38, v39);

  if (v2)
  {
    return;
  }

  v42 = v96;
  v43 = *(v96 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8);
  v95 = *(v96 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData);
  v44 = v14;
  v45 = *(*(v41 + 16) + 32);
  *v10 = v45;
  v99(v10, v100, v6);
  v46 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  v44(v10, v6);
  if ((v45 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100DCCAB4(v95, v43, v41, 1);
  v93 = 0;
  v92 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite);
  sub_10089B9A4(v92, 2);
  sub_10089B9A4(*(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors), 3);
  v47 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData);
  v48 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_viewStateData + 8);
  v49 = *(*(v41 + 16) + 32);
  *v10 = v49;
  v99(v10, v100, v6);
  v50 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  v95 = v44;
  v44(v10, v6);
  if ((v49 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v51 = v93;
  sub_100DCCAB4(v47, v48, v41, 4);
  v52 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion + 8);
  v94 = v15;
  if (v52)
  {
    v53 = *(*(v41 + 16) + 32);
    *v10 = v53;
    v99(v10, v100, v6);
    v54 = v53;
    LOBYTE(v53) = _dispatchPreconditionTest(_:)();
    v95(v10, v6);
    v55 = v97;
    if (v53)
    {
      swift_beginAccess();
      sqlite3_bind_null(*(v41 + 24), 5);
      goto LABEL_9;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_100034254(*(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion), 5);
  v55 = v97;
LABEL_9:
  sub_100034254(*(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges), 6);
  v56 = v42;
  v57 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
  v58 = *(v42 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8);
  sub_100024E84(v57, v58);
  sub_10089BB64(v57, v58, 7);
  sub_100025870(v57, v58);
  sub_100034254(*(v56 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity), 8);
  sub_10000C83C(v56 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v55, type metadata accessor for CRLBoardIdentifier);
  v59 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v60 = sub_10084DAE4(v55, *(v55 + *(v59 + 20)), *(v55 + *(v59 + 20) + 8));
  if (v51)
  {
    sub_100026028(v55, type metadata accessor for CRLBoardIdentifier);
    v62 = *(*(v41 + 16) + 32);
    *v10 = v62;
    v99(v10, v100, v6);
    v63 = v62;
    LOBYTE(v62) = _dispatchPreconditionTest(_:)();
    v60 = (v95)(v10, v6);
    if (v62)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v96 = v61;
  v64 = v60;
  v65 = *(*(v41 + 16) + 32);
  *v10 = v65;
  v66 = v99;
  v99(v10, v100, v6);
  v67 = v65;
  LOBYTE(v65) = _dispatchPreconditionTest(_:)();
  v95(v10, v6);
  if ((v65 & 1) == 0)
  {
    goto LABEL_33;
  }

  v68 = v64;
  v69 = v64;
  v70 = v96;
  sub_100DCCAB4(v69, v96, v41, 9);
  sub_10002640C(v68, v70);
  v71 = *(*(v41 + 16) + 32);
  *v10 = v71;
  v66(v10, v100, v6);
  v72 = v71;
  LOBYTE(v71) = _dispatchPreconditionTest(_:)();
  v96 = v6;
  v95(v10, v6);
  if ((v71 & 1) == 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v73 = *(v41 + 16);

  v74 = sub_10001CEC4(v73, v41);

  if (v74 == 101)
  {
    sub_100026028(v97, type metadata accessor for CRLBoardIdentifier);
    v75 = *(*(v41 + 16) + 32);
    *v10 = v75;
    v76 = v96;
    v99(v10, v100, v96);
    v77 = v75;
    LOBYTE(v75) = _dispatchPreconditionTest(_:)();
    v95(v10, v76);
    if (v75)
    {
      swift_beginAccess();
      v78 = *(v41 + 24);
      if (v78)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    goto LABEL_35;
  }

  v101 = 0;
  v102 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v101 = 0xD000000000000019;
  v102 = 0x80000001015A5820;
  if (v92)
  {
    v79 = 1702195828;
  }

  else
  {
    v79 = 0x65736C6166;
  }

  if (v92)
  {
    v80 = 0xE400000000000000;
  }

  else
  {
    v80 = 0xE500000000000000;
  }

  v81 = v80;
  String.append(_:)(*&v79);

  v82._countAndFlagsBits = 0x616F6220726F6620;
  v82._object = 0xEB00000000206472;
  String.append(_:)(v82);
  v83 = v97;
  v84._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v84);

  v85 = v101;
  v86 = v102;
  sub_10089C7D0();
  swift_allocError();
  *v87 = v74;
  *(v87 + 8) = v85;
  *(v87 + 16) = v86;
  swift_willThrow();
  sub_100026028(v83, type metadata accessor for CRLBoardIdentifier);
  v88 = *(*(v41 + 16) + 32);
  *v10 = v88;
  v89 = v96;
  v99(v10, v100, v96);
  v90 = v88;
  LOBYTE(v88) = _dispatchPreconditionTest(_:)();
  v95(v10, v89);
  if ((v88 & 1) == 0)
  {
LABEL_36:
    __break(1u);
  }

LABEL_25:
  swift_beginAccess();
  v78 = *(v41 + 24);
  if (v78)
  {
LABEL_26:
    sqlite3_finalize(v78);
    *(v41 + 24) = 0;
  }

LABEL_27:
}

void sub_100E09120(uint64_t a1, sqlite3_int64 a2)
{
  v38 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v40 = enum case for DispatchPredicate.onQueue(_:);
  v41 = v11;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v39 = v13;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v15 = sub_10001CC04(v14, 0xD00000000000004BLL, 0x80000001015A83B0);

  if (v3)
  {
    return;
  }

  sub_100034254(a2, 1);
  v16 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v17 = sub_10084DAE4(v38, *(v38 + *(v16 + 20)), *(v38 + *(v16 + 20) + 8));
  v19 = v18;
  v20 = v17;
  v21 = *(*(v15 + 16) + 32);
  *v9 = v21;
  v41(v9, v40, v5);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v39(v9, v5);
  if ((v21 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_100DCCAB4(v20, v19, v15, 2);
  sub_10002640C(v20, v19);
  v23 = *(*(v15 + 16) + 32);
  *v9 = v23;
  v41(v9, v40, v5);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v25 = v39;
  v39(v9, v5);
  if ((v23 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v26 = *(v15 + 16);

  v27 = sub_10001CEC4(v26, v15);

  if (v27 == 101)
  {
    v28 = *(*(v15 + 16) + 32);
    *v9 = v28;
    v41(v9, v40, v5);
    v29 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    v25(v9, v5);
    if (v28)
    {
      swift_beginAccess();
      v30 = *(v15 + 24);
      if (v30)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(86);
  v31._countAndFlagsBits = 0xD000000000000054;
  v31._object = 0x80000001015A8400;
  String.append(_:)(v31);
  v32._countAndFlagsBits = sub_10084B8C8();
  String.append(_:)(v32);

  v33 = v42;
  v34 = v43;
  sub_10089C7D0();
  swift_allocError();
  *v35 = v27;
  *(v35 + 8) = v33;
  *(v35 + 16) = v34;
  swift_willThrow();
  v36 = *(*(v15 + 16) + 32);
  *v9 = v36;
  v41(v9, v40, v5);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v39(v9, v5);
  if ((v36 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v30 = *(v15 + 24);
  if (v30)
  {
LABEL_11:
    sqlite3_finalize(v30);
    *(v15 + 24) = 0;
  }

LABEL_12:
}

double sub_100E09624(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a2;
  aBlock[4] = sub_100EA3058;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A58E8;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  sub_10002E7A8(a3, a4);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);

  return result;
}

uint64_t sub_100E09920(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, int a5)
{
  v36 = a5;
  v38 = a4;
  v39 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[2] = a2;
  v40[3] = a1;
  sub_10002FA9C(sub_100EA3068, v40);
  v32 = a1;
  v33 = v11;
  v14 = a2;
  v34 = v7;
  v35 = v10;
  if (v39)
  {
    v39(0);
  }

  v15 = sub_100BD9514(_swiftEmptyArrayStorage);
  v16 = v14;
  v17 = v9;
  v18 = v13;
  v19 = v32;
  if (*(v14 + 16))
  {
    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v39 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v14;
    *(v20 + 32) = 1;
    *(v20 + 40) = v15;
    v45 = sub_10007A268;
    v46 = v20;
    v41 = _NSConcreteStackBlock;
    v42 = *"";
    v43 = sub_100007638;
    v44 = &unk_1018A5938;
    v21 = _Block_copy(&v41);
    v22 = v19;

    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    v23 = v34;
    v24 = &unk_101466000;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v39;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v37 + 8))(v17, v23);
    v26 = v33;
    (*(v33 + 8))(v18, v35);
  }

  else
  {

    v24 = &unk_101466000;
    v26 = v33;
    v23 = v34;
  }

  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v39 = static OS_dispatch_queue.main.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = v16;
  *(v27 + 24) = _swiftEmptySetSingleton;
  *(v27 + 32) = _swiftEmptySetSingleton;
  *(v27 + 40) = v36 & 1;
  *(v27 + 48) = v19;
  v45 = sub_1000260F4;
  v46 = v27;
  v41 = _NSConcreteStackBlock;
  v42 = v24[308];
  v43 = sub_100007638;
  v44 = &unk_1018A5988;
  v28 = _Block_copy(&v41);
  v29 = v19;

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v39;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v37 + 8))(v17, v23);
  return (*(v26 + 8))(v18, v35);
}

void sub_100E0A0D4(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v66 = enum case for DispatchPredicate.onQueue(_:);
  v65 = v10;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_100E0E004(a1);
  if (v2)
  {
    return;
  }

  v63 = v12;
  v64 = 0;
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v13._countAndFlagsBits = 0x20455441445055;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x736472616F62;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2054455320;
  v15._object = 0xE500000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x6E6F7473626D6F74;
  v16._object = 0xEA00000000006465;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x202C31203D20;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  v18._object = 0x80000001015A33D0;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 2112800;
  v19._object = 0xE300000000000000;
  String.append(_:)(v19);
  v20._object = 0x80000001015A33D0;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x202C3F207C20;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._object = 0xEE00657461645F65;
  v22._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x454857203F203D20;
  v23._object = 0xEB00000000204552;
  String.append(_:)(v23);
  v24._object = 0x8000000101585360;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 1059077408;
  v25._object = 0xE400000000000000;
  String.append(_:)(v25);
  v26 = v67;
  v27 = v68;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v29 = v64;
  v30 = sub_10001CC04(v28, v26, v27);

  if (v29)
  {
    return;
  }

  sub_100034254(4, 1);
  static Date.timeIntervalSinceReferenceDate.getter();
  v32 = v31;
  v33 = *(*(v30 + 16) + 32);
  *v8 = v33;
  v65(v8, v66, v4);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v35 = v63;
  v63(v8, v4);
  if ((v33 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  sqlite3_bind_double(*(v30 + 24), 2, v32);
  v36 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v37 = sub_10084DAE4(a1, *(a1 + *(v36 + 20)), *(a1 + *(v36 + 20) + 8));
  v64 = 0;
  v62 = v38;
  v39 = v37;
  v40 = *(*(v30 + 16) + 32);
  *v8 = v40;
  v41 = v65;
  v65(v8, v66, v4);
  v42 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v35(v8, v4);
  if ((v40 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v43 = v39;
  v44 = v39;
  v45 = v62;
  v46 = v64;
  sub_100DCCAB4(v44, v62, v30, 3);
  v64 = v46;
  sub_10002640C(v43, v45);
  v47 = *(*(v30 + 16) + 32);
  *v8 = v47;
  v41(v8, v66, v4);
  v48 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v35(v8, v4);
  if ((v47 & 1) == 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v49 = *(v30 + 16);

  v50 = sub_10001CEC4(v49, v30);

  if (v50 == 101)
  {
    v51 = *(*(v30 + 16) + 32);
    *v8 = v51;
    v65(v8, v66, v4);
    v52 = v51;
    v53 = _dispatchPreconditionTest(_:)();
    v35(v8, v4);
    if (v53)
    {
      v54 = *(v30 + 24);
      if (v54)
      {
        sqlite3_finalize(v54);
        *(v30 + 24) = 0;
      }

      return;
    }

    goto LABEL_21;
  }

  sub_10089C7D0();
  v55 = swift_allocError();
  *v56 = v50;
  *(v56 + 8) = 0xD00000000000001FLL;
  *(v56 + 16) = 0x80000001015A5460;
  v64 = v55;
  swift_willThrow();
  v57 = *(*(v30 + 16) + 32);
  *v8 = v57;
  v65(v8, v66, v4);
  v58 = v57;
  v59 = _dispatchPreconditionTest(_:)();
  v35(v8, v4);
  if ((v59 & 1) == 0)
  {
    goto LABEL_22;
  }

  v60 = *(v30 + 24);
  if (v60)
  {
    sqlite3_finalize(v60);
    *(v30 + 24) = 0;
  }
}

double sub_100E0A750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(a1, v16, type metadata accessor for CRLBoardIdentifier);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_100025668(v16, v19 + v17, type metadata accessor for CRLBoardIdentifier);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_100EA26E4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5410;
  v21 = _Block_copy(aBlock);
  v22 = v3;
  sub_10002E7A8(a2, a3);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);

  return result;
}

uint64_t sub_100E0AB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_10007AF24();
  v7 = sub_10079DDA0(a2, v6);

  if (v7)
  {
    __chkstk_darwin(result);
    v9[2] = a2;
    v9[3] = a1;
    result = sub_10002FA9C(sub_100EA2710, v9);
    if (a3)
    {
      return a3(0);
    }
  }

  return result;
}

uint64_t sub_100E0AD74(uint64_t a1)
{
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v8, "Permanently deleting discardable board %{public}@", 49, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  sub_100E0A0D4(a1);
  if (!v1)
  {
    sub_1005B981C(&unk_101A19BD0, &qword_10146FA00);
    v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10146C6B0;
    sub_10000C83C(a1, v11 + v10, type metadata accessor for CRLBoardIdentifier);
    v12 = sub_1005BF2F8(v11);
    swift_setDeallocating();
    sub_100026028(v11 + v10, type metadata accessor for CRLBoardIdentifier);
    swift_deallocClassInstance();
    sub_100032648(0, v12);
  }

  return 1;
}

uint64_t sub_100E0AFBC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[2] = a2;
  v37[3] = a1;
  sub_10002FA9C(sub_100EA2FF8, v37);
  v30 = v8;
  v31 = v6;
  v33 = v9;
  if (v36)
  {
    v36(0);
  }

  v13 = sub_100BD9514(_swiftEmptyArrayStorage);
  v14 = *(a2 + 16);
  v15 = a1;
  v32 = v10;
  if (v14)
  {
    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v36 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = 1;
    *(v16 + 40) = v13;
    v42 = sub_10007A268;
    v43 = v16;
    v38 = _NSConcreteStackBlock;
    v39 = *"";
    v40 = sub_100007638;
    v41 = &unk_1018A5758;
    v17 = _Block_copy(&v38);
    v18 = a1;

    v19 = v12;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    v21 = v30;
    v20 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v36;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    v23 = v34;
    (*(v34 + 8))(v21, v20);
    (*(v32 + 8))(v12, v33);
  }

  else
  {

    v23 = v34;
    v21 = v30;
    v20 = v31;
    v19 = v12;
  }

  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v36 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = _swiftEmptySetSingleton;
  *(v24 + 24) = _swiftEmptySetSingleton;
  *(v24 + 32) = _swiftEmptySetSingleton;
  *(v24 + 40) = 0;
  *(v24 + 48) = v15;
  v42 = sub_1000260F4;
  v43 = v24;
  v38 = _NSConcreteStackBlock;
  v39 = *"";
  v40 = sub_100007638;
  v41 = &unk_1018A57A8;
  v25 = _Block_copy(&v38);
  v26 = v15;

  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v36;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v23 + 8))(v21, v20);
  return (*(v32 + 8))(v19, v33);
}

void sub_100E0B760(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v17 = a3;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_10000C83C(*(a1 + 48) + *(v6 + 72) * (v15 | (v14 << 6)), v8, type metadata accessor for CRLBoardIdentifier);
    v17(v8);
    sub_100026028(v8, type metadata accessor for CRLBoardIdentifier);
    if (v3)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 56 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100E0B910(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v45 = v10;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    __break(1u);
    goto LABEL_16;
  }

  v13 = sub_100DEB448(a1);
  if (!v2 && v13)
  {
    v42 = v12;
    v43 = v13;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v15 = sub_10001CC04(v14, 0xD000000000000051, 0x80000001015A5CD0);

    sub_100034254(*(v43 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges) | 4, 1);
    v16 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v17 = sub_10084DAE4(a1, *(a1 + *(v16 + 20)), *(a1 + *(v16 + 20) + 8));
    v41 = 0;
    v40 = v18;
    v19 = v17;
    v20 = *(*(v15 + 16) + 32);
    *v8 = v20;
    v45(v8, v44, v4);
    v21 = v20;
    v22 = _dispatchPreconditionTest(_:)();
    v23 = v42;
    v42(v8, v4);
    if (v22)
    {

      v24 = v19;
      v25 = v19;
      v27 = v40;
      v26 = v41;
      sub_100DCCAB4(v25, v40, v15, 2);
      v41 = v26;
      sub_10002640C(v24, v27);
      v28 = *(*(v15 + 16) + 32);
      *v8 = v28;
      v45(v8, v44, v4);
      v29 = v28;
      LOBYTE(v24) = _dispatchPreconditionTest(_:)();
      v23(v8, v4);
      if (v24)
      {
        v30 = *(v15 + 16);

        v31 = sub_10001CEC4(v30, v15);

        if (v31 == 101)
        {
          v32 = *(*(v15 + 16) + 32);
          *v8 = v32;
          v45(v8, v44, v4);
          v33 = v32;
          v34 = _dispatchPreconditionTest(_:)();
          v23(v8, v4);
          if ((v34 & 1) == 0)
          {
            __break(1u);

LABEL_10:

            return;
          }

LABEL_12:
          swift_beginAccess();
          v39 = *(v15 + 24);
          if (v39)
          {
            sqlite3_finalize(v39);

            *(v15 + 24) = 0;
          }

          else
          {
          }

          goto LABEL_10;
        }

        sub_10089C7D0();
        swift_allocError();
        *v35 = v31;
        *(v35 + 8) = 0xD00000000000001ELL;
        *(v35 + 16) = 0x80000001015A5D30;
        swift_willThrow();
        v36 = *(*(v15 + 16) + 32);
        *v8 = v36;
        v45(v8, v44, v4);
        v37 = v36;
        v38 = _dispatchPreconditionTest(_:)();
        v23(v8, v4);
        if (v38)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

double sub_100E0BF00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_100E09624(a3, a4, sub_100EA6324, v13);

  return result;
}

double sub_100E0C060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E14284(a3, sub_100EA6324, v11, &unk_1018A56F0, sub_100EA2FEC, &unk_1018A5708);

  return result;
}

double sub_100E0C1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E14284(a3, sub_100EA6324, v11, &unk_1018A5808, sub_100EA302C, &unk_1018A5820);

  return result;
}

uint64_t sub_100E0C348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5[2] = a2;
  v5[3] = a1;
  result = sub_10002FA9C(sub_100EA3038, v5);
  if (a3)
  {
    return a3(0);
  }

  return result;
}

void sub_100E0C5F8(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_10000C83C(*(a1 + 48) + *(v14 + 72) * (v12 | (v11 << 6)), v5, type metadata accessor for CRLBoardIdentifier);
    sub_100E0C7BC(v5, 0xD00000000000001BLL, 0x80000001015A5DA0, 1);
    sub_100026028(v5, type metadata accessor for CRLBoardIdentifier);
    if (v1)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100E0C7BC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v98 = a4;
  v115 = a2;
  v118 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v101 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DispatchQoS();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v111);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for UUID();
  v113 = *(v114 - 1);
  __chkstk_darwin(v114);
  v112 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v95 - v14);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = (&v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = v4;
  v21 = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v20 = v21;
  v22 = *(v17 + 104);
  v106 = enum case for DispatchPredicate.onQueue(_:);
  v108 = v17 + 104;
  v109 = v22;
  v22(v20, v18);
  v23 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v104 = v20;
  v107 = v25;
  v25(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v110 = v11;
  v96 = v7;
  v97 = v6;
  v105 = v24;
  v103 = v16;
  if (qword_1019F2258 != -1)
  {
LABEL_13:
    swift_once();
  }

  v26 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v28 = v118;
  v29 = UUID.uuidString.getter();
  v31 = v30;
  *(inited + 56) = &type metadata for String;
  v32 = sub_1000053B0();
  *(inited + 32) = v29;
  *(inited + 40) = v31;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v32;
  v33 = v115;
  *(inited + 64) = v32;
  *(inited + 72) = v33;
  *(inited + 80) = a3;

  v34 = static os_log_type_t.default.getter();
  sub_100005404(v26, &_mh_execute_header, v34, "Board %{public}@ purged with reason: %{public}@", 47, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v35 = v116;
  v36 = sub_100DEB448(v28);
  if (!v35 && v36)
  {
    v37 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
    v38 = v36;
    swift_beginAccess();
    v39 = v113;
    v40 = *(v113 + 16);
    v116 = v38;
    v41 = v114;
    v40(v15, v38 + v37, v114);
    v42 = sub_100DFCA00(v15, v118);
    v43 = *(v39 + 8);
    v43(v15, v41, v42);
    v44 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
    v45 = v116;
    swift_beginAccess();
    v46 = v45 + v44;
    v47 = v118;
    v48 = v112;
    v40(v112, v46, v41);
    v49 = sub_100DFCA00(v48, v47);
    v43(v48, v41, v49);
    v50 = v110;
    sub_10000C83C(v47, v110, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    sub_100DF8718(v50);
    sub_100026028(v50, type metadata accessor for CRLAssetReferrerIdentifier);
    sub_100E0E4C8(v47);
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v52 = sub_10001CC04(v51, 0xD00000000000002FLL, 0x80000001015A5DF0);

    v53 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v54 = sub_10084DAE4(v47, *(v47 + *(v53 + 20)), *(v47 + *(v53 + 20) + 8));
    v115 = 0;
    v114 = v55;
    v56 = v54;
    v57 = *(*(v52 + 16) + 32);
    v58 = v104;
    *v104 = v57;
    v59 = v106;
    v60 = v103;
    v109(v58);
    v61 = v57;
    LOBYTE(v57) = _dispatchPreconditionTest(_:)();
    v62 = v107;
    v107(v58, v60);
    if (v57)
    {

      v63 = v56;
      v64 = v56;
      v65 = v114;
      v66 = v115;
      sub_100DCCAB4(v64, v114, v52, 1);
      v115 = v66;
      sub_10002640C(v63, v65);
      v67 = *(*(v52 + 16) + 32);
      *v58 = v67;
      v68 = v109;
      (v109)(v58, v59, v60);
      v69 = v67;
      LOBYTE(v67) = _dispatchPreconditionTest(_:)();
      v62(v58, v60);
      if (v67)
      {
        v70 = *(v52 + 16);

        v71 = v70;
        v72 = v115;
        v73 = sub_10001CEC4(v71, v52);
        v115 = v72;

        if (v73 != 101)
        {
          sub_10089C7D0();
          swift_allocError();
          *v91 = v73;
          *(v91 + 8) = 0xD000000000000018;
          *(v91 + 16) = 0x80000001015A5E20;
          swift_willThrow();
          v92 = *(*(v52 + 16) + 32);
          *v58 = v92;
          v68(v58, v59, v60);
          v93 = v92;
          LOBYTE(v92) = _dispatchPreconditionTest(_:)();
          v62(v58, v60);
          if (v92)
          {
            swift_beginAccess();
            v94 = *(v52 + 24);
            if (v94)
            {
              sqlite3_finalize(v94);

              *(v52 + 24) = 0;
              goto LABEL_18;
            }

LABEL_17:

            goto LABEL_18;
          }

          goto LABEL_22;
        }

        sub_1005B981C(&unk_101A19BD0, &qword_10146FA00);
        v74 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
        v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_10146C6B0;
        sub_10000C83C(v118, v76 + v75, type metadata accessor for CRLBoardIdentifier);
        v77 = sub_1005BF2F8(v76);
        swift_setDeallocating();
        sub_100026028(v76 + v75, type metadata accessor for CRLBoardIdentifier);
        swift_deallocClassInstance();
        sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
        v118 = static OS_dispatch_queue.main.getter();
        v78 = swift_allocObject();
        *(v78 + 16) = v77;
        *(v78 + 24) = _swiftEmptySetSingleton;
        *(v78 + 32) = _swiftEmptySetSingleton;
        *(v78 + 40) = v98 & 1;
        v79 = v117;
        *(v78 + 48) = v117;
        aBlock[4] = sub_1000260F4;
        aBlock[5] = v78;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        aBlock[3] = &unk_1018A5870;
        v114 = _Block_copy(aBlock);
        v80 = v79;

        v81 = v99;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v82 = v58;
        sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
        sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
        v83 = v52;
        v84 = v101;
        v85 = v97;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v86 = v114;
        v87 = v118;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v86);

        (*(v96 + 8))(v84, v85);
        (*(v100 + 8))(v81, v102);
        v88 = *(*(v83 + 16) + 32);
        *v82 = v88;
        (v109)(v82, v106, v60);
        v89 = v88;
        LOBYTE(v88) = _dispatchPreconditionTest(_:)();
        v107(v82, v60);
        if (v88)
        {
          swift_beginAccess();
          v90 = *(v83 + 24);
          if (v90)
          {
            sqlite3_finalize(v90);

            *(v83 + 24) = 0;
LABEL_18:

            return;
          }

          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_100E0D678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5[2] = a1;
  v5[3] = a2;
  result = sub_10002FA9C(sub_100EA3334, v5);
  if (a3)
  {
    return a3(0);
  }

  return result;
}

double sub_100E0D928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E14284(a3, sub_100EA6324, v11, &unk_1018A5B78, sub_100EA3328, &unk_1018A5B90);

  return result;
}

void sub_100E0DA9C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, double a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
    *v16 = v19;
    (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    v21 = (*(v14 + 8))(v16, v13);
    if (v19)
    {
      v33 = v7;
      __chkstk_darwin(v21);
      *(&v31 - 2) = v18;
      sub_10002FA9C(sub_100EA6380, (&v31 - 4));
      v7 = _swiftEmptyArrayStorage;
      v32 = v8;
      if (a2)
      {
        a2(0);
      }
    }

    else
    {
      __break(1u);
      swift_once();
      v22 = static OS_os_log.boardStore;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v23, "Failed to tombstone expired boards", 34, 2, _swiftEmptyArrayStorage);
      if (a2)
      {
        swift_errorRetain();
        a2(v13);
      }
    }

    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v31 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = _swiftEmptySetSingleton;
    *(v24 + 24) = _swiftEmptySetSingleton;
    *(v24 + 32) = _swiftEmptySetSingleton;
    *(v24 + 40) = 0;
    *(v24 + 48) = v18;
    aBlock[4] = sub_1000260F4;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018A5EB0;
    v25 = _Block_copy(aBlock);
    v26 = v18;

    v27 = v12;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = v7;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    v28 = v33;
    v29 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v31;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v32 + 8))(v29, v28);
    (*(v35 + 8))(v27, v36);
    *&v26[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_deletedBoardsCleanupWorkItem] = 0;

    sub_100034778(a2, a3, a4);
  }
}

void sub_100E0E004(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v39 = *(v5 + 8);
  v39(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v4;
  v40 = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD00000000000003ELL, 0x80000001015A5480);

  if (v2)
  {
    return;
  }

  v14 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v15 = sub_10084DAE4(a1, *(a1 + *(v14 + 20)), *(a1 + *(v14 + 20) + 8));
  v37 = v16;
  v17 = v15;
  v18 = *(*(v13 + 16) + 32);
  *v8 = v18;
  v19 = v38;
  v40(v8, v41, v38);
  v20 = v18;
  v21 = _dispatchPreconditionTest(_:)();
  v39(v8, v19);
  if ((v21 & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v17;
  v24 = v37;
  sub_100DCCAB4(v23, v37, v13, 1);
  sub_10002640C(v22, v24);
  v25 = *(*(v13 + 16) + 32);
  *v8 = v25;
  v40(v8, v41, v19);
  v26 = v25;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v27 = v39;
  v39(v8, v19);
  if ((v22 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v28 = *(v13 + 16);

  v29 = sub_10001CEC4(v28, v13);

  if (v29 == 101)
  {
    v30 = *(*(v13 + 16) + 32);
    *v8 = v30;
    v40(v8, v41, v19);
    v31 = v30;
    LOBYTE(v30) = _dispatchPreconditionTest(_:)();
    v27(v8, v19);
    if (v30)
    {
      swift_beginAccess();
      v32 = *(v13 + 24);
      if (v32)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  sub_10089C7D0();
  swift_allocError();
  *v33 = v29;
  *(v33 + 8) = 0xD000000000000032;
  *(v33 + 16) = 0x80000001015A54C0;
  swift_willThrow();
  v34 = *(*(v13 + 16) + 32);
  *v8 = v34;
  v40(v8, v41, v19);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v27(v8, v19);
  if ((v34 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v32 = *(v13 + 24);
  if (v32)
  {
LABEL_11:
    sqlite3_finalize(v32);
    *(v13 + 24) = 0;
  }

LABEL_12:
}

void sub_100E0E4C8(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = sub_100EFF9E4(a1);
    sub_100E64BEC(v11);
    if (v2)
    {
    }

    else
    {
      sub_100E650A8(v11);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101465920;
      *(inited + 32) = v11;
      v13 = v11;
      sub_100E602B0(inited);

      swift_setDeallocating();
      swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_100E0E6F8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v28 = a1;
  v29 = a4;
  v27 = a3;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A226F0, &qword_1014B65F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = type metadata accessor for CRLBoardIdentifier(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  sub_10000C83C(v27, v18, type metadata accessor for CRLBoardIdentifier);
  (*(v12 + 16))(v14, v28, v11);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  sub_100025668(v18, v21 + v19, type metadata accessor for CRLBoardIdentifier);
  (*(v12 + 32))(v21 + v20, v14, v11);
  aBlock[4] = v31;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v32;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v36 + 8))(v8, v24);
  (*(v33 + 8))(v10, v35);

  return result;
}

uint64_t sub_100E0EB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  a4(a2);
  sub_1005B981C(&unk_101A226F0, &qword_1014B65F0);
  return CheckedContinuation.resume(returning:)();
}

double sub_100E0EC04(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_101A21CD0, &qword_1014B65B8);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v20 - v13;
  v20[1] = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v11 + 16))(v20 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_100EA1F7C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4E70;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);

  return result;
}

void *sub_100E0EFAC()
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v65 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v60[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v71 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v70 = *(v5 + 8);
  v70(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_33;
  }

  v69 = v10;
  v68 = v5 + 104;
  v73 = 0;
  v74 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v73 = 0x454C455320202020;
  v74 = 0xEB00000000205443;
  v12._countAndFlagsBits = sub_100EA017C(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x4F52462020202020;
  v13._object = 0xEA0000000000204DLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x6D5F736472616F62;
  v14._object = 0xEF61746164617465;
  String.append(_:)(v14);
  v15 = v73;
  v16 = v74;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v18 = sub_10001CC04(v17, v15, v16);
  v67 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v19 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = v22;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v21;
      *(inited + 40) = v23;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v24, "Failed to fetch board metadata records with error %@", 52, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v21;
    }

LABEL_34:
    swift_once();
    goto LABEL_4;
  }

  v25 = v18;

  v26 = *(*(v25 + 16) + 32);
  *v8 = v26;
  v27 = v69;
  v69(v8, v71, v4);
  v28 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v70(v8, v4);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v63 = v2;
  type metadata accessor for SQLiteRowIterator();
  v29 = swift_initStackObject();
  v29[3] = 0;
  v30 = v29 + 3;
  v29[4] = 0;
  v64 = v29 + 4;
  v29[5] = 1;
  v29[2] = v25;

  swift_beginAccess();
  v31 = *(*(v25 + 16) + 32);
  *v8 = v31;
  v27(v8, v71, v4);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v70(v8, v4);
  if ((v31 & 1) == 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    *v30 = 0;
    v29[4] = 0;
    v29[5] = 1;
    v33 = sqlite3_step(*(v25 + 24));
    if (v33 != 100)
    {
      if (v33 && v33 != 101)
      {
        *v30 = v33;
        v55 = v64;
        *v64 = 0;
        v55[1] = 0;
      }

      v56 = *(*(v25 + 16) + 32);
      *v8 = v56;
      v69(v8, v71, v4);
      v57 = v56;
      LOBYTE(v56) = _dispatchPreconditionTest(_:)();
      v70(v8, v4);
      if (v56)
      {
        v58 = *(v25 + 24);
        if (v58)
        {
          sqlite3_finalize(v58);
          *(v25 + 24) = 0;
        }

        return v21;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v34 = swift_retain_n();
    v35 = sub_100EA0450(v34, 0);
    if (!v35)
    {

      v36 = *(*(v25 + 16) + 32);
      *v8 = v36;
      v37 = v8;
      v38 = v71;
      v39 = v4;
      goto LABEL_11;
    }

    v42 = v35;
    v43 = v66;
    sub_10000C83C(v35 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v66, type metadata accessor for CRLBoardIdentifier);

    LODWORD(v62) = swift_isUniquelyReferenced_nonNull_native();
    v72 = v21;
    v45 = sub_1000486F0(v43);
    v46 = v21[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_37;
    }

    if (v21[3] >= v48)
    {
      if ((v62 & 1) == 0)
      {
        v61 = v44;
        sub_100AAC188();
        LOBYTE(v44) = v61;
      }

      goto LABEL_19;
    }

    v61 = v44;
    sub_100A969F4(v48, v62);
    v49 = sub_1000486F0(v66);
    v50 = v44 & 1;
    LOBYTE(v44) = v61;
    if ((v61 & 1) != v50)
    {
      break;
    }

    v45 = v49;
LABEL_19:
    v21 = v72;
    if (v44)
    {
      v51 = v72[7];
      v62 = *(v51 + 8 * v45);
      *(v51 + 8 * v45) = v42;

      sub_100026028(v66, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      v72[(v45 >> 6) + 8] |= 1 << v45;
      sub_10000C83C(v66, v21[6] + *(v65 + 72) * v45, type metadata accessor for CRLBoardIdentifier);
      *(v21[7] + 8 * v45) = v42;

      sub_100026028(v66, type metadata accessor for CRLBoardIdentifier);
      v52 = v21[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_38;
      }

      v21[2] = v54;
    }

    v36 = *(*(v25 + 16) + 32);
    *v8 = v36;
    v37 = v8;
    v38 = v71;
    v39 = v4;
LABEL_11:
    v69(v37, v38, v39);
    v40 = v36;
    v41 = _dispatchPreconditionTest(_:)();
    v70(v8, v4);
    if ((v41 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_100E0F880(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A22040, &qword_1014B6B68);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  sub_10000C83C(v23, v15, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 16))(v11, v24, v8);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_100025668(v15, v18 + v16, type metadata accessor for CRLBoardIdentifier);
  (*(v9 + 32))(v18 + v17, v11, v8);
  aBlock[4] = sub_100EA5560;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6978;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v29 + 8))(v5, v21);
  (*(v26 + 8))(v7, v28);

  return result;
}

uint64_t sub_100E0FCF8(uint64_t a1, void *a2)
{
  sub_100DE9BC0(a2, &v3);
  sub_1005B981C(&qword_101A22040, &qword_1014B6B68);
  return CheckedContinuation.resume(returning:)();
}

double sub_100E0FDD0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v23[1] = a3;
  v24 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v10 = *(v27 - 8);
  __chkstk_darwin(v27);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_101A21CC8, &qword_1014B65B0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v14 + 16))(v23 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v26;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v9, v7);
  (*(v10 + 8))(v12, v27);

  return result;
}

double sub_100E102E0(uint64_t a1, char *a2, uint64_t a3)
{
  v22[0] = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A21FA8, &unk_1014B6A30);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v22 - v14;
  v22[1] = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v12 + 16))(v22 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v18 = v22[0];
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_100EA4DB0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6310;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v7, v5);
  (*(v23 + 8))(v10, v24);

  return result;
}

uint64_t sub_100E10814(uint64_t a1, void *aBlock, void *a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v5 = a3;

  return _swift_task_switch(sub_100E10890, 0, 0);
}

uint64_t sub_100E10890()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_1005B981C(&unk_1019F52B0, &qword_10146FC90);
  *v4 = v0;
  v4[1] = sub_100E10998;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001ELL, 0x80000001015A9270, sub_100EA4CE8, v3, v5);
}

uint64_t sub_100E10998()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100E10BB0;
  }

  else
  {

    v2 = sub_100E10AB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E10AB4()
{
  sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v2 = *(v0 + 40);
  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E10BB0()
{

  v1 = _convertErrorToNSError(_:)();

  v2 = *(v0 + 40);
  (v2)[2](v2, 0, v1);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

double sub_100E10C5C(uint64_t a1, char *a2, uint64_t a3)
{
  v22[0] = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A21CC0, &qword_1014B65A8);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v22 - v14;
  v22[1] = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v12 + 16))(v22 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v18 = v22[0];
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_100EA1F2C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A4DD0;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v7, v5);
  (*(v23 + 8))(v10, v24);

  return result;
}

uint64_t sub_100E1100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t *a5, uint64_t *a6)
{
  a4(a2);
  sub_1005B981C(a5, a6);
  return CheckedContinuation.resume(returning:)();
}

void *sub_100E110A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000811B8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void *sub_100E110D8(uint64_t **a1, uint64_t a2, int a3)
{
  v226 = a3;
  v227 = a2;
  v237 = sub_1005B981C(&qword_101A21C60, &qword_1014B6528);
  __chkstk_darwin(v237);
  v239 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v238 = &v225 - v8;
  v250 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v250);
  v249 = &v225 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v248 = &v225 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = type metadata accessor for UUID();
  v230 = *(v263 - 8);
  __chkstk_darwin(v263);
  v228 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v225 - v14;
  __chkstk_darwin(v16);
  v232 = &v225 - v17;
  __chkstk_darwin(v18);
  v234 = &v225 - v19;
  __chkstk_darwin(v20);
  v260 = &v225 - v21;
  __chkstk_darwin(v22);
  v259 = &v225 - v23;
  v225 = type metadata accessor for CRLBoardIdentifier(0);
  v252 = *(v225 - 8);
  __chkstk_darwin(v225);
  v240 = &v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v241 = &v225 - v26;
  __chkstk_darwin(v27);
  v264 = (&v225 - v28);
  __chkstk_darwin(v29);
  v247 = &v225 - v30;
  __chkstk_darwin(v31);
  v258 = &v225 - v32;
  __chkstk_darwin(v33);
  v266 = (&v225 - v34);
  v35 = type metadata accessor for DispatchPredicate();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v39 = (&v225 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v261 = v3;
  v40 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v39 = v40;
  (*(v36 + 104))(v39, enum case for DispatchPredicate.onQueue(_:), v35, v37);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  (*(v36 + 8))(v39, v35);
  if ((v40 & 1) == 0)
  {
    goto LABEL_133;
  }

  type metadata accessor for CRLBoardDatabaseFetchResult();
  v42 = swift_allocObject();
  v42[2] = _swiftEmptyDictionarySingleton;
  v262 = v42 + 2;
  v42[3] = _swiftEmptyDictionarySingleton;
  v235 = v42 + 3;
  v236 = v42;
  v42[4] = _swiftEmptyDictionarySingleton;
  v233 = v42 + 4;
  v42[5] = _swiftEmptyDictionarySingleton;
  v231 = v42 + 5;
  v229 = v15;
  if (a1)
  {
    v43 = a1[2];
    if (v43)
    {
      v44 = 0;
      v251 = _swiftEmptyArrayStorage;
      v257 = xmmword_10146C6B0;
      v45 = v4;
      v265 = a1;
LABEL_5:
      v46 = v44;
      v47 = v266;
      while (v46 < v43)
      {
        sub_10000C83C(a1 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v46, v47, type metadata accessor for CRLBoardIdentifier);
        v48 = (v46 + 1);
        if (__OFADD__(v46, 1))
        {
          goto LABEL_128;
        }

        sub_100DE778C(v47, v269);
        if (v45)
        {
          v154 = v47;
LABEL_61:
          sub_100026028(v154, type metadata accessor for CRLBoardIdentifier);

LABEL_120:
          swift_willThrow();
          v223 = v236;

          return v223;
        }

        v253 = 0;
        v49 = v269[0];
        if (v269[0])
        {
          v256 = (v46 + 1);
          v57 = v269[1];
          v56 = v269[2];
          v58 = v270;
          v59 = v271;
          v255 = v270;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v251 = sub_100B38D30(0, v251[2] + 1, 1, v251);
          }

          v61 = v251[2];
          v60 = v251[3];
          if (v61 >= v60 >> 1)
          {
            v251 = sub_100B38D30((v60 > 1), v61 + 1, 1, v251);
          }

          sub_100026028(v266, type metadata accessor for CRLBoardIdentifier);
          v62 = v251;
          v251[2] = v61 + 1;
          v63 = &v62[5 * v61];
          v63[4] = v49;
          v63[5] = v57;
          v63[6] = v56;
          v63[7] = v58;
          *(v63 + 64) = v59 & 1;
          v44 = v256;
          v45 = v253;
          a1 = v265;
          if (v256 != v43)
          {
            goto LABEL_5;
          }

          goto LABEL_23;
        }

        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v50 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = v257;
        v52 = UUID.uuidString.getter();
        v54 = v53;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v52;
        *(inited + 40) = v54;
        v55 = static os_log_type_t.error.getter();
        sub_100005404(v50, &_mh_execute_header, v55, "Failed to fetch boardAndContainerData for board %{public}@", 58, 2, inited, v225);
        swift_setDeallocating();
        v47 = v266;
        sub_100005070((inited + 32));
        sub_100026028(v47, type metadata accessor for CRLBoardIdentifier);
        ++v46;
        v45 = v253;
        a1 = v265;
        if (v48 == v43)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_127;
    }

    v251 = _swiftEmptyArrayStorage;
    v45 = v4;
  }

  else
  {
    v64 = sub_100DE62C0();
    v45 = v4;
    if (v4)
    {
      goto LABEL_120;
    }

    v251 = v64;
  }

LABEL_23:
  v253 = v45;
  v246 = v251[2];
  if (v246)
  {
    v65 = 0;
    v245 = (v230 + 16);
    v243 = (v230 + 8);
    v244 = CKCurrentUserDefaultName;
    v242 = (v230 + 32);
    v66 = (v251 + 8);
    while (1)
    {
      if (v65 >= v251[2])
      {
        goto LABEL_124;
      }

      v73 = *(v66 - 4);
      v72 = *(v66 - 3);
      v74 = *(v66 - 2);
      v75 = *(v66 - 1);
      LODWORD(v257) = *v66;
      v76 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v77 = v73 + v76;
      v78 = v248;
      sub_10000C83C(v77, v248, type metadata accessor for CRLBoardCRDTData);
      v256 = v75;
      v79 = v75;

      v266 = v72;

      v265 = v74;

      sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
      v80 = v259;
      CRRegister.wrappedValue.getter();
      sub_100026028(v78, type metadata accessor for CRLBoardCRDTData);
      v81 = *(v73 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v82 = *(v73 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);
      (*v245)(v260, v80, v263);
      v84 = v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83;
      if (v84 || (v85 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v85 & 1) != 0))
      {

        v81 = 0;
        v82 = 0xE000000000000000;
      }

      v86 = v263;
      (*v243)(v259, v263);
      v87 = v249;
      (*v242)(v249, v260, v86);
      v88 = (v87 + *(v250 + 20));
      *v88 = v81;
      v88[1] = v82;
      v89 = v247;
      sub_100025668(v87, v247, type metadata accessor for CRLBoardIdentifierStorage);
      v90 = v89;
      v91 = v258;
      sub_100025668(v90, v258, type metadata accessor for CRLBoardIdentifier);
      v92 = v264;
      sub_10000C83C(v91, v264, type metadata accessor for CRLBoardIdentifier);
      v93 = v262;
      swift_beginAccess();

      v94 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = *v93;
      v268 = v96;
      v97 = sub_1000486F0(v92);
      v99 = v96[2];
      v100 = (v98 & 1) == 0;
      v101 = __OFADD__(v99, v100);
      v102 = v99 + v100;
      if (v101)
      {
        break;
      }

      v103 = v98;
      v104 = v96[3];
      v254 = v94;
      if (v104 >= v102)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v115 = v97;
          sub_100AA7624();
          v97 = v115;
        }
      }

      else
      {
        sub_100A8DDE4(v102, isUniquelyReferenced_nonNull_native);
        v97 = sub_1000486F0(v264);
        if ((v103 & 1) != (v105 & 1))
        {
          goto LABEL_135;
        }
      }

      v255 = v65;
      v106 = v268;
      if (v103)
      {
        v67 = v268[7] + 40 * v97;
        v68 = *(v67 + 24);
        v70 = v265;
        v69 = v266;
        *v67 = v73;
        *(v67 + 8) = v69;
        v71 = v256;
        *(v67 + 16) = v70;
        *(v67 + 24) = v71;
        *(v67 + 32) = v257;

        sub_100026028(v264, type metadata accessor for CRLBoardIdentifier);
      }

      else
      {
        v268[(v97 >> 6) + 8] |= 1 << v97;
        v107 = v97;
        v108 = v264;
        sub_10000C83C(v264, v106[6] + *(v252 + 72) * v97, type metadata accessor for CRLBoardIdentifier);
        v109 = v106[7] + 40 * v107;
        v111 = v265;
        v110 = v266;
        *v109 = v73;
        *(v109 + 8) = v110;
        v112 = v256;
        *(v109 + 16) = v111;
        *(v109 + 24) = v112;
        *(v109 + 32) = v257;
        sub_100026028(v108, type metadata accessor for CRLBoardIdentifier);
        v113 = v106[2];
        v101 = __OFADD__(v113, 1);
        v114 = v113 + 1;
        if (v101)
        {
          goto LABEL_130;
        }

        v106[2] = v114;
      }

      v65 = v255 + 1;
      *v262 = v106;
      swift_endAccess();

      sub_100026028(v258, type metadata accessor for CRLBoardIdentifier);
      v66 += 40;
      if (v246 == v65)
      {
        goto LABEL_43;
      }
    }

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

LABEL_43:
  if (v227)
  {
    if (v227 == 1)
    {
      v116 = v262;
      swift_beginAccess();
      v117 = *v116;
      v120 = *(*v116 + 64);
      v119 = *v116 + 64;
      v118 = v120;
      v121 = 1 << v117[32];
      v122 = -1;
      if (v121 < 64)
      {
        v122 = ~(-1 << v121);
      }

      v123 = v122 & v118;
      v124 = (v121 + 63) >> 6;
      v265 = (v230 + 16);
      v266 = (v230 + 8);
      v259 = v117;
      swift_bridgeObjectRetain_n();
      v125 = 0;
      v126 = v238;
      v258 = v119;
      *&v257 = v124;
      while (v123)
      {
LABEL_54:
        v128 = __clz(__rbit64(v123)) | (v125 << 6);
        v129 = v259;
        sub_10000C83C(*(v259 + 6) + *(v252 + 72) * v128, v126, type metadata accessor for CRLBoardIdentifier);
        v130 = *(v129 + 7) + 40 * v128;
        v131 = *v130;
        v132 = *(v130 + 8);
        v134 = *(v130 + 16);
        v133 = *(v130 + 24);
        LOBYTE(v130) = *(v130 + 32);
        v135 = v126 + *(v237 + 48);
        *v135 = v131;
        *(v135 + 8) = v132;
        *(v135 + 16) = v134;
        *(v135 + 24) = v133;
        *(v135 + 32) = v130;
        v136 = *(*v132 + 744);
        swift_beginAccess();
        v137 = v132 + v136;
        v138 = v229;
        v139 = v263;
        v264 = *v265;
        (v264)(v229, v137, v263);
        v140 = v133;

        v141 = v253;
        v142 = sub_100DEBB44(v138, v238);
        v253 = v141;
        if (v141)
        {
          (*v266)(v138, v139);
          v126 = v238;
          goto LABEL_118;
        }

        v143 = v142;
        v260 = *v266;
        (v260)(v138, v139);
        v126 = v238;
        if (v143)
        {
          v144 = v240;
          sub_10000C83C(v238, v240, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();

          sub_100BC34FC(v145, v144);
          swift_endAccess();
        }

        v146 = *(*v134 + 744);
        swift_beginAccess();
        v147 = v228;
        v148 = v263;
        (v264)(v228, v134 + v146, v263);
        v149 = v253;
        v150 = sub_100DEBB44(v147, v126);
        v253 = v149;
        if (v149)
        {
          (v260)(v147, v148);
LABEL_118:

          sub_10000CAAC(v126, &qword_101A21C60, &qword_1014B6528);

LABEL_119:

          goto LABEL_120;
        }

        v151 = v150;
        (v260)(v147, v148);
        if (v151)
        {
          v152 = v240;
          sub_10000C83C(v126, v240, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();

          sub_100BC34FC(v153, v152);
          swift_endAccess();
        }

        v123 &= v123 - 1;
        sub_10000CAAC(v126, &qword_101A21C60, &qword_1014B6528);
        v119 = v258;
        v124 = v257;
      }

      while (1)
      {
        v127 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          break;
        }

        if (v127 >= v124)
        {

          goto LABEL_74;
        }

        v123 = *(v119 + 8 * v127);
        ++v125;
        if (v123)
        {
          v125 = v127;
          goto LABEL_54;
        }
      }

LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_135:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v155 = *(v227 + 16);
    if (v155)
    {
      v156 = v227 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
      v260 = *(v252 + 72);
      v265 = (v230 + 8);
      v266 = (v230 + 16);
      v157 = v234;
      v158 = v241;
      do
      {
        sub_10000C83C(v156, v158, type metadata accessor for CRLBoardIdentifier);
        v159 = v253;
        v160 = sub_100DEB448(v158);
        if (v159)
        {
          v154 = v241;
          goto LABEL_61;
        }

        v161 = v160;
        v253 = 0;
        if (v160)
        {
          v162 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
          swift_beginAccess();
          v163 = *v266;
          v164 = v263;
          (*v266)(v157, v161 + v162, v263);
          v165 = v253;
          v166 = sub_100DEBB44(v157, v241);
          v167 = v157;
          if (v165)
          {

            (*v265)(v157, v164);
            sub_100026028(v241, type metadata accessor for CRLBoardIdentifier);

            goto LABEL_120;
          }

          v168 = v166;
          v264 = *v265;
          (v264)(v167, v164);
          if (v168)
          {
            v169 = v240;
            sub_10000C83C(v241, v240, type metadata accessor for CRLBoardIdentifier);
            swift_beginAccess();

            sub_100BC34FC(v170, v169);
            swift_endAccess();
          }

          v171 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID;
          swift_beginAccess();
          v172 = v161 + v171;
          v173 = v232;
          v174 = v263;
          (v163)(v232, v172, v263);
          v175 = sub_100DEBB44(v173, v241);
          v253 = 0;
          v176 = v175;
          (v264)(v173, v174);
          if (v176)
          {
            v177 = v240;
            sub_10000C83C(v241, v240, type metadata accessor for CRLBoardIdentifier);
            swift_beginAccess();

            sub_100BC34FC(v178, v177);
            swift_endAccess();
          }

          v157 = v234;
        }

        v158 = v241;
        sub_100026028(v241, type metadata accessor for CRLBoardIdentifier);
        v156 += v260;
        --v155;
      }

      while (v155);
    }
  }

LABEL_74:
  if (v226)
  {
    v179 = v262;
    swift_beginAccess();
    v180 = *v179;
    v183 = *(*v179 + 64);
    v182 = *v179 + 64;
    v181 = v183;
    v184 = 1 << v180[32];
    v185 = -1;
    if (v184 < 64)
    {
      v185 = ~(-1 << v184);
    }

    v186 = v185 & v181;
    v187 = (v184 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v188 = 0;
    v258 = v182;
    v259 = v180;
    *&v257 = v187;
LABEL_80:
    if (v186)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v194 = v188 + 1;
      if (__OFADD__(v188, 1))
      {
        goto LABEL_129;
      }

      if (v194 >= v187)
      {
        break;
      }

      v186 = *(v182 + 8 * v194);
      ++v188;
      if (v186)
      {
        v188 = v194;
LABEL_85:
        v260 = v188;
        v195 = __clz(__rbit64(v186)) | (v188 << 6);
        v196 = v239;
        sub_10000C83C(*(v180 + 6) + *(v252 + 72) * v195, v239, type metadata accessor for CRLBoardIdentifier);
        v197 = *(v180 + 7) + 40 * v195;
        v198 = *v197;
        v199 = *(v197 + 8);
        v201 = *(v197 + 16);
        v200 = *(v197 + 24);
        LOBYTE(v197) = *(v197 + 32);
        v202 = v196 + *(v237 + 48);
        *v202 = v198;
        *(v202 + 8) = v199;
        *(v202 + 16) = v201;
        *(v202 + 24) = v200;
        *(v202 + 32) = v197;
        v203 = v200;

        v204 = v253;
        v205 = sub_100E12FDC(v196);
        v253 = v204;
        if (v204)
        {

          sub_10000CAAC(v239, &qword_101A21C60, &qword_1014B6528);

          goto LABEL_119;
        }

        v206 = v205;
        if (v205 >> 62)
        {
          v207 = _CocoaArrayWrapper.endIndex.getter();
          if (!v207)
          {
            goto LABEL_78;
          }

LABEL_88:
          v208 = 0;
          v265 = (v206 & 0xC000000000000001);
          v262 = (v206 & 0xFFFFFFFFFFFFFF8);
          v189 = _swiftEmptyDictionarySingleton;
          v263 = v186;
          v264 = v206;
          while (2)
          {
            if (v265)
            {
              v209 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v210 = (v208 + 1);
              if (__OFADD__(v208, 1))
              {
                goto LABEL_122;
              }
            }

            else
            {
              if (v208 >= v262[2])
              {
                goto LABEL_131;
              }

              v209 = *(v206 + 8 * v208 + 32);

              v210 = (v208 + 1);
              if (__OFADD__(v208, 1))
              {
LABEL_122:
                __break(1u);
LABEL_123:
                __break(1u);
LABEL_124:
                __break(1u);
                goto LABEL_125;
              }
            }

            v266 = v210;
            v211 = *(v209 + 16);

            v212 = swift_isUniquelyReferenced_nonNull_native();
            v267 = v189;
            v214 = sub_1007C7EC0(v211);
            v215 = v189[2];
            v216 = (v213 & 1) == 0;
            v217 = v215 + v216;
            if (__OFADD__(v215, v216))
            {
              goto LABEL_123;
            }

            v218 = v213;
            if (v189[3] >= v217)
            {
              if (v212)
              {
                v189 = v267;
                if ((v213 & 1) == 0)
                {
                  goto LABEL_104;
                }
              }

              else
              {
                sub_100AA4700();
                v189 = v267;
                if ((v218 & 1) == 0)
                {
                  goto LABEL_104;
                }
              }
            }

            else
            {
              sub_100A89AE8(v217, v212);
              v219 = sub_1007C7EC0(v211);
              if ((v218 & 1) != (v220 & 1))
              {
                goto LABEL_134;
              }

              v214 = v219;
              v189 = v267;
              if ((v218 & 1) == 0)
              {
LABEL_104:
                v189[(v214 >> 6) + 8] |= 1 << v214;
                *(v189[6] + 8 * v214) = v211;
                *(v189[7] + 8 * v214) = v209;

                v221 = v189[2];
                v101 = __OFADD__(v221, 1);
                v222 = v221 + 1;
                if (v101)
                {
                  goto LABEL_126;
                }

                v189[2] = v222;
                goto LABEL_90;
              }
            }

            *(v189[7] + 8 * v214) = v209;

LABEL_90:
            ++v208;
            v186 = v263;
            v206 = v264;
            if (v266 == v207)
            {
              goto LABEL_79;
            }

            continue;
          }
        }

        v207 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v207)
        {
          goto LABEL_88;
        }

LABEL_78:
        v189 = _swiftEmptyDictionarySingleton;
LABEL_79:
        v186 &= v186 - 1;

        sub_1005B981C(&qword_101A12978, &unk_1014B7620);
        v190 = swift_allocObject();
        *(v190 + 16) = v189;
        *(v190 + 24) = _swiftEmptyDictionarySingleton;
        v191 = v231;
        swift_beginAccess();

        v192 = swift_isUniquelyReferenced_nonNull_native();
        v272 = *v191;
        v193 = v239;
        sub_100AA0D50(v190, v239, v192);
        *v191 = v272;
        swift_endAccess();

        sub_10000CAAC(v193, &qword_101A21C60, &qword_1014B6528);
        v182 = v258;
        v180 = v259;
        v187 = v257;
        v188 = v260;
        goto LABEL_80;
      }
    }
  }

  return v236;
}