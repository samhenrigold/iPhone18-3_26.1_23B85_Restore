void sub_10117C3F4(void *a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t, int64_t), void (*a5)(int64_t))
{
  v8 = v5;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v12 = a1[15];
    v13 = a1[16];
    if (sub_10111EACC(v12, v13, qword_10177C6E8))
    {
      break;
    }

    v224 = a5;
    v226 = v8;
    v223 = a3;
    v19 = a4(a2, a3);
    a4 = (v19 + 64);
    v20 = *(v19 + 64);
    v230 = v19;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    swift_beginAccess();
    a3 = 0;
    a5 = ((v21 + 63) >> 6);
    *&v24 = 138412290;
    v225 = v24;
    v229 = a1;
    v227 = a5;
    v228 = a4;
    while (v23)
    {
LABEL_19:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = (a3 << 10) | (16 * v27);
      v29 = *(v230 + 56);
      v30 = (*(v230 + 48) + v28);
      v31 = v30[1];
      v231 = *v30;
      v32 = v29 + v28;
      v8 = *v32;
      v33 = *(v32 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v232 = v31;

      sub_10090C56C(*&v8, v33);
      if (v35)
      {

        v36 = sub_100771D58(v231, v232);
        if (v37)
        {
          sub_1010100EC(*(v34 + 56) + 48 * v36, &v239);

          if (v33 <= 1)
          {
            if (v33)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v38 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v8) & 1).super.super.isa;
            }

            else
            {
              v38 = *&v8;
            }

            v95 = v38;
            goto LABEL_107;
          }

          if (v33 != 2)
          {
            sub_1010100EC(&v239, &v234);
            if (v235[24] != 3)
            {
LABEL_147:

              sub_10118B5A0(&v234);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v239);
              return;
            }

            sub_10000A748(&v234._countAndFlagsBits, v236);
            v96 = sub_1000035D0(v236, v237);
            __chkstk_darwin(v96);
            a2 = v216 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v98 + 16))(a2);
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v229;
            v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v234._countAndFlagsBits + v8];
            sub_100007BAC(v236);
            goto LABEL_107;
          }

          sub_1010100EC(&v239, &v234);
          if (v235[24] != 2)
          {
            goto LABEL_147;
          }

          v221 = v8;
          sub_10000A748(&v234._countAndFlagsBits, v236);
          a2 = v237;
          v78 = v238;
          v79 = sub_1000035D0(v236, v237);
          v222 = v216;
          v80 = *(a2 - 8);
          __chkstk_darwin(v79);
          v220 = v81;
          v82 = v216 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v80[2])(v82);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_94;
          }

          v234._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v83 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v83 >= 64)
            {
              v218 = v78;
              v219 = v216;
              __chkstk_darwin(v83);
              v85 = v216 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v86 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v80[1])(v85, a2);
              if (v86)
              {
                goto LABEL_165;
              }

              goto LABEL_94;
            }

LABEL_93:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_94;
          }

          LODWORD(v219) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v123 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v219 & 1) == 0)
          {
            if (v123 >= 64)
            {
              goto LABEL_94;
            }

            goto LABEL_93;
          }

          v218 = v78;
          if (v123 <= 64)
          {
            v219 = *(*(v78 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v217 = v216;
            __chkstk_darwin(AssociatedTypeWitness);
            v216[0] = v216 - v128;
            swift_getAssociatedConformanceWitness();
            v129 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v216[1] = v216;
            __chkstk_darwin(v129);
            v131 = v216 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v132 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v80[1])(v131, a2);
            if (v132)
            {
              goto LABEL_165;
            }

            goto LABEL_93;
          }

          v219 = v216;
          __chkstk_darwin(v123);
          v125 = v216 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v126 = dispatch thunk of static Comparable.< infix(_:_:)();
          (v80[1])(v125, a2);
          if (v126)
          {
            goto LABEL_165;
          }

LABEL_94:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_105:
            v139 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v80[1])(v82, a2);
            v8 = v221;
            v50 = __OFADD__(v139, *&v221);
            v140 = v139 + *&v221;
            if (v50)
            {
              goto LABEL_156;
            }

            v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v140];
            sub_100007BAC(v236);
            a1 = v229;
LABEL_107:
            objc_opt_self();
            v141 = swift_dynamicCastObjCClass();
            if (v141)
            {
              v142 = v141;
              v143 = v33;
              v144 = v95;
              v145 = String.init(_:)(v142);
              v146 = a1;
              v147 = sub_1000DF96C();
              swift_beginAccess();
              v234 = v145;
              *&v235[8] = &type metadata for String;
              *&v235[16] = v147;
              v235[24] = 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v233 = v146[14];
              v149 = v233;
              v146[14] = 0x8000000000000000;
              v150 = sub_100771D58(v231, v232);
              v152 = v149[2];
              v153 = (v151 & 1) == 0;
              v50 = __OFADD__(v152, v153);
              v154 = v152 + v153;
              if (v50)
              {
                goto LABEL_153;
              }

              a2 = v151;
              if (v149[3] >= v154)
              {
                v156 = v143;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v211 = v150;
                  sub_1010050E8();
                  v150 = v211;
                }
              }

              else
              {
                sub_100FE65C4(v154, isUniquelyReferenced_nonNull_native);
                v150 = sub_100771D58(v231, v232);
                if ((a2 & 1) != (v155 & 1))
                {
                  goto LABEL_166;
                }

                v156 = v143;
              }

              a1 = v229;
              a5 = v227;
              if (a2)
              {
                a2 = v150;

                v174 = v233;
                sub_10118B568(&v234, v233[7] + 48 * a2);
              }

              else
              {
                v174 = v233;
                v233[(v150 >> 6) + 8] |= 1 << v150;
                v175 = (v174[6] + 16 * v150);
                v176 = v232;
                *v175 = v231;
                v175[1] = v176;
                v177 = (v174[7] + 48 * v150);
                v178 = *&v235[9];
                v179 = *v235;
                *v177 = v234;
                v177[1] = v179;
                *(&v177[1]._object + 1) = v178;
                v180 = v174[2];
                v50 = __OFADD__(v180, 1);
                v181 = v180 + 1;
                if (v50)
                {
                  goto LABEL_155;
                }

                v174[2] = v181;
              }

              a1[14] = v174;
              swift_endAccess();
              sub_101010148(*&v8, v156);

LABEL_125:
              goto LABEL_12;
            }

            objc_opt_self();
            v157 = swift_dynamicCastObjCClass();
            if (!v157)
            {
              LODWORD(v231) = v33;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v182 = type metadata accessor for Logger();
              sub_1000076D4(v182, qword_10177C6D0);
              v183 = v95;
              v144 = Logger.logObject.getter();
              v184 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v144, v184))
              {

                sub_101010148(*&v8, v231);
                goto LABEL_125;
              }

              a2 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              *a2 = v225;
              *(a2 + 4) = v183;
              *v185 = v183;
              v186 = v183;
              _os_log_impl(&_mh_execute_header, v144, v184, "Unsupported value type: %@!", a2, 0xCu);
              sub_10000B3A8(v185, &qword_10169BB30, &unk_10138B3C0);
              a1 = v229;

              sub_101010148(*&v8, v231);
LABEL_12:
              sub_10118B5A0(&v239);
              goto LABEL_13;
            }

            v158 = v157;
            [v157 doubleValue];
            v160 = v159;
            v161 = [v158 integerValue];
            if (v160 == v161)
            {
              v162 = v161;
              v163 = sub_1000DFAD8();
              swift_beginAccess();
              v234._countAndFlagsBits = v162;
              *&v235[8] = &type metadata for Int;
              *&v235[16] = v163;
              v235[24] = 2;
              v164 = swift_isUniquelyReferenced_nonNull_native();
              v165 = a1;
              v166 = v164;
              v233 = v165[14];
              v167 = v233;
              v165[14] = 0x8000000000000000;
              v168 = sub_100771D58(v231, v232);
              v170 = v167[2];
              v171 = (v169 & 1) == 0;
              v50 = __OFADD__(v170, v171);
              v172 = v170 + v171;
              if (v50)
              {
                goto LABEL_159;
              }

              a2 = v169;
              if (v167[3] >= v172)
              {
                if ((v166 & 1) == 0)
                {
                  v214 = v168;
                  sub_1010050E8();
                  v168 = v214;
                }
              }

              else
              {
                sub_100FE65C4(v172, v166);
                v168 = sub_100771D58(v231, v232);
                if ((a2 & 1) != (v173 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v229;
              if ((a2 & 1) == 0)
              {
                v25 = v233;
                v233[(v168 >> 6) + 8] |= 1 << v168;
                v197 = (v25[6] + 16 * v168);
                v198 = v232;
                *v197 = v231;
                v197[1] = v198;
                v199 = (v25[7] + 48 * v168);
                v200 = *&v235[9];
                v201 = *v235;
                *v199 = v234;
                v199[1] = v201;
                *(&v199[1]._object + 1) = v200;
                v202 = v25[2];
                v50 = __OFADD__(v202, 1);
                v203 = v202 + 1;
                if (v50)
                {
                  goto LABEL_163;
                }

                goto LABEL_145;
              }

LABEL_10:
              a2 = v168;

              v25 = v233;
              sub_10118B568(&v234, v233[7] + 48 * a2);
            }

            else
            {
              v187 = sub_1000DFA84();
              swift_beginAccess();
              *&v234._countAndFlagsBits = v160;
              *&v235[8] = &type metadata for Double;
              *&v235[16] = v187;
              v235[24] = 3;
              v188 = swift_isUniquelyReferenced_nonNull_native();
              v189 = a1;
              v190 = v188;
              v233 = v189[14];
              v191 = v233;
              v189[14] = 0x8000000000000000;
              v168 = sub_100771D58(v231, v232);
              v193 = v191[2];
              v194 = (v192 & 1) == 0;
              v50 = __OFADD__(v193, v194);
              v195 = v193 + v194;
              if (v50)
              {
                goto LABEL_161;
              }

              a2 = v192;
              if (v191[3] >= v195)
              {
                if ((v190 & 1) == 0)
                {
                  v215 = v168;
                  sub_1010050E8();
                  v168 = v215;
                }
              }

              else
              {
                sub_100FE65C4(v195, v190);
                v168 = sub_100771D58(v231, v232);
                if ((a2 & 1) != (v196 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v229;
              if (a2)
              {
                goto LABEL_10;
              }

              v25 = v233;
              v233[(v168 >> 6) + 8] |= 1 << v168;
              v204 = (v25[6] + 16 * v168);
              v205 = v232;
              *v204 = v231;
              v204[1] = v205;
              v206 = (v25[7] + 48 * v168);
              v207 = *&v235[9];
              v208 = *v235;
              *v206 = v234;
              v206[1] = v208;
              *(&v206[1]._object + 1) = v207;
              v209 = v25[2];
              v50 = __OFADD__(v209, 1);
              v203 = v209 + 1;
              if (v50)
              {
                goto LABEL_164;
              }

LABEL_145:
              v25[2] = v203;
            }

            a1[14] = v25;
            swift_endAccess();

            sub_101010148(*&v8, v33);
            goto LABEL_12;
          }

          v219 = v80;
          v234._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v133 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v133)
          {
            if (v134 > 64)
            {
              v217 = v216;
              __chkstk_darwin(v134);
              v220 = v216 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v136 = dispatch thunk of static Comparable.< infix(_:_:)();
              v80 = v219;
              (v219[1])(v220, a2);
              goto LABEL_104;
            }
          }

          else if (v134 >= 64)
          {
            v217 = v216;
            __chkstk_darwin(v134);
            v138 = v216 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v136 = dispatch thunk of static Comparable.< infix(_:_:)();
            v80 = v219;
            (v219[1])(v138, a2);
LABEL_104:
            if (v136)
            {
              goto LABEL_162;
            }

            goto LABEL_105;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v80 = v219;
          goto LABEL_105;
        }
      }

      if (v33 > 1)
      {
        if (v33 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v8];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v8];
        }
      }

      else if (v33)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v8) & 1).super.super.isa;
      }

      else
      {
        isa = *&v8;
      }

      v12 = isa;
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v42 = v33;
        v12 = v12;
        v43 = String.init(_:)(v41);
        v44 = sub_1000DF96C();
        swift_beginAccess();
        v239 = v43;
        *&v240[8] = &type metadata for String;
        *&v240[16] = v44;
        v240[24] = 1;
        v13 = swift_isUniquelyReferenced_nonNull_native();
        v236[0] = a1[14];
        v45 = v236[0];
        a1[14] = 0x8000000000000000;
        v46 = sub_100771D58(v231, v232);
        v48 = *(v45 + 16);
        v49 = (v47 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          __break(1u);
          goto LABEL_151;
        }

        a2 = v47;
        if (*(v45 + 24) >= v51)
        {
          if ((v13 & 1) == 0)
          {
            v210 = v46;
            sub_1010050E8();
            v46 = v210;
          }
        }

        else
        {
          sub_100FE65C4(v51, v13);
          v46 = sub_100771D58(v231, v232);
          if ((a2 & 1) != (v52 & 1))
          {
            goto LABEL_166;
          }
        }

        a1 = v229;
        LOBYTE(v33) = v42;
        a5 = v227;
        if (a2)
        {
          a2 = v46;

          v70 = v236[0];
          sub_10118B568(&v239, *(v236[0] + 56) + 48 * a2);
        }

        else
        {
          v70 = v236[0];
          *(v236[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v71 = (v70[6] + 16 * v46);
          v72 = v232;
          *v71 = v231;
          v71[1] = v72;
          v73 = (v70[7] + 48 * v46);
          v74 = *&v240[9];
          v75 = *v240;
          *v73 = v239;
          v73[1] = v75;
          *(&v73[1]._object + 1) = v74;
          v76 = v70[2];
          v50 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v50)
          {
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
            v224(v223);
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v70[2] = v77;
        }

        a1[14] = v70;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v54 = v53;
        [v53 doubleValue];
        v56 = v55;
        v57 = [v54 integerValue];
        a5 = v227;
        if (v56 == v57)
        {
          v58 = v57;
          v59 = sub_1000DFAD8();
          swift_beginAccess();
          v239._countAndFlagsBits = v58;
          *&v240[8] = &type metadata for Int;
          *&v240[16] = v59;
          v240[24] = 2;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v61 = a1;
          v62 = v60;
          v236[0] = v61[14];
          v63 = v236[0];
          v61[14] = 0x8000000000000000;
          v64 = sub_100771D58(v231, v232);
          v66 = *(v63 + 16);
          v67 = (v65 & 1) == 0;
          v50 = __OFADD__(v66, v67);
          v68 = v66 + v67;
          if (v50)
          {
            goto LABEL_154;
          }

          a2 = v65;
          if (*(v63 + 24) >= v68)
          {
            if ((v62 & 1) == 0)
            {
              v212 = v64;
              sub_1010050E8();
              v64 = v212;
            }
          }

          else
          {
            sub_100FE65C4(v68, v62);
            v64 = sub_100771D58(v231, v232);
            if ((a2 & 1) != (v69 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v229;
          if ((a2 & 1) == 0)
          {
            v109 = v236[0];
            *(v236[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
            v110 = (v109[6] + 16 * v64);
            v111 = v232;
            *v110 = v231;
            v110[1] = v111;
            v112 = (v109[7] + 48 * v64);
            v113 = *&v240[9];
            v114 = *v240;
            *v112 = v239;
            v112[1] = v114;
            *(&v112[1]._object + 1) = v113;
            v115 = v109[2];
            v50 = __OFADD__(v115, 1);
            v116 = v115 + 1;
            if (v50)
            {
              goto LABEL_158;
            }

            goto LABEL_82;
          }

LABEL_80:
          a2 = v64;

          v109 = v236[0];
          sub_10118B568(&v239, *(v236[0] + 56) + 48 * a2);
        }

        else
        {
          v99 = sub_1000DFA84();
          swift_beginAccess();
          *&v239._countAndFlagsBits = v56;
          *&v240[8] = &type metadata for Double;
          *&v240[16] = v99;
          v240[24] = 3;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v101 = a1;
          v102 = v100;
          v236[0] = v101[14];
          v103 = v236[0];
          v101[14] = 0x8000000000000000;
          v64 = sub_100771D58(v231, v232);
          v105 = *(v103 + 16);
          v106 = (v104 & 1) == 0;
          v50 = __OFADD__(v105, v106);
          v107 = v105 + v106;
          if (v50)
          {
            goto LABEL_157;
          }

          a2 = v104;
          if (*(v103 + 24) >= v107)
          {
            if ((v102 & 1) == 0)
            {
              v213 = v64;
              sub_1010050E8();
              v64 = v213;
            }
          }

          else
          {
            sub_100FE65C4(v107, v102);
            v64 = sub_100771D58(v231, v232);
            if ((a2 & 1) != (v108 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v229;
          if (a2)
          {
            goto LABEL_80;
          }

          v109 = v236[0];
          *(v236[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
          v117 = (v109[6] + 16 * v64);
          v118 = v232;
          *v117 = v231;
          v117[1] = v118;
          v119 = (v109[7] + 48 * v64);
          v120 = *&v240[9];
          v121 = *v240;
          *v119 = v239;
          v119[1] = v121;
          *(&v119[1]._object + 1) = v120;
          v122 = v109[2];
          v50 = __OFADD__(v122, 1);
          v116 = v122 + 1;
          if (v50)
          {
            goto LABEL_160;
          }

LABEL_82:
          v109[2] = v116;
        }

        a1[14] = v109;
        swift_endAccess();
LABEL_84:

        v93 = v8;
        v94 = v33;
        goto LABEL_85;
      }

      LODWORD(v231) = v33;

      a5 = v227;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_1000076D4(v87, qword_10177C6D0);
      v88 = v12;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v89, v90))
      {

        sub_101010148(*&v8, v231);
        goto LABEL_13;
      }

      a2 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *a2 = v225;
      *(a2 + 4) = v88;
      *v91 = v88;
      v92 = v88;
      _os_log_impl(&_mh_execute_header, v89, v90, "Unsupported value type: %@!", a2, 0xCu);
      sub_10000B3A8(v91, &qword_10169BB30, &unk_10138B3C0);
      a1 = v229;

      v93 = v8;
      v94 = v231;
LABEL_85:
      sub_101010148(*&v93, v94);
LABEL_13:
      a4 = v228;
    }

    while (1)
    {
      v26 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v26 >= a5)
      {

        return;
      }

      v23 = *(a4 + v26);
      ++a3;
      if (v23)
      {
        a3 = v26;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_149:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C6D0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v239._countAndFlagsBits = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000136BC(v12, v13, &v239._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v15, v16, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v17, 0xCu);
    sub_100007BAC(v18);
  }
}

void sub_10117DEF0(void *a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t, int64_t))
{
  v6 = v4;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v10 = a1[15];
    v11 = a1[16];
    if (sub_10111EACC(v10, v11, qword_10177C6E8))
    {
      break;
    }

    v225 = v6;
    v222 = a2;
    v223 = a3;
    v17 = a4(a2, a3);
    a4 = (v17 + 64);
    v18 = *(v17 + 64);
    v229 = v17;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    swift_beginAccess();
    v22 = 0;
    a3 = (v19 + 63) >> 6;
    *&v23 = 138412290;
    v224 = v23;
    v228 = a1;
    v226 = a3;
    v227 = a4;
    while (v21)
    {
LABEL_19:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = (v22 << 10) | (16 * v26);
      v28 = *(v229 + 56);
      v29 = (*(v229 + 48) + v27);
      v30 = v29[1];
      v230 = *v29;
      v31 = v28 + v27;
      v6 = *v31;
      v32 = *(v31 + 8);
      v33 = a1[14];
      v34 = *(v33 + 16);
      v231 = v30;

      sub_10090C56C(*&v6, v32);
      if (v34)
      {

        v35 = sub_100771D58(v230, v231);
        if (v36)
        {
          sub_1010100EC(*(v33 + 56) + 48 * v35, &v238);

          if (v32 <= 1)
          {
            if (v32)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v37 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
            }

            else
            {
              v37 = *&v6;
            }

            v94 = v37;
            goto LABEL_107;
          }

          if (v32 != 2)
          {
            sub_1010100EC(&v238, &v233);
            if (v234[24] != 3)
            {
LABEL_147:

              sub_10118B5A0(&v233);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v238);
              return;
            }

            sub_10000A748(&v233._countAndFlagsBits, v235);
            v95 = sub_1000035D0(v235, v236);
            __chkstk_darwin(v95);
            a2 = v215 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v97 + 16))(a2);
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v228;
            v94 = [objc_allocWithZone(NSNumber) initWithDouble:*&v233._countAndFlagsBits + v6];
            sub_100007BAC(v235);
            goto LABEL_107;
          }

          sub_1010100EC(&v238, &v233);
          if (v234[24] != 2)
          {
            goto LABEL_147;
          }

          v220 = v6;
          sub_10000A748(&v233._countAndFlagsBits, v235);
          a2 = v236;
          v77 = v237;
          v78 = sub_1000035D0(v235, v236);
          v221 = v215;
          v79 = *(a2 - 8);
          __chkstk_darwin(v78);
          v219 = v80;
          v81 = v215 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v79[2])(v81);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_94;
          }

          v233._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v82 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v82 >= 64)
            {
              v217 = v77;
              v218 = v215;
              __chkstk_darwin(v82);
              v84 = v215 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v85 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v79[1])(v84, a2);
              if (v85)
              {
                goto LABEL_165;
              }

              goto LABEL_94;
            }

LABEL_93:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_94;
          }

          LODWORD(v218) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v122 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v218 & 1) == 0)
          {
            if (v122 >= 64)
            {
              goto LABEL_94;
            }

            goto LABEL_93;
          }

          v217 = v77;
          if (v122 <= 64)
          {
            v218 = *(*(v77 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v216 = v215;
            __chkstk_darwin(AssociatedTypeWitness);
            v215[0] = v215 - v127;
            swift_getAssociatedConformanceWitness();
            v128 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v215[1] = v215;
            __chkstk_darwin(v128);
            v130 = v215 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v131 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v79[1])(v130, a2);
            if (v131)
            {
              goto LABEL_165;
            }

            goto LABEL_93;
          }

          v218 = v215;
          __chkstk_darwin(v122);
          v124 = v215 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v125 = dispatch thunk of static Comparable.< infix(_:_:)();
          (v79[1])(v124, a2);
          if (v125)
          {
            goto LABEL_165;
          }

LABEL_94:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_105:
            v138 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v79[1])(v81, a2);
            v6 = v220;
            v49 = __OFADD__(v138, *&v220);
            v139 = v138 + *&v220;
            if (v49)
            {
              goto LABEL_156;
            }

            v94 = [objc_allocWithZone(NSNumber) initWithLongLong:v139];
            sub_100007BAC(v235);
            a1 = v228;
