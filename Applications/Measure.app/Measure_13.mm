uint64_t sub_10010D9F0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 14) = *(a1 + 30);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 14) = *(a2 + 30);
  return sub_10010DD4C(&v5, &v7) & 1;
}

void sub_10010DA3C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setNumberStyle:0];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  qword_1004D4EB8 = v4;
}

void sub_10010DB78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSNumberFormatter) init];
  [v9 setNumberStyle:1];
  [v9 setMaximumFractionDigits:a2];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v9 setLocale:isa];

  *a3 = v9;
}

uint64_t sub_10010DCB0()
{
  CFRunLoopRemoveObserver(*(v0 + 24), *(v0 + 16), kCFRunLoopCommonModes);

  return swift_deallocClassInstance();
}

uint64_t sub_10010DD4C(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 3);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 2) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a2 + 36);
  if (a1[9])
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (a1[8] != *(a2 + 32))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a1 + 37);
  v10 = *(a2 + 37);
  if (v9 == 4)
  {
    if (v10 == 4)
    {
      return 1;
    }
  }

  else if (v9 == v10)
  {
    return 1;
  }

  return 0;
}

void sub_10010DE20(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  LODWORD(v323) = a3;
  LODWORD(v322) = a2;
  v324 = a4;
  *&v325 = a1;
  v6 = sub_10000F974(&qword_1004A9BF0, &qword_1003E2ED0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v318 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v318 - v11;
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  Defaults.showPreciseMeasurement.unsafeMutableAddressor();

  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 BOOLForKey:v15];

  v17 = fminf(fabsf(a5), 5000.0);
  v18 = 0.0;
  if (a5 < 0.0)
  {
    v18 = v17;
  }

  if (a5 <= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v20 = [v13 standardUserDefaults];
  v21 = *(Defaults.measurementBias.unsafeMutableAddressor() + 8);

  v22 = String._bridgeToObjectiveC()();

  [v20 floatForKey:v22];
  v24 = v23;

  v25 = v19 * (v24 + 1.0);
  if (v325 == 1)
  {
    v26 = objc_opt_self();
    v27 = [v26 meters];
    sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
    Measurement.init(value:unit:)();
    v28 = [v26 centimeters];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v30 = v29;
    v32 = *(v7 + 8);
    v31 = v7 + 8;
    v32(v9, v6);
    v32(v12, v6);
    v19 = v30;
    v33 = roundf(v19);
    if (v33 >= 100.0)
    {
      sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
      v101 = swift_allocObject();
      v325 = xmmword_1003D5360;
      *(v101 + 16) = xmmword_1003D5360;
      *(v101 + 56) = &type metadata for Float;
      *(v101 + 64) = &protocol witness table for Float;
      *(v101 + 32) = v25;
      *&v323 = String.init(format:_:)();
      if (qword_1004A02F8 != -1)
      {
        swift_once();
      }

      v102 = qword_1004D4EC0;
      v103 = objc_allocWithZone(NSNumber);
      *&v104 = v25;
      v105 = [v103 initWithFloat:v104];
      v106 = [v102 stringFromNumber:v105];

      if (v106)
      {
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;

        v110 = objc_opt_self();
        v111 = [v110 mainBundle];
        v112.value._countAndFlagsBits = 0xD000000000000014;
        v331._object = 0x8000000100405270;
        v112.value._object = 0x8000000100407540;
        v113._countAndFlagsBits = 1830830117;
        v113._object = 0xE400000000000000;
        v114._countAndFlagsBits = 0;
        v114._object = 0xE000000000000000;
        v331._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v113, v112, v111, v114, v331);

        v115 = swift_allocObject();
        *(v115 + 16) = v325;
        *(v115 + 56) = &type metadata for String;
        *(v115 + 64) = sub_1000192D0();
        *(v115 + 32) = v107;
        *(v115 + 40) = v109;
        v116 = String.init(format:_:)();
        object = v117;
        countAndFlagsBits = v116;

        v118 = [v110 mainBundle];
        v119._countAndFlagsBits = 0xD000000000000013;
        v332._object = 0xE000000000000000;
        v119._object = 0x8000000100407600;
        v120._countAndFlagsBits = 0;
        v120._object = 0xE000000000000000;
        v332._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v119, 0, v118, v120, v332);

        v121 = swift_allocObject();
        *(v121 + 16) = v325;
        *(v121 + 56) = &type metadata for Float;
        *(v121 + 64) = &protocol witness table for Float;
        *(v121 + 32) = v25;
        v56 = static String.localizedStringWithFormat(_:_:)();
        v58 = v122;

        v123 = String._bridgeToObjectiveC()();

        [v123 floatValue];
        v125 = v124;

        v126 = 0;
LABEL_88:
        v314 = v324;
        *v324 = countAndFlagsBits;
        v314[1] = object;
        v314[2] = v56;
        v314[3] = v58;
        *(v314 + 8) = v125;
        *(v314 + 36) = 0;
        *(v314 + 37) = v126;
        return;
      }

      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v16)
    {
      sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
      v34 = swift_allocObject();
      v325 = xmmword_1003D5360;
      *(v34 + 16) = xmmword_1003D5360;
      *(v34 + 56) = &type metadata for Float;
      *(v34 + 64) = &protocol witness table for Float;
      *(v34 + 32) = v19;
      *&v323 = String.init(format:_:)();
      if (qword_1004A02F8 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_93;
    }

    if ((LODWORD(v33) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (v33 > -9.2234e18)
      {
        if (v33 < 9.2234e18)
        {
          v148 = v33;
          if (v33)
          {
            v326._countAndFlagsBits = v33;
            *&v325 = dispatch thunk of CustomStringConvertible.description.getter();
            if (qword_1004A02F0 != -1)
            {
              swift_once();
            }

            v149 = qword_1004D4EB8;
            v150 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v148];
            v151 = [v149 stringFromNumber:v150];

            if (v151)
            {
              v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v154 = v153;

              v155 = objc_opt_self();
              v156 = [v155 mainBundle];
              v335._object = 0x8000000100405270;
              v157._countAndFlagsBits = 0x6D63204025;
              v157._object = 0xE500000000000000;
              v158._countAndFlagsBits = 0;
              v158._object = 0xE000000000000000;
              v335._countAndFlagsBits = 0xD00000000000009DLL;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v157, 0, v156, v158, v335);

              sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
              v159 = swift_allocObject();
              v323 = xmmword_1003D5360;
              *(v159 + 16) = xmmword_1003D5360;
              *(v159 + 56) = &type metadata for String;
              *(v159 + 64) = sub_1000192D0();
              *(v159 + 32) = v152;
              *(v159 + 40) = v154;
              v160 = String.init(format:_:)();
              object = v161;

              v162 = [v155 mainBundle];
              v336._object = 0xE000000000000000;
              v163._countAndFlagsBits = 0x69746E6563204025;
              v163._object = 0xEE0073726574656DLL;
              v164._countAndFlagsBits = 0;
              v164._object = 0xE000000000000000;
              v336._countAndFlagsBits = 0;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v163, 0, v162, v164, v336);

              countAndFlagsBits = v160;
              v165 = swift_allocObject();
              *(v165 + 16) = v323;
              *(v165 + 56) = &type metadata for Int;
              *(v165 + 64) = &protocol witness table for Int;
              *(v165 + 32) = v148;
              v56 = static String.localizedStringWithFormat(_:_:)();
              v58 = v166;

              goto LABEL_43;
            }

            goto LABEL_111;
          }

          v241 = objc_opt_self();
          v242 = [v241 mainBundle];
          v315 = 0x8000000100405270;
          if (v322)
          {
            v243._countAndFlagsBits = 1835212848;
            v243._object = 0xE400000000000000;
            v244._countAndFlagsBits = 0;
            v244._object = 0xE000000000000000;
            v245 = 0xD00000000000009DLL;
            v246 = NSLocalizedString(_:tableName:bundle:value:comment:)(v243, 0, v242, v244, *(&v315 - 1));
            countAndFlagsBits = v246._countAndFlagsBits;
            object = v246._object;

            v247 = "Less than one centimeter";
            v248 = [v241 mainBundle];
            v249 = 0xD000000000000010;
          }

          else
          {
            v279._countAndFlagsBits = 0x6D632031203CLL;
            v279._object = 0xE600000000000000;
            v280._countAndFlagsBits = 0;
            v280._object = 0xE000000000000000;
            v281 = 0xD00000000000009DLL;
            v282 = NSLocalizedString(_:tableName:bundle:value:comment:)(v279, 0, v242, v280, *(&v315 - 1));
            countAndFlagsBits = v282._countAndFlagsBits;
            object = v282._object;

            v247 = "%@ and a half inches";
            v248 = [v241 mainBundle];
            v249 = 0xD000000000000018;
          }

          v345._object = 0xE000000000000000;
          v283 = v247 | 0x8000000000000000;
          v284._countAndFlagsBits = 0;
          v284._object = 0xE000000000000000;
          v345._countAndFlagsBits = 0;
          v285 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v249, 0, v248, v284, v345);
          v56 = v285._countAndFlagsBits;
          v58 = v285._object;

          v126 = 1;
LABEL_87:
          v125 = 0.0;
          goto LABEL_88;
        }

        goto LABEL_99;
      }

      goto LABEL_97;
    }

    __break(1u);
    goto LABEL_95;
  }

  if (!v325)
  {
    v59 = objc_opt_self();
    v27 = [v59 meters];
    sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
    Measurement.init(value:unit:)();
    v60 = [v59 inches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v62 = v61;
    v63 = *(v7 + 8);
    v31 = v7 + 8;
    v63(v9, v6);
    v63(v12, v6);
    v25 = v62;
    if (v323)
    {
      if (v25 >= 12.0)
      {
        goto LABEL_15;
      }
    }

    else if (v25 >= 36.0)
    {
LABEL_15:
      v64 = v25 / 12.0;
      if (COERCE_INT(fabs(v25 / 12.0)) > 2139095039)
      {
        __break(1u);
      }

      else if (v64 > -9.2234e18)
      {
        if (v64 < 9.2234e18)
        {
          v6 = v64;
          v65 = 12 * v64;
          if ((v64 * 12) >> 64 == v65 >> 63)
          {
            v25 = v25 - v65;
            if (v16)
            {
              sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
              v66 = swift_allocObject();
              v325 = xmmword_1003D5360;
              *(v66 + 16) = xmmword_1003D5360;
              *(v66 + 56) = &type metadata for Float;
              *(v66 + 64) = &protocol witness table for Float;
              *(v66 + 32) = v25;
              v31 = String.init(format:_:)();
              v27 = v67;
              v68 = swift_allocObject();
              *(v68 + 16) = v325;
              *(v68 + 56) = &type metadata for Int;
              *(v68 + 64) = &protocol witness table for Int;
              *(v68 + 32) = v6;
              v14 = String.init(format:_:)();
              v21 = v69;
              if (qword_1004A02F8 == -1)
              {
LABEL_21:
                v70 = qword_1004D4EC0;
                v71 = objc_allocWithZone(NSNumber);
                *&v72 = v25;
                v73 = [v71 initWithFloat:v72];
                v74 = [v70 stringFromNumber:v73];

                if (!v74)
                {
LABEL_108:
                  __break(1u);
LABEL_109:
                  __break(1u);
LABEL_110:
                  __break(1u);
LABEL_111:
                  __break(1u);
                  goto LABEL_112;
                }

                v321 = v14;
                v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v319 = v76;
                v320 = v75;

                if (qword_1004A02F0 != -1)
                {
                  swift_once();
                }

                v322 = v21;
                *&v323 = v31;
                *&v325 = v27;
                v77 = qword_1004D4EB8;
                v78 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v6];
                v79 = [v77 stringFromNumber:v78];

                if (!v79)
                {
                  goto LABEL_110;
                }

                v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v82 = v81;

                v83 = objc_opt_self();
                v84 = [v83 mainBundle];
                v329._object = 0x8000000100405270;
                v85._countAndFlagsBits = 0x80E2402520274025;
                v85._object = 0xA90000000000009DLL;
                v86._countAndFlagsBits = 0;
                v86._object = 0xE000000000000000;
                v329._countAndFlagsBits = 0xD00000000000009DLL;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, v329);

                v87 = swift_allocObject();
                v318 = xmmword_1003D5730;
                *(v87 + 16) = xmmword_1003D5730;
                *(v87 + 56) = &type metadata for String;
                v88 = sub_1000192D0();
                *(v87 + 32) = v80;
                *(v87 + 40) = v82;
                *(v87 + 96) = &type metadata for String;
                *(v87 + 104) = v88;
                v89 = v319;
                v90 = v320;
                *(v87 + 64) = v88;
                *(v87 + 72) = v90;
                *(v87 + 80) = v89;
                countAndFlagsBits = String.init(format:_:)();
                object = v91;

                v92 = [v83 mainBundle];
                v93._countAndFlagsBits = 0xD00000000000001BLL;
                v330._object = 0xE000000000000000;
                v93._object = 0x8000000100407640;
                v94._countAndFlagsBits = 0;
                v94._object = 0xE000000000000000;
                v330._countAndFlagsBits = 0;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, v92, v94, v330);

                v95 = swift_allocObject();
                *(v95 + 16) = v318;
                *(v95 + 56) = &type metadata for Int;
                *(v95 + 64) = &protocol witness table for Int;
                *(v95 + 32) = v6;
                *(v95 + 96) = &type metadata for Float;
                *(v95 + 104) = &protocol witness table for Float;
                *(v95 + 72) = v25;
                v56 = static String.localizedStringWithFormat(_:_:)();
                v58 = v96;

                v97 = String._bridgeToObjectiveC()();

                [v97 floatValue];
                v99 = v98;

                v100 = v99 * 12.0;
LABEL_79:
                v276 = String._bridgeToObjectiveC()();

                [v276 floatValue];
                v278 = v277;

                v125 = v100 + v278;
                v126 = 2;
                goto LABEL_88;
              }

LABEL_101:
              swift_once();
              goto LABEL_21;
            }

            v193 = roundf(v25);
            if (v193 == 12.0)
            {
              v194 = 0.0;
            }

            else
            {
              v194 = v193;
            }

            if (v193 == 12.0)
            {
              ++v6;
            }

            sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
            v195 = swift_allocObject();
            v325 = xmmword_1003D5360;
            *(v195 + 16) = xmmword_1003D5360;
            *(v195 + 56) = &type metadata for Int;
            *(v195 + 64) = &protocol witness table for Int;
            *(v195 + 32) = v6;
            *&v323 = String.init(format:_:)();
            v197 = v196;
            if (qword_1004A02F0 != -1)
            {
              swift_once();
            }

            v198 = qword_1004D4EB8;
            v199 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v6];
            v200 = [v198 stringFromNumber:v199];

            if (!v200)
            {
              goto LABEL_109;
            }

            v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v203 = v202;

            if (v194 == 0.0)
            {
              v204 = objc_opt_self();
              v205 = [v204 mainBundle];
              v206.value._countAndFlagsBits = 0xD000000000000014;
              v339._object = 0x8000000100405270;
              v207._countAndFlagsBits = 0xB280E240243125;
              v206.value._object = 0x8000000100407540;
              v207._object = 0xA700000000000000;
              v208._countAndFlagsBits = 0;
              v208._object = 0xE000000000000000;
              v339._countAndFlagsBits = 0xD00000000000009DLL;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v207, v206, v205, v208, v339);

              v209 = swift_allocObject();
              *(v209 + 16) = v325;
              *(v209 + 56) = &type metadata for String;
              *(v209 + 64) = sub_1000192D0();
              *(v209 + 32) = v201;
              *(v209 + 40) = v203;
              v210 = String.init(format:_:)();
              object = v211;
              countAndFlagsBits = v210;

              v212 = [v204 mainBundle];
              v340._object = 0xE000000000000000;
              v213._countAndFlagsBits = 0x74656566204025;
              v213._object = 0xE700000000000000;
              v214._countAndFlagsBits = 0;
              v214._object = 0xE000000000000000;
              v340._countAndFlagsBits = 0;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v213, 0, v212, v214, v340);

              v215 = swift_allocObject();
              *(v215 + 16) = v325;
              *(v215 + 56) = &type metadata for Int;
              *(v215 + 64) = &protocol witness table for Int;
              *(v215 + 32) = v6;
              v56 = static String.localizedStringWithFormat(_:_:)();
              v58 = v216;

              v217 = String._bridgeToObjectiveC()();

              [v217 floatValue];
              v219 = v218;

              v125 = v219 * 12.0;
              v126 = 2;
              goto LABEL_88;
            }

            v250 = swift_allocObject();
            *(v250 + 16) = v325;
            if ((LODWORD(v193) & 0x7FFFFFFFu) < 0x7F800000 || v193 == 12.0)
            {
              if (v194 > -9.2234e18)
              {
                if (v194 < 9.2234e18)
                {
                  *&v325 = v197;
                  *(v250 + 56) = &type metadata for Int;
                  *(v250 + 64) = &protocol witness table for Int;
                  v320 = v194;
                  *(v250 + 32) = v194;
                  v321 = String.init(format:_:)();
                  v322 = v252;
                  v253 = objc_allocWithZone(NSDecimalNumber);
                  *&v254 = v194;
                  v255 = [v253 initWithFloat:v254];
                  v256 = [v198 stringFromNumber:v255];

                  if (!v256)
                  {
LABEL_112:
                    __break(1u);
LABEL_113:
                    __break(1u);
LABEL_114:
                    __break(1u);
                    goto LABEL_115;
                  }

                  v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v319 = v258;

                  v259 = objc_opt_self();
                  v260 = [v259 mainBundle];
                  v261.value._countAndFlagsBits = 0xD000000000000014;
                  v343._object = 0x8000000100405270;
                  v262._countAndFlagsBits = 0x20B280E240243125;
                  v262._object = 0xAFB380E240243225;
                  v261.value._object = 0x8000000100407540;
                  v263._countAndFlagsBits = 0;
                  v263._object = 0xE000000000000000;
                  v343._countAndFlagsBits = 0xD00000000000009DLL;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v262, v261, v260, v263, v343);

                  v264 = swift_allocObject();
                  v318 = xmmword_1003D5730;
                  *(v264 + 16) = xmmword_1003D5730;
                  *(v264 + 56) = &type metadata for String;
                  v265 = sub_1000192D0();
                  *(v264 + 32) = v201;
                  *(v264 + 40) = v203;
                  *(v264 + 96) = &type metadata for String;
                  *(v264 + 104) = v265;
                  *(v264 + 64) = v265;
                  *(v264 + 72) = v257;
                  *(v264 + 80) = v319;
                  countAndFlagsBits = String.init(format:_:)();
                  object = v266;

                  v267 = [v259 mainBundle];
                  v268._countAndFlagsBits = 0xD000000000000011;
                  v344._object = 0xE000000000000000;
                  v268._object = 0x8000000100407560;
                  v269._countAndFlagsBits = 0;
                  v269._object = 0xE000000000000000;
                  v344._countAndFlagsBits = 0;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v268, 0, v267, v269, v344);

                  v270 = swift_allocObject();
                  *(v270 + 16) = v318;
                  *(v270 + 56) = &type metadata for Int;
                  *(v270 + 32) = v6;
                  *(v270 + 96) = &type metadata for Int;
                  *(v270 + 104) = &protocol witness table for Int;
                  v271 = v320;
                  *(v270 + 64) = &protocol witness table for Int;
                  *(v270 + 72) = v271;
                  v56 = static String.localizedStringWithFormat(_:_:)();
                  v58 = v272;

                  v273 = String._bridgeToObjectiveC()();

                  [v273 floatValue];
                  v275 = v274;

                  v100 = v275 * 12.0;
                  goto LABEL_79;
                }

                goto LABEL_103;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

LABEL_92:
          __break(1u);
LABEL_93:
          swift_once();
LABEL_10:
          v35 = qword_1004D4EC0;
          v36 = objc_allocWithZone(NSNumber);
          *&v37 = v19;
          v38 = [v36 initWithFloat:v37];
          v39 = [v35 stringFromNumber:v38];

          if (v39)
          {
            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            v43 = objc_opt_self();
            v44 = [v43 mainBundle];
            v327._object = 0x8000000100405270;
            v45._countAndFlagsBits = 0x6D63204025;
            v45._object = 0xE500000000000000;
            v46._countAndFlagsBits = 0;
            v46._object = 0xE000000000000000;
            v327._countAndFlagsBits = 0xD00000000000009DLL;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v327);

            v47 = swift_allocObject();
            *(v47 + 16) = v325;
            *(v47 + 56) = &type metadata for String;
            *(v47 + 64) = sub_1000192D0();
            *(v47 + 32) = v40;
            *(v47 + 40) = v42;
            v48 = String.init(format:_:)();
            object = v49;
            countAndFlagsBits = v48;

            v52 = [v43 mainBundle];
            v53._countAndFlagsBits = 0xD000000000000018;
            v328._object = 0xE000000000000000;
            v53._object = 0x8000000100407620;
            v54._countAndFlagsBits = 0;
            v54._object = 0xE000000000000000;
            v328._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v328);

            v55 = swift_allocObject();
            *(v55 + 16) = v325;
            *(v55 + 56) = &type metadata for Float;
            *(v55 + 64) = &protocol witness table for Float;
            *(v55 + 32) = v19;
            v56 = static String.localizedStringWithFormat(_:_:)();
            v58 = v57;

LABEL_43:
            v167 = String._bridgeToObjectiveC()();

            [v167 floatValue];
            v125 = v168;

            v126 = 1;
            goto LABEL_88;
          }

          goto LABEL_106;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      __break(1u);
      goto LABEL_91;
    }

    if (v16)
    {
      sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
      v127 = swift_allocObject();
      v325 = xmmword_1003D5360;
      *(v127 + 16) = xmmword_1003D5360;
      *(v127 + 56) = &type metadata for Float;
      *(v127 + 64) = &protocol witness table for Float;
      *(v127 + 32) = v25;
      *&v323 = String.init(format:_:)();
      if (qword_1004A02F8 == -1)
      {
LABEL_33:
        v128 = qword_1004D4EC0;
        v129 = objc_allocWithZone(NSNumber);
        *&v130 = v25;
        v131 = [v129 initWithFloat:v130];
        v132 = [v128 stringFromNumber:v131];

        if (!v132)
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v135 = v134;

        v136 = objc_opt_self();
        v137 = [v136 mainBundle];
        v333._object = 0x8000000100405270;
        v138._countAndFlagsBits = 0x9D80E24025;
        v138._object = 0xA500000000000000;
        v139._countAndFlagsBits = 0;
        v139._object = 0xE000000000000000;
        v333._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v138, 0, v137, v139, v333);

        v140 = swift_allocObject();
        *(v140 + 16) = v325;
        *(v140 + 56) = &type metadata for String;
        *(v140 + 64) = sub_1000192D0();
        *(v140 + 32) = v133;
        *(v140 + 40) = v135;
        v141 = String.init(format:_:)();
        object = v142;
        countAndFlagsBits = v141;

        v143 = [v136 mainBundle];
        v144._countAndFlagsBits = 0xD000000000000013;
        v334._object = 0xE000000000000000;
        v144._object = 0x8000000100407660;
        v145._countAndFlagsBits = 0;
        v145._object = 0xE000000000000000;
        v334._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v144, 0, v143, v145, v334);

        v146 = swift_allocObject();
        *(v146 + 16) = v325;
        *(v146 + 56) = &type metadata for Float;
        *(v146 + 64) = &protocol witness table for Float;
        *(v146 + 32) = v25;
        v56 = static String.localizedStringWithFormat(_:_:)();
        v58 = v147;
        goto LABEL_67;
      }

LABEL_95:
      swift_once();
      goto LABEL_33;
    }

    v169 = roundf(v25 + v25) * 0.5;
    if ((LODWORD(v169) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (v169 <= -9.2234e18)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (v169 >= 9.2234e18)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v6 = v169;
    if ((v169 - v169) <= 0.00000011921)
    {
      if (!v6)
      {
        v296 = objc_opt_self();
        v297 = [v296 mainBundle];
        v316 = 0x8000000100405270;
        if (v322)
        {
          v298._countAndFlagsBits = 2642469424;
          v298._object = 0xA400000000000000;
          v299._countAndFlagsBits = 0;
          v299._object = 0xE000000000000000;
          v300 = 0xD00000000000009DLL;
          v301 = NSLocalizedString(_:tableName:bundle:value:comment:)(v298, 0, v297, v299, *(&v316 - 1));

          v326 = v301;
          countAndFlagsBits = String.init<A>(_:)();
          object = v302;
          v303 = [v296 mainBundle];
          v317 = 0xE000000000000000;
          v304 = 0x636E69206F72655ALL;
          v305 = 0xEB00000000736568;
        }

        else
        {
          v306._countAndFlagsBits = 0x9D80E2BDC2203CLL;
          v306._object = 0xA700000000000000;
          v307._countAndFlagsBits = 0;
          v307._object = 0xE000000000000000;
          v308 = 0xD00000000000009DLL;
          v309 = NSLocalizedString(_:tableName:bundle:value:comment:)(v306, 0, v297, v307, *(&v316 - 1));

          v326 = v309;
          countAndFlagsBits = String.init<A>(_:)();
          object = v310;
          v303 = [v296 mainBundle];
          v304 = 0xD000000000000016;
          v317 = 0xE000000000000000;
          v305 = 0x8000000100407580;
        }

        v311._countAndFlagsBits = 0;
        v311._object = 0xE000000000000000;
        v312 = 0;
        v313 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v304, 0, v303, v311, *(&v317 - 1));
        v56 = v313._countAndFlagsBits;
        v58 = v313._object;

        v126 = 2;
        goto LABEL_87;
      }

      sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
      v220 = swift_allocObject();
      v325 = xmmword_1003D5360;
      *(v220 + 16) = xmmword_1003D5360;
      *(v220 + 56) = &type metadata for Int;
      *(v220 + 64) = &protocol witness table for Int;
      *(v220 + 32) = v6;
      *&v323 = String.init(format:_:)();
      if (qword_1004A02F0 != -1)
      {
        swift_once();
      }

      v221 = qword_1004D4EB8;
      v222 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v6];
      v223 = [v221 stringFromNumber:v222];

      if (!v223)
      {
        goto LABEL_114;
      }

      v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v226 = v225;

      v227 = objc_opt_self();
      v228 = [v227 mainBundle];
      v341._object = 0x8000000100405270;
      v229._countAndFlagsBits = 0x9D80E24025;
      v229._object = 0xA500000000000000;
      v230._countAndFlagsBits = 0;
      v230._object = 0xE000000000000000;
      v341._countAndFlagsBits = 0xD00000000000009DLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v229, 0, v228, v230, v341);

      v231 = swift_allocObject();
      *(v231 + 16) = v325;
      *(v231 + 56) = &type metadata for String;
      *(v231 + 64) = sub_1000192D0();
      *(v231 + 32) = v224;
      *(v231 + 40) = v226;
      v232 = String.init(format:_:)();
      object = v233;

      v234 = [v227 mainBundle];
      v342._object = 0xE000000000000000;
      v235._countAndFlagsBits = 0x6568636E69204025;
      v235._object = 0xE900000000000073;
      v236._countAndFlagsBits = 0;
      v236._object = 0xE000000000000000;
      v342._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v235, 0, v234, v236, v342);

      v237 = swift_allocObject();
      *(v237 + 16) = v325;
      *(v237 + 56) = &type metadata for Int;
      *(v237 + 64) = &protocol witness table for Int;
      *(v237 + 32) = v6;
      v56 = static String.localizedStringWithFormat(_:_:)();
      v58 = v238;
      countAndFlagsBits = v232;
