uint64_t sub_1005EB758(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FetchResponse.SearchResult(0);
  __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a3;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);

    do
    {
      sub_10062CD24(v12, v10, type metadata accessor for FetchResponse.SearchResult);
      if (*(v10 + *(v7 + 28)) != 15)
      {
        v14 = objc_autoreleasePoolPush();
        sub_1005EB8E4(v10, a2, v3, &v17);
        objc_autoreleasePoolPop(v14);
      }

      sub_10062CBB8(v10, type metadata accessor for FetchResponse.SearchResult);
      v12 += v13;
      --v11;
    }

    while (v11);
    return v17;
  }

  else
  {
  }

  return a3;
}

void sub_1005EB8E4(uint64_t *a1, unint64_t a2, void *a3, void *a4)
{
  v278 = a4;
  v314 = a3;
  v308 = a2;
  v312 = type metadata accessor for LocationFetcher(0);
  isa = v312[-1].isa;
  __chkstk_darwin(v312);
  v276 = v5;
  v300 = &v266 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = __chkstk_darwin(v6 - 8);
  v288 = &v266 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v304 = &v266 - v9;
  v10 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v10 - 8);
  v294 = &v266 - v11;
  v299 = type metadata accessor for RawSearchResult(0);
  v275 = *(v299 - 8);
  v12 = __chkstk_darwin(v299);
  v286 = &v266 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = v13;
  __chkstk_darwin(v12);
  v310 = (&v266 - v14);
  v306 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v289 = *(v306 - 8);
  v15 = __chkstk_darwin(v306);
  v298 = &v266 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = v16;
  __chkstk_darwin(v15);
  v305 = (&v266 - v17);
  v307 = type metadata accessor for Date();
  v301 = *(v307 - 8);
  v18 = __chkstk_darwin(v307);
  v297 = &v266 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v274 = v19;
  __chkstk_darwin(v18);
  v302 = (&v266 - v20);
  v311 = type metadata accessor for UUID();
  v292 = *(v311 - 8);
  v21 = __chkstk_darwin(v311);
  v277 = &v266 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v303 = &v266 - v24;
  v25 = __chkstk_darwin(v23);
  v296 = &v266 - v26;
  v27 = __chkstk_darwin(v25);
  v283 = &v266 - v28;
  __chkstk_darwin(v27);
  v309 = &v266 - v29;
  v293 = type metadata accessor for TimeBasedKey(0);
  v280 = *(v293 - 1);
  v30 = __chkstk_darwin(v293);
  v284 = (&v266 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __chkstk_darwin(v30);
  v279 = &v266 - v33;
  v34 = __chkstk_darwin(v32);
  v282 = &v266 - v35;
  v36 = __chkstk_darwin(v34);
  v281 = &v266 - v37;
  v38 = __chkstk_darwin(v36);
  v290 = &v266 - v39;
  v40 = __chkstk_darwin(v38);
  v291 = (&v266 - v41);
  v42 = __chkstk_darwin(v40);
  v44 = &v266 - v43;
  __chkstk_darwin(v42);
  v46 = &v266 - v45;
  v47 = sub_1000BC4D4(&qword_1016A5928, &qword_1013B33C8);
  __chkstk_darwin(v47 - 8);
  v49 = &v266 - v48;
  v50 = sub_1000BC4D4(&qword_1016A5930, &qword_1013B33D0);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v53 = &v266 - v52;
  v54 = a1;
  v56 = *a1;
  v55 = a1[1];
  sub_100017D5C(v56, v55);
  v57 = v313;
  sub_1004A4714(v56, v55, &v329);
  if (v57)
  {
    v58 = v57;
    goto LABEL_3;
  }

  v271 = v44;
  v272 = v54;
  v273 = v46;
  v313 = v53;
  v66 = *(&v329 + 1);
  KeyPath = v329;
  sub_10062D61C(v329, *(&v329 + 1), v308, v49);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_100016590(KeyPath, v66);
    sub_10000B3A8(v49, &qword_1016A5928, &qword_1013B33C8);
    return;
  }

  v270 = v66;
  v68 = v313;
  sub_1000D2AD8(v49, v313, &qword_1016A5930, &qword_1013B33D0);
  v308 = *(v68 + *(v50 + 48));
  v69 = *(v68 + *(v50 + 64));
  sub_100025020(v68, &v329);
  if (!v331)
  {
    sub_10000B3A8(v68, &qword_1016A5930, &qword_1013B33D0);
    sub_100016590(KeyPath, v270);
    sub_10000B3A8(&v329, &qword_101696920, &unk_10138B200);
    return;
  }

  sub_10000A748(&v329, &v326);
  type metadata accessor for BeaconKeyManager(0);
  v70 = v292 + 2;
  v268 = (v301 + 8);
  ++v292;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v71 = v323;
  v73 = v327;
  v72 = v328;
  sub_1000035D0(&v326, v327);
  (*(*(*(v72 + 8) + 8) + 32))(v73);
  v74 = v327;
  v75 = v328;
  sub_1000035D0(&v326, v327);
  (*(v75 + 192))(v74, v75);
  if (v69)
  {
    v321 = &type metadata for SecondaryIndex;
    v76 = sub_10022A4D4();
  }

  else
  {
    v321 = &type metadata for PrimaryIndex;
    v76 = sub_10002A2B8();
  }

  v77 = v311;
  v78 = v306;
  v79 = v305;
  v322 = v76;
  *&v320 = v308;
  sub_10000A748(&v320, &v323);
  v80 = *v70;
  (*v70)(v79, v309, v77);
  sub_10001F280(&v323, v79 + *(v78 + 20));
  sub_1012DE5A0(v79, 0, &v329);
  sub_10062CBB8(v79, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100007BAC(&v323);
  v81 = v331;
  v267 = KeyPath;
  v269 = v69;
  if (v331 >> 60 == 15)
  {
    if (qword_101694BE8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_81;
  }

  v283 = v71;
  if ((v69 & 1) == 0)
  {
    v98 = v307;
    v80 = v302;
    v99 = v309;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v266 = v57;
    v108 = v323;
    KeyPath = swift_getKeyPath();
    v109 = sub_1010790F4(KeyPath, v108);
    if ((v110 & 1) == 0)
    {
      v83 = v109;

      if ((v83 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      __break(1u);
LABEL_83:
      objc_autoreleasePoolPop(v80);
      __break(1u);
    }

LABEL_84:
    *&v323 = 0;
    *(&v323 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v265._countAndFlagsBits = 0xD000000000000026;
    v265._object = 0x800000010134CA80;
    String.append(_:)(v265);
    *&v320 = KeyPath;
    sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v98 = v307;
  v80 = v302;
  v99 = v309;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v266 = v57;
  v100 = v323;
  KeyPath = swift_getKeyPath();
  v101 = sub_1010790F4(KeyPath, v100);
  if (v102)
  {
    goto LABEL_84;
  }

  v83 = v101;

  if ((v83 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_35:
  v111 = v312;
  v112 = v291;
  v113 = v293;
  v114 = v308;
  sub_1008849E8(v80, v308, v83, v291 + *(v293 + 5));

  *v112 = v114;
  v115 = v112 + *(v113 + 6);
  *v115 = v329;
  *(v115 + 2) = v330;
  *(v115 + 3) = v81;
  *(v115 + 2) = v332;
  (*v268)(v80, v98);
  v80 = *v292;
  v116 = v99;
  v117 = v311;
  (*v292)(v116, v311);
  sub_10062CD24(v112, v290, type metadata accessor for TimeBasedKey);
  v118 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v118 = sub_100A5BDF0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v120 = v118[2];
  v119 = v118[3];
  v121 = v280;
  if (v120 >= v119 >> 1)
  {
    v118 = sub_100A5BDF0((v119 > 1), v120 + 1, 1, v118);
  }

  sub_10062CBB8(v291, type metadata accessor for TimeBasedKey);
  v118[2] = v120 + 1;
  v122 = v118 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
  sub_10062CC64(v290, &v122[v121[9] * v120], type metadata accessor for TimeBasedKey);
  v123 = v122;
  v124 = v271;
  sub_10062CD24(v123, v271, type metadata accessor for TimeBasedKey);

  v125 = v273;
  sub_10062CC64(v124, v273, type metadata accessor for TimeBasedKey);
  isa_low = SLODWORD(v111[4].isa);
  sub_10001F280(&v326, &v323);
  v127 = v281;
  sub_10062CD24(v125, v281, type metadata accessor for TimeBasedKey);
  v128 = v282;
  sub_10062CD24(v125, v282, type metadata accessor for TimeBasedKey);
  v283 = isa_low;
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v280 = v80;
    v333 = v132;
    *v131 = 141559043;
    *(v131 + 4) = 1752392040;
    *(v131 + 12) = 2081;
    v312 = v129;
    LODWORD(v309) = v130;
    v133 = v324;
    v134 = v325;
    sub_1000035D0(&v323, v324);
    v135 = v296;
    (*(*(*(v134 + 8) + 8) + 32))(v133);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v136 = dispatch thunk of CustomStringConvertible.description.getter();
    v138 = v137;
    v139 = v135;
    v140 = v293;
    (v280)(v139, v117);
    sub_100007BAC(&v323);
    v141 = sub_1000136BC(v136, v138, &v333);

    *(v131 + 14) = v141;
    *(v131 + 22) = 2160;
    *(v131 + 24) = 1752392040;
    *(v131 + 32) = 2081;
    v142 = PublicKey.advertisement.getter(*(v127 + *(v140 + 6) + 16), *(v127 + *(v140 + 6) + 24));
    v144 = v143;
    sub_100017D5C(v142, v143);
    v145 = static MACAddress.length.getter();
    sub_10002EA98(v145, v142, v144, &v320);
    sub_100016590(v142, v144);
    v146 = v320;
    v147 = Data.hexString.getter();
    v149 = v148;
    sub_100016590(v146, *(&v146 + 1));
    v150 = v127;
    v151 = v140;
    sub_10062CBB8(v150, type metadata accessor for TimeBasedKey);
    v152 = sub_1000136BC(v147, v149, &v333);
    v117 = v311;

    *(v131 + 34) = v152;
    *(v131 + 42) = 2082;
    *&v320 = 0;
    *(&v320 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *&v320 = 0xD000000000000015;
    *(&v320 + 1) = 0x800000010135B6B0;
    v319 = *v128;
    v153._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v153);

    v154._object = 0x800000010135B6D0;
    v154._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v154);
    type metadata accessor for DateInterval();
    sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v155._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v155);

    v157 = *(&v320 + 1);
    v156 = v320;
    sub_10062CBB8(v128, type metadata accessor for TimeBasedKey);
    v158 = sub_1000136BC(v156, v157, &v333);

    *(v131 + 44) = v158;
    v159 = v312;
    _os_log_impl(&_mh_execute_header, v312, v309, "Using decryption key for beacon %{private,mask.hash}s,\nadvertisementAddress: %{private,mask.hash}s,\n%{public}s.", v131, 0x34u);
    swift_arrayDestroy();
    v80 = v280;

    v160 = v310;
  }

  else
  {

    sub_10062CBB8(v128, type metadata accessor for TimeBasedKey);
    sub_100007BAC(&v323);
    sub_10062CBB8(v127, type metadata accessor for TimeBasedKey);
    v160 = v310;
    v151 = v293;
  }

  v161 = v327;
  v162 = v328;
  sub_1000035D0(&v326, v327);
  KeyPath = v303;
  (*(*(*(v162 + 8) + 8) + 32))(v161);
  *&v323 = _swiftEmptyArrayStorage;
  v163 = v273;
  v164 = &v273[*(v151 + 6)];
  v165 = *(v164 + 5);
  v166 = v284;
  if (v165 >> 60 == 15)
  {
    sub_10062B0D0();
    v167 = swift_allocError();
    *v168 = 0;
    swift_willThrow();
    goto LABEL_46;
  }

  v169 = *(v164 + 4);
  sub_100017D5C(v169, *(v164 + 5));
  v170 = v266;
  v171 = sub_100496ABC();
  v167 = v170;
  if (v170)
  {
    sub_100006654(v169, v165);
LABEL_46:
    (v80)(KeyPath, v117);
    sub_10001F280(&v326, &v323);
    v172 = v279;
    sub_10062CD24(v163, v279, type metadata accessor for TimeBasedKey);
    sub_10062CD24(v163, v166, type metadata accessor for TimeBasedKey);
    swift_errorRetain();
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v333 = v314;
      *v175 = 141559299;
      *(v175 + 4) = 1752392040;
      *(v175 + 12) = 2081;
      v312 = 0;
      v310 = v173;
      v177 = v324;
      v176 = v325;
      sub_1000035D0(&v323, v324);
      v178 = *(*(*(v176 + 8) + 8) + 32);
      LODWORD(v309) = v174;
      v179 = v296;
      v178(v177);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v180 = dispatch thunk of CustomStringConvertible.description.getter();
      v182 = v181;
      (v80)(v179, v117);
      sub_100007BAC(&v323);
      v183 = sub_1000136BC(v180, v182, &v333);

      *(v175 + 14) = v183;
      *(v175 + 22) = 2160;
      *(v175 + 24) = 1752392040;
      *(v175 + 32) = 2081;
      v184 = PublicKey.advertisement.getter(*(v172 + *(v293 + 6) + 16), *(v172 + *(v293 + 6) + 24));
      v186 = v185;
      sub_100017D5C(v184, v185);
      v187 = static MACAddress.length.getter();
      sub_10002EA98(v187, v184, v186, &v320);
      sub_100016590(v184, v186);
      v188 = v320;
      v189 = Data.hexString.getter();
      v191 = v190;
      sub_100016590(v188, *(&v188 + 1));
      sub_10062CBB8(v172, type metadata accessor for TimeBasedKey);
      v192 = sub_1000136BC(v189, v191, &v333);

      *(v175 + 34) = v192;
      *(v175 + 42) = 2082;
      *&v320 = 0;
      *(&v320 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      *&v320 = 0xD000000000000015;
      *(&v320 + 1) = 0x800000010135B6B0;
      v193 = v284;
      v319 = *v284;
      v194._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v194);

      v195._object = 0x800000010135B6D0;
      v195._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v195);
      type metadata accessor for DateInterval();
      sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v196._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v196);

      v197 = v320;
      sub_10062CBB8(v193, type metadata accessor for TimeBasedKey);
      v198 = sub_1000136BC(v197, *(&v197 + 1), &v333);

      *(v175 + 44) = v198;
      *(v175 + 52) = 2082;
      *&v320 = v167;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v199 = String.init<A>(describing:)();
      v201 = sub_1000136BC(v199, v200, &v333);

      *(v175 + 54) = v201;
      v202 = v310;
      _os_log_impl(&_mh_execute_header, v310, v309, "Error decrypting location for beacon: %{private,mask.hash}s,\nadvertisementAddress: %{private,mask.hash}s,\n%{public}s,\n%{public}s.", v175, 0x3Eu);
      swift_arrayDestroy();

      sub_100016590(v267, v270);

      sub_10062CBB8(v273, type metadata accessor for TimeBasedKey);
      sub_10000B3A8(v313, &qword_1016A5930, &qword_1013B33D0);
    }

    else
    {
      sub_100016590(v267, v270);

      sub_10062CBB8(v284, type metadata accessor for TimeBasedKey);
      sub_10062CBB8(v163, type metadata accessor for TimeBasedKey);
      sub_10000B3A8(v313, &qword_1016A5930, &qword_1013B33D0);
      sub_100007BAC(&v323);
      sub_10062CBB8(v172, type metadata accessor for TimeBasedKey);
    }

LABEL_79:
    sub_100007BAC(&v326);
    return;
  }

  v309 = v169;
  v308 = v165;
  v280 = v80;
  v312 = 0;
  v77 = v272[2];
  v203 = *(v77 + 16);
  if (!v203)
  {
    v71 = v171;
LABEL_56:
    v209 = v311;
    (v280)(v303, v311);

    sub_100006654(v309, v308);
    v211 = *(v323 + 16);
    v272 = v323;
    if (v211)
    {
      v212 = *(v275 + 80);
      v282 = ~v212;
      v213 = v323 + ((v212 + 32) & ~v212);
      v303 = *(v275 + 72);
      v302 = (v289 + 48);
      v281 = v301 + 16;
      v279 = v276 + 7;
      v284 = v212;
      v276 = (v274 + v212);
      v275 = v301 + 32;
      *&v210 = 141558275;
      v274 = v210;
      v214 = isa;
      v215 = v300;
      v216 = v294;
      v217 = v299;
      v218 = v296;
      do
      {
        v309 = v211;
        v308 = v213;
        sub_10062CD24(v213, v160, type metadata accessor for RawSearchResult);
        sub_1000D2A70(v160 + *(v217 + 44), v216, &unk_1016C1120, &qword_1013C49D0);
        if ((*v302)(v216, 1, v306) == 1)
        {
          sub_10000B3A8(v216, &unk_1016C1120, &qword_1013C49D0);
          sub_10001F280(&v326, &v323);
          v219 = Logger.logObject.getter();
          v220 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v219, v220))
          {
            v221 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            *&v320 = v222;
            *v221 = v274;
            *(v221 + 4) = 1752392040;
            *(v221 + 12) = 2081;
            v224 = v324;
            v223 = v325;
            sub_1000035D0(&v323, v324);
            (*(*(*(v223 + 8) + 8) + 32))(v224);
            sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v225 = dispatch thunk of CustomStringConvertible.description.getter();
            v227 = v226;
            (v280)(v218, v311);
            sub_100007BAC(&v323);
            v228 = sub_1000136BC(v225, v227, &v320);

            *(v221 + 14) = v228;
            _os_log_impl(&_mh_execute_header, v219, v220, "No index information for: %{private,mask.hash}s.", v221, 0x16u);
            sub_100007BAC(v222);
            v214 = isa;
            v209 = v311;

            v216 = v294;

            v160 = v310;
            sub_10062CBB8(v310, type metadata accessor for RawSearchResult);
          }

          else
          {

            v160 = v310;
            sub_10062CBB8(v310, type metadata accessor for RawSearchResult);
            sub_100007BAC(&v323);
          }

          v215 = v300;
          v217 = v299;
        }

        else
        {
          v293 = type metadata accessor for BeaconKeyManager.IndexInformation;
          v229 = v298;
          sub_10062CC64(v216, v298, type metadata accessor for BeaconKeyManager.IndexInformation);
          v230 = *(v217 + 20);
          v291 = type metadata accessor for TaskPriority();
          v290 = *(v291 - 1);
          (*(v290 + 56))(v304, 1, 1, v291);
          sub_10062CD24(v314, v215, type metadata accessor for LocationFetcher);
          sub_10001F280(&v326, &v323);
          sub_10062CD24(v229, v305, type metadata accessor for BeaconKeyManager.IndexInformation);
          v231 = v301;
          (*(v301 + 16))(v297, v160 + v230, v307);
          v232 = v286;
          sub_10062CD24(v160, v286, type metadata accessor for RawSearchResult);
          v233 = (*(v214 + 80) + 32) & ~*(v214 + 80);
          v234 = &v279[v233] & 0xFFFFFFFFFFFFFFF8;
          v235 = (*(v289 + 80) + v234 + 40) & ~*(v289 + 80);
          v236 = v215;
          v237 = (v285 + *(v231 + 80) + v235) & ~*(v231 + 80);
          v238 = &v276[v237] & v282;
          v239 = swift_allocObject();
          *(v239 + 16) = 0;
          *(v239 + 24) = 0;
          sub_10062CC64(v236, v239 + v233, type metadata accessor for LocationFetcher);
          sub_10000A748(&v323, v239 + v234);
          v240 = v239 + v235;
          v241 = v290;
          sub_10062CC64(v305, v240, v293);
          (*(v231 + 32))(v239 + v237, v297, v307);
          v242 = v232;
          v243 = v291;
          sub_10062CC64(v242, v239 + v238, type metadata accessor for RawSearchResult);
          v244 = v288;
          sub_1000D2A70(v304, v288, &qword_101698C00, &qword_10138B570);
          v245 = (*(v241 + 48))(v244, 1, v243);

          if (v245 == 1)
          {
            sub_10000B3A8(v244, &qword_101698C00, &qword_10138B570);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v241 + 8))(v244, v243);
          }

          v246 = *(v239 + 16);
          swift_unknownObjectRetain();

          v218 = v296;
          if (v246)
          {
            swift_getObjectType();
            v247 = dispatch thunk of Actor.unownedExecutor.getter();
            v249 = v248;
            swift_unknownObjectRelease();
          }

          else
          {
            v247 = 0;
            v249 = 0;
          }

          v209 = v311;
          v214 = isa;
          sub_10000B3A8(v304, &qword_101698C00, &qword_10138B570);
          v250 = swift_allocObject();
          *(v250 + 16) = &unk_1013B3408;
          *(v250 + 24) = v239;
          if (v249 | v247)
          {
            v316 = 0;
            v315 = 0;
            v317 = v247;
            v318 = v249;
          }

          v215 = v300;
          v217 = v299;
          swift_task_create();

          sub_10062CBB8(v298, type metadata accessor for BeaconKeyManager.IndexInformation);
          v160 = v310;
          sub_10062CBB8(v310, type metadata accessor for RawSearchResult);
          v216 = v294;
        }

        v213 = v308 + v303;
        v211 = v309 - 1;
      }

      while (v309 != 1);
    }

    else
    {
      v218 = v296;
    }

    v251 = v327;
    v252 = v328;
    sub_1000035D0(&v326, v327);
    v253 = v277;
    (*(*(*(v252 + 8) + 8) + 32))(v251);
    v254 = *v278;
    if (*(*v278 + 16) && (v255 = sub_1000210EC(v253), (v256 & 1) != 0))
    {
      v257 = *(*(v254 + 56) + 8 * v255);
    }

    else
    {
      v257 = &_swiftEmptySetSingleton;
    }

    v258 = v280;
    (v280)(v253, v209);
    *&v323 = v257;
    sub_1006254B4(v272);

    v259 = v327;
    v260 = v328;
    sub_1000035D0(&v326, v327);
    (*(*(*(v260 + 8) + 8) + 32))(v259);
    v261 = v323;
    v262 = v218;
    v263 = v278;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v320 = *v263;
    *v263 = 0x8000000000000000;
    sub_100FFC200(v261, v262, isUniquelyReferenced_nonNull_native);
    v258(v262, v209);
    *v263 = v320;
    sub_100016590(v267, v270);
    sub_10062CBB8(v273, type metadata accessor for TimeBasedKey);
    sub_10000B3A8(v313, &qword_1016A5930, &qword_1013B33D0);
    goto LABEL_79;
  }

  v71 = v171;
  v204 = 0;
  v205 = (v77 + 48);
  while (v204 < *(v77 + 16))
  {
    v206 = *(v205 - 2);
    KeyPath = *(v205 - 1);
    v207 = *v205 | (*(v205 + 4) << 32);
    sub_100017D5C(v206, KeyPath);
    v80 = objc_autoreleasePoolPush();
    v208 = v312;
    sub_1005F97BC(v71, v206, KeyPath, v207, v273, v314, v303, v269, v272, &v323);
    v312 = v208;
    if (v208)
    {
      goto LABEL_83;
    }

    ++v204;
    objc_autoreleasePoolPop(v80);
    sub_100016590(v206, KeyPath);
    v205 += 6;
    v160 = v310;
    if (v203 == v204)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_15:
  v82 = type metadata accessor for Logger();
  sub_1000076D4(v82, qword_10177BA08);
  v81 = v283;
  (v80)(v283, v309, v77);

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = v81;
    v86 = swift_slowAlloc();
    v310 = swift_slowAlloc();
    *&v323 = v310;
    *v86 = 136447491;
    *&v320 = *v71;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v87 = String.init<A>(describing:)();
    v89 = sub_1000136BC(v87, v88, &v323);

    *(v86 + 4) = v89;
    *(v86 + 12) = 2082;
    *(v86 + 14) = sub_1000136BC(0xD00000000000004BLL, 0x800000010135B660, &v323);
    *(v86 + 22) = 2160;
    *(v86 + 24) = 1752392040;
    *(v86 + 32) = 2081;
    v90 = UUID.uuidString.getter();
    v92 = v91;
    v93 = *v292;
    (*v292)(v85, v311);
    v94 = sub_1000136BC(v90, v92, &v323);

    *(v86 + 34) = v94;
    *(v86 + 42) = 2082;
    if (v269)
    {
      v95 = 0x61646E6F6365732ELL;
    }

    else
    {
      v95 = 0x7972616D6972702ELL;
    }

    if (v269)
    {
      v96 = 0xEA00000000007972;
    }

    else
    {
      v96 = 0xE800000000000000;
    }

    v97 = sub_1000136BC(v95, v96, &v323);

    *(v86 + 44) = v97;
    KeyPath = v267;
    *(v86 + 52) = 2048;
    *(v86 + 54) = v308;
    _os_log_impl(&_mh_execute_header, v83, v84, "%{public}s: %{public}s. Unable to obtain keys for beacon %{private,mask.hash}s, sequence %{public}s, index %llu", v86, 0x3Eu);
    swift_arrayDestroy();

    goto LABEL_30;
  }