LABEL_107:
            objc_opt_self();
            v140 = swift_dynamicCastObjCClass();
            if (v140)
            {
              v141 = v140;
              v142 = v32;
              v143 = v94;
              v144 = String.init(_:)(v141);
              v145 = a1;
              v146 = sub_1000DF96C();
              swift_beginAccess();
              v233 = v144;
              *&v234[8] = &type metadata for String;
              *&v234[16] = v146;
              v234[24] = 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v232 = v145[14];
              v148 = v232;
              v145[14] = 0x8000000000000000;
              v149 = sub_100771D58(v230, v231);
              v151 = v148[2];
              v152 = (v150 & 1) == 0;
              v49 = __OFADD__(v151, v152);
              v153 = v151 + v152;
              if (v49)
              {
                goto LABEL_153;
              }

              a2 = v150;
              if (v148[3] >= v153)
              {
                v155 = v142;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v210 = v149;
                  sub_1010050E8();
                  v149 = v210;
                }
              }

              else
              {
                sub_100FE65C4(v153, isUniquelyReferenced_nonNull_native);
                v149 = sub_100771D58(v230, v231);
                if ((a2 & 1) != (v154 & 1))
                {
                  goto LABEL_166;
                }

                v155 = v142;
              }

              a1 = v228;
              a3 = v226;
              if (a2)
              {
                a2 = v149;

                v173 = v232;
                sub_10118B568(&v233, v232[7] + 48 * a2);
              }

              else
              {
                v173 = v232;
                v232[(v149 >> 6) + 8] |= 1 << v149;
                v174 = (v173[6] + 16 * v149);
                v175 = v231;
                *v174 = v230;
                v174[1] = v175;
                v176 = (v173[7] + 48 * v149);
                v177 = *&v234[9];
                v178 = *v234;
                *v176 = v233;
                v176[1] = v178;
                *(&v176[1]._object + 1) = v177;
                v179 = v173[2];
                v49 = __OFADD__(v179, 1);
                v180 = v179 + 1;
                if (v49)
                {
                  goto LABEL_155;
                }

                v173[2] = v180;
              }

              a1[14] = v173;
              swift_endAccess();
              sub_101010148(*&v6, v155);

LABEL_125:
              goto LABEL_12;
            }

            objc_opt_self();
            v156 = swift_dynamicCastObjCClass();
            if (!v156)
            {
              LODWORD(v230) = v32;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v181 = type metadata accessor for Logger();
              sub_1000076D4(v181, qword_10177C6D0);
              v182 = v94;
              v143 = Logger.logObject.getter();
              v183 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v143, v183))
              {

                sub_101010148(*&v6, v230);
                goto LABEL_125;
              }

              a2 = swift_slowAlloc();
              v184 = swift_slowAlloc();
              *a2 = v224;
              *(a2 + 4) = v182;
              *v184 = v182;
              v185 = v182;
              _os_log_impl(&_mh_execute_header, v143, v183, "Unsupported value type: %@!", a2, 0xCu);
              sub_10000B3A8(v184, &qword_10169BB30, &unk_10138B3C0);
              a1 = v228;

              sub_101010148(*&v6, v230);
