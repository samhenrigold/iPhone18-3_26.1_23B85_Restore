uint64_t sub_10118D168()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1011675EC(v2, v3);
}

uint64_t sub_10118D200()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014650;

  return sub_10116783C(v2, v3, v5, v4);
}

uint64_t sub_10118D2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1011647FC(a1, v4, v5, v6);
}

uint64_t sub_10118D360()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101164D20(v2, v3);
}

void sub_10118D458(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
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
    v223 = a2;
    v222 = a3;
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
    a2 = ((v19 + 63) >> 6);
    *&v23 = 138412290;
    v224 = v23;
    v228 = a1;
    v226 = a2;
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
            a3 = v215 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v97 + 16))(a3);
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
          a3 = v236;
          v77 = v237;
          v78 = sub_1000035D0(v235, v236);
          v221 = v215;
          v79 = *(a3 - 8);
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
              (v79[1])(v84, a3);
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
            (v79[1])(v130, a3);
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
          (v79[1])(v124, a3);
          if (v125)
          {
            goto LABEL_165;
          }

LABEL_94:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
LABEL_105:
            v138 = dispatch thunk of BinaryInteger._lowWord.getter();
            (v79[1])(v81, a3);
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

              a3 = v150;
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
                if ((a3 & 1) != (v154 & 1))
                {
                  goto LABEL_166;
                }

                v155 = v142;
              }

              a1 = v228;
              a2 = v226;
              if (a3)
              {
                a3 = v149;

                v173 = v232;
                sub_10118B568(&v233, v232[7] + 48 * a3);
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

              a3 = swift_slowAlloc();
              v184 = swift_slowAlloc();
              *a3 = v224;
              *(a3 + 4) = v182;
              *v184 = v182;
              v185 = v182;
              _os_log_impl(&_mh_execute_header, v143, v183, "Unsupported value type: %@!", a3, 0xCu);
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

              a3 = v168;
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
                if ((a3 & 1) != (v172 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v228;
              if ((a3 & 1) == 0)
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
              a3 = v167;

              v24 = v232;
              sub_10118B568(&v233, v232[7] + 48 * a3);
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

              a3 = v191;
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
                if ((a3 & 1) != (v195 & 1))
                {
                  goto LABEL_166;
                }
              }

              a1 = v228;
              if (a3)
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
              (v218[1])(v219, a3);
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
            (v218[1])(v137, a3);
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

        a3 = v46;
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
          if ((a3 & 1) != (v51 & 1))
          {
            goto LABEL_166;
          }
        }

        a1 = v228;
        LOBYTE(v32) = v41;
        a2 = v226;
        if (a3)
        {
          a3 = v45;

          v69 = v235[0];
          sub_10118B568(&v238, *(v235[0] + 56) + 48 * a3);
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
        a2 = v226;
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

          a3 = v64;
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
            if ((a3 & 1) != (v68 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v228;
          if ((a3 & 1) == 0)
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
          a3 = v63;

          v108 = v235[0];
          sub_10118B568(&v238, *(v235[0] + 56) + 48 * a3);
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

          a3 = v103;
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
            if ((a3 & 1) != (v107 & 1))
            {
              goto LABEL_166;
            }
          }

          a1 = v228;
          if (a3)
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

      a2 = v226;
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

      a3 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *a3 = v224;
      *(a3 + 4) = v87;
      *v90 = v87;
      v91 = v87;
      _os_log_impl(&_mh_execute_header, v88, v89, "Unsupported value type: %@!", a3, 0xCu);
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

      if (v25 >= a2)
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

uint64_t sub_10118EEE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_101166C40(v2, v3, v4, v6, v5);
}

uint64_t sub_10118EFA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101166260(v2, v3);
}

uint64_t sub_10118F044()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101165F24(v2, v3);
}

uint64_t sub_10118F0E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101165E28(v2, v3);
}

uint64_t sub_10118F18C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_101165D2C(v2, v3);
}

unint64_t sub_10118F230()
{
  result = qword_1016C9738;
  if (!qword_1016C9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9738);
  }

  return result;
}

uint64_t sub_10118F284()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10118F2C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_101167AAC(v2, v3, v5, v4);
}

__n128 sub_10118F37C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10118F390(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10118F3CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_10118F418(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

unint64_t sub_10118F480()
{
  result = qword_1016C9740;
  if (!qword_1016C9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9740);
  }

  return result;
}

uint64_t sub_10118F518()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 56);
  aBlock[4] = sub_1011970CC;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016693D0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10000415C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_10118F7CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C730);
  sub_1000076D4(v0, qword_10177C730);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10118F84C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x536E6F636165622ELL;
  }
}

unint64_t sub_10118F894()
{
  v1 = type metadata accessor for AccessoryMetadata(0);
  __chkstk_darwin(v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  __chkstk_darwin(v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_101197190(v0, v10, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6E776F6E6B6E752ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v5 + 32))(v7, v10, v4);
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v21 = 0xD000000000000028;
      v22 = 0x8000000101351B10;
      sub_10000415C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = v21;
      (*(v5 + 8))(v7, v4);
      result = v17;
      break;
    case 2:
      sub_100D5DD08(v10, v3);
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v21 = 0xD00000000000001CLL;
      v22 = 0x8000000101351AD0;
      v18._countAndFlagsBits = sub_100230E34();
      String.append(_:)(v18);

      v19 = v21;
      sub_1008AFD40(v3);
      result = v19;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0x676E697373696D2ELL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
    case 10:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x74756F656D69742ELL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x70707553746F6E2ELL;
      break;
    case 13:
      result = 0x6176616E5574622ELL;
      break;
    default:
      v13 = *v10;
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v21 = 0xD000000000000013;
      v22 = 0x800000010134D700;
      v20[1] = v13;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v14._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v14);

      result = v21;
      break;
  }

  return result;
}

void *sub_10118FD4C()
{
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v22 = v0;
  v0[2] = v6;
  v0[4] = 0;
  v0[5] = &_swiftEmptySetSingleton;
  v19[0] = sub_1000BC488();
  v20 = "AlreadyInProgress";
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  v19[2] = sub_10000415C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v19[1] = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7 = *(v1 + 104);
  v8 = v21;
  v7(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v22;
  v22[6] = v9;
  v20 = ".searchpartyd.ObjectDiscovery";
  v7(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = 0;
  sub_1000BC4D4(&qword_1016AF9D8, &unk_1013D37E0);
  swift_allocObject();
  v10[8] = CurrentValueSubject.init(_:)();
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v14;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  v15 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(type metadata accessor for CentralManager());
  sub_1013190AC(0, v15, 2.0);
  v10[3] = v17;
  sub_101190C50();
  return v10;
}

uint64_t sub_10119021C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_1000BC4D4(&qword_1016C9A28, &qword_101409EF0);
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_1000BC4D4(&qword_1016C9A30, &qword_101409EF8);
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v34 = *(a3 + 24);
  v35 = a4;
  v33 = a4;

  sub_1000BC4D4(&qword_1016A7438, &unk_101409F00);
  Lock.callAsFunction<A>(_:)();
  sub_1000041A4(&qword_1016A7440, &qword_1016A7438, &unk_101409F00, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100101B58();
  Publisher<>.setFailureType<A>(to:)();

  if (qword_101695528 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v18, qword_10177CED8);
  v36 = *(a3 + 56);
  v19 = v36;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_1000BC488();
  sub_1000041A4(&qword_1016C9A38, &qword_1016C9A28, &qword_101409EF0, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
  sub_10000415C(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v21 = v19;
  v22 = v30;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

  (*(v29 + 8))(v13, v22);
  v23 = swift_allocObject();
  v24 = v33;
  v23[2] = v33;
  v23[3] = sub_100407A2C;
  v23[4] = v17;
  sub_1000041A4(&qword_1016C9A40, &qword_1016C9A30, &qword_101409EF8, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v25 = v24;
  v26 = v32;
  Publisher.oneshot(_:)();

  return (*(v31 + 8))(v16, v26);
}

double sub_1011906EC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 11;
  return result;
}

void sub_10119070C(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, &v49, &unk_1016A6150, &unk_10139DB30);
  if (v51)
  {
    v47 = v49;
    v48[0] = *v50;
    *(v48 + 9) = *&v50[9];
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177CEA8);
    sub_100101AA8(&v47, v46);
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v44 = a4;
      v17 = v16;
      v18 = swift_slowAlloc();
      v43 = a3;
      v45 = v18;
      *v17 = 136446466;
      v19 = sub_1013181BC();
      v21 = v20;
      sub_100101B04(v46);
      v22 = sub_1000136BC(v19, v21, &v45);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2082;
      v23 = [*&v13[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000415C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v9 + 8))(v11, v8);
      v27 = sub_1000136BC(v24, v26, &v45);

      *(v17 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "waitForCompanionLinkReady error: %{public}s. Peripheral %{public}s.", v17, 0x16u);
      swift_arrayDestroy();
      a3 = v43;
    }

    else
    {

      sub_100101B04(v46);
    }

    a3(v13, 0);
    sub_100101B04(&v47);
  }

  else
  {
    v44 = a4;
    v28 = v49;
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177CEA8);
    v30 = a2;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = a3;
      v35 = v34;
      *&v47 = v34;
      *v33 = 136446210;
      v36 = [*&v30[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000415C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v9 + 8))(v11, v8);
      v40 = sub_1000136BC(v37, v39, &v47);

      *(v33 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "companionLinkReady for peripheral %{public}s.", v33, 0xCu);
      sub_100007BAC(v35);
      a3 = v43;
    }

    v41 = v28;
    a3(v28, 0);
  }
}

void *sub_101190C50()
{
  v1 = sub_1000BC4D4(&qword_1016C9918, &qword_101409DC8);
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - v2;
  v4 = sub_1000BC4D4(&qword_1016C9920, &qword_101409DD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_1000BC4D4(&qword_1016A6380, &qword_1013B3CF8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v23 = 0x7365547265646E75;
  v24 = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v25 & 1) == 0)
  {
    v13 = sub_10131A394();
    v21 = v5;
    v23 = v13;
    v19 = v1;
    sub_1000BC4D4(&qword_1016A6388, &unk_1013B3D00);
    v20 = v4;
    v18 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_1000041A4(&qword_1016A6390, &qword_1016A6388, &unk_1013B3D00, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10000415C(&qword_1016A6398, type metadata accessor for CBManagerState, &unk_101386D24);
    Publisher<>.removeDuplicates()();

    sub_1000041A4(&unk_1016A63A0, &qword_1016A6380, &qword_1013B3CF8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v14 = Publisher.share()();
    (*(v9 + 8))(v11, v8);
    v23 = v14;
    sub_1000BC4D4(&qword_1016C9928, &unk_101409DD8);
    sub_1000041A4(&qword_1016C9930, &qword_1016C9928, &unk_101409DD8, &protocol conformance descriptor for Publishers.Share<A>);
    Publisher<>.sink(receiveValue:)();
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v23 = v14;
    Publisher.filter(_:)();

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_10169B790, &unk_101395270);
    sub_1000041A4(&qword_1016C9938, &qword_1016C9918, &qword_101409DC8, &protocol conformance descriptor for Publishers.Filter<A>);
    sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270, v18);
    v15 = v19;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    (*(v22 + 8))(v3, v15);
    swift_getKeyPath();
    v23 = *(v0 + 64);
    sub_1000041A4(&qword_1016C9940, &qword_1016C9920, &qword_101409DD0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);

    v16 = v20;
    Publisher<>.assign<A>(to:on:)();

    (*(v21 + 8))(v7, v16);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

void sub_101191244(void *a1)
{
  if (*a1 == 5)
  {
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C730);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_12;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "powered on";
    goto LABEL_11;
  }

  if (*a1 != 4)
  {
    return;
  }

  if (qword_101695288 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C730);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "powered off";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);
  }

LABEL_12:
}

uint64_t sub_1011913F0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016C9948, &qword_101409E28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *(a1 + 24);
  *(swift_allocObject() + 16) = v8;
  v9 = v8;
  sub_1000BC4D4(&unk_1016CDD90, &unk_101409E30);
  sub_1000041A4(&qword_1016C9950, &unk_1016CDD90, &unk_101409E30, &protocol conformance descriptor for Future<A, B>);
  Deferred.init(createPublisher:)();
  sub_1000041A4(&qword_1016C9958, &qword_1016C9948, &qword_101409E28, &protocol conformance descriptor for Deferred<A>);
  v10 = Publisher.eraseToAnyPublisher()();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v10;
  return result;
}

uint64_t sub_1011915AC(int a1)
{
  v18 = a1;
  v1 = type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  __chkstk_darwin(v1);
  v2 = sub_1000BC4D4(&qword_1016C98D8, &qword_101409DA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-v4];
  v6 = sub_1000BC4D4(&qword_1016C98E0, &qword_101409DB0);
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  v9 = sub_1000BC4D4(&qword_1016C98E8, &qword_101409DB8);
  v20 = *(v9 - 8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = &v17[-v10];
  v12 = type metadata accessor for Feature.Bluetooth();
  v22[3] = v12;
  v22[4] = sub_10000415C(&qword_1016B1168, &type metadata accessor for Feature.Bluetooth, &protocol conformance descriptor for Feature.Bluetooth);
  v13 = sub_1000280DC(v22);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.Bluetooth.sentinel(_:), v12);
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100007BAC(v22);
  if (v12)
  {
    v22[0] = sub_10131E144(v18 & 1);
    sub_1000BC4D4(&qword_1016C98F8, &qword_101409DC0);
    sub_1000041A4(&qword_1016C9900, &qword_1016C98F8, &qword_101409DC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10000415C(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error, &unk_101409F40);
    Publisher.mapError<A>(_:)();

    swift_allocObject();
    swift_weakInit();
    sub_1000041A4(&qword_1016C9908, &qword_1016C98E0, &qword_101409DB0, &protocol conformance descriptor for Publishers.MapError<A, B>);
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v19 + 8))(v8, v6);
    sub_1000041A4(&qword_1016C9910, &qword_1016C98E8, &qword_101409DB8, &protocol conformance descriptor for Publishers.HandleEvents<A>);
    v14 = v21;
    v15 = Publisher.eraseToAnyPublisher()();
    (*(v20 + 8))(v11, v14);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    type metadata accessor for DiscoveredObject(0);
    sub_10000415C(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error, &unk_101409F40);
    Fail.init(error:)();
    sub_1000041A4(&qword_1016C98F0, &qword_1016C98D8, &qword_101409DA8, &protocol conformance descriptor for Fail<A, B>);
    v15 = Publisher.eraseToAnyPublisher()();
    (*(v3 + 8))(v5, v2);
  }

  return v15;
}

uint64_t sub_101191B28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100101B58();
  v4 = swift_allocError();
  sub_100101AA8(a1, v5);
  *a2 = v4;
  type metadata accessor for BluetoothCommunicationCoordinator.Error(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_101191BA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10131ECB4();
  }

  return result;
}

uint64_t sub_101191C00(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a1;
  v63 = a3;
  v52 = sub_1000BC4D4(&qword_1016A62F8, &qword_1013B3CC8);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v46 - v6;
  v55 = sub_1000BC4D4(&qword_1016C9960, &qword_101409E40);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v46 - v7;
  v8 = sub_1000BC4D4(&qword_1016C9968, &unk_101409E48);
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v56 = &v46 - v9;
  v61 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  __chkstk_darwin(v61);
  v11 = &v46 - v10;
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695288 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C730);
  v59 = *(v13 + 16);
  v59(v15, v63, v12);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v60 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v48 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v49 = a2;
    v47 = v22;
    v65[0] = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_10000415C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v11;
    v26 = v25;
    (*(v13 + 8))(v15, v12);
    v27 = sub_1000136BC(v23, v26, v65);
    v11 = v24;

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "readMetadata from %{private,mask.hash}s", v21, 0x16u);
    sub_100007BAC(v47);
    a2 = v49;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong && (v31 = *(Strong + 24), v32 = , __chkstk_darwin(v32), *(&v46 - 2) = v63, *(&v46 - 1) = v31, sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0), Lock.callAsFunction<A>(_:)(), v31, (v33 = v64) != 0))
    {
      v34 = *(v29 + 24);
      v35 = sub_10131F050(v33, 0);

      v64 = v35;
      static Subscribers.Demand.unlimited.getter();
      v36 = a2;
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      type metadata accessor for Peripheral(0);
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
      v37 = v50;
      Publisher.flatMap<A, B>(maxPublishers:_:)();

      sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
      sub_1000041A4(&unk_1016A6300, &qword_1016A62F8, &qword_1013B3CC8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
      v38 = v53;
      v39 = v52;
      Publisher.map<A>(_:)();
      (*(v51 + 8))(v37, v39);
      sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
      sub_1000041A4(&qword_1016C9970, &qword_1016C9960, &qword_101409E40, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
      v40 = v56;
      v41 = v55;
      Publisher.catch<A>(_:)();
      (*(v54 + 8))(v38, v41);
      v42 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v43 = swift_allocObject();
      v44 = v62;
      v43[2] = v42;
      v43[3] = v44;
      v43[4] = v36;
      sub_1000041A4(&qword_1016C9978, &qword_1016C9968, &unk_101409E48, &protocol conformance descriptor for Publishers.Catch<A, B>);

      v45 = v58;
      Publisher<>.sink(receiveValue:)();

      (*(v57 + 8))(v40, v45);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    else
    {
      v59(v11, v63, v60);
      type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v62(v11);

      return sub_10000B3A8(v11, &qword_10169E890, &unk_1013BB590);
    }
  }

  return result;
}

uint64_t sub_1011925A8@<X0>(uint64_t *a1@<X8>)
{
  sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = &type metadata for BAServiceIdentifier;
  *(inited + 64) = &off_10162CAF0;
  *(inited + 32) = 0;
  v3 = (inited + 32);
  v4 = sub_100A255C8(inited);
  swift_setDeallocating();
  result = sub_100007BAC(v3);
  *a1 = v4;
  return result;
}

uint64_t sub_101192640(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v7 = sub_1000BC4D4(&qword_1016C9980, &qword_101409E58);
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v45 = sub_1000BC4D4(&qword_1016C9988, &qword_101409E60);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = v37 - v10;
  v12 = sub_1000BC4D4(&qword_1016C9990, &unk_101409E68);
  v47 = *(v12 - 8);
  __chkstk_darwin(v12);
  v46 = v37 - v13;
  v14 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  __chkstk_darwin(v14);
  v16 = (v37 - v15);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_1000D2A70(a1, &v50, &unk_1016A6150, &unk_10139DB30);
    if (v52)
    {
      v48 = v50;
      *v49 = *v51;
      *&v49[9] = *&v51[9];
      sub_100101B58();
      v19 = swift_allocError();
      sub_100101AA8(&v48, v20);
      *v16 = v19;
      type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      a3(v16);

      sub_10000B3A8(v16, &qword_10169E890, &unk_1013BB590);
      return sub_100101B04(&v48);
    }

    else
    {
      v40 = v12;
      v42 = a3;
      v21 = v50;
      *&v49[8] = &type metadata for BAServiceIdentifier;
      *&v49[16] = &off_10162CAF0;
      LOBYTE(v48) = 0;
      v22 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
      v23 = swift_beginAccess();
      v41 = v21;
      v24 = *&v21[v22];
      __chkstk_darwin(v23);
      v37[-2] = &v48;

      v25 = sub_1012BBDB4(sub_1001DB280, &v37[-4], v24);

      sub_100007BAC(&v48);
      if (v25)
      {
        v26 = sub_10039CF6C(&off_10160D418);
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        *(v27 + 24) = v26;
        sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
        swift_allocObject();

        v28 = Future.init(_:)();
        v39 = v25;
        *&v48 = v28;
        sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
        v29 = Publisher.eraseToAnyPublisher()();
        v37[3] = v29;

        *&v48 = v29;

        v37[2] = static Subscribers.Demand.unlimited.getter();
        v37[1] = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
        v37[0] = type metadata accessor for AccessoryMetadata(0);
        v38 = a4;
        sub_1000BC4D4(&qword_1016C9998, &qword_101409E78);
        sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_1000041A4(&qword_1016C99A0, &qword_1016C9998, &qword_101409E78, &protocol conformance descriptor for AnyPublisher<A, B>);
        Publisher.flatMap<A, B>(maxPublishers:_:)();

        sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
        sub_1000041A4(&qword_1016C99B0, &qword_1016C9980, &qword_101409E58, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
        Publisher.map<A>(_:)();
        (*(v43 + 8))(v9, v7);
        sub_1000BC4D4(&qword_1016C99B8, &qword_101409E88);
        sub_1000041A4(&qword_1016C99C0, &qword_1016C9988, &qword_101409E60, &protocol conformance descriptor for Publishers.Map<A, B>);
        sub_1000041A4(&qword_1016C99C8, &qword_1016C99B8, &qword_101409E88, &protocol conformance descriptor for Just<A>);
        v30 = v46;
        v31 = v45;
        Publisher.catch<A>(_:)();
        (*(v44 + 8))(v11, v31);
        v32 = swift_allocObject();
        v33 = v38;
        v32[2] = v42;
        v32[3] = v33;
        v34 = v41;
        v32[4] = v18;
        v32[5] = v34;
        sub_1000041A4(&qword_1016C99D0, &qword_1016C9990, &unk_101409E68, &protocol conformance descriptor for Publishers.Catch<A, B>);

        v35 = v34;
        v36 = v40;
        Publisher<>.sink(receiveValue:)();

        (*(v47 + 8))(v30, v36);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();
      }

      else
      {
        type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v42(v16);

        return sub_10000B3A8(v16, &qword_10169E890, &unk_1013BB590);
      }
    }
  }

  return result;
}

uint64_t sub_101192F28@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  sub_1000BC4D4(&qword_1016C99D8, &qword_101409E98);
  swift_allocObject();
  v7 = v5;

  Future.init(_:)();
  sub_1000041A4(&qword_1016C99E0, &qword_1016C99D8, &qword_101409E98, &protocol conformance descriptor for Future<A, B>);
  v8 = Publisher.eraseToAnyPublisher()();

  *a3 = v8;
  return result;
}

