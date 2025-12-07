void sub_10013411C(uint64_t a1, uint64_t a2)
{
  v370 = a2;
  v3 = sub_1000F5104(&qword_100938BE8, &qword_100795758);
  __chkstk_darwin(v3 - 8, v4);
  v349 = &v319 - v5;
  v348 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v347 = *(v348 - 8);
  __chkstk_darwin(v348, v6);
  v350 = &v319 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v351 = &v319 - v10;
  v11 = sub_1000F5104(&qword_100938BF0, &qword_100795768);
  __chkstk_darwin(v11 - 8, v12);
  v346 = &v319 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v343 = &v319 - v16;
  __chkstk_darwin(v17, v18);
  v353 = &v319 - v19;
  __chkstk_darwin(v20, v21);
  v358 = &v319 - v22;
  __chkstk_darwin(v23, v24);
  v362 = &v319 - v25;
  __chkstk_darwin(v26, v27);
  v366 = &v319 - v28;
  v367 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v371 = *(v367 - 8);
  __chkstk_darwin(v367, v29);
  v344 = &v319 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v345 = &v319 - v33;
  __chkstk_darwin(v34, v35);
  v341 = &v319 - v36;
  __chkstk_darwin(v37, v38);
  v342 = &v319 - v39;
  __chkstk_darwin(v40, v41);
  v339 = &v319 - v42;
  __chkstk_darwin(v43, v44);
  v340 = &v319 - v45;
  __chkstk_darwin(v46, v47);
  v355 = &v319 - v48;
  __chkstk_darwin(v49, v50);
  v357 = &v319 - v51;
  __chkstk_darwin(v52, v53);
  v359 = &v319 - v54;
  __chkstk_darwin(v55, v56);
  v361 = &v319 - v57;
  __chkstk_darwin(v58, v59);
  v363 = &v319 - v60;
  __chkstk_darwin(v61, v62);
  v364 = &v319 - v63;
  v64 = type metadata accessor for UUID();
  v368 = *(v64 - 8);
  v369 = v64;
  __chkstk_darwin(v64, v65);
  v67 = (&v319 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v375 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v372 = *(v375 - 8);
  __chkstk_darwin(v375, v68);
  v70 = &v319 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71, v72);
  v338 = &v319 - v73;
  __chkstk_darwin(v74, v75);
  v337 = &v319 - v76;
  __chkstk_darwin(v77, v78);
  v336 = &v319 - v79;
  __chkstk_darwin(v80, v81);
  v335 = &v319 - v82;
  __chkstk_darwin(v83, v84);
  v352 = &v319 - v85;
  __chkstk_darwin(v86, v87);
  v354 = &v319 - v88;
  __chkstk_darwin(v89, v90);
  v356 = &v319 - v91;
  __chkstk_darwin(v92, v93);
  v360 = &v319 - v94;
  __chkstk_darwin(v95, v96);
  v365 = &v319 - v97;
  __chkstk_darwin(v98, v99);
  v101 = &v319 - v100;
  v102 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v102, v103);
  v105 = &v319 - v104;
  v106 = sub_1000F5104(&qword_100938BF8, &qword_100795778);
  __chkstk_darwin(v106, v107);
  v374 = &v319 - v108;
  v109 = sub_1000F5104(&qword_100938C00, &unk_100795780);
  __chkstk_darwin(v109 - 8, v110);
  v112 = &v319 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v113, v114);
  v116 = &v319 - v115;
  __chkstk_darwin(v117, v118);
  v373 = &v319 - v119;
  v376 = a1;
  v120 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v121)
  {
    goto LABEL_127;
  }

  v128 = v120;
  v129 = v121;
  if (v120 == 0x6E6F697461657263 && v121 == 0xEC00000065746144)
  {
    goto LABEL_23;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v128 == 0xD000000000000010 && 0x80000001007E8D70 == v129)
  {
    goto LABEL_23;
  }

  v334 = 0x80000001007E8D70;
  v333 = 0xD000000000000010;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v128 == 0xD000000000000025 && 0x80000001007955E0 == v129)
  {
    goto LABEL_23;
  }

  v332 = 0x80000001007955E0;
  v331 = 0xD000000000000025;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v128 == 0xD00000000000001BLL && 0x80000001007E8DC0 == v129)
  {
    goto LABEL_23;
  }

  v330 = 0x80000001007E8DC0;
  v329 = 0xD00000000000001BLL;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v128 == 0xD000000000000016 && 0x8000000100795660 == v129)
  {
    goto LABEL_23;
  }

  v328 = 0x8000000100795660;
  v327 = 0xD000000000000016;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v128 == 0xD000000000000018 && 0x80000001007956F0 == v129)
  {
    goto LABEL_23;
  }

  v326 = 0x80000001007956F0;
  v325 = 0xD000000000000018;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v128 == 0xD00000000000001ALL && 0x80000001007956A0 == v129)
  {
    goto LABEL_23;
  }

  v324 = 0x80000001007956A0;
  v323 = 0xD00000000000001ALL;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_23;
  }

  v321 = 0xD000000000000011;
  v320 = 0x80000001007955B0;
  if (v128 == 0xD000000000000011 && 0x80000001007955B0 == v129 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v129, v121, v122, v123, v124, v125, v126, v127;
    v132 = [v377 publicLinkURLUUID];
    if (v132)
    {
      v133 = v132;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v368 + 56))(v70, 0, 1, v369);
    }

    else
    {
      (*(v368 + 56))(v70, 1, 1, v369);
    }

    v134 = v373;
    sub_100031B58(v70, v373, &unk_100939D90, "8\n\r");
    v135 = *(v372 + 56);
    v136 = v134;
    v137 = v375;
    v135(v136, 0, 1, v375);
    sub_100010364(v370, v116, &unk_100939D90, "8\n\r");
    v135(v116, 0, 1, v137);
    v138 = *(v106 + 48);
    v139 = v374;
    sub_100010364(v373, v374, &qword_100938C00, &unk_100795780);
    v322 = v138;
    sub_100010364(v116, v139 + v138, &qword_100938C00, &unk_100795780);
    v140 = *(v372 + 48);
    if (v140(v139, 1, v375) == 1)
    {
      sub_1000050A4(v116, &qword_100938C00, &unk_100795780);
      if (v140(v374 + v322, 1, v375) == 1)
      {
        sub_1000050A4(v373, &qword_100938C00, &unk_100795780);
        v141 = v374;
LABEL_66:
        sub_1000050A4(v141, &qword_100938C00, &unk_100795780);
        return;
      }

      goto LABEL_38;
    }

    v142 = v374;
    sub_100010364(v374, v112, &qword_100938C00, &unk_100795780);
    if (v140(v142 + v322, 1, v375) == 1)
    {
      sub_1000050A4(v116, &qword_100938C00, &unk_100795780);
      sub_1000050A4(v112, &unk_100939D90, "8\n\r");
LABEL_38:
      v143 = &qword_100938BF8;
      v144 = &qword_100795778;
LABEL_39:
      sub_1000050A4(v374, v143, v144);
      goto LABEL_40;
    }

    v201 = *(v102 + 48);
    sub_100010364(v112, v105, &unk_100939D90, "8\n\r");
    sub_100031B58(v374 + v322, &v105[v201], &unk_100939D90, "8\n\r");
    v202 = *(v368 + 48);
    if (v202(v105, 1, v369) == 1)
    {
      sub_1000050A4(v116, &qword_100938C00, &unk_100795780);
      if (v202(&v105[v201], 1, v369) == 1)
      {
        sub_1000050A4(v105, &unk_100939D90, "8\n\r");
        sub_1000050A4(v112, &unk_100939D90, "8\n\r");
        sub_1000050A4(v374, &qword_100938C00, &unk_100795780);
        goto LABEL_65;
      }
    }

    else
    {
      sub_100010364(v105, v101, &unk_100939D90, "8\n\r");
      if (v202(&v105[v201], 1, v369) != 1)
      {
        v223 = v368;
        v224 = v369;
        (*(v368 + 32))(v67, &v105[v201], v369);
        sub_100029F48(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v225 = dispatch thunk of static Equatable.== infix(_:_:)();
        v226 = *(v223 + 8);
        v226(v67, v224);
        v67 = &qword_100938C00;
        sub_1000050A4(v116, &qword_100938C00, &unk_100795780);
        v226(v101, v224);
        sub_1000050A4(v105, &unk_100939D90, "8\n\r");
        sub_1000050A4(v112, &unk_100939D90, "8\n\r");
        sub_1000050A4(v374, &qword_100938C00, &unk_100795780);
        if ((v225 & 1) == 0)
        {
LABEL_40:
          v145 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v146)
          {
            goto LABEL_127;
          }

          v153 = v145;
          v67 = v146;
          if (v145 == 0x6E6F697461657263 && v146 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v67, v146, v147, v148, v149, v150, v151, v152;
            sub_100010364(v370, v365, &unk_100939D90, "8\n\r");
            v154 = swift_dynamicCast();
            v155 = *(v371 + 56);
            v371 += 56;
            if (v154)
            {
              v156 = v366;
              v155(v366, 0, 1, v367);
              v157 = v156;
              v158 = v364;
              sub_100031B58(v157, v364, &unk_100938850, qword_100795AE0);
              v159 = v363;
              sub_100010364(v158, v363, &unk_100938850, qword_100795AE0);
              v160 = type metadata accessor for Date();
              v161 = *(v160 - 8);
              isa = 0;
              if ((*(v161 + 48))(v159, 1, v160) != 1)
              {
                v163 = v363;
                isa = Date._bridgeToObjectiveC()().super.isa;
                (*(v161 + 8))(v163, v160);
              }

              [v377 setCreationDate:isa];

              v164 = &unk_100938850;
              v165 = qword_100795AE0;
              v166 = v364;
              goto LABEL_62;
            }

            v203 = v366;
          }

          else if (v153 == v333 && v334 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v67, v146, v147, v148, v149, v150, v151, v152;
            sub_100010364(v370, v360, &unk_100939D90, "8\n\r");
            v214 = swift_dynamicCast();
            v155 = *(v371 + 56);
            v371 += 56;
            if (v214)
            {
              v215 = v362;
              v155(v362, 0, 1, v367);
              v216 = v215;
              v217 = v361;
              sub_100031B58(v216, v361, &unk_100938850, qword_100795AE0);
              v218 = v359;
              sub_100010364(v217, v359, &unk_100938850, qword_100795AE0);
              v219 = type metadata accessor for Date();
              v220 = *(v219 - 8);
              v221 = 0;
              if ((*(v220 + 48))(v218, 1, v219) != 1)
              {
                v222 = v359;
                v221 = Date._bridgeToObjectiveC()().super.isa;
                (*(v220 + 8))(v222, v219);
              }

              [v377 setLastModifiedDate:v221];

              v164 = &unk_100938850;
              v165 = qword_100795AE0;
              v166 = v361;
              goto LABEL_62;
            }

            v203 = v362;
          }

          else
          {
            if (v153 == v331 && v332 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v67, v146, v147, v148, v149, v150, v151, v152;
              sub_100010364(v370, v356, &unk_100939D90, "8\n\r");
              v228 = swift_dynamicCast();
              v155 = *(v371 + 56);
              v371 += 56;
              p_clients = &v383;
              if (v228)
              {
                v230 = v358;
                v155(v358, 0, 1, v367);
                v231 = v230;
                v232 = v357;
                sub_100031B58(v231, v357, &unk_100938850, qword_100795AE0);
                v233 = v355;
                sub_100010364(v232, v355, &unk_100938850, qword_100795AE0);
                v234 = type metadata accessor for Date();
                v235 = *(v234 - 8);
                v236 = 0;
                if ((*(v235 + 48))(v233, 1, v234) != 1)
                {
                  v237 = v355;
                  v236 = Date._bridgeToObjectiveC()().super.isa;
                  (*(v235 + 8))(v237, v234);
                }

                [v377 setMostRecentPublicLinkUpdateRequestDate:v236];

                v164 = &unk_100938850;
                v165 = qword_100795AE0;
                v166 = v357;
                goto LABEL_62;
              }
            }

            else
            {
              if (v153 == v329 && v330 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v67, v146, v147, v148, v149, v150, v151, v152;
                sub_100010364(v370, v354, &unk_100939D90, "8\n\r");
                sub_1000F5104(&qword_100938C10, &unk_100795F30);
                if (swift_dynamicCast())
                {
                  v238 = v380;
                  v239 = v381;
                  if (v381 >> 60 == 15)
                  {
                    v240 = 0;
                  }

                  else
                  {
                    sub_100029344(v380, v381);
                    v240 = Data._bridgeToObjectiveC()().super.isa;
                    sub_100031A14(v238, v239);
                  }

                  [v377 setPublicLinkConfigurationData:v240];

                  sub_100031A14(v238, v239);
                }

                goto LABEL_63;
              }

              if (v153 == v327 && v328 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v67, v146, v147, v148, v149, v150, v151, v152;
                sub_100010364(v370, v352, &unk_100939D90, "8\n\r");
                v241 = swift_dynamicCast();
                v155 = *(v371 + 56);
                v371 += 56;
                p_clients = &v382._clients;
                if (v241)
                {
                  v242 = v353;
                  v155(v353, 0, 1, v367);
                  v243 = v242;
                  v244 = v340;
                  sub_100031B58(v243, v340, &unk_100938850, qword_100795AE0);
                  v245 = v339;
                  sub_100010364(v244, v339, &unk_100938850, qword_100795AE0);
                  v246 = type metadata accessor for Date();
                  v247 = *(v246 - 8);
                  v248 = 0;
                  if ((*(v247 + 48))(v245, 1, v246) != 1)
                  {
                    v249 = v339;
                    v248 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v247 + 8))(v249, v246);
                  }

                  [v377 setPublicLinkCreationDate:v248];

                  v164 = &unk_100938850;
                  v165 = qword_100795AE0;
                  v166 = v340;
                  goto LABEL_62;
                }
              }

              else if (v153 == v325 && v326 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v67, v146, v147, v148, v149, v150, v151, v152;
                sub_100010364(v370, v335, &unk_100939D90, "8\n\r");
                v250 = swift_dynamicCast();
                v155 = *(v371 + 56);
                v371 += 56;
                p_clients = &v375;
                if (v250)
                {
                  v251 = v343;
                  v155(v343, 0, 1, v367);
                  v252 = v251;
                  v253 = v342;
                  sub_100031B58(v252, v342, &unk_100938850, qword_100795AE0);
                  v254 = v341;
                  sub_100010364(v253, v341, &unk_100938850, qword_100795AE0);
                  v255 = type metadata accessor for Date();
                  v256 = *(v255 - 8);
                  v257 = 0;
                  if ((*(v256 + 48))(v254, 1, v255) != 1)
                  {
                    v258 = v341;
                    v257 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v256 + 8))(v258, v255);
                  }

                  [v377 setPublicLinkExpirationDate:v257];

                  v164 = &unk_100938850;
                  v165 = qword_100795AE0;
                  v166 = v342;
                  goto LABEL_62;
                }
              }

              else
              {
                if ((v153 != v323 || v324 != v67) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  if ((v153 != v321 || v320 != v67) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_129;
                  }

                  v67, v146, v147, v148, v149, v150, v151, v152;
                  v268 = v337;
                  sub_100010364(v370, v337, &unk_100939D90, "8\n\r");
                  if ((*(v368 + 48))(v268, 1, v369) == 1)
                  {
                    v269 = 0;
                  }

                  else
                  {
                    v270 = v337;
                    v269 = UUID._bridgeToObjectiveC()().super.isa;
                    (*(v368 + 8))(v270, v369);
                  }

                  [v377 setPublicLinkURLUUID:v269];

                  goto LABEL_63;
                }

                v67, v146, v147, v148, v149, v150, v151, v152;
                sub_100010364(v370, v336, &unk_100939D90, "8\n\r");
                v259 = swift_dynamicCast();
                v155 = *(v371 + 56);
                v371 += 56;
                p_clients = &v378;
                if (v259)
                {
                  v260 = v346;
                  v155(v346, 0, 1, v367);
                  v261 = v260;
                  v262 = v345;
                  sub_100031B58(v261, v345, &unk_100938850, qword_100795AE0);
                  v263 = v344;
                  sub_100010364(v262, v344, &unk_100938850, qword_100795AE0);
                  v264 = type metadata accessor for Date();
                  v265 = *(v264 - 8);
                  v266 = 0;
                  if ((*(v265 + 48))(v263, 1, v264) != 1)
                  {
                    v267 = v344;
                    v266 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v265 + 8))(v267, v264);
                  }

                  [v377 setPublicLinkLastModifiedDate:v266];

                  v164 = &unk_100938850;
                  v165 = qword_100795AE0;
                  v166 = v345;
                  goto LABEL_62;
                }
              }
            }

            v203 = *(p_clients - 32);
          }

          v155(v203, 1, 1, v367);
          v164 = &qword_100938BF0;
          v165 = &qword_100795768;
LABEL_61:
          v166 = v203;
LABEL_62:
          while (1)
          {
            sub_1000050A4(v166, v164, v165);
LABEL_63:
            v67 = [v377 createResolutionTokenMapIfNecessary];
            dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
            if (v204)
            {
              break;
            }

LABEL_127:
            v380 = 0;
            v381 = 0xE000000000000000;
            v153 = &v380;
            _StringGuts.grow(_:)(46);
            v271._object = 0x80000001007EC120;
            v271._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v271);
            v379 = v376;
            sub_1000F5104(&qword_100938C08, &unk_10079B270);
            while (1)
            {
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_129:
              if (v153 == 0x694C656372756F73 && v67 == 0xEF4C525544497473)
              {
                break;
              }

              v272 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v67, v273, v274, v275, v276, v277, v278, v279;
              if (v272)
              {
                goto LABEL_133;
              }

              if (qword_100936140 != -1)
              {
                swift_once();
              }

              v291 = type metadata accessor for Logger();
              sub_100006654(v291, qword_100946F50);
              v292 = v377;

              v67 = Logger.logObject.getter();
              v293 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(&v67->super, v293))
              {
                goto LABEL_143;
              }

              v294 = swift_slowAlloc();
              v379 = swift_slowAlloc();
              *v294 = 136446466;
              v295 = [v292 remObjectID];
              v380 = v295;
              sub_1000F5104(&unk_10093AF40, &unk_100795790);
              v296 = Optional.descriptionOrNil.getter();
              v298 = v297;

              v299 = sub_10000668C(v296, v298, &v379);
              v298, v300, v301, v302, v303, v304, v305, v306;
              *(v294 + 4) = v299;
              *(v294 + 12) = 2082;
              v307 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
              if (v308)
              {
                v309 = v308;
                v310 = sub_10000668C(v307, v308, &v379);
                v309, v311, v312, v313, v314, v315, v316, v317;
                *(v294 + 14) = v310;
                _os_log_impl(&_mh_execute_header, &v67->super, v293, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported propertyKeyPath {objectID: %{public}s, propertyKeyPath: %{public}s}}", v294, 0x16u);
                swift_arrayDestroy();

LABEL_143:

                goto LABEL_65;
              }

LABEL_144:
              v380 = 0;
              v381 = 0xE000000000000000;
              v153 = &v380;
              _StringGuts.grow(_:)(46);
              v318._object = 0x80000001007EC120;
              v318._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v318);
              v378 = v376;
              sub_1000F5104(&qword_100938C08, &unk_10079B270);
            }

            0xEF4C525544497473, 0xEF4C525544497473, v147, v148, v149, v150, v151, v152;
LABEL_133:
            sub_100010364(v370, v338, &unk_100939D90, "8\n\r");
            v280 = swift_dynamicCast();
            v281 = *(v347 + 56);
            v347 += 56;
            if ((v280 & 1) == 0)
            {
              v203 = v349;
              v281(v349, 1, 1, v348);
              v164 = &qword_100938BE8;
              v165 = &qword_100795758;
              goto LABEL_61;
            }

            v282 = v349;
            v281(v349, 0, 1, v348);
            v283 = v282;
            v284 = v351;
            sub_100031B58(v283, v351, &unk_1009441F0, &qword_100795760);
            v285 = v350;
            sub_100010364(v284, v350, &unk_1009441F0, &qword_100795760);
            v286 = type metadata accessor for URL();
            v287 = *(v286 - 8);
            v288 = 0;
            if ((*(v287 + 48))(v285, 1, v286) != 1)
            {
              v289 = v350;
              URL._bridgeToObjectiveC()(&v382);
              v288 = v290;
              (*(v287 + 8))(v289, v286);
            }

            [v377 setSourceListIDURL:v288];

            v164 = &unk_1009441F0;
            v165 = &qword_100795760;
            v166 = v351;
          }

          v205 = v204;
          v206 = String._bridgeToObjectiveC()();
          v205, v207, v208, v209, v210, v211, v212, v213;
          [(RDXPCStorePerformer *)v67 updateForKey:v206];
        }

LABEL_65:
        v141 = v373;
        goto LABEL_66;
      }

      sub_1000050A4(v116, &qword_100938C00, &unk_100795780);
      (*(v368 + 8))(v101, v369);
    }

    sub_1000050A4(v105, &unk_10093A3D0, &qword_100795770);
    sub_1000050A4(v112, &unk_100939D90, "8\n\r");
    v143 = &qword_100938C00;
    v144 = &unk_100795780;
    goto LABEL_39;
  }

  v121 = 0xEF4C525544497473;
  if (v128 == 0x694C656372756F73 && v129 == 0xEF4C525544497473)
  {
LABEL_23:
    v129, v121, v122, v123, v124, v125, v126, v127;
LABEL_24:
    v131 = v376;
    v130 = v377;

    sub_10043A8B0(v130, v131);
    return;
  }

  v167 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v129, v168, v169, v170, v171, v172, v173, v174;
  if (v167)
  {
    goto LABEL_24;
  }

  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v175 = type metadata accessor for Logger();
  sub_100006654(v175, qword_100946F50);
  v176 = v377;

  v377 = Logger.logObject.getter();
  v67 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v377, v67))
  {
    v177 = swift_slowAlloc();
    v379 = swift_slowAlloc();
    *v177 = 136446466;
    v178 = [v176 remObjectID];
    v380 = v178;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v179 = Optional.descriptionOrNil.getter();
    v181 = v180;

    v182 = sub_10000668C(v179, v181, &v379);
    v181, v183, v184, v185, v186, v187, v188, v189;
    *(v177 + 4) = v182;
    *(v177 + 12) = 2082;
    v190 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v191)
    {
      goto LABEL_144;
    }

    v192 = v191;
    v193 = sub_10000668C(v190, v191, &v379);
    v192, v194, v195, v196, v197, v198, v199, v200;
    *(v177 + 14) = v193;
    _os_log_impl(&_mh_execute_header, v377, v67, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported key path {objectID: %{public}s, propertyKeyPath: %{public}s}}", v177, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v227 = v377;
  }
}