LABEL_12:
              sub_10118B5A0(&v238);
              goto LABEL_13;
            }

            v157 = v156;
            [v156 doubleValue];
            v159 = v158;
            v160 = [v157 integerValue];
            if (v159 == v160)
            {
              v161 = v160;
              v162 = sub_1000DFAD8();
              swift_beginAccess();
              v233._countAndFlagsBits = v161;
              *&v234[8] = &type metadata for Int;
              *&v234[16] = v162;
              v234[24] = 2;
              v163 = swift_isUniquelyReferenced_nonNull_native();
              v164 = a1;
              v165 = v163;
              v232 = v164[14];
              v166 = v232;
              v164[14] = 0x8000000000000000;
              v167 = sub_100771D58(v230, v231);
              v169 = v166[2];
              v170 = (v168 & 1) == 0;
              v49 = __OFADD__(v169, v170);
              v171 = v169 + v170;
              if (v49)
              {
                goto LABEL_159;
              }

              a2 = v168;
              if (v166[3] >= v171)
              {
                if ((v165 & 1) == 0)
                {
                  v213 = v167;
                  sub_1010050E8();
                  v167 = v213;
                }
              }

              else
              {
                sub_100FE65C4(v171, v165);
                v167 = sub_100771D58(v230, v231);
                if ((a2 & 1) != (v172 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v228;
              if ((a2 & 1) == 0)
              {
                v24 = v232;
                v232[(v167 >> 6) + 8] |= 1 << v167;
                v196 = (v24[6] + 16 * v167);
                v197 = v231;
                *v196 = v230;
                v196[1] = v197;
                v198 = (v24[7] + 48 * v167);
                v199 = *&v234[9];
                v200 = *v234;
                *v198 = v233;
                v198[1] = v200;
                *(&v198[1]._object + 1) = v199;
                v201 = v24[2];
                v49 = __OFADD__(v201, 1);
                v202 = v201 + 1;
                if (v49)
                {
                  goto LABEL_163;
                }

                goto LABEL_145;
              }

LABEL_10:
              a2 = v167;

              v24 = v232;
              sub_10118B568(&v233, v232[7] + 48 * a2);
            }

            else
            {
              v186 = sub_1000DFA84();
              swift_beginAccess();
              *&v233._countAndFlagsBits = v159;
              *&v234[8] = &type metadata for Double;
              *&v234[16] = v186;
              v234[24] = 3;
              v187 = swift_isUniquelyReferenced_nonNull_native();
              v188 = a1;
              v189 = v187;
              v232 = v188[14];
              v190 = v232;
              v188[14] = 0x8000000000000000;
              v167 = sub_100771D58(v230, v231);
              v192 = v190[2];
              v193 = (v191 & 1) == 0;
              v49 = __OFADD__(v192, v193);
              v194 = v192 + v193;
              if (v49)
              {
                goto LABEL_161;
              }

              a2 = v191;
              if (v190[3] >= v194)
              {
                if ((v189 & 1) == 0)
                {
                  v214 = v167;
                  sub_1010050E8();
                  v167 = v214;
                }
              }

              else
              {
                sub_100FE65C4(v194, v189);
                v167 = sub_100771D58(v230, v231);
                if ((a2 & 1) != (v195 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v228;
              if (a2)
              {
                goto LABEL_10;
              }

              v24 = v232;
              v232[(v167 >> 6) + 8] |= 1 << v167;
              v203 = (v24[6] + 16 * v167);
              v204 = v231;
              *v203 = v230;
              v203[1] = v204;
              v205 = (v24[7] + 48 * v167);
              v206 = *&v234[9];
              v207 = *v234;
              *v205 = v233;
              v205[1] = v207;
              *(&v205[1]._object + 1) = v206;
              v208 = v24[2];
              v49 = __OFADD__(v208, 1);
              v202 = v208 + 1;
              if (v49)
              {
                goto LABEL_164;
              }

LABEL_145:
              v24[2] = v202;
            }

            a1[14] = v24;
            swift_endAccess();

            sub_101010148(*&v6, v32);
            goto LABEL_12;
          }

          v218 = v79;
          v233._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v132 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v133 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v132)
          {
            if (v133 > 64)
            {
              v216 = v215;
              __chkstk_darwin(v133);
              v219 = v215 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v135 = dispatch thunk of static Comparable.< infix(_:_:)();
              v79 = v218;
              (v218[1])(v219, a2);
              goto LABEL_104;
            }
          }

          else if (v133 >= 64)
          {
            v216 = v215;
            __chkstk_darwin(v133);
            v137 = v215 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v135 = dispatch thunk of static Comparable.< infix(_:_:)();
            v79 = v218;
            (v218[1])(v137, a2);
LABEL_104:
            if (v135)
            {
              goto LABEL_162;
            }

            goto LABEL_105;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v79 = v218;
          goto LABEL_105;
        }
      }

      if (v32 > 1)
      {
        if (v32 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v6];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v6];
        }
      }

      else if (v32)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
      }

      else
      {
        isa = *&v6;
      }

      v10 = isa;
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        v40 = v39;
        v41 = v32;
        v10 = v10;
        v42 = String.init(_:)(v40);
        v43 = sub_1000DF96C();
        swift_beginAccess();
        v238 = v42;
        *&v239[8] = &type metadata for String;
        *&v239[16] = v43;
        v239[24] = 1;
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v235[0] = a1[14];
        v44 = v235[0];
        a1[14] = 0x8000000000000000;
        v45 = sub_100771D58(v230, v231);
        v47 = *(v44 + 16);
        v48 = (v46 & 1) == 0;
        v49 = __OFADD__(v47, v48);
        v50 = v47 + v48;
        if (v49)
        {
          __break(1u);
          goto LABEL_151;
        }

        a2 = v46;
        if (*(v44 + 24) >= v50)
        {
          if ((v11 & 1) == 0)
          {
            v209 = v45;
            sub_1010050E8();
            v45 = v209;
          }
        }

        else
        {
          sub_100FE65C4(v50, v11);
          v45 = sub_100771D58(v230, v231);
          if ((a2 & 1) != (v51 & 1))
          {
            goto LABEL_166;
          }
        }

        a1 = v228;
        LOBYTE(v32) = v41;
        a3 = v226;
        if (a2)
        {
          a2 = v45;

          v69 = v235[0];
          sub_10118B568(&v238, *(v235[0] + 56) + 48 * a2);
        }

        else
        {
          v69 = v235[0];
          *(v235[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
          v70 = (v69[6] + 16 * v45);
          v71 = v231;
          *v70 = v230;
          v70[1] = v71;
          v72 = (v69[7] + 48 * v45);
          v73 = *&v239[9];
          v74 = *v239;
          *v72 = v238;
          v72[1] = v74;
          *(&v72[1]._object + 1) = v73;
          v75 = v69[2];
          v49 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (v49)
          {
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

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v69[2] = v76;
        }

        a1[14] = v69;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      if (v52)
      {
        v53 = v52;
        [v52 doubleValue];
        v55 = v54;
        v56 = [v53 integerValue];
        a3 = v226;
        if (v55 == v56)
        {
          v57 = v56;
          v58 = sub_1000DFAD8();
          swift_beginAccess();
          v238._countAndFlagsBits = v57;
          *&v239[8] = &type metadata for Int;
          *&v239[16] = v58;
          v239[24] = 2;
          v59 = swift_isUniquelyReferenced_nonNull_native();
          v60 = a1;
          v61 = v59;
          v235[0] = v60[14];
          v62 = v235[0];
          v60[14] = 0x8000000000000000;
          v63 = sub_100771D58(v230, v231);
          v65 = *(v62 + 16);
          v66 = (v64 & 1) == 0;
          v49 = __OFADD__(v65, v66);
          v67 = v65 + v66;
          if (v49)
          {
            goto LABEL_154;
          }

          a2 = v64;
          if (*(v62 + 24) >= v67)
          {
            if ((v61 & 1) == 0)
            {
              v211 = v63;
              sub_1010050E8();
              v63 = v211;
            }
          }

          else
          {
            sub_100FE65C4(v67, v61);
            v63 = sub_100771D58(v230, v231);
            if ((a2 & 1) != (v68 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v228;
          if ((a2 & 1) == 0)
          {
            v108 = v235[0];
            *(v235[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
            v109 = (v108[6] + 16 * v63);
            v110 = v231;
            *v109 = v230;
            v109[1] = v110;
            v111 = (v108[7] + 48 * v63);
            v112 = *&v239[9];
            v113 = *v239;
            *v111 = v238;
            v111[1] = v113;
            *(&v111[1]._object + 1) = v112;
            v114 = v108[2];
            v49 = __OFADD__(v114, 1);
            v115 = v114 + 1;
            if (v49)
            {
              goto LABEL_158;
            }

            goto LABEL_82;
          }

LABEL_80:
          a2 = v63;

          v108 = v235[0];
          sub_10118B568(&v238, *(v235[0] + 56) + 48 * a2);
        }

        else
        {
          v98 = sub_1000DFA84();
          swift_beginAccess();
          *&v238._countAndFlagsBits = v55;
          *&v239[8] = &type metadata for Double;
          *&v239[16] = v98;
          v239[24] = 3;
          v99 = swift_isUniquelyReferenced_nonNull_native();
          v100 = a1;
          v101 = v99;
          v235[0] = v100[14];
          v102 = v235[0];
          v100[14] = 0x8000000000000000;
          v63 = sub_100771D58(v230, v231);
          v104 = *(v102 + 16);
          v105 = (v103 & 1) == 0;
          v49 = __OFADD__(v104, v105);
          v106 = v104 + v105;
          if (v49)
          {
            goto LABEL_157;
          }

          a2 = v103;
          if (*(v102 + 24) >= v106)
          {
            if ((v101 & 1) == 0)
            {
              v212 = v63;
              sub_1010050E8();
              v63 = v212;
            }
          }

          else
          {
            sub_100FE65C4(v106, v101);
            v63 = sub_100771D58(v230, v231);
            if ((a2 & 1) != (v107 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v228;
          if (a2)
          {
            goto LABEL_80;
          }

          v108 = v235[0];
          *(v235[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
          v116 = (v108[6] + 16 * v63);
          v117 = v231;
          *v116 = v230;
          v116[1] = v117;
          v118 = (v108[7] + 48 * v63);
          v119 = *&v239[9];
          v120 = *v239;
          *v118 = v238;
          v118[1] = v120;
          *(&v118[1]._object + 1) = v119;
          v121 = v108[2];
          v49 = __OFADD__(v121, 1);
          v115 = v121 + 1;
          if (v49)
          {
            goto LABEL_160;
          }

LABEL_82:
          v108[2] = v115;
        }

        a1[14] = v108;
        swift_endAccess();
LABEL_84:

        v92 = v6;
        v93 = v32;
        goto LABEL_85;
      }

      LODWORD(v230) = v32;

      a3 = v226;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_1000076D4(v86, qword_10177C6D0);
      v87 = v10;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v88, v89))
      {

        sub_101010148(*&v6, v230);
        goto LABEL_13;
      }

      a2 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *a2 = v224;
      *(a2 + 4) = v87;
      *v90 = v87;
      v91 = v87;
      _os_log_impl(&_mh_execute_header, v88, v89, "Unsupported value type: %@!", a2, 0xCu);
      sub_10000B3A8(v90, &qword_10169BB30, &unk_10138B3C0);
      a1 = v228;

      v92 = v6;
      v93 = v230;
LABEL_85:
      sub_101010148(*&v92, v93);
LABEL_13:
      a4 = v227;
    }

    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= a3)
      {

        return;
      }

      v21 = *(a4 + v25);
      ++v22;
      if (v21)
      {
        v22 = v25;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_149:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C6D0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v238._countAndFlagsBits = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000136BC(v10, v11, &v238._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v13, v14, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v15, 0xCu);
    sub_100007BAC(v16);
  }
}

void sub_10117F97C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v6 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v6, object, qword_10177C6E8))
    {
      break;
    }

    v230 = v3;
    v228 = a2;
    v13 = sub_101164F24(a2);
    v14 = v13 + 64;
    v15 = 1 << v13[32];
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v3 = v16 & *(v13 + 8);
    swift_beginAccess();
    v17 = 0;
    v18 = (v15 + 63) >> 6;
    *&v19 = 138412290;
    v229 = v19;
    v232 = a1;
    v231 = v13;
    while (v3)
    {
LABEL_15:
      v21 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v22 = (v17 << 10) | (16 * v21);
      v23 = *(v13 + 7);
      v24 = (*(v13 + 6) + v22);
      v25 = v24[1];
      v235 = *v24;
      v26 = (v23 + v22);
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = a1[14];
      v30 = *(v29 + 16);
      v236 = v25;

      v234 = v27;
      sub_10090C56C(v27, v28);
      v233 = v28;
      if (v30)
      {

        v31 = sub_100771D58(v235, v236);
        if ((v32 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v29 + 56) + 48 * v31, &v243);

        if (v28 <= 1)
        {
          if (v28)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v234 & 1).super.super.isa;
          }

          else
          {
            v33 = v234;
          }

          v93 = v33;
          goto LABEL_102;
        }

        if (v28 != 2)
        {
          sub_1010100EC(&v243, &v238);
          if (v239[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v238);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v243);
            return;
          }

          v94 = v234;
          sub_10000A748(&v238._countAndFlagsBits, v240);
          v95 = sub_1000035D0(v240, v241);
          __chkstk_darwin(v95);
          (*(v97 + 16))(v222 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v232;
          v93 = [objc_allocWithZone(NSNumber) initWithDouble:*&v238._countAndFlagsBits + *&v94];
          sub_100007BAC(v240);
          goto LABEL_102;
        }

        sub_1010100EC(&v243, &v238);
        if (v239[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v238._countAndFlagsBits, v240);
        v78 = v241;
        v77 = v242;
        v79 = sub_1000035D0(v240, v241);
        v226 = v222;
        __chkstk_darwin(v79);
        v224 = v80;
        v81 = v222 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        v227 = v82;
        (*(v82 + 16))(v81);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v238._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v83 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v83 < 64)
            {
              goto LABEL_89;
            }

            v225 = v77;
            v223 = v222;
            __chkstk_darwin(v83);
            v85 = v222 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v86 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v227 + 8))(v85, v78);
            v77 = v225;
            if (v86)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v223) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v124 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v223)
            {
              v225 = v77;
              if (v124 <= 64)
              {
                v223 = *(*(v77 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v222[3] = v222;
                __chkstk_darwin(AssociatedTypeWitness);
                v222[1] = v222 - v130;
                swift_getAssociatedConformanceWitness();
                v131 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v222[2] = v222;
                __chkstk_darwin(v131);
                v133 = v222 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v134 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v227 + 8))(v133, v78);
                if (v134)
                {
                  goto LABEL_163;
                }

                v77 = v225;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v223 = v222;
              __chkstk_darwin(v124);
              v126 = v222 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v127 = dispatch thunk of static Comparable.< infix(_:_:)();
              v128 = v126;
              v77 = v225;
              (*(v227 + 8))(v128, v78);
              if (v127)
              {
                goto LABEL_163;
              }
            }

            else if (v124 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v238._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v135 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v136 = v77;
          v137 = v135;
          v225 = v136;
          v138 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v137)
          {
            if (v138 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v138 >= 64)
          {
LABEL_93:
            v223 = v222;
            __chkstk_darwin(v138);
            v224 = v222 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v140 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v227 + 8))(v224, v78);
            if (v140)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v141 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v227 + 8))(v81, v78);
        v47 = __OFADD__(v141, v234);
        v142 = &v234[v141];
        if (v47)
        {
          goto LABEL_154;
        }

        v93 = [objc_allocWithZone(NSNumber) initWithLongLong:v142];
        sub_100007BAC(v240);
        a1 = v232;
LABEL_102:
        objc_opt_self();
        v143 = swift_dynamicCastObjCClass();
        if (v143)
        {
          v144 = v143;
          v145 = v93;
          v146 = String.init(_:)(v144);
          v147 = a1;
          v148 = sub_1000DF96C();
          swift_beginAccess();
          v238 = v146;
          *&v239[8] = &type metadata for String;
          *&v239[16] = v148;
          v239[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v237 = v147[14];
          v150 = v237;
          v147[14] = 0x8000000000000000;
          v151 = sub_100771D58(v235, v236);
          v153 = v150[2];
          v154 = (v152 & 1) == 0;
          v47 = __OFADD__(v153, v154);
          v155 = v153 + v154;
          if (v47)
          {
            goto LABEL_151;
          }

          v156 = v152;
          if (v150[3] >= v155)
          {
            v13 = v231;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v217 = v151;
              sub_1010050E8();
              v151 = v217;
            }
          }

          else
          {
            sub_100FE65C4(v155, isUniquelyReferenced_nonNull_native);
            v151 = sub_100771D58(v235, v236);
            v13 = v231;
            if ((v156 & 1) != (v157 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v232;
          if (v156)
          {
            v176 = v151;

            a2 = v237;
            sub_10118B568(&v238, v237[7] + 48 * v176);
          }

          else
          {
            a2 = v237;
            v237[(v151 >> 6) + 8] |= 1 << v151;
            v177 = (a2[6] + 16 * v151);
            v178 = v236;
            *v177 = v235;
            v177[1] = v178;
            v179 = (a2[7] + 48 * v151);
            v180 = *&v239[9];
            v181 = *v239;
            *v179 = v238;
            v179[1] = v181;
            *(&v179[1]._object + 1) = v180;
            v182 = a2[2];
            v47 = __OFADD__(v182, 1);
            v183 = v182 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            a2[2] = v183;
          }

          v184 = v233;
          a1[14] = a2;
          swift_endAccess();
          sub_101010148(v234, v184);

          goto LABEL_120;
        }

        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = v158;
          [v158 doubleValue];
          v161 = v160;
          v162 = [v159 integerValue];
          if (v161 == v162)
          {
            v163 = v162;
            v164 = sub_1000DFAD8();
            swift_beginAccess();
            v238._countAndFlagsBits = v163;
            *&v239[8] = &type metadata for Int;
            *&v239[16] = v164;
            v239[24] = 2;
            v165 = swift_isUniquelyReferenced_nonNull_native();
            v166 = a1;
            v167 = v165;
            v237 = v166[14];
            v168 = v237;
            v166[14] = 0x8000000000000000;
            v169 = sub_100771D58(v235, v236);
            v171 = v168[2];
            v172 = (v170 & 1) == 0;
            v47 = __OFADD__(v171, v172);
            v173 = v171 + v172;
            if (v47)
            {
              goto LABEL_157;
            }

            v174 = v170;
            if (v168[3] >= v173)
            {
              if ((v167 & 1) == 0)
              {
                v220 = v169;
                sub_1010050E8();
                v169 = v220;
              }
            }

            else
            {
              sub_100FE65C4(v173, v167);
              v169 = sub_100771D58(v235, v236);
              if ((v174 & 1) != (v175 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v232;
            if ((v174 & 1) == 0)
            {
              a2 = v237;
              v237[(v169 >> 6) + 8] |= 1 << v169;
              v201 = (a2[6] + 16 * v169);
              v202 = v236;
              *v201 = v235;
              v201[1] = v202;
              v203 = (a2[7] + 48 * v169);
              v204 = *&v239[9];
              v205 = *v239;
              *v203 = v238;
              v203[1] = v205;
              *(&v203[1]._object + 1) = v204;
              v206 = a2[2];
              v47 = __OFADD__(v206, 1);
              v207 = v206 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v208 = v169;

            a2 = v237;
            sub_10118B568(&v238, v237[7] + 48 * v208);
          }

          else
          {
            v190 = sub_1000DFA84();
            swift_beginAccess();
            *&v238._countAndFlagsBits = v161;
            *&v239[8] = &type metadata for Double;
            *&v239[16] = v190;
            v239[24] = 3;
            v191 = swift_isUniquelyReferenced_nonNull_native();
            v192 = a1;
            v193 = v191;
            v237 = v192[14];
            v194 = v237;
            v192[14] = 0x8000000000000000;
            v169 = sub_100771D58(v235, v236);
            v196 = v194[2];
            v197 = (v195 & 1) == 0;
            v47 = __OFADD__(v196, v197);
            v198 = v196 + v197;
            if (v47)
            {
              goto LABEL_159;
            }

            v199 = v195;
            if (v194[3] >= v198)
            {
              if ((v193 & 1) == 0)
              {
                v221 = v169;
                sub_1010050E8();
                v169 = v221;
              }
            }

            else
            {
              sub_100FE65C4(v198, v193);
              v169 = sub_100771D58(v235, v236);
              if ((v199 & 1) != (v200 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v232;
            if (v199)
            {
              goto LABEL_139;
            }

            a2 = v237;
            v237[(v169 >> 6) + 8] |= 1 << v169;
            v209 = (a2[6] + 16 * v169);
            v210 = v236;
            *v209 = v235;
            v209[1] = v210;
            v211 = (a2[7] + 48 * v169);
            v212 = *&v239[9];
            v213 = *v239;
            *v211 = v238;
            v211[1] = v213;
            *(&v211[1]._object + 1) = v212;
            v214 = a2[2];
            v47 = __OFADD__(v214, 1);
            v207 = v214 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            a2[2] = v207;
          }

          v215 = v233;
          a1[14] = a2;
          swift_endAccess();

          sub_101010148(v234, v215);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v185 = type metadata accessor for Logger();
        sub_1000076D4(v185, qword_10177C6D0);
        v186 = v93;
        v145 = Logger.logObject.getter();
        a2 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v145, a2))
        {

          sub_101010148(v234, v233);
LABEL_120:

          goto LABEL_143;
        }

        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v187 = v229;
        *(v187 + 4) = v186;
        *v188 = v186;
        v189 = v186;
        _os_log_impl(&_mh_execute_header, v145, a2, "Unsupported value type: %@!", v187, 0xCu);
        sub_10000B3A8(v188, &qword_10169BB30, &unk_10138B3C0);
        v13 = v231;

        a1 = v232;

        sub_101010148(v234, v233);
LABEL_143:
        sub_10118B5A0(&v243);
      }

      else
      {
LABEL_21:
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v234];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v234];
          }
        }

        else if (v28)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v234 & 1).super.super.isa;
        }

        else
        {
          isa = v234;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v6 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v39;
          *&v244[8] = &type metadata for String;
          *&v244[16] = v40;
          v244[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v240[0] = a1[14];
          v42 = v240[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v235, v236);
          v45 = *(v42 + 16);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            __break(1u);
            goto LABEL_149;
          }

          v49 = v44;
          if (*(v42 + 24) >= v48)
          {
            if ((v41 & 1) == 0)
            {
              v216 = v43;
              sub_1010050E8();
              v43 = v216;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v235, v236);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v232;
          v13 = v231;
          if (v49)
          {
            v69 = v43;

            a2 = v240[0];
            sub_10118B568(&v243, *(v240[0] + 56) + 48 * v69);
          }

          else
          {
            a2 = v240[0];
            *(v240[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v70 = (a2[6] + 16 * v43);
            v71 = v236;
            *v70 = v235;
            v70[1] = v71;
            v72 = (a2[7] + 48 * v43);
            v73 = *&v244[9];
            v74 = *v244;
            *v72 = v243;
            v72[1] = v74;
            *(&v72[1]._object + 1) = v73;
            v75 = a2[2];
            v47 = __OFADD__(v75, 1);
            v76 = v75 + 1;
            if (v47)
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v76;
          }

          a1[14] = a2;
          swift_endAccess();

LABEL_46:
          sub_101010148(v234, v233);
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            [v51 doubleValue];
            v54 = v53;
            v55 = [v52 integerValue];
            if (v54 == v55)
            {
              v56 = v55;
              v57 = sub_1000DFAD8();
              swift_beginAccess();
              v243._countAndFlagsBits = v56;
              *&v244[8] = &type metadata for Int;
              *&v244[16] = v57;
              v244[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v240[0] = v59[14];
              v61 = v240[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v235, v236);
              v64 = *(v61 + 16);
              v65 = (v63 & 1) == 0;
              v47 = __OFADD__(v64, v65);
              v66 = v64 + v65;
              if (v47)
              {
                goto LABEL_152;
              }

              v67 = v63;
              if (*(v61 + 24) >= v66)
              {
                if ((v60 & 1) == 0)
                {
                  v218 = v62;
                  sub_1010050E8();
                  v62 = v218;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v235, v236);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v232;
              if (v67)
              {
                goto LABEL_77;
              }

              a2 = v240[0];
              *(v240[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v109 = (a2[6] + 16 * v62);
              v110 = v236;
              *v109 = v235;
              v109[1] = v110;
              v111 = (a2[7] + 48 * v62);
              v112 = *&v244[9];
              v113 = *v244;
              *v111 = v243;
              v111[1] = v113;
              *(&v111[1]._object + 1) = v112;
              v114 = a2[2];
              v47 = __OFADD__(v114, 1);
              v115 = v114 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v98 = sub_1000DFA84();
              swift_beginAccess();
              *&v243._countAndFlagsBits = v54;
              *&v244[8] = &type metadata for Double;
              *&v244[16] = v98;
              v244[24] = 3;
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v100 = a1;
              v101 = v99;
              v240[0] = v100[14];
              v102 = v240[0];
              v100[14] = 0x8000000000000000;
              v62 = sub_100771D58(v235, v236);
              v104 = *(v102 + 16);
              v105 = (v103 & 1) == 0;
              v47 = __OFADD__(v104, v105);
              v106 = v104 + v105;
              if (v47)
              {
                goto LABEL_155;
              }

              v107 = v103;
              if (*(v102 + 24) >= v106)
              {
                if ((v101 & 1) == 0)
                {
                  v219 = v62;
                  sub_1010050E8();
                  v62 = v219;
                }
              }

              else
              {
                sub_100FE65C4(v106, v101);
                v62 = sub_100771D58(v235, v236);
                if ((v107 & 1) != (v108 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v232;
              if (v107)
              {
LABEL_77:
                v116 = v62;

                a2 = v240[0];
                sub_10118B568(&v243, *(v240[0] + 56) + 48 * v116);
                goto LABEL_80;
              }

              a2 = v240[0];
              *(v240[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v117 = (a2[6] + 16 * v62);
              v118 = v236;
              *v117 = v235;
              v117[1] = v118;
              v119 = (a2[7] + 48 * v62);
              v120 = *&v244[9];
              v121 = *v244;
              *v119 = v243;
              v119[1] = v121;
              *(&v119[1]._object + 1) = v120;
              v122 = a2[2];
              v47 = __OFADD__(v122, 1);
              v115 = v122 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            a2[2] = v115;
LABEL_80:
            v123 = v233;
            a1[14] = a2;
            swift_endAccess();

            sub_101010148(v234, v123);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v87 = type metadata accessor for Logger();
            sub_1000076D4(v87, qword_10177C6D0);
            v88 = v36;
            v89 = Logger.logObject.getter();
            a2 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v89, a2))
            {
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              *v90 = v229;
              *(v90 + 4) = v88;
              *v91 = v88;
              v92 = v88;
              _os_log_impl(&_mh_execute_header, v89, a2, "Unsupported value type: %@!", v90, 0xCu);
              sub_10000B3A8(v91, &qword_10169BB30, &unk_10138B3C0);
              v13 = v231;

              a1 = v232;

              goto LABEL_46;
            }

            sub_101010148(v234, v233);
          }
        }
      }
    }

    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v3 = *&v14[8 * v20];
      ++v17;
      if (v3)
      {
        v17 = v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C6D0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v243._countAndFlagsBits = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000136BC(v6, object, &v243._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v9, v10, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }
}

void sub_10118138C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v234 = a7;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v14 = *(a1 + 120);
    v15 = *(a1 + 128);
    v16 = sub_10111EACC(v14, v15, qword_10177C6E8);
    v241 = a1;
    if (v16)
    {
      break;
    }

    v232 = v8;
    v229 = a3;
    v230 = a5;
    v22 = sub_1011653DC(a2, a3, a4, a5);
    v24 = v22 + 64;
    v23 = *(v22 + 64);
    v239 = v22;
    v25 = 1 << *(v22 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    a3 = v26 & v23;
    swift_beginAccess();
    a5 = 0;
    a4 = (v25 + 63) >> 6;
    *&v27 = 138412290;
    v231 = v27;
    v28 = a1;
    v237 = v24;
    v236 = a4;
    while (a3)
    {
LABEL_15:
      v30 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
      v31 = (a5 << 10) | (16 * v30);
      v32 = *(v239 + 48) + v31;
      a1 = *v32;
      v15 = *(v32 + 8);
      v33 = *(v239 + 56) + v31;
      v34 = *v33;
      v8 = *(v33 + 8);
      v35 = v28[14];
      v36 = *(v35 + 16);

      sub_10090C56C(*&v34, v8);
      if (v36)
      {

        v37 = sub_100771D58(a1, v15);
        if (v38)
        {
          sub_1010100EC(*(v35 + 56) + 48 * v37, &v248);

          v233 = v15;
          if (v8 <= 1)
          {
            if (v8)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v39 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v34) & 1).super.super.isa;
            }

            else
            {
              v39 = *&v34;
            }

            v101 = v39;
            goto LABEL_101;
          }

          if (v8 != 2)
          {
            sub_1010100EC(&v248, &v243);
            if (v244[24] != 3)
            {
LABEL_145:

              sub_10118B5A0(&v243);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v248);
              return;
            }

            sub_10000A748(&v243._countAndFlagsBits, v245);
            v102 = sub_1000035D0(v245, v246);
            v240 = *&a1;
            __chkstk_darwin(v102);
            a2 = v225 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v104 + 16))(a2);
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            *&a1 = v240;
            v101 = [objc_allocWithZone(NSNumber) initWithDouble:*&v243._countAndFlagsBits + v34];
            sub_100007BAC(v245);
            goto LABEL_101;
          }

          sub_1010100EC(&v248, &v243);
          if (v244[24] != 2)
          {
            goto LABEL_145;
          }

          v238 = 2;
          sub_10000A748(&v243._countAndFlagsBits, v245);
          a2 = v246;
          v86 = v247;
          v87 = sub_1000035D0(v245, v246);
          v235 = v225;
          __chkstk_darwin(v87);
          v228 = v88;
          v89 = v225 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
          v240 = *&v90;
          (v90)[2](v89);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_89;
          }

          v243._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v91 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v91 >= 64)
            {
              v227 = v86;
              v226 = v225;
              __chkstk_darwin(v91);
              v93 = v225 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v94 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(*&v240 + 8))(v93, a2);
              if (v94)
              {
                goto LABEL_163;
              }

              goto LABEL_89;
            }

LABEL_88:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_89;
          }

          LODWORD(v226) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v128 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v226 & 1) == 0)
          {
            if (v128 >= 64)
            {
              goto LABEL_89;
            }

            goto LABEL_88;
          }

          v227 = v86;
          if (v128 <= 64)
          {
            v226 = *(*(v86 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v225[2] = v225;
            __chkstk_darwin(AssociatedTypeWitness);
            v225[0] = v225 - v133;
            swift_getAssociatedConformanceWitness();
            v134 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v225[1] = v225;
            __chkstk_darwin(v134);
            v136 = v225 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v137 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(*&v240 + 8))(v136, a2);
            if (v137)
            {
              goto LABEL_163;
            }

            goto LABEL_88;
          }

          v226 = v225;
          __chkstk_darwin(v128);
          v130 = v225 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v131 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(*&v240 + 8))(v130, a2);
          if (v131)
          {
            goto LABEL_163;
          }

LABEL_89:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_99:
            v143 = dispatch thunk of BinaryInteger._lowWord.getter();
            (*(*&v240 + 8))(v89, a2);
            v55 = __OFADD__(v143, *&v34);
            v144 = v143 + *&v34;
            if (v55)
            {
              goto LABEL_154;
            }

            v101 = [objc_allocWithZone(NSNumber) initWithLongLong:v144];
            sub_100007BAC(v245);
            v8 = v238;
LABEL_101:
            objc_opt_self();
            v145 = swift_dynamicCastObjCClass();
            if (v145)
            {
              v146 = v145;
              v240 = v34;
              v147 = v8;
              v148 = v101;
              v149 = String.init(_:)(v146);
              v150 = sub_1000DF96C();
              v151 = a1;
              v152 = v241;
              v153 = v150;
              swift_beginAccess();
              v243 = v149;
              *&v244[8] = &type metadata for String;
              *&v244[16] = v153;
              v244[24] = 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v242 = v152[14];
              v155 = v242;
              v152[14] = 0x8000000000000000;
              a1 = v151;
              v156 = v151;
              v157 = v233;
              v158 = sub_100771D58(v156, v233);
              v160 = v155[2];
              v161 = (v159 & 1) == 0;
              v55 = __OFADD__(v160, v161);
              v162 = v160 + v161;
              if (v55)
              {
                goto LABEL_151;
              }

              a2 = v159;
              if (v155[3] >= v162)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_113;
                }

                v214 = v158;
                sub_1010050E8();
                v158 = v214;
                v8 = v147;
                if ((a2 & 1) == 0)
                {
                  goto LABEL_139;
                }

LABEL_114:
                v182 = v158;

                v183 = v242;
                sub_10118B568(&v243, v242[7] + 48 * v182);
              }

              else
              {
                sub_100FE65C4(v162, isUniquelyReferenced_nonNull_native);
                v158 = sub_100771D58(a1, v157);
                if ((a2 & 1) != (v163 & 1))
                {
                  goto LABEL_164;
                }

LABEL_113:
                v8 = v147;
                if (a2)
                {
                  goto LABEL_114;
                }

LABEL_139:
                v183 = v242;
                v242[(v158 >> 6) + 8] |= 1 << v158;
                v215 = (v183[6] + 16 * v158);
                *v215 = a1;
                v215[1] = v157;
                v216 = (v183[7] + 48 * v158);
                v217 = *&v244[9];
                v218 = *v244;
                *v216 = v243;
                v216[1] = v218;
                *(&v216[1]._object + 1) = v217;
                v219 = v183[2];
                v55 = __OFADD__(v219, 1);
                v220 = v219 + 1;
                if (v55)
                {
                  goto LABEL_153;
                }

                v183[2] = v220;
              }

              v24 = v237;
              a4 = v236;
              v241[14] = v183;
              swift_endAccess();
              sub_101010148(*&v240, v8);

LABEL_142:
              sub_10118B5A0(&v248);
              goto LABEL_143;
            }

            objc_opt_self();
            v164 = swift_dynamicCastObjCClass();
            if (!v164)
            {

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v184 = type metadata accessor for Logger();
              sub_1000076D4(v184, qword_10177C6D0);
              v185 = v101;
              v186 = Logger.logObject.getter();
              v187 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v186, v187))
              {
                *&a1 = v34;
                v188 = swift_slowAlloc();
                a2 = swift_slowAlloc();
                *v188 = v231;
                *(v188 + 4) = v185;
                *a2 = v185;
                v189 = v185;
                _os_log_impl(&_mh_execute_header, v186, v187, "Unsupported value type: %@!", v188, 0xCu);
                sub_10000B3A8(a2, &qword_10169BB30, &unk_10138B3C0);

                sub_101010148(a1, v8);
              }

              else
              {

                sub_101010148(*&v34, v8);
              }

              v24 = v237;
              a4 = v236;
              goto LABEL_142;
            }

            v240 = *&a1;
            v238 = v8;
            v165 = v164;
            [v164 doubleValue];
            v167 = v166;
            v168 = [v165 integerValue];
            v169 = v233;
            if (v167 == v168)
            {
              v170 = v168;
              v171 = sub_1000DFAD8();
              v172 = v241;
              swift_beginAccess();
              v243._countAndFlagsBits = v170;
              *&v244[8] = &type metadata for Int;
              *&v244[16] = v171;
              v244[24] = 2;
              v173 = swift_isUniquelyReferenced_nonNull_native();
              v242 = v172[14];
              v174 = v242;
              v172[14] = 0x8000000000000000;
              *&a1 = v240;
              v175 = sub_100771D58(*&v240, v169);
              v177 = v174[2];
              v178 = (v176 & 1) == 0;
              v55 = __OFADD__(v177, v178);
              v179 = v177 + v178;
              if (v55)
              {
                goto LABEL_157;
              }

              v180 = v176;
              if (v174[3] >= v179)
              {
                if ((v173 & 1) == 0)
                {
                  v223 = v175;
                  sub_1010050E8();
                  v175 = v223;
                }
              }

              else
              {
                sub_100FE65C4(v179, v173);
                v175 = sub_100771D58(a1, v169);
                if ((v180 & 1) != (v181 & 1))
                {
                  goto LABEL_164;
                }
              }

              v8 = v238;
              if ((v180 & 1) == 0)
              {
                v200 = v242;
                v242[(v175 >> 6) + 8] |= 1 << v175;
                v201 = (v200[6] + 16 * v175);
                *v201 = a1;
                v201[1] = v169;
                v202 = (v200[7] + 48 * v175);
                v203 = *&v244[9];
                v204 = *v244;
                *v202 = v243;
                v202[1] = v204;
                *(&v202[1]._object + 1) = v203;
                v205 = v200[2];
                v55 = __OFADD__(v205, 1);
                v206 = v205 + 1;
                if (v55)
                {
                  goto LABEL_161;
                }

                goto LABEL_136;
              }

LABEL_134:
              a2 = *&v34;
              v207 = v175;

              v200 = v242;
              sub_10118B568(&v243, v242[7] + 48 * v207);
            }

            else
            {
              v190 = sub_1000DFA84();
              v191 = v241;
              swift_beginAccess();
              *&v243._countAndFlagsBits = v167;
              *&v244[8] = &type metadata for Double;
              *&v244[16] = v190;
              v244[24] = 3;
              v192 = swift_isUniquelyReferenced_nonNull_native();
              v242 = v191[14];
              v193 = v242;
              v191[14] = 0x8000000000000000;
              *&a1 = v240;
              v175 = sub_100771D58(*&v240, v169);
              v195 = v193[2];
              v196 = (v194 & 1) == 0;
              v55 = __OFADD__(v195, v196);
              v197 = v195 + v196;
              if (v55)
              {
                goto LABEL_159;
              }

              v198 = v194;
              if (v193[3] >= v197)
              {
                if ((v192 & 1) == 0)
                {
                  v224 = v175;
                  sub_1010050E8();
                  v175 = v224;
                }
              }

              else
              {
                sub_100FE65C4(v197, v192);
                v175 = sub_100771D58(a1, v169);
                if ((v198 & 1) != (v199 & 1))
                {
                  goto LABEL_164;
                }
              }

              v8 = v238;
              if (v198)
              {
                goto LABEL_134;
              }

              v200 = v242;
              v242[(v175 >> 6) + 8] |= 1 << v175;
              v208 = (v200[6] + 16 * v175);
              *v208 = a1;
              v208[1] = v169;
              v209 = (v200[7] + 48 * v175);
              v210 = *&v244[9];
              v211 = *v244;
              *v209 = v243;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = v200[2];
              v55 = __OFADD__(v212, 1);
              v206 = v212 + 1;
              if (v55)
              {
                goto LABEL_162;
              }

LABEL_136:
              a2 = *&v34;
              v200[2] = v206;
            }

            v24 = v237;
            a4 = v236;
            v241[14] = v200;
            swift_endAccess();

            sub_101010148(a2, v8);
            goto LABEL_142;
          }

          v243._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v139 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v138)
          {
            if (v139 > 64)
            {
              goto LABEL_92;
            }
          }

          else if (v139 >= 64)
          {
LABEL_92:
            v226 = v225;
            __chkstk_darwin(v139);
            v141 = v225 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v142 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(*&v240 + 8))(v141, a2);
            if (v142)
            {
              goto LABEL_160;
            }

            goto LABEL_99;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_99;
        }
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v34];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v34];
        }
      }

      else if (v8)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v34) & 1).super.super.isa;
      }

      else
      {
        isa = *&v34;
      }

      v41 = isa;
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v43 = v42;
        v240 = v34;
        v238 = v8;
        v235 = v41;
        v44 = String.init(_:)(v43);
        v45 = sub_1000DF96C();
        v14 = a1;
        v46 = v241;
        v47 = v45;
        swift_beginAccess();
        v248 = v44;
        *&v249[8] = &type metadata for String;
        *&v249[16] = v47;
        v249[24] = 1;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v245[0] = v46[14];
        v49 = v245[0];
        v46[14] = 0x8000000000000000;
        v50 = v14;
        a1 = v15;
        v51 = sub_100771D58(v14, v15);
        v53 = *(v49 + 16);
        v54 = (v52 & 1) == 0;
        v55 = __OFADD__(v53, v54);
        v56 = v53 + v54;
        if (v55)
        {
          __break(1u);
          goto LABEL_149;
        }

        a2 = v52;
        if (*(v49 + 24) >= v56)
        {
          if ((v48 & 1) == 0)
          {
            v213 = v51;
            sub_1010050E8();
            v51 = v213;
          }
        }

        else
        {
          sub_100FE65C4(v56, v48);
          v51 = sub_100771D58(v14, v15);
          if ((a2 & 1) != (v57 & 1))
          {
            goto LABEL_164;
          }
        }

        v28 = v241;
        v8 = v238;
        if (a2)
        {
          v77 = v51;

          v78 = v245[0];
          sub_10118B568(&v248, *(v245[0] + 56) + 48 * v77);
        }

        else
        {
          v78 = v245[0];
          *(v245[0] + 8 * (v51 >> 6) + 64) |= 1 << v51;
          v79 = (v78[6] + 16 * v51);
          *v79 = v50;
          v79[1] = v15;
          v80 = (v78[7] + 48 * v51);
          v81 = *&v249[9];
          v82 = *v249;
          *v80 = v248;
          v80[1] = v82;
          *(&v80[1]._object + 1) = v81;
          v83 = v78[2];
          v55 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v55)
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

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v78[2] = v84;
        }

        v28[14] = v78;
        swift_endAccess();
        v85 = v235;

        sub_101010148(*&v240, v8);
        v24 = v237;
        a4 = v236;
      }

      else
      {
        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          v240 = v34;
          v59 = a1;
          v238 = v8;
          v60 = v58;
          [v58 doubleValue];
          v62 = v61;
          v63 = [v60 integerValue];
          if (v62 == v63)
          {
            v64 = v63;
            v65 = sub_1000DFAD8();
            v66 = v241;
            swift_beginAccess();
            v248._countAndFlagsBits = v64;
            *&v249[8] = &type metadata for Int;
            *&v249[16] = v65;
            v249[24] = 2;
            v67 = swift_isUniquelyReferenced_nonNull_native();
            v245[0] = v66[14];
            v68 = v245[0];
            v66[14] = 0x8000000000000000;
            a1 = v59;
            v69 = sub_100771D58(v59, v15);
            v71 = *(v68 + 16);
            v72 = (v70 & 1) == 0;
            v55 = __OFADD__(v71, v72);
            v73 = v71 + v72;
            if (v55)
            {
              goto LABEL_152;
            }

            v74 = v70;
            v75 = v240;
            if (*(v68 + 24) >= v73)
            {
              if ((v67 & 1) == 0)
              {
                v221 = v69;
                sub_1010050E8();
                v69 = v221;
              }
            }

            else
            {
              sub_100FE65C4(v73, v67);
              v69 = sub_100771D58(a1, v15);
              if ((v74 & 1) != (v76 & 1))
              {
                goto LABEL_164;
              }
            }

            v8 = v241;
            if (v74)
            {
              goto LABEL_77;
            }

            v115 = v245[0];
            *(v245[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
            v116 = (v115[6] + 16 * v69);
            *v116 = a1;
            v116[1] = v15;
            v117 = (v115[7] + 48 * v69);
            v118 = *&v249[9];
            v119 = *v249;
            *v117 = v248;
            v117[1] = v119;
            *(&v117[1]._object + 1) = v118;
            v120 = v115[2];
            v55 = __OFADD__(v120, 1);
            v121 = v120 + 1;
            if (v55)
            {
              goto LABEL_156;
            }
          }

          else
          {
            v105 = sub_1000DFA84();
            v106 = v241;
            swift_beginAccess();
            *&v248._countAndFlagsBits = v62;
            *&v249[8] = &type metadata for Double;
            *&v249[16] = v105;
            v249[24] = 3;
            v107 = swift_isUniquelyReferenced_nonNull_native();
            v245[0] = v106[14];
            v108 = v245[0];
            v106[14] = 0x8000000000000000;
            a1 = v59;
            v69 = sub_100771D58(v59, v15);
            v110 = *(v108 + 16);
            v111 = (v109 & 1) == 0;
            v55 = __OFADD__(v110, v111);
            v112 = v110 + v111;
            if (v55)
            {
              goto LABEL_155;
            }

            v113 = v109;
            v75 = v240;
            if (*(v108 + 24) >= v112)
            {
              if ((v107 & 1) == 0)
              {
                v222 = v69;
                sub_1010050E8();
                v69 = v222;
              }
            }

            else
            {
              sub_100FE65C4(v112, v107);
              v69 = sub_100771D58(a1, v15);
              if ((v113 & 1) != (v114 & 1))
              {
                goto LABEL_164;
              }
            }

            v8 = v241;
            if (v113)
            {
LABEL_77:
              a2 = *&v75;
              v122 = v69;

              v115 = v245[0];
              sub_10118B568(&v248, *(v245[0] + 56) + 48 * v122);
              goto LABEL_80;
            }

            v115 = v245[0];
            *(v245[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
            v123 = (v115[6] + 16 * v69);
            *v123 = a1;
            v123[1] = v15;
            v124 = (v115[7] + 48 * v69);
            v125 = *&v249[9];
            v126 = *v249;
            *v124 = v248;
            v124[1] = v126;
            *(&v124[1]._object + 1) = v125;
            v127 = v115[2];
            v55 = __OFADD__(v127, 1);
            v121 = v127 + 1;
            if (v55)
            {
              goto LABEL_158;
            }
          }

          a2 = *&v75;
          v115[2] = v121;
LABEL_80:
          v24 = v237;
          a4 = v236;
          v8[14] = v115;
          swift_endAccess();

          v28 = v8;
          sub_101010148(a2, v238);
        }

        else
        {

          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v95 = type metadata accessor for Logger();
          sub_1000076D4(v95, qword_10177C6D0);
          v96 = v41;
          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v97, v98))
          {
            *&a1 = v34;
            v99 = swift_slowAlloc();
            a2 = swift_slowAlloc();
            *v99 = v231;
            *(v99 + 4) = v96;
            *a2 = v96;
            v100 = v96;
            _os_log_impl(&_mh_execute_header, v97, v98, "Unsupported value type: %@!", v99, 0xCu);
            sub_10000B3A8(a2, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(a1, v8);
          }

          else
          {

            sub_101010148(*&v34, v8);
          }

          v24 = v237;
          a4 = v236;
LABEL_143:
          v28 = v241;
        }
      }
    }

    while (1)
    {
      v29 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v29 >= a4)
      {

        return;
      }

      a3 = *(v24 + 8 * v29);
      ++a5;
      if (a3)
      {
        a5 = v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C6D0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v248._countAndFlagsBits = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(v14, v15, &v248._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v18, v19, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v20, 0xCu);
    sub_100007BAC(v21);
  }
}