LABEL_67:

      v239 = String._bridgeToObjectiveC()();

      [v239 floatValue];
      v125 = v240;

      v126 = 2;
      goto LABEL_88;
    }

    if (!v6)
    {
      v286 = objc_opt_self();
      v287 = [v286 mainBundle];
      v346._object = 0x8000000100405270;
      v288._countAndFlagsBits = 0x9D80E2BDC24025;
      v288._object = 0xA700000000000000;
      v289._countAndFlagsBits = 0;
      v289._object = 0xE000000000000000;
      v346._countAndFlagsBits = 0xD00000000000009DLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v288, 0, v287, v289, v346);

      sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
      v290 = swift_allocObject();
      *(v290 + 16) = xmmword_1003D5360;
      *(v290 + 56) = &type metadata for String;
      *(v290 + 64) = sub_1000192D0();
      *(v290 + 32) = 0;
      *(v290 + 40) = 0xE000000000000000;
      countAndFlagsBits = String.init(format:_:)();
      object = v291;

      v292 = [v286 mainBundle];
      v347._object = 0xE000000000000000;
      v293._countAndFlagsBits = 0x206E6120666C6148;
      v293._object = 0xEC00000068636E69;
      v294._countAndFlagsBits = 0;
      v294._object = 0xE000000000000000;
      v347._countAndFlagsBits = 0;
      v295 = NSLocalizedString(_:tableName:bundle:value:comment:)(v293, 0, v292, v294, v347);
      v56 = v295._countAndFlagsBits;
      v58 = v295._object;

      v126 = 2;
      v125 = 0.5;
      goto LABEL_88;
    }

    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v170 = swift_allocObject();
    v325 = xmmword_1003D5360;
    *(v170 + 16) = xmmword_1003D5360;
    *(v170 + 56) = &type metadata for Int;
    *(v170 + 64) = &protocol witness table for Int;
    *(v170 + 32) = v6;
    v322 = String.init(format:_:)();
    *&v323 = v171;
    if (qword_1004A02F0 == -1)
    {
LABEL_50:
      v172 = qword_1004D4EB8;
      v173 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v6];
      v174 = [v172 stringFromNumber:v173];

      if (v174)
      {
        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = v176;

        v178 = objc_opt_self();
        v179 = [v178 mainBundle];
        v337._object = 0x8000000100405270;
        v180._countAndFlagsBits = 0x9D80E2BDC24025;
        v180._object = 0xA700000000000000;
        v181._countAndFlagsBits = 0;
        v181._object = 0xE000000000000000;
        v337._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v180, 0, v179, v181, v337);

        v182 = swift_allocObject();
        *(v182 + 16) = v325;
        *(v182 + 56) = &type metadata for String;
        *(v182 + 64) = sub_1000192D0();
        *(v182 + 32) = v175;
        *(v182 + 40) = v177;
        v183 = String.init(format:_:)();
        object = v184;

        v185 = [v178 mainBundle];
        v186._countAndFlagsBits = 0xD000000000000014;
        v338._object = 0xE000000000000000;
        v186._object = 0x80000001004075A0;
        v187._countAndFlagsBits = 0;
        v187._object = 0xE000000000000000;
        v338._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v186, 0, v185, v187, v338);

        v188 = swift_allocObject();
        *(v188 + 16) = v325;
        *(v188 + 56) = &type metadata for Int;
        *(v188 + 64) = &protocol witness table for Int;
        *(v188 + 32) = v6;
        v56 = static String.localizedStringWithFormat(_:_:)();
        v58 = v189;
        countAndFlagsBits = v183;

        v190 = String._bridgeToObjectiveC()();

        [v190 floatValue];
        v192 = v191;

        v125 = v192 + 0.5;
        v126 = 2;
        goto LABEL_88;
      }

      goto LABEL_113;
    }

LABEL_104:
    swift_once();
    goto LABEL_50;
  }

LABEL_115:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001102CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = sub_10000F974(&qword_1004A9BF0, &qword_1003E2ED0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = 5000.0;
  if (a3 <= 5000.0)
  {
    v13 = a3;
  }

  if (a3 < 0.0)
  {
    v13 = 0.0;
  }

  if (a1 == 1)
  {
    v14 = v35;
    v15 = &v36;
    sub_10010DE20(1, 0, 0, v35, v13);
    v16 = &v37;
LABEL_20:
    v27 = *v14;
    v28 = v14[1];
    v29 = *(v14 + 8);
    v30 = *(v14 + 36);
    v31 = *(v14 + 37);
    *v16 = *v15;
    result = sub_10011353C(v16);
    *a2 = v27;
    *(a2 + 8) = v28;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v29;
    *(a2 + 36) = v30;
    *(a2 + 37) = v31;
    return result;
  }

  if (!a1)
  {
    v17 = objc_opt_self();
    v18 = [v17 meters];
    sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
    Measurement.init(value:unit:)();
    v19 = [v17 inches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v21 = v20;
    v22 = *(v7 + 8);
    v22(v9, v6);
    v22(v12, v6);
    v23 = v21;
    v24 = roundf(v23 + v23) * 0.5;
    if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v24 > -9.2234e18)
    {
      if (v24 < 9.2234e18)
      {
        v15 = &v34;
        v25 = v24;
        if (v24 >= 0xA)
        {
          if ((v24 - 10) >= 0x1A)
          {
            if (v25 >= 36)
            {
              v26 = 30.455;
              if (v25 < 0x78)
              {
                v26 = 1.17;
              }
            }

            else
            {
              v26 = 30.455;
            }
          }

          else
          {
            v26 = 0.85;
          }
        }

        else
        {
          v26 = 0.089;
        }

        v14 = v33;
        sub_10010DE20(0, 0, 0, v33, v26);
        v16 = v35;
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10011062C(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_10000F974(&qword_1004A9BF0, &qword_1003E2ED0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v149 - v12;
  v14 = objc_opt_self();
  v15 = [v14 meters];
  sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  v16 = [v14 inches];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  v20 = v18;
  v21 = roundf(v20 + v20) * 0.5;
  if (COERCE_INT(fabs(v21)) > 2139095039)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v21 <= -9.2234e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v21 >= 9.2234e18)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
    goto LABEL_8;
  }

  v10 = v21;
  v158 = a3;
  if (v21)
  {
    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1003D5360;
    *(v22 + 56) = &type metadata for Int;
    *(v22 + 64) = &protocol witness table for Int;
    *(v22 + 32) = v10;
    *&v156 = String.init(format:_:)();
    *&v157 = v23;
  }

  else
  {
    *&v156 = 0;
    *&v157 = 0xE000000000000000;
  }

  LOBYTE(a3) = a2;
  if (qword_1004A02F0 != -1)
  {
    goto LABEL_55;
  }

LABEL_8:
  v24 = qword_1004D4EB8;
  v25 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v10];
  v26 = [v24 stringFromNumber:v25];

  if (!v26)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v20 >= 0.0 && v20 < 12.0)
  {
    if ((v21 - v10) > 0.00000011921)
    {
      v32 = v158;
      if (v10)
      {
        v33 = objc_opt_self();
        v34 = [v33 mainBundle];
        v159._object = 0x8000000100405270;
        v35._countAndFlagsBits = 0x9D80E2BDC24025;
        v35._object = 0xA700000000000000;
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        v159._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v159);

        sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
        v37 = swift_allocObject();
        v155 = xmmword_1003D5360;
        *(v37 + 16) = xmmword_1003D5360;
        *(v37 + 56) = &type metadata for String;
        *(v37 + 64) = sub_1000192D0();
        *(v37 + 32) = v27;
        *(v37 + 40) = v29;
        v38 = String.init(format:_:)();
        v40 = v39;

        v41 = [v33 mainBundle];
        v42._countAndFlagsBits = 0xD000000000000014;
        v160._object = 0xE000000000000000;
        v42._object = 0x80000001004075A0;
        v43._countAndFlagsBits = 0;
        v43._object = 0xE000000000000000;
        v160._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v160);

        v44 = swift_allocObject();
        *(v44 + 16) = v155;
        *(v44 + 56) = &type metadata for Int;
        *(v44 + 64) = &protocol witness table for Int;
        *(v44 + 32) = v10;
        countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
        object = v46;

        v48 = String._bridgeToObjectiveC()();

        [v48 floatValue];
        v50 = v49;

        v51 = v50 + 0.5;
      }

      else
      {

        v121 = objc_opt_self();
        v122 = [v121 mainBundle];
        v167._object = 0x8000000100405270;
        v123._countAndFlagsBits = 0x9D80E2BDC24025;
        v123._object = 0xA700000000000000;
        v124._countAndFlagsBits = 0;
        v124._object = 0xE000000000000000;
        v167._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v123, 0, v122, v124, v167);

        sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_1003D5360;
        *(v125 + 56) = &type metadata for String;
        *(v125 + 64) = sub_1000192D0();
        *(v125 + 32) = 0;
        *(v125 + 40) = 0xE000000000000000;
        v38 = String.init(format:_:)();
        v40 = v126;

        v127 = [v121 mainBundle];
        v168._object = 0xE000000000000000;
        v128._countAndFlagsBits = 0x206E6120666C6148;
        v128._object = 0xEC00000068636E69;
        v129._countAndFlagsBits = 0;
        v129._object = 0xE000000000000000;
        v168._countAndFlagsBits = 0;
        v130 = NSLocalizedString(_:tableName:bundle:value:comment:)(v128, 0, v127, v129, v168);
        countAndFlagsBits = v130._countAndFlagsBits;
        object = v130._object;

        v51 = 0.5;
      }

      goto LABEL_45;
    }

    if (!v10)
    {

      v131 = objc_opt_self();
      v132 = [v131 mainBundle];
      v147 = 0x8000000100405270;
      if (a3)
      {
        v133._countAndFlagsBits = 2642469424;
        v133._object = 0xA400000000000000;
        v134._countAndFlagsBits = 0;
        v134._object = 0xE000000000000000;
        v135 = 0xD00000000000009DLL;
        v136 = NSLocalizedString(_:tableName:bundle:value:comment:)(v133, 0, v132, v134, *(&v147 - 1));
        v38 = v136._countAndFlagsBits;
        v40 = v136._object;

        v137 = [v131 mainBundle];
        v148 = 0xE000000000000000;
        v138 = 0x636E69206F72655ALL;
        v139 = 0xEB00000000736568;
      }

      else
      {
        v140._countAndFlagsBits = 0x9D80E2BDC2203CLL;
        v140._object = 0xA700000000000000;
        v141._countAndFlagsBits = 0;
        v141._object = 0xE000000000000000;
        v142 = 0xD00000000000009DLL;
        v143 = NSLocalizedString(_:tableName:bundle:value:comment:)(v140, 0, v132, v141, *(&v147 - 1));
        v38 = v143._countAndFlagsBits;
        v40 = v143._object;

        v137 = [v131 mainBundle];
        v138 = 0xD000000000000016;
        v148 = 0xE000000000000000;
        v139 = 0x8000000100407580;
      }

      v144._countAndFlagsBits = 0;
      v144._object = 0xE000000000000000;
      v145 = 0;
      v146 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v138, 0, v137, v144, *(&v148 - 1));
      countAndFlagsBits = v146._countAndFlagsBits;
      object = v146._object;

      v51 = 0.0;
      goto LABEL_44;
    }

LABEL_43:
    v95 = objc_opt_self();
    v96 = [v95 mainBundle];
    v163._object = 0x8000000100405270;
    v97._countAndFlagsBits = 0x9D80E24025;
    v97._object = 0xA500000000000000;
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    v163._countAndFlagsBits = 0xD00000000000009DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v96, v98, v163);

    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v99 = swift_allocObject();
    v155 = xmmword_1003D5360;
    *(v99 + 16) = xmmword_1003D5360;
    *(v99 + 56) = &type metadata for String;
    *(v99 + 64) = sub_1000192D0();
    *(v99 + 32) = v27;
    *(v99 + 40) = v29;
    v38 = String.init(format:_:)();
    v40 = v100;

    v101 = [v95 mainBundle];
    v164._object = 0xE000000000000000;
    v102._countAndFlagsBits = 0x6568636E69204025;
    v102._object = 0xE900000000000073;
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    v164._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v102, 0, v101, v103, v164);

    v104 = swift_allocObject();
    *(v104 + 16) = v155;
    *(v104 + 56) = &type metadata for Int;
    *(v104 + 64) = &protocol witness table for Int;
    *(v104 + 32) = v10;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v105;

    v106 = String._bridgeToObjectiveC()();

    [v106 floatValue];
    v51 = v107;

LABEL_44:
    v32 = v158;
    goto LABEL_45;
  }

  if (v20 < 12.0 || v20 >= 36.0)
  {
    goto LABEL_43;
  }

  v32 = v158;
  if ((a1 & 1) == 0)
  {
    v108 = objc_opt_self();
    v109 = [v108 mainBundle];
    v165._object = 0x8000000100405270;
    v110._countAndFlagsBits = 0x9D80E24025;
    v110._object = 0xA500000000000000;
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    v165._countAndFlagsBits = 0xD00000000000009DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v110, 0, v109, v111, v165);

    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v112 = swift_allocObject();
    v155 = xmmword_1003D5360;
    *(v112 + 16) = xmmword_1003D5360;
    *(v112 + 56) = &type metadata for String;
    *(v112 + 64) = sub_1000192D0();
    *(v112 + 32) = v27;
    *(v112 + 40) = v29;
    v38 = String.init(format:_:)();
    v40 = v113;

    v114 = [v108 mainBundle];
    v166._object = 0xE000000000000000;
    v115._countAndFlagsBits = 0x6568636E69204025;
    v115._object = 0xE900000000000073;
    v116._countAndFlagsBits = 0;
    v116._object = 0xE000000000000000;
    v166._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v115, 0, v114, v116, v166);

    v117 = swift_allocObject();
    *(v117 + 16) = v155;
    *(v117 + 56) = &type metadata for Int;
    *(v117 + 64) = &protocol witness table for Int;
    *(v117 + 32) = v10;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v118;

    v119 = String._bridgeToObjectiveC()();

    [v119 floatValue];
    v51 = v120;

    goto LABEL_45;
  }

  v52 = v20 / 12.0;
  if (COERCE_INT(fabs(v20 / 12.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v52 <= -9.2234e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v52 >= 9.2234e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v53 = 12 * v52;
  if ((v52 * 12) >> 64 != v53 >> 63)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v54 = roundf(v20 - v53);
  if (v54 == 12.0)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v54;
  }

  if (v54 == 12.0)
  {
    v56 = v52 + 1;
  }

  else
  {
    v56 = v52;
  }

  sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
  v57 = swift_allocObject();
  v156 = xmmword_1003D5360;
  *(v57 + 16) = xmmword_1003D5360;
  *(v57 + 56) = &type metadata for Int;
  *(v57 + 64) = &protocol witness table for Int;
  *(v57 + 32) = v56;
  v154 = String.init(format:_:)();
  *&v155 = v58;
  v59 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v56];
  v60 = [v24 stringFromNumber:v59];

  if (!v60)
  {
    goto LABEL_64;
  }

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v153 = v62;

  v63 = swift_allocObject();
  *(v63 + 16) = v156;
  if ((LODWORD(v54) & 0x7FFFFFFFu) >= 0x7F800000 && v54 != 12.0)
  {
    goto LABEL_60;
  }

  if (v55 <= -9.2234e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v55 >= 9.2234e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *&v156 = v56;
  *(v63 + 56) = &type metadata for Int;
  *(v63 + 64) = &protocol witness table for Int;
  v149 = v61;
  v150 = v55;
  *(v63 + 32) = v55;
  v151 = String.init(format:_:)();
  v152 = v65;
  v66 = objc_allocWithZone(NSDecimalNumber);
  *&v67 = v55;
  v68 = [v66 initWithFloat:v67];
  v69 = [v24 stringFromNumber:v68];

  if (v69)
  {

    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73 = objc_opt_self();
    v74 = [v73 mainBundle];
    v75.value._countAndFlagsBits = 0xD000000000000014;
    v161._object = 0x8000000100405270;
    v76._countAndFlagsBits = 0x20B280E240243125;
    v76._object = 0xAFB380E240243225;
    v75.value._object = 0x8000000100407540;
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    v161._countAndFlagsBits = 0xD00000000000009DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v75, v74, v77, v161);

    v78 = swift_allocObject();
    v157 = xmmword_1003D5730;
    *(v78 + 16) = xmmword_1003D5730;
    *(v78 + 56) = &type metadata for String;
    v79 = sub_1000192D0();
    v80 = v153;
    *(v78 + 32) = v149;
    *(v78 + 40) = v80;
    *(v78 + 96) = &type metadata for String;
    *(v78 + 104) = v79;
    *(v78 + 64) = v79;
    *(v78 + 72) = v70;
    *(v78 + 80) = v72;
    v38 = String.init(format:_:)();
    v40 = v81;

    v82 = [v73 mainBundle];
    v83._countAndFlagsBits = 0xD000000000000011;
    v162._object = 0xE000000000000000;
    v83._object = 0x8000000100407560;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    v162._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v162);

    v85 = swift_allocObject();
    *(v85 + 16) = v157;
    *(v85 + 56) = &type metadata for Int;
    *(v85 + 32) = v156;
    *(v85 + 96) = &type metadata for Int;
    *(v85 + 104) = &protocol witness table for Int;
    v86 = v150;
    *(v85 + 64) = &protocol witness table for Int;
    *(v85 + 72) = v86;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v87;

    v88 = String._bridgeToObjectiveC()();

    [v88 floatValue];
    v90 = v89;

    v91 = v90 * 12.0;
    v92 = String._bridgeToObjectiveC()();

    [v92 floatValue];
    v94 = v93;

    v51 = v91 + v94;
LABEL_45:
    *v32 = v38;
    *(v32 + 8) = v40;
    *(v32 + 16) = countAndFlagsBits;
    *(v32 + 24) = object;
    *(v32 + 32) = v51;
    *(v32 + 36) = 1024;
    return;
  }

LABEL_65:
  __break(1u);
}

