void sub_101156C90(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v235 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000010137CE40;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v234 = v18;
    v237 = a1;
    v236 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v240 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v241 = v24;

      v239 = v26;
      sub_10090C56C(v26, v27);
      v238 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v240, v241);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v248);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
          }

          else
          {
            v32 = v239;
            sub_10090C56C(v239, 0);
            v33 = v32;
          }

          v95 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v248, &v243);
          if (BYTE8(v244[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v243);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v248);
            return;
          }

          v96 = v239;
          sub_10000A748(&v243._countAndFlagsBits, v245);
          v97 = sub_1000035D0(v245, v246);
          __chkstk_darwin(v97);
          (*(v99 + 16))(v228 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v237;
          v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v243._countAndFlagsBits + *&v96];
          sub_100007BAC(v245);
          goto LABEL_102;
        }

        sub_1010100EC(&v248, &v243);
        if (BYTE8(v244[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v243._countAndFlagsBits, v245);
        v79 = v246;
        v78 = v247;
        v80 = sub_1000035D0(v245, v246);
        v232 = v228;
        __chkstk_darwin(v80);
        v230 = v81;
        v82 = v228 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v233 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v243._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_89;
            }

            v231 = v78;
            v229 = v228;
            __chkstk_darwin(v84);
            v86 = v228 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v86, v79);
            v78 = v231;
            if (v87)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v229) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v127 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v229)
            {
              v231 = v78;
              if (v127 <= 64)
              {
                v229 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v228[2] = v228;
                __chkstk_darwin(AssociatedTypeWitness);
                v228[0] = v228 - v133;
                swift_getAssociatedConformanceWitness();
                v134 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v228[1] = v228;
                __chkstk_darwin(v134);
                v136 = v228 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v137 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v233 + 8))(v136, v79);
                if (v137)
                {
                  goto LABEL_163;
                }

                v78 = v231;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v229 = v228;
              __chkstk_darwin(v127);
              v129 = v228 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v130 = dispatch thunk of static Comparable.< infix(_:_:)();
              v131 = v129;
              v78 = v231;
              (*(v233 + 8))(v131, v79);
              if (v130)
              {
                goto LABEL_163;
              }
            }

            else if (v127 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v243._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v139 = v78;
          v140 = v138;
          v231 = v139;
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v141 >= 64)
          {
LABEL_93:
            v229 = v228;
            __chkstk_darwin(v141);
            v230 = v228 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v230, v79);
            if (v143)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v144 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v233 + 8))(v82, v79);
        v47 = __OFADD__(v144, v239);
        v145 = &v239[v144];
        if (v47)
        {
          goto LABEL_154;
        }

        v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v145];
        sub_100007BAC(v245);
        a1 = v237;