void sub_101182DDC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (qword_101695280 != -1)
  {
    goto LABEL_151;
  }

  while (1)
  {
    v12 = a1[15];
    v13 = a1[16];
    if (sub_10111EACC(v12, v13, qword_10177C6E8))
    {
      break;
    }

    v242 = v6;
    v238 = a2;
    v239 = a3;
    v240 = a5;
    v19 = sub_1011665B8(a2, a3, a4, a5);
    a2 = v19 + 8;
    v20 = v19[8];
    v247 = v19;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    a3 = v22 & v20;
    swift_beginAccess();
    a5 = 0;
    v23 = (v21 + 63) >> 6;
    *&v24 = 138412290;
    v241 = v24;
    v246 = a1;
    v244 = v23;
    v245 = a2;
    while (a3)
    {
LABEL_15:
      v26 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
      v27 = (a5 << 10) | (16 * v26);
      v28 = v247[7];
      v29 = v247[6] + v27;
      v30 = *(v29 + 8);
      v248 = *v29;
      v31 = v28 + v27;
      v32 = *v31;
      v6 = *(v31 + 8);
      v33 = a1[14];
      v34 = *(v33 + 16);
      v249 = v30;

      sub_10090C56C(*&v32, v6);
      if (v34)
      {

        v35 = sub_100771D58(*&v248, v249);
        if ((v36 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v33 + 56) + 48 * v35, &v256);

        if (v6 <= 1)
        {
          if (v6)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v37 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v32) & 1).super.super.isa;
          }

          else
          {
            v37 = *&v32;
          }

          v100 = v37;
          goto LABEL_104;
        }

        if (v6 != 2)
        {
          sub_1010100EC(&v256, &v251);
          if (v252[24] != 3)
          {
LABEL_149:

            sub_10118B5A0(&v251);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v256);
            return;
          }

          sub_10000A748(&v251._countAndFlagsBits, v253);
          v101 = sub_1000035D0(v253, v254);
          __chkstk_darwin(v101);
          (*(v103 + 16))(v232 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          a1 = v246;
          BinaryFloatingPoint.init<A>(_:)();
          v100 = [objc_allocWithZone(NSNumber) initWithDouble:*&v251._countAndFlagsBits + v32];
          sub_100007BAC(v253);
          goto LABEL_104;
        }

        sub_1010100EC(&v256, &v251);
        if (v252[24] != 2)
        {
          goto LABEL_149;
        }

        v243 = 2;
        sub_10000A748(&v251._countAndFlagsBits, v253);
        v84 = v254;
        v83 = v255;
        v85 = sub_1000035D0(v253, v254);
        __chkstk_darwin(v85);
        v236 = v86;
        v87 = v232 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
        v237 = v88;
        (*(v88 + 16))(v87);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v251._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v89 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v89 < 64)
            {
              goto LABEL_90;
            }

            v234 = v83;
            v235 = v232;
            __chkstk_darwin(v89);
            v91 = v232 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v92 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v237 + 8))(v91, v84);
            if (v92)
            {
              goto LABEL_167;
            }
          }

          else
          {
            LODWORD(v235) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v131 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v235)
            {
              v234 = v83;
              if (v131 <= 64)
              {
                v235 = *(*(v83 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v233 = v232;
                __chkstk_darwin(AssociatedTypeWitness);
                v232[0] = v232 - v136;
                swift_getAssociatedConformanceWitness();
                v137 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v232[1] = v232;
                __chkstk_darwin(v137);
                v139 = v232 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v140 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v237 + 8))(v139, v84);
                if (v140)
                {
                  goto LABEL_167;
                }

LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v235 = v232;
              __chkstk_darwin(v131);
              v133 = v232 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v134 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v237 + 8))(v133, v84);
              if (v134)
              {
                goto LABEL_167;
              }
            }

            else if (v131 < 64)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v235 = v232;
          v251._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v141 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v142 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v141)
          {
            if (v142 > 64)
            {
              v233 = v232;
              __chkstk_darwin(v142);
              v236 = v232 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v144 = v236;
              v145 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v237 + 8))(v144, v84);
              goto LABEL_101;
            }
          }

          else if (v142 >= 64)
          {
            v233 = v232;
            __chkstk_darwin(v142);
            v147 = v232 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v145 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v237 + 8))(v147, v84);
LABEL_101:
            if (v145)
            {
              goto LABEL_164;
            }

            goto LABEL_102;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_102:
        v148 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v237 + 8))(v87, v84);
        v52 = __OFADD__(v148, *&v32);
        v149 = v148 + *&v32;
        if (v52)
        {
          goto LABEL_158;
        }

        v100 = [objc_allocWithZone(NSNumber) initWithLongLong:v149];
        sub_100007BAC(v253);
        a1 = v246;
        v6 = v243;
LABEL_104:
        objc_opt_self();
        v150 = swift_dynamicCastObjCClass();
        if (v150)
        {
          v151 = v150;
          v152 = v32;
          v153 = v6;
          v154 = v100;
          v155 = String.init(_:)(v151);
          v156 = sub_1000DF96C();
          swift_beginAccess();
          v251 = v155;
          *&v252[8] = &type metadata for String;
          *&v252[16] = v156;
          v252[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v250 = a1[14];
          v158 = v250;
          a1[14] = 0x8000000000000000;
          v159 = *&v248;
          v160 = sub_100771D58(*&v248, v249);
          v162 = v158[2];
          v163 = (v161 & 1) == 0;
          v52 = __OFADD__(v162, v163);
          v164 = v162 + v163;
          if (v52)
          {
            goto LABEL_155;
          }

          v165 = v161;
          if (v158[3] >= v164)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v227 = v160;
              sub_1010050E8();
              v160 = v227;
            }
          }

          else
          {
            sub_100FE65C4(v164, isUniquelyReferenced_nonNull_native);
            v160 = sub_100771D58(v159, v249);
            if ((v165 & 1) != (v166 & 1))
            {
              goto LABEL_168;
            }
          }

          v6 = v153;
          v185 = v152;
          if (v165)
          {
            v186 = v160;

            a4 = v250;
            sub_10118B568(&v251, v250[7] + 48 * v186);
            a1 = v246;
            v23 = v244;
            a2 = v245;
          }

          else
          {
            a4 = v250;
            v250[(v160 >> 6) + 8] |= 1 << v160;
            v187 = (a4[6] + 16 * v160);
            v188 = v249;
            *v187 = v159;
            v187[1] = v188;
            v189 = (a4[7] + 48 * v160);
            v190 = *&v252[9];
            v191 = *v252;
            *v189 = v251;
            v189[1] = v191;
            *(&v189[1]._object + 1) = v190;
            v192 = a4[2];
            v52 = __OFADD__(v192, 1);
            v193 = v192 + 1;
            a2 = v245;
            if (v52)
            {
              goto LABEL_157;
            }

            a4[2] = v193;
            a1 = v246;
            v23 = v244;
          }

          a1[14] = a4;
          swift_endAccess();
          sub_101010148(*&v185, v6);

          goto LABEL_122;
        }

        objc_opt_self();
        v167 = swift_dynamicCastObjCClass();
        if (v167)
        {
          v243 = v6;
          v168 = v167;
          [v167 doubleValue];
          v170 = v169;
          v171 = [v168 integerValue];
          a2 = v245;
          if (v170 == v171)
          {
            v172 = v171;
            v173 = a1;
            v174 = sub_1000DFAD8();
            swift_beginAccess();
            v251._countAndFlagsBits = v172;
            *&v252[8] = &type metadata for Int;
            *&v252[16] = v174;
            v252[24] = 2;
            v175 = swift_isUniquelyReferenced_nonNull_native();
            v250 = v173[14];
            v176 = v250;
            v173[14] = 0x8000000000000000;
            v177 = *&v248;
            v178 = sub_100771D58(*&v248, v249);
            v180 = v176[2];
            v181 = (v179 & 1) == 0;
            v52 = __OFADD__(v180, v181);
            v182 = v180 + v181;
            if (v52)
            {
              goto LABEL_161;
            }

            v183 = v179;
            if (v176[3] >= v182)
            {
              if ((v175 & 1) == 0)
              {
                v230 = v178;
                sub_1010050E8();
                v178 = v230;
              }
            }

            else
            {
              sub_100FE65C4(v182, v175);
              v178 = sub_100771D58(v177, v249);
              if ((v183 & 1) != (v184 & 1))
              {
                goto LABEL_168;
              }
            }

            v6 = v243;
            if (v183)
            {
              v209 = v178;

              a4 = v250;
              sub_10118B568(&v251, v250[7] + 48 * v209);
            }

            else
            {
              a4 = v250;
              v250[(v178 >> 6) + 8] |= 1 << v178;
              v210 = (a4[6] + 16 * v178);
              v211 = v249;
              *v210 = v177;
              v210[1] = v211;
              v212 = (a4[7] + 48 * v178);
              v213 = *&v252[9];
              v214 = *v252;
              *v212 = v251;
              v212[1] = v214;
              *(&v212[1]._object + 1) = v213;
              v215 = a4[2];
              v52 = __OFADD__(v215, 1);
              v216 = v215 + 1;
              if (v52)
              {
                goto LABEL_165;
              }

              a4[2] = v216;
            }

            a1 = v246;
            v23 = v244;
          }

          else
          {
            v199 = sub_1000DFA84();
            swift_beginAccess();
            *&v251._countAndFlagsBits = v170;
            *&v252[8] = &type metadata for Double;
            *&v252[16] = v199;
            v252[24] = 3;
            v200 = swift_isUniquelyReferenced_nonNull_native();
            v250 = a1[14];
            v201 = v250;
            a1[14] = 0x8000000000000000;
            v202 = sub_100771D58(*&v248, v249);
            v204 = v201[2];
            v205 = (v203 & 1) == 0;
            v52 = __OFADD__(v204, v205);
            v206 = v204 + v205;
            if (v52)
            {
              goto LABEL_163;
            }

            v207 = v203;
            if (v201[3] >= v206)
            {
              if ((v200 & 1) == 0)
              {
                v231 = v202;
                sub_1010050E8();
                v202 = v231;
              }
            }

            else
            {
              sub_100FE65C4(v206, v200);
              v202 = sub_100771D58(*&v248, v249);
              if ((v207 & 1) != (v208 & 1))
              {
                goto LABEL_168;
              }
            }

            v6 = v243;
            if (v207)
            {
              v217 = v202;

              a4 = v250;
              v218 = v250[7] + 48 * v217;
              v23 = v244;
              sub_10118B568(&v251, v218);
            }

            else
            {
              a4 = v250;
              v250[(v202 >> 6) + 8] |= 1 << v202;
              v219 = (a4[6] + 16 * v202);
              v220 = v249;
              *v219 = v248;
              *(v219 + 1) = v220;
              v221 = (a4[7] + 48 * v202);
              v222 = *&v252[9];
              v223 = *v252;
              *v221 = v251;
              v221[1] = v223;
              *(&v221[1]._object + 1) = v222;
              v224 = a4[2];
              v52 = __OFADD__(v224, 1);
              v225 = v224 + 1;
              if (v52)
              {
                goto LABEL_166;
              }

              a4[2] = v225;
            }

            a1 = v246;
          }

          a1[14] = a4;
          swift_endAccess();

          sub_101010148(*&v32, v6);
        }

        else
        {
          v248 = v32;

          a2 = v245;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v194 = type metadata accessor for Logger();
          sub_1000076D4(v194, qword_10177C6D0);
          v195 = v100;
          v154 = Logger.logObject.getter();
          a4 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v154, a4))
          {

            sub_101010148(*&v248, v6);
LABEL_122:

            goto LABEL_147;
          }

          v196 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          *v196 = v241;
          *(v196 + 4) = v195;
          *v197 = v195;
          v198 = v195;
          _os_log_impl(&_mh_execute_header, v154, a4, "Unsupported value type: %@!", v196, 0xCu);
          sub_10000B3A8(v197, &qword_10169BB30, &unk_10138B3C0);
          a1 = v246;

          v23 = v244;

          sub_101010148(*&v248, v6);
        }

LABEL_147:
        sub_10118B5A0(&v256);
      }

      else
      {
LABEL_21:
        if (v6 > 1)
        {
          if (v6 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v32];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:v32];
          }
        }

        else if (v6)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v32) & 1).super.super.isa;
        }

        else
        {
          isa = *&v32;
        }

        v39 = isa;
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = v40;
          v42 = v32;
          v13 = v6;
          v12 = v39;
          v43 = String.init(_:)(v41);
          v44 = sub_1000DF96C();
          swift_beginAccess();
          v256 = v43;
          *&v257[8] = &type metadata for String;
          *&v257[16] = v44;
          v257[24] = 1;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v253[0] = a1[14];
          v46 = v253[0];
          a1[14] = 0x8000000000000000;
          v47 = *&v248;
          v48 = sub_100771D58(*&v248, v249);
          v50 = *(v46 + 16);
          v51 = (v49 & 1) == 0;
          v52 = __OFADD__(v50, v51);
          v53 = v50 + v51;
          if (v52)
          {
            __break(1u);
            goto LABEL_153;
          }

          v54 = v49;
          if (*(v46 + 24) >= v53)
          {
            if ((v45 & 1) == 0)
            {
              v226 = v48;
              sub_1010050E8();
              v48 = v226;
            }
          }

          else
          {
            sub_100FE65C4(v53, v45);
            v48 = sub_100771D58(v47, v249);
            if ((v54 & 1) != (v55 & 1))
            {
              goto LABEL_168;
            }
          }

          v6 = v13;
          v74 = v42;
          if (v54)
          {
            v75 = v48;

            a4 = v253[0];
            sub_10118B568(&v256, *(v253[0] + 56) + 48 * v75);
            a2 = v245;
          }

          else
          {
            a4 = v253[0];
            *(v253[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
            v76 = (a4[6] + 16 * v48);
            v77 = v249;
            *v76 = v47;
            v76[1] = v77;
            v78 = (a4[7] + 48 * v48);
            v79 = *&v257[9];
            v80 = *v257;
            *v78 = v256;
            v78[1] = v80;
            *(&v78[1]._object + 1) = v79;
            v81 = a4[2];
            v52 = __OFADD__(v81, 1);
            v82 = v81 + 1;
            a2 = v245;
            if (v52)
            {
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a4[2] = v82;
          }

          a1 = v246;
          v246[14] = a4;
          swift_endAccess();

          sub_101010148(*&v74, v6);
          v23 = v244;
        }

        else
        {
          objc_opt_self();
          v56 = swift_dynamicCastObjCClass();
          if (v56)
          {
            v243 = v6;
            v57 = v56;
            [v56 doubleValue];
            v59 = v58;
            v60 = [v57 integerValue];
            a2 = v245;
            if (v59 == v60)
            {
              v61 = v60;
              v62 = a1;
              v63 = sub_1000DFAD8();
              swift_beginAccess();
              v256._countAndFlagsBits = v61;
              *&v257[8] = &type metadata for Int;
              *&v257[16] = v63;
              v257[24] = 2;
              v64 = swift_isUniquelyReferenced_nonNull_native();
              v253[0] = v62[14];
              v65 = v253[0];
              v62[14] = 0x8000000000000000;
              v66 = *&v248;
              v67 = sub_100771D58(*&v248, v249);
              v69 = *(v65 + 16);
              v70 = (v68 & 1) == 0;
              v52 = __OFADD__(v69, v70);
              v71 = v69 + v70;
              if (v52)
              {
                goto LABEL_156;
              }

              v72 = v68;
              if (*(v65 + 24) >= v71)
              {
                if ((v64 & 1) == 0)
                {
                  v228 = v67;
                  sub_1010050E8();
                  v67 = v228;
                }
              }

              else
              {
                sub_100FE65C4(v71, v64);
                v67 = sub_100771D58(v66, v249);
                if ((v72 & 1) != (v73 & 1))
                {
                  goto LABEL_168;
                }
              }

              v6 = v243;
              if (v72)
              {
                v114 = v67;

                a4 = v253[0];
                sub_10118B568(&v256, *(v253[0] + 56) + 48 * v114);
              }

              else
              {
                a4 = v253[0];
                *(v253[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
                v115 = (a4[6] + 16 * v67);
                v116 = v249;
                *v115 = v66;
                v115[1] = v116;
                v117 = (a4[7] + 48 * v67);
                v118 = *&v257[9];
                v119 = *v257;
                *v117 = v256;
                v117[1] = v119;
                *(&v117[1]._object + 1) = v118;
                v120 = a4[2];
                v52 = __OFADD__(v120, 1);
                v121 = v120 + 1;
                if (v52)
                {
                  goto LABEL_160;
                }

                a4[2] = v121;
              }

              a1 = v246;
              v23 = v244;
            }

            else
            {
              v104 = sub_1000DFA84();
              swift_beginAccess();
              *&v256._countAndFlagsBits = v59;
              *&v257[8] = &type metadata for Double;
              *&v257[16] = v104;
              v257[24] = 3;
              v105 = swift_isUniquelyReferenced_nonNull_native();
              v253[0] = a1[14];
              v106 = v253[0];
              a1[14] = 0x8000000000000000;
              v107 = sub_100771D58(*&v248, v249);
              v109 = *(v106 + 16);
              v110 = (v108 & 1) == 0;
              v52 = __OFADD__(v109, v110);
              v111 = v109 + v110;
              if (v52)
              {
                goto LABEL_159;
              }

              v112 = v108;
              if (*(v106 + 24) >= v111)
              {
                if ((v105 & 1) == 0)
                {
                  v229 = v107;
                  sub_1010050E8();
                  v107 = v229;
                }
              }

              else
              {
                sub_100FE65C4(v111, v105);
                v107 = sub_100771D58(*&v248, v249);
                if ((v112 & 1) != (v113 & 1))
                {
                  goto LABEL_168;
                }
              }

              v6 = v243;
              if (v112)
              {
                v122 = v107;

                a4 = v253[0];
                v123 = *(v253[0] + 56) + 48 * v122;
                v23 = v244;
                sub_10118B568(&v256, v123);
              }

              else
              {
                a4 = v253[0];
                *(v253[0] + 8 * (v107 >> 6) + 64) |= 1 << v107;
                v124 = (a4[6] + 16 * v107);
                v125 = v249;
                *v124 = v248;
                *(v124 + 1) = v125;
                v126 = (a4[7] + 48 * v107);
                v127 = *&v257[9];
                v128 = *v257;
                *v126 = v256;
                v126[1] = v128;
                *(&v126[1]._object + 1) = v127;
                v129 = a4[2];
                v52 = __OFADD__(v129, 1);
                v130 = v129 + 1;
                if (v52)
                {
                  goto LABEL_162;
                }

                a4[2] = v130;
              }

              a1 = v246;
            }

            a1[14] = a4;
            swift_endAccess();

            v99 = v32;
LABEL_82:
            sub_101010148(*&v99, v6);
          }

          else
          {
            v248 = v32;

            a2 = v245;
            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v93 = type metadata accessor for Logger();
            sub_1000076D4(v93, qword_10177C6D0);
            v94 = v39;
            v95 = Logger.logObject.getter();
            a4 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v95, a4))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *v96 = v241;
              *(v96 + 4) = v94;
              *v97 = v94;
              v98 = v94;
              _os_log_impl(&_mh_execute_header, v95, a4, "Unsupported value type: %@!", v96, 0xCu);
              sub_10000B3A8(v97, &qword_10169BB30, &unk_10138B3C0);
              a1 = v246;

              v23 = v244;

              v99 = v248;
              goto LABEL_82;
            }

            sub_101010148(*&v248, v6);
          }
        }
      }
    }

    while (1)
    {
      v25 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        return;
      }

      a3 = a2[v25];
      ++a5;
      if (a3)
      {
        a5 = v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_151:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_153:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C6D0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v256._countAndFlagsBits = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000136BC(v12, v13, &v256._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v15, v16, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v17, 0xCu);
    sub_100007BAC(v18);
  }
}