void sub_1001117E8(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_10000F974(&qword_1004A9BF0, &qword_1003E2ED0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v65 - v10;
  v12 = objc_opt_self();
  v13 = [v12 meters];
  sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  v14 = [v12 centimeters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v11, v5);
  v18 = v16;
  v19 = roundf(v18);
  if (v19 == 0.0)
  {
    v20 = objc_opt_self();
    v21 = [v20 mainBundle];
    v64 = 0x8000000100405270;
    if (a1)
    {
      v22._countAndFlagsBits = 1835212848;
      v22._object = 0xE400000000000000;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v24 = 0xD00000000000009DLL;
      v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, *(&v64 - 1));
      countAndFlagsBits = v25._countAndFlagsBits;
      object = v25._object;

      v28 = "Less than one centimeter";
      v29 = [v20 mainBundle];
      v30 = 0xD000000000000010;
    }

    else
    {
      v57._countAndFlagsBits = 0x6D632031203CLL;
      v57._object = 0xE600000000000000;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      v59 = 0xD00000000000009DLL;
      v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, v21, v58, *(&v64 - 1));
      countAndFlagsBits = v60._countAndFlagsBits;
      object = v60._object;

      v28 = "%@ and a half inches";
      v29 = [v20 mainBundle];
      v30 = 0xD000000000000018;
    }

    v70._object = 0xE000000000000000;
    v61 = v28 | 0x8000000000000000;
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v70._countAndFlagsBits = 0;
    v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v30, 0, v29, v62, v70);
    v51 = v63._countAndFlagsBits;
    v53 = v63._object;

    v56 = 0;
    goto LABEL_13;
  }

  sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
  v31 = swift_allocObject();
  v67 = xmmword_1003D5360;
  *(v31 + 16) = xmmword_1003D5360;
  *(v31 + 56) = &type metadata for Float;
  *(v31 + 64) = &protocol witness table for Float;
  *(v31 + 32) = v18;
  v65 = String.init(format:_:)();
  v66 = v32;
  if (qword_1004A0300 != -1)
  {
    swift_once();
  }

  v33 = qword_1004D4EC8;
  v34 = objc_allocWithZone(NSDecimalNumber);
  *&v35 = v18;
  v36 = [v34 initWithFloat:{v35, v65, v66}];
  v37 = [v33 stringFromNumber:v36];

  if (v37)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = objc_opt_self();
    v42 = [v41 mainBundle];
    v68._object = 0x8000000100405270;
    v43._countAndFlagsBits = 0x6D63204025;
    v43._object = 0xE500000000000000;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v68._countAndFlagsBits = 0xD00000000000009DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v68);

    v45 = swift_allocObject();
    *(v45 + 16) = v67;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_1000192D0();
    *(v45 + 32) = v38;
    *(v45 + 40) = v40;
    countAndFlagsBits = String.init(format:_:)();
    object = v46;

    v47 = [v41 mainBundle];
    v69._object = 0xE000000000000000;
    v48._countAndFlagsBits = 0x69746E6563204025;
    v48._object = 0xEE0073726574656DLL;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    v69._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v47, v49, v69);

    v50 = swift_allocObject();
    *(v50 + 16) = v67;
    if ((LODWORD(v19) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v19 > -9.2234e18)
    {
      if (v19 < 9.2234e18)
      {
        *(v50 + 56) = &type metadata for Int;
        *(v50 + 64) = &protocol witness table for Int;
        *(v50 + 32) = v19;
        v51 = static String.localizedStringWithFormat(_:_:)();
        v53 = v52;

        v54 = String._bridgeToObjectiveC()();

        [v54 floatValue];
        v56 = v55;

LABEL_13:
        *a2 = countAndFlagsBits;
        *(a2 + 8) = object;
        *(a2 + 16) = v51;
        *(a2 + 24) = v53;
        *(a2 + 32) = v56;
        *(a2 + 36) = 1024;
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
}

float sub_100111E38(char a1, char a2, float a3)
{
  v5 = sub_10000F974(&qword_1004A9BF0, &qword_1003E2ED0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() *off_10046E458[a1]];
  sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  v13 = [objc_opt_self() *off_10046E458[a2]];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  return v15;
}

void sub_100112000(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  *&v10 = a6;
  v12 = sub_10000F974(&qword_1004A9C00, &unk_1003DD8F8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v179[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v179[-v17];
  v182 = a5;
  if (a1 == 1)
  {
    if (a4)
    {
      if (qword_1004A02F8 == -1)
      {
LABEL_4:
        v19 = qword_1004D4EC0;
        v20 = objc_allocWithZone(NSNumber);
        LODWORD(v21) = LODWORD(v10);
        v22 = [v20 initWithFloat:v21];
        v23 = [v19 stringFromNumber:v22];

        if (v23)
        {
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = objc_opt_self();
          v28 = [v27 mainBundle];
          v183._object = 0x8000000100405270;
          v29._countAndFlagsBits = 0xB2C26D204025;
          v29._object = 0xA600000000000000;
          v30._countAndFlagsBits = 0;
          v30._object = 0xE000000000000000;
          v183._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v183);

          sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
          v31 = swift_allocObject();
          v181 = xmmword_1003D5360;
          *(v31 + 16) = xmmword_1003D5360;
          *(v31 + 56) = &type metadata for String;
          *(v31 + 64) = sub_1000192D0();
          *(v31 + 32) = v24;
          *(v31 + 40) = v26;
          v32 = String.init(format:_:)();
          v34 = v33;

          v35 = "%@ inches (precise)";
          v36 = [v27 mainBundle];
          v37 = 0xD00000000000001ALL;
LABEL_27:
          v178 = 0xE000000000000000;
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_55:
      swift_once();
      goto LABEL_4;
    }

    if ((*&v10 >= 0.1) | a2 & 1 && *&v10 >= 0.01 && (a3 & 1) == 0)
    {
      if (qword_1004A02F8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_57;
    }

    v10 = *&v10;
    v102 = objc_opt_self();
    v103 = [v102 squareMeters];
    sub_100018630(0, &qword_1004A9C08, NSUnitArea_ptr);
    Measurement.init(value:unit:)();
    v104 = [v102 squareCentimeters];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v106 = v105;
    v107 = *(v13 + 8);
    v107(v15, v12);
    v107(v18, v12);
    v108 = v106;
    v109 = roundf(v108);
    if ((LODWORD(v109) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
LABEL_57:
      swift_once();
LABEL_19:
      v64 = qword_1004D4EC0;
      v65 = objc_allocWithZone(NSNumber);
      LODWORD(v66) = LODWORD(v10);
      v67 = [v65 initWithFloat:v66];
      v68 = [v64 stringFromNumber:v67];

      if (v68)
      {
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = objc_opt_self();
        v73 = [v72 mainBundle];
        v74.value._countAndFlagsBits = 0xD000000000000014;
        v185._object = 0x8000000100405270;
        v75._countAndFlagsBits = 0xB2C26D204025;
        v74.value._object = 0x8000000100407540;
        v75._object = 0xA600000000000000;
        v76._countAndFlagsBits = 0;
        v76._object = 0xE000000000000000;
        v185._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v74, v73, v76, v185);

        sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
        v77 = swift_allocObject();
        v181 = xmmword_1003D5360;
        *(v77 + 16) = xmmword_1003D5360;
        *(v77 + 56) = &type metadata for String;
        *(v77 + 64) = sub_1000192D0();
        *(v77 + 32) = v69;
        *(v77 + 40) = v71;
        v32 = String.init(format:_:)();
        v34 = v78;

        v35 = "%@ inches (precise)";
        v36 = [v72 mainBundle];
        v37 = 0xD00000000000001ALL;
        v178 = 0xE000000000000000;
LABEL_28:
        v94 = v35 | 0x8000000000000000;
        v95._countAndFlagsBits = 0;
        v95._object = 0xE000000000000000;
        v96 = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v37, 0, v36, v95, *(&v178 - 1));

        v97 = swift_allocObject();
        *(v97 + 16) = v181;
        *(v97 + 56) = &type metadata for Float;
        *(v97 + 64) = &protocol witness table for Float;
        *(v97 + 32) = LODWORD(v10);
        v98 = static String.localizedStringWithFormat(_:_:)();
        v100 = v99;

LABEL_29:

        v101 = v182;
        *v182 = v32;
        v101[1] = v34;
        v101[2] = v98;
        v101[3] = v100;
        *(v101 + 8) = 0;
        *(v101 + 18) = 1025;
        return;
      }

      goto LABEL_63;
    }

    if (v109 <= -9.2234e18)
    {
      __break(1u);
    }

    else if (v109 < 9.2234e18)
    {
      v110 = v109;
      if (!v109)
      {
        v144 = [v102 squareMeters];
        Measurement.init(value:unit:)();
        v145 = [v102 squareCentimeters];
        Measurement<>.converted(to:)();

        Measurement.value.getter();
        v10 = v146;
        v107(v15, v12);
        v107(v18, v12);
        *&v10 = v10;
        if (qword_1004A02F8 != -1)
        {
          swift_once();
        }

        v147 = qword_1004D4EC0;
        v148 = objc_allocWithZone(NSNumber);
        LODWORD(v149) = LODWORD(v10);
        v150 = [v148 initWithFloat:v149];
        v151 = [v147 stringFromNumber:v150];

        if (v151)
        {
          v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v154 = v153;

          v155 = objc_opt_self();
          v156 = [v155 mainBundle];
          v191._object = 0x8000000100405270;
          v157._countAndFlagsBits = 0xB2C26D63204025;
          v157._object = 0xA700000000000000;
          v158._countAndFlagsBits = 0;
          v158._object = 0xE000000000000000;
          v191._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v157, 0, v156, v158, v191);

          sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
          v159 = swift_allocObject();
          v181 = xmmword_1003D5360;
          *(v159 + 16) = xmmword_1003D5360;
          *(v159 + 56) = &type metadata for String;
          *(v159 + 64) = sub_1000192D0();
          *(v159 + 32) = v152;
          *(v159 + 40) = v154;
          v32 = String.init(format:_:)();
          v34 = v160;

          v35 = "%@ square meters (precise)";
          v36 = [v155 mainBundle];
          v37 = 0xD000000000000015;
          goto LABEL_27;
        }

        goto LABEL_67;
      }

      if (qword_1004A02F0 != -1)
      {
        swift_once();
      }

      v111 = qword_1004D4EB8;
      v112 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v110];
      v113 = [v111 stringFromNumber:v112];

      if (!v113)
      {
        goto LABEL_65;
      }

      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      v117 = objc_opt_self();
      v118 = [v117 mainBundle];
      v187._object = 0x8000000100405270;
      v119._countAndFlagsBits = 0xB2C26D63204025;
      v119._object = 0xA700000000000000;
      v120._countAndFlagsBits = 0;
      v120._object = 0xE000000000000000;
      v187._countAndFlagsBits = 0xD00000000000009DLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v119, 0, v118, v120, v187);

      sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
      v121 = swift_allocObject();
      v181 = xmmword_1003D5360;
      *(v121 + 16) = xmmword_1003D5360;
      *(v121 + 56) = &type metadata for String;
      *(v121 + 64) = sub_1000192D0();
      *(v121 + 32) = v114;
      *(v121 + 40) = v116;
      v32 = String.init(format:_:)();
      v34 = v122;

      v123 = [v117 mainBundle];
      v124._countAndFlagsBits = 0xD000000000000015;
      v188._object = 0xE000000000000000;
      v124._object = 0x80000001004076A0;
      v125._countAndFlagsBits = 0;
      v125._object = 0xE000000000000000;
      v188._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v124, 0, v123, v125, v188);

      v126 = swift_allocObject();
      *(v126 + 16) = v181;
      *(v126 + 56) = &type metadata for Int;
      *(v126 + 64) = &protocol witness table for Int;
      *(v126 + 32) = v110;
LABEL_43:
      v98 = static String.localizedStringWithFormat(_:_:)();
      v100 = v143;

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_60;
  }

  v180 = a3;
  LODWORD(v181) = a4;
  if (!a1)
  {
    v38 = objc_opt_self();
    v39 = [v38 squareMeters];
    sub_100018630(0, &qword_1004A9C08, NSUnitArea_ptr);
    Measurement.init(value:unit:)();
    v40 = [v38 squareFeet];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v10 = v41;
    v42 = *(v13 + 8);
    v42(v15, v12);
    v42(v18, v12);
    *&v10 = v10;
    v43 = [v38 squareFeet];
    Measurement.init(value:unit:)();
    v44 = [v38 squareInches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v46 = v45;
    v42(v15, v12);
    v42(v18, v12);
    v47 = v46;
    v48 = roundf(v47);
    if ((LODWORD(v48) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v48 > -9.2234e18)
    {
      if (v48 < 9.2234e18)
      {
        if (v181)
        {
          if (qword_1004A02F8 != -1)
          {
            swift_once();
          }

          v49 = qword_1004D4EC0;
          v50 = objc_allocWithZone(NSNumber);
          LODWORD(v51) = roundf(*&v10);
          v52 = [v50 initWithFloat:v51];
          v53 = [v49 stringFromNumber:v52];

          if (!v53)
          {
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          v57 = objc_opt_self();
          v58 = [v57 mainBundle];
          v184._object = 0x8000000100405270;
          v59._countAndFlagsBits = 0xB2C27466204025;
          v59._object = 0xA700000000000000;
          v60._countAndFlagsBits = 0;
          v60._object = 0xE000000000000000;
          v184._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v184);

          sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
          v61 = swift_allocObject();
          v181 = xmmword_1003D5360;
          *(v61 + 16) = xmmword_1003D5360;
          *(v61 + 56) = &type metadata for String;
          *(v61 + 64) = sub_1000192D0();
          *(v61 + 32) = v54;
          *(v61 + 40) = v56;
          v32 = String.init(format:_:)();
          v34 = v62;

          v35 = "%@ square centimeters";
          v63 = [v57 mainBundle];
LABEL_26:
          v36 = v63;
          v37 = 0xD000000000000018;
          goto LABEL_27;
        }

        v79 = v48;
        if (v48 < 36 || (v180 & 1) != 0)
        {
          if (!v79)
          {
            v161 = [v38 squareFeet];
            Measurement.init(value:unit:)();
            v162 = [v38 squareInches];
            Measurement<>.converted(to:)();

            Measurement.value.getter();
            v10 = v163;
            v42(v15, v12);
            v42(v18, v12);
            *&v10 = v10;
            if (qword_1004A02F8 != -1)
            {
              swift_once();
            }

            v164 = qword_1004D4EC0;
            v165 = objc_allocWithZone(NSNumber);
            LODWORD(v166) = LODWORD(v10);
            v167 = [v165 initWithFloat:v166];
            v168 = [v164 stringFromNumber:v167];

            if (v168)
            {
              v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v171 = v170;

              v172 = objc_opt_self();
              v173 = [v172 mainBundle];
              v192._object = 0x8000000100405270;
              v174._countAndFlagsBits = 0x6E69207173204025;
              v174._object = 0xE800000000000000;
              v175._countAndFlagsBits = 0;
              v175._object = 0xE000000000000000;
              v192._countAndFlagsBits = 0xD00000000000009DLL;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v174, 0, v173, v175, v192);

              sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
              v176 = swift_allocObject();
              v181 = xmmword_1003D5360;
              *(v176 + 16) = xmmword_1003D5360;
              *(v176 + 56) = &type metadata for String;
              *(v176 + 64) = sub_1000192D0();
              *(v176 + 32) = v169;
              *(v176 + 40) = v171;
              v32 = String.init(format:_:)();
              v34 = v177;

              v35 = "%@ square feet (precise)";
              v36 = [v172 mainBundle];
              v37 = 0xD000000000000010;
              goto LABEL_27;
            }

            goto LABEL_68;
          }

          if (qword_1004A02F0 != -1)
          {
            swift_once();
          }

          v127 = qword_1004D4EB8;
          v128 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v79];
          v129 = [v127 stringFromNumber:v128];

          if (!v129)
          {
            goto LABEL_66;
          }

          v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v132 = v131;

          v133 = objc_opt_self();
          v134 = [v133 mainBundle];
          v189._object = 0x8000000100405270;
          v135._countAndFlagsBits = 0x6E69207173204025;
          v135._object = 0xE800000000000000;
          v136._countAndFlagsBits = 0;
          v136._object = 0xE000000000000000;
          v189._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v135, 0, v134, v136, v189);

          sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
          v137 = swift_allocObject();
          v181 = xmmword_1003D5360;
          *(v137 + 16) = xmmword_1003D5360;
          *(v137 + 56) = &type metadata for String;
          *(v137 + 64) = sub_1000192D0();
          *(v137 + 32) = v130;
          *(v137 + 40) = v132;
          v32 = String.init(format:_:)();
          v34 = v138;

          v139 = [v133 mainBundle];
          v140._countAndFlagsBits = 0xD000000000000010;
          v190._object = 0xE000000000000000;
          v140._object = 0x80000001004076E0;
          v141._countAndFlagsBits = 0;
          v141._object = 0xE000000000000000;
          v190._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v140, 0, v139, v141, v190);

          v142 = swift_allocObject();
          *(v142 + 16) = v181;
          *(v142 + 56) = &type metadata for Int;
          *(v142 + 64) = &protocol witness table for Int;
          *(v142 + 32) = v79;
          goto LABEL_43;
        }

        if (qword_1004A02F8 == -1)
        {
LABEL_24:
          v80 = qword_1004D4EC0;
          v81 = objc_allocWithZone(NSNumber);
          LODWORD(v82) = LODWORD(v10);
          v83 = [v81 initWithFloat:v82];
          v84 = [v80 stringFromNumber:v83];

          if (!v84)
          {
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v86;

          v88 = objc_opt_self();
          v89 = [v88 mainBundle];
          v186._object = 0x8000000100405270;
          v90._countAndFlagsBits = 0x7466207173204025;
          v90._object = 0xE800000000000000;
          v91._countAndFlagsBits = 0;
          v91._object = 0xE000000000000000;
          v186._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v90, 0, v89, v91, v186);

          sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
          v92 = swift_allocObject();
          v181 = xmmword_1003D5360;
          *(v92 + 16) = xmmword_1003D5360;
          *(v92 + 56) = &type metadata for String;
          *(v92 + 64) = sub_1000192D0();
          *(v92 + 32) = v85;
          *(v92 + 40) = v87;
          v32 = String.init(format:_:)();
          v34 = v93;

          v35 = "%@ square centimeters";
          v63 = [v88 mainBundle];
          goto LABEL_26;
        }

LABEL_60:
        swift_once();
        goto LABEL_24;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_69:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10011353C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A72C0, &qword_1003DAD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

float sub_1001135A4(char a1, char a2, float a3)
{
  v5 = sub_10000F974(&qword_1004A9C00, &unk_1003DD8F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() *off_10046E478[a1]];
  sub_100018630(0, &qword_1004A9C08, NSUnitArea_ptr);
  Measurement.init(value:unit:)();
  v13 = [objc_opt_self() *off_10046E478[a2]];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  return v15;
}

__n128 sub_10011376C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100113780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001137C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100113820(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000A490C(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 4);
  v20[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v8;
        v12 = v9;
        do
        {
          v13 = *(v11 + 10);
          if (v13 >= *(v11 + 2))
          {
            break;
          }

          v14 = *(v11 + 1);
          v15 = *(v11 + 4);
          v16 = *v11;
          *(v11 + 1) = *(v11 - 1);
          *(v11 + 2) = v16;
          *(v11 - 1) = v14;
          *v11 = v15;
          *(v11 + 2) = v13;
          v11 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v8 += 4;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_10000F974(&qword_1004A6B18, &qword_1003DA5C0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 2) = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v7 + 4);
    v18[1] = v6;
    sub_10011C254(v18, v19, v20, v5);
    v7[2] = 0.0;
  }

  *a1 = v2;
}

uint64_t sub_100113984()
{
  v0 = type metadata accessor for UUID();
  sub_10001D4FC(v0, qword_1004D4ED0);
  sub_10001D4C4(v0, qword_1004D4ED0);
  return UUID.init()();
}

uint64_t sub_1001139D0(uint64_t (*a1)(_BYTE *, __n128), __n128 a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    v8 = *(**(a4 + 144) + 400);

    v9 = v8(v13);
    v11 = *v10;
    *v10 = 0;

    v9(v13, 0);
  }

  *(a4 + 64) = a5;
  v13[0] = 0;
  return (a1)(v13);
}

void sub_100113B30()
{
  v0 = [objc_opt_self() standardUserDefaults];
  Defaults.peFirstPointMaxDistance.unsafeMutableAddressor();

  v1 = String._bridgeToObjectiveC()();

  [v0 floatForKey:v1];
  v3 = v2;

  dword_1004D4F04 = v3;
}

BOOL sub_100113BD0()
{
  v1 = *(**(v0 + 88) + 144);

  v1(v13, v2);

  if (v16)
  {
    return 0;
  }

  v3 = v15;
  v4 = *(**(v0 + 88) + 144);

  v4(v13, v5);

  if (v18)
  {
    return 0;
  }

  v6 = v17;
  v7 = *(**(v0 + 88) + 144);

  v7(v13, v8);

  if (v14)
  {
    return 0;
  }

  swift_beginAccess();
  sub_10000F974(&qword_1004A3DB0, &qword_1003D7F28);
  RingBuffer.append(_:)();
  swift_endAccess();

  RingBuffer<A>.average()();
  v11 = v10;

  v12 = fmaxf(v11, v3) > 0.3;
  return v6 > 4.0 || v12;
}

uint64_t sub_100113D84(void *a1)
{
  v3 = type metadata accessor for ARCamera.TrackingState();
  __chkstk_darwin(v3 - 8);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v38 - v7;
  v9 = type metadata accessor for SessionState(0);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  if (*(v1 + 232))
  {
    [a1 timestamp];
    result = 0;
    *(v1 + 224) = v15;
    *(v1 + 232) = 0;
    return result;
  }

  v16 = v10;
  v17 = *(v1 + 224);
  v18 = v1;
  v19 = *(**(v1 + 136) + 144);

  v20 = a1;
  v19(v38);

  v21 = v38[0];
  if (v38[0] >> 62 == 1)
  {
    goto LABEL_17;
  }

  if (v38[0] >> 62 == 2 && v38[0] == 0x8000000000000020)
  {

    return 0;
  }

  [v20 timestamp];
  v23 = v22;
  [v20 timestamp];
  *(v1 + 224) = v24;
  *(v1 + 232) = 0;
  if (!*(v1 + 64) || *(v1 + 64) == 1 || (v25 = *(**(v1 + 104) + 144), v26 = , v25(v38, v26), , (v38[0] & 0x1000000) != 0) || ARFrame.isVIOTrackingUnacceptable()() || (v27 = [objc_opt_self() standardUserDefaults], v28 = objc_msgSend(v27, "kADEdgeDetectionEnabled"), v27, (v28 & 1) == 0) || (v29 = *(**(v18 + 120) + 144), v30 = , v29(v38, v30), , v31 = v38[0], v32 = v38[1], v38[2], v38[3], v32, !v31) || ((*((swift_isaMask & *v31) + 0x200))(), v31, v33 = *(**(v18 + 96) + 144), v34 = , v33(v34), , sub_10004046C(&v13[*(v16 + 20)], v8), sub_100120744(v13, type metadata accessor for SessionState), v35 = type metadata accessor for ARCamera.TrackingState.Reason(), (*(*(v35 - 8) + 56))(v5, 2, 2, v35), v36 = static ARCamera.TrackingState.== infix(_:_:)(), sub_100120744(v5, &type metadata accessor for ARCamera.TrackingState), sub_100120744(v8, &type metadata accessor for ARCamera.TrackingState), (v36 & 1) == 0) || sub_100113BD0() || (sub_1001141CC() & 1) != 0)
  {
LABEL_17:

    sub_10001B360(v21);
    return 0;
  }

  v37 = sub_100114A64();

  sub_10001B360(v21);
  return (v23 - v17 < 0.05) & ~v37;
}

uint64_t sub_1001141CC()
{
  v1 = v0;
  v2 = *(**(v0 + 120) + 144);

  v2(v65, v3);

  v4 = v65[0];
  v5 = v65[1];

  if (!v4)
  {
    return 1;
  }

  v6 = COERCE_FLOAT32X2_T((*((swift_isaMask & *v4) + 0x200))());

  v7 = *(**(v1 + 120) + 144);

  v7(v65, v8);

  v9 = v65[0];
  v10 = v65[1];

  if (!v10)
  {
    return 1;
  }

  if ((*((swift_isaMask & *v10) + 0x2F0))())
  {

    return 1;
  }

  v12 = *(**(v1 + 128) + 144);

  v12(v65, v13);

  *&__dst[0] = v65[0];

  sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
  sub_10000F974(&qword_1004A1650, &unk_1003D5980);
  swift_dynamicCast();
  v14 = v65[0];
  if (v65[0] >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_57:

LABEL_58:

    return 0;
  }

  v15 = *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_57;
  }

LABEL_8:
  v16 = 0;
  v56 = v14;
  v57 = v14 & 0xC000000000000001;
  v53 = v10;
  v54 = v14 & 0xFFFFFFFFFFFFFF8;
  v60 = v1;
  v55 = v15;
  while (1)
  {
    if (v57)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v54 + 16))
      {
        goto LABEL_54;
      }

      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v20 = *((swift_isaMask & *v18) + 0xD0);
    if (v20() != 5 && v20() && v20() != 2)
    {

      goto LABEL_10;
    }

    v21 = *((swift_isaMask & *v19) + 0x250);
    v22 = v21();
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_52;
      }

      v23 = *(v22 + 40);
    }

    v24 = v23;

    type metadata accessor for MeasureCamera();
    v25 = (*((swift_isaMask & *v24) + 0x2C0))();

    (*(*v25 + 368))();

    simd_float4x4.position.getter();
    v26 = *(**(v60 + 80) + 144);

    v26(__src, v27);

    memcpy(__dst, __src, sizeof(__dst));
    sub_100013C4C(__dst);
    v28 = *(**(v60 + 80) + 144);

    v28(__src, v29);

    memcpy(v65, __src, 0x200uLL);
    sub_100013C4C(v65);
    v30 = static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v59 = v31;
    v32 = (v21)(v30);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v33 = *(v32 + 32);
    }

    v34 = v33;

    v36 = (*((swift_isaMask & *v34) + 0x2C0))(v35);

    (*(*v36 + 368))();

    simd_float4x4.position.getter();
    v37 = *(**(v60 + 80) + 144);

    v37(v61, v38);

    memcpy(v62, v61, sizeof(v62));
    sub_100013C4C(v62);
    v39 = *(**(v60 + 80) + 144);

    v39(v61, v40);

    memcpy(__src, v61, sizeof(__src));
    sub_100013C4C(__src);
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    if ((~v59.n128_u32[2] & 0x7F800000) == 0 && (v59.n128_u32[2] & 0x7FFFFF) != 0)
    {

      v15 = v55;
      v14 = v56;
LABEL_9:
      v17 = v16 + 1;
      goto LABEL_10;
    }

    v15 = v55;
    v14 = v56;
    if (v59.n128_f32[2] > 1.0 || v59.n128_f32[2] < 0.0 || ((~LODWORD(v42) & 0x7F800000) == 0 ? (v44 = (LODWORD(v42) & 0x7FFFFF) == 0) : (v44 = 1), !v44 || v42 > 1.0 || v42 < 0.0))
    {

      goto LABEL_9;
    }

    v58 = v41;
    v45 = sub_10011D040(v6, v59.n128_u64[0], v41);
    v47 = v46;
    v48 = vsub_f32(v6, v59.n128_u64[0]);
    if (vaddv_f32(vmul_f32(v48, v48)) < 6400.0 || (v49 = vsub_f32(v6, v58), vaddv_f32(vmul_f32(v49, v49)) < 6400.0))
    {

      return 1;
    }

    if (v47 >= 6400.0)
    {
      goto LABEL_9;
    }

    v50 = vsub_f32(v58, v59.n128_u64[0]);
    v51 = vmul_f32(v50, vsub_f32(v45, v59.n128_u64[0]));
    v17 = v16 + 1;
    if (vaddv_f32(v51) >= 0.0)
    {
      v52 = vmul_f32(v50, v50);
      if ((vmvn_s8(vcge_f32(vadd_f32(v52, vdup_lane_s32(v52, 1)), vadd_f32(v51, vdup_lane_s32(v51, 1)))).u8[0] & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_10:
    ++v16;
    if (v17 == v15)
    {

      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:

  return 1;
}

BOOL sub_100114A64()
{
  v1 = *(**(v0 + 128) + 144);

  v1(v13, v2);

  v3 = sub_1001C9E48(v13[0], v13[1], v13[2]);

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = (*((swift_isaMask & *v6) + 0xD0))();
      v11 = v9 == 6 || v9 == 7;

      if (!v11)
      {
        ++v5;
        if (v8 != i)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

void *sub_100114C04()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v1 = sub_10011CA08(v0);
    *(v0 + 248) = v1;
  }

  return v1;
}

void sub_100114C64(void *__src, uint64_t a2)
{
  memcpy(v9, __src, sizeof(v9));
  v3 = sub_10008D4F0();
  v4 = sub_100113D84(v3);

  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = 16 * (v5 == 2);
    v7 = v5 == 3;
    v8 = 4;
    if (!v7)
    {
      v8 = v6;
    }

    if (!v8)
    {
      __break(1u);
    }
  }
}

uint64_t sub_100114D00@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  nullsub_1();
  memcpy(a2, __srca, 0x200uLL);
  return sub_10004B20C(__dst, &v5);
}

uint64_t sub_100114D78@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x200uLL);
  return sub_10004B20C(__dst, &v5);
}

void sub_100114DD8()
{
  v1 = v0;
  *(v0 + 64) = 3;
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  swift_allocObject();
  *(v0 + 72) = PassthroughSubject.init()();
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&unk_1004A3F40, &qword_1003D74C0) + 272);

  *(v1 + 88) = v7(v6, v4);
  v8 = swift_getKeyPath();
  v9 = *(sub_10000F974(&unk_1004A3F30, &qword_1003DCC30) + 272);

  *(v1 + 96) = v9(v8, v4);
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&unk_1004A1940, &unk_1003D65A0) + 272);

  *(v1 + 104) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&qword_1004A3F80, &qword_1003D8258) + 272);

  *(v1 + 112) = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&qword_1004A11D0, &unk_1003D54E0) + 272);

  *(v1 + 120) = v15(v14, v4);
  v16 = swift_getKeyPath();
  v17 = sub_10000F974(&qword_1004A7530, &unk_1003D58B0);
  *(v1 + 128) = (*(v17 + 272))(v16, v4);
  v18 = swift_getKeyPath();
  v19 = sub_10000F974(&unk_1004A2520, &unk_1003D73A0);
  *(v1 + 136) = (*(v19 + 272))(v18, v4);
  sub_10000F974(&qword_1004A9DD8, &qword_1003DDCB0);
  swift_getKeyPath();
  *(v1 + 144) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + 152) = _swiftEmptyArrayStorage;
  *(v1 + 160) = 0;
  *(v1 + 168) = 257;
  v20 = sub_100067544(0, 30, 0, _swiftEmptyArrayStorage);
  *(v1 + 176) = xmmword_1003DD990;
  *(v1 + 192) = v20;
  v21 = sub_100067410(0, 4, 0, _swiftEmptyArrayStorage);
  *(v1 + 200) = xmmword_1003DA910;
  *(v1 + 216) = v21;
  *(v1 + 224) = 0;
  *(v1 + 232) = 1;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 240) = _swiftEmptyArrayStorage;
  v22 = [objc_allocWithZone(SCNNode) init];
  v23 = *(v1 + 256);
  *(v1 + 256) = v22;

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v24 = *(&xmmword_1004D4AB8 + 1);
  if (!*(&xmmword_1004D4AB8 + 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v36 = qword_1004D4B10;
  v25 = *(&xmmword_1004D4AE8 + 1);
  v26 = xmmword_1004D4AE8;
  v27 = qword_1004D4AD0;
  v28 = xmmword_1004D4AB8;
  v38 = qword_1004D4B18;
  v40 = v28;
  v29 = v24;

  v39 = v27;

  v37 = v26;
  v30 = v25;

  v31 = v36;
  v32 = sub_1001CC7B0();
  v33 = [v32 scene];

  v34 = [v33 rootNode];

  if (!*(v1 + 256))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v34 addChildNode:?];

  StateObserver.init(configuration:)();

  v35 = sub_100114C04()[9];

  if (v35)
  {

    sub_10000F974(&qword_1004A9DE0, &qword_1003DDCE0);
    sub_10001D47C(&qword_1004A9DE8, &qword_1004A9DE0, &qword_1003DDCE0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    sub_10000F974(&qword_1004A3270, &qword_1003DCB70);
    sub_10001D47C(&qword_1004A3278, &qword_1004A3270, &qword_1003DCB70, &protocol conformance descriptor for [A]);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100115508(uint64_t *a1)
{
  v1 = *a1;
  memcpy(__dst, a1 + 2, sizeof(__dst));
  v2 = sub_10008D4F0();
  sub_100115584(v1, v2, __dst[21], __dst[22], __dst[23], __dst[24]);
}

void sub_100115584(uint64_t a1, void *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v27 = a5;
  v28 = a6;
  v25 = a3;
  v26 = a4;
  v29 = a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ariadne_trace(_:_:_:_:_:)();
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (a1 + 32);
    do
    {
      v15 = *v14;
      v30 = v14[1];
      v31 = v15;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v17 = v16;
      (*(v10 + 8))(v12, v9);
      v18 = *(v7 + 152);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 152) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1000681E8(0, *(v18 + 2) + 1, 1, v18);
        *(v7 + 152) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1000681E8((v20 > 1), v21 + 1, 1, v18);
      }

      *(v18 + 2) = v21 + 1;
      v22 = &v18[5 * v21];
      v23 = v30;
      *(v22 + 2) = v31;
      *(v22 + 3) = v23;
      *(v22 + 8) = v17;
      *(v7 + 152) = v18;
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  if (v29)
  {
    v24 = v29;
    sub_100115E8C(v24, v25, v26, v27, v28);
    sub_100116100(v24);
  }

  *(v7 + 152) = _swiftEmptyArrayStorage;

  ariadne_trace(_:_:_:_:_:)();
}

void sub_1001157D4()
{
  v1 = v0;
  *(v0 + 64) = 3;
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  swift_allocObject();
  *(v0 + 72) = PassthroughSubject.init()();
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&unk_1004A3F40, &qword_1003D74C0) + 272);

  *(v1 + 88) = v7(v6, v4);
  v8 = swift_getKeyPath();
  v9 = *(sub_10000F974(&unk_1004A3F30, &qword_1003DCC30) + 272);

  *(v1 + 96) = v9(v8, v4);
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&unk_1004A1940, &unk_1003D65A0) + 272);

  *(v1 + 104) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&qword_1004A3F80, &qword_1003D8258) + 272);

  *(v1 + 112) = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&qword_1004A11D0, &unk_1003D54E0) + 272);

  *(v1 + 120) = v15(v14, v4);
  v16 = swift_getKeyPath();
  v17 = sub_10000F974(&qword_1004A7530, &unk_1003D58B0);
  *(v1 + 128) = (*(v17 + 272))(v16, v4);
  v18 = swift_getKeyPath();
  v19 = sub_10000F974(&unk_1004A2520, &unk_1003D73A0);
  *(v1 + 136) = (*(v19 + 272))(v18, v4);
  sub_10000F974(&qword_1004A9DD8, &qword_1003DDCB0);
  swift_getKeyPath();
  *(v1 + 144) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + 152) = _swiftEmptyArrayStorage;
  *(v1 + 160) = 0;
  *(v1 + 168) = 257;
  v20 = sub_100067544(0, 30, 0, _swiftEmptyArrayStorage);
  *(v1 + 176) = xmmword_1003DD990;
  *(v1 + 192) = v20;
  v21 = sub_100067410(0, 4, 0, _swiftEmptyArrayStorage);
  *(v1 + 200) = xmmword_1003DA910;
  *(v1 + 216) = v21;
  *(v1 + 224) = 0;
  *(v1 + 232) = 1;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 240) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100115C04()
{

  v1 = *(v0 + 256);
}

uint64_t sub_100115CAC()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    [v1 removeFromParentNode];
  }

  v2 = StateObserver.deinit();

  return v2;
}