uint64_t sub_101193038(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, void *a5)
{
  v33 = a5;
  v34 = a4;
  v35 = a3;
  v36 = a2;
  v6 = sub_1000BC4D4(&qword_1016A6130, &qword_101409E90);
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_1000BC4D4(&qword_1016A6138, &unk_1013B3C00);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  __chkstk_darwin(v12);
  v14 = (&v29 - v13);
  v15 = type metadata accessor for AccessoryMetadata(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
  __chkstk_darwin(v18);
  v20 = (&v29 - v19);
  sub_1000D2A70(a1, &v29 - v19, &qword_1016C99A8, &qword_101409E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v20[1];
    v37 = *v20;
    v38[0] = v21;
    *(v38 + 9) = *(v20 + 25);
    sub_100101B58();
    v22 = swift_allocError();
    sub_100101AA8(&v37, v23);
    *v14 = v22;
    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v36(v14);
    sub_10000B3A8(v14, &qword_10169E890, &unk_1013BB590);
    return sub_100101B04(&v37);
  }

  else
  {
    sub_100D5DD08(v20, v17);
    sub_101197190(v17, v14, type metadata accessor for AccessoryMetadata);
    swift_storeEnumTagMultiPayload();
    v36(v14);
    sub_10000B3A8(v14, &qword_10169E890, &unk_1013BB590);
    v25 = v33;
    *&v37 = sub_10131FAE0(v33);
    sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
    sub_1000041A4(&qword_1016A6168, &qword_1016A6130, &qword_101409E90, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
    v26 = v30;
    Publisher.catch<A>(_:)();
    (*(v29 + 8))(v8, v26);
    *(swift_allocObject() + 16) = v25;
    sub_1000041A4(&qword_1016A6178, &qword_1016A6138, &unk_1013B3C00, &protocol conformance descriptor for Publishers.Catch<A, B>);
    v27 = v25;
    v28 = v32;
    Publisher<>.sink(receiveValue:)();

    (*(v31 + 8))(v11, v28);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    return sub_1008AFD40(v17);
  }
}

void sub_1011935F4(uint64_t a1, void *a2)
{
  sub_1000D2A70(a1, &v22, &unk_1016A6150, &unk_10139DB30);
  if (v24)
  {
    v20 = v22;
    v21[0] = *v23;
    *(v21 + 9) = *&v23[9];
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C730);
    sub_100101AA8(&v20, v19);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2112;
      sub_100101B58();
      swift_allocError();
      sub_100101AA8(v19, v9);
      v10 = v4;
      v11 = _convertErrorToNSError(_:)();
      sub_100101B04(v19);

      *(v7 + 14) = v11;
      v8[1] = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to disconnect from %@: %@", v7, 0x16u);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();
    }

    else
    {

      sub_100101B04(v19);
    }

    sub_100101B04(&v20);
  }

  else
  {
    sub_10000B3A8(&v22, &unk_1016A6150, &unk_10139DB30);
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C730);
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully disconnected after readMetadata on %@", v16, 0xCu);
      sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);
    }
  }
}

uint64_t sub_101193914(void *a1, ValueMetadata *a2, uint64_t *a3, uint64_t a4)
{
  v98 = a4;
  v7 = sub_1000BC4D4(&qword_1016A6048, &qword_101409EA0);
  v82 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v79 - v8;
  v89 = sub_1000BC4D4(&qword_1016C99E8, &qword_101409EA8);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v79 - v10;
  v91 = sub_1000BC4D4(&qword_1016C99F0, &qword_101409EB0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v79 - v11;
  v94 = sub_1000BC4D4(&qword_1016C99F8, &qword_101409EB8);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v79 - v12;
  v97 = sub_1000BC4D4(&qword_1016C9A00, &unk_101409EC0);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v79 - v13;
  v109 = sub_1000BC4D4(&qword_1016A6070, &unk_1013B3BA0);
  v107 = *(v109 - 8);
  v14 = __chkstk_darwin(v109);
  v16 = (&v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v14);
  v19 = &v79 - v18;
  __chkstk_darwin(v17);
  v84 = &v79 - v20;
  v102 = sub_1000BC4D4(&qword_1016A6078, &unk_101409ED0);
  v101 = *(v102 - 1);
  __chkstk_darwin(v102);
  v85 = &v79 - v21;
  v99 = sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
  __chkstk_darwin(v99);
  v23 = &v79 - v22;
  if (qword_101695288 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v106 = v16;
    v81 = v19;
    v83 = v9;
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177C730);
    v25 = a3;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    v28 = os_log_type_enabled(v26, v27);
    v100 = v25;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      *(v29 + 4) = v100;
      *v30 = v100;
      v31 = v100;
      _os_log_impl(&_mh_execute_header, v26, v27, "readMetadata from %{public}@", v29, 0xCu);
      sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

      v25 = v100;
    }

    v113 = &type metadata for BAServiceIdentifier;
    v114 = &off_10162CAF0;
    LOBYTE(v112) = 0;
    v32 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
    v33 = swift_beginAccess();
    v34 = *(v25 + v32);
    __chkstk_darwin(v33);
    *(&v79 - 2) = &v112;

    v35 = sub_1012BBDB4(sub_1001DB3F8, (&v79 - 4), v34);

    sub_100007BAC(&v112);
    if (!v35)
    {
      *(v23 + 3) = &type metadata for BAServiceIdentifier;
      *(v23 + 4) = &off_10162CAF0;
      *v23 = 0;
      v23[40] = 1;
      swift_storeEnumTagMultiPayload();
      (a1)(v23);
      return sub_10000B3A8(v23, &qword_1016C99A8, &qword_101409E80);
    }

    v103 = v7;
    v79 = a1;
    v80 = a2;
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v23 = 0;
    a1 = _swiftEmptyArrayStorage;
    a2 = &type metadata for BACharacteristicIdentifier.AccessoryInformation;
    v108 = v35;
    do
    {
      v38 = *(&off_101609968 + v23 + 32);
      v113 = &type metadata for BACharacteristicIdentifier.AccessoryInformation;
      v114 = &off_10162CAE0;
      LOBYTE(v112) = v38;
      v9 = *(v35 + 40);
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      *(&v79 - 2) = &v112;

      v39 = sub_1012BBE10(sub_1001DB2A0, (&v79 - 4), v9);

      isUniquelyReferenced_nonNull_native = sub_100007BAC(&v112);
      if (v39)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100A5D53C(0, a1[2] + 1, 1, a1);
          a1 = isUniquelyReferenced_nonNull_native;
        }

        v41 = a1[2];
        v40 = a1[3];
        v9 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100A5D53C((v40 > 1), v41 + 1, 1, a1);
          a1 = isUniquelyReferenced_nonNull_native;
        }

        a1[2] = v9;
        v37 = &a1[2 * v41];
        *(v37 + 32) = v38;
        v37[5] = v39;
      }

      ++v23;
      v35 = v108;
    }

    while (v23 != 9);
    v19 = a1[2];
    if (!v19)
    {
      break;
    }

    v112 = _swiftEmptyArrayStorage;
    a3 = &v112;
    sub_101124F10(0, v19, 0);
    v42 = 0;
    v104 = v107 + 32;
    v105 = v19;
    v7 = v112;
    v16 = a1 + 5;
    while (v42 < a1[2])
    {
      v43 = *(v16 - 8);
      v110 = v7;
      v44 = *v16;
      sub_1000BC4D4(&qword_1016A6088, &qword_1013B3BB8);
      swift_allocObject();
      swift_retain_n();
      v111 = Future.init(_:)();
      sub_1000041A4(&unk_1016A6090, &qword_1016A6088, &qword_1013B3BB8, &protocol conformance descriptor for Future<A, B>);
      v45 = Publisher.eraseToAnyPublisher()();

      v111 = v45;
      v46 = swift_allocObject();
      *(v46 + 16) = v43;
      *(v46 + 24) = v44;

      sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
      a2 = sub_1000BC4D4(&unk_1016A60A0, &unk_10139FD40);
      sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
      a3 = &v111;
      v47 = v106;
      Publisher.map<A>(_:)();
      v7 = v110;

      v112 = v7;
      v49 = *(v7 + 16);
      v48 = *(v7 + 24);
      if (v49 >= v48 >> 1)
      {
        a3 = &v112;
        sub_101124F10((v48 > 1), v49 + 1, 1);
        v7 = v112;
      }

      ++v42;
      *(v7 + 16) = v49 + 1;
      v23 = v107;
      v9 = (v23[80] + 32) & ~v23[80];
      (*(v107 + 4))(v7 + v9 + *(v107 + 9) * v49, v47, v109);
      v16 += 2;
      v19 = v105;
      if (v105 == v42)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  v23 = v107;
  v9 = (v107[80] + 32) & ~v107[80];
  v7 = _swiftEmptyArrayStorage;
LABEL_22:
  v51 = *(v7 + 16);
  v52 = v109;
  if (v51)
  {
    v53 = v84;
    v107 = *(v23 + 2);
    (v107)(v84, v7 + v9, v109);
    v54 = sub_1000BC4D4(&qword_1016A60B0, &qword_1013B3BD0);
    v55 = v85;
    v106 = v54;
    Publishers.Map.map<A>(_:)();
    v56 = v23 + 8;
    v57 = *(v23 + 1);
    v57(v53, v52);
    sub_1000BC4D4(&qword_1016A60B8, &qword_1013B3BD8);
    v58 = swift_allocObject();
    (*(v101 + 4))(&v58[*(*v58 + class metadata base offset for PublisherBox + 16)], v55, v102);
    v59 = v51 - 1;
    if (v59)
    {
      v62 = *(v23 + 9);
      v110 = v7;
      v104 = v62;
      v105 = (v82 + 8);
      v63 = &v62[v7 + v9];
      v64 = v83;
      v65 = v81;
      v101 = v56;
      v102 = v57;
      do
      {
        (v107)(v65, v63, v52);
        v112 = v58;
        sub_1000BC4D4(&qword_1016A60C0, &qword_1013B3BE0);
        sub_1000041A4(&qword_1016A60C8, &qword_1016A60C0, &qword_1013B3BE0, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_1000041A4(&qword_1016A60D0, &qword_1016A6070, &unk_1013B3BA0, &protocol conformance descriptor for Publishers.Map<A, B>);
        v52 = v109;
        Publisher.zip<A, B>(_:_:)();

        sub_1000041A4(&qword_1016A60D8, &qword_1016A6048, &qword_101409EA0, &protocol conformance descriptor for Publishers.Map<A, B>);
        v66 = v103;
        v58 = Publisher.eraseToAnyPublisher()();
        (*v105)(v64, v66);
        v102(v65, v52);
        v63 = &v104[v63];
        --v59;
      }

      while (v59);

      v61 = v80;
      v60 = v79;
    }

    else
    {

      v60 = v79;
      v61 = v80;
    }

    v112 = v58;
    v67 = swift_allocObject();
    v68 = v100;
    *(v67 + 16) = v100;
    v69 = v68;
    sub_1000BC4D4(&qword_1016A60C0, &qword_1013B3BE0);
    type metadata accessor for AccessoryMetadata(0);
    sub_1000041A4(&qword_1016A60C8, &qword_1016A60C0, &qword_1013B3BE0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v70 = v86;
    Publisher.tryMap<A>(_:)();

    sub_1000041A4(&qword_1016C9A08, &qword_1016C99E8, &qword_101409EA8, &protocol conformance descriptor for Publishers.TryMap<A, B>);
    sub_100101B58();
    v71 = v87;
    v72 = v89;
    Publisher.mapError<A>(_:)();
    (*(v88 + 8))(v70, v72);
    sub_1000041A4(&qword_1016C9A10, &qword_1016C99F0, &qword_101409EB0, &protocol conformance descriptor for Publishers.MapError<A, B>);
    v73 = v92;
    v74 = v91;
    Publisher.map<A>(_:)();
    (*(v90 + 8))(v71, v74);
    sub_1000BC4D4(&qword_1016C99B8, &qword_101409E88);
    sub_1000041A4(&qword_1016C9A18, &qword_1016C99F8, &qword_101409EB8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016C99C8, &qword_1016C99B8, &qword_101409E88, &protocol conformance descriptor for Just<A>);
    v75 = v95;
    v76 = v94;
    Publisher.catch<A>(_:)();
    (*(v93 + 8))(v73, v76);
    v77 = swift_allocObject();
    *(v77 + 16) = v60;
    *(v77 + 24) = v61;
    sub_1000041A4(&qword_1016C9A20, &qword_1016C9A00, &unk_101409EC0, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v78 = v97;
    Publisher<>.sink(receiveValue:)();

    (*(v96 + 8))(v75, v78);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_101194B08(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AccessoryMetadata(0);
  __chkstk_darwin(v7);
  v9 = &v235 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Endianness();
  __chkstk_darwin(v10 - 8);
  v264 = &v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v266 = *(*a1 + 16);
  if (!v266)
  {
    v262 = 0;
    v110 = 0xF000000000000000;
LABEL_208:
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v139 = type metadata accessor for Logger();
    sub_1000076D4(v139, qword_10177C730);
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v140, v141, "Missing characteristic values!", v142, 2u);
    }

    sub_100101B58();
    swift_allocError();
    *v143 = 0u;
    *(v143 + 16) = 0u;
    *(v143 + 32) = 0;
    *(v143 + 40) = 11;
    swift_willThrow();
    sub_100006654(v262, v110);
    return;
  }

  v236 = a2;
  v237 = v7;
  v238 = a3;
  v239 = v9;
  v240 = v3;
  v241 = 0;
  v247 = 0;
  v242 = 0;
  v243 = 0;
  v258 = 0;
  v259 = 0;
  v262 = 0;
  v13 = 0;
  v14 = (v12 + 56);
  v260 = 0xF000000000000000;
  v244 = 5;
  v245 = 4;
  v248 = 1;
  v249 = 1;
  v250 = 1;
  v246 = 1;
  v265 = v12;
  while (1)
  {
    if (v13 >= *(v265 + 16))
    {
      __break(1u);
LABEL_245:
      v203 = v14;
      v204 = v241;
      v205 = BYTE3(v241);
      v206 = WORD1(v241);
      v207 = [*(v236 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
      v208 = v238;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v209 = v237;
      v210 = v237[9];
      v211 = type metadata accessor for AirTagVersionNumber();
      (*(*(v211 - 8) + 56))(v208 + v210, 1, 1, v211);
      v212 = sub_1010D99D0(SHIDWORD(v246));
      v213 = (v208 + v209[5]);
      v214 = v260;
      *v213 = v262;
      v213[1] = v214;
      v215 = (v208 + v209[6]);
      v216 = v243;
      *v215 = v242;
      v215[1] = v203;
      v217 = (v208 + v209[7]);
      *v217 = v216;
      v217[1] = v13;
      v218 = v208 + v209[8];
      *v218 = v204;
      *(v218 + 2) = v206;
      *(v218 + 3) = v205;
      v219 = v208 + v209[10];
      *v219 = HIDWORD(v241);
      *(v219 + 4) = 0;
      v220 = v208 + v209[11];
      *v220 = 0;
      *(v220 + 8) = 0;
      *(v220 + 16) = 1;
      v221 = v208 + v209[12];
      *v221 = v247;
      *(v221 + 8) = 0;
      v222 = v208 + v209[13];
      *v222 = v212;
      *(v222 + 4) = 0;
      LOBYTE(v216) = v244;
      *(v208 + v209[14]) = v245;
      *(v208 + v209[15]) = v216;
      v223 = (v208 + v209[16]);
      *v223 = 0;
      v223[1] = 0xE000000000000000;
      v224 = v208 + v209[17];
      *v224 = 0;
      *(v224 + 4) = 1;
      if (qword_101695288 != -1)
      {
        swift_once();
      }

      v225 = type metadata accessor for Logger();
      sub_1000076D4(v225, qword_10177C730);
      v226 = v239;
      sub_101197190(v208, v239, type metadata accessor for AccessoryMetadata);
      v227 = Logger.logObject.getter();
      v228 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v227, v228))
      {
        v229 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        v267 = v230;
        *v229 = 136446210;
        v231 = sub_100230E34();
        v233 = v232;
        sub_1008AFD40(v226);
        v234 = sub_1000136BC(v231, v233, &v267);

        *(v229 + 4) = v234;
        _os_log_impl(&_mh_execute_header, v227, v228, "Metadata: %{public}s", v229, 0xCu);
        sub_100007BAC(v230);
      }

      else
      {

        sub_1008AFD40(v226);
      }

      return;
    }

    v15 = *(v14 - 2);
    v16 = *(v14 - 1);
    v17 = *v14;
    v18 = *(v14 - 24);
    if (v18 > 3)
    {
      break;
    }

    if (*(v14 - 24) <= 1u)
    {
      if (*(v14 - 24))
      {

        sub_100017D5C(v16, v17);

        v267 = v16;
        v268 = v17;
        sub_1000E0A3C();
        v30 = DataProtocol.nullTerminatedUTF8String.getter();
        v258 = v31;
        if (!v31)
        {

          if (qword_101695288 != -1)
          {
            swift_once();
          }

          v174 = type metadata accessor for Logger();
          sub_1000076D4(v174, qword_10177C730);
          sub_100017D5C(v16, v17);
          v113 = Logger.logObject.getter();
          v175 = static os_log_type_t.error.getter();
          sub_100016590(v16, v17);
          v176 = os_log_type_enabled(v113, v175);
          v251 = v17;
          if (v176)
          {
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            v267 = v178;
            *v177 = 136315138;
            v179 = Data.hexString.getter();
            v181 = v15;
            v182 = v16;
            v183 = sub_1000136BC(v179, v180, &v267);

            *(v177 + 4) = v183;
            v16 = v182;
            v15 = v181;
            _os_log_impl(&_mh_execute_header, v113, v175, "Could not convert manufacturerName data to UTF8 [%s]", v177, 0xCu);
            sub_100007BAC(v178);
          }

          goto LABEL_232;
        }

        v242 = v30;
        goto LABEL_32;
      }

      v23 = *(v14 - 2);
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 >>= 62;
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          goto LABEL_201;
        }

        v39 = *(v15 + 16);
        v38 = *(v15 + 24);
        v24 = v38 - v39;
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_254;
        }

        v40 = *(v14 - 1);
      }

      else
      {
        if (!v17)
        {
          v24 = BYTE6(v16);
LABEL_64:
          if (v24 != 8)
          {
LABEL_201:

            sub_100017D5C(v15, v16);

            sub_100016590(v15, v16);
            if (qword_101695288 != -1)
            {
              swift_once();
            }

            v133 = type metadata accessor for Logger();
            sub_1000076D4(v133, qword_10177C730);
            sub_100017D5C(v15, v16);
            v134 = Logger.logObject.getter();
            v135 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v134, v135))
            {
              v136 = swift_slowAlloc();
              *v136 = 134217984;
              if (v17 > 1)
              {
                v137 = v260;
                if (v17 == 2)
                {
                  v193 = *(v15 + 16);
                  v192 = *(v15 + 24);
                  v194 = __OFSUB__(v192, v193);
                  v138 = v192 - v193;
                  if (v194)
                  {
                    __break(1u);
                    goto LABEL_239;
                  }
                }

                else
                {
                  v138 = 0;
                }
              }

              else
              {
                v137 = v260;
                if (!v17)
                {
                  v138 = BYTE6(v16);
                  goto LABEL_242;
                }

LABEL_239:
                LODWORD(v138) = HIDWORD(v15) - v15;
                if (__OFSUB__(HIDWORD(v15), v15))
                {
                  __break(1u);
                }

                v138 = v138;
              }

LABEL_242:
              v260 = v137;
              *(v136 + 4) = v138;
              v195 = v136;
              sub_100016590(v15, v16);
              _os_log_impl(&_mh_execute_header, v134, v135, "Invalid length for productData: [%ld]", v195, 0xCu);
            }

            else
            {
              sub_100016590(v15, v16);
            }

            sub_100101B58();
            v240 = swift_allocError();
            v197 = v196;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v198 = swift_allocObject();
            *(v198 + 32) = 1635017060;
            *(v198 + 16) = xmmword_101385D80;
            *(v198 + 72) = &type metadata for Data;
            *(v198 + 40) = 0xE400000000000000;
            *(v198 + 48) = v15;
            *(v198 + 56) = v16;
            sub_100017D5C(v15, v16);
            v199 = NSCocoaErrorDomain;
            sub_10090403C(v198);
            swift_setDeallocating();
            sub_10000B3A8(v198 + 32, &unk_101695C20, &unk_101386D90);
            swift_deallocClassInstance();
            v200 = objc_allocWithZone(NSError);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v202 = [v200 initWithDomain:v199 code:2048 userInfo:isa];

            *v197 = v23;
            *(v197 + 8) = v202;
            *(v197 + 40) = 8;
            swift_willThrow();

            sub_100006654(v262, v260);
            sub_100016590(v15, v16);
            goto LABEL_233;
          }

          sub_100017D5C(v15, v16);
          sub_100016590(v15, v16);

          sub_100006654(v262, v260);
          v262 = v15;
          v260 = v16;
          goto LABEL_4;
        }

        v40 = *(v14 - 1);
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_253;
        }

        v24 = HIDWORD(v15) - v15;
      }

      sub_100017D5C(v40, v16);
      goto LABEL_64;
    }

    if (v18 == 2)
    {

      sub_100017D5C(v16, v17);

      v267 = v16;
      v268 = v17;
      sub_1000E0A3C();
      v25 = DataProtocol.nullTerminatedUTF8String.getter();
      v259 = v26;
      if (!v26)
      {

        if (qword_101695288 != -1)
        {
          swift_once();
        }

        v164 = type metadata accessor for Logger();
        sub_1000076D4(v164, qword_10177C730);
        sub_100017D5C(v16, v17);
        v113 = Logger.logObject.getter();
        v165 = static os_log_type_t.error.getter();
        sub_100016590(v16, v17);
        v166 = os_log_type_enabled(v113, v165);
        v251 = v17;
        if (v166)
        {
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v267 = v168;
          *v167 = 136315138;
          v169 = Data.hexString.getter();
          v171 = v15;
          v172 = v16;
          v173 = sub_1000136BC(v169, v170, &v267);

          *(v167 + 4) = v173;
          v16 = v172;
          v15 = v171;
          _os_log_impl(&_mh_execute_header, v113, v165, "Could not convert modelName data to UTF8 [%s]", v167, 0xCu);
          sub_100007BAC(v168);
        }

        goto LABEL_232;
      }

      v243 = v25;
LABEL_32:

      sub_100016590(v16, v17);
      goto LABEL_4;
    }

    sub_100017D5C(v16, v17);
    static Endianness.current.getter();
    sub_100235658();
    FixedWidthInteger.init(data:ofEndianness:)();

    v247 = v267;
    v250 = v268;