void sub_100136640(void *a1, uint64_t a2)
{
  v370 = a2;
  v3 = sub_1000F5104(&qword_100938C00, &unk_100795780);
  __chkstk_darwin(v3 - 8, v4);
  v351 = &v319 - v5;
  v350 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v349 = *(v350 - 8);
  __chkstk_darwin(v350, v6);
  v352 = &v319 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v353 = &v319 - v10;
  v11 = sub_1000F5104(&qword_100938BF0, &qword_100795768);
  __chkstk_darwin(v11 - 8, v12);
  v348 = &v319 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v345 = &v319 - v16;
  __chkstk_darwin(v17, v18);
  v342 = &v319 - v19;
  __chkstk_darwin(v20, v21);
  v358 = &v319 - v22;
  __chkstk_darwin(v23, v24);
  v362 = &v319 - v25;
  __chkstk_darwin(v26, v27);
  v366 = &v319 - v28;
  v367 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v371.super.isa = *(v367 - 8);
  __chkstk_darwin(v367, v29);
  v346 = &v319 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v347 = &v319 - v33;
  __chkstk_darwin(v34, v35);
  v343 = &v319 - v36;
  __chkstk_darwin(v37, v38);
  v344 = &v319 - v39;
  __chkstk_darwin(v40, v41);
  v340 = &v319 - v42;
  __chkstk_darwin(v43, v44);
  v341 = &v319 - v45;
  __chkstk_darwin(v46, v47);
  v355 = &v319 - v48;
  __chkstk_darwin(v49, v50);
  v356 = &v319 - v51;
  __chkstk_darwin(v52, v53);
  v359 = &v319 - v54;
  __chkstk_darwin(v55, v56);
  v361 = &v319 - v57;
  __chkstk_darwin(v58, v59);
  v363 = &v319 - v60;
  __chkstk_darwin(v61, v62);
  v365 = &v319 - v63;
  v64 = type metadata accessor for URL();
  v368 = *(v64 - 8);
  v369 = v64;
  __chkstk_darwin(v64, v65);
  v67 = (&v319 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v371._reserved = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v371._urlString = *(v371._reserved - 1);
  __chkstk_darwin(v371._reserved, v68);
  v70 = &v319 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71, v72);
  v339 = &v319 - v73;
  __chkstk_darwin(v74, v75);
  v338 = &v319 - v76;
  __chkstk_darwin(v77, v78);
  v337 = &v319 - v79;
  __chkstk_darwin(v80, v81);
  v336 = &v319 - v82;
  __chkstk_darwin(v83, v84);
  v335 = &v319 - v85;
  __chkstk_darwin(v86, v87);
  v354 = &v319 - v88;
  __chkstk_darwin(v89, v90);
  v357 = &v319 - v91;
  __chkstk_darwin(v92, v93);
  v360 = &v319 - v94;
  __chkstk_darwin(v95, v96);
  v364 = &v319 - v97;
  __chkstk_darwin(v98, v99);
  v101 = &v319 - v100;
  v102 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  __chkstk_darwin(v102, v103);
  v105 = &v319 - v104;
  v106 = sub_1000F5104(&qword_100938C28, &qword_1007957B8);
  __chkstk_darwin(v106, v107);
  v371._clients = &v319 - v108;
  v109 = sub_1000F5104(&qword_100938BE8, &qword_100795758);
  __chkstk_darwin(v109 - 8, v110);
  v112 = &v319 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v113, v114);
  v116 = (&v319 - v115);
  __chkstk_darwin(v117, v118);
  v371._baseURL = (&v319 - v119);
  v372 = a1;
  v120 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v121)
  {
    goto LABEL_120;
  }

  v128 = v120;
  v129 = v121;
  if (v120 == 0x6E6F697461657263 && v121 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v128 == 0xD000000000000010 && 0x80000001007E8D70 == v129 || (v334 = 0x80000001007E8D70, v333 = 0xD000000000000010, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v128 == 0xD000000000000025 && 0x80000001007955E0 == v129 || (v332 = 0x80000001007955E0, v331 = 0xD000000000000025, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v128 == 0xD00000000000001BLL && 0x80000001007E8DC0 == v129 || (v330 = 0x80000001007E8DC0, v329 = 0xD00000000000001BLL, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v128 == 0xD000000000000016 && 0x8000000100795660 == v129 || (v328 = 0x8000000100795660, v327 = 0xD000000000000016, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v128 == 0xD000000000000018 && 0x80000001007956F0 == v129 || (v326 = 0x80000001007956F0, v325 = 0xD000000000000018, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v128 == 0xD00000000000001ALL && 0x80000001007956A0 == v129 || (v324 = 0x80000001007956A0, v323 = 0xD00000000000001ALL, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v322 = 0xD000000000000011, v128 == 0xD000000000000011) && 0x80000001007955B0 == v129 || (v321 = 0x80000001007955B0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v129, v121, v122, v123, v124, v125, v126, v127;
    v131 = v372;
    v130 = v373[0];

    sub_10043A8B0(v130, v131);
    return;
  }

  if (v128 == 0x694C656372756F73 && v129 == 0xEF4C525544497473)
  {
    0xEF4C525544497473, v121, v122, v123, v124, v125, v126, v127;
    goto LABEL_33;
  }

  v132 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v129, v133, v134, v135, v136, v137, v138, v139;
  if (v132)
  {
LABEL_33:
    v140 = [v373[0] sourceListIDURL];
    if (v140)
    {
      v141 = v140;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v368 + 56))(v70, 0, 1, v369);
    }

    else
    {
      (*(v368 + 56))(v70, 1, 1, v369);
    }

    baseURL = v371._baseURL;
    sub_100031B58(v70, v371._baseURL, &unk_1009441F0, &qword_100795760);
    v143 = *(v371._urlString + 7);
    v144 = baseURL;
    reserved = v371._reserved;
    v143(v144, 0, 1, v371._reserved);
    sub_100010364(v370, v116, &unk_1009441F0, &qword_100795760);
    v143(v116, 0, 1, reserved);
    v146 = *(v106 + 48);
    clients = v371._clients;
    sub_100010364(v371._baseURL, v371._clients, &qword_100938BE8, &qword_100795758);
    v320 = v146;
    sub_100010364(v116, &clients[v146], &qword_100938BE8, &qword_100795758);
    v148 = *(v371._urlString + 6);
    if (v148(clients, 1, v371._reserved) == 1)
    {
      sub_1000050A4(v116, &qword_100938BE8, &qword_100795758);
      if (v148(v371._clients + v320, 1, v371._reserved) == 1)
      {
        sub_1000050A4(v371._baseURL, &qword_100938BE8, &qword_100795758);
        v149 = v371._clients;
LABEL_66:
        sub_1000050A4(v149, &qword_100938BE8, &qword_100795758);
        return;
      }

      goto LABEL_41;
    }

    v150 = v371._clients;
    sub_100010364(v371._clients, v112, &qword_100938BE8, &qword_100795758);
    if (v148(&v150[v320], 1, v371._reserved) == 1)
    {
      sub_1000050A4(v116, &qword_100938BE8, &qword_100795758);
      sub_1000050A4(v112, &unk_1009441F0, &qword_100795760);
LABEL_41:
      v151 = &qword_100938C28;
      v152 = &qword_1007957B8;
LABEL_42:
      sub_1000050A4(v371._clients, v151, v152);
      goto LABEL_43;
    }

    v201 = *(v102 + 48);
    sub_100010364(v112, v105, &unk_1009441F0, &qword_100795760);
    sub_100031B58(v371._clients + v320, &v105[v201], &unk_1009441F0, &qword_100795760);
    v202 = *(v368 + 48);
    if (v202(v105, 1, v369) == 1)
    {
      sub_1000050A4(v116, &qword_100938BE8, &qword_100795758);
      if (v202(&v105[v201], 1, v369) == 1)
      {
        sub_1000050A4(v105, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v112, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v371._clients, &qword_100938BE8, &qword_100795758);
        goto LABEL_65;
      }
    }

    else
    {
      sub_100010364(v105, v101, &unk_1009441F0, &qword_100795760);
      if (v202(&v105[v201], 1, v369) != 1)
      {
        v224 = v368;
        v225 = v369;
        (*(v368 + 32))(v67, &v105[v201], v369);
        sub_100029F48(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v226 = dispatch thunk of static Equatable.== infix(_:_:)();
        v227 = *(v224 + 8);
        v227(v67, v225);
        v67 = &qword_100938BE8;
        sub_1000050A4(v116, &qword_100938BE8, &qword_100795758);
        v227(v101, v225);
        sub_1000050A4(v105, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v112, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v371._clients, &qword_100938BE8, &qword_100795758);
        if ((v226 & 1) == 0)
        {
LABEL_43:
          v153 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v154)
          {
            goto LABEL_120;
          }

          v161 = v153;
          v67 = v154;
          if (v153 == 0x6E6F697461657263 && v154 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v67, v154, v155, v156, v157, v158, v159, v160;
            sub_100010364(v370, v364, &unk_1009441F0, &qword_100795760);
            v162 = swift_dynamicCast();
            v163 = *(v371.super.isa + 7);
            v371.super.isa = (v371.super.isa + 56);
            if (v162)
            {
              v164 = v366;
              v163(v366, 0, 1, v367);
              v165 = v164;
              v166 = v365;
              sub_100031B58(v165, v365, &unk_100938850, qword_100795AE0);
              v167 = v363;
              sub_100010364(v166, v363, &unk_100938850, qword_100795AE0);
              v168 = type metadata accessor for Date();
              v169 = *(v168 - 8);
              isa = 0;
              if ((*(v169 + 48))(v167, 1, v168) != 1)
              {
                v171 = v363;
                isa = Date._bridgeToObjectiveC()().super.isa;
                (*(v169 + 8))(v171, v168);
              }

              [v373[0] setCreationDate:isa];

              v172 = &unk_100938850;
              v173 = qword_100795AE0;
              v174 = v365;
LABEL_62:
              sub_1000050A4(v174, v172, v173);
LABEL_63:
              while (1)
              {
                v67 = [v373[0] createResolutionTokenMapIfNecessary];
                dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
                if (v204)
                {
                  break;
                }

LABEL_120:
                v375 = 0;
                v376 = 0xE000000000000000;
                v161 = &v375;
                _StringGuts.grow(_:)(46);
                v268._object = 0x80000001007EC120;
                v268._countAndFlagsBits = 0xD00000000000002CLL;
                String.append(_:)(v268);
                v374 = v372;
                sub_1000F5104(&qword_100938C08, &unk_10079B270);
                while (1)
                {
                  _print_unlocked<A, B>(_:_:)();
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_122:
                  if (v161 == v322 && v321 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v67, v154, v155, v156, v157, v158, v159, v160;
                    sub_100010364(v370, v338, &unk_1009441F0, &qword_100795760);
                    v269 = swift_dynamicCast();
                    v270 = *(v349 + 56);
                    v349 += 56;
                    if ((v269 & 1) == 0)
                    {
                      v203 = v351;
                      v270(v351, 1, 1, v350);
                      v172 = &qword_100938C00;
                      v173 = &unk_100795780;
                      goto LABEL_61;
                    }

                    v271 = v351;
                    v270(v351, 0, 1, v350);
                    v272 = v271;
                    v273 = v353;
                    sub_100031B58(v272, v353, &unk_100939D90, "8\n\r");
                    v274 = v352;
                    sub_100010364(v273, v352, &unk_100939D90, "8\n\r");
                    v275 = type metadata accessor for UUID();
                    v276 = *(v275 - 8);
                    v277 = 0;
                    if ((*(v276 + 48))(v274, 1, v275) != 1)
                    {
                      v278 = v352;
                      v277 = UUID._bridgeToObjectiveC()().super.isa;
                      (*(v276 + 8))(v278, v275);
                    }

                    [v373[0] setPublicLinkURLUUID:v277];

                    v172 = &unk_100939D90;
                    v173 = "8\n\r";
                    v174 = v353;
                    goto LABEL_62;
                  }

                  if (v161 == 0x694C656372756F73 && v67 == 0xEF4C525544497473)
                  {
                    break;
                  }

                  v279 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v67, v280, v281, v282, v283, v284, v285, v286;
                  if (v279)
                  {
                    goto LABEL_134;
                  }

                  if (qword_100936140 != -1)
                  {
                    swift_once();
                  }

                  v291 = type metadata accessor for Logger();
                  sub_100006654(v291, qword_100946F50);
                  v292 = v373[0];

                  v67 = Logger.logObject.getter();
                  v293 = static os_log_type_t.fault.getter();

                  if (!os_log_type_enabled(&v67->super, v293))
                  {
                    goto LABEL_143;
                  }

                  v294 = swift_slowAlloc();
                  v374 = swift_slowAlloc();
                  *v294 = 136446466;
                  v295 = [v292 remObjectID];
                  v375 = v295;
                  sub_1000F5104(&unk_10093AF40, &unk_100795790);
                  v296 = Optional.descriptionOrNil.getter();
                  v298 = v297;

                  v299 = sub_10000668C(v296, v298, &v374);
                  v298, v300, v301, v302, v303, v304, v305, v306;
                  *(v294 + 4) = v299;
                  *(v294 + 12) = 2082;
                  v307 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
                  if (v308)
                  {
                    v309 = v308;
                    v310 = sub_10000668C(v307, v308, &v374);
                    v309, v311, v312, v313, v314, v315, v316, v317;
                    *(v294 + 14) = v310;
                    _os_log_impl(&_mh_execute_header, &v67->super, v293, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported propertyKeyPath {objectID: %{public}s, propertyKeyPath: %{public}s}}", v294, 0x16u);
                    swift_arrayDestroy();

LABEL_143:

                    goto LABEL_65;
                  }

LABEL_144:
                  v375 = 0;
                  v376 = 0xE000000000000000;
                  v161 = &v375;
                  _StringGuts.grow(_:)(46);
                  v318._object = 0x80000001007EC120;
                  v318._countAndFlagsBits = 0xD00000000000002CLL;
                  String.append(_:)(v318);
                  v373[1] = v372;
                  sub_1000F5104(&qword_100938C08, &unk_10079B270);
                }

                0xEF4C525544497473, v154, v155, v156, v157, v158, v159, v160;
LABEL_134:
                v287 = v339;
                sub_100010364(v370, v339, &unk_1009441F0, &qword_100795760);
                if ((*(v368 + 48))(v287, 1, v369) == 1)
                {
                  v288 = 0;
                }

                else
                {
                  v289 = v339;
                  URL._bridgeToObjectiveC()(&v371);
                  v288 = v290;
                  (*(v368 + 8))(v289, v369);
                }

                [v373[0] setSourceListIDURL:v288];
              }

              v205 = v204;
              v206 = String._bridgeToObjectiveC()();
              v205, v207, v208, v209, v210, v211, v212, v213;
              [(RDXPCStorePerformer *)v67 updateForKey:v206];

              goto LABEL_65;
            }

            v203 = v366;
          }

          else if (v161 == v333 && v334 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v67, v154, v155, v156, v157, v158, v159, v160;
            sub_100010364(v370, v360, &unk_1009441F0, &qword_100795760);
            v215 = swift_dynamicCast();
            v163 = *(v371.super.isa + 7);
            v371.super.isa = (v371.super.isa + 56);
            if (v215)
            {
              v216 = v362;
              v163(v362, 0, 1, v367);
              v217 = v216;
              v218 = v361;
              sub_100031B58(v217, v361, &unk_100938850, qword_100795AE0);
              v219 = v359;
              sub_100010364(v218, v359, &unk_100938850, qword_100795AE0);
              v220 = type metadata accessor for Date();
              v221 = *(v220 - 8);
              v222 = 0;
              if ((*(v221 + 48))(v219, 1, v220) != 1)
              {
                v223 = v359;
                v222 = Date._bridgeToObjectiveC()().super.isa;
                (*(v221 + 8))(v223, v220);
              }

              [v373[0] setLastModifiedDate:v222];

              v172 = &unk_100938850;
              v173 = qword_100795AE0;
              v174 = v361;
              goto LABEL_62;
            }

            v203 = v362;
          }

          else
          {
            if (v161 == v331 && v332 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v67, v154, v155, v156, v157, v158, v159, v160;
              sub_100010364(v370, v357, &unk_1009441F0, &qword_100795760);
              v228 = swift_dynamicCast();
              v163 = *(v371.super.isa + 7);
              v371.super.isa = (v371.super.isa + 56);
              p_clients = &v377;
              if (v228)
              {
                v230 = v358;
                v163(v358, 0, 1, v367);
                v231 = v230;
                v232 = v356;
                sub_100031B58(v231, v356, &unk_100938850, qword_100795AE0);
                v233 = v355;
                sub_100010364(v232, v355, &unk_100938850, qword_100795AE0);
                v234 = type metadata accessor for Date();
                v235 = *(v234 - 8);
                v236 = 0;
                if ((*(v235 + 48))(v233, 1, v234) != 1)
                {
                  v237 = v355;
                  v236 = Date._bridgeToObjectiveC()().super.isa;
                  (*(v235 + 8))(v237, v234);
                }

                [v373[0] setMostRecentPublicLinkUpdateRequestDate:v236];

                v172 = &unk_100938850;
                v173 = qword_100795AE0;
                v174 = v356;
                goto LABEL_62;
              }
            }

            else
            {
              if (v161 == v329 && v330 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v67, v154, v155, v156, v157, v158, v159, v160;
                sub_100010364(v370, v354, &unk_1009441F0, &qword_100795760);
                sub_1000F5104(&qword_100938C10, &unk_100795F30);
                if (swift_dynamicCast())
                {
                  v238 = v375;
                  v239 = v376;
                  if (v376 >> 60 == 15)
                  {
                    v240 = 0;
                  }

                  else
                  {
                    sub_100029344(v375, v376);
                    v240 = Data._bridgeToObjectiveC()().super.isa;
                    sub_100031A14(v238, v239);
                  }

                  [v373[0] setPublicLinkConfigurationData:v240];

                  sub_100031A14(v238, v239);
                }

                goto LABEL_63;
              }

              if (v161 == v327 && v328 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v67, v154, v155, v156, v157, v158, v159, v160;
                sub_100010364(v370, v335, &unk_1009441F0, &qword_100795760);
                v241 = swift_dynamicCast();
                v163 = *(v371.super.isa + 7);
                v371.super.isa = (v371.super.isa + 56);
                p_clients = &v371._clients;
                if (v241)
                {
                  v242 = v342;
                  v163(v342, 0, 1, v367);
                  v243 = v242;
                  v244 = v341;
                  sub_100031B58(v243, v341, &unk_100938850, qword_100795AE0);
                  v245 = v340;
                  sub_100010364(v244, v340, &unk_100938850, qword_100795AE0);
                  v246 = type metadata accessor for Date();
                  v247 = *(v246 - 8);
                  v248 = 0;
                  if ((*(v247 + 48))(v245, 1, v246) != 1)
                  {
                    v249 = v340;
                    v248 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v247 + 8))(v249, v246);
                  }

                  [v373[0] setPublicLinkCreationDate:v248];

                  v172 = &unk_100938850;
                  v173 = qword_100795AE0;
                  v174 = v341;
                  goto LABEL_62;
                }
              }

              else if (v161 == v325 && v326 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v67, v154, v155, v156, v157, v158, v159, v160;
                sub_100010364(v370, v336, &unk_1009441F0, &qword_100795760);
                v250 = swift_dynamicCast();
                v163 = *(v371.super.isa + 7);
                v371.super.isa = (v371.super.isa + 56);
                p_clients = v373;
                if (v250)
                {
                  v251 = v345;
                  v163(v345, 0, 1, v367);
                  v252 = v251;
                  v253 = v344;
                  sub_100031B58(v252, v344, &unk_100938850, qword_100795AE0);
                  v254 = v343;
                  sub_100010364(v253, v343, &unk_100938850, qword_100795AE0);
                  v255 = type metadata accessor for Date();
                  v256 = *(v255 - 8);
                  v257 = 0;
                  if ((*(v256 + 48))(v254, 1, v255) != 1)
                  {
                    v258 = v343;
                    v257 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v256 + 8))(v258, v255);
                  }

                  [v373[0] setPublicLinkExpirationDate:v257];

                  v172 = &unk_100938850;
                  v173 = qword_100795AE0;
                  v174 = v344;
                  goto LABEL_62;
                }
              }

              else
              {
                if ((v161 != v323 || v324 != v67) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_122;
                }

                v67, v154, v155, v156, v157, v158, v159, v160;
                sub_100010364(v370, v337, &unk_1009441F0, &qword_100795760);
                v259 = swift_dynamicCast();
                v163 = *(v371.super.isa + 7);
                v371.super.isa = (v371.super.isa + 56);
                p_clients = &v375;
                if (v259)
                {
                  v260 = v348;
                  v163(v348, 0, 1, v367);
                  v261 = v260;
                  v262 = v347;
                  sub_100031B58(v261, v347, &unk_100938850, qword_100795AE0);
                  v263 = v346;
                  sub_100010364(v262, v346, &unk_100938850, qword_100795AE0);
                  v264 = type metadata accessor for Date();
                  v265 = *(v264 - 8);
                  v266 = 0;
                  if ((*(v265 + 48))(v263, 1, v264) != 1)
                  {
                    v267 = v346;
                    v266 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v265 + 8))(v267, v264);
                  }

                  [v373[0] setPublicLinkLastModifiedDate:v266];

                  v172 = &unk_100938850;
                  v173 = qword_100795AE0;
                  v174 = v347;
                  goto LABEL_62;
                }
              }
            }

            v203 = *(p_clients - 32);
          }

          v163(v203, 1, 1, v367);
          v172 = &qword_100938BF0;
          v173 = &qword_100795768;
LABEL_61:
          v174 = v203;
          goto LABEL_62;
        }

LABEL_65:
        v149 = v371._baseURL;
        goto LABEL_66;
      }

      sub_1000050A4(v116, &qword_100938BE8, &qword_100795758);
      (*(v368 + 8))(v101, v369);
    }

    sub_1000050A4(v105, &unk_100944250, &qword_1007957B0);
    sub_1000050A4(v112, &unk_1009441F0, &qword_100795760);
    v151 = &qword_100938BE8;
    v152 = &qword_100795758;
    goto LABEL_42;
  }

  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v175 = type metadata accessor for Logger();
  sub_100006654(v175, qword_100946F50);
  v176 = v373[0];

  v373[0] = Logger.logObject.getter();
  v67 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v373[0], v67))
  {
    v177 = swift_slowAlloc();
    v374 = swift_slowAlloc();
    *v177 = 136446466;
    v178 = [v176 remObjectID];
    v375 = v178;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v179 = Optional.descriptionOrNil.getter();
    v181 = v180;

    v182 = sub_10000668C(v179, v181, &v374);
    v181, v183, v184, v185, v186, v187, v188, v189;
    *(v177 + 4) = v182;
    *(v177 + 12) = 2082;
    v190 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v191)
    {
      goto LABEL_144;
    }

    v192 = v191;
    v193 = sub_10000668C(v190, v191, &v374);
    v192, v194, v195, v196, v197, v198, v199, v200;
    *(v177 + 14) = v193;
    _os_log_impl(&_mh_execute_header, v373[0], v67, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported key path {objectID: %{public}s, propertyKeyPath: %{public}s}}", v177, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v214 = v373[0];
  }
}

uint64_t sub_100138BAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  v10 = sub_1000103CC(&v13);
  (*(*(a5 - 8) + 32))(v10, a2, a5);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_100054B6C(&v13, v11 + 24);
  *(v11 + 64) = a3;
  return v11;
}

void sub_100138C5C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1001308D4(a1, a2 & 1, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100138D40(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_100138D4C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

void sub_100138D58()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1001312B4(v5, v6, v0 + v2, v7, v8, v9, v10);
}

void sub_100138E04(void *a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = v25 - v7;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v25 - v11;
  v13 = sub_10034AE0C(a1, a2, 0, 0);
  if (!v2)
  {
    v14 = v13;
    v25[1] = 0;
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 56);
    v16(v12, 1, 1, v15);
    KeyPath = swift_getKeyPath();
    sub_10013206C(KeyPath, v12);

    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_getKeyPath();
    sub_10013411C(v19, v8);

    sub_1000050A4(v8, &unk_100939D90, "8\n\r");
    [v14 setPublicLinkConfigurationData:0];
    v20 = [v14 createResolutionTokenMapIfNecessary];
    v21 = String._bridgeToObjectiveC()();
    [v20 updateForKey:v21];

    v16(v12, 1, 1, v15);
    v22 = swift_getKeyPath();
    sub_10013206C(v22, v12);

    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    v16(v12, 1, 1, v15);
    v23 = swift_getKeyPath();
    sub_10013206C(v23, v12);

    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    v16(v12, 1, 1, v15);
    v24 = swift_getKeyPath();
    sub_10013206C(v24, v12);

    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    [v14 updateChangeCount];
  }
}

uint64_t sub_1001391AC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938C30);
  v1 = sub_100006654(v0, qword_100938C30);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100139274@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 listTypeRawValue];
  *a2 = result;
  return result;
}

void sub_1001392F8(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_100139368(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_1001393D8()
{
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  qword_100974C08 = result;
  return result;
}

id sub_10013942C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 lastAccessedSinceReferenceDate];
  *a2 = result;
  return result;
}