uint64_t sub_100115D70()
{
  sub_100115CAC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EdgeInstrument(uint64_t a1)
{
  result = qword_1004A9C38;
  if (!qword_1004A9C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100115E8C(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = v5;
  v8 = *(**(v5 + 120) + 144);

  v8(v29, v9);

  v10 = v29[0];
  v11 = v29[1];
  v12 = v30;
  v13 = v31;
  v14 = v30;

  if (v12)
  {
    (*((swift_isaMask & *v14) + 0x200))();

    CGPoint.init(_:)();
    sub_100117ABC(a1, v29, a2, a3, a4, a5);
    v15 = v29[0];
    v16 = [objc_opt_self() standardUserDefaults];
    v17 = [v16 guideSnapPointsEnabled];

    if (v17)
    {
      v18 = sub_10011F6D4(a1, a2, a3, a4, a5);
      if (!v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v18 = 0;
      if (!v15)
      {
LABEL_9:
        swift_beginAccess();
        v23 = v18;
        sub_10000F974(&qword_1004A9E08, &qword_1003DDCF0);
        RingBuffer.append(_:)();
        swift_endAccess();

        return;
      }
    }

    simd_float4x4.position.getter();
    v28 = v19;
    v20 = v15;
    if (sub_10011FC98(v20, v28))
    {
      swift_beginAccess();
      v21 = v18;
      v22 = v20;
      sub_10000F974(&qword_1004A9E08, &qword_1003DDCF0);
      RingBuffer.append(_:)();
      swift_endAccess();

      *(v6 + 168) = 257;
      return;
    }

    goto LABEL_9;
  }
}

void sub_100116100(uint64_t a1)
{
  v2 = v1;
  v3 = *(**(v1 + 120) + 144);

  v3(&v122, v4);

  v5 = v122;

  if (v5)
  {
    v6 = COERCE_FLOAT32X2_T((*((swift_isaMask & *v5) + 0x200))());

    v7 = *(**(v1 + 120) + 144);

    v7(&v122, v8);

    v9 = v122;

    if (*(&v9 + 1))
    {
      (*((swift_isaMask & **(&v9 + 1)) + 0x2B0))();

      simd_float4x4.position.getter();
      v98 = v10;
      v11 = sub_100116B34();
      v12 = v11;
      v14 = v13;
      if (v11 == 1)
      {
        v16 = 0;
      }

      else
      {
        v15 = v11;
        v16 = v12;
      }

      v17 = [objc_opt_self() standardUserDefaults];
      v18 = [v17 guideSnapPointsEnabled];

      v103 = 0;
      v96 = v12;
      if (v12 != 1 && v18)
      {
        v19 = v14;
        v103 = v14;
      }

      v97 = v14;
      v102 = v16;
      v99 = v2;
      if (v16)
      {
        v20 = direct field offset for WorldEdge.connectedSurfaces;
        swift_beginAccess();
        *&v16[v20] = _swiftEmptyArrayStorage;
        v21 = v16;

        v94 = v21;
        sub_10012006C(v21, v98);
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = (v22 + 64);
          do
          {
            v27 = *(v24 - 4);
            v104 = *v24;
            v106 = *(v24 - 1);
            v28 = &v27[direct field offset for WorldEdge.p1];
            swift_beginAccess();
            if ((v28[16] & 1) == 0)
            {
              v29 = *v28;
              v30 = *(v28 + 1);
              v31 = &v27[direct field offset for WorldEdge.p2];
              swift_beginAccess();
              if ((v31[16] & 1) == 0)
              {
                v32 = (v31 + 8);
                v33 = *v31;
                v34 = vld1q_dup_f64(v32);
                v100 = v34;
                swift_beginAccess();
                v35 = v16;
                v36 = *&v16[v20];
                v37 = v27;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v35[v20] = v36;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v36 = sub_10006865C(0, *(v36 + 2) + 1, 1, v36);
                  *&v102[v20] = v36;
                }

                v40 = *(v36 + 2);
                v39 = *(v36 + 3);
                if (v40 >= v39 >> 1)
                {
                  v36 = sub_10006865C((v39 > 1), v40 + 1, 1, v36);
                }

                *&v25 = vsub_f32(v33, v29);
                *(&v25 + 1) = vsubq_f32(v100, vdupq_n_s64(v30)).u32[2];
                *(v36 + 2) = v40 + 1;
                v26 = &v36[8 * v40];
                *(v26 + 2) = v25;
                *(v26 + 3) = v106;
                *(v26 + 4) = v104;
                *(v26 + 80) = 0;
                *&v102[v20] = v36;
                v16 = v102;
                swift_endAccess();
              }
            }

            v24 += 3;
            --v23;
          }

          while (v23);
        }

        v2 = v99;
      }

      if (v103)
      {
        v41 = direct field offset for WorldEdge.connectedSurfaces;
        swift_beginAccess();
        *&v103[v41] = _swiftEmptyArrayStorage;
        v42 = v103;

        v95 = v42;
        sub_10012006C(v42, v98);
        v44 = *(v43 + 16);
        if (v44)
        {
          v45 = (v43 + 64);
          do
          {
            v48 = *(v45 - 4);
            v105 = *v45;
            v107 = *(v45 - 1);
            v49 = &v48[direct field offset for WorldEdge.p1];
            swift_beginAccess();
            if ((v49[16] & 1) == 0)
            {
              v50 = *v49;
              v51 = *(v49 + 1);
              v52 = &v48[direct field offset for WorldEdge.p2];
              swift_beginAccess();
              if ((v52[16] & 1) == 0)
              {
                v53 = (v52 + 8);
                v54 = *v52;
                v55 = vld1q_dup_f64(v53);
                v101 = v55;
                swift_beginAccess();
                v56 = *&v103[v41];
                v57 = v48;
                v58 = swift_isUniquelyReferenced_nonNull_native();
                *&v103[v41] = v56;
                if ((v58 & 1) == 0)
                {
                  v56 = sub_10006865C(0, *(v56 + 2) + 1, 1, v56);
                  *&v103[v41] = v56;
                }

                v60 = *(v56 + 2);
                v59 = *(v56 + 3);
                if (v60 >= v59 >> 1)
                {
                  v56 = sub_10006865C((v59 > 1), v60 + 1, 1, v56);
                }

                *&v46 = vsub_f32(v54, v50);
                *(&v46 + 1) = vsubq_f32(v101, vdupq_n_s64(v51)).u32[2];
                *(v56 + 2) = v60 + 1;
                v47 = &v56[8 * v60];
                *(v47 + 2) = v46;
                *(v47 + 3) = v107;
                *(v47 + 4) = v105;
                *(v47 + 80) = 0;
                *&v103[v41] = v56;
                swift_endAccess();

                v16 = v102;
              }
            }

            v45 += 3;
            --v44;
          }

          while (v44);
        }

        v2 = v99;
      }

      v61 = *(**(v2 + 112) + 144);

      v61(&v112, v62);

      v128 = v118;
      v129 = v119;
      v130 = v120;
      v131 = v121;
      v124 = v114;
      v125 = v115;
      v126 = v116;
      v127 = v117;
      v122 = v112;
      v123 = v113;
      v63 = *(&v120 + 1);
      v64 = *(&v120 + 1);
      sub_100013BF8(&v122);
      if (v63)
      {
        v65 = *(**(v2 + 112) + 144);

        v65(v108, v66);

        v118 = v108[6];
        v119 = v108[7];
        v120 = v109;
        v121 = v110;
        v114 = v108[2];
        v115 = v108[3];
        v116 = v108[4];
        v117 = v108[5];
        v112 = v108[0];
        v113 = v108[1];
        v67 = *(&v109 + 1);
        v68 = *(&v109 + 1);
        sub_100013BF8(&v112);
        if (!v67)
        {

          goto LABEL_40;
        }

        v69 = WorldEdge.projected(for:)();
        v71 = v70;
        v73 = v72;

        if (v73)
        {

LABEL_40:
          sub_1000136FC(v96, v97);
          return;
        }

        sub_10011D040(v6, v69, v71);
        if (qword_1004A0318 != -1)
        {
          v93 = v76;
          swift_once();
          v76 = v93;
        }

        if (v76 >= *&dword_1004D4EEC)
        {

          v74 = 0;
          v63 = 0;
        }

        else
        {
          v74 = v103;
          v77 = v103;
        }

        v16 = v102;
        v75 = *(v2 + 160);
        if (!v75)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v74 = 0;
        v75 = *(v2 + 160);
        if (!v75)
        {
          goto LABEL_55;
        }
      }

      CGPoint.init(_:)();
      v78 = v75;
      WorldEdge.getClosestScreenSpacePoint(from:for:)();

      if ((BYTE4(v114) & 1) == 0)
      {
        v79 = *&v114 * *&v114;
        if (qword_1004A0310 != -1)
        {
          swift_once();
        }

        if (v79 < *&dword_1004D4EE8)
        {
          if (qword_1004A0228 != -1)
          {
            swift_once();
          }

          v80._object = 0x8000000100407830;
          v80._countAndFlagsBits = 0xD000000000000022;
          Log.debug(_:isPrivate:)(v80, 0);

          v63 = *(v2 + 160);
          if (!v63)
          {
            __break(1u);
            return;
          }

          v81 = v63;
          v74 = v103;
          v82 = v103;
          v83 = v82;
          goto LABEL_61;
        }
      }

LABEL_55:
      if (!v16 || v63)
      {
        v82 = v103;
        v83 = v74;
      }

      else
      {
        v84 = v16;

        v85 = &v84[direct field offset for WorldEdge.adVariance];
        swift_beginAccess();
        if (*v85 <= 0.5)
        {
          v86 = v84;
          v63 = v16;
        }

        v74 = v103;
        v82 = v103;
        v87 = v84;
        sub_1001173A0(v63, v103, v16);

        v83 = v82;
      }

LABEL_61:
      v88 = *(v2 + 144);
      v111[0] = v63;
      v111[1] = v74;
      v89 = *(*v88 + 392);
      v90 = v63;

      v91 = v83;
      v89(v111);
      sub_1000136FC(v96, v97);

      v92 = *(v2 + 160);
      *(v2 + 160) = v63;

      *(v2 + 168) = 257;
    }
  }
}

uint64_t sub_100116B34()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v1 throttleEdges];

  v3 = 1;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  swift_beginAccess();
  if (*(*(v0 + 216) + 16) >= 4uLL)
  {
    swift_beginAccess();
    sub_10000F974(&qword_1004A3E90, &qword_1003D7FF8);
    RingBuffer.subscript.getter();
    v3 = v75;
    v5 = v76;
    swift_endAccess();
    if (!v75)
    {
LABEL_52:

      return 1;
    }

    v6 = &v75[direct field offset for WorldEdge.p1];
    swift_beginAccess();
    if (v6[16] & 1) != 0 || (v7 = *v6, v8 = *(v6 + 1), v9 = &v75[direct field offset for WorldEdge.p2], swift_beginAccess(), (v9[1].i8[0]))
    {
LABEL_51:

      v5 = v76;
      goto LABEL_52;
    }

    v72 = v4;
    v10.i64[0] = v7;
    v10.i64[1] = v8;
    v11 = vsubq_f32(*v9, v10);
    v12 = vmulq_f32(v11, v11);
    *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    *v12.f32 = vrsqrte_f32(v13);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
    v73 = vmulq_n_f32(v11, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
    sub_1000A2734(0, 4, 0);
    for (i = -1; i != -5; --i)
    {
      swift_beginAccess();
      RingBuffer.subscript.getter();
      swift_endAccess();
      v15 = v74;
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (*&v17 >= *&v16 >> 1)
      {
        sub_1000A2734((*&v16 > 1uLL), *&v17 + 1, 1);
        v15 = v74;
      }

      *&_swiftEmptyArrayStorage[2] = *&v17 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v17 + 4] = v15;
    }

    v18 = 0;
    v19 = *&v17 + 1;
    v20 = &_swiftEmptyArrayStorage[5];
    v21 = _swiftEmptyArrayStorage;
    do
    {
      if (v18 >= *&_swiftEmptyArrayStorage[2])
      {
        __break(1u);
        goto LABEL_56;
      }

      v23 = *(v20 - 1);
      v22 = *v20;
      v24 = *v20;
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100067410(0, *(v21 + 2) + 1, 1, v21);
      }

      v27 = *(v21 + 2);
      v26 = *(v21 + 3);
      if (v27 >= v26 >> 1)
      {
        v21 = sub_100067410((v26 > 1), v27 + 1, 1, v21);
      }

      ++v18;
      *(v21 + 2) = v27 + 1;
      v28 = &v21[2 * v27];
      *(v28 + 4) = v23;
      *(v28 + 5) = v22;
      v20 += 2;
    }

    while (v19 != v18);

    v29 = 0;
    v30 = *(v21 + 2);
    v20 = _swiftEmptyArrayStorage;
LABEL_20:
    v31 = &v21[2 * v29 + 4];
    while (1)
    {
      if (v30 == v29)
      {

        if (qword_1004A0228 != -1)
        {
          goto LABEL_58;
        }

        goto LABEL_30;
      }

      if (v29 >= *(v21 + 2))
      {
        break;
      }

      ++v29;
      v32 = v31 + 2;
      v33 = *v31;
      v31 += 2;
      if (v33)
      {
        v34 = *(v32 - 1);
        v35 = v33;
        v36 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000A2734(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
        }

        v38 = _swiftEmptyArrayStorage[2];
        v37 = _swiftEmptyArrayStorage[3];
        if (*&v38 >= *&v37 >> 1)
        {
          sub_1000A2734((*&v37 > 1uLL), *&v38 + 1, 1);
        }

        *&_swiftEmptyArrayStorage[2] = *&v38 + 1;
        v39 = &_swiftEmptyArrayStorage[2 * *&v38];
        *(v39 + 4) = v33;
        *(v39 + 5) = v34;
        goto LABEL_20;
      }
    }

LABEL_56:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_58:
      swift_once();
LABEL_30:
      _StringGuts.grow(_:)(25);

      v40 = *(v20 + 2);
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 0xD000000000000017;
      v42._object = 0x8000000100407860;
      Log.debug(_:isPrivate:)(v42, 0);

      if (!v40)
      {
        break;
      }

      sub_1000A2550(0, v40, 0);
      v43 = 0;
      v44 = 4;
      while (v43 < *(v20 + 2))
      {
        v45 = v20[v44];
        v46 = 1.0;
        if (v45 != 0.0)
        {
          v47 = *&v45 + direct field offset for WorldEdge.p2;
          swift_beginAccess();
          if ((*(v47 + 16) & 1) == 0)
          {
            v48 = *v47;
            v49 = *(v47 + 8);
            v50 = (*&v45 + direct field offset for WorldEdge.p1);
            swift_beginAccess();
            if ((v50[2].i8[0] & 1) == 0)
            {
              v52 = &v50[1];
              v53 = vld1q_dup_f64(v52);
              *v51.f32 = vsub_f32(v48, *v50);
              v51.i32[2] = vsubq_f32(vdupq_n_s64(v49), v53).i32[2];
              v54 = vmulq_f32(v51, v51);
              *&v55 = v54.f32[2] + vaddv_f32(*v54.f32);
              *v54.f32 = vrsqrte_f32(v55);
              *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32)));
              v56 = vmulq_f32(v73, vmulq_n_f32(v51, vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32))).f32[0]));
              v46 = 1.0 - fabsf(v56.f32[2] + vaddv_f32(*v56.f32));
            }
          }
        }

        v58 = _swiftEmptyArrayStorage[2];
        v57 = _swiftEmptyArrayStorage[3];
        if (*&v58 >= *&v57 >> 1)
        {
          sub_1000A2550((*&v57 > 1uLL), *&v58 + 1, 1);
        }

        ++v43;
        *&_swiftEmptyArrayStorage[2] = *&v58 + 1;
        *(&_swiftEmptyArrayStorage[4] + *&v58) = v46;
        v44 += 2;
        if (v40 == v43)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_40:

    v59 = _swiftEmptyArrayStorage[2];
    if (v59 != 0.0)
    {
      if (*&v59 > 7uLL)
      {
        v60 = *&v59 & 0x7FFFFFFFFFFFFFF8;
        v62 = &_swiftEmptyArrayStorage[6];
        v61 = 0.0;
        v63 = *&v59 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v61 = (((((((v61 + COERCE_FLOAT(*(v62 - 1))) + COERCE_FLOAT(HIDWORD(*(v62 - 2)))) + COERCE_FLOAT(*(v62 - 1))) + COERCE_FLOAT(HIDWORD(*(v62 - 1)))) + COERCE_FLOAT(*v62)) + COERCE_FLOAT(HIDWORD(*v62))) + COERCE_FLOAT(*(v62 + 1))) + COERCE_FLOAT(HIDWORD(*v62));
          v62 += 4;
          v63 -= 8;
        }

        while (v63);
        if (*&v59 == v60)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v60 = 0;
        v61 = 0.0;
      }

      v64 = *&v59 - v60;
      v65 = &_swiftEmptyArrayStorage[4] + v60;
      do
      {
        v66 = *v65++;
        v61 = v61 + v66;
        --v64;
      }

      while (v64);
    }

LABEL_49:

    _StringGuts.grow(_:)(24);
    v67._object = 0x8000000100407880;
    v67._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v67);
    Float.write<A>(to:)();
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    Log.debug(_:isPrivate:)(v68, 0);

    v69 = direct field offset for WorldEdge.typeConfidence;
    swift_beginAccess();
    *&v75[v69] = 1065353216;
    if (v40 >= v72)
    {
      return v3;
    }

    v70._object = 0x80000001004078A0;
    v70._countAndFlagsBits = 0xD000000000000016;
    Log.debug(_:isPrivate:)(v70, 0);
    goto LABEL_51;
  }

  return v3;
}