void sub_10118498C(void *a1, char a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  LOBYTE(v12) = a2;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v14 = a1[15];
    v15 = a1[16];
    v16 = sub_10111EACC(v14, v15, qword_10177C6E8);
    v223 = a1;
    if (v16)
    {
      break;
    }

    v218 = v7;
    v214 = a4;
    v215 = a6;
    v22 = sub_101166FD0(v12 & 1, a3, a4, a5, a6);
    v7 = v22 + 64;
    v23 = *(v22 + 64);
    v222 = v22;
    v24 = 1 << *(v22 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    a4 = v25 & v23;
    swift_beginAccess();
    a6 = 0;
    v26 = (v24 + 63) >> 6;
    *&v27 = 138412290;
    v217 = v27;
    v220 = v26;
    v221 = v7;
    while (a4)
    {
LABEL_15:
      v29 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
      v30 = (a6 << 10) | (16 * v29);
      v31 = *(v222 + 56);
      v32 = (*(v222 + 48) + v30);
      v33 = v32[1];
      v224 = *v32;
      v34 = v31 + v30;
      v12 = *v34;
      a3 = *(v34 + 8);
      v35 = a1[14];
      v36 = *(v35 + 16);
      v225 = v33;

      sub_10090C56C(v12, a3);
      if (v36)
      {

        v37 = sub_100771D58(v224, v225);
        if ((v38 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v35 + 56) + 48 * v37, &v232);

        if (a3 <= 1)
        {
          if (a3)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v39 = NSNumber.init(BOOLeanLiteral:)(v12 & 1).super.super.isa;
          }

          else
          {
            v39 = v12;
          }

          v95 = v39;
          goto LABEL_104;
        }

        if (a3 != 2)
        {
          sub_1010100EC(&v232, &v227);
          if (v228[24] != 3)
          {
LABEL_147:

            sub_10118B5A0(&v227);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v232);
            return;
          }

          sub_10000A748(&v227._countAndFlagsBits, v229);
          v96 = sub_1000035D0(v229, v230);
          __chkstk_darwin(v96);
          (*(v98 + 16))(v209 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v223;
          v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v227._countAndFlagsBits + *&v12];
          sub_100007BAC(v229);
          goto LABEL_104;
        }

        sub_1010100EC(&v232, &v227);
        if (v228[24] != 2)
        {
          goto LABEL_147;
        }

        v216 = v12;
        v219 = 2;
        sub_10000A748(&v227._countAndFlagsBits, v229);
        v83 = v230;
        v82 = v231;
        v84 = sub_1000035D0(v229, v230);
        v213 = v209;
        v85 = *(v83 - 8);
        v86 = v85[8];
        __chkstk_darwin(v84);
        (v85[2])(v209 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v227._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_90;
            }

            v212 = v82;
            v211 = v209;
            __chkstk_darwin(v87);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v88 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v85[1])(v209 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), v83);
            v82 = v212;
            if (v88)
            {
              goto LABEL_165;
            }
          }

          else
          {
            LODWORD(v211) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v122 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v211)
            {
              v212 = v82;
              if (v122 <= 64)
              {
                v211 = *(*(v82 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v210 = v209;
                __chkstk_darwin(AssociatedTypeWitness);
                v209[1] = v209 - v125;
                swift_getAssociatedConformanceWitness();
                v126 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v209[2] = v209;
                __chkstk_darwin(v126);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v127 = dispatch thunk of static Comparable.< infix(_:_:)();
                (v85[1])(v209 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), v83);
                if (v127)
                {
                  goto LABEL_165;
                }

                v82 = v212;
LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v211 = v209;
              __chkstk_darwin(v122);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v123 = dispatch thunk of static Comparable.< infix(_:_:)();
              v82 = v212;
              (v85[1])(v209 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), v83);
              if (v123)
              {
                goto LABEL_165;
              }
            }

            else if (v122 < 64)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v227._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v128 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v129 = v82;
          v130 = v128;
          v212 = v129;
          v131 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v130)
          {
            if (v131 > 64)
            {
              v210 = v209;
              __chkstk_darwin(v131);
              v211 = v85;
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v132 = dispatch thunk of static Comparable.< infix(_:_:)();
              v85 = v211;
              (v211[1])(v209 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), v83);
              goto LABEL_101;
            }
          }

          else if (v131 >= 64)
          {
            v211 = v209;
            __chkstk_darwin(v131);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v132 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v85[1])(v209 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), v83);
LABEL_101:
            if (v132)
            {
              goto LABEL_162;
            }

            goto LABEL_102;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_102:
        v133 = dispatch thunk of BinaryInteger._lowWord.getter();
        (v85[1])(v209 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), v83);
        v12 = v216;
        v53 = __OFADD__(v133, v216);
        v134 = &v216[v133];
        if (v53)
        {
          goto LABEL_156;
        }

        v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v134];
        sub_100007BAC(v229);
        a1 = v223;
        a3 = v219;