LABEL_29:

  v93 = *v292;
  (*v292)(v81, v311);
LABEL_30:
  v103 = v313;
  v104 = v270;
  v105 = v307;
  v106 = v302;
  sub_100139CA0();
  v58 = swift_allocError();
  *v107 = 10;
  swift_willThrow();
  sub_100016590(KeyPath, v104);

  (*v268)(v106, v105);
  v93(v309, v311);
  sub_10000B3A8(v103, &qword_1016A5930, &qword_1013B33D0);

  sub_100007BAC(&v326);
LABEL_3:
  swift_errorRetain();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v326 = v62;
    *v61 = 136446210;
    *&v323 = v58;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v63 = String.init<A>(describing:)();
    v65 = sub_1000136BC(v63, v64, &v326);

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v59, v60, "Error getting keys %{public}s.", v61, 0xCu);
    sub_100007BAC(v62);
  }

  else
  {
  }
}

uint64_t sub_1005EE304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = type metadata accessor for UUID();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005EE408, 0, 0);
}

uint64_t sub_1005EE408()
{
  v35 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  *(v0 + 232) = *(type metadata accessor for LocationFetcher(0) + 32);
  sub_10001F280(v3, v0 + 16);
  sub_10062CD24(v2, v1, type metadata accessor for BeaconKeyManager.IndexInformation);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v33 = *(v0 + 208);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    sub_100007BAC((v0 + 16));
    v15 = sub_1000136BC(v12, v14, &v34);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2082;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    v16._countAndFlagsBits = 123;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 47;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
    _print_unlocked<A, B>(_:_:)();
    v19._countAndFlagsBits = 125;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);
    sub_10062CBB8(v33, type metadata accessor for BeaconKeyManager.IndexInformation);
    v22 = sub_1000136BC(v20, v21, &v34);

    *(v9 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updating metadata for: %{private,mask.hash}s,indexInformation: %{public}s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 208);

    sub_10062CBB8(v23, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC((v0 + 16));
  }

  v24 = *(v0 + 160);
  v25 = (v24 + *(type metadata accessor for RawSearchResult(0) + 52));
  v26 = *v25;
  v27 = v25[1];
  v28 = swift_task_alloc();
  *(v0 + 216) = v28;
  *v28 = v0;
  v28[1] = sub_1005EE7E0;
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  v31 = *(v0 + 136);

  return sub_1010B7D4C(v30, v29, v26 | (v27 << 8), v31);
}

uint64_t sub_1005EE7E0()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005EE930, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1005EE930()
{
  v27 = v0;
  v1 = v0[25];
  v2 = v0[18];
  sub_10001F280(v0[17], (v0 + 7));
  sub_10062CD24(v2, v1, type metadata accessor for BeaconKeyManager.IndexInformation);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v25 = v0[25];
    v5 = v0[22];
    v6 = v0[23];
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = v0[10];
    v9 = v0[11];
    sub_1000035D0(v0 + 7, v10);
    (*(*(*(v9 + 8) + 8) + 32))(v10);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v6, v7);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v26);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2082;
    v0[12] = 0;
    v0[13] = 0xE000000000000000;
    v15._countAndFlagsBits = 123;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 47;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
    _print_unlocked<A, B>(_:_:)();
    v18._countAndFlagsBits = 125;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = v0[12];
    v20 = v0[13];
    sub_10062CBB8(v25, type metadata accessor for BeaconKeyManager.IndexInformation);
    v21 = sub_1000136BC(v19, v20, &v26);

    *(v8 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to update metadata for: %{private,mask.hash}s,indexInformation: %{public}s.", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[25];

    sub_10062CBB8(v22, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC(v0 + 7);
  }

  v23 = v0[1];

  return v23();
}

unsigned int (*sub_1005EECCC(uint64_t a1, uint64_t a2))(char *, uint64_t, NSObject *)
{
  v401 = a1;
  v3 = type metadata accessor for LocationFetcher(0);
  v377 = *(v3 - 8);
  __chkstk_darwin(v3);
  v376 = v4;
  v398 = &v345 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v404 = &v345 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v403 = &v345 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v345 - v12;
  v14 = __chkstk_darwin(v11);
  v378 = &v345 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v345 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v345 - v20;
  v22 = __chkstk_darwin(v19);
  v370 = &v345 - v23;
  v24 = __chkstk_darwin(v22);
  v362 = (&v345 - v25);
  v26 = __chkstk_darwin(v24);
  v365 = (&v345 - v27);
  v375 = v28;
  __chkstk_darwin(v26);
  v353 = &v345 - v29;
  v30 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v30 - 8);
  v368 = &v345 - v31;
  v369 = type metadata accessor for DirectorySequence();
  v367 = *(v369 - 8);
  __chkstk_darwin(v369);
  v382 = &v345 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = type metadata accessor for URL();
  isa = v394[-1].isa;
  v33 = __chkstk_darwin(v394);
  v361 = &v345 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v387 = &v345 - v35;
  v36 = sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  __chkstk_darwin(v36 - 8);
  v366 = &v345 - v37;
  v383 = type metadata accessor for BeaconEstimatedLocation(0);
  v395 = *(v383 - 8);
  v38 = __chkstk_darwin(v383);
  v374 = &v345 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v397 = &v345 - v41;
  v42 = __chkstk_darwin(v40);
  v386 = &v345 - v43;
  v44 = __chkstk_darwin(v42);
  v385 = &v345 - v45;
  v46 = __chkstk_darwin(v44);
  v384 = &v345 - v47;
  v48 = __chkstk_darwin(v46);
  v373 = &v345 - v49;
  v50 = __chkstk_darwin(v48);
  v380 = &v345 - v51;
  v52 = __chkstk_darwin(v50);
  v400 = (&v345 - v53);
  v54 = __chkstk_darwin(v52);
  *&v360 = &v345 - v55;
  v56 = __chkstk_darwin(v54);
  v389 = &v345 - v57;
  v58 = __chkstk_darwin(v56);
  v391 = (&v345 - v59);
  *&v364 = v60;
  __chkstk_darwin(v58);
  v363 = &v345 - v61;
  v399 = type metadata accessor for Date();
  v402 = *(v399 - 8);
  __chkstk_darwin(v399);
  v406 = (&v345 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v64 = __chkstk_darwin(v63 - 8);
  v66 = &v345 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v381 = &v345 - v67;
  v359 = type metadata accessor for RawSearchResult(0);
  v68 = __chkstk_darwin(v359);
  v356 = &v345 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v68);
  v355 = &v345 - v71;
  v72 = __chkstk_darwin(v70);
  v73 = __chkstk_darwin(v72);
  v75 = (&v345 - v74);
  __chkstk_darwin(v73);
  v79 = &v345 - v76;
  v357 = *(a2 + 16);
  if (!v357)
  {
    v88 = v404;
    (*(v6 + 16))(v404, v401, v5);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v415 = v92;
      *v91 = 141558275;
      *(v91 + 4) = 1752392040;
      *(v91 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      (*(v6 + 8))(v88, v5);
      v96 = sub_1000136BC(v93, v95, &v415);

      *(v91 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v89, v90, "Did not find a location for beacon %{private,mask.hash}s.", v91, 0x16u);
      sub_100007BAC(v92);
    }

    else
    {

      (*(v6 + 8))(v88, v5);
    }

    return _swiftEmptyArrayStorage;
  }

  v371 = v3;
  v350 = v13;
  v349 = v77;
  v396 = v21;
  v404 = v78;
  v80 = (v78[80] + 32) & ~v78[80];
  v379 = a2;
  v348 = v80;
  v354 = a2 + v80;
  sub_10062CD24(a2 + v80, &v345 - v76, type metadata accessor for RawSearchResult);
  v81 = *v405;
  v82 = v401;
  sub_100025020(v401, &v412);
  if (!v413)
  {
    sub_10000B3A8(&v412, &qword_101696920, &unk_10138B200);
    v97 = v403;
    (*(v6 + 16))(v403, v82, v5);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v415 = v101;
      *v100 = 141558275;
      *(v100 + 4) = 1752392040;
      *(v100 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v103;
      (*(v6 + 8))(v97, v5);
      v105 = sub_1000136BC(v102, v104, &v415);

      *(v100 + 14) = v105;
      _os_log_impl(&_mh_execute_header, v98, v99, "saveLocation could not find beacon record for %{private,mask.hash}s.", v100, 0x16u);
      sub_100007BAC(v101);
    }

    else
    {

      (*(v6 + 8))(v97, v5);
    }

    sub_10062CBB8(v79, type metadata accessor for RawSearchResult);
    return _swiftEmptyArrayStorage;
  }

  v372 = v81;
  v392 = v18;
  sub_10000A748(&v412, &v415);
  v347 = *v79;
  v83 = (v347 >> 4) & 3;
  v390 = v5;
  v358 = v6;
  v352 = v79;
  v346 = v83;
  if (v83)
  {
    v84 = v416;
    v85 = v417;
    sub_1000035D0(&v415, v416);
    v86 = v399;
    if (v83 == 1)
    {
      v87 = (*(v85 + 96))(v84, v85);
    }

    else
    {
      v87 = (*(v85 + 104))(v84, v85);
    }

    v351 = v87;
  }

  else
  {
    v106 = v416;
    v107 = v417;
    sub_1000035D0(&v415, v416);
    v351 = (*(v107 + 88))(v106, v107);
    v86 = v399;
  }

  v108 = *(v359 + 40);
  v109 = (v402 + 48);
  v110 = _swiftEmptyArrayStorage;
  v404 = *(v404 + 9);
  v111 = &unk_101696900;
  v403 = (v402 + 32);
  v112 = v354;
  v113 = v357;
  v393 = v75;
  do
  {
    sub_10062CD24(v112, v75, type metadata accessor for RawSearchResult);
    sub_1000D2A70(v75 + v108, v66, v111, &unk_10138B1E0);
    sub_10062CBB8(v75, type metadata accessor for RawSearchResult);
    if ((*v109)(v66, 1, v86) == 1)
    {
      sub_10000B3A8(v66, v111, &unk_10138B1E0);
    }

    else
    {
      v114 = v111;
      v115 = v108;
      v116 = *v403;
      (*v403)(v406, v66, v86);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_100A5B6F8(0, v110[2] + 1, 1, v110);
      }

      v118 = v110[2];
      v117 = v110[3];
      if (v118 >= v117 >> 1)
      {
        v110 = sub_100A5B6F8((v117 > 1), v118 + 1, 1, v110);
      }

      v110[2] = v118 + 1;
      v119 = v110 + ((*(v402 + 80) + 32) & ~*(v402 + 80)) + *(v402 + 72) * v118;
      v86 = v399;
      v116(v119, v406, v399);
      v108 = v115;
      v111 = v114;
      v75 = v393;
    }

    v112 += v404;
    --v113;
  }

  while (v113);
  sub_1012BAD7C(v110, v381);

  v120 = v405[6];
  v121 = v405[7];
  sub_1000035D0(v405 + 3, v120);
  if (((*(v121 + 24))(v120, v121) & 1) == 0)
  {
    v131 = sub_10039CD9C(v379);
    if (v352[*(v359 + 36)] == 15)
    {
      v132 = 15;
    }

    else
    {
      v132 = 7;
    }

    LODWORD(v382) = v132;

    v123 = 0;
    v133 = v390;
    goto LABEL_56;
  }

  v122 = *(v372 + 168);
  v123 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v124 = v394;
    sub_1000076D4(v394, qword_10177BF38);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    objc_autoreleasePoolPop(v123);
    *&v412 = _swiftEmptyArrayStorage;
    v408 = _swiftEmptyArrayStorage;
    v125 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v126 = v368;
    DirectorySequence.next()();
    v127 = v124;
    v128 = isa;
    v129 = *(isa + 6);
    if ((v129)(v126, 1, v124) == 1)
    {
      v123 = 0;
      v130 = v382;
    }

    else
    {
      v406 = v129;
      v123 = 0;
      v134 = *(v128 + 4);
      v135 = v122;
      v130 = v382;
      v136 = v361;
      do
      {
        v134(v136, v126, v127);
        v137 = objc_autoreleasePoolPush();
        sub_1006011CC(v136, v135, &v412, &v408);
        objc_autoreleasePoolPop(v137);
        (*(v128 + 1))(v136, v394);
        DirectorySequence.next()();
        v127 = v394;
      }

      while ((v406)(v126, 1, v394) != 1);
    }

    (*(v367 + 8))(v130, v369);
    v138 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v139 = v127;
    v140 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_10138BBE0;
    v142 = v412;
    v143 = *(v412 + 16);
    *(v141 + 56) = &type metadata for Int;
    *(v141 + 64) = &protocol witness table for Int;
    *(v141 + 32) = v143;
    sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v144 = v387;
    v145 = dispatch thunk of CustomStringConvertible.description.getter();
    v147 = v146;
    *(v141 + 96) = &type metadata for String;
    *(v141 + 104) = sub_100008C00();
    *(v141 + 72) = v145;
    *(v141 + 80) = v147;
    os_log(_:dso:log:_:_:)(v138, &_mh_execute_header, v140, "Found %i records at %@", 22, 2, v141);

    (*(isa + 1))(v144, v139);

    v148 = *(v142 + 16);
    if (v148)
    {
      v149 = 0;
      v122 = _swiftEmptyArrayStorage;
      v150 = v383;
      v151 = v389;
      while (v149 < *(v142 + 16))
      {
        v152 = (*(v395 + 80) + 32) & ~*(v395 + 80);
        v153 = *(v395 + 72);
        v154 = v391;
        sub_10062CD24(v142 + v152 + v153 * v149, v391, type metadata accessor for BeaconEstimatedLocation);
        if (*(v154 + *(v150 + 44)) == 8)
        {
          sub_10062CC64(v154, v151, type metadata accessor for BeaconEstimatedLocation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v412 = v122;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124A24(0, *(v122 + 16) + 1, 1);
            v151 = v389;
            v122 = v412;
          }

          v157 = *(v122 + 16);
          v156 = *(v122 + 24);
          if (v157 >= v156 >> 1)
          {
            sub_101124A24((v156 > 1), v157 + 1, 1);
            v151 = v389;
            v122 = v412;
          }

          *(v122 + 16) = v157 + 1;
          sub_10062CC64(v151, v122 + v152 + v157 * v153, type metadata accessor for BeaconEstimatedLocation);
          v150 = v383;
        }

        else
        {
          sub_10062CBB8(v154, type metadata accessor for BeaconEstimatedLocation);
        }

        ++v149;
        v133 = v390;
        if (v148 == v149)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_123;
    }

    v122 = _swiftEmptyArrayStorage;
    v150 = v383;
    v133 = v390;
LABEL_47:

    v158 = v366;
    sub_1012BAB18(v122, v366);

    if ((*(v395 + 48))(v158, 1, v150) == 1)
    {
      sub_10000B3A8(v158, &unk_101696940, &unk_10138B210);
      v131 = sub_10039CD9C(v379);
    }

    else
    {
      v159 = v363;
      v160 = sub_10062CC64(v158, v363, type metadata accessor for BeaconEstimatedLocation);
      __chkstk_darwin(v160);
      *(&v345 - 2) = v159;
      v161 = v379;

      v162 = sub_10013D8C0(sub_10062AC58, (&v345 - 4), v161);
      if (!v162[2])
      {

        v317 = v358;
        v318 = v353;
        (*(v358 + 16))(v353, v401, v133);
        v319 = Logger.logObject.getter();
        v320 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v319, v320))
        {
          v321 = swift_slowAlloc();
          v322 = swift_slowAlloc();
          *&v412 = v322;
          *v321 = 141558275;
          *(v321 + 4) = 1752392040;
          *(v321 + 12) = 2081;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v323 = dispatch thunk of CustomStringConvertible.description.getter();
          v324 = v318;
          v326 = v325;
          (*(v317 + 8))(v324, v133);
          v327 = sub_1000136BC(v323, v326, &v412);

          *(v321 + 14) = v327;
          _os_log_impl(&_mh_execute_header, v319, v320, "No new location for beacon %{private,mask.hash}s.", v321, 0x16u);
          sub_100007BAC(v322);
        }

        else
        {

          (*(v317 + 8))(v318, v133);
        }

        sub_10000B3A8(v381, &unk_101696900, &unk_10138B1E0);
        sub_10062CBB8(v352, type metadata accessor for RawSearchResult);
        v314 = type metadata accessor for BeaconEstimatedLocation;
        v315 = &v394;
        goto LABEL_114;
      }

      v131 = sub_10039CD9C(v162);

      v163 = v360;
      sub_10062CD24(v159, v360, type metadata accessor for BeaconEstimatedLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = sub_100A5D484(0, v131[2] + 1, 1, v131);
      }

      v165 = v131[2];
      v164 = v131[3];
      if (v165 >= v164 >> 1)
      {
        v131 = sub_100A5D484((v164 > 1), v165 + 1, 1, v131);
      }

      v413 = v150;
      v414 = &off_10161A418;
      v166 = sub_1000280DC(&v412);
      sub_10062CD24(v163, v166, type metadata accessor for BeaconEstimatedLocation);
      v131[2] = v165 + 1;
      sub_10000A748(&v412, &v131[5 * v165 + 4]);
      sub_10062CBB8(v163, type metadata accessor for BeaconEstimatedLocation);

      sub_10062CBB8(v159, type metadata accessor for BeaconEstimatedLocation);
    }

    LODWORD(v382) = 8;