LABEL_102:
        objc_opt_self();
        v146 = swift_dynamicCastObjCClass();
        if (v146)
        {
          v147 = v146;
          v148 = v95;
          v149 = String.init(_:)(v147);
          v150 = a1;
          v151 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v149;
          *(&v244[0] + 1) = &type metadata for String;
          *&v244[1] = v151;
          BYTE8(v244[1]) = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242 = v150[14];
          v153 = v242;
          v150[14] = 0x8000000000000000;
          v154 = sub_100771D58(v240, v241);
          v156 = v153[2];
          v157 = (v155 & 1) == 0;
          v47 = __OFADD__(v156, v157);
          v158 = v156 + v157;
          if (v47)
          {
            goto LABEL_151;
          }

          v159 = v155;
          if (v153[3] >= v158)
          {
            v12 = v236;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v223 = v154;
              sub_1010050E8();
              v154 = v223;
            }
          }

          else
          {
            sub_100FE65C4(v158, isUniquelyReferenced_nonNull_native);
            v154 = sub_100771D58(v240, v241);
            v12 = v236;
            if ((v159 & 1) != (v160 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          if (v159)
          {
            v179 = v154;

            v180 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v179);
          }

          else
          {
            v180 = v242;
            v242[(v154 >> 6) + 8] |= 1 << v154;
            v181 = (v180[6] + 16 * v154);
            v182 = v241;
            *v181 = v240;
            v181[1] = v182;
            v183 = (v180[7] + 48 * v154);
            v184 = *(v244 + 9);
            v185 = v244[0];
            *v183 = v243;
            v183[1] = v185;
            *(&v183[1]._object + 1) = v184;
            v186 = v180[2];
            v47 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            v180[2] = v187;
          }

          v188 = v238;
          a1[14] = v180;
          swift_endAccess();
          sub_101010148(v239, v188);

          goto LABEL_120;
        }

        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
          v162 = v161;
          [v161 doubleValue];
          v164 = v163;
          v165 = [v162 integerValue];
          if (v164 == v165)
          {
            v166 = v165;
            v167 = sub_1000DFAD8();
            swift_beginAccess();
            v243._countAndFlagsBits = v166;
            *(&v244[0] + 1) = &type metadata for Int;
            *&v244[1] = v167;
            BYTE8(v244[1]) = 2;
            v168 = swift_isUniquelyReferenced_nonNull_native();
            v169 = a1;
            v170 = v168;
            v242 = v169[14];
            v171 = v242;
            v169[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v174 = v171[2];
            v175 = (v173 & 1) == 0;
            v47 = __OFADD__(v174, v175);
            v176 = v174 + v175;
            if (v47)
            {
              goto LABEL_157;
            }

            v177 = v173;
            if (v171[3] >= v176)
            {
              if ((v170 & 1) == 0)
              {
                v226 = v172;
                sub_1010050E8();
                v172 = v226;
              }
            }

            else
            {
              sub_100FE65C4(v176, v170);
              v172 = sub_100771D58(v240, v241);
              if ((v177 & 1) != (v178 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if ((v177 & 1) == 0)
            {
              v206 = v242;
              v242[(v172 >> 6) + 8] |= 1 << v172;
              v207 = (v206[6] + 16 * v172);
              v208 = v241;
              *v207 = v240;
              v207[1] = v208;
              v209 = (v206[7] + 48 * v172);
              v210 = *(v244 + 9);
              v211 = v244[0];
              *v209 = v243;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = v206[2];
              v47 = __OFADD__(v212, 1);
              v213 = v212 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v214 = v172;

            v206 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v214);
          }

          else
          {
            v195 = sub_1000DFA84();
            swift_beginAccess();
            *&v243._countAndFlagsBits = v164;
            *(&v244[0] + 1) = &type metadata for Double;
            *&v244[1] = v195;
            BYTE8(v244[1]) = 3;
            v196 = swift_isUniquelyReferenced_nonNull_native();
            v197 = a1;
            v198 = v196;
            v242 = v197[14];
            v199 = v242;
            v197[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v201 = v199[2];
            v202 = (v200 & 1) == 0;
            v47 = __OFADD__(v201, v202);
            v203 = v201 + v202;
            if (v47)
            {
              goto LABEL_159;
            }

            v204 = v200;
            if (v199[3] >= v203)
            {
              if ((v198 & 1) == 0)
              {
                v227 = v172;
                sub_1010050E8();
                v172 = v227;
              }
            }

            else
            {
              sub_100FE65C4(v203, v198);
              v172 = sub_100771D58(v240, v241);
              if ((v204 & 1) != (v205 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if (v204)
            {
              goto LABEL_139;
            }

            v206 = v242;
            v242[(v172 >> 6) + 8] |= 1 << v172;
            v215 = (v206[6] + 16 * v172);
            v216 = v241;
            *v215 = v240;
            v215[1] = v216;
            v217 = (v206[7] + 48 * v172);
            v218 = *(v244 + 9);
            v219 = v244[0];
            *v217 = v243;
            v217[1] = v219;
            *(&v217[1]._object + 1) = v218;
            v220 = v206[2];
            v47 = __OFADD__(v220, 1);
            v213 = v220 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            v206[2] = v213;
          }

          v221 = v238;
          a1[14] = v206;
          swift_endAccess();

          sub_101010148(v239, v221);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v189 = type metadata accessor for Logger();
        sub_1000076D4(v189, qword_10177C6D0);
        v190 = v95;
        v148 = Logger.logObject.getter();
        v191 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v148, v191))
        {

          sub_101010148(v239, v238);
LABEL_120:

          goto LABEL_143;
        }

        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *v192 = v234;
        *(v192 + 4) = v190;
        *v193 = v190;
        v194 = v190;
        _os_log_impl(&_mh_execute_header, v148, v191, "Unsupported value type: %@!", v192, 0xCu);
        sub_10000B3A8(v193, &qword_10169BB30, &unk_10138B3C0);
        a1 = v237;

        v12 = v236;

        sub_101010148(v239, v238);
LABEL_143:
        sub_10118B5A0(&v248);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v239];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v239];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
        }

        else
        {
          isa = v239;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v248 = v39;
          *&v249[8] = &type metadata for String;
          *&v249[16] = v40;
          v249[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v245[0] = a1[14];
          v42 = v245[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v240, v241);
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
              v222 = v43;
              sub_1010050E8();
              v43 = v222;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v240, v241);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          v12 = v236;
          if (v49)
          {
            v69 = v43;

            v70 = v245[0];
            sub_10118B568(&v248, *(v245[0] + 56) + 48 * v69);
          }

          else
          {
            v70 = v245[0];
            *(v245[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v71 = (v70[6] + 16 * v43);
            v72 = v241;
            *v71 = v240;
            v71[1] = v72;
            v73 = (v70[7] + 48 * v43);
            v74 = *&v249[9];
            v75 = *v249;
            *v73 = v248;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = v70[2];
            v47 = __OFADD__(v76, 1);
            v77 = v76 + 1;
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

            v70[2] = v77;
          }

          a1[14] = v70;
          swift_endAccess();

LABEL_46:
          sub_101010148(v239, v238);
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
              v248._countAndFlagsBits = v56;
              *&v249[8] = &type metadata for Int;
              *&v249[16] = v57;
              v249[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v245[0] = v59[14];
              v61 = v245[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
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
                  v224 = v62;
                  sub_1010050E8();
                  v62 = v224;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v240, v241);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v67)
              {
                goto LABEL_77;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v112 = (v111[6] + 16 * v62);
              v113 = v241;
              *v112 = v240;
              v112[1] = v113;
              v114 = (v111[7] + 48 * v62);
              v115 = *&v249[9];
              v116 = *v249;
              *v114 = v248;
              v114[1] = v116;
              *(&v114[1]._object + 1) = v115;
              v117 = v111[2];
              v47 = __OFADD__(v117, 1);
              v118 = v117 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v100 = sub_1000DFA84();
              swift_beginAccess();
              *&v248._countAndFlagsBits = v54;
              *&v249[8] = &type metadata for Double;
              *&v249[16] = v100;
              v249[24] = 3;
              v101 = swift_isUniquelyReferenced_nonNull_native();
              v102 = a1;
              v103 = v101;
              v245[0] = v102[14];
              v104 = v245[0];
              v102[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v106 = *(v104 + 16);
              v107 = (v105 & 1) == 0;
              v47 = __OFADD__(v106, v107);
              v108 = v106 + v107;
              if (v47)
              {
                goto LABEL_155;
              }

              v109 = v105;
              if (*(v104 + 24) >= v108)
              {
                if ((v103 & 1) == 0)
                {
                  v225 = v62;
                  sub_1010050E8();
                  v62 = v225;
                }
              }

              else
              {
                sub_100FE65C4(v108, v103);
                v62 = sub_100771D58(v240, v241);
                if ((v109 & 1) != (v110 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v109)
              {
LABEL_77:
                v119 = v62;

                v111 = v245[0];
                sub_10118B568(&v248, *(v245[0] + 56) + 48 * v119);
                goto LABEL_80;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v120 = (v111[6] + 16 * v62);
              v121 = v241;
              *v120 = v240;
              v120[1] = v121;
              v122 = (v111[7] + 48 * v62);
              v123 = *&v249[9];
              v124 = *v249;
              *v122 = v248;
              v122[1] = v124;
              *(&v122[1]._object + 1) = v123;
              v125 = v111[2];
              v47 = __OFADD__(v125, 1);
              v118 = v125 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            v111[2] = v118;
LABEL_80:
            v126 = v238;
            a1[14] = v111;
            swift_endAccess();

            sub_101010148(v239, v126);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177C6D0);
            v89 = v36;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v92 = v234;
              *(v92 + 4) = v89;
              *v93 = v89;
              v94 = v89;
              _os_log_impl(&_mh_execute_header, v90, v91, "Unsupported value type: %@!", v92, 0xCu);
              sub_10000B3A8(v93, &qword_10169BB30, &unk_10138B3C0);
              a1 = v237;

              v12 = v236;

              goto LABEL_46;
            }

            sub_101010148(v239, v238);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v248._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v248._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_1011587E4(void *a1, char a2, unint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  LOBYTE(v8) = a6;
  LOBYTE(v12) = a2;
  if (qword_101695280 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v14 = a1[15];
    v15 = a1[16];
    v16 = sub_10111EACC(v14, v15, qword_10177C6E8);
    v231 = a1;
    if (v16)
    {
      break;
    }

    v226 = v7;
    v22 = sub_10116748C(v12 & 1, a3, a4, a5, v8 & 1);
    a3 = v22 + 64;
    v23 = *(v22 + 64);
    v230 = v22;
    v24 = 1 << *(v22 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v15 = v25 & v23;
    swift_beginAccess();
    v12 = 0;
    v7 = (v24 + 63) >> 6;
    *&v26 = 138412290;
    v225 = v26;
    v228 = v7;
    v229 = a3;
    while (v15)
    {
LABEL_15:
      v28 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v29 = (v12 << 10) | (16 * v28);
      v30 = *(v230 + 56);
      v31 = (*(v230 + 48) + v29);
      v32 = v31[1];
      v232 = *v31;
      v33 = v30 + v29;
      v8 = *v33;
      a4 = *(v33 + 8);
      v34 = a1[14];
      v35 = *(v34 + 16);
      v233 = v32;

      sub_10090C56C(v8, a4);
      if (v35)
      {

        v36 = sub_100771D58(v232, v233);
        if ((v37 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v34 + 56) + 48 * v36, &v240);

        if (a4 <= 1)
        {
          if (a4)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v38 = NSNumber.init(BOOLeanLiteral:)(v8 & 1).super.super.isa;
          }

          else
          {
            sub_10090C56C(v8, 0);
            v38 = v8;
          }

          v97 = v38;
          goto LABEL_103;
        }

        if (a4 != 2)
        {
          sub_1010100EC(&v240, &v235);
          if (v236[24] != 3)
          {
LABEL_146:

            sub_10118B5A0(&v235);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v240);
            return;
          }

          sub_10000A748(&v235._countAndFlagsBits, v237);
          v98 = sub_1000035D0(v237, v238);
          __chkstk_darwin(v98);
          (*(v100 + 16))(v219 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          a1 = v231;
          BinaryFloatingPoint.init<A>(_:)();
          v97 = [objc_allocWithZone(NSNumber) initWithDouble:*&v235._countAndFlagsBits + *&v8];
          sub_100007BAC(v237);
          goto LABEL_103;
        }

        sub_1010100EC(&v240, &v235);
        if (v236[24] != 2)
        {
          goto LABEL_146;
        }

        v227 = v8;
        sub_10000A748(&v235._countAndFlagsBits, v237);
        v82 = v238;
        v81 = v239;
        v83 = sub_1000035D0(v237, v238);
        __chkstk_darwin(v83);
        v223 = v84;
        v85 = v219 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v224 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v235._countAndFlagsBits = 0x8000000000000000;
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
                v219[1] = v219 - v129;
                swift_getAssociatedConformanceWitness();
                v130 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v219[2] = v219;
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
          v235._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
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
        v8 = v227;
        v51 = __OFADD__(v141, v227);
        v142 = &v227[v141];
        if (v51)
        {
          goto LABEL_155;
        }

        v97 = [objc_allocWithZone(NSNumber) initWithLongLong:v142];
        sub_100007BAC(v237);
        a1 = v231;
LABEL_103:
        objc_opt_self();
        v143 = swift_dynamicCastObjCClass();
        if (v143)
        {
          v144 = v143;
          v145 = v8;
          v146 = v97;
          v147 = String.init(_:)(v144);
          v148 = sub_1000DF96C();
          swift_beginAccess();
          v235 = v147;
          *&v236[8] = &type metadata for String;
          *&v236[16] = v148;
          v236[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v234 = a1[14];
          v150 = v234;
          a1[14] = 0x8000000000000000;
          v151 = sub_100771D58(v232, v233);
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
            v151 = sub_100771D58(v232, v233);
            if ((v156 & 1) != (v157 & 1))
            {
              goto LABEL_165;
            }
          }

          v7 = v228;
          v8 = v145;
          a3 = v229;
          if (v156)
          {
            v176 = v151;

            a5 = v234;
            sub_10118B568(&v235, v234[7] + 48 * v176);
          }

          else
          {
            a5 = v234;
            v234[(v151 >> 6) + 8] |= 1 << v151;
            v177 = (a5[6] + 16 * v151);
            v178 = v233;
            *v177 = v232;
            v177[1] = v178;
            v179 = (a5[7] + 48 * v151);
            v180 = *&v236[9];
            v181 = *v236;
            *v179 = v235;
            v179[1] = v181;
            *(&v179[1]._object + 1) = v180;
            v182 = a5[2];
            v51 = __OFADD__(v182, 1);
            v183 = v182 + 1;
            if (v51)
            {
              goto LABEL_154;
            }

            a5[2] = v183;
          }

          a1 = v231;
          v231[14] = a5;
          swift_endAccess();
          sub_101010148(v8, a4);
        }

        else
        {

          objc_opt_self();
          v158 = swift_dynamicCastObjCClass();
          if (v158)
          {
            v227 = v8;
            v159 = v158;
            [v158 doubleValue];
            v161 = v160;
            v162 = [v159 integerValue];
            a3 = v229;
            if (v161 == v162)
            {
              v163 = v162;
              v164 = a4;
              v165 = a1;
              v166 = sub_1000DFAD8();
              swift_beginAccess();
              v235._countAndFlagsBits = v163;
              *&v236[8] = &type metadata for Int;
              *&v236[16] = v166;
              v236[24] = 2;
              v167 = swift_isUniquelyReferenced_nonNull_native();
              v234 = v165[14];
              v168 = v234;
              v165[14] = 0x8000000000000000;
              v169 = sub_100771D58(v232, v233);
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
                v7 = v228;
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
                v169 = sub_100771D58(v232, v233);
                v7 = v228;
                if ((v174 & 1) != (v175 & 1))
                {
                  goto LABEL_165;
                }
              }

              v8 = v227;
              if ((v174 & 1) == 0)
              {
                a5 = v234;
                v234[(v169 >> 6) + 8] |= 1 << v169;
                v199 = (a5[6] + 16 * v169);
                v200 = v233;
                *v199 = v232;
                v199[1] = v200;
                v201 = (a5[7] + 48 * v169);
                v202 = *&v236[9];
                v203 = *v236;
                *v201 = v235;
                v201[1] = v203;
                *(&v201[1]._object + 1) = v202;
                v204 = a5[2];
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

              a5 = v234;
              sub_10118B568(&v235, v234[7] + 48 * v206);
            }

            else
            {
              v190 = sub_1000DFA84();
              swift_beginAccess();
              *&v235._countAndFlagsBits = v161;
              *&v236[8] = &type metadata for Double;
              *&v236[16] = v190;
              v236[24] = 3;
              v191 = swift_isUniquelyReferenced_nonNull_native();
              v234 = a1[14];
              v192 = v234;
              a1[14] = 0x8000000000000000;
              v169 = sub_100771D58(v232, v233);
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
                v169 = sub_100771D58(v232, v233);
                if ((v197 & 1) != (v198 & 1))
                {
                  goto LABEL_165;
                }
              }

              v8 = v227;
              if (v197)
              {
                goto LABEL_140;
              }

              a5 = v234;
              v234[(v169 >> 6) + 8] |= 1 << v169;
              v207 = (a5[6] + 16 * v169);
              v208 = v233;
              *v207 = v232;
              v207[1] = v208;
              v209 = (a5[7] + 48 * v169);
              v210 = *&v236[9];
              v211 = *v236;
              *v209 = v235;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = a5[2];
              v51 = __OFADD__(v212, 1);
              v205 = v212 + 1;
              if (v51)
              {
                goto LABEL_163;
              }

LABEL_142:
              a5[2] = v205;
            }

            a1 = v231;
            v231[14] = a5;
            swift_endAccess();

            sub_101010148(v8, a4);
            goto LABEL_144;
          }

          a3 = v229;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v184 = type metadata accessor for Logger();
          sub_1000076D4(v184, qword_10177C6D0);
          v185 = v97;
          v186 = Logger.logObject.getter();
          a5 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v186, a5))
          {
            v187 = swift_slowAlloc();
            LODWORD(v233) = a4;
            a4 = v187;
            v188 = COERCE_DOUBLE(swift_slowAlloc());
            v227 = v8;
            *&v8 = v188;
            *a4 = v225;
            *(a4 + 4) = v185;
            **&v188 = v185;
            v189 = v185;
            _os_log_impl(&_mh_execute_header, v186, a5, "Unsupported value type: %@!", a4, 0xCu);
            sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v227, v233);
          }

          else
          {

            sub_101010148(v8, a4);
          }

          a1 = v231;
        }

LABEL_144:
        sub_10118B5A0(&v240);
      }

      else
      {
LABEL_21:
        if (a4 > 1)
        {
          if (a4 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:v8];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v8];
          }
        }

        else if (a4)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v8 & 1).super.super.isa;
        }

        else
        {
          isa = v8;
        }

        v14 = isa;
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = v40;
          v42 = v8;
          v14 = v14;
          v43 = String.init(_:)(v41);
          v44 = sub_1000DF96C();
          swift_beginAccess();
          v240 = v43;
          *&v241[8] = &type metadata for String;
          *&v241[16] = v44;
          v241[24] = 1;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v237[0] = a1[14];
          v46 = v237[0];
          a1[14] = 0x8000000000000000;
          v47 = sub_100771D58(v232, v233);
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
            v47 = sub_100771D58(v232, v233);
            if ((v53 & 1) != (v54 & 1))
            {
              goto LABEL_165;
            }
          }

          v7 = v228;
          v8 = v42;
          a3 = v229;
          if (v53)
          {
            v73 = v47;

            a5 = v237[0];
            sub_10118B568(&v240, *(v237[0] + 56) + 48 * v73);
          }

          else
          {
            a5 = v237[0];
            *(v237[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v74 = (a5[6] + 16 * v47);
            v75 = v233;
            *v74 = v232;
            v74[1] = v75;
            v76 = (a5[7] + 48 * v47);
            v77 = *&v241[9];
            v78 = *v241;
            *v76 = v240;
            v76[1] = v78;
            *(&v76[1]._object + 1) = v77;
            v79 = a5[2];
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

            a5[2] = v80;
          }

          a1 = v231;
          v231[14] = a5;
          swift_endAccess();

LABEL_81:
          sub_101010148(v8, a4);
        }

        else
        {
          objc_opt_self();
          v55 = swift_dynamicCastObjCClass();
          if (v55)
          {
            v227 = v8;
            v56 = v55;
            [v55 doubleValue];
            v58 = v57;
            v59 = [v56 integerValue];
            a3 = v229;
            if (v58 == v59)
            {
              v60 = v59;
              v61 = a4;
              v62 = a1;
              v63 = sub_1000DFAD8();
              swift_beginAccess();
              v240._countAndFlagsBits = v60;
              *&v241[8] = &type metadata for Int;
              *&v241[16] = v63;
              v241[24] = 2;
              v64 = swift_isUniquelyReferenced_nonNull_native();
              v237[0] = v62[14];
              v65 = v237[0];
              v62[14] = 0x8000000000000000;
              v66 = sub_100771D58(v232, v233);
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
                v7 = v228;
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
                v66 = sub_100771D58(v232, v233);
                v7 = v228;
                if ((v71 & 1) != (v72 & 1))
                {
                  goto LABEL_165;
                }
              }

              v8 = v227;
              if ((v71 & 1) == 0)
              {
                a5 = v237[0];
                *(v237[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
                v110 = (a5[6] + 16 * v66);
                v111 = v233;
                *v110 = v232;
                v110[1] = v111;
                v112 = (a5[7] + 48 * v66);
                v113 = *&v241[9];
                v114 = *v241;
                *v112 = v240;
                v112[1] = v114;
                *(&v112[1]._object + 1) = v113;
                v115 = a5[2];
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

              a5 = v237[0];
              sub_10118B568(&v240, *(v237[0] + 56) + 48 * v117);
            }

            else
            {
              v101 = sub_1000DFA84();
              swift_beginAccess();
              *&v240._countAndFlagsBits = v58;
              *&v241[8] = &type metadata for Double;
              *&v241[16] = v101;
              v241[24] = 3;
              v102 = swift_isUniquelyReferenced_nonNull_native();
              v237[0] = a1[14];
              v103 = v237[0];
              a1[14] = 0x8000000000000000;
              v66 = sub_100771D58(v232, v233);
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
                v7 = v228;
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
                v66 = sub_100771D58(v232, v233);
                v7 = v228;
                if ((v108 & 1) != (v109 & 1))
                {
                  goto LABEL_165;
                }
              }

              v8 = v227;
              if (v108)
              {
                goto LABEL_77;
              }

              a5 = v237[0];
              *(v237[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
              v118 = (a5[6] + 16 * v66);
              v119 = v233;
              *v118 = v232;
              v118[1] = v119;
              v120 = (a5[7] + 48 * v66);
              v121 = *&v241[9];
              v122 = *v241;
              *v120 = v240;
              v120[1] = v122;
              *(&v120[1]._object + 1) = v121;
              v123 = a5[2];
              v51 = __OFADD__(v123, 1);
              v116 = v123 + 1;
              if (v51)
              {
                goto LABEL_159;
              }

LABEL_79:
              a5[2] = v116;
            }

            a1 = v231;
            v231[14] = a5;
            swift_endAccess();
            goto LABEL_81;
          }

          v7 = v228;
          a3 = v229;
          if (qword_101695278 != -1)
          {
            swift_once();
          }

          v91 = type metadata accessor for Logger();
          sub_1000076D4(v91, qword_10177C6D0);
          v92 = v14;
          v93 = Logger.logObject.getter();
          a5 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v93, a5))
          {
            v94 = swift_slowAlloc();
            LODWORD(v233) = a4;
            a4 = v94;
            v95 = COERCE_DOUBLE(swift_slowAlloc());
            v227 = v8;
            *&v8 = v95;
            *a4 = v225;
            *(a4 + 4) = v92;
            **&v95 = v92;
            v96 = v92;
            _os_log_impl(&_mh_execute_header, v93, a5, "Unsupported value type: %@!", a4, 0xCu);
            sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

            sub_101010148(v227, v233);
          }

          else
          {

            sub_101010148(v8, a4);
          }

          a1 = v231;
        }
      }
    }

    while (1)
    {
      v27 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v27 >= v7)
      {

        return;
      }

      v15 = *(a3 + 8 * v27);
      ++v12;
      if (v15)
      {
        v12 = v27;
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
    v240._countAndFlagsBits = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(v14, v15, &v240._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v18, v19, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v20, 0xCu);
    sub_100007BAC(v21);
  }
}

void sub_10115A320(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v235 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    strcpy((inited + 32), "totalKeysBuilt");
    *(inited + 47) = -18;
    *(inited + 48) = Int._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v234 = v18;
    v237 = a1;
    v236 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v240 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v241 = v24;

      v239 = v26;
      sub_10090C56C(v26, v27);
      v238 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v240, v241);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v248);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
          }

          else
          {
            v32 = v239;
            sub_10090C56C(v239, 0);
            v33 = v32;
          }

          v95 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v248, &v243);
          if (BYTE8(v244[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v243);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v248);
            return;
          }

          v96 = v239;
          sub_10000A748(&v243._countAndFlagsBits, v245);
          v97 = sub_1000035D0(v245, v246);
          __chkstk_darwin(v97);
          (*(v99 + 16))(v228 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v237;
          v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v243._countAndFlagsBits + *&v96];
          sub_100007BAC(v245);
          goto LABEL_102;
        }

        sub_1010100EC(&v248, &v243);
        if (BYTE8(v244[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v243._countAndFlagsBits, v245);
        v79 = v246;
        v78 = v247;
        v80 = sub_1000035D0(v245, v246);
        v232 = v228;
        __chkstk_darwin(v80);
        v230 = v81;
        v82 = v228 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v233 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v243._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_89;
            }

            v231 = v78;
            v229 = v228;
            __chkstk_darwin(v84);
            v86 = v228 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v86, v79);
            v78 = v231;
            if (v87)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v229) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v127 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v229)
            {
              v231 = v78;
              if (v127 <= 64)
              {
                v229 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v228[2] = v228;
                __chkstk_darwin(AssociatedTypeWitness);
                v228[0] = v228 - v133;
                swift_getAssociatedConformanceWitness();
                v134 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v228[1] = v228;
                __chkstk_darwin(v134);
                v136 = v228 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v137 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v233 + 8))(v136, v79);
                if (v137)
                {
                  goto LABEL_163;
                }

                v78 = v231;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v229 = v228;
              __chkstk_darwin(v127);
              v129 = v228 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v130 = dispatch thunk of static Comparable.< infix(_:_:)();
              v131 = v129;
              v78 = v231;
              (*(v233 + 8))(v131, v79);
              if (v130)
              {
                goto LABEL_163;
              }
            }

            else if (v127 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v243._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v139 = v78;
          v140 = v138;
          v231 = v139;
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v141 >= 64)
          {
LABEL_93:
            v229 = v228;
            __chkstk_darwin(v141);
            v230 = v228 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v230, v79);
            if (v143)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v144 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v233 + 8))(v82, v79);
        v47 = __OFADD__(v144, v239);
        v145 = &v239[v144];
        if (v47)
        {
          goto LABEL_154;
        }

        v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v145];
        sub_100007BAC(v245);
        a1 = v237;