void sub_1001394A0(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, void *a5)
{
  v154 = a2;
  v150 = a1;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v148 = &v143 - v11;
  v12 = type metadata accessor for UUID();
  v146 = *(v12 - 8);
  v147 = v12;
  __chkstk_darwin(v12, v13);
  v145 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v149 = a4;
  v15 = [a5 persistentStoreOfAccountWithAccountID:?];
  if (v15)
  {
    v16 = v15;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1007953F0;
    *(v17 + 32) = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1000398EC(v150, v154, a3, a4);
  v19 = sub_1005363D0(v17, v18);
  v17, v20, v21, v22, v23, v24, v25, v26;

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100791300;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 32) = 0x696669746E656469;
  *(v27 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v27, v29, v30, v31, v32, v33, v34, v35;
  [v19 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v36 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {

    a3, v44, v45, v46, v47, v48, v49, v50;
    return;
  }

  v51 = v36;
  v144 = v19;
  v52 = v36 >> 62;
  if (v36 >> 62)
  {
    v53 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v53 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = a3;
  if (v53 < 2)
  {
    goto LABEL_13;
  }

  if (qword_100935AA0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_100938C30);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v51, v58, v59, v60, v61, v62, v63, v64;
    v54, v65, v66, v67, v68, v69, v70, v71;
    if (os_log_type_enabled(v56, v57))
    {
      v72 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *&v153[0] = v143;
      *v72 = 136315650;
      v73 = REMManualOrderingListType.description.getter();
      LODWORD(v150) = v57;
      v75 = v74;
      v76 = sub_10000668C(v73, v74, v153);
      v75, v77, v78, v79, v80, v81, v82, v83;
      *(v72 + 4) = v76;
      v54 = a3;
      *(v72 + 12) = 2080;
      *(v72 + 14) = sub_10000668C(v154, a3, v153);
      *(v72 + 22) = 2080;
      *&v151 = v53;
      sub_10013A058();
      v84 = BinaryInteger.description.getter();
      v86 = v85;
      v87 = sub_10000668C(v84, v85, v153);
      v86, v88, v89, v90, v91, v92, v93, v94;
      *(v72 + 24) = v87;
      _os_log_impl(&_mh_execute_header, v56, v150, "fetching manual sort hint object ID returned more than one result {listType: %s listID: %s, count: %s}", v72, 0x20u);
      swift_arrayDestroy();
    }

LABEL_13:
    if (v52)
    {
      v95 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v95 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v148;
    if (!v95)
    {
      v51, v37, v38, v39, v40, v41, v42, v43;

      v54, v106, v107, v108, v109, v110, v111, v112;
      return;
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v96 = *(v51 + 32);
      goto LABEL_20;
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
  v104 = v96;
  v51, v97, v98, v99, v100, v101, v102, v103;
  *&v151 = 0x696669746E656469;
  *(&v151 + 1) = 0xEA00000000007265;
  v105 = [v104 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v105)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v151 = 0u;
    v152 = 0u;
  }

  v114 = v146;
  v113 = v147;
  v153[0] = v151;
  v153[1] = v152;
  if (!*(&v152 + 1))
  {

    v54, v123, v124, v125, v126, v127, v128, v129;
    sub_1000050A4(v153, &qword_100939ED0, &qword_100791B10);
    (*(v114 + 56))(v53, 1, 1, v113);
    goto LABEL_28;
  }

  v115 = swift_dynamicCast();
  (*(v114 + 56))(v53, v115 ^ 1u, 1, v113);
  if ((*(v114 + 48))(v53, 1, v113) == 1)
  {

    v54, v116, v117, v118, v119, v120, v121, v122;
LABEL_28:
    sub_1000050A4(v53, &unk_100939D90, "8\n\r");
    return;
  }

  v130 = v54;
  v131 = v145;
  (*(v114 + 32))(v145, v53, v113);
  v132 = v114;
  v133 = objc_opt_self();
  v134 = v113;
  v135 = UUID._bridgeToObjectiveC()().super.isa;
  [v133 objectIDWithUUID:v135];

  v130, v136, v137, v138, v139, v140, v141, v142;
  (*(v132 + 8))(v131, v134);
}

void *sub_100139BE4(void *a1, void *a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for REMManualOrdering.ManualOrderingID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&qword_100938C50, qword_1007957D8);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v34 - v16;
  v18 = a1;
  REMManualOrdering.Predefined.init(smartListType:)();
  v19 = type metadata accessor for REMManualOrdering.Predefined();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_1000050A4(v17, &qword_100938C50, qword_1007957D8);
    return 0;
  }

  else
  {
    REMManualOrdering.Predefined.manualOrderingID.getter();
    (*(v20 + 8))(v17, v19);
    v22 = REMManualOrdering.ManualOrderingID.objectID.getter();
    (*(v10 + 8))(v13, v9);
    v23 = type metadata accessor for RDPredefinedObjectKey();
    v24 = objc_allocWithZone(v23);
    v25 = v35;
    *&v24[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v35;
    *&v24[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v22;
    v37.receiver = v24;
    v37.super_class = v23;
    v26 = v22;
    v27 = v25;
    v28 = objc_msgSendSuper2(&v37, "init");
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    (*(v5 + 104))(v8, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v4);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;

    v31 = v28;
    dispatch thunk of REMCache.performReadOnly(_:operations:)();

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    v21 = *(v29 + 16);
    v32 = v21;
  }

  return v21;
}

double sub_100139FA0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a1 >> 62) > 1)
  {
    if (a1 >> 62 == 2)
    {
    }
  }

  else
  {

    v4 = a4;
  }

  return result;
}

unint64_t sub_10013A058()
{
  result = qword_100938C58;
  if (!qword_100938C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938C58);
  }

  return result;
}

Class sub_10013A0AC(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v5 = v4;
  v155 = a4;
  v8 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v154 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v153 = &v150 - v10;
  v11 = type metadata accessor for REMManualOrdering.ManualOrderingID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMManualOrdering.Predefined.manualOrderingID.getter();
  v16 = sub_10003A1B8();
  if (!v16)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  v17 = v16;
  v152 = a3;
  v157 = v11;
  v18 = type metadata accessor for REMCDManualSortHint();
  v158 = REMManualOrdering.ManualOrderingID.listType.getter();
  v19 = v158;
  v21 = REMManualOrdering.ManualOrderingID.listID.getter();
  v156 = v12;
  v159 = v17;
  v160 = v18;
  v151 = v8;
  v161 = v20;
  if (v19 != 1 || (v22 = v20, , v23._countAndFlagsBits = v21, v23._object = v22, (v24 = REMSmartListType.init(stringValue:)(v23)) == 0))
  {
LABEL_14:
    v41 = v17;
    v42 = [a2 persistentStoreOfAccountWithAccountID:v41];
    if (v42)
    {
      v43 = v42;
      v44 = v5;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1007953F0;
      *(v45 + 32) = v43;
    }

    else
    {
      v44 = v5;
      v45 = 0;
    }

    v46 = sub_1000398EC(v158, v21, v161, v159);
    v47 = [objc_allocWithZone(NSFetchRequest) init];
    v48 = [swift_getObjCClassFromMetadata() entity];
    [v47 setEntity:v48];

    if (v45)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v49.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v49.super.isa = 0;
    }

    [v47 setAffectedStores:v49.super.isa];

    [v47 setPredicate:v46];
    v45, v50, v51, v52, v53, v54, v55, v56;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1007953F0;
    if (qword_100935AA8 != -1)
    {
      swift_once();
    }

    v58 = qword_100974C08;
    *(v57 + 32) = qword_100974C08;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v59 = v58;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v57, v60, v61, v62, v63, v64, v65, v66;
    [v47 setSortDescriptors:isa];

    v67 = NSManagedObjectContext.fetch<A>(_:)();
    if (v44)
    {
      (*(v156 + 8))(v15, v157);

      v161, v68, v69, v70, v71, v72, v73, v74;
      return isa;
    }

    if (v67 >> 62)
    {
      v133 = v67;
      v134 = _CocoaArrayWrapper.endIndex.getter();
      v67 = v133;
      if (v134)
      {
        goto LABEL_26;
      }
    }

    else if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      if ((v67 & 0xC000000000000001) != 0)
      {
        v75 = v67;
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v75 = v67;
        v76 = *(v67 + 32);
      }

      isa = v76;
      v84 = v158;
      v75, v77, v78, v79, v80, v81, v82, v83;
      if (v84 == 1 && (v160 = 0, (v85 = [(objc_class *)isa remObjectID]) != 0))
      {
        v86 = v85;
        v87 = [(objc_class *)isa objectID];
        v88 = type metadata accessor for RDPredefinedObjectKey();
        v89 = objc_allocWithZone(v88);
        *&v89[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v41;
        *&v89[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v86;
        v163.receiver = v89;
        v163.super_class = v88;
        v158 = v41;
        v150 = v86;
        v90 = objc_msgSendSuper2(&v163, "init");
        v91 = v153;
        v92 = v154;
        (*(v154 + 104))(v153, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v151);
        v93 = swift_allocObject();
        *(v93 + 16) = v87;
        *(v93 + 24) = v90;
        v94 = v87;
        v95 = v90;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        v161, v96, v97, v98, v99, v100, v101, v102;

        (*(v92 + 8))(v91, v151);
      }

      else
      {

        v161, v103, v104, v105, v106, v107, v108, v109;
      }

      goto LABEL_33;
    }

    v135 = v67;
    (*(v156 + 8))(v15, v157);
    v135, v136, v137, v138, v139, v140, v141, v142;

    v161, v143, v144, v145, v146, v147, v148, v149;
    return 0;
  }

  v25 = v24;
  v26 = sub_100139BE4(v24, v17, v155);
  if (!v26)
  {

    goto LABEL_14;
  }

  v27 = v26;
  v162 = 0;
  v28 = [a2 existingObjectWithID:v26 error:&v162];
  if (!v28)
  {
    v40 = v162;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v5 = 0;
LABEL_13:
    v17 = v159;
    goto LABEL_14;
  }

  v29 = v28;
  v30 = v162;

  v31 = swift_dynamicCastClass();
  if (!v31)
  {

    goto LABEL_13;
  }

  isa = v31;
  v161, v32, v33, v34, v35, v36, v37, v38;
LABEL_33:
  v110 = v159;
  if (v152)
  {
    v111 = [objc_opt_self() sharedConfiguration];
    v112 = [v111 manualSortHintLastAccessedUpdatePolicy];

    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v116._countAndFlagsBits = v113;
    v116._object = v115;
    v117 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v116);
    v115, v118, v119, v120, v121, v122, v123, v124;
    if (v117 >= 3)
    {
      LOBYTE(v117) = 2;
    }

    v125 = [(objc_class *)isa remObjectID];
    if (v125)
    {
      v126 = v125;
      v127 = [v125 description];

      v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v130 = v129;
    }

    else
    {
      v130 = 0xE300000000000000;
      v128 = 7104878;
    }

    v131 = swift_allocObject();
    *(v131 + 16) = v128;
    *(v131 + 24) = v130;
    sub_1002D74D4(1, v117, sub_10013AF94, v131);
  }

  else
  {
  }

  (*(v156 + 8))(v15, v157);
  return isa;
}

void sub_10013A994(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v91 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v77 - v18;
  v20 = sub_1000398EC(a1, a2, a3, a4);
  type metadata accessor for REMCDManualSortHint();
  v21 = [objc_allocWithZone(NSFetchRequest) init];
  v22 = [swift_getObjCClassFromMetadata() entity];
  [v21 setEntity:v22];

  [v21 setAffectedStores:0];
  [v21 setPredicate:v20];

  v23 = v92;
  v24 = NSManagedObjectContext.fetch<A>(_:)();
  v81 = v23;
  if (v23)
  {

    return;
  }

  v26 = v24;
  v27 = v91;
  v88 = v19;
  v89 = v15;
  v90 = v11;
  if (!(v24 >> 62))
  {
    v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_29:

LABEL_30:
    v26, v70, v71, v72, v73, v74, v75, v76;
    return;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_29;
  }

LABEL_5:
  v78 = v21;
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = v26 & 0xC000000000000001;
    v84 = (v27 + 48);
    v85 = (v27 + 56);
    v79 = (v27 + 8);
    v80 = (v27 + 16);
    v31 = &selRef_hack_willSaveHandled;
    *&v25 = 33555202;
    v83 = v25;
    v86 = v26 & 0xC000000000000001;
    v87 = v26;
    v82 = v28;
    do
    {
      if (v30)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v26 + 8 * v29 + 32);
      }

      v33 = v32;
      if (([v32 v31[324]] & 1) == 0)
      {
        if (qword_100935AA0 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_100006654(v34, qword_100938C30);
        v35 = v33;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          LODWORD(v92) = v37;
          v38 = v8;
          v39 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v93 = v91;
          *v39 = v83;
          *(v39 + 4) = [v35 listTypeRawValue];

          *(v39 + 6) = 2082;
          v40 = [v35 listID];
          if (v40)
          {
            v41 = v40;
            v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = v43;
          }

          else
          {
            v44 = 0xE300000000000000;
            v42 = 7104878;
          }

          v8 = v38;
          v45 = sub_10000668C(v42, v44, &v93);
          v44, v46, v47, v48, v49, v50, v51, v52;
          *(v39 + 8) = v45;
          *(v39 + 16) = 2082;
          v53 = [v35 identifier];
          v54 = v90;
          if (v53)
          {
            v55 = v89;
            v56 = v53;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v57 = 0;
          }

          else
          {
            v57 = 1;
            v55 = v89;
          }

          (*v85)(v55, v57, 1, v8);
          v58 = v88;
          sub_100100FB4(v55, v88);
          if ((*v84)(v58, 1, v8))
          {
            sub_1000050A4(v58, &unk_100939D90, "8\n\r");
            v59 = 0xE300000000000000;
            v60 = 7104878;
          }

          else
          {
            (*v80)(v54, v58, v8);
            sub_1000050A4(v58, &unk_100939D90, "8\n\r");
            v60 = UUID.uuidString.getter();
            v59 = v61;
            (*v79)(v54, v8);
          }

          v28 = v82;
          v62 = sub_10000668C(v60, v59, &v93);
          v59, v63, v64, v65, v66, v67, v68, v69;
          *(v39 + 18) = v62;
          _os_log_impl(&_mh_execute_header, v36, v92, "DELETE(-soft) manual sort hint (listType: %hd, listID: %{public}s, identifier: %{public}s)", v39, 0x1Au);
          swift_arrayDestroy();

          v30 = v86;
          v26 = v87;
        }

        else
        {
        }

        [v35 markForDeletion];
        [v35 updateChangeCount];
        v31 = &selRef_hack_willSaveHandled;
      }

      ++v29;
    }

    while (v28 != v29);

    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_10013AFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v15 = qword_100974CC8;
  v16 = type metadata accessor for RDDaemonController();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v19 = 0xD000000000000013;
  *(v19 + 1) = 0x80000001007EC180;
  *(v19 + 38) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  *(v19 + 2) = 0;
  *&v17[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v40.receiver = v17;
  v40.super_class = v16;
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v40, "init");
  v33 = v20;
  type metadata accessor for RDDataStoreApplicationShortcutListProvider(0);
  swift_allocObject();
  v21 = v15;

  v22 = sub_10035090C(v21, a3, v20);

  type metadata accessor for RDSpringBoardApplicationShortcutUpdater();
  v23 = swift_allocObject();
  sub_100007F54();
  *(v23 + 24) = static OS_dispatch_queue.main.getter();
  *(v23 + 16) = [objc_allocWithZone(SBSApplicationShortcutService) init];
  v24 = type metadata accessor for RDApplicationShortcutEngine();
  v25 = swift_allocObject();
  v26 = v21;

  v32 = sub_10013B4F0(v26, v22, v23, v25);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  *(v27 + 24) = &off_1008EEC48;
  aBlock[4] = sub_10013B7C4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E5FC0;
  v28 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v38 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v36 + 8))(v10, v7);
  (*(v34 + 8))(v14, v35);

  v29 = v37;
  v37[3] = v24;
  v29[4] = &off_1008F3B58;

  *v29 = v32;
  return result;
}

id RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RDApplicationShortcutAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void *sub_10013B4F0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = &off_1008EEC48;
  a4[5] = a3;
  v19[1] = a3;
  a4[6] = &off_1008E8438;
  *(a2 + 32) = &off_1008F3B48;
  swift_unknownObjectWeakAssign();
  v19[2] = a4[2];
  aBlock[4] = sub_10013B7E8;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E5FE8;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);

  return a4;
}

void sub_10013B7F8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a1;
  v108 = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10013BCF4();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v8, v4);
  v20 = (v11 >> 56) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v20 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 || (v9 == 8738 ? (v21 = v11 == 0xE200000000000000) : (v21 = 0), v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v9 == 45 ? (v22 = v11 == 0xE100000000000000) : (v22 = 0), v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v15 = 0x80000001007EC1A0, v9 == 0x1000000000000017) ? (v23 = 0x80000001007EC1A0 == v11) : (v23 = 0), v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v14 = 0x600A22220A606060, v9 == 0x600A22220A606060) && v11 == 0xEA00000000006060 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))))
  {
    v11, v13, v14, v15, v16, v17, v18, v19;
    sub_10013BD48();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v107 = v9;
    v108 = v11;
    v105 = 2108682;
    v106 = 0xE300000000000000;
    v24 = StringProtocol.components<A>(separatedBy:)();
    v31 = v24;
    v32 = *(v24 + 16);
    if (v32)
    {
      v109 = &_swiftEmptyArrayStorage;
      v99 = v32;
      sub_100026EF4(0, v32, 0);
      v33 = v109;
      v95 = v31;
      v34 = &v31->clientIdentity[24];
      do
      {
        v100 = v33;
        v35 = *(v34 - 1);
        v97 = *v34;
        v98 = v34;
        v105 = v35;
        v106 = v97;

        static CharacterSet.whitespacesAndNewlines.getter();
        v36 = StringProtocol.trimmingCharacters(in:)();
        v38 = v37;
        v12(v8, v4);
        v105 = v36;
        v106 = v38;
        v103 = 2108766;
        v104 = 0xE300000000000000;
        v101 = 0;
        v102 = 0xE000000000000000;
        v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v96 = v40;
        v38, v40, v41, v42, v43, v44, v45, v46;
        v97, v47, v48, v49, v50, v51, v52, v53;
        v61 = v100;
        v109 = v100;
        v63 = *v100->clientIdentity;
        v62 = *&v100->clientIdentity[8];
        v64 = (v63 + 1);
        if (v63 >= v62 >> 1)
        {
          v97 = v39;
          v100 = (v63 + 1);
          sub_100026EF4((v62 > 1), v63 + 1, 1);
          v64 = v100;
          v39 = v97;
          v61 = v109;
        }

        *v61->clientIdentity = v64;
        v65 = v61 + 16 * v63;
        v66 = v96;
        *(v65 + 4) = v39;
        *(v65 + 5) = v66;
        --v99;
        v33 = v61;
        v34 = v98 + 2;
      }

      while (v99);
      v95, v54, v55, v56, v57, v58, v59, v60;
      v74 = v33;
    }

    else
    {
      v24, 0, v25, v26, v27, v28, v29, v30;
      v74 = &_swiftEmptyArrayStorage;
    }

    v75 = 0;
    v76 = *v74->clientIdentity;
    v77 = &v74->clientIdentity[24];
    v78 = &_swiftEmptyArrayStorage;
LABEL_31:
    v79 = &v77[16 * v75];
    while (1)
    {
      if (v76 == v75)
      {
        v87 = v74;
        v11, v67, v68, v69, v70, v71, v72, v73;
        v87, v88, v89, v90, v91, v92, v93, v94;
        return;
      }

      if (v75 >= *v74->clientIdentity)
      {
        break;
      }

      ++v75;
      v81 = *(v79 - 1);
      v80 = *v79;
      v79 += 16;
      v82 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v82 = v81 & 0xFFFFFFFFFFFFLL;
      }

      if (v82)
      {
        v100 = v74;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v78;
        v99 = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100026EF4(0, *v78->clientIdentity + 1, 1);
          v78 = v105;
        }

        v85 = *v78->clientIdentity;
        v84 = *&v78->clientIdentity[8];
        v74 = v100;
        if (v85 >= v84 >> 1)
        {
          sub_100026EF4((v84 > 1), v85 + 1, 1);
          v74 = v100;
          v78 = v105;
        }

        *v78->clientIdentity = v85 + 1;
        v86 = v78 + 16 * v85;
        *(v86 + 4) = v81;
        *(v86 + 5) = v80;
        v77 = v99;
        goto LABEL_31;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10013BCF4()
{
  result = qword_100942590;
  if (!qword_100942590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942590);
  }

  return result;
}

unint64_t sub_10013BD48()
{
  result = qword_100938C88;
  if (!qword_100938C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938C88);
  }

  return result;
}

unint64_t sub_10013BDB0()
{
  result = qword_100938C90;
  if (!qword_100938C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938C90);
  }

  return result;
}

id sub_10013BE04(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for RDPublicTemplate(0);
  v4 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithUUID:isa entityName:v6];

  v8 = objc_allocWithZone(REMListStorage);
  v9 = v7;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 initWithObjectID:v9 accountID:a1 name:v10];

  [v11 setColor:v2[2]];
  if (v2[4])
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v11 setBadgeEmblem:v12];

  if (v2[6])
  {

    v13 = REMSortingStyle.init(stringValue:)();
    if (v13)
    {
      v14 = v13;
      [v11 setSortingStyle:v13];
    }
  }

  [v11 setParentAccountID:a1];
  if (qword_100935AB0 != -1)
  {
    swift_once();
  }

  v15 = qword_100974C10;
  [v11 setMinimumSupportedVersion:qword_100974C10];
  [v11 setEffectiveMinimumSupportedVersion:v15];

  return v11;
}

char *sub_10013C004(void *a1, uint64_t a2, void *a3)
{
  v160 = a3;
  v4 = v3;
  v165 = a2;
  v162 = type metadata accessor for RDSavedURLAttachment(0);
  v154 = *(v162 - 8);
  __chkstk_darwin(v162, v6);
  v163 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v159 = &v151 - v10;
  v11 = type metadata accessor for UUID();
  ObjCClassFromMetadata = *(v11 - 1);
  __chkstk_darwin(v11, v12);
  v155 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v158 = &v151 - v16;
  __chkstk_darwin(v17, v18);
  v156 = &v151 - v19;
  __chkstk_darwin(v20, v21);
  v23 = &v151 - v22;
  v24 = type metadata accessor for RDSavedReminder(0);
  v157 = *(v24 - 8);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = __chkstk_darwin(v28, v29).n128_u64[0];
  v164 = &v151 - v31;
  v170 = a1;
  v32 = [a1 entityName];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *&v169 = 0xD00000000000001DLL;
  *(&v169 + 1) = 0x80000001007EC4D0;
  v36 = type metadata accessor for RDPublicTemplate(0);
  sub_100140E2C(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v167 = v11;
  v168 = v4;
  v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v37._object;
  String.append(_:)(v37);
  object, v39, v40, v41, v42, v43, v44, v45;
  v52 = *(&v169 + 1);
  if (__PAIR128__(v35, v33) == v169)
  {
    v35, v46, v169, v47, v48, v49, v50, v51;
    v52, v53, v54, v55, v56, v57, v58, v59;
    v60 = v170;
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35, v62, v63, v64, v65, v66, v67, v68;
    v52, v69, v70, v71, v72, v73, v74, v75;
    v60 = v170;
    if ((v61 & 1) == 0)
    {
LABEL_10:
      [objc_opt_self() noSuchObjectErrorWithObjectID:v60];
      swift_willThrow();
      return v27;
    }
  }

  v76 = &v168[*(v36 + 40)];
  v77 = *(v76 + 2);
  v78 = [v60 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v77 + 16) || (v79 = sub_100363F20(v23), (v80 & 1) == 0))
  {
    ObjCClassFromMetadata[1](v23, v167);
    goto LABEL_10;
  }

  sub_10013FED4(*(v77 + 56) + v157[9] * v79, v27, type metadata accessor for RDSavedReminder);
  v81 = ObjCClassFromMetadata[1];
  v82 = v23;
  v153 = (ObjCClassFromMetadata + 1);
  v83 = v81;
  v81(v82, v167);
  sub_10013FE70(v27, v164);
  v84 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v86 = String._bridgeToObjectiveC()();
  v157 = [v84 initWithUUID:isa entityName:v86];

  v87 = *(v76 + 7);
  v88 = [v60 uuid];
  v27 = v158;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v87 + 16))
  {
    v95 = 1;
    v90 = v165;
    v94 = v167;
    v91 = v159;
LABEL_14:
    v93 = ObjCClassFromMetadata;
    goto LABEL_15;
  }

  v89 = sub_100363F20(v27);
  v90 = v165;
  v91 = v159;
  if ((v92 & 1) == 0)
  {
    v95 = 1;
    v94 = v167;
    goto LABEL_14;
  }

  v93 = ObjCClassFromMetadata;
  v94 = v167;
  (ObjCClassFromMetadata[2])(v159, *(v87 + 56) + ObjCClassFromMetadata[9] * v89, v167);
  v95 = 0;
LABEL_15:
  v83(v27, v94);
  v93[7](v91, v95, 1, v94);
  v97 = (v93[6])(v91, 1, v94);
  v152 = v83;
  if (v97 == 1)
  {
    sub_1000050A4(v91, &unk_100939D90, "8\n\r");
    v168 = 0;
  }

  else
  {
    v27 = v156;
    (v93[4])(v156, v91, v94);
    v98 = sub_10013CA40();
    v83(v27, v94);
    v168 = v98;
    v99 = v98;
  }

  type metadata accessor for REMSavedReminderStorageCDIngestor();
  inited = swift_initStackObject();
  v101 = v160;
  *(inited + 16) = v160;
  v102 = qword_100935AB0;
  v167 = v101;
  v103 = v164;
  if (v102 != -1)
  {
    swift_once();
  }

  v104 = v157;
  v105 = v168;
  v106 = v161;
  v107 = sub_10050DD78(v103, v170, v157, v90, v168, qword_100974C10, qword_100974C10, 0, 0xF000000000000000);
  if (v106)
  {

    sub_10013FF3C(v103, type metadata accessor for RDSavedReminder);
  }

  else
  {
    v27 = v107;

    v108 = *(v76 + 3);
    if (v108)
    {
      v109 = [v170 uuid];
      v110 = v155;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v108 + 16) && (v111 = sub_100363F20(v110), (v112 & 1) != 0))
      {
        v113 = *(*(v108 + 56) + 8 * v111);

        v152(v110, v94);
        v121 = *(v113 + 16);
        if (v121)
        {
          *&v169 = &_swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          type metadata accessor for REMCDSavedAttachment();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v122 = *(v154 + 80);
          v161 = v113;
          v123 = v113 + ((v122 + 32) & ~v122);
          v124 = *(v154 + 72);
          v125 = v163;
          do
          {
            sub_10013FED4(v123, v125, type metadata accessor for RDSavedURLAttachment);
            v135 = v125;
            v136 = [ObjCClassFromMetadata newObjectID];
            v137 = (v135 + *(v162 + 20));
            urlString = v137->_urlString;
            URL._bridgeToObjectiveC()(v137);
            v140 = v139;
            if (urlString >> 60 == 15)
            {
              v126.super.isa = 0;
            }

            else
            {
              v126.super.isa = Data._bridgeToObjectiveC()().super.isa;
            }

            v127 = objc_allocWithZone(REMURLAttachment);
            [v127 initWithObjectID:v136 accountID:v165 reminderID:v170 url:v140 metadata:v126.super.isa];

            v125 = v163;
            sub_10013FF3C(v163, type metadata accessor for RDSavedURLAttachment);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v123 += v124;
            --v121;
          }

          while (v121);
          v161, v128, v129, v130, v131, v132, v133, v134;
          v141 = v169;
          v103 = v164;
        }

        else
        {
          v113, v114, v115, v116, v117, v118, v119, v120;
          v141 = &_swiftEmptyArrayStorage;
        }

        v142 = v157;
        sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
        v143 = Array._bridgeToObjectiveC()().super.isa;
        v141, v144, v145, v146, v147, v148, v149, v150;
        [v27 setAttachments:v143];
      }

      else
      {

        v152(v110, v94);
      }

      sub_10013FF3C(v103, type metadata accessor for RDSavedReminder);
    }

    else
    {

      sub_10013FF3C(v103, type metadata accessor for RDSavedReminder);
    }
  }

  return v27;
}