LABEL_4:
    ++v13;
    v14 += 4;
    if (v266 == v13)
    {
      v110 = v260;
      if (v260 >> 60 == 15)
      {

        goto LABEL_208;
      }

      v14 = v258;
      v13 = v259;
      if (!v258 || !v259)
      {

        v110 = v260;
        goto LABEL_208;
      }

      if ((v249 & 1) != 0 || (v246 & 1) != 0 || (v250 & 1) != 0 || (v248 & 1) != 0 || v245 == 4 || v244 == 5)
      {
        v111 = v262;
        v110 = v260;
        sub_10002E98C(v262, v260);

        sub_100006654(v111, v110);
        goto LABEL_208;
      }

      goto LABEL_245;
    }
  }

  if (*(v14 - 24) <= 5u)
  {
    if (v18 == 4)
    {

      sub_100017D5C(v16, v17);
      static Endianness.current.getter();
      sub_100101824();
      FixedWidthInteger.init(data:ofEndianness:)();

      v248 = 0;
      v27 = v267;
      if (BYTE4(v267))
      {
        v27 = 0;
      }

      HIDWORD(v246) = v27;
      goto LABEL_4;
    }

    v34 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v34 != 2)
      {
        goto LABEL_192;
      }

      v42 = *(v16 + 16);
      v41 = *(v16 + 24);
      v35 = v41 - v42;
      if (__OFSUB__(v41, v42))
      {
        goto LABEL_252;
      }
    }

    else
    {
      if (!v34)
      {
        v35 = BYTE6(v17);
        goto LABEL_69;
      }

      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_251;
      }

      v35 = HIDWORD(v16) - v16;
    }

    sub_100017D5C(*(v14 - 1), *v14);
LABEL_69:
    if (v35 != 4)
    {
LABEL_192:

      sub_100017D5C(v16, v17);

      sub_100016590(v16, v17);
      if (qword_101695288 == -1)
      {
        goto LABEL_193;
      }

      goto LABEL_304;
    }

    sub_100017D5C(v16, v17);
    sub_100016590(v16, v17);
    v51 = Data.subdata(in:)();
    v255 = v52;
    v257 = Data.subdata(in:)();
    v263 = v53;
    v54 = Data.subdata(in:)();
    v261 = v55;
    v56 = v55 >> 62;
    v256 = v51;
    v254 = v54;
    if ((v55 >> 62) > 1)
    {
      if (v56 != 2)
      {
        goto LABEL_307;
      }

      if (*(v54 + 16) > 1)
      {
        goto LABEL_258;
      }

      if (*(v54 + 24) < 2)
      {
        goto LABEL_262;
      }

      v63 = v15;
      v15 = v16;
      v64 = __DataStorage._bytes.getter();
      if (!v64)
      {
        goto LABEL_310;
      }

      v16 = v64;
      v65 = __DataStorage._offset.getter();
      if (__OFSUB__(1, v65))
      {
        goto LABEL_268;
      }

      if (*(v254 + 16) > 0)
      {
        goto LABEL_272;
      }

      if (*(v254 + 24) < 1)
      {
        goto LABEL_276;
      }

      v253 = *(v16 + 1 - v65);
      v66 = __DataStorage._bytes.getter();
      if (!v66)
      {
        goto LABEL_319;
      }

      v16 = v66;
      v67 = __DataStorage._offset.getter();
      if (__OFSUB__(0, v67))
      {
        goto LABEL_284;
      }

      v252 = *(v16 - v67);
      v16 = v15;
      v15 = v63;
    }

    else
    {
      if (!v56)
      {
        v57 = v255;
        if ((v261 & 0xFE000000000000) == 0)
        {
          goto LABEL_257;
        }

        if ((v261 & 0xFF000000000000) == 0)
        {
          goto LABEL_265;
        }

        v252 = v254;
        v253 = v254 >> 8;
LABEL_117:
        v82 = v263 >> 62;
        if ((v263 >> 62) > 1)
        {
          if (v82 != 2)
          {
            goto LABEL_314;
          }

          if (*(v257 + 16) > 0)
          {
            goto LABEL_277;
          }

          if (*(v257 + 24) < 1)
          {
            goto LABEL_285;
          }

          v88 = v15;
          v15 = v16;
          v89 = __DataStorage._bytes.getter();
          if (!v89)
          {
            goto LABEL_321;
          }

          v16 = v89;
          v90 = __DataStorage._offset.getter();
          v91 = -v90;
          if (__OFSUB__(0, v90))
          {
            goto LABEL_294;
          }
        }

        else
        {
          if (!v82)
          {
            if ((v263 & 0xFF000000000000) == 0)
            {
              goto LABEL_278;
            }

            v83 = v257;
LABEL_149:
            v97 = v57 >> 62;
            if ((v57 >> 62) > 1)
            {
              if (v97 != 2)
              {
                goto LABEL_320;
              }

              if (*(v51 + 16) > 0)
              {
                goto LABEL_291;
              }

              if (*(v51 + 24) < 1)
              {
                goto LABEL_300;
              }

              v98 = v83;
              v255 = v15;
              v15 = v16;
              v103 = __DataStorage._bytes.getter();
              if (!v103)
              {
                goto LABEL_326;
              }

              v16 = v103;
              v104 = __DataStorage._offset.getter();
              v105 = -v104;
              if (__OFSUB__(0, v104))
              {
                goto LABEL_303;
              }
            }

            else
            {
              if (!v97)
              {
                v98 = v83;
                sub_100016590(v51, v57);
                sub_100016590(v257, v263);
                sub_100016590(v254, v261);
                sub_100016590(v16, v17);

                if ((v57 & 0xFF000000000000) == 0)
                {
                  goto LABEL_293;
                }

                LODWORD(v51) = v51;
                goto LABEL_178;
              }

              if (v51 < &_mh_execute_header || v51 > 0)
              {
                goto LABEL_296;
              }

              v98 = v83;
              v255 = v15;
              v15 = v16;
              v108 = __DataStorage._bytes.getter();
              if (!v108)
              {
                goto LABEL_327;
              }

              v16 = v108;
              v109 = __DataStorage._offset.getter();
              v105 = -v109;
              if (__OFSUB__(0, v109))
              {
                goto LABEL_299;
              }
            }

            LODWORD(v51) = *(v16 + v105);
            sub_100016590(v256, v57);
            sub_100016590(v257, v263);
            sub_100016590(v254, v261);
            sub_100016590(v15, v17);

LABEL_178:
            v249 = 0;
            LODWORD(v241) = (v253 << 8) & 0xFF00 | v252 | (v98 << 16) | (v51 << 24);
            goto LABEL_4;
          }

          if (v257 < &_mh_execute_header || v257 > 0)
          {
            goto LABEL_283;
          }

          v88 = v15;
          v15 = v16;
          v95 = __DataStorage._bytes.getter();
          if (!v95)
          {
            goto LABEL_323;
          }

          v16 = v95;
          v96 = __DataStorage._offset.getter();
          v91 = -v96;
          if (__OFSUB__(0, v96))
          {
            goto LABEL_288;
          }
        }

        v83 = *(v16 + v91);
        v16 = v15;
        v15 = v88;
        v57 = v255;
        v51 = v256;
        goto LABEL_149;
      }

      v251 = v17;
      if (v54 < 0x200000000)
      {
        goto LABEL_261;
      }

      v76 = v54;
      if (v54 > 1)
      {
        goto LABEL_261;
      }

      v17 = v15;
      v77 = v16;
      v15 = v261;
      v78 = __DataStorage._bytes.getter();
      if (!v78)
      {
        goto LABEL_308;
      }

      v16 = v78;
      v79 = __DataStorage._offset.getter();
      if (__OFSUB__(1, v79))
      {
        goto LABEL_266;
      }

      if (v76 > 0)
      {
        goto LABEL_270;
      }

      v15 = *(v16 + 1 - v79);
      v80 = __DataStorage._bytes.getter();
      if (!v80)
      {
        goto LABEL_313;
      }

      v16 = v80;
      v81 = __DataStorage._offset.getter();
      if (__OFSUB__(0, v81))
      {
        goto LABEL_275;
      }

      v253 = v15;
      v252 = *(v16 - v81);
      v15 = v17;
      v17 = v251;
      v16 = v77;
    }

    v57 = v255;
    v51 = v256;
    goto LABEL_117;
  }

  if (v18 != 6)
  {
    v19 = *(v14 - 1);
    v20 = *v14;
    if (v18 == 7)
    {
      sub_100017D5C(v19, v20);

      sub_100017D5C(v16, v17);
      static Endianness.current.getter();
      sub_1000198E8();
      FixedWidthInteger.init(data:ofEndianness:)();
      if ((v267 & 0x100) == 0)
      {
        v21 = v267;
        sub_100016590(v16, v17);

        if (v21 >= 3)
        {
          v22 = 3;
        }

        else
        {
          v22 = v21;
        }

        v245 = v22;
        goto LABEL_4;
      }

      if (qword_101695288 != -1)
      {
        swift_once();
      }

      v154 = type metadata accessor for Logger();
      sub_1000076D4(v154, qword_10177C730);
      sub_100017D5C(v16, v17);
      v113 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();
      sub_100016590(v16, v17);
      v156 = os_log_type_enabled(v113, v155);
      v251 = v17;
      if (v156)
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v267 = v158;
        *v157 = 136315138;
        v159 = Data.hexString.getter();
        v161 = v15;
        v162 = v16;
        v163 = sub_1000136BC(v159, v160, &v267);

        *(v157 + 4) = v163;
        v16 = v162;
        v15 = v161;
        _os_log_impl(&_mh_execute_header, v113, v155, "Could not convert batteryType data to UInt8 [%s]", v157, 0xCu);
        sub_100007BAC(v158);
      }
    }

    else
    {
      sub_100017D5C(v19, v20);

      sub_100017D5C(v16, v17);
      static Endianness.current.getter();
      sub_1000198E8();
      FixedWidthInteger.init(data:ofEndianness:)();
      if ((v267 & 0x100) == 0)
      {
        v32 = v267;
        sub_100016590(v16, v17);

        if (v32 >= 4)
        {
          v33 = 4;
        }

        else
        {
          v33 = v32;
        }

        v244 = v33;
        goto LABEL_4;
      }

      if (qword_101695288 != -1)
      {
        swift_once();
      }

      v144 = type metadata accessor for Logger();
      sub_1000076D4(v144, qword_10177C730);
      sub_100017D5C(v16, v17);
      v113 = Logger.logObject.getter();
      v145 = static os_log_type_t.error.getter();
      sub_100016590(v16, v17);
      v146 = os_log_type_enabled(v113, v145);
      v251 = v17;
      if (v146)
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v267 = v148;
        *v147 = 136315138;
        v149 = Data.hexString.getter();
        v151 = v15;
        v152 = v16;
        v153 = sub_1000136BC(v149, v150, &v267);

        *(v147 + 4) = v153;
        v16 = v152;
        v15 = v151;
        _os_log_impl(&_mh_execute_header, v113, v145, "Could not convert batteryState data to UInt8 [%s]", v147, 0xCu);
        sub_100007BAC(v148);
      }
    }

    goto LABEL_232;
  }

  v28 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v28 != 2)
    {
      goto LABEL_196;
    }

    v37 = *(v16 + 16);
    v36 = *(v16 + 24);
    v29 = v36 - v37;
    if (__OFSUB__(v36, v37))
    {
      goto LABEL_255;
    }

    goto LABEL_54;
  }

  if (!v28)
  {
    v29 = BYTE6(v17);
    goto LABEL_55;
  }

  if (__OFSUB__(HIDWORD(v16), v16))
  {
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    swift_once();
LABEL_193:
    v112 = type metadata accessor for Logger();
    sub_1000076D4(v112, qword_10177C730);
    sub_100017D5C(v16, v17);
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    sub_100016590(v16, v17);
    v115 = os_log_type_enabled(v113, v114);
    v251 = v17;
    if (v115)
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v267 = v117;
      *v116 = 136315138;
      v118 = Data.hexString.getter();
      v120 = v15;
      v121 = v16;
      v122 = sub_1000136BC(v118, v119, &v267);

      *(v116 + 4) = v122;
      v16 = v121;
      v15 = v120;
      _os_log_impl(&_mh_execute_header, v113, v114, "Could not convert firmwareVersion data to VersionNumber [%s]", v116, 0xCu);
      sub_100007BAC(v117);
    }

LABEL_232:

    sub_100101B58();
    v240 = swift_allocError();
    v185 = v184;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 32) = 1635017060;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 72) = &type metadata for Data;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v16;
    v187 = v251;
    *(inited + 56) = v251;
    sub_100017D5C(v16, v187);
    v188 = NSCocoaErrorDomain;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    v189 = objc_allocWithZone(NSError);
    v190 = Dictionary._bridgeToObjectiveC()().super.isa;

    v191 = [v189 initWithDomain:v188 code:2048 userInfo:v190];

    *v185 = v15;
    *(v185 + 8) = v191;
    *(v185 + 40) = 8;
    swift_willThrow();

    sub_100006654(v262, v260);
    sub_100016590(v16, v187);
LABEL_233:

    return;
  }

  v29 = HIDWORD(v16) - v16;
LABEL_54:
  sub_100017D5C(*(v14 - 1), *v14);