LABEL_102:
        objc_opt_self();
        v146 = swift_dynamicCastObjCClass();
        if (v146)
        {
          v147 = v146;
          v148 = v95;
          v149 = String.init(_:)(v147);
          v150 = a1;
          v151 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v149;
          *(&v244[0] + 1) = &type metadata for String;
          *&v244[1] = v151;
          BYTE8(v244[1]) = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242 = v150[14];
          v153 = v242;
          v150[14] = 0x8000000000000000;
          v154 = sub_100771D58(v240, v241);
          v156 = v153[2];
          v157 = (v155 & 1) == 0;
          v47 = __OFADD__(v156, v157);
          v158 = v156 + v157;
          if (v47)
          {
            goto LABEL_151;
          }

          v159 = v155;
          if (v153[3] >= v158)
          {
            v12 = v236;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v223 = v154;
              sub_1010050E8();
              v154 = v223;
            }
          }

          else
          {
            sub_100FE65C4(v158, isUniquelyReferenced_nonNull_native);
            v154 = sub_100771D58(v240, v241);
            v12 = v236;
            if ((v159 & 1) != (v160 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          if (v159)
          {
            v179 = v154;

            v180 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v179);
          }

          else
          {
            v180 = v242;
            v242[(v154 >> 6) + 8] |= 1 << v154;
            v181 = (v180[6] + 16 * v154);
            v182 = v241;
            *v181 = v240;
            v181[1] = v182;
            v183 = (v180[7] + 48 * v154);
            v184 = *(v244 + 9);
            v185 = v244[0];
            *v183 = v243;
            v183[1] = v185;
            *(&v183[1]._object + 1) = v184;
            v186 = v180[2];
            v47 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            v180[2] = v187;
          }

          v188 = v238;
          a1[14] = v180;
          swift_endAccess();
          sub_101010148(v239, v188);

          goto LABEL_120;
        }

        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
          v162 = v161;
          [v161 doubleValue];
          v164 = v163;
          v165 = [v162 integerValue];
          if (v164 == v165)
          {
            v166 = v165;
            v167 = sub_1000DFAD8();
            swift_beginAccess();
            v243._countAndFlagsBits = v166;
            *(&v244[0] + 1) = &type metadata for Int;
            *&v244[1] = v167;
            BYTE8(v244[1]) = 2;
            v168 = swift_isUniquelyReferenced_nonNull_native();
            v169 = a1;
            v170 = v168;
            v242 = v169[14];
            v171 = v242;
            v169[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v174 = v171[2];
            v175 = (v173 & 1) == 0;
            v47 = __OFADD__(v174, v175);
            v176 = v174 + v175;
            if (v47)
            {
              goto LABEL_157;
            }

            v177 = v173;
            if (v171[3] >= v176)
            {
              if ((v170 & 1) == 0)
              {
                v226 = v172;
                sub_1010050E8();
                v172 = v226;
              }
            }

            else
            {
              sub_100FE65C4(v176, v170);
              v172 = sub_100771D58(v240, v241);
              if ((v177 & 1) != (v178 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if ((v177 & 1) == 0)
            {
              v206 = v242;
              v242[(v172 >> 6) + 8] |= 1 << v172;
              v207 = (v206[6] + 16 * v172);
              v208 = v241;
              *v207 = v240;
              v207[1] = v208;
              v209 = (v206[7] + 48 * v172);
              v210 = *(v244 + 9);
              v211 = v244[0];
              *v209 = v243;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = v206[2];
              v47 = __OFADD__(v212, 1);
              v213 = v212 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v214 = v172;

            v206 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v214);
          }

          else
          {
            v195 = sub_1000DFA84();
            swift_beginAccess();
            *&v243._countAndFlagsBits = v164;
            *(&v244[0] + 1) = &type metadata for Double;
            *&v244[1] = v195;
            BYTE8(v244[1]) = 3;
            v196 = swift_isUniquelyReferenced_nonNull_native();
            v197 = a1;
            v198 = v196;
            v242 = v197[14];
            v199 = v242;
            v197[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v201 = v199[2];
            v202 = (v200 & 1) == 0;
            v47 = __OFADD__(v201, v202);
            v203 = v201 + v202;
            if (v47)
            {
              goto LABEL_159;
            }

            v204 = v200;
            if (v199[3] >= v203)
            {
              if ((v198 & 1) == 0)
              {
                v227 = v172;
                sub_1010050E8();
                v172 = v227;
              }
            }

            else
            {
              sub_100FE65C4(v203, v198);
              v172 = sub_100771D58(v240, v241);
              if ((v204 & 1) != (v205 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if (v204)
            {
              goto LABEL_139;
            }

            v206 = v242;
            v242[(v172 >> 6) + 8] |= 1 << v172;
            v215 = (v206[6] + 16 * v172);
            v216 = v241;
            *v215 = v240;
            v215[1] = v216;
            v217 = (v206[7] + 48 * v172);
            v218 = *(v244 + 9);
            v219 = v244[0];
            *v217 = v243;
            v217[1] = v219;
            *(&v217[1]._object + 1) = v218;
            v220 = v206[2];
            v47 = __OFADD__(v220, 1);
            v213 = v220 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            v206[2] = v213;
          }

          v221 = v238;
          a1[14] = v206;
          swift_endAccess();

          sub_101010148(v239, v221);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v189 = type metadata accessor for Logger();
        sub_1000076D4(v189, qword_10177C6D0);
        v190 = v95;
        v148 = Logger.logObject.getter();
        v191 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v148, v191))
        {

          sub_101010148(v239, v238);
LABEL_120:

          goto LABEL_143;
        }

        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *v192 = v234;
        *(v192 + 4) = v190;
        *v193 = v190;
        v194 = v190;
        _os_log_impl(&_mh_execute_header, v148, v191, "Unsupported value type: %@!", v192, 0xCu);
        sub_10000B3A8(v193, &qword_10169BB30, &unk_10138B3C0);
        a1 = v237;

        v12 = v236;

        sub_101010148(v239, v238);
LABEL_143:
        sub_10118B5A0(&v248);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v239];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v239];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
        }

        else
        {
          isa = v239;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v248 = v39;
          *&v249[8] = &type metadata for String;
          *&v249[16] = v40;
          v249[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v245[0] = a1[14];
          v42 = v245[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v240, v241);
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
              v222 = v43;
              sub_1010050E8();
              v43 = v222;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v240, v241);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          v12 = v236;
          if (v49)
          {
            v69 = v43;

            v70 = v245[0];
            sub_10118B568(&v248, *(v245[0] + 56) + 48 * v69);
          }

          else
          {
            v70 = v245[0];
            *(v245[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v71 = (v70[6] + 16 * v43);
            v72 = v241;
            *v71 = v240;
            v71[1] = v72;
            v73 = (v70[7] + 48 * v43);
            v74 = *&v249[9];
            v75 = *v249;
            *v73 = v248;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = v70[2];
            v47 = __OFADD__(v76, 1);
            v77 = v76 + 1;
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

            v70[2] = v77;
          }

          a1[14] = v70;
          swift_endAccess();

LABEL_46:
          sub_101010148(v239, v238);
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
              v248._countAndFlagsBits = v56;
              *&v249[8] = &type metadata for Int;
              *&v249[16] = v57;
              v249[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v245[0] = v59[14];
              v61 = v245[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
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
                  v224 = v62;
                  sub_1010050E8();
                  v62 = v224;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v240, v241);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v67)
              {
                goto LABEL_77;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v112 = (v111[6] + 16 * v62);
              v113 = v241;
              *v112 = v240;
              v112[1] = v113;
              v114 = (v111[7] + 48 * v62);
              v115 = *&v249[9];
              v116 = *v249;
              *v114 = v248;
              v114[1] = v116;
              *(&v114[1]._object + 1) = v115;
              v117 = v111[2];
              v47 = __OFADD__(v117, 1);
              v118 = v117 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v100 = sub_1000DFA84();
              swift_beginAccess();
              *&v248._countAndFlagsBits = v54;
              *&v249[8] = &type metadata for Double;
              *&v249[16] = v100;
              v249[24] = 3;
              v101 = swift_isUniquelyReferenced_nonNull_native();
              v102 = a1;
              v103 = v101;
              v245[0] = v102[14];
              v104 = v245[0];
              v102[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v106 = *(v104 + 16);
              v107 = (v105 & 1) == 0;
              v47 = __OFADD__(v106, v107);
              v108 = v106 + v107;
              if (v47)
              {
                goto LABEL_155;
              }

              v109 = v105;
              if (*(v104 + 24) >= v108)
              {
                if ((v103 & 1) == 0)
                {
                  v225 = v62;
                  sub_1010050E8();
                  v62 = v225;
                }
              }

              else
              {
                sub_100FE65C4(v108, v103);
                v62 = sub_100771D58(v240, v241);
                if ((v109 & 1) != (v110 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v109)
              {
LABEL_77:
                v119 = v62;

                v111 = v245[0];
                sub_10118B568(&v248, *(v245[0] + 56) + 48 * v119);
                goto LABEL_80;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v120 = (v111[6] + 16 * v62);
              v121 = v241;
              *v120 = v240;
              v120[1] = v121;
              v122 = (v111[7] + 48 * v62);
              v123 = *&v249[9];
              v124 = *v249;
              *v122 = v248;
              v122[1] = v124;
              *(&v122[1]._object + 1) = v123;
              v125 = v111[2];
              v47 = __OFADD__(v125, 1);
              v118 = v125 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            v111[2] = v118;
LABEL_80:
            v126 = v238;
            a1[14] = v111;
            swift_endAccess();

            sub_101010148(v239, v126);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177C6D0);
            v89 = v36;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v92 = v234;
              *(v92 + 4) = v89;
              *v93 = v89;
              v94 = v89;
              _os_log_impl(&_mh_execute_header, v90, v91, "Unsupported value type: %@!", v92, 0xCu);
              sub_10000B3A8(v93, &qword_10169BB30, &unk_10138B3C0);
              a1 = v237;

              v12 = v236;

              goto LABEL_46;
            }

            sub_101010148(v239, v238);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v248._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v248._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_10115BE7C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v6 = v4[15];
    object = v4[16];
    if (sub_10111EACC(v6, object, qword_10177C6E8))
    {
      break;
    }

    v237 = v3;
    a1 = (a1)();
    v3 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v236 = v18;
    v239 = v4;
    v238 = a1;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(a1 + 56);
      v23 = (*(a1 + 48) + v21);
      v24 = v23[1];
      v242 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = v4[14];
      v29 = *(v28 + 16);
      v243 = v24;

      v241 = v26;
      sub_10090C56C(v26, v27);
      v240 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v242, v243);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v250);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v241 & 1).super.super.isa;
          }

          else
          {
            v32 = v241;
            sub_10090C56C(v241, 0);
            v33 = v32;
          }

          v93 = v33;
          goto LABEL_103;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v250, &v245);
          if (v246[24] != 3)
          {
LABEL_146:

            sub_10118B5A0(&v245);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v250);
            return;
          }

          v94 = v241;
          sub_10000A748(&v245._countAndFlagsBits, v247);
          v95 = sub_1000035D0(v247, v248);
          __chkstk_darwin(v95);
          (*(v97 + 16))(v229 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          v4 = v239;
          v93 = [objc_allocWithZone(NSNumber) initWithDouble:*&v245._countAndFlagsBits + *&v94];
          sub_100007BAC(v247);
          goto LABEL_103;
        }

        sub_1010100EC(&v250, &v245);
        if (v246[24] != 2)
        {
          goto LABEL_146;
        }

        sub_10000A748(&v245._countAndFlagsBits, v247);
        v80 = v248;
        v79 = v249;
        v81 = sub_1000035D0(v247, v248);
        v234 = v229;
        __chkstk_darwin(v81);
        v232 = v82;
        v83 = v229 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
        v235 = v84;
        (*(v84 + 16))(v83);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v245._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v85 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v85 < 64)
            {
              goto LABEL_90;
            }

            v231 = v229;
            __chkstk_darwin(v85);
            v233 = v79;
            v132 = v229 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v130 = dispatch thunk of static Comparable.< infix(_:_:)();
            v133 = v132;
            v79 = v233;
            (*(v235 + 8))(v133, v80);
LABEL_84:
            if (v130)
            {
              goto LABEL_164;
            }

            goto LABEL_91;
          }

          v125 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v126 = v79;
          v127 = v125;
          v233 = v126;
          v128 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v127)
          {
            if (v128 <= 64)
            {
              v231 = *(*(v233 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v230 = v229;
              __chkstk_darwin(AssociatedTypeWitness);
              v229[0] = v229 - v135;
              swift_getAssociatedConformanceWitness();
              v136 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              v229[1] = v229;
              __chkstk_darwin(v136);
              v138 = v229 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v139 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v235 + 8))(v138, v80);
              if (v139)
              {
                goto LABEL_164;
              }

LABEL_89:
              v79 = v233;
LABEL_90:
              dispatch thunk of BinaryInteger._lowWord.getter();
              goto LABEL_91;
            }

            v230 = v229;
            __chkstk_darwin(v128);
            v231 = v229 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v79 = v233;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v130 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v235 + 8))(v231, v80);
            goto LABEL_84;
          }

          if (v128 < 64)
          {
            goto LABEL_89;
          }

          v79 = v233;
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v245._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v140 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v141 = v79;
          v142 = v140;
          v233 = v141;
          v143 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v142)
          {
            if (v143 >= 65)
            {
              goto LABEL_94;
            }
          }

          else if (v143 >= 64)
          {
LABEL_94:
            v231 = v229;
            __chkstk_darwin(v143);
            v232 = v229 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v145 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v235 + 8))(v232, v80);
            if (v145)
            {
              goto LABEL_161;
            }

            goto LABEL_101;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_101:
        v146 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v235 + 8))(v83, v80);
        v48 = __OFADD__(v146, v241);
        v147 = &v241[v146];
        if (v48)
        {
          goto LABEL_155;
        }

        v93 = [objc_allocWithZone(NSNumber) initWithLongLong:v147];
        sub_100007BAC(v247);
        v4 = v239;