void sub_1001173A0(char *a1, char *a2, void *a3)
{
  v4 = v3;
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = [v9 showSnappableEdges];

  if (v10)
  {
    if (a1)
    {
      v11 = &a1[direct field offset for WorldEdge.p1];
      swift_beginAccess();
      if (v11[16])
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v13 = *v11;
      v12 = *(v11 + 1);
      v14 = &a1[direct field offset for WorldEdge.p2];
      swift_beginAccess();
      if (v14[16])
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v15.n128_u64[0] = v13;
      v15.n128_u64[1] = v12;
      v68 = v15;
      v65 = *v14;
      v16 = objc_opt_self();
      v17 = a1;
      v18 = [v16 magentaColor];
      sub_10011B7CC(v18, v68, v65);
    }

    if (a2)
    {
      v19 = &a2[direct field offset for WorldEdge.p1];
      swift_beginAccess();
      if (v19[16])
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v21 = *v19;
      v20 = *(v19 + 1);
      v22 = &a2[direct field offset for WorldEdge.p2];
      swift_beginAccess();
      if (v22[16])
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v23.n128_u64[0] = v21;
      v23.n128_u64[1] = v20;
      v69 = v23;
      v66 = *v22;
      v24 = objc_opt_self();
      v25 = a2;
      v26 = [v24 blueColor];
      sub_10011B7CC(v26, v69, v66);
    }
  }

  if (!a3)
  {
    return;
  }

  v27 = a3;
  v28 = [v8 standardUserDefaults];
  v29 = [v28 showFinalPlanes];

  if (v29)
  {
    v30 = *(v4 + 256);
    if (v30)
    {
      v31 = v30;
      SCNNode.removeAllChildren()();
    }

    v32 = direct field offset for WorldEdge.backingPlanes;
    swift_beginAccess();
    if (*(*&v27[v32] + 16))
    {
      static simd_float4x4.make(position:normalizedForward:)();
      v67 = v34;
      v70 = v33;
      v63 = v36;
      v64 = v35;
      v37 = direct field offset for WorldEdge.type;
      swift_beginAccess();
      v38 = v27[v37];
      if (v38 != 4)
      {
        v39 = sub_1001206CC(v38);
        v71 = 0x203A726F727265;
        v72 = 0xE700000000000000;
        if (a1)
        {
          v40 = direct field offset for WorldEdge.adVariance;
          swift_beginAccess();
          v41 = *&a1[v40];
        }

        else
        {
          v41 = 0;
        }

        v73 = v41;
        v74 = a1 == 0;
        sub_10000F974(&qword_1004A9DF0, &qword_1003DDCE8);
        v42._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v42);

        sub_10011ACC0(v39, 1, v71, v72, 3, v70, v67, v64, v63);

        if (*(*&v27[v32] + 16) != 2)
        {
LABEL_30:

          goto LABEL_31;
        }

        static simd_float4x4.make(position:normalizedForward:)();
        v43 = objc_opt_self();
        v44 = [v43 boxWithWidth:0.12 height:0.12 length:0.0 chamferRadius:0.0];
        v45 = [v43 boxWithWidth:0.001 height:0.001 length:0.05 chamferRadius:0.0];
        v46 = [v45 firstMaterial];
        if (v46)
        {
          v47 = v46;
          v48 = [v46 diffuse];

          v49 = objc_opt_self();
          v50 = [v49 redColor];
          [v48 setContents:v50];

          v51 = [v49 blackColor];
          if (v39 == v51 || (sub_100018630(0, &qword_1004AE0D0, NSObject_ptr), v52 = [v49 magentaColor], v53 = static NSObject.== infix(_:_:)(), v52, (v53 & 1) != 0))
          {
            [v44 setWidth:0.07];
            [v44 setHeight:0.07];
          }

          v54 = v44;
          v55 = [v54 firstMaterial];
          if (v55)
          {
            v56 = v55;
            v57 = [v55 diffuse];

            [v57 setContents:v39];
            v58 = [objc_allocWithZone(SCNNode) init];
            v59 = [objc_allocWithZone(SCNNode) init];
            SCNMatrix4.init(_:)();
            [v58 setTransform:&v71];
            simd_float4x4.forward.getter();
            static simd_float4x4.make(position:normalizedForward:)();
            SCNMatrix4.init(_:)();
            [v59 setTransform:&v71];
            [v58 setOpacity:0.9];
            [v58 setGeometry:v54];

            [v59 setGeometry:v45];
            v60 = *(v4 + 256);
            if (v60)
            {
              [v60 addChildNode:v58];
              v61 = *(v4 + 256);
              if (v61)
              {
                v62 = v61;
                [v62 addChildNode:v59];
              }
            }

            goto LABEL_30;
          }

LABEL_40:
          __break(1u);
          return;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_34;
  }

  v39 = v27;
LABEL_31:
}

char *sub_100117ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a5@<Q2>, __n128 a6@<Q3>, __n128 a7@<Q4>, __n128 a8@<Q5>)
{
  v10 = *(v8 + 152);
  v11 = *(v10 + 16);
  if (v11 == 0.0)
  {
    result = 0;
    v14 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v49 = 0.0;
    v51 = 1;
  }

  else
  {
    CGPoint.floats.getter();
    v13 = v12;

    v14 = 0.0;
    v62 = 0.0;
    v63 = 0.0;
    v61 = 0.0;
    v15 = 0.0;
    v16 = 0;
    v17 = -*&v11;
    v18 = 1;
    v19 = INFINITY;
LABEL_3:
    v59 = v15;
    v60 = v14;
    v20 = v19;
    v21 = (v10 + 64 + 40 * v16++);
    do
    {
      v23 = *(v21 - 4);
      v22 = *(v21 - 3);
      v25 = *(v21 - 2);
      v24 = *(v21 - 1);
      v15 = *v21;
      CGPoint.floats.getter();
      v27 = v26;
      CGPoint.floats.getter();
      if (qword_1004A0310 != -1)
      {
        v48 = v28;
        swift_once();
        v28 = v48;
      }

      v29 = vsub_f32(v28, v27);
      v30 = vmul_f32(v29, v29);
      v31 = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
      v32 = vrsqrte_f32(v31);
      v33 = vmul_f32(v32, vrsqrts_f32(v31, vmul_f32(v32, v32)));
      v34 = vmul_n_f32(v29, vmul_f32(v33, vrsqrts_f32(v31, vmul_f32(v33, v33))).f32[0]);
      v35 = vmul_f32(v34, v34);
      v35.i32[0] = vadd_f32(v35, vdup_lane_s32(v35, 1)).u32[0];
      v36 = vrsqrte_f32(v35.u32[0]);
      v37 = vmul_f32(v36, vrsqrts_f32(v35.u32[0], vmul_f32(v36, v36)));
      v38 = vmul_n_f32(v34, vmul_f32(v37, vrsqrts_f32(v35.u32[0], vmul_f32(v37, v37))).f32[0]);
      v39 = vsub_f32(v13, v27);
      v40 = vmul_f32(v39, v38);
      v41 = vadd_f32(v27, vmul_n_f32(v38, vadd_f32(v40, vdup_lane_s32(v40, 1)).f32[0]));
      v42 = vsub_f32(v13, v41);
      v19 = vaddv_f32(vmul_f32(v42, v42));
      v43 = vsub_f32(v13, v28);
      v44 = vaddv_f32(vmul_f32(v43, v43));
      v45 = vaddv_f32(vmul_f32(v39, v39)) < *&dword_1004D4EE8 || v44 < *&dword_1004D4EE8;
      if (v45 || v19 < *&dword_1004D4EE8 && (v46 = vmul_f32(v29, vsub_f32(v41, v27)), v47 = vadd_f32(vzip1_s32(v46, v30), vzip2_s32(v46, v30)), v47.f32[0] >= 0.0) && (vcge_f32(vdup_lane_s32(v47, 1), v47).u8[0] & 1) != 0)
      {
        if (v19 < v20)
        {
          v18 = 0;
          v14 = v23;
          v62 = v25;
          v63 = v22;
          v61 = v24;
          if (v17 + v16)
          {
            goto LABEL_3;
          }

          v49 = v15;
          goto LABEL_22;
        }
      }

      v21 += 5;
      ++v16;
    }

    while (v17 + v16 != 1);

    if (v18)
    {
      result = 0;
      v51 = 1;
      v49 = v59;
      v14 = v60;
      v52 = v62;
      v11 = v63;
      v53 = v61;
      goto LABEL_23;
    }

    v49 = v59;
    v14 = v60;
    v15 = v59;
LABEL_22:
    v52 = v62;
    v11 = v63;
    v53 = v61;
    v64[0] = v14;
    v64[1] = v63;
    v64[2] = v62;
    v64[3] = v61;
    v64[4] = v15;
    result = sub_100117DA8(v64, a1, a5, a6, a7, a8);
    v51 = 0;
  }

LABEL_23:
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v11;
  *(a2 + 24) = v52;
  *(a2 + 32) = v53;
  *(a2 + 40) = v49;
  *(a2 + 48) = v51;
  return result;
}

char *sub_100117DA8(double *a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v9 = *a1;
  v10 = a1[1];
  v11 = MeasureCore.shared.unsafeMutableAddressor();
  v12 = *v11;
  result = swift_beginAccess();
  v14 = *(v12 + 112);
  if (!v14)
  {
    __break(1u);
    goto LABEL_35;
  }

  result = swift_beginAccess();
  if (!*(v14 + 192))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  ADProcessor.transformer.getter();

  Transformer.viewToCameraNormalized.getter();

  *&_[16] = v88;
  *_ = v87;
  *&_[32] = v89;
  *&_[40] = v90;
  v95.x = v9;
  v95.y = v10;
  CGPointApplyAffineTransform(v95, _);
  CGPoint.floats.getter();
  ARFrame.getHitRay(cameraPoint:)();
  v15 = a1[2];
  v16 = a1[3];
  v17 = *v11;
  result = swift_beginAccess();
  v18 = *(v17 + 112);
  if (!v18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  result = swift_beginAccess();
  if (!*(v18 + 192))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  ADProcessor.transformer.getter();

  Transformer.viewToCameraNormalized.getter();
  v19 = v93;
  v20 = v94;

  *&_[16] = v92;
  *_ = v91;
  *&_[32] = v19;
  *&_[40] = v20;
  v96.x = v15;
  v96.y = v16;
  CGPointApplyAffineTransform(v96, _);
  CGPoint.floats.getter();
  ARFrame.getHitRay(cameraPoint:)();
  sub_100118DA4(_, a3, a4, a5, a6);
  if (_[32] & 1) != 0 || (v21 = *_, v22 = *&_[8], v74 = *&_[64], v75 = *&_[48], v73 = _[80], v23 = *&_[84], v24 = *&_[92], v25 = *&_[96], v71 = *&_[24], v72 = *&_[16], type metadata accessor for PlaneUtil(), v26 = static PlaneUtil.getIntersection(ray:plane:)(), (v28) || (v29 = v26, v30 = v27, v31 = static PlaneUtil.getIntersection(ray:plane:)(), (v34))
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v35._countAndFlagsBits = 0xD000000000000047;
    v35._object = 0x80000001004078C0;
    Log.default(_:isPrivate:)(v35, 0);
    return 0;
  }

  *v33.f32 = vsub_f32(v29, v31);
  v33.f32[2] = v30 - v32;
  v36 = vmulq_f32(v33, v33);
  *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
  *v36.f32 = vrsqrte_f32(v37);
  *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
  v38 = vmulq_n_f32(v33, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
  v70 = v23;
  if (fabsf(vmuls_lane_f32(0.0, v38, 2) + (v38.f32[1] + (0.0 * v38.f32[0]))) < 0.20791)
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    *_ = 0;
    *&_[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(93);
    v39._countAndFlagsBits = 0xD00000000000003BLL;
    v39._object = 0x80000001004079F0;
    String.append(_:)(v39);
    Float.write<A>(to:)();
    v40._countAndFlagsBits = 0x646E6520646E6120;
    v40._object = 0xED00002079622059;
    String.append(_:)(v40);
    Float.write<A>(to:)();
    v41._countAndFlagsBits = 0x6E6169726156202ELL;
    v41._object = 0xEF20736177206563;
    String.append(_:)(v41);
    Float.write<A>(to:)();
    Log.default(_:isPrivate:)(*_, 0);
  }

  createTransform(forward:normal:position:)();
  v42 = objc_allocWithZone(type metadata accessor for WorldEdge());
  v43 = WorldEdge.init(transform:p1:p2:type:adVariance:)();
  type metadata accessor for MeasureCamera();
  v44 = *(**(v7 + 80) + 144);

  v44(__src, v45);

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  v46 = *(**(v7 + 80) + 144);

  v46(__src, v47);

  memcpy(_, __src, sizeof(_));
  sub_100013C4C(_);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v76 = v48;
  CGPoint.floats.getter();
  v50 = vsub_f32(v76, v49);
  if (vaddv_f32(vmul_f32(v50, v50)) > 25.0 || (v51 = *(**(v7 + 80) + 144), v52 = , v51(v82, v52), , memcpy(v83, v82, sizeof(v83)), sub_100013C4C(v83), v53 = *(**(v7 + 80) + 144), v54 = , v53(v82, v54), , memcpy(__src, v82, sizeof(__src)), sub_100013C4C(__src), static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)(), v77 = v55, CGPoint.floats.getter(), v57 = vsub_f32(v77, v56), vaddv_f32(vmul_f32(v57, v57)) > 25.0))
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v58 = "ason: Edge type is planar";
    v59 = 0xD000000000000040;
LABEL_21:
    v60 = v58 | 0x8000000000000000;
LABEL_22:
    Log.default(_:isPrivate:)(*&v59, 0);

    return 0;
  }

  sub_10000F974(&qword_1004A6B08, &qword_1003DA5B0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1003D5730;
  *(v61 + 32) = v21;
  *(v61 + 40) = v22;
  *(v61 + 48) = v72;
  *(v61 + 56) = v71;
  *(v61 + 64) = 0;
  *(v61 + 80) = v75;
  *(v61 + 96) = v74;
  *(v61 + 112) = v73;
  v62 = sub_10011EE14(v61, v43, a3, a4, a5, a6);
  v64 = v63;
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (v62 == 2)
  {

    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v58 = "sfully refined a real edge";
    v59 = 0xD000000000000029;
    goto LABEL_21;
  }

  if (v62 == 4)
  {

    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v60 = 0x8000000100407910;
    v59 = 0xD000000000000026;
    goto LABEL_22;
  }

  v65 = direct field offset for WorldEdge.type;
  swift_beginAccess();
  v43[v65] = v62;
  v66 = direct field offset for WorldEdge.backingPlanes;
  swift_beginAccess();
  *&v43[v66] = v64;

  v67 = &v43[direct field offset for WorldEdge.edgePlanesMetrics];
  swift_beginAccess();
  *v67 = v70;
  *(v67 + 2) = v24;
  v68 = &v43[direct field offset for WorldEdge.adVariance];
  swift_beginAccess();
  *v68 = v25;
  if (qword_1004A0228 != -1)
  {
    swift_once();
  }

  v69._countAndFlagsBits = 0xD00000000000002ALL;
  v69._object = 0x8000000100407940;
  Log.default(_:isPrivate:)(v69, 0);
  return v43;
}

uint64_t sub_1001188A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001188C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_100118908@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A0308 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_10001D4C4(v2, qword_1004D4ED0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001189B8()
{
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  sub_10001D47C(&qword_1004A3DC8, &qword_1004A3DC0, &qword_1003D7F38, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100118A44(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_10000F974(&unk_1004A3D70, &qword_1003DA860);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_100118AD8()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100118B1C(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = 0uLL;
  if (*(a1 + 40))
  {
    v6 = 0;
    v7 = 1;
    v8 = 2139095040;
    v9 = 0uLL;
  }

  else
  {
    v38 = *a1;
    v39 = a1[1];
    v6 = *(a1 + 4);
    v10 = *(**(v3 + 120) + 144);

    v10(v40, v11);

    v12 = v40[0];
    v13 = v40[1];

    if (v12 && (v14 = COERCE_FLOAT32X2_T((*((swift_isaMask & *v12) + 0x200))()), v12, CGPoint.floats.getter(), v16 = v15, CGPoint.floats.getter(), v18 = v17, v19 = vsub_f32(v16, v17), v20 = vmul_f32(v19, v19), v20.i32[0] = vadd_f32(v20, vdup_lane_s32(v20, 1)).u32[0], v21 = vrsqrte_f32(v20.u32[0]), v22 = vmul_f32(v21, vrsqrts_f32(v20.u32[0], vmul_f32(v21, v21))), v23 = vmul_n_f32(v19, vmul_f32(v22, vrsqrts_f32(v20.u32[0], vmul_f32(v22, v22))).f32[0]), CGPoint.floats.getter(), v25 = v24, CGPoint.floats.getter(), v27 = v26, v28 = vsub_f32(v25, v26), v29 = vmul_f32(v28, v28), v29.i32[0] = vadd_f32(v29, vdup_lane_s32(v29, 1)).u32[0], v30 = vrsqrte_f32(v29.u32[0]), v31 = vmul_f32(v30, vrsqrts_f32(v29.u32[0], vmul_f32(v30, v30))), fabsf(vaddv_f32(vmul_f32(v23, vmul_n_f32(v28, vmul_f32(v31, vrsqrts_f32(v29.u32[0], vmul_f32(v31, v31))).f32[0])))) <= 0.3) && ((lineIntersection(line1P1:line1P2:line2P1:line2P2:)(), v33 > 0.0) && v32 < 1.0 || ((sub_10011D040(v25, v16, v18), v35 = v34, sub_10011D040(v27, v16, v18), v36 >= v35) ? (v37 = v35) : (v37 = v36), v37 < 64.0)))
    {
      sub_10011D040(v14, v25, v27);
      v7 = 0;
      v5 = v38;
      v9 = v39;
    }

    else
    {
      v6 = 0;
      v7 = 1;
      v8 = 2139095040;
      v9 = 0uLL;
      v5 = 0uLL;
    }
  }

  *a3 = v5;
  *(a3 + 16) = v9;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 44) = v8;
}

void sub_100118DA4(uint64_t a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>)
{
  CGPoint.floats.getter();
  v9 = v8;
  CGPoint.floats.getter();
  v11 = v10;
  v12 = vsub_f32(v9, v10);
  v284 = vmul_f32(v12, v12);
  v13 = vadd_f32(v284, vdup_lane_s32(v284, 1)).u32[0];
  v14 = vrsqrte_f32(v13);
  v15 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14)));
  v16 = vmul_n_f32(v12, vmul_f32(v15, vrsqrts_f32(v13, vmul_f32(v15, v15))).f32[0]);
  sub_10000F974(&qword_1004A9E10, &qword_1003DDCF8);
  v17 = swift_allocObject();
  v18 = j__malloc_size(v17);
  v19 = v18 - 32;
  if (v18 < 32)
  {
    v19 = v18 - 25;
  }

  *(v17 + 16) = 15;
  *(v17 + 24) = 2 * (v19 >> 3);
  *(v17 + 32) = xmmword_1003D5360;
  *(v17 + 48) = xmmword_1003DD9A0;
  *(v17 + 64) = xmmword_1003DD9B0;
  *(v17 + 80) = xmmword_1003DD9C0;
  *(v17 + 96) = xmmword_1003DD9D0;
  *(v17 + 112) = xmmword_1003DD9E0;
  *(v17 + 128) = xmmword_1003DD9F0;
  *(v17 + 144) = 15;
  v20 = vmul_n_f32(v16, sqrtf(vaddv_f32(v284)) * 0.066667);
  *&v324 = _swiftEmptyArrayStorage;
  sub_1000A26F4(0, 15, 0);
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  do
  {
    if (v21 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_169;
    }

    v23 = *(v17 + 8 * v21 + 32);
    *&v324 = v22;
    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      sub_1000A26F4((v24 > 1), v25 + 1, 1);
      v22 = v324;
    }

    ++v21;
    *(v22 + 2) = v25 + 1;
    *&v22[v25 + 4] = vadd_f32(v11, vmul_n_f32(v20, v23));
  }

  while (v21 != 15);

  v261 = a3;
  v26 = *(v22 + 2);
  if (v26)
  {
    *&v324 = _swiftEmptyArrayStorage;
    sub_1000A26F4(0, v26, 0);
    v27 = 0;
    v28 = _swiftEmptyArrayStorage;
    v29 = vrev64_s32(vmul_f32(v16, vdup_n_s32(0x42480000u)));
    while (v27 < *(v22 + 2))
    {
      v30 = *&v22[v27 + 4];
      *&v324 = v28;
      v32 = *(v28 + 2);
      v31 = *(v28 + 3);
      *&v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_1000A26F4((v31 > 1), v32 + 1, 1);
        v28 = v324;
      }

      ++v27;
      LODWORD(v34) = vsub_f32(v30, v29).u32[0];
      HIDWORD(v34) = vadd_f32(v30, v29).i32[1];
      v28[2] = v33;
      v28[v32 + 4] = v34;
      if (v26 == v27)
      {
        goto LABEL_16;
      }
    }

LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v35 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage[2];
  if (v33 != 0.0)
  {
LABEL_16:
    v35 = _swiftEmptyArrayStorage;
    v36 = 32;
    MeasureCore.shared.unsafeMutableAddressor();
    do
    {

      MeasureCore.edgeHitTest(screenPoint:frame:orientation:planeTypes:useHyperLocalStrategy:)();

      if (*(&v322 + 1))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100068304(0, *(v35 + 2) + 1, 1, v35);
        }

        v45 = *(v35 + 2);
        v44 = *(v35 + 3);
        if (v45 >= v44 >> 1)
        {
          v35 = sub_100068304((v44 > 1), v45 + 1, 1, v35);
        }

        v328 = v320;
        v329 = v321;
        v330 = v322;
        v331 = v323;
        v326 = v318;
        v327 = v319;
        v37 = v316;
        v324 = v316;
        v325 = v317;
        *(v35 + 2) = v45 + 1;
        v38 = &v35[16 * v45];
        v39 = v325;
        v40 = v327;
        *(v38 + 4) = v326;
        *(v38 + 5) = v40;
        *(v38 + 3) = v39;
        v41 = v328;
        v42 = v329;
        v43 = v330;
        *(v38 + 36) = v331;
        *(v38 + 7) = v42;
        *(v38 + 8) = v43;
        *(v38 + 6) = v41;
        *(v38 + 2) = v37;
      }

      v36 += 8;
      --*&v33;
    }

    while (v33 != 0.0);
  }

  v46 = *(v35 + 2);
  if (v46)
  {
    *&v299 = _swiftEmptyArrayStorage;
    sub_1000A2654(0, v46, 0);
    v47 = _swiftEmptyArrayStorage;
    v48 = v46 - 1;
    for (i = 4; ; i += 16)
    {
      v51 = *&v35[i + 4];
      v50 = *&v35[i + 6];
      v52 = *&v35[i];
      v325 = *&v35[i + 2];
      v326 = v51;
      v327 = v50;
      v54 = *&v35[i + 10];
      v53 = *&v35[i + 12];
      v55 = LODWORD(v35[i + 14]);
      v328 = *&v35[i + 8];
      v329 = v54;
      v324 = v52;
      v331 = v55;
      v330 = v53;
      simd_float4x4.position.getter();
      v285 = v56;
      sub_100103724(&v324, &v308);
      *&v299 = v47;
      v58 = *(v47 + 2);
      v57 = *(v47 + 3);
      if (v58 >= v57 >> 1)
      {
        sub_1000A2654((v57 > 1), v58 + 1, 1);
        v47 = v299;
      }

      v59 = *(&v330 + 1);
      *(v47 + 2) = v58 + 1;
      v60 = &v47[4 * v58];
      *(v60 + 2) = v285;
      *(v60 + 6) = v59;
      if (!v48)
      {
        break;
      }

      --v48;
    }

    if (v26)
    {
LABEL_31:
      *&v324 = _swiftEmptyArrayStorage;
      sub_1000A26F4(0, v26, 0);
      v61 = 0;
      v62 = v324;
      v63 = vrev64_s32(vmul_f32(v16, vdup_n_s32(0x42480000u)));
      while (v61 < *(v22 + 2))
      {
        v64 = *&v22[v61 + 4];
        *&v324 = v62;
        v66 = *(v62 + 16);
        v65 = *(v62 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_1000A26F4((v65 > 1), v66 + 1, 1);
          v62 = v324;
        }

        ++v61;
        LODWORD(v67) = vadd_f32(v64, v63).u32[0];
        HIDWORD(v67) = vsub_f32(v64, v63).i32[1];
        *(v62 + 16) = v66 + 1;
        *(v62 + 8 * v66 + 32) = v67;
        if (v26 == v61)
        {

          v68 = *(v62 + 16);
          if (v68 == 0.0)
          {
            goto LABEL_55;
          }

          goto LABEL_37;
        }
      }

LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }
  }

  else
  {

    v47 = _swiftEmptyArrayStorage;
    if (v26)
    {
      goto LABEL_31;
    }
  }

  v68 = _swiftEmptyArrayStorage[2];
  if (v68 == 0.0)
  {
LABEL_55:

    v70 = _swiftEmptyArrayStorage;
    v81 = *&_swiftEmptyArrayStorage[2];
    if (!v81)
    {
LABEL_56:

      v82 = _swiftEmptyArrayStorage;
      goto LABEL_57;
    }
  }

  else
  {
LABEL_37:
    MeasureCore.shared.unsafeMutableAddressor();
    v69 = *&v68 - 1;
    v70 = _swiftEmptyArrayStorage;
    for (j = 32; ; j += 8)
    {

      MeasureCore.edgeHitTest(screenPoint:frame:orientation:planeTypes:useHyperLocalStrategy:)();
      v312 = v328;
      v313 = v329;
      v314 = v330;
      v315 = v331;
      v308 = v324;
      v309 = v325;
      v310 = v326;
      v311 = v327;

      if (*(&v330 + 1))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_100068304(0, *(v70 + 2) + 1, 1, v70);
        }

        v73 = *(v70 + 2);
        v72 = *(v70 + 3);
        if (v73 >= v72 >> 1)
        {
          v70 = sub_100068304((v72 > 1), v73 + 1, 1, v70);
        }

        v303 = v312;
        v304 = v313;
        v305 = v314;
        v306 = v315;
        v301 = v310;
        v302 = v311;
        v74 = v308;
        v299 = v308;
        v300 = v309;
        *(v70 + 2) = v73 + 1;
        v75 = &v70[16 * v73];
        v76 = v300;
        v77 = v302;
        *(v75 + 4) = v301;
        *(v75 + 5) = v77;
        *(v75 + 3) = v76;
        v78 = v303;
        v79 = v304;
        v80 = v305;
        *(v75 + 36) = v306;
        *(v75 + 7) = v79;
        *(v75 + 8) = v80;
        *(v75 + 6) = v78;
        *(v75 + 2) = v74;
      }

      if (!v69)
      {
        break;
      }

      --v69;
    }

    v81 = *(v70 + 2);
    if (!v81)
    {
      goto LABEL_56;
    }
  }

  v307 = _swiftEmptyArrayStorage;
  sub_1000A2654(0, v81, 0);
  v82 = _swiftEmptyArrayStorage;
  v83 = v81 - 1;
  for (k = 4; ; k += 16)
  {
    v86 = *&v70[k + 4];
    v85 = *&v70[k + 6];
    v87 = *&v70[k];
    v309 = *&v70[k + 2];
    v310 = v86;
    v311 = v85;
    v89 = *&v70[k + 10];
    v88 = *&v70[k + 12];
    v90 = LODWORD(v70[k + 14]);
    v312 = *&v70[k + 8];
    v313 = v89;
    v308 = v87;
    v315 = v90;
    v314 = v88;
    simd_float4x4.position.getter();
    v293 = v91;
    sub_100103724(&v308, &v299);
    v307 = v82;
    v93 = *(v82 + 2);
    v92 = *(v82 + 3);
    if (v93 >= v92 >> 1)
    {
      sub_1000A2654((v92 > 1), v93 + 1, 1);
      v82 = v307;
    }

    v94 = *(&v314 + 1);
    *(v82 + 2) = v93 + 1;
    v95 = &v82[4 * v93];
    *(v95 + 2) = v293;
    *(v95 + 6) = v94;
    if (!v83)
    {
      break;
    }

    --v83;
  }