id sub_10013CA40()
{
  type metadata accessor for RDPublicTemplate(0);
  type metadata accessor for UUID();
  sub_100140E2C(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v0._object;
  String.append(_:)(v0);
  object, v2, v3, v4, v5, v6, v7, v8;
  v9 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();
  0x80000001007EC4D0, v12, v13, v14, v15, v16, v17, v18;
  v19 = [v9 initWithUUID:isa entityName:{v11, 0xD00000000000001DLL}];

  return v19;
}

_TtC7remindd19RDXPCStorePerformer *sub_10013CB64()
{
  v126 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126, v1);
  v124 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128, v3);
  v5 = (&v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6, v7);
  v116 = &v112 - v8;
  v140 = type metadata accessor for UUID();
  v131 = *(v140 - 8);
  __chkstk_darwin(v140, v9);
  v130 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v112 - v13;
  __chkstk_darwin(v15, v16);
  v132 = &v112 - v17;
  v18 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18, v20);
  v142 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v123 = &v112 - v24;
  __chkstk_darwin(v25, v26);
  v28 = &v112 - v27;
  v29 = (v0 + *(type metadata accessor for RDPublicTemplate(0) + 40));
  v30 = *v29;
  v145 = v0;
  v31 = sub_10024CF9C(sub_10013FF9C, v144, v30);
  v32 = v29[4];
  if (!v32 || (v129 = v29[5]) == 0 || (v33 = v29[6]) == 0)
  {
    (*(v125 + 104))(v124, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v126);
    REMRemindersListDataView.SectionLite.init(type:reminders:)();
    v0 = sub_100365A4C(0, 1, 1, &_swiftEmptyArrayStorage);
    v33 = *v0->clientIdentity;
    v44 = *&v0->clientIdentity[8];
    v41 = v33 + 1;
    if (v33 >= v44 >> 1)
    {
LABEL_43:
      v0 = sub_100365A4C((v44 > 1), v41, 1, v0);
    }

    v90 = v128;
    v91 = v127;
    *v0->clientIdentity = v41;
    (*(v91 + 32))(v0 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v33, v5, v90);
    return v0;
  }

  v113 = v32;
  v114 = 0;
  v5 = &_swiftEmptyArrayStorage;
  v117 = sub_10038E87C(&_swiftEmptyArrayStorage);
  v147 = v117;
  v138 = *v31->clientIdentity;
  if (!v138)
  {
    v118 = 0;
LABEL_37:
    v31, v34, v35, v36, v37, v38, v39, v40;
    v92 = v129;

    v0 = sub_10013F7E8(v113, v92, &v147);
    v92, v93, v94, v95, v96, v97, v98, v99;
    (*(v125 + 104))(v124, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v126);
    v72 = v116;
    REMRemindersListDataView.SectionLite.init(type:reminders:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_45:
      v0 = sub_100365A4C(0, *v0->clientIdentity + 1, 1, v0);
    }

    v100 = v127;
    v101 = v118;
    v103 = *v0->clientIdentity;
    v102 = *&v0->clientIdentity[8];
    if (v103 >= v102 >> 1)
    {
      v0 = sub_100365A4C((v102 > 1), v103 + 1, 1, v0);
    }

    *v0->clientIdentity = v103 + 1;
    (*(v100 + 32))(v0 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v103, v72);
    v117, v104, v105, v106, v107, v108, v109, v110;
    sub_10003E114(v101, 0);
    return v0;
  }

  v118 = 0;
  v41 = 0;
  v135 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v137 = v31 + v135;
  v143 = v19 + 16;
  v122 = v131 + 16;
  v139 = (v131 + 8);
  v121 = v131 + 32;
  v133 = (v19 + 32);
  v134 = (v19 + 8);
  v120 = v14;
  v119 = v19;
  v136 = v31;
  while (1)
  {
    v44 = *v31->clientIdentity;
    if (v41 >= v44)
    {
      __break(1u);
      goto LABEL_43;
    }

    v141 = *(v19 + 72);
    v45 = *(v19 + 16);
    v45(v28, &v137[v141 * v41], v18);
    v46 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v47 = v33;
    v48 = [v46 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v47;
    if (!*(v47 + 16) || (v49 = sub_100363F20(v14), (v50 & 1) == 0))
    {
      (*v139)(v14, v140);
LABEL_19:
      v45(v142, v28, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100365A24(0, *v5->clientIdentity + 1, 1, v5);
      }

      v80 = *v5->clientIdentity;
      v79 = *&v5->clientIdentity[8];
      v0 = (v80 + 1);
      if (v80 >= v79 >> 1)
      {
        v5 = sub_100365A24((v79 > 1), v80 + 1, 1, v5);
      }

      (*v134)(v28, v18);
      v42 = v5;
      v43 = v142;
      goto LABEL_7;
    }

    v52 = v130;
    v51 = v131;
    v53 = v140;
    (*(v131 + 16))(v130, *(v47 + 56) + *(v131 + 72) * v49, v140);
    v54 = v14;
    v55 = *(v51 + 8);
    v55(v54, v53);
    v56 = *(v51 + 32);
    v57 = v132;
    v56(v132, v52, v53);
    v58 = v129;
    if (!*(v129 + 16) || (v59 = sub_100363F20(v57), (v60 & 1) == 0))
    {
      v55(v57, v140);
      v14 = v120;
      v19 = v119;
      v33 = v47;
      goto LABEL_19;
    }

    v115 = v55;
    v61 = *(v58 + 56) + 16 * v59;
    v62 = *v61;
    v63 = *(v61 + 8);
    v45(v123, v28, v18);

    sub_10003E114(v118, 0);
    v0 = v147;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v0;
    v118 = v62;
    v72 = sub_100364198(v62, v63);
    v73 = *v0->clientIdentity;
    v74 = (v65 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      __break(1u);
      goto LABEL_45;
    }

    v76 = v65;
    if (*&v0->clientIdentity[8] >= v75)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100373E1C();
        v0 = v146;
      }
    }

    else
    {
      sub_10036B824(v75, isUniquelyReferenced_nonNull_native);
      v77 = v146;
      v78 = sub_100364198(v118, v63);
      if ((v76 & 1) != (v65 & 1))
      {
        goto LABEL_47;
      }

      v72 = v78;
      v0 = v77;
    }

    v147 = v0;
    v117 = v0;
    if ((v76 & 1) == 0)
    {
      break;
    }

    v63, v65, v66, v67, v68, v69, v70, v71;
    v81 = v117;
LABEL_29:
    v86 = *&v81->clientIdentity[40];
    v87 = *(v86 + 8 * v72);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *(v86 + 8 * v72) = v87;
    if ((v88 & 1) == 0)
    {
      v87 = sub_100365A24(0, *v87->clientIdentity + 1, 1, v87);
      *(v86 + 8 * v72) = v87;
    }

    v80 = *v87->clientIdentity;
    v89 = *&v87->clientIdentity[8];
    v0 = (v80 + 1);
    if (v80 >= v89 >> 1)
    {
      *(v86 + 8 * v72) = sub_100365A24((v89 > 1), v80 + 1, 1, v87);
    }

    v115(v132, v140);
    (*v134)(v28, v18);
    v42 = *(v86 + 8 * v72);
    v118 = sub_100066ED8;
    v43 = v123;
    v14 = v120;
    v19 = v119;
    v33 = v47;
LABEL_7:
    ++v41;
    *v42->clientIdentity = v0;
    (*v133)(v42 + v135 + v80 * v141, v43, v18);
    v31 = v136;
    if (v138 == v41)
    {
      goto LABEL_37;
    }
  }

  *&v0->storeProvider[8 * (v72 >> 6) + 2] |= 1 << v72;
  v81 = v117;
  v82 = (*&v117->clientIdentity[32] + 16 * v72);
  *v82 = v118;
  v82[1] = v63;
  *(*&v81->clientIdentity[40] + 8 * v72) = &_swiftEmptyArrayStorage;
  v83 = *v81->clientIdentity;
  v84 = __OFADD__(v83, 1);
  v85 = v83 + 1;
  if (!v84)
  {
    *v81->clientIdentity = v85;
    goto LABEL_29;
  }

  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10013D660(uint64_t a1, uint64_t a2)
{
  v4 = sub_10013CA40();
  v5 = *(a2 + *(type metadata accessor for RDPublicTemplate(0) + 40) + 8);
  if (*(v5 + 16))
  {
    v6 = sub_100363F20(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      __chkstk_darwin(v6, v7);
      v16[2] = a2;

      sub_10024CF9C(sub_10013FFBC, v16, v8);
      v8, v9, v10, v11, v12, v13, v14, v15;
    }
  }

  REMObjectID.codable.getter();
  REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtasks:)();
}

void sub_10013D76C()
{
  v0 = sub_10013CA40();
  REMObjectID.codable.getter();
  REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtasks:)();
}

double sub_10013D7C4@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v209 = a2;
  v211 = type metadata accessor for URL();
  v212 = *(v211 - 8);
  __chkstk_darwin(v211, v3);
  v5 = &v199 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v213 = &v199 - v8;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v199 - v11;
  v13 = type metadata accessor for Date();
  v215 = *(v13 - 8);
  v216 = v13;
  __chkstk_darwin(v13, v14);
  v214 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v199 - v18;
  v227 = type metadata accessor for UUID();
  v218 = *(v227 - 8);
  __chkstk_darwin(v227, v20);
  v217 = &v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x655463696C627550 && v22 == 0xEE006574616C706DLL)
  {
    0xEE006574616C706DLL, 0xEE006574616C706DLL, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v29 = v22;
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v29, v31, v32, v33, v34, v35, v36, v37;
    if ((v30 & 1) == 0)
    {
      v51 = objc_opt_self();
      *&v223 = 0;
      *(&v223 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(117);
      v52._countAndFlagsBits = 0xD000000000000058;
      v52._object = 0x80000001007EC1C0;
      String.append(_:)(v52);
      v53._countAndFlagsBits = 0x655463696C627550;
      v53._object = 0xEE006574616C706DLL;
      String.append(_:)(v53);
      v54._object = 0x80000001007EC220;
      v54._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v54);
      v55._countAndFlagsBits = CKRecord.recordType.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64._countAndFlagsBits = 125;
      v64._object = 0xE100000000000000;
      String.append(_:)(v64);
      v65 = *(&v223 + 1);
      v66 = String._bridgeToObjectiveC()();
      v65, v67, v68, v69, v70, v71, v72, v73;
      [v51 invalidParameterErrorWithDescription:v66];

      goto LABEL_11;
    }
  }

  v38 = CKRecord.subscript.getter();
  if (!v38 || (*&v219 = v38, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    v49 = objc_opt_self();
    v50 = String._bridgeToObjectiveC()();
    [v49 invalidParameterErrorWithDescription:v50];

LABEL_11:
    swift_willThrow();

    return result;
  }

  v39 = *(&v223 + 1);
  UUID.init(uuidString:)();
  v39, v40, v41, v42, v43, v44, v45, v46;
  v47 = v218;
  v48 = v227;
  if ((*(v218 + 48))(v19, 1, v227) == 1)
  {
    sub_1000050A4(v19, &unk_100939D90, "8\n\r");
    goto LABEL_9;
  }

  v75 = *(v47 + 32);
  v75(v217, v19, v48);
  v76 = CKRecord.subscript.getter();
  if (v76)
  {
    *&v223 = v76;
    v77 = v216;
    v78 = swift_dynamicCast();
    v79 = v215;
    v208 = *(v215 + 56);
    v208(v12, v78 ^ 1u, 1, v77);
    if ((*(v79 + 48))(v12, 1, v77) != 1)
    {
      v81 = *(v79 + 32);
      v80 = v79 + 32;
      v207 = v81;
      v81(v214, v12, v77);
      v82 = CKRecord.subscript.getter();
      if (!v82 || (*&v219 = v82, (swift_dynamicCast() & 1) == 0))
      {
        v97 = objc_opt_self();
        v98 = String._bridgeToObjectiveC()();
        [v97 invalidParameterErrorWithDescription:v98];

        swift_willThrow();
LABEL_50:
        (*(v215 + 8))(v214, v216);
        goto LABEL_51;
      }

      v203 = v80;
      v204 = v75;
      v205 = *(&v223 + 1);
      v202 = v223;
      v83 = CKRecord.subscript.getter();
      if (v83)
      {
        *&v219 = v83;
        v84 = swift_dynamicCast();
        v85 = v212;
        v86 = v213;
        if (v84)
        {
          v87 = *(&v223 + 1);
          v206 = sub_10013E670(v223, *(&v223 + 1), &qword_100938CA0, REMColor_ptr, sub_10050D7A0, &qword_100938CA8, &unk_100795B00);
          v87, v88, v89, v90, v91, v92, v93, v94;
        }

        else
        {
          v206 = 0;
        }
      }

      else
      {
        v206 = 0;
        v85 = v212;
        v86 = v213;
      }

      v99 = CKRecord.subscript.getter();
      if (v99)
      {
        *&v219 = v99;
        v100 = swift_dynamicCast();
        v101 = v223;
        if (!v100)
        {
          v101 = 0;
        }

        v201 = v101;
        if (v100)
        {
          v102 = *(&v223 + 1);
        }

        else
        {
          v102 = 0;
        }

        v212 = v102;
      }

      else
      {
        v201 = 0;
        v212 = 0;
      }

      v103 = CKRecord.subscript.getter();
      if (v103)
      {
        *&v219 = v103;
        v104 = swift_dynamicCast();
        v105 = v223;
        if (!v104)
        {
          v105 = 0;
        }

        v200 = v105;
        if (v104)
        {
          v106 = *(&v223 + 1);
        }

        else
        {
          v106 = 0;
        }
      }

      else
      {
        v200 = 0;
        v106 = 0;
      }

      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v114 = swift_dynamicCastObjCClass();
        if (v114)
        {
          v122 = [v114 fileURL];
          if (v122)
          {
            v130 = v122;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v131 = v211;
            (*&v85->clientIdentity[16])(v86, v5, v211);
            v132 = v210;
            v133 = Data.init(contentsOf:options:)();
            if (!v132)
            {
              v210 = v133;
              v188 = v134;
              type metadata accessor for JSONDecoder();
              swift_allocObject();
              JSONDecoder.init()();
              sub_10013F2DC();
              v199 = v188;
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();
              (*v85->storeController)(v213, v211);
              swift_unknownObjectRelease();
              sub_10001BBA0(v210, v199);

              v219 = v223;
              v220 = v224;
              v221 = v225;
              v222 = v226;
              v189 = type metadata accessor for RDPublicTemplate(0);
              v190 = v209;
              v204(&v209[v189[8]], v217, v227);
              v191 = v189[9];
              v192 = v216;
              v207(&v190[v191], v214, v216);
              v208(&v190[v191], 0, 1, v192);
              v193 = v205;
              *v190 = v202;
              *(v190 + 1) = v193;
              v194 = v201;
              *(v190 + 2) = v206;
              *(v190 + 3) = v194;
              v195 = v200;
              *(v190 + 4) = v212;
              *(v190 + 5) = v195;
              *(v190 + 6) = v106;
              v196 = &v190[v189[10]];
              v197 = v220;
              *v196 = v219;
              *(v196 + 1) = v197;
              result = *&v221;
              v198 = v222;
              *(v196 + 2) = v221;
              *(v196 + 3) = v198;
              return result;
            }

            swift_unknownObjectRelease();
            v205, v135, v136, v137, v138, v139, v140, v141;
            v212, v142, v143, v144, v145, v146, v147, v148;
            v106, v149, v150, v151, v152, v153, v154, v155;

            (*v85->storeController)(v86, v131);
            goto LABEL_50;
          }

          v205, v123, v124, v125, v126, v127, v128, v129;
          v212, v172, v173, v174, v175, v176, v177, v178;
          v106, v179, v180, v181, v182, v183, v184, v185;
          v186 = objc_opt_self();
          v187 = String._bridgeToObjectiveC()();
          [v186 invalidParameterErrorWithDescription:v187];

          swift_willThrow();
          swift_unknownObjectRelease();
          goto LABEL_47;
        }

        v205, v115, v116, v117, v118, v119, v120, v121;
        swift_unknownObjectRelease();
      }

      else
      {
        v205, v107, v108, v109, v110, v111, v112, v113;
      }

      v212, v156, v157, v158, v159, v160, v161, v162;
      v106, v163, v164, v165, v166, v167, v168, v169;
      v170 = objc_opt_self();
      v171 = String._bridgeToObjectiveC()();
      [v170 invalidParameterErrorWithDescription:v171];

      swift_willThrow();
LABEL_47:

      goto LABEL_50;
    }
  }

  else
  {
    (*(v215 + 56))(v12, 1, 1, v216);
  }

  sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
  v95 = objc_opt_self();
  v96 = String._bridgeToObjectiveC()();
  [v95 invalidParameterErrorWithDescription:v96];

  swift_willThrow();
LABEL_51:
  (*(v218 + 8))(v217, v227);
  return result;
}

uint64_t sub_10013E558(uint64_t a1, uint64_t a2)
{

  return sub_10013E670(a1, a2, &qword_100938CA0, REMColor_ptr, sub_10050D7A0, &qword_100938CA8, &unk_100795B00);
}

uint64_t sub_10013E5E4(uint64_t a1, uint64_t a2)
{

  return sub_10013E670(a1, a2, &unk_10093C970, REMContactRepresentation_ptr, sub_10023D6FC, &qword_100938CF0, &unk_100795B10);
}

uint64_t sub_10013E670(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, uint64_t (*a5)(void *), uint64_t *a6, uint64_t *a7)
{
  v95 = a7;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000060C8(0, a3, a4);
  static String.Encoding.utf8.getter();
  v17 = String.data(using:allowLossyConversion:)();
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  if (v19 >> 60 == 15)
  {
    if (qword_100935BE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10093CAE0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v98[0] = v24;
      *v23 = 136315138;
      v97[0] = v16;
      sub_1000F5104(a6, v95);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      v28 = sub_10000668C(v25, v26, v98);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "RDJSONDecoding can't encode input string as utf8 data {class: %s}", v23, 0xCu);
      sub_10000607C(v24);
    }
  }

  else
  {
    v36 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v97[0] = 0;
    v38 = [v36 JSONObjectWithData:isa options:0 error:v97];

    v39 = v97[0];
    if (v38)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005EF0(v98, v97);
      sub_1000F5104(&unk_100938CB0, &unk_100796A70);
      if (swift_dynamicCast())
      {
        v40 = v96;
        v41 = a5(v96);
        sub_100031A14(v17, v19);
        v40, v42, v43, v44, v45, v46, v47, v48;
        sub_10000607C(v98);
        return v41;
      }

      if (qword_100935BE8 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_100006654(v77, qword_10093CAE0);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v97[0] = v81;
        *v80 = 136315138;
        v96 = v16;
        sub_1000F5104(a6, v95);
        v82 = String.init<A>(describing:)();
        v84 = v83;
        v85 = sub_10000668C(v82, v83, v97);
        v84, v86, v87, v88, v89, v90, v91, v92;
        *(v80 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v78, v79, "Invalid JSONSerialization.jsonObject return value {class: %s}", v80, 0xCu);
        sub_10000607C(v81);
      }

      sub_100031A14(v17, v19);

      sub_10000607C(v98);
    }

    else
    {
      v50 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935BE8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100006654(v51, qword_10093CAE0);
      swift_errorRetain();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v98[0] = v94;
        *v54 = 136315394;
        v97[0] = v16;
        sub_1000F5104(a6, v95);
        v55 = String.init<A>(describing:)();
        v57 = v56;
        v58 = sub_10000668C(v55, v56, v98);
        v57, v59, v60, v61, v62, v63, v64, v65;
        *(v54 + 4) = v58;
        *(v54 + 12) = 2080;
        swift_getErrorValue();
        v66 = Error.localizedDescription.getter();
        v68 = v67;
        v69 = sub_10000668C(v66, v67, v98);
        v68, v70, v71, v72, v73, v74, v75, v76;
        *(v54 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v52, v53, "RDJSONDecoding can't decode JSON {class: %s, error: %s}", v54, 0x16u);
        swift_arrayDestroy();

        sub_100031A14(v17, v19);
      }

      else
      {
        sub_100031A14(v17, v19);
      }
    }
  }

  return 0;
}

Class sub_10013ECF4()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v41 - v6;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v8 = type metadata accessor for RDPublicTemplate(0);
  v57 = v8[8];
  v9 = sub_10013FBFC(v0 + v57);
  v10._countAndFlagsBits = 0x655463696C627550;
  v10._object = 0xEE006574616C706DLL;
  v11.super.isa = CKRecord.init(recordType:recordID:)(v10, v9).super.isa;
  v12 = 0;
  v44 = " {ckRecord.recordType: ";
  v43 = " a non-nil String";
  v42 = v0;
  v41 = v8;
  while (1)
  {
    v15 = *(&off_1008DD548 + v12 + 32);
    if (v15 <= 2)
    {
      if (*(&off_1008DD548 + v12 + 32))
      {
        if (v15 == 1)
        {
          if (v3[2] && (v18 = sub_1001E1818(), v19))
          {
            *(&v54 + 1) = &type metadata for String;
            *&v55 = &protocol witness table for String;
            *&v53 = v18;
            *(&v53 + 1) = v19;
          }

          else
          {
            *&v55 = 0;
            v53 = 0u;
            v54 = 0u;
          }
        }

        else
        {
          v14 = *v3;
          v13 = v3[1];
          *(&v54 + 1) = &type metadata for String;
          *&v55 = &protocol witness table for String;
          *&v53 = v14;
          *(&v53 + 1) = v13;
        }

        goto LABEL_3;
      }

      v33 = v3[4];
      if (v33)
      {
        v34 = v3[3];
        *(&v54 + 1) = &type metadata for String;
        *&v55 = &protocol witness table for String;
        *&v53 = v34;
        *(&v53 + 1) = v33;
      }

      else
      {
        *&v55 = 0;
        v53 = 0u;
        v54 = 0u;
      }

      goto LABEL_26;
    }

    if (*(&off_1008DD548 + v12 + 32) <= 4u)
    {
      if (v15 == 3)
      {
        sub_10012F78C(v3 + v8[9], v7);
        v16 = type metadata accessor for Date();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v7, 1, v16) == 1)
        {
          sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
          v53 = 0u;
          v54 = 0u;
          *&v55 = 0;
        }

        else
        {
          *(&v54 + 1) = v16;
          *&v55 = &protocol witness table for Date;
          v39 = sub_1000103CC(&v53);
          (*(v17 + 32))(v39, v7, v16);
        }
      }

      else
      {
        v35 = UUID.uuidString.getter();
        *(&v54 + 1) = &type metadata for String;
        *&v55 = &protocol witness table for String;
        *&v53 = v35;
        *(&v53 + 1) = v36;
      }

      goto LABEL_3;
    }

    if (v15 == 5)
    {
      break;
    }

    v37 = v3[6];
    if (v37)
    {
      v38 = v3[5];
      *(&v54 + 1) = &type metadata for String;
      *&v55 = &protocol witness table for String;
      *&v53 = v38;
      *(&v53 + 1) = v37;
    }

    else
    {
      *&v55 = 0;
      v53 = 0u;
      v54 = 0u;
    }

LABEL_26:

LABEL_3:
    CKRecordKeyValueSetting.subscript.setter();