LABEL_103:
        objc_opt_self();
        v148 = swift_dynamicCastObjCClass();
        if (v148)
        {
          v149 = v148;
          v150 = v93;
          v151 = String.init(_:)(v149);
          v152 = sub_1000DF96C();
          swift_beginAccess();
          v245 = v151;
          *&v246[8] = &type metadata for String;
          *&v246[16] = v152;
          v246[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v244 = v4[14];
          v154 = v244;
          v4[14] = 0x8000000000000000;
          v155 = sub_100771D58(v242, v243);
          v157 = v154[2];
          v158 = (v156 & 1) == 0;
          v48 = __OFADD__(v157, v158);
          v159 = v157 + v158;
          if (v48)
          {
            goto LABEL_152;
          }

          v160 = v156;
          if (v154[3] >= v159)
          {
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
            if ((v160 & 1) != (v161 & 1))
            {
              goto LABEL_165;
            }
          }

          v4 = v239;
          a1 = v238;
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
            v185 = *&v246[9];
            v186 = *v246;
            *v184 = v245;
            v184[1] = v186;
            *(&v184[1]._object + 1) = v185;
            v187 = v181[2];
            v48 = __OFADD__(v187, 1);
            v188 = v187 + 1;
            if (v48)
            {
              goto LABEL_154;
            }

            v181[2] = v188;
          }

          v189 = v240;
          v4[14] = v181;
          swift_endAccess();
          sub_101010148(v241, v189);

          goto LABEL_121;
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
            *&v246[8] = &type metadata for Int;
            *&v246[16] = v168;
            v246[24] = 2;
            v169 = swift_isUniquelyReferenced_nonNull_native();
            v170 = v4;
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
              goto LABEL_158;
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
                goto LABEL_165;
              }
            }

            v4 = v239;
            if ((v178 & 1) == 0)
            {
              v207 = v244;
              v244[(v173 >> 6) + 8] |= 1 << v173;
              v208 = (v207[6] + 16 * v173);
              v209 = v243;
              *v208 = v242;
              v208[1] = v209;
              v210 = (v207[7] + 48 * v173);
              v211 = *&v246[9];
              v212 = *v246;
              *v210 = v245;
              v210[1] = v212;
              *(&v210[1]._object + 1) = v211;
              v213 = v207[2];
              v48 = __OFADD__(v213, 1);
              v214 = v213 + 1;
              if (v48)
              {
                goto LABEL_162;
              }

              goto LABEL_142;
            }

LABEL_140:
            v215 = v173;

            v207 = v244;
            sub_10118B568(&v245, v244[7] + 48 * v215);
          }

          else
          {
            v196 = sub_1000DFA84();
            swift_beginAccess();
            *&v245._countAndFlagsBits = v165;
            *&v246[8] = &type metadata for Double;
            *&v246[16] = v196;
            v246[24] = 3;
            v197 = swift_isUniquelyReferenced_nonNull_native();
            v198 = v4;
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
              goto LABEL_160;
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
                goto LABEL_165;
              }
            }

            v4 = v239;
            if (v205)
            {
              goto LABEL_140;
            }

            v207 = v244;
            v244[(v173 >> 6) + 8] |= 1 << v173;
            v216 = (v207[6] + 16 * v173);
            v217 = v243;
            *v216 = v242;
            v216[1] = v217;
            v218 = (v207[7] + 48 * v173);
            v219 = *&v246[9];
            v220 = *v246;
            *v218 = v245;
            v218[1] = v220;
            *(&v218[1]._object + 1) = v219;
            v221 = v207[2];
            v48 = __OFADD__(v221, 1);
            v214 = v221 + 1;
            if (v48)
            {
              goto LABEL_163;
            }

LABEL_142:
            v207[2] = v214;
          }

          v222 = v240;
          v4[14] = v207;
          swift_endAccess();

          sub_101010148(v241, v222);
          goto LABEL_144;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v190 = type metadata accessor for Logger();
        sub_1000076D4(v190, qword_10177C6D0);
        v191 = v93;
        v150 = Logger.logObject.getter();
        v192 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v150, v192))
        {

          sub_101010148(v241, v240);
LABEL_121:

          goto LABEL_144;
        }

        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *v193 = v236;
        *(v193 + 4) = v191;
        *v194 = v191;
        v195 = v191;
        _os_log_impl(&_mh_execute_header, v150, v192, "Unsupported value type: %@!", v193, 0xCu);
        sub_10000B3A8(v194, &qword_10169BB30, &unk_10138B3C0);
        v4 = v239;

        a1 = v238;

        sub_101010148(v241, v240);
LABEL_144:
        sub_10118B5A0(&v250);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v241];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v241];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v241 & 1).super.super.isa;
        }

        else
        {
          isa = v241;
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
          v40 = v4;
          v41 = sub_1000DF96C();
          swift_beginAccess();
          v250 = v39;
          *&v251[8] = &type metadata for String;
          *&v251[16] = v41;
          v251[24] = 1;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v247[0] = v40[14];
          v43 = v247[0];
          v40[14] = 0x8000000000000000;
          v44 = sub_100771D58(v242, v243);
          v46 = *(v43 + 16);
          v47 = (v45 & 1) == 0;
          v48 = __OFADD__(v46, v47);
          v49 = v46 + v47;
          if (v48)
          {
            __break(1u);
            goto LABEL_150;
          }

          v50 = v45;
          if (*(v43 + 24) >= v49)
          {
            a1 = v238;
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
            a1 = v238;
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_165;
            }
          }

          v4 = v239;
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

            v71[2] = v78;
          }

          v4[14] = v71;
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
              v60 = v4;
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
                goto LABEL_153;
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
                  goto LABEL_165;
                }
              }

              v4 = v239;
              if (v68)
              {
                goto LABEL_76;
              }

              v109 = v247[0];
              *(v247[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v110 = (v109[6] + 16 * v63);
              v111 = v243;
              *v110 = v242;
              v110[1] = v111;
              v112 = (v109[7] + 48 * v63);
              v113 = *&v251[9];
              v114 = *v251;
              *v112 = v250;
              v112[1] = v114;
              *(&v112[1]._object + 1) = v113;
              v115 = v109[2];
              v48 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v48)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v98 = sub_1000DFA84();
              swift_beginAccess();
              *&v250._countAndFlagsBits = v55;
              *&v251[8] = &type metadata for Double;
              *&v251[16] = v98;
              v251[24] = 3;
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v100 = v4;
              v101 = v99;
              v247[0] = v100[14];
              v102 = v247[0];
              v100[14] = 0x8000000000000000;
              v63 = sub_100771D58(v242, v243);
              v104 = *(v102 + 16);
              v105 = (v103 & 1) == 0;
              v48 = __OFADD__(v104, v105);
              v106 = v104 + v105;
              if (v48)
              {
                goto LABEL_156;
              }

              v107 = v103;
              if (*(v102 + 24) >= v106)
              {
                if ((v101 & 1) == 0)
                {
                  v226 = v63;
                  sub_1010050E8();
                  v63 = v226;
                }
              }

              else
              {
                sub_100FE65C4(v106, v101);
                v63 = sub_100771D58(v242, v243);
                if ((v107 & 1) != (v108 & 1))
                {
                  goto LABEL_165;
                }
              }

              v4 = v239;
              if (v107)
              {
LABEL_76:
                v117 = v63;

                v109 = v247[0];
                sub_10118B568(&v250, *(v247[0] + 56) + 48 * v117);
                goto LABEL_79;
              }

              v109 = v247[0];
              *(v247[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
              v118 = (v109[6] + 16 * v63);
              v119 = v243;
              *v118 = v242;
              v118[1] = v119;
              v120 = (v109[7] + 48 * v63);
              v121 = *&v251[9];
              v122 = *v251;
              *v120 = v250;
              v120[1] = v122;
              *(&v120[1]._object + 1) = v121;
              v123 = v109[2];
              v48 = __OFADD__(v123, 1);
              v116 = v123 + 1;
              if (v48)
              {
                goto LABEL_159;
              }
            }

            v109[2] = v116;
LABEL_79:
            v124 = v240;
            v4[14] = v109;
            swift_endAccess();

            sub_101010148(v241, v124);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v86 = type metadata accessor for Logger();
            sub_1000076D4(v86, qword_10177C6D0);
            v87 = v36;
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              *v90 = v236;
              *(v90 + 4) = v87;
              *v91 = v87;
              v92 = v87;
              _os_log_impl(&_mh_execute_header, v88, v89, "Unsupported value type: %@!", v90, 0xCu);
              sub_10000B3A8(v91, &qword_10169BB30, &unk_10138B3C0);
              v4 = v239;

              a1 = v238;

              goto LABEL_46;
            }

            sub_101010148(v241, v240);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v3 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
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

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C6D0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v250._countAndFlagsBits = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000136BC(v6, object, &v250._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v9, v10, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }
}

uint64_t sub_10115D880(uint64_t a1, char a2)
{
  *(v2 + 58) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10115D8A8, a1, 0);
}

uint64_t sub_10115D8A8()
{
  v14 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 728) = v11;
    *v11 = v0;
    v11[1] = sub_10115DAF4;
    v12 = *(v0 + 58);

    return sub_100EC711C(v12);
  }
}

uint64_t sub_10115DAF4(uint64_t a1)
{
  v2 = *(*v1 + 720);
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_10118F50C, v2, 0);
}

uint64_t sub_10115DC0C(uint64_t a1, char a2, char a3)
{
  *(v3 + 59) = a3;
  *(v3 + 58) = a2;
  *(v3 + 720) = a1;
  return _swift_task_switch(sub_10115DC38, a1, 0);
}

uint64_t sub_10115DC38()
{
  v15 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 728) = v11;
    *v11 = v0;
    v11[1] = sub_10115DAF4;
    v12 = *(v0 + 59);
    v13 = *(v0 + 58);

    return sub_100EC6BE4(v13, v12);
  }
}

uint64_t sub_10115DEA8()
{
  v13 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v12);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[91] = v11;
    *v11 = v0;
    v11[1] = sub_10115E0EC;

    return sub_100EC512C();
  }
}

uint64_t sub_10115E0EC(uint64_t a1)
{
  v2 = *(*v1 + 720);
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_10115E204, v2, 0);
}

unint64_t sub_10115E204()
{
  v93 = (v0 + 304);
  v94 = (v0 + 256);
  v1 = (v0 + 352);
  v90 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 736);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v91 = (v0 + 448);
  v92 = *(v0 + 736);
  v7 = -1 << *(v92 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v98 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v92 + 48) + 16 * v14);
      v16 = v15[1];
      v99 = *v15;
      sub_101010158(*(v92 + 56) + 48 * v14, v0 + 16);
      v95 = *(v0 + 16);
      v97 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v83 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v95;
      *(v0 + 80) = v97;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v98 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v94 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v98 + 112);
      *&v100 = v7;
      *(v98 + 112) = 0x8000000000000000;
      result = sub_100771D58(v99, v16);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
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
        return result;
      }

      v40 = v35;
      if (*(v7 + 24) < v39)
      {
        sub_100FE65C4(v39, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v99, v16);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v40)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v75 = result;
      sub_1010050E8();
      result = v75;
      v1 = (v0 + 352);
      if (v40)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v93, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v42 = (*(v7 + 48) + 16 * result);
      *v42 = v99;
      v42[1] = v16;
      v43 = (*(v7 + 56) + 48 * result);
      v44 = *(v0 + 329);
      v45 = *(v0 + 320);
      *v43 = *v93;
      v43[1] = v45;
      *(v43 + 25) = v44;
      v46 = *(v7 + 16);
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v47;
LABEL_7:
      *(v98 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v94);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_100771D58(v99, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v48 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v48;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v49 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v50 = *(v0 + 608);
      sub_1000035D0((v0 + 584), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v53 = v49 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v52;
      v1 = (v0 + 352);
      *(v0 + 352) = v53;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v90);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v89 = v22;
    sub_10000A748(v90, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_1000035D0((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v96 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v85 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v85, v23);

        if (v84)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v86)
        {
          v87 = v28;
          if (v54 <= 64)
          {
            swift_getAssociatedTypeWitness();
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v57 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v96 + 8))(v57, v23);
            v28 = v87;

            if (v58)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v55 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v56 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v96 + 8))(v55, v23);
          v28 = v87;

          if (v56)
          {
            goto LABEL_92;
          }
        }

        else if (v54 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v59 = v28;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v61 >= 64)
      {
LABEL_53:
        v62 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v62, v23);
        v28 = v88;

        if (v63)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v59;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v64 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v96 + 8))(v28, v23);

    v38 = __OFADD__(v64, v89);
    v65 = v64 + v89;
    if (v38)
    {
      goto LABEL_90;
    }

    v66 = sub_1000DF9C0();
    *(v0 + 352) = v65;
    *(v0 + 360) = v100;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v66;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v91);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v98 + 112);
    *&v100 = v7;
    *(v98 + 112) = 0x8000000000000000;
    result = sub_100771D58(v99, v16);
    v69 = *(v7 + 16);
    v70 = (v68 & 1) == 0;
    v38 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v38)
    {
      goto LABEL_88;
    }

    v72 = v68;
    if (*(v7 + 24) < v71)
    {
      sub_100FE65C4(v71, v67);
      result = sub_100771D58(v99, v16);
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v72)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v67)
    {
      goto LABEL_67;
    }

    v76 = result;
    sub_1010050E8();
    result = v76;
    v1 = (v0 + 352);
    if (v72)
    {
LABEL_68:
      v74 = result;

      sub_10118B568(v91, *(v7 + 56) + 48 * v74);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v77 = (*(v7 + 48) + 16 * result);
    *v77 = v99;
    v77[1] = v16;
    v78 = (*(v7 + 56) + 48 * result);
    v79 = *(v0 + 473);
    v80 = *(v0 + 464);
    *v78 = *v91;
    v78[1] = v80;
    *(v78 + 25) = v79;
    v81 = *(v7 + 16);
    v38 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v38)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v82;
LABEL_74:
    *(v98 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_10118B5A0(v2);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}

uint64_t sub_10115EEE0(uint64_t a1, char a2)
{
  *(v2 + 58) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_10115EF08, a1, 0);
}

uint64_t sub_10115EF08()
{
  v14 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 728) = v11;
    *v11 = v0;
    v11[1] = sub_10115DAF4;
    v12 = *(v0 + 58);

    return sub_100EC6FEC(v12);
  }
}