LABEL_104:
        objc_opt_self();
        v135 = swift_dynamicCastObjCClass();
        if (v135)
        {
          v136 = v135;
          v137 = v12;
          v138 = a3;
          v139 = v95;
          v140 = String.init(_:)(v136);
          v141 = sub_1000DF96C();
          swift_beginAccess();
          v227 = v140;
          *&v228[8] = &type metadata for String;
          *&v228[16] = v141;
          v228[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v226 = a1[14];
          v143 = v226;
          a1[14] = 0x8000000000000000;
          v144 = sub_100771D58(v224, v225);
          v146 = v143[2];
          v147 = (v145 & 1) == 0;
          v53 = __OFADD__(v146, v147);
          v148 = v146 + v147;
          if (v53)
          {
            goto LABEL_153;
          }

          a3 = v145;
          if (v143[3] >= v148)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v204 = v144;
              sub_1010050E8();
              v144 = v204;
            }
          }

          else
          {
            sub_100FE65C4(v148, isUniquelyReferenced_nonNull_native);
            v144 = sub_100771D58(v224, v225);
            if ((a3 & 1) != (v149 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v223;
          v12 = v137;
          if (a3)
          {
            a3 = v144;

            a5 = v226;
            sub_10118B568(&v227, v226[7] + 48 * a3);
          }

          else
          {
            a5 = v226;
            v226[(v144 >> 6) + 8] |= 1 << v144;
            v167 = (a5[6] + 16 * v144);
            v168 = v225;
            *v167 = v224;
            v167[1] = v168;
            v169 = (a5[7] + 48 * v144);
            v170 = *&v228[9];
            v171 = *v228;
            *v169 = v227;
            v169[1] = v171;
            *(&v169[1]._object + 1) = v170;
            v172 = a5[2];
            v53 = __OFADD__(v172, 1);
            v173 = v172 + 1;
            if (v53)
            {
              goto LABEL_155;
            }

            a5[2] = v173;
          }

          v26 = v220;
          a1[14] = a5;
          swift_endAccess();
          sub_101010148(v12, v138);

          v7 = v221;
        }

        else
        {

          objc_opt_self();
          v150 = swift_dynamicCastObjCClass();
          if (v150)
          {
            v151 = v12;
            v219 = a3;
            v152 = v150;
            [v150 doubleValue];
            v154 = v153;
            v155 = [v152 integerValue];
            v7 = v221;
            if (v154 == v155)
            {
              v156 = v155;
              v157 = sub_1000DFAD8();
              swift_beginAccess();
              v227._countAndFlagsBits = v156;
              *&v228[8] = &type metadata for Int;
              *&v228[16] = v157;
              v228[24] = 2;
              v158 = swift_isUniquelyReferenced_nonNull_native();
              v226 = a1[14];
              v159 = v226;
              a1[14] = 0x8000000000000000;
              v160 = sub_100771D58(v224, v225);
              v162 = v159[2];
              v163 = (v161 & 1) == 0;
              v53 = __OFADD__(v162, v163);
              v164 = v162 + v163;
              if (v53)
              {
                goto LABEL_159;
              }

              v165 = v161;
              if (v159[3] >= v164)
              {
                if ((v158 & 1) == 0)
                {
                  v207 = v160;
                  sub_1010050E8();
                  v160 = v207;
                }
              }

              else
              {
                sub_100FE65C4(v164, v158);
                v160 = sub_100771D58(v224, v225);
                if ((v165 & 1) != (v166 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v223;
              v12 = v151;
              if ((v165 & 1) == 0)
              {
                a5 = v226;
                v226[(v160 >> 6) + 8] |= 1 << v160;
                v189 = (a5[6] + 16 * v160);
                v190 = v225;
                *v189 = v224;
                v189[1] = v190;
                v191 = (a5[7] + 48 * v160);
                v192 = *&v228[9];
                v193 = *v228;
                *v191 = v227;
                v191[1] = v193;
                *(&v191[1]._object + 1) = v192;
                v194 = a5[2];
                v53 = __OFADD__(v194, 1);
                v195 = v194 + 1;
                if (v53)
                {
                  goto LABEL_163;
                }

                goto LABEL_143;
              }

LABEL_141:
              v196 = v160;

              a5 = v226;
              sub_10118B568(&v227, v226[7] + 48 * v196);
            }

            else
            {
              v180 = sub_1000DFA84();
              swift_beginAccess();
              *&v227._countAndFlagsBits = v154;
              *&v228[8] = &type metadata for Double;
              *&v228[16] = v180;
              v228[24] = 3;
              v181 = swift_isUniquelyReferenced_nonNull_native();
              v226 = a1[14];
              v182 = v226;
              a1[14] = 0x8000000000000000;
              v160 = sub_100771D58(v224, v225);
              v184 = v182[2];
              v185 = (v183 & 1) == 0;
              v53 = __OFADD__(v184, v185);
              v186 = v184 + v185;
              if (v53)
              {
                goto LABEL_161;
              }

              v187 = v183;
              if (v182[3] >= v186)
              {
                if ((v181 & 1) == 0)
                {
                  v208 = v160;
                  sub_1010050E8();
                  v160 = v208;
                }
              }

              else
              {
                sub_100FE65C4(v186, v181);
                v160 = sub_100771D58(v224, v225);
                if ((v187 & 1) != (v188 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v223;
              v12 = v151;
              if (v187)
              {
                goto LABEL_141;
              }

              a5 = v226;
              v226[(v160 >> 6) + 8] |= 1 << v160;
              v197 = (a5[6] + 16 * v160);
              v198 = v225;
              *v197 = v224;
              v197[1] = v198;
              v199 = (a5[7] + 48 * v160);
              v200 = *&v228[9];
              v201 = *v228;
              *v199 = v227;
              v199[1] = v201;
              *(&v199[1]._object + 1) = v200;
              v202 = a5[2];
              v53 = __OFADD__(v202, 1);
              v195 = v202 + 1;
              if (v53)
              {
                goto LABEL_164;
              }

LABEL_143:
              a5[2] = v195;
            }

            v26 = v220;
            a3 = v219;
            a1[14] = a5;
            swift_endAccess();

            sub_101010148(v12, a3);
            goto LABEL_145;
          }

          v7 = v221;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v174 = type metadata accessor for Logger();
          sub_1000076D4(v174, qword_10177C6D0);
          v175 = v95;
          v176 = Logger.logObject.getter();
          a5 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v176, a5))
          {
            v177 = swift_slowAlloc();
            v219 = a3;
            a3 = v177;
            v178 = COERCE_DOUBLE(swift_slowAlloc());
            v216 = v12;
            *&v12 = v178;
            *a3 = v217;
            *(a3 + 4) = v175;
            **&v178 = v175;
            v179 = v175;
            _os_log_impl(&_mh_execute_header, v176, a5, "Unsupported value type: %@!", a3, 0xCu);
            sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
            a1 = v223;

            sub_101010148(v216, v219);
          }

          else
          {

            sub_101010148(v12, a3);
          }

          v26 = v220;
        }

LABEL_145:
        sub_10118B5A0(&v232);
      }

      else
      {
LABEL_21:
        if (a3 > 1)
        {
          if (a3 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:v12];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v12];
          }
        }

        else if (a3)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v12 & 1).super.super.isa;
        }

        else
        {
          isa = v12;
        }

        v41 = isa;
        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (v42)
        {
          v43 = v42;
          v44 = v12;
          v15 = a3;
          v14 = v41;
          v45 = String.init(_:)(v43);
          v46 = sub_1000DF96C();
          swift_beginAccess();
          v232 = v45;
          *&v233[8] = &type metadata for String;
          *&v233[16] = v46;
          v233[24] = 1;
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v229[0] = a1[14];
          v48 = v229[0];
          a1[14] = 0x8000000000000000;
          v49 = sub_100771D58(v224, v225);
          v51 = *(v48 + 16);
          v52 = (v50 & 1) == 0;
          v53 = __OFADD__(v51, v52);
          v54 = v51 + v52;
          if (v53)
          {
            __break(1u);
            goto LABEL_151;
          }

          a3 = v50;
          if (*(v48 + 24) >= v54)
          {
            if ((v47 & 1) == 0)
            {
              v203 = v49;
              sub_1010050E8();
              v49 = v203;
            }
          }

          else
          {
            sub_100FE65C4(v54, v47);
            v49 = sub_100771D58(v224, v225);
            if ((a3 & 1) != (v55 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v223;
          v12 = v44;
          v7 = v221;
          if (a3)
          {
            a3 = v49;

            a5 = v229[0];
            sub_10118B568(&v232, *(v229[0] + 56) + 48 * a3);
          }

          else
          {
            a5 = v229[0];
            *(v229[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
            v73 = (a5[6] + 16 * v49);
            v74 = v225;
            *v73 = v224;
            v73[1] = v74;
            v75 = (a5[7] + 48 * v49);
            v76 = *&v233[9];
            v77 = *v233;
            *v75 = v232;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = a5[2];
            v53 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v53)
            {
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a5[2] = v79;
          }

          a1[14] = a5;
          swift_endAccess();

          v80 = v12;
          v81 = v15;
          goto LABEL_46;
        }

        objc_opt_self();
        v56 = swift_dynamicCastObjCClass();
        if (v56)
        {
          v57 = v12;
          v219 = a3;
          v58 = v56;
          [v56 doubleValue];
          v60 = v59;
          v61 = [v58 integerValue];
          v7 = v221;
          if (v60 == v61)
          {
            v62 = v61;
            v63 = sub_1000DFAD8();
            swift_beginAccess();
            v232._countAndFlagsBits = v62;
            *&v233[8] = &type metadata for Int;
            *&v233[16] = v63;
            v233[24] = 2;
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v229[0] = a1[14];
            v65 = v229[0];
            a1[14] = 0x8000000000000000;
            v66 = sub_100771D58(v224, v225);
            v68 = *(v65 + 16);
            v69 = (v67 & 1) == 0;
            v53 = __OFADD__(v68, v69);
            v70 = v68 + v69;
            if (v53)
            {
              goto LABEL_154;
            }

            v71 = v67;
            if (*(v65 + 24) >= v70)
            {
              if ((v64 & 1) == 0)
              {
                v205 = v66;
                sub_1010050E8();
                v66 = v205;
              }
            }

            else
            {
              sub_100FE65C4(v70, v64);
              v66 = sub_100771D58(v224, v225);
              if ((v71 & 1) != (v72 & 1))
              {
                goto LABEL_166;
              }
            }

            a1 = v223;
            v12 = v57;
            if (v71)
            {
              goto LABEL_78;
            }

            a5 = v229[0];
            *(v229[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
            v108 = (a5[6] + 16 * v66);
            v109 = v225;
            *v108 = v224;
            v108[1] = v109;
            v110 = (a5[7] + 48 * v66);
            v111 = *&v233[9];
            v112 = *v233;
            *v110 = v232;
            v110[1] = v112;
            *(&v110[1]._object + 1) = v111;
            v113 = a5[2];
            v53 = __OFADD__(v113, 1);
            v114 = v113 + 1;
            if (v53)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v99 = sub_1000DFA84();
            swift_beginAccess();
            *&v232._countAndFlagsBits = v60;
            *&v233[8] = &type metadata for Double;
            *&v233[16] = v99;
            v233[24] = 3;
            v100 = swift_isUniquelyReferenced_nonNull_native();
            v229[0] = a1[14];
            v101 = v229[0];
            a1[14] = 0x8000000000000000;
            v66 = sub_100771D58(v224, v225);
            v103 = *(v101 + 16);
            v104 = (v102 & 1) == 0;
            v53 = __OFADD__(v103, v104);
            v105 = v103 + v104;
            if (v53)
            {
              goto LABEL_157;
            }

            v106 = v102;
            if (*(v101 + 24) >= v105)
            {
              if ((v100 & 1) == 0)
              {
                v206 = v66;
                sub_1010050E8();
                v66 = v206;
              }
            }

            else
            {
              sub_100FE65C4(v105, v100);
              v66 = sub_100771D58(v224, v225);
              if ((v106 & 1) != (v107 & 1))
              {
                goto LABEL_166;
              }
            }

            a1 = v223;
            v12 = v57;
            if (v106)
            {
LABEL_78:
              v115 = v66;

              a5 = v229[0];
              sub_10118B568(&v232, *(v229[0] + 56) + 48 * v115);
              goto LABEL_81;
            }

            a5 = v229[0];
            *(v229[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
            v116 = (a5[6] + 16 * v66);
            v117 = v225;
            *v116 = v224;
            v116[1] = v117;
            v118 = (a5[7] + 48 * v66);
            v119 = *&v233[9];
            v120 = *v233;
            *v118 = v232;
            v118[1] = v120;
            *(&v118[1]._object + 1) = v119;
            v121 = a5[2];
            v53 = __OFADD__(v121, 1);
            v114 = v121 + 1;
            if (v53)
            {
              goto LABEL_160;
            }
          }

          a5[2] = v114;
LABEL_81:
          v26 = v220;
          a3 = v219;
          a1[14] = a5;
          swift_endAccess();

          sub_101010148(v12, a3);
        }

        else
        {

          v7 = v221;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v89 = type metadata accessor for Logger();
          sub_1000076D4(v89, qword_10177C6D0);
          v90 = v41;
          v91 = Logger.logObject.getter();
          a5 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v91, a5))
          {
            v92 = swift_slowAlloc();
            v219 = a3;
            a3 = v92;
            v93 = COERCE_DOUBLE(swift_slowAlloc());
            v216 = v12;
            *&v12 = v93;
            *a3 = v217;
            *(a3 + 4) = v90;
            **&v93 = v90;
            v94 = v90;
            _os_log_impl(&_mh_execute_header, v91, a5, "Unsupported value type: %@!", a3, 0xCu);
            sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
            a1 = v223;

            v80 = v216;
            v81 = v219;
LABEL_46:
            sub_101010148(v80, v81);
            goto LABEL_47;
          }

          sub_101010148(v12, a3);
LABEL_47:
          v26 = v220;
        }
      }
    }

    while (1)
    {
      v28 = a6 + 1;
      if (__OFADD__(a6, 1))
      {
        break;
      }

      if (v28 >= v26)
      {

        return;
      }

      a4 = *(v7 + 8 * v28);
      ++a6;
      if (a4)
      {
        a6 = v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_149:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C6D0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v232._countAndFlagsBits = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(v14, v15, &v232._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v18, v19, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v20, 0xCu);
    sub_100007BAC(v21);
  }
}

void sub_1011864A4(void *a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v7 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v7, object, qword_10177C6E8))
    {
      break;
    }

    v237 = v4;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0x726F727265;
    *(inited + 40) = 0xE500000000000000;
    v235 = a3;
    *(inited + 48) = String._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v15 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v4 = v18 & *(v15 + 64);
    swift_beginAccess();
    v19 = 0;
    a3 = (v17 + 63) >> 6;
    *&v20 = 138412290;
    v236 = v20;
    v239 = a1;
    v238 = v15;
    while (v4)
    {
LABEL_15:
      v22 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v23 = (v19 << 10) | (16 * v22);
      v24 = *(v15 + 56);
      v25 = (*(v15 + 48) + v23);
      v26 = v25[1];
      v242 = *v25;
      v27 = (v24 + v23);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = a1[14];
      v31 = *(v30 + 16);
      v243 = v26;

      v241 = v28;
      sub_10090C56C(v28, v29);
      v240 = v29;
      if (v31)
      {

        v32 = sub_100771D58(v242, v243);
        if ((v33 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v30 + 56) + 48 * v32, &v250);

        if (v29 <= 1)
        {
          if (v29)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v34 = NSNumber.init(BOOLeanLiteral:)(v241 & 1).super.super.isa;
          }

          else
          {
            v34 = v241;
          }

          v96 = v34;
          goto LABEL_102;
        }

        if (v29 != 2)
        {
          sub_1010100EC(&v250, &v245);
          if (BYTE8(v246[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v245);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v250);
            return;
          }

          v97 = v241;
          sub_10000A748(&v245._countAndFlagsBits, v247);
          v98 = sub_1000035D0(v247, v248);
          __chkstk_darwin(v98);
          (*(v100 + 16))(v229 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v239;
          v96 = [objc_allocWithZone(NSNumber) initWithDouble:*&v245._countAndFlagsBits + *&v97];
          sub_100007BAC(v247);
          goto LABEL_102;
        }

        sub_1010100EC(&v250, &v245);
        if (BYTE8(v246[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v245._countAndFlagsBits, v247);
        v80 = v248;
        v79 = v249;
        v81 = sub_1000035D0(v247, v248);
        v233 = v229;
        __chkstk_darwin(v81);
        v231 = v82;
        v83 = v229 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
        v234 = v84;
        (*(v84 + 16))(v83);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v245._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v85 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v85 < 64)
            {
              goto LABEL_89;
            }

            v232 = v79;
            v230 = v229;
            __chkstk_darwin(v85);
            v87 = v229 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v88 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v234 + 8))(v87, v80);
            v79 = v232;
            if (v88)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v230) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v128 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v230)
            {
              v232 = v79;
              if (v128 <= 64)
              {
                v230 = *(*(v79 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v229[3] = v229;
                __chkstk_darwin(AssociatedTypeWitness);
                v229[1] = v229 - v134;
                swift_getAssociatedConformanceWitness();
                v135 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v229[2] = v229;
                __chkstk_darwin(v135);
                v137 = v229 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v138 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v234 + 8))(v137, v80);
                if (v138)
                {
                  goto LABEL_163;
                }

                v79 = v232;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v230 = v229;
              __chkstk_darwin(v128);
              v130 = v229 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v131 = dispatch thunk of static Comparable.< infix(_:_:)();
              v132 = v130;
              v79 = v232;
              (*(v234 + 8))(v132, v80);
              if (v131)
              {
                goto LABEL_163;
              }
            }

            else if (v128 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v245._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v139 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v140 = v79;
          v141 = v139;
          v232 = v140;
          v142 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v141)
          {
            if (v142 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v142 >= 64)
          {
LABEL_93:
            v230 = v229;
            __chkstk_darwin(v142);
            v231 = v229 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v144 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v234 + 8))(v231, v80);
            if (v144)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v145 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v234 + 8))(v83, v80);
        v48 = __OFADD__(v145, v241);
        v146 = &v241[v145];
        if (v48)
        {
          goto LABEL_154;
        }

        v96 = [objc_allocWithZone(NSNumber) initWithLongLong:v146];
        sub_100007BAC(v247);
        a1 = v239;
LABEL_102:
        objc_opt_self();
        v147 = swift_dynamicCastObjCClass();
        if (v147)
        {
          v148 = v147;
          v149 = v96;
          v150 = String.init(_:)(v148);
          v151 = a1;
          v152 = sub_1000DF96C();
          swift_beginAccess();
          v245 = v150;
          *(&v246[0] + 1) = &type metadata for String;
          *&v246[1] = v152;
          BYTE8(v246[1]) = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v244 = v151[14];
          v154 = v244;
          v151[14] = 0x8000000000000000;
          v155 = sub_100771D58(v242, v243);
          v157 = v154[2];
          v158 = (v156 & 1) == 0;
          v48 = __OFADD__(v157, v158);
          v159 = v157 + v158;
          if (v48)
          {
            goto LABEL_151;
          }

          v160 = v156;
          if (v154[3] >= v159)
          {
            v15 = v238;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v224 = v155;
              sub_1010050E8();
              v155 = v224;
            }
          }

          else
          {
            sub_100FE65C4(v159, isUniquelyReferenced_nonNull_native);
            v155 = sub_100771D58(v242, v243);
            v15 = v238;
            if ((v160 & 1) != (v161 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v239;
          if (v160)
          {
            v180 = v155;

            v181 = v244;
            sub_10118B568(&v245, v244[7] + 48 * v180);
          }

          else
          {
            v181 = v244;
            v244[(v155 >> 6) + 8] |= 1 << v155;
            v182 = (v181[6] + 16 * v155);
            v183 = v243;
            *v182 = v242;
            v182[1] = v183;
            v184 = (v181[7] + 48 * v155);
            v185 = *(v246 + 9);
            v186 = v246[0];
            *v184 = v245;
            v184[1] = v186;
            *(&v184[1]._object + 1) = v185;
            v187 = v181[2];
            v48 = __OFADD__(v187, 1);
            v188 = v187 + 1;
            if (v48)
            {
              goto LABEL_153;
            }

            v181[2] = v188;
          }

          v189 = v240;
          a1[14] = v181;
          swift_endAccess();
          sub_101010148(v241, v189);

          goto LABEL_120;
        }

        objc_opt_self();
        v162 = swift_dynamicCastObjCClass();
        if (v162)
        {
          v163 = v162;
          [v162 doubleValue];
          v165 = v164;
          v166 = [v163 integerValue];
          if (v165 == v166)
          {
            v167 = v166;
            v168 = sub_1000DFAD8();
            swift_beginAccess();
            v245._countAndFlagsBits = v167;
            *(&v246[0] + 1) = &type metadata for Int;
            *&v246[1] = v168;
            BYTE8(v246[1]) = 2;
            v169 = swift_isUniquelyReferenced_nonNull_native();
            v170 = a1;
            v171 = v169;
            v244 = v170[14];
            v172 = v244;
            v170[14] = 0x8000000000000000;
            v173 = sub_100771D58(v242, v243);
            v175 = v172[2];
            v176 = (v174 & 1) == 0;
            v48 = __OFADD__(v175, v176);
            v177 = v175 + v176;
            if (v48)
            {
              goto LABEL_157;
            }

            v178 = v174;
            if (v172[3] >= v177)
            {
              if ((v171 & 1) == 0)
              {
                v227 = v173;
                sub_1010050E8();
                v173 = v227;
              }
            }

            else
            {
              sub_100FE65C4(v177, v171);
              v173 = sub_100771D58(v242, v243);
              if ((v178 & 1) != (v179 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v239;
            if ((v178 & 1) == 0)
            {
              v207 = v244;
              v244[(v173 >> 6) + 8] |= 1 << v173;
              v208 = (v207[6] + 16 * v173);
              v209 = v243;
              *v208 = v242;
              v208[1] = v209;
              v210 = (v207[7] + 48 * v173);
              v211 = *(v246 + 9);
              v212 = v246[0];
              *v210 = v245;
              v210[1] = v212;
              *(&v210[1]._object + 1) = v211;
              v213 = v207[2];
              v48 = __OFADD__(v213, 1);
              v214 = v213 + 1;
              if (v48)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v215 = v173;

            v207 = v244;
            sub_10118B568(&v245, v244[7] + 48 * v215);
          }

          else
          {
            v196 = sub_1000DFA84();
            swift_beginAccess();
            *&v245._countAndFlagsBits = v165;
            *(&v246[0] + 1) = &type metadata for Double;
            *&v246[1] = v196;
            BYTE8(v246[1]) = 3;
            v197 = swift_isUniquelyReferenced_nonNull_native();
            v198 = a1;
            v199 = v197;
            v244 = v198[14];
            v200 = v244;
            v198[14] = 0x8000000000000000;
            v173 = sub_100771D58(v242, v243);
            v202 = v200[2];
            v203 = (v201 & 1) == 0;
            v48 = __OFADD__(v202, v203);
            v204 = v202 + v203;
            if (v48)
            {
              goto LABEL_159;
            }

            v205 = v201;
            if (v200[3] >= v204)
            {
              if ((v199 & 1) == 0)
              {
                v228 = v173;
                sub_1010050E8();
                v173 = v228;
              }
            }

            else
            {
              sub_100FE65C4(v204, v199);
              v173 = sub_100771D58(v242, v243);
              if ((v205 & 1) != (v206 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v239;
            if (v205)
            {
              goto LABEL_139;
            }

            v207 = v244;
            v244[(v173 >> 6) + 8] |= 1 << v173;
            v216 = (v207[6] + 16 * v173);
            v217 = v243;
            *v216 = v242;
            v216[1] = v217;
            v218 = (v207[7] + 48 * v173);
            v219 = *(v246 + 9);
            v220 = v246[0];
            *v218 = v245;
            v218[1] = v220;
            *(&v218[1]._object + 1) = v219;
            v221 = v207[2];
            v48 = __OFADD__(v221, 1);
            v214 = v221 + 1;
            if (v48)
            {
              goto LABEL_162;
            }

LABEL_141:
            v207[2] = v214;
          }

          v222 = v240;
          a1[14] = v207;
          swift_endAccess();

          sub_101010148(v241, v222);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v190 = type metadata accessor for Logger();
        sub_1000076D4(v190, qword_10177C6D0);
        v191 = v96;
        v149 = Logger.logObject.getter();
        v192 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v149, v192))
        {

          sub_101010148(v241, v240);
LABEL_120:

          goto LABEL_143;
        }

        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *v193 = v236;
        *(v193 + 4) = v191;
        *v194 = v191;
        v195 = v191;
        _os_log_impl(&_mh_execute_header, v149, v192, "Unsupported value type: %@!", v193, 0xCu);
        sub_10000B3A8(v194, &qword_10169BB30, &unk_10138B3C0);
        v15 = v238;

        a1 = v239;

        sub_101010148(v241, v240);
LABEL_143:
        sub_10118B5A0(&v250);
      }

      else
      {
LABEL_21:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v36 = objc_allocWithZone(NSNumber);
            isa = [v36 initWithLongLong:v241];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v241];
          }
        }

        else if (v29)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v241 & 1).super.super.isa;
        }

        else
        {
          isa = v241;
        }

        v37 = isa;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          v7 = v37;
          v40 = String.init(_:)(v39);
          object = v40._object;
          v41 = sub_1000DF96C();
          swift_beginAccess();
          v250 = v40;
          *&v251[8] = &type metadata for String;
          *&v251[16] = v41;
          v251[24] = 1;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v247[0] = a1[14];
          v43 = v247[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_100771D58(v242, v243);
          v46 = *(v43 + 16);
          v47 = (v45 & 1) == 0;
          v48 = __OFADD__(v46, v47);
          v49 = v46 + v47;
          if (v48)
          {
            __break(1u);
            goto LABEL_149;
          }

          v50 = v45;
          if (*(v43 + 24) >= v49)
          {
            if ((v42 & 1) == 0)
            {
              v223 = v44;
              sub_1010050E8();
              v44 = v223;
            }
          }

          else
          {
            sub_100FE65C4(v49, v42);
            v44 = sub_100771D58(v242, v243);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v239;
          v15 = v238;
          if (v50)
          {
            v70 = v44;

            v71 = v247[0];
            sub_10118B568(&v250, *(v247[0] + 56) + 48 * v70);
          }

          else
          {
            v71 = v247[0];
            *(v247[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v72 = (v71[6] + 16 * v44);
            v73 = v243;
            *v72 = v242;
            v72[1] = v73;
            v74 = (v71[7] + 48 * v44);
            v75 = *&v251[9];
            v76 = *v251;
            *v74 = v250;
            v74[1] = v76;
            *(&v74[1]._object + 1) = v75;
            v77 = v71[2];
            v48 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (v48)
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v71[2] = v78;
          }

          a1[14] = v71;
          swift_endAccess();

LABEL_46:
          sub_101010148(v241, v240);
        }

        else
        {
          objc_opt_self();
          v52 = swift_dynamicCastObjCClass();
          if (v52)
          {
            v53 = v52;
            [v52 doubleValue];
            v55 = v54;
            v56 = [v53 integerValue];
            if (v55 == v56)
            {
              v57 = v56;
              v58 = sub_1000DFAD8();
              swift_beginAccess();
              v250._countAndFlagsBits = v57;
              *&v251[8] = &type metadata for Int;
              *&v251[16] = v58;
              v251[24] = 2;
              v59 = swift_isUniquelyReferenced_nonNull_native();
              v60 = a1;
              v61 = v59;
              v247[0] = v60[14];
              v62 = v247[0];
              v60[14] = 0x8000000000000000;
              v63 = sub_100771D58(v242, v243);
              v65 = *(v62 + 16);
              v66 = (v64 & 1) == 0;
              v48 = __OFADD__(v65, v66);
              v67 = v65 + v66;
              if (v48)
              {
                goto LABEL_152;
              }

              v68 = v64;
              if (*(v62 + 24) >= v67)
              {
                if ((v61 & 1) == 0)
                {
                  v225 = v63;
                  sub_1010050E8();
                  v63 = v225;
                }
              }

              else
              {
                sub_100FE65C4(v67, v61);
                v63 = sub_100771D58(v242, v243);
                if ((v68 & 1) != (v69 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v239;
              if (v68)
              {
                goto LABEL_77;
              }

              v112 = v247[0];
              *(v247[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v113 = (v112[6] + 16 * v63);
              v114 = v243;
              *v113 = v242;
              v113[1] = v114;
              v115 = (v112[7] + 48 * v63);
              v116 = *&v251[9];
              v117 = *v251;
              *v115 = v250;
              v115[1] = v117;
              *(&v115[1]._object + 1) = v116;
              v118 = v112[2];
              v48 = __OFADD__(v118, 1);
              v119 = v118 + 1;
              if (v48)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v101 = sub_1000DFA84();
              swift_beginAccess();
              *&v250._countAndFlagsBits = v55;
              *&v251[8] = &type metadata for Double;
              *&v251[16] = v101;
              v251[24] = 3;
              v102 = swift_isUniquelyReferenced_nonNull_native();
              v103 = a1;
              v104 = v102;
              v247[0] = v103[14];
              v105 = v247[0];
              v103[14] = 0x8000000000000000;
              v63 = sub_100771D58(v242, v243);
              v107 = *(v105 + 16);
              v108 = (v106 & 1) == 0;
              v48 = __OFADD__(v107, v108);
              v109 = v107 + v108;
              if (v48)
              {
                goto LABEL_155;
              }

              v110 = v106;
              if (*(v105 + 24) >= v109)
              {
                if ((v104 & 1) == 0)
                {
                  v226 = v63;
                  sub_1010050E8();
                  v63 = v226;
                }
              }

              else
              {
                sub_100FE65C4(v109, v104);
                v63 = sub_100771D58(v242, v243);
                if ((v110 & 1) != (v111 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v239;
              if (v110)
              {
LABEL_77:
                v120 = v63;

                v112 = v247[0];
                sub_10118B568(&v250, *(v247[0] + 56) + 48 * v120);
                goto LABEL_80;
              }

              v112 = v247[0];
              *(v247[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v121 = (v112[6] + 16 * v63);
              v122 = v243;
              *v121 = v242;
              v121[1] = v122;
              v123 = (v112[7] + 48 * v63);
              v124 = *&v251[9];
              v125 = *v251;
              *v123 = v250;
              v123[1] = v125;
              *(&v123[1]._object + 1) = v124;
              v126 = v112[2];
              v48 = __OFADD__(v126, 1);
              v119 = v126 + 1;
              if (v48)
              {
                goto LABEL_158;
              }
            }

            v112[2] = v119;
LABEL_80:
            v127 = v240;
            a1[14] = v112;
            swift_endAccess();

            sub_101010148(v241, v127);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v89 = type metadata accessor for Logger();
            sub_1000076D4(v89, qword_10177C6D0);
            v90 = v37;
            v91 = Logger.logObject.getter();
            v92 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              *v93 = v236;
              *(v93 + 4) = v90;
              *v94 = v90;
              v95 = v90;
              _os_log_impl(&_mh_execute_header, v91, v92, "Unsupported value type: %@!", v93, 0xCu);
              sub_10000B3A8(v94, &qword_10169BB30, &unk_10138B3C0);
              v15 = v238;

              a1 = v239;

              goto LABEL_46;
            }

            sub_101010148(v241, v240);
          }
        }
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= a3)
      {

        return;
      }

      v4 = *(v16 + 8 * v21);
      ++v19;
      if (v4)
      {
        v19 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C6D0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v250._countAndFlagsBits = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1000136BC(v7, object, &v250._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v10, v11, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v12, 0xCu);
    sub_100007BAC(v13);
  }
}

void sub_101188008(void *a1, uint64_t a2, int64_t a3, uint64_t a4, int64_t a5)
{
  v6 = v5;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v10 = a1[15];
    v11 = a1[16];
    if (sub_10111EACC(v10, v11, qword_10177C6E8))
    {
      break;
    }

    v238 = v6;
    v236 = a3;
    v235 = a5;
    v17 = sub_101167D1C();
    v19 = v17 + 64;
    v18 = *(v17 + 64);
    v242 = v17;
    v20 = 1 << *(v17 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    swift_beginAccess();
    a5 = 0;
    a3 = (v20 + 63) >> 6;
    *&v23 = 138412290;
    v237 = v23;
    v241 = a1;
    v239 = a3;
    v240 = v19;
    while (v22)
    {
LABEL_19:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = (a5 << 10) | (16 * v27);
      v29 = *(v242 + 56);
      v30 = (*(v242 + 48) + v28);
      v31 = v30[1];
      v243 = *v30;
      v32 = v29 + v28;
      v6 = *v32;
      v33 = *(v32 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v244 = v31;

      sub_10090C56C(*&v6, v33);
      if (v35)
      {

        v36 = sub_100771D58(v243, v244);
        if (v37)
        {
          sub_1010100EC(*(v34 + 56) + 48 * v36, &v251);

          if (v33 <= 1)
          {
            if (v33)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v38 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
            }

            else
            {
              v38 = *&v6;
            }

            v100 = v38;
            goto LABEL_107;
          }

          if (v33 != 2)
          {
            sub_1010100EC(&v251, &v246);
            if (v247[24] != 3)
            {
LABEL_147:

              sub_10118B5A0(&v246);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v251);
              return;
            }

            sub_10000A748(&v246._countAndFlagsBits, v248);
            v101 = sub_1000035D0(v248, v249);
            __chkstk_darwin(v101);
            (*(v103 + 16))(v228 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v241;
            v100 = [objc_allocWithZone(NSNumber) initWithDouble:*&v246._countAndFlagsBits + v6];
            sub_100007BAC(v248);
            goto LABEL_107;
          }

          sub_1010100EC(&v251, &v246);
          if (v247[24] != 2)
          {
            goto LABEL_147;
          }

          v233 = v6;
          sub_10000A748(&v246._countAndFlagsBits, v248);
          v82 = v249;
          v81 = v250;
          v83 = sub_1000035D0(v248, v249);
          v234 = v228;
          v84 = *(v82 - 8);
          __chkstk_darwin(v83);
          v232 = v85;
          v86 = v228 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v84[2])(v86);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_94;
          }

          v246._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 >= 64)
            {
              v230 = v81;
              v231 = v228;
              __chkstk_darwin(v87);
              v89 = v228 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v90 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v84[1])(v89, v82);
              if (v90)
              {
                goto LABEL_165;
              }

              goto LABEL_94;
            }

LABEL_93:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_94;
          }

          LODWORD(v231) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v130 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v231 & 1) == 0)
          {
            if (v130 >= 64)
            {
              goto LABEL_94;
            }

            goto LABEL_93;
          }

          v230 = v81;
          if (v130 <= 64)
          {
            v231 = *(*(v81 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v229 = v228;
            __chkstk_darwin(AssociatedTypeWitness);
            v228[0] = v228 - v135;
            swift_getAssociatedConformanceWitness();
            v136 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v228[1] = v228;
            __chkstk_darwin(v136);
            v138 = v228 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v139 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v84[1])(v138, v82);
            if (v139)
            {
              goto LABEL_165;
            }

            goto LABEL_93;
          }

          v231 = v228;
          __chkstk_darwin(v130);
          v132 = v228 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v133 = dispatch thunk of static Comparable.< infix(_:_:)();
          (v84[1])(v132, v82);
          if (v133)
          {
            goto LABEL_165;
          }

LABEL_94:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_105:
            v146 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v84[1])(v86, v82);
            v6 = v233;
            v50 = __OFADD__(v146, *&v233);
            v147 = v146 + *&v233;
            if (v50)
            {
              goto LABEL_156;
            }

            v100 = [objc_allocWithZone(NSNumber) initWithLongLong:v147];
            sub_100007BAC(v248);
            a1 = v241;
LABEL_107:
            objc_opt_self();
            v148 = swift_dynamicCastObjCClass();
            if (v148)
            {
              v149 = v148;
              v150 = v33;
              v151 = v100;
              v152 = String.init(_:)(v149);
              v153 = a1;
              v154 = sub_1000DF96C();
              swift_beginAccess();
              v246 = v152;
              *&v247[8] = &type metadata for String;
              *&v247[16] = v154;
              v247[24] = 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v245 = v153[14];
              v156 = v245;
              v153[14] = 0x8000000000000000;
              v157 = sub_100771D58(v243, v244);
              v159 = v156[2];
              v160 = (v158 & 1) == 0;
              v50 = __OFADD__(v159, v160);
              v161 = v159 + v160;
              if (v50)
              {
                goto LABEL_153;
              }

              v162 = v158;
              if (v156[3] >= v161)
              {
                v164 = v150;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v223 = v157;
                  sub_1010050E8();
                  v157 = v223;
                }
              }

              else
              {
                sub_100FE65C4(v161, isUniquelyReferenced_nonNull_native);
                v157 = sub_100771D58(v243, v244);
                if ((v162 & 1) != (v163 & 1))
                {
                  goto LABEL_166;
                }

                v164 = v150;
              }

              a1 = v241;
              a3 = v239;
              if (v162)
              {
                v183 = v157;

                v184 = v245;
                sub_10118B568(&v246, v245[7] + 48 * v183);
              }

              else
              {
                v184 = v245;
                v245[(v157 >> 6) + 8] |= 1 << v157;
                v185 = (v184[6] + 16 * v157);
                v186 = v244;
                *v185 = v243;
                v185[1] = v186;
                v187 = (v184[7] + 48 * v157);
                v188 = *&v247[9];
                v189 = *v247;
                *v187 = v246;
                v187[1] = v189;
                *(&v187[1]._object + 1) = v188;
                v190 = v184[2];
                v50 = __OFADD__(v190, 1);
                v191 = v190 + 1;
                if (v50)
                {
                  goto LABEL_155;
                }

                v184[2] = v191;
              }

              a1[14] = v184;
              swift_endAccess();
              sub_101010148(*&v6, v164);

LABEL_125:
              goto LABEL_12;
            }

            objc_opt_self();
            v165 = swift_dynamicCastObjCClass();
            if (!v165)
            {
              LODWORD(v243) = v33;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v192 = type metadata accessor for Logger();
              sub_1000076D4(v192, qword_10177C6D0);
              v193 = v100;
              v151 = Logger.logObject.getter();
              v194 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v151, v194))
              {

                sub_101010148(*&v6, v243);
                goto LABEL_125;
              }

              v195 = swift_slowAlloc();
              v196 = swift_slowAlloc();
              *v195 = v237;
              *(v195 + 4) = v193;
              *v196 = v193;
              v197 = v193;
              _os_log_impl(&_mh_execute_header, v151, v194, "Unsupported value type: %@!", v195, 0xCu);
              sub_10000B3A8(v196, &qword_10169BB30, &unk_10138B3C0);
              a1 = v241;

              sub_101010148(*&v6, v243);
LABEL_12:
              sub_10118B5A0(&v251);
              goto LABEL_13;
            }

            v166 = v165;
            [v165 doubleValue];
            v168 = v167;
            v169 = [v166 integerValue];
            if (v168 == v169)
            {
              v170 = v169;
              v171 = sub_1000DFAD8();
              swift_beginAccess();
              v246._countAndFlagsBits = v170;
              *&v247[8] = &type metadata for Int;
              *&v247[16] = v171;
              v247[24] = 2;
              v172 = swift_isUniquelyReferenced_nonNull_native();
              v173 = a1;
              v174 = v172;
              v245 = v173[14];
              v175 = v245;
              v173[14] = 0x8000000000000000;
              v176 = sub_100771D58(v243, v244);
              v178 = v175[2];
              v179 = (v177 & 1) == 0;
              v50 = __OFADD__(v178, v179);
              v180 = v178 + v179;
              if (v50)
              {
                goto LABEL_159;
              }

              v181 = v177;
              if (v175[3] >= v180)
              {
                if ((v174 & 1) == 0)
                {
                  v226 = v176;
                  sub_1010050E8();
                  v176 = v226;
                }
              }

              else
              {
                sub_100FE65C4(v180, v174);
                v176 = sub_100771D58(v243, v244);
                if ((v181 & 1) != (v182 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v241;
              if ((v181 & 1) == 0)
              {
                v25 = v245;
                v245[(v176 >> 6) + 8] |= 1 << v176;
                v209 = (v25[6] + 16 * v176);
                v210 = v244;
                *v209 = v243;
                v209[1] = v210;
                v211 = (v25[7] + 48 * v176);
                v212 = *&v247[9];
                v213 = *v247;
                *v211 = v246;
                v211[1] = v213;
                *(&v211[1]._object + 1) = v212;
                v214 = v25[2];
                v50 = __OFADD__(v214, 1);
                v215 = v214 + 1;
                if (v50)
                {
                  goto LABEL_163;
                }

                goto LABEL_145;
              }

LABEL_10:
              v24 = v176;

              v25 = v245;
              sub_10118B568(&v246, v245[7] + 48 * v24);
            }

            else
            {
              v198 = sub_1000DFA84();
              swift_beginAccess();
              *&v246._countAndFlagsBits = v168;
              *&v247[8] = &type metadata for Double;
              *&v247[16] = v198;
              v247[24] = 3;
              v199 = swift_isUniquelyReferenced_nonNull_native();
              v200 = a1;
              v201 = v199;
              v245 = v200[14];
              v202 = v245;
              v200[14] = 0x8000000000000000;
              v176 = sub_100771D58(v243, v244);
              v204 = v202[2];
              v205 = (v203 & 1) == 0;
              v50 = __OFADD__(v204, v205);
              v206 = v204 + v205;
              if (v50)
              {
                goto LABEL_161;
              }

              v207 = v203;
              if (v202[3] >= v206)
              {
                if ((v201 & 1) == 0)
                {
                  v227 = v176;
                  sub_1010050E8();
                  v176 = v227;
                }
              }

              else
              {
                sub_100FE65C4(v206, v201);
                v176 = sub_100771D58(v243, v244);
                if ((v207 & 1) != (v208 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v241;
              if (v207)
              {
                goto LABEL_10;
              }

              v25 = v245;
              v245[(v176 >> 6) + 8] |= 1 << v176;
              v216 = (v25[6] + 16 * v176);
              v217 = v244;
              *v216 = v243;
              v216[1] = v217;
              v218 = (v25[7] + 48 * v176);
              v219 = *&v247[9];
              v220 = *v247;
              *v218 = v246;
              v218[1] = v220;
              *(&v218[1]._object + 1) = v219;
              v221 = v25[2];
              v50 = __OFADD__(v221, 1);
              v215 = v221 + 1;
              if (v50)
              {
                goto LABEL_164;
              }

LABEL_145:
              v25[2] = v215;
            }

            a1[14] = v25;
            swift_endAccess();

            sub_101010148(*&v6, v33);
            goto LABEL_12;
          }

          v231 = v84;
          v246._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v140 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              v229 = v228;
              __chkstk_darwin(v141);
              v232 = v228 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v143 = dispatch thunk of static Comparable.< infix(_:_:)();
              v84 = v231;
              (v231[1])(v232, v82);
              goto LABEL_104;
            }
          }

          else if (v141 >= 64)
          {
            v229 = v228;
            __chkstk_darwin(v141);
            v145 = v228 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            v84 = v231;
            (v231[1])(v145, v82);
LABEL_104:
            if (v143)
            {
              goto LABEL_162;
            }

            goto LABEL_105;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v84 = v231;
          goto LABEL_105;
        }
      }

      if (v33 > 1)
      {
        if (v33 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v6];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v6];
        }
      }

      else if (v33)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
      }

      else
      {
        isa = *&v6;
      }

      v10 = isa;
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v42 = v33;
        v10 = v10;
        v43 = String.init(_:)(v41);
        v44 = sub_1000DF96C();
        swift_beginAccess();
        v251 = v43;
        *&v252[8] = &type metadata for String;
        *&v252[16] = v44;
        v252[24] = 1;
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v248[0] = a1[14];
        v45 = v248[0];
        a1[14] = 0x8000000000000000;
        v46 = sub_100771D58(v243, v244);
        v48 = *(v45 + 16);
        v49 = (v47 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          __break(1u);
          goto LABEL_151;
        }

        v52 = v47;
        if (*(v45 + 24) >= v51)
        {
          if ((v11 & 1) == 0)
          {
            v222 = v46;
            sub_1010050E8();
            v46 = v222;
          }
        }

        else
        {
          sub_100FE65C4(v51, v11);
          v46 = sub_100771D58(v243, v244);
          if ((v52 & 1) != (v53 & 1))
          {
            goto LABEL_166;
          }
        }

        a1 = v241;
        LOBYTE(v33) = v42;
        a3 = v239;
        if (v52)
        {
          v72 = v46;

          v73 = v248[0];
          sub_10118B568(&v251, *(v248[0] + 56) + 48 * v72);
        }

        else
        {
          v73 = v248[0];
          *(v248[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v74 = (v73[6] + 16 * v46);
          v75 = v244;
          *v74 = v243;
          v74[1] = v75;
          v76 = (v73[7] + 48 * v46);
          v77 = *&v252[9];
          v78 = *v252;
          *v76 = v251;
          v76[1] = v78;
          *(&v76[1]._object + 1) = v77;
          v79 = v73[2];
          v50 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v50)
          {
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

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v73[2] = v80;
        }

        a1[14] = v73;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        [v54 doubleValue];
        v57 = v56;
        v58 = [v55 integerValue];
        a3 = v239;
        if (v57 == v58)
        {
          v59 = v58;
          v60 = sub_1000DFAD8();
          swift_beginAccess();
          v251._countAndFlagsBits = v59;
          *&v252[8] = &type metadata for Int;
          *&v252[16] = v60;
          v252[24] = 2;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v62 = a1;
          v63 = v61;
          v248[0] = v62[14];
          v64 = v248[0];
          v62[14] = 0x8000000000000000;
          v65 = sub_100771D58(v243, v244);
          v67 = *(v64 + 16);
          v68 = (v66 & 1) == 0;
          v50 = __OFADD__(v67, v68);
          v69 = v67 + v68;
          if (v50)
          {
            goto LABEL_154;
          }

          v70 = v66;
          if (*(v64 + 24) >= v69)
          {
            if ((v63 & 1) == 0)
            {
              v224 = v65;
              sub_1010050E8();
              v65 = v224;
            }
          }

          else
          {
            sub_100FE65C4(v69, v63);
            v65 = sub_100771D58(v243, v244);
            if ((v70 & 1) != (v71 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v241;
          if ((v70 & 1) == 0)
          {
            v115 = v248[0];
            *(v248[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
            v116 = (v115[6] + 16 * v65);
            v117 = v244;
            *v116 = v243;
            v116[1] = v117;
            v118 = (v115[7] + 48 * v65);
            v119 = *&v252[9];
            v120 = *v252;
            *v118 = v251;
            v118[1] = v120;
            *(&v118[1]._object + 1) = v119;
            v121 = v115[2];
            v50 = __OFADD__(v121, 1);
            v122 = v121 + 1;
            if (v50)
            {
              goto LABEL_158;
            }

            goto LABEL_82;
          }

LABEL_80:
          v123 = v65;

          v115 = v248[0];
          sub_10118B568(&v251, *(v248[0] + 56) + 48 * v123);
        }

        else
        {
          v104 = sub_1000DFA84();
          swift_beginAccess();
          *&v251._countAndFlagsBits = v57;
          *&v252[8] = &type metadata for Double;
          *&v252[16] = v104;
          v252[24] = 3;
          v105 = swift_isUniquelyReferenced_nonNull_native();
          v106 = a1;
          v107 = v105;
          v248[0] = v106[14];
          v108 = v248[0];
          v106[14] = 0x8000000000000000;
          v65 = sub_100771D58(v243, v244);
          v110 = *(v108 + 16);
          v111 = (v109 & 1) == 0;
          v50 = __OFADD__(v110, v111);
          v112 = v110 + v111;
          if (v50)
          {
            goto LABEL_157;
          }

          v113 = v109;
          if (*(v108 + 24) >= v112)
          {
            if ((v107 & 1) == 0)
            {
              v225 = v65;
              sub_1010050E8();
              v65 = v225;
            }
          }

          else
          {
            sub_100FE65C4(v112, v107);
            v65 = sub_100771D58(v243, v244);
            if ((v113 & 1) != (v114 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v241;
          if (v113)
          {
            goto LABEL_80;
          }

          v115 = v248[0];
          *(v248[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
          v124 = (v115[6] + 16 * v65);
          v125 = v244;
          *v124 = v243;
          v124[1] = v125;
          v126 = (v115[7] + 48 * v65);
          v127 = *&v252[9];
          v128 = *v252;
          *v126 = v251;
          v126[1] = v128;
          *(&v126[1]._object + 1) = v127;
          v129 = v115[2];
          v50 = __OFADD__(v129, 1);
          v122 = v129 + 1;
          if (v50)
          {
            goto LABEL_160;
          }

LABEL_82:
          v115[2] = v122;
        }

        a1[14] = v115;
        swift_endAccess();
LABEL_84:

        v98 = v6;
        v99 = v33;
        goto LABEL_85;
      }

      LODWORD(v243) = v33;

      a3 = v239;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_1000076D4(v91, qword_10177C6D0);
      v92 = v10;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v93, v94))
      {

        sub_101010148(*&v6, v243);
        goto LABEL_13;
      }

      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = v237;
      *(v95 + 4) = v92;
      *v96 = v92;
      v97 = v92;
      _os_log_impl(&_mh_execute_header, v93, v94, "Unsupported value type: %@!", v95, 0xCu);
      sub_10000B3A8(v96, &qword_10169BB30, &unk_10138B3C0);
      a1 = v241;

      v98 = v6;
      v99 = v243;
LABEL_85:
      sub_101010148(*&v98, v99);
LABEL_13:
      v19 = v240;
    }

    while (1)
    {
      v26 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v26 >= a3)
      {

        return;
      }

      v22 = *(v19 + 8 * v26);
      ++a5;
      if (v22)
      {
        a5 = v26;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_149:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C6D0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v251._countAndFlagsBits = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000136BC(v10, v11, &v251._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v13, v14, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v15, 0xCu);
    sub_100007BAC(v16);
  }
}

void sub_101189A9C(void *a1, uint64_t a2, int64_t a3, uint64_t a4, int64_t a5)
{
  v6 = v5;
  if (qword_101695280 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v10 = a1[15];
    v11 = a1[16];
    if (sub_10111EACC(v10, v11, qword_10177C6E8))
    {
      break;
    }

    v238 = v6;
    v236 = a3;
    v235 = a5;
    v17 = sub_1011681B0();
    v19 = v17 + 64;
    v18 = *(v17 + 64);
    v242 = v17;
    v20 = 1 << *(v17 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    swift_beginAccess();
    a5 = 0;
    a3 = (v20 + 63) >> 6;
    *&v23 = 138412290;
    v237 = v23;
    v241 = a1;
    v239 = a3;
    v240 = v19;
    while (v22)
    {
LABEL_19:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = (a5 << 10) | (16 * v27);
      v29 = *(v242 + 56);
      v30 = (*(v242 + 48) + v28);
      v31 = v30[1];
      v243 = *v30;
      v32 = v29 + v28;
      v6 = *v32;
      v33 = *(v32 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v244 = v31;

      sub_10090C56C(*&v6, v33);
      if (v35)
      {

        v36 = sub_100771D58(v243, v244);
        if (v37)
        {
          sub_1010100EC(*(v34 + 56) + 48 * v36, &v250);

          if (v33 <= 1)
          {
            if (v33)
            {
              sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
              v38 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
            }

            else
            {
              v38 = *&v6;
            }

            v100 = v38;
            goto LABEL_107;
          }

          if (v33 != 2)
          {
            sub_1010100EC(&v250, &v245);
            if (v246[24] != 3)
            {
LABEL_147:

              sub_10118B5A0(&v245);
              sub_10118B5D0();
              swift_allocError();
              swift_willThrow();

              sub_10118B5A0(&v250);
              return;
            }

            sub_10000A748(&v245._countAndFlagsBits, v247);
            v101 = sub_1000035D0(v247, v248);
            __chkstk_darwin(v101);
            (*(v103 + 16))(v228 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
            sub_1000DFA84();
            BinaryFloatingPoint.init<A>(_:)();
            a1 = v241;
            v100 = [objc_allocWithZone(NSNumber) initWithDouble:*&v245._countAndFlagsBits + v6];
            sub_100007BAC(v247);
            goto LABEL_107;
          }

          sub_1010100EC(&v250, &v245);
          if (v246[24] != 2)
          {
            goto LABEL_147;
          }

          v233 = v6;
          sub_10000A748(&v245._countAndFlagsBits, v247);
          v82 = v248;
          v81 = v249;
          v83 = sub_1000035D0(v247, v248);
          v234 = v228;
          v84 = *(v82 - 8);
          __chkstk_darwin(v83);
          v232 = v85;
          v86 = v228 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v84[2])(v86);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
          {
            goto LABEL_94;
          }

          v245._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 >= 64)
            {
              v230 = v81;
              v231 = v228;
              __chkstk_darwin(v87);
              v89 = v228 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v90 = dispatch thunk of static Comparable.< infix(_:_:)();
              (v84[1])(v89, v82);
              if (v90)
              {
                goto LABEL_165;
              }

              goto LABEL_94;
            }

LABEL_93:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_94;
          }

          LODWORD(v231) = dispatch thunk of static BinaryInteger.isSigned.getter();
          v130 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v231 & 1) == 0)
          {
            if (v130 >= 64)
            {
              goto LABEL_94;
            }

            goto LABEL_93;
          }

          v230 = v81;
          if (v130 <= 64)
          {
            v231 = *(*(v81 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v229 = v228;
            __chkstk_darwin(AssociatedTypeWitness);
            v228[0] = v228 - v135;
            swift_getAssociatedConformanceWitness();
            v136 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v228[1] = v228;
            __chkstk_darwin(v136);
            v138 = v228 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v139 = dispatch thunk of static Comparable.< infix(_:_:)();
            (v84[1])(v138, v82);
            if (v139)
            {
              goto LABEL_165;
            }

            goto LABEL_93;
          }

          v231 = v228;
          __chkstk_darwin(v130);
          v132 = v228 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v133 = dispatch thunk of static Comparable.< infix(_:_:)();
          (v84[1])(v132, v82);
          if (v133)
          {
            goto LABEL_165;
          }

LABEL_94:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_105:
            v146 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v84[1])(v86, v82);
            v6 = v233;
            v50 = __OFADD__(v146, *&v233);
            v147 = v146 + *&v233;
            if (v50)
            {
              goto LABEL_156;
            }

            v100 = [objc_allocWithZone(NSNumber) initWithLongLong:v147];
            sub_100007BAC(v247);
            a1 = v241;
LABEL_107:
            objc_opt_self();
            v148 = swift_dynamicCastObjCClass();
            if (v148)
            {
              v149 = v148;
              v150 = v33;
              v151 = v100;
              v152 = String.init(_:)(v149);
              v153 = a1;
              v154 = sub_1000DF96C();
              swift_beginAccess();
              v245 = v152;
              *&v246[8] = &type metadata for String;
              *&v246[16] = v154;
              v246[24] = 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v252 = v153[14];
              v156 = v252;
              v153[14] = 0x8000000000000000;
              v157 = sub_100771D58(v243, v244);
              v159 = v156[2];
              v160 = (v158 & 1) == 0;
              v50 = __OFADD__(v159, v160);
              v161 = v159 + v160;
              if (v50)
              {
                goto LABEL_153;
              }

              v162 = v158;
              if (v156[3] >= v161)
              {
                v164 = v150;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v223 = v157;
                  sub_1010050E8();
                  v157 = v223;
                }
              }

              else
              {
                sub_100FE65C4(v161, isUniquelyReferenced_nonNull_native);
                v157 = sub_100771D58(v243, v244);
                if ((v162 & 1) != (v163 & 1))
                {
                  goto LABEL_166;
                }

                v164 = v150;
              }

              a1 = v241;
              a3 = v239;
              if (v162)
              {
                v183 = v157;

                v184 = v252;
                sub_10118B568(&v245, v252[7] + 48 * v183);
              }

              else
              {
                v184 = v252;
                v252[(v157 >> 6) + 8] |= 1 << v157;
                v185 = (v184[6] + 16 * v157);
                v186 = v244;
                *v185 = v243;
                v185[1] = v186;
                v187 = (v184[7] + 48 * v157);
                v188 = *&v246[9];
                v189 = *v246;
                *v187 = v245;
                v187[1] = v189;
                *(&v187[1]._object + 1) = v188;
                v190 = v184[2];
                v50 = __OFADD__(v190, 1);
                v191 = v190 + 1;
                if (v50)
                {
                  goto LABEL_155;
                }

                v184[2] = v191;
              }

              a1[14] = v184;
              swift_endAccess();
              sub_101010148(*&v6, v164);

LABEL_125:
              goto LABEL_12;
            }

            objc_opt_self();
            v165 = swift_dynamicCastObjCClass();
            if (!v165)
            {
              LODWORD(v243) = v33;

              if (qword_101695278 != -1)
              {
                swift_once();
              }

              v192 = type metadata accessor for Logger();
              sub_1000076D4(v192, qword_10177C6D0);
              v193 = v100;
              v151 = Logger.logObject.getter();
              v194 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v151, v194))
              {

                sub_101010148(*&v6, v243);
                goto LABEL_125;
              }

              v195 = swift_slowAlloc();
              v196 = swift_slowAlloc();
              *v195 = v237;
              *(v195 + 4) = v193;
              *v196 = v193;
              v197 = v193;
              _os_log_impl(&_mh_execute_header, v151, v194, "Unsupported value type: %@!", v195, 0xCu);
              sub_10000B3A8(v196, &qword_10169BB30, &unk_10138B3C0);
              a1 = v241;

              sub_101010148(*&v6, v243);
LABEL_12:
              sub_10118B5A0(&v250);
              goto LABEL_13;
            }

            v166 = v165;
            [v165 doubleValue];
            v168 = v167;
            v169 = [v166 integerValue];
            if (v168 == v169)
            {
              v170 = v169;
              v171 = sub_1000DFAD8();
              swift_beginAccess();
              v245._countAndFlagsBits = v170;
              *&v246[8] = &type metadata for Int;
              *&v246[16] = v171;
              v246[24] = 2;
              v172 = swift_isUniquelyReferenced_nonNull_native();
              v173 = a1;
              v174 = v172;
              v252 = v173[14];
              v175 = v252;
              v173[14] = 0x8000000000000000;
              v176 = sub_100771D58(v243, v244);
              v178 = v175[2];
              v179 = (v177 & 1) == 0;
              v50 = __OFADD__(v178, v179);
              v180 = v178 + v179;
              if (v50)
              {
                goto LABEL_159;
              }

              v181 = v177;
              if (v175[3] >= v180)
              {
                if ((v174 & 1) == 0)
                {
                  v226 = v176;
                  sub_1010050E8();
                  v176 = v226;
                }
              }

              else
              {
                sub_100FE65C4(v180, v174);
                v176 = sub_100771D58(v243, v244);
                if ((v181 & 1) != (v182 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v241;
              if ((v181 & 1) == 0)
              {
                v25 = v252;
                v252[(v176 >> 6) + 8] |= 1 << v176;
                v209 = (v25[6] + 16 * v176);
                v210 = v244;
                *v209 = v243;
                v209[1] = v210;
                v211 = (v25[7] + 48 * v176);
                v212 = *&v246[9];
                v213 = *v246;
                *v211 = v245;
                v211[1] = v213;
                *(&v211[1]._object + 1) = v212;
                v214 = v25[2];
                v50 = __OFADD__(v214, 1);
                v215 = v214 + 1;
                if (v50)
                {
                  goto LABEL_163;
                }

                goto LABEL_145;
              }

LABEL_10:
              v24 = v176;

              v25 = v252;
              sub_10118B568(&v245, v252[7] + 48 * v24);
            }

            else
            {
              v198 = sub_1000DFA84();
              swift_beginAccess();
              *&v245._countAndFlagsBits = v168;
              *&v246[8] = &type metadata for Double;
              *&v246[16] = v198;
              v246[24] = 3;
              v199 = swift_isUniquelyReferenced_nonNull_native();
              v200 = a1;
              v201 = v199;
              v252 = v200[14];
              v202 = v252;
              v200[14] = 0x8000000000000000;
              v176 = sub_100771D58(v243, v244);
              v204 = v202[2];
              v205 = (v203 & 1) == 0;
              v50 = __OFADD__(v204, v205);
              v206 = v204 + v205;
              if (v50)
              {
                goto LABEL_161;
              }

              v207 = v203;
              if (v202[3] >= v206)
              {
                if ((v201 & 1) == 0)
                {
                  v227 = v176;
                  sub_1010050E8();
                  v176 = v227;
                }
              }

              else
              {
                sub_100FE65C4(v206, v201);
                v176 = sub_100771D58(v243, v244);
                if ((v207 & 1) != (v208 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v241;
              if (v207)
              {
                goto LABEL_10;
              }

              v25 = v252;
              v252[(v176 >> 6) + 8] |= 1 << v176;
              v216 = (v25[6] + 16 * v176);
              v217 = v244;
              *v216 = v243;
              v216[1] = v217;
              v218 = (v25[7] + 48 * v176);
              v219 = *&v246[9];
              v220 = *v246;
              *v218 = v245;
              v218[1] = v220;
              *(&v218[1]._object + 1) = v219;
              v221 = v25[2];
              v50 = __OFADD__(v221, 1);
              v215 = v221 + 1;
              if (v50)
              {
                goto LABEL_164;
              }

LABEL_145:
              v25[2] = v215;
            }

            a1[14] = v25;
            swift_endAccess();

            sub_101010148(*&v6, v33);
            goto LABEL_12;
          }

          v231 = v84;
          v245._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v140 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              v229 = v228;
              __chkstk_darwin(v141);
              v232 = v228 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v143 = dispatch thunk of static Comparable.< infix(_:_:)();
              v84 = v231;
              (v231[1])(v232, v82);
              goto LABEL_104;
            }
          }

          else if (v141 >= 64)
          {
            v229 = v228;
            __chkstk_darwin(v141);
            v145 = v228 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            v84 = v231;
            (v231[1])(v145, v82);
LABEL_104:
            if (v143)
            {
              goto LABEL_162;
            }

            goto LABEL_105;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          v84 = v231;
          goto LABEL_105;
        }
      }

      if (v33 > 1)
      {
        if (v33 == 2)
        {
          isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v6];
        }

        else
        {
          isa = [objc_allocWithZone(NSNumber) initWithDouble:v6];
        }
      }

      else if (v33)
      {
        sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
        isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v6) & 1).super.super.isa;
      }

      else
      {
        isa = *&v6;
      }

      v10 = isa;
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v42 = v33;
        v10 = v10;
        v43 = String.init(_:)(v41);
        v44 = sub_1000DF96C();
        swift_beginAccess();
        v250 = v43;
        *&v251[8] = &type metadata for String;
        *&v251[16] = v44;
        v251[24] = 1;
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v247[0] = a1[14];
        v45 = v247[0];
        a1[14] = 0x8000000000000000;
        v46 = sub_100771D58(v243, v244);
        v48 = *(v45 + 16);
        v49 = (v47 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          __break(1u);
          goto LABEL_151;
        }

        v52 = v47;
        if (*(v45 + 24) >= v51)
        {
          if ((v11 & 1) == 0)
          {
            v222 = v46;
            sub_1010050E8();
            v46 = v222;
          }
        }

        else
        {
          sub_100FE65C4(v51, v11);
          v46 = sub_100771D58(v243, v244);
          if ((v52 & 1) != (v53 & 1))
          {
            goto LABEL_166;
          }
        }

        a1 = v241;
        LOBYTE(v33) = v42;
        a3 = v239;
        if (v52)
        {
          v72 = v46;

          v73 = v247[0];
          sub_10118B568(&v250, *(v247[0] + 56) + 48 * v72);
        }

        else
        {
          v73 = v247[0];
          *(v247[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v74 = (v73[6] + 16 * v46);
          v75 = v244;
          *v74 = v243;
          v74[1] = v75;
          v76 = (v73[7] + 48 * v46);
          v77 = *&v251[9];
          v78 = *v251;
          *v76 = v250;
          v76[1] = v78;
          *(&v76[1]._object + 1) = v77;
          v79 = v73[2];
          v50 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v50)
          {
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

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v73[2] = v80;
        }

        a1[14] = v73;
        swift_endAccess();

        goto LABEL_84;
      }

      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        [v54 doubleValue];
        v57 = v56;
        v58 = [v55 integerValue];
        a3 = v239;
        if (v57 == v58)
        {
          v59 = v58;
          v60 = sub_1000DFAD8();
          swift_beginAccess();
          v250._countAndFlagsBits = v59;
          *&v251[8] = &type metadata for Int;
          *&v251[16] = v60;
          v251[24] = 2;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v62 = a1;
          v63 = v61;
          v247[0] = v62[14];
          v64 = v247[0];
          v62[14] = 0x8000000000000000;
          v65 = sub_100771D58(v243, v244);
          v67 = *(v64 + 16);
          v68 = (v66 & 1) == 0;
          v50 = __OFADD__(v67, v68);
          v69 = v67 + v68;
          if (v50)
          {
            goto LABEL_154;
          }

          v70 = v66;
          if (*(v64 + 24) >= v69)
          {
            if ((v63 & 1) == 0)
            {
              v224 = v65;
              sub_1010050E8();
              v65 = v224;
            }
          }

          else
          {
            sub_100FE65C4(v69, v63);
            v65 = sub_100771D58(v243, v244);
            if ((v70 & 1) != (v71 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v241;
          if ((v70 & 1) == 0)
          {
            v115 = v247[0];
            *(v247[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
            v116 = (v115[6] + 16 * v65);
            v117 = v244;
            *v116 = v243;
            v116[1] = v117;
            v118 = (v115[7] + 48 * v65);
            v119 = *&v251[9];
            v120 = *v251;
            *v118 = v250;
            v118[1] = v120;
            *(&v118[1]._object + 1) = v119;
            v121 = v115[2];
            v50 = __OFADD__(v121, 1);
            v122 = v121 + 1;
            if (v50)
            {
              goto LABEL_158;
            }

            goto LABEL_82;
          }

LABEL_80:
          v123 = v65;

          v115 = v247[0];
          sub_10118B568(&v250, *(v247[0] + 56) + 48 * v123);
        }

        else
        {
          v104 = sub_1000DFA84();
          swift_beginAccess();
          *&v250._countAndFlagsBits = v57;
          *&v251[8] = &type metadata for Double;
          *&v251[16] = v104;
          v251[24] = 3;
          v105 = swift_isUniquelyReferenced_nonNull_native();
          v106 = a1;
          v107 = v105;
          v247[0] = v106[14];
          v108 = v247[0];
          v106[14] = 0x8000000000000000;
          v65 = sub_100771D58(v243, v244);
          v110 = *(v108 + 16);
          v111 = (v109 & 1) == 0;
          v50 = __OFADD__(v110, v111);
          v112 = v110 + v111;
          if (v50)
          {
            goto LABEL_157;
          }

          v113 = v109;
          if (*(v108 + 24) >= v112)
          {
            if ((v107 & 1) == 0)
            {
              v225 = v65;
              sub_1010050E8();
              v65 = v225;
            }
          }

          else
          {
            sub_100FE65C4(v112, v107);
            v65 = sub_100771D58(v243, v244);
            if ((v113 & 1) != (v114 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v241;
          if (v113)
          {
            goto LABEL_80;
          }

          v115 = v247[0];
          *(v247[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
          v124 = (v115[6] + 16 * v65);
          v125 = v244;
          *v124 = v243;
          v124[1] = v125;
          v126 = (v115[7] + 48 * v65);
          v127 = *&v251[9];
          v128 = *v251;
          *v126 = v250;
          v126[1] = v128;
          *(&v126[1]._object + 1) = v127;
          v129 = v115[2];
          v50 = __OFADD__(v129, 1);
          v122 = v129 + 1;
          if (v50)
          {
            goto LABEL_160;
          }

LABEL_82:
          v115[2] = v122;
        }

        a1[14] = v115;
        swift_endAccess();
LABEL_84:

        v98 = v6;
        v99 = v33;
        goto LABEL_85;
      }

      LODWORD(v243) = v33;

      a3 = v239;
      if (qword_101695278 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_1000076D4(v91, qword_10177C6D0);
      v92 = v10;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v93, v94))
      {

        sub_101010148(*&v6, v243);
        goto LABEL_13;
      }

      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = v237;
      *(v95 + 4) = v92;
      *v96 = v92;
      v97 = v92;
      _os_log_impl(&_mh_execute_header, v93, v94, "Unsupported value type: %@!", v95, 0xCu);
      sub_10000B3A8(v96, &qword_10169BB30, &unk_10138B3C0);
      a1 = v241;

      v98 = v6;
      v99 = v243;
LABEL_85:
      sub_101010148(*&v98, v99);
LABEL_13:
      v19 = v240;
    }

    while (1)
    {
      v26 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v26 >= a3)
      {

        return;
      }

      v22 = *(v19 + 8 * v26);
      ++a5;
      if (v22)
      {
        a5 = v26;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_149:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_151:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C6D0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v250._countAndFlagsBits = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000136BC(v10, v11, &v250._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v13, v14, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v15, 0xCu);
    sub_100007BAC(v16);
  }
}

unint64_t sub_10118B5D0()
{
  result = qword_1016C9728;
  if (!qword_1016C9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9728);
  }

  return result;
}

void sub_10118B624(void *a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  if (qword_101695280 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v14 = a1[15];
    v15 = a1[16];
    v16 = sub_10111EACC(v14, v15, qword_10177C6E8);
    v232 = a1;
    if (v16)
    {
      break;
    }

    v227 = v7;
    v225 = a3;
    v22 = sub_10116870C(a2, a3, a4, a5, a6);
    v24 = v22 + 64;
    v23 = *(v22 + 64);
    v231 = v22;
    v25 = 1 << *(v22 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    a2 = v26 & v23;
    swift_beginAccess();
    v7 = 0;
    a3 = (v25 + 63) >> 6;
    *&v27 = 138412290;
    v226 = v27;
    v229 = a3;
    v230 = v24;
    while (a2)
    {
LABEL_15:
      v29 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v30 = (v7 << 10) | (16 * v29);
      v31 = *(v231 + 56);
      v32 = (*(v231 + 48) + v30);
      v33 = v32[1];
      v233 = *v32;
      v34 = v31 + v30;
      a5 = *v34;
      a4 = *(v34 + 8);
      v35 = a1[14];
      v36 = *(v35 + 16);
      v234 = v33;

      sub_10090C56C(a5, a4);
      if (v36)
      {

        v37 = sub_100771D58(v233, v234);
        if ((v38 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v35 + 56) + 48 * v37, &v241);

        if (a4 <= 1)
        {
          if (a4)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v39 = NSNumber.init(BOOLeanLiteral:)(a5 & 1).super.super.isa;
          }

          else
          {
            v39 = a5;
          }

          v97 = v39;
          goto LABEL_103;
        }

        if (a4 != 2)
        {
          sub_1010100EC(&v241, &v236);
          if (v237[24] != 3)
          {
LABEL_146:

            sub_10118B5A0(&v236);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v241);
            return;
          }

          sub_10000A748(&v236._countAndFlagsBits, v238);
          v98 = sub_1000035D0(v238, v239);
          __chkstk_darwin(v98);
          (*(v100 + 16))(v219 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          a1 = v232;
          BinaryFloatingPoint.init<A>(_:)();
          v97 = [objc_allocWithZone(NSNumber) initWithDouble:*&v236._countAndFlagsBits + *&a5];
          sub_100007BAC(v238);
          goto LABEL_103;
        }

        sub_1010100EC(&v241, &v236);
        if (v237[24] != 2)
        {
          goto LABEL_146;
        }

        v228 = a5;
        sub_10000A748(&v236._countAndFlagsBits, v238);
        v82 = v239;
        v81 = v240;
        v83 = sub_1000035D0(v238, v239);
        __chkstk_darwin(v83);
        v223 = v84;
        v85 = v219 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v224 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v236._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_89;
            }

            v221 = v81;
            v222 = v219;
            __chkstk_darwin(v87);
            v89 = v219 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v224 + 8))(v89, v82);
            if (v90)
            {
              goto LABEL_164;
            }
          }

          else
          {
            LODWORD(v222) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v124 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v222)
            {
              v221 = v81;
              if (v124 <= 64)
              {
                v222 = *(*(v81 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v220 = v219;
                __chkstk_darwin(AssociatedTypeWitness);
                v219[0] = v219 - v129;
                swift_getAssociatedConformanceWitness();
                v130 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v219[1] = v219;
                __chkstk_darwin(v130);
                v132 = v219 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v133 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v224 + 8))(v132, v82);
                if (v133)
                {
                  goto LABEL_164;
                }

LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v222 = v219;
              __chkstk_darwin(v124);
              v126 = v219 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v127 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v224 + 8))(v126, v82);
              if (v127)
              {
                goto LABEL_164;
              }
            }

            else if (v124 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v222 = v219;
          v236._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v134 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v135 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v134)
          {
            if (v135 > 64)
            {
              v220 = v219;
              __chkstk_darwin(v135);
              v223 = v219 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v137 = v223;
              v138 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v224 + 8))(v137, v82);
              goto LABEL_100;
            }
          }

          else if (v135 >= 64)
          {
            v220 = v219;
            __chkstk_darwin(v135);
            v140 = v219 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v138 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v224 + 8))(v140, v82);
LABEL_100:
            if (v138)
            {
              goto LABEL_161;
            }

            goto LABEL_101;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_101:
        v141 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v224 + 8))(v85, v82);
        a5 = v228;
        v51 = __OFADD__(v141, v228);
        v142 = &v228[v141];
        if (v51)
        {
          goto LABEL_155;
        }

        v97 = [objc_allocWithZone(NSNumber) initWithLongLong:v142];
        sub_100007BAC(v238);
        a1 = v232;
LABEL_103:
        objc_opt_self();
        v143 = swift_dynamicCastObjCClass();
        if (v143)
        {
          v144 = v143;
          v145 = a5;
          v146 = v97;
          v147 = String.init(_:)(v144);
          v148 = sub_1000DF96C();
          swift_beginAccess();
          v236 = v147;
          *&v237[8] = &type metadata for String;
          *&v237[16] = v148;
          v237[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v235 = a1[14];
          v150 = v235;
          a1[14] = 0x8000000000000000;
          v151 = sub_100771D58(v233, v234);
          v153 = v150[2];
          v154 = (v152 & 1) == 0;
          v51 = __OFADD__(v153, v154);
          v155 = v153 + v154;
          if (v51)
          {
            goto LABEL_152;
          }

          v156 = v152;
          if (v150[3] >= v155)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v214 = v151;
              sub_1010050E8();
              v151 = v214;
            }
          }

          else
          {
            sub_100FE65C4(v155, isUniquelyReferenced_nonNull_native);
            v151 = sub_100771D58(v233, v234);
            if ((v156 & 1) != (v157 & 1))
            {
              goto LABEL_165;
            }
          }

          a3 = v229;
          a5 = v145;
          v24 = v230;
          if (v156)
          {
            v176 = v151;

            a6 = v235;
            sub_10118B568(&v236, v235[7] + 48 * v176);
          }

          else
          {
            a6 = v235;
            v235[(v151 >> 6) + 8] |= 1 << v151;
            v177 = (a6[6] + 16 * v151);
            v178 = v234;
            *v177 = v233;
            v177[1] = v178;
            v179 = (a6[7] + 48 * v151);
            v180 = *&v237[9];
            v181 = *v237;
            *v179 = v236;
            v179[1] = v181;
            *(&v179[1]._object + 1) = v180;
            v182 = a6[2];
            v51 = __OFADD__(v182, 1);
            v183 = v182 + 1;
            if (v51)
            {
              goto LABEL_154;
            }

            a6[2] = v183;
          }

          a1 = v232;
          v232[14] = a6;
          swift_endAccess();
          sub_101010148(a5, a4);
        }

        else
        {

          objc_opt_self();
          v158 = swift_dynamicCastObjCClass();
          if (v158)
          {
            v228 = a5;
            v159 = v158;
            [v158 doubleValue];
            v161 = v160;
            v162 = [v159 integerValue];
            v24 = v230;
            if (v161 == v162)
            {
              v163 = v162;
              v164 = a4;
              v165 = a1;
              v166 = sub_1000DFAD8();
              swift_beginAccess();
              v236._countAndFlagsBits = v163;
              *&v237[8] = &type metadata for Int;
              *&v237[16] = v166;
              v237[24] = 2;
              v167 = swift_isUniquelyReferenced_nonNull_native();
              v235 = v165[14];
              v168 = v235;
              v165[14] = 0x8000000000000000;
              v169 = sub_100771D58(v233, v234);
              v171 = v168[2];
              v172 = (v170 & 1) == 0;
              v51 = __OFADD__(v171, v172);
              v173 = v171 + v172;
              if (v51)
              {
                goto LABEL_158;
              }

              v174 = v170;
              a4 = v164;
              if (v168[3] >= v173)
              {
                a3 = v229;
                if ((v167 & 1) == 0)
                {
                  v217 = v169;
                  sub_1010050E8();
                  v169 = v217;
                }
              }

              else
              {
                sub_100FE65C4(v173, v167);
                v169 = sub_100771D58(v233, v234);
                a3 = v229;
                if ((v174 & 1) != (v175 & 1))
                {
                  goto LABEL_165;
                }
              }

              a5 = v228;
              if ((v174 & 1) == 0)
              {
                a6 = v235;
                v235[(v169 >> 6) + 8] |= 1 << v169;
                v199 = (a6[6] + 16 * v169);
                v200 = v234;
                *v199 = v233;
                v199[1] = v200;
                v201 = (a6[7] + 48 * v169);
                v202 = *&v237[9];
                v203 = *v237;
                *v201 = v236;
                v201[1] = v203;
                *(&v201[1]._object + 1) = v202;
                v204 = a6[2];
                v51 = __OFADD__(v204, 1);
                v205 = v204 + 1;
                if (v51)
                {
                  goto LABEL_162;
                }

                goto LABEL_142;
              }

LABEL_140:
              v206 = v169;

              a6 = v235;
              sub_10118B568(&v236, v235[7] + 48 * v206);
            }

            else
            {
              v190 = sub_1000DFA84();
              swift_beginAccess();
              *&v236._countAndFlagsBits = v161;
              *&v237[8] = &type metadata for Double;
              *&v237[16] = v190;
              v237[24] = 3;
              v191 = swift_isUniquelyReferenced_nonNull_native();
              v235 = a1[14];
              v192 = v235;
              a1[14] = 0x8000000000000000;
              v169 = sub_100771D58(v233, v234);
              v194 = v192[2];
              v195 = (v193 & 1) == 0;
              v51 = __OFADD__(v194, v195);
              v196 = v194 + v195;
              if (v51)
              {
                goto LABEL_160;
              }

              v197 = v193;
              if (v192[3] >= v196)
              {
                if ((v191 & 1) == 0)
                {
                  v218 = v169;
                  sub_1010050E8();
                  v169 = v218;
                }
              }

              else
              {
                sub_100FE65C4(v196, v191);
                v169 = sub_100771D58(v233, v234);
                if ((v197 & 1) != (v198 & 1))
                {
                  goto LABEL_165;
                }
              }

              a5 = v228;
              if (v197)
              {
                goto LABEL_140;
              }

              a6 = v235;
              v235[(v169 >> 6) + 8] |= 1 << v169;
              v207 = (a6[6] + 16 * v169);
              v208 = v234;
              *v207 = v233;
              v207[1] = v208;
              v209 = (a6[7] + 48 * v169);
              v210 = *&v237[9];
              v211 = *v237;
              *v209 = v236;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = a6[2];
              v51 = __OFADD__(v212, 1);
              v205 = v212 + 1;
              if (v51)
              {
                goto LABEL_163;
              }

LABEL_142:
              a6[2] = v205;
            }

            a1 = v232;
            v232[14] = a6;
            swift_endAccess();

            sub_101010148(a5, a4);
            goto LABEL_144;
          }

          v24 = v230;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v184 = type metadata accessor for Logger();
          sub_1000076D4(v184, qword_10177C6D0);
          v185 = v97;
          v186 = Logger.logObject.getter();
          a6 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v186, a6))
          {
            *&v187 = COERCE_DOUBLE(swift_slowAlloc());
            v228 = a5;
            a5 = v187;
            v188 = swift_slowAlloc();
            LODWORD(v234) = a4;
            a4 = v188;
            *a5 = v226;
            *(a5 + 4) = v185;
            *v188 = v185;
            v189 = v185;
            _os_log_impl(&_mh_execute_header, v186, a6, "Unsupported value type: %@!", a5, 0xCu);
            sub_10000B3A8(a4, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v228, v234);
          }

          else
          {

            sub_101010148(a5, a4);
          }

          a1 = v232;
        }

LABEL_144:
        sub_10118B5A0(&v241);
      }

      else
      {
LABEL_21:
        if (a4 > 1)
        {
          if (a4 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:a5];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&a5];
          }
        }

        else if (a4)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(a5 & 1).super.super.isa;
        }

        else
        {
          isa = a5;
        }

        v14 = isa;
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
          v42 = v41;
          v15 = a5;
          v14 = v14;
          v43 = String.init(_:)(v42);
          v44 = sub_1000DF96C();
          swift_beginAccess();
          v241 = v43;
          *&v242[8] = &type metadata for String;
          *&v242[16] = v44;
          v242[24] = 1;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v238[0] = a1[14];
          v46 = v238[0];
          a1[14] = 0x8000000000000000;
          v47 = sub_100771D58(v233, v234);
          v49 = *(v46 + 16);
          v50 = (v48 & 1) == 0;
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          if (v51)
          {
            __break(1u);
            goto LABEL_150;
          }

          v53 = v48;
          if (*(v46 + 24) >= v52)
          {
            if ((v45 & 1) == 0)
            {
              v213 = v47;
              sub_1010050E8();
              v47 = v213;
            }
          }

          else
          {
            sub_100FE65C4(v52, v45);
            v47 = sub_100771D58(v233, v234);
            if ((v53 & 1) != (v54 & 1))
            {
              goto LABEL_165;
            }
          }

          a3 = v229;
          a5 = v15;
          v24 = v230;
          if (v53)
          {
            v73 = v47;

            a6 = v238[0];
            sub_10118B568(&v241, *(v238[0] + 56) + 48 * v73);
          }

          else
          {
            a6 = v238[0];
            *(v238[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v74 = (a6[6] + 16 * v47);
            v75 = v234;
            *v74 = v233;
            v74[1] = v75;
            v76 = (a6[7] + 48 * v47);
            v77 = *&v242[9];
            v78 = *v242;
            *v76 = v241;
            v76[1] = v78;
            *(&v76[1]._object + 1) = v77;
            v79 = a6[2];
            v51 = __OFADD__(v79, 1);
            v80 = v79 + 1;
            if (v51)
            {
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

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a6[2] = v80;
          }

          a1 = v232;
          v232[14] = a6;
          swift_endAccess();

LABEL_81:
          sub_101010148(a5, a4);
        }

        else
        {
          objc_opt_self();
          v55 = swift_dynamicCastObjCClass();
          if (v55)
          {
            v228 = a5;
            v56 = v55;
            [v55 doubleValue];
            v58 = v57;
            v59 = [v56 integerValue];
            v24 = v230;
            if (v58 == v59)
            {
              v60 = v59;
              v61 = a4;
              v62 = a1;
              v63 = sub_1000DFAD8();
              swift_beginAccess();
              v241._countAndFlagsBits = v60;
              *&v242[8] = &type metadata for Int;
              *&v242[16] = v63;
              v242[24] = 2;
              v64 = swift_isUniquelyReferenced_nonNull_native();
              v238[0] = v62[14];
              v65 = v238[0];
              v62[14] = 0x8000000000000000;
              v66 = sub_100771D58(v233, v234);
              v68 = *(v65 + 16);
              v69 = (v67 & 1) == 0;
              v51 = __OFADD__(v68, v69);
              v70 = v68 + v69;
              if (v51)
              {
                goto LABEL_153;
              }

              v71 = v67;
              a4 = v61;
              if (*(v65 + 24) >= v70)
              {
                a3 = v229;
                if ((v64 & 1) == 0)
                {
                  v215 = v66;
                  sub_1010050E8();
                  v66 = v215;
                }
              }

              else
              {
                sub_100FE65C4(v70, v64);
                v66 = sub_100771D58(v233, v234);
                a3 = v229;
                if ((v71 & 1) != (v72 & 1))
                {
                  goto LABEL_165;
                }
              }

              a5 = v228;
              if ((v71 & 1) == 0)
              {
                a6 = v238[0];
                *(v238[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
                v110 = (a6[6] + 16 * v66);
                v111 = v234;
                *v110 = v233;
                v110[1] = v111;
                v112 = (a6[7] + 48 * v66);
                v113 = *&v242[9];
                v114 = *v242;
                *v112 = v241;
                v112[1] = v114;
                *(&v112[1]._object + 1) = v113;
                v115 = a6[2];
                v51 = __OFADD__(v115, 1);
                v116 = v115 + 1;
                if (v51)
                {
                  goto LABEL_157;
                }

                goto LABEL_79;
              }

LABEL_77:
              v117 = v66;

              a6 = v238[0];
              sub_10118B568(&v241, *(v238[0] + 56) + 48 * v117);
            }

            else
            {
              v101 = sub_1000DFA84();
              swift_beginAccess();
              *&v241._countAndFlagsBits = v58;
              *&v242[8] = &type metadata for Double;
              *&v242[16] = v101;
              v242[24] = 3;
              v102 = swift_isUniquelyReferenced_nonNull_native();
              v238[0] = a1[14];
              v103 = v238[0];
              a1[14] = 0x8000000000000000;
              v66 = sub_100771D58(v233, v234);
              v105 = *(v103 + 16);
              v106 = (v104 & 1) == 0;
              v51 = __OFADD__(v105, v106);
              v107 = v105 + v106;
              if (v51)
              {
                goto LABEL_156;
              }

              v108 = v104;
              if (*(v103 + 24) >= v107)
              {
                a3 = v229;
                if ((v102 & 1) == 0)
                {
                  v216 = v66;
                  sub_1010050E8();
                  v66 = v216;
                }
              }

              else
              {
                sub_100FE65C4(v107, v102);
                v66 = sub_100771D58(v233, v234);
                a3 = v229;
                if ((v108 & 1) != (v109 & 1))
                {
                  goto LABEL_165;
                }
              }

              a5 = v228;
              if (v108)
              {
                goto LABEL_77;
              }

              a6 = v238[0];
              *(v238[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
              v118 = (a6[6] + 16 * v66);
              v119 = v234;
              *v118 = v233;
              v118[1] = v119;
              v120 = (a6[7] + 48 * v66);
              v121 = *&v242[9];
              v122 = *v242;
              *v120 = v241;
              v120[1] = v122;
              *(&v120[1]._object + 1) = v121;
              v123 = a6[2];
              v51 = __OFADD__(v123, 1);
              v116 = v123 + 1;
              if (v51)
              {
                goto LABEL_159;
              }

LABEL_79:
              a6[2] = v116;
            }

            a1 = v232;
            v232[14] = a6;
            swift_endAccess();
            goto LABEL_81;
          }

          a3 = v229;
          v24 = v230;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v91 = type metadata accessor for Logger();
          sub_1000076D4(v91, qword_10177C6D0);
          v92 = v14;
          v93 = Logger.logObject.getter();
          a6 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v93, a6))
          {
            *&v94 = COERCE_DOUBLE(swift_slowAlloc());
            v228 = a5;
            a5 = v94;
            v95 = swift_slowAlloc();
            LODWORD(v234) = a4;
            a4 = v95;
            *a5 = v226;
            *(a5 + 4) = v92;
            *v95 = v92;
            v96 = v92;
            _os_log_impl(&_mh_execute_header, v93, a6, "Unsupported value type: %@!", a5, 0xCu);
            sub_10000B3A8(a4, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v228, v234);
          }

          else
          {

            sub_101010148(a5, a4);
          }

          a1 = v232;
        }
      }
    }

    while (1)
    {
      v28 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v28 >= a3)
      {

        return;
      }

      a2 = *(v24 + 8 * v28);
      ++v7;
      if (a2)
      {
        v7 = v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_148:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_150:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C6D0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v241._countAndFlagsBits = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(v14, v15, &v241._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v18, v19, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v20, 0xCu);
    sub_100007BAC(v21);
  }
}