LABEL_4:
    if (++v12 == 7)
    {
      return v11.super.isa;
    }
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v20 = (v3 + v8[10]);
  v21 = v20[1];
  v22 = v20[3];
  v55 = v20[2];
  v56 = v22;
  v23 = v20[1];
  v53 = *v20;
  v54 = v23;
  v49 = v53;
  v50 = v21;
  v24 = v20[3];
  v51 = v55;
  v52 = v24;
  sub_10013FD6C(&v53, &v45);
  sub_10013FDC8();
  v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v2)
  {
    v27 = v25;
    v28 = v26;
    v45 = v49;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    sub_10013FE1C(&v45);

    v29 = objc_opt_self();
    v30 = v7;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v32 = [v29 assetForData:isa];

    v7 = v30;
    v2 = 0;
    v3 = v42;
    CKRecord.subscript.setter();
    sub_10001BBA0(v27, v28);
    v8 = v41;
    goto LABEL_4;
  }

  v45 = v49;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  sub_10013FE1C(&v45);

  return v11.super.isa;
}

unint64_t sub_10013F2DC()
{
  result = qword_100938C98;
  if (!qword_100938C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938C98);
  }

  return result;
}

uint64_t type metadata accessor for RDPublicTemplate(uint64_t a1)
{
  result = qword_100938D50;
  if (!qword_100938D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013F37C(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v41 - v11;
  v13 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  __chkstk_darwin(v13, v14);
  v16 = &v41 - v15;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v17 = a1[2];
  v18 = a2[2];
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_29;
    }

    v42 = v5;
    sub_1000060C8(0, &qword_100938CA0, REMColor_ptr);
    v19 = v18;
    v20 = v17;
    v21 = static NSObject.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v42 = v5;
    if (v18)
    {
      goto LABEL_29;
    }
  }

  v22 = a1[4];
  v23 = a2[4];
  if (v22)
  {
    if (!v23 || (a1[3] != a2[3] || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v23)
  {
    goto LABEL_29;
  }

  v24 = a1[6];
  v25 = a2[6];
  if (v24)
  {
    if (!v25 || (a1[5] != a2[5] || v24 != v25) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v25)
  {
    goto LABEL_29;
  }

  v26 = type metadata accessor for RDPublicTemplate(0);
  if (static UUID.== infix(_:_:)())
  {
    v27 = *(v26 + 36);
    v28 = *(v13 + 48);
    sub_10012F78C(a1 + v27, v16);
    sub_10012F78C(a2 + v27, &v16[v28]);
    v29 = *(v42 + 48);
    if (v29(v16, 1, v4) == 1)
    {
      if (v29(&v16[v28], 1, v4) == 1)
      {
        sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
LABEL_32:
        v35 = (a1 + *(v26 + 40));
        v36 = v35[3];
        v43[2] = v35[2];
        v43[3] = v36;
        v37 = v35[1];
        v43[0] = *v35;
        v43[1] = v37;
        v38 = (a2 + *(v26 + 40));
        v39 = v38[3];
        v44[2] = v38[2];
        v44[3] = v39;
        v40 = v38[1];
        v44[0] = *v38;
        v44[1] = v40;
        sub_1004F9098(v43, v44);
        return v30 & 1;
      }

      goto LABEL_28;
    }

    sub_10012F78C(v16, v12);
    if (v29(&v16[v28], 1, v4) == 1)
    {
      (*(v42 + 8))(v12, v4);
LABEL_28:
      sub_1000050A4(v16, &qword_100938C18, &qword_1007957A0);
      goto LABEL_29;
    }

    v32 = v42;
    (*(v42 + 32))(v8, &v16[v28], v4);
    sub_100140E2C(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    v34 = *(v32 + 8);
    v34(v8, v4);
    v34(v12, v4);
    sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
    if (v33)
    {
      goto LABEL_32;
    }
  }

LABEL_29:
  v30 = 0;
  return v30 & 1;
}

_TtC7remindd19RDXPCStorePerformer *sub_10013F7E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v44 = a3;
  v52 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52, v7);
  v43 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9, v10);
  v48 = v39 - v11;
  v51 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v12 = *(v51 - 8);
  __chkstk_darwin(v51, v13);
  v53 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = &_swiftEmptyArrayStorage;
  if (v15)
  {
    v39[1] = v3;
    v54 = &_swiftEmptyArrayStorage;
    sub_1002532DC(0, v15, 0);
    v16 = v54;
    v17 = *(type metadata accessor for UUID() - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v41 = "or saved reminders is nil";
    v40 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v19 = (v6 + 104);
    v47 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v50 = v12 + 32;
    v49 = *(v17 + 72);
    v42 = a2;
    do
    {
      if (*(a2 + 16) && (v20 = sub_100363F20(v18), (v21 & 1) != 0))
      {
        v22 = (*(a2 + 56) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = *v44;
        v26 = *(*v44 + 16);

        v46 = v23;
        if (v26 && (v27 = sub_100364198(v23, v24), (v28 & 1) != 0))
        {
          v45 = *(*(v25 + 56) + 8 * v27);
        }

        else
        {
          v45 = &_swiftEmptyArrayStorage;
        }

        v29 = objc_allocWithZone(type metadata accessor for REMObjectID_Codable());
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v31 = String._bridgeToObjectiveC()();
        v32 = [v29 initWithUUID:isa entityName:v31];

        v33 = v46;
        if (!v24)
        {
          v33 = 0;
        }

        v34 = 0xE000000000000000;
        if (v24)
        {
          v34 = v24;
        }

        v35 = v43;
        *v43 = v32;
        v35[1] = v33;
        v35[3] = 0;
        v35[4] = 0;
        v35[2] = v34;
        (*v19)(v35, v40, v52);
        REMRemindersListDataView.SectionLite.init(type:reminders:)();
        a2 = v42;
      }

      else
      {
        (*v19)(v48, v47, v52);
        REMRemindersListDataView.SectionLite.init(type:reminders:)();
      }

      v54 = v16;
      v37 = *v16->clientIdentity;
      v36 = *&v16->clientIdentity[8];
      if (v37 >= v36 >> 1)
      {
        sub_1002532DC((v36 > 1), v37 + 1, 1);
        v16 = v54;
      }

      *v16->clientIdentity = v37 + 1;
      (*(v12 + 32))(v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v37, v53, v51);
      v18 += v49;
      --v15;
    }

    while (v15);
  }

  return v16;
}

Class sub_10013FBFC(uint64_t a1)
{
  v1._countAndFlagsBits = UUID.uuidString.getter();
  object = v1._object;
  String.append(_:)(v1);
  object, v3, v4, v5, v6, v7, v8, v9;
  sub_1000060C8(0, &qword_100938CC8, CKRecordZoneID_ptr);
  v10 = static CKRecordZoneID.default.getter();
  v11 = [v10 zoneName];
  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    v11 = String._bridgeToObjectiveC()();
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  v21 = [v10 ownerName];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v21 = String._bridgeToObjectiveC()();
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  v31 = [objc_allocWithZone(CKRecordZoneID) initWithZoneName:v11 ownerName:v21 databaseScope:1];

  sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
  v32._countAndFlagsBits = 0x655463696C627550;
  v32._object = 0xEF2F6574616C706DLL;
  isa = CKRecordID.init(recordName:zoneID:)(v32, v31).super.isa;

  return isa;
}

unint64_t sub_10013FDC8()
{
  result = qword_100938CC0;
  if (!qword_100938CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938CC0);
  }

  return result;
}

uint64_t sub_10013FE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedReminder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013FED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013FF3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10013FFDC(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *v4 = *a2;
    v4 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v9 = *(a2 + 2);
    v8 = *(a2 + 3);
    *(a1 + 2) = v9;
    *(a1 + 3) = v8;
    v10 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v10;
    *(a1 + 6) = *(a2 + 6);
    v11 = a3[8];
    v12 = type metadata accessor for UUID();
    v27 = *(*(v12 - 8) + 16);

    v13 = v9;

    v27(&v4[v11], &a2[v11], v12);
    v14 = a3[9];
    v15 = type metadata accessor for Date();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(&a2[v14], 1, v15))
    {
      v17 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(&v4[v14], &a2[v14], *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&v4[v14], &a2[v14], v15);
      (*(v16 + 56))(&v4[v14], 0, 1, v15);
    }

    v19 = a3[10];
    v20 = &v4[v19];
    v21 = &a2[v19];
    v22 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v22;
    v23 = *(v21 + 3);
    *(v20 + 2) = *(v21 + 2);
    *(v20 + 3) = v23;
    v24 = *(v21 + 5);
    *(v20 + 4) = *(v21 + 4);
    *(v20 + 5) = v24;
    v25 = *(v21 + 7);
    *(v20 + 6) = *(v21 + 6);
    *(v20 + 7) = v25;
  }

  return v4;
}

void sub_100140240(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;

  *(a1 + 32), v10, v11, v12, v13, v14, v15, v16;
  *(a1 + 48), v17, v18, v19, v20, v21, v22, v23;
  v24 = *(a2 + 8);
  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 8))(a1 + v24, v25);
  v26 = *(a2 + 9);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(a1 + v26, 1, v27))
  {
    (*(v28 + 8))(a1 + v26, v27);
  }

  v36 = (a1 + *(a2 + 10));
  *v36, v29, v30, v31, v32, v33, v34, v35;
  v36[1], v37, v38, v39, v40, v41, v42, v43;
  v36[2], v44, v45, v46, v47, v48, v49, v50;
  v36[3], v51, v52, v53, v54, v55, v56, v57;
  v36[4], v58, v59, v60, v61, v62, v63, v64;
  v36[5], v65, v66, v67, v68, v69, v70, v71;
  v36[6], v72, v73, v74, v75, v76, v77, v78;
  v86 = v36[7];

  v86, v79, v80, v81, v82, v83, v84, v85;
}

char *sub_100140398(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v8 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v8;
  *(a1 + 6) = *(a2 + 6);
  v9 = a3[8];
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 16);

  v12 = v7;

  v11(&a1[v9], &a2[v9], v10);
  v13 = a3[9];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&a2[v13], 1, v14))
  {
    v16 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 1, v14);
  }

  v17 = a3[10];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  v21 = *(v19 + 3);
  *(v18 + 2) = *(v19 + 2);
  *(v18 + 3) = v21;
  v22 = *(v19 + 5);
  *(v18 + 4) = *(v19 + 4);
  *(v18 + 5) = v22;
  v23 = *(v19 + 7);
  *(v18 + 6) = *(v19 + 6);
  *(v18 + 7) = v23;

  return a1;
}

char *sub_1001405AC(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = *(a1 + 2);
  v15 = *(a2 + 2);
  *(a1 + 2) = v15;
  v16 = v15;

  *(a1 + 3) = *(a2 + 3);
  v17 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);

  v17, v18, v19, v20, v21, v22, v23, v24;
  *(a1 + 5) = *(a2 + 5);
  v25 = *(a1 + 6);
  *(a1 + 6) = *(a2 + 6);

  v25, v26, v27, v28, v29, v30, v31, v32;
  v33 = a3[8];
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 24))(&a1[v33], &a2[v33], v34);
  v35 = a3[9];
  v36 = type metadata accessor for Date();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = v38(&a1[v35], 1, v36);
  v40 = v38(&a2[v35], 1, v36);
  if (!v39)
  {
    if (!v40)
    {
      (*(v37 + 24))(&a1[v35], &a2[v35], v36);
      goto LABEL_7;
    }

    (*(v37 + 8))(&a1[v35], v36);
    goto LABEL_6;
  }

  if (v40)
  {
LABEL_6:
    v41 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v35], &a2[v35], *(*(v41 - 8) + 64));
    goto LABEL_7;
  }

  (*(v37 + 16))(&a1[v35], &a2[v35], v36);
  (*(v37 + 56))(&a1[v35], 0, 1, v36);
LABEL_7:
  v42 = a3[10];
  v43 = &a1[v42];
  v44 = &a2[v42];
  v45 = *&a2[v42];
  v46 = *&a1[v42];
  *&a1[v42] = v45;

  v46, v47, v48, v49, v50, v51, v52, v53;
  v54 = *(v43 + 1);
  *(v43 + 1) = *(v44 + 1);

  v54, v55, v56, v57, v58, v59, v60, v61;
  v62 = *(v43 + 2);
  *(v43 + 2) = *(v44 + 2);

  v62, v63, v64, v65, v66, v67, v68, v69;
  v70 = *(v43 + 3);
  *(v43 + 3) = *(v44 + 3);

  v70, v71, v72, v73, v74, v75, v76, v77;
  v78 = *(v43 + 4);
  *(v43 + 4) = *(v44 + 4);

  v78, v79, v80, v81, v82, v83, v84, v85;
  v86 = *(v43 + 5);
  *(v43 + 5) = *(v44 + 5);

  v86, v87, v88, v89, v90, v91, v92, v93;
  v94 = *(v43 + 6);
  *(v43 + 6) = *(v44 + 6);

  v94, v95, v96, v97, v98, v99, v100, v101;
  v102 = *(v43 + 7);
  *(v43 + 7) = *(v44 + 7);

  v102, v103, v104, v105, v106, v107, v108, v109;
  return a1;
}

uint64_t sub_1001408A8(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = a3[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[9];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  v12 = a3[10];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;
  v16 = v14[3];
  v13[2] = v14[2];
  v13[3] = v16;
  return a1;
}

char *sub_100140A34(char *a1, char *a2, int *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = *(a2 + 1);
  v12 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v11;
  v12, a2, a3, a4, a5, a6, a7, a8;
  v13 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);

  v14 = *(a2 + 4);
  v15 = *(a1 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v14;
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = *(a2 + 6);
  v24 = *(a1 + 6);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = v23;
  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = a3[8];
  v33 = type metadata accessor for UUID();
  (*(*(v33 - 8) + 40))(&a1[v32], &a2[v32], v33);
  v34 = a3[9];
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = v37(&a1[v34], 1, v35);
  v39 = v37(&a2[v34], 1, v35);
  if (!v38)
  {
    if (!v39)
    {
      (*(v36 + 40))(&a1[v34], &a2[v34], v35);
      goto LABEL_7;
    }

    (*(v36 + 8))(&a1[v34], v35);
    goto LABEL_6;
  }

  if (v39)
  {
LABEL_6:
    v47 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v34], &a2[v34], *(*(v47 - 8) + 64));
    goto LABEL_7;
  }

  (*(v36 + 32))(&a1[v34], &a2[v34], v35);
  (*(v36 + 56))(&a1[v34], 0, 1, v35);
LABEL_7:
  v48 = a3[10];
  v49 = &a1[v48];
  v50 = &a2[v48];
  v51 = *&a1[v48];
  *&a1[v48] = *v50;
  v51, v40, v41, v42, v43, v44, v45, v46;
  v52 = *(v49 + 1);
  *(v49 + 1) = *(v50 + 1);
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = *(v49 + 2);
  *(v49 + 2) = *(v50 + 2);
  v60, v61, v62, v63, v64, v65, v66, v67;
  v68 = *(v49 + 3);
  *(v49 + 3) = *(v50 + 3);
  v68, v69, v70, v71, v72, v73, v74, v75;
  v76 = *(v49 + 4);
  *(v49 + 4) = *(v50 + 4);
  v76, v77, v78, v79, v80, v81, v82, v83;
  v84 = *(v49 + 5);
  *(v49 + 5) = *(v50 + 5);
  v84, v85, v86, v87, v88, v89, v90, v91;
  v92 = *(v49 + 6);
  *(v49 + 6) = *(v50 + 6);
  v92, v93, v94, v95, v96, v97, v98, v99;
  v100 = *(v49 + 7);
  *(v49 + 7) = *(v50 + 7);
  v100, v101, v102, v103, v104, v105, v106, v107;
  return a1;
}

void sub_100140CE4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100140DD4(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_100140DD4(uint64_t a1)
{
  if (!qword_100938D60)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100938D60);
    }
  }
}

uint64_t sub_100140E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100140E74()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938DC0);
  v1 = sub_100006654(v0, qword_100938DC0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  if (qword_100935AB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100938DC0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas: migrating if needed", v7, 2u);
  }

  *&v12 = 0xD000000000000035;
  *(&v12 + 1) = 0x8000000100795BA0;
  v8 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1000050A4(v14, &qword_100939ED0, &qword_100791B10);
LABEL_13:
    sub_100141210(_.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v14[0] = 0xD000000000000035;
    *(&v14[0] + 1) = 0x8000000100795BA0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = [v11 integerValue];

  if (v9 < 1)
  {
    goto LABEL_13;
  }
}

void sub_100141210(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_100935AB8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100938DC0);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = ObjectType;
    *v9 = 136315394;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = v11;
    v13 = sub_10000668C(v10, v11, &v40);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v21 = sub_1003533B0();
    v23 = v22;
    v24 = sub_10000668C(v21, v22, &v40);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v9 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: BEGIN {store: %{public}s}", v9, 0x16u);
    swift_arrayDestroy();
  }

  v32 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v33 = [v6 persistentStoreCoordinator];
  [v32 setPersistentStoreCoordinator:v33];

  [v32 setTransactionAuthor:RDStoreControllerRemoveObsoleteDueDateDeltasMigrationAuthor];
  [v32 setUndoManager:0];
  [v32 setRetainsRegisteredObjects:1];
  if (sub_10014294C(v6, v32))
  {
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = v2;
    v34[4] = ObjectType;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_100142C54;
    *(v35 + 24) = v34;
    aBlock[4] = sub_1000529DC;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F160;
    aBlock[3] = &unk_1008E6118;
    v36 = _Block_copy(aBlock);
    v37 = v32;
    v38 = v2;

    [v37 performBlockAndWait:v36];

    _Block_release(v36);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      sub_1001415C4(v6, ObjectType);
    }
  }

  else
  {

    sub_1001415C4(v6, ObjectType);
  }
}