LABEL_55:
  if (v29 != 4)
  {
LABEL_196:

    sub_100017D5C(v16, v17);

    sub_100016590(v16, v17);
    if (qword_101695288 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_1000076D4(v123, qword_10177C730);
    sub_100017D5C(v16, v17);
    v113 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();
    sub_100016590(v16, v17);
    v125 = os_log_type_enabled(v113, v124);
    v251 = v17;
    if (v125)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v267 = v127;
      *v126 = 136315138;
      v128 = Data.hexString.getter();
      v130 = v15;
      v131 = v16;
      v132 = sub_1000136BC(v128, v129, &v267);

      *(v126 + 4) = v132;
      v16 = v131;
      v15 = v130;
      _os_log_impl(&_mh_execute_header, v113, v124, "Could not convert protocolVersion data to VersionNumber [%s]", v126, 0xCu);
      sub_100007BAC(v127);
    }

    goto LABEL_232;
  }

  sub_100017D5C(v16, v17);
  sub_100016590(v16, v17);
  v43 = Data.subdata(in:)();
  v257 = v44;
  v45 = Data.subdata(in:)();
  v263 = v46;
  v47 = Data.subdata(in:)();
  v261 = v48;
  v49 = v48 >> 62;
  v255 = v45;
  v256 = v43;
  v254 = v47;
  if ((v48 >> 62) <= 1)
  {
    if (!v49)
    {
      v50 = v257;
      if ((v261 & 0xFE000000000000) == 0)
      {
        goto LABEL_259;
      }

      if ((v261 & 0xFF000000000000) == 0)
      {
        goto LABEL_264;
      }

      v252 = v254;
      v253 = v254 >> 8;
LABEL_104:
      v74 = v263 >> 62;
      if ((v263 >> 62) > 1)
      {
        if (v74 != 2)
        {
          goto LABEL_315;
        }

        if (*(v45 + 16) > 0)
        {
          goto LABEL_281;
        }

        if (*(v45 + 24) < 1)
        {
          goto LABEL_286;
        }

        v84 = v15;
        v15 = v16;
        v85 = __DataStorage._bytes.getter();
        if (!v85)
        {
          goto LABEL_316;
        }

        v16 = v85;
        v86 = __DataStorage._offset.getter();
        v87 = -v86;
        if (__OFSUB__(0, v86))
        {
          goto LABEL_290;
        }
      }

      else
      {
        if (!v74)
        {
          if ((v263 & 0xFF000000000000) == 0)
          {
            goto LABEL_280;
          }

          v75 = v45;
LABEL_140:
          v94 = v50 >> 62;
          if ((v50 >> 62) > 1)
          {
            if (v94 != 2)
            {
              goto LABEL_318;
            }

            if (*(v43 + 16) > 0)
            {
              goto LABEL_295;
            }

            if (*(v43 + 24) < 1)
            {
              goto LABEL_298;
            }

            LODWORD(v246) = v75;
            v15 = v16;
            v99 = v50;
            v100 = __DataStorage._bytes.getter();
            if (!v100)
            {
              goto LABEL_325;
            }

            v16 = v100;
            v101 = __DataStorage._offset.getter();
            v102 = -v101;
            if (__OFSUB__(0, v101))
            {
              goto LABEL_302;
            }
          }

          else
          {
            if (!v94)
            {
              sub_100016590(v43, v50);
              sub_100016590(v45, v263);
              sub_100016590(v254, v261);
              sub_100016590(v16, v17);

              if ((v257 & 0xFF000000000000) == 0)
              {
                goto LABEL_292;
              }

              LODWORD(v43) = v43;
              goto LABEL_172;
            }

            if (v43 < &_mh_execute_header || v43 > 0)
            {
              goto LABEL_297;
            }

            LODWORD(v246) = v75;
            v15 = v16;
            v99 = v50;
            v106 = __DataStorage._bytes.getter();
            if (!v106)
            {
              goto LABEL_324;
            }

            v16 = v106;
            v107 = __DataStorage._offset.getter();
            v102 = -v107;
            if (__OFSUB__(0, v107))
            {
              goto LABEL_301;
            }
          }

          LODWORD(v43) = *(v16 + v102);
          sub_100016590(v256, v99);
          sub_100016590(v255, v263);
          sub_100016590(v254, v261);
          sub_100016590(v15, v17);

          v75 = v246;
LABEL_172:
          LODWORD(v246) = 0;
          HIDWORD(v241) = (v253 << 8) & 0xFF00 | v252 | (v75 << 16) | (v43 << 24);
          goto LABEL_4;
        }

        if (v45 < &_mh_execute_header || v45 > 0)
        {
          goto LABEL_282;
        }

        v84 = v15;
        v15 = v16;
        v92 = __DataStorage._bytes.getter();
        if (!v92)
        {
          goto LABEL_322;
        }

        v16 = v92;
        v93 = __DataStorage._offset.getter();
        v87 = -v93;
        if (__OFSUB__(0, v93))
        {
          goto LABEL_289;
        }
      }

      v75 = *(v16 + v87);
      v16 = v15;
      v15 = v84;
      v43 = v256;
      v50 = v257;
      v45 = v255;
      goto LABEL_140;
    }

    v251 = v17;
    if (v47 < 0x200000000)
    {
      goto LABEL_260;
    }

    v68 = v47;
    if (v47 > 1)
    {
      goto LABEL_260;
    }

    v17 = v15;
    v69 = v16;
    v15 = v261;
    v70 = __DataStorage._bytes.getter();
    if (!v70)
    {
      goto LABEL_309;
    }

    v16 = v70;
    v71 = __DataStorage._offset.getter();
    if (__OFSUB__(1, v71))
    {
      goto LABEL_267;
    }

    if (v68 > 0)
    {
      goto LABEL_269;
    }

    v15 = *(v16 + 1 - v71);
    v72 = __DataStorage._bytes.getter();
    if (!v72)
    {
      goto LABEL_312;
    }

    v16 = v72;
    v73 = __DataStorage._offset.getter();
    if (__OFSUB__(0, v73))
    {
      goto LABEL_274;
    }

    v253 = v15;
    v252 = *(v16 - v73);
    v15 = v17;
    v17 = v251;
    v16 = v69;
LABEL_103:
    v43 = v256;
    v50 = v257;
    v45 = v255;
    goto LABEL_104;
  }

  if (v49 == 2)
  {
    if (*(v47 + 16) > 1)
    {
      goto LABEL_256;
    }

    if (*(v47 + 24) < 2)
    {
      goto LABEL_263;
    }

    v58 = v15;
    v15 = v16;
    v59 = __DataStorage._bytes.getter();
    if (!v59)
    {
      goto LABEL_311;
    }

    v16 = v59;
    v60 = __DataStorage._offset.getter();
    if (__OFSUB__(1, v60))
    {
      goto LABEL_271;
    }

    if (*(v254 + 16) > 0)
    {
      goto LABEL_273;
    }

    if (*(v254 + 24) < 1)
    {
      goto LABEL_279;
    }

    v253 = *(v16 + 1 - v60);
    v61 = __DataStorage._bytes.getter();
    if (!v61)
    {
      goto LABEL_317;
    }

    v16 = v61;
    v62 = __DataStorage._offset.getter();
    if (__OFSUB__(0, v62))
    {
      goto LABEL_287;
    }

    v252 = *(v16 - v62);
    v16 = v15;
    v15 = v58;
    goto LABEL_103;
  }

  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
}

uint64_t sub_101196CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_101197190(a1, a2, type metadata accessor for AccessoryMetadata);
  sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_101196D0C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
  __chkstk_darwin(v2);
  sub_100101AA8(a1, &v5 - v3);
  swift_storeEnumTagMultiPayload();
  return Just.init(_:)();
}

uint64_t sub_101196DBC(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C99A8, &qword_101409E80);
  v8 = __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v16[-1] - v11);
  sub_1000D2A70(a1, &v16[-1] - v11, &qword_1016C99A8, &qword_101409E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v12[1];
    v15 = *v12;
    v16[0] = v13;
    *(v16 + 9) = *(v12 + 25);
    sub_100101AA8(&v15, v10);
    swift_storeEnumTagMultiPayload();
    a2(v10);
    sub_10000B3A8(v10, &qword_1016C99A8, &qword_101409E80);
    return sub_100101B04(&v15);
  }

  else
  {
    sub_100D5DD08(v12, v6);
    sub_101197190(v6, v10, type metadata accessor for AccessoryMetadata);
    swift_storeEnumTagMultiPayload();
    a2(v10);
    sub_10000B3A8(v10, &qword_1016C99A8, &qword_101409E80);
    return sub_1008AFD40(v6);
  }
}

id *sub_101196FBC()
{

  return v0;
}

uint64_t sub_10119700C()
{
  sub_101196FBC();

  return swift_deallocClassInstance();
}

unint64_t sub_101197078()
{
  result = qword_1016C98D0;
  if (!qword_1016C98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C98D0);
  }

  return result;
}

uint64_t type metadata accessor for BluetoothCommunicationCoordinator.Error(uint64_t a1)
{
  result = qword_1016C9AB8;
  if (!qword_1016C9AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101197190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011972A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_101197378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharedBeaconRecord(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_101197470(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  type metadata accessor for SharedBeaconRecord(319);
  if (v7 <= 0x3F)
  {
    sub_100289B54(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10119750C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C9C10, &qword_10140A058);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_101198230();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for SharedBeaconRecord(0);
  sub_101198470(&qword_1016A4918, type metadata accessor for SharedBeaconRecord, &unk_10140BA4C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for LegacyShareEnvelope(0) + 20));
    v10[15] = 1;
    sub_1000BC4D4(&qword_10169C438, &qword_10140A060);
    sub_1011982D8(&qword_10169C440, &qword_10169C448, &protocol conformance descriptor for CryptoKeys, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_101197728@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016C9C30, &qword_10140A078);
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for LegacyShareEnvelope(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_101198230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_101198470(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord, &unk_10140BA74);
  v14 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100591C20(v20, v13);
  sub_1000BC4D4(&qword_10169C438, &qword_10140A060);
  v22 = 1;
  sub_1011982D8(&qword_10169C480, &qword_10169C488, &protocol conformance descriptor for CryptoKeys, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1011984B8(v13, v17, type metadata accessor for LegacyShareEnvelope);
  sub_100007BAC(a1);
  return sub_101198374(v13, type metadata accessor for LegacyShareEnvelope);
}

uint64_t sub_101197A84(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C9C20, &unk_10140A068);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_101198284();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for SharedBeaconRecord(0);
  sub_101198470(&qword_1016A4918, type metadata accessor for SharedBeaconRecord, &unk_10140BA4C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for FamilyShareEnvelopeV1(0) + 20));
    v10[15] = 1;
    sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
    sub_1011983D4(&qword_10169C468, &qword_10169C470, &unk_1013E9BB4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_101197CA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016C9C38, &qword_10140A080);
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for FamilyShareEnvelopeV1(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_101198284();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_101198470(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord, &unk_10140BA74);
  v14 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100591C20(v20, v13);
  sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
  v22 = 1;
  sub_1011983D4(&qword_10169C498, &qword_10169C4A0, &unk_1013E9BDC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1011984B8(v13, v17, type metadata accessor for FamilyShareEnvelopeV1);
  sub_100007BAC(a1);
  return sub_101198374(v13, type metadata accessor for FamilyShareEnvelopeV1);
}

uint64_t sub_101197FFC(uint64_t a1)
{
  v2 = sub_101198230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101198038(uint64_t a1)
{
  v2 = sub_101198230();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011980A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6542646572616873 && a2 == 0xEC0000006E6F6361;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B6C616974696E69 && a2 == 0xEB00000000737965)
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

uint64_t sub_101198188(uint64_t a1)
{
  v2 = sub_101198284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011981C4(uint64_t a1)
{
  v2 = sub_101198284();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_101198230()
{
  result = qword_1016C9C18;
  if (!qword_1016C9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C18);
  }

  return result;
}

unint64_t sub_101198284()
{
  result = qword_1016C9C28;
  if (!qword_1016C9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C28);
  }

  return result;
}

uint64_t sub_1011982D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C438, &qword_10140A060);
    sub_101198470(a2, type metadata accessor for CryptoKeys, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101198374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011983D4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C460, &qword_1013B1CA0);
    sub_101198470(a2, type metadata accessor for FamilyCryptoKeysV1, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101198470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1011984B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_101198544()
{
  result = qword_1016C9C40;
  if (!qword_1016C9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C40);
  }

  return result;
}

unint64_t sub_10119859C()
{
  result = qword_1016C9C48;
  if (!qword_1016C9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C48);
  }

  return result;
}

unint64_t sub_1011985F4()
{
  result = qword_1016C9C50;
  if (!qword_1016C9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C50);
  }

  return result;
}

unint64_t sub_10119864C()
{
  result = qword_1016C9C58;
  if (!qword_1016C9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C58);
  }

  return result;
}

unint64_t sub_1011986A4()
{
  result = qword_1016C9C60;
  if (!qword_1016C9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C60);
  }

  return result;
}

unint64_t sub_1011986FC()
{
  result = qword_1016C9C68;
  if (!qword_1016C9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9C68);
  }

  return result;
}

uint64_t sub_101198758(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_8:
      v7 = sp_key_index_map_contains_key();

      return v7 & 1;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v7 = sub_101198BFC(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);

  return v7 & 1;
}