LABEL_57:
  sub_10011D0D0(v47);
  v97 = v96;

  sub_10011D0D0(v82);
  v99 = v98;

  v100 = objc_opt_self();
  v101 = [v100 standardUserDefaults];
  v102 = [v101 showRefinementPlanes];

  if (v102)
  {
    v103 = *(v282 + 256);
    if (v103)
    {
      v104 = v103;
      SCNNode.removeAllChildren()();
    }

    sub_10000F974(&qword_1004A9E18, &qword_1003DDD00);
    v105 = swift_allocObject();
    *(v105 + 32) = v97;
    *(v105 + 40) = v99;
    swift_bridgeObjectRetain_n();

    if (v97)
    {
      v106 = *(v97 + 16);
      if (v106)
      {
        v107 = 0;
        v108 = v97 + 48;
        while (v107 < v106)
        {
          ++v107;
          v294 = *(v108 - 16);

          sub_10011A740(v109, v282, v294);

          v106 = *(v97 + 16);
          v108 += 32;
          if (v107 == v106)
          {
            goto LABEL_65;
          }
        }

        goto LABEL_175;
      }
    }

LABEL_65:
    v110 = *(v105 + 40);

    if (v110)
    {
      v111 = *(v110 + 16);
      if (v111)
      {
        v112 = 0;
        v113 = v110 + 48;
        while (v112 < v111)
        {
          ++v112;
          v295 = *(v113 - 16);

          sub_10011A740(v114, v282, v295);

          v111 = *(v110 + 16);
          v113 += 32;
          if (v112 == v111)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_175;
      }
    }

LABEL_70:
    swift_setDeallocating();
    sub_10000F974(&qword_1004A9E20, &qword_1003DDD08);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  sub_10011D0D0(v97);
  v116 = v115;

  sub_10011D0D0(v99);
  v118 = v117;

  v119 = [v100 standardUserDefaults];
  v120 = [v119 showRefinementPlanes];

  if (v120)
  {
    v121 = [v100 standardUserDefaults];
    v122 = [v121 showFilteredRefinementPlanes];

    if (v122)
    {
      sub_10000F974(&qword_1004A9E18, &qword_1003DDD00);
      v123 = swift_allocObject();
      *(v123 + 32) = v116;
      *(v123 + 40) = v118;
      swift_bridgeObjectRetain_n();

      if (v116)
      {
        v124 = *(v116 + 16);
        if (v124)
        {
          v125 = 0;
          v126 = v116 + 48;
          while (v125 < v124)
          {
            ++v125;
            v296 = *(v126 - 16);

            sub_10011B23C(v127, v282, v296);

            v124 = *(v116 + 16);
            v126 += 32;
            if (v125 == v124)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_176;
        }
      }

LABEL_78:
      v128 = *(v123 + 40);

      if (v128)
      {
        v129 = *(v128 + 16);
        if (v129)
        {
          v130 = 0;
          v131 = v128 + 48;
          while (v130 < v129)
          {
            ++v130;
            v297 = *(v131 - 16);

            sub_10011B23C(v132, v282, v297);

            v129 = *(v128 + 16);
            v131 += 32;
            if (v130 == v129)
            {
              goto LABEL_83;
            }
          }

          goto LABEL_176;
        }
      }

LABEL_83:
      swift_setDeallocating();
      sub_10000F974(&qword_1004A9E20, &qword_1003DDD08);
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }
  }

  v133 = sub_10011D6C8(v116, v118, a4, a5, a6, a7);
  v135 = v134;

  v136 = v133[1].i64[0];
  v298 = v133;
  if (v136)
  {
    v137 = 0;
    v138 = v133 + 3;
    v265 = v136 - 1;
    v275 = _swiftEmptyArrayStorage;
    v268 = v133 + 3;
LABEL_86:
    v139 = &v138[2 * v137];
    v140 = v137;
    while (v140 < v133[1].i64[0])
    {
      v276 = v139[-1];
      v141 = v139->i64[0];
      v137 = v140 + 1;
      v142 = *(*v139->i64[0] + 160);

      v144 = v142(v143);
      [v144 transform];

      simd_float4x4.up.getter();
      v146 = vmulq_f32(v145, v145);
      *&v147 = v146.f32[2] + vaddv_f32(*v146.f32);
      *v146.f32 = vrsqrte_f32(v147);
      *v146.f32 = vmul_f32(*v146.f32, vrsqrts_f32(v147, vmul_f32(*v146.f32, *v146.f32)));
      v148 = vmulq_n_f32(v145, vmul_f32(*v146.f32, vrsqrts_f32(v147, vmul_f32(*v146.f32, *v146.f32))).f32[0]);
      if (fabsf(vmuls_lane_f32(0.0, v148, 2) + (v148.f32[1] + (0.0 * v148.f32[0]))) < 0.20791)
      {
        v149 = v275;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v308 = v275;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000A2654(0, v275[1].i64[0] + 1, 1);
          v149 = v308;
        }

        v151 = v276;
        v153 = v149[1].u64[0];
        v152 = v149[1].u64[1];
        if (v153 >= v152 >> 1)
        {
          sub_1000A2654((v152 > 1), v153 + 1, 1);
          v151 = v276;
          v149 = v308;
        }

        v149[1].i64[0] = v153 + 1;
        v275 = v149;
        v154 = &v149[2 * v153];
        v154[2] = v151;
        v154[3].i64[0] = v141;
        v138 = v268;
        v133 = v298;
        if (v265 != v140)
        {
          goto LABEL_86;
        }

LABEL_96:
        v155 = 0;
        v156 = v133 + 3;
        v269 = _swiftEmptyArrayStorage;
        v262 = v133 + 3;
LABEL_97:
        v157 = &v156[2 * v155];
        v158 = v155;
        while (v158 < v133[1].i64[0])
        {
          v277 = v157[-1];
          v159 = v157->i64[0];
          v155 = v158 + 1;
          v160 = *(*v157->i64[0] + 160);

          v162 = v160(v161);
          [v162 transform];

          simd_float4x4.up.getter();
          v164 = vmulq_f32(v163, v163);
          *&v165 = v164.f32[2] + vaddv_f32(*v164.f32);
          *v164.f32 = vrsqrte_f32(v165);
          *v164.f32 = vmul_f32(*v164.f32, vrsqrts_f32(v165, vmul_f32(*v164.f32, *v164.f32)));
          v166 = vmulq_n_f32(v163, vmul_f32(*v164.f32, vrsqrts_f32(v165, vmul_f32(*v164.f32, *v164.f32))).f32[0]);
          v167 = fabsf(vmuls_lane_f32(0.0, v166, 2) + (v166.f32[1] + (0.0 * v166.f32[0])));
          if (v167 > 1.0)
          {
            v167 = 1.0;
          }

          if ((acosf(v167) * 57.296) < 12.0)
          {
            v168 = v269;
            v169 = swift_isUniquelyReferenced_nonNull_native();
            *&v308 = v269;
            if ((v169 & 1) == 0)
            {
              sub_1000A2654(0, v269[1].i64[0] + 1, 1);
              v168 = v308;
            }

            v170 = v277;
            v172 = v168[1].u64[0];
            v171 = v168[1].u64[1];
            v173 = v168;
            if (v172 >= v171 >> 1)
            {
              sub_1000A2654((v171 > 1), v172 + 1, 1);
              v170 = v277;
              v173 = v308;
            }

            v173[1].i64[0] = v172 + 1;
            v269 = v173;
            v174 = &v173[2 * v172];
            v174[2] = v170;
            v174[3].i64[0] = v159;
            v133 = v298;
            v156 = v262;
            if (v265 != v158)
            {
              goto LABEL_97;
            }

            goto LABEL_111;
          }

          v157 += 2;
          ++v158;
          v133 = v298;
          if (v136 == v155)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_172;
      }

      v139 += 2;
      ++v140;
      v133 = v298;
      if (v136 == v137)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_171;
  }

  v275 = _swiftEmptyArrayStorage;
  v269 = _swiftEmptyArrayStorage;
LABEL_111:
  v175 = *(v135 + 16);
  if (v175)
  {
    v176 = 0;
    v177 = v135 + 48;
    v260 = v175 - 1;
    v266 = _swiftEmptyArrayStorage;
LABEL_113:
    v178 = (v177 + 32 * v176);
    v179 = v176;
    while (v179 < *(v135 + 16))
    {
      v278 = *(v178 - 1);
      v180 = *v178;
      v176 = v179 + 1;
      v181 = *(**v178 + 160);

      v183 = v181(v182);
      [v183 transform];

      simd_float4x4.up.getter();
      v185 = vmulq_f32(v184, v184);
      *&v186 = v185.f32[2] + vaddv_f32(*v185.f32);
      *v185.f32 = vrsqrte_f32(v186);
      *v185.f32 = vmul_f32(*v185.f32, vrsqrts_f32(v186, vmul_f32(*v185.f32, *v185.f32)));
      v187 = vmulq_n_f32(v184, vmul_f32(*v185.f32, vrsqrts_f32(v186, vmul_f32(*v185.f32, *v185.f32))).f32[0]);
      if (fabsf(vmuls_lane_f32(0.0, v187, 2) + (v187.f32[1] + (0.0 * v187.f32[0]))) < 0.20791)
      {
        v188 = v266;
        v189 = swift_isUniquelyReferenced_nonNull_native();
        *&v308 = v266;
        if ((v189 & 1) == 0)
        {
          sub_1000A2654(0, *(v266 + 2) + 1, 1);
          v188 = v308;
        }

        v190 = v278;
        v192 = *(v188 + 2);
        v191 = *(v188 + 3);
        if (v192 >= v191 >> 1)
        {
          sub_1000A2654((v191 > 1), v192 + 1, 1);
          v190 = v278;
          v188 = v308;
        }

        *(v188 + 2) = v192 + 1;
        v266 = v188;
        v193 = &v188[4 * v192];
        *(v193 + 2) = v190;
        *(v193 + 6) = v180;
        v177 = v135 + 48;
        if (v260 != v179)
        {
          goto LABEL_113;
        }

LABEL_123:
        v194 = 0;
        v195 = v135 + 48;
        v196 = _swiftEmptyArrayStorage;
LABEL_124:
        v263 = v196;
        v197 = (v195 + 32 * v194);
        v198 = v194;
        while (v198 < *(v135 + 16))
        {
          v279 = *(v197 - 1);
          v199 = *v197;
          v194 = v198 + 1;
          v200 = *(**v197 + 160);

          v202 = v200(v201);
          [v202 transform];

          simd_float4x4.up.getter();
          v204 = vmulq_f32(v203, v203);
          *&v205 = v204.f32[2] + vaddv_f32(*v204.f32);
          *v204.f32 = vrsqrte_f32(v205);
          *v204.f32 = vmul_f32(*v204.f32, vrsqrts_f32(v205, vmul_f32(*v204.f32, *v204.f32)));
          v206 = vmulq_n_f32(v203, vmul_f32(*v204.f32, vrsqrts_f32(v205, vmul_f32(*v204.f32, *v204.f32))).f32[0]);
          v207 = fabsf(vmuls_lane_f32(0.0, v206, 2) + (v206.f32[1] + (0.0 * v206.f32[0])));
          if (v207 > 1.0)
          {
            v207 = 1.0;
          }

          if ((acosf(v207) * 57.296) < 12.0)
          {
            v208 = swift_isUniquelyReferenced_nonNull_native();
            v196 = v263;
            *&v308 = v263;
            if ((v208 & 1) == 0)
            {
              sub_1000A2654(0, *(v263 + 2) + 1, 1);
              v196 = v308;
            }

            v209 = v279;
            v211 = *(v196 + 2);
            v210 = *(v196 + 3);
            if (v211 >= v210 >> 1)
            {
              sub_1000A2654((v210 > 1), v211 + 1, 1);
              v209 = v279;
              v196 = v308;
            }

            *(v196 + 2) = v211 + 1;
            v212 = &v196[4 * v211];
            *(v212 + 2) = v209;
            *(v212 + 6) = v199;
            v195 = v135 + 48;
            if (v260 == v198)
            {
              v213 = v266;
              goto LABEL_138;
            }

            goto LABEL_124;
          }

          v197 += 4;
          ++v198;
          if (v175 == v194)
          {
            v213 = v266;
            v196 = v263;
            goto LABEL_138;
          }
        }

        goto LABEL_174;
      }

      v178 += 4;
      ++v179;
      if (v175 == v176)
      {
        goto LABEL_123;
      }
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    return;
  }

  v213 = _swiftEmptyArrayStorage;
  v196 = _swiftEmptyArrayStorage;
LABEL_138:
  v214 = *(v196 + 2);
  if (v214 <= 3)
  {

    v219 = v213[1].u64[0];
    if (v219 < 4)
    {

      v280 = 0u;
      v267 = 1;
      v217 = 0.0;
      v218 = 0x2000000;
      v264 = 0u;
    }

    else
    {
      v281 = sub_10011DF14(v213);
      *&v308 = _swiftEmptyArrayStorage;
      sub_1000A2570(0, v219, 0);
      v220 = 3;
      v221 = v308;
      v222 = v219;
      do
      {
        v223 = *(*v213[v220].i64[0] + 160);

        v225 = v223(v224);
        [v225 transform];

        simd_float4x4.up.getter();
        *&v308 = v221;
        v228 = *(v221 + 16);
        v227 = *(v221 + 24);
        if (v228 >= v227 >> 1)
        {
          v287 = v226;
          sub_1000A2570((v227 > 1), v228 + 1, 1);
          v226 = v287;
          v221 = v308;
        }

        *(v221 + 16) = v228 + 1;
        *(v221 + 16 * v228 + 32) = v226;
        v220 += 2;
        --v222;
      }

      while (v222);

      static SIMD3<>.average(_:)();
      v288 = v229;

      v230 = vmulq_f32(v288, v288);
      *&v231 = v230.f32[2] + vaddv_f32(*v230.f32);
      *v230.f32 = vrsqrte_f32(v231);
      *v230.f32 = vmul_f32(*v230.f32, vrsqrts_f32(v231, vmul_f32(*v230.f32, *v230.f32)));
      *v230.f32 = vmul_f32(*v230.f32, vrsqrts_f32(v231, vmul_f32(*v230.f32, *v230.f32)));
      v230.i64[1] = v230.i64[0];
      sub_10011E194(&v299, v281, vtrn2q_s32(vrev64q_s32(vmulq_f32(v288, v230)), 0));
      v218 = 0;
      v264 = v300;
      v280 = v299;
      v267 = v301;
      v217 = v219 / 15.0;
    }
  }

  else
  {
    v215 = v196;

    v286 = sub_10011DF14(v215);

    v216 = SIMD3<>.up.unsafeMutableAddressor();
    sub_10011E194(&v299, v286, *v216);
    v264 = v300;
    v280 = v299;
    v267 = v301;
    v217 = v214 / 15.0;
    v218 = 0x1000000;
  }

  v232 = v269[1].u64[0];
  if (v232 < 4)
  {

    v240 = v275[1].u64[0];
    if (v240 < 4)
    {

      v283 = 0u;
      v290 = 0u;
      v234 = 1;
      v237 = 0.0;
      v236 = 2139095040;
      v238 = 0x20000;
      v239 = *(v135 + 16);
      if (!v239)
      {
LABEL_161:

        v250 = _swiftEmptyArrayStorage;
        goto LABEL_162;
      }
    }

    else
    {
      v270 = sub_10011DF14(v275);
      *&v308 = _swiftEmptyArrayStorage;
      sub_1000A2570(0, v240, 0);
      v241 = 3;
      v242 = v308;
      v238 = v240;
      do
      {
        v243 = *(*v275[v241].i64[0] + 160);

        v245 = v243(v244);
        [v245 transform];

        simd_float4x4.up.getter();
        *&v308 = v242;
        v248 = *(v242 + 16);
        v247 = *(v242 + 24);
        if (v248 >= v247 >> 1)
        {
          v291 = v246;
          sub_1000A2570((v247 > 1), v248 + 1, 1);
          v246 = v291;
          v242 = v308;
        }

        *(v242 + 16) = v248 + 1;
        *(v242 + 16 * v248 + 32) = v246;
        v241 += 2;
        --v238;
      }

      while (v238);
      static SIMD3<>.average(_:)();
      v292 = v251;

      v252 = vmulq_f32(v292, v292);
      *&v253 = v252.f32[2] + vaddv_f32(*v252.f32);
      *v252.f32 = vrsqrte_f32(v253);
      *v252.f32 = vmul_f32(*v252.f32, vrsqrts_f32(v253, vmul_f32(*v252.f32, *v252.f32)));
      *v252.f32 = vmul_f32(*v252.f32, vrsqrts_f32(v253, vmul_f32(*v252.f32, *v252.f32)));
      v252.i64[1] = v252.i64[0];
      sub_10011E194(&v308, v270, vtrn2q_s32(vrev64q_s32(vmulq_f32(v292, v252)), 0));
      v283 = v309;
      v290 = v308;
      v234 = v310;
      sub_10011E310(v275);
      v236 = v254;

      v237 = v240 / 15.0;
      v239 = *(v135 + 16);
      if (!v239)
      {
        goto LABEL_161;
      }
    }
  }

  else
  {

    v289 = sub_10011DF14(v269);
    v233 = SIMD3<>.up.unsafeMutableAddressor();
    sub_10011E194(&v308, v289, *v233);
    v283 = v309;
    v290 = v308;
    v234 = v310;
    sub_10011E310(v269);
    v236 = v235;

    v237 = v232 / 15.0;
    v238 = 0x10000;
    v239 = *(v135 + 16);
    if (!v239)
    {
      goto LABEL_161;
    }
  }

  v307 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v249 = 48;
  do
  {

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v249 += 32;
    --v239;
  }

  while (v239);

  v250 = v307;
LABEL_162:
  v255 = sub_10011E810(v250);

  v256 = v298[1].i64[0];
  if (v256)
  {
    v307 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v257 = 48;
    do
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v257 += 32;
      --v256;
    }

    while (v256);

    v258 = v307;
  }

  else
  {

    v258 = _swiftEmptyArrayStorage;
  }

  v259 = sub_10011E810(v258);

  *v261 = v290;
  *(v261 + 16) = v283;
  *(v261 + 32) = v234;
  *(v261 + 48) = v280;
  *(v261 + 64) = v264;
  *(v261 + 80) = v267;
  *(v261 + 84) = v259 | (v255 << 8) | v238 | v218 | (LODWORD(v237) << 32);
  *(v261 + 92) = v217;
  *(v261 + 96) = v236;
}

void sub_10011A740(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(*a1 + 160);
  v6 = v5();
  [v6 transform];

  simd_float4x4.up.getter();
  v7 = static simd_float4x4.make(position:normalizedForward:)();
  v8 = (v5)(v7);
  [v8 transform];
  v50 = v9;
  v48 = v11;
  v49 = v10;

  v12 = simd_float4x4.up.getter();
  v14 = vmulq_f32(v13, v13);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  if (fabsf(vmuls_lane_f32(0.0, v16, 2) + (v16.f32[1] + (0.0 * v16.f32[0]))) >= 0.20791)
  {
    v18 = (v5)(v12);
    [v18 transform];
    v50 = v19;
    v48 = v21;
    v49 = v20;

    simd_float4x4.up.getter();
    v23 = vmulq_f32(v22, v22);
    *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
    *v23.f32 = vrsqrte_f32(v24);
    *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
    v25 = vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
    v26 = fabsf(vmuls_lane_f32(0.0, v25, 2) + (v25.f32[1] + (0.0 * v25.f32[0])));
    if (v26 > 1.0)
    {
      v26 = 1.0;
    }

    v17 = dbl_1003DDA00[(acosf(v26) * 57.296) < 12.0];
  }

  else
  {
    v17 = 0.9;
  }

  v27 = sub_10011D660(a1);
  v28 = objc_opt_self();
  v29 = [v28 boxWithWidth:0.04 height:0.04 length:0.0 chamferRadius:0.0];
  v30 = [v28 boxWithWidth:0.001 height:0.001 length:0.05 chamferRadius:0.0];
  v31 = [v30 firstMaterial];
  if (!v31)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = [v31 diffuse];

  v34 = objc_opt_self();
  v35 = [v34 redColor];
  [v33 setContents:v35];

  v36 = [v34 blackColor];
  if (v27 == v36 || (sub_100018630(0, &qword_1004AE0D0, NSObject_ptr), v37 = [v34 magentaColor], v38 = static NSObject.== infix(_:_:)(), v37, (v38 & 1) != 0))
  {
    [v29 setWidth:{0.07, v48, v49, v50}];
    [v29 setHeight:0.07];
  }

  v39 = v29;
  v40 = [v39 firstMaterial];
  if (!v40)
  {
    goto LABEL_16;
  }

  v41 = v40;
  v42 = [v40 diffuse];

  [v42 setContents:v27];
  v43 = [objc_allocWithZone(SCNNode) init];
  v44 = [objc_allocWithZone(SCNNode) init];
  SCNMatrix4.init(_:)();
  [v43 setTransform:v51];
  simd_float4x4.forward.getter();
  static simd_float4x4.make(position:normalizedForward:)();
  SCNMatrix4.init(_:)();
  [v44 setTransform:v51];
  [v43 setOpacity:v17];
  [v43 setGeometry:v39];

  [v44 setGeometry:v30];
  v45 = *(a2 + 256);
  if (v45)
  {
    [v45 addChildNode:v43];
    v46 = *(a2 + 256);
    if (v46)
    {
      v47 = v46;
      [v47 addChildNode:v44];
    }
  }
}

void sub_10011ACC0(id a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v10 = v9;
  v48 = a3;
  v14 = a5 * 0.04;
  v15 = objc_opt_self();
  v16 = [v15 boxWithWidth:v14 height:v14 length:0.0 chamferRadius:0.0];
  v17 = [v15 boxWithWidth:0.001 height:0.001 length:0.05 chamferRadius:0.0];
  v18 = [v17 firstMaterial];
  if (!v18)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = [v18 diffuse];

  v21 = objc_opt_self();
  v22 = [v21 redColor];
  [v20 setContents:v22];

  v23 = [v21 blackColor];
  if (v23 == a1 || (sub_100018630(0, &qword_1004AE0D0, NSObject_ptr), v24 = [v21 magentaColor], v25 = static NSObject.== infix(_:_:)(), v24, (v25 & 1) != 0))
  {
    [v16 setWidth:{0.07, v48}];
    [v16 setHeight:0.07];
  }

  v50 = v10;
  v26 = v16;
  v27 = [v26 firstMaterial];
  if (!v27)
  {
    goto LABEL_17;
  }

  v28 = v27;
  v29 = [v27 diffuse];

  [v29 setContents:a1];
  v30 = [objc_allocWithZone(SCNNode) init];
  v31 = [objc_allocWithZone(SCNNode) init];
  SCNMatrix4.init(_:)();
  [v30 setTransform:v51];
  simd_float4x4.forward.getter();
  static simd_float4x4.make(position:normalizedForward:)();
  SCNMatrix4.init(_:)();
  [v31 setTransform:v51];
  v32 = 0.4;
  if (a2)
  {
    v32 = 0.9;
  }

  [v30 setOpacity:{v32, v48}];
  [v30 setGeometry:v26];

  [v31 setGeometry:v17];
  if (a4)
  {
    v51[0] = v49;
    v51[1] = a4;

    v33 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v34 = [objc_opt_self() textWithString:v33 extrusionDepth:0.1];
    swift_unknownObjectRelease();
    v35 = [objc_opt_self() systemFontOfSize:1.0];
    [v34 setFont:v35];

    [v34 setFlatness:0.1];
    v36 = v34;
    v37 = [v36 firstMaterial];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 diffuse];

      v40 = [v21 whiteColor];
      [v39 setContents:v40];
    }

    v41 = [objc_opt_self() nodeWithGeometry:v36];

    v52 = SCNVector3.init(_:_:_:)(0.01, 0.01, 0.01);
    [v41 setScale:{*&v52.x, *&v52.y, *&v52.z}];
    *&v42 = SCNVector3Zero.x;
    *&v43 = SCNVector3Zero.y;
    *&v44 = SCNVector3Zero.z;
    [v41 setPosition:{v42, v43, v44}];
    [v30 addChildNode:v41];
  }

  v45 = *(v50 + 256);
  if (v45)
  {
    [v45 addChildNode:v30];
    v46 = *(v50 + 256);
    if (v46)
    {
      v47 = v46;
      [v47 addChildNode:v31];
    }
  }
}

void sub_10011B23C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(*a1 + 160);
  v4 = v3();
  [v4 transform];

  simd_float4x4.up.getter();
  v5 = static simd_float4x4.make(position:normalizedForward:)();
  v6 = (v3)(v5);
  [v6 transform];

  v7 = simd_float4x4.up.getter();
  v9 = vmulq_f32(v8, v8);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v10);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
  v11 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  if (fabsf(vmuls_lane_f32(0.0, v11, 2) + (v11.f32[1] + (0.0 * v11.f32[0]))) >= 0.20791)
  {
    v13 = (v3)(v7);
    [v13 transform];

    simd_float4x4.up.getter();
    v15 = vmulq_f32(v14, v14);
    *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    *v15.f32 = vrsqrte_f32(v16);
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
    v17 = vmulq_n_f32(v14, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
    v18 = fabsf(vmuls_lane_f32(0.0, v17, 2) + (v17.f32[1] + (0.0 * v17.f32[0])));
    if (v18 > 1.0)
    {
      v18 = 1.0;
    }

    v12 = dbl_1003DDA00[(acosf(v18) * 57.296) < 12.0];
  }

  else
  {
    v12 = 0.9;
  }

  v19 = objc_opt_self();
  v20 = [v19 blackColor];
  v21 = objc_opt_self();
  v22 = [v21 boxWithWidth:0.04 height:0.04 length:0.0 chamferRadius:0.0];
  v23 = [v21 boxWithWidth:0.001 height:0.001 length:0.05 chamferRadius:0.0];
  v24 = [v23 firstMaterial];
  if (!v24)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = [v24 diffuse];

  v27 = [v19 redColor];
  [v26 setContents:v27];

  v28 = [v19 blackColor];
  if (v20 == v28 || (sub_100018630(0, &qword_1004AE0D0, NSObject_ptr), v29 = [v19 magentaColor], v30 = static NSObject.== infix(_:_:)(), v29, (v30 & 1) != 0))
  {
    [v22 setWidth:0.07];
    [v22 setHeight:0.07];
  }

  v31 = v22;
  v32 = [v31 firstMaterial];
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = v32;
  v34 = [v32 diffuse];

  [v34 setContents:v20];
  v35 = [objc_allocWithZone(SCNNode) init];
  v36 = [objc_allocWithZone(SCNNode) init];
  SCNMatrix4.init(_:)();
  [v35 setTransform:v41];
  simd_float4x4.forward.getter();
  static simd_float4x4.make(position:normalizedForward:)();
  SCNMatrix4.init(_:)();
  [v36 setTransform:v41];
  [v35 setOpacity:v12];
  [v35 setGeometry:v31];

  [v36 setGeometry:v23];
  v37 = *(a2 + 256);
  if (v37)
  {
    [v37 addChildNode:v35];
    v38 = *(a2 + 256);
    if (v38)
    {
      v39 = v38;
      [v39 addChildNode:v36];
    }
  }
}

void sub_10011B7CC(uint64_t a1, __n128 a2, __n128 a3)
{
  SCNVector3.init(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  SCNVector3.init(_:)();
  v41[0] = v4;
  v41[1] = v6;
  v41[2] = v8;
  v41[3] = v9;
  v41[4] = v10;
  v41[5] = v11;
  v12 = [objc_allocWithZone(NSData) initWithBytes:v41 length:24];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1000C94CC(v13, v15);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v17 = [objc_opt_self() geometrySourceWithData:isa semantic:SCNGeometrySourceSemanticVertex vectorCount:2 floatComponents:1 componentsPerVector:3 bytesPerComponent:4 dataOffset:0 dataStride:12];

  sub_100038FD4(v13, v15);
  v18 = [objc_allocWithZone(NSData) initWithBytes:&unk_1004651E0 length:8];
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_1000C94CC(v19, v21);
  v22 = Data._bridgeToObjectiveC()().super.isa;
  sub_100038FD4(v19, v21);
  v23 = [objc_opt_self() geometryElementWithData:v22 primitiveType:2 primitiveCount:1 bytesPerIndex:4];

  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1003D56B0;
  *(v24 + 32) = v17;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1003D56B0;
  *(v25 + 32) = v23;
  sub_100018630(0, &qword_1004A9DF8, SCNGeometrySource_ptr);
  v39 = v17;
  v26 = v23;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  sub_100018630(0, &qword_1004A9E00, SCNGeometryElement_ptr);
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [objc_opt_self() geometryWithSources:v27 elements:v28];

  v30 = [v29 firstMaterial];
  if (v30)
  {
    v31 = v30;
    [v30 setLightingModelName:SCNLightingModelConstant];
  }

  v32 = [v29 firstMaterial];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 diffuse];

    [v34 setContents:a1];
  }

  v35 = [objc_opt_self() nodeWithGeometry:v29];
  v36 = *(v40 + 256);
  if (v36)
  {
    v37 = v36;
    [v37 addChildNode:v35];
    sub_100038FD4(v13, v15);
    sub_100038FD4(v19, v21);
  }

  else
  {
    sub_100038FD4(v13, v15);
    sub_100038FD4(v19, v21);
  }
}