void sub_1001415C4(void *a1, uint64_t a2)
{
  if (qword_100935AB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100938DC0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    v31[1] = a2;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, v31);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v19 = sub_1003533B0();
    v21 = v20;
    v22 = sub_10000668C(v19, v20, v31);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v7 + 14) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v6, "%s: END {store: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100141790(void *a1, uint64_t a2, char *a3)
{
  v177 = a3;
  v4 = type metadata accessor for UUID();
  v181 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v176 - v10;
  __chkstk_darwin(v12, v13);
  v15 = &v176 - v14;
  __chkstk_darwin(v16, v17);
  v19 = &v176 - v18;
  v20 = sub_100142C60();
  type metadata accessor for REMCDDueDateDeltaAlert();
  v21 = NSManagedObjectContext.fetch<A>(_:)();
  v40 = v181;
  v183 = v19;
  v184 = v4;
  v186 = v21;
  v187 = v11;
  v185 = v7;

  v48 = v186;
  if (v186 >> 62)
  {
    v143 = _CocoaArrayWrapper.endIndex.getter();
    v48 = v186;
    v49 = v143;
    v50 = v40;
    if (v143)
    {
      goto LABEL_9;
    }

LABEL_59:

    v48, v41, v42, v43, v44, v45, v46, v47;
    return;
  }

  v49 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = v40;
  if (!v49)
  {
    goto LABEL_59;
  }

LABEL_9:
  v176 = 0;
  v51 = 0;
  v52 = 0;
  v181 = v48 & 0xC000000000000001;
  v178 = v48 & 0xFFFFFFFFFFFFFF8;
  v179 = (v50 + 16);
  v53 = _swiftEmptyDictionarySingleton;
  v180 = (v50 + 8);
  v182 = a1;
  while (1)
  {
    if (v181)
    {
      v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v64 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      goto LABEL_18;
    }

    if (v51 >= *(v178 + 16))
    {
      goto LABEL_57;
    }

    v63 = *&v48->clientIdentity[8 * v51 + 16];
    v64 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

LABEL_18:
    v65 = v49;
    v66 = [v63 reminderIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = [v63 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10003E114(v52, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = v53;
    v70 = sub_100363F20(v15);
    v71 = *(v53 + 2);
    v72 = (v69 & 1) == 0;
    v73 = v71 + v72;
    if (__OFADD__(v71, v72))
    {
      goto LABEL_56;
    }

    v74 = v69;
    if (*(v53 + 3) >= v73)
    {
      v77 = v185;
      if (isUniquelyReferenced_nonNull_native)
      {
        v78 = v184;
        if (v69)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_100374248();
        v77 = v185;
        v53 = v189;
        v78 = v184;
        if (v74)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_10036C304(v73, isUniquelyReferenced_nonNull_native);
      v53 = v189;
      v75 = sub_100363F20(v15);
      if ((v74 & 1) != (v76 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v70 = v75;
      v78 = v184;
      v77 = v185;
      if (v74)
      {
        goto LABEL_11;
      }
    }

    (*v179)(v77, v15, v78);
    sub_1002CB9B0(v70, v77, _swiftEmptySetSingleton, v53);
LABEL_11:
    v54 = v183;
    sub_1003794C4(v183, v187);
    v55 = *v180;
    (*v180)(v15, v78);
    v55(v54, v78);
    [v182 deleteObject:v63];

    ++v51;
    v52 = sub_1001424E8;
    v49 = v65;
    v48 = v186;
    if (v64 == v65)
    {
      v186, v56, v57, v58, v59, v60, v61, v62;
      v79 = v177;
      if (qword_100935E28 != -1)
      {
        swift_once();
      }

      v80 = qword_100974D20;
      v81 = v176;
      if (!*(qword_100974D20 + 16) || (v82 = sub_100005F4C(0xD000000000000016, 0x80000001007E8FD0), (v83 & 1) == 0))
      {

        if (qword_100935AB8 != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        sub_100006654(v111, qword_100938DC0);
        v23 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v188 = v114;
          v189 = v79;
          *v113 = 136315138;
          swift_getMetatypeMetadata();
          v115 = String.init<A>(describing:)();
          v117 = v116;
          v118 = sub_10000668C(v115, v116, &v188);
          v117, v119, v120, v121, v122, v123, v124, v125;
          *(v113 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v23, v112, "%s: Error getting dueDateDeltaCDValueKey", v113, 0xCu);
          sub_10000607C(v114);
        }

        goto LABEL_5;
      }

      v84 = *(*(v80 + 56) + 16 * v82 + 8);

      v85 = sub_100142DC4(v53);

      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v86 = NSManagedObjectContext.fetch<A>(_:)();
      if (v81)
      {
        v84, v87, v88, v89, v90, v91, v92, v93;

        if (qword_100935AB8 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for Logger();
        sub_100006654(v94, qword_100938DC0);
        swift_errorRetain();
        v23 = Logger.logObject.getter();
        v95 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v23, v95))
        {

          return;
        }

        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v188 = v98;
        v189 = v79;
        *v96 = 136315394;
        swift_getMetatypeMetadata();
        v99 = String.init<A>(describing:)();
        v101 = v100;
        v102 = sub_10000668C(v99, v100, &v188);
        v101, v103, v104, v105, v106, v107, v108, v109;
        *(v96 + 4) = v102;
        *(v96 + 12) = 2112;
        swift_errorRetain();
        v110 = _swift_stdlib_bridgeErrorToNSError();
        *(v96 + 14) = v110;
        *v97 = v110;
        _os_log_impl(&_mh_execute_header, v23, v95, "%s: Error fetching REMCDReminders: %@", v96, 0x16u);
        sub_1000050A4(v97, &unk_100938E70, &unk_100797230);

        sub_10000607C(v98);

LABEL_4:

LABEL_5:

        return;
      }

      v126 = v86;

      if (v126 >> 62)
      {
        v134 = _CocoaArrayWrapper.endIndex.getter();
        if (!v134)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v134 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v134)
        {
          goto LABEL_63;
        }
      }

      if (v134 < 1)
      {
        __break(1u);
        goto LABEL_73;
      }

      for (i = 0; i != v134; ++i)
      {
        if ((v126 & 0xC000000000000001) != 0)
        {
          v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v136 = *(v126 + 8 * i + 32);
        }

        v137 = v136;
        [v136 setDueDateDeltaAlertsData:0];
        v138 = v137;
        [v138 updateChangeCount];
        v139 = [v138 resolutionTokenMap];
        if (v139)
        {
          v140 = v139;
          v141 = String._bridgeToObjectiveC()();
          [v140 updateForKey:v141];

          v142 = v140;
          [v138 setResolutionTokenMap:v142];
        }
      }

LABEL_63:
      v84, v127, v128, v129, v130, v131, v132, v133;
      v126, v144, v145, v146, v147, v148, v149, v150;
      v151 = v182;
      if (([v182 hasChanges] & 1) == 0)
      {
        return;
      }

      v189 = 0;
      v152 = [v151 save:&v189];
      v153 = v189;
      if (v152)
      {

        v154 = v153;
        return;
      }

      v187 = v189;
      v155 = v189;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935AB8 == -1)
      {
LABEL_69:
        v156 = type metadata accessor for Logger();
        sub_100006654(v156, qword_100938DC0);
        swift_errorRetain();
        v157 = Logger.logObject.getter();
        v158 = static os_log_type_t.error.getter();

        v159 = os_log_type_enabled(v157, v158);
        v160 = v177;
        if (v159)
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v189 = v163;
          *v161 = 136315394;
          v164 = sub_1001424F8(v160);
          v166 = v165;
          v167 = sub_10000668C(v164, v165, &v189);
          v166, v168, v169, v170, v171, v172, v173, v174;
          *(v161 + 4) = v167;
          *(v161 + 12) = 2112;
          swift_errorRetain();
          v175 = _swift_stdlib_bridgeErrorToNSError();
          *(v161 + 14) = v175;
          *v162 = v175;
          _os_log_impl(&_mh_execute_header, v157, v158, "%s: Error saving: %@", v161, 0x16u);
          sub_1000050A4(v162, &unk_100938E70, &unk_100797230);

          sub_10000607C(v163);
        }

        else
        {
        }

        return;
      }

LABEL_73:
      swift_once();
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  swift_once();
  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100938DC0);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v188 = v27;
    *v25 = 136315394;
    v189 = v177;
    swift_getMetatypeMetadata();
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = sub_10000668C(v28, v29, &v188);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v25 + 4) = v31;
    *(v25 + 12) = 2112;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v39;
    *v26 = v39;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s: Error fetching REMCDDueDateDeltaAlerts: %@", v25, 0x16u);
    sub_1000050A4(v26, &unk_100938E70, &unk_100797230);

    sub_10000607C(v27);

    goto LABEL_4;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100142528(uint64_t a1)
{
  v47 = type metadata accessor for UUID();
  v2 = *(v47 - 8);
  __chkstk_darwin(v47, v3);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v40 = &v38 - v7;
  __chkstk_darwin(v8, v9);
  v39 = &v38 - v10;
  v11 = *(a1 + 16);
  v50 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v12 = *(a1 + 64);
  v42 = a1 + 64;
  v13 = -1;
  v14 = -1 << *(a1 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & v12;
  v41 = (63 - v14) >> 6;
  v48 = a1;
  v49 = v2;
  v45 = v11;
  if (v11)
  {
    v43 = v2 + 8;
    v44 = v2 + 16;

    v16 = 0;
    v17 = 0;
    while (v15)
    {
      v18 = v17;
LABEL_6:
      ++v16;
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v49;
      v22 = v46;
      v21 = v47;
      (*(v49 + 16))(v46, *(v48 + 48) + *(v49 + 72) * (v19 | (v18 << 6)), v47);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v25 = [ObjCClassFromMetadata objectIDWithUUID:isa];

      (*(v20 + 8))(v22, v21);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v16 == v45)
      {
        goto LABEL_13;
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v41)
      {
        goto LABEL_24;
      }

      v15 = *(v42 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {

    v18 = 0;
LABEL_13:
    v46 = (v49 + 32);
    v27 = v41;
    v26 = v42;
    if (!v15)
    {
      goto LABEL_15;
    }

    do
    {
      v28 = v18;
LABEL_19:
      v29 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v30 = v49;
      v31 = v40;
      v32 = v47;
      (*(v49 + 16))(v40, *(v48 + 48) + *(v49 + 72) * (v29 | (v28 << 6)), v47);
      v33 = v39;
      (*(v30 + 32))(v39, v31, v32);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v34 = swift_getObjCClassFromMetadata();
      v35 = UUID._bridgeToObjectiveC()().super.isa;
      v36 = [v34 objectIDWithUUID:v35];

      (*(v30 + 8))(v33, v32);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v27 = v41;
      v26 = v42;
    }

    while (v15);
LABEL_15:
    while (1)
    {
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        return v50;
      }

      v15 = *(v26 + 8 * v28);
      ++v18;
      if (v15)
      {
        v18 = v28;
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t sub_10014294C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  return v3;
}

id RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100142C60()
{
  v0 = sub_10000C2B0();
  type metadata accessor for REMCDDueDateDeltaAlert();
  v1 = [objc_allocWithZone(NSFetchRequest) init];
  v2 = [swift_getObjCClassFromMetadata() entity];
  [v1 setEntity:v2];

  [v1 setAffectedStores:0];
  [v1 setPredicate:v0];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791300;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000001007EA710;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 setPropertiesToFetch:isa];

  [v1 setFetchBatchSize:50];
  return v1;
}

id sub_100142DC4(uint64_t a1)
{
  v2 = _s10PredicatesOMa(0);
  __chkstk_darwin(v2, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = sub_100142528(a1);
  v5[8] = 1;
  swift_storeEnumTagMultiPayload();
  v6 = sub_100043AA8();
  sub_1000513B4(v5);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007912F0;
  *(v9 + 32) = 0x696669746E656469;
  *(v9 + 40) = 0xEA00000000007265;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = 0xD000000000000016;
  *(v9 + 72) = 0x80000001007E8FD0;
  *(v9 + 88) = &type metadata for String;
  strcpy((v9 + 96), "ckCloudState");
  *(v9 + 109) = 0;
  *(v9 + 110) = -5120;
  *(v9 + 120) = &type metadata for String;
  strcpy((v9 + 128), "ckIdentifier");
  *(v9 + 141) = 0;
  *(v9 + 142) = -5120;
  *(v9 + 152) = &type metadata for String;
  strcpy((v9 + 160), "ckDirtyFlags");
  *(v9 + 173) = 0;
  *(v9 + 174) = -5120;
  *(v9 + 216) = &type metadata for String;
  *(v9 + 184) = &type metadata for String;
  *(v9 + 192) = 0xD00000000000001ELL;
  *(v9 + 200) = 0x80000001007EC560;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9, v11, v12, v13, v14, v15, v16, v17;
  [v7 setPropertiesToFetch:isa];

  [v7 setFetchBatchSize:50];
  return v7;
}

void sub_100143064(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaDictionary.count.getter();
    if (!v2)
    {
      return;
    }

    v39 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v36 = __CocoaDictionary.startIndex.getter();
    v37 = v3;
    v38 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v39 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v4 = _HashTable.startBucket.getter();
  v5 = *(v1 + 36);
  v36 = v4;
  v37 = v5;
  v38 = 0;
LABEL_7:
  v6 = 0;
  v32 = v2;
  v33 = v1;
  while (v6 < v2)
  {
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v24 = v36;
    v25 = v37;
    v26 = v38;
    sub_10014ABEC(v35, v36, v37, v38, v1, &unk_10093F5F0, REMAssignment_ptr, sub_1003643F8);
    v28 = v27;
    v29 = v35[0];
    v30 = [v35[0] objectID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v34)
    {
      v1 = v33;
      if (!v26)
      {
        goto LABEL_21;
      }

      if (__CocoaDictionary.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v32;
      v23 = v6 + 1;
      sub_1000F5104(&qword_100939238, &unk_100795D20);
      v31 = Dictionary.Index._asCocoa.modify();
      __CocoaDictionary.formIndex(after:isUnique:)();
      v31(v35, 0);
    }

    else
    {
      v1 = v33;
      sub_10014AA28(v24, v25, v26, v33, &unk_10093F5F0, REMAssignment_ptr, sub_1003643F8);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      sub_100010E34(v24, v25, v26, v13, v14, v15, v16, v17);
      v36 = v8;
      v37 = v10;
      v38 = v12 & 1;
      v2 = v32;
      v23 = v6 + 1;
    }

    ++v6;
    if (v23 == v2)
    {
      sub_100010E34(v36, v37, v38, v18, v19, v20, v21, v22);
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_100143354()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938E90);
  v1 = sub_100006654(v0, qword_100938E90);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001435F4()
{
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100791340;
  v3 = *(v0 + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription);
  v2 = *(v0 + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription + 8);
  *(v1 + 56) = &type metadata for String;
  v4 = sub_100006600();
  v5 = 7104878;
  if (v2)
  {
    v5 = v3;
  }

  v6 = 0xE300000000000000;
  if (v2)
  {
    v6 = v2;
  }

  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID);
  v8 = *(v0 + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID + 8);
  *(v1 + 96) = &type metadata for String;
  *(v1 + 104) = v4;
  *(v1 + 64) = v4;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;

  return String.init(format:_:)();
}

id sub_1001438C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RDAssignmentNotificationEngine.BabysitTarget();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001438F4(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  sub_10014394C();

  objc_autoreleasePoolPop(v1);
}

void sub_10014394C()
{
  v0 = [objc_opt_self() sharedBabysitter];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    [v1 giveAccountWithIDAnotherChance:v2];

    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100938E90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136446210;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v8 = Optional.descriptionOrNil.getter();
      v10 = v9;
      v11 = sub_10000668C(v8, v9, &v31);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "RDAssignmentNotificationEngine: Reset babysitter upon enabled/disabled CloudKit account(s) for {waiterID: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }
  }

  v19 = sub_100146580();
  v19, v20, v21, v22, v23, v24, v25, v26;
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100938E90);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "RDAssignmentNotificationEngine: (Re-)initialized changeTrackingHelpers upon enabled/disabled CloudKit account(s).", v30, 2u);
  }
}

uint64_t sub_100143BF0()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v54[-v4];
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_storeControllerObservationToken;
  swift_beginAccess();
  sub_10014D7CC(v1 + v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000050A4(v5, &qword_100942CA0, &qword_1007A3810);
LABEL_5:
    *(v1 + 24), v12, v13, v14, v15, v16, v17, v18;
    *(v1 + 40), v25, v26, v27, v28, v29, v30, v31;
    *(v1 + 56), v32, v33, v34, v35, v36, v37, v38;

    swift_unknownObjectRelease();

    sub_1000050A4(v1 + v11, &qword_100942CA0, &qword_1007A3810);
    *(v1 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_cloudKitAccountsDidChangeSubscriptions), v39, v40, v41, v42, v43, v44, v45;
    *(v1 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_currentUserShareParticipantIDsOverrideByListID), v46, v47, v48, v49, v50, v51, v52;
    return v1;
  }

  sub_10014D83C(v5, v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v19 = *(v1 + 96);
  v20 = *(v19 + 40);

  os_unfair_lock_lock(v20);
  __chkstk_darwin(v21, v22);
  *&v54[-16] = v10;
  swift_beginAccess();
  v23 = sub_1002601AC(sub_10014D8A4, &v54[-32]);
  v24 = *(*(v19 + 48) + 16);
  if (v24 >= v23)
  {
    sub_100260C60(v23, v24);
    swift_endAccess();
    os_unfair_lock_unlock(v20);

    sub_10014D8C4(v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    goto LABEL_5;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100143EDC()
{
  sub_100143BF0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAssignmentNotificationEngine(uint64_t a1)
{
  result = qword_100938F90;
  if (!qword_100938F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100143F88(uint64_t a1)
{
  sub_1001490E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100144068()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 72);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if ((*(v0 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_started) & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    sub_100144258(v0);
    objc_autoreleasePoolPop(v13);
    return;
  }

  if (qword_100935AC0 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100938E90);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDAssignmentNotificationEngine.start() must be called exactly once", v12, 2u);
  }
}

void sub_100144258(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v96 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97, v6);
  v94 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchTimeInterval();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93, v8);
  v91 = (v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v101 = v10;
  v102 = v11;
  __chkstk_darwin(v10, v12);
  v90 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v100 = v84 - v16;
  v17 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v88 = *(v17 - 1);
  __chkstk_darwin(v17, v18);
  v98 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = v84 - v22;
  v24 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v24 - 8, v25);
  v99 = v84 - v26;
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v89 = sub_100006654(v27, qword_100938E90);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Starting RDAssignmentNotificationEngine", v30, 2u);
  }

  v31 = sub_100146580();
  *(a1 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_started) = 1;
  if (*(a1 + 120))
  {
    v31, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v85 = v31;
    v86 = v3;
    v87 = v2;
    v39 = *(a1 + 96);
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    v41 = [objc_opt_self() cdEntityName];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    *(inited + 32) = v42;
    *(inited + 40) = v44;
    v45 = sub_10038D894(inited);
    swift_setDeallocating();
    sub_100034610(inited + 32);
    v46 = *(a1 + 72);
    v47 = swift_allocObject();
    swift_weakInit();

    v48 = v99;
    UUID.init()();
    sub_100026CD8(v48, v23, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    *&v23[v17[5]] = v45;
    *&v23[v17[6]] = v46;
    v49 = &v23[v17[7]];
    *v49 = sub_10014D738;
    v49[1] = v47;
    v50 = *(v39 + 40);

    v84[1] = v46;

    os_unfair_lock_lock(v50);
    sub_100026CD8(v23, v98, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    swift_beginAccess();
    v51 = *(v39 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 48) = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = sub_100365714(0, *v51->clientIdentity + 1, 1, v51);
      *(v39 + 48) = v51;
    }

    v54 = *v51->clientIdentity;
    v53 = *&v51->clientIdentity[8];
    if (v54 >= v53 >> 1)
    {
      v51 = sub_100365714((v53 > 1), v54 + 1, 1, v51);
    }

    *v51->clientIdentity = v54 + 1;
    sub_10014D83C(v98, v51 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v54, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    *(v39 + 48) = v51;
    swift_endAccess();
    os_unfair_lock_unlock(v50);
    v45, v55, v56, v57, v58, v59, v60, v61;

    sub_10014D8C4(v23, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

    v62 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
    v63 = v99;
    (*(*(v62 - 8) + 56))(v99, 0, 1, v62);
    v64 = OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_storeControllerObservationToken;
    swift_beginAccess();
    sub_10014D740(v63, a1 + v64);
    swift_endAccess();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "os_transaction INIT {name: com.apple.remindd.assignmentNotificationEngine.start}", v67, 2u);
    }

    v68 = os_transaction_create();
    v69 = v90;
    static DispatchTime.now()();
    v70 = v91;
    *v91 = 5;
    v71 = v92;
    v72 = v93;
    (*(v92 + 104))(v70, enum case for DispatchTimeInterval.seconds(_:), v93);
    + infix(_:_:)();
    (*(v71 + 8))(v70, v72);
    v73 = *(v102 + 8);
    v102 += 8;
    v73(v69, v101);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 134217984;
      *(v76 + 4) = 5;
      _os_log_impl(&_mh_execute_header, v74, v75, "RDAssignmentNotificationEngine: dispatch to call refreshFromLastConsumedOnLaunchIfNeeded {after: %ld}", v76, 0xCu);
    }

    v77 = swift_allocObject();
    v78 = v85;
    v77[2] = a1;
    v77[3] = v78;
    v77[4] = v68;
    aBlock[4] = sub_10014D7B0;
    aBlock[5] = v77;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008E6290;
    v79 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    v80 = v94;
    static DispatchQoS.unspecified.getter();
    v104 = &_swiftEmptyArrayStorage;
    sub_10000AB38();
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v81 = v96;
    v82 = v87;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v83 = v100;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v79);
    swift_unknownObjectRelease();
    (*(v86 + 8))(v81, v82);
    (*(v95 + 8))(v80, v97);
    v73(v83, v101);
  }
}

void sub_100144CDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = objc_autoreleasePoolPush();
    sub_100144E0C();
    objc_autoreleasePoolPop(v2);
  }

  else
  {
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100938E90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received storeController changed notification after RDAssignmentNotificationEngine was deallocated", v6, 2u);
    }
  }
}

uint64_t sub_100144E0C()
{
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100938E90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "os_transaction INIT {name: com.apple.remindd.assignmentNotificationEngine.storeControllerChange}", v3, 2u);
  }

  v4 = os_transaction_create();
  v5 = sub_100146580();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  swift_unknownObjectRetain();
  sub_1001456C8(v5, 0, sub_10014D7C4, v6);
  swift_unknownObjectRelease();
  v5, v7, v8, v9, v10, v11, v12, v13;
}

void sub_100144F74()
{
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100938E90);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.assignmentNotificationEngine.storeControllerChange}", v2, 2u);
  }
}

void sub_10014505C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  swift_unknownObjectRetain();
  sub_1001452D4(a2, sub_10014D7BC, v6);

  objc_autoreleasePoolPop(v5);
}

void sub_100145100(char a1)
{
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100938E90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    sub_1000F5104(&qword_100939340, &qword_1007A3950);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v20);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDAssignmentNotificationEngine: refreshFromLastConsumedOnLaunchIfNeeded completed {refreshed: %s}", v4, 0xCu);
    sub_10000607C(v5);
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "os_transaction RELEASE {name: com.apple.remindd.assignmentNotificationEngine.start}", v19, 2u);
  }
}

void sub_1001452D4(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    LOBYTE(v6) = 0;
    v7 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v66 = i;
    v67 = v3;
    v68 = v3 & 0xC000000000000001;
    v69 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          goto LABEL_25;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {

        if (v11 == i)
        {
          goto LABEL_23;
        }

        LOBYTE(v6) = 1;
        ++v5;
      }

      else
      {
        v12 = [objc_msgSend(v9 "account")];
        swift_unknownObjectRelease();
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v70 = 0;
        v71 = 0;
        if ([v10 compareCurrentChangeTokenToLastConsumedWithResult:&v71 error:&v70])
        {
          v16 = v71;
          v17 = v70;

          v15, v18, v19, v20, v21, v22, v23, v24;
          v6 = v16 == 4;
        }

        else
        {
          v25 = v70;
          v26 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_100935AC0 != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          sub_100006654(v27, qword_100938E90);

          swift_errorRetain();
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.error.getter();
          v15, v30, v31, v32, v33, v34, v35, v36;

          if (os_log_type_enabled(v28, v29))
          {
            v44 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *v44 = 136446466;
            v45 = sub_10000668C(v13, v15, &v71);
            v15, v46, v47, v48, v49, v50, v51, v52;
            *(v44 + 4) = v45;
            *(v44 + 12) = 2080;
            v70 = v26;
            swift_errorRetain();
            sub_1000F5104(&unk_1009399E0, &qword_100795D00);
            v53 = String.init<A>(describing:)();
            v55 = v54;
            v56 = sub_10000668C(v53, v54, &v71);
            v55, v57, v58, v59, v60, v61, v62, v63;
            *(v44 + 14) = v56;
            _os_log_impl(&_mh_execute_header, v28, v29, "RDAssignmentNotificationEngine: Failed to compareCurrentChangeTokenToLastConsumed {account: %{public}s, error: %s}", v44, 0x16u);
            swift_arrayDestroy();
            v3 = v67;

            i = v66;
          }

          else
          {
            v15, v37, v38, v39, v40, v41, v42, v43;
          }

          v6 = 0;
          v7 = v68;
        }

        v8 = v69;
        if (v11 == i)
        {
          if (!v6)
          {
            goto LABEL_27;
          }

LABEL_23:
          sub_1001456C8(v3, 1, a2, a3);
          return;
        }

        ++v5;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  if (a2)
  {

    a2(0);
    sub_10003E114(a2, a3);
  }
}

void sub_1001456C8(unint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v206 = a4;
  v207 = a3;
  LOBYTE(v6) = a2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = (&v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + 72);
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8, v11);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v8);
  if ((v14 & 1) == 0)
  {
    goto LABEL_75;
  }

  v16 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_76;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (1)
    {
      v19 = 24;
      if (v6)
      {
        v19 = 40;
      }

      v20 = *(v5 + v19);

      v21 = [objc_opt_self() sharedBabysitter];
      if (!v21)
      {
        break;
      }

      v29 = v21;
      v30 = *(v5 + 64);
      v31 = String._bridgeToObjectiveC()();
      v20, v32, v33, v34, v35, v36, v37, v38;
      v39 = [v29 tokenByRegisteringAccount:v30 forOperationWithName:v31];

      if (!v39)
      {
        goto LABEL_11;
      }

      v200 = v39;
      v40 = [objc_opt_self() daemonUserDefaults];
      LODWORD(v208) = [v40 enableAssignmentNotifications];

      v41 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v5 + 104)];
      v209 = _swiftEmptyDictionarySingleton;
      if (v16)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v6)
      {
        v95 = v5;
        v96 = 0;
        v16 = a1 & 0xC000000000000001;
        v5 = a1 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v16)
          {
            v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v96 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_73;
            }

            v97 = *(a1 + 8 * v96 + 32);
          }

          v98 = v97;
          v99 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            break;
          }

          v211[0] = v97;
          sub_100146C68(v211, v208 ^ 1, v41, v95, &v209);

          ++v96;
          if (v99 == v6)
          {
            v100 = v209;
            v5 = v95;
            goto LABEL_37;
          }
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      else
      {
        v100 = _swiftEmptyDictionarySingleton;
LABEL_37:

        if ((v208 & 1) == 0)
        {
          v139 = v207;
          if (qword_100935AC0 != -1)
          {
            swift_once();
          }

          v140 = type metadata accessor for Logger();
          sub_100006654(v140, qword_100938E90);
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            *v143 = 0;
            v144 = "RDAssignmentNotificationEngine: User has disabled assignment notifications.";
LABEL_66:
            _os_log_impl(&_mh_execute_header, v141, v142, v144, v143, 2u);
LABEL_67:
          }

LABEL_69:

          v182 = swift_allocObject();
          v183 = v200;
          v182[2] = v200;
          v182[3] = v139;
          v184 = v206;
          v182[4] = v206;
          v185 = v183;
          sub_10003E124(v139, v184);
          sub_100148C58(v100, sub_10014D704, v182);

          v100, v186, v187, v188, v189, v190, v191, v192;

          return;
        }

        v199 = v5;
        a1 = &v100->storeProvider[2];
        v101 = 1 << v100->clientIdentity[16];
        v102 = -1;
        if (v101 < 64)
        {
          v102 = ~(-1 << v101);
        }

        v16 = v102 & *&v100->storeProvider[2];
        v5 = (v101 + 63) >> 6;
        v202 = "d.assignmentNotificationEngine";

        v103 = 0;
        v208 = 0;
        v104 = 0xE000000000000000;
        v201 = xmmword_100791340;
        v203 = v100;
        while (v16)
        {
          v205 = v104;
LABEL_49:
          v132 = (v103 << 9) | (8 * __clz(__rbit64(v16)));
          v133 = *(*&v100->clientIdentity[32] + v132);
          v134 = *(*&v100->clientIdentity[40] + v132);
          sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
          v135 = swift_allocObject();
          *(v135 + 16) = v201;
          v136 = v133;

          v204 = v136;
          v137 = [v136 objectID];
          *(v135 + 56) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          *(v135 + 64) = sub_10000CDE4(&qword_100939278, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
          *(v135 + 32) = v137;
          v138 = v208;
          if ((v134 & 0xC000000000000001) != 0)
          {
            v105 = __CocoaDictionary.count.getter();
          }

          else
          {
            v105 = *(v134 + 16);
          }

          v16 &= v16 - 1;
          *(v135 + 96) = &type metadata for Int;
          *(v135 + 104) = &protocol witness table for Int;
          *(v135 + 72) = v105;
          v106 = String.init(format:_:)();
          v108 = v107;
          v209 = v138;
          v6 = v205;
          v210 = v205;

          v109._countAndFlagsBits = v106;
          v109._object = v108;
          String.append(_:)(v109);
          v134, v110, v111, v112, v113, v114, v115, v116;

          v6, v117, v118, v119, v120, v121, v122, v123;
          v108, v124, v125, v126, v127, v128, v129, v130;
          v104 = v210;
          v208 = v209;
          v100 = v203;
        }

        while (1)
        {
          v131 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            break;
          }

          if (v131 >= v5)
          {

            v152 = HIBYTE(v104) & 0xF;
            if ((v104 & 0x2000000000000000) == 0)
            {
              v152 = v208 & 0xFFFFFFFFFFFFLL;
            }

            if (v152)
            {
              v139 = v207;
              if (qword_100935AC0 != -1)
              {
                swift_once();
              }

              v153 = type metadata accessor for Logger();
              sub_100006654(v153, qword_100938E90);

              v141 = Logger.logObject.getter();
              v154 = static os_log_type_t.default.getter();
              v104, v155, v156, v157, v158, v159, v160, v161;
              if (os_log_type_enabled(v141, v154))
              {
                v169 = swift_slowAlloc();
                v170 = swift_slowAlloc();
                v209 = v170;
                *v169 = 136446210;
                v171 = sub_10000668C(v208, v104, &v209);
                v172 = v104;
                v173 = v171;
                v172, v174, v175, v176, v177, v178, v179, v180;
                *(v169 + 4) = v173;
                _os_log_impl(&_mh_execute_header, v141, v154, "RDAssignmentNotificationEngine: Assignments to notify in this change set {stats: %{public}s}", v169, 0xCu);
                sub_10000607C(v170);

                goto LABEL_67;
              }

              v104, v162, v163, v164, v165, v166, v167, v168;
            }

            else
            {
              v104, v145, v146, v147, v148, v149, v150, v151;
              v139 = v207;
              if (qword_100935AC0 != -1)
              {
                swift_once();
              }

              v181 = type metadata accessor for Logger();
              sub_100006654(v181, qword_100938E90);
              v141 = Logger.logObject.getter();
              v142 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v141, v142))
              {
                v143 = swift_slowAlloc();
                *v143 = 0;
                v144 = "RDAssignmentNotificationEngine: No assignment to notify in this change set";
                goto LABEL_66;
              }
            }

            goto LABEL_69;
          }

          v16 = *(a1 + 8 * v131);
          ++v103;
          if (v16)
          {
            v205 = v104;
            v103 = v131;
            goto LABEL_49;
          }
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
        goto LABEL_77;
      }
    }

    v20, v22, v23, v24, v25, v26, v27, v28;