uint64_t sub_1011988BC()
{
  sp_key_index_map_destroy();
  sub_100429ACC(v0 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_beaconIdentifier);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeaconKeyIndexMap(uint64_t a1)
{
  result = qword_1016C9CA0;
  if (!qword_1016C9CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101198984(uint64_t a1)
{
  result = type metadata accessor for BeaconIdentifier(319);
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

unint64_t sub_101198A2C(unint64_t a1, unint64_t a2)
{
  v14 = 0;
  record_length = sp_key_index_map_get_record_length();
  if (record_length == 32)
  {
    sub_100017D5C(a1, a2);

    if (sub_101198758(a1, a2, v2, &v14))
    {
      sub_100016590(a1, a2);
      LOBYTE(a1) = 0;
      LODWORD(v8) = v14;
    }

    else
    {
      sub_100035310(6, a1, a2, &v15);
      v11 = v15;
      v8 = v16;
      v12 = sub_1000355E4(v15, v16);
      a1 = HIDWORD(v12) & 1;
      sub_100016590(v11, v8);
      LODWORD(v8) = v12;
    }
  }

  else if (record_length == 10)
  {
    sub_100017D5C(a1, a2);
    sub_100017D5C(a1, a2);
    sub_10002EA98(6, a1, a2, &v15);
    v6 = v15;
    v7 = v16;
    v8 = sub_1000355E4(v15, v16);
    sub_100016590(v6, v7);
    if ((v8 & 0x100000000) != 0)
    {
      sub_100035310(6, a1, a2, &v15);
      v9 = v15;
      v8 = v16;
      v10 = sub_1000355E4(v15, v16);
      a1 = HIDWORD(v10) & 1;
      sub_100016590(v9, v8);
      LODWORD(v8) = v10;
    }

    else
    {
      sub_100016590(a1, a2);
      LOBYTE(a1) = 0;
    }
  }

  else
  {
    LODWORD(v8) = 0;
    LOBYTE(a1) = 1;
  }

  return v8 | (a1 << 32);
}

uint64_t sub_101198BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return sp_key_index_map_contains_key();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AccessoryProductInfo(uint64_t a1)
{
  result = qword_1016C9DB0;
  if (!qword_1016C9DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101198D08(uint64_t a1)
{
  type metadata accessor for ServerStatusCode();
  if (v1 <= 0x3F)
  {
    sub_101199020(319, &qword_10169D5F0, &type metadata for Bool, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_101199020(319, &qword_1016A8838, &type metadata for Int, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_101199020(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100838A34(319, &qword_1016A8128, &type metadata accessor for URL);
          if (v5 <= 0x3F)
          {
            sub_100838A34(319, &qword_1016A86B0, type metadata accessor for AccessoryInfoResponseContent.Configuration);
            if (v6 <= 0x3F)
            {
              sub_100838A88(319);
              if (v7 <= 0x3F)
              {
                sub_101199020(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for URL();
                  if (v9 <= 0x3F)
                  {
                    sub_101199020(319, &qword_101699980, &type metadata for String, &type metadata accessor for Array);
                    if (v10 <= 0x3F)
                    {
                      sub_101199020(319, &unk_1016A8848, &type metadata for Coordinates, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
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
  }
}

void sub_101199020(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_101199070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v148 - v10;
  v12 = __chkstk_darwin(v9);
  v176 = &v148 - v13;
  v14 = __chkstk_darwin(v12);
  v175 = &v148 - v15;
  v16 = __chkstk_darwin(v14);
  v174 = &v148 - v17;
  __chkstk_darwin(v16);
  v173 = &v148 - v18;
  v19 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v19 - 8);
  v182 = &v148 - v20;
  v21 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v22 = __chkstk_darwin(v21 - 8);
  v181 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v180 = &v148 - v24;
  v25 = type metadata accessor for ServerStatusCode();
  v178 = *(v25 - 8);
  v179 = v25;
  __chkstk_darwin(v25);
  v177 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [v2 beaconGroupVersion];
  if (v27)
  {
    v167 = [v2 beaconGroupVersion];
  }

  else
  {
    v167 = 0;
  }

  (*(v178 + 104))(v177, enum case for ServerStatusCode.success(_:), v179);
  v166 = [v2 eligibleForPairing];
  v165 = [v2 hidden];
  v28 = [v2 findmyProductId];
  v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v29;

  v162 = [v2 isHELEAccessory];
  v161 = [v2 isManagedAccessory];
  v160 = [v2 supportBeaconGroupInfo];
  v30 = [v2 modelName];
  v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v158 = v31;

  v32 = [v2 manufacturerName];
  v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v156 = v33;

  v183 = v2;
  v34 = [v2 defaultRole];
  v35 = v34;
  if (v34)
  {
    v155 = [v34 roleId];
  }

  else
  {
    v155 = 0;
  }

  v36 = [v183 appBundleIdentifier];
  if (v36)
  {
    v37 = v36;
    v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v38;
  }

  else
  {
    v154 = 0;
    v153 = 0;
  }

  v39 = [v183 lowBatteryInfoURL];
  if (v39)
  {
    v40 = v180;
    v41 = v39;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v40;
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v42 = v180;
  }

  v168 = v5;
  v44 = *(v5 + 56);
  v44(v42, v43, 1, v4);
  v44(v181, 1, 1, v4);
  v45 = v183;
  v46 = [v183 version];
  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v151 = v47;

  [v45 txPower];
  v49 = v48;
  v50 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  (*(*(v50 - 8) + 56))(v182, 1, 1, v50);
  v150 = sub_1010D8CF8([v45 capabilities]);
  v51 = [v45 layoutTemplate];
  v170 = a1;
  v169 = v4;
  v172 = v8;
  v171 = v11;
  v149 = v27;
  if (!v51)
  {
    v57 = 0;
    goto LABEL_32;
  }

  v52 = v51;
  sub_10083C300();
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v53 >> 62)
  {
    v54 = _CocoaArrayWrapper.endIndex.getter();
    if (v54)
    {
      goto LABEL_16;
    }

LABEL_31:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v54)
  {
    goto LABEL_31;
  }

LABEL_16:
  v190 = _swiftEmptyArrayStorage;
  result = sub_101124538(0, v54 & ~(v54 >> 63), 0);
  if (v54 < 0)
  {
    __break(1u);
    return result;
  }

  v56 = 0;
  v57 = v190;
  v184 = v54 - 1;
  v185 = v53 & 0xC000000000000001;
  v186 = v53;
  if ((v53 & 0xC000000000000001) == 0)
  {
    goto LABEL_19;
  }

LABEL_18:
  for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v53 + 8 * v56 + 32))
  {
    v59 = i;
    LODWORD(v188) = [i partIdentifier];
    v60 = [v59 partType];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v187 = v62;

    v63 = [v59 partName];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = [v59 partSymbol];
    if (v67)
    {
      v68 = v67;
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0;
    }

    v72 = [v59 isPrimary];

    v73 = v57;
    v190 = v57;
    v75 = v57[2];
    v74 = v57[3];
    if (v75 >= v74 >> 1)
    {
      sub_101124538((v74 > 1), v75 + 1, 1);
      v73 = v190;
    }

    v73[2] = v75 + 1;
    v57 = v73;
    v76 = &v73[8 * v75];
    *(v76 + 32) = v188;
    v77 = *&v189[3];
    *(v76 + 33) = *v189;
    *(v76 + 9) = v77;
    v78 = v187;
    v76[5] = v61;
    v76[6] = v78;
    v76[7] = v64;
    v76[8] = v66;
    v76[9] = v69;
    v76[10] = v71;
    *(v76 + 88) = v72;
    if (v184 == v56)
    {
      break;
    }

    ++v56;
    v53 = v186;
    if (v185)
    {
      goto LABEL_18;
    }

LABEL_19:
    ;
  }

  v45 = v183;
LABEL_32:
  v79 = [v45 defaultHeroIcon];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = [v45 defaultListIcon];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = [v45 defaultHeroIcon2x];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = [v45 defaultListIcon2x];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v83 = [v45 defaultHeroIcon3x];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v84 = [v45 defaultListIcon3x];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = [v45 learnModeMetadata];
  v86 = [v85 title];

  if (v86)
  {
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v187 = v88;
    v188 = v87;
  }

  else
  {
    v187 = 0;
    v188 = 0;
  }

  v89 = v183;
  v90 = [v183 learnModeMetadata];
  v91 = [v90 moreDescription];

  v186 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = [v89 disableMetadata];
  v93 = [v92 title];

  if (v93)
  {
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v184 = v95;
    v185 = v94;
  }

  else
  {
    v184 = 0;
    v185 = 0;
  }

  LODWORD(v148) = v148 == 0;
  v96 = v149 == 0;
  v97 = v183;
  v98 = [v183 disableMetadata];
  v99 = [v98 moreDescription];

  v149 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = [v97 learnModeMetadata];
  [v100 percentageX];
  v102 = v101;

  v103 = [v97 learnModeMetadata];
  [v103 percentageY];
  v105 = v104;

  v106 = [v97 disableMetadata];
  [v106 percentageX];
  v108 = v107;

  v109 = [v97 disableMetadata];
  [v109 percentageY];
  v111 = v110;

  v112 = [v97 learnModeMetadata];
  v113 = [v112 image];

  v114 = type metadata accessor for AccessoryProductInfo(0);
  v115 = v170;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v116 = [v97 disableMetadata];
  v117 = [v116 image];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = [v97 learnModeMetadata];
  v119 = [v118 image2x];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = [v97 disableMetadata];
  v121 = [v120 image2x];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v122 = [v97 learnModeMetadata];
  v123 = [v122 image3x];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v124 = [v97 disableMetadata];
  v125 = [v124 image3x];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  *v115 = v167;
  *(v115 + 8) = v96;
  (*(v178 + 32))(v115 + v114[5], v177, v179);
  *(v115 + v114[6]) = v166;
  *(v115 + v114[7]) = v165;
  *(v115 + v114[8]) = 2;
  v126 = (v115 + v114[9]);
  v127 = v163;
  *v126 = v164;
  v126[1] = v127;
  *(v115 + v114[10]) = v162;
  *(v115 + v114[11]) = v161;
  *(v115 + v114[12]) = v160;
  v128 = (v115 + v114[13]);
  v129 = v158;
  *v128 = v159;
  v128[1] = v129;
  v130 = (v115 + v114[14]);
  v131 = v156;
  *v130 = v157;
  v130[1] = v131;
  v132 = v115 + v114[15];
  *v132 = v155;
  *(v132 + 8) = v148;
  v133 = (v115 + v114[16]);
  v134 = v153;
  *v133 = v154;
  v133[1] = v134;
  sub_1000D2AD8(v180, v115 + v114[17], &unk_101696AC0, &qword_101390A60);
  sub_1000D2AD8(v181, v115 + v114[18], &unk_101696AC0, &qword_101390A60);
  v135 = (v115 + v114[19]);
  v136 = v151;
  *v135 = v152;
  v135[1] = v136;
  *(v115 + v114[20]) = v49;
  sub_1000D2AD8(v182, v115 + v114[21], &qword_1016A62E8, &qword_1013B3CB0);
  *(v115 + v114[22]) = v150;
  *(v115 + v114[23]) = v57;
  *(v115 + v114[24]) = xmmword_10138BBF0;
  *(v115 + v114[25]) = xmmword_10138BBF0;
  v137 = *(v168 + 32);
  v138 = v169;
  v137(v115 + v114[26], v173, v169);
  v137(v115 + v114[27], v174, v138);
  v137(v115 + v114[28], v175, v138);
  v137(v115 + v114[29], v176, v138);
  v137(v115 + v114[30], v171, v138);
  result = (v137)(v115 + v114[31], v172, v138);
  v139 = (v115 + v114[32]);
  v140 = v187;
  *v139 = v188;
  v139[1] = v140;
  v141 = v185;
  *(v115 + v114[33]) = v186;
  v142 = (v115 + v114[34]);
  v143 = v184;
  *v142 = v141;
  v142[1] = v143;
  *(v115 + v114[35]) = v149;
  v144 = v115 + v114[36];
  *v144 = v102;
  *(v144 + 8) = v105;
  *(v144 + 16) = 0;
  v145 = v115 + v114[37];
  *v145 = v108;
  *(v145 + 8) = v111;
  *(v145 + 16) = 0;
  *(v115 + v114[44]) = 2;
  *(v115 + v114[45]) = 2;
  *(v115 + v114[46]) = 2;
  v146 = (v115 + v114[47]);
  *v146 = 0;
  v146[1] = 0;
  v147 = (v115 + v114[48]);
  *v147 = 0;
  v147[1] = 0;
  return result;
}

uint64_t sub_10119A0F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a1;
  v164 = a2;
  v168 = type metadata accessor for AccessoryInfoResponseContent(0);
  v2 = __chkstk_darwin(v168);
  v156 = (&v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v154 = &v142 - v4;
  v5 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  __chkstk_darwin(v5 - 8);
  v151 = &v142 - v6;
  v152 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v8 - 8);
  v155 = &v142 - v9;
  v165 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v169 = *(v165 - 8);
  __chkstk_darwin(v165);
  v153 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ServerStatusCode();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v142 - v16;
  v18 = type metadata accessor for AccessoryProductInfo(0);
  v163 = *(v18 - 1);
  v19 = __chkstk_darwin(v18);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 68);
  v23 = type metadata accessor for URL();
  v147 = *(v23 - 8);
  v24 = *(v147 + 56);
  v161 = v22;
  v25 = v22 + v21;
  v26 = v165;
  v24(v25, 1, 1, v23);
  v160 = v18[18];
  v148 = v23;
  v24(&v21[v160], 1, 1, v23);
  v27 = *(v169 + 56);
  v162 = v18[21];
  v145 = v169 + 56;
  v146 = v27;
  v27(&v21[v162], 1, 1, v26);
  v28 = &v21[v18[24]];
  *v28 = xmmword_10138BBF0;
  v166 = v21;
  v167 = v18;
  v29 = &v21[v18[25]];
  v157 = v28;
  v158 = v29;
  *v29 = xmmword_10138BBF0;
  v30 = v168;
  v31 = *(v12 + 16);
  v32 = v159;
  v144 = v168[10];
  v143 = v31;
  v31(v17, v159 + v144, v11);
  (*(v12 + 104))(v15, enum case for ServerStatusCode.notModified(_:), v11);
  sub_1011A1B80(&qword_1016C9EA0, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
  LOBYTE(v21) = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v12 + 8);
  v33(v15, v11);
  v33(v17, v11);
  if (v21)
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177C578);
    v35 = v32;
    v36 = v32;
    v37 = v156;
    sub_1011A08BC(v36, v156, type metadata accessor for AccessoryInfoResponseContent);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v170[0] = v41;
      *v40 = 136446210;
      v42 = *(v37 + 16);
      v43 = *(v37 + 24);

      sub_1011A0924(v37, type metadata accessor for AccessoryInfoResponseContent);
      v44 = sub_1000136BC(v42, v43, v170);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s product info has NOT changed. Skipping", v40, 0xCu);
      sub_100007BAC(v41);

LABEL_15:

LABEL_17:
      sub_1011A0924(v35, type metadata accessor for AccessoryInfoResponseContent);
      v57 = v166;
      sub_10000B3A8(v161 + v166, &unk_101696AC0, &qword_101390A60);
      sub_10000B3A8(v57 + v160, &unk_101696AC0, &qword_101390A60);
      sub_10000B3A8(v57 + v162, &qword_1016A62E8, &qword_1013B3CB0);
      sub_100006654(*v157, *(v157 + 1));
      sub_100006654(*v158, *(v158 + 1));
      return (*(v163 + 56))(v164, 1, 1, v167);
    }

    goto LABEL_16;
  }

  v45 = v155;
  sub_1000D2A70(v32 + v30[6], v155, &qword_1016A62E8, &qword_1013B3CB0);
  v35 = v32;
  if ((*(v169 + 48))(v45, 1, v26) == 1)
  {
    v46 = &qword_1016A62E8;
    v47 = &qword_1013B3CB0;
LABEL_10:
    sub_10000B3A8(v45, v46, v47);
    goto LABEL_11;
  }

  v48 = v153;
  sub_1011A07E4(v45, v153, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v45 = v151;
  sub_1000D2A70(v32 + v30[7], v151, &qword_1016A62E0, &unk_1013B8C30);
  if ((*(v150 + 48))(v45, 1, v152) == 1)
  {
    sub_1011A0924(v48, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    v46 = &qword_1016A62E0;
    v47 = &unk_1013B8C30;
    goto LABEL_10;
  }

  v59 = v45;
  v60 = v149;
  sub_1011A07E4(v59, v149, type metadata accessor for AccessoryInfoResponseContent.Assets);
  v61 = v32[10];
  if (v61 == 2)
  {
    sub_1011A0924(v60, type metadata accessor for AccessoryInfoResponseContent.Assets);
    sub_1011A0924(v48, type metadata accessor for AccessoryInfoResponseContent.Configuration);
LABEL_11:
    v37 = v154;
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000076D4(v49, qword_10177C578);
    sub_1011A08BC(v35, v37, type metadata accessor for AccessoryInfoResponseContent);
    v38 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v170[0] = v52;
      *v51 = 136446210;
      v53 = sub_100753C94();
      v55 = v54;
      sub_1011A0924(v37, type metadata accessor for AccessoryInfoResponseContent);
      v56 = sub_1000136BC(v53, v55, v170);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v38, v50, "Invalid response: %{public}s", v51, 0xCu);
      sub_100007BAC(v52);

      goto LABEL_15;
    }

LABEL_16:

    sub_1011A0924(v37, type metadata accessor for AccessoryInfoResponseContent);
    goto LABEL_17;
  }

  v62 = *(v32 + 8);
  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = *v32;
  }

  v64 = *(v32 + 22) | (*(v32 + 92) << 32);
  v66 = v166;
  v65 = v167;
  *v166 = v63;
  *(v66 + 8) = v62;
  v143(v66 + v65[5], v35 + v144, v11);
  *(v66 + v65[6]) = *(v35 + 32) & 1;
  *(v66 + v65[7]) = *(v35 + 36) & 1;
  v67 = v65[16];
  v68 = v66 + v65[15];
  *(v66 + v65[8]) = *(v35 + 37) & 1;
  v69 = *(v35 + 24);
  v70 = (v66 + v65[9]);
  *v70 = *(v35 + 16);
  v70[1] = v69;
  *(v66 + v65[10]) = *(v35 + 33);
  v71 = (v66 + v67);
  *(v66 + v65[11]) = *(v35 + 34);
  *(v66 + v65[12]) = *(v35 + 35);
  v72 = *(v48 + 40);
  v73 = (v66 + v65[13]);
  *v73 = *(v48 + 32);
  v73[1] = v72;
  v74 = *(v48 + 24);
  v75 = (v66 + v65[14]);
  *v75 = *(v48 + 16);
  v75[1] = v74;
  LOBYTE(v75) = *(v48 + 88);
  *v68 = *(v48 + 80);
  v68[8] = v75;
  v76 = *(v48 + 8);
  *v71 = *v48;
  v71[1] = v76;
  v77 = v165;
  v78 = *(v165 + 44);

  sub_1011A084C(v48 + v78, v161 + v66);
  sub_1011A084C(v48 + v77[12], v66 + v160);
  v79 = (v35 + v168[8]);
  v80 = v79[1];
  if (v80)
  {
    v81 = *v79;
    v82 = v80;
  }

  else
  {
    v81 = 0;
    v82 = 0xE000000000000000;
  }

  v83 = v166;
  v84 = v167;
  v85 = (v166 + v167[19]);
  *v85 = v81;
  v85[1] = v82;
  v86 = v153;
  v87 = v153 + v77[13];
  v88 = *v87;
  if (*(v87 + 8))
  {
    v88 = 0.0;
  }

  v161 = v84[23];
  *(v83 + v84[20]) = v88;

  v89 = v162;
  sub_10000B3A8(v83 + v162, &qword_1016A62E8, &qword_1013B3CB0);
  sub_1011A08BC(v86, v83 + v89, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v146(v83 + v89, 0, 1, v77);
  v90 = sub_10074BC38(v61 & 0xFFFFFFFF01010101, v64 & 0xFFFFFFFFFFLL);
  *(v83 + v84[22]) = sub_1010D8CF8(v90);
  v91 = *(v147 + 16);
  v92 = v149;
  v93 = v148;
  v91(v83 + v84[26], v149, v148);
  v94 = v152;
  v91(v83 + v84[27], v92 + *(v152 + 20), v93);
  v91(v83 + v84[28], v92 + v94[6], v93);
  v91(v83 + v84[29], v92 + v94[7], v93);
  v91(v83 + v84[30], v92 + v94[8], v93);
  v91(v83 + v84[31], v92 + v94[9], v93);
  v169 = *(v35 + v168[11]);
  *(v161 + v83) = v169;
  v95 = (v86 + v77[15]);
  v96 = *v95;
  v97 = v95[1];
  v98 = (v83 + v84[32]);
  *v98 = v96;
  v98[1] = v97;
  v162 = v97;
  v100 = _swiftEmptyArrayStorage;
  v161 = *(v86 + v77[16]);
  v99 = v161;
  if (!v161)
  {
    v99 = _swiftEmptyArrayStorage;
  }

  *(v83 + v84[33]) = v99;
  v101 = (v86 + v77[17]);
  v102 = *v101;
  v103 = v101[1];
  v104 = (v83 + v84[34]);
  *v104 = v102;
  v104[1] = v103;
  v160 = v103;
  v156 = *(v86 + v77[18]);
  if (v156)
  {
    v100 = v156;
  }

  *(v83 + v84[35]) = v100;
  v105 = v86 + v77[19];
  v106 = *v105;
  v107 = *(v105 + 8);
  v113 = *(v105 + 16) == 0;
  v108 = 0xBFF0000000000000;
  if (!v113)
  {
    v106 = 0xBFF0000000000000;
    v107 = 0xBFF0000000000000;
  }

  v109 = v83 + v84[36];
  *v109 = v106;
  *(v109 + 1) = v107;
  v109[16] = 0;
  v110 = v86 + v77[20];
  v111 = *v110;
  v112 = *(v110 + 8);
  LODWORD(v110) = *(v110 + 16);
  v113 = v110 == 0;
  if (v110)
  {
    v114 = 0xBFF0000000000000;
  }

  else
  {
    v114 = v111;
  }

  if (v113)
  {
    v108 = v112;
  }

  v115 = v83 + v84[37];
  *v115 = v114;
  *(v115 + 1) = v108;
  v115[16] = 0;
  v91(v83 + v84[38], v92 + v94[10], v93);
  v91(v83 + v84[39], v92 + v94[11], v93);
  v91(v83 + v84[40], v92 + v94[12], v93);
  v91(v83 + v84[41], v92 + v94[13], v93);
  v91(v83 + v84[42], v92 + v94[14], v93);
  v91(v83 + v84[43], v92 + v94[15], v93);
  v116 = (v35 + v168[9]);
  v117 = v116[1];
  if (!v117)
  {

    v126 = v92;
LABEL_52:
    sub_1011A0924(v126, type metadata accessor for AccessoryInfoResponseContent.Assets);
    sub_1011A0924(v86, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    goto LABEL_53;
  }

  v118 = *v116;
  v119 = v116[4];
  v120 = v116[5];
  v121 = HIBYTE(v117) & 0xF;
  if ((v117 & 0x2000000000000000) == 0)
  {
    v121 = v118 & 0xFFFFFFFFFFFFLL;
  }

  if (v121)
  {

    v122 = Data.init(base64Encoded:options:)();
    v124 = v123;
    v125 = v157;
    sub_100006654(*v157, *(v157 + 1));
    *v125 = v122;
    v125[1] = v124;
  }

  else
  {
  }

  v86 = v153;
  v127 = HIBYTE(v120) & 0xF;
  if ((v120 & 0x2000000000000000) == 0)
  {
    v127 = v119 & 0xFFFFFFFFFFFFLL;
  }

  if (!v127)
  {
    v126 = v149;
    goto LABEL_52;
  }

  v128 = Data.init(base64Encoded:options:)();
  v130 = v129;
  sub_1011A0924(v149, type metadata accessor for AccessoryInfoResponseContent.Assets);
  sub_1011A0924(v86, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v131 = v158;
  sub_100006654(*v158, *(v158 + 1));
  *v131 = v128;
  v131[1] = v130;
LABEL_53:
  v133 = v166;
  v132 = v167;
  v134 = v167[45];
  v135 = v167[46];
  v136 = (v166 + v167[47]);
  v137 = (v166 + v167[48]);
  *(v166 + v167[44]) = *(v35 + 38);
  *(v133 + v134) = *(v35 + 39);
  v138 = *(v35 + 56);
  *v136 = *(v35 + 48);
  v136[1] = v138;
  *(v133 + v135) = *(v35 + 40);
  v140 = *(v35 + 64);
  v139 = *(v35 + 72);

  sub_1011A0924(v35, type metadata accessor for AccessoryInfoResponseContent);
  *v137 = v140;
  v137[1] = v139;
  v141 = v164;
  sub_1011A08BC(v133, v164, type metadata accessor for AccessoryProductInfo);
  (*(v163 + 56))(v141, 0, 1, v132);
  return sub_1011A0924(v133, type metadata accessor for AccessoryProductInfo);
}

id sub_10119B27C()
{
  v1 = v0;
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v125 - v7;
  v9 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v125 - v13;
  v15 = [objc_allocWithZone(SPDiscoveredAccessoryProductInformation) init];
  v16 = v15;
  v17 = 0;
  if ((v1[1] & 1) == 0)
  {
    v17 = *v1;
  }

  [v15 setBeaconGroupVersion:v17];
  v18 = type metadata accessor for AccessoryProductInfo(0);
  [v16 setHidden:*(v1 + v18[7])];
  [v16 setSupportBeaconGroupInfo:*(v1 + v18[12]) & 1];
  [v16 setIsHELEAccessory:*(v1 + v18[10]) & 1];
  [v16 setIsManagedAccessory:*(v1 + v18[11]) & 1];
  [v16 setEligibleForPairing:*(v1 + v18[6])];
  v19 = String._bridgeToObjectiveC()();
  [v16 setFindmyProductId:v19];

  v20 = String._bridgeToObjectiveC()();
  [v16 setManufacturerName:v20];

  v21 = String._bridgeToObjectiveC()();
  [v16 setModelName:v21];

  v127 = v2;
  v128 = v18;
  v22 = *(v1 + v18[16] + 8);
  v125 = v5;
  v126 = v3;
  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [v16 setAppBundleIdentifier:{v23, v125, v126, v127}];

  sub_1000D2A70(v1 + v128[17], v14, &unk_101696AC0, &qword_101390A60);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v28 = 0;
  if (v26(v14, 1, v24) != 1)
  {
    URL._bridgeToObjectiveC()(v27);
    v28 = v29;
    (*(v25 + 8))(v14, v24);
  }

  [v16 setLowBatteryInfoURL:v28];

  sub_1000D2A70(v1 + v128[18], v12, &unk_101696AC0, &qword_101390A60);
  if (v26(v12, 1, v24) == 1)
  {
    v31 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v30);
    v31 = v32;
    (*(v25 + 8))(v12, v24);
  }

  [v16 setDisableURL:v31];

  v33 = v128;
  v34 = String._bridgeToObjectiveC()();
  [v16 setVersion:v34];

  [v16 setTxPower:*(v1 + v33[20])];
  sub_1000D2A70(v1 + v33[21], v8, &qword_1016A62E8, &qword_1013B3CB0);
  v35 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if ((*(*(v35 - 8) + 48))(v8, 1, v35) == 1)
  {
    sub_10000B3A8(v8, &qword_1016A62E8, &qword_1013B3CB0);
    v36 = 20.0;
  }

  else
  {
    v37 = &v8[*(v35 + 56)];
    v38 = *v37;
    v39 = v37[8];
    sub_1011A0924(v8, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    v36 = 20.0;
    if (!v39)
    {
      v36 = v38;
    }
  }

  [v16 setRangeDistanceInMeters:v36];
  v40 = v128;
  [v16 setIsAirTag:*(v1 + v128[44]) & 1];
  [v16 setIsAppleAudioAccessory:*(v1 + v40[45]) & 1];
  [v16 setCapabilities:sub_1010D73CC(*(v1 + v40[22]))];
  URL._bridgeToObjectiveC()(v40[26]);
  v42 = v41;
  [v16 setDefaultHeroIcon:v41];

  URL._bridgeToObjectiveC()(v40[27]);
  v44 = v43;
  [v16 setDefaultListIcon:v43];

  URL._bridgeToObjectiveC()(v40[28]);
  v46 = v45;
  [v16 setDefaultHeroIcon2x:v45];

  URL._bridgeToObjectiveC()(v40[29]);
  v48 = v47;
  [v16 setDefaultListIcon2x:v47];

  URL._bridgeToObjectiveC()(v40[30]);
  v50 = v49;
  [v16 setDefaultHeroIcon3x:v49];

  URL._bridgeToObjectiveC()(v40[31]);
  v52 = v51;
  [v16 setDefaultListIcon3x:v51];

  v129 = v16;
  v53 = v1 + v128[36];
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = *(v53 + 16);
  if (v56)
  {
    v57 = -1.0;
  }

  else
  {
    v57 = v55;
  }

  if (v56)
  {
    v58 = -1.0;
  }

  else
  {
    v58 = v54;
  }

  v130 = v1;
  v59 = objc_allocWithZone(SPUnknownProductMetadata);

  v60 = String._bridgeToObjectiveC()();

  isa = Array._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v130);
  v63 = v62;
  URL._bridgeToObjectiveC()(v130);
  v65 = v64;
  v66 = v130;
  URL._bridgeToObjectiveC()(v130);
  v68 = v67;
  v69 = [v59 initWithTitle:v60 description:isa percentageX:v63 percentageY:v65 image:v67 image2x:v58 image3x:v57];

  [v129 setLearnModeMetadata:v69];
  v70 = v128;
  v71 = (v66 + v128[37]);
  v72 = *v71;
  v73 = v71[1];
  v74 = *(v71 + 16);
  if (v74)
  {
    v75 = -1.0;
  }

  else
  {
    v75 = v73;
  }

  if (v74)
  {
    v76 = -1.0;
  }

  else
  {
    v76 = v72;
  }

  v77 = objc_allocWithZone(SPUnknownProductMetadata);

  v78 = String._bridgeToObjectiveC()();

  v79 = Array._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v130);
  v81 = v80;
  URL._bridgeToObjectiveC()(v130);
  v83 = v82;
  v84 = v130;
  URL._bridgeToObjectiveC()(v130);
  v86 = v85;
  v87 = [v77 initWithTitle:v78 description:v79 percentageX:v81 percentageY:v83 image:v85 image2x:v76 image3x:v75];

  v88 = v129;
  [v129 setDisableMetadata:v87];

  v89 = *(&v84->super.isa + v70[23]);
  if (v89)
  {
    v90 = *(v89 + 16);
    if (v90)
    {
      v133 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v91 = v89 + 48;
      do
      {
        v93 = *(v91 - 16);
        v94 = *(v91 + 32);
        v131 = *(v91 + 24);
        v132 = *(v91 + 40);
        v95 = objc_allocWithZone(SPAccessoryLayoutTemplate);

        v96 = [v95 init];
        [v96 setPartIdentifier:v93];
        v97 = String._bridgeToObjectiveC()();
        [v96 setPartType:v97];

        v98 = String._bridgeToObjectiveC()();
        [v96 setPartName:v98];

        if (v94)
        {

          v92 = String._bridgeToObjectiveC()();
        }

        else
        {
          v92 = 0;
        }

        v91 += 64;
        [v96 setPartSymbol:v92];

        [v96 setIsPrimary:v132 & 1];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v90;
      }

      while (v90);
      v88 = v129;
      v84 = v130;
    }

    sub_10083C300();
    v99 = Array._bridgeToObjectiveC()().super.isa;

    [v88 setLayoutTemplate:v99];
  }

  v100 = v84 + v128[15];
  if ((v100[8] & 1) == 0)
  {
    v112 = *v100;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v113 = sub_101073D24(v133);

    v114 = *(v113 + 16);
    if (!v114)
    {

      return v88;
    }

    v115 = 0;
    while (v115 < *(v113 + 16))
    {
      v119 = *(v113 + 32 + 32 * v115++ + 24);
      v121 = *(v119 + 16);
      v120 = v119 + 16;
      v122 = v121 + 1;
      while (--v122)
      {
        v123 = *(v120 + 16);
        v120 += 40;
        if (v123 == v112)
        {
          v116 = objc_allocWithZone(SPBeaconRole);

          v117 = String._bridgeToObjectiveC()();
          v88 = String._bridgeToObjectiveC()();
          v118 = [v116 initWithRoleId:v112 role:v117 roleEmoji:v88];

          [v129 setDefaultRole:v118];
          break;
        }
      }

      if (v115 == v114)
      {

        return v129;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  if (qword_1016951D8 != -1)
  {
LABEL_55:
    swift_once();
  }

  v101 = type metadata accessor for Logger();
  sub_1000076D4(v101, qword_10177C578);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&_mh_execute_header, v102, v103, "No defaultRole provided. Fallback to custom role.", v104, 2u);
  }

  v106 = v125;
  v105 = v126;
  v107 = v127;
  (*(v126 + 104))(v125, enum case for LocalizationUtility.Table.default(_:), v127);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v105 + 8))(v106, v107);
  v108 = objc_allocWithZone(SPBeaconRole);
  v109 = String._bridgeToObjectiveC()();

  v110 = String._bridgeToObjectiveC()();
  v111 = [v108 initWithRoleId:999 role:v109 roleEmoji:v110];

  [v88 setDefaultRole:v111];
  return v88;
}

unint64_t sub_10119C0D8(char a1)
{
  result = 0x7453726576726573;
  switch(a1)
  {
    case 1:
      return result;
    case 3:
      result = 0x6E6564646968;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0x7250796D646E6966;
      break;
    case 6:
      result = 0x6341454C45487369;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 10:
    case 30:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x52746C7561666564;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x55656C6261736964;
      break;
    case 15:
      result = 0x6E6F6973726576;
      break;
    case 16:
      result = 0x7265776F507874;
      break;
    case 17:
      result = 0x72756769666E6F63;
      break;
    case 18:
      result = 0x696C696261706163;
      break;
    case 19:
      result = 0x655474756F79616CLL;
      break;
    case 20:
      result = 0x6974707972636E65;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x48746C7561666564;
      break;
    case 23:
      result = 0x4C746C7561666564;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 29:
    case 34:
    case 36:
    case 38:
      result = 0x726F4D6E7261656CLL;
      break;
    case 31:
      result = 0xD00000000000001ALL;
      break;
    case 32:
      result = 0xD000000000000018;
      break;
    case 33:
      result = 0xD000000000000024;
      break;
    case 35:
      result = 0xD000000000000019;
      break;
    case 37:
    case 39:
      result = 0xD00000000000001BLL;
      break;
    case 40:
      result = 0x6761547269417369;
      break;
    case 41:
      result = 0xD000000000000015;
      break;
    case 42:
      result = 0x5565636166727573;
      break;
    case 43:
      result = 0x496B726F7774656ELL;
      break;
    case 44:
      result = 0x70756B6F6F4C6E73;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10119C5CC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C9EB8, &qword_10140A3F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1011A0984();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 8);
  *&v23 = *v3;
  BYTE8(v23) = v9;
  v25 = 0;
  sub_1005243D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for AccessoryProductInfo(0);
    LOBYTE(v23) = 1;
    type metadata accessor for ServerStatusCode();
    sub_1011A1B80(&qword_1016A89B0, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 13;
    type metadata accessor for URL();
    sub_1011A1B80(&qword_1016A8188, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v23) = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v23) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v10[21];
    LOBYTE(v23) = 17;
    type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    sub_1011A1B80(&qword_1016A8998, type metadata accessor for AccessoryInfoResponseContent.Configuration, &unk_1013B8E94);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LODWORD(v23) = *(v3 + v10[22]);
    v25 = 18;
    sub_100235498();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v23 = *(v3 + v10[23]);
    v25 = 19;
    sub_1000BC4D4(&unk_1016A86D0, "֫\n");
    sub_100757AC0(&qword_1016A89B8, sub_100757B38, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = (v3 + v10[24]);
    v12 = v11[1];
    *&v23 = *v11;
    *(&v23 + 1) = v12;
    v25 = 20;
    sub_10002E98C(v23, v12);
    v22 = sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v23, *(&v23 + 1));
    v13 = (v3 + v10[25]);
    v14 = v13[1];
    *&v23 = *v13;
    *(&v23 + 1) = v14;
    v25 = 21;
    sub_10002E98C(v23, v14);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v23, *(&v23 + 1));
    LOBYTE(v23) = 22;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 23;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v23 = *(v3 + v10[33]);
    v25 = 29;
    v16 = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    v21 = sub_100758BE4(&qword_1016B2860, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v22 = v16;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 30;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v23 = *(v3 + v10[35]);
    v25 = 31;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = (v3 + v10[36]);
    v18 = *(v17 + 16);
    v23 = *v17;
    v24 = v18;
    v25 = 32;
    v22 = sub_100758C50();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = (v3 + v10[37]);
    v20 = *(v19 + 16);
    v23 = *v19;
    v24 = v20;
    v25 = 33;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v23) = 34;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 35;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 36;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 37;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 40;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 41;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 42;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 44;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10119D1BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v61 - v7;
  v9 = type metadata accessor for URL();
  v66 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  v18 = 0;
  if ((*(v1 + 8) & 1) == 0)
  {
    v18 = *v1;
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v18);
  v19 = type metadata accessor for AccessoryProductInfo(0);
  type metadata accessor for ServerStatusCode();
  sub_1011A1B80(&qword_1016A89C8, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v19[6]));
  Hasher._combine(_:)(*(v1 + v19[7]));
  v20 = *(v1 + v19[8]);
  if (v20 == 2)
  {
    v21 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v21 = v20 & 1;
  }

  Hasher._combine(_:)(v21);
  String.hash(into:)();
  v22 = *(v1 + v19[10]);
  if (v22 == 2)
  {
    v23 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v23 = v22 & 1;
  }

  Hasher._combine(_:)(v23);
  v24 = *(v1 + v19[11]);
  if (v24 == 2)
  {
    v25 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v25 = v24 & 1;
  }

  Hasher._combine(_:)(v25);
  v26 = *(v1 + v19[12]);
  if (v26 == 2)
  {
    v27 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v27 = v26 & 1;
  }

  Hasher._combine(_:)(v27);
  String.hash(into:)();
  String.hash(into:)();
  v28 = v1 + v19[15];
  if (*(v28 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v29 = *v28;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v29);
  }

  v63 = v8;
  if (*(v1 + v19[16] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000D2A70(v1 + v19[17], v17, &unk_101696AC0, &qword_101390A60);
  v30 = v66;
  v31 = *(v66 + 48);
  if (v31(v17, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
    v32 = v66;
  }

  else
  {
    (*(v30 + 32))(v11, v17, v9);
    Hasher._combine(_:)(1u);
    sub_1011A1B80(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    v32 = v66;
    (*(v66 + 8))(v11, v9);
  }

  v33 = v64;
  sub_1000D2A70(v2 + v19[18], v15, &unk_101696AC0, &qword_101390A60);
  if (v31(v15, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v32 + 32))(v11, v15, v9);
    Hasher._combine(_:)(1u);
    sub_1011A1B80(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v32 + 8))(v11, v9);
  }

  v34 = v65;
  v35 = v63;
  String.hash(into:)();
  v36 = *(v2 + v19[20]);
  if (v36 == 0.0)
  {
    v36 = 0.0;
  }

  Hasher._combine(_:)(*&v36);
  sub_1000D2A70(v2 + v19[21], v35, &qword_1016A62E8, &qword_1013B3CB0);
  if ((*(v33 + 48))(v35, 1, v34) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v37 = v62;
    sub_1011A07E4(v35, v62, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    Hasher._combine(_:)(1u);
    sub_10074F1C0(a1);
    sub_1011A0924(v37, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  }

  Hasher._combine(_:)(*(v2 + v19[22]));
  v38 = *(v2 + v19[23]);
  if (v38)
  {
    Hasher._combine(_:)(1u);
    sub_10083C3DC(a1, v38);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v19[24] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v2 + v19[25] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  sub_1011A1B80(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + v19[32] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v39 = *(v2 + v19[33]);
  Hasher._combine(_:)(*(v39 + 16));
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v39 + 40;
    do
    {

      String.hash(into:)();

      v41 += 16;
      --v40;
    }

    while (v40);
  }

  if (*(v2 + v19[34] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v42 = *(v2 + v19[35]);
  Hasher._combine(_:)(*(v42 + 16));
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = v42 + 40;
    do
    {

      String.hash(into:)();

      v44 += 16;
      --v43;
    }

    while (v43);
  }

  v45 = v2 + v19[36];
  if (*(v45 + 16))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v47 = *v45;
    v46 = *(v45 + 8);
    Hasher._combine(_:)(1u);
    if ((v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    Hasher._combine(_:)(v48);
    if ((v46 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v49 = v46;
    }

    else
    {
      v49 = 0;
    }

    Hasher._combine(_:)(v49);
  }

  v50 = v2 + v19[37];
  if (*(v50 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v52 = *v50;
    v51 = *(v50 + 8);
    Hasher._combine(_:)(1u);
    if ((v52 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    Hasher._combine(_:)(v53);
    if ((v51 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v54 = v51;
    }

    else
    {
      v54 = 0;
    }

    Hasher._combine(_:)(v54);
  }

  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  v55 = *(v2 + v19[44]);
  if (v55 == 2)
  {
    v56 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v56 = v55 & 1;
  }

  Hasher._combine(_:)(v56);
  v57 = *(v2 + v19[45]);
  if (v57 == 2)
  {
    v58 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v58 = v57 & 1;
  }

  Hasher._combine(_:)(v58);
  v59 = *(v2 + v19[46]);
  if (v59 == 2)
  {
    v60 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v60 = v59 & 1;
  }

  Hasher._combine(_:)(v60);
  if (*(v2 + v19[47] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v19[48] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_10119DD88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v172 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v171 = &v157 - v8;
  v9 = __chkstk_darwin(v7);
  v170 = &v157 - v10;
  v11 = __chkstk_darwin(v9);
  v169 = &v157 - v12;
  v13 = __chkstk_darwin(v11);
  v168 = &v157 - v14;
  v15 = __chkstk_darwin(v13);
  v167 = &v157 - v16;
  v17 = __chkstk_darwin(v15);
  v166 = &v157 - v18;
  v19 = __chkstk_darwin(v17);
  v165 = &v157 - v20;
  v21 = __chkstk_darwin(v19);
  v164 = &v157 - v22;
  v23 = __chkstk_darwin(v21);
  v162 = &v157 - v24;
  v25 = __chkstk_darwin(v23);
  v161 = &v157 - v26;
  __chkstk_darwin(v25);
  v160 = &v157 - v27;
  v28 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v28 - 8);
  v159 = &v157 - v29;
  v30 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v31 = __chkstk_darwin(v30 - 8);
  v174 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v177 = &v157 - v33;
  v34 = type metadata accessor for ServerStatusCode();
  v163 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000BC4D4(&qword_1016C9EA8, &unk_10140A3E8);
  v175 = *(v37 - 8);
  v176 = v37;
  __chkstk_darwin(v37);
  v39 = &v157 - v38;
  v40 = type metadata accessor for AccessoryProductInfo(0);
  v41 = __chkstk_darwin(v40);
  v43 = &v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v41 + 68);
  v183 = v4;
  v184 = v44;
  v45 = *(v4 + 56);
  v45(&v43[v44], 1, 1, v3);
  v178 = v40[18];
  v185 = v3;
  v45(&v43[v178], 1, 1, v3);
  v46 = v40[21];
  v47 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v48 = *(*(v47 - 8) + 56);
  v182 = v46;
  v48(&v43[v46], 1, 1, v47);
  v49 = &v43[v40[24]];
  *v49 = xmmword_10138BBF0;
  v186 = v40;
  v187 = v43;
  v50 = &v43[v40[25]];
  v180 = v49;
  v181 = v50;
  *v50 = xmmword_10138BBF0;
  v51 = a1[3];
  v179 = a1;
  sub_1000035D0(a1, v51);
  sub_1011A0984();
  v52 = v188;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v52)
  {
    v188 = v52;
    v55 = v187;
    sub_100007BAC(v179);
    v177 = 0;
    LODWORD(v164) = 0;
    LODWORD(v166) = 0;
    LODWORD(v168) = 0;
    LODWORD(v170) = 0;
    LODWORD(v172) = 0;
    LODWORD(v174) = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    LODWORD(v165) = 0;
    LODWORD(v167) = 0;
    LODWORD(v169) = 0;
    LODWORD(v171) = 0;
    LODWORD(v173) = 0;
    LODWORD(v175) = 0;
    LODWORD(v176) = 0;
    v59 = 0;
    v60 = v186;
    goto LABEL_4;
  }

  v53 = v36;
  v54 = v177;
  v158 = v34;
  v192 = 0;
  sub_100524258();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v64 = BYTE8(v189);
  v65 = v187;
  *v187 = v189;
  *(v65 + 8) = v64;
  LOBYTE(v189) = 1;
  sub_1011A1B80(&qword_10169A810, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
  v66 = v158;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v67 = v39;
  v68 = v186;
  (*(v163 + 32))(v65 + v186[5], v53, v66);
  LOBYTE(v189) = 2;
  v69 = v67;
  *(v65 + v68[6]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v189) = 3;
  *(v65 + v68[7]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v189) = 4;
  *(v65 + v68[8]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v189) = 5;
  v70 = KeyedDecodingContainer.decode(_:forKey:)();
  v71 = (v65 + v68[9]);
  *v71 = v70;
  v71[1] = v72;
  LOBYTE(v189) = 6;
  *(v65 + v68[10]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v189) = 7;
  *(v65 + v68[11]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v189) = 8;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v188 = 0;
  *(v65 + v68[12]) = v73;
  LOBYTE(v189) = 9;
  v74 = v188;
  v75 = KeyedDecodingContainer.decode(_:forKey:)();
  v188 = v74;
  if (v74)
  {
    (*(v175 + 8))(v67, v176);
    v77 = 0;
    v78 = 0;
    v59 = 0;
    LODWORD(v176) = 0;
    LODWORD(v175) = 0;
    LODWORD(v173) = 0;
    LODWORD(v171) = 0;
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    v177 = 0;
    v157 = 0;
    v79 = &v191;
LABEL_51:
    *(v79 - 64) = 1;
LABEL_58:
    v60 = v186;
    v55 = v187;
    sub_100007BAC(v179);
    goto LABEL_41;
  }

  v80 = &v187[v186[13]];
  *v80 = v75;
  v80[1] = v76;
  LOBYTE(v189) = 10;
  v81 = v188;
  v82 = KeyedDecodingContainer.decode(_:forKey:)();
  v188 = v81;
  if (v81)
  {
    (*(v175 + 8))(v67, v176);
    v78 = 0;
    v59 = 0;
    LODWORD(v176) = 0;
    LODWORD(v175) = 0;
    LODWORD(v173) = 0;
    LODWORD(v171) = 0;
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    v177 = 0;
    v157 = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    goto LABEL_58;
  }

  v84 = &v187[v186[14]];
  *v84 = v82;
  v84[1] = v83;
  LOBYTE(v189) = 11;
  v85 = v188;
  v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v188 = v85;
  if (v85 || (v88 = &v187[v186[15]], *v88 = v86, v88[8] = v87 & 1, LOBYTE(v189) = 12, v89 = v188, v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v157 = v91, (v188 = v89) != 0))
  {
    (*(v175 + 8))(v67, v176);
    v59 = 0;
    LODWORD(v176) = 0;
    LODWORD(v175) = 0;
    LODWORD(v173) = 0;
    LODWORD(v171) = 0;
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    v177 = 0;
    v157 = 0;
LABEL_57:
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    goto LABEL_58;
  }

  v92 = &v187[v186[16]];
  v93 = v157;
  *v92 = v90;
  v92[1] = v93;
  LOBYTE(v189) = 13;
  sub_1011A1B80(&qword_1016A8178, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v94 = v188;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v188 = v94;
  if (v94 || (sub_10002311C(v54, &v187[v184], &unk_101696AC0, &qword_101390A60), LOBYTE(v189) = 14, v95 = v188, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v188 = v95) != 0) || (sub_10002311C(v174, &v187[v178], &unk_101696AC0, &qword_101390A60), LOBYTE(v189) = 15, v96 = v188, v97 = KeyedDecodingContainer.decode(_:forKey:)(), (v188 = v96) != 0))
  {
    (*(v175 + 8))(v67, v176);
    v59 = 0;
    LODWORD(v176) = 0;
    LODWORD(v175) = 0;
    LODWORD(v173) = 0;
    LODWORD(v171) = 0;
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    v177 = 0;
    goto LABEL_57;
  }

  v99 = &v187[v186[19]];
  *v99 = v97;
  v99[1] = v98;
  LOBYTE(v189) = 16;
  v100 = v188;
  KeyedDecodingContainer.decode(_:forKey:)();
  v188 = v100;
  if (v100 || (*&v187[v186[20]] = v101, LOBYTE(v189) = 17, sub_1011A1B80(&qword_1016A8958, type metadata accessor for AccessoryInfoResponseContent.Configuration, &unk_1013B8EBC), v102 = v188, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v188 = v102) != 0) || (sub_10002311C(v159, &v187[v182], &qword_1016A62E8, &qword_1013B3CB0), v192 = 18, sub_100235240(), v103 = v188, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v188 = v103) != 0) || (*&v187[v186[22]] = v189, sub_1000BC4D4(&unk_1016A86D0, "֫\n"), v192 = 19, sub_100757AC0(&qword_1016A8970, sub_100757938, &protocol conformance descriptor for <A> [A]), v104 = v188, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v188 = v104) != 0))
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v176) = 0;
    LODWORD(v175) = 0;
    LODWORD(v173) = 0;
    LODWORD(v171) = 0;
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    v177 = 0;
LABEL_68:
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    goto LABEL_58;
  }

  v105 = v186[23];
  v177 = v189;
  *&v187[v105] = v189;
  v192 = 20;
  sub_1000E307C();
  v106 = v188;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v188 = v106;
  if (v106 || (v107 = v189, v108 = v180, sub_100006654(*v180, *(v180 + 1)), *v108 = v107, v192 = 21, v109 = v188, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v188 = v109) != 0) || (v110 = v189, v111 = v181, sub_100006654(*v181, *(v181 + 1)), *v111 = v110, LOBYTE(v189) = 22, v112 = v188, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v188 = v112) != 0))
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v176) = 0;
    LODWORD(v175) = 0;
    LODWORD(v173) = 0;
    LODWORD(v171) = 0;
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    goto LABEL_68;
  }

  v113 = *(v183 + 32);
  v113(&v187[v186[26]], v160, v185);
  LOBYTE(v189) = 23;
  v114 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v114;
  if (v114)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v175) = 0;
    LODWORD(v173) = 0;
    LODWORD(v171) = 0;
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    goto LABEL_58;
  }

  v113(&v187[v186[27]], v161, v185);
  LOBYTE(v189) = 24;
  v115 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v115;
  if (v115)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v173) = 0;
    LODWORD(v171) = 0;
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    goto LABEL_58;
  }

  v113(&v187[v186[28]], v162, v185);
  LOBYTE(v189) = 25;
  v116 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v116;
  if (v116)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v171) = 0;
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    goto LABEL_58;
  }

  v113(&v187[v186[29]], v164, v185);
  LOBYTE(v189) = 26;
  v117 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v117;
  if (v117)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v169) = 0;
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    goto LABEL_58;
  }

  v113(&v187[v186[30]], v165, v185);
  LOBYTE(v189) = 27;
  v118 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v118;
  if (v118)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v167) = 0;
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    v79 = &v198;
    goto LABEL_51;
  }

  v113(&v187[v186[31]], v166, v185);
  LOBYTE(v189) = 28;
  v119 = v188;
  v120 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v188 = v119;
  if (v119)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v165) = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    v79 = &v196;
    goto LABEL_51;
  }

  v122 = &v187[v186[32]];
  *v122 = v120;
  v122[1] = v121;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  v192 = 29;
  sub_100758BE4(&qword_1016A8A58, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v123 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v123;
  if (v123)
  {
    (*(v175 + 8))(v67, v176);
    v58 = 0;
    v57 = 0;
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    LODWORD(v167) = 1;
    v79 = &v194;
    goto LABEL_51;
  }

  *&v187[v186[33]] = v189;
  LOBYTE(v189) = 30;
  v124 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v188 = 0;
  v125 = &v187[v186[34]];
  *v125 = v124;
  v125[1] = v126;
  v192 = 31;
  v127 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v127;
  if (v127)
  {
    (*(v175 + 8))(v67, v176);
    v56 = 0;
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    LODWORD(v167) = 1;
    LODWORD(v165) = 1;
    v58 = 1;
    v57 = 1;
    goto LABEL_58;
  }

  *&v187[v186[35]] = v189;
  v192 = 32;
  sub_100758B90();
  v128 = v188;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v188 = v128;
  if (v128 || (v129 = v190, v130 = &v187[v186[36]], *v130 = v189, v130[16] = v129, v192 = 33, v131 = v188, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v188 = v131) != 0) || (v132 = v190, v133 = &v187[v186[37]], *v133 = v189, v133[16] = v132, LOBYTE(v189) = 34, v134 = v188, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v188 = v134) != 0))
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v174) = 0;
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    LODWORD(v167) = 1;
    LODWORD(v165) = 1;
    v58 = 1;
    v57 = 1;
    v56 = 1;
    goto LABEL_58;
  }

  v113(&v187[v186[38]], v167, v185);
  LOBYTE(v189) = 35;
  v135 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v135;
  if (v135)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v172) = 0;
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    LODWORD(v167) = 1;
    LODWORD(v165) = 1;
    v58 = 1;
    v57 = 1;
    v56 = 1;
    LODWORD(v174) = 1;
    goto LABEL_58;
  }

  v113(&v187[v186[39]], v168, v185);
  LOBYTE(v189) = 36;
  v136 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v136;
  if (v136)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v170) = 0;
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    LODWORD(v167) = 1;
    LODWORD(v165) = 1;
    v58 = 1;
    v57 = 1;
    v56 = 1;
    LODWORD(v174) = 1;
    LODWORD(v172) = 1;
    goto LABEL_58;
  }

  v113(&v187[v186[40]], v169, v185);
  LOBYTE(v189) = 37;
  v137 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v137;
  if (v137)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v168) = 0;
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    LODWORD(v167) = 1;
    LODWORD(v165) = 1;
    v58 = 1;
    v57 = 1;
    v56 = 1;
    LODWORD(v174) = 1;
    LODWORD(v172) = 1;
    v79 = &v199;
    goto LABEL_51;
  }

  v113(&v187[v186[41]], v170, v185);
  LOBYTE(v189) = 38;
  v138 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v138;
  if (v138)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v166) = 0;
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    LODWORD(v167) = 1;
    LODWORD(v165) = 1;
    v58 = 1;
    v57 = 1;
    v56 = 1;
    LODWORD(v174) = 1;
    LODWORD(v172) = 1;
    LODWORD(v170) = 1;
    v79 = &v197;
    goto LABEL_51;
  }

  v113(&v187[v186[42]], v171, v185);
  LOBYTE(v189) = 39;
  v139 = v188;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v188 = v139;
  if (v139)
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v164) = 0;
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    LODWORD(v167) = 1;
    LODWORD(v165) = 1;
    v58 = 1;
    v57 = 1;
    v56 = 1;
    LODWORD(v174) = 1;
    LODWORD(v172) = 1;
    LODWORD(v170) = 1;
    LODWORD(v168) = 1;
    v79 = &v195;
    goto LABEL_51;
  }

  v113(&v187[v186[43]], v172, v185);
  LOBYTE(v189) = 40;
  v140 = v188;
  v141 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v188 = v140;
  if (v140 || (v187[v186[44]] = v141, LOBYTE(v189) = 41, v142 = v188, v143 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v188 = v142) != 0) || (v187[v186[45]] = v143, LOBYTE(v189) = 42, v144 = v188, v145 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v188 = v144) != 0) || (v187[v186[46]] = v145, LOBYTE(v189) = 43, v146 = v188, v147 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v188 = v146) != 0))
  {
    (*(v175 + 8))(v67, v176);
    LODWORD(v162) = 1;
    v77 = 1;
    v78 = 1;
    v59 = 1;
    LODWORD(v176) = 1;
    LODWORD(v175) = 1;
    LODWORD(v173) = 1;
    LODWORD(v171) = 1;
    LODWORD(v169) = 1;
    LODWORD(v167) = 1;
    LODWORD(v165) = 1;
    v58 = 1;
    v57 = 1;
    v56 = 1;
    LODWORD(v174) = 1;
    LODWORD(v172) = 1;
    LODWORD(v170) = 1;
    LODWORD(v168) = 1;
    LODWORD(v166) = 1;
    v79 = &v193;
    goto LABEL_51;
  }

  v149 = &v187[v186[47]];
  *v149 = v147;
  v149[1] = v148;
  LOBYTE(v189) = 44;
  v150 = v188;
  v151 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v188 = v150;
  if (!v150)
  {
    v153 = v151;
    v154 = v152;
    v155 = v187;
    v156 = &v187[v186[48]];
    (*(v175 + 8))(v69, v176);
    *v156 = v153;
    v156[1] = v154;
    sub_1011A08BC(v155, v173, type metadata accessor for AccessoryProductInfo);
    sub_100007BAC(v179);
    return sub_1011A0924(v155, type metadata accessor for AccessoryProductInfo);
  }

  (*(v175 + 8))(v67, v176);
  sub_100007BAC(v179);
  LODWORD(v162) = 1;
  v77 = 1;
  v78 = 1;
  v59 = 1;
  LODWORD(v176) = 1;
  LODWORD(v175) = 1;
  LODWORD(v173) = 1;
  LODWORD(v171) = 1;
  LODWORD(v169) = 1;
  LODWORD(v167) = 1;
  LODWORD(v165) = 1;
  v58 = 1;
  v57 = 1;
  v56 = 1;
  LODWORD(v174) = 1;
  LODWORD(v172) = 1;
  LODWORD(v170) = 1;
  LODWORD(v168) = 1;
  LODWORD(v166) = 1;
  LODWORD(v164) = 1;
  v60 = v186;
  v55 = v187;