LABEL_56:
    v167 = v372;
    sub_100AC26E0(&v415);
    v169 = v168;
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v170 = v358;
    v171 = *(v358 + 80);
    v172 = (v171 + 32) & ~v171;
    v402 = *(v358 + 72);
    v369 = v171;
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_101385D80;
    v174 = *(v170 + 16);
    v175 = v401;
    (v174)(v173 + v172, v401, v133);
    v411 = v173;
    v403 = (v170 + 16);
    v387 = v174;
    if (v351)
    {
      v176 = sub_10001993C(v347 & 0xB);
      v177 = (v176 >> 8) & 1;
      v178 = HIWORD(v176) & 1;
      v179 = HIBYTE(v176) & 1;
      v180 = v416;
      v181 = v417;
      v182 = sub_1000035D0(&v415, v416);
      v183 = sub_100B0D624(v182, v177, v178, v179, v167, v180, v181);
      v184 = v183[2];
      if (v184)
      {
        v406 = v131;
        v408 = _swiftEmptyArrayStorage;
        sub_101123D4C(0, v184, 0);
        v122 = v408;
        v394 = v183;
        v185 = (v183 + 4);
        v186 = (v358 + 32);
        v187 = v362;
        do
        {
          sub_10001F280(v185, &v412);
          v189 = v413;
          v188 = v414;
          sub_1000035D0(&v412, v413);
          (*(*(v188[1] + 1) + 32))(v189);
          sub_100007BAC(&v412);
          v408 = v122;
          v191 = *(v122 + 16);
          v190 = *(v122 + 24);
          if (v191 >= v190 >> 1)
          {
            sub_101123D4C((v190 > 1), v191 + 1, 1);
            v122 = v408;
          }

          *(v122 + 16) = v191 + 1;
          (*v186)((v122 + v172 + v191 * v402), v187, v390);
          v185 += 40;
          --v184;
        }

        while (v184);

        v133 = v390;
        v131 = v406;
      }

      else
      {

        v122 = _swiftEmptyArrayStorage;
      }

      sub_100398278(v193);
      v194 = *(v122 + 16);
      v195 = v365;
      if (v194)
      {
        v196 = 0;
        v197 = (v122 + v172);
        v198 = (v358 + 8);
        while (v196 < *(v122 + 16))
        {
          (v387)(v195, v197, v133);
          sub_1005F2DF4(v195, v405, v401);
          ++v196;
          (*v198)(v195, v133);
          v197 += v402;
          if (v194 == v196)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_124;
      }

LABEL_69:

      v175 = v401;
      v192 = v371;
      v174 = v387;
    }

    else
    {
      v192 = v371;
    }

    v199 = v405 + *(v192 + 32);
    v200 = v370;
    (v174)(v370, v175, v133);
    sub_10001F280(&v415, &v412);
    v371 = v199;
    v201 = Logger.logObject.getter();
    v202 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v408 = v204;
      *v203 = 141558787;
      *(v203 + 4) = 1752392040;
      *(v203 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v205 = dispatch thunk of CustomStringConvertible.description.getter();
      v207 = v206;
      v393 = *(v358 + 8);
      (v393)(v200, v390);
      v208 = sub_1000136BC(v205, v207, &v408);

      *(v203 + 14) = v208;
      *(v203 + 22) = 2050;
      v209 = v413;
      v210 = v414;
      sub_1000035D0(&v412, v413);
      v211 = sub_1010C96DC(v209, v210);
      sub_100007BAC(&v412);
      *(v203 + 24) = v211;
      *(v203 + 32) = 2050;
      *(v203 + 34) = v169;
      _os_log_impl(&_mh_execute_header, v201, v202, "reductiveFiltering: applyFilterOnSingleTruthLocation, beacon: %{private,mask.hash}s, type: %{public}lu, transmitPower: %{public}f.", v203, 0x2Au);
      sub_100007BAC(v204);
      v212 = v390;
    }

    else
    {
      sub_100007BAC(&v412);

      v212 = v133;
      v393 = *(v358 + 8);
      (v393)(v200, v133);
    }

    v213 = v380;
    v214 = v400;
    v215 = v416;
    v216 = v417;
    sub_1000035D0(&v415, v416);
    v217 = sub_1010C96DC(v215, v216);
    v218 = sub_1010CBE04(v131, v217, v169);

    v370 = v218;
    if (!v218)
    {

      v294 = v350;
      (v387)(v350, v401, v212);
      v295 = Logger.logObject.getter();
      v296 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v295, v296))
      {
        v297 = swift_slowAlloc();
        v298 = swift_slowAlloc();
        *&v412 = v298;
        *v297 = 141558275;
        *(v297 + 4) = 1752392040;
        *(v297 + 12) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v299 = dispatch thunk of CustomStringConvertible.description.getter();
        v301 = v300;
        (v393)(v294, v212);
        v302 = sub_1000136BC(v299, v301, &v412);

        *(v297 + 14) = v302;
        _os_log_impl(&_mh_execute_header, v295, v296, "CLReductiveFilterSuite.triangulate returned no location for beacon %{private,mask.hash}s.", v297, 0x16u);
        sub_100007BAC(v298);
      }

      else
      {

        (v393)(v294, v212);
      }

      sub_10000B3A8(v381, &unk_101696900, &unk_10138B1E0);
      v314 = type metadata accessor for RawSearchResult;
      v315 = &v381;