uint64_t sub_10115F154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[92] = a3;
  v3[91] = a2;
  v3[90] = a1;
  return _swift_task_switch(sub_10115F180, a1, 0);
}

uint64_t sub_10115F180()
{
  v15 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[93] = v11;
    *v11 = v0;
    v11[1] = sub_10115F3D0;
    v12 = v0[92];
    v13 = v0[91];

    return sub_100EC6E90(v13, v12);
  }
}

uint64_t sub_10115F3D0(uint64_t a1)
{
  v2 = *(*v1 + 720);
  *(*v1 + 752) = a1;

  return _swift_task_switch(sub_10118F510, v2, 0);
}

uint64_t sub_10115F508()
{
  v12 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v11);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_10115F720, 0, 0);
  }
}

uint64_t sub_10115F720()
{
  v1 = *(v0 + 720);
  *(v0 + 728) = sub_100907D24(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_10115F794, v1, 0);
}

unint64_t sub_10115F794()
{
  v93 = (v0 + 304);
  v94 = (v0 + 256);
  v1 = (v0 + 352);
  v90 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 728);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v91 = (v0 + 448);
  v92 = *(v0 + 728);
  v7 = -1 << *(v92 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v98 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v92 + 48) + 16 * v14);
      v16 = v15[1];
      v99 = *v15;
      sub_101010158(*(v92 + 56) + 48 * v14, v0 + 16);
      v95 = *(v0 + 16);
      v97 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v83 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v95;
      *(v0 + 80) = v97;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v98 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v94 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v98 + 112);
      *&v100 = v7;
      *(v98 + 112) = 0x8000000000000000;
      result = sub_100771D58(v99, v16);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
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
        return result;
      }

      v40 = v35;
      if (*(v7 + 24) < v39)
      {
        sub_100FE65C4(v39, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v99, v16);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v40)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v75 = result;
      sub_1010050E8();
      result = v75;
      v1 = (v0 + 352);
      if (v40)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v93, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v42 = (*(v7 + 48) + 16 * result);
      *v42 = v99;
      v42[1] = v16;
      v43 = (*(v7 + 56) + 48 * result);
      v44 = *(v0 + 329);
      v45 = *(v0 + 320);
      *v43 = *v93;
      v43[1] = v45;
      *(v43 + 25) = v44;
      v46 = *(v7 + 16);
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v47;
LABEL_7:
      *(v98 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v94);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_100771D58(v99, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v48 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v48;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v49 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v50 = *(v0 + 608);
      sub_1000035D0((v0 + 584), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v53 = v49 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v52;
      v1 = (v0 + 352);
      *(v0 + 352) = v53;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v90);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v89 = v22;
    sub_10000A748(v90, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_1000035D0((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v96 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v85 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v85, v23);

        if (v84)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v86)
        {
          v87 = v28;
          if (v54 <= 64)
          {
            swift_getAssociatedTypeWitness();
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v57 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v96 + 8))(v57, v23);
            v28 = v87;

            if (v58)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v55 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v56 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v96 + 8))(v55, v23);
          v28 = v87;

          if (v56)
          {
            goto LABEL_92;
          }
        }

        else if (v54 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v59 = v28;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v61 >= 64)
      {
LABEL_53:
        v62 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v62, v23);
        v28 = v88;

        if (v63)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v59;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v64 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v96 + 8))(v28, v23);

    v38 = __OFADD__(v64, v89);
    v65 = v64 + v89;
    if (v38)
    {
      goto LABEL_90;
    }

    v66 = sub_1000DF9C0();
    *(v0 + 352) = v65;
    *(v0 + 360) = v100;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v66;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v91);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v98 + 112);
    *&v100 = v7;
    *(v98 + 112) = 0x8000000000000000;
    result = sub_100771D58(v99, v16);
    v69 = *(v7 + 16);
    v70 = (v68 & 1) == 0;
    v38 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v38)
    {
      goto LABEL_88;
    }

    v72 = v68;
    if (*(v7 + 24) < v71)
    {
      sub_100FE65C4(v71, v67);
      result = sub_100771D58(v99, v16);
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v72)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v67)
    {
      goto LABEL_67;
    }

    v76 = result;
    sub_1010050E8();
    result = v76;
    v1 = (v0 + 352);
    if (v72)
    {
LABEL_68:
      v74 = result;

      sub_10118B568(v91, *(v7 + 56) + 48 * v74);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v77 = (*(v7 + 48) + 16 * result);
    *v77 = v99;
    v77[1] = v16;
    v78 = (*(v7 + 56) + 48 * result);
    v79 = *(v0 + 473);
    v80 = *(v0 + 464);
    *v78 = *v91;
    v78[1] = v80;
    *(v78 + 25) = v79;
    v81 = *(v7 + 16);
    v38 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v38)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v82;
LABEL_74:
    *(v98 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_10118B5A0(v2);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}

uint64_t sub_101160470(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 59) = a7;
  *(v7 + 752) = a6;
  *(v7 + 744) = a5;
  *(v7 + 736) = a4;
  *(v7 + 728) = a3;
  *(v7 + 58) = a2;
  *(v7 + 720) = a1;
  return _swift_task_switch(sub_1011604AC, a1, 0);
}

uint64_t sub_1011604AC()
{
  v12 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v11);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_1011606C4, 0, 0);
  }
}

uint64_t sub_1011606C4()
{
  v1 = *(v0 + 59);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 58);
  v7 = *(v0 + 720);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1013917A0;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x800000010137D010;
  *(v8 + 48) = v6;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0x6E774F6C61746F74;
  *(v8 + 104) = 0xEF736D6574496465;
  *(v8 + 112) = v5;
  *(v8 + 153) = 1;
  *(v8 + 160) = 0xD000000000000013;
  *(v8 + 168) = 0x800000010137D030;
  *(v8 + 176) = v4;
  *(v8 + 217) = 1;
  *(v8 + 224) = 0xD000000000000012;
  *(v8 + 232) = 0x800000010137D050;
  *(v8 + 240) = v3;
  *(v8 + 281) = 1;
  *(v8 + 288) = 0xD000000000000016;
  *(v8 + 296) = 0x800000010137D070;
  *(v8 + 304) = v2;
  *(v8 + 345) = 1;
  *(v8 + 352) = 0x664F534654557369;
  *(v8 + 360) = 0xEB00000000726566;
  *(v8 + 368) = v1;
  *(v8 + 408) = 0;
  *(v0 + 760) = sub_100907D24(v8);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_1011608B8, v7, 0);
}

unint64_t sub_1011608B8()
{
  v93 = (v0 + 304);
  v94 = (v0 + 256);
  v1 = (v0 + 352);
  v90 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 760);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v91 = (v0 + 448);
  v92 = *(v0 + 760);
  v7 = -1 << *(v92 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v98 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v92 + 48) + 16 * v14);
      v16 = v15[1];
      v99 = *v15;
      sub_101010158(*(v92 + 56) + 48 * v14, v0 + 16);
      v95 = *(v0 + 16);
      v97 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v83 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v95;
      *(v0 + 80) = v97;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v98 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v94 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v98 + 112);
      *&v100 = v7;
      *(v98 + 112) = 0x8000000000000000;
      result = sub_100771D58(v99, v16);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
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
        return result;
      }

      v40 = v35;
      if (*(v7 + 24) < v39)
      {
        sub_100FE65C4(v39, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v99, v16);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v40)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v75 = result;
      sub_1010050E8();
      result = v75;
      v1 = (v0 + 352);
      if (v40)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v93, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v42 = (*(v7 + 48) + 16 * result);
      *v42 = v99;
      v42[1] = v16;
      v43 = (*(v7 + 56) + 48 * result);
      v44 = *(v0 + 329);
      v45 = *(v0 + 320);
      *v43 = *v93;
      v43[1] = v45;
      *(v43 + 25) = v44;
      v46 = *(v7 + 16);
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v47;
LABEL_7:
      *(v98 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v94);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_100771D58(v99, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v48 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v48;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v49 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v50 = *(v0 + 608);
      sub_1000035D0((v0 + 584), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v53 = v49 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v52;
      v1 = (v0 + 352);
      *(v0 + 352) = v53;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v90);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v89 = v22;
    sub_10000A748(v90, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_1000035D0((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v96 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v85 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v85, v23);

        if (v84)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v86)
        {
          v87 = v28;
          if (v54 <= 64)
          {
            swift_getAssociatedTypeWitness();
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v57 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v96 + 8))(v57, v23);
            v28 = v87;

            if (v58)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v55 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v56 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v96 + 8))(v55, v23);
          v28 = v87;

          if (v56)
          {
            goto LABEL_92;
          }
        }

        else if (v54 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v59 = v28;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v61 >= 64)
      {
LABEL_53:
        v62 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v62, v23);
        v28 = v88;

        if (v63)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v59;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v64 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v96 + 8))(v28, v23);

    v38 = __OFADD__(v64, v89);
    v65 = v64 + v89;
    if (v38)
    {
      goto LABEL_90;
    }

    v66 = sub_1000DF9C0();
    *(v0 + 352) = v65;
    *(v0 + 360) = v100;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v66;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v91);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v98 + 112);
    *&v100 = v7;
    *(v98 + 112) = 0x8000000000000000;
    result = sub_100771D58(v99, v16);
    v69 = *(v7 + 16);
    v70 = (v68 & 1) == 0;
    v38 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v38)
    {
      goto LABEL_88;
    }

    v72 = v68;
    if (*(v7 + 24) < v71)
    {
      sub_100FE65C4(v71, v67);
      result = sub_100771D58(v99, v16);
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v72)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v67)
    {
      goto LABEL_67;
    }

    v76 = result;
    sub_1010050E8();
    result = v76;
    v1 = (v0 + 352);
    if (v72)
    {
LABEL_68:
      v74 = result;

      sub_10118B568(v91, *(v7 + 56) + 48 * v74);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v77 = (*(v7 + 48) + 16 * result);
    *v77 = v99;
    v77[1] = v16;
    v78 = (*(v7 + 56) + 48 * result);
    v79 = *(v0 + 473);
    v80 = *(v0 + 464);
    *v78 = *v91;
    v78[1] = v80;
    *(v78 + 25) = v79;
    v81 = *(v7 + 16);
    v38 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v38)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v82;
LABEL_74:
    *(v98 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_10118B5A0(v2);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}

uint64_t sub_101161594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[92] = a3;
  v3[91] = a2;
  v3[90] = a1;
  return _swift_task_switch(sub_1011615C0, a1, 0);
}

uint64_t sub_1011615C0()
{
  v15 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[93] = v11;
    *v11 = v0;
    v11[1] = sub_101161810;
    v12 = v0[92];
    v13 = v0[91];

    return sub_100EC6D34(v13, v12);
  }
}

uint64_t sub_101161810(uint64_t a1)
{
  v2 = *(*v1 + 720);
  *(*v1 + 752) = a1;

  return _swift_task_switch(sub_101161928, v2, 0);
}

unint64_t sub_101161928()
{
  v93 = (v0 + 304);
  v94 = (v0 + 256);
  v1 = (v0 + 352);
  v90 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 752);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v91 = (v0 + 448);
  v92 = *(v0 + 752);
  v7 = -1 << *(v92 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v98 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v92 + 48) + 16 * v14);
      v16 = v15[1];
      v99 = *v15;
      sub_101010158(*(v92 + 56) + 48 * v14, v0 + 16);
      v95 = *(v0 + 16);
      v97 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v83 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v95;
      *(v0 + 80) = v97;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v98 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v94 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v98 + 112);
      *&v100 = v7;
      *(v98 + 112) = 0x8000000000000000;
      result = sub_100771D58(v99, v16);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
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
        return result;
      }

      v40 = v35;
      if (*(v7 + 24) < v39)
      {
        sub_100FE65C4(v39, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v99, v16);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v40)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v75 = result;
      sub_1010050E8();
      result = v75;
      v1 = (v0 + 352);
      if (v40)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v93, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v42 = (*(v7 + 48) + 16 * result);
      *v42 = v99;
      v42[1] = v16;
      v43 = (*(v7 + 56) + 48 * result);
      v44 = *(v0 + 329);
      v45 = *(v0 + 320);
      *v43 = *v93;
      v43[1] = v45;
      *(v43 + 25) = v44;
      v46 = *(v7 + 16);
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v47;
LABEL_7:
      *(v98 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v94);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_100771D58(v99, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v48 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v48;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v49 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v50 = *(v0 + 608);
      sub_1000035D0((v0 + 584), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v53 = v49 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v52;
      v1 = (v0 + 352);
      *(v0 + 352) = v53;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v90);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v89 = v22;
    sub_10000A748(v90, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_1000035D0((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v96 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v85 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v85, v23);

        if (v84)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v86)
        {
          v87 = v28;
          if (v54 <= 64)
          {
            swift_getAssociatedTypeWitness();
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v57 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v96 + 8))(v57, v23);
            v28 = v87;

            if (v58)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v55 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v56 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v96 + 8))(v55, v23);
          v28 = v87;

          if (v56)
          {
            goto LABEL_92;
          }
        }

        else if (v54 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v59 = v28;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v61 >= 64)
      {
LABEL_53:
        v62 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v62, v23);
        v28 = v88;

        if (v63)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v59;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v64 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v96 + 8))(v28, v23);

    v38 = __OFADD__(v64, v89);
    v65 = v64 + v89;
    if (v38)
    {
      goto LABEL_90;
    }

    v66 = sub_1000DF9C0();
    *(v0 + 352) = v65;
    *(v0 + 360) = v100;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v66;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v91);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v98 + 112);
    *&v100 = v7;
    *(v98 + 112) = 0x8000000000000000;
    result = sub_100771D58(v99, v16);
    v69 = *(v7 + 16);
    v70 = (v68 & 1) == 0;
    v38 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v38)
    {
      goto LABEL_88;
    }

    v72 = v68;
    if (*(v7 + 24) < v71)
    {
      sub_100FE65C4(v71, v67);
      result = sub_100771D58(v99, v16);
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v72)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v67)
    {
      goto LABEL_67;
    }

    v76 = result;
    sub_1010050E8();
    result = v76;
    v1 = (v0 + 352);
    if (v72)
    {
LABEL_68:
      v74 = result;

      sub_10118B568(v91, *(v7 + 56) + 48 * v74);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v77 = (*(v7 + 48) + 16 * result);
    *v77 = v99;
    v77[1] = v16;
    v78 = (*(v7 + 56) + 48 * result);
    v79 = *(v0 + 473);
    v80 = *(v0 + 464);
    *v78 = *v91;
    v78[1] = v80;
    *(v78 + 25) = v79;
    v81 = *(v7 + 16);
    v38 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v38)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v82;