void *sub_10011BBBC(void *result, void *a2, uint64_t a3, id a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_12:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while ((v10 - 1) != [a4 getPointCountAtContourIndex:a5])
    {
      [a4 getPointAtContourIndex:a5 pointIndex:v10 - 1];
      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        goto LABEL_12;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v8 = v10 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_10011BC90(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_12:
    *v4 = v3;
    v4[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while ((v7 - 1) != [v3 getCornerCount])
    {
      [v3 getCornerAtIndex:v7 - 1];
      *v6 = v9;
      *(v6 + 16) = v10;
      if (v5 == v7)
      {
        goto LABEL_12;
      }

      v6 += 24;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v5 = v7 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_10011BD60(void *result, void *a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      if ((v7 - 1) == [v3 getContourCount])
      {
        v5 = v7 - 1;
        goto LABEL_13;
      }

      *v6 = v3;
      v6[1] = v7 - 1;
      if (v5 == v7)
      {
        break;
      }

      v6 += 2;
      v8 = v3;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v10 = v3;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

double sub_10011BE10@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 192);

  return result;
}

double sub_10011BE40@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 192);

  return result;
}

double *sub_10011BE58(void *a1, uint64_t a2)
{
  v4 = [a1 getPointCountAtContourIndex:a2];
  result = [a1 getPointCountAtContourIndex:a2];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = [a1 getPointCountAtContourIndex:a2];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      if (v4)
      {
        v6 = sub_10006911C(v4, 0);
        if ([a1 getPointCountAtContourIndex:a2])
        {
          v7 = 0;
          v8 = (v4 - 1);
          v9 = 4;
          do
          {
            v10 = &v6[v9];
            [a1 getPointAtContourIndex:a2 pointIndex:v7];
            *v10 = v11;
            *(v10 + 1) = v12;
            if (v8 == v7)
            {
              return v6;
            }

            ++v7;
            v9 += 2;
          }

          while (v7 != [a1 getPointCountAtContourIndex:a2]);
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011BF74(void *a1)
{
  v2 = [a1 getCornerCount];
  result = [a1 getCornerCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [a1 getCornerCount];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = sub_100069130(v2, 0);
        if ([a1 getCornerCount])
        {
          v5 = 0;
          v6 = (v2 - 1);
          v7 = 4;
          do
          {
            v8 = &v4[v7];
            [a1 getCornerAtIndex:v5];
            *v8 = v9;
            *(v8 + 4) = v10;
            if (v6 == v5)
            {
              return v4;
            }

            ++v5;
            v7 += 3;
          }

          while (v5 != [a1 getCornerCount]);
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

double *sub_10011C084(void *a1)
{
  v2 = [a1 getContourCount];
  result = [a1 getContourCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = [a1 getContourCount];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = sub_1000691C0(v2, 0);
        v5 = a1;
        if ([v5 getContourCount])
        {
          v6 = 0;
          v7 = (v2 - 1);
          v8 = 4;
          do
          {
            v9 = &v4[v8];
            *v9 = v5;
            *(v9 + 1) = v6;
            if (v7 == v6)
            {
              return v4;
            }

            ++v6;
            v8 += 2;
          }

          while (v6 != [v5 getContourCount]);
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

void sub_10011C168(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10000F974(&qword_1004A6B30, &qword_1003DA5D8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000F974(&qword_1004A6B28, &qword_1003DA5D0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10011C254(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v8 = sub_1000A4894(v8);
    }

    v85 = v8 + 2;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10011C80C((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
          goto LABEL_100;
        }

        if (v90 < v88)
        {
          goto LABEL_117;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_118;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_119;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_129;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 88);
      while (v6 != v14)
      {
        v16 = *v15 >= *(v15 - 8);
        ++v14;
        v15 += 8;
        if ((((v10 < v13) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 32 * v7 - 32;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v17);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 16);
            v27 = *(v22 + v11 + 24);
            if (v11 != v17 || v23 >= v24 + 2)
            {
              v20 = v24[1];
              *v23 = *v24;
              v23[1] = v20;
            }

            v21 = v22 + v17;
            *v21 = v25;
            *(v21 + 16) = v26;
            *(v21 + 24) = v27;
          }

          ++v19;
          v17 -= 32;
          v11 += 32;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100067218(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v39 = *(v8 + 3);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      v8 = sub_100067218((v39 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v40;
    v41 = v8 + 4;
    v42 = &v8[2 * v5 + 4];
    *v42 = v9;
    *(v42 + 1) = v7;
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_60:
          if (v46)
          {
            goto LABEL_107;
          }

          v59 = &v8[2 * v40];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_109;
          }

          v65 = &v41[2 * v5];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_114;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v40 < 2)
        {
          goto LABEL_115;
        }

        v69 = &v8[2 * v40];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_75:
        if (v64)
        {
          goto LABEL_111;
        }

        v72 = &v41[2 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v40)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v80 = &v41[2 * v5 - 2];
        v81 = *v80;
        v82 = &v41[2 * v5];
        v83 = *(v82 + 1);
        sub_10011C80C((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
          goto LABEL_100;
        }

        if (v83 < v81)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_103;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *(v8 + 2);
        if (v5 >= v84)
        {
          goto LABEL_104;
        }

        v40 = v84 - 1;
        memmove(&v41[2 * v5], v82 + 2, 16 * (v84 - 1 - v5));
        *(v8 + 2) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v41[2 * v40];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_105;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_106;
      }

      v54 = &v8[2 * v40];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_108;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_110;
      }

      if (v58 >= v50)
      {
        v76 = &v41[2 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_116;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7 + 24;
  v30 = v9 - v7;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    if (*v32 >= *(v32 - 32))
    {
LABEL_32:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v33 = (v32 - 24);
    v35 = *(v32 - 56);
    v34 = *(v32 - 40);
    *(v32 - 32) = *v32;
    v32 -= 32;
    v36 = *(v32 + 8);
    v37 = *(v32 + 24);
    *v33 = v35;
    v33[1] = v34;
    *(v32 - 24) = v36;
    *(v32 - 8) = v37;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_32;
    }
  }

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
}

uint64_t sub_10011C80C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 8 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 32)
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

      if (v6[6] < v4[6])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 8 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 8;
    do
    {
      v20 = v5 + 8;
      if (*(v15 - 2) < *(v6 - 2))
      {
        v23 = v6 - 8;
        if (v20 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v23;
          *(v5 + 1) = v24;
        }

        if (v15 <= v4 || (v6 -= 8, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v15 - 8;
      if (v20 != v15)
      {
        v22 = *(v15 - 1);
        *v5 = *v21;
        *(v5 + 1) = v22;
      }

      v5 -= 8;
      v15 -= 8;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v25 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= (v4 + v25))
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

void *sub_10011CA08(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A6F50, &qword_1003DCCB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v34 = sub_10000F974(&qword_1004A9E30, &qword_1003DDD18);
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v27 - v5;
  v35 = sub_10000F974(&qword_1004A9E38, &qword_1003DDD20);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v27 = &v27 - v7;
  v32 = sub_10000F974(&qword_1004A9E40, &qword_1003DDD28);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v27 - v8;
  v31 = sub_10000F974(&qword_1004A9E48, &qword_1003DDD30);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v27 - v10;
  v36 = a1;
  v12 = *(**(a1 + 80) + 200);

  v14 = v12(v13);

  v16 = (*(*v14 + 208))(v15);

  v38 = v16;
  if (qword_1004A0218 != -1)
  {
    swift_once();
  }

  v17 = qword_1004A7E08;
  v37 = qword_1004A7E08;
  v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = v17;
  sub_10000F974(&qword_1004A9E50, &qword_1003DDD38);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  sub_10001D47C(&qword_1004A9E58, &qword_1004A9E50, &qword_1003DDD38, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000F38F4();
  Publisher.receive<A>(on:options:)();
  sub_100018F04(v4, &qword_1004A6F50, &qword_1003DCCB0);

  sub_10001D47C(&qword_1004A9E60, &qword_1004A9E30, &qword_1003DDD18, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v20 = v27;
  v21 = v34;
  Publisher.filter(_:)();

  (*(v30 + 8))(v6, v21);
  sub_10001D47C(&qword_1004A9E68, &qword_1004A9E38, &qword_1003DDD20, &protocol conformance descriptor for Publishers.Filter<A>);
  v22 = v35;
  Publisher.compactMap<A>(_:)();
  (*(v33 + 8))(v20, v22);
  v23 = v32;
  Publishers.CompactMap.map<A>(_:)();
  (*(v29 + 8))(v9, v23);
  sub_10001D47C(&qword_1004A9E70, &qword_1004A9E48, &qword_1003DDD30, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v24 = v31;
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v28 + 8))(v11, v24);
  type metadata accessor for DepthEdgeDetector();
  swift_allocObject();
  return sub_1000CB584(v25);
}

float32x2_t sub_10011D040(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a3, a2);
  v4 = vmul_f32(v3, v3);
  v4.i32[0] = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  v5 = vrsqrte_f32(v4.u32[0]);
  v6 = vmul_f32(v5, vrsqrts_f32(v4.u32[0], vmul_f32(v5, v5)));
  v7 = vmul_n_f32(v3, vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6))).f32[0]);
  v8 = vmul_f32(v7, v7);
  v8.i32[0] = vadd_f32(v8, vdup_lane_s32(v8, 1)).u32[0];
  v9 = vrsqrte_f32(v8.u32[0]);
  v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
  v11 = vmul_n_f32(v7, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]);
  v12 = vmul_f32(vsub_f32(a1, a2), v11);
  return vadd_f32(vmul_n_f32(v11, vadd_f32(v12, vdup_lane_s32(v12, 1)).f32[0]), a2);
}

void sub_10011D0D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_1000A2694(0, v1, 0);
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v37 = a1 + 32;
    v38 = a1 + 48;
    do
    {
      v5 = (v37 + 32 * v3++);
      v40 = *v5;
      v6 = v5[1].i64[0];
      v7 = *(*v6 + 160);

      v9 = v7(v8);
      [v9 transform];

      v10 = simd_float4x4.position.getter();
      v11 = v7(v10);
      [v11 transform];

      simd_float4x4.up.getter();
      v12 = 0;
      while (2)
      {
        v13 = (v38 + 32 * v12);
        v14 = v12;
        while (1)
        {
          if (v14 >= v1)
          {
            __break(1u);
LABEL_41:
            __break(1u);

            __break(1u);
            return;
          }

          v12 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_41;
          }

          v15 = v13->i64[0];
          v39 = v13[-1];
          v16 = vmovn_s32(vceqq_f32(v39, v40));
          if ((v16.i8[0] & 1) == 0 || (v16.i8[2] & 1) == 0 || (v16.i8[4] & 1) == 0)
          {
            break;
          }

          type metadata accessor for WorldPlane();
          swift_retain_n();
          v17 = static WorldPlane.== infix(_:_:)();

          if ((v17 & 1) == 0)
          {
            goto LABEL_14;
          }

          ++v14;
          v13 += 2;
          if (v12 == v1)
          {
            v20 = _swiftEmptyArrayStorage[2];
            if (v20 == 0.0)
            {
              v22 = 0.0;
              goto LABEL_25;
            }

            goto LABEL_21;
          }
        }

LABEL_14:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000A2654(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
        }

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        *&v20 = *&v19 + 1;
        if (*&v19 >= *&v18 >> 1)
        {
          sub_1000A2654((*&v18 > 1uLL), *&v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20;
        v21 = &_swiftEmptyArrayStorage[4 * *&v19];
        *(v21 + 2) = v39;
        *(v21 + 6) = v15;
        if (v12 != v1)
        {
          continue;
        }

        break;
      }

LABEL_21:
      type metadata accessor for PlaneUtil();
      v22 = 0.0;
      v23 = 32;
      do
      {
        static PlaneUtil.distance(point:plane:)();
        v22 = v22 + v24;
        v23 += 32;
        --*&v20;
      }

      while (v20 != 0.0);
LABEL_25:

      v42 = v4;
      v26 = *(v4 + 2);
      v25 = *(v4 + 3);
      if (v26 >= v25 >> 1)
      {
        sub_1000A2694((v25 > 1), v26 + 1, 1);
        v4 = v42;
      }

      *(v4 + 2) = v26 + 1;
      v27 = &v4[4 * v26];
      v27[2] = v40;
      v27[3].i64[0] = v6;
      v27[3].f32[2] = v22;
    }

    while (v3 != v1);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v42 = v4;

  sub_100113820(&v42);

  v28 = v42;
  v29 = *(v42 + 2);
  if (v29)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_1000A2654(0, v29, 0);
    v30 = 0;
    v31 = v42;
    v32 = *(v42 + 2);
    v33 = 4 * v32;
    do
    {
      v41 = *&v28[v30 + 4];
      v34 = v28[v30 + 6];
      v42 = v31;
      v35 = *(v31 + 3);

      if (v32 >= v35 >> 1)
      {
        sub_1000A2654((v35 > 1), v32 + 1, 1);
        v31 = v42;
      }

      *(v31 + 2) = v32 + 1;
      v36 = &v31[v33 + v30];
      *(v36 + 2) = v41;
      v36[6] = v34;
      v30 += 4;
      ++v32;
      --v29;
    }

    while (v29);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  if (*(v31 + 2) >= 0xBuLL)
  {
    sub_10011C168(v31, (v31 + 4), 0, 0x15uLL);
  }
}

BOOL sub_10011D52C(float32x4_t a1, float a2)
{
  v2 = vmulq_f32(a1, a1);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v4 = vmulq_n_f32(a1, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  return fabsf(vmuls_lane_f32(0.0, v4, 2) + (v4.f32[1] + (0.0 * v4.f32[0]))) < cosf((90.0 - a2) * 0.017453);
}

BOOL sub_10011D5C4(float32x4_t a1, float a2)
{
  v3 = vmulq_f32(a1, a1);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_n_f32(a1, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v6 = fabsf(vmuls_lane_f32(0.0, v5, 2) + (v5.f32[1] + (0.0 * v5.f32[0])));
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  return (acosf(v6) * 57.296) < a2;
}

id sub_10011D660(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = objc_opt_self();
  if (v1 > 6)
  {
    v3 = &selRef_redColor;
  }

  else
  {
    v3 = off_10046E588[v1];
  }

  v4 = [v2 *v3];

  return v4;
}

float32x4_t *sub_10011D6C8(uint64_t a1, float32x4_t *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = a2;
  v7 = a1;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000A2550(0, v8, 0);
    simd_float4x4.position.getter();
    v10 = (v7 + 32);
    v11 = _swiftEmptyArrayStorage[2];
    v12 = v8;
    v13 = v11;
    do
    {
      v14 = *v10;
      v15 = _swiftEmptyArrayStorage[3];
      *&v16 = *&v13 + 1;
      if (*&v13 >= *&v15 >> 1)
      {
        v89 = *v10;
        v91 = v9;
        sub_1000A2550((*&v15 > 1uLL), *&v13 + 1, 1);
        v14 = v89;
        v9 = v91;
      }

      v17 = vsubq_f32(v14, v9);
      v18 = vmulq_f32(v17, v17);
      _swiftEmptyArrayStorage[2] = v16;
      *(&_swiftEmptyArrayStorage[4] + *&v13) = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
      v10 += 2;
      ++*&v13;
      --v12;
    }

    while (v12);
    v19 = v8 + *&v11;
    if (v8 + *&v11 > 7)
    {
      v20 = v19 & 0xFFFFFFFFFFFFFFF8;
      v25 = &_swiftEmptyArrayStorage[6];
      v21 = 0.0;
      v26 = v19 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v21 = (((((((v21 + COERCE_FLOAT(*(v25 - 1))) + COERCE_FLOAT(HIDWORD(*(v25 - 2)))) + COERCE_FLOAT(*(v25 - 1))) + COERCE_FLOAT(HIDWORD(*(v25 - 1)))) + COERCE_FLOAT(*v25)) + COERCE_FLOAT(HIDWORD(*v25))) + COERCE_FLOAT(*(v25 + 1))) + COERCE_FLOAT(HIDWORD(*v25));
        v25 += 4;
        v26 -= 8;
      }

      while (v26);
      if (v19 == v20)
      {
LABEL_15:

        v22 = v21 / v8;
        v23 = v6[1].u64[0];
        if (v23)
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0.0;
    }

    v27 = *&v16 - v20;
    v28 = &_swiftEmptyArrayStorage[4] + v20;
    do
    {
      v29 = *v28++;
      v21 = v21 + v29;
      --v27;
    }

    while (v27);
    goto LABEL_15;
  }

  v22 = INFINITY;
  v23 = a2[1].u64[0];
  if (v23)
  {
LABEL_16:
    sub_1000A2550(0, v23, 0);
    simd_float4x4.position.getter();
    v31 = v6 + 2;
    v32 = _swiftEmptyArrayStorage[2];
    v33 = v23;
    v34 = v32;
    do
    {
      v35 = *v31;
      v36 = _swiftEmptyArrayStorage[3];
      *&v37 = *&v34 + 1;
      if (*&v34 >= *&v36 >> 1)
      {
        v94 = *v31;
        v95 = v30;
        sub_1000A2550((*&v36 > 1uLL), *&v34 + 1, 1);
        v35 = v94;
        v30 = v95;
      }

      v38 = vsubq_f32(v35, v30);
      v39 = vmulq_f32(v38, v38);
      _swiftEmptyArrayStorage[2] = v37;
      *(&_swiftEmptyArrayStorage[4] + *&v34) = sqrtf(v39.f32[2] + vaddv_f32(*v39.f32));
      v31 += 2;
      ++*&v34;
      --v33;
    }

    while (v33);
    v40 = v23 + *&v32;
    if (v23 + *&v32 > 7)
    {
      v41 = v40 & 0xFFFFFFFFFFFFFFF8;
      v43 = &_swiftEmptyArrayStorage[6];
      v42 = 0.0;
      v44 = v40 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v42 = (((((((v42 + COERCE_FLOAT(*(v43 - 1))) + COERCE_FLOAT(HIDWORD(*(v43 - 2)))) + COERCE_FLOAT(*(v43 - 1))) + COERCE_FLOAT(HIDWORD(*(v43 - 1)))) + COERCE_FLOAT(*v43)) + COERCE_FLOAT(HIDWORD(*v43))) + COERCE_FLOAT(*(v43 + 1))) + COERCE_FLOAT(HIDWORD(*v43));
        v43 += 4;
        v44 -= 8;
      }

      while (v44);
      if (v40 == v41)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v41 = 0;
      v42 = 0.0;
    }

    v45 = *&v37 - v41;
    v46 = &_swiftEmptyArrayStorage[4] + v41;
    do
    {
      v47 = *v46++;
      v42 = v42 + v47;
      --v45;
    }

    while (v45);
LABEL_27:

    v24 = v42 / v23;
    goto LABEL_28;
  }

LABEL_9:
  v24 = INFINITY;
LABEL_28:
  if (vabds_f32(v22, v24) >= 0.04)
  {
    goto LABEL_69;
  }

  v90 = v6;
  v86 = v7;
  if (v8)
  {
    v48 = 0.0;
    v49 = v7 + 48;
    v50 = _swiftEmptyArrayStorage;
    v7 = 1045751499;
    v85 = v49;
    do
    {
      v87 = v50;
      v6 = (v49 + 32 * *&v48);
      v51 = v48;
      while (1)
      {
        if (*&v51 >= v8)
        {
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        *&v48 = *&v51 + 1;
        if (__OFADD__(*&v51, 1))
        {
          goto LABEL_74;
        }

        v52 = v6->i64[0];
        v92 = v6[-1];
        v53 = *(*v6->i64[0] + 160);

        v55 = v53(v54);
        [v55 transform];

        simd_float4x4.up.getter();
        v57 = vmulq_f32(v56, v56);
        *&v58 = v57.f32[2] + vaddv_f32(*v57.f32);
        *v57.f32 = vrsqrte_f32(v58);
        *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
        v59 = vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]);
        if (fabsf(vmuls_lane_f32(0.0, v59, 2) + (v59.f32[1] + (0.0 * v59.f32[0]))) < 0.20791)
        {
          break;
        }

        ++*&v51;
        v6 += 2;
        if (*&v48 == v8)
        {
          v50 = v87;
          goto LABEL_44;
        }
      }

      v50 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000A2654(0, *(v87 + 2) + 1, 1);
        v50 = v87;
      }

      v49 = v85;
      v60 = v92;
      v62 = *(v50 + 2);
      v61 = *(v50 + 3);
      if (v62 >= v61 >> 1)
      {
        sub_1000A2654((v61 > 1), v62 + 1, 1);
        v60 = v92;
        v50 = v87;
      }

      *(v50 + 2) = v62 + 1;
      v63 = &v50[4 * v62];
      *(v63 + 2) = v60;
      *(v63 + 6) = v52;
    }

    while (*&v48 != v8);
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

LABEL_44:
  v88 = *(v50 + 2);

  if (v23)
  {
    v64 = 0.0;
    v65 = v90 + 3;
    v7 = 1045751499;
LABEL_46:
    v66 = &v65[2 * *&v64];
    v48 = v64;
    while (*&v48 < v23)
    {
      *&v64 = *&v48 + 1;
      if (__OFADD__(*&v48, 1))
      {
        goto LABEL_76;
      }

      v67 = *v66;
      v93 = *(v66 - 1);
      v68 = (**v66)[10].i64[0];
      v6 = **v66 + 10;

      v70 = v68(v69);
      [v70 transform];

      simd_float4x4.up.getter();
      v72 = vmulq_f32(v71, v71);
      *&v73 = v72.f32[2] + vaddv_f32(*v72.f32);
      *v72.f32 = vrsqrte_f32(v73);
      *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
      v74 = vmulq_n_f32(v71, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
      if (fabsf(vmuls_lane_f32(0.0, v74, 2) + (v74.f32[1] + (0.0 * v74.f32[0]))) < 0.20791)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000A2654(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
        }

        v75 = v93;
        v77 = _swiftEmptyArrayStorage[2];
        v76 = _swiftEmptyArrayStorage[3];
        if (*&v77 >= *&v76 >> 1)
        {
          sub_1000A2654((*&v76 > 1uLL), *&v77 + 1, 1);
          v75 = v93;
        }

        *&_swiftEmptyArrayStorage[2] = *&v77 + 1;
        v78 = &_swiftEmptyArrayStorage[4 * *&v77];
        *(v78 + 2) = v75;
        *(v78 + 6) = v67;
        v65 = v90 + 3;
        if (*&v64 != v23)
        {
          goto LABEL_46;
        }

        goto LABEL_57;
      }

      ++*&v48;
      v66 += 4;
      if (*&v64 == v23)
      {
        goto LABEL_57;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_57:
  v48 = _swiftEmptyArrayStorage[2];

  v23 = v88;
  v6 = v90;
  v79 = *&v48 <= v88 ? v88 : *&v48;
  v80 = *&v48 >= v88 ? v88 : *&v48;
  v7 = v86;
  if ((v79 - v80) <= 7)
  {
LABEL_69:

    if (v22 >= v24)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  if (qword_1004A0228 != -1)
  {
LABEL_77:
    swift_once();
  }

  v81._object = 0x8000000100407B80;
  v81._countAndFlagsBits = 0xD00000000000004ELL;
  Log.default(_:isPrivate:)(v81, 0);
  swift_bridgeObjectRetain_n();

  v82 = v7;
  if (*&v48 < v23)
  {

    v82 = v6;
  }

  v83 = v82;
  sub_10000F974(&qword_1004A9E28, &qword_1003DDD10);
  swift_arrayDestroy();
  swift_bridgeObjectRetain_n();

  if (v23 < *&v48)
  {
  }

  swift_arrayDestroy();
  return v83;
}

float32x4_t sub_10011DF14(float32x4_t *isUniquelyReferenced_nonNull_native)
{
  v2 = 0;
  v3 = isUniquelyReferenced_nonNull_native[1].u64[0];
  v4 = isUniquelyReferenced_nonNull_native + 2;
LABEL_2:
  v5 = &isUniquelyReferenced_nonNull_native[2 * v2];
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
LABEL_23:
      v21._object = 0x8000000100407B50;
      v21._countAndFlagsBits = 0xD00000000000002DLL;
      Log.default(_:isPrivate:)(v21, 0);
      return v24;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_27;
    }

    v7 = v5[3].i64[0];
    v5 += 2;
    ++v2;
    if (!*(v7 + 48))
    {
      v24 = *v5;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000A2654(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (*&v9 >= *&v8 >> 1)
      {
        sub_1000A2654((*&v8 > 1uLL), *&v9 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v9 + 1;
      v10 = &_swiftEmptyArrayStorage[4 * *&v9];
      *(v10 + 2) = v24;
      *(v10 + 6) = v7;
      v2 = v6;
      goto LABEL_2;
    }
  }

  v11 = *SIMD3<>.zero.unsafeMutableAddressor();
  v12 = *&_swiftEmptyArrayStorage[2];
  if (v12)
  {
    v13 = &_swiftEmptyArrayStorage[4];
    v14 = _swiftEmptyArrayStorage[2];
    do
    {
      v15 = *v13;
      v13 += 4;
      v11 = vaddq_f32(v11, v15);
      v11.i32[3] = 0;
      --*&v14;
    }

    while (v14 != 0.0);
  }

  v25 = v11;

  if (v12 >= 2)
  {
    *v16.i32 = v12;
    v20.i64[0] = vdivq_f32(v25, vdupq_lane_s32(v16, 0)).u64[0];
    v20.f32[2] = v25.f32[2] / v12;
    v20.i32[3] = 0;
    v24 = v20;
    if (qword_1004A0228 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (v3)
  {
    sub_1000A2570(0, v3, 0);
    v17 = _swiftEmptyArrayStorage[2];
    do
    {
      v18 = *v4;
      v19 = _swiftEmptyArrayStorage[3];
      if (*&v17 >= *&v19 >> 1)
      {
        v26 = *v4;
        sub_1000A2570((*&v19 > 1uLL), *&v17 + 1, 1);
        v18 = v26;
      }

      *&_swiftEmptyArrayStorage[2] = *&v17 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v17 + 4] = v18;
      v4 += 2;
      ++*&v17;
      --v3;
    }

    while (v3);
  }

  static SIMD3<>.average(_:)();
  v24 = v22;

  return v24;
}

void sub_10011E194(uint64_t a2@<X8>, __n128 a3@<Q0>, float32x4_t a4@<Q1>)
{
  if (qword_1004A0328 != -1)
  {
    swift_once();
  }

  v5 = *&dword_1004D4EF4;
  simd_float4x4.forward.getter();
  v6 = vmulq_f32(a4, a4);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v8 = vmulq_n_f32(a4, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v10 = vmuls_n_f32(*v9.i32, *v8.i32);
  *v9.i8 = vmul_f32(vext_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL), 4uLL), *&vextq_s8(v8, v8, 4uLL));
  v11 = fabsf(*&v9.i32[1] + (v10 + *v9.i32));
  v12 = 0uLL;
  v13 = 0uLL;
  if (v11 > v5)
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v14._object = 0x8000000100407AF0;
    v14._countAndFlagsBits = 0xD000000000000057;
    Log.default(_:isPrivate:)(v14, 0);
    v12 = a3;
    v13 = a4;
  }

  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v11 <= v5;
}

void sub_10011E310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  sub_1000A2694(0, v1, 0);
  v3 = 0;
  v4 = a1 + 32;
  v48 = a1 + 48;
  v47 = a1 + 32;
  do
  {
    v5 = (v4 + 32 * v3);
    v50 = *v5;
    v6 = v5[1].i64[0];
    if (v6[48] != 6)
    {

      v23 = 0.0;
      goto LABEL_29;
    }

    v7 = *(*v6 + 160);

    v9 = v7(v8);
    [v9 transform];

    v10 = simd_float4x4.position.getter();
    v11 = v7(v10);
    [v11 transform];

    simd_float4x4.up.getter();
    v49 = v12;
    v13 = 0;
LABEL_5:
    v14 = (v48 + 32 * v13);
    v15 = v13;
    do
    {
      if (v15 >= v1)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_48;
      }

      v16 = v14->i64[0];
      v51 = v14[-1];
      v17 = vmovn_s32(vceqq_f32(v51, v50));
      if ((v17.i8[0] & 1) == 0 || (v17.i8[2] & 1) == 0 || (v17.i8[4] & 1) == 0)
      {

LABEL_15:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000A2654(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
        }

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        *&v21 = *&v20 + 1;
        if (*&v20 >= *&v19 >> 1)
        {
          sub_1000A2654((*&v19 > 1uLL), *&v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21;
        v22 = &_swiftEmptyArrayStorage[4 * *&v20];
        *(v22 + 2) = v51;
        *(v22 + 6) = v16;
        if (v13 == v1)
        {
LABEL_23:
          v24 = 0;
          v23 = 0.0;
          v25 = 6;
          while (v24 < *&_swiftEmptyArrayStorage[2])
          {
            ++v24;
            v26 = *(**&_swiftEmptyArrayStorage[v25] + 160);

            v28 = v26(v27);
            [v28 transform];

            simd_float4x4.up.getter();
            v52 = v29;

            v30 = vmulq_f32(v49, v52);
            v23 = v23 + (1.0 - fabsf(v30.f32[2] + vaddv_f32(*v30.f32)));
            v25 += 4;
            if (*&v21 == v24)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_49;
        }

        goto LABEL_5;
      }

      type metadata accessor for WorldPlane();
      swift_retain_n();
      v18 = static WorldPlane.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      ++v15;
      v14 += 2;
    }

    while (v13 != v1);
    v21 = _swiftEmptyArrayStorage[2];
    if (v21 != 0.0)
    {
      goto LABEL_23;
    }

    v23 = 0.0;
LABEL_28:

    v4 = v47;
LABEL_29:
    v32 = _swiftEmptyArrayStorage[2];
    v31 = _swiftEmptyArrayStorage[3];
    if (*&v32 >= *&v31 >> 1)
    {
      sub_1000A2694((*&v31 > 1uLL), *&v32 + 1, 1);
    }

    *&_swiftEmptyArrayStorage[2] = *&v32 + 1;
    v33 = &_swiftEmptyArrayStorage[4 * *&v32];
    *(v33 + 2) = v50;
    ++v3;
    *(v33 + 6) = v6;
    *(v33 + 14) = v23;
  }

  while (v3 != v1);
  sub_1000A2550(0, *&v32 + 1, 0);
  v34 = _swiftEmptyArrayStorage[2];
  v35 = *&v32 + 1;
  v36 = 7;
  do
  {
    v37 = LODWORD(_swiftEmptyArrayStorage[v36]);
    v38 = _swiftEmptyArrayStorage[3];
    if (*&v34 >= *&v38 >> 1)
    {
      sub_1000A2550((*&v38 > 1uLL), *&v34 + 1, 1);
    }

    *&_swiftEmptyArrayStorage[2] = *&v34 + 1;
    *(&_swiftEmptyArrayStorage[4] + *&v34) = v37;
    v36 += 4;
    ++*&v34;
    --v35;
  }

  while (v35);

  v39 = _swiftEmptyArrayStorage[2];
  if (v39 != 0.0)
  {
    if (*&v39 <= 7uLL)
    {
      v40 = 0;
      v41 = 0.0;
      goto LABEL_44;
    }

    v40 = *&v39 & 0x7FFFFFFFFFFFFFF8;
    v42 = &_swiftEmptyArrayStorage[6];
    v41 = 0.0;
    v43 = *&v39 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v41 = (((((((v41 + COERCE_FLOAT(*(v42 - 1))) + COERCE_FLOAT(HIDWORD(*(v42 - 2)))) + COERCE_FLOAT(*(v42 - 1))) + COERCE_FLOAT(HIDWORD(*(v42 - 1)))) + COERCE_FLOAT(*v42)) + COERCE_FLOAT(HIDWORD(*v42))) + COERCE_FLOAT(*(v42 + 1))) + COERCE_FLOAT(HIDWORD(*v42));
      v42 += 4;
      v43 -= 8;
    }

    while (v43);
    if (*&v39 != v40)
    {
LABEL_44:
      v44 = *&v39 - v40;
      v45 = &_swiftEmptyArrayStorage[4] + v40;
      do
      {
        v46 = *v45++;
        v41 = v41 + v46;
        --v44;
      }

      while (v44);
    }
  }
}

uint64_t sub_10011E810(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_33:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v3 = 0;
  while ((a1 & 0xC000000000000001) == 0)
  {
    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v4 = *(a1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_17;
    }

LABEL_10:
    v6 = *(*v4 + 160);
    v7 = v6();
    [v7 transform];

    v8 = simd_float4x4.up.getter();
    v10 = vmulq_f32(v9, v9);
    *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
    *v10.f32 = vrsqrte_f32(v11);
    *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
    v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
    if (fabsf(vmuls_lane_f32(0.0, v12, 2) + (v12.f32[1] + (0.0 * v12.f32[0]))) < 0.17365)
    {
      goto LABEL_5;
    }

    v13 = (v6)(v8);
    [v13 transform];

    simd_float4x4.up.getter();
    v15 = vmulq_f32(v14, v14);
    *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    *v15.f32 = vrsqrte_f32(v16);
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
    v17 = vmulq_n_f32(v14, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
    v18 = fabsf(vmuls_lane_f32(0.0, v17, 2) + (v17.f32[1] + (0.0 * v17.f32[0])));
    if (v18 > 1.0)
    {
      v18 = 1.0;
    }

    if ((acosf(v18) * 57.296) < 10.0)
    {
LABEL_5:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v3;
    if (v5 == v2)
    {
      goto LABEL_18;
    }
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v5 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_34:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
      goto LABEL_35;
    }

LABEL_23:
    sub_1000A26D4(0, v19 & ~(v19 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      for (i = 0; i != v19; ++i)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v21 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = *(*&_swiftEmptyArrayStorage[i + 4] + 48);
        }

        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        if (*&v23 >= *&v22 >> 1)
        {
          sub_1000A26D4((*&v22 > 1uLL), *&v23 + 1, 1);
        }

        *&_swiftEmptyArrayStorage[2] = *&v23 + 1;
        *(&_swiftEmptyArrayStorage[4] + *&v23) = v21;
      }

      goto LABEL_35;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_21:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v19 = *&_swiftEmptyArrayStorage[2];
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_35:

  v24 = sub_10019ADC0(_swiftEmptyArrayStorage);
  v25 = _swiftEmptyArrayStorage[2];
  if (v25 != 0.0)
  {
    v26 = 0;
    while (1)
    {
      if (v26 >= *&_swiftEmptyArrayStorage[2])
      {
        goto LABEL_76;
      }

      v27 = *(&_swiftEmptyArrayStorage[4] + v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = sub_10019C35C(v29);
      v32 = *(v24 + 16);
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_77;
      }

      v36 = v31;
      if (*(v24 + 24) < v35)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_43;
      }

      v44 = v30;
      sub_1000BEA90();
      v30 = v44;
      if ((v36 & 1) == 0)
      {
LABEL_44:
        *(v24 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        *(*(v24 + 48) + v30) = v27;
        *(*(v24 + 56) + 8 * v30) = 0;
        v39 = *(v24 + 16);
        v34 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v34)
        {
          goto LABEL_79;
        }

        *(v24 + 16) = v40;
      }

LABEL_46:
      v41 = *(v24 + 56);
      v42 = *(v41 + 8 * v30);
      v34 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v34)
      {
        goto LABEL_78;
      }

      ++v26;
      *(v41 + 8 * v30) = v43;
      if (*&v25 == v26)
      {
        goto LABEL_51;
      }
    }

    sub_1000B8320(v35, isUniquelyReferenced_nonNull_native);
    v30 = sub_10019C35C(v37);
    if ((v36 & 1) != (v38 & 1))
    {
      goto LABEL_81;
    }

LABEL_43:
    if ((v36 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

LABEL_51:

  v45 = 1 << *(v24 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v24 + 64);
  if (v47)
  {
    v48 = 0;
    v49 = __clz(__rbit64(v47));
    v50 = (v47 - 1) & v47;
    v51 = (v45 + 63) >> 6;
LABEL_59:
    v55 = *(v24 + 48);
    v56 = *(v24 + 56);
    v57 = *(v55 + v49);
    v58 = *(v56 + 8 * v49);
    if (!v50)
    {
      goto LABEL_61;
    }

    do
    {
      v59 = v48;
LABEL_65:
      v60 = __clz(__rbit64(v50)) | (v59 << 6);
      v61 = *(v55 + v60);
      v50 &= v50 - 1;
      v62 = *(v56 + 8 * v60);
      if (v58 >= v62)
      {
        v57 = v57;
      }

      else
      {
        v57 = v61;
      }

      if (v58 <= v62)
      {
        v58 = v62;
      }
    }

    while (v50);
LABEL_61:
    while (1)
    {
      v59 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v59 >= v51)
      {

        return v57;
      }

      v50 = *(v24 + 64 + 8 * v59);
      ++v48;
      if (v50)
      {
        v48 = v59;
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v52 = 0;
  v53 = 0;
  v51 = (v45 + 63) >> 6;
  while (v51 - 1 != v53)
  {
    v48 = v53 + 1;
    v54 = *(v24 + 8 * v53 + 72);
    v52 -= 64;
    ++v53;
    if (v54)
    {
      v50 = (v54 - 1) & v54;
      v49 = __clz(__rbit64(v54)) - v52;
      goto LABEL_59;
    }
  }

  return 7;
}

uint64_t sub_10011EE14(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v8 = (a2 + direct field offset for WorldEdge.p1);
  swift_beginAccess();
  if (v8[2].i8[0])
  {
    return 4;
  }

  v11 = v8;
  v9 = *v8;
  v10 = v11[1];
  v12 = (a2 + direct field offset for WorldEdge.p2);
  swift_beginAccess();
  if (v12[2].i8[0])
  {
    return 4;
  }

  v14 = v9;
  v15 = COERCE_FLOAT(*&v12[1]);
  *v13.f32 = vsub_f32(*v12, v9);
  v13.f32[2] = v15 - v10.f32[0];
  v17 = vmulq_f32(v13, v13);
  v16 = vaddv_f32(*v17.f32);
  v17.i32[1] = 0;
  *&v18 = v17.f32[2] + v16;
  v19 = vrsqrte_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v16));
  v20 = vmul_f32(v19, vrsqrts_f32(v18, vmul_f32(v19, v19)));
  v21 = vmulq_n_f32(v13, vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20))).f32[0]);
  v22 = *(a1 + 16);
  v78 = v21;
  if (v22)
  {
    v23 = vmul_f32(vadd_f32(v14, *v12), 0x3F0000003F000000);
    v24 = (v10.f32[0] + v15) * 0.5;
    v25 = vmulq_f32(v21, v21);
    v17.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
    v26 = (a1 + 64);
    *v25.f32 = vrsqrte_f32(*v17.f32);
    *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v17.f32, vmul_f32(*v25.f32, *v25.f32)));
    v27 = vmulq_n_f32(v21, vmul_f32(*v25.f32, vrsqrts_f32(*v17.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
    v79 = v27;
    do
    {
      if ((*v26 & 1) == 0)
      {
        v32 = *(v26 - 32);
        v33 = vdupq_lane_s64(*(v26 - 3), 0);
        v34 = vmuls_lane_f32(*&v33.i32[2] - v24, v27, 2) + vaddv_f32(vmul_f32(vsub_f32(v32, v23), *v27.f32));
        v35 = v24 + vmuls_lane_f32(v34, v27, 2);
        v36 = vsub_f32(vadd_f32(v23, vmul_n_f32(*v27.f32, v34)), v32);
        if ((((v35 - *&v33.i32[2]) * (v35 - *&v33.i32[2])) + vaddv_f32(vmul_f32(v36, v36))) < 0.0225)
        {
          v82 = *(v26 - 24);
          v37 = *(v26 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000A2714(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
          }

          v29 = _swiftEmptyArrayStorage[2];
          v28 = _swiftEmptyArrayStorage[3];
          v27 = v79;
          v30 = v82;
          if (*&v29 >= *&v28 >> 1)
          {
            sub_1000A2714((*&v28 > 1uLL), *&v29 + 1, 1);
            v27 = v79;
            v30 = v82;
          }

          *&_swiftEmptyArrayStorage[2] = *&v29 + 1;
          v31 = &_swiftEmptyArrayStorage[6 * *&v29];
          v31[4] = *&v32;
          *(v31 + 5) = v30;
          *(v31 + 7) = v37;
          *(v31 + 64) = 0;
        }
      }

      v26 += 48;
      --v22;
    }

    while (v22);
  }

  v38 = _swiftEmptyArrayStorage[2];
  if (v38 == 0.0)
  {
    v40 = _swiftEmptyArrayStorage;
  }

  else
  {
    v39 = &_swiftEmptyArrayStorage[8];
    v40 = _swiftEmptyArrayStorage;
    do
    {
      if ((*v39 & 1) == 0)
      {
        v42 = *(v39 - 4);
        v43 = *(v39 - 3);
        v44 = *(v39 - 2);
        v45 = *(v39 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_100068410(0, *(v40 + 2) + 1, 1, v40);
        }

        v47 = *(v40 + 2);
        v46 = *(v40 + 3);
        if (v47 >= v46 >> 1)
        {
          v40 = sub_100068410((v46 > 1), v47 + 1, 1, v40);
        }

        *(v40 + 2) = v47 + 1;
        v41 = &v40[4 * v47];
        *(v41 + 4) = v42;
        *(v41 + 5) = v43;
        *(v41 + 6) = v44;
        *(v41 + 7) = v45;
      }

      v39 += 6;
      --*&v38;
    }

    while (v38 != 0.0);
  }

  v48 = *(v40 + 2);
  if ((v48 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {

    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v49._countAndFlagsBits = 0xD00000000000002ELL;
    v49._object = 0x8000000100407AC0;
    Log.default(_:isPrivate:)(v49, 0);
    return 4;
  }

  if (v48 != 1)
  {
    v52 = *(v40 + 6);
    v53 = vmulq_f32(v52, v52);
    v54 = vaddv_f32(*v53.f32);
    *v53.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v53.f32[2] + v54));
    *v53.f32 = vmul_f32(*v53.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v53.f32[2] + v54), vmul_f32(*v53.f32, *v53.f32)));
    v55 = vmulq_n_f32(v52, vmul_f32(*v53.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v53.f32[2] + v54), vmul_f32(*v53.f32, *v53.f32))).f32[0]);
    v56 = *(v40 + 10);
    v57 = vmulq_f32(v56, v56);
    *&v58 = v57.f32[2] + vaddv_f32(*v57.f32);
    *v57.f32 = vrsqrte_f32(v58);
    *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
    v59 = vmulq_f32(v55, vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]));
    v60 = v59.f32[2] + vaddv_f32(*v59.f32);
    if (qword_1004A0330 != -1)
    {
      swift_once();
    }

    v61 = v78;
    if (*&dword_1004D4EF8 < v60)
    {
      v83 = *(v40 + 6);
      if (sub_10011D5C4(v83, 5.0) && sub_10011D5C4(*(v40 + 10), 5.0) && (COERCE_FLOAT(HIDWORD(*(v40 + 4))) - *(v40 + 17)) > 0.04)
      {
        v80 = *(v40 + 2);
      }

      else
      {
        if (!sub_10011D52C(v83, 5.0))
        {
          return 2;
        }

        if (!sub_10011D52C(*(v40 + 10), 5.0))
        {
          return 2;
        }

        type metadata accessor for PlaneUtil();
        v80 = *(v40 + 2);
        static PlaneUtil.distance(point:plane:)();
        if (v64 <= 0.04)
        {
          return 2;
        }
      }

      sub_10000F974(&qword_1004A4000, &qword_1003D5620);
      v65 = swift_allocObject();
      v65[1] = xmmword_1003D5360;

      result = 0;
      v67 = v80;
      v66 = v83;
      goto LABEL_61;
    }

    if (qword_1004A0338 != -1)
    {
      swift_once();
      v61 = v78;
    }

    if (v60 < *&dword_1004D4EFC && v60 > -*&dword_1004D4EFC)
    {
      v62 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v40 + 10), *(v40 + 10)), *(v40 + 10), 0xCuLL), vnegq_f32(*(v40 + 6))), *(v40 + 10), vextq_s8(vuzp1q_s32(*(v40 + 6), *(v40 + 6)), *(v40 + 6), 0xCuLL));
      v63 = fabsf(vmuls_lane_f32(v61.f32[2], *v62.f32, 1) + (vmuls_lane_f32(v61.f32[0], v62, 2) + vmuls_lane_f32(v62.f32[0], *v61.f32, 1)));
      if (qword_1004A0340 != -1)
      {
        swift_once();
      }

      if (*&dword_1004D4F00 < v63)
      {
        return 1;
      }

      v84 = *(v40 + 4);
      simd_float4x4.position.getter();
      v69 = vsub_f32(*v84.i8, *v68.i8);
      v70 = vmul_f32(v69, v69);
      v71 = *(v40 + 8);
      v72 = vsub_f32(*v71.i8, *v68.i8);
      v73 = vmul_f32(v72, v72);
      *v68.i8 = vsub_f32(vzip1_s32(*&vextq_s8(v84, v84, 8uLL), *&vextq_s8(v71, v71, 8uLL)), vdup_laneq_s32(v68, 2));
      *v68.i8 = vadd_f32(vmul_f32(*v68.i8, *v68.i8), vadd_f32(vzip1_s32(v70, v73), vzip2_s32(v70, v73)));
      if (vcgt_f32(vdup_lane_s32(*v68.i8, 1), *v68.i8).u8[0])
      {
        if (qword_1004A0228 != -1)
        {
          swift_once();
        }

        v74._object = 0x8000000100407A30;
        v74._countAndFlagsBits = 0xD000000000000043;
        Log.default(_:isPrivate:)(v74, 0);
        sub_10000F974(&qword_1004A4000, &qword_1003D5620);
        v65 = swift_allocObject();
        v65[1] = xmmword_1003D5360;
        v76 = *(v40 + 2);
        v75 = *(v40 + 6);
      }

      else
      {
        if (qword_1004A0228 != -1)
        {
          swift_once();
        }

        v77._object = 0x8000000100407A30;
        v77._countAndFlagsBits = 0xD000000000000043;
        Log.default(_:isPrivate:)(v77, 0);
        sub_10000F974(&qword_1004A4000, &qword_1003D5620);
        v65 = swift_allocObject();
        v65[1] = xmmword_1003D5360;
        v76 = *(v40 + 4);
        v75 = *(v40 + 10);
      }

      v85 = v76;
      v81 = v75;

      result = 0;
      v66 = v81;
      v67 = v85;
LABEL_61:
      v65[2] = v67;
      v65[3] = v66;
      return result;
    }

    return 4;
  }

  if (qword_1004A0228 != -1)
  {
    swift_once();
  }

  v51._countAndFlagsBits = 0xD00000000000003BLL;
  v51._object = 0x8000000100407A80;
  Log.default(_:isPrivate:)(v51, 0);
  return 0;
}

char *sub_10011F6D4(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = v5;
  static ComputedCameraProperties.shared(for:)();
  v8 = *(**(v5 + 112) + 144);

  v8(&v71, v9);

  v97 = v77;
  v98 = v78;
  v99 = v79;
  v100 = v80;
  v93 = v73;
  v94 = v74;
  v95 = v75;
  v96 = v76;
  v91 = v71;
  v92 = v72;
  sub_100013784(&v91, &v71);
  sub_100013BF8(&v91);
  v77 = v97;
  v78 = v98;
  LOBYTE(v79) = v99;
  v73 = v93;
  v74 = v94;
  v75 = v95;
  v76 = v96;
  v71 = v91;
  v72 = v92;
  if (sub_10001376C(&v71) == 1)
  {
    return 0;
  }

  v10 = v71;
  v11 = *(**(v5 + 120) + 144);

  v11(&v64, v12);

  v14 = v64;
  v13 = v65;

  if (!v13 || ((*((swift_isaMask & *v13) + 0x2B0))(), v13, v15 = simd_float4x4.position.getter(), v16 = *((swift_isaMask & *v10) + 0x258), (v16)(v15)) && v16() != 1)
  {
    sub_100018F04(&v91, &qword_1004A1208, &qword_1003D6DF0);
    return 0;
  }

  (*((swift_isaMask & *v10) + 0x2A8))();
  v17 = simd_float4x4.position.getter();
  (*((swift_isaMask & *v10) + 0x2A0))(v17);
  simd_float4x4.position.getter();
  type metadata accessor for MeasureCamera();
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v58 = v18;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v59 = v19;
  sub_100018F04(&v91, &qword_1004A1208, &qword_1003D6DF0);
  result = 0;
  v21 = (LODWORD(v58) & 0x7FFFFF) != 0 && (~LODWORD(v58) & 0x7F800000) == 0;
  v22 = v58 >= 0.0 && v58 <= 1.0;
  if (v22 && !v21)
  {
    result = 0;
    v23 = (LODWORD(v59) & 0x7FFFFF) != 0 && (~LODWORD(v59) & 0x7F800000) == 0;
    v24 = v59 >= 0.0 && v59 <= 1.0;
    if (v24 && !v23)
    {
      CGPoint.init(xy:)();
      v26 = v25;
      v28 = v27;
      CGPoint.init(xy:)();
      v86 = v26;
      v87 = v28;
      v88 = v29;
      v89 = v30;
      v90 = 0;
      v31 = *(v6 + 152);
      v32 = *(v31 + 16);
      if (v32)
      {
        v57 = a1;
        v33 = v26 - v29;
        v34 = v28 - v30;
        v35 = v33;
        v36 = atan2f(fabsf(v34), fabsf(v35)) * 57.296;

        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = (v31 + 64);
        v43 = 1;
        do
        {
          v44 = *(v42 - 4);
          v45 = *(v42 - 3);
          v46 = *(v42 - 2);
          v47 = *(v42 - 1);
          v48 = v45 - v47;
          v49 = v44 - v46;
          if ((atan2f(fabsf(v48), fabsf(v49)) * 57.296) != v36)
          {
            v50 = *v42;
            *&v81 = v44;
            *(&v81 + 1) = v45;
            v82 = v46;
            v83 = v47;
            v84 = v50;
            v85 = 0;
            sub_100118B1C(&v81, &v64);
            if (v70 >= INFINITY)
            {
              v51 = v37;
            }

            else
            {
              v51 = v64;
            }

            if (v70 <= INFINITY)
            {
              v37 = v51;
            }

            else
            {
              v37 = v64;
            }

            if (v70 >= INFINITY)
            {
              v52 = v38;
            }

            else
            {
              v52 = v65;
            }

            if (v70 <= INFINITY)
            {
              v38 = v52;
            }

            else
            {
              v38 = v65;
            }

            if (v70 >= INFINITY)
            {
              v53 = v39;
            }

            else
            {
              v53 = v66;
            }

            if (v70 <= INFINITY)
            {
              v39 = v53;
            }

            else
            {
              v39 = v66;
            }

            if (v70 >= INFINITY)
            {
              v54 = v40;
            }

            else
            {
              v54 = v67;
            }

            if (v70 <= INFINITY)
            {
              v40 = v54;
            }

            else
            {
              v40 = v67;
            }

            if (v70 >= INFINITY)
            {
              v55 = v41;
            }

            else
            {
              v55 = v68;
            }

            if (v70 <= INFINITY)
            {
              v41 = v55;
            }

            else
            {
              v41 = v68;
            }

            if (v70 >= INFINITY)
            {
              v56 = v43;
            }

            else
            {
              v56 = v69;
            }

            if (v70 <= INFINITY)
            {
              v43 = v56;
            }

            else
            {
              v43 = v69;
            }
          }

          v42 += 5;
          --v32;
        }

        while (v32);

        if ((v43 & 1) == 0)
        {
          v64 = v37;
          v65 = v38;
          v66 = v39;
          v67 = v40;
          v68 = v41;
          return sub_100117DA8(&v64, v57, a2, a3, a4, a5);
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_10011FC98(uint64_t a1, float32x4_t a2)
{
  v3 = a1 + direct field offset for WorldEdge.p1;
  swift_beginAccess();
  if (*(v3 + 16))
  {
    return 0;
  }

  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = (a1 + direct field offset for WorldEdge.p2);
  swift_beginAccess();
  if (v6[2].i8[0])
  {
    return 0;
  }

  *v8.f32 = v4;
  v8.i64[1] = v5;
  *v7.f32 = vsub_f32(*v6, v4);
  v32 = vsubq_f32(*v6->f32, v8);
  v33 = v7;
  v9 = vmuls_lane_f32(v32.f32[2], v32, 2) + vaddv_f32(vmul_f32(*v7.f32, *v7.f32));
  closestPointOnLine(lineP1:lineP2:point:)();
  v11 = vsubq_f32(v10, a2);
  v12 = vmulq_f32(v11, v11);
  if (v9 <= 0.0225)
  {
    v37 = v12;
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v13._countAndFlagsBits = 0xD000000000000028;
    v13._object = 0x8000000100407BD0;
    Log.default(_:isPrivate:)(v13, 0);
    v12 = v37;
  }

  v14 = v12.f32[2];
  v15 = vaddv_f32(*v12.f32);
  if (v9 >= 2.25)
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v16._object = 0x8000000100407C00;
    v16._countAndFlagsBits = 0xD000000000000027;
    Log.default(_:isPrivate:)(v16, 0);
  }

  v17 = v33;
  v17.i32[2] = v32.i32[2];
  v18 = v14 + v15;
  if (qword_1004A0348 != -1)
  {
    v35 = v17;
    swift_once();
    v17 = v35;
  }

  v17.i32[3] = 0;
  v19 = *&dword_1004D4F04;
  if (v18 >= *&dword_1004D4F04)
  {
    v34 = v17;
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v20._countAndFlagsBits = 0xD00000000000002BLL;
    v20._object = 0x8000000100407C30;
    Log.default(_:isPrivate:)(v20, 0);
    v17 = v34;
  }

  v21 = vmulq_f32(v17, v17);
  *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
  *v21.f32 = vrsqrte_f32(v22);
  *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
  v23 = vmulq_n_f32(v17, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
  v24 = fabsf(vmuls_lane_f32(0.0, v23, 2) + (v23.f32[1] + (0.0 * v23.f32[0])));
  v25 = 1.0;
  if (v24 <= 1.0)
  {
    v25 = v24;
  }

  v26 = acosf(v25) * 57.296;
  if (v26 >= 3.0 && v24 >= 0.052336)
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v28._countAndFlagsBits = 0xD00000000000002ALL;
    v28._object = 0x8000000100407C60;
    Log.default(_:isPrivate:)(v28, 0);
  }

  v29 = v9 > 0.0225 && v9 < 2.25;
  if (!v29 || v18 >= v19)
  {
    return 0;
  }

  if (v26 >= 10.0)
  {
    return v24 < 0.17365;
  }

  return 1;
}

void sub_10012006C(uint64_t a1, int8x16_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = a1 + direct field offset for WorldEdge.p1;
  swift_beginAccess();
  if ((*(v3 + 16) & 1) == 0)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = a1 + direct field offset for WorldEdge.p2;
    swift_beginAccess();
    if ((*(v6 + 16) & 1) == 0)
    {
      v7 = (v6 + 8);
      v8 = *v6;
      v9 = vld1q_dup_f64(v7);
      v77 = *&v9.f64[1];
      v10 = direct field offset for WorldEdge.backingPlanes;
      swift_beginAccess();
      v12 = *(a1 + v10);
      v65 = *(v12 + 16);
      if (v65)
      {
        v13 = vdupq_n_s64(v5);
        v14 = *&v13.i32[2] + v77;
        *v11.f32 = vsub_f32(v8, v4);
        v11.f32[2] = v77 - *&v13.i32[2];
        v15 = vmulq_f32(v11, v11);
        *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
        *v15.f32 = vrsqrte_f32(v16);
        *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
        v17 = vmulq_n_f32(v11, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
        v18 = vmulq_f32(v17, v17);
        *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
        v20 = vrsqrte_f32(v19);
        v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
        v22 = vmulq_n_f32(v17, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]);
        v23 = vmul_f32(vadd_f32(v4, v8), 0x3F0000003F000000);
        v21.i32[0] = vdup_lane_s32(v23, 1).u32[0];
        v21.f32[1] = v14 * 0.5;
        v24 = vmul_f32(vsub_f32(*&vextq_s8(a2, a2, 4uLL), v21), *&vextq_s8(v22, v22, 4uLL));
        v25 = v24.f32[1] + (((*a2.i32 - v23.f32[0]) * v22.f32[0]) + v24.f32[0]);
        v71 = (v14 * 0.5) + vmuls_lane_f32(v25, v22, 2);
        v72 = vadd_f32(v23, vmul_n_f32(*v22.f32, v25));
        v64 = v12 + 32;
        v62 = vnegq_f32(v17);
        v63 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);

        v27 = 0;
        v28.i32[0] = vdup_lane_s32(v72, 1).u32[0];
        v28.f32[1] = v71;
        v61 = v28;
        v29 = _swiftEmptyArrayStorage;
        v60 = v26;
        while (v27 < *(v26 + 16))
        {
          v69 = v27;
          v30 = (v64 + 32 * v27);
          v67 = v30[1];
          v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), v62), v67, v63);
          v32 = vmulq_f32(v31, v31);
          *&v33 = v32.f32[1] + (v32.f32[2] + v32.f32[0]);
          v34 = vrsqrte_f32(v33);
          v35 = vmul_f32(v34, vrsqrts_f32(v33, vmul_f32(v34, v34)));
          v36 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), vmul_f32(v35, vrsqrts_f32(v33, vmul_f32(v35, v35))).f32[0]);
          v68 = *v30;
          *v32.f32 = vmul_f32(vsub_f32(vext_s8(*v30->f32, *&vextq_s8(*v30, *v30, 8uLL), 4uLL), v61), *&vextq_s8(v36, v36, 4uLL));
          if ((v32.f32[1] + (((COERCE_FLOAT(*v30) - *v72.i32) * v36.f32[0]) + v32.f32[0])) <= 0.0)
          {
            v37 = -1.0;
          }

          else
          {
            v37 = 1.0;
          }

          v75 = vmuls_lane_f32(v37, v36, 2);
          v76 = vmul_n_f32(*v36.f32, v37);
          static simd_float4x4.make(position:normalizedForward:)();
          v38 = objc_allocWithZone(ObjectType);
          v70 = WorldEdge.init(transform:p1:p2:type:adVariance:)();
          v39 = *(v29 + 2);
          if (v39)
          {
            v40 = 0;
            v41 = v29 + 8;
            do
            {
              v42 = &v41[6 * v40];
              v43 = v40;
              while (1)
              {
                if (v43 >= *(v29 + 2))
                {
                  __break(1u);
                  goto LABEL_34;
                }

                v44 = *(v42 - 4);
                v73 = *v42;
                v74 = *(v42 - 1);
                swift_beginAccess();
                simd_float4x4.forward.getter();
                v79 = v45;
                v46 = qword_1004A0320;
                v47 = v44;
                if (v46 != -1)
                {
                  v51 = v47;
                  swift_once();
                  v47 = v51;
                }

                v48 = vmulq_f32(v79, v79);
                *&v49 = v48.f32[2] + vaddv_f32(*v48.f32);
                *v48.f32 = vrsqrte_f32(v49);
                *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
                v50 = vmulq_n_f32(v79, vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
                if (*&dword_1004D4EF0 < (vmuls_lane_f32(v75, v50, 2) + ((v76.f32[0] * v50.f32[0]) + vmuls_lane_f32(v76.f32[1], *v50.f32, 1))))
                {
                  break;
                }

                ++v43;

                v42 += 6;
                if (v39 == v43)
                {
                  goto LABEL_25;
                }
              }

              v80 = v47;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1000A2754(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
              }

              v53 = _swiftEmptyArrayStorage[2];
              v52 = _swiftEmptyArrayStorage[3];
              v54 = v80;
              if (*&v53 >= *&v52 >> 1)
              {
                sub_1000A2754((*&v52 > 1uLL), *&v53 + 1, 1);
                v54 = v80;
              }

              *&_swiftEmptyArrayStorage[2] = *&v53 + 1;
              v55 = &_swiftEmptyArrayStorage[6 * *&v53];
              *(v55 + 4) = v54;
              v40 = v43 + 1;
              *(v55 + 3) = v74;
              *(v55 + 4) = v73;
              v41 = v29 + 8;
            }

            while (v39 - 1 != v43);
          }

LABEL_25:
          v56 = _swiftEmptyArrayStorage[2];

          if (v56 == 0.0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_100068514(0, *(v29 + 2) + 1, 1, v29);
            }

            v58 = *(v29 + 2);
            v57 = *(v29 + 3);
            if (v58 >= v57 >> 1)
            {
              v29 = sub_100068514((v57 > 1), v58 + 1, 1, v29);
            }

            *(v29 + 2) = v58 + 1;
            v59 = &v29[6 * v58];
            *(v59 + 4) = v70;
            *(v59 + 3) = v68;
            *(v59 + 4) = v67;
          }

          else
          {
          }

          v26 = v60;
          v27 = v69 + 1;
          if (v69 + 1 == v65)
          {

            return;
          }
        }

LABEL_34:
        __break(1u);
      }
    }
  }
}