LABEL_114:
      sub_10062CBB8(*(v315 - 32), v314);
      sub_100007BAC(&v415);
      return _swiftEmptyArrayStorage;
    }

    *&v412 = v131;

    sub_1005FBC7C(&v412);
    v122 = v412;
    v219 = *(v412 + 16);
    if (v219)
    {
      v220 = 0;
      v221 = v412 + 32;
      while (v220 < *(v122 + 16))
      {
        sub_10001F280(v221, &v412);
        sub_1005F3128(&v412, v405, v401);
        ++v220;
        sub_100007BAC(&v412);
        v221 += 40;
        if (v219 == v220)
        {
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

LABEL_78:

    v394 = dispatch_group_create();
    v222 = *(v411 + 2);
    if (v222)
    {
      v367 = ~v369;
      v368 = v411;
      v223 = &v411[v172];
      v391 = (v358 + 8);
      v366 = v364 + v369;
      v406 = _swiftEmptyArrayStorage;
      v365 = (v358 + 32);
      *(&v224 + 1) = 0xC000000000000000;
      v364 = xmmword_10138C660;
      *&v224 = 141560323;
      v360 = v224;
      v225 = v396;
      v226 = v382;
      v227 = v387;
      v228 = v213;
      do
      {
        v389 = v222;
        isa = v223;
        v229 = v227;
        v227(v225);
        v230 = v383;
        UUID.init()();
        (v227)(v214 + v230[6], v225, v212);
        v231 = v370;
        [v370 coordinate];
        v233 = v232;
        [v231 coordinate];
        v235 = v234;
        [v231 horizontalAccuracy];
        v237 = v236;
        v238 = [v231 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000D2A70(v381, v214 + v230[12], &unk_101696900, &unk_10138B1E0);
        *v214 = v364;
        *(v214 + v230[7]) = v233;
        *(v214 + v230[8]) = v235;
        *(v214 + v230[9]) = v237;
        *(v214 + v230[11]) = v226;
        *(v214 + v230[13]) = v379;
        sub_10062CD24(v214, v228, type metadata accessor for BeaconEstimatedLocation);
        v229(v392, v225, v212);
        v239 = v373;
        sub_10062CD24(v214, v373, type metadata accessor for BeaconEstimatedLocation);
        v240 = v384;
        sub_10062CD24(v214, v384, type metadata accessor for BeaconEstimatedLocation);
        v241 = v385;
        sub_10062CD24(v214, v385, type metadata accessor for BeaconEstimatedLocation);
        v242 = v386;
        sub_10062CD24(v214, v386, type metadata accessor for BeaconEstimatedLocation);
        v243 = v368;
        swift_bridgeObjectRetain_n();

        v244 = v212;
        v245 = Logger.logObject.getter();
        v246 = static os_log_type_t.default.getter();
        v247 = v246;
        if (os_log_type_enabled(v245, v246))
        {
          v248 = swift_slowAlloc();
          v362 = v245;
          v249 = v392;
          v250 = v239;
          v251 = v230;
          v252 = v248;
          v363 = swift_slowAlloc();
          *&v412 = v363;
          *v252 = v360;
          *(v252 + 4) = 1752392040;
          *(v252 + 12) = 2081;
          v253 = v244;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          LODWORD(v361) = v247;
          v254 = dispatch thunk of CustomStringConvertible.description.getter();
          v255 = v228;
          v257 = v256;
          sub_10062CBB8(v255, type metadata accessor for BeaconEstimatedLocation);
          v258 = sub_1000136BC(v254, v257, &v412);

          *(v252 + 14) = v258;
          *(v252 + 22) = 2160;
          *(v252 + 24) = 1752392040;
          *(v252 + 32) = 2081;
          v259 = dispatch thunk of CustomStringConvertible.description.getter();
          v261 = v260;
          (v393)(v249, v253);
          v262 = sub_1000136BC(v259, v261, &v412);

          *(v252 + 34) = v262;
          *(v252 + 42) = 2048;
          v263 = *(v243 + 2);

          *(v252 + 44) = v263 - 1;

          *(v252 + 52) = 2049;
          v264 = *(v250 + v251[7]);
          sub_10062CBB8(v250, type metadata accessor for BeaconEstimatedLocation);
          *(v252 + 54) = v264;
          *(v252 + 62) = 2049;
          v265 = *(v384 + v251[8]);
          sub_10062CBB8(v384, type metadata accessor for BeaconEstimatedLocation);
          *(v252 + 64) = v265;
          *(v252 + 72) = 2048;
          v266 = *(v385 + v251[9]);
          sub_10062CBB8(v385, type metadata accessor for BeaconEstimatedLocation);
          *(v252 + 74) = v266;
          *(v252 + 82) = 2082;
          v267 = v386;
          sub_100009774(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v268 = dispatch thunk of CustomStringConvertible.description.getter();
          v270 = v269;
          sub_10062CBB8(v267, type metadata accessor for BeaconEstimatedLocation);
          v271 = sub_1000136BC(v268, v270, &v412);

          *(v252 + 84) = v271;
          *(v252 + 92) = 2080;
          v272 = sub_100013454(v382);
          v274 = sub_1000136BC(v272, v273, &v412);

          *(v252 + 94) = v274;
          v275 = v362;
          _os_log_impl(&_mh_execute_header, v362, v361, "△ Result LocationID: %{private,mask.hash}s, for Beacon: %{private,mask.hash}s, Peers: %ld, Location: lat: %{private}f, lon: %{private}f, accuracy: %f, timestamp: %{public}s, source: %s.", v252, 0x66u);
          swift_arrayDestroy();

          v212 = v253;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          sub_10062CBB8(v242, type metadata accessor for BeaconEstimatedLocation);
          sub_10062CBB8(v241, type metadata accessor for BeaconEstimatedLocation);
          sub_10062CBB8(v240, type metadata accessor for BeaconEstimatedLocation);
          sub_10062CBB8(v239, type metadata accessor for BeaconEstimatedLocation);
          (v393)(v392, v244);
          sub_10062CBB8(v228, type metadata accessor for BeaconEstimatedLocation);
          v212 = v244;
        }

        v276 = v400;
        sub_10062CD24(v400, v397, type metadata accessor for BeaconEstimatedLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v406 = sub_100A5D0A0(0, v406[2] + 1, 1, v406);
        }

        v278 = v406[2];
        v277 = v406[3];
        if (v278 >= v277 >> 1)
        {
          v406 = sub_100A5D0A0((v277 > 1), v278 + 1, 1, v406);
        }

        v279 = v406;
        v406[2] = v278 + 1;
        v280 = *(v395 + 80);
        v281 = v279 + ((v280 + 32) & ~v280) + *(v395 + 72) * v278;
        v393 = type metadata accessor for BeaconEstimatedLocation;
        sub_10062CC64(v397, v281, type metadata accessor for BeaconEstimatedLocation);
        dispatch_group_enter(v394);
        sub_10062CD24(v405, v398, type metadata accessor for LocationFetcher);
        v282 = v374;
        sub_10062CD24(v276, v374, type metadata accessor for BeaconEstimatedLocation);
        v283 = v378;
        v284 = v387;
        (v387)(v378, v396, v212);
        v285 = (*(v377 + 80) + 24) & ~*(v377 + 80);
        v286 = (v376 + v280 + v285) & ~v280;
        v287 = (v366 + v286) & v367;
        v288 = v287 + v375;
        v289 = swift_allocObject();
        v290 = v394;
        *(v289 + 16) = v394;
        sub_10062CC64(v398, v289 + v285, type metadata accessor for LocationFetcher);
        v291 = v282;
        v227 = v284;
        sub_10062CC64(v291, v289 + v286, v393);
        v292 = v283;
        v214 = v400;
        v225 = v396;
        (*v365)(v289 + v287, v292, v212);
        v226 = v382;
        *(v289 + v288) = v382;
        v293 = v290;
        sub_100A9DA2C(v214, sub_10062AAFC, v289);

        sub_10062CBB8(v214, type metadata accessor for BeaconEstimatedLocation);
        v393 = *v391;
        (v393)(v225, v212);
        v223 = (isa + v402);
        v222 = v389 - 1;
        v228 = v380;
      }

      while (v389 != 1);
    }

    else
    {

      v406 = _swiftEmptyArrayStorage;
    }

    OS_dispatch_group.wait()();
    v303 = v352;
    v304 = v356;
    v305 = v355;
    v306 = v357;
    if ((v351 & 1) == 0)
    {
      break;
    }

    sub_10062CD24(v354, v355, type metadata accessor for RawSearchResult);
    if (v306 == 1)
    {
LABEL_94:
      v307 = v349;
      sub_10062CC64(v305, v349, type metadata accessor for RawSearchResult);
      sub_1005F443C(v401, v307);
      sub_10062CBB8(v307, type metadata accessor for RawSearchResult);

      sub_10000B3A8(v381, &unk_101696900, &unk_10138B1E0);
      v308 = v303;
      goto LABEL_119;
    }

    v122 = &v404[v348 + v379];
    v316 = 1;
    while (1)
    {
      v123 = (v316 + 1);
      if (__OFADD__(v316, 1))
      {
        break;
      }

      sub_10062CD24(v122, v304, type metadata accessor for RawSearchResult);
      if (static Date.< infix(_:_:)())
      {
        sub_10062CBB8(v305, type metadata accessor for RawSearchResult);
        sub_10062CC64(v304, v305, type metadata accessor for RawSearchResult);
      }

      else
      {
        sub_10062CBB8(v304, type metadata accessor for RawSearchResult);
      }

      ++v316;
      v122 += v404;
      if (v123 == v306)
      {
        goto LABEL_94;
      }
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  sub_10001F280(&v415, &v412);
  sub_10001F280(&v415, &v408);
  v309 = Logger.logObject.getter();
  v310 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v309, v310))
  {
    v311 = swift_slowAlloc();
    v407 = swift_slowAlloc();
    *v311 = 16778499;
    *(v311 + 4) = v347;
    *(v311 + 5) = 2082;
    if (v346)
    {
      if (v346 == 1)
      {
        v312 = 0xE600000000000000;
        v313 = 0x6E6169727564;
      }

      else if (v346 == 3)
      {
        v312 = 0xE400000000000000;
        v313 = 1701602664;
      }

      else
      {
        v312 = 0xE700000000000000;
        v313 = 0x6579656B776168;
      }
    }

    else
    {
      v312 = 0xE500000000000000;
      v313 = 0x656C707061;
    }

    v328 = sub_1000136BC(v313, v312, &v407);

    *(v311 + 7) = v328;
    *(v311 + 15) = 2082;
    v329 = v413;
    v330 = v414;
    sub_1000035D0(&v412, v413);
    v331 = (v330[23])(v329, v330);
    v332 = SPBeaconType.description.getter(v331);
    v334 = v333;

    sub_100007BAC(&v412);
    v335 = sub_1000136BC(v332, v334, &v407);

    *(v311 + 17) = v335;
    *(v311 + 25) = 2160;
    *(v311 + 27) = 1752392040;
    *(v311 + 35) = 2081;
    v336 = v409;
    v337 = v410;
    sub_1000035D0(&v408, v409);
    v338 = v378;
    (*(*(*(v337 + 8) + 8) + 32))(v336);
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v339 = v390;
    v340 = dispatch thunk of CustomStringConvertible.description.getter();
    v342 = v341;
    (v393)(v338, v339);
    sub_100007BAC(&v408);
    v343 = sub_1000136BC(v340, v342, &v407);

    *(v311 + 37) = v343;
    _os_log_impl(&_mh_execute_header, v309, v310, "Status byte was %hhu, type: %{public}s, but beacon is %{public}s %{private,mask.hash}s.", v311, 0x2Du);
    swift_arrayDestroy();

    sub_10000B3A8(v381, &unk_101696900, &unk_10138B1E0);
    v308 = v303;
LABEL_119:
    sub_10062CBB8(v308, type metadata accessor for RawSearchResult);
  }

  else
  {

    sub_10000B3A8(v381, &unk_101696900, &unk_10138B1E0);
    sub_10062CBB8(v303, type metadata accessor for RawSearchResult);
    sub_100007BAC(&v408);
    sub_100007BAC(&v412);
  }

  sub_100007BAC(&v415);
  return v406;
}

uint64_t sub_1005F1ECC(char **a1, uint64_t a2)
{
  v90 = a1;
  v100 = sub_1000BC4D4(&qword_1016A58A8, &unk_1013B32A8);
  v87[0] = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = (v87 - v3);
  v104 = type metadata accessor for RawSearchResult(0);
  *&v96 = *(v104 - 8);
  v4 = __chkstk_darwin(v104);
  v95 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v87 - v7;
  __chkstk_darwin(v6);
  v10 = (v87 - v9);
  v11 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v15 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v87 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v17, &qword_1016A5890, &qword_1013B3290);

  v101 = v21;
  v102 = v19;
  v22 = v19[4];
  v103 = v18;
  v97 = v22;
  v98 = v19 + 4;
  v22(v21, v17, v18);
  v23 = sub_1000D2A70(a2, v15, &qword_1016A5890, &qword_1013B3290);
  v24 = *(v12 + 56);
  v91 = v15;
  v25 = *&v15[v24];
  LOBYTE(v24) = *(v25 + 32);
  v26 = ((1 << v24) + 63) >> 6;
  if ((v24 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_2:
    v89 = v26;
    v88 = v87;
    __chkstk_darwin(v23);
    v93 = (v87 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v93, v27);
    v94 = 0;
    v28 = 0;
    v29 = 1 << *(v25 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v25 + 56);
    v26 = (v29 + 63) >> 6;
    while (v31)
    {
      v32 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
LABEL_12:
      v35 = v32 | (v28 << 6);
      sub_10062CD24(*(v25 + 48) + *(v96 + 72) * v35, v10, type metadata accessor for RawSearchResult);
      v36 = *(v10 + *(v104 + 36));
      sub_10062CBB8(v10, type metadata accessor for RawSearchResult);
      if (v36 != 15)
      {
        *(v93 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(v93 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v35));
        v37 = __OFADD__(v94++, 1);
        if (v37)
        {
          __break(1u);
LABEL_16:
          v38 = sub_10060CDE4(v93, v89, v94, v25);
          goto LABEL_17;
        }
      }
    }

    v33 = v28;
    while (1)
    {
      v28 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
        goto LABEL_16;
      }

      v34 = *(v25 + 56 + 8 * v28);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v31 = (v34 - 1) & v34;
        goto LABEL_12;
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
  }

  v84 = swift_slowAlloc();
  v85 = v92;
  v86 = sub_10060AED4(v84, v26, v25, sub_1005F2AF0);
  v92 = v85;
  if (v85)
  {
    goto LABEL_67;
  }

  v38 = v86;

LABEL_17:
  v39 = v102[1];
  v89 = v102 + 1;
  v88 = v39;
  v39(v91, v103);
  v40 = *(v38 + 2);
  if (v40)
  {
    v41 = sub_1003A8808(*(v38 + 2), 0);
    v42 = sub_1003AA25C(&v105, v41 + ((*(v96 + 80) + 32) & ~*(v96 + 80)), v40, v38);
    v43 = v105;

    sub_1000128F8(v43);
    if (v42 == v40)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v41 = _swiftEmptyArrayStorage;
LABEL_21:
  v105 = v41;
  v44 = v92;
  sub_1005FBCE8(&v105);
  v87[1] = v44;
  if (v44)
  {

    __break(1u);
LABEL_67:

    __break(1u);
    return result;
  }

  v45 = v105[2];
  if (!v45)
  {
    sub_10001993C(0);

    v50 = _swiftEmptyArrayStorage;
    v67 = _swiftEmptyArrayStorage[2];
    if (!v67)
    {
      goto LABEL_55;
    }

    goto LABEL_45;
  }

  v46 = v96;
  v47 = *(v96 + 80);
  v93 = v105;
  v104 = (v47 + 32) & ~v47;
  v25 = v105 + v104;
  v48 = sub_10001993C(*(v105 + v104) & 0xB);
  v49 = *(v46 + 72);
  v50 = _swiftEmptyArrayStorage;
  v96 = xmmword_101385D80;
  v94 = v47;
  do
  {
    sub_10062CD24(v25, v8, type metadata accessor for RawSearchResult);
    v51 = *v8;
    if (v48 == sub_10001993C(*v8 & 0xB) && (v52 = v50[2]) != 0)
    {
      v53 = v50[v52 + 3];
      sub_10062CD24(v8, v95, type metadata accessor for RawSearchResult);

      v10 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_100A5D328(0, v53[2] + 1, 1, v53);
      }

      v55 = v53[2];
      v54 = v53[3];
      v26 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v53 = sub_100A5D328((v54 > 1), v55 + 1, 1, v53);
      }

      v53[2] = v26;
      sub_10062CC64(v95, v53 + v104 + v55 * v49, type metadata accessor for RawSearchResult);
      if (!v10[2])
      {
        goto LABEL_60;
      }

      v26 = v10;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v56 = v10[2];
        if (!v56)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v26 = sub_100607374(v10);
        v56 = *(v26 + 16);
        if (!v56)
        {
          goto LABEL_61;
        }
      }

      *(v26 + 16) = v56 - 1;

      v57 = v26;
      v58 = *(v26 + 16);
      v59 = v57;
      v60 = v57[3];
      if (v58 >= v60 >> 1)
      {
        v59 = sub_100A5D4CC((v60 > 1), v58 + 1, 1, v59);
      }

      sub_10062CBB8(v8, type metadata accessor for RawSearchResult);
      v59[2] = v58 + 1;
      v61 = &v59[v58];
      v50 = v59;
      v61[4] = v53;
    }

    else
    {
      sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
      v62 = v104;
      v63 = swift_allocObject();
      *(v63 + 16) = v96;
      sub_10062CD24(v8, v63 + v62, type metadata accessor for RawSearchResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_100A5D4CC(0, v50[2] + 1, 1, v50);
      }

      v65 = v50[2];
      v64 = v50[3];
      v66 = v50;
      if (v65 >= v64 >> 1)
      {
        v66 = sub_100A5D4CC((v64 > 1), v65 + 1, 1, v50);
      }

      v66[2] = v65 + 1;
      v50 = v66;
      v66[v65 + 4] = v63;
      v48 = sub_10001993C(v51 & 0xB);
      sub_10062CBB8(v8, type metadata accessor for RawSearchResult);
    }

    v25 += v49;
    v45 = (v45 - 1);
  }

  while (v45);

  v67 = v50[2];
  if (v67)
  {
LABEL_45:
    v8 = *v90;
    *&v96 = sub_1000BC4D4(&qword_1016A58B0, &qword_1013B32B8);
    v68 = *(v87[0] + 80);
    v94 = (v68 + 32) & ~v68;
    v95 = v68;
    v92 = *(v87[0] + 72);
    v93 = (v102 + 2);
    v69 = 4;
    v91 = v50;
    while (1)
    {
      v104 = v67;
      v26 = v50[v69];
      sub_1000BC4D4(&qword_1016A58B8, &qword_1013B32C0);
      v70 = v94;
      v71 = swift_allocObject() + v70;
      v72 = v100;
      v73 = *(v100 + 48);
      v74 = v103;
      (*v93)(v71, v101, v103);
      *(v71 + v73) = v26;
      v25 = static _DictionaryStorage.allocate(capacity:)();
      v75 = *(v72 + 48);
      v10 = v99;
      sub_1000D2A70(v71, v99, &qword_1016A58A8, &unk_1013B32A8);

      v76 = sub_1000210EC(v10);
      if (v77)
      {
        goto LABEL_58;
      }

      v26 = v76;
      *(v25 + 8 * (v76 >> 6) + 64) |= 1 << v76;
      v97(*(v25 + 48) + v102[9] * v76, v10, v74);
      *(*(v25 + 56) + 8 * v26) = *(v10 + v75);
      v78 = *(v25 + 16);
      v37 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v37)
      {
        goto LABEL_59;
      }

      *(v25 + 16) = v79;

      swift_setDeallocating();
      sub_10000B3A8(v71, &qword_1016A58A8, &unk_1013B32A8);
      swift_deallocClassInstance();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100A5D4A8(0, *(v8 + 2) + 1, 1, v8);
      }

      v80 = v104;
      v82 = *(v8 + 2);
      v81 = *(v8 + 3);
      if (v82 >= v81 >> 1)
      {
        v8 = sub_100A5D4A8((v81 > 1), v82 + 1, 1, v8);
      }

      *(v8 + 2) = v82 + 1;
      *&v8[8 * v82 + 32] = v25;
      ++v69;
      v67 = v80 - 1;
      v50 = v91;
      if (!v67)
      {

        *v90 = v8;
        return v88(v101, v103);
      }
    }
  }

LABEL_55:

  return v88(v101, v103);
}

uint64_t sub_1005F2B30(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = type metadata accessor for BeaconEstimatedLocation(0);
  sub_1000D2A70(a2 + *(v16 + 48), v8, &unk_101696900, &unk_10138B1E0);
  v17 = v10[6];
  if (v17(v8, 1, v9) == 1)
  {
    v18 = v8;
  }

  else
  {
    v19 = v8;
    v20 = v10[4];
    v20(v15, v19, v9);
    v21 = type metadata accessor for RawSearchResult(0);
    sub_1000D2A70(v26 + *(v21 + 40), v6, &unk_101696900, &unk_10138B1E0);
    if (v17(v6, 1, v9) != 1)
    {
      v20(v13, v6, v9);
      v22 = static Date.> infix(_:_:)();
      v23 = v10[1];
      v23(v13, v9);
      v23(v15, v9);
      return v22 & 1;
    }

    (v10[1])(v15, v9);
    v18 = v6;
  }

  sub_10000B3A8(v18, &unk_101696900, &unk_10138B1E0);
  v22 = 1;
  return v22 & 1;
}

void sub_1005F2DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v27[-v10];
  type metadata accessor for LocationFetcher(0);
  v12 = *(v6 + 16);
  v12(v11, a3, v5);
  v12(v9, a1, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = v13;
    v28 = v14;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v6 + 8);
    v19(v11, v5);
    v20 = sub_1000136BC(v16, v18, &v31);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v19(v9, v5);
    v24 = sub_1000136BC(v21, v23, &v31);

    *(v15 + 34) = v24;
    v25 = v29;
    _os_log_impl(&_mh_execute_header, v29, v28, "Beacon %{private,mask.hash}s reported connected to multipart peer: %{private,mask.hash}s.", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v6 + 8);
    v26(v9, v5);
    v26(v11, v5);
  }
}

void sub_1005F3128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = type metadata accessor for Date();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocationFetcher(0);
  (*(v9 + 16))(v11, a3, v8);
  sub_10001F280(a1, v48);
  sub_10001F280(a1, v45);
  sub_10001F280(a1, v42);
  sub_10001F280(a1, v39);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    v38 = v35[0];
    *v14 = 141559299;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v35[1] = v3;
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v18 = sub_1000136BC(v15, v17, &v38);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2049;
    v19 = v49;
    v20 = v50;
    sub_1000035D0(v48, v49);
    v21 = (*(v20 + 16))(v19, v20);
    sub_100007BAC(v48);
    *(v14 + 24) = v21;
    *(v14 + 32) = 2049;
    v22 = v46;
    v23 = v47;
    sub_1000035D0(v45, v46);
    v24 = (*(v23 + 24))(v22, v23);
    sub_100007BAC(v45);
    *(v14 + 34) = v24;
    *(v14 + 42) = 2048;
    v25 = v43;
    v26 = v44;
    sub_1000035D0(v42, v43);
    v27 = (*(v26 + 32))(v25, v26);
    sub_100007BAC(v42);
    *(v14 + 44) = v27;
    *(v14 + 52) = 2082;
    v28 = v40;
    v29 = v41;
    sub_1000035D0(v39, v40);
    (*(v29 + 8))(v28, v29);
    sub_100009774(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v30 = v37;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v36 + 8))(v7, v30);
    sub_100007BAC(v39);
    v34 = sub_1000136BC(v31, v33, &v38);

    *(v14 + 54) = v34;
    _os_log_impl(&_mh_execute_header, v12, v13, "△ Source Beacon: %{private,mask.hash}s, Location: lat: %{private}f, lon: %{private}f, accuracy: %f, timestamp: %{public}s.", v14, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    sub_100007BAC(v39);
    sub_100007BAC(v48);
    sub_100007BAC(v45);
    sub_100007BAC(v42);
  }
}

void sub_1005F3630(uint64_t a1, NSObject *a2, uint64_t a3, NSObject *a4, uint64_t a5, int a6)
{
  v121 = a6;
  v122 = a4;
  v123 = a5;
  v124 = a3;
  v125 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v119 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v118 = &v114 - v12;
  v13 = __chkstk_darwin(v11);
  v117 = &v114 - v14;
  __chkstk_darwin(v13);
  v16 = &v114 - v15;
  v120 = type metadata accessor for BeaconEstimatedLocation(0);
  v17 = __chkstk_darwin(v120);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v116 = &v114 - v21;
  v22 = __chkstk_darwin(v20);
  v115 = &v114 - v23;
  __chkstk_darwin(v22);
  v25 = &v114 - v24;
  v26 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  __chkstk_darwin(v26);
  v28 = (&v114 - v27);
  sub_1000D2A70(a1, &v114 - v27, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v122;
    v30 = v123;
    v31 = v7;
    v32 = *v28;
    v127 = v32;
    swift_errorRetain();
    v114 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast())
    {
      v119 = v32;
      v33 = v126;
      type metadata accessor for LocationFetcher(0);
      v34 = (v8 + 16);
      if (v33 == 8)
      {
        v35 = v115;
        sub_10062CD24(v29, v115, type metadata accessor for BeaconEstimatedLocation);
        v36 = v117;
        (*v34)(v117, v30, v31);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v127 = v124;
          *v39 = 141559043;
          *(v39 + 4) = 1752392040;
          *(v39 + 12) = 2081;
          LODWORD(v123) = v38;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v40 = v8;
          v41 = dispatch thunk of CustomStringConvertible.description.getter();
          v43 = v42;
          sub_10062CBB8(v35, type metadata accessor for BeaconEstimatedLocation);
          v44 = v36;
          v45 = sub_1000136BC(v41, v43, &v127);

          *(v39 + 14) = v45;
          *(v39 + 22) = 2160;
          *(v39 + 24) = 1752392040;
          *(v39 + 32) = 2081;
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          (*(v40 + 8))(v44, v31);
          v49 = sub_1000136BC(v46, v48, &v127);

          *(v39 + 34) = v49;
          *(v39 + 42) = 2080;
          v50 = sub_100013454(v121);
          v52 = sub_1000136BC(v50, v51, &v127);

          *(v39 + 44) = v52;
          _os_log_impl(&_mh_execute_header, v37, v123, "Skipped saving outdated LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s with source: %s.", v39, 0x34u);
          swift_arrayDestroy();

          goto LABEL_18;
        }

        (*(v8 + 8))(v36, v31);
        v113 = v35;
      }

      else
      {
        v89 = v116;
        sub_10062CD24(v29, v116, type metadata accessor for BeaconEstimatedLocation);
        v90 = v118;
        (*v34)(v118, v30, v31);
        v91 = v119;
        swift_errorRetain();
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          LODWORD(v123) = v93;
          v95 = v94;
          v96 = v8;
          v124 = swift_slowAlloc();
          v127 = v124;
          *v95 = 141559299;
          *(v95 + 4) = 1752392040;
          *(v95 + 12) = 2081;
          v122 = v92;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v97 = dispatch thunk of CustomStringConvertible.description.getter();
          v98 = v31;
          v100 = v99;
          sub_10062CBB8(v89, type metadata accessor for BeaconEstimatedLocation);
          v101 = sub_1000136BC(v97, v100, &v127);

          *(v95 + 14) = v101;
          *(v95 + 22) = 2160;
          *(v95 + 24) = 1752392040;
          *(v95 + 32) = 2081;
          v102 = dispatch thunk of CustomStringConvertible.description.getter();
          v104 = v103;
          (*(v96 + 8))(v90, v98);
          v105 = sub_1000136BC(v102, v104, &v127);

          *(v95 + 34) = v105;
          *(v95 + 42) = 2082;
          v126 = v91;
          swift_errorRetain();
          v106 = String.init<A>(describing:)();
          v108 = sub_1000136BC(v106, v107, &v127);

          *(v95 + 44) = v108;
          *(v95 + 52) = 2080;
          v109 = sub_100013454(v121);
          v111 = sub_1000136BC(v109, v110, &v127);

          *(v95 + 54) = v111;
          v112 = v122;
          _os_log_impl(&_mh_execute_header, v122, v123, "Failed to save LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s: %{public}s with source: %s.", v95, 0x3Eu);
          swift_arrayDestroy();

          goto LABEL_18;
        }

        (*(v8 + 8))(v90, v31);
        v113 = v89;
      }
    }

    else
    {
      type metadata accessor for LocationFetcher(0);
      sub_10062CD24(v29, v19, type metadata accessor for BeaconEstimatedLocation);
      v68 = v119;
      (*(v8 + 16))(v119, v30, v7);
      swift_errorRetain();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v127 = v124;
        *v71 = 141559299;
        *(v71 + 4) = 1752392040;
        *(v71 + 12) = 2081;
        LODWORD(v123) = v70;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v72 = v8;
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v7;
        v76 = v75;
        sub_10062CBB8(v19, type metadata accessor for BeaconEstimatedLocation);
        v77 = sub_1000136BC(v73, v76, &v127);

        *(v71 + 14) = v77;
        *(v71 + 22) = 2160;
        *(v71 + 24) = 1752392040;
        *(v71 + 32) = 2081;
        v78 = v119;
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v80;
        (*(v72 + 8))(v78, v74);
        v82 = sub_1000136BC(v79, v81, &v127);

        *(v71 + 34) = v82;
        *(v71 + 42) = 2082;
        v126 = v32;
        swift_errorRetain();
        v83 = String.init<A>(describing:)();
        v85 = sub_1000136BC(v83, v84, &v127);

        *(v71 + 44) = v85;
        *(v71 + 52) = 2080;
        v86 = sub_100013454(v121);
        v88 = sub_1000136BC(v86, v87, &v127);

        *(v71 + 54) = v88;
        _os_log_impl(&_mh_execute_header, v69, v123, "Failed to save LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s: %{public}s with source: %s.", v71, 0x3Eu);
        swift_arrayDestroy();

        goto LABEL_18;
      }

      (*(v8 + 8))(v68, v7);
      v113 = v19;
    }

    sub_10062CBB8(v113, type metadata accessor for BeaconEstimatedLocation);
    goto LABEL_18;
  }

  type metadata accessor for LocationFetcher(0);
  sub_10062CD24(v122, v25, type metadata accessor for BeaconEstimatedLocation);
  (*(v8 + 16))(v16, v123, v7);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  v55 = v7;
  if (os_log_type_enabled(v53, v54))
  {
    v56 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v127 = v124;
    *v56 = 141559043;
    *(v56 + 4) = 1752392040;
    *(v56 + 12) = 2081;
    LODWORD(v123) = v54;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    sub_10062CBB8(v25, type metadata accessor for BeaconEstimatedLocation);
    v60 = sub_1000136BC(v57, v59, &v127);

    *(v56 + 14) = v60;
    *(v56 + 22) = 2160;
    *(v56 + 24) = 1752392040;
    *(v56 + 32) = 2081;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    (*(v8 + 8))(v16, v55);
    v64 = sub_1000136BC(v61, v63, &v127);

    *(v56 + 34) = v64;
    *(v56 + 42) = 2080;
    v65 = sub_100013454(v121);
    v67 = sub_1000136BC(v65, v66, &v127);

    *(v56 + 44) = v67;
    _os_log_impl(&_mh_execute_header, v53, v123, "Saved LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s with source: %s.", v56, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v16, v7);
    sub_10062CBB8(v25, type metadata accessor for BeaconEstimatedLocation);
  }

  sub_10000B3A8(v28, &qword_10169F438, &unk_1013B3300);
LABEL_18:
  dispatch_group_leave(v125);
}

void sub_1005F443C(uint64_t a1, unsigned __int8 *a2)
{
  v127 = a2;
  v123 = a1;
  v120 = type metadata accessor for RawSearchResult(0);
  v117 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = v3;
  v122 = v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocationFetcher(0);
  v115 = *(v4 - 8);
  __chkstk_darwin(v4);
  v116 = v5;
  v121 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for UUID();
  isa = v133[-1].isa;
  v6 = __chkstk_darwin(v133);
  v110 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v7;
  __chkstk_darwin(v6);
  v128 = v95 - v8;
  v111 = type metadata accessor for BeaconStatus(0);
  __chkstk_darwin(v111);
  v10 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v11 - 8);
  v13 = v95 - v12;
  v132 = type metadata accessor for Date();
  v126 = *(v132 - 8);
  v14 = __chkstk_darwin(v132);
  v125 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v15;
  __chkstk_darwin(v14);
  v130 = v95 - v16;
  v17 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v17 - 8);
  v19 = v95 - v18;
  v20 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v109 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v124 = (v95 - v25);
  v112 = v26;
  __chkstk_darwin(v24);
  v131 = v95 - v27;
  v29 = v2[6];
  v28 = v2[7];
  sub_1000035D0(v2 + 3, v29);
  if ((*(v28 + 24))(v29, v28))
  {
    v133 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v133, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v133, v30, "Not storing beacon status that's already from disk.", v31, 2u);
    }

    v32 = v133;
  }

  else
  {
    v108 = v4;
    v119 = v2;
    v33 = v120;
    v34 = v127;
    sub_1000D2A70(&v127[*(v120 + 44)], v19, &unk_1016C1120, &qword_1013C49D0);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_10000B3A8(v19, &unk_1016C1120, &qword_1013C49D0);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Not storing beacon status that's not reconciled.", v37, 2u);
      }
    }

    else
    {
      v107 = v20;
      v104 = v21;
      sub_10062CC64(v19, v131, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_1000D2A70(&v34[*(v33 + 40)], v13, &unk_101696900, &unk_10138B1E0);
      v38 = v126;
      v39 = *(v126 + 48);
      v40 = v132;
      if (v39(v13, 1, v132) == 1)
      {
        v41 = v130;
        (*(v38 + 16))();
        v42 = v39(v13, 1, v40);
        v43 = v133;
        v44 = v38;
        if (v42 != 1)
        {
          v45 = v133;
          sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
          v43 = v45;
        }
      }

      else
      {
        v41 = v130;
        (*(v38 + 32))();
        v43 = v133;
        v44 = v38;
      }

      v105 = *v119;
      v46 = isa + 16;
      v106 = *(isa + 2);
      v106(v10, v123, v43);
      v120 = v46;
      LODWORD(v100) = *v34;
      v47 = v111;
      v103 = *(v111 + 24);
      v48 = *(v44 + 16);
      v48(&v103[v10], v41, v40);
      v49 = (v131 + *(v107 + 20));
      v50 = v49[3];
      v51 = v49[4];
      sub_1000035D0(v49, v50);
      LOBYTE(v51) = sub_10002BD40(v50, v51);
      sub_1000035D0(v49, v49[3]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v52 = v135;
      LOBYTE(v50) = v100;
      *(v10 + v47[5]) = v100;
      v53 = (v10 + v47[7]);
      *v53 = v51 & 1;
      v53[1] = v52;
      *(v10 + v47[8]) = 1;
      *(v10 + v47[9]) = 0;
      v54 = v128;
      v55 = v106;
      v106(v128, v10, v133);
      v56 = v125;
      v102 = v44 + 16;
      v101 = v48;
      v48(v125, &v103[v10], v40);
      v57 = type metadata accessor for Transaction();
      __chkstk_darwin(v57);
      v95[-6] = v105;
      v95[-5] = v54;
      v95[-4] = v56;
      v95[-3] = v10;
      LOBYTE(v95[-2]) = 3;
      BYTE1(v95[-2]) = v50;
      static Transaction.named<A>(_:with:)();
      v58 = v133;
      v59 = *(v126 + 8);
      v111 = v126 + 8;
      v103 = v59;
      (v59)(v56, v132);
      v60 = v54;
      v61 = v123;
      v96 = *(isa + 1);
      v95[1] = isa + 8;
      v96(v60, v58);
      sub_10062CBB8(v10, type metadata accessor for BeaconStatus);
      v98 = type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v97 = 0;
      v62 = v124;
      v55(v124, v61, v58);
      sub_10001F280(v49, v62 + *(v107 + 20));
      sub_1012DE5A0(v62, 0, &v135);

      sub_10062CBB8(v62, type metadata accessor for BeaconKeyManager.IndexInformation);
      v63 = v130;
      if (v137 >> 60 == 15)
      {
        v100 = 0;
        v99 = 0x3000000000000000;
        v64 = v119;
        v65 = v131;
      }

      else
      {
        v66 = PublicKey.advertisement.getter(v136, v137);
        sub_10002EA98(6, v66, v67, v134);
        v100 = v134[0];
        v99 = v134[1] | 0x2000000000000000;
        v68 = v110;
        v55(v110, v61, v58);
        v65 = v131;
        v69 = v109;
        sub_10062CD24(v131, v109, type metadata accessor for BeaconKeyManager.IndexInformation);
        v64 = v119;
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v134[0] = v108;
          *v72 = 141558531;
          *(v72 + 4) = 1752392040;
          *(v72 + 12) = 2081;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v74;
          v96(v68, v58);
          v76 = sub_1000136BC(v73, v75, v134);

          *(v72 + 14) = v76;
          *(v72 + 22) = 2082;
          sub_1000035D0((v69 + *(v107 + 20)), *(v69 + *(v107 + 20) + 24));
          v77 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = v78;
          sub_10062CBB8(v69, type metadata accessor for BeaconKeyManager.IndexInformation);
          v80 = sub_1000136BC(v77, v79, v134);
          v64 = v119;

          *(v72 + 24) = v80;
          _os_log_impl(&_mh_execute_header, v70, v71, "Found advertisement key beacon for %{private,mask.hash}s,index %{public}s.", v72, 0x20u);
          swift_arrayDestroy();

          v61 = v123;

          sub_10000B3A8(&v135, &qword_10169FCA0, &unk_1013B32F0);
        }

        else
        {
          sub_10000B3A8(&v135, &qword_10169FCA0, &unk_1013B32F0);

          v96(v68, v58);
          sub_10062CBB8(v69, type metadata accessor for BeaconKeyManager.IndexInformation);
        }

        v63 = v130;
      }

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v119 = v134[0];
      v123 = type metadata accessor for Transaction();
      sub_10062CD24(v64, v121, type metadata accessor for LocationFetcher);
      sub_10062CD24(v65, v124, type metadata accessor for BeaconKeyManager.IndexInformation);
      v106(v128, v61, v58);
      sub_10062CD24(v127, v122, type metadata accessor for RawSearchResult);
      v101(v125, v63, v132);
      v81 = (*(v115 + 80) + 16) & ~*(v115 + 80);
      v82 = (v116 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = (*(v104 + 80) + v82 + 16) & ~*(v104 + 80);
      v84 = (v112 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
      v85 = isa;
      v86 = (*(isa + 80) + v84 + 8) & ~*(isa + 80);
      v87 = (v114 + *(v117 + 80) + v86) & ~*(v117 + 80);
      v88 = v126;
      v89 = (v118 + *(v126 + 80) + v87) & ~*(v126 + 80);
      v90 = swift_allocObject();
      sub_10062CC64(v121, v90 + v81, type metadata accessor for LocationFetcher);
      v91 = (v90 + v82);
      v92 = v100;
      v93 = v99;
      *v91 = v100;
      v91[1] = v93;
      sub_10062CC64(v124, v90 + v83, type metadata accessor for BeaconKeyManager.IndexInformation);
      *(v90 + v84) = v119;
      (*(v85 + 4))(v90 + v86, v128, v133);
      sub_10062CC64(v122, v90 + v87, type metadata accessor for RawSearchResult);
      v94 = v132;
      (*(v88 + 32))(v90 + v89, v125, v132);
      sub_10062AF30(v92, v93);

      static Transaction.asyncTask(name:block:)();

      sub_10062AF44(v92, v93);
      (v103)(v130, v94);
      sub_10062CBB8(v131, type metadata accessor for BeaconKeyManager.IndexInformation);
    }
  }
}

uint64_t sub_1005F5558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E358, &qword_101404C50);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[20] = v7;
  *v7 = v3;
  v7[1] = sub_1005F57B0;

  return daemon.getter();
}

uint64_t sub_1005F57B0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 168) = a1;

  v3 = swift_task_alloc();
  *(v2 + 176) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009774(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1005F598C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005F598C(uint64_t a1)
{
  *(*v2 + 184) = a1;

  if (v1)
  {

    v3 = sub_1005F5ADC;
  }

  else
  {

    v3 = sub_1005F5C50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005F5ADC()
{
  type metadata accessor for LocationFetcher(0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No ObservationStoreService available!", v3, 2u);
  }

  (*(v0[10] + 56))(v0[2], 1, 1, v0[9]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005F5C50()
{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = v1[3];
  v5 = v1[4];
  sub_1000035D0(v1, v4);
  (*(v5 + 192))(v4, v5);
  v6 = v1[3];
  v7 = v1[4];
  sub_1000035D0(v1, v6);
  *(v0 + 220) = (*(v7 + 112))(v6, v7) & 1;
  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_1005F5DAC;
  v9 = *(v0 + 120);
  v10 = *(v0 + 64);

  return sub_1010D4938(v10, v9);
}

uint64_t sub_1005F5DAC()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_1005F5EBC, v1, 0);
}

uint64_t sub_1005F5EBC()
{
  v1 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 64), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = *(v0 + 56);
    v9 = *(v0 + 48);
    sub_10000B3A8(*(v0 + 64), &qword_10169E358, &qword_101404C50);
    (*(v6 + 8))(v5, v7);
    sub_10000B3A8(v8, &qword_10169E358, &qword_101404C50);
    (*(v4 + 56))(v9, 1, 1, v3);
  }

  else
  {
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    sub_10112FB78(*(v0 + 220), *(v0 + 48));
    sub_10000B3A8(v14, &qword_10169E358, &qword_101404C50);
    (*(v11 + 8))(v10, v12);
    sub_10062CBB8(v13, type metadata accessor for KeySyncSnapshot);
  }

  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 40);
  sub_1000D2AD8(*(v0 + 48), v17, &unk_1016AF8A0, &unk_10139D7C0);
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    v20 = *(v0 + 72);
    v21 = *(v0 + 80);
    sub_10000B3A8(*(v0 + 40), &unk_1016AF8A0, &unk_10139D7C0);
    v22 = *(v21 + 32);
    v23 = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v18, v19, v20);
    v24 = 1;
  }

  else
  {
    v25 = *(v0 + 144);
    v26 = *(v0 + 128);
    v27 = *(v0 + 88);
    v28 = *(v0 + 72);
    v29 = *(v0 + 80);
    v30 = *(v0 + 40);
    (*(v29 + 8))(*(v0 + 96), v28);
    sub_1000D2AD8(v30, v25, &unk_1016C8FC0, &unk_10139D7D0);
    if (*v25 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = *v25;
    }

    v31 = *(v26 + 36);
    v22 = *(v29 + 32);
    v23 = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v27, v25 + v31, v28);
  }

  *(v0 + 200) = v22;
  v32 = *(v0 + 152);
  v33 = *(v0 + 128);
  v34 = *(v0 + 88);
  v35 = *(v0 + 72);
  *v32 = v24;
  v36 = *(v33 + 36);
  *(v0 + 216) = v36;
  *(v0 + 208) = v23;
  v22(v32 + v36, v34, v35);

  return _swift_task_switch(sub_1005F61B4, 0, 0);
}

uint64_t sub_1005F61B4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);
  v4 = *(v0 + 72);
  v5 = *(v0 + 16);

  v2(v5, v3 + v1, v4);
  (*(*(v0 + 80) + 56))(*(v0 + 16), 0, 1, *(v0 + 72));

  v6 = *(v0 + 8);

  return v6();
}

void sub_1005F62D4(uint64_t a1)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v4 = __chkstk_darwin(RequestBeacon - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  type metadata accessor for LocationFetcher(0);
  sub_10062CD24(a1, v11, type metadata accessor for FetchRequestBeacon);
  sub_10062CD24(a1, v9, type metadata accessor for FetchRequestBeacon);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_10062CBB8(v11, type metadata accessor for FetchRequestBeacon);
    v18 = sub_1000136BC(v15, v17, &v24);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2082;
    sub_10062CD24(v9, v6, type metadata accessor for FetchRequestBeacon);
    v19 = objc_autoreleasePoolPush();
    sub_100EABD30(v6, v23);
    if (v1)
    {
      sub_10062CBB8(v9, type metadata accessor for FetchRequestBeacon);
      objc_autoreleasePoolPop(v19);
      __break(1u);
    }

    else
    {
      objc_autoreleasePoolPop(v19);
      sub_10062CBB8(v6, type metadata accessor for FetchRequestBeacon);
      sub_10062CBB8(v9, type metadata accessor for FetchRequestBeacon);
      v20 = sub_1000136BC(v23[0], v23[1], &v24);

      *(v14 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Fetching beacon %{private,mask.hash}s, %{public}s.", v14, 0x20u);
      swift_arrayDestroy();
    }
  }

  else
  {

    sub_10062CBB8(v9, type metadata accessor for FetchRequestBeacon);
    sub_10062CBB8(v11, type metadata accessor for FetchRequestBeacon);
  }
}

uint64_t sub_1005F6644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 116) = a6;
  *(v8 + 152) = a4;
  *(v8 + 160) = a5;
  v9 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  v10 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1005F6768, 0, 0);
}

uint64_t sub_1005F6768()
{
  v1 = *(v0 + 160);
  v2 = v1[6];
  v3 = v1[7];
  sub_1000035D0(v1 + 3, v2);
  v4 = *(v3 + 48);

  v5 = v4(v2, v3);
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for LocationFetcher(0);
  *(v0 + 232) = v10;
  v11 = *(v1 + *(v10 + 40));

  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_1005F68A8;
  v13 = *(v0 + 116);
  v14 = *(v0 + 152);

  return sub_100EB0AA0(v14, v5, v7, v9, v13, v11);
}

uint64_t sub_1005F68A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[31] = a1;
  v5[32] = a2;
  v5[33] = a3;
  v5[34] = v3;

  if (v3)
  {
    v6 = sub_1005F6BBC;
  }

  else
  {
    v6 = sub_1005F69C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005F69C0()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v0[5] = &type metadata for FetchRequest;
  v0[6] = sub_10062BE04();
  v0[2] = v3;
  v0[3] = v1;
  v0[4] = v2;

  sub_100017D5C(v1, v2);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1005F6AA0;
  v5 = v0[28];

  return sub_1004E682C(v5, (v0 + 2));
}

uint64_t sub_1005F6AA0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1005F7820;
  }

  else
  {
    sub_100007BAC((v2 + 16));
    v3 = sub_1005F6DA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005F6BBC()
{
  v1 = v0[34];
  v0[42] = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetch error: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[22];

  v8 = swift_allocObject();
  v0[43] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;

  swift_errorRetain();
  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = sub_1005F7510;

  return unsafeBlocking<A>(_:)(v0 + 113, sub_10062BDD0, v8, &type metadata for Bool);
}

uint64_t sub_1005F6DA4()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 116);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 296) = JSONDecoder.init()();
  (*(v2 + 104))(v1, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v3);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  v5 = *(v0 + 288);
  if (v4 == 1)
  {
    v6 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v8 = v7;
    sub_10062BEB8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v5)
    {
      v9 = *(v0 + 176);
      sub_100016590(v6, v8);
      v10 = *(v0 + 144);
      v11 = swift_allocObject();
      *(v0 + 304) = v11;
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;

      v12 = swift_task_alloc();
      *(v0 + 312) = v12;
      *v12 = v0;
      v12[1] = sub_1005F7220;
      v13 = sub_10062BF68;
      v14 = v0 + 115;
LABEL_9:
      v26 = v11;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v8 = v15;
    sub_10062BE58();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v5)
    {
      v27 = *(v0 + 176);
      sub_100016590(v6, v8);
      v28 = *(v0 + 104);
      v29 = *(v0 + 112);
      v11 = swift_allocObject();
      *(v0 + 320) = v11;
      *(v11 + 16) = v27;
      *(v11 + 24) = v28;
      *(v11 + 32) = v29;

      v30 = swift_task_alloc();
      *(v0 + 328) = v30;
      *v30 = v0;
      v30[1] = sub_1005F73F8;
      v13 = sub_10062BEAC;
      v14 = v0 + 114;
      goto LABEL_9;
    }
  }

  v17 = *(v0 + 256);
  v16 = *(v0 + 264);
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

  sub_100016590(v17, v16);
  sub_100016590(v6, v8);

  *(v0 + 336) = v5;
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Fetch error: %{public}@.", v20, 0xCu);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);
  }

  v23 = *(v0 + 176);

  v24 = swift_allocObject();
  *(v0 + 344) = v24;
  *(v24 + 16) = v23;
  *(v24 + 24) = v5;

  swift_errorRetain();
  v25 = swift_task_alloc();
  *(v0 + 352) = v25;
  *v25 = v0;
  v25[1] = sub_1005F7510;
  v13 = sub_10062BDD0;
  v14 = v0 + 113;
  v26 = v24;
LABEL_10:

  return unsafeBlocking<A>(_:)(v14, v13, v26, &type metadata for Bool);
}

uint64_t sub_1005F7220()
{

  return _swift_task_switch(sub_1005F7338, 0, 0);
}

uint64_t sub_1005F7338()
{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];

  sub_100016590(v1, v2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005F73F8()
{

  return _swift_task_switch(sub_1005F7338, 0, 0);
}

uint64_t sub_1005F7510()
{

  return _swift_task_switch(sub_1005F7628, 0, 0);
}

uint64_t sub_1005F7628()
{
  if (*(v0 + 116))
  {
    v1 = *(v0 + 160);
    v2 = v1[6];
    v3 = v1[7];
    sub_1000035D0(v1 + 3, v2);
    v4 = (*(v3 + 48))(v2, v3);
    v7 = sub_100EAAD78(v4, v5, v6);
    v9 = v8;

    _StringGuts.grow(_:)(40);

    swift_getErrorValue();
    *(v0 + 128) = Error.code.getter();
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x6F44726F72726520;
    v11._object = 0xED00003A6E69616DLL;
    String.append(_:)(v11);
    swift_getErrorValue();
    v12._countAndFlagsBits = Error.domain.getter();
    String.append(_:)(v12);

    sub_1011729A0(v7, v9, 0xD000000000000017, 0x800000010135B720);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1005F7820()
{
  v1 = v0[32];
  v2 = v0[33];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);
  v3 = v0[36];
  v0[42] = v3;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetch error: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[22];

  v10 = swift_allocObject();
  v0[43] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v3;

  swift_errorRetain();
  v11 = swift_task_alloc();
  v0[44] = v11;
  *v11 = v0;
  v11[1] = sub_1005F7510;

  return unsafeBlocking<A>(_:)(v0 + 113, sub_10062BDD0, v10, &type metadata for Bool);
}

uint64_t sub_1005F7A28@<X0>(_BYTE *a2@<X8>)
{

  v3 = Future.finish(result:)();

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1005F7A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  type metadata accessor for RawSearchResult(0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = type metadata accessor for ObservedAdvertisement(0);
  v8[14] = swift_task_alloc();
  v8[15] = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[25] = v10;
  *v10 = v8;
  v10[1] = sub_1005F7C58;

  return daemon.getter();
}

uint64_t sub_1005F7C58(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 208) = a1;

  v3 = swift_task_alloc();
  *(v2 + 216) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100009774(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009774(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1005F7E34;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005F7E34(uint64_t a1)
{
  *(*v2 + 224) = a1;

  if (v1)
  {

    v3 = sub_1005F7F84;
  }

  else
  {

    v3 = sub_1005F80E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005F7F84()
{
  type metadata accessor for LocationFetcher(0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No ObservationStoreService available!", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1005F80E0()
{
  v1 = *(v0 + 40);
  if ((~v1 & 0x3000000000000000) != 0)
  {
    v11 = *(v0 + 32);
    *(v0 + 272) = v11;
    *(v0 + 280) = v1;
    v12 = *(v0 + 160);
    v13 = *(v0 + 112);
    v31 = *(v0 + 152);
    v32 = *(v0 + 120);
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    v17 = *(v0 + 48);
    v33 = **(v0 + 72);
    v18 = v14[11];
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 16))(v13 + v18, v15, v19);
    v20 = v14[12];
    v21 = type metadata accessor for ObservedAdvertisement.Location(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    v22 = v13 + v14[13];
    v23 = *(v12 + 16);
    *(v0 + 288) = v23;
    *(v0 + 296) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v22, v16, v31);
    v24 = (v17 + *(v32 + 20));
    v25 = v24[3];
    v26 = v24[4];
    sub_1000035D0(v24, v25);
    sub_10062AF30(v11, v1);
    sub_100029784(v11, v1);
    LOBYTE(v25) = sub_10002BD40(v25, v26);
    sub_1000035D0(v24, v24[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v27 = *(v0 + 16);
    v28 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    *(v22 + *(v28 + 20)) = v25 & 1;
    *(v22 + *(v28 + 24)) = v27;
    (*(*(v28 - 8) + 56))(v22, 0, 1, v28);
    *v13 = 0;
    *(v13 + 8) = 769;
    *(v13 + 16) = v11;
    *(v13 + 24) = v1;
    *(v13 + 32) = v33;
    *(v13 + 33) = 0;
    *(v13 + 35) = 1;
    *(v13 + 36) = -1;
    *(v13 + v14[14]) = 0;
    v29 = swift_task_alloc();
    *(v0 + 304) = v29;
    *v29 = v0;
    v29[1] = sub_1005F8B14;
    v30 = *(v0 + 112);

    return sub_10002E1FC(v30);
  }

  else
  {
    v2 = (*(v0 + 48) + *(*(v0 + 120) + 20));
    v3 = v2[3];
    v4 = v2[4];
    v5 = sub_1000035D0(v2, v3);
    v6 = getuid();
    sub_1000294F0(v6);
    v7 = swift_task_alloc();
    *(v0 + 232) = v7;
    *v7 = v0;
    v7[1] = sub_1005F8448;
    v8 = *(v0 + 192);
    v9 = *(v0 + 64);

    return sub_1006858D0(v8, v9, v5, v3, v4);
  }
}

uint64_t sub_1005F8448(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[30] = a1;
  v5[31] = a2;

  v6 = v4[24];
  v7 = v4[20];
  v8 = v4[19];
  if (v2)
  {

    (*(v7 + 8))(v6, v8);
    v9 = sub_1005F904C;
  }

  else
  {
    v10 = *(v7 + 8);
    v5[32] = v10;
    v5[33] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    v9 = sub_1005F85F4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005F85F4()
{
  v57 = v0;
  v1 = *(v0 + 248);
  if (v1 >> 60 == 15)
  {
    sub_1005CAEA4(v56);
    v2 = v56[0];
    v1 = v56[1];
  }

  else
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    type metadata accessor for LocationFetcher(0);
    (*(v5 + 16))(v3, v7, v4);
    sub_10062CD24(v8, v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 256);
    v13 = *(v0 + 184);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    if (v11)
    {
      v51 = *(v0 + 120);
      log = v9;
      v16 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v16 = 141558531;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = v10;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v12(v13, v15);
      v20 = sub_1000136BC(v17, v19, v56);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2082;
      sub_1000035D0((v14 + *(v51 + 20)), *(v14 + *(v51 + 20) + 24));
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_10062CBB8(v14, type metadata accessor for BeaconKeyManager.IndexInformation);
      v24 = sub_1000136BC(v21, v23, v56);

      *(v16 + 24) = v24;
      _os_log_impl(&_mh_execute_header, log, v49, "Found advertisement key for shared beacon %{private,mask.hash}s,index %{public}s.", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v12(v13, v15);
      sub_10062CBB8(v14, type metadata accessor for BeaconKeyManager.IndexInformation);
    }

    v2 = *(v0 + 240);
  }

  v25 = v1 | 0x2000000000000000;
  *(v0 + 272) = v2;
  *(v0 + 280) = v1 | 0x2000000000000000;
  v26 = *(v0 + 160);
  v27 = *(v0 + 112);
  v48 = *(v0 + 152);
  v50 = *(v0 + 120);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);
  v30 = *(v0 + 64);
  v31 = *(v0 + 48);
  v52 = *(v0 + 32);
  loga = *(v0 + 40);
  v55 = **(v0 + 72);
  v32 = v28[11];
  v47 = v2;
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 16))(v27 + v32, v29, v33);
  v34 = v28[12];
  v35 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(*(v35 - 8) + 56))(v27 + v34, 1, 1, v35);
  v36 = v27 + v28[13];
  v37 = *(v26 + 16);
  *(v0 + 288) = v37;
  *(v0 + 296) = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v36, v30, v48);
  v38 = (v31 + *(v50 + 20));
  v39 = v38[3];
  v40 = v38[4];
  sub_1000035D0(v38, v39);
  sub_10062AF30(v52, loga);
  sub_100029784(v2, v25);
  v41 = sub_10002BD40(v39, v40);
  sub_1000035D0(v38, v38[3]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v42 = *(v0 + 16);
  v43 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  *(v36 + *(v43 + 20)) = v41 & 1;
  *(v36 + *(v43 + 24)) = v42;
  (*(*(v43 - 8) + 56))(v36, 0, 1, v43);
  *v27 = 0;
  *(v27 + 8) = 769;
  *(v27 + 16) = v47;
  *(v27 + 24) = v25;
  *(v27 + 32) = v55;
  *(v27 + 33) = 0;
  *(v27 + 35) = 1;
  *(v27 + 36) = -1;
  *(v27 + v28[14]) = 0;
  v44 = swift_task_alloc();
  *(v0 + 304) = v44;
  *v44 = v0;
  v44[1] = sub_1005F8B14;
  v45 = *(v0 + 112);

  return sub_10002E1FC(v45);
}

uint64_t sub_1005F8B14()
{
  v2 = *(*v1 + 112);
  *(*v1 + 312) = v0;

  sub_10062CBB8(v2, type metadata accessor for ObservedAdvertisement);
  if (v0)
  {
    v3 = sub_1005F92FC;
  }

  else
  {
    v3 = sub_1005F8C58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005F8C58()
{
  v35 = v0;
  v1 = v0[36];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v33 = v0[17];
  type metadata accessor for LocationFetcher(0);
  sub_10062CD24(v5, v4, type metadata accessor for RawSearchResult);
  v1(v2, v6, v3);
  sub_10062CD24(v7, v33, type metadata accessor for BeaconKeyManager.IndexInformation);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[20];
  v16 = v0[17];
  if (v10)
  {
    v30 = v0[15];
    v17 = v0[12];
    v32 = v0[34];
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v18 = 16778243;
    v31 = v11;
    v19 = *v17;
    sub_10062CBB8(v17, type metadata accessor for RawSearchResult);
    *(v18 + 4) = v19;
    *(v18 + 5) = 2160;
    *(v18 + 7) = 1752392040;
    *(v18 + 15) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v15 + 8))(v13, v14);
    v23 = sub_1000136BC(v20, v22, &v34);

    *(v18 + 17) = v23;
    *(v18 + 25) = 2082;
    sub_1000035D0((v16 + *(v30 + 20)), *(v16 + *(v30 + 20) + 24));
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_10062CBB8(v16, type metadata accessor for BeaconKeyManager.IndexInformation);
    v27 = sub_1000136BC(v24, v26, &v34);

    *(v18 + 27) = v27;
    _os_log_impl(&_mh_execute_header, v8, v9, "Saved advertisement status %hhu for beacon %{private,mask.hash}s,index %{public}s.", v18, 0x23u);
    swift_arrayDestroy();

    sub_10001E524(v32, v31);
  }

  else
  {
    sub_10062CBB8(v0[12], type metadata accessor for RawSearchResult);
    sub_10001E524(v12, v11);

    (*(v15 + 8))(v13, v14);
    sub_10062CBB8(v16, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1005F904C()
{
  v31 = v0;
  sub_1005CAEA4(&v29);
  v1 = v29;
  v2 = v30 | 0x2000000000000000;
  v27 = v30 | 0x2000000000000000;
  *(v0 + 272) = v29;
  *(v0 + 280) = v2;
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 112);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v26 = *(v0 + 40);
  v24 = *(v0 + 120);
  v25 = *(v0 + 32);
  v28 = **(v0 + 72);
  v9 = *(*(v0 + 104) + 44);
  v10 = *(v0 + 104);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 16))(v5 + v9, v6, v11);
  v12 = v10[12];
  v13 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  v14 = v5 + v10[13];
  v15 = *(v3 + 16);
  *(v0 + 288) = v15;
  *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v14, v7, v4);
  v16 = (v8 + *(v24 + 20));
  v17 = v16[3];
  v18 = v16[4];
  sub_1000035D0(v16, v17);
  sub_10062AF30(v25, v26);
  sub_100029784(v1, v27);
  LOBYTE(v8) = sub_10002BD40(v17, v18);
  sub_1000035D0(v16, v16[3]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v0 + 16);
  v20 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  *(v14 + *(v20 + 20)) = v8 & 1;
  *(v14 + *(v20 + 24)) = v19;
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  *v5 = 0;
  *(v5 + 8) = 769;
  *(v5 + 16) = v1;
  *(v5 + 24) = v27;
  *(v5 + 32) = v28;
  *(v5 + 33) = 0;
  *(v5 + 35) = 1;
  *(v5 + 36) = -1;
  *(v5 + v10[14]) = 0;
  v21 = swift_task_alloc();
  *(v0 + 304) = v21;
  *v21 = v0;
  v21[1] = sub_1005F8B14;
  v22 = *(v0 + 112);

  return sub_10002E1FC(v22);
}

uint64_t sub_1005F92FC()
{
  v36 = v0;
  v1 = v0[36];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v32 = v0[16];
  type metadata accessor for LocationFetcher(0);
  sub_10062CD24(v5, v4, type metadata accessor for RawSearchResult);
  v1(v2, v6, v3);
  sub_10062CD24(v7, v32, type metadata accessor for BeaconKeyManager.IndexInformation);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[35];
  v34 = v0[34];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  v15 = v0[16];
  if (v10)
  {
    v30 = v0[15];
    v33 = v0[35];
    v16 = v0[11];
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v17 = 16778499;
    v18 = *v16;
    sub_10062CBB8(v16, type metadata accessor for RawSearchResult);
    *(v17 + 4) = v18;
    *(v17 + 5) = 2160;
    *(v17 + 7) = 1752392040;
    *(v17 + 15) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v13 + 8))(v12, v14);
    v22 = sub_1000136BC(v19, v21, &v35);

    *(v17 + 17) = v22;
    *(v17 + 25) = 2082;
    sub_1000035D0((v15 + *(v30 + 20)), *(v15 + *(v30 + 20) + 24));
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_10062CBB8(v15, type metadata accessor for BeaconKeyManager.IndexInformation);
    v26 = sub_1000136BC(v23, v25, &v35);

    *(v17 + 27) = v26;
    *(v17 + 35) = 2114;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 37) = v27;
    *v31 = v27;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error saving advertisement status %hhufor beacon %{private,mask.hash}s,index %{public}serror: %{public}@.", v17, 0x2Du);
    sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    sub_10001E524(v34, v33);
  }

  else
  {
    sub_10062CBB8(v0[11], type metadata accessor for RawSearchResult);
    sub_10001E524(v34, v11);

    (*(v13 + 8))(v12, v14);
    sub_10062CBB8(v15, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1005F9784()
{
  v0 = getuid();

  return sub_1000294F0(v0);
}

void sub_1005F97BC(void *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9, void *a10)
{
  v242 = a8;
  v245 = a7;
  v244 = a6;
  v221 = a4;
  v251 = a2;
  v240 = a1;
  v227 = type metadata accessor for FetchResponse.SearchResult(0);
  __chkstk_darwin(v227);
  v224 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v17 = __chkstk_darwin(v16 - 8);
  v235 = &v209 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v233 = &v209 - v19;
  v216 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v20 = __chkstk_darwin(v216);
  v234 = &v209 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v231 = &v209 - v22;
  v243 = type metadata accessor for Date();
  v232 = *(v243 - 8);
  v23 = __chkstk_darwin(v243);
  v214 = &v209 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v230 = &v209 - v26;
  __chkstk_darwin(v25);
  v229 = &v209 - v27;
  v222 = type metadata accessor for RawSearchResult(0);
  v219 = *(v222 - 8);
  v28 = __chkstk_darwin(v222);
  v218 = &v209 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v228 = &v209 - v30;
  v31 = type metadata accessor for TimeBasedKey(0);
  v32 = __chkstk_darwin(v31);
  v34 = &v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v212 = (&v209 - v36);
  v37 = __chkstk_darwin(v35);
  v217 = (&v209 - v38);
  v39 = __chkstk_darwin(v37);
  v215 = &v209 - v40;
  v41 = __chkstk_darwin(v39);
  v236 = (&v209 - v42);
  __chkstk_darwin(v41);
  v237 = (&v209 - v43);
  v246 = type metadata accessor for UUID();
  v250 = *(v246 - 8);
  v44 = __chkstk_darwin(v246);
  v225 = &v209 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v223 = &v209 - v47;
  v48 = __chkstk_darwin(v46);
  v220 = &v209 - v49;
  __chkstk_darwin(v48);
  v239 = &v209 - v50;
  v238 = type metadata accessor for BeaconPayloadv1(0);
  v51 = __chkstk_darwin(v238);
  v53 = (&v209 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __chkstk_darwin(v51);
  v56 = (&v209 - v55);
  v57 = __chkstk_darwin(v54);
  v59 = &v209 - v58;
  v60 = __chkstk_darwin(v57);
  v62 = &v209 - v61;
  __chkstk_darwin(v60);
  v249 = (&v209 - v63);
  v226 = v31;
  v64 = a5;
  v65 = a5 + *(v31 + 24);
  v66 = *(v65 + 16);
  v67 = *(v65 + 24);
  sub_100017D5C(v251, a3);
  v68 = PublicKey.advertisement.getter(v66, v67);
  v70 = v69;
  v248 = a3;
  v71 = a3 >> 62;
  v213 = v34;
  if ((a3 >> 62) > 1)
  {
    v72 = 0;
    if (v71 != 2)
    {
      goto LABEL_10;
    }

    v74 = v251[2];
    v73 = v251[3];
    v72 = v73 - v74;
    if (!__OFSUB__(v73, v74))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v71)
  {
    v72 = BYTE6(v248);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v251), v251))
  {
    __break(1u);
    goto LABEL_62;
  }

  v72 = HIDWORD(v251) - v251;
LABEL_10:
  v247 = v64;
  sub_100A2A240(3);
  v76 = v75;
  v77 = v240;
  if (v72 >= v76)
  {
    v83 = v241;
    sub_100A2AA58(v77, v251, v248, v68, v70, v53);
    v79 = v249;
    v80 = v250;
    v81 = v247;
    v241 = v83;
    v82 = v239;
    if (!v83)
    {
LABEL_22:
      sub_10062CC64(v53, v59, type metadata accessor for BeaconPayloadv1);
      sub_10062CC64(v59, v62, type metadata accessor for BeaconPayloadv1);
      sub_10062CC64(v62, v79, type metadata accessor for BeaconPayloadv1);
      v98 = v238;
      if (v242)
      {
        LODWORD(v239) = 13;
        v99 = &type metadata for SecondaryIndex;
        v100 = sub_10022A4D4();
      }

      else
      {
        LODWORD(v239) = 7;
        v99 = &type metadata for PrimaryWildIndex;
        v100 = sub_10022A528();
      }

      v101 = *v81;
      v254[3] = v99;
      v254[4] = v100;
      v254[0] = v101;
      v211 = *(v79 + v98[10]);
      v102 = *(v232 + 16);
      v103 = v229;
      v104 = v243;
      v102(v229, v79 + v98[5], v243);
      v12 = *(v79 + v98[7]);
      v10 = *(v79 + v98[8]);
      v11 = *(v79 + v98[9]);
      v105 = *(v227 + 24);
      v237 = a9;
      v106 = v231;
      sub_1000D2A70(a9 + v105, v231, &unk_101696900, &unk_10138B1E0);
      v64 = v80 + 16;
      v107 = *(v80 + 16);
      v108 = v233;
      v240 = v107;
      (v107)(v233, v245, v246);
      v109 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
      sub_10001F280(v254, v108 + *(v109 + 20));
      (*(*(v109 - 8) + 56))(v108, 0, 1, v109);
      v68 = v221;
      v110 = HIDWORD(v221);
      v210 = HIDWORD(v221);
      if (v221 == 3)
      {
        LODWORD(v110) = 0;
      }

      LODWORD(v221) = v110;
      v102(v230, v103, v104);
      sub_1000D2A70(v106, v234, &unk_101696900, &unk_10138B1E0);
      sub_1000D2A70(v108, v235, &unk_1016C1120, &qword_1013C49D0);
      if ((v242 & 1) == 0)
      {
        a3 = v220;
        UUID.init()();
        v111 = v246;
LABEL_32:
        LODWORD(v220) = v68 == 3;
        sub_10000B3A8(v233, &unk_1016C1120, &qword_1013C49D0);
        v233 = v68;
        sub_10000B3A8(v231, &unk_101696900, &unk_10138B1E0);
        v113 = v232;
        v114 = *(v232 + 8);
        v115 = v229;
        v116 = v243;
        v231 = v232 + 8;
        v229 = v114;
        (v114)(v115, v243);
        v117 = v228;
        *v228 = v211;
        v118 = v222;
        (*(v113 + 32))(v117 + *(v222 + 20), v230, v116);
        *(v117 + v118[6]) = v12;
        *(v117 + v118[7]) = v10;
        *(v117 + v118[8]) = v11;
        *(v117 + v118[9]) = v239;
        sub_1000D2AD8(v234, v117 + v118[10], &unk_101696900, &unk_10138B1E0);
        sub_1000D2AD8(v235, v117 + v118[11], &unk_1016C1120, &qword_1013C49D0);
        (*(v250 + 32))(v117 + v118[12], a3, v111);
        v119 = (v117 + v118[13]);
        *v119 = v221;
        v119[1] = v220;
        v120 = *(type metadata accessor for LocationFetcher(0) + 32);
        v121 = v223;
        v235 = v64;
        (v240)(v223, v245, v111);
        v122 = v247;
        sub_10062CD24(v247, v236, type metadata accessor for TimeBasedKey);
        v123 = v224;
        sub_10062CD24(v237, v224, type metadata accessor for FetchResponse.SearchResult);
        v124 = v251;
        v125 = v248;
        sub_100017D5C(v251, v248);
        v237 = v120;
        v126 = Logger.logObject.getter();
        LODWORD(v118) = static os_log_type_t.default.getter();
        sub_100016590(v124, v125);
        LODWORD(v251) = v118;
        if (os_log_type_enabled(v126, v118))
        {
          v127 = v126;
          v128 = swift_slowAlloc();
          v252 = swift_slowAlloc();
          *v128 = 141561091;
          *(v128 + 4) = 1752392040;
          *(v128 + 12) = 2081;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v129 = dispatch thunk of CustomStringConvertible.description.getter();
          v131 = v130;
          (*(v250 + 8))(v121, v111);
          v132 = sub_1000136BC(v129, v131, &v252);

          *(v128 + 14) = v132;
          *(v128 + 22) = 2082;
          if (v242)
          {
            v133 = 0x61646E6F6365732ELL;
          }

          else
          {
            v133 = 0x7972616D6972702ELL;
          }

          if (v242)
          {
            v134 = 0xEA00000000007972;
          }

          else
          {
            v134 = 0xE800000000000000;
          }

          v135 = sub_1000136BC(v133, v134, &v252);

          *(v128 + 24) = v135;
          *(v128 + 32) = 2050;
          v136 = *v236;
          sub_10062CBB8(v236, type metadata accessor for TimeBasedKey);
          *(v128 + 34) = v136;
          *(v128 + 42) = 2082;
          v137 = v249;
          swift_beginAccess();
          sub_100009774(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v138 = dispatch thunk of CustomStringConvertible.description.getter();
          v140 = sub_1000136BC(v138, v139, &v252);

          *(v128 + 44) = v140;
          *(v128 + 52) = 2082;
          v141 = Optional.debugDescription.getter();
          v143 = v142;
          sub_10062CBB8(v123, type metadata accessor for FetchResponse.SearchResult);
          v144 = sub_1000136BC(v141, v143, &v252);

          *(v128 + 54) = v144;
          *(v128 + 62) = 2082;
          v145 = sub_100013454(v239);
          v147 = sub_1000136BC(v145, v146, &v252);

          *(v128 + 64) = v147;
          *(v128 + 72) = 2049;
          *(v128 + 74) = v12;
          *(v128 + 82) = 2049;
          *(v128 + 84) = v10;
          *(v128 + 92) = 2050;
          *(v128 + 94) = v11;
          *(v128 + 102) = 2160;
          *(v128 + 104) = 1752392040;
          *(v128 + 112) = 2081;
          v148 = *v137;
          v149 = v137[1];
          sub_100017D5C(*v137, v149);
          sub_100017D5C(v148, v149);
          v150 = static MACAddress.length.getter();
          sub_10002EA98(v150, v148, v149, v253);
          sub_100016590(v148, v149);
          v151 = v253[0];
          v152 = v253[1];
          v153 = Data.hexString.getter();
          v155 = v154;
          sub_100016590(v151, v152);
          v156 = sub_1000136BC(v153, v155, &v252);

          *(v128 + 114) = v156;
          *(v128 + 122) = 2082;
          if (v233 == 3)
          {
            v157 = 0xE300000000000000;
            v158 = 7104878;
          }

          else
          {
            LOBYTE(v253[0]) = v210;
            sub_1002E2724();
            v158 = BinaryInteger.description.getter();
            v157 = v160;
          }

          v161 = sub_1000136BC(v158, v157, &v252);

          *(v128 + 124) = v161;
          _os_log_impl(&_mh_execute_header, v127, v251, "Packet decrypted for beacon %{private,mask.hash}s,\nsequence: %{public}s,\nindex: %{public}llu,\nlocationTimestamp: %{public}s,\nscanDate: %{public}s,\nsource: %{public}s,\nlatitude: %{private}f,\nlongitude: %{private}f,\nhorizontalAccuracy: %{public}f,\nadvertisementAddress: %{private,mask.hash}s,\nhint: %{public}s.", v128, 0x84u);
          swift_arrayDestroy();

          v117 = v228;
          v159 = v249;
          v122 = v247;
        }

        else
        {
          sub_10062CBB8(v236, type metadata accessor for TimeBasedKey);

          sub_10062CBB8(v123, type metadata accessor for FetchResponse.SearchResult);
          (*(v250 + 8))(v121, v111);
          v159 = v249;
        }

        v162 = v238;
        v163 = v225;
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v164 = v241;
        OS_dispatch_queue.sync<A>(execute:)();
        v165 = sub_101073524(v253[0]);

        if ((v165 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v251 = a10;
          swift_beginAccess();
          if (DateInterval.contains(_:)())
          {
            v166 = v214;
            DateInterval.start.getter();
            Date.timeIntervalSince(_:)();
            v168 = v167;
            (v229)(v166, v243);
            if (v165 * 60.0 <= fabs(v168))
            {
              v248 = v164;
              v169 = v246;
              (v240)(v163, v245, v246);
              v170 = v212;
              sub_10062CD24(v122, v212, type metadata accessor for TimeBasedKey);
              v171 = v122;
              v172 = v213;
              sub_10062CD24(v171, v213, type metadata accessor for TimeBasedKey);
              v173 = Logger.logObject.getter();
              v174 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v173, v174))
              {
                v175 = swift_slowAlloc();
                v252 = swift_slowAlloc();
                *v175 = 141559043;
                *(v175 + 4) = 1752392040;
                *(v175 + 12) = 2081;
                sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                LODWORD(v247) = v174;
                v176 = v225;
                v177 = dispatch thunk of CustomStringConvertible.description.getter();
                v179 = v178;
                (*(v250 + 8))(v176, v169);
                v180 = sub_1000136BC(v177, v179, &v252);

                *(v175 + 14) = v180;
                *(v175 + 22) = 2050;
                v181 = *v170;
                sub_10062CBB8(v170, type metadata accessor for TimeBasedKey);
                *(v175 + 24) = v181;
                *(v175 + 32) = 2082;
                type metadata accessor for DateInterval();
                sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
                v182 = dispatch thunk of CustomStringConvertible.description.getter();
                v184 = v183;
                sub_10062CBB8(v172, type metadata accessor for TimeBasedKey);
                v185 = sub_1000136BC(v182, v184, &v252);
                v159 = v249;

                *(v175 + 34) = v185;
                *(v175 + 42) = 2082;
                sub_100009774(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v186 = dispatch thunk of CustomStringConvertible.description.getter();
                v188 = sub_1000136BC(v186, v187, &v252);

                *(v175 + 44) = v188;
                v117 = v228;
                _os_log_impl(&_mh_execute_header, v173, v247, "Calculated model date for beacon %{private,mask.hash}s,\nindex %{public}llu differs from the date from package.\nCalculated date interval %{public}s,\ntimestamp from package %{public}s.", v175, 0x34u);
                swift_arrayDestroy();
              }

              else
              {
                sub_10062CBB8(v170, type metadata accessor for TimeBasedKey);

                sub_10062CBB8(v172, type metadata accessor for TimeBasedKey);
                (*(v250 + 8))(v225, v169);
              }
            }
          }

          else
          {
            v189 = v215;
            sub_10062CD24(v122, v215, type metadata accessor for TimeBasedKey);
            v190 = v217;
            sub_10062CD24(v122, v217, type metadata accessor for TimeBasedKey);
            v191 = Logger.logObject.getter();
            v192 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v191, v192))
            {
              v193 = v189;
              v194 = swift_slowAlloc();
              v195 = swift_slowAlloc();
              v248 = v164;
              v252 = v195;
              *v194 = 136446722;
              type metadata accessor for DateInterval();
              sub_100009774(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
              v196 = dispatch thunk of CustomStringConvertible.description.getter();
              v198 = v197;
              sub_10062CBB8(v193, type metadata accessor for TimeBasedKey);
              v199 = sub_1000136BC(v196, v198, &v252);

              *(v194 + 4) = v199;
              *(v194 + 12) = 2082;
              sub_100009774(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v200 = dispatch thunk of CustomStringConvertible.description.getter();
              v202 = sub_1000136BC(v200, v201, &v252);

              *(v194 + 14) = v202;
              v159 = v249;
              *(v194 + 22) = 2050;
              v203 = *v217;
              v117 = v228;
              sub_10062CBB8(v217, type metadata accessor for TimeBasedKey);
              *(v194 + 24) = v203;
              _os_log_impl(&_mh_execute_header, v191, v192, "Calculated model date doesn't contains the date from package.\nCalculated date interval %{public}s,\ntimestamp from package %{public}s,\nindex: %{public}llu.", v194, 0x20u);
              swift_arrayDestroy();
            }

            else
            {
              sub_10062CBB8(v190, type metadata accessor for TimeBasedKey);

              sub_10062CBB8(v189, type metadata accessor for TimeBasedKey);
            }
          }

          v162 = v218;
          sub_10062CD24(v117, v218, type metadata accessor for RawSearchResult);
          v163 = v251;
          v165 = *v251;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v163 = v165;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_56;
          }
        }

        v165 = sub_100A5D328(0, *(v165 + 16) + 1, 1, v165);
        *v163 = v165;
LABEL_56:
        v205 = v219;
        v207 = *(v165 + 16);
        v206 = *(v165 + 24);
        if (v207 >= v206 >> 1)
        {
          *v163 = sub_100A5D328((v206 > 1), v207 + 1, 1, v165);
        }

        sub_10062CBB8(v117, type metadata accessor for RawSearchResult);
        v208 = *v163;
        *(v208 + 16) = v207 + 1;
        sub_10062CC64(v162, v208 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v207, type metadata accessor for RawSearchResult);
        sub_100007BAC(v254);
        sub_10062CBB8(v159, type metadata accessor for BeaconPayloadv1);
        return;
      }

      a3 = v220;
      if (qword_101694E00 == -1)
      {
LABEL_30:
        v111 = v246;
        v112 = sub_1000076D4(v246, qword_10177BF20);
        (v240)(a3, v112, v111);
        goto LABEL_32;
      }

LABEL_62:
      swift_once();
      goto LABEL_30;
    }
  }

  else
  {
    v78 = v241;
    sub_100A2B118(v77, v251, v248, v68, v70, v56);
    v79 = v249;
    v80 = v250;
    v81 = v247;
    v241 = v78;
    v82 = v239;
    if (!v78)
    {
      v53 = v56;
      goto LABEL_22;
    }
  }

  type metadata accessor for LocationFetcher(0);
  v84 = v246;
  (*(v80 + 16))(v82, v245, v246);
  v85 = v81;
  v86 = v237;
  sub_10062CD24(v85, v237, type metadata accessor for TimeBasedKey);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v254[0] = v251;
    *v89 = 141558787;
    *(v89 + 4) = 1752392040;
    *(v89 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = v91;
    (*(v80 + 8))(v82, v84);
    v93 = sub_1000136BC(v90, v92, v254);

    *(v89 + 14) = v93;
    *(v89 + 22) = 2082;
    if (v242)
    {
      v94 = 0x61646E6F6365732ELL;
    }

    else
    {
      v94 = 0x7972616D6972702ELL;
    }

    if (v242)
    {
      v95 = 0xEA00000000007972;
    }

    else
    {
      v95 = 0xE800000000000000;
    }

    v96 = sub_1000136BC(v94, v95, v254);

    *(v89 + 24) = v96;
    *(v89 + 32) = 2050;
    v97 = *v237;
    sub_10062CBB8(v237, type metadata accessor for TimeBasedKey);
    *(v89 + 34) = v97;
    _os_log_impl(&_mh_execute_header, v87, v88, "Packet decryption failed for beacon %{private,mask.hash}s, sequence: %{public}s, index: %{public}llu.", v89, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_10062CBB8(v86, type metadata accessor for TimeBasedKey);

    (*(v80 + 8))(v82, v84);
  }
}

void sub_1005FB414(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v50 = a1;
  v51 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  __chkstk_darwin(v7);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000BC4D4(&qword_10169EF20, &qword_10139FC08);
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v47 - v10;
  v11 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = type metadata accessor for OwnedBeaconRecord(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = &v47 - v22;
  v55 = a2;
  sub_100AA33AC(a2, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000B3A8(v16, &unk_1016A9A20, &qword_10138B280);
LABEL_10:
    v26 = v56;
LABEL_11:
    v29 = v54;
    type metadata accessor for LocationFetcher(0);
    sub_10062CD24(v52, v21, type metadata accessor for OwnedBeaconRecord);
    v30 = v57;
    (*(v57 + 16))(v29, v55, v26);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v26;
      v34 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58 = v56;
      *v34 = 141558787;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      LODWORD(v55) = v32;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_10062CBB8(v21, type metadata accessor for OwnedBeaconRecord);
      v38 = sub_1000136BC(v35, v37, &v58);

      *(v34 + 14) = v38;
      *(v34 + 22) = 2160;
      *(v34 + 24) = 1752392040;
      *(v34 + 32) = 2081;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v30 + 8))(v29, v33);
      v42 = sub_1000136BC(v39, v41, &v58);

      *(v34 + 34) = v42;
      _os_log_impl(&_mh_execute_header, v31, v55, "Multipart beacon %{private,mask.hash}s peerIdentifiersWithMultipartPosition did not find partId for %{private,mask.hash}s.", v34, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v30 + 8))(v29, v26);
      sub_10062CBB8(v21, type metadata accessor for OwnedBeaconRecord);
    }

    return;
  }

  sub_10062CC64(v16, v23, type metadata accessor for OwnedBeaconRecord);
  sub_10062CD24(&v23[*(v17 + 24)], v13, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10062CBB8(v23, type metadata accessor for OwnedBeaconRecord);
    sub_10062CBB8(v13, type metadata accessor for StableIdentifier);
    goto LABEL_10;
  }

  v24 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

  v25 = v13[*(v24 + 96)];
  v26 = v56;
  (*(v57 + 8))(v13, v56);
  v27 = *(v51 + 16);
  if (!v27)
  {
LABEL_8:
    sub_10062CBB8(v23, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_11;
  }

  v28 = 0;
  while (*(v51 + 32 + v28) != v25)
  {
    if (v27 == ++v28)
    {
      goto LABEL_8;
    }
  }

  if (v28 > 0xFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v48;
  v43 = *(v47 + 48);
  (*(v57 + 16))(v48, v55, v26);
  *(v11 + v43) = v28;
  v25 = v50;
  v21 = *v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_20:
    v21 = sub_100A5D518(0, v21[2] + 1, 1, v21);
  }

  v44 = v49;
  v46 = v21[2];
  v45 = v21[3];
  if (v46 >= v45 >> 1)
  {
    v21 = sub_100A5D518((v45 > 1), v46 + 1, 1, v21);
  }

  sub_10062CBB8(v23, type metadata accessor for OwnedBeaconRecord);
  v21[2] = v46 + 1;
  sub_1000D2AD8(v11, v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46, &qword_10169EF20, &qword_10139FC08);
  *v25 = v21;
}

Swift::Int sub_1005FBB98(uint64_t *a1)
{
  v2 = *(type metadata accessor for FetchRequestBeacon(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32174(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1006075A8(v6, type metadata accessor for FetchRequestBeacon, sub_100607E20, sub_1006076F8);
  *a1 = v3;
  return result;
}

Swift::Int sub_1005FBC7C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B32188(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1006074A0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1005FBCE8(uint64_t *a1)
{
  v2 = *(type metadata accessor for RawSearchResult(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3219C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1006075A8(v6, type metadata accessor for RawSearchResult, sub_100609128, sub_100607BBC);
  *a1 = v3;
  return result;
}

void sub_1005FBDCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for SharedBeaconRecord(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_101697750, &qword_1013B3560);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &unk_101698C30, &unk_101392630);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for SharedBeaconRecord);
      sub_10062CD24(v79, v100, type metadata accessor for SharedBeaconRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5C0C8(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5C0C8((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for SharedBeaconRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for SharedBeaconRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1005FC9CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for OwnedBeaconGroup(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A5AF8, &unk_1013B3630);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &unk_1016AF8B0, &unk_1013A0700);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for OwnedBeaconGroup);
      sub_10062CD24(v79, v100, type metadata accessor for OwnedBeaconGroup);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5C3D4(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5C3D4((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for OwnedBeaconGroup);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for OwnedBeaconGroup);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1005FD5CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&qword_1016A5A88, &qword_1013B35B0);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for PairingErrorRecord(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A5A90, &qword_1013B35B8);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &qword_1016A5A88, &qword_1013B35B0);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for PairingErrorRecord);
      sub_10062CD24(v79, v100, type metadata accessor for PairingErrorRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5C480(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5C480((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for PairingErrorRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for PairingErrorRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1005FE1CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for LostModeRecord(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A5B18, &unk_1013B3660);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &unk_1016A99E0, &qword_1013A07B0);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for LostModeRecord);
      sub_10062CD24(v79, v100, type metadata accessor for LostModeRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5C8F4(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5C8F4((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for LostModeRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for LostModeRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1005FEDCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for KeyAlignmentRecord(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A5AF0, &unk_1013B3620);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &qword_10169F328, &unk_1013CB040);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for KeyAlignmentRecord);
      sub_10062CD24(v79, v100, type metadata accessor for KeyAlignmentRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5C91C(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5C91C((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for KeyAlignmentRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for KeyAlignmentRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1005FF9CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for ShareRecord(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A59F8, &qword_1013B34F8);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &qword_1016A4780, &qword_1013B34F0);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for ShareRecord);
      sub_10062CD24(v79, v100, type metadata accessor for ShareRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5C944(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5C944((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for ShareRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for ShareRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1006005CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for SafeLocation(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A59B0, &qword_1013B34D0);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &unk_1016AFA10, &qword_1013CB000);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for SafeLocation);
      sub_10062CD24(v79, v100, type metadata accessor for SafeLocation);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5C96C(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5C96C((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for SafeLocation);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for SafeLocation);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1006011CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for BeaconEstimatedLocation(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A58C8, &unk_1013B32D0);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &unk_101696940, &unk_10138B210);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for BeaconEstimatedLocation);
      sub_10062CD24(v79, v100, type metadata accessor for BeaconEstimatedLocation);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5D0A0(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5D0A0((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for BeaconEstimatedLocation);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for BeaconEstimatedLocation);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_100601DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for WildModeAssociationRecord(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A5B00, &unk_1013B3640);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &unk_1016C7C90, &qword_1013BB4B0);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for WildModeAssociationRecord);
      sub_10062CD24(v79, v100, type metadata accessor for WildModeAssociationRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5D218(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5D218((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for WildModeAssociationRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for WildModeAssociationRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1006029CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v101 = *(found - 8);
  v11 = __chkstk_darwin(found);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = found;
    v110 = found;
    sub_1000BC4D4(&qword_1016A5AE8, &unk_1013B3610);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &qword_10169E328, &unk_10139D740);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for NotifyWhenFoundRecord);
      sub_10062CD24(v79, v100, type metadata accessor for NotifyWhenFoundRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5D9C0(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5D9C0((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for NotifyWhenFoundRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for NotifyWhenFoundRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1006035CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&qword_1016A5B08, &qword_101410E70);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for LostModeInfoRecord(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A5B10, &unk_1013B3650);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &qword_1016A5B08, &qword_101410E70);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for LostModeInfoRecord);
      sub_10062CD24(v79, v100, type metadata accessor for LostModeInfoRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5DC68(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5DC68((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for LostModeInfoRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for LostModeInfoRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1006041CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for LeashRecord(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A5B20, &qword_1013B3670);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &qword_1016B1500, &unk_1013C57F0);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for LeashRecord);
      sub_10062CD24(v79, v100, type metadata accessor for LeashRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5E398(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5E398((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for LeashRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for LeashRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_100604DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&qword_1016A5B30, &qword_101410EC0);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_1016A5B38, &unk_1013B36F0);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &qword_1016A5B30, &qword_101410EC0);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for SecureLocationsCachedSharedKey);
      sub_10062CD24(v79, v100, type metadata accessor for SecureLocationsCachedSharedKey);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5E664(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5E664((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for SecureLocationsCachedSharedKey);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for SecureLocationsCachedSharedKey);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1006059CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for SharingCircleSecret(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_101697748, &unk_10138C400);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &qword_101699BB0, &qword_1013B35F0);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for SharingCircleSecret);
      sub_10062CD24(v79, v100, type metadata accessor for SharingCircleSecret);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5B984(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5B984((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for SharingCircleSecret);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for SharingCircleSecret);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

void sub_1006065CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v95 = a4;
  v98 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord(0);
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v88 - v9;
  v96 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v96);
  v99 = v88 - v10;
  v97 = type metadata accessor for BeaconNamingRecord(0);
  v101 = *(v97 - 8);
  v11 = __chkstk_darwin(v97);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = v88 - v16;
  v18 = type metadata accessor for UUID();
  v105 = *(v18 - 8);
  v106 = v18;
  __chkstk_darwin(v18);
  v109 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v103 = *(v108 - 8);
  v20 = __chkstk_darwin(v108);
  v104 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v88 - v22;
  if (URL.pathExtension.getter() == 0x64726F636572 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v73 = static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100008C00();
      *(v74 + 32) = v75;
      *(v74 + 40) = v77;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v78 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v78, "Invalid extension. Skipping file %@", 35, 2, v74);

      return;
    }
  }

  v92 = v14;
  v89 = a3;
  v90 = v6;
  v107 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v26 = v103 + 8;
  v27 = *(v103 + 8);
  v28 = v108;
  v27(v23, v108);
  UUID.init(uuidString:)();

  v30 = v105;
  v29 = v106;
  if ((*(v105 + 48))(v17, 1, v106) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v31 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = URL.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Invalid file identifier at URL: %@", 34, 2, v33);
  }

  else
  {
    (*(v30 + 32))(v109, v17, v29);
    URL.deletingPathExtension()();
    v37 = v104;
    URL.deletingLastPathComponent()();
    v88[1] = v26;
    v91 = v27;
    v27(v23, v28);
    v38._object = 0x800000010135B5A0;
    v38._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v38);
    v39 = v97;
    v110 = v97;
    sub_1000BC4D4(&qword_101697758, &qword_10138C410);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    __chkstk_darwin(v43);
    v44 = v109;
    v88[-6] = v45;
    v88[-5] = v44;
    v88[-4] = v37;
    v88[-3] = v40;
    v88[-2] = v42;
    v46 = v99;
    v47 = v107;
    OS_dispatch_queue.sync<A>(execute:)();
    v107 = v47;
    objc_autoreleasePoolPop(v43);

    v48 = v101;
    if ((v101[6])(v46, 1, v39) == 1)
    {
      sub_10000B3A8(v46, &unk_1016B29E0, &unk_1013B70E0);
      LODWORD(v101) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10138BBE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = v108;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v56;
      *(v50 + 80) = v57;
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v49, "Could not read item %@ for records at %@", 40, 2, v50);

      v58 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v59 = v102;
      URL.appendingPathExtension(_:)();
      v60 = v55;
      v61 = v55;
      v62 = v91;
      v91(v23, v60);
      objc_autoreleasePoolPop(v58);
      v63 = *(v90 + 20);
      v101 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v64 = v61;

      URL.appendingPathExtension(_:)();
      v62(v23, v61);
      objc_autoreleasePoolPop(v101);
      (*(v103 + 56))(v59 + v63, 0, 1, v61);
      v65 = v93;
      sub_10062CD24(v59, v93, type metadata accessor for BeaconStoreFileRecord);
      v66 = v95;
      v67 = *v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v66 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_100A5C0A0(0, v67[2] + 1, 1, v67);
        *v66 = v67;
      }

      v69 = v94;
      v71 = v67[2];
      v70 = v67[3];
      if (v71 >= v70 >> 1)
      {
        *v66 = sub_100A5C0A0((v70 > 1), v71 + 1, 1, v67);
      }

      sub_10062CBB8(v102, type metadata accessor for BeaconStoreFileRecord);
      v72 = *v66;
      *(v72 + 16) = v71 + 1;
      sub_10062CC64(v65, v72 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71, type metadata accessor for BeaconStoreFileRecord);
      v91(v104, v64);
    }

    else
    {
      v79 = v92;
      sub_10062CC64(v46, v92, type metadata accessor for BeaconNamingRecord);
      sub_10062CD24(v79, v100, type metadata accessor for BeaconNamingRecord);
      v80 = v89;
      v81 = *v89;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *v80 = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_100A5C388(0, v81[2] + 1, 1, v81);
        *v80 = v81;
      }

      v83 = v108;
      v84 = v91;
      v86 = v81[2];
      v85 = v81[3];
      if (v86 >= v85 >> 1)
      {
        *v80 = sub_100A5C388((v85 > 1), v86 + 1, 1, v81);
      }

      sub_10062CBB8(v92, type metadata accessor for BeaconNamingRecord);
      v87 = *v80;
      *(v87 + 16) = v86 + 1;
      sub_10062CC64(v100, v87 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v86, type metadata accessor for BeaconNamingRecord);
      v84(v104, v83);
    }

    (*(v105 + 8))(v109, v106);
  }
}

uint64_t sub_1006071CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 400))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_10060722C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_10060723C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  type metadata accessor for AccessoryMetadata(0);
  return a1;
}

uint64_t sub_1006072A4@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100607310(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

Swift::Int sub_1006074A0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&qword_1016A58D0, &qword_1013B3310);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100608784(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100607960(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1006075A8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1006076F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v8 = __chkstk_darwin(RequestBeacon);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v27 - v15;
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v34 = *a4;
    v28 = v17;
    v21 = v34 + v17 * a3;
LABEL_5:
    v32 = v18;
    v33 = a3;
    v30 = v21;
    v31 = v20;
    v22 = v18;
    while (1)
    {
      sub_10062CD24(v21, v16, type metadata accessor for FetchRequestBeacon);
      sub_10062CD24(v22, v12, type metadata accessor for FetchRequestBeacon);
      v23 = UUID.hashValue.getter();
      v24 = UUID.hashValue.getter();
      sub_10062CBB8(v12, type metadata accessor for FetchRequestBeacon);
      result = sub_10062CBB8(v16, type metadata accessor for FetchRequestBeacon);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v33 + 1;
        v18 = v32 + v28;
        v20 = v31 - 1;
        v21 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10062CC64(v21, v35, type metadata accessor for FetchRequestBeacon);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10062CC64(v25, v22, type metadata accessor for FetchRequestBeacon);
      v22 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100607960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v38);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v14 = &v26 - v13;
  v27 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v31 = *a4;
    v16 = v31 + 40 * a3;
    v17 = a1 - a3;
LABEL_5:
    v29 = v16;
    v30 = a3;
    v28 = v17;
    while (1)
    {
      sub_10001F280(v16, &v35);
      sub_10001F280(v16 - 40, v32);
      v18 = v36;
      v19 = v37;
      sub_1000035D0(&v35, v36);
      (*(v19 + 8))(v18, v19);
      v20 = v33;
      v21 = v34;
      sub_1000035D0(v32, v33);
      (*(v21 + 8))(v20, v21);
      LOBYTE(v20) = static Date.< infix(_:_:)();
      v22 = *v15;
      v23 = v38;
      (*v15)(v10, v38);
      v22(v14, v23);
      sub_100007BAC(v32);
      result = sub_100007BAC(&v35);
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v16 = v29 + 40;
        v17 = v28 - 1;
        if (v30 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      sub_10000A748(v16, &v35);
      v24 = *(v16 - 24);
      *v16 = *(v16 - 40);
      *(v16 + 16) = v24;
      *(v16 + 32) = *(v16 - 8);
      result = sub_10000A748(&v35, v16 - 40);
      v16 -= 40;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100607BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for RawSearchResult(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_10062CD24(v23, v17, type metadata accessor for RawSearchResult);
      sub_10062CD24(v20, v13, type metadata accessor for RawSearchResult);
      v24 = static Date.< infix(_:_:)();
      sub_10062CBB8(v13, type metadata accessor for RawSearchResult);
      result = sub_10062CBB8(v17, type metadata accessor for RawSearchResult);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10062CC64(v23, v35, type metadata accessor for RawSearchResult);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10062CC64(v25, v20, type metadata accessor for RawSearchResult);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100607E20(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v109 = a1;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v115 = *(RequestBeacon - 8);
  v9 = __chkstk_darwin(RequestBeacon);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v120 = &v104 - v12;
  v13 = __chkstk_darwin(v11);
  v123 = &v104 - v14;
  result = __chkstk_darwin(v13);
  v122 = &v104 - v16;
  v117 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v109;
    if (!*v109)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100B31E68(v19);
      v19 = result;
    }

    v124 = v19;
    v100 = *(v19 + 2);
    if (v100 >= 2)
    {
      while (*v117)
      {
        v101 = *&v19[16 * v100];
        v102 = *&v19[16 * v100 + 24];
        sub_100609A8C(*v117 + *(v115 + 72) * v101, *v117 + *(v115 + 72) * *&v19[16 * v100 + 16], *v117 + *(v115 + 72) * v102, v5);
        if (v6)
        {
        }

        if (v102 < v101)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100B31E68(v19);
        }

        if (v100 - 2 >= *(v19 + 2))
        {
          goto LABEL_120;
        }

        v103 = &v19[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        v124 = v19;
        result = sub_100B31DDC(v100 - 1);
        v19 = v124;
        v100 = *(v124 + 2);
        if (v100 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v106 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    if (v18 + 1 >= v17)
    {
      v30 = v18 + 1;
    }

    else
    {
      v118 = v17;
      v107 = v6;
      v22 = *v117;
      v23 = *(v115 + 72);
      v5 = *v117 + v23 * v21;
      v24 = v122;
      sub_10062CD24(v5, v122, type metadata accessor for FetchRequestBeacon);
      v25 = v22 + v23 * v20;
      v26 = v20;
      v27 = v123;
      sub_10062CD24(v25, v123, type metadata accessor for FetchRequestBeacon);
      v114 = UUID.hashValue.getter();
      v113 = UUID.hashValue.getter();
      sub_10062CBB8(v27, type metadata accessor for FetchRequestBeacon);
      result = sub_10062CBB8(v24, type metadata accessor for FetchRequestBeacon);
      v108 = v26;
      v28 = v26 + 2;
      v116 = v23;
      v29 = v22 + v23 * (v26 + 2);
      while (1)
      {
        v30 = v118;
        if (v118 == v28)
        {
          break;
        }

        LODWORD(v119) = v114 < v113;
        v31 = v122;
        sub_10062CD24(v29, v122, type metadata accessor for FetchRequestBeacon);
        v32 = v123;
        sub_10062CD24(v5, v123, type metadata accessor for FetchRequestBeacon);
        v33 = UUID.hashValue.getter();
        v34 = UUID.hashValue.getter();
        sub_10062CBB8(v32, type metadata accessor for FetchRequestBeacon);
        result = sub_10062CBB8(v31, type metadata accessor for FetchRequestBeacon);
        ++v28;
        v29 += v116;
        v5 += v116;
        if (((v119 ^ (v33 >= v34)) & 1) == 0)
        {
          v30 = v28 - 1;
          break;
        }
      }

      v6 = v107;
      v20 = v108;
      if (v114 < v113)
      {
        if (v30 < v108)
        {
          goto LABEL_123;
        }

        if (v108 < v30)
        {
          v105 = v19;
          v35 = v107;
          v36 = v116 * (v30 - 1);
          v5 = v30 * v116;
          v37 = v30;
          v38 = v30;
          v39 = v108 * v116;
          do
          {
            if (v20 != --v38)
            {
              v40 = *v117;
              if (!*v117)
              {
                goto LABEL_129;
              }

              sub_10062CC64(v40 + v39, v112, type metadata accessor for FetchRequestBeacon);
              if (v39 < v36 || v40 + v39 >= (v40 + v5))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10062CC64(v112, v40 + v36, type metadata accessor for FetchRequestBeacon);
            }

            ++v20;
            v36 -= v116;
            v5 -= v116;
            v39 += v116;
          }

          while (v20 < v38);
          v6 = v35;
          v19 = v105;
          v20 = v108;
          v30 = v37;
        }
      }
    }

    v41 = v117[1];
    if (v30 < v41)
    {
      if (__OFSUB__(v30, v20))
      {
        goto LABEL_122;
      }

      if (v30 - v20 < v106)
      {
        if (__OFADD__(v20, v106))
        {
          goto LABEL_124;
        }

        if (v20 + v106 >= v41)
        {
          v42 = v117[1];
        }

        else
        {
          v42 = v20 + v106;
        }

        if (v42 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v30 != v42)
        {
          break;
        }
      }
    }

    v18 = v30;
    if (v30 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v44 = *(v19 + 2);
    v43 = *(v19 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_100A5B430((v43 > 1), v44 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v45;
    v46 = &v19[16 * v44];
    *(v46 + 4) = v20;
    *(v46 + 5) = v18;
    v47 = *v109;
    if (!*v109)
    {
      goto LABEL_131;
    }

    if (v44)
    {
      while (1)
      {
        v5 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v48 = *(v19 + 4);
          v49 = *(v19 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_110;
          }

          v64 = &v19[16 * v45];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_113;
          }

          v70 = &v19[16 * v5 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_117;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v5 = v45 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v19[16 * v45];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_112;
        }

        v77 = &v19[16 * v5];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        v85 = v5 - 1;
        if (v5 - 1 >= v45)
        {
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
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v117)
        {
          goto LABEL_128;
        }

        v86 = *&v19[16 * v85 + 32];
        v87 = *&v19[16 * v5 + 40];
        sub_100609A8C(*v117 + *(v115 + 72) * v86, *v117 + *(v115 + 72) * *&v19[16 * v5 + 32], *v117 + *(v115 + 72) * v87, v47);
        if (v6)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100B31E68(v19);
        }

        if (v85 >= *(v19 + 2))
        {
          goto LABEL_107;
        }

        v88 = &v19[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        v124 = v19;
        result = sub_100B31DDC(v5);
        v19 = v124;
        v45 = *(v124 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v19[16 * v45 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_108;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_109;
      }

      v59 = &v19[16 * v45];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_111;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_114;
      }

      if (v63 >= v55)
      {
        v81 = &v19[16 * v5 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v50 < v84)
        {
          v5 = v45 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = v117[1];
    if (v18 >= v17)
    {
      goto LABEL_94;
    }
  }

  v105 = v19;
  v107 = v6;
  v108 = v20;
  v89 = *v117;
  v90 = *(v115 + 72);
  v5 = *v117 + v90 * (v30 - 1);
  v91 = -v90;
  v92 = v20 - v30;
  v118 = v30;
  v119 = v89;
  v110 = v90;
  v111 = v42;
  v93 = v89 + v30 * v90;
LABEL_85:
  v113 = v93;
  v114 = v92;
  v116 = v5;
  while (1)
  {
    v94 = v122;
    sub_10062CD24(v93, v122, type metadata accessor for FetchRequestBeacon);
    v95 = v123;
    sub_10062CD24(v5, v123, type metadata accessor for FetchRequestBeacon);
    v96 = UUID.hashValue.getter();
    v97 = UUID.hashValue.getter();
    sub_10062CBB8(v95, type metadata accessor for FetchRequestBeacon);
    result = sub_10062CBB8(v94, type metadata accessor for FetchRequestBeacon);
    if (v96 >= v97)
    {
LABEL_84:
      v18 = v111;
      v5 = v116 + v110;
      v92 = v114 - 1;
      v93 = v113 + v110;
      if (++v118 != v111)
      {
        goto LABEL_85;
      }

      v6 = v107;
      v20 = v108;
      v19 = v105;
      if (v111 < v108)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v119)
    {
      break;
    }

    v98 = v120;
    sub_10062CC64(v93, v120, type metadata accessor for FetchRequestBeacon);
    swift_arrayInitWithTakeFrontToBack();
    sub_10062CC64(v98, v5, type metadata accessor for FetchRequestBeacon);
    v5 += v91;
    v93 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}