LABEL_74:
    *(v98 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_10118B5A0(v2);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}

uint64_t sub_101162604(uint64_t a1, uint64_t a2)
{
  v3[92] = v2;
  v3[91] = a2;
  v3[90] = a1;
  return _swift_task_switch(sub_10116262C, v2, 0);
}

uint64_t sub_10116262C()
{
  v14 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[92];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = (v0[90] + *v0[90]);
    v11 = swift_task_alloc();
    v0[93] = v11;
    *v11 = v0;
    v11[1] = sub_1011628D0;

    return v12();
  }
}

uint64_t sub_1011628D0(uint64_t a1)
{
  v2 = *(*v1 + 736);
  *(*v1 + 752) = a1;

  return _swift_task_switch(sub_1011629E8, v2, 0);
}

unint64_t sub_1011629E8()
{
  v92 = (v0 + 304);
  v93 = (v0 + 256);
  v1 = (v0 + 352);
  v89 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 752);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v90 = (v0 + 448);
  v91 = *(v0 + 752);
  v7 = -1 << *(v91 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v97 = *(v0 + 736);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v91 + 48) + 16 * v14);
      v16 = v15[1];
      v98 = *v15;
      sub_101010158(*(v91 + 56) + 48 * v14, v0 + 16);
      v94 = *(v0 + 16);
      v96 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v85 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v94;
      *(v0 + 80) = v96;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v97 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_24:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v93 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v93, v92);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v97 + 112);
      *&v99 = v7;
      *(v97 + 112) = 0x8000000000000000;
      result = sub_100771D58(v98, v16);
      v37 = *(v7 + 16);
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
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
        return result;
      }

      v41 = v36;
      if (*(v7 + 24) < v40)
      {
        sub_100FE65C4(v40, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v98, v16);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_80;
        }

LABEL_35:
        v1 = (v0 + 352);
        if (v41)
        {
          goto LABEL_6;
        }

        goto LABEL_36;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v77 = result;
      sub_1010050E8();
      result = v77;
      v1 = (v0 + 352);
      if (v41)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v92, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_36:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v43 = (*(v7 + 48) + 16 * result);
      *v43 = v98;
      v43[1] = v16;
      v44 = (*(v7 + 56) + 48 * result);
      v45 = *(v0 + 329);
      v46 = *(v0 + 320);
      *v44 = *v92;
      v44[1] = v46;
      *(v44 + 25) = v45;
      v47 = *(v7 + 16);
      v39 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v39)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v48;
LABEL_7:
      *(v97 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v93);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_100771D58(v98, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_24;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v49 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v49;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v50 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v51 = *(v0 + 608);
      sub_1000035D0((v0 + 584), v51);
      v52 = *(v51 - 8);
      swift_task_alloc();
      (*(v52 + 16))();
      v53 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v54 = v50 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v53;
      v1 = (v0 + 352);
      *(v0 + 352) = v54;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v89);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v86 = v22;
    sub_10000A748(v89, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_1000035D0((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v95 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v87 = v28;
        v29 = swift_task_alloc();
        sub_1000DF9C0();
LABEL_44:
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v58 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v95 + 8))(v29, v23);
        v28 = v87;

        if (v58)
        {
          goto LABEL_92;
        }

        goto LABEL_50;
      }

      v55 = v28;
      v56 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v87 = v55;
      v57 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v56)
      {
        if (v57 <= 64)
        {
          swift_getAssociatedTypeWitness();
          swift_task_alloc();
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v59 = swift_task_alloc();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v60 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v95 + 8))(v59, v23);
          v28 = v87;

          if (v60)
          {
            goto LABEL_92;
          }

LABEL_49:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_50;
        }

        v29 = swift_task_alloc();
        sub_1000DF9C0();
        goto LABEL_44;
      }

      v28 = v55;
      if (v57 < 64)
      {
        goto LABEL_49;
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v61 = v28;
      v62 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v61;
      v63 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v62)
      {
        if (v63 >= 65)
        {
          goto LABEL_53;
        }
      }

      else if (v63 >= 64)
      {
LABEL_53:
        v64 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v65 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v95 + 8))(v64, v23);
        v28 = v88;

        if (v65)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v61;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v66 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v95 + 8))(v28, v23);

    v39 = __OFADD__(v66, v86);
    v67 = v66 + v86;
    if (v39)
    {
      goto LABEL_90;
    }

    v68 = sub_1000DF9C0();
    *(v0 + 352) = v67;
    *(v0 + 360) = v99;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v68;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v90);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v97 + 112);
    *&v99 = v7;
    *(v97 + 112) = 0x8000000000000000;
    result = sub_100771D58(v98, v16);
    v71 = *(v7 + 16);
    v72 = (v70 & 1) == 0;
    v39 = __OFADD__(v71, v72);
    v73 = v71 + v72;
    if (v39)
    {
      goto LABEL_88;
    }

    v74 = v70;
    if (*(v7 + 24) < v73)
    {
      sub_100FE65C4(v73, v69);
      result = sub_100771D58(v98, v16);
      if ((v74 & 1) != (v75 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v74)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v69)
    {
      goto LABEL_67;
    }

    v78 = result;
    sub_1010050E8();
    result = v78;
    v1 = (v0 + 352);
    if (v74)
    {
LABEL_68:
      v76 = result;

      sub_10118B568(v90, *(v7 + 56) + 48 * v76);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v79 = (*(v7 + 48) + 16 * result);
    *v79 = v98;
    v79[1] = v16;
    v80 = (*(v7 + 56) + 48 * result);
    v81 = *(v0 + 473);
    v82 = *(v0 + 464);
    *v80 = *v90;
    v80[1] = v82;
    *(v80 + 25) = v81;
    v83 = *(v7 + 16);
    v39 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v39)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v84;
LABEL_74:
    *(v97 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_10118B5A0(v2);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v85 = *(v0 + 8);
LABEL_77:

  return v85();
}

void *sub_101163670()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v55 = v51 - v7;
  v8 = __chkstk_darwin(v6);
  v57 = v51 - v9;
  __chkstk_darwin(v8);
  v11 = v51 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v56 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v51 - v16;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = [objc_allocWithZone(NSDate) init];
  [v19 timeIntervalSince1970];
  v21 = v20;

  *(v18 + 56) = &type metadata for Double;
  *(v18 + 64) = &protocol witness table for Double;
  *(v18 + 32) = v21;
  v22 = String.init(format:_:)();
  v24 = v23;
  v25 = sub_1000DF96C();
  *&v60 = v22;
  *(&v60 + 1) = v24;
  v61 = &type metadata for String;
  v62 = v25;
  v63 = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = _swiftEmptyDictionarySingleton;
  sub_100FFC070(&v60, 0x6D695468636F7065, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v27 = v59;
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  LOBYTE(v60) = v60 == 1;
  v63 = 0;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v27;
  sub_100FFC070(&v60, 0x69766544654D7369, 0xEA00000000006563, v28);
  v29 = v59;
  v30 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000D2A70(v1 + v30, v11, &qword_101696CA8, &qword_10138B5E0);
  v31 = *(v13 + 48);
  if (v31(v11, 1, v12) == 1)
  {
    sub_10000B3A8(v11, &qword_101696CA8, &qword_10138B5E0);
    return v29;
  }

  v52 = v29;
  v53 = v17;
  v54 = v5;
  v32 = *(v13 + 32);
  v51[1] = v13 + 32;
  v51[0] = v32;
  v32(v17, v11, v12);
  v33 = v12;
  v34 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime;
  swift_beginAccess();
  v35 = v57;
  sub_1000D2A70(v1 + v34, v57, &qword_101696CA8, &qword_10138B5E0);
  v36 = v13;
  v37 = v31(v35, 1, v33);
  sub_10000B3A8(v35, &qword_101696CA8, &qword_10138B5E0);
  if (v37 == 1)
  {
    v38 = v55;
    static DispatchTime.now()();
    (*(v36 + 56))(v38, 0, 1, v33);
    swift_beginAccess();
    sub_1000DFA14(v38, v1 + v34);
    swift_endAccess();
  }

  v39 = v54;
  sub_1000D2A70(v1 + v34, v54, &qword_101696CA8, &qword_10138B5E0);
  v40 = v31(v39, 1, v33);
  v41 = v33;
  if (v40 == 1)
  {
    (*(v36 + 8))(v53, v33);
    sub_10000B3A8(v39, &qword_101696CA8, &qword_10138B5E0);
    return v52;
  }

  v42 = v56;
  (v51[0])(v56, v39, v33);
  v43 = DispatchTime.uptimeNanoseconds.getter();
  v44 = v53;
  result = DispatchTime.uptimeNanoseconds.getter();
  v46 = v52;
  if (v43 >= result)
  {
    v47 = (v43 - result) / 1000000000.0;
    v48 = sub_1000DFA84();
    *&v60 = v47;
    v61 = &type metadata for Double;
    v62 = v48;
    v63 = 3;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v46;
    sub_100FFC070(&v60, 0x6E6F697461727564, 0xE800000000000000, v49);
    v50 = *(v36 + 8);
    v50(v42, v41);
    v50(v44, v41);
    return v58;
  }

  __break(1u);
  return result;
}

uint64_t sub_101163C90()
{

  v1 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime, &qword_101696CA8, &qword_10138B5E0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime, &qword_101696CA8, &qword_10138B5E0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_101163D88(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_101163E78(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_101163E78(uint64_t a1)
{
  if (!qword_1016C93A0)
  {
    type metadata accessor for DispatchTime();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016C93A0);
    }
  }
}

uint64_t sub_101163ED0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C6D0);
  sub_1000076D4(v0, qword_10177C6D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_101163F50()
{
  result = sub_101129930(_swiftEmptyArrayStorage);
  qword_10177C6E8 = result;
  return result;
}

uint64_t sub_101163F78(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_101163F98, v1, 0);
}

uint64_t sub_101163F98()
{
  v17 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = 0x7365547265646E75;
  *(v0 + 48) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 104))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177C6D0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SPAnalytics not submitting analytics during unit tests.", v4, 2u);
LABEL_15:

LABEL_16:

    v13 = *(v0 + 8);

    return v13();
  }

  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 56);
  v6 = qword_10177C6E8;
  v7 = *(v5 + 120);
  *(v0 + 72) = v7;
  v8 = *(v5 + 128);
  *(v0 + 80) = v8;
  if (sub_10111EACC(v7, v8, v6))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C6D0);

    v2 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v2, v10))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000136BC(v7, v8, &v16);
    _os_log_impl(&_mh_execute_header, v2, v10, "AnalyticsPublisher not submitting disallowed analytics event %{public}s to CA.", v11, 0xCu);
    sub_100007BAC(v12);

    goto LABEL_15;
  }

  v15 = *(v0 + 56);

  return _swift_task_switch(sub_1011642E8, v15, 0);
}

uint64_t sub_1011642E8()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10116439C;
  v2 = *(v0 + 56);

  return sub_101169D7C(v2, v2);
}

uint64_t sub_10116439C()
{
  v2 = *v1;

  v3 = *(v2 + 56);
  if (v0)
  {

    v4 = sub_10118F508;
  }

  else
  {
    v4 = sub_1011644DC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1011644DC()
{
  v1 = v0[7];
  v2 = v0[8];
  swift_beginAccess();
  v0[12] = *(v1 + 112);

  return _swift_task_switch(sub_101164564, v2, 0);
}

uint64_t sub_101164564()
{
  v15 = v0;
  sub_10116AD10(v0[12]);

  if (qword_101695278 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C6D0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(v5, v4, &v14);
    *(v6 + 12) = 2080;
    sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
    v7 = Dictionary.description.getter();
    v9 = sub_1000136BC(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Analytics: %{public}s, %s.", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = String._bridgeToObjectiveC()();
  sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1011647FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10116489C, a4, 0);
}

uint64_t sub_10116489C(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[6];
  static DispatchTime.now()();
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v3, v2 + v5);
  swift_endAccess();

  v6 = v1[1];

  return v6();
}

uint64_t sub_101164980(int a1)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent;
  type metadata accessor for AnalyticsEvent(0);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v12 = *(v4 + 56);
  v12(&v11[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime], 1, 1, v3);
  v12(&v11[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v11 + 15) = 0xD000000000000027;
  *(v11 + 16) = 0x800000010137CE60;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v11;

  sub_10025EDD4(0, 0, v9, &unk_101409948, v14);

  *(v2 + v10) = v11;
  static DispatchTime.now()();
  v15 = *(v4 + 32);
  v15(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginVerifyPairing, v6, v3);
  static DispatchTime.now()();
  v15(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_endVerifyPairing, v6, v3);
  static DispatchTime.now()();
  v15(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginFinalize, v6, v3);
  static DispatchTime.now()();
  v15(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_endFinalize, v6, v3);
  static DispatchTime.now()();
  v15(v2 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginAck, v6, v3);
  type metadata accessor for Transaction();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v19;

  static Transaction.asyncTask(name:block:)();

  return v2;
}

uint64_t sub_101164D20(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101164D44, 0, 0);
}

uint64_t sub_101164D44()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_101164D70, v1, 0);
}

uint64_t sub_101164D70()
{
  sub_10114C918(*(v0 + 24), *(v0 + 32), 0x7645726961507369, 0xEB00000000746E65);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101164E08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_101164E28, 0, 0);
}

uint64_t sub_101164E28()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  v0[4] = v2;
  v3 = v1;

  return _swift_task_switch(sub_101164EA4, v2, 0);
}

uint64_t sub_101164EA4()
{
  v1 = *(v0 + 24);
  sub_10117F97C(*(v0 + 32), v1);

  v2 = *(v0 + 8);

  return v2();
}

id sub_101164F24(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000013;
  *(inited + 16) = xmmword_10138B360;
  *(inited + 40) = 0x8000000101356E70;
  result = [a1 systemVersion];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 48) = result;
  *(inited + 56) = 0;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x8000000101356E90;
  result = [a1 systemVersion];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *(inited + 80) = result;
  *(inited + 88) = 0;
  strcpy((inited + 96), "batteryLevel");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(a1, "batteryLevel")}];
  *(inited + 120) = 0;
  v8 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 isInternalBuild];

  if (v10)
  {
    v11 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v3 + 8))(v5, v2);
    v12 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v8;
    sub_100FFC418(v12, 0, 0x6544646572696170, 0xEE00444965636976, isUniquelyReferenced_nonNull_native);
    v8 = v18;
    v14 = [a1 serialNumber];
    if (v14)
    {
      v15 = v14;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v18 = v8;
      sub_100FFC418(v15, 0, 0xD000000000000018, 0x8000000101350650, v16);
      return v18;
    }
  }

  return v8;
}