LABEL_41:
  (*(v163 + 8))(&v55[v60[5]], v158);
  if (v162)
  {

    if ((v77 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (!v77)
  {
LABEL_43:
    if (!v78)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  if (v78)
  {
LABEL_44:
  }

LABEL_4:

  sub_10000B3A8(&v55[v184], &unk_101696AC0, &qword_101390A60);
  sub_10000B3A8(&v55[v178], &unk_101696AC0, &qword_101390A60);
  if (v59)
  {
  }

  sub_10000B3A8(&v55[v182], &qword_1016A62E8, &qword_1013B3CB0);

  sub_100006654(*v180, *(v180 + 1));
  sub_100006654(*v181, *(v181 + 1));
  v61 = v185;
  v62 = v183;
  if (v176)
  {
    (*(v183 + 8))(&v55[v60[26]], v185);
    if (!v175)
    {
LABEL_8:
      if (!v173)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  else if (!v175)
  {
    goto LABEL_8;
  }

  (*(v62 + 8))(&v55[v60[27]], v61);
  if (!v173)
  {
LABEL_9:
    if (!v171)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_33:
  (*(v62 + 8))(&v55[v60[28]], v61);
  if (v171)
  {
LABEL_10:
    (*(v62 + 8))(&v55[v60[29]], v61);
  }

LABEL_11:
  if (v169)
  {
    (*(v62 + 8))(&v55[v60[30]], v61);
  }

  if (v167)
  {
    (*(v62 + 8))(&v55[v60[31]], v61);
  }

  if (v165)
  {

    if (!v58)
    {
LABEL_17:
      if (!v57)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }
  }

  else if (!v58)
  {
    goto LABEL_17;
  }

  if (!v57)
  {
LABEL_18:
    if (!v56)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:

  if (!v56)
  {
LABEL_19:
    if (!v174)
    {
      goto LABEL_20;
    }

LABEL_39:
    (*(v62 + 8))(&v55[v60[38]], v61);
    if (!v172)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_38:

  if (v174)
  {
    goto LABEL_39;
  }

LABEL_20:
  if (v172)
  {
LABEL_21:
    (*(v62 + 8))(&v55[v60[39]], v61);
  }

LABEL_22:
  if (v170)
  {
    (*(v62 + 8))(&v55[v60[40]], v61);
  }

  if (v168)
  {
    (*(v62 + 8))(&v55[v60[41]], v61);
  }

  if (v166)
  {
    (*(v62 + 8))(&v55[v60[42]], v61);
  }

  if (v164)
  {
    (*(v62 + 8))(&v55[v60[43]], v61);
  }
}

uint64_t sub_1011A0480@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011A1E20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1011A04B4(uint64_t a1)
{
  v2 = sub_1011A0984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011A04F0(uint64_t a1)
{
  v2 = sub_1011A0984();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1011A055C()
{
  Hasher.init(_seed:)();
  sub_10119D1BC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1011A05A0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10119D1BC(v2);
  return Hasher._finalize()();
}

uint64_t sub_1011A0624()
{
  _StringGuts.grow(_:)(67);
  v1._countAndFlagsBits = 0x746375646F72703CLL;
  v1._object = 0xEB000000003A6449;
  String.append(_:)(v1);
  v2 = type metadata accessor for AccessoryProductInfo(0);
  String.append(_:)(*(v0 + v2[9]));
  v3._countAndFlagsBits = 0x6C626967696C6520;
  v3._object = 0xEA00000000003A65;
  String.append(_:)(v3);
  if (*(v0 + v2[6]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v2[6]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0x3A6C65646F6D20;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + v2[13]));
  v8._countAndFlagsBits = 0x636166756E616D20;
  v8._object = 0xEE003A7265727574;
  String.append(_:)(v8);
  String.append(_:)(*(v0 + v2[14]));
  v9._countAndFlagsBits = 0x6C69626170616320;
  v9._object = 0xEE003A7365697469;
  String.append(_:)(v9);
  v10._countAndFlagsBits = sub_1010D840C(*(v0 + v2[22]));
  String.append(_:)(v10);

  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0;
}

uint64_t sub_1011A07E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011A084C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011A08BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011A0924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1011A0984()
{
  result = qword_1016C9EB0;
  if (!qword_1016C9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9EB0);
  }

  return result;
}

BOOL sub_1011A09D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v180 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v171 - v8;
  v179 = sub_1000BC4D4(&qword_1016A89D8, &unk_10140A400);
  __chkstk_darwin(v179);
  v11 = &v171 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v182 = v12;
  v183 = v13;
  __chkstk_darwin(v12);
  v181 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v171 - v19;
  v21 = sub_1000BC4D4(&qword_1016A8910, &qword_1013BE3A0);
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v25 = &v171 - v24;
  v26 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v177 = v11;
  v178 = v23;
  v175 = v9;
  v176 = v4;
  v174 = v6;
  v27 = type metadata accessor for AccessoryProductInfo(0);
  v184 = a2;
  type metadata accessor for ServerStatusCode();
  sub_1011A1B80(&qword_1016A89E0, &type metadata accessor for ServerStatusCode, &protocol conformance descriptor for ServerStatusCode);
  v28 = a1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v29 = v184;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v186 != v185 || *(a1 + v27[6]) != *(v29 + v27[6]) || *(a1 + v27[7]) != *(v29 + v27[7]))
  {
    return 0;
  }

  v31 = v27[8];
  v32 = *(a1 + v31);
  v33 = *(v29 + v31);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v33 == 2 || ((v33 ^ v32) & 1) != 0)
    {
      return result;
    }
  }

  v34 = v27[9];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (v29 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v38 = v27[10];
  v39 = *(a1 + v38);
  v40 = *(v29 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v40 == 2 || ((v40 ^ v39) & 1) != 0)
    {
      return result;
    }
  }

  v41 = v27[11];
  v42 = *(a1 + v41);
  v43 = *(v29 + v41);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v43 == 2 || ((v43 ^ v42) & 1) != 0)
    {
      return result;
    }
  }

  v44 = v27[12];
  v45 = *(a1 + v44);
  v46 = *(v29 + v44);
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v46 == 2 || ((v46 ^ v45) & 1) != 0)
    {
      return result;
    }
  }

  v47 = v27[13];
  v48 = *(a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (v29 + v47);
  if ((v48 != *v50 || v49 != v50[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v51 = v27[14];
  v52 = *(a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (v29 + v51);
  if ((v52 != *v54 || v53 != v54[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v55 = v27[15];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (v29 + v55);
  v59 = *(v29 + v55 + 8);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v27[16];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 8);
  v63 = (v29 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (*v61 != *v63 || v62 != v64) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v172 = v27;
  v173 = a1;
  v65 = v27[17];
  v66 = *(v21 + 48);
  sub_1000D2A70(v28 + v65, v25, &unk_101696AC0, &qword_101390A60);
  v67 = v184 + v65;
  v68 = v184;
  sub_1000D2A70(v67, &v25[v66], &unk_101696AC0, &qword_101390A60);
  v69 = v182;
  v70 = *(v183 + 48);
  if (v70(v25, 1, v182) == 1)
  {
    if (v70(&v25[v66], 1, v69) == 1)
    {
      sub_10000B3A8(v25, &unk_101696AC0, &qword_101390A60);
      goto LABEL_61;
    }

LABEL_59:
    v71 = &qword_1016A8910;
    v72 = &qword_1013BE3A0;
    v73 = v25;
LABEL_67:
    sub_10000B3A8(v73, v71, v72);
    return 0;
  }

  sub_1000D2A70(v25, v20, &unk_101696AC0, &qword_101390A60);
  v171 = v70;
  if (v70(&v25[v66], 1, v69) == 1)
  {
    (*(v183 + 8))(v20, v69);
    goto LABEL_59;
  }

  v74 = v183;
  v75 = v181;
  (*(v183 + 32))(v181, &v25[v66], v69);
  sub_1011A1B80(&qword_1016A8918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  v77 = *(v74 + 8);
  v77(v75, v69);
  v77(v20, v69);
  sub_10000B3A8(v25, &unk_101696AC0, &qword_101390A60);
  v68 = v184;
  v70 = v171;
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  v78 = v172[18];
  v79 = *(v21 + 48);
  v80 = v178;
  sub_1000D2A70(v173 + v78, v178, &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(v68 + v78, v80 + v79, &unk_101696AC0, &qword_101390A60);
  v81 = v182;
  if (v70(v80, 1, v182) == 1)
  {
    if (v70((v80 + v79), 1, v81) == 1)
    {
      sub_10000B3A8(v178, &unk_101696AC0, &qword_101390A60);
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  sub_1000D2A70(v80, v18, &unk_101696AC0, &qword_101390A60);
  if (v70((v80 + v79), 1, v81) == 1)
  {
    (*(v183 + 8))(v18, v81);
LABEL_66:
    v71 = &qword_1016A8910;
    v72 = &qword_1013BE3A0;
    v73 = v178;
    goto LABEL_67;
  }

  v82 = v183;
  v83 = v178;
  v84 = v181;
  (*(v183 + 32))(v181, v178 + v79, v81);
  sub_1011A1B80(&qword_1016A8918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v85 = v81;
  v86 = dispatch thunk of static Equatable.== infix(_:_:)();
  v87 = *(v82 + 8);
  v87(v84, v85);
  v87(v18, v85);
  sub_10000B3A8(v83, &unk_101696AC0, &qword_101390A60);
  if ((v86 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v88 = v172[19];
  v89 = (v173 + v88);
  v90 = *(v173 + v88 + 8);
  v91 = (v184 + v88);
  if ((*v89 != *v91 || v90 != v91[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v173 + v172[20]) != *(v184 + v172[20]))
  {
    return 0;
  }

  v92 = v172[21];
  v93 = *(v179 + 48);
  v94 = v177;
  sub_1000D2A70(v173 + v92, v177, &qword_1016A62E8, &qword_1013B3CB0);
  sub_1000D2A70(v184 + v92, v94 + v93, &qword_1016A62E8, &qword_1013B3CB0);
  v95 = *(v180 + 48);
  if (v95(v94, 1, v176) == 1)
  {
    if (v95(&v177[v93], 1, v176) == 1)
    {
      sub_10000B3A8(v177, &qword_1016A62E8, &qword_1013B3CB0);
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  v96 = v177;
  sub_1000D2A70(v177, v175, &qword_1016A62E8, &qword_1013B3CB0);
  if (v95((v96 + v93), 1, v176) == 1)
  {
    sub_1011A0924(v175, type metadata accessor for AccessoryInfoResponseContent.Configuration);
LABEL_78:
    v71 = &qword_1016A89D8;
    v72 = &unk_10140A400;
    v73 = v177;
    goto LABEL_67;
  }

  v97 = v177;
  v98 = &v177[v93];
  v99 = v174;
  sub_1011A07E4(v98, v174, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v100 = v175;
  v101 = sub_100755284(v175, v99);
  sub_1011A0924(v99, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  sub_1011A0924(v100, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  sub_10000B3A8(v97, &qword_1016A62E8, &qword_1013B3CB0);
  if (!v101)
  {
    return 0;
  }

LABEL_80:
  if (*(v173 + v172[22]) != *(v184 + v172[22]))
  {
    return 0;
  }

  v102 = v172[23];
  v103 = *(v173 + v102);
  v104 = *(v184 + v102);
  if (v103)
  {
    if (!v104 || (sub_10038F298(v103, v104) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  v105 = v172[24];
  v106 = v173 + v105;
  v108 = *(v173 + v105);
  v107 = *(v173 + v105 + 8);
  v109 = (v184 + v105);
  v111 = *v109;
  v110 = v109[1];
  if (v107 >> 60 == 15)
  {
    if (v110 >> 60 != 15)
    {
      goto LABEL_95;
    }

    sub_10002E98C(*v106, *(v106 + 8));
    sub_10002E98C(v111, v110);
    sub_100006654(v108, v107);
  }

  else
  {
    if (v110 >> 60 == 15)
    {
      goto LABEL_95;
    }

    sub_10002E98C(*v106, *(v106 + 8));
    sub_10002E98C(v111, v110);
    v112 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v108, v107, v111, v110);
    sub_100006654(v111, v110);
    sub_100006654(v108, v107);
    if (!v112)
    {
      return 0;
    }
  }

  v113 = v172[25];
  v114 = v173 + v113;
  v108 = *(v173 + v113);
  v107 = *(v173 + v113 + 8);
  v115 = (v184 + v113);
  v111 = *v115;
  v110 = v115[1];
  if (v107 >> 60 == 15)
  {
    if (v110 >> 60 == 15)
    {
      sub_10002E98C(*v114, *(v114 + 8));
      sub_10002E98C(v111, v110);
      sub_100006654(v108, v107);
      goto LABEL_97;
    }

LABEL_95:
    sub_10002E98C(v108, v107);
    sub_10002E98C(v111, v110);
    sub_100006654(v108, v107);
    sub_100006654(v111, v110);
    return 0;
  }

  if (v110 >> 60 == 15)
  {
    goto LABEL_95;
  }

  sub_10002E98C(*v114, *(v114 + 8));
  sub_10002E98C(v111, v110);
  v116 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v108, v107, v111, v110);
  sub_100006654(v111, v110);
  sub_100006654(v108, v107);
  if (!v116)
  {
    return 0;
  }

LABEL_97:
  if ((static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v117 = v172[32];
  v118 = (v173 + v117);
  v119 = *(v173 + v117 + 8);
  v120 = (v184 + v117);
  v121 = v120[1];
  if (v119)
  {
    if (!v121 || (*v118 != *v120 || v119 != v121) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v121)
  {
    return 0;
  }

  if ((sub_10038ED80(*(v173 + v172[33]), *(v184 + v172[33])) & 1) == 0)
  {
    return 0;
  }

  v122 = v172[34];
  v123 = (v173 + v122);
  v124 = *(v173 + v122 + 8);
  v125 = (v184 + v122);
  v126 = v125[1];
  if (v124)
  {
    if (!v126 || (*v123 != *v125 || v124 != v126) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v126)
  {
    return 0;
  }

  if ((sub_10038ED80(*(v173 + v172[35]), *(v184 + v172[35])) & 1) == 0)
  {
    return 0;
  }

  v127 = v172[36];
  v128 = (v173 + v127);
  v129 = *(v173 + v127 + 16);
  v130 = v184 + v127;
  v131 = *(v130 + 16);
  if (v129)
  {
    v132 = v184;
    v134 = v172;
    v133 = v173;
    if ((v131 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v130 + 16))
    {
      return 0;
    }

    result = 0;
    if (*v128 != *v130)
    {
      return result;
    }

    v135 = v128[1];
    v136 = *(v130 + 8);
    v132 = v184;
    v134 = v172;
    v133 = v173;
    if (v135 != v136)
    {
      return result;
    }
  }

  v137 = v134[37];
  v138 = v133 + v137;
  v139 = v132 + v137;
  if (*(v138 + 16))
  {
    if ((*(v139 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v139 + 16))
    {
      return 0;
    }

    result = 0;
    if (*v138 != *v139 || *(v138 + 8) != *(v139 + 8))
    {
      return result;
    }
  }

  if ((static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v140 = v172[44];
  v141 = *(v173 + v140);
  v142 = *(v184 + v140);
  if (v141 == 2)
  {
    v143 = v184;
    v145 = v172;
    v144 = v173;
    if (v142 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v142 == 2)
    {
      return result;
    }

    v146 = v142 ^ v141;
    v143 = v184;
    v145 = v172;
    v144 = v173;
    if (v146)
    {
      return result;
    }
  }

  v147 = v145[45];
  v148 = *(v144 + v147);
  v149 = *(v143 + v147);
  if (v148 == 2)
  {
    v150 = v184;
    v152 = v172;
    v151 = v173;
    if (v149 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v149 == 2)
    {
      return result;
    }

    v153 = v149 ^ v148;
    v150 = v184;
    v152 = v172;
    v151 = v173;
    if (v153)
    {
      return result;
    }
  }

  v154 = v152[46];
  v155 = *(v151 + v154);
  v156 = *(v150 + v154);
  if (v155 == 2)
  {
    v157 = v184;
    v158 = v172;
    v159 = v173;
    if (v156 != 2)
    {
      return 0;
    }

    goto LABEL_152;
  }

  result = 0;
  if (v156 != 2)
  {
    v160 = v156 ^ v155;
    v157 = v184;
    v158 = v172;
    v159 = v173;
    if ((v160 & 1) == 0)
    {
LABEL_152:
      v161 = v158[47];
      v162 = (v159 + v161);
      v163 = *(v159 + v161 + 8);
      v164 = (v157 + v161);
      v165 = v164[1];
      if (v163)
      {
        if (!v165 || (*v162 != *v164 || v163 != v165) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v165)
      {
        return 0;
      }

      v166 = v172[48];
      v167 = (v173 + v166);
      v168 = *(v173 + v166 + 8);
      v169 = (v184 + v166);
      v170 = v169[1];
      if (v168)
      {
        return v170 && (*v167 == *v169 && v168 == v170 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
      }

      return !v170;
    }
  }

  return result;
}

uint64_t sub_1011A1B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AccessoryProductInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryProductInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1011A1D1C()
{
  result = qword_1016C9EC0;
  if (!qword_1016C9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9EC0);
  }

  return result;
}

unint64_t sub_1011A1D74()
{
  result = qword_1016C9EC8;
  if (!qword_1016C9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9EC8);
  }

  return result;
}

unint64_t sub_1011A1DCC()
{
  result = qword_1016C9ED0;
  if (!qword_1016C9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9ED0);
  }

  return result;
}

uint64_t sub_1011A1E20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000010135E680 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7453726576726573 && a2 == 0xEC00000073757461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010135E700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7250796D646E6966 && a2 == 0xEF6449746375646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6341454C45487369 && a2 == 0xEF79726F73736563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010135E6E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x52746C7561666564 && a2 == 0xEB00000000656C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010135E820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x55656C6261736964 && a2 == 0xEA00000000004C52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7265776F507874 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x655474756F79616CLL && a2 == 0xEE006574616C706DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6974707972636E65 && a2 == 0xEF314579654B6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010137D410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x4C746C7561666564 && a2 == 0xEF6E6F6349747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E7A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E2F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEE00736D65744965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010135E310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101347AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E8E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000024 && 0x800000010135E900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xED00006E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010135E7C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEF78326E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010135E7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEF78336E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010135E800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x6761547269417369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x5565636166727573 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x70756B6F6F4C6E73 && a2 == 0xEB000000006C7255)
  {

    return 44;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 44;
    }

    else
    {
      return 45;
    }
  }
}

uint64_t sub_1011A2D94()
{
  sub_100007BAC((v0 + 16));
  sub_1011A3084(v0 + OBJC_IVAR____TtC12searchpartyd18BeaconPayloadCache_fileManager);

  return v0;
}

uint64_t sub_1011A2E34()
{
  sub_1011A2D94();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeaconPayloadCache(uint64_t a1)
{
  result = qword_1016C9F28;
  if (!qword_1016C9F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1011A2EE0(uint64_t a1)
{
  result = type metadata accessor for BeaconPayloadFileManager(319);
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

uint64_t sub_1011A2F9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  sub_1000BC4D4(&qword_1016CA070, &qword_10140A5A8);
  OS_dispatch_queue.sync<A>(execute:)();
  a4(v6, 0);
}

uint64_t sub_1011A3084(uint64_t a1)
{
  v2 = type metadata accessor for BeaconPayloadFileManager(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1011A30E0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for BeaconObservation(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100035730(a1, sub_1011A3678, 0);
  sub_1012BB138(v9, v4);

  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_100B3DB48(v4, v8);
    v12 = v8[*(v5 + 24)];
    if (v12 <= 0x10)
    {
      if (v12 == 15)
      {
        v13 = &SPTagSeparationStateConnected;
        goto LABEL_17;
      }

      if (v12 == 16)
      {
        v13 = &SPTagSeparationStateLeashConnected;
        goto LABEL_17;
      }
    }

    else
    {
      switch(v12)
      {
        case 0x11u:
          v13 = &SPTagSeparationStateLeashInterrupted;
          goto LABEL_17;
        case 0x12u:
          v13 = &SPTagSeparationStateLeashDropped;
          goto LABEL_17;
        case 0x13u:
          v13 = &SPTagSeparationStateLeashFailed;
LABEL_17:
          v14 = *v13;
          sub_10073B5F0(v8);
          return v14;
      }
    }

    v13 = &SPTagSeparationStateNone;
    goto LABEL_17;
  }

  sub_1011A3BD4(v4);
  v10 = SPTagSeparationStateNone;

  return v10;
}

uint64_t sub_1011A3450(uint64_t a1, char a2)
{
  v4 = type metadata accessor for BeaconObservation(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v8 = qword_10177B2E8;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  Date.init()();
  v7[*(v4 + 24)] = a2;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  sub_10073B64C(v7, v11 + v10);
  v12 = type metadata accessor for Transaction();
  __chkstk_darwin(v12);
  *&v14[-32] = v8;
  *&v14[-24] = v11;
  *&v14[-16] = 0;
  *&v14[-8] = 0;
  static Transaction.named<A>(_:with:)();

  sub_10073B5F0(v7);
  sub_100A8306C(0xBu);
  return 1;
}

uint64_t sub_1011A3678(uint64_t a1)
{
  sub_100525F50();
  v6 = Set.init(minimumCapacity:)();
  sub_100DEEF64(&v5, 14);
  sub_100DEEF64(&v5, 15);
  sub_100DEEF64(&v5, 16);
  sub_100DEEF64(&v5, 17);
  sub_100DEEF64(&v5, 18);
  sub_100DEEF64(&v5, 19);
  v2 = v6;
  v3 = type metadata accessor for BeaconObservation(0);
  LOBYTE(a1) = sub_101120594(*(a1 + *(v3 + 24)), v2);

  return a1 & 1;
}

void sub_1011A3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    v13 = 14;
LABEL_8:

    goto LABEL_9;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    v13 = 14;
    goto LABEL_9;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    v13 = 15;
    goto LABEL_8;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    v13 = 15;
    goto LABEL_9;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
    v13 = 16;
    goto LABEL_8;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    v13 = 16;
    goto LABEL_9;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
    v13 = 17;
    goto LABEL_8;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    v13 = 17;
    goto LABEL_9;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {
    v13 = 18;
    goto LABEL_8;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    v13 = 18;
    goto LABEL_9;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {
    v13 = 19;
    goto LABEL_8;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {
    v41 = static os_log_type_t.error.getter();
    sub_10039722C();
    v42 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "BeaconManagerTrampoline tagSeparationStateChanged failed - invalid state", 72, 2, _swiftEmptyArrayStorage);

    type metadata accessor for SPTagSeparationError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1011A3B7C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, v43);

    return;
  }

  v13 = 19;
LABEL_9:
  sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_1011A3450(a2, v13);
  v14 = *(a4 + 16);

  v14(a4, 0);
}

unint64_t sub_1011A3B7C()
{
  result = qword_1016962F8;
  if (!qword_1016962F8)
  {
    type metadata accessor for SPTagSeparationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016962F8);
  }

  return result;
}

uint64_t sub_1011A3BD4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1011A3C5C()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1011A3C80, v1, 0);
}

uint64_t sub_1011A3C80()
{
  v0[9] = type metadata accessor for LocalStorageDatabase(0);
  v0[10] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase, &unk_1013D7B20);
  Database.startup()();
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[8];

    return _swift_task_switch(sub_1011A3D84, v4, 0);
  }
}

uint64_t sub_1011A3D84()
{
  *(v0 + 96) = Database.readConnection.getter();

  return _swift_task_switch(sub_1011A3DF4, 0, 0);
}

uint64_t sub_1011A3DF4()
{
  if (!v0[12])
  {
    sub_10020223C();
    swift_allocError();
    *v5 = 2;
    *(v5 + 4) = 1;
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Table();
  v3 = sub_1000076D4(v2, qword_10177BAB8);
  v0[5] = v2;
  v0[6] = &protocol witness table for Table;
  v4 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  sub_1011A7160((v0 + 2));
  if (v1)
  {

    sub_100007BAC(v0 + 2);
LABEL_7:
    v6 = v0[1];

    return v6();
  }

  sub_100007BAC(v0 + 2);
  v8 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1011A3FBC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[9] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1011A411C, v1, 0);
}

uint64_t sub_1011A411C()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1011A4140, v1, 0);
}

uint64_t sub_1011A4140()
{
  v0[17] = type metadata accessor for LocalStorageDatabase(0);
  v0[18] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase, &unk_1013D7B20);
  Database.startup()();
  v0[19] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[16];

    return _swift_task_switch(sub_1011A4264, v4, 0);
  }
}

uint64_t sub_1011A4264()
{
  *(v0 + 160) = Database.readConnection.getter();

  return _swift_task_switch(sub_1011A42D4, 0, 0);
}

uint64_t sub_1011A42D4()
{
  if (!v0[20])
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[13], qword_10177BAB8);
  if (qword_101694C70 != -1)
  {
    swift_once();
  }

  v21 = v0[19];
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v19 = v0[15];
  v20 = v0[10];
  v5 = v0[9];
  v6 = v0[7];
  v7 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v7, qword_10177BAE8);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, v6, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  == infix<A>(_:_:)();
  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
  QueryType.filter(_:)();
  (*(v4 + 8))(v3, v20);
  v0[5] = v2;
  v0[6] = &protocol witness table for Table;
  v10 = sub_1000280DC(v0 + 2);
  (*(v1 + 16))(v10, v19, v2);
  sub_1011A7160((v0 + 2));
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[13];
  if (v21)
  {
    (*(v11 + 8))(v0[15], v0[13]);

    sub_100007BAC(v0 + 2);
LABEL_9:

    v15 = v0[1];

    return v15();
  }

  sub_100007BAC(v0 + 2);
  v17 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  (*(v11 + 8))(v12, v13);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_1011A4668(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1011A4790, v1, 0);
}

uint64_t sub_1011A4790()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_1011A47B4, v1, 0);
}

uint64_t sub_1011A47B4()
{
  v0[18] = type metadata accessor for LocalStorageDatabase(0);
  v0[19] = sub_1011A70B4(&qword_1016B62E0, type metadata accessor for LocalStorageDatabase, &unk_1013D7B20);
  Database.startup()();
  v0[20] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[17];

    return _swift_task_switch(sub_1011A48CC, v4, 0);
  }
}

uint64_t sub_1011A48CC()
{
  *(v0 + 168) = Database.readConnection.getter();

  return _swift_task_switch(sub_1011A493C, 0, 0);
}

uint64_t sub_1011A493C()
{
  if (!v0[21])
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[14], qword_10177BAB8);
  if (qword_101694CB8 != -1)
  {
    swift_once();
  }

  v18 = v0[20];
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v7, qword_10177BBC0);
  v0[7] = MACAddress.dataRepresentation.getter();
  v0[8] = v8;
  sub_1011A70B4(&qword_101699DC8, &type metadata accessor for Blob, &protocol conformance descriptor for Blob);
  == infix<A>(_:_:)();
  sub_100006654(v0[7], v0[8]);
  QueryType.filter(_:)();
  (*(v5 + 8))(v4, v6);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v9 = sub_1000280DC(v0 + 2);
  (*(v2 + 16))(v9, v1, v3);
  sub_1011A7160((v0 + 2));
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  if (v18)
  {
    (*(v11 + 8))(v0[16], v0[14]);

    sub_100007BAC(v0 + 2);
LABEL_9:

    v14 = v0[1];

    return v14();
  }

  sub_100007BAC(v0 + 2);
  v16 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  (*(v11 + 8))(v10, v12);

  v17 = v0[1];

  return v17(v16);
}