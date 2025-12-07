void *sub_10009B3E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  *&v347 = a1;
  *(&v347 + 1) = a2;
  v348 = String.subscript.getter();
  v351 = a7;
  v342 = v21;
  v344 = v20;
  v316 = a7[2];
  v317 = v22;
  v23 = (a14 + 32);
  v333 = a4;
  v334 = _swiftEmptyDictionarySingleton;
  v24 = *(a14 + 16);
  if (!v24)
  {
LABEL_21:
    v60 = a6;
    if (a15)
    {
      if (!v316)
      {

        if (qword_1001982F0 != -1)
        {
LABEL_259:
          sub_100002A48();
          swift_once();
        }

        v225 = type metadata accessor for Logger();
        sub_10000347C(v225, qword_10019E008);

        v63 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        if (!sub_100012638())
        {
          goto LABEL_140;
        }

        sub_100007764();
        v226 = sub_100012074();
        sub_1000248B4(v226);
        sub_100019D54(4.8149e-34);
        *(a7 + 4) = sub_100004C50(a5, v60, v227);
        goto LABEL_139;
      }

      sub_1000A0D08(v348, v344, v342, v317, v351);
      if (v61)
      {

        if (qword_1001982F0 != -1)
        {
          sub_100002A48();
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_10000347C(v62, qword_10019E008);

        v63 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        if (!sub_100012638())
        {
          goto LABEL_140;
        }

        sub_100007764();
        v64 = sub_100012074();
        sub_1000248B4(v64);
        sub_100019D54(4.8149e-34);
        *(a7 + 4) = sub_100004C50(a5, a6, v65);
LABEL_139:
        sub_100006AA4(&_mh_execute_header, v66, v67, v68);
        sub_1000034F8(v17);
        sub_100004D70();
        sub_1000036AC(a7);
LABEL_140:

        return Dictionary.init(dictionaryLiteral:)();
      }
    }

    if (v316 <= 5)
    {
      v74 = a13 + 64;
      sub_100002BE8();
      v77 = v76 & v75;
      v79 = (v78 + 63) >> 6;

      v80 = 0;
      v81 = _swiftEmptyDictionarySingleton;
      v353 = v79;
      if (v77)
      {
        goto LABEL_38;
      }

      while (1)
      {
LABEL_34:
        v82 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
          goto LABEL_240;
        }

        if (v82 >= v79)
        {
          break;
        }

        v77 = *(v74 + 8 * v82);
        ++v80;
        if (v77)
        {
          v80 = v82;
LABEL_38:
          while (1)
          {
            v17 = *(*(a13 + 56) + 8 * (__clz(__rbit64(v77)) | (v80 << 6)));

            a7 = String.subscript.getter();
            v84 = v83;
            v86 = v85;
            v88 = v87;
            v380 = v17;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v389 = v81;
            v365 = v84;
            v363 = v86;
            v89 = v88;
            sub_10004592C();
            sub_100003B6C();
            a4 = v92 + v93;
            if (__OFADD__(v92, v93))
            {
              goto LABEL_250;
            }

            v17 = v90;
            v94 = v91;
            sub_10002EB80(&qword_10019A0D8, &qword_10014EE98);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, a4))
            {
              v95 = sub_10004592C();
              if ((v94 & 1) != (v96 & 1))
              {
                goto LABEL_262;
              }

              v17 = v95;
            }

            if (v94)
            {

              v81 = v389;
              *(*(v389 + 56) + 8 * v17) = v380;
            }

            else
            {
              v97 = v389;
              sub_10000681C(v389 + 8 * (v17 >> 6));
              v98 = (v97[6] + 32 * v17);
              *v98 = a7;
              v98[1] = v365;
              v98[2] = v363;
              v98[3] = v89;
              *(v97[7] + 8 * v17) = v380;

              v99 = v97[2];
              v56 = __OFADD__(v99, 1);
              v100 = v99 + 1;
              if (v56)
              {
                goto LABEL_251;
              }

              v81 = v97;
              v97[2] = v100;
            }

            v77 &= v77 - 1;
            v74 = a13 + 64;
            v79 = v353;
            if (!v77)
            {
              goto LABEL_34;
            }
          }
        }
      }

      v101 = 0;
      v102 = *(a12 + 16);
      v17 = a12 + 40;
      v103 = _swiftEmptyArrayStorage;
LABEL_49:
      v104 = (v17 + 16 * v101);
      while (v102 != v101)
      {
        if (v101 >= v102)
        {
          goto LABEL_233;
        }

        v105 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          goto LABEL_234;
        }

        v106 = *(v104 - 1);
        a7 = *v104;
        v107 = (*v104 >> 56) & 0xF;
        if ((*v104 & 0x2000000000000000) == 0)
        {
          v107 = v106 & 0xFFFFFFFFFFFFLL;
        }

        ++v101;
        v104 += 2;
        if (v107)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100004E28();
            sub_100013A60();
            v103 = v110;
          }

          a4 = v103[2];
          v108 = v103[3];
          if (a4 >= v108 >> 1)
          {
            sub_100005150(v108);
            sub_100013A60();
            v103 = v111;
          }

          v103[2] = a4 + 1;
          v109 = &v103[2 * a4];
          v109[4] = v106;
          v109[5] = a7;
          v101 = v105;
          goto LABEL_49;
        }
      }

      v112 = swift_isUniquelyReferenced_nonNull_native();
      *&v389 = v81;
      sub_100069490(v103, v348, v344, v342, v317, v112);
      sub_10002EB80(&qword_10019A4F0, &unk_100150160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014CE90;
      *(inited + 32) = a5;
      *(inited + 40) = a6;
      *(inited + 48) = v347;
      v329 = inited;
      *(inited + 64) = _swiftEmptyArrayStorage;

      *&v389 = sub_10006B6A4(v351);
      v114 = v392;
      sub_100055648(&v389);
      a4 = &v389;
      v392 = v114;
      if (v114)
      {

        __break(1u);
        return result;
      }

      v313 = *(v389 + 16);
      if (v313)
      {
        v115 = 0;
        v116 = v389 + 32;
        v17 = 48;
        v318 = v389 + 32;
        while (1)
        {
          v117 = v115;
          sub_100038190();
          v314 = v117;
          v118 = v116 + 48 * v117;
          a7 = *v118;
          v119 = *(v118 + 8);
          v120 = *(v118 + 16);
          v121 = *(v118 + 24);

          static String._fromSubstring(_:)();
          v122 = sub_1000B6334();

          v352 = v121;
          v376 = v120;
          v381 = a7;
          v366 = v119;
          if (v122)
          {
            break;
          }

          v177 = v121;
          v178 = sub_1000B6318();
          if (!v178)
          {
            goto LABEL_228;
          }

          v179 = v178;
          v180 = 0;
          v326 = *(v329 + 16);
          v323 = (v178 + 40);
          v181 = _swiftEmptyArrayStorage;
          v321 = v179;
          while (v180 != v326)
          {
            if (v180 >= *(v329 + 16))
            {
              goto LABEL_235;
            }

            v182 = *(v179 + 16);
            if (v182)
            {
              v331 = v181;
              v328 = v180;
              v183 = (v329 + 32 + 40 * v180);
              v338 = *v183;
              v184 = v183[3];
              v336 = v183[2];
              v185 = v183[4];
              a5 = v183[1];

              v373 = v184;

              v340 = v185;

              sub_1000B37C4(0, v182, 0);
              v370 = _swiftEmptyArrayStorage;
              v358 = v182 - 1;
              for (i = v323; ; i = v350 + 2)
              {
                v188 = *(i - 1);
                v187 = *i;
                v350 = i;

                v189 = static String._fromSubstring(_:)();
                v191 = v190;
                sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
                v192 = swift_allocObject();
                *(v192 + 16) = xmmword_10014CE90;
                *(v192 + 32) = v188;
                *(v192 + 40) = v187;
                v389 = v347;
                v343 = v189;
                v346 = v188;
                *&v390 = v189;
                *(&v390 + 1) = v191;
                *v391 = v188;
                *&v391[8] = v187;
                *&v391[16] = v192;
                *&v391[24] = 1;
                v385 = v188;
                v386 = v187;
                sub_1000563F8();
                swift_bridgeObjectRetain_n();

                v193 = String.replaceSubrange<A>(_:with:)();
                if (qword_100198298 != -1)
                {
                  sub_100011148();
                  v193 = swift_once();
                }

                v385 = v381;
                v386 = v366;
                v387 = v376;
                v388 = v177;
                __chkstk_darwin(v193);
                sub_100003710();
                *(v194 - 16) = &v385;
                v195 = v392;
                v196 = v392;
                if (sub_10005770C())
                {
                  v392 = v195;
                  sub_10009F164(&v389);

                  v198 = v177;
                  v199 = v358;
                }

                else
                {
                  v385 = static String._fromSubstring(_:)();
                  v386 = v200;
                  __chkstk_darwin(v385);
                  sub_100003710();
                  *(v201 - 16) = &v385;
                  v202 = sub_1000574AC();
                  v392 = v196;

                  if (v202)
                  {
                    sub_10009F164(&v389);
                    v203 = *(&v347 + 1);

                    v204 = v191;
                    v199 = v358;
                  }

                  else
                  {
                    v204 = v191;

                    v203 = *(&v347 + 1);
                    v199 = v358;
                  }

                  sub_10002EB80(&qword_10019A4F8, &unk_100150170);
                  v205 = swift_initStackObject();
                  *(v205 + 16) = xmmword_10014CE90;
                  *(v205 + 32) = v347;
                  *(v205 + 40) = v203;
                  *(v205 + 48) = v343;
                  *(v205 + 56) = v204;
                  *(v205 + 64) = v346;
                  *(v205 + 72) = v187;
                  *(v205 + 80) = v192;
                  *(v205 + 88) = 1;
                  *(v205 + 89) = v202;
                  v385 = v340;

                  sub_10006E450(v205);

                  v197 = v385;
                  v198 = v352;
                }

                v206 = v370;
                v208 = v370[2];
                v207 = v370[3];
                if (v208 >= v207 >> 1)
                {
                  v210 = sub_100005150(v207);
                  sub_1000B37C4(v210, v208 + 1, 1);
                  v206 = v370;
                }

                v206[2] = v208 + 1;
                v209 = &v206[5 * v208];
                v209[4] = v338;
                v209[5] = a5;
                v209[6] = v336;
                v209[7] = v373;
                v209[8] = v197;
                if (!v199)
                {
                  break;
                }

                v370 = v206;
                v177 = v198;
                v358 = v199 - 1;
              }

              a4 = &v389;
              v181 = v331;
              v179 = v321;
              v180 = v328;
            }

            else
            {
              v206 = _swiftEmptyArrayStorage;
            }

            v211 = v206;
            v212 = v206[2];
            a7 = v181[2];
            v17 = a7 + v212;
            if (__OFADD__(a7, v212))
            {
              goto LABEL_236;
            }

            v213 = v181;
            v214 = swift_isUniquelyReferenced_nonNull_native();
            v215 = v213;
            if ((v214 & 1) == 0 || v17 > v213[3] >> 1)
            {
              sub_100070A08();
              v215 = v216;
            }

            v17 = 48;
            ++v180;
            if (v211[2])
            {
              sub_10000EE98();
              if (v219 < v212)
              {
                goto LABEL_244;
              }

              a7 = &v217[5 * v218];
              v220 = v217;
              sub_10002EB80(&qword_10019B390, &qword_1001505A0);
              swift_arrayInitWithCopy();

              v181 = v220;
              v17 = 48;
              v177 = v352;
              if (v212)
              {
                v221 = v181[2];
                v56 = __OFADD__(v221, v212);
                v222 = v221 + v212;
                if (v56)
                {
                  goto LABEL_248;
                }

                v181[2] = v222;
              }
            }

            else
            {
              v223 = v215;

              v181 = v223;
              v177 = v352;
              if (v212)
              {
                goto LABEL_237;
              }
            }
          }

          v224 = v181;
          v116 = v318;
LABEL_134:

          v329 = v224;
          v115 = v314 + 1;
          if (v314 + 1 == v313)
          {
            goto LABEL_143;
          }
        }

        v123 = v121;
        v124 = 0;
        v319 = *(v329 + 16);
        v327 = v122 + 32;
        v125 = _swiftEmptyArrayStorage;
        v116 = v318;
        v320 = v122;
        while (1)
        {
LABEL_66:
          if (v124 == v319)
          {
            v224 = v125;
            goto LABEL_134;
          }

          if (v124 >= *(v329 + 16))
          {
            goto LABEL_238;
          }

          v330 = v125;
          v126 = (v329 + 32 + 40 * v124);
          v349 = *v126;
          v127 = v126[3];
          v345 = v126[2];
          v128 = v126[4];
          v325 = v124 + 1;
          a7 = *(v122 + 16);
          v354 = v126[1];

          v372 = v127;

          v357 = v128;

          v129 = 0;
          v130 = _swiftEmptyArrayStorage;
LABEL_69:
          v131 = (v327 + (v129 << 6));
          while (a7 != v129)
          {
            if (v129 >= a7)
            {
              __break(1u);
LABEL_224:
              __break(1u);
              goto LABEL_225;
            }

            v132 = *v131;
            v133 = v131[1];
            v134 = v131[2];
            *&v391[10] = *(v131 + 42);
            v390 = v133;
            *v391 = v134;
            v389 = v132;
            if (__OFADD__(v129, 1))
            {
              goto LABEL_224;
            }

            v135 = *(*&v391[16] + 16);
            if (v135)
            {
              v322 = v129 + 1;
              v324 = a7;
              v136 = sub_100009A34();
              v138 = v137;
              sub_10009F108(v136, v139);
              sub_1000563F8();
              v335 = v138;
              v140 = (v138 + 40);
              v141 = v392;
              v142 = v123;
              do
              {
                v369 = v130;
                v143 = *v140;
                v385 = *(v140 - 1);
                v386 = v143;

                v144 = String.replaceSubrange<A>(_:with:)();
                if (qword_100198298 != -1)
                {
                  sub_100011148();
                  v144 = swift_once();
                }

                v385 = v381;
                v386 = v366;
                v387 = v376;
                v388 = v142;
                __chkstk_darwin(v144);
                sub_100003710();
                *(v145 - 16) = &v385;
                if (sub_10005770C())
                {
                }

                else
                {
                  v385 = static String._fromSubstring(_:)();
                  v386 = v147;
                  __chkstk_darwin(v385);
                  sub_100003710();
                  *(v148 - 16) = &v385;
                  v149 = sub_1000574AC();

                  v392 = v141;
                  if (v149)
                  {
                    v150 = *(&v389 + 1);
                    v151 = *(&v390 + 1);
                    v337 = v389;
                    v339 = v390;
                    v152 = *&v391[8];
                    a5 = *v391;

                    v153 = v335;

                    v154 = 1;
                  }

                  else
                  {
                    v154 = v391[25];
                    v152 = *&v391[8];
                    v151 = *(&v390 + 1);
                    v339 = v390;
                    a5 = *v391;
                    v150 = *(&v389 + 1);
                    v337 = v389;
                    v155 = sub_100009A34();
                    sub_10009F108(v155, v156);
                    v153 = v335;
                  }

                  v157 = v391[24];
                  sub_10002EB80(&qword_10019A4F8, &unk_100150170);
                  v158 = swift_initStackObject();
                  *(v158 + 16) = xmmword_10014CE90;
                  *(v158 + 32) = v337;
                  *(v158 + 40) = v150;
                  *(v158 + 48) = v339;
                  *(v158 + 56) = v151;
                  *(v158 + 64) = a5;
                  *(v158 + 72) = v152;
                  *(v158 + 80) = v153;
                  *(v158 + 88) = v157;
                  *(v158 + 89) = v154;
                  v385 = v357;

                  sub_10006E450(v158);
                  v146 = v385;
                  v141 = v392;
                }

                v159 = v369;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_100004E28();
                  sub_100070A08();
                  v159 = v164;
                }

                v161 = *(v159 + 16);
                v160 = *(v159 + 24);
                v162 = v159;
                if (v161 >= v160 >> 1)
                {
                  sub_100005150(v160);
                  sub_100070A08();
                  v162 = v165;
                }

                v162[2] = v161 + 1;
                v130 = v162;
                v163 = &v162[5 * v161];
                v163[4] = v349;
                v163[5] = v354;
                v163[6] = v345;
                v163[7] = v372;
                v163[8] = v146;
                v140 += 2;
                --v135;
                v17 = 48;
                v142 = v352;
              }

              while (v135);
              v123 = v352;
              v392 = v141;
              sub_10009F164(&v389);
              a4 = &v389;
              v116 = v318;
              v122 = v320;
              v129 = v322;
              a7 = v324;
              goto LABEL_69;
            }

            v131 += 4;
            ++v129;
          }

          v166 = v130;
          v167 = v130[2];
          v168 = v330[2];
          a7 = (v168 + v167);
          if (__OFADD__(v168, v167))
          {
            goto LABEL_239;
          }

          v169 = swift_isUniquelyReferenced_nonNull_native();
          v170 = v330;
          if ((v169 & 1) == 0 || a7 > v330[3] >> 1)
          {
            sub_100070A08();
            v170 = v171;
          }

          if (!v166[2])
          {
            break;
          }

          sub_10000EE98();
          if (v173 < v167)
          {
            goto LABEL_245;
          }

          a7 = v172;
          sub_10002EB80(&qword_10019B390, &qword_1001505A0);
          swift_arrayInitWithCopy();

          v125 = a7;
          v123 = v352;
          v124 = v325;
          if (v167)
          {
            v174 = a7[2];
            v56 = __OFADD__(v174, v167);
            v175 = v174 + v167;
            if (v56)
            {
              goto LABEL_249;
            }

            a7[2] = v175;
          }
        }

        v176 = v170;

        v125 = v176;
        v123 = v352;
        v124 = v325;
        if (!v167)
        {
          goto LABEL_66;
        }

LABEL_240:
        __break(1u);
        goto LABEL_241;
      }

      v224 = v329;