uint64_t sub_101165260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_10116528C, 0, 0);
}

uint64_t sub_10116528C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 72) = v1;

  return _swift_task_switch(sub_10116532C, v1, 0);
}

uint64_t sub_10116532C()
{
  sub_10118138C(v0[9], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1011653DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000101356E70;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x8000000101356E90;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  v6 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (a4)
  {
    v7 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v7, 0, 0xD000000000000015, 0x800000010137CE00, isUniquelyReferenced_nonNull_native);
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 isInternalBuild];

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v11, 0, 0xD000000000000018, 0x8000000101350650, v12);
  }

  return v6;
}

uint64_t sub_1011655F4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_101165620, v1, 0);
}

uint64_t sub_101165620()
{
  sub_10114AED8(*(v0 + 24), &off_10160D3D8, qword_10160D3F8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011656A4(uint64_t a1)
{
  v1[8] = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for DispatchTime();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1011657A8, 0, 0);
}

uint64_t sub_1011657A8()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_1011657D4, v1, 0);
}

uint64_t sub_1011657D4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000D2A70(v1 + v3, v2, &qword_101696CA8, &qword_10138B5E0);

  return _swift_task_switch(sub_10116587C, 0, 0);
}

uint64_t sub_10116587C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_101696CA8, &qword_10138B5E0);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    (*(v2 + 32))(v0[13], v3, v1);

    return _swift_task_switch(sub_10116599C, v6, 0);
  }
}

uint64_t sub_10116599C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginVerifyPairing;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  return _swift_task_switch(sub_101165A50, 0, 0);
}

uint64_t sub_101165A50(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[10];
  v4 = v1[11];
  v5 = DispatchTime.uptimeNanoseconds.getter();
  v6 = *(v4 + 8);
  v1[15] = v6;
  v1[16] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = DispatchTime.uptimeNanoseconds.getter();
  if (v5 < v7)
  {
    __break(1u);
  }

  else
  {
    v8 = v1[14];
    v1[17] = v5 - v7;
    v7 = sub_101165B0C;
    v9 = 0;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_101165B0C()
{
  sub_10114E540(*(v0 + 112), *(v0 + 136));

  return _swift_task_switch(sub_101165BA0, 0, 0);
}

uint64_t sub_101165BA0()
{
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_101165C24()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x800000010137CE20;
  *(inited + 48) = Double._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
  return v1;
}

uint64_t sub_101165D2C(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101165D50, 0, 0);
}

uint64_t sub_101165D50()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_101165D7C, v1, 0);
}

uint64_t sub_101165D7C()
{
  sub_10114FF40(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101165E28(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101165E4C, 0, 0);
}

uint64_t sub_101165E4C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_101165E78, v1, 0);
}

uint64_t sub_101165E78()
{
  sub_101151A94(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101165F24(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101165F48, 0, 0);
}

uint64_t sub_101165F48()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_101165F74, v1, 0);
}

uint64_t sub_101165F74()
{
  sub_1011535E8(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101166020(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a3;
  v23[2] = a4;
  v7 = v4;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  static DispatchTime.now()();
  v15 = *a1;
  swift_beginAccess();
  (*(v9 + 40))(v7 + v15, v14, v8);
  swift_endAccess();
  v16 = *(v9 + 16);
  v16(v14, v7 + v15, v8);
  v17 = DispatchTime.uptimeNanoseconds.getter();
  v18 = *(v9 + 8);
  v18(v14, v8);
  v19 = *a2;
  swift_beginAccess();
  v16(v12, v7 + v19, v8);
  v20 = DispatchTime.uptimeNanoseconds.getter();
  result = (v18)(v12, v8);
  if (v17 < v20)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Transaction();
    v22 = swift_allocObject();
    *(v22 + 16) = v7;
    *(v22 + 24) = (v17 - v20) / 1000000000.0;

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_101166260(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101166284, 0, 0);
}

uint64_t sub_101166284()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_1011662B0, v1, 0);
}

uint64_t sub_1011662B0()
{
  sub_10115513C(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10116632C(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_101166350, 0, 0);
}

uint64_t sub_101166350()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_10116637C, v1, 0);
}

uint64_t sub_10116637C()
{
  sub_101156C90(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011663F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_101166424, 0, 0);
}

uint64_t sub_101166424()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_analyticsEvent);
  *(v0 + 56) = v1;

  swift_errorRetain();

  return _swift_task_switch(sub_1011664C0, v1, 0);
}

uint64_t sub_1011664C0()
{
  sub_101182DDC(*(v0 + 56), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 64) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100E2C6AC;
  v2 = *(v0 + 56);

  return sub_101163F78(v2);
}

void *sub_1011665B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v42 = v4;
  while (v7)
  {
    v13 = v9;
LABEL_11:
    v14 = (*(a1 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v7)))));
    v16 = *v14;
    v15 = v14[1];

    Duration.milliseconds.getter();
    v44.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_100771D58(v16, v15);
    v20 = _swiftEmptyDictionarySingleton[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v23 = v18;
    if (_swiftEmptyDictionarySingleton[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101007320();
      }
    }

    else
    {
      sub_100FEAC8C(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_100771D58(v16, v15);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_28;
      }

      v19 = v24;
    }

    v7 &= v7 - 1;
    if (v23)
    {
      v10 = _swiftEmptyDictionarySingleton[7] + 16 * v19;
      v11 = *v10;
      *v10 = v44;
      v12 = *(v10 + 8);
      *(v10 + 8) = 0;
      sub_101010148(v11, v12);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v19 >> 6) + 8] |= 1 << v19;
      v26 = (_swiftEmptyDictionarySingleton[6] + 16 * v19);
      *v26 = v16;
      v26[1] = v15;
      v27 = _swiftEmptyDictionarySingleton[7] + 16 * v19;
      *v27 = v44;
      *(v27 + 8) = 0;
      v28 = _swiftEmptyDictionarySingleton[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_27;
      }

      _swiftEmptyDictionarySingleton[2] = v30;
    }

    v9 = v13;
    v4 = v42;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (a2)
  {
    swift_getErrorValue();
    swift_errorRetain();
    Error.domain.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v31, 0, 0x6D6F44726F727265, 0xEB000000006E6961, v32);
    swift_getErrorValue();
    Error.code.getter();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(isa, 0, 0x646F43726F727265, 0xE900000000000065, v34);
  }

  if (a4)
  {
    v35 = String._bridgeToObjectiveC()();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFC418(v35, 0, 0x61546E6F69746361, 0xEB000000006E656BLL, v36);
  }

  v37 = Bool._bridgeToObjectiveC()().super.super.isa;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFC418(v37, 0, 0x6563637553736177, 0xEA00000000007373, v38);
  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_101166990()
{
  v1 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginVerifyPairing;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_endVerifyPairing, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginFinalize, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_endFinalize, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginAck, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_101166AC4(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
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

uint64_t sub_101166B80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101166BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_101166C08(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_101166C40(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 72) = a1;
  return _swift_task_switch(sub_101166C68, 0, 0);
}

uint64_t sub_101166C68()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000047;
  *(v1 + 16) = 0x800000010137CF40;

  return _swift_task_switch(sub_101166DC8, v1, 0);
}

uint64_t sub_101166DC8()
{
  sub_10118498C(*(v0 + 48), *(v0 + 72), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 56) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_101166EB8;
  v2 = *(v0 + 48);

  return sub_101163F78(v2);
}

uint64_t sub_101166EB8()
{

  return _swift_task_switch(sub_1008347FC, 0, 0);
}

unint64_t sub_101166FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  *(inited + 64) = 0x6E6F73616572;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  *(inited + 96) = 0x726F727265;
  *(inited + 104) = 0xE500000000000000;

  v6 = String._bridgeToObjectiveC()();

  *(inited + 112) = v6;
  *(inited + 120) = 0;
  v7 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_10116712C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 65) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a2;
  *(v5 + 64) = a1;
  return _swift_task_switch(sub_101167158, 0, 0);
}

uint64_t sub_101167158()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000042;
  *(v1 + 16) = 0x800000010137CEA0;

  return _swift_task_switch(sub_101167294, v1, 0);
}

uint64_t sub_101167294()
{
  sub_1011587E4(*(v0 + 40), *(v0 + 64), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 65) & 1);
  type metadata accessor for AnalyticsPublisher();
  *(v0 + 48) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_101167374;
  v2 = *(v0 + 40);

  return sub_101163F78(v2);
}

uint64_t sub_101167374()
{

  return _swift_task_switch(sub_100ACDEB4, 0, 0);
}

unint64_t sub_10116748C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1 & 1;
  *(inited + 56) = 1;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x800000010137CEF0;
  *(inited + 80) = a2;
  *(inited + 88) = 2;
  strcpy((inited + 96), "expiredRecords");
  *(inited + 111) = -18;
  *(inited + 112) = a3;
  *(inited + 120) = 2;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x800000010137CF10;
  if (a5)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  *(inited + 144) = v11;
  *(inited + 152) = 2;
  v12 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1011675EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10116760C, 0, 0);
}

uint64_t sub_10116760C()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000047;
  *(v1 + 16) = 0x800000010137CD30;

  return _swift_task_switch(sub_101167760, v1, 0);
}

uint64_t sub_101167760()
{
  sub_1011864A4(v0[4], v0[2], v0[3]);

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_10069D520;
  v2 = v0[4];

  return sub_101163F78(v2);
}

uint64_t sub_10116783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_101167860, 0, 0);
}

uint64_t sub_101167860()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000046;
  *(v1 + 16) = 0x800000010137CD90;

  return _swift_task_switch(sub_1011679C0, v1, 0);
}

uint64_t sub_1011679C0()
{
  sub_101188008(v0[6], v0[2], v0[3], v0[4], v0[5]);

  type metadata accessor for AnalyticsPublisher();
  v0[7] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100AA7D38;
  v2 = v0[6];

  return sub_101163F78(v2);
}

uint64_t sub_101167AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_101167AD0, 0, 0);
}

uint64_t sub_101167AD0()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000048;
  *(v1 + 16) = 0x800000010137D0D0;

  return _swift_task_switch(sub_101167C30, v1, 0);
}

uint64_t sub_101167C30()
{
  sub_101188008(v0[6], v0[2], v0[3], v0[4], v0[5]);

  type metadata accessor for AnalyticsPublisher();
  v0[7] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_101166EB8;
  v2 = v0[6];

  return sub_101163F78(v2);
}

unint64_t sub_101167D1C()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0x6E6F73616572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  *(inited + 64) = 0x726F727265;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_101167E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return _swift_task_switch(sub_101167E48, 0, 0);
}

uint64_t sub_101167E48()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 64) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD00000000000004BLL;
  *(v1 + 16) = 0x800000010137CC40;

  return _swift_task_switch(sub_101167FA8, v1, 0);
}

uint64_t sub_101167FA8()
{
  sub_101189A9C(v0[8], v0[2], v0[3], v0[4], v0[5]);

  type metadata accessor for AnalyticsPublisher();
  v0[9] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_101168098;
  v2 = v0[8];

  return sub_101163F78(v2);
}

uint64_t sub_101168098()
{

  return _swift_task_switch(sub_100D3B7CC, 0, 0);
}

unint64_t sub_1011681B0()
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010137CC90;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  *(inited + 64) = 0xD000000000000016;
  *(inited + 72) = 0x800000010137CCB0;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  *(inited + 96) = 0x65636E6174736964;
  *(inited + 104) = 0xE800000000000000;
  *(inited + 112) = Double._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  strcpy((inited + 128), "accuracyDiff");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = Double._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  v1 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_101168330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = a5;
  return _swift_task_switch(sub_101168358, 0, 0);
}

uint64_t sub_101168358(uint64_t (*a1)(), char *a2, uint64_t a3)
{
  v5 = *(v3 + 16) * 100.0;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  type metadata accessor for AnalyticsEvent(0);
  v6 = swift_allocObject();
  *(v3 + 56) = v6;
  swift_defaultActor_initialize();
  *(v6 + 112) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(*(v8 - 8) + 56);
  v9(v6 + v7, 1, 1, v8);
  v9(v6 + OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime, 1, 1, v8);
  *(v6 + 120) = 0xD000000000000038;
  *(v6 + 128) = 0x800000010137CCD0;

  a1 = sub_101168500;
  a2 = v6;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_101168500()
{
  sub_10118B624(*(v0 + 56), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), (*(v0 + 16) * 100.0));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 64) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1011685F4;
  v2 = *(v0 + 56);

  return sub_101163F78(v2);
}

uint64_t sub_1011685F4()
{

  return _swift_task_switch(sub_1004BCEC0, 0, 0);
}

unint64_t sub_10116870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  strcpy((inited + 32), "locationSource");
  *(inited + 47) = -18;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  strcpy((inited + 64), "requestCount");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = a3;
  *(inited + 88) = 2;
  *(inited + 96) = 0x746E756F4379656BLL;
  *(inited + 104) = 0xE800000000000000;
  *(inited + 112) = a4;
  *(inited + 120) = 2;
  strcpy((inited + 128), "keyRedundancy");
  *(inited + 142) = -4864;
  *(inited + 144) = a5;
  *(inited + 152) = 2;
  v9 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_10116887C(double a1)
{
  if (a1 <= 300.0)
  {
    return 300;
  }

  if (a1 <= 600.0)
  {
    return 600;
  }

  if (a1 <= 900.0)
  {
    return 900;
  }

  if (a1 <= 1800.0)
  {
    return 1800;
  }

  if (a1 <= 2700.0)
  {
    return 2700;
  }

  if (a1 <= 3600.0)
  {
    return 3600;
  }

  if (a1 <= 4500.0)
  {
    return 4500;
  }

  if (a1 <= 5400.0)
  {
    return 5400;
  }

  if (a1 <= 7200.0)
  {
    return 7200;
  }

  if (a1 <= 9000.0)
  {
    return 9000;
  }

  if (a1 <= 10800.0)
  {
    return 10800;
  }

  if (a1 <= 14400.0)
  {
    return 14400;
  }

  if (a1 <= 18000.0)
  {
    return 18000;
  }

  if (a1 <= 21600.0)
  {
    return 21600;
  }

  if (a1 <= 43200.0)
  {
    return 43200;
  }

  if (a1 <= 86400.0)
  {
    return 86400;
  }

  if (a1 <= 259200.0)
  {
    return 259200;
  }

  if (a1 > 604800.0)
  {
    return 640000;
  }

  return 604800;
}