LABEL_11:
    v42 = objc_opt_self();
    v43 = *(v5 + 24);

    v44 = String._bridgeToObjectiveC()();
    v43, v45, v46, v47, v48, v49, v50, v51;
    v52 = [v42 babySatErrorWithOperationName:v44];

    sub_1000F5104(&unk_10093D030, &unk_10079C950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEA00000000007265;
    v54 = v5;
    v55 = *(v5 + 24);

    v56 = String._bridgeToObjectiveC()();
    v55, v57, v58, v59, v60, v61, v62, v63;
    *(inited + 48) = v56;
    v64 = sub_10038D9FC(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
    type metadata accessor for Analytics();
    v5 = *(v54 + 56);

    v65 = sub_1004646CC();
    v64, v66, v67, v68, v69, v70, v71, v72;
    v73 = v52;
    static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();
    v5, v74, v75, v76, v77, v78, v79, v80;
    v65, v81, v82, v83, v84, v85, v86, v87;

    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100006654(v88, qword_100938E90);

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v209 = v92;
      *v91 = 136446210;
      *(v91 + 4) = sub_10000668C(0xD000000000000039, 0x80000001007EC880, &v209);
      _os_log_impl(&_mh_execute_header, v89, v90, "Babysitting RDAssignmentNotificationEngine because it failed too many times {waiterID: %{public}s}.", v91, 0xCu);
      sub_10000607C(v92);
    }

    v6 = 0;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v93 = *(a1 + 8 * v6 + 32);
      }

      v94 = v93;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v209 = v93;
      sub_100146330(&v209);

      ++v6;
    }

    while (v5 != v18);
    if (v207)
    {
      v207(0);
    }
  }

  else
  {
LABEL_77:
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v193 = type metadata accessor for Logger();
    sub_100006654(v193, qword_100938E90);
    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.default.getter();
    v196 = os_log_type_enabled(v194, v195);
    v197 = v207;
    if (v196)
    {
      v198 = swift_slowAlloc();
      *v198 = 0;
      _os_log_impl(&_mh_execute_header, v194, v195, "RDAssignmentNotificationEngine: No account eligible for assignment change tracking, no assignment to notify.", v198, 2u);
    }

    if (v197)
    {
      v197(0);
    }
  }
}

void sub_100146330(id *a1)
{
  v1 = *a1;
  v2 = [objc_msgSend(*a1 "account")];
  swift_unknownObjectRelease();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  [v1 markChangesConsumed:1];
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100938E90);

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v5, v10, v11, v12, v13, v14, v15, v16;
  if (os_log_type_enabled(v8, v9))
  {
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v24 = 136446466;
    v25 = sub_10000668C(v3, v5, &v44);
    v5, v26, v27, v28, v29, v30, v31, v32;
    *(v24 + 4) = v25;
    *(v24 + 12) = 2082;
    [v7 upToToken];
    sub_1000F5104(&unk_100939330, qword_100795D90);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    v36 = sub_10000668C(v33, v34, &v44);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v24 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDAssignmentNotificationEngine: Mark to current token as consumed due to Babysitting {account: %{public}s, token: %{public}s}", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v5, v17, v18, v19, v20, v21, v22, v23;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100146580()
{
  v117 = type metadata accessor for UUID();
  v1 = *(v117 - 8);
  __chkstk_darwin(v117, v2);
  v4 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v0 + 104)];
  v119 = 0;
  v118 = v5;
  v6 = [v5 fetchActiveCloudKitAccountObjectIDsWithFetchOption:2 error:&v119];
  v7 = v119;
  if (!v6)
  {
    v82 = v119;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_100006654(v83, qword_100938E90);
    swift_errorRetain();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v119 = v87;
      *v86 = 136446210;
      swift_getErrorValue();
      v88 = Error.rem_errorDescription.getter();
      v90 = v89;
      v91 = sub_10000668C(v88, v89, &v119);
      v90, v92, v93, v94, v95, v96, v97, v98;
      *(v86 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v84, v85, "RDAssignmentNotificationEngine: Failed to fetch CloudKit accounts. Not tracking changes. {error: %{public}s}", v86, 0xCu);
      sub_10000607C(v87);
    }

    return &_swiftEmptyArrayStorage;
  }

  v8 = v6;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v7;

  if (!(v9 >> 62))
  {
    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      v119 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_20:
    v9, v11, v12, v13, v14, v15, v16, v17;
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_100006654(v100, qword_100938E90);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "RDAssignmentNotificationEngine: Not tracking changes since there is no logged in or enabled CloudKit account.", v103, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  v99 = _CocoaArrayWrapper.endIndex.getter();
  if (!v99)
  {

    v9, v104, v105, v106, v107, v108, v109, v110;
    return &_swiftEmptyArrayStorage;
  }

  v18 = v99;
  v119 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_5:
  v115 = v18;
  v19 = objc_opt_self();
  v20 = 0;
  v113 = v9 & 0xC000000000000001;
  v114 = v19;
  v112 = "ent and 1 originator.";
  v21 = (v1 + 8);
  v111 = xmmword_100791300;
  v116 = v9;
  do
  {
    if (v113)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(v9 + 8 * v20 + 32);
    }

    v23 = v22;
    ++v20;
    v24 = [objc_allocWithZone(type metadata accessor for ChangeTrackingAccountProvider()) init];
    v25 = [v23 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = UUID.uuidString.getter();
    v28 = v27;
    v29 = *v21;
    v30 = v117;
    (*v21)(v4, v117);
    v31 = &v24[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID];
    v32 = *&v24[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID + 8];
    *v31 = v26;
    v31[1] = v28;
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = *&v24[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID];
    *&v24[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID] = v23;
    v41 = v23;

    v42 = [v41 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = UUID.uuidString.getter();
    v45 = v44;
    v29(v4, v30);
    v46 = &v24[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription];
    v47 = *&v24[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription + 8];
    *v46 = v43;
    v46[1] = v45;
    v47, v48, v49, v50, v51, v52, v53, v54;
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v55 = swift_allocObject();
    *(v55 + 16) = v111;
    v56 = v24;
    v57 = v118;
    v58 = [v114 cdEntityName];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    *(v55 + 32) = v59;
    *(v55 + 40) = v61;
    v62 = objc_allocWithZone(REMDAChangeTrackingHelper);
    v63 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v55, v65, v66, v67, v68, v69, v70, v71;
    v72 = [v62 initWithREMDAAccount:v56 clientName:v63 withREMStore:v57 entityNames:isa];

    v73 = [v72 fetchAndInitializeChangeTrackingStateIfNeeded];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v9 = v116;
  }

  while (v115 != v20);
  v116, v74, v75, v76, v77, v78, v79, v80;

  return v119;
}

void sub_100146C68(id *a1, char a2, void *a3, uint64_t a4, id *a5)
{
  v8 = *a1;
  v9 = [objc_msgSend(*a1 "account")];
  swift_unknownObjectRelease();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v250 = v11;

  v12 = [v8 sinceToken];
  if (!v12)
  {
    if (qword_100935AC0 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_9;
  }

  v13 = v12;
  v14 = [v8 upToToken];
  if (v14)
  {
    v15 = v14;
    v246 = v8;
    v255 = v10;
    if (a2)
    {
      if (qword_100935AC0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100938E90);

      v17 = v13;
      v18 = v15;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      v250, v21, v22, v23, v24, v25, v26, v27;
      if (os_log_type_enabled(v19, v20))
      {
        v241 = v13;
        v35 = swift_slowAlloc();
        v239 = v15;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v261 = v37;
        *v35 = 136446722;
        v38 = sub_10000668C(v10, v250, &v261);
        v250, v39, v40, v41, v42, v43, v44, v45;
        *(v35 + 4) = v38;
        v8 = v246;
        *(v35 + 12) = 2114;
        *(v35 + 14) = v17;
        *(v35 + 22) = 2114;
        *(v35 + 24) = v18;
        *v36 = v241;
        v36[1] = v239;
        v46 = v17;
        v47 = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "RDAssignmentNotificationEngine: User opts to not posting assignment notifications, mark change set as consumed right away {account: %{public}s, since: %{public}@, upTo: %{public}@}", v35, 0x20u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        sub_10000607C(v37);
      }

      else
      {
        v250, v28, v29, v30, v31, v32, v33, v34;
      }

      [v8 markChangesConsumed];
      return;
    }

    v237 = a5;
    v238 = a4;
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100006654(v97, qword_100938E90);
    v10 = v250;

    v98 = v13;
    v99 = v13;
    v100 = v15;
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();

    v250, v103, v104, v105, v106, v107, v108, v109;
    v245 = v99;
    v248 = v100;
    v243 = v98;
    v240 = v15;
    if (os_log_type_enabled(v101, v102))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v261 = v253;
      *v110 = 136446722;
      *(v110 + 4) = sub_10000668C(v255, v250, &v261);
      *(v110 + 12) = 2114;
      *(v110 + 14) = v99;
      *(v110 + 22) = 2114;
      *(v110 + 24) = v248;
      *v111 = v98;
      v111[1] = v15;
      v112 = v99;
      v113 = v248;
      _os_log_impl(&_mh_execute_header, v101, v102, "RDAssignmentNotificationEngine: Processing change set {account: %{public}s, since: %{public}@, upTo: %{public}@}", v110, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v253);
      v100 = v248;
    }

    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    v114 = [v8 changedModelObjectsOfModelClass:swift_getObjCClassFromMetadata() ofChangeType:0];
    if (v114)
    {
      v122 = v114;
      sub_1000F5104(&qword_1009392E0, &qword_100795D60);
      v123 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v261 = _swiftEmptyDictionarySingleton;
      if (v123 >> 62)
      {
        v131 = _CocoaArrayWrapper.endIndex.getter();
        v50 = v99;
        if (v131)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v131 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v50 = v99;
        if (v131)
        {
LABEL_22:
          v132 = 0;
          v254 = v123 & 0xFFFFFFFFFFFFFF8;
          v256 = v123 & 0xC000000000000001;
          v249 = v123;
          v252 = v131;
          do
          {
            if (v256)
            {
              v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v10 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }
            }

            else
            {
              if (v132 >= *(v254 + 16))
              {
                __break(1u);
LABEL_43:
                swift_once();
LABEL_9:
                v48 = type metadata accessor for Logger();
                sub_100006654(v48, qword_100938E90);
                v49 = v250;

                v50 = Logger.logObject.getter();
                v51 = static os_log_type_t.error.getter();
                v250, v52, v53, v54, v55, v56, v57, v58;
                if (os_log_type_enabled(v50, v51))
                {
                  v66 = swift_slowAlloc();
                  v67 = swift_slowAlloc();
                  v261 = v67;
                  *v66 = 136446210;
                  v68 = sub_10000668C(v10, v250, &v261);
                  v250, v69, v70, v71, v72, v73, v74, v75;
                  *(v66 + 4) = v68;
                  _os_log_impl(&_mh_execute_header, v50, v51, "RDAssignmentNotificationEngine: No since-token from change tracking {account: %{public}s}", v66, 0xCu);
                  sub_10000607C(v67);

                  goto LABEL_38;
                }

LABEL_35:
                v151 = v49;
LABEL_37:
                v151, v59, v60, v61, v62, v63, v64, v65;
LABEL_38:

                return;
              }

              v49 = *(v123 + 8 * v132 + 32);
              swift_unknownObjectRetain();
              v10 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
                goto LABEL_34;
              }
            }

            objc_opt_self();
            v133 = swift_dynamicCastObjCClass();
            if (v133)
            {
              v260 = v133;
              v134 = v133;
              swift_unknownObjectRetain();
              v258 = [v134 reminderID];
              sub_1000F5104(&qword_1009392E8, &qword_100795D68);
              sub_10000CB48(&unk_1009392F0, &unk_10094F4A0, &qword_100795D70, &protocol conformance descriptor for [A]);
              v123 = v249;
              Dictionary<>.append(_:toCollectionUnderKey:)();
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRetain();
              v135 = Logger.logObject.getter();
              v136 = static os_log_type_t.fault.getter();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v135, v136))
              {
                v137 = swift_slowAlloc();
                v244 = swift_slowAlloc();
                v260 = v244;
                *v137 = 136315138;
                v138 = [(RDXPCStorePerformer *)v49 description];
                v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v141 = v140;

                v8 = v246;
                v142 = sub_10000668C(v139, v141, &v260);
                v143 = v141;
                v100 = v248;
                v143, v144, v145, v146, v147, v148, v149, v150;
                *(v137 + 4) = v142;
                v50 = v245;
                _os_log_impl(&_mh_execute_header, v135, v136, "RDAssignmentNotificationEngine: Tracked insertion is not an REMAssignment, huh? {inserted: %s}", v137, 0xCu);
                sub_10000607C(v244);

                v123 = v249;
              }

              swift_unknownObjectRelease();
            }

            ++v132;
          }

          while (v10 != v252);
        }
      }

      v250, v124, v125, v126, v127, v128, v129, v130;
      v123, v152, v153, v154, v155, v156, v157, v158;
      v166 = v261;
      if (*v261->clientIdentity)
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        sub_1000F5104(&qword_100939300, &qword_100795D78);
        sub_10000CB48(&qword_100939308, &qword_100939300, &qword_100795D78, &protocol conformance descriptor for [A : B].Keys);
        v167 = Sequence.elements<A>(ofType:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
        v167, v169, v170, v171, v172, v173, v174, v175;
        v261 = 0;
        v176 = [a3 fetchRemindersWithObjectIDs:isa error:&v261];

        v177 = v261;
        if (v176)
        {
          sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
          sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
          v178 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          v179 = v177;

          v261 = _swiftEmptyDictionarySingleton;
          v251 = v166;
          if ((v178 & 0xC000000000000001) != 0)
          {
            v180 = 0;
            v181 = 0;
            v182 = 0;
            v183 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
          }

          else
          {
            v208 = -1 << *(v178 + 32);
            v181 = ~v208;
            v180 = v178 + 64;
            v209 = -v208;
            if (v209 < 64)
            {
              v210 = ~(-1 << v209);
            }

            else
            {
              v210 = -1;
            }

            v182 = v210 & *(v178 + 64);
            v183 = v178;
          }

          v211 = 0;
          v257 = v183;
          if ((v183 & 0x8000000000000000) != 0)
          {
            goto LABEL_66;
          }

          while (1)
          {
            v212 = v211;
            v213 = v182;
            v214 = v211;
            if (!v182)
            {
              break;
            }

LABEL_64:
            v215 = (v213 - 1) & v213;
            v216 = (v214 << 9) | (8 * __clz(__rbit64(v213)));
            v217 = *(*(v183 + 48) + v216);
            v218 = *(*(v183 + 56) + v216);
            v219 = v217;
            v220 = v218;
            if (!v219)
            {
              goto LABEL_70;
            }

            while (1)
            {
              v260 = v220;
              v221 = v220;
              v259 = [v221 list];
              sub_1000F5104(&qword_100939310, &unk_100795D80);
              sub_10000CB48(&qword_100939318, &unk_100939320, &qword_1007AEAE0, &protocol conformance descriptor for [A]);
              v100 = v248;
              Dictionary<>.append(_:toCollectionUnderKey:)();

              v211 = v214;
              v182 = v215;
              v183 = v257;
              if ((v257 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_66:
              if (__CocoaDictionary.Iterator.next()())
              {
                swift_dynamicCast();
                v219 = v260;
                swift_dynamicCast();
                v220 = v260;
                v214 = v211;
                v215 = v182;
                if (v219)
                {
                  continue;
                }
              }

              goto LABEL_70;
            }
          }

          while (1)
          {
            v214 = v212 + 1;
            if (__OFADD__(v212, 1))
            {
              __break(1u);
            }

            if (v214 >= ((v181 + 64) >> 6))
            {
              break;
            }

            v213 = *(v180 + 8 * v214);
            ++v212;
            if (v213)
            {
              goto LABEL_64;
            }
          }

LABEL_70:
          sub_10001B860(v257);
          v178, v222, v223, v224, v225, v226, v227, v228;
          v229 = v261;
          v8 = v246;
          v166 = v251;
        }

        else
        {
          v192 = v261;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_errorRetain();
          v193 = Logger.logObject.getter();
          v194 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v193, v194))
          {
            v195 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            v261 = v196;
            *v195 = 136315138;
            swift_getErrorValue();
            v197 = Error.localizedDescription.getter();
            v199 = v198;
            v200 = sub_10000668C(v197, v198, &v261);
            v199, v201, v202, v203, v204, v205, v206, v207;
            *(v195 + 4) = v200;
            v8 = v246;
            _os_log_impl(&_mh_execute_header, v193, v194, "RDAssignmentNotificationEngine: Error ocurred when fetching inserted assignments' reminders {error: %s}", v195, 0xCu);
            sub_10000607C(v196);
          }

          else
          {
          }

          v229 = _swiftEmptyDictionarySingleton;
          v100 = v248;
        }

        sub_10014B0D0(v229, v238, v166, v237);
        v229, v230, v231, v232, v233, v234, v235, v236;

        swift_bridgeObjectRelease_n();
        [v8 markChangesConsumed];

        return;
      }

      v261, v159, v160, v161, v162, v163, v164, v165;
    }

    else
    {
      v250, v115, v116, v117, v118, v119, v120, v121;
      v50 = v99;
    }

    v184 = v50;
    v185 = v100;
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      *v188 = 138543618;
      *(v188 + 4) = v184;
      *(v188 + 12) = 2114;
      *(v188 + 14) = v185;
      *v189 = v243;
      v189[1] = v240;
      v190 = v184;
      v191 = v185;
      _os_log_impl(&_mh_execute_header, v186, v187, "RDAssignmentNotificationEngine: No inserted assignments found in change {since: %{public}@, upTo: %{public}@}", v188, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    [v8 markChangesConsumed];
    return;
  }

  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_100006654(v76, qword_100938E90);

  v77 = v13;
  v50 = Logger.logObject.getter();
  v78 = static os_log_type_t.info.getter();

  v250, v79, v80, v81, v82, v83, v84, v85;
  if (!os_log_type_enabled(v50, v78))
  {

    v151 = v250;
    goto LABEL_37;
  }

  v86 = swift_slowAlloc();
  v242 = v13;
  v87 = swift_slowAlloc();
  v88 = swift_slowAlloc();
  v261 = v88;
  *v86 = 136446466;
  v89 = sub_10000668C(v10, v250, &v261);
  v250, v250, v90, v91, v92, v93, v94, v95;
  *(v86 + 4) = v89;
  *(v86 + 12) = 2114;
  *(v86 + 14) = v77;
  *v87 = v242;
  v96 = v77;
  _os_log_impl(&_mh_execute_header, v50, v78, "RDAssignmentNotificationEngine: No updated change token from change tracking (no changes) {account: %{public}s, since: %{public}@}", v86, 0x16u);
  sub_1000050A4(v87, &unk_100938E70, &unk_100797230);

  sub_10000607C(v88);
}

void sub_100147DA0(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, id *a4)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a2 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_currentUserShareParticipantIDsOverrideByListID);
  if (v7)
  {

    v8 = v6;

    v9 = [v8 objectID];
    v17 = v9;
    if (*(v7 + 16))
    {
      v18 = sub_10002B924(v9);
      if (v10)
      {
        v19 = (*(v7 + 56) + 16 * v18);
        v20 = *v19;
        v83 = v19[1];

        v7, v21, v22, v23, v24, v25, v26, v27;

        goto LABEL_9;
      }
    }

    v7, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v28 = v6;
  }

  v29 = [v6 currentUserShareParticipantID];
  if (!v29)
  {
    v5, v30, v31, v32, v33, v34, v35, v36;
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_100938E90);
    v53 = v6;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138543362;
      v58 = [v53 objectID];
      *(v56 + 4) = v58;
      *v57 = v58;
      _os_log_impl(&_mh_execute_header, v54, v55, "RDAssignmentNotificationEngine: Current user is not participating the list of this inserted assignment {list: %{public}@}", v56, 0xCu);
      sub_1000050A4(v57, &unk_100938E70, &unk_100797230);
    }

    else
    {
    }

    return;
  }

  v37 = v29;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v38;

LABEL_9:
  v86 = _swiftEmptyDictionarySingleton;
  if (v5 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v82 = v6;

    if (!i)
    {
      break;
    }

    v81 = a4;
    v47 = 0;
    a4 = (v5 & 0xC000000000000001);
    v48 = v5;
    v5 &= 0xFFFFFFFFFFFFFF8uLL;
    while (1)
    {
      if (a4)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v47 >= *(v5 + 16))
        {
          goto LABEL_32;
        }

        v49 = *(v48 + 8 * v47 + 32);
      }

      v50 = v49;
      v6 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v85 = v49;
      sub_1001481A0(&v85, a3, v20, v83, v82, &v86);

      ++v47;
      if (v6 == i)
      {
        v51 = v86;
        a4 = v81;
        v5 = v48;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v51 = _swiftEmptyDictionarySingleton;
LABEL_25:
  v5, v40, v41, v42, v43, v44, v45, v46;
  a3, v59, v60, v61, v62, v63, v64, v65;
  swift_bridgeObjectRelease_n();

  if ((v51 & 0xC000000000000001) != 0)
  {
    if (__CocoaDictionary.count.getter())
    {
LABEL_27:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *a4;
      *a4 = 0x8000000000000000;
      sub_1002C7B54(v51, v82, isUniquelyReferenced_nonNull_native);

      *a4 = v85;
      v51, v74, v75, v76, v77, v78, v79, v80;
      return;
    }
  }

  else if (*(v51 + 16))
  {
    goto LABEL_27;
  }

  v51, v66, v67, v68, v69, v70, v71, v72;
}

void sub_1001481A0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v8 = v6;
  v13 = *a1;
  if ([*a1 isCompleted])
  {
    if (qword_100935AC0 == -1)
    {
LABEL_3:
      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_100938E90);
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v16, v17))
      {
LABEL_25:

        return;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = [v15 objectID];
      *(v18 + 4) = v20;
      *v19 = v20;
      v21 = "RDAssignmentNotificationEngine: Reminder is already completed, skipping from showing assignment notification {reminder: %{public}@}";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v16, v17, v21, v18, 0xCu);
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);

      goto LABEL_25;
    }

LABEL_29:
    swift_once();
    goto LABEL_3;
  }

  v22 = [v13 objectID];
  v23 = v22;
  if (!*(a2 + 16) || (v24 = sub_10002B924(v22), (v25 & 1) == 0))
  {

    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_100938E90);
    v41 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_25;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    v42 = [v41 objectID];
    *(v18 + 4) = v42;
    *v19 = v42;
    v21 = "RDAssignmentNotificationEngine: Can't find the correspinding inserted assignments from the reminderID, how come? {reminder: %{public}@}";
    goto LABEL_24;
  }

  v26 = *(*(a2 + 56) + 8 * v24);

  v81 = &_swiftEmptyArrayStorage;
  if (v26 >> 62)
  {
    v76 = _CocoaArrayWrapper.endIndex.getter();
    v77 = v26;
    if (v76)
    {
LABEL_9:
      v73 = a5;
      v74 = a6;
      v34 = 0;
      v78 = v26 & 0xC000000000000001;
      v35 = v26 & 0xFFFFFFFFFFFFFF8;
      v36 = v76;
      while (1)
      {
        if (v78)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v34 >= *(v35 + 16))
          {
            goto LABEL_28;
          }

          v37 = *(v26 + 8 * v34 + 32);
        }

        v7 = v37;
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v80 = v37;
        v39 = sub_100148938(&v80, a3, a4, v13);
        if (v8)
        {
          goto LABEL_61;
        }

        if (v39)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v8 = 0;
          v36 = v76;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v26 = v77;
        }

        else
        {
        }

        ++v34;
        if (v38 == v36)
        {
          v26 = v81;
          a5 = v73;
          a6 = v74;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v76 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v77 = v26;
    if (v76)
    {
      goto LABEL_9;
    }
  }

  v26 = &_swiftEmptyArrayStorage;
LABEL_32:
  v77, v27, v28, v29, v30, v31, v32, v33;
  if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 1)
    {
      goto LABEL_35;
    }

    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *(v26 + 16);
    if (v43 > 1)
    {
LABEL_35:

      if (qword_100935AC0 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100006654(v44, qword_100938E90);
      v45 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_25;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v46 = [v45 objectID];
      *(v18 + 4) = v46;
      *v19 = v46;
      v21 = "RDAssignmentNotificationEngine: Should have selected only the ONE most recent current assignment, not multiple {reminder: %{public}@}";
      goto LABEL_24;
    }
  }

  if (!v43)
  {

    return;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v47 = a5;
    v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v26 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    v47 = a5;
    v48 = *(v26 + 32);
  }

  v49 = v48;

  v50 = v13;
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100006654(v51, qword_100938E90);
  v52 = v47;
  v7 = v50;
  v53 = v49;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v75 = a6;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138543874;
    v58 = [v52 objectID];
    *(v56 + 4) = v58;
    *v57 = v58;
    *(v56 + 12) = 2114;
    v59 = [v7 objectID];
    *(v56 + 14) = v59;
    v57[1] = v59;
    *(v56 + 22) = 2114;
    v60 = [v53 objectID];
    *(v56 + 24) = v60;
    v57[2] = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "RDAssignmentNotificationEngine: This is an inserted assignment we want to notify {list: %{public}@, reminder: %{public}@, assignment: %{public}@}", v56, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    a6 = v75;
  }

  v61 = *a6;
  if ((*a6 & 0xC000000000000001) == 0)
  {
    v64 = v7;
    goto LABEL_57;
  }

  if (v61 < 0)
  {
    v26 = *a6;
  }

  else
  {
    v26 = v61 & 0xFFFFFFFFFFFFFF8;
  }

  v62 = v7;
  v63 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v63, 1))
  {
    *a6 = sub_10021CB70(v26, v63 + 1);
LABEL_57:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *a6;
    sub_1002C7CD0(v7, v53, isUniquelyReferenced_nonNull_native);
    *a6 = v81;

    return;
  }