LABEL_143:
      v332 = v224;

      v230 = a17 + 64;
      sub_100002BE8();
      v60 = v232 & v231;
      v17 = (v233 + 63) >> 6;

      a4 = 0;
      v359 = _swiftEmptyArrayStorage;
      while (v60)
      {
LABEL_149:
        a7 = *(*(a17 + 56) + ((a4 << 9) | (8 * __clz(__rbit64(v60)))));
        v235 = a7[2];
        v236 = v359[2];
        if (__OFADD__(v236, v235))
        {
          goto LABEL_252;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v236 + v235 > v359[3] >> 1)
        {
          sub_100070554();
          v359 = v237;
        }

        v230 = a17 + 64;
        v60 &= v60 - 1;
        if (a7[2])
        {
          sub_10000EE98();
          if (v238 < v235)
          {
            goto LABEL_254;
          }

          swift_arrayInitWithCopy();

          if (v235)
          {
            v239 = v359[2];
            v56 = __OFADD__(v239, v235);
            v240 = v239 + v235;
            if (v56)
            {
LABEL_257:
              __break(1u);
LABEL_258:
              __break(1u);
              goto LABEL_259;
            }

            v359[2] = v240;
          }
        }

        else
        {

          if (v235)
          {
            __break(1u);
LABEL_160:

            v241 = 1 << *(a17 + 32);
            v242 = -1;
            if (v241 < 64)
            {
              v242 = ~(-1 << v241);
            }

            v243 = v242 & *(a17 + 64);
            v382 = (v241 + 63) >> 6;

            v60 = 0;
            v244 = _swiftEmptyArrayStorage;
            while (v243)
            {
LABEL_168:
              v17 = *(*(a17 + 56) + ((v60 << 9) | (8 * __clz(__rbit64(v243)))));
              a7 = *(v17 + 16);
              v246 = v244[2];
              a4 = a7 + v246;
              if (__OFADD__(v246, a7))
              {
                goto LABEL_253;
              }

              if (!swift_isUniquelyReferenced_nonNull_native() || a4 > v244[3] >> 1)
              {
                sub_100070554();
                v244 = v247;
              }

              v243 &= v243 - 1;
              if (*(v17 + 16))
              {
                sub_10000EE98();
                if (v248 < a7)
                {
                  __break(1u);
                  goto LABEL_257;
                }

                swift_arrayInitWithCopy();

                if (a7)
                {
                  v249 = v244[2];
                  v56 = __OFADD__(v249, a7);
                  v250 = a7 + v249;
                  if (v56)
                  {
                    goto LABEL_258;
                  }

                  v244[2] = v250;
                }
              }

              else
              {

                if (a7)
                {
                  __break(1u);
LABEL_179:

                  v251 = 0;
                  a4 = v244[2];
                  v252 = (v244 + 7);
                  v383 = _swiftEmptyArrayStorage;
                  while (a4 != v251)
                  {
                    if (v251 >= v244[2])
                    {
                      goto LABEL_243;
                    }

                    v253 = *(v252 - 1);
                    a7 = *v252;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_100004E28();
                      sub_100013A60();
                      v383 = v257;
                    }

                    v255 = v383[2];
                    v254 = v383[3];
                    v17 = v255 + 1;
                    if (v255 >= v254 >> 1)
                    {
                      sub_100005150(v254);
                      sub_100013A60();
                      v383 = v258;
                    }

                    v383[2] = v17;
                    v256 = &v383[2 * v255];
                    v256[4] = v253;
                    v256[5] = a7;
                    v252 += 8;
                    ++v251;
                  }

                  v259 = 0;
                  a4 = _swiftEmptyArrayStorage;
                  v355 = v332[2];
                  while (v259 != v355)
                  {
                    sub_10001AB24();
                    sub_100038190();
                    v260 = &v332[5 * v259 + 4];
                    v374 = *v260;
                    v261 = v260[3];
                    v362 = v260[2];
                    v364 = v260[1];
                    v262 = v260[4];
                    v367 = v259 + 1;
                    v263 = *(v262 + 16);

                    v360 = v261;

                    v264 = 0;
                    v377 = _swiftEmptyArrayStorage;
LABEL_190:
                    a7 = ((v264 << 6) | 0x20);
                    while (v263 != v264)
                    {
                      sub_10001AB24();
                      v265 = sub_100038190();
                      v266 = *(a7 + v262);
                      v267 = *(a7 + v262 + 16);
                      v268 = *(a7 + v262 + 32);
                      *&v391[10] = *(a7 + v262 + 42);
                      v390 = v267;
                      *v391 = v268;
                      v389 = v266;
                      v17 = v264 + 1;
                      if (__OFADD__(v264, 1))
                      {
LABEL_225:
                        __break(1u);
                        goto LABEL_226;
                      }

                      __chkstk_darwin(v265);
                      v269 = sub_100009A34();
                      sub_10009F108(v269, v270);

                      v271 = v392;
                      v272 = sub_1000574AC();
                      v392 = v271;

                      if (!v272)
                      {
                        v273 = v377;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_1000B37A4(0, v377[2] + 1, 1);
                          v273 = v377;
                        }

                        v275 = v273[2];
                        v274 = v273[3];
                        if (v275 >= v274 >> 1)
                        {
                          v280 = sub_100005150(v274);
                          sub_1000B37A4(v280, v275 + 1, 1);
                          v273 = v377;
                        }

                        v273[2] = v275 + 1;
                        v377 = v273;
                        v276 = &v273[8 * v275];
                        v277 = v389;
                        v278 = v390;
                        v279 = *v391;
                        *(v276 + 74) = *&v391[10];
                        v276[3] = v278;
                        v276[4] = v279;
                        v276[2] = v277;
                        v264 = v17;
                        goto LABEL_190;
                      }

                      sub_10009F164(&v389);
                      a7 += 8;
                      ++v264;
                    }

                    *&v389 = v359;

                    sub_10006E450(v377);

                    v281 = v389;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_100004E28();
                      sub_100070A08();
                      a4 = v285;
                    }

                    v283 = *(a4 + 16);
                    v282 = *(a4 + 24);
                    if (v283 >= v282 >> 1)
                    {
                      sub_100005150(v282);
                      sub_100070A08();
                      a4 = v286;
                    }

                    *(a4 + 16) = v283 + 1;
                    v284 = (a4 + 40 * v283);
                    v284[4] = v374;
                    v284[5] = v364;
                    v284[6] = v362;
                    v284[7] = v360;
                    v284[8] = v281;
                    v259 = v367;
                  }

                  v287 = *(a4 + 16);

                  if (v316 <= 1)
                  {
                    v288 = 1;
                  }

                  else
                  {
                    v288 = v316;
                  }

                  v289 = sub_10009EE6C(0, v287, v288);
                  v290 = 0;
                  v291 = v289[2];
                  a7 = a4;
                  v17 = a4 + 32;
                  v378 = _swiftEmptyArrayStorage;
                  while (v291 != v290)
                  {
                    if (v290 >= v291)
                    {
                      goto LABEL_246;
                    }

                    v292 = v290 + 1;
                    if (__OFADD__(v290, 1))
                    {
                      goto LABEL_247;
                    }

                    v293 = v289[v290++ + 4];
                    if (v293 < a7[2])
                    {
                      if (v293 < 0)
                      {
                        __break(1u);
                        goto LABEL_261;
                      }

                      v294 = (v17 + 40 * v293);
                      v295 = v294[1];
                      v296 = v294[3];
                      v368 = v294[2];
                      v371 = *v294;
                      a4 = v294[4];

                      v384 = v17;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_100004E28();
                        sub_100070A08();
                        v378 = v300;
                      }

                      v298 = v378[2];
                      v297 = v378[3];
                      if (v298 >= v297 >> 1)
                      {
                        sub_100005150(v297);
                        sub_100070A08();
                        v378 = v301;
                      }

                      v378[2] = v298 + 1;
                      v299 = &v378[5 * v298];
                      v299[4] = v371;
                      v299[5] = v295;
                      v299[6] = v368;
                      v299[7] = v296;
                      v299[8] = a4;
                      v290 = v292;
                      v17 = v384;
                    }
                  }

                  v302 = 0;
                  v375 = v378[2];
                  v303 = v378 + 8;
                  v228 = _swiftEmptyDictionarySingleton;
                  while (v375 != v302)
                  {
                    sub_100038190();
                    ++v302;
                    v305 = *(v303 - 1);
                    v304 = *v303;
                    v306 = *(v303 - 2);

                    sub_10009D2E0(v306, v305, v304);
                    swift_isUniquelyReferenced_nonNull_native();
                    *&v389 = v228;
                    sub_100068CEC();

                    v228 = v389;
                    v303 += 5;
                  }

                  swift_bridgeObjectRelease_n();

                  return v228;
                }
              }
            }

            while (1)
            {
              v245 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
                goto LABEL_242;
              }

              if (v245 >= v382)
              {
                goto LABEL_179;
              }

              v243 = *(v230 + 8 * v245);
              ++v60;
              if (v243)
              {
                v60 = v245;
                goto LABEL_168;
              }
            }
          }
        }
      }

      while (1)
      {
        v234 = a4 + 1;
        if (__OFADD__(a4, 1))
        {
          break;
        }

        if (v234 >= v17)
        {
          goto LABEL_160;
        }

        v60 = *(v230 + 8 * v234);
        ++a4;
        if (v60)
        {
          a4 = v234;
          goto LABEL_149;
        }
      }

LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
    }

    else
    {

      if (qword_1001982F0 == -1)
      {
        goto LABEL_30;
      }
    }

    sub_100002A48();
    swift_once();
LABEL_30:
    v69 = type metadata accessor for Logger();
    sub_10000347C(v69, qword_10019E008);

    v63 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_100012638())
    {
      sub_100007764();
      v70 = sub_100012074();
      sub_1000248B4(v70);
      sub_100019D54(4.8149e-34);
      *(a7 + 4) = sub_100004C50(a3, a4, v71);
      sub_100006AA4(&_mh_execute_header, v72, v73, "Skipping phrase template with too many tokens: %s");
      sub_1000034F8(v17);
      sub_100004D70();
      sub_1000036AC(a7);
    }

    goto LABEL_140;
  }

  while (1)
  {
    v17 = &v389;
    *&v391[10] = *(v23 + 42);
    v25 = v23[2];
    v390 = v23[1];
    *v391 = v25;
    v389 = *v23;
    v26 = v390;
    if (v334[2])
    {
      v27 = sub_100009A34();
      sub_10009F108(v27, v28);

      v29 = sub_10001AA34();
      v31 = sub_10000C2A0(v29, v30);
      a7 = _swiftEmptyArrayStorage;
      if ((v32 & 1) == 0)
      {
        goto LABEL_7;
      }

      a7 = *(v334[7] + 8 * v31);
    }

    else
    {
      v33 = sub_100009A34();
      sub_10009F108(v33, v34);
      a7 = _swiftEmptyArrayStorage;
    }

LABEL_7:
    v35 = sub_100009A34();
    sub_10009F108(v35, v36);
    v379 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100004E28();
      sub_100070554();
      a7 = v58;
    }

    v38 = a7[2];
    v37 = a7[3];
    if (v38 >= v37 >> 1)
    {
      sub_100005150(v37);
      sub_100070554();
      a7 = v59;
    }

    a7[2] = v38 + 1;
    v39 = &a7[8 * v38];
    v40 = v389;
    v41 = v390;
    v42 = *v391;
    *(v39 + 74) = *&v391[10];
    v39[3] = v41;
    v39[4] = v42;
    v39[2] = v40;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v385 = v334;
    v44 = sub_10001AA34();
    sub_10000C2A0(v44, v45);
    sub_100003B6C();
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      break;
    }

    v17 = v46;
    v51 = v47;
    sub_10002EB80(&qword_10019AFB8, &unk_100150150);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v43, v50))
    {
      sub_10000C2A0(v26, *(&v26 + 1));
      sub_10009F580();
      a4 = v333;
      if (!v53)
      {
        while (1)
        {
LABEL_262:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
        }
      }

      v17 = v52;
      if (v51)
      {
LABEL_19:

        v334 = v385;
        *(*(v385 + 56) + 8 * v17) = a7;

        sub_10009F164(&v389);
        goto LABEL_20;
      }
    }

    else
    {
      a4 = v333;
      if (v51)
      {
        goto LABEL_19;
      }
    }

    v54 = v385;
    sub_10000681C(v385 + 8 * (v17 >> 6));
    *(*(v385 + 48) + 16 * v17) = v26;
    *(v54[7] + 8 * v17) = a7;
    sub_10009F164(&v389);
    v55 = v54[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_227;
    }

    v334 = v54;
    v54[2] = v57;
LABEL_20:
    v23 += 4;
    v24 = v379 - 1;
    if (v379 == 1)
    {
      goto LABEL_21;
    }
  }

LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:

  if (qword_1001982F0 != -1)
  {
LABEL_261:
    sub_100002A48();
    swift_once();
  }

  v307 = type metadata accessor for Logger();
  sub_10000347C(v307, qword_10019E008);

  v308 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_100012638())
  {
    sub_100007764();
    v309 = sub_100012074();
    sub_1000248B4(v309);
    sub_100019D54(4.8149e-34);
    *(a7 + 4) = sub_100004C50(a3, v333, v310);
    sub_100006AA4(&_mh_execute_header, v311, v312, "Skipping phrase template with an unrecognized token: %s");
    sub_1000034F8(v17);
    sub_100004D70();
    sub_1000036AC(a7);
  }

  v228 = Dictionary.init(dictionaryLiteral:)();

  return v228;
}

uint64_t sub_10009D2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4._countAndFlagsBits = 40;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v31 = a1;
  v5 = *(a3 + 16);
  v6 = (a3 + 89);
  v7 = _swiftEmptyArrayStorage;
  if (v5)
  {
    do
    {
      v32 = v5;
      v33 = v7;
      v8 = *(v6 - 41);
      v9 = *(v6 - 33);
      v10 = *(v6 - 25);
      v11 = *(v6 - 17);
      v12 = *v6;
      if (*(v6 - 1) == 1)
      {

        v13._countAndFlagsBits = v10;
        v13._object = v11;
        String.append(_:)(v13);
        v14._countAndFlagsBits = 34;
        v14._object = 0xE100000000000000;
        String.append(_:)(v14);
        if (v12)
        {
          goto LABEL_6;
        }
      }

      else
      {

        swift_bridgeObjectRetain_n();

        if (v12)
        {
LABEL_6:
          v35 = v8;
          v36 = v9;

          v17._countAndFlagsBits = 23357;
          v17._object = 0xE200000000000000;
          String.append(_:)(v17);
          v18._countAndFlagsBits = sub_10001AA34();
          String.append(_:)(v18);

          v19._countAndFlagsBits = 93;
          v19._object = 0xE100000000000000;
          String.append(_:)(v19);

          goto LABEL_7;
        }
      }

      v35 = v8;
      v36 = v9;

      v15._countAndFlagsBits = 61;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16._countAndFlagsBits = sub_10001AA34();
      String.append(_:)(v16);

LABEL_7:

      v7 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100004E28();
        sub_100013A60();
        v7 = v23;
      }

      v21 = v7[2];
      v20 = v7[3];
      if (v21 >= v20 >> 1)
      {
        sub_100005150(v20);
        sub_100013A60();
        v7 = v24;
      }

      v7[2] = v21 + 1;
      v22 = &v7[2 * v21];
      v22[4] = v35;
      v22[5] = v36;
      v6 += 64;
      v5 = v32 - 1;
    }

    while (v32 != 1);
  }

  sub_10002EB80(&qword_10019AFC0, &unk_100150180);
  sub_100013EBC(&qword_10019AFC8, &qword_10019AFC0, &unk_100150180, &protocol conformance descriptor for ReversedCollection<A>);
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);

  return v31;
}

void sub_10009D608()
{
  sub_100006A04();
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
  sub_100024754();
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (v2)
  {
    type metadata accessor for LNPlatformName(0);
    sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
    sub_100018448();
    sub_10009F250(v7, v8, &unk_10014CDB0);
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  [v0 initWithIntentIdentifier:v3 phraseTemplates:v4.super.isa parameterValues:v5.super.isa impliedValues:v6.super.isa availabilityAnnotations:v9.super.isa];

  sub_1000069EC();
}

id sub_10009D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  if (!a7)
  {
    v14 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = String._bridgeToObjectiveC()();

LABEL_6:
  v16 = [v9 initWithKind:a1 parentIdentifier:v12 phrase:v13 expected:v14 phraseTemplate:v15];

  return v16;
}

uint64_t sub_10009D8C8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

Swift::Int sub_10009D9E8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_10009DA84(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

Swift::Int sub_10009DA84(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v7);
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
        sub_100024754();
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v11[2] = v10;
      }

      v12[0] = v11 + 4;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      v11[2] = 0;
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
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_10009DB8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_10009DC54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      v10 = *v9;
      v11 = v9[1];
      result = v9[2];
      v12 = v9[3];
      v13 = v8;
      v14 = v7;
      do
      {
        if (result == v14[2] && v12 == v14[3] && v10 >> 16 == *v14 >> 16 && v11 >> 16 == v14[1] >> 16)
        {
          break;
        }

        result = _stringCompareInternal(_:_:_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v14[4];
        v11 = v14[5];
        result = v14[6];
        v12 = v14[7];
        v18 = *(v14 + 1);
        *(v14 + 2) = *v14;
        *(v14 + 3) = v18;
        *v14 = v10;
        v14[1] = v11;
        v14[2] = result;
        v14[3] = v12;
        v14 -= 4;
      }

      while (!__CFADD__(v13++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10009DD50(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000702DC();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1000702DC();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
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

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_10009E9D4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_10009E8A8(&v91, *a1, a3);
LABEL_102:
}

void sub_10009E258(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_115:
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    v101 = v7;
    v4 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_117;
    }

    goto LABEL_151;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_3:
  v11 = v9;
  v12 = v9 + 1;
  if (v9 + 1 >= v8)
  {
    v8 = v9 + 1;
    goto LABEL_33;
  }

  v4 = v7;
  v13 = *v7 + 32 * v9;
  v14 = sub_10009D8C8(*(*v7 + 32 * v12), *(*v7 + 32 * v12 + 8), *(*v7 + 32 * v12 + 16), *(*v7 + 32 * v12 + 24), *v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));
  if (v6)
  {
    goto LABEL_125;
  }

  v15 = v14;
  v16 = 32 * v11;
  for (i = (v13 + 48); ; i += 4)
  {
    if (v12 + 1 >= v8)
    {
      goto LABEL_22;
    }

    v18 = i[4] == *i && i[5] == i[1];
    v19 = v18 && i[2] >> 16 == *(i - 2) >> 16;
    if (!v19 || i[3] >> 16 != *(i - 1) >> 16)
    {
      break;
    }

    if (v15)
    {
      v8 = v12 + 1;
      goto LABEL_25;
    }

LABEL_20:
    ++v12;
  }

  if (((v15 ^ _stringCompareInternal(_:_:_:_:expecting:)()) & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = v12 + 1;
LABEL_22:
  if ((v15 & 1) == 0)
  {
LABEL_27:
    v7 = v4;
    goto LABEL_33;
  }

LABEL_25:
  if (v8 < v11)
  {
    goto LABEL_148;
  }

  if (v11 > v12)
  {
    goto LABEL_27;
  }

  v21 = 32 * v8 - 32;
  v22 = v8;
  v23 = v11;
  v7 = v4;
  do
  {
    if (v23 != --v22)
    {
      v24 = *v4;
      if (!*v4)
      {
        goto LABEL_155;
      }

      v25 = (v24 + v16);
      v26 = (v24 + v21);
      v27 = *(v25 + 2);
      v28 = *(v25 + 3);
      v29 = *v25;
      v30 = v26[1];
      *v25 = *v26;
      v25[1] = v30;
      *v26 = v29;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
    }

    ++v23;
    v21 -= 32;
    v16 += 32;
  }

  while (v23 < v22);
LABEL_33:
  v31 = v7[1];
  if (v8 >= v31)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v8, v11))
  {
    goto LABEL_147;
  }

  if (v8 - v11 >= a4)
  {
LABEL_42:
    v4 = v8;
    goto LABEL_43;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_149;
  }

  if (v11 + a4 >= v31)
  {
    v4 = v7[1];
  }

  else
  {
    v4 = (v11 + a4);
  }

  if (v4 < v11)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    v10 = sub_1000BCD28(v10);
LABEL_117:
    v91 = (v10 + 16);
    v92 = *(v10 + 16);
    while (v92 >= 2)
    {
      if (!*v101)
      {
        goto LABEL_154;
      }

      v93 = v10;
      v94 = (v10 + 16 * v92);
      v10 = *v94;
      v95 = &v91[2 * v92];
      v96 = *(v95 + 1);
      sub_10009EB78((*v101 + 32 * *v94), (*v101 + 32 * *v95), (*v101 + 32 * v96), v103);
      if (v4)
      {
        break;
      }

      if (v96 < v10)
      {
        goto LABEL_142;
      }

      if (v92 - 2 >= *v91)
      {
        goto LABEL_143;
      }

      *v94 = v10;
      v94[1] = v96;
      v97 = *v91 - v92;
      if (*v91 < v92)
      {
        goto LABEL_144;
      }

      v92 = *v91 - 1;
      sub_1000BCD3C(v95 + 16, v97, v95);
      *v91 = v92;
      v10 = v93;
    }

LABEL_125:

    return;
  }

  if (v8 == v4)
  {
    goto LABEL_42;
  }

  v101 = v7;
  v74 = *v7;
  v75 = *v7 + 32 * v8 - 32;
  v103 = v11;
  v76 = v11 - v8;
  while (2)
  {
    v77 = (v74 + 32 * v8);
    v78 = *v77;
    v79 = v77[1];
    v80 = v77[2];
    v81 = v77[3];
    v82 = v76;
    v83 = v75;
LABEL_97:
    v86 = v80 == v83[2] && v81 == v83[3] && v78 >> 16 == *v83 >> 16 && v79 >> 16 == v83[1] >> 16;
    if (v86 || (_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
    {
LABEL_111:
      ++v8;
      v75 += 32;
      --v76;
      if (v8 != v4)
      {
        continue;
      }

      v7 = v101;
      v11 = v103;
LABEL_43:
      if (v4 < v11)
      {
        goto LABEL_146;
      }

      v100 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000702DC();
        v10 = v89;
      }

      v32 = *(v10 + 16);
      v33 = v32 + 1;
      v34 = v4;
      if (v32 >= *(v10 + 24) >> 1)
      {
        sub_1000702DC();
        v34 = v4;
        v10 = v90;
      }

      *(v10 + 16) = v33;
      v35 = v10 + 32;
      v36 = (v10 + 32 + 16 * v32);
      *v36 = v11;
      v36[1] = v34;
      v102 = *a1;
      if (!*a1)
      {
        goto LABEL_156;
      }

      if (!v32)
      {
LABEL_93:
        v8 = v7[1];
        v9 = v100;
        if (v100 >= v8)
        {
          goto LABEL_115;
        }

        goto LABEL_3;
      }

      v103 = v10;
      while (1)
      {
        v37 = v33 - 1;
        v38 = (v35 + 16 * (v33 - 1));
        v39 = (v10 + 16 * v33);
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v40 = *(v10 + 32);
          v41 = *(v10 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_64:
          if (v43)
          {
            goto LABEL_133;
          }

          v55 = *v39;
          v54 = v39[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_136;
          }

          v59 = v38[1];
          v60 = v59 - *v38;
          if (__OFSUB__(v59, *v38))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v57, v60))
          {
            goto LABEL_141;
          }

          if (v57 + v60 >= v42)
          {
            if (v42 < v60)
            {
              v37 = v33 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        if (v33 < 2)
        {
          goto LABEL_135;
        }

        v62 = *v39;
        v61 = v39[1];
        v50 = __OFSUB__(v61, v62);
        v57 = v61 - v62;
        v58 = v50;
LABEL_79:
        if (v58)
        {
          goto LABEL_138;
        }

        v64 = *v38;
        v63 = v38[1];
        v50 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v50)
        {
          goto LABEL_140;
        }

        if (v65 < v57)
        {
          goto LABEL_93;
        }

LABEL_86:
        if (v37 - 1 >= v33)
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
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (!*v7)
        {
          goto LABEL_153;
        }

        v69 = (v35 + 16 * (v37 - 1));
        v70 = *v69;
        v4 = v37;
        v71 = v35 + 16 * v37;
        v10 = *(v71 + 8);
        sub_10009EB78((*v7 + 32 * *v69), (*v7 + 32 * *v71), (*v7 + 32 * v10), v102);
        if (v6)
        {
          goto LABEL_125;
        }

        if (v10 < v70)
        {
          goto LABEL_128;
        }

        v72 = *(v103 + 16);
        if (v4 > v72)
        {
          goto LABEL_129;
        }

        *v69 = v70;
        v69[1] = v10;
        if (v4 >= v72)
        {
          goto LABEL_130;
        }

        v33 = v72 - 1;
        sub_1000BCD3C((v71 + 16), v72 - 1 - v4, v71);
        v10 = v103;
        *(v103 + 16) = v72 - 1;
        v73 = v72 > 2;
        v6 = 0;
        if (!v73)
        {
          goto LABEL_93;
        }
      }

      v44 = v35 + 16 * v33;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_131;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_132;
      }

      v51 = v39[1];
      v52 = v51 - *v39;
      if (__OFSUB__(v51, *v39))
      {
        goto LABEL_134;
      }

      v50 = __OFADD__(v42, v52);
      v53 = v42 + v52;
      if (v50)
      {
        goto LABEL_137;
      }

      if (v53 >= v47)
      {
        v67 = *v38;
        v66 = v38[1];
        v50 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v50)
        {
          goto LABEL_145;
        }

        if (v42 < v68)
        {
          v37 = v33 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_64;
    }

    break;
  }

  if (v74)
  {
    v78 = v83[4];
    v79 = v83[5];
    v80 = v83[6];
    v81 = v83[7];
    v87 = *(v83 + 1);
    *(v83 + 2) = *v83;
    *(v83 + 3) = v87;
    *v83 = v78;
    v83[1] = v79;
    v83[2] = v80;
    v83[3] = v81;
    v83 -= 4;
    if (__CFADD__(v82++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_97;
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
}

uint64_t sub_10009E8A8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000BCD28(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10009E9D4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_10009E9D4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_100071004(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_100071004(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_10009EB78(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_100071024(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      v12 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      v13 = v12 && *v6 >> 16 == *v4 >> 16;
      v14 = v13 && *(v6 + 1) >> 16 == *(v4 + 1) >> 16;
      if (v14 || (_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v15 = v6;
      v12 = v7 == v6;
      v6 += 32;
      if (!v12)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 32;
    }

    v15 = v4;
    v12 = v7 == v4;
    v4 += 32;
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_23;
  }

  sub_100071024(a2, (a3 - a2) / 32, a4);
  v17 = &v4[32 * v9];
LABEL_25:
  v18 = 0;
  v30 = v6 - 32;
  while (1)
  {
    v10 = &v17[v18];
    if (&v17[v18] <= v4 || v6 <= v7)
    {
      break;
    }

    v22 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1) && *(v10 - 4) >> 16 == *(v6 - 4) >> 16 && *(v10 - 3) >> 16 == *(v6 - 3) >> 16;
    if (!v22 && (_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0)
    {
      v25 = &v5[v18];
      v5 = &v5[v18 - 32];
      v17 += v18;
      v12 = v25 == v6;
      v6 -= 32;
      if (!v12)
      {
        v26 = *(v30 + 1);
        *v5 = *v30;
        *(v5 + 1) = v26;
        v6 = v30;
      }

      goto LABEL_25;
    }

    v23 = &v5[v18];
    if (v10 != &v5[v18])
    {
      v24 = *(v10 - 1);
      *(v23 - 2) = *(v10 - 2);
      *(v23 - 1) = v24;
    }

    v18 -= 32;
  }

LABEL_48:
  v27 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v27])
  {
    memmove(v6, v4, 32 * v27);
  }

  return 1;
}

uint64_t _s7BuilderVMa(uint64_t a1)
{
  result = qword_10019B030;
  if (!qword_10019B030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009EDDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int64_t *sub_10009EE6C(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = sub_10009F1B8(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10002EB80(&qword_10019A4A0, &qword_10014F1E0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v7;
      v8[3] = 2 * ((v9 - 32) / 8);
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = v8[3];

  if (v7 < 0)
  {
    goto LABEL_48;
  }

  v12 = v8 + 4;
  v13 = v10 >> 1;
  if (!v7)
  {
    goto LABEL_17;
  }

  v13 -= v7;
  do
  {
    v14 = v5 <= v4;
    if (a3 > 0)
    {
      v14 = v5 >= v4;
    }

    if (v14)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v15 = v5 + a3;
    if (__OFADD__(v5, a3))
    {
      v15 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
    }

    *v12++ = v5;
    v5 = v15;
    --v7;
  }

  while (v7);
  v5 = v15;
LABEL_17:
  v16 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v33 = v4;
  while (2)
  {
    v17 = v5 <= v4;
    if (a3 > 0)
    {
      v17 = v5 >= v4;
    }

    if (!v17)
    {
      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = v16;
        if (!v13)
        {
          goto LABEL_26;
        }

        v18 = v16;
      }

      else if (!v13)
      {
LABEL_26:
        v19 = v8[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v20 = v16;
        v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_10002EB80(&qword_10019A4A0, &qword_10014F1E0);
        v23 = swift_allocObject();
        v24 = (j__malloc_size(v23) - 32) / 8;
        v23[2] = v22;
        v23[3] = 2 * v24;
        v25 = (v23 + 4);
        v26 = v8[3];
        v27 = v26 >> 1;
        if (v8[2])
        {
          if (v23 != v8 || v25 >= &v8[v27 + 4])
          {
            memmove(v23 + 4, v8 + 4, 8 * v27);
          }

          v8[2] = 0;
        }

        v12 = (v25 + 8 * v27);
        v13 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - (v26 >> 1);

        v8 = v23;
        v16 = v20;
        v4 = v33;
      }

      v29 = __OFSUB__(v13--, 1);
      if (v29)
      {
        __break(1u);
        goto LABEL_46;
      }

      *v12++ = v5;
      v5 = v18;
      continue;
    }

    break;
  }

  v30 = v8[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v29 = __OFSUB__(v31, v13);
    v32 = v31 - v13;
    if (v29)
    {
      goto LABEL_49;
    }

    v8[2] = v32;
  }

  return v8;
}

uint64_t sub_10009F1B8(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_10009F250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10009F2D0(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_10009F4F8(319, &qword_10019B040, &type metadata for LNAssistantIntentRecord);
    if (v2 <= 0x3F)
    {
      sub_10009F4F8(319, &qword_10019B048, &type metadata for LNAssistantIntentNegativePhraseRecord);
      if (v3 <= 0x3F)
      {
        sub_10009F4F8(319, &qword_10019B050, &_s14ParameterValueVN);
        if (v4 <= 0x3F)
        {
          sub_10009F424();
          if (v5 <= 0x3F)
          {
            sub_10009F480(319);
            if (v6 <= 0x3F)
            {
              sub_10009F4F8(319, &unk_10019B068, &type metadata for LNAssistantAppEntityRecord);
              if (v7 <= 0x3F)
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

unint64_t sub_10009F424()
{
  result = qword_10019B058;
  if (!qword_10019B058)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10019B058);
  }

  return result;
}

void sub_10009F480(uint64_t a1)
{
  if (!qword_10019B060)
  {
    sub_100003D44(255, &qword_10019AB50, LNEntityMetadata_ptr);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_10019B060);
    }
  }
}

void sub_10009F4F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_10009F590()
{
  v0 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchQoS.userInitiated.getter();
  sub_10002EB80(&qword_10019B0B8, &qword_100150270);
  swift_allocObject();
  result = sub_100065C94(1, 500, v2);
  qword_10019DEB0 = result;
  return result;
}

uint64_t sub_10009F638(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100011438(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100013334(v4, v14);
      v6 = v15;
      v5 = v16;
      sub_1000034B4(v14, v15);
      v7 = (*(*(v5 + 8) + 8))(v6);
      v9 = v8;
      sub_1000034F8(v14);
      v17 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_100011438(v10 > 1, v11 + 1, 1);
        v3 = v17;
      }

      v3[2] = v11 + 1;
      v12 = &v3[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  return sub_1000275B8(v3);
}

uint64_t sub_10009F778()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DEB8 = result;
  qword_10019DEC0 = v1;
  return result;
}

void *sub_10009F7A8(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for Notification();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = *(a2 + 16);
  v10 = &off_10014B000;
  v43 = v4;
  if (v9)
  {
    v11 = LNMetadataChangedNotification;
    v47 = 0u;
    v48 = 0u;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v13;

    v14 = v11;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 1;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v15;
    AnyHashable.init<A>(_:)();
    v16 = sub_10009FD18();
    v17 = sub_1000A1F48(a2);
    sub_10006DE3C(v17);

    v18 = sub_100034D2C();
    *(inited + 168) = v16;
    *(inited + 144) = v18;
    Dictionary.init(dictionaryLiteral:)();
    Notification.init(name:object:userInfo:)();
    sub_100070514(0, 1, 1, _swiftEmptyArrayStorage);
    v20 = v19;
    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      sub_100002C04(v21);
      v20 = v38;
    }

    v24 = v43;
    v23 = v44;
    v20[2] = v22 + 1;
    (*(v24 + 32))(v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, v8, v23);
    v10 = &off_10014B000;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  if (*(a1 + 16))
  {
    v25 = LNMetadataChangedNotification;
    v47 = 0u;
    v48 = 0u;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    v26 = swift_initStackObject();
    *(v26 + 16) = *(v10 + 196);
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v27;

    v28 = v25;
    AnyHashable.init<A>(_:)();
    *(v26 + 96) = &type metadata for Int;
    *(v26 + 72) = 0;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v29;
    AnyHashable.init<A>(_:)();
    v30 = sub_10009FD18();
    v31 = sub_1000A1F48(a1);
    sub_10006DE3C(v31);

    v32 = sub_100034D2C();
    *(v26 + 168) = v30;
    *(v26 + 144) = v32;
    Dictionary.init(dictionaryLiteral:)();
    v33 = v42;
    Notification.init(name:object:userInfo:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100070514(0, v20[2] + 1, 1, v20);
      v20 = v39;
    }

    v35 = v20[2];
    v34 = v20[3];
    v36 = v43;
    if (v35 >= v34 >> 1)
    {
      sub_100002C04(v34);
      v20 = v40;
    }

    v20[2] = v35 + 1;
    (*(v36 + 32))(v20 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35, v33, v44);
  }

  return v20;
}

uint64_t sub_10009FC20(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(22);

  v2._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x65766F6D6572202CLL;
  v3._object = 0xEB00000000203A64;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v4);

  return 0x203A6465646461;
}

unint64_t sub_10009FD18()
{
  result = qword_100199510;
  if (!qword_100199510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100199510);
  }

  return result;
}

unint64_t sub_10009FD7C(uint64_t a1)
{
  result = sub_10009FDA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009FDA4()
{
  result = qword_10019B0C0;
  if (!qword_10019B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019B0C0);
  }

  return result;
}

void *sub_10009FDF8(void *a1)
{
  v1 = [a1 impliedValues];
  sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v44 = v2;

  v8 = 0;
  v41 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(v44 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v44 + 56) + 8 * v11);

    v16 = v15;
    v17 = [a1 intentIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    sub_1000A0154(v16, v13, v14, v18, v20, &v46);

    v21 = v47;
    if (v47)
    {
      v22 = v46;
      sub_10002EB80(&qword_10019A4F8, &unk_100150170);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10014CE90;
      *(v23 + 32) = v22;
      *(v23 + 40) = v21;
      v24 = v49[0];
      *(v23 + 48) = v48;
      *(v23 + 64) = v24;
      *(v23 + 74) = *(v49 + 10);
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v45 = v41;
      v25 = sub_10000C2A0(v13, v14);
      v26 = v41[2];
      v42 = v27;
      v28 = (v27 & 1) == 0;
      v29 = v26 + v28;
      if (__OFADD__(v26, v28))
      {
        goto LABEL_21;
      }

      v30 = v25;
      sub_10002EB80(&qword_10019AFB8, &unk_100150150);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v29))
      {
        v31 = v13;
        v32 = sub_10000C2A0(v13, v14);
        v34 = v42;
        if ((v42 & 1) != (v33 & 1))
        {
          goto LABEL_23;
        }

        v30 = v32;
      }

      else
      {
        v31 = v13;
        v34 = v42;
      }

      v41 = v45;
      if (v34)
      {
        *(v45[7] + 8 * v30) = v23;
      }

      else
      {
        v45[(v30 >> 6) + 8] |= 1 << v30;
        v35 = (v45[6] + 16 * v30);
        *v35 = v31;
        v35[1] = v14;
        *(v45[7] + 8 * v30) = v23;
        v36 = v45[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_22;
        }

        v45[2] = v38;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v41;
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000A0154(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = [a1 valueType];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = [a1 value];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v13 = a5;

      v14 = [v11 enumerationIdentifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v46 = v17;
      v18._countAndFlagsBits = 46;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      String.append(_:)(v47);

      countAndFlagsBits = v15;
      object = v46;
LABEL_4:

LABEL_29:
      v35 = _swiftEmptyArrayStorage;
      v37 = a4;
      v36 = a2;
      goto LABEL_30;
    }
  }

  v21 = [a1 valueType];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_100003D44(0, &qword_100199300, NSObject_ptr);
    v22 = [objc_opt_self() BOOLValueType];
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      v24 = [a1 value];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {

        if (LOBYTE(v47._countAndFlagsBits))
        {
          countAndFlagsBits = 1163219540;
        }

        else
        {
          countAndFlagsBits = 0x45534C4146;
        }

        if (LOBYTE(v47._countAndFlagsBits))
        {
          object = 0xE400000000000000;
        }

        else
        {
          object = 0xE500000000000000;
        }

        goto LABEL_28;
      }
    }
  }

  v9 = [a1 valueType];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = [v25 memberValueType];
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_22;
    }

    v27 = [a1 value];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    if (swift_dynamicCast())
    {
      if (*(v47._countAndFlagsBits + 16))
      {
        countAndFlagsBits = *(v47._countAndFlagsBits + 32);
        object = *(v47._countAndFlagsBits + 40);

        v13 = a5;

        goto LABEL_4;
      }
    }
  }

LABEL_22:
  v28 = [a1 valueType];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();

  if (v29 && (v30 = [a1 value], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) != 0) || (v31 = objc_msgSend(a1, "valueType"), v32 = sub_1000A0780(), v31, (v32 & 1) != 0) && (v33 = objc_msgSend(a1, "value"), _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) != 0) || (v34 = objc_msgSend(a1, "value"), _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), swift_dynamicCast()))
  {
    object = v47._object;
    countAndFlagsBits = v47._countAndFlagsBits;
LABEL_28:
    v13 = a5;

    goto LABEL_29;
  }

  if (qword_1001982F0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000347C(v38, qword_10019E008);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_100004C50(a2, a3, v48);
    _os_log_impl(&_mh_execute_header, v39, v40, "Tried converting parameter %s to String but failed", v41, 0xCu);
    sub_1000034F8(v42);
  }

  v37 = 0;
  v13 = 0;
  v36 = 0;
  a3 = 0;
  countAndFlagsBits = 0;
  object = 0;
  v35 = 0;
LABEL_30:
  *a6 = v37;
  *(a6 + 8) = v13;
  *(a6 + 16) = v36;
  *(a6 + 24) = a3;
  *(a6 + 32) = countAndFlagsBits;
  *(a6 + 40) = object;
  *(a6 + 48) = v35;
  *(a6 + 56) = 0;
}

uint64_t sub_1000A0780()
{
  sub_100003D44(0, &qword_100199300, NSObject_ptr);
  v0 = objc_opt_self();
  v1 = [v0 intValueType];
  v2 = static NSObject.== infix(_:_:)();

  if (v2)
  {
    return 1;
  }

  v3 = [v0 doubleValueType];
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    return 1;
  }

  v5 = [v0 int16ValueType];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    return 1;
  }

  v7 = [v0 int32ValueType];
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 1;
  }

  v10 = [v0 int64ValueType];
  v11 = static NSObject.== infix(_:_:)();

  return v11 & 1;
}

void sub_1000A08E4(uint64_t a1)
{
  v1 = a1;
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100011438(0, v2 & ~(v2 >> 63), 0);
    v45 = _swiftEmptyArrayStorage;
    v48 = sub_10006651C();
    v49 = v3;
    v50 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v41 = v1 + 56;
      v40 = v1 + 64;
      v42 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v48;
        v8 = v50;
        v44 = v49;
        v9 = v1;
        sub_100066278(v48, v49, v50, v1);
        v11 = v10;
        v12 = [v10 bundleIdentifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v46 = v13;
        v47 = v15;
        v16._countAndFlagsBits = 58;
        v16._object = 0xE100000000000000;
        String.append(_:)(v16);
        v17 = [v11 actionIdentifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21._countAndFlagsBits = v18;
        v21._object = v20;
        String.append(_:)(v21);

        v22 = v46;
        v23 = v47;
        v24 = v45;
        v51 = v45;
        v26 = v45[2];
        v25 = v45[3];
        if (v26 >= v25 >> 1)
        {
          sub_100011438(v25 > 1, v26 + 1, 1);
          v24 = v51;
        }

        v24[2] = v26 + 1;
        v27 = &v24[2 * v26];
        v27[4] = v22;
        v27[5] = v23;
        v45 = v24;
        if (v43)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v32 = v42;
          sub_10002EB80(&unk_10019B4C0, &qword_1001507B8);
          v33 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v33(&v46, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v28 = 1 << *(v9 + 32);
          if (v7 >= v28)
          {
            goto LABEL_32;
          }

          v29 = v7 >> 6;
          v30 = *(v41 + 8 * (v7 >> 6));
          if (((v30 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v44)
          {
            goto LABEL_34;
          }

          v31 = v30 & (-2 << (v7 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v32 = v42;
          }

          else
          {
            v34 = v29 << 6;
            v35 = v29 + 1;
            v36 = (v40 + 8 * v29);
            v32 = v42;
            while (v35 < (v28 + 63) >> 6)
            {
              v38 = *v36++;
              v37 = v38;
              v34 += 64;
              ++v35;
              if (v38)
              {
                sub_100060B50(v7, v44, 0);
                v28 = __clz(__rbit64(v37)) + v34;
                goto LABEL_27;
              }
            }

            sub_100060B50(v7, v44, 0);
          }

LABEL_27:
          v39 = *(v1 + 36);
          v48 = v28;
          v49 = v39;
          v50 = 0;
        }

        if (v5 == v32)
        {
          sub_100060B50(v48, v49, v50);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

double sub_1000A0C5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_10000C2A0(a1, a2), (v6 & 1) != 0))
  {
    v7 = sub_1000056FC(v5);

    sub_100004D14(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1000A0CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_10000C2A0(a1, a2), (v3 & 1) != 0))
  {
  }

  else
  {
    sub_1000B65A8();
  }

  return sub_1000077D8();
}

uint64_t sub_1000A0D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v6 = sub_10004592C();
  if (v7)
  {
    return *(*(a5 + 56) + 16 * v6);
  }

  else
  {
    return 0;
  }
}

void *sub_1000A0D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10000C2A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_1000A0DCC@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    v6 = sub_1000056FC(v4);

    sub_100004D14(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1000A0E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16))
  {
    sub_10004592C();
    if (v5)
    {
    }
  }
}

uint64_t sub_1000A0E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_10000C2A0(a1, a2), (v3 & 1) != 0))
  {
  }

  else
  {
    sub_1000B65A8();
  }

  return sub_1000077D8();
}

double sub_1000A0ED4@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_100045D24(), (v4 & 1) != 0))
  {
    v5 = sub_1000056FC(v3);

    sub_100004D14(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1000A0F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_10000C2A0(a1, a2), (v5 & 1) != 0))
  {
    v6 = type metadata accessor for LNBundleRecord(0);
    sub_10000482C();
    sub_10001E984();
    v7 = a4;
    v8 = 0;
    v9 = 1;
    v10 = v6;
  }

  else
  {
    type metadata accessor for LNBundleRecord(0);
    v7 = sub_10001A9BC();
  }

  return sub_1000075C4(v7, v8, v9, v10);
}

void sub_1000A0FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_10000C2A0(a1, a2);
    if (v3)
    {
    }
  }
}

uint64_t sub_1000A1030(uint64_t a1, uint64_t a2)
{
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  sub_1000B645C();
  v8 = static Data.== infix(_:_:)();
  sub_100009B18(v5, v7);
  sub_100009B18(v2, v4);
  return v8 & 1;
}

void sub_1000A10D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_1000A1138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v40 = *(a4 + 16);
  v5 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v40 == v4)
    {
      return v5;
    }

    type metadata accessor for LNActionRecord(0);
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (v5[2] && (v6 = sub_10000C2A0(v45, v46), (v7 & 1) != 0))
    {
      v8 = *(v5[7] + 8 * v6);
    }

    else
    {
      sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
      v8 = Dictionary.init(dictionaryLiteral:)();
    }

    v9 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_10000C2A0(v42, v43);
    v13 = v8[2];
    v14 = (v12 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v11;
    v17 = v12;
    sub_10002EB80(&qword_100198B90, &unk_10014D040);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
    {
      v18 = sub_10000C2A0(v42, v43);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_29;
      }

      v16 = v18;
    }

    if (v17)
    {
      v20 = v8[7];
      v21 = *(v20 + 8 * v16);
      *(v20 + 8 * v16) = v9;
    }

    else
    {
      v8[(v16 >> 6) + 8] |= 1 << v16;
      v22 = (v8[6] + 16 * v16);
      *v22 = v42;
      v22[1] = v43;
      *(v8[7] + 8 * v16) = v9;
      v23 = v8[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_27;
      }

      v8[2] = v25;
    }

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v5;
    v27 = sub_10000C2A0(v45, v46);
    v29 = v5[2];
    v30 = (v28 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_26;
    }

    v32 = v27;
    v33 = v28;
    sub_10002EB80(&qword_10019B438, &qword_100150610);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v26, v31))
    {
      v34 = sub_10000C2A0(v45, v46);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_29;
      }

      v32 = v34;
    }

    v5 = v41;
    if (v33)
    {
      *(v41[7] + 8 * v32) = v8;
    }

    else
    {
      v41[(v32 >> 6) + 8] |= 1 << v32;
      v36 = (v41[6] + 16 * v32);
      *v36 = v45;
      v36[1] = v46;
      *(v41[7] + 8 * v32) = v8;
      v37 = v41[2];
      v24 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v24)
      {
        goto LABEL_28;
      }

      v41[2] = v38;
    }

    ++v4;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000A14E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = _swiftEmptyDictionarySingleton;
  v6 = (a4 + 48);
  if (!v4)
  {
    return v5;
  }

  while (1)
  {
    v7 = *v6;
    v44 = v6;

    v43 = v7;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (v5[2] && (v8 = sub_10000C2A0(v49, v50), (v9 & 1) != 0))
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
      sub_100003D44(0, &qword_10019B2E0, LNQueryMetadata_ptr);
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v11 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10000C2A0(v46, v47);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    v19 = v14;
    sub_10002EB80(&qword_10019B4A0, &qword_100150790);
    v42 = v4;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = sub_10000C2A0(v46, v47);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    if (v19)
    {
      v22 = v10[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v11;
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v10[6] + 16 * v18);
      *v24 = v46;
      v24[1] = v47;
      *(v10[7] + 8 * v18) = v11;
      v25 = v10[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v10[2] = v27;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v5;
    v29 = sub_10000C2A0(v49, v50);
    v31 = v5[2];
    v32 = (v30 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    v35 = v30;
    sub_10002EB80(&qword_10019B4A8, &qword_100150798);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v33))
    {
      v36 = sub_10000C2A0(v49, v50);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_28;
      }

      v34 = v36;
    }

    v5 = v45;
    if (v35)
    {
      *(v45[7] + 8 * v34) = v10;
    }

    else
    {
      v45[(v34 >> 6) + 8] |= 1 << v34;
      v38 = (v45[6] + 16 * v34);
      *v38 = v49;
      v38[1] = v50;
      *(v45[7] + 8 * v34) = v10;
      v39 = v45[2];
      v26 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v45[2] = v40;
    }

    v6 = v44 + 3;
    --v4;
    if (v42 == 1)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000A1858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = _swiftEmptyDictionarySingleton;
  v6 = (a4 + 48);
  if (!v4)
  {
    return v5;
  }

  while (1)
  {
    v7 = *v6;
    v44 = v6;

    v43 = v7;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (v5[2] && (v8 = sub_10000C2A0(v49, v50), (v9 & 1) != 0))
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
      sub_100003D44(0, &qword_10019AB60, LNEnumMetadata_ptr);
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v11 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10000C2A0(v46, v47);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    v19 = v14;
    sub_10002EB80(&qword_10019B490, &qword_10014EE48);
    v42 = v4;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = sub_10000C2A0(v46, v47);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    if (v19)
    {
      v22 = v10[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v11;
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v10[6] + 16 * v18);
      *v24 = v46;
      v24[1] = v47;
      *(v10[7] + 8 * v18) = v11;
      v25 = v10[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v10[2] = v27;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v5;
    v29 = sub_10000C2A0(v49, v50);
    v31 = v5[2];
    v32 = (v30 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    v35 = v30;
    sub_10002EB80(&qword_10019B498, &qword_100150720);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v33))
    {
      v36 = sub_10000C2A0(v49, v50);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_28;
      }

      v34 = v36;
    }

    v5 = v45;
    if (v35)
    {
      *(v45[7] + 8 * v34) = v10;
    }

    else
    {
      v45[(v34 >> 6) + 8] |= 1 << v34;
      v38 = (v45[6] + 16 * v34);
      *v38 = v49;
      v38[1] = v50;
      *(v45[7] + 8 * v34) = v10;
      v39 = v45[2];
      v26 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v45[2] = v40;
    }

    v6 = v44 + 3;
    --v4;
    if (v42 == 1)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000A1BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = _swiftEmptyDictionarySingleton;
  v6 = (a4 + 48);
  if (!v4)
  {
    return v5;
  }

  while (1)
  {
    v7 = *v6;
    v44 = v6;

    v43 = v7;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (v5[2] && (v8 = sub_10000C2A0(v49, v50), (v9 & 1) != 0))
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
      sub_100003D44(0, &qword_10019AB50, LNEntityMetadata_ptr);
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v11 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10000C2A0(v46, v47);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    v19 = v14;
    sub_10002EB80(&qword_10019B480, &qword_1001506A0);
    v42 = v4;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = sub_10000C2A0(v46, v47);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    if (v19)
    {
      v22 = v10[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v11;
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v10[6] + 16 * v18);
      *v24 = v46;
      v24[1] = v47;
      *(v10[7] + 8 * v18) = v11;
      v25 = v10[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v10[2] = v27;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v5;
    v29 = sub_10000C2A0(v49, v50);
    v31 = v5[2];
    v32 = (v30 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    v35 = v30;
    sub_10002EB80(&qword_10019B488, &qword_1001506A8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v33))
    {
      v36 = sub_10000C2A0(v49, v50);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_28;
      }

      v34 = v36;
    }

    v5 = v45;
    if (v35)
    {
      *(v45[7] + 8 * v34) = v10;
    }

    else
    {
      v45[(v34 >> 6) + 8] |= 1 << v34;
      v38 = (v45[6] + 16 * v34);
      *v38 = v49;
      v38[1] = v50;
      *(v45[7] + 8 * v34) = v10;
      v39 = v45[2];
      v26 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v45[2] = v40;
    }

    v6 = v44 + 3;
    --v4;
    if (v42 == 1)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000A1F48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1000142A0(*(a1 + 16), 0);
  sub_1000B6468();
  sub_1000B5A94(v3, v4, v5, v6);
  v8 = v7;
  sub_100014464(v10);
  if (v8 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

void *sub_1000A1FC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1000B3278(*(a1 + 16), 0);
  sub_1000B6468();
  sub_1000B604C();
  v4 = v3;
  sub_100014464(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

void _LNMetadataProviderDirect.actions()()
{
  v1 = v0;
  sub_1000188D4();
  sub_1000A44FC();
}

void _LNMetadataProviderDirect.enumerateActions(forBundleIdentifier:using:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A55D8();
}

void _LNMetadataProviderDirect.enumerateEnums(forBundleIdentifier:using:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A55D8();
}

void _LNMetadataProviderDirect.enumerateEntities(forBundleIdentifier:using:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A55D8();
}

void sub_1000A2170(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v5 = a3;
  sub_1000294A8();
  sub_10000C900();
  sub_1000A55D8();
  _Block_release(a4);
}

void _LNMetadataProviderDirect.enumerateQueries(forBundleIdentifier:using:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A55D8();
}

void _LNMetadataProviderDirect.actions(forSchemaIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_1000A6B98();
}

void _LNMetadataProviderDirect.enums(forSchemaIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_1000A6B98();
}

void _LNMetadataProviderDirect.entities(forSchemaIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_1000A6B98();
}

void _LNMetadataProviderDirect.queries(forSchemaIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_1000A6B98();
}

void _LNMetadataProviderDirect.actionsConforming(to:logicalType:bundleIdentifier:)()
{
  sub_10000682C();

  v0;

  sub_1000071CC();
  sub_1000A3F48();
}

void _LNMetadataProviderDirect.actionsAndSystemProtocolDefaults(forBundleIdentifier:)()
{
  sub_100018460();

  v1 = v0;
  sub_100013540();
  sub_1000A70F4();
}

void _LNMetadataProviderDirect.actions(forBundleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

void _LNMetadataProviderDirect.actionIdentifiers(forBundleIdentifier:)()
{
  sub_100018460();

  v1 = v0;
  sub_10000489C();
  sub_100013540();
  sub_1000A7648();
}

void _LNMetadataProviderDirect.action(forBundleIdentifier:actionIdentifier:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();

  sub_1000071CC();
  sub_1000A7B00();
}

void _LNMetadataProviderDirect.actionsConforming(to:withParametersOfTypes:bundleIdentifier:)()
{
  sub_10000682C();

  v2 = v0;
  v3 = v1;
  sub_1000186AC();
  sub_1000A4AE0();
}

void _LNMetadataProviderDirect.actions(withFullyQualifiedIdentifiers:)()
{
  v1 = v0;
  sub_1000B6398();
  sub_10000C900();
  sub_1000A4FB4();
}

void _LNMetadataProviderDirect.bundles()()
{
  v1 = v0;
  sub_10001DD20();
  sub_1000188D4();
  sub_1000A8038();
}

void _LNMetadataProviderDirect.bundleRegistrations()()
{
  v1 = v0;
  sub_1000B635C();
  sub_1000188D4();
  sub_1000A8038();
}

void _LNMetadataProviderDirect.queries()()
{
  v1 = v0;
  sub_10001CED0();
  sub_1000188D4();
  sub_1000A8038();
}

void _LNMetadataProviderDirect.queries(forBundleIdentifier:ofType:)()
{
  sub_10000682C();

  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A8B34();
}

void _LNMetadataProviderDirect.queries(with:inputValueType:resultValueType:)(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v3;
  v7 = a2;
  sub_1000186AC();
  sub_1000A8518();
}

void _LNMetadataProviderDirect.enums()()
{
  v1 = v0;
  sub_100004BDC();
  sub_1000188D4();
  sub_1000A8038();
}

void _LNMetadataProviderDirect.enums(forBundleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

void sub_1000A2868()
{
  sub_10000E80C();

  sub_10000C900();
  sub_100010D64();
  sub_1000A967C();
}

void _LNMetadataProviderDirect.entities()()
{
  v1 = v0;
  sub_1000188D4();
  sub_1000A9CF4();
}

void _LNMetadataProviderDirect.entities(forBundleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

uint64_t sub_1000A2978()
{
  sub_10000E80C();

  sub_10000C900();
  sub_100010D64();
  return v0();
}

void _LNMetadataProviderDirect.entityIdentifiers(forBundleIdentifier:)()
{
  sub_100018460();

  v1 = v0;
  sub_1000188E0();
  sub_100013540();
  sub_1000A7648();
}

id _LNMetadataProviderDirect.metadataVersion(forBundleIdentifier:error:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v3;
  sub_10001A5F8();

  v8 = sub_1000186AC();
  return sub_1000AA3EC(v8, v9, a1, a2, a3);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _LNMetadataProviderDirect.appShortcutsProviderMangledTypeName(forBundleIdentifier:)(Swift::String forBundleIdentifier)
{
  object = forBundleIdentifier._object;
  countAndFlagsBits = forBundleIdentifier._countAndFlagsBits;
  v5 = v1;

  v6 = sub_10000C900();
  v8 = sub_1000AA9C0(v6, v7, countAndFlagsBits, object);
  if (!v2 && !v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    sub_10002EB80(&qword_10019B0D0, &unk_100150350);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v14;
    _StringGuts.grow(_:)(57);
    v15._object = 0x80000001001565D0;
    v15._countAndFlagsBits = 0xD000000000000037;
    String.append(_:)(v15);
    v16._countAndFlagsBits = countAndFlagsBits;
    v16._object = object;
    String.append(_:)(v16);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v17 = Dictionary.init(dictionaryLiteral:)();
    objc_allocWithZone(NSError);
    v18 = sub_1000B2C68(v10, v12, 9004, v17);
    v8 = sub_100013A10(v18);
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

void _LNMetadataProviderDirect.examplePhrases(forBundleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

void _LNMetadataProviderDirect.suggestionPhrases(forQueries:)()
{
  v1 = v0;
  sub_1000B6398();
  sub_10001D60C();
  sub_10000C900();
  sub_1000AB0B4();
}

void _LNMetadataProviderDirect.openActions(forTypeIdentifier:bundleIdentifier:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000B6398();

  sub_1000064A4();
  sub_10000C900();
  sub_1000288D0();
}

uint64_t _LNMetadataProviderDirect.__allocating_init(connection:options:)()
{
  sub_100018460();
  v1 = objc_allocWithZone(v0);
  v2 = sub_10001209C();
  return _LNMetadataProviderDirect.init(connection:options:)(v2, v3);
}

uint64_t _LNMetadataProviderDirect.init(connection:options:)(id a1, uint64_t a2)
{
  v51 = a2;
  ObjectType = swift_getObjectType();
  sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  sub_10000482C();
  __chkstk_darwin(v3);
  v5 = v48 - v4;
  v6 = type metadata accessor for URL();
  sub_100002944();
  v54 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v50 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = v48 - v12;
  v13 = swift_allocBox();
  v15 = v14;
  v55 = v6;
  sub_1000075C4(v14, 1, 1, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v64 = sub_1000B58F0;
  v65 = v16;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_1000A10D0;
  v63 = &unk_10018E8E8;
  v18 = _Block_copy(&aBlock);

  v19 = [a1 synchronousRemoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002EB80(&qword_10019B0E0, &qword_1001503E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v24 = objc_allocWithZone(NSError);
    v25 = sub_1000077D8();
    sub_1000B2C68(v25, v26, 9003, 0);
    swift_willThrow();

LABEL_10:

    goto LABEL_11;
  }

  v49 = a1;
  v20 = v59;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v13;
  v64 = sub_1000B58F8;
  v65 = v21;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_1000A3D1C;
  v63 = &unk_10018E938;
  v22 = _Block_copy(&aBlock);

  v48[2] = v20;
  [v20 fetchDatabaseURL:v22];
  _Block_release(v22);
  swift_beginAccess();
  sub_1000077D8();
  sub_100009F38();
  v23 = v55;
  if (sub_1000032C4(v5, 1, v55) == 1)
  {
    sub_1000B6240(v5, &qword_1001990C0);
    swift_beginAccess();
    v15 = *v17;
    if (!*v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100002714();
      v33 = objc_allocWithZone(NSError);
      v34 = sub_1000077D8();
      sub_1000B2C68(v34, v35, 9003, 0);
      v15 = 0;
    }

    a1 = v49;
    swift_willThrow();
    swift_errorRetain();

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v48[1] = v13;
  v27 = v53;
  v28 = v54;
  v48[0] = *(v54 + 32);
  (v48[0])(v53, v5, v23);
  URL.startAccessingSecurityScopedResource()();
  URL.absoluteString.getter();
  sub_100002714();
  type metadata accessor for Connection();
  swift_allocObject();
  v29 = sub_1000077D8();
  v30 = v52;
  v32 = Connection.init(_:readonly:)(v29, v31, 1);
  if (!v30)
  {
    v37 = v32;

    Connection.busyTimeout.setter(0.5);
    v38 = v50;
    v39 = sub_1000B659C();
    v40(v39);
    v41 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v42 = swift_allocObject();
    v43 = v42 + v41;
    v44 = v55;
    (v48[0])(v43, v38, v55);
    swift_beginAccess();
    v45 = *(v37 + 24);
    v46 = *(v37 + 32);
    *(v37 + 24) = sub_1000B5900;
    *(v37 + 32) = v42;
    sub_10002CCE0(v45, v46);
    v47 = v57;
    *&v57[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection] = v37;
    v47[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion] = (v51 & 2) != 0;
    v58.receiver = v47;
    v58.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v58, "init");
    swift_unknownObjectRelease();

    (*(v28 + 8))(v27, v44);

    return v15;
  }

  URL.stopAccessingSecurityScopedResource()();
  swift_willThrow();
  swift_unknownObjectRelease();

  (*(v28 + 8))(v27, v23);

LABEL_11:
  swift_deallocPartialClassInstance();
  return v15;
}

uint64_t sub_1000A3B88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;

  return swift_errorRetain();
}

uint64_t sub_1000A3BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v15[-v8];
  v10 = swift_projectBox();
  v11 = 1;
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();

  if (a1)
  {
    v12 = [a1 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = 0;
  }

  v13 = type metadata accessor for URL();
  sub_1000075C4(v9, v11, 1, v13);
  swift_beginAccess();
  return sub_100060D78(v9, v10);
}

void sub_1000A3D1C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_1000A3E30()
{
  sub_100018D28();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection] = v0;
  v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion] = 0;
  v4.receiver = v1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1000A3F48()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v64 = v8;
  v65 = v9;
  v10 = sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v11);
  sub_100005284();
  sub_1000B6590();
  if (!v42 || (v12 = objc_opt_self(), v13 = sub_1000B65EC(v12), v14 = [v13 isApplication], v13, !v14))
  {
    v24 = sub_100005D34();
    v27 = sub_100063CD8(v24, v25, v5, v3, v26);
    if (v0)
    {

LABEL_25:

      goto LABEL_26;
    }

    v28 = v27;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000B6584();
    sub_1000A1138(v29, v30, v31, v28);

    goto LABEL_10;
  }

  v15 = [objc_opt_self() *(v1 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v16 + 32) = sub_100002C28();
  v17 = objc_allocWithZone(RBSAssertion);
  sub_1000088E4();
  sub_1000B645C();
  v67 = 0;
  v63 = sub_1000B2D18(v18, v19, v20);
  if ([v63 acquireWithError:&v67])
  {
    v21 = *&v64[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v22 = v67;
    v23 = sub_100063CD8(v65, v7, v5, v3, v21);
    if (v0)
    {
      [v63 invalidate];
      goto LABEL_12;
    }

    v58 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000B6584();
    sub_1000A1138(v59, v60, v61, v58);

    [v63 invalidate];

LABEL_10:

LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v32 = v67;
  sub_1000B63E4();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_12:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v33 = sub_100009A40();
  if (!sub_100016CD8(v33, v34, v35, v36))
  {
LABEL_24:

    goto LABEL_25;
  }

  v37 = [v66 domain];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v42 = v42 && v40 == v41;
  if (v42)
  {
  }

  else
  {
    v43 = sub_1000B6450();
    sub_1000B6538(v43, v40, v44);
    sub_1000B65D4();

    if ((v37 & 1) == 0)
    {

      goto LABEL_24;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_100018D28();

    Logger.init(_:)();
    v45 = v66;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      sub_100007764();
      v48 = sub_100011A08();
      sub_10002131C(v48);
      *v38 = 136315138;
      v62 = v47;
      v49 = [v45 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = sub_100005D34();
      v53 = sub_100004C50(v50, v51, v52);

      *(v38 + 4) = v53;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v62);
      sub_1000034F8(v3);
      sub_1000036AC(v3);
      sub_100012770();
    }

    v54 = sub_1000B6374();
    v55(v54, v10);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v56 = objc_allocWithZone(NSError);
    v57 = sub_100004F30();
    sub_100013A10(v57);

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A44FC()
{
  sub_100004DF0();
  sub_1000046C8();
  v2 = sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v3);
  sub_100002958();
  sub_10001A898();
  if (!v30 || (v4 = [objc_opt_self() currentProcess], v5 = objc_msgSend(v4, "isApplication"), v4, !v5))
  {
    v16 = *&v0[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    sub_100017580(v59);
    v17 = sub_10001DF8C(v59, v16);
    if (!v1)
    {
      v18 = v17;
      sub_1000034F8(v59);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000B6584();
      sub_1000A1138(v19, v20, v21, v18);

LABEL_26:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    sub_1000034F8(v59);
LABEL_25:

    goto LABEL_26;
  }

  v6 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v7 + 32) = sub_100002C28();
  v8 = objc_allocWithZone(RBSAssertion);
  v9 = sub_100012090();
  v11 = sub_1000B2D18(v9, v10, v6);
  v59[0] = 0;
  if ([v11 acquireWithError:v59])
  {
    v12 = *&v0[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v13 = v59[0];
    sub_100017580(v59);
    v14 = sub_10001DF8C(v59, v12);
    v15 = v1;
    if (!v1)
    {
      v51 = v14;
      sub_1000034F8(v59);
      KeyPath = swift_getKeyPath();
      v53 = swift_getKeyPath();
      v54 = swift_getKeyPath();
      sub_1000A1138(KeyPath, v53, v54, v51);

      [v11 invalidate];

      goto LABEL_26;
    }

    sub_1000034F8(v59);
    [v11 invalidate];
  }

  else
  {
    v22 = v59[0];
    sub_10000C920();
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v59[0] = v15;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  v23 = sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!sub_1000B6508(&v57, v59, v24, v23))
  {

    goto LABEL_24;
  }

  v56 = v11;
  v25 = v57;
  v26 = [v57 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v30 = v30 && v28 == v29;
  if (v30)
  {
  }

  else
  {
    v31 = sub_1000B6450();
    v33 = sub_1000B6538(v31, v28, v32);

    if ((v33 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v34 = v25;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      sub_100007764();
      v55 = sub_100013148();
      v58 = v55;
      *v26 = 136315138;
      v37 = [v34 localizedDescription];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_100004C50(v38, v40, &v58);

      *(v26 + 1) = v41;
      sub_100011B24();
      sub_1000B64F0(v42, v43, v44, v45);
      sub_1000034F8(v55);
      sub_1000036AC(v55);
      sub_1000105CC();
    }

    v46 = sub_10001209C();
    v47(v46);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002879C();
    v48 = objc_allocWithZone(NSError);
    v49 = sub_1000079EC();
    v50 = sub_1000B6340(v49, v2);
    sub_100013A10(v50);

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A4AE0()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  v64 = v9;
  v65 = v8;
  __chkstk_darwin(v8);
  sub_100002958();
  v12 = v11 - v10;
  sub_10001A898();
  if (!v45 || (v13 = objc_opt_self(), v14 = sub_100016634(v13), v15 = [v14 isApplication], v14, !v15))
  {
    v30 = sub_1000B63C8();
    sub_1000ACAF8(v30, v31, v32, v33, v3, v34);
    if (v1)
    {

LABEL_26:

      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v16 = [objc_opt_self() *(v0 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v17 + 32) = sub_100002C28();
  v18 = objc_allocWithZone(RBSAssertion);
  v19 = sub_10001AB30();
  v22 = sub_1000B2D18(v19, v20, v21);
  v67 = 0;
  if ([v22 acquireWithError:&v67])
  {
    v23 = v67;
    v24 = sub_1000B63C8();
    sub_1000ACAF8(v24, v25, v26, v27, v3, v28);
    sub_10000C0D0();
    if (v1)
    {
      sub_1000B661C(v29);
      goto LABEL_12;
    }

    sub_1000B661C(v29);

LABEL_10:

LABEL_27:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v35 = v67;
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_12:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v36 = sub_10001115C();
  if (!sub_100016CD8(v36, v37, v38, v39))
  {
LABEL_24:

    goto LABEL_25;
  }

  v63 = v22;
  v40 = [v66 domain];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v45 = v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44;
  if (v45)
  {
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v46 & 1) == 0)
    {

LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    Logger.init(_:)();
    v47 = v66;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      sub_100007764();
      v50 = sub_100013148();
      sub_1000B6564(v50);
      *v41 = 136315138;
      v51 = [v47 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = sub_1000106AC();
      v55 = sub_100004C50(v52, v53, v54);

      *(v41 + 4) = v55;
      sub_100011B24();
      sub_1000B64F0(v56, v57, v58, v59);
      v60 = sub_100012908();
      sub_1000036AC(v60);
      sub_1000105CC();
    }

    (*(v64 + 8))(v12, v65);
    v22 = v63;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v61 = objc_allocWithZone(NSError);
    v62 = sub_100004F30();
    sub_100013A10(v62);

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A4FB4()
{
  sub_100004DF0();
  v2 = v0;
  v4 = v3;
  sub_1000B63BC();
  v5 = sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v6);
  sub_100005284();
  sub_10001A898();
  if (!v30 || (v7 = [objc_opt_self() currentProcess], v8 = objc_msgSend(v7, "isApplication"), v7, !v8))
  {
    v18 = sub_100063624(v4, *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection]);
    if (v0)
    {
LABEL_27:

      goto LABEL_28;
    }

    v19 = v18;
    v20 = *(v18 + 16);
    if (v20 != sub_1000232F4(v4))
    {
      sub_1000AD400(v19, v4);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = sub_100011528();
    sub_1000A1138(v21, v22, v23, v19);

    goto LABEL_11;
  }

  v9 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v10 + 32) = sub_100002C28();
  v11 = objc_allocWithZone(RBSAssertion);
  v12 = sub_100012090();
  v14 = sub_1000B2D18(v12, v13, v9);
  v58 = 0;
  if ([v14 acquireWithError:&v58])
  {
    v15 = *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v16 = v58;
    v17 = sub_100063624(v4, v15);
    if (v0)
    {
      [v14 invalidate];
      goto LABEL_13;
    }

    v49 = v17;
    v50 = *(v17 + 16);
    if (v50 != sub_1000232F4(v4))
    {
      sub_1000AD400(v49, v4);
    }

    KeyPath = swift_getKeyPath();
    v52 = swift_getKeyPath();
    v53 = swift_getKeyPath();
    sub_1000A1138(KeyPath, v52, v53, v49);

    [v14 invalidate];

LABEL_11:

LABEL_28:
    sub_100004674();
    return;
  }

  v24 = v58;
  v2 = _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_13:
  v58 = v2;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!swift_dynamicCast())
  {

    goto LABEL_26;
  }

  v56 = v14;
  v25 = [v57 domain];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v30 = v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29;
  if (v30)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {

LABEL_26:

      goto LABEL_27;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v32 = v57;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v54 = sub_100007764();
      v55 = sub_1000056E4();
      v59 = v55;
      *v54 = 136315138;
      v35 = [v32 localizedDescription];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_100004C50(v36, v38, &v59);

      *(v54 + 4) = v39;
      sub_100011B24();
      v41 = v40;
      _os_log_impl(v42, v43, v44, v45, v40, 0xCu);
      sub_1000034F8(v55);
      sub_1000036AC(v55);
      sub_1000036AC(v41);
    }

    v46 = sub_1000B6374();
    v47(v46, v5);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v48 = objc_allocWithZone(NSError);
    sub_100011870();
    swift_willThrow();

    goto LABEL_26;
  }

  __break(1u);
}

void sub_1000A55D8()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  v48 = v7;
  v49 = v6;
  __chkstk_darwin(v6);
  sub_100002958();
  v50 = v9 - v8;
  sub_1000B6590();
  if (!v35 || (v10 = objc_opt_self(), v11 = sub_1000B65EC(v10), v12 = [v11 isApplication], v11, !v12))
  {
    v23 = sub_1000B6420();
    v3(v23);
    if (v0)
    {
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_9;
  }

  v13 = [objc_opt_self() *(v1 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v14 + 32) = sub_100002C28();
  v15 = objc_allocWithZone(RBSAssertion);
  sub_100012090();
  sub_1000B645C();
  v19 = sub_1000B2D18(v16, v17, v18);
  v52 = 0;
  if ([v19 acquireWithError:&v52])
  {
    v20 = v52;
    v21 = sub_1000B6420();
    v3(v21);
    sub_10000C0D0();
    if (v0)
    {
      sub_10000DE54(v22);
      goto LABEL_11;
    }

    sub_10000DE54(v22);

LABEL_9:

LABEL_28:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v24 = v52;
  sub_1000B63E4();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v25 = sub_100009A40();
  if (!sub_100016CD8(v25, v26, v27, v28))
  {

LABEL_26:

    goto LABEL_27;
  }

  v47 = v19;
  v29 = v51;
  v30 = [v51 domain];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v35 = v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34;
  if (v35)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000B65D4();

    if ((v30 & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_100018D28();

    Logger.init(_:)();
    v29 = v51;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_100007764();
      v39 = sub_1000056E4();
      v53 = v39;
      *v38 = 136315138;
      v40 = [v29 localizedDescription];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_100004C50(v41, v43, &v53);

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to acquire assertions: %s", v38, 0xCu);
      sub_1000034F8(v39);
      sub_1000105CC();
      sub_1000036AC(v38);
    }

    (*(v48 + 8))(v50, v49);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v45 = objc_allocWithZone(NSError);
    v46 = sub_100004F30();
    sub_100013A10(v46);
    goto LABEL_25;
  }

  __break(1u);
}

id sub_1000A5ACC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, void *a7, uint64_t a8)
{
  v71 = a5;
  v72 = a7;
  v73 = a4;
  v14 = type metadata accessor for Logger();
  v69 = *(v14 - 8);
  v70 = v14;
  __chkstk_darwin(v14);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v17 = [objc_opt_self() currentProcess], v18 = objc_msgSend(v17, "isApplication"), v17, !v18))
  {
    sub_100012C78(a3, v73, v79);
    if (v8)
    {
      v27 = type metadata accessor for MetadataError();
      sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
      v28 = swift_allocError();
      (*(*(v27 - 8) + 104))(v29, enum case for MetadataError.cacheLookupFailed(_:), v27);

      *a6 = v28;

LABEL_37:
    }

    if (v80)
    {
      sub_1000B6240(v79, &unk_10019B428);
      sub_10004BF80();
      if (!v30)
      {
        v31 = type metadata accessor for MetadataError();
        sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
        v32 = swift_allocError();
        (*(*(v31 - 8) + 104))(v33, enum case for MetadataError.cacheLookupFailed(_:), v31);
        *a6 = v32;

        goto LABEL_37;
      }

      v45 = sub_10006AF24(1000, v30);

      *v71 = v45;
    }

    else
    {
      *v71 = _swiftEmptyArrayStorage;
    }

    goto LABEL_37;
  }

  v68 = a8;
  v19 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v20 + 32) = sub_1000AB530();
  v21 = objc_allocWithZone(RBSAssertion);
  v22 = sub_1000B2D18(0xD000000000000010, 0x8000000100156700, v19);
  v75 = 0;
  if ([v22 acquireWithError:&v75])
  {
    v23 = v75;
    sub_100012C78(a3, v73, v77);
    if (v8)
    {
      v24 = type metadata accessor for MetadataError();
      sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
      v25 = swift_allocError();
      (*(*(v24 - 8) + 104))(v26, enum case for MetadataError.cacheLookupFailed(_:), v24);

      *a6 = v25;

LABEL_36:
      [v22 invalidate];

      goto LABEL_37;
    }

    if (v78)
    {
      sub_1000B6240(v77, &unk_10019B428);
      sub_10004BF80();
      if (!v46)
      {
        v47 = type metadata accessor for MetadataError();
        sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
        v48 = swift_allocError();
        (*(*(v47 - 8) + 104))(v49, enum case for MetadataError.cacheLookupFailed(_:), v47);
        *a6 = v48;

        goto LABEL_36;
      }

      v67 = sub_10006AF24(1000, v46);

      *v71 = v67;
    }

    else
    {
      *v71 = _swiftEmptyArrayStorage;
    }

    goto LABEL_36;
  }

  v72 = v22;
  v34 = v75;
  v35 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v75 = v35;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v36 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
  }

  v37 = v74;
  v38 = [v74 domain];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {

      goto LABEL_31;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    Logger.init(_:)();
    v51 = v37;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v76 = v55;
      *v54 = 136315138;
      v56 = [v51 localizedDescription];
      v71 = v51;
      v57 = v56;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = v58;
      v36 = a2;
      v62 = sub_100004C50(v61, v60, &v76);

      *(v54 + 4) = v62;
      v51 = v71;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to acquire assertions: %s", v54, 0xCu);
      sub_1000034F8(v55);
    }

    (*(v69 + 8))(v16, v70);
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
    v66 = objc_allocWithZone(NSError);
    sub_1000B2C68(v63, v65, 9006, 0);
    swift_willThrow();

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void sub_1000A649C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v51 = a4;
  v12 = type metadata accessor for Logger();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v14 = [objc_opt_self() currentProcess], v15 = objc_msgSend(v14, "isApplication"), v14, !v15))
  {
    sub_1000B1990(a2, a3, v51, a5, a6);
    if (v6)
    {
LABEL_27:

      return;
    }

    goto LABEL_8;
  }

  v47 = a2;
  v16 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v17 + 32) = sub_1000AB530();
  v18 = objc_allocWithZone(RBSAssertion);
  v19 = sub_1000B2D18(0xD000000000000010, 0x8000000100156700, v16);
  v53 = 0;
  if ([v19 acquireWithError:&v53])
  {
    v20 = v53;
    a2 = v47;
    sub_1000B1990(v47, a3, v51, a5, a6);
    v21 = v6;
    if (v6)
    {
      [v19 invalidate];
      goto LABEL_10;
    }

    [v19 invalidate];

LABEL_8:

    return;
  }

  v22 = v19;
  v23 = v53;
  v21 = _convertNSErrorToError(_:)();

  v19 = v22;
  swift_willThrow();
  a2 = v47;
LABEL_10:
  v53 = v21;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!swift_dynamicCast())
  {

LABEL_26:

    goto LABEL_27;
  }

  v47 = v19;
  v24 = v52;
  v25 = [v52 domain];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    v32 = v50;
    Logger.init(_:)();
    v24 = v24;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54 = v36;
      *v35 = 136315138;
      v37 = [v24 localizedDescription];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_100004C50(v38, v40, &v54);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to acquire assertions: %s", v35, 0xCu);
      sub_1000034F8(v36);

      (*(v48 + 8))(v50, v49);
    }

    else
    {

      (*(v48 + 8))(v32, v49);
    }

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    v45 = objc_allocWithZone(NSError);
    sub_1000B2C68(v42, v44, 9006, 0);
    swift_willThrow();
    goto LABEL_25;
  }

  __break(1u);
}

void sub_1000A6B98()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1000046C8();
  sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v8);
  sub_100003B7C();
  sub_10001A898();
  if (!v24 || (v9 = [objc_opt_self() currentProcess], v10 = objc_msgSend(v9, "isApplication"), v9, !v10))
  {
    v3(v7, v5, *&v0[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection]);
    if (v1)
    {
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v11 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v12 + 32) = sub_100002C28();
  v13 = objc_allocWithZone(RBSAssertion);
  v14 = sub_10001AB30();
  v17 = sub_1000B2D18(v14, v15, v16);
  v35[0] = 0;
  if ([v17 acquireWithError:v35])
  {
    v18 = *&v0[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v19 = v35[0];
    v3(v7, v5, v18);
    if (v1)
    {
      [v17 invalidate];
      goto LABEL_11;
    }

    [v17 invalidate];

LABEL_9:

LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v20 = v35[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v21 = [v34 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v24 = v24 && v1 == v23;
  if (v24)
  {
  }

  else
  {
    v25 = sub_100006AC4(v22);

    if ((v25 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v26 = sub_1000B6520(v34);
    v27 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      sub_100007764();
      v35[1] = sub_100011A08();
      *v7 = 136315138;
      v33 = v27;
      v28 = [v17 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000263E0();
      sub_100017268();
      sub_1000B6604();
      *(v7 + 4) = v28;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v33);
      sub_10001E11C();
      sub_100012770();
    }

    v29 = sub_100018344();
    v30(v29);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v31 = objc_allocWithZone(NSError);
    v32 = sub_100011870();
    sub_100013A10(v32);

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A70F4()
{
  sub_100004DF0();
  v3 = v2;
  sub_1000B63BC();
  v4 = sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v5);
  sub_100003B7C();
  sub_10001A898();
  if (!v25 || (v6 = [objc_opt_self() currentProcess], v7 = objc_msgSend(v6, "isApplication"), v6, !v7))
  {
    sub_1000B64CC();
    if (v0)
    {
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_9;
  }

  v8 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v9 + 32) = sub_100002C28();
  v10 = objc_allocWithZone(RBSAssertion);
  v11 = sub_1000088E4();
  v13 = sub_1000B2D18(v11, v12, v8);
  v43 = 0;
  if ([v13 acquireWithError:&v43])
  {
    v14 = v43;
    sub_1000B64CC();
    sub_10000C0D0();
    if (v0)
    {
      sub_100016D4C(v15);
      goto LABEL_11;
    }

    sub_100016D4C(v15);

LABEL_9:

LABEL_28:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v16 = v43;
  sub_10000C920();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_100019AC8();
  v17 = sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v18 = sub_10001115C();
  if (!sub_1000B6508(v18, v19, v20, v21))
  {

    goto LABEL_26;
  }

  v41 = v13;
  v22 = [v42 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v25 = v25 && v3 == v24;
  if (v25)
  {
  }

  else
  {
    v17 = sub_100006AC4(v23);

    if ((v17 & 1) == 0)
    {

LABEL_26:

      goto LABEL_27;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v26 = sub_1000B6520(v42);
    v27 = static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v28 = sub_100011A08();
      sub_10002131C(v28);
      *v22 = 136315138;
      v29 = v17;
      v30 = [v17 localizedDescription];
      v40 = v27;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_100004C50(v31, v33, &v44);

      *(v22 + 1) = v34;
      v17 = v29;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v40);
      sub_10001E11C();
      sub_100012770();

      v35 = sub_100018344();
    }

    else
    {

      v35 = sub_100018344();
      v36 = v4;
    }

    v37(v35, v36);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v38 = objc_allocWithZone(NSError);
    v39 = sub_100011870();
    sub_100013A10(v39);

    goto LABEL_26;
  }

  __break(1u);
}

void sub_1000A7648()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1000B63BC();
  sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v8);
  sub_100003B7C();
  sub_10001A898();
  if (!v24 || (v9 = [objc_opt_self() currentProcess], v10 = objc_msgSend(v9, "isApplication"), v9, !v10))
  {
    v3(v7, v5, *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection]);
    if (v0)
    {
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v11 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v12 + 32) = sub_100002C28();
  v13 = objc_allocWithZone(RBSAssertion);
  v14 = sub_10001AB30();
  v17 = sub_1000B2D18(v14, v15, v16);
  v40 = 0;
  if ([v17 acquireWithError:&v40])
  {
    v18 = *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v19 = v40;
    v3(v7, v5, v18);
    if (v0)
    {
      [v17 invalidate];
      goto LABEL_11;
    }

    [v17 invalidate];

LABEL_9:

LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v20 = v40;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v38 = v17;
  v21 = [v39 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v24 = v24 && v0 == v23;
  if (v24)
  {
  }

  else
  {
    v25 = sub_100006AC4(v22);

    if ((v25 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v26 = v39;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      sub_100007764();
      v41 = sub_100011A08();
      *v7 = 136315138;
      v37 = v28;
      v29 = [v26 localizedDescription];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      sub_100004C50(v30, v32, &v41);
      sub_1000B6604();
      *(v7 + 4) = v29;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v37);
      sub_10001E11C();
      sub_100012770();
    }

    v33 = sub_100018344();
    v34(v33);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v35 = objc_allocWithZone(NSError);
    v36 = sub_100011870();
    sub_100013A10(v36);

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A7B00()
{
  sub_100004DF0();
  sub_1000B63BC();
  sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v3);
  sub_100005284();
  sub_10001A898();
  if (!v30 || (v4 = objc_opt_self(), v5 = sub_100016634(v4), v6 = [v5 isApplication], v5, !v6))
  {
    v17 = sub_100005D34();
    sub_100019A70(v17, v18, v19);
    if (v1)
    {

LABEL_26:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    goto LABEL_25;
  }

  v52 = v2;
  v7 = [objc_opt_self() *(v0 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v8 + 32) = sub_100002C28();
  v9 = objc_allocWithZone(RBSAssertion);
  v10 = sub_100012090();
  v54 = 0;
  v51 = sub_1000B2D18(v10, v11, v7);
  if ([v51 acquireWithError:&v54])
  {
    v12 = v54;
    v13 = sub_1000B659C();
    sub_100019A70(v13, v14, v15);
    sub_10000C0D0();
    if (v1)
    {
      [v51 *(v16 + 3536)];
      goto LABEL_10;
    }

    v2 = v51;
    [v51 *(v16 + 3536)];

LABEL_25:

    goto LABEL_26;
  }

  v20 = v54;
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_10:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v21 = sub_10001115C();
  if (!sub_100016CD8(v21, v22, v23, v24))
  {

    goto LABEL_23;
  }

  v25 = [v53 domain];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v30 = v30 && v28 == v29;
  if (v30)
  {
  }

  else
  {
    v31 = sub_1000B6450();
    v33 = sub_1000B6538(v31, v28, v32);

    if ((v33 & 1) == 0)
    {

LABEL_23:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v34 = v53;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      sub_100007764();
      v55 = sub_100011A08();
      *v26 = 136315138;
      v37 = [v34 localizedDescription];
      v38 = v34;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
      v34 = v38;
      v43 = sub_100004C50(v42, v41, &v55);

      *(v26 + 4) = v43;
      sub_1000B65B4(&_mh_execute_header, v44, v45, "Failed to acquire assertions: %s");
      v46 = sub_100012908();
      sub_1000036AC(v46);
      sub_100012770();
    }

    v47 = sub_1000B6374();
    v48(v47);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v49 = objc_allocWithZone(NSError);
    v50 = sub_100004F30();
    sub_100013A10(v50);

    goto LABEL_23;
  }

  __break(1u);
}

void sub_1000A8038()
{
  sub_100004DF0();
  v3 = v2;
  sub_1000046C8();
  v4 = sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v5);
  sub_100002958();
  sub_10001A898();
  if (!v28 || (v6 = [objc_opt_self() currentProcess], v7 = objc_msgSend(v6, "isApplication"), v6, !v7))
  {
    v17 = sub_10000E200();
    v3(v17);
    if (!v1)
    {

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v8 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v9 + 32) = sub_100002C28();
  v10 = objc_allocWithZone(RBSAssertion);
  v11 = sub_100012090();
  v13 = sub_1000B2D18(v11, v12, v8);
  v50 = 0;
  if ([v13 acquireWithError:&v50])
  {
    v14 = v50;
    v15 = sub_10000E200();
    v3(v15);
    sub_10000C0D0();
    if (!v1)
    {
      [v13 *(v16 + 3536)];

      goto LABEL_26;
    }

    [v13 *(v16 + 3536)];
  }

  else
  {
    v18 = v50;
    sub_10000C920();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v19 = sub_10001115C();
  if (!sub_1000B6508(v19, v20, v21, v22))
  {
LABEL_24:

LABEL_25:

LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v23 = v49;
  v24 = [v49 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v28 = v28 && v26 == v27;
  if (v28)
  {
  }

  else
  {
    v29 = sub_1000B6450();
    v31 = sub_1000B6538(v29, v26, v30);

    if ((v31 & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v23 = v49;
    v32 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v47 = sub_100013148();
      v51 = v47;
      *v24 = 136315138;
      v48 = v23;
      v33 = [v23 localizedDescription];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_100004C50(v34, v36, &v51);

      *(v24 + 1) = v37;
      v23 = v48;
      sub_100011B24();
      sub_1000B64F0(v38, v39, v40, v41);
      sub_1000034F8(v47);
      sub_1000036AC(v47);
      sub_1000105CC();
    }

    v42 = sub_10001209C();
    v43(v42);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002879C();
    v44 = objc_allocWithZone(NSError);
    v45 = sub_1000079EC();
    v46 = sub_1000B6340(v45, v4);
    sub_100013A10(v46);
    goto LABEL_23;
  }

  __break(1u);
}

void sub_1000A8518()
{
  sub_100004DF0();
  v3 = v2;
  v65 = v4;
  v6 = v5;
  v7 = sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v8);
  sub_100005284();
  sub_10001A898();
  if (!v36 || (v9 = objc_opt_self(), v10 = sub_100016634(v9), v11 = [v10 isApplication], v10, !v11))
  {
    v19 = v65;
    sub_1000B63F0();
    sub_10011712C();
    if (v1)
    {
LABEL_8:

LABEL_9:
LABEL_12:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    v22 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v24 = sub_1000B659C();
    sub_1000A14E0(v24, v25, KeyPath, v22);

    goto LABEL_11;
  }

  v12 = [objc_opt_self() *(v0 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v13 + 32) = sub_100002C28();
  v14 = objc_allocWithZone(RBSAssertion);
  v15 = sub_100012090();
  v17 = sub_1000B2D18(v15, v16, v12);
  v67 = 0;
  if ([v17 acquireWithError:&v67])
  {
    v18 = v67;
    v19 = v65;
    sub_10011712C();
    if (v1)
    {
      [v17 invalidate];
      goto LABEL_14;
    }

    v58 = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000B6584();
    sub_1000A14E0(v59, v60, v61, v58);

    [v17 invalidate];

LABEL_11:
    goto LABEL_12;
  }

  v26 = v67;
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v19 = v65;
LABEL_14:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v27 = sub_100009A40();
  if (!sub_100016CD8(v27, v28, v29, v30))
  {

    goto LABEL_8;
  }

  v63 = v17;
  v31 = [v66 domain];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v36 = v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35;
  if (v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v38 = v66;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v62 = sub_100007764();
      v64 = sub_1000056E4();
      v68 = v64;
      *v62 = 136315138;
      v41 = [v38 localizedDescription];
      v42 = v38;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = v43;
      v38 = v42;
      v47 = sub_100004C50(v46, v45, &v68);

      *(v62 + 4) = v47;
      sub_100011B24();
      v49 = v48;
      _os_log_impl(v50, v51, v52, v53, v48, 0xCu);
      sub_1000034F8(v64);
      sub_1000105CC();
      sub_1000036AC(v49);
    }

    v54 = sub_1000B6374();
    v55(v54, v7);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v56 = objc_allocWithZone(NSError);
    v57 = sub_100004F30();
    sub_100013A10(v57);

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000A8B34()
{
  sub_100004DF0();
  sub_1000B63BC();
  sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v3);
  sub_100005284();
  sub_10001A898();
  if (!v26 || (v4 = objc_opt_self(), v5 = sub_100016634(v4), v6 = [v5 isApplication], v5, !v6))
  {
    sub_100005D34();
    sub_1000AF694(v15);
    if (v1)
    {

LABEL_9:

LABEL_26:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    goto LABEL_25;
  }

  v47 = v2;
  v7 = [objc_opt_self() *(v0 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v8 + 32) = sub_100002C28();
  v9 = objc_allocWithZone(RBSAssertion);
  v10 = sub_100012090();
  v49[0] = 0;
  v2 = sub_1000B2D18(v10, v11, v7);
  if ([v2 acquireWithError:v49])
  {
    v12 = v49[0];
    sub_1000B659C();
    sub_1000AF694(v13);
    sub_10000C0D0();
    if (v1)
    {
      sub_10000DE54(v14);
      goto LABEL_11;
    }

    sub_10000DE54(v14);

LABEL_25:

    goto LABEL_26;
  }

  v16 = v49[0];
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v17 = sub_10001115C();
  if (!sub_100016CD8(v17, v18, v19, v20))
  {

    goto LABEL_9;
  }

  v21 = [v48 domain];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v26 = v26 && v24 == v25;
  if (v26)
  {
  }

  else
  {
    v27 = sub_1000B6450();
    v29 = sub_1000B6538(v27, v24, v28);

    if ((v29 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v30 = v48;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      sub_100007764();
      v33 = sub_100011A08();
      sub_1000B6564(v33);
      *v22 = 136315138;
      v34 = [v30 localizedDescription];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v30;
      v38 = v37;

      v39 = sub_100004C50(v35, v38, &v50);
      v30 = v36;

      *(v22 + 4) = v39;
      sub_1000B65B4(&_mh_execute_header, v40, v41, "Failed to acquire assertions: %s");
      v42 = sub_100012908();
      sub_1000036AC(v42);
      sub_100012770();
    }

    v43 = sub_1000B6374();
    v44(v43);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v45 = objc_allocWithZone(NSError);
    v46 = sub_100004F30();
    sub_100013A10(v46);

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000A90A4()
{
  sub_100004DF0();
  sub_100018BB4(v4, v5, v6, v7, v8, v9);
  sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v10);
  sub_100005284();
  sub_1000B6590();
  if (!v35 || (v11 = objc_opt_self(), v0 = sub_1000B65EC(v11), v12 = [v0 isApplication], v0, !v12))
  {
    sub_100019D60();
    sub_100018774();
    v3();
    if (v1)
    {

LABEL_26:
      sub_1000248C0();
      sub_100004674();
      return;
    }

LABEL_10:
    sub_1000113FC();

    goto LABEL_26;
  }

  v13 = [objc_opt_self() *(v2 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v14 + 32) = sub_100002C28();
  v15 = objc_allocWithZone(RBSAssertion);
  sub_1000088E4();
  sub_1000B645C();
  v55[0] = 0;
  v52 = sub_1000B2D18(v16, v17, v18);
  v19 = [v52 acquireWithError:v55];
  v20 = v55[0];
  if (v19)
  {
    v21 = v55[0];
    sub_100019D60();
    sub_100018774();
    v3();
    sub_10000C0D0();
    if (v1)
    {
      v23 = v52;
      [v52 *(v22 + 3536)];
      goto LABEL_12;
    }

    [v52 *(v22 + 3536)];

    goto LABEL_10;
  }

  v24 = v55[0];
  sub_1000B63E4();
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v23 = v52;
LABEL_12:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v25 = sub_10001115C();
  if (!sub_100016CD8(v25, v26, v27, v28))
  {
LABEL_24:

    goto LABEL_25;
  }

  v29 = [v54 domain];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v30 == v33 && v32 == v34;
  if (v35)
  {
  }

  else
  {
    sub_10001D3C8(v33);
    sub_1000B65D4();

    if ((v29 & 1) == 0)
    {

LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_100018D28();

    Logger.init(_:)();
    v36 = v54;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v39 = sub_100013148();
      sub_1000B6564(v39);
      *v30 = 136315138;
      v40 = [v36 localizedDescription];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v36;
      v44 = v43;

      v45 = sub_100004C50(v41, v44, &v56);
      v36 = v42;

      *(v30 + 4) = v45;
      sub_1000B64F0(&_mh_execute_header, v37, v38, "Failed to acquire assertions: %s", v51);
      v46 = sub_100012908();
      v23 = v52;
      sub_1000036AC(v46);
      sub_1000105CC();
    }

    v47 = sub_1000B6374();
    v48(v47);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v49 = objc_allocWithZone(NSError);
    v50 = sub_100004F30();
    sub_100013A10(v50);

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A967C()
{
  sub_100004DF0();
  v57 = v1;
  v3 = v2;
  v59 = v4;
  v5 = sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v6);
  sub_100005284();
  sub_10001A898();
  if (!v31 || (v7 = [objc_opt_self() currentProcess], v8 = objc_msgSend(v7, "isApplication"), v7, !v8))
  {

    v19 = sub_100017FA0();
    v3(v19);
    if (v0)
    {

LABEL_13:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    if (v20)
    {
    }

    else
    {
      v33 = sub_100017FA0();
      v57(v33);
      v52 = v34;

      if (!v52)
      {
        goto LABEL_12;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v56 = v5;
  v9 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v10 + 32) = sub_100002C28();
  v11 = objc_allocWithZone(RBSAssertion);
  v12 = sub_100012090();
  v14 = sub_1000B2D18(v12, v13, v9);
  v61 = 0;
  if ([v14 acquireWithError:&v61])
  {
    v15 = v59;
    v16 = v61;

    v17 = sub_100017FA0();
    v3(v17);
    if (v0)
    {

      [v14 invalidate];
      goto LABEL_15;
    }

    if (v18)
    {
    }

    else
    {
      v53 = sub_100017FA0();
      v57(v53);
      v55 = v54;

      if (!v55)
      {
        goto LABEL_32;
      }
    }

LABEL_32:
    [v14 invalidate];

    goto LABEL_12;
  }

  v21 = v61;
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v15 = v59;
LABEL_15:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v22 = sub_100009A40();
  if (!sub_100016CD8(v22, v23, v24, v25))
  {

    goto LABEL_13;
  }

  v26 = [v60 domain];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v31 = v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30;
  if (v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {

      goto LABEL_13;
    }
  }

  v35 = getLNLogCategoryMetadata();
  if (v35)
  {
    v36 = v35;

    Logger.init(_:)();
    v37 = v60;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      v40 = sub_100007764();
      v58 = v14;
      v41 = sub_1000056E4();
      v62 = v41;
      *v40 = 136315138;
      v42 = [v37 localizedDescription];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v36 = sub_100004C50(v43, v45, &v62);

      *(v40 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to acquire assertions: %s", v40, 0xCu);
      sub_1000034F8(v41);
      v46 = v41;
      v14 = v58;
      sub_1000036AC(v46);
      sub_1000036AC(v40);
    }

    v47 = sub_1000B6374();
    v48(v47);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002879C();
    v49 = objc_allocWithZone(NSError);
    v50 = sub_1000079EC();
    v51 = sub_1000B6340(v50, v36);
    sub_100013A10(v51);

    goto LABEL_13;
  }

  __break(1u);
}

void sub_1000A9CF4()
{
  sub_100004DF0();
  sub_1000B63BC();
  v2 = type metadata accessor for Logger();
  sub_100002944();
  __chkstk_darwin(v3);
  sub_100003B7C();
  sub_10001A898();
  if (!v31 || (v4 = [objc_opt_self() currentProcess], v5 = objc_msgSend(v4, "isApplication"), v4, !v5))
  {
    v17 = *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    if (qword_100198450 != -1)
    {
      sub_100007FFC(&qword_100198450);
    }

    memcpy(v55, &unk_10019C518, 0xB0uLL);
    v53 = &type metadata for Table;
    v54 = &protocol witness table for Table;
    v52[0] = swift_allocObject();
    memcpy((v52[0] + 16), &unk_10019C518, 0xB0uLL);
    sub_1000196B0(v55, v51);
    v18 = sub_100111F6C(v52, v17);
    if (!v0)
    {
      v19 = v18;
      sub_1000034F8(v52);
      KeyPath = swift_getKeyPath();
      v21 = swift_getKeyPath();
      v22 = swift_getKeyPath();
      sub_1000A1BD0(KeyPath, v21, v22, v19);

LABEL_30:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    sub_1000034F8(v52);
LABEL_29:

    goto LABEL_30;
  }

  v6 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v7 + 32) = sub_100002C28();
  v8 = objc_allocWithZone(RBSAssertion);
  v9 = sub_10001AB30();
  v12 = sub_1000B2D18(v9, v10, v11);
  v55[0] = 0;
  if ([v12 acquireWithError:v55])
  {
    v13 = *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v7 = qword_100198450;
    v14 = v55[0];
    if (v7 != -1)
    {
      sub_100007FFC(&qword_100198450);
    }

    memcpy(v55, &unk_10019C518, 0xB0uLL);
    v53 = &type metadata for Table;
    v54 = &protocol witness table for Table;
    v52[0] = swift_allocObject();
    memcpy((v52[0] + 16), &unk_10019C518, 0xB0uLL);
    sub_1000196B0(v55, v51);
    v15 = sub_100111F6C(v52, v13);
    v16 = v0;
    if (!v0)
    {
      v43 = v15;
      sub_1000034F8(v52);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      v44 = sub_100011528();
      sub_1000A1BD0(v44, v45, v46, v43);
      sub_1000B6604();

      [v12 invalidate];

      goto LABEL_30;
    }

    sub_1000034F8(v52);
    [v12 invalidate];
  }

  else
  {
    v23 = v55[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v55[0] = v16;
  swift_errorRetain();
  v24 = sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  v25 = sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!sub_1000B6508(v51, v55, v26, v25))
  {

    goto LABEL_28;
  }

  v50 = v12;
  v27 = v51[0];
  v28 = [v51[0] domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v31 = v31 && v7 == v30;
  if (v31)
  {
  }

  else
  {
    v24 = sub_100006AC4(v29);

    if ((v24 & 1) == 0)
    {

LABEL_28:

      goto LABEL_29;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v32 = sub_1000B6520(v27);
    v33 = static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v48 = sub_100011A08();
      v52[0] = v48;
      *v28 = 136315138;
      v49 = v24;
      v34 = [v24 localizedDescription];
      v47 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_100004C50(v35, v37, v52);

      *(v28 + 1) = v38;
      v24 = v49;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v47);
      sub_1000034F8(v48);
      sub_1000036AC(v48);
      sub_100012770();
    }

    v39 = sub_100018344();
    v40(v39, v2);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v41 = objc_allocWithZone(NSError);
    v42 = sub_100011870();
    sub_100013A10(v42);

    goto LABEL_28;
  }

  __break(1u);
}

id sub_1000AA3EC(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for Logger();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v12 = [objc_opt_self() currentProcess], v13 = objc_msgSend(v12, "isApplication"), v12, !v13))
  {
    sub_1000B0748(a5, &v55);
    if (v5)
    {
LABEL_24:

      return a2;
    }

    goto LABEL_8;
  }

  v50 = a2;
  v14 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v15 + 32) = sub_1000AB530();
  v16 = objc_allocWithZone(RBSAssertion);
  v17 = sub_1000B2D18(0xD000000000000010, 0x8000000100156700, v14);
  v54 = 0;
  if ([v17 acquireWithError:&v54])
  {
    v18 = v54;
    a2 = v50;
    sub_1000B0748(a5, &v55);
    v19 = v5;
    if (v5)
    {
      [v17 invalidate];
      goto LABEL_10;
    }

    [v17 invalidate];

LABEL_8:
    a2 = v55;

    return a2;
  }

  v20 = v54;
  v19 = _convertNSErrorToError(_:)();

  swift_willThrow();
  a2 = v50;
LABEL_10:
  v54 = v19;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!swift_dynamicCast())
  {

    goto LABEL_23;
  }

  v50 = v17;
  v21 = v53;
  v22 = [v53 domain];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {

LABEL_23:

      goto LABEL_24;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    Logger.init(_:)();
    v30 = v21;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v56 = v49;
      *v33 = 136315138;
      v34 = [v30 localizedDescription];
      HIDWORD(v48) = v32;
      v35 = v34;
      v36 = a2;
      v37 = v30;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = v38;
      v30 = v37;
      a2 = v36;
      v42 = sub_100004C50(v41, v40, &v56);

      *(v33 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v31, BYTE4(v48), "Failed to acquire assertions: %s", v33, 0xCu);
      sub_1000034F8(v49);
    }

    (*(v51 + 8))(v11, v52);
    v43 = v50;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    v47 = objc_allocWithZone(NSError);
    sub_1000B2C68(v44, v46, 9006, 0);
    swift_willThrow();

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

char *sub_1000AA9C0(uint64_t a1, char *a2, uint64_t a3, char *a4)
{
  v9 = type metadata accessor for Logger();
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v12 = [objc_opt_self() currentProcess], v13 = objc_msgSend(v12, "isApplication"), v12, !v13))
  {
    sub_100012C78(a3, a4, &v58);
    if (v4)
    {
LABEL_25:

      return v11;
    }

    if (v59)
    {
      v11 = v60;
      v52[0] = v58;
      v52[1] = v59;
      sub_10001D368(v52);
    }

    else
    {

      v11 = 0;
    }

    goto LABEL_30;
  }

  v48 = a4;
  v14 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v15 + 32) = sub_1000AB530();
  v16 = objc_allocWithZone(RBSAssertion);
  v17 = sub_1000B2D18(0xD000000000000010, 0x8000000100156700, v14);
  v51 = 0;
  if ([v17 acquireWithError:&v51])
  {
    v18 = v51;
    sub_100012C78(a3, v48, &v55);
    v19 = v4;
    if (v4)
    {
      [v17 invalidate];
      goto LABEL_10;
    }

    if (v56)
    {
      v11 = v57;
      v53[0] = v55;
      v53[1] = v56;
      sub_10001D368(v53);
    }

    else
    {
      v11 = 0;
    }

    [v17 invalidate];

LABEL_30:

    return v11;
  }

  v20 = v51;
  v19 = _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_10:
  v51 = v19;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v48 = v17;
  v21 = v50;
  v22 = [v50 domain];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    Logger.init(_:)();
    v30 = v21;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54 = v46;
      *v33 = 136315138;
      v34 = [v30 localizedDescription];
      v47 = v30;
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      HIDWORD(v45) = v32;
      v37 = v36;
      v39 = v38;

      v40 = sub_100004C50(v37, v39, &v54);

      *(v33 + 4) = v40;
      v30 = v47;
      _os_log_impl(&_mh_execute_header, v31, BYTE4(v45), "Failed to acquire assertions: %s", v33, 0xCu);
      sub_1000034F8(v46);
    }

    (*(v49 + 8))(v11, v9);
    v11 = v48;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    v44 = objc_allocWithZone(NSError);
    sub_1000B2C68(v41, v43, 9006, 0);
    swift_willThrow();

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_1000AB0B4()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  sub_1000046C8();
  v6 = sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v7);
  sub_100003B7C();
  sub_10001A898();
  if (!v29 || (v8 = [objc_opt_self() currentProcess], v9 = objc_msgSend(v8, "isApplication"), v8, !v9))
  {
    v19 = sub_10000E200();
    v3(v19, v5);
    if (v1)
    {
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_9;
  }

  v10 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v11 + 32) = sub_100002C28();
  v12 = objc_allocWithZone(RBSAssertion);
  v13 = sub_1000088E4();
  v15 = sub_1000B2D18(v13, v14, v10);
  v47 = 0;
  if ([v15 acquireWithError:&v47])
  {
    v16 = v47;
    v17 = sub_10000E200();
    v3(v17, v5);
    sub_10000C0D0();
    if (v1)
    {
      sub_100016D4C(v18);
      goto LABEL_11;
    }

    sub_100016D4C(v18);

LABEL_9:
    sub_1000113FC();
LABEL_28:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v20 = v47;
  sub_10000C920();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_100019AC8();
  v21 = sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v22 = sub_10001115C();
  if (!sub_1000B6508(v22, v23, v24, v25))
  {

    goto LABEL_26;
  }

  v45 = v15;
  v26 = [v46 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v29 = v29 && v1 == v28;
  if (v29)
  {
  }

  else
  {
    v21 = sub_100006AC4(v27);

    if ((v21 & 1) == 0)
    {

LABEL_26:

      goto LABEL_27;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v30 = sub_1000B6520(v46);
    v31 = static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v32 = sub_100011A08();
      sub_10002131C(v32);
      *v26 = 136315138;
      v33 = v21;
      v34 = [v21 localizedDescription];
      v44 = v31;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_100004C50(v35, v37, &v48);

      *(v26 + 1) = v38;
      v21 = v33;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v44);
      sub_10001E11C();
      sub_100012770();

      v39 = sub_100018344();
    }

    else
    {

      v39 = sub_100018344();
      v40 = v6;
    }

    v41(v39, v40);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v42 = objc_allocWithZone(NSError);
    v43 = sub_100011870();
    sub_100013A10(v43);

    goto LABEL_26;
  }

  __break(1u);
}

id sub_1000AB530()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

void sub_1000AB644()
{
  sub_1000046A0();
  v1 = v0;
  v3 = _Block_copy(v2);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  _Block_copy(v3);
  v7 = v1;
  sub_1000A2170(v4, v6, v7, v3);

  _Block_release(v3);

  sub_100017F88();
}

id sub_1000AB7C0()
{
  sub_1000046A0();
  v9 = sub_10001D9E4(v6, v7, v8);
  v10 = v1;
  v11 = sub_1000B6438();
  v12 = v4(v11);

  if (v9)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_10001A5F8();

      v13 = v12;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, v3, v2);
    Dictionary._bridgeToObjectiveC()();
    sub_10000D34C();
  }

  sub_100017F88();

  return v14;
}

void *sub_1000ABCAC(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v33 = *(a1 + 16);
  for (i = (a1 + 72); ; i += 6)
  {
    if (v33 == v2)
    {

      return _swiftEmptyDictionarySingleton;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(i - 5);
    v4 = *(i - 4);
    v6 = *(i - 2);
    v34 = v2;
    v35 = *(i - 3);
    v7 = *i;
    v36 = *(i - 1);
    swift_bridgeObjectRetain_n();

    v9 = sub_10000C2A0(v5, v4);
    v10 = _swiftEmptyDictionarySingleton[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_19;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_100047038(v12, 1);
      v14 = sub_10000C2A0(v5, v4);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_21;
      }

      v9 = v14;
    }

    if (v13)
    {

      v16 = _swiftEmptyDictionarySingleton[7];
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v9) = v17;
      v31 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100070AF0();
        v17 = v28;
        *(v16 + 8 * v9) = v28;
      }

      v19 = *(v17 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v17 + 24) >> 1)
      {
        sub_100070AF0();
        v20 = v19 + 1;
        v17 = v29;
        *(v31 + 8 * v9) = v29;
      }

      *(v17 + 16) = v20;
      v21 = (v17 + 48 * v19);
      v21[4] = v5;
      v21[5] = v4;
      v22 = v34;
      v21[6] = v35;
      v21[7] = v6;
      v21[8] = v36;
      v21[9] = v7;
      v1 = a1;
    }

    else
    {
      sub_10002EB80(&unk_10019B4E0, &qword_10014F260);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10014CE90;
      *(v23 + 32) = v5;
      *(v23 + 40) = v4;
      *(v23 + 48) = v35;
      *(v23 + 56) = v6;
      *(v23 + 64) = v36;
      *(v23 + 72) = v7;
      _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
      v24 = (_swiftEmptyDictionarySingleton[6] + 16 * v9);
      *v24 = v5;
      v24[1] = v4;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v9) = v23;
      v25 = _swiftEmptyDictionarySingleton[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_20;
      }

      _swiftEmptyDictionarySingleton[2] = v27;
      v22 = v34;
    }

    v2 = v22 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000ABF38(uint64_t a1, uint64_t a2)
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
  v9 = _swiftEmptyDictionarySingleton;
  v50 = a1;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v10 = v8;
      v51 = v9;
      if (!v6)
      {
        goto LABEL_6;
      }

      while (1)
      {
        v8 = v10;
LABEL_9:
        v11 = (*(a2 + 48) + 16 * (__clz(__rbit64(v6)) | (v8 << 6)));
        v12 = *v11;
        v13 = v11[1];
        v14 = *(a1 + 16);

        if (v14 && (v15 = sub_1000106AC(), sub_10000C2A0(v15, v16), (v17 & 1) != 0))
        {

          sub_1000B129C(v18);
        }

        else
        {
          sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
          sub_100084294(&qword_10019ABB0, &qword_100199040, LNSystemProtocol_ptr);

          Dictionary.init(dictionaryLiteral:)();
        }

        v6 &= v6 - 1;
        v19 = objc_allocWithZone(LNBundleActionsMetadata);
        v20 = sub_1000B2E4C();
        if (v20)
        {
          break;
        }

        v21 = sub_1000106AC();
        v9 = v51;
        v23 = sub_10000C2A0(v21, v22);
        if (v24)
        {
          v37 = v23;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v51[3];
          sub_10002EB80(&qword_10019B4D0, &qword_1001507C8);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
          v9 = v51;

          v40 = *(v51[7] + 8 * v37);
          sub_100003D44(0, &unk_10019ABA0, LNBundleActionsMetadata_ptr);
          _NativeDictionary._delete(at:)();

          a1 = v50;
          goto LABEL_4;
        }

        v10 = v8;
        a1 = v50;
        if (!v6)
        {
LABEL_6:
          while (1)
          {
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v8 >= v7)
            {

              return v9;
            }

            v6 = *(v3 + 8 * v8);
            ++v10;
            if (v6)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          goto LABEL_29;
        }
      }

      v25 = v20;
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v54 = v51;
      v26 = sub_1000106AC();
      v48 = sub_10000C2A0(v26, v27);
      v28 = v51[2];
      v52 = v29;
      v30 = (v29 & 1) == 0;
      v31 = v28 + v30;
      if (__OFADD__(v28, v30))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      sub_10002EB80(&qword_10019B4D0, &qword_1001507C8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v31))
      {
        v32 = sub_1000106AC();
        v34 = sub_10000C2A0(v32, v33);
        v36 = v52;
        if ((v52 & 1) != (v35 & 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v34 = v48;
        v36 = v52;
      }

      if (v36)
      {
        v41 = v54[7];
        v42 = *(v41 + 8 * v34);
        *(v41 + 8 * v34) = v25;

        a1 = v50;
        v9 = v54;
        continue;
      }

      break;
    }

    v54[(v34 >> 6) + 8] |= 1 << v34;
    v43 = (v54[6] + 16 * v34);
    *v43 = v12;
    v43[1] = v13;
    *(v54[7] + 8 * v34) = v25;
    v44 = v54[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (!v45)
    {
      v9 = v54;
      v54[2] = v46;

      a1 = v50;
      continue;
    }

    break;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000AC480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v36 = a6;
  v39 = type metadata accessor for LNActionRecord(0);
  __chkstk_darwin(v39);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  result = sub_100028F9C(a2, a3, a4, a5, *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection));
  if (!v6)
  {
    v34._countAndFlagsBits = a4;
    v34._object = a5;
    v35._countAndFlagsBits = a2;
    v35._object = a3;
    sub_100065300();

    sub_100009F38();
    v21 = v39;
    if (sub_1000032C4(v16, 1, v39) == 1)
    {
      sub_1000B6240(v16, &qword_100199EE0);
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      sub_10002EB80(&qword_10019B0D0, &unk_100150350);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014CE90;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v26;
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v37 = 0xD000000000000020;
      v38 = 0x80000001001567A0;
      String.append(_:)(v34);
      v27._countAndFlagsBits = 0x646E7562206E6920;
      v27._object = 0xEC000000203A656CLL;
      String.append(_:)(v27);
      String.append(_:)(v35);
      v28 = v37;
      v29 = v38;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v28;
      *(inited + 56) = v29;
      v30 = Dictionary.init(dictionaryLiteral:)();
      v31 = objc_allocWithZone(NSError);
      sub_1000B2C68(v22, v24, 9004, v30);
      swift_willThrow();
      return sub_1000B6240(v19, &qword_100199EE0);
    }

    else
    {
      sub_1000B6240(v19, &qword_100199EE0);
      sub_1000B5FF4();
      v32 = *&v13[*(v21 + 24)];
      result = sub_10001E9DC(v13, type metadata accessor for LNActionRecord);
      *v36 = v32;
    }
  }

  return result;
}

uint64_t sub_1000AC804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v34 = a6;
  v11 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v20 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);

  v21 = v35;
  sub_100028F9C(a2, a3, a4, a5, v20);
  v35 = v21;
  if (v21)
  {
  }

  v32 = v13;
  v33 = v19;
  sub_100065300();

  v23 = type metadata accessor for LNActionRecord(0);
  if (sub_1000032C4(v16, 1, v23) == 1)
  {
    v26 = v33;
    v27 = v35;
    sub_1000638E0(a2, a3, a4, a5, v20, v33, v24, v25);
    if (v27)
    {

      result = sub_1000032C4(v16, 1, v23);
      if (result != 1)
      {
        return sub_1000B6240(v16, &qword_100199EE0);
      }

      return result;
    }

    if (sub_1000032C4(v16, 1, v23) != 1)
    {
      sub_1000B6240(v16, &qword_100199EE0);
    }
  }

  else
  {

    v26 = v33;
    sub_1000B5FF4();
    sub_1000075C4(v26, 0, 1, v23);
  }

  v28 = v26;
  v29 = v32;
  sub_1000B6294(v28, v32);
  if (sub_1000032C4(v29, 1, v23) == 1)
  {
    result = sub_1000B6240(v29, &qword_100199EE0);
    v30 = 0;
  }

  else
  {
    v30 = *(v29 + *(v23 + 24));
    result = sub_10001E9DC(v29, type metadata accessor for LNActionRecord);
  }

  *v34 = v30;
  return result;
}

uint64_t sub_1000ACAF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = type metadata accessor for LNActionRecord(0);
  v64 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v85 = &v59 - v16;
  v17 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  inited = swift_initStackObject();
  inited[1] = xmmword_10014CE80;
  *(inited + 4) = a2;
  if (!sub_1000232FC(inited))
  {
    swift_setDeallocating();
    v38 = a2;
    sub_1000B3138();
    v26 = &_swiftEmptySetSingleton;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_100064440(v26, v17, v20, v21, v22, v23, v24, v25, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, *(&v69 + 1), v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    if (!v6)
    {
      v26 = v39;
      v60 = 0;
      v61 = a6;
      goto LABEL_11;
    }
  }

  v19 = a2;
  v26 = sub_1000B5720(inited);
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v68 = v6;
  v61 = a6;
  sub_100017580(&v73);
  v27 = v76;
  inited = v77;
  sub_1000034B4(&v73, v76);
  a6 = v17;
  if (qword_100198148 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    *&v69 = a3;
    *(&v69 + 1) = a4;
    v28 = == infix<A>(_:_:)();
    v30 = v29;
    a3 = v31;
    v71 = v27;
    v72 = inited;
    sub_100013234(&v69);
    QueryType.filter(_:)(v28, v30, a3, v27, inited, v32, v33, v34, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, *(&v69 + 1), v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, vars0, vars8);

    sub_1000034F8(&v73);
    sub_10001A798(&v69, &v73);
    v35 = v68;
    v36 = sub_10001DF8C(&v73, a6);
    if (v35)
    {
      break;
    }

    a4 = v36;
    v60 = 0;
    sub_1000034F8(&v73);
    sub_100063EA0(v26, 2, a4);
    v26 = v40;

LABEL_11:

    v41 = 0;
    v63 = v26[2];
    v27 = _swiftEmptyArrayStorage;
    v62 = v26;
    while (1)
    {
LABEL_12:
      if (v41 == v63)
      {

        KeyPath = swift_getKeyPath();
        v56 = swift_getKeyPath();
        v57 = swift_getKeyPath();
        v58 = sub_1000A1138(KeyPath, v56, v57, v27);

        *v61 = v58;
        return result;
      }

      if (v41 >= v26[2])
      {
        break;
      }

      v42 = *(v64 + 72);
      v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v68 = v41 + 1;
      v66 = v42;
      sub_10001E984();
      v43 = 1 << *(a5 + 32);
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v45 = v44 & *(a5 + 64);
      v26 = ((v43 + 63) >> 6);

      a6 = 0;
      while (v45)
      {
        v46 = a6;
LABEL_24:
        v47 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v48 = v47 | (v46 << 6);
        v49 = (*(a5 + 48) + 16 * v48);
        v50 = *v49;
        a3 = v49[1];
        v51 = *(*(a5 + 56) + 8 * v48);

        inited = v51;
        sub_1000AD0C0(v50, a3, inited, v85);
        a4 = v52;

        if ((a4 & 1) == 0)
        {

          sub_10001E9DC(v85, type metadata accessor for LNActionRecord);
          v41 = v68;
          v26 = v62;
          goto LABEL_12;
        }
      }

      while (1)
      {
        v46 = (a6 + 1);
        if (__OFADD__(a6, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v46 >= v26)
        {
          break;
        }

        v45 = *(a5 + 64 + 8 * v46);
        a6 = (a6 + 1);
        if (v45)
        {
          a6 = v46;
          goto LABEL_24;
        }
      }

      sub_1000B5FF4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B35D4(0, v27[2] + 1, 1);
        v27 = v73;
      }

      v26 = v62;
      a6 = v27[2];
      v54 = v27[3];
      a4 = a6 + 1;
      if (a6 >= v54 >> 1)
      {
        sub_1000B35D4(v54 > 1, a6 + 1, 1);
        v27 = v73;
      }

      v27[2] = a4;
      sub_1000B5FF4();
      v41 = v68;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  return sub_1000034F8(&v73);
}

void sub_1000AD0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a4 + *(type metadata accessor for LNActionRecord(0) + 24)) parameters];
  sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1000232FC(v7);
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
LABEL_18:

      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = sub_1000237B0(v10);
    if (!v13)
    {
      goto LABEL_13;
    }

    if (v12 == a1 && v13 == a2)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
LABEL_13:

        continue;
      }
    }

    sub_100003D44(0, &qword_100199300, NSObject_ptr);
    v16 = [v11 valueType];
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1000AD400(char *a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_10019BB70, &qword_10014F850);
  __chkstk_darwin(v4 - 8);
  v6 = &v110 - v5;
  v7 = type metadata accessor for LNActionRecord(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1001982F8 != -1)
  {
LABEL_52:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000347C(v11, qword_10019E020);

  v123 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = sub_1000232F4(a2);

    *(v15 + 12) = 2048;
    *(v15 + 14) = *(a1 + 2);

    _os_log_impl(&_mh_execute_header, v13, v14, "Received request for %ld actions but found %ld, running diagnostic", v15, 0x16u);
  }

  else
  {
  }

  v117 = v6;
  v16 = *(a1 + 2);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v124 = a2;
    v129[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v18 = &a1[(*(v8 + 80) + 32) & ~*(v8 + 80)];
    v19 = *(v8 + 72);
    do
    {
      sub_10001E984();
      v20 = [*(&v10->flags + *(v7 + 24)) identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = objc_allocWithZone(LNFullyQualifiedActionIdentifier);

      sub_10006500C();
      sub_10001E9DC(v10, type metadata accessor for LNActionRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v19;
      --v16;
    }

    while (v16);
    v17 = v129[0];
  }

  sub_1000C2D60(v22);
  v24 = v23;
  sub_1000C2D60(v17);
  a2 = sub_1000C5408(v25, v24);

  v6 = 0;
  sub_1000A08E4(a2);
  a1 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v129[0] = v30;
    *v29 = 136446210;
    v126[0] = a1;
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    v31 = a2;
    sub_10009153C();
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    v35 = sub_100004C50(v32, v34, v129);
    a2 = v31;

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Missing: %{public}s", v29, 0xCu);
    sub_1000034F8(v30);
  }

  else
  {
  }

  v127 = &_swiftEmptySetSingleton;
  if ((a2 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    sub_100084294(&unk_10019BC40, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    Set.Iterator.init(_cocoa:)();
    a2 = v129[0];
    v37 = v129[1];
    v38 = v129[2];
    v39 = v129[3];
    v8 = v129[4];
  }

  else
  {
    v39 = 0;
    v40 = -1 << *(a2 + 32);
    v37 = a2 + 56;
    v38 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v8 = v42 & *(a2 + 56);
  }

  v113 = v38;
  v43 = (v38 + 64) >> 6;
  v10 = &TableBuilder;
  *&v36 = 136446210;
  v115 = v36;
  *&v36 = 136446466;
  v114 = v36;
  v7 = v117;
  v118 = v43;
  v119 = v37;
  v120 = a2;
  while ((a2 & 0x8000000000000000) == 0)
  {
    v44 = v39;
    v45 = v8;
    if (!v8)
    {
      while (1)
      {
        v39 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v39 >= v43)
        {
          goto LABEL_50;
        }

        v45 = *(v37 + 8 * v39);
        ++v44;
        if (v45)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_24:
    v124 = (v45 - 1) & v45;
    v46 = *(*(a2 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v45)))));
    if (!v46)
    {
      goto LABEL_50;
    }

LABEL_28:
    v48 = [v46 v10[30].base_props];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100109F48();
    if (v6)
    {

      v49 = type metadata accessor for LNBundleRecord(0);
      sub_1000075C4(v7, 1, 1, v49);
      v6 = 0;
    }

    else
    {
    }

    v50 = [v46 v10[30].base_props];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    sub_100027678(v126, v51, v53, v54, v55, v56, v57, v58, v110, v111, v112, v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0], v126[1], v127, v128);

    v59 = type metadata accessor for LNBundleRecord(0);
    LODWORD(v50) = sub_1000032C4(v7, 1, v59);
    v60 = v46;
    v61 = Logger.logObject.getter();
    a1 = static os_log_type_t.default.getter();

    v62 = os_log_type_enabled(v61, a1);
    if (v50 == 1)
    {
      v122 = v60;
      if (v62)
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v126[0] = v64;
        *v63 = v115;
        v10 = &TableBuilder;
        v65 = [v60 bundleIdentifier];
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        v69 = sub_100004C50(v66, v68, v126);

        *(v63 + 4) = v69;
        v60 = v122;
        _os_log_impl(&_mh_execute_header, v61, a1, "Bundle %{public}s is missing from linkd", v63, 0xCu);
        sub_1000034F8(v64);
      }

      else
      {

        v10 = &TableBuilder;
      }

      sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
      v83 = [v60 bundleIdentifier];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      v87 = sub_1000FEC40(v84, v86, 1);
      v97 = v87;
      if (v87)
      {
        v98 = v122;
        v99 = v97;
        v88 = Logger.logObject.getter();
        v100 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v88, v100))
        {
          v101 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v126[0] = v112;
          *v101 = v114;
          v102 = [v98 bundleIdentifier];
          v122 = v98;
          v103 = v102;
          v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v105;

          v106 = sub_100004C50(v104, a1, v126);

          *(v101 + 4) = v106;
          *(v101 + 12) = 2114;
          *(v101 + 14) = v99;
          v107 = v111;
          *v111 = v97;
          v108 = v99;
          _os_log_impl(&_mh_execute_header, v88, v100, "Bundle %{public}s has LS record %{public}@", v101, 0x16u);
          sub_1000B6240(v107, &unk_10019A260);

          sub_1000034F8(v112);

          v10 = &TableBuilder;

          goto LABEL_47;
        }
      }

      else
      {
        a1 = v122;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v126[0] = v91;
          *v90 = v115;
          v92 = [a1 bundleIdentifier];
          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = v94;

          v96 = sub_100004C50(v93, v95, v126);
          v10 = &TableBuilder;

          *(v90 + 4) = v96;
          _os_log_impl(&_mh_execute_header, v88, v89, "Bundle %{public}s has no LS Record", v90, 0xCu);
          sub_1000034F8(v91);

LABEL_47:
          v7 = v117;
          goto LABEL_48;
        }
      }

      goto LABEL_47;
    }

    if (!v62)
    {

      v37 = v119;
      a2 = v120;
      v43 = v118;
      v10 = &TableBuilder;
      goto LABEL_49;
    }

    v70 = swift_slowAlloc();
    v126[0] = swift_slowAlloc();
    *v70 = v114;
    v10 = &TableBuilder;
    v71 = [v60 bundleIdentifier];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = 0;
    v73 = v60;
    v74 = v72;
    v76 = v75;

    v77 = sub_100004C50(v74, v76, v126);

    *(v70 + 4) = v77;
    *(v70 + 12) = 2082;
    v78 = [v73 actionIdentifier];
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = sub_100004C50(v79, v81, v126);
    v7 = v117;

    *(v70 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v61, a1, "Bundle %{public}s exists, action %{public}s is missing", v70, 0x16u);
    swift_arrayDestroy();

    v6 = v122;
LABEL_48:
    v37 = v119;
    a2 = v120;
    v43 = v118;
LABEL_49:
    v8 = v124;
    sub_1000B6240(v7, &qword_10019BB70);
  }

  v47 = __CocoaSet.Iterator.next()();
  if (v47)
  {
    v125 = v47;
    sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    swift_dynamicCast();
    v46 = v126[0];
    v124 = v8;
    if (v126[0])
    {
      goto LABEL_28;
    }
  }

LABEL_50:

  return sub_100014464(a2);
}