uint64_t sub_101168A88(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 58) = a3;
  *(v3 + 728) = a2;
  *(v3 + 720) = a1;
  return _swift_task_switch(sub_101168AB4, a1, 0);
}

uint64_t sub_101168AB4()
{
  v15 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 736) = v11;
    *v11 = v0;
    v11[1] = sub_101168D04;
    v12 = *(v0 + 728);
    v13 = *(v0 + 58);

    return sub_1000DF31C(v12, v13);
  }
}

uint64_t sub_101168D04(uint64_t a1)
{
  v2 = *(*v1 + 720);
  *(*v1 + 744) = a1;

  return _swift_task_switch(sub_101168E1C, v2, 0);
}

unint64_t sub_101168E1C()
{
  v93 = (v0 + 304);
  v94 = (v0 + 256);
  v1 = (v0 + 352);
  v90 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 744);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v91 = (v0 + 448);
  v92 = *(v0 + 744);
  v7 = -1 << *(v92 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v98 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v92 + 48) + 16 * v14);
      v16 = v15[1];
      v99 = *v15;
      sub_101010158(*(v92 + 56) + 48 * v14, v0 + 16);
      v95 = *(v0 + 16);
      v97 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v83 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v95;
      *(v0 + 80) = v97;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v98 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v94 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v98 + 112);
      *&v100 = v7;
      *(v98 + 112) = 0x8000000000000000;
      result = sub_100771D58(v99, v16);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
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
        return result;
      }

      v40 = v35;
      if (*(v7 + 24) < v39)
      {
        sub_100FE65C4(v39, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v99, v16);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v40)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v75 = result;
      sub_1010050E8();
      result = v75;
      v1 = (v0 + 352);
      if (v40)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v93, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v42 = (*(v7 + 48) + 16 * result);
      *v42 = v99;
      v42[1] = v16;
      v43 = (*(v7 + 56) + 48 * result);
      v44 = *(v0 + 329);
      v45 = *(v0 + 320);
      *v43 = *v93;
      v43[1] = v45;
      *(v43 + 25) = v44;
      v46 = *(v7 + 16);
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v47;
LABEL_7:
      *(v98 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v94);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_100771D58(v99, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v48 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v48;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v49 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v50 = *(v0 + 608);
      sub_1000035D0((v0 + 584), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v53 = v49 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v52;
      v1 = (v0 + 352);
      *(v0 + 352) = v53;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v90);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v89 = v22;
    sub_10000A748(v90, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_1000035D0((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v96 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v85 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v85, v23);

        if (v84)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v86)
        {
          v87 = v28;
          if (v54 <= 64)
          {
            swift_getAssociatedTypeWitness();
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v57 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v96 + 8))(v57, v23);
            v28 = v87;

            if (v58)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v55 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v56 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v96 + 8))(v55, v23);
          v28 = v87;

          if (v56)
          {
            goto LABEL_92;
          }
        }

        else if (v54 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v59 = v28;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v61 >= 64)
      {
LABEL_53:
        v62 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v62, v23);
        v28 = v88;

        if (v63)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v59;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v64 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v96 + 8))(v28, v23);

    v38 = __OFADD__(v64, v89);
    v65 = v64 + v89;
    if (v38)
    {
      goto LABEL_90;
    }

    v66 = sub_1000DF9C0();
    *(v0 + 352) = v65;
    *(v0 + 360) = v100;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v66;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v91);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v98 + 112);
    *&v100 = v7;
    *(v98 + 112) = 0x8000000000000000;
    result = sub_100771D58(v99, v16);
    v69 = *(v7 + 16);
    v70 = (v68 & 1) == 0;
    v38 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v38)
    {
      goto LABEL_88;
    }

    v72 = v68;
    if (*(v7 + 24) < v71)
    {
      sub_100FE65C4(v71, v67);
      result = sub_100771D58(v99, v16);
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v72)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v67)
    {
      goto LABEL_67;
    }

    v76 = result;
    sub_1010050E8();
    result = v76;
    v1 = (v0 + 352);
    if (v72)
    {
LABEL_68:
      v74 = result;

      sub_10118B568(v91, *(v7 + 56) + 48 * v74);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v77 = (*(v7 + 48) + 16 * result);
    *v77 = v99;
    v77[1] = v16;
    v78 = (*(v7 + 56) + 48 * result);
    v79 = *(v0 + 473);
    v80 = *(v0 + 464);
    *v78 = *v91;
    v78[1] = v80;
    *(v78 + 25) = v79;
    v81 = *(v7 + 16);
    v38 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v38)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v82;
LABEL_74:
    *(v98 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_10118B5A0(v2);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}

uint64_t sub_101169B00(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 58) = a3;
  *(v3 + 728) = a2;
  *(v3 + 720) = a1;
  return _swift_task_switch(sub_101169B2C, a1, 0);
}

uint64_t sub_101169B2C()
{
  v15 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 736) = v11;
    *v11 = v0;
    v11[1] = sub_101168D04;
    v12 = *(v0 + 58);
    v13 = *(v0 + 728);

    return sub_1000DC390(v13, v12);
  }
}

uint64_t sub_101169D7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 728) = a2;
  *(v2 + 720) = a1;
  return _swift_task_switch(sub_101169DA4, a1, 0);
}

uint64_t sub_101169DA4()
{
  v13 = v0;
  if (qword_101695280 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (sub_10111EACC(v2, v3, qword_10177C6E8))
  {
    if (qword_101695278 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C6D0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000136BC(v2, v3, &v12);
      _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[91];

    return _swift_task_switch(sub_101169FBC, v11, 0);
  }
}

uint64_t sub_101169FBC()
{
  v1 = *(v0 + 720);
  *(v0 + 736) = sub_101163670();

  return _swift_task_switch(sub_10116A02C, v1, 0);
}

unint64_t sub_10116A02C()
{
  v93 = (v0 + 304);
  v94 = (v0 + 256);
  v1 = (v0 + 352);
  v90 = (v0 + 400);
  v2 = (v0 + 496);
  v3 = *(v0 + 736);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v91 = (v0 + 448);
  v92 = *(v0 + 736);
  v7 = -1 << *(v92 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v98 = *(v0 + 720);
  swift_beginAccess();
  v10 = 0;
  v11 = (63 - v7) >> 6;
  while (v9)
  {
    while (1)
    {
LABEL_12:
      v14 = __clz(__rbit64(v9)) | (v10 << 6);
      v15 = (*(v92 + 48) + 16 * v14);
      v16 = v15[1];
      v99 = *v15;
      sub_101010158(*(v92 + 56) + 48 * v14, v0 + 16);
      v95 = *(v0 + 16);
      v97 = *(v0 + 32);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);

      if (!v16)
      {
LABEL_76:

        v83 = *(v0 + 8);
        goto LABEL_77;
      }

      v9 &= v9 - 1;
      *(v0 + 64) = v95;
      *(v0 + 80) = v97;
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v19 = *(v98 + 112);
      if (*(v19 + 16))
      {
        break;
      }

LABEL_25:
      sub_101010158(v0 + 64, v0 + 112);
      if (*(v0 + 153))
      {
        if (*(v0 + 153) == 1)
        {
          v30 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Int64;
          *(v0 + 288) = sub_1000DF9C0();
          *(v0 + 256) = v30;
          v31 = 2;
        }

        else
        {
          v33 = *(v0 + 112);
          *(v0 + 280) = &type metadata for Double;
          *(v0 + 288) = sub_1000DFA84();
          *(v0 + 256) = v33;
          v31 = 3;
        }

        *(v0 + 296) = v31;
      }

      else
      {
        v32 = *(v0 + 128);
        *v94 = *(v0 + 112);
        *(v0 + 272) = v32;
        *(v0 + 281) = *(v0 + 137);
      }

      swift_beginAccess();
      sub_1010100EC(v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v98 + 112);
      *&v100 = v7;
      *(v98 + 112) = 0x8000000000000000;
      result = sub_100771D58(v99, v16);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
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
        return result;
      }

      v40 = v35;
      if (*(v7 + 24) < v39)
      {
        sub_100FE65C4(v39, isUniquelyReferenced_nonNull_native);
        result = sub_100771D58(v99, v16);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_80;
        }

LABEL_36:
        v1 = (v0 + 352);
        if (v40)
        {
          goto LABEL_6;
        }

        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v75 = result;
      sub_1010050E8();
      result = v75;
      v1 = (v0 + 352);
      if (v40)
      {
LABEL_6:
        v12 = result;

        sub_10118B568(v93, *(v7 + 56) + 48 * v12);
        goto LABEL_7;
      }

LABEL_37:
      *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
      v42 = (*(v7 + 48) + 16 * result);
      *v42 = v99;
      v42[1] = v16;
      v43 = (*(v7 + 56) + 48 * result);
      v44 = *(v0 + 329);
      v45 = *(v0 + 320);
      *v43 = *v93;
      v43[1] = v45;
      *(v43 + 25) = v44;
      v46 = *(v7 + 16);
      v38 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v38)
      {
        goto LABEL_87;
      }

      *(v7 + 16) = v47;
LABEL_7:
      *(v98 + 112) = v7;
      swift_endAccess();
      sub_10118D3FC(v0 + 64);
      sub_10118B5A0(v94);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v20 = sub_100771D58(v99, v16);
    if ((v21 & 1) == 0)
    {

      goto LABEL_25;
    }

    sub_1010100EC(*(v19 + 56) + 48 * v20, v0 + 208);

    sub_101010158(v0 + 64, v0 + 160);
    if (!*(v0 + 201))
    {
      v48 = *(v0 + 176);
      *v1 = *(v0 + 160);
      v1[1] = v48;
      *(v1 + 25) = *(v0 + 185);
      goto LABEL_62;
    }

    if (*(v0 + 201) != 1)
    {
      v49 = *(v0 + 160);
      sub_1010100EC(v0 + 208, v2);
      if (*(v0 + 536) != 3)
      {
        goto LABEL_85;
      }

      sub_10000A748(v2, v0 + 584);
      v50 = *(v0 + 608);
      sub_1000035D0((v0 + 584), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();

      v53 = v49 + *(v0 + 712);
      *(v0 + 376) = &type metadata for Double;
      *(v0 + 384) = v52;
      v1 = (v0 + 352);
      *(v0 + 352) = v53;
      *(v0 + 392) = 3;
      sub_100007BAC((v0 + 584));
      goto LABEL_62;
    }

    v22 = *(v0 + 160);
    v7 = v0 + 400;
    sub_1010100EC(v0 + 208, v90);
    if (*(v0 + 440) != 2)
    {
      goto LABEL_84;
    }

    v89 = v22;
    sub_10000A748(v90, v0 + 544);
    v23 = *(v0 + 568);
    v24 = sub_1000035D0((v0 + 544), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    v96 = v25;
    v27 = v25;
    v28 = v26;
    (*(v27 + 16))(v26, v24, v23);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *(v0 + 704) = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_49;
        }

        v85 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v84 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v85, v23);

        if (v84)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v86)
        {
          v87 = v28;
          if (v54 <= 64)
          {
            swift_getAssociatedTypeWitness();
            swift_task_alloc();
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v57 = swift_task_alloc();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v96 + 8))(v57, v23);
            v28 = v87;

            if (v58)
            {
              goto LABEL_92;
            }

LABEL_49:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_50;
          }

          v55 = swift_task_alloc();
          sub_1000DF9C0();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v56 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v96 + 8))(v55, v23);
          v28 = v87;

          if (v56)
          {
            goto LABEL_92;
          }
        }

        else if (v54 < 64)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      *(v0 + 696) = 0x7FFFFFFFFFFFFFFFLL;
      v59 = v28;
      v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v88 = v59;
      v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60)
      {
        if (v61 > 64)
        {
          goto LABEL_53;
        }
      }

      else if (v61 >= 64)
      {
LABEL_53:
        v62 = swift_task_alloc();
        sub_1000DF9C0();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v63 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v96 + 8))(v62, v23);
        v28 = v88;

        if (v63)
        {
          goto LABEL_91;
        }

        goto LABEL_60;
      }

      v28 = v59;
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

LABEL_60:
    v64 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v96 + 8))(v28, v23);

    v38 = __OFADD__(v64, v89);
    v65 = v64 + v89;
    if (v38)
    {
      goto LABEL_90;
    }

    v66 = sub_1000DF9C0();
    *(v0 + 352) = v65;
    *(v0 + 360) = v100;
    *(v0 + 376) = &type metadata for Int64;
    *(v0 + 384) = v66;
    *(v0 + 392) = 2;
    sub_100007BAC((v0 + 544));
    v1 = (v0 + 352);
LABEL_62:
    swift_beginAccess();
    sub_1010100EC(v1, v91);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v98 + 112);
    *&v100 = v7;
    *(v98 + 112) = 0x8000000000000000;
    result = sub_100771D58(v99, v16);
    v69 = *(v7 + 16);
    v70 = (v68 & 1) == 0;
    v38 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v38)
    {
      goto LABEL_88;
    }

    v72 = v68;
    if (*(v7 + 24) < v71)
    {
      sub_100FE65C4(v71, v67);
      result = sub_100771D58(v99, v16);
      if ((v72 & 1) != (v73 & 1))
      {
LABEL_80:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_67:
      v1 = (v0 + 352);
      if (v72)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    if (v67)
    {
      goto LABEL_67;
    }

    v76 = result;
    sub_1010050E8();
    result = v76;
    v1 = (v0 + 352);
    if (v72)
    {
LABEL_68:
      v74 = result;

      sub_10118B568(v91, *(v7 + 56) + 48 * v74);
      goto LABEL_74;
    }

LABEL_72:
    *(v7 + 8 * (result >> 6) + 64) |= 1 << result;
    v77 = (*(v7 + 48) + 16 * result);
    *v77 = v99;
    v77[1] = v16;
    v78 = (*(v7 + 56) + 48 * result);
    v79 = *(v0 + 473);
    v80 = *(v0 + 464);
    *v78 = *v91;
    v78[1] = v80;
    *(v78 + 25) = v79;
    v81 = *(v7 + 16);
    v38 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v38)
    {
      goto LABEL_89;
    }

    *(v7 + 16) = v82;
LABEL_74:
    *(v98 + 112) = v7;
    swift_endAccess();
    sub_10118B5A0(v0 + 208);
    sub_10118D3FC(v0 + 64);
    sub_10118B5A0(v1);
  }

LABEL_8:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_76;
    }

    v9 = *(v5 + 8 * v13);
    ++v10;
    if (v9)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_84:
  v2 = v7;
LABEL_85:

  sub_10118B5A0(v2);
  sub_10118B5D0();
  swift_allocError();
  swift_willThrow();

  sub_10118B5A0(v0 + 208);
  sub_10118D3FC(v0 + 64);
  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}