LABEL_60:
  __break(1u);
LABEL_61:

  v26, v66, v67, v68, v69, v70, v71, v72;

  __break(1u);
}

BOOL sub_100148938(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  *&v10 = __chkstk_darwin(v7, v9).n128_u64[0];
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [*a1 assigneeID];
  v15 = [v14 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  v19 = *(v8 + 8);
  v54 = v7;
  v20 = v7;
  v21 = v19;
  v19(v12, v20);
  v59 = v16;
  v60 = v18;
  v55 = a2;
  v56 = a3;
  v57 = a2;
  v58 = a3;
  sub_10013BCF4();
  v22 = StringProtocol.caseInsensitiveCompare<A>(_:)();
  v18, v23, v24, v25, v26, v27, v28, v29;
  if (v22)
  {
    return 0;
  }

  v52 = v13;
  v31 = [v13 originatorID];
  v32 = [v31 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  v21(v12, v54);
  v59 = v33;
  v60 = v35;
  v57 = v55;
  v58 = v56;
  v36 = StringProtocol.caseInsensitiveCompare<A>(_:)();
  v35, v37, v38, v39, v40, v41, v42, v43;
  if (!v36)
  {
    return 0;
  }

  v44 = [v53 assignmentContext];
  if (v44 && (v45 = v44, v46 = [v44 currentAssignment], v45, v46))
  {
    v47 = [v46 objectID];
  }

  else
  {
    v47 = 0;
  }

  v48 = [v52 objectID];
  v49 = v48;
  if (!v47)
  {
    if (!v48)
    {
      return 1;
    }

    goto LABEL_16;
  }

  if (!v48)
  {
    v49 = v47;
LABEL_16:

    return 0;
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v50 = static NSObject.== infix(_:_:)();

  return (v50 & 1) != 0;
}

void sub_100148C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + 72);
  *v18 = v19;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v13, v16);
  v49 = v19;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v13);
  if (v20)
  {
    v46 = v10;
    v47 = v7;
    v48 = v6;
    v21 = dispatch_group_create();
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(a1 + 64);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    while (v24)
    {
      v27 = v26;
LABEL_10:
      v28 = (v27 << 9) | (8 * __clz(__rbit64(v24)));
      v29 = *(*(a1 + 56) + v28);
      v24 &= v24 - 1;
      aBlock = *(*(a1 + 48) + v28);
      v57 = v29;
      v30 = aBlock;

      sub_10014915C(&aBlock, v4, v21);
      v29, v31, v32, v33, v34, v35, v36, v37;
    }

    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {

        v38 = swift_allocObject();
        v40 = v50;
        v39 = v51;
        *(v38 + 16) = v50;
        *(v38 + 24) = v39;
        v60 = sub_10014D6C4;
        v61 = v38;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_100019200;
        v59 = &unk_1008E61C8;
        v41 = _Block_copy(&aBlock);
        sub_10003E124(v40, v39);
        v42 = v52;
        static DispatchQoS.unspecified.getter();
        v55 = &_swiftEmptyArrayStorage;
        sub_10000AB38();
        sub_1000F5104(&unk_100939E50, &unk_100791AD0);
        sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
        v43 = v54;
        v44 = v48;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();

        _Block_release(v41);
        (*(v47 + 8))(v43, v44);
        (*(v53 + 8))(v42, v46);

        return;
      }

      v24 = *(a1 + 64 + 8 * v27);
      ++v26;
      if (v24)
      {
        v26 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1001490E0(uint64_t a1)
{
  if (!qword_100938FA0)
  {
    type metadata accessor for RDStoreControllerNotificationCenter.Token(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100938FA0);
    }
  }
}

void sub_10014915C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v282 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RDUserNotificationType();
  v296 = *(v12 - 8);
  v297 = v12;
  __chkstk_darwin(v12, v13);
  v295 = (&v282 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 8);
  v16 = *a1;

  v17 = [v16 shareeContext];
  if (!v17)
  {
    v15, v18, v19, v20, v21, v22, v23, v24;
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_100938E90);
    v57 = v16;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138543362;
      v62 = [v57 objectID];
      *(v60 + 4) = v62;
      *v61 = v62;
      _os_log_impl(&_mh_execute_header, v58, v59, "RDAssignmentNotificationEngine: List has no sharee, huh? {listID: %{public}@}", v60, 0xCu);
      sub_1000050A4(v61, &unk_100938E70, &unk_100797230);
    }

    else
    {
    }

    return;
  }

  v290 = v11;
  v291 = v8;
  v25 = v17;
  v26 = [v17 sharees];

  sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) == 0)
  {
    v29 = *(v15 + 16);
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_13:

    v15, v63, v64, v65, v66, v67, v68, v69;
    v27, v70, v71, v72, v73, v74, v75, v76;
    return;
  }

  v29 = __CocoaDictionary.count.getter();
  if (!v29)
  {
    goto LABEL_13;
  }

LABEL_4:
  v294 = v29;
  v288 = a2;
  v292 = a3;

  sub_10014B514(v15, v27);
  v31 = v30;
  v298 = v3;
  v15, v32, v33, v34, v35, v36, v37, v38;
  swift_bridgeObjectRelease_n();
  v300 = v31;
  sub_1000F5104(&qword_100939210, &qword_100795D18);
  sub_10000CB48(&qword_100939218, &qword_100939210, &qword_100795D18, &protocol conformance descriptor for [A]);
  sub_10000CDE4(&unk_100939220, &unk_10094F0F0, REMSharee_ptr, &protocol conformance descriptor for NSObject);
  v39 = Sequence<>.unique()();
  v31, v40, v41, v42, v43, v44, v45, v46;
  if (!(v39 >> 62))
  {
    v285 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  while (1)
  {
    v285 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    v287 = v7;
    v293 = v16;
    v39, v47, v48, v49, v50, v51, v52, v53;
    if (v28)
    {
      v7 = 0;
      v54 = 0;
      v16 = 0;
      v55 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v77 = -1 << *(v15 + 32);
      v54 = ~v77;
      v7 = v15 + 64;
      v78 = -v77;
      v79 = v78 < 64 ? ~(-1 << v78) : -1;
      v16 = (v79 & *(v15 + 64));
      v55 = v15;
    }

    v80 = 0;
    v289 = v54;
    v28 = (v54 + 64) >> 6;
    v299 = v15;
    if ((v55 & 0x8000000000000000) != 0)
    {
      break;
    }

    while (1)
    {
      v87 = v80;
      v88 = v16;
      v39 = v80;
      if (!v16)
      {
        break;
      }

LABEL_27:
      v86 = (v88 - 1) & v88;
      v89 = (v39 << 9) | (8 * __clz(__rbit64(v88)));
      v90 = *(*(v55 + 56) + v89);
      v84 = *(*(v55 + 48) + v89);
      v85 = v90;
      if (!v84)
      {
        goto LABEL_43;
      }

LABEL_28:
      if (([(RDXPCStorePerformer *)v84 isOriginatorNullified]& 1) == 0)
      {
        sub_10001B860(v55);
        v171 = qword_100935AC0;
        v172 = v84;
        v173 = v85;
        if (v171 != -1)
        {
          swift_once();
        }

        v174 = type metadata accessor for Logger();
        sub_100006654(v174, qword_100938E90);
        v175 = v293;
        v176 = v172;
        v177 = v173;
        v178 = Logger.logObject.getter();
        v179 = static os_log_type_t.info.getter();
        v286 = v177;

        v180 = os_log_type_enabled(v178, v179);
        v122 = v295;
        v134 = v285;
        v289 = v176;
        if (v180)
        {
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v283 = v182;
          v284 = swift_slowAlloc();
          v300 = v284;
          *v181 = 138544130;
          v183 = [v175 objectID];
          *(v181 + 4) = v183;
          *v182 = v183;
          *(v181 + 12) = 2048;
          *(v181 + 14) = v294;
          *(v181 + 22) = 2048;
          *(v181 + 24) = v134;
          *(v181 + 32) = 2082;
          v184 = [(RDXPCStorePerformer *)v176 description];
          v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v187 = v186;

          v134 = v285;
          v188 = sub_10000668C(v185, v187, &v300);
          v187, v189, v190, v191, v192, v193, v194, v195;
          *(v181 + 34) = v188;
          _os_log_impl(&_mh_execute_header, v178, v179, "RDAssignmentNotificationEngine: Populating assignment notification content {listID: %{public}@, assignedCount: %ld, originatorCount: %ld, selected: %{public}s}", v181, 0x2Au);
          sub_1000050A4(v283, &unk_100938E70, &unk_100797230);

          sub_10000607C(v284);
        }

        v121 = v290;
        v197 = v298;
        v196 = v299;
        v123 = v175;
        sub_100143064(v299);
        v126 = v198;
        v298 = v197;
        v196, v199, v200, v201, v202, v203, v204, v205;
        *v122 = v126;
        goto LABEL_49;
      }

      v80 = v39;
      v16 = v86;
      v15 = v299;
      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v39 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v39 >= v28)
      {
        goto LABEL_31;
      }

      v88 = *(v7 + 8 * v39);
      ++v87;
      if (v88)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

LABEL_20:
  v81 = __CocoaDictionary.Iterator.next()();
  if (v81)
  {
    v83 = v82;
    v302 = v81;
    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    swift_dynamicCast();
    v84 = v300;
    v302 = v83;
    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    swift_dynamicCast();
    v85 = v300;
    v39 = v80;
    v86 = v16;
    if (v84)
    {
      goto LABEL_28;
    }

LABEL_43:
    v15 = v299;
  }

LABEL_31:
  sub_10001B860(v55);
  v91 = sub_10031E8F4(v15);
  if (v91)
  {
    v93 = v92;
    v94 = qword_100935AC0;
    v95 = v91;
    v96 = v93;
    v97 = v293;
    if (v94 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_100006654(v98, qword_100938E90);
    v99 = v97;
    v100 = v95;
    v101 = v96;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.info.getter();
    v286 = v101;

    v104 = os_log_type_enabled(v102, v103);
    v289 = v100;
    if (v104)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v300 = v107;
      *v105 = 138543874;
      v108 = [v99 objectID];
      *(v105 + 4) = v108;
      *v106 = v108;
      *(v105 + 12) = 2048;
      *(v105 + 14) = v294;
      *(v105 + 22) = 2082;
      v109 = [v100 description];
      v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v112 = v111;

      v15 = v299;
      v113 = sub_10000668C(v110, v112, &v300);
      v112, v114, v115, v116, v117, v118, v119, v120;
      *(v105 + 24) = v113;
      _os_log_impl(&_mh_execute_header, v102, v103, "RDAssignmentNotificationEngine: Populating assignment notification content with all nullified originators {listID: %{public}@, assignedCount: %ld, selected: %{public}s}", v105, 0x20u);
      sub_1000050A4(v106, &unk_100938E70, &unk_100797230);

      sub_10000607C(v107);
    }

    v121 = v290;
    v122 = v295;
    v123 = v99;
    v124 = v298;
    sub_100143064(v15);
    v126 = v125;
    v298 = v124;
    v15, v127, v128, v129, v130, v131, v132, v133;
    *v122 = v126;
    v134 = 1;
LABEL_49:
    v207 = v296;
    v206 = v297;
    (*(v296 + 104))(v122, enum case for RDUserNotificationType.assignmentNotification(_:), v297);
    v208 = v123;
    v209 = v123;

    v210 = sub_1002D833C(0, v208, v126);

    v126, v211, v212, v213, v214, v215, v216, v217;
    v218 = v289;
    v219 = v286;
    v299 = v210;
    sub_10014C4B8(v299, v218, v219, v294, v134);

    (*(v207 + 8))(v122, v206);
    dispatch_group_enter(v292);
    v220 = v293;
    v221 = [v293 objectID];
    v222 = [v221 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v223 = UUID.uuidString.getter();
    v225 = v224;
    v226 = *(v291 + 8);
    v227 = v287;
    v226(v121, v287);
    v300 = 0xD000000000000029;
    v301 = 0x80000001007EC8C0;
    v228._countAndFlagsBits = v223;
    v228._object = v225;
    String.append(_:)(v228);
    v225, v229, v230, v231, v232, v233, v234, v235;
    v236 = v301;

    v237._countAndFlagsBits = 46;
    v237._object = 0xE100000000000000;
    String.append(_:)(v237);
    v236, v238, v239, v240, v241, v242, v243, v244;
    v245 = v121;
    v247 = v300;
    v246 = v301;
    UUID.init()();
    v248 = UUID.uuidString.getter();
    v250 = v249;
    v226(v245, v227);
    v300 = v247;
    v301 = v246;

    v251._countAndFlagsBits = v248;
    v251._object = v250;
    String.append(_:)(v251);
    v250, v252, v253, v254, v255, v256, v257, v258;
    v246, v259, v260, v261, v262, v263, v264, v265;
    v266 = v300;
    v267 = v301;
    v268 = v288;
    v269 = swift_allocObject();
    v269[2] = v268;
    v269[3] = v220;
    v270 = v292;
    v269[4] = v294;
    v269[5] = v270;
    v271 = v220;

    v272 = v270;
    v273 = v266;
    v274 = v299;
    sub_10052554C(v273, v267, v299, sub_10014D6F8, v269);
    v267, v275, v276, v277, v278, v279, v280, v281;
  }

  else
  {
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v135 = type metadata accessor for Logger();
    sub_100006654(v135, qword_100938E90);

    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    v15, v138, v139, v140, v141, v142, v143, v144;
    if (os_log_type_enabled(v136, v137))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v300 = v153;
      *v152 = 136315138;
      sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
      sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
      sub_10000CDE4(&qword_100939230, &unk_10093F5F0, REMAssignment_ptr, &protocol conformance descriptor for NSObject);
      v154 = Dictionary.description.getter();
      v156 = v155;
      v15, v155, v157, v158, v159, v160, v161, v162;
      v163 = sub_10000668C(v154, v156, &v300);
      v156, v164, v165, v166, v167, v168, v169, v170;
      *(v152 + 4) = v163;
      _os_log_impl(&_mh_execute_header, v136, v137, "RDAssignmentNotificationEngine: Can't find any item to populate, this is not expected {map: %s}", v152, 0xCu);
      sub_10000607C(v153);
    }

    else
    {
      v15, v145, v146, v147, v148, v149, v150, v151;
    }
  }
}

void sub_10014A058(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSObject *a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 72);
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10, v13);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_4:
    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100938E90);
    swift_errorRetain();
    v19 = a3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v55 = a5;
      v25 = v24;
      v56 = v24;
      *v22 = 136315650;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = v27;
      v29 = sub_10000668C(v26, v27, &v56);
      v28, v30, v31, v32, v33, v34, v35, v36;
      *(v22 + 4) = v29;
      *(v22 + 12) = 2114;
      v37 = [v19 objectID];
      *(v22 + 14) = v37;
      *v23 = v37;
      *(v22 + 22) = 2048;
      *(v22 + 24) = a4;
      _os_log_impl(&_mh_execute_header, v20, v21, "RDAssignmentNotificationEngine: Unable to post Assignment notification {error: %s, listID: %{public}@, count: %ld}", v22, 0x20u);
      sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

      sub_10000607C(v25);
      a5 = v55;
    }

    else
    {
    }

    goto LABEL_12;
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_100935AC0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100006654(v38, qword_100938E90);
  v39 = a3;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543618;
    v44 = [v39 objectID];
    *(v42 + 4) = v44;
    *v43 = v44;
    *(v42 + 12) = 2048;
    *(v42 + 14) = a4;
    _os_log_impl(&_mh_execute_header, v40, v41, "RDAssignmentNotificationEngine: Posted Assignment notification {listID: %{public}@, count: %ld}", v42, 0x16u);
    sub_1000050A4(v43, &unk_100938E70, &unk_100797230);
  }

  type metadata accessor for Analytics();
  sub_1000F5104(&unk_100939240, &unk_100798990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  *(inited + 48) = NSString.init(stringLiteral:)();
  v46 = sub_10038D880(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100939250, &unk_100795D30);
  static Analytics.postEvent(_:payload:duration:)();
  v46, v47, v48, v49, v50, v51, v52, v53;
LABEL_12:
  dispatch_group_leave(a5);
}

void sub_10014A58C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100938E90);
    swift_errorRetain();

    v6 = a3;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    a2, v9, v10, v11, v12, v13, v14, v15;
    if (os_log_type_enabled(v7, v8))
    {
      v16 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v16 = 136315650;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      v20 = sub_10000668C(v17, v18, &v86);
      v19, v21, v22, v23, v24, v25, v26, v27;
      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v28 = Array.description.getter();
      v30 = v29;
      v31 = sub_10000668C(v28, v29, &v86);
      v30, v32, v33, v34, v35, v36, v37, v38;
      *(v16 + 14) = v31;
      *(v16 + 22) = 2080;
      v39 = [v6 actionIdentifier];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_10000668C(v40, v42, &v86);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v16 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v7, v8, "RDAssignmentNotificationEngine: Save error. Failed to save updates from notification response {error: %s , reminderIDs: %s, actionIdentifier: %s}", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100006654(v51, qword_100938E90);

    v52 = a3;
    oslog = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    a2, v54, v55, v56, v57, v58, v59, v60;

    if (os_log_type_enabled(oslog, v53))
    {
      v61 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v61 = 136315394;
      v62 = [v52 actionIdentifier];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_10000668C(v63, v65, &v86);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v74 = Array.description.getter();
      v76 = v75;
      v77 = sub_10000668C(v74, v75, &v86);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v61 + 14) = v77;
      _os_log_impl(&_mh_execute_header, oslog, v53, "RDAssignmentNotificationEngine: Updated reminder successfully. {actionIdentifier: %s, reminderIDs: %s}", v61, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10014AA28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6, void (*a7)())
{
  if (a3)
  {
    if (__CocoaDictionary.Index.age.getter() == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      sub_1000060C8(0, a5, a6);
      swift_dynamicCast();
      a7();
      v11 = v10;

      if (v11)
      {
        __CocoaDictionary.Index.dictionary.getter();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  _HashTable.occupiedBucket(after:)();
}

void sub_10014ABEC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t *a6, void *a7, uint64_t (*a8)())
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      __CocoaDictionary.lookup(_:)();
      sub_1000060C8(0, a6, a7);
      swift_dynamicCast();
      sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
      swift_dynamicCast();
      *a1 = v19;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  __CocoaDictionary.Index.key.getter();
  sub_1000060C8(0, a6, a7);
  swift_dynamicCast();
  a2 = a8();
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v16 = *(*(a5 + 48) + 8 * a2);
  v17 = *(*(a5 + 56) + 8 * a2);
  *a1 = v17;
  v16;
  v18 = v17;
}

void *sub_10014ADD8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10014AE5C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10014AEEC(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      __CocoaDictionary.lookup(_:)();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      sub_1000060C8(0, &qword_100939208, REMReplicaManagerSerializedData_ptr);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  __CocoaDictionary.Index.key.getter();
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  swift_dynamicCast();
  a2 = sub_10002B924(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

void sub_10014B0D0(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, id *a4)
{
  v33 = a4;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (v13 << 9) | (8 * __clz(__rbit64(v10)));
      v15 = *(*(a1 + 56) + v14);
      v32[0] = *(*(a1 + 48) + v14);
      v32[1] = v15;
      v16 = v32[0];

      sub_100147DA0(v32, a2, a3, v33);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v15, v17, v18, v19, v20, v21, v22, v23;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v15, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_10014B21C(uint64_t a1, void *a2)
{
  v2 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaDictionary.count.getter();
    if (!v3)
    {
      return;
    }

    v41 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v38 = __CocoaDictionary.startIndex.getter();
    v39 = v4;
    v40 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v41 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = _HashTable.startBucket.getter();
  v6 = *(v2 + 36);
  v38 = v5;
  v39 = v6;
  v40 = 0;
LABEL_7:
  v7 = 0;
  v33 = v3;
  v34 = v2;
  while (v7 < v3)
  {
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v26 = v38;
    v25 = v39;
    v27 = v40;
    sub_10014ABEC(v37, v38, v39, v40, v2, &qword_1009391E0, REMObjectID_ptr, sub_10002B924);
    v29 = v28;
    v30 = v37[0];
    v31 = [a2 updateReminder:v37[0]];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v35)
    {
      v2 = v34;
      if (!v27)
      {
        goto LABEL_21;
      }

      if (__CocoaDictionary.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v3 = v33;
      v24 = v7 + 1;
      sub_1000F5104(&qword_100939200, &unk_100795D08);
      v32 = Dictionary.Index._asCocoa.modify();
      __CocoaDictionary.formIndex(after:isUnique:)();
      v32(v37, 0);
    }

    else
    {
      v2 = v34;
      sub_10014AA28(v26, v25, v27, v34, &qword_1009391E0, REMObjectID_ptr, sub_10002B924);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      sub_100010E34(v26, v25, v27, v14, v15, v16, v17, v18);
      v38 = v9;
      v39 = v11;
      v40 = v13 & 1;
      v3 = v33;
      v24 = v7 + 1;
    }

    ++v7;
    if (v24 == v3)
    {
      sub_100010E34(v38, v39, v40, v19, v20, v21, v22, v23);
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10014B514(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v10 = (v3 + 64) >> 6;
  v23 = v5;
  v24 = v2;
LABEL_8:
  v11 = v9;
  while ((v5 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.nextKey()() || (sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr), swift_dynamicCast(), v14 = v27, v9 = v11, v25 = v4, !v27))
    {
LABEL_36:
      sub_10001B860(v5);
      return;
    }

LABEL_19:
    if (([v14 isOriginatorNullified] & 1) == 0)
    {
      if (a2 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (v15)
        {
LABEL_22:
          v16 = 0;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v17 = *(a2 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
            v20 = [v18 objectID];
            v21 = [v14 originatorID];
            v22 = static NSObject.== infix(_:_:)();

            if (v22)
            {
              break;
            }

            ++v16;
            if (v19 == v15)
            {
              goto LABEL_9;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v5 = v23;
          v2 = v24;
          v10 = (v3 + 64) >> 6;
          v4 = v25;
          goto LABEL_8;
        }
      }

      else
      {
        v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_9:

    v11 = v9;
    v2 = v24;
    v4 = v25;
    v10 = (v3 + 64) >> 6;
    v5 = v23;
  }

  v12 = v11;
  v13 = v4;
  v9 = v11;
  if (v4)
  {
LABEL_15:
    v25 = (v13 - 1) & v13;
    v14 = *(*(v5 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {
      goto LABEL_36;
    }

    v13 = *(v2 + 8 * v9);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_10014B888(void *a1, id a2)
{
  v2 = a2;
  v4 = [a2 list];
  v75 = a1;
  if ([a1 isOriginatorNullified])
  {
LABEL_30:

    return 0;
  }

  v5 = [v4 shareeContext];
  if (!v5)
  {
LABEL_25:
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_100938E90);
    v54 = v75;
    v55 = v2;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v76 = v60;
      *v58 = 138543618;
      v61 = [v55 remObjectID];
      *(v58 + 4) = v61;
      *v59 = v61;
      *(v58 + 12) = 2082;
      v62 = [v54 description];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_10000668C(v63, v65, &v76);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v58 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "RDAssignmentNotificationEngine: Couldn't match the sharee object of the originator and it is not nullified {reminderID: %{public}@, assignment: %{public}s}", v58, 0x16u);
      sub_1000050A4(v59, &unk_100938E70, &unk_100797230);

      sub_10000607C(v60);
    }

    goto LABEL_30;
  }

  v6 = v5;
  v7 = [v5 sharees];

  sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = v2;
  if (!(v8 >> 62))
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
LABEL_24:
    v8, v9, v10, v11, v12, v13, v14, v15;
    v2 = v74;
    goto LABEL_25;
  }

LABEL_5:
  v17 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v18 = *(v8 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    v21 = [v19 objectID];
    v22 = [v75 originatorID];
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      break;
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_24;
    }
  }

  v8, v24, v25, v26, v27, v28, v29, v30;
  v31 = [v19 shortName];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v33;
  }

  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100006654(v35, qword_100938E90);
  v36 = v75;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v76 = v40;
    *v39 = 136446210;
    v41 = [v36 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = sub_10000668C(v42, v44, &v76);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "RDAssignmentNotificationEngine: The originator has absolutely no hint of how to display a formatted name... {assignment: %{public}s}", v39, 0xCu);
    sub_10000607C(v40);
  }

  return 0;
}