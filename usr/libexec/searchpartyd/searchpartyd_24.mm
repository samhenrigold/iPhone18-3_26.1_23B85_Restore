uint64_t sub_1002BA248()
{
  v2 = *v1;
  v2[201] = v0;

  v3 = v2[196];
  v4 = v2[195];
  v5 = v2[81];
  sub_100016590(v2[198], v2[199]);
  sub_100016590(v4, v3);
  if (v0)
  {

    v6 = sub_1002D1928;
  }

  else
  {
    v6 = sub_1002BA40C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002BA40C()
{
  v371 = v1;
  v2 = *(v1 + 1008);
  if ((*(*(v1 + 1024) + 48))(v2, 1, *(v1 + 1016)) != 1)
  {
    v205 = *(v1 + 1392);
    sub_1000D2AD8(v2, *(v1 + 1152), &qword_10169C970, &qword_101398A18);
    v50 = sub_1002BD4EC;
    v51 = v205;
    v52 = 0;

    return _swift_task_switch(v50, v51, v52);
  }

  sub_100016590(*(v1 + 1560), *(v1 + 1568));
  sub_10000B3A8(v2, &qword_10169C968, &qword_101398A10);
  v3 = *(v1 + 1608);
  v4 = *(v1 + 1552) + 1;
  if (v4 != *(v1 + 1544))
  {
    *(v1 + 1552) = v4;
    v206 = *(v1 + 1536);
    if (v4 >= *(v206 + 16))
    {
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v207 = *(v1 + 1480);
    v208 = v207 >> 62;
    v209 = v206 + 24 * v4;
    v210 = *(v209 + 32);
    *(v1 + 1560) = v210;
    v0 = *(v209 + 40);
    *(v1 + 1568) = v0;
    v211 = *(v209 + 48);
    *(v1 + 1580) = *(v209 + 52);
    *(v1 + 1576) = v211;
    if ((v207 >> 62) > 1)
    {
      if (v208 != 2)
      {
        v213 = 0;
        v2 = 0;
        v214 = 0;
        v212 = 0;
        goto LABEL_212;
      }

      v227 = *(v1 + 1472);
      v2 = *(v227 + 16);
      v213 = *(v227 + 24);
    }

    else
    {
      if (!v208)
      {
        v2 = 0;
        v212 = 0;
        v213 = BYTE6(v207);
        v214 = BYTE6(v207);
        goto LABEL_212;
      }

      v227 = *(v1 + 1472);
      v213 = v227 >> 32;
      v2 = v227;
    }

    sub_10002E98C(v227, v207);
    if (v213 < v2)
    {
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
      goto LABEL_308;
    }

    v207 = *(v1 + 1480);
    v239 = *(v1 + 1472);
    if (v207 >> 62 == 2)
    {
      v212 = *(v239 + 16);
      v214 = *(v239 + 24);
    }

    else
    {
      v214 = v239 >> 32;
      v212 = v239;
    }

LABEL_212:
    if (v214 < v213 || v213 < v212)
    {
      goto LABEL_307;
    }

    if (__OFSUB__(v213, v2))
    {
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
      goto LABEL_317;
    }

    if ((v213 - v2) >= 0x39)
    {
      v241 = v2 + 57;
      if (__OFADD__(v2, 57))
      {
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
        goto LABEL_321;
      }

      v242 = v207 >> 62;
      if ((v207 >> 62) > 1)
      {
        if (v242 == 2)
        {
          v246 = *(v1 + 1472);
          v243 = *(v246 + 16);
          v244 = *(v246 + 24);
        }

        else
        {
          v244 = 0;
          v243 = 0;
        }
      }

      else if (v242)
      {
        v243 = *(v1 + 1472);
        v244 = v243 >> 32;
        v243 = v243;
      }

      else
      {
        v243 = 0;
        v244 = BYTE6(v207);
      }

      if (v244 < v241 || v241 < v243)
      {
        goto LABEL_318;
      }

      v256 = 0;
      if (v242 <= 1)
      {
        if (v242)
        {
          v256 = *(v1 + 1472);
        }

LABEL_241:
        if (v241 < v256)
        {
          goto LABEL_309;
        }

LABEL_242:
        v247 = *(v1 + 1472);
        sub_100017D5C(v210, v0);
        sub_100017D5C(v210, v0);
        v257 = Data._Representation.subscript.getter();
        v259 = v258;
        sub_100006654(v247, v207);
        v260 = v259 >> 62;
        if ((v259 >> 62) > 1)
        {
          if (v260 != 2)
          {
            goto LABEL_256;
          }

          v262 = *(v257 + 16);
          v261 = *(v257 + 24);
          v46 = __OFSUB__(v261, v262);
          v263 = v261 - v262;
          if (!v46)
          {
            if (v263 != 57)
            {
              goto LABEL_256;
            }

            goto LABEL_249;
          }

          __break(1u);
        }

        else
        {
          if (!v260)
          {
            if (BYTE6(v259) != 57)
            {
LABEL_256:
              v277 = v257;
              v278 = v259;
LABEL_257:
              sub_100016590(v277, v278);
              return _assertionFailure(_:_:file:line:flags:)();
            }

LABEL_249:
            v264 = sub_100A7A194(v257, v259, 0, 0);
            if (v3)
            {
              v0 = v1 + 560;
              v2 = static os_log_type_t.error.getter();
              if (qword_101694BE0 == -1)
              {
LABEL_252:
                v268 = qword_10177BA00;
                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v269 = swift_allocObject();
                *(v269 + 16) = xmmword_101385D80;
                *v0 = v3;
                swift_errorRetain();
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                v270 = String.init<A>(describing:)();
                v272 = v271;
                *(v269 + 56) = &type metadata for String;
                *(v269 + 64) = sub_100008C00();
                *(v269 + 32) = v270;
                *(v269 + 40) = v272;
                os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v268, "Error deriving advertisementKey: %@", 35, 2, v269);

                sub_1001BAF88();
                v273 = swift_allocError();
                *v274 = 0;
                swift_willThrow();

LABEL_253:
                v369 = 0;
                v370 = 0xE000000000000000;
                _StringGuts.grow(_:)(35);
                v275 = v370;
                *(v1 + 504) = v369;
                *(v1 + 512) = v275;
                v276._countAndFlagsBits = 0xD000000000000021;
                v276._object = 0x800000010134CB30;
                String.append(_:)(v276);
                *(v1 + 552) = v273;
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                _print_unlocked<A, B>(_:_:)();
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_321:
              swift_once();
              goto LABEL_252;
            }

            v265 = v264;
            v266 = sub_100A7829C(v264, 0, 2);
            *(v1 + 1584) = v266;
            *(v1 + 1592) = v267;
            v280 = v266;
            v281 = v267;
            v50 = CCECCryptorRelease();
            v282 = v281 >> 62;
            if ((v281 >> 62) > 1)
            {
              if (v282 != 2)
              {
                v298 = 0;
                goto LABEL_296;
              }

              v290 = v280[2];
              v289 = v280[3];
              v46 = __OFSUB__(v289, v290);
              v283 = v289 - v290;
              if (v46)
              {
                __break(1u);
                v291 = *(v1 + 792);
                v292 = *(v1 + 712);

                sub_100016590(v265, v210);

                sub_100016590(v358, v346);

                sub_1002DBBF0(v291, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1002DBBF0(v292, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);

                v293 = *(v1 + 8);

                return v293();
              }
            }

            else if (v282)
            {
              LODWORD(v283) = HIDWORD(v280) - v280;
              if (__OFSUB__(HIDWORD(v280), v280))
              {
                goto LABEL_328;
              }

              v283 = v283;
            }

            else
            {
              v283 = BYTE6(v281);
            }

            if (v283 == 28)
            {
              sub_100016590(v257, v259);
              v294 = swift_task_alloc();
              *(v1 + 1600) = v294;
              *v294 = v1;
              v294[1] = sub_1002BA248;
              v295 = *(v1 + 1528);
              v296 = *(v1 + 1336);
              v297 = *(v1 + 1008);

              return sub_1002D7014(v297, v210, v0, v295, v280, v281, 0, v296);
            }

            if (v282 == 2)
            {
              v300 = v280[2];
              v299 = v280[3];
              v298 = v299 - v300;
              if (!__OFSUB__(v299, v300))
              {
                goto LABEL_296;
              }

              __break(1u);
            }

            else if (v282 == 1)
            {
              if (__OFSUB__(HIDWORD(v280), v280))
              {
                goto LABEL_329;
              }

              v298 = HIDWORD(v280) - v280;
              goto LABEL_296;
            }

            v298 = BYTE6(v281);
LABEL_296:
            sub_100018350();
            v273 = swift_allocError();
            *v301 = 28;
            *(v301 + 8) = v298;
            *(v301 + 16) = 0;
            swift_willThrow();
            sub_100016590(v280, v281);
            goto LABEL_253;
          }

          if (!__OFSUB__(HIDWORD(v257), v257))
          {
            if (HIDWORD(v257) - v257 != 57)
            {
              goto LABEL_256;
            }

            goto LABEL_249;
          }
        }

        __break(1u);
LABEL_324:
        swift_once();
        goto LABEL_228;
      }

      if (v242 != 2)
      {
        goto LABEL_241;
      }

      v245 = *(v1 + 1472);
    }

    else
    {
      v240 = v207 >> 62;
      if ((v207 >> 62) <= 1)
      {
        if (!v240)
        {
          goto LABEL_242;
        }

        v255 = *(v1 + 1472);
        v241 = v255 >> 32;
        v256 = v255;
        goto LABEL_241;
      }

      if (v240 != 2)
      {
        goto LABEL_242;
      }

      v245 = *(v1 + 1472);
      v241 = *(v245 + 24);
    }

    v256 = *(v245 + 16);
    goto LABEL_241;
  }

  v363 = *(v1 + 1608);
  v5 = *(v1 + 1480);
  v0 = *(v1 + 1472);
  v3 = *(v1 + 1384);
  v6 = *(v1 + 1344);
  v7 = *(v1 + 1336);
  v8 = *(v1 + 1280);
  v9 = *(v1 + 1272);

  sub_100006654(v0, v5);
  v2 = *(v8 + 8);
  (v2)(v6, v9);
  sub_1002DBBF0(v3, type metadata accessor for KeyDropFetchResponse.LocationPayload);
  (v2)(v7, v9);
  v10 = *(v1 + 1408) + 1;
  if (v10 != *(v1 + 1400))
  {
    v0 = &qword_1016980D0;
    while (1)
    {
      *(v1 + 1408) = v10;
      v215 = *(v1 + 632);
      if (!v215)
      {
        v215 = _swiftEmptyArrayStorage;
      }

      if (v10 >= v215[2])
      {
        break;
      }

      v216 = *(v1 + 1384);
      v217 = *(v1 + 1352);
      v218 = *(v1 + 1280);
      v219 = *(v1 + 1272);
      v220 = *(v1 + 1264);
      sub_1002DB760(v215 + ((*(v1 + 1768) + 32) & ~*(v1 + 1768)) + *(*(v1 + 1360) + 72) * v10, v216, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v221 = *(v216 + 16);
      v222 = *(v216 + 24);
      sub_1000D2A70(v216 + *(v217 + 28), v220, &qword_1016980D0, &unk_10138F3B0);
      v223 = *(v218 + 48);
      *(v1 + 1416) = v223;
      *(v1 + 1424) = (v218 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v223(v220, 1, v219) != 1)
      {
        v230 = *(v1 + 1344);
        v231 = *(v1 + 1280);
        v232 = *(v1 + 1272);
        v233 = *(v1 + 1264);
        v234 = *(v1 + 1256);
        v235 = *(v231 + 32);
        *(v1 + 1432) = v235;
        *(v1 + 1440) = (v231 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v235(v230, v233, v232);
        v236 = *(v231 + 16);
        *(v1 + 1448) = v236;
        *(v1 + 1456) = (v231 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v236(v234, v230, v232);
        (*(v231 + 56))(v234, 0, 1, v232);
        v237 = swift_task_alloc();
        *(v1 + 1464) = v237;
        *v237 = v1;
        v237[1] = sub_1002B09AC;
        v238 = *(v1 + 1256);

        return sub_1002D5B7C(v221, v222, v238);
      }

      sub_10000B3A8(*(v1 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      v224 = type metadata accessor for Logger();
      sub_1000076D4(v224, qword_10177A818);
      v2 = Logger.logObject.getter();
      v225 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v225))
      {
        v226 = swift_slowAlloc();
        *v226 = 0;
        _os_log_impl(&_mh_execute_header, v2, v225, "Missing share id in payload.", v226, 2u);
      }

      v3 = *(v1 + 1384);

      sub_1002DBBF0(v3, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v10 = *(v1 + 1408) + 1;
      if (v10 == *(v1 + 1400))
      {
        goto LABEL_4;
      }
    }

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
    __break(1u);
    goto LABEL_305;
  }

LABEL_4:
  v11 = _swiftEmptyArrayStorage;

  if (*(v1 + 624))
  {
    v11 = *(v1 + 624);
  }

  v331 = v11[2];
  if (!v331)
  {

LABEL_200:

    swift_beginAccess();
    v362 = *(v1 + 520);

    v228 = *(v1 + 8);

    return v228(v362);
  }

  v12 = *(v1 + 1280);
  v303 = (v1 + 600);
  v13 = *(v1 + 1024);
  v14 = *(v1 + 1016);
  v15 = *(v1 + 848);
  v304 = *(v1 + 808);
  v348 = *(v1 + 800);
  v338 = *(v1 + 792);
  v357 = *(v1 + 776);
  v324 = *(v1 + 752);
  v337 = *(v1 + 744);
  v16 = *(v1 + 728);
  v333 = v11 + 4;
  v321 = *(v1 + 712);
  v352 = (v16 + 104);
  v351 = (v16 + 8);
  v345 = *(v1 + 704);
  v311 = (*(v1 + 928) + 56);
  v323 = (v15 + 16);
  v310 = *(v1 + 664);
  v309 = (v15 + 56);
  v322 = (v15 + 8);
  v308 = (v12 + 16);
  v306 = (v13 + 48);
  v307 = (v13 + 56);
  v332 = *(*(v1 + 640) + 16);
  v325 = (v12 + 8);
  v350 = enum case for HashAlgorithm.sha256(_:);
  v335 = v11;

  v17 = v11;
  v18 = 0;
  v305 = xmmword_101385D80;
  v2 = v363;
  v334 = v14;
LABEL_8:
  if (v18 >= v17[2])
  {
    goto LABEL_310;
  }

  v364 = v2;
  v3 = v332;
  v336 = v18;
  v19 = &v333[3 * v18];
  v21 = *v19;
  v20 = v19[1];
  v347 = v20;
  v349 = v19[2];
  if (!v332)
  {
    sub_100017D5C(v21, v20);

LABEL_118:
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_1000076D4(v74, qword_10177A818);
    sub_100017D5C(v21, v347);

    v0 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    sub_100016590(v21, v347);

    if (os_log_type_enabled(v0, v75))
    {
      v76 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v369 = v3;
      *v76 = 141558275;
      *(v76 + 4) = 1752392040;
      *(v76 + 12) = 2081;
      *(v1 + 488) = v21;
      *(v1 + 496) = v347;
      sub_10025DB08();
      v77 = RawRepresentable<>.hexString.getter();
      v79 = sub_1000136BC(v77, v78, &v369);

      *(v76 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v0, v75, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v76, 0x16u);
      sub_100007BAC(v3);
    }

    sub_100016590(v21, v347);

    v2 = v364;
    goto LABEL_123;
  }

  v2 = *(v1 + 640) + ((*(v324 + 80) + 32) & ~*(v324 + 80));
  sub_100017D5C(v21, v20);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20 == 0xC000000000000000;
  }

  v23 = !v22;
  v342 = v23;
  log = BYTE6(v20);
  v353 = *(v324 + 72);
  v24 = __OFSUB__(HIDWORD(v21), v21);
  v329 = v24;
  v326 = (HIDWORD(v21) - v21);

  v25 = v332;
  v359 = v21;
  v355 = v20 >> 62;
  while (1)
  {
    v27 = *(v1 + 776);
    sub_1002DB760(v2, v27, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v0 = *v27;
    v28 = *(v357 + 8);
    v3 = (v28 >> 62);
    if ((v28 >> 62) > 1)
    {
      if (v3 == 2)
      {
        v29 = *(v0 + 16);
        v31 = *(v0 + 24);
        sub_100017D5C(v0, *(v357 + 8));
        v30 = *(v0 + 16);
        v32 = *(v0 + 24);
      }

      else
      {
        v29 = 0;
        v31 = 0;
        v32 = 0;
        v30 = 0;
      }
    }

    else if (v3)
    {
      v29 = v0;
      v31 = v0 >> 32;
      sub_100017D5C(v0, *(v357 + 8));
      v32 = v0 >> 32;
      v30 = v0;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = BYTE6(v28);
      v32 = BYTE6(v28);
    }

    if (v32 < v29 || v29 < v30)
    {
      goto LABEL_298;
    }

    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v33 = *(v0 + 16);
        v34 = *(v0 + 24);
      }

      else
      {
        v34 = 0;
        v33 = 0;
      }
    }

    else if (v3)
    {
      v33 = v0;
      v34 = v0 >> 32;
    }

    else
    {
      v33 = 0;
      v34 = BYTE6(v28);
    }

    if (v34 < v31 || v31 < v33)
    {
      goto LABEL_299;
    }

    if (__OFSUB__(v31, v29))
    {
      goto LABEL_300;
    }

    if ((v31 - v29) < 0x39)
    {
      if (v3 <= 1)
      {
        if (!v3)
        {
          goto LABEL_66;
        }

        v35 = v0 >> 32;
LABEL_62:
        v38 = v0;
        goto LABEL_65;
      }

      if (v3 != 2)
      {
        goto LABEL_66;
      }

      v35 = *(v0 + 24);
LABEL_64:
      v38 = *(v0 + 16);
      goto LABEL_65;
    }

    v35 = v29 + 57;
    if (__OFADD__(v29, 57))
    {
      goto LABEL_302;
    }

    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v36 = *(v0 + 16);
        v37 = *(v0 + 24);
      }

      else
      {
        v37 = 0;
        v36 = 0;
      }
    }

    else if (v3)
    {
      v36 = v0;
      v37 = v0 >> 32;
    }

    else
    {
      v36 = 0;
      v37 = BYTE6(v28);
    }

    if (v37 < v35 || v35 < v36)
    {
      goto LABEL_303;
    }

    v38 = 0;
    if (v3 <= 1)
    {
      if (!v3)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    if (v3 != 3)
    {
      goto LABEL_64;
    }

LABEL_65:
    if (v35 < v38)
    {
      goto LABEL_301;
    }

LABEL_66:
    v360 = v25;
    v39 = Data._Representation.subscript.getter();
    v41 = v40;
    sub_100016590(v0, v28);
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      v3 = v364;
      if (v42 != 2)
      {
        goto LABEL_259;
      }

      v45 = *(v39 + 16);
      v44 = *(v39 + 24);
      v46 = __OFSUB__(v44, v45);
      v43 = v44 - v45;
      if (v46)
      {
        goto LABEL_311;
      }
    }

    else
    {
      v3 = v364;
      if (v42)
      {
        LODWORD(v43) = HIDWORD(v39) - v39;
        if (__OFSUB__(HIDWORD(v39), v39))
        {
          goto LABEL_312;
        }

        v43 = v43;
      }

      else
      {
        v43 = BYTE6(v41);
      }
    }

    if (v43 != 57)
    {
LABEL_259:
      v277 = v39;
      v278 = v41;
      goto LABEL_257;
    }

    v47 = sub_100A7A194(v39, v41, 0, 0);
    if (v3)
    {
      break;
    }

    v48 = sub_100A7829C(v47, 0, 2);
    v0 = v49;
    v50 = CCECCryptorRelease();
    v53 = v0 >> 62;
    if ((v0 >> 62) > 1)
    {
      if (v53 != 2)
      {
        v279 = 0;
        goto LABEL_272;
      }

      v56 = *(v48 + 16);
      v55 = *(v48 + 24);
      v46 = __OFSUB__(v55, v56);
      v54 = v55 - v56;
      if (v46)
      {
        goto LABEL_314;
      }
    }

    else if (v53)
    {
      LODWORD(v54) = HIDWORD(v48) - v48;
      if (__OFSUB__(HIDWORD(v48), v48))
      {
        goto LABEL_313;
      }

      v54 = v54;
    }

    else
    {
      v54 = BYTE6(v0);
    }

    if (v54 != 28)
    {
      if (v53 == 2)
      {
        v285 = *(v48 + 16);
        v284 = *(v48 + 24);
        v279 = v284 - v285;
        if (!__OFSUB__(v284, v285))
        {
          goto LABEL_272;
        }

        __break(1u);
      }

      else if (v53 == 1)
      {
        if (!__OFSUB__(HIDWORD(v48), v48))
        {
          v279 = HIDWORD(v48) - v48;
LABEL_272:
          sub_100018350();
          v253 = swift_allocError();
          *v286 = 28;
          *(v286 + 8) = v279;
          *(v286 + 16) = 0;
          swift_willThrow();
          sub_100016590(v48, v0);
          goto LABEL_273;
        }

LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
        return _swift_task_switch(v50, v51, v52);
      }

      v279 = BYTE6(v0);
      goto LABEL_272;
    }

    v57 = *(v1 + 736);
    v58 = *(v1 + 720);
    sub_100016590(v39, v41);
    (*v352)(v57, v350, v58);
    v59 = Data.hash(algorithm:)();
    v61 = v60;
    sub_100016590(v48, v0);
    (*v351)(v57, v58);
    v62 = v61 >> 62;
    if (v61 >> 62 == 3)
    {
      if (v59)
      {
        v63 = 0;
      }

      else
      {
        v63 = v61 == 0xC000000000000000;
      }

      v64 = v355;
      v66 = !v63 || v355 < 3;
      v21 = v359;
      if (((v66 | v342) & 1) == 0)
      {
        v80 = 0;
        v81 = 0xC000000000000000;
        goto LABEL_127;
      }

      v67 = 0;
      if (v355 <= 1)
      {
LABEL_107:
        v70 = log;
        if (v64)
        {
          v70 = v326;
          if (v329)
          {
            goto LABEL_315;
          }
        }

        goto LABEL_113;
      }
    }

    else
    {
      v21 = v359;
      v64 = v355;
      if (v62 == 2)
      {
        v69 = *(v59 + 16);
        v68 = *(v59 + 24);
        v46 = __OFSUB__(v68, v69);
        v67 = v68 - v69;
        if (v46)
        {
          goto LABEL_320;
        }

        if (v355 <= 1)
        {
          goto LABEL_107;
        }
      }

      else if (v62 == 1)
      {
        LODWORD(v67) = HIDWORD(v59) - v59;
        if (__OFSUB__(HIDWORD(v59), v59))
        {
          goto LABEL_319;
        }

        v67 = v67;
        if (v355 <= 1)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v67 = BYTE6(v61);
        if (v355 <= 1)
        {
          goto LABEL_107;
        }
      }
    }

    if (v64 != 2)
    {
      if (!v67)
      {
        goto LABEL_125;
      }

LABEL_21:
      sub_100016590(v59, v61);
      v364 = 0;
      v26 = v360;
      goto LABEL_22;
    }

    v72 = *(v21 + 16);
    v71 = *(v21 + 24);
    v46 = __OFSUB__(v71, v72);
    v70 = (v71 - v72);
    if (v46)
    {
      goto LABEL_316;
    }

LABEL_113:
    if (v67 != v70)
    {
      goto LABEL_21;
    }

    if (v67 < 1)
    {
LABEL_125:
      v80 = v59;
      v81 = v61;
LABEL_127:
      sub_100016590(v80, v81);
LABEL_128:
      v82 = *(v1 + 792);
      v0 = *(v1 + 784);
      v3 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey;
      sub_1002DB7C8(*(v1 + 776), v0, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      sub_1002DB7C8(v0, v82, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v2 = v349;
      v361 = *(v349 + 16);
      if (v361)
      {
        v356 = v349 + ((*(v345 + 80) + 32) & ~*(v345 + 80));

        v83 = 0;
        v3 = 0;
        while (v83 < *(v349 + 16))
        {
          sub_1002DB760(v356 + *(v345 + 72) * v83, *(v1 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v84 = sub_100496ABC();
          v85 = **(v1 + 712);
          v86 = *(v321 + 8);
          v87 = **(v1 + 792);
          v88 = *(v338 + 8);
          sub_100017D5C(v87, v88);
          sub_10002EA98(57, v87, v88, &v369);
          sub_100496F68(v369, v370, &v367);
          v89 = v368;
          if (v368 >> 60 == 15)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v354 = v83;
          loga = *(v1 + 792);
          v90 = v367;
          v91 = PublicKey.advertisement.getter(v367, v368);
          v93 = v92;
          v50 = sub_100006654(v90, v89);
          v94 = v86 >> 62;
          v343 = *(v337 + 20);
          if ((v86 >> 62) > 1)
          {
            if (v94 == 2)
            {
              v97 = *(v85 + 16);
              v96 = *(v85 + 24);
              v95 = v96 - v97;
              if (__OFSUB__(v96, v97))
              {
                goto LABEL_326;
              }
            }

            else
            {
              v95 = 0;
            }
          }

          else if (v94)
          {
            if (__OFSUB__(HIDWORD(v85), v85))
            {
              __break(1u);
LABEL_326:
              __break(1u);
              goto LABEL_327;
            }

            v95 = HIDWORD(v85) - v85;
          }

          else
          {
            v95 = BYTE6(v86);
          }

          sub_100A2A240(3);
          v99 = v98;
          v100 = v84;
          sub_100017D5C(v85, v86);
          sub_100017D5C(v91, v93);
          if (v95 >= v99)
          {
            v101 = (v1 + 672);
            sub_100A2AA58(v100, v85, v86, v91, v93, *(v1 + 672));
          }

          else
          {
            v101 = (v1 + 680);
            sub_100A2B118(v100, v85, v86, v91, v93, *(v1 + 680));
          }

          v102 = *v101;
          v327 = *(v1 + 1016);
          v330 = v100;
          v318 = *(v1 + 1000);
          v320 = *(v1 + 1272);
          v103 = *(v1 + 976);
          v312 = *(v1 + 968);
          v104 = *(v1 + 920);
          v365 = *(v1 + 856);
          v313 = v91;
          v314 = v93;
          v105 = *(v1 + 840);
          v106 = *(v1 + 832);
          v107 = *(v1 + 696);
          v108 = *(v1 + 688);
          v109 = *(v1 + 656);
          sub_1002DB7C8(v102, v108, type metadata accessor for BeaconPayloadv1);
          sub_1002DB7C8(v108, v107, type metadata accessor for BeaconPayloadv1);
          (*v311)(v103, 1, 1, v104);
          v316 = *(v107 + v310[10]);
          v110 = *v323;
          (*v323)(v365, v107 + v310[5], v105);
          v111 = *(v107 + v310[7]);
          v112 = *(v107 + v310[8]);
          v113 = *(v107 + v310[9]);
          (*v309)(v109, 1, 1, v105);
          sub_1000D2A70(v103, v312, &unk_1016C1120, &qword_1013C49D0);
          v302 = v110;
          v110(&v106[v348[5]], v365, v105);
          sub_1000D2A70(v109, &v106[v348[10]], &unk_101696900, &unk_10138B1E0);
          sub_1000D2A70(v312, &v106[v348[11]], &unk_1016C1120, &qword_1013C49D0);
          UUID.init()();
          sub_100016590(v313, v314);
          sub_10000B3A8(v312, &unk_1016C1120, &qword_1013C49D0);
          sub_10000B3A8(v109, &unk_101696900, &unk_10138B1E0);
          v114 = *v322;
          (*v322)(v365, v105);
          sub_10000B3A8(v103, &unk_1016C1120, &qword_1013C49D0);
          sub_1002DBBF0(v107, type metadata accessor for BeaconPayloadv1);
          *v106 = v316;
          *&v106[v348[6]] = v111;
          *&v106[v348[7]] = v112;
          *&v106[v348[8]] = v113;
          v106[v348[9]] = 15;
          *&v106[v348[13]] = 256;
          v115 = *(v334 + 48);
          (*v308)(v318, loga + v343, v320);
          sub_1002DB7C8(v106, v318 + v115, type metadata accessor for RawSearchResult);
          (*v307)(v318, 0, 1, v327);
          if ((*v306)(v318, 1, v327) == 1)
          {
            v116 = *(v1 + 1000);

            sub_10000B3A8(v116, &qword_10169C968, &qword_101398A10);
            v117 = v359;
            v118 = v354;
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v119 = *(v1 + 792);
            v120 = *(v1 + 760);
            v121 = type metadata accessor for Logger();
            sub_1000076D4(v121, qword_10177A818);
            sub_1002DB760(v119, v120, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            v0 = Logger.logObject.getter();
            v122 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v0, v122))
            {
              v123 = *(v1 + 760);
              v124 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              v369 = v125;
              *v124 = 141558275;
              *(v124 + 4) = 1752392040;
              *(v124 + 12) = 2081;
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v126 = dispatch thunk of CustomStringConvertible.description.getter();
              v128 = v127;
              sub_1002DBBF0(v123, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v2 = sub_1000136BC(v126, v128, &v369);

              *(v124 + 14) = v2;
              _os_log_impl(&_mh_execute_header, v0, v122, "Could not create search result for beacon: %{private,mask.hash}s.", v124, 0x16u);
              sub_100007BAC(v125);
            }

            else
            {
              v2 = *(v1 + 760);

              sub_1002DBBF0(v2, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            }
          }

          else
          {
            v344 = v114;
            v129 = *(v1 + 1088);
            v130 = *(v1 + 1080);
            sub_1000D2AD8(*(v1 + 1000), v129, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v129, v130, &qword_10169C970, &qword_101398A18);
            v131 = *(v334 + 48);
            swift_beginAccess();
            sub_1005CAD18(v130, *(v1 + 520));
            v133 = *(v1 + 1272);
            if (v132)
            {
              v134 = v132;
              v135 = *(v1 + 1088);
              v136 = *(v1 + 1080);
              v137 = *(v1 + 1072);
              swift_endAccess();
              sub_1002DBBF0(v130 + v131, type metadata accessor for RawSearchResult);
              v366 = *v325;
              (*v325)(v136, v133);
              sub_1000D2A70(v135, v137, &qword_10169C970, &qword_101398A18);
              v138 = (v137 + *(v334 + 48));
              Hasher.init(_seed:)();
              sub_100D15128(&v369);
              v139 = Hasher._finalize()();
              v140 = -1 << *(v134 + 32);
              v141 = v139 & ~v140;
              if ((*(v134 + 56 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141))
              {
                v142 = ~v140;
                v143 = *v138;
                v144 = *(v304 + 72);
                do
                {
                  v145 = *(v1 + 816);
                  sub_1002DB760(*(v134 + 48) + v141 * v144, v145, type metadata accessor for RawSearchResult);
                  v146 = *(v1 + 816);
                  if (*v145 == v143 && (v147 = static Date.== infix(_:_:)(), v146 = *(v1 + 816), (v147 & 1) != 0) && *(v146 + v348[6]) == *&v138[v348[6]] && *(v146 + v348[7]) == *&v138[v348[7]] && *(v146 + v348[8]) == *&v138[v348[8]])
                  {
                    v148 = *(v1 + 816);
                    v149 = static UUID.== infix(_:_:)();
                    sub_1002DBBF0(v148, type metadata accessor for RawSearchResult);
                    if (v149)
                    {
                      goto LABEL_165;
                    }
                  }

                  else
                  {
                    sub_1002DBBF0(v146, type metadata accessor for RawSearchResult);
                  }

                  v141 = (v141 + 1) & v142;
                }

                while (((*(v134 + 56 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) != 0);
              }

              v150 = *(v1 + 832);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1002DB760(v138, v150, type metadata accessor for RawSearchResult);
              v369 = v134;
              sub_100DFE348(v150, v141, isUniquelyReferenced_nonNull_native);
              v134 = v369;
LABEL_165:
              sub_1002DBBF0(v138, type metadata accessor for RawSearchResult);
              v152 = *(v1 + 1128);
              v153 = *(v1 + 1088);
              v366(*(v1 + 1072), *(v1 + 1272));
              sub_1000D2A70(v153, v152, &qword_10169C970, &qword_101398A18);
              v154 = *(v334 + 48);
              swift_beginAccess();
              sub_1001DE1B0(v134, v152);
            }

            else
            {
              v155 = *(v1 + 1128);
              v156 = *(v1 + 1088);
              v157 = *(v1 + 1080);
              v158 = *(v1 + 1064);
              swift_endAccess();
              sub_1002DBBF0(v130 + v131, type metadata accessor for RawSearchResult);
              v159 = *v325;
              (*v325)(v157, v133);
              sub_1000D2A70(v156, v155, &qword_10169C970, &qword_101398A18);
              v154 = *(v334 + 48);
              sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
              v160 = (*(v304 + 80) + 32) & ~*(v304 + 80);
              v161 = swift_allocObject();
              *(v161 + 16) = xmmword_101385D80;
              sub_1000D2A70(v156, v158, &qword_10169C970, &qword_101398A18);
              sub_1002DB7C8(v158 + *(v334 + 48), v161 + v160, type metadata accessor for RawSearchResult);
              v159(v158, v133);
              v162 = sub_10112A090(v161);
              swift_setDeallocating();
              sub_1002DBBF0(v161 + v160, type metadata accessor for RawSearchResult);
              swift_deallocClassInstance();
              swift_beginAccess();
              v163 = swift_isUniquelyReferenced_nonNull_native();
              v369 = *(v1 + 520);
              sub_100FFC200(v162, v155, v163);
              v366 = v159;
              v159(v155, v133);
              *(v1 + 520) = v369;
            }

            v117 = v359;
            swift_endAccess();
            sub_1002DBBF0(*(v1 + 1128) + v154, type metadata accessor for RawSearchResult);
            if (qword_101694510 != -1)
            {
              swift_once();
            }

            v164 = *(v1 + 1088);
            v165 = *(v1 + 1056);
            v166 = *(v1 + 1048);
            v167 = *(v1 + 1040);
            v168 = *(v1 + 792);
            v169 = *(v1 + 768);
            v170 = type metadata accessor for Logger();
            sub_1000076D4(v170, qword_10177A818);
            sub_1002DB760(v168, v169, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
            sub_1000D2A70(v164, v165, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v164, v166, &qword_10169C970, &qword_101398A18);
            sub_1000D2A70(v164, v167, &qword_10169C970, &qword_101398A18);
            v171 = Logger.logObject.getter();
            v172 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v171, v172))
            {
              v328 = v172;
              logb = v171;
              v173 = *(v1 + 1272);
              v174 = *(v1 + 1128);
              v175 = *(v1 + 1056);
              v319 = *(v1 + 1040);
              v315 = *(v1 + 1048);
              v317 = *(v1 + 1032);
              v176 = *(v1 + 856);
              v177 = *(v1 + 840);
              v178 = *(v1 + 768);
              v179 = swift_slowAlloc();
              v369 = swift_slowAlloc();
              *v179 = 141559043;
              *(v179 + 4) = 1752392040;
              *(v179 + 12) = 2081;
              sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v180 = dispatch thunk of CustomStringConvertible.description.getter();
              v182 = v181;
              sub_1002DBBF0(v178, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v183 = sub_1000136BC(v180, v182, &v369);

              *(v179 + 14) = v183;
              *(v179 + 22) = 2082;
              sub_1000D2A70(v175, v174, &qword_10169C970, &qword_101398A18);
              v184 = v174 + *(v334 + 48);
              v302(v176, v184 + v348[5], v177);
              sub_1002DBBF0(v184, type metadata accessor for RawSearchResult);
              v366(v174, v173);
              sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v185 = dispatch thunk of CustomStringConvertible.description.getter();
              v187 = v186;
              v344(v176, v177);
              sub_10000B3A8(v175, &qword_10169C970, &qword_101398A18);
              v188 = sub_1000136BC(v185, v187, &v369);

              *(v179 + 24) = v188;
              *(v179 + 32) = 2082;
              sub_1000D2A70(v315, v174, &qword_10169C970, &qword_101398A18);
              v189 = v174 + *(v334 + 48);
              LOBYTE(v188) = *(v189 + v348[9]);
              sub_1002DBBF0(v189, type metadata accessor for RawSearchResult);
              v366(v174, v173);
              v190 = sub_100013454(v188);
              v192 = v191;
              sub_10000B3A8(v315, &qword_10169C970, &qword_101398A18);
              v193 = sub_1000136BC(v190, v192, &v369);

              *(v179 + 34) = v193;
              *(v179 + 42) = 2048;
              sub_1000D2A70(v319, v317, &qword_10169C970, &qword_101398A18);
              swift_beginAccess();
              v194 = *(v1 + 520);
              if (*(v194 + 16) && (v195 = sub_1000210EC(*(v1 + 1032)), (v196 & 1) != 0))
              {
                v197 = *(*(v194 + 56) + 8 * v195);
                swift_endAccess();
                v198 = *(v197 + 16);
              }

              else
              {
                swift_endAccess();
                v198 = 0;
              }

              v117 = v359;
              v202 = *(v1 + 1272);
              v2 = *(v1 + 1088);
              v203 = *(v1 + 1040);
              v204 = *(v1 + 1032);
              sub_1002DBBF0(v204 + *(v334 + 48), type metadata accessor for RawSearchResult);
              v366(v204, v202);
              v0 = &qword_10169C970;
              sub_10000B3A8(v203, &qword_10169C970, &qword_101398A18);
              *(v179 + 44) = v198;
              _os_log_impl(&_mh_execute_header, logb, v328, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v179, 0x34u);
              swift_arrayDestroy();

              v201 = v2;
            }

            else
            {
              v2 = *(v1 + 1088);
              v0 = *(v1 + 1056);
              v199 = *(v1 + 1048);
              v200 = *(v1 + 768);
              sub_10000B3A8(*(v1 + 1040), &qword_10169C970, &qword_101398A18);

              sub_10000B3A8(v199, &qword_10169C970, &qword_101398A18);
              sub_10000B3A8(v0, &qword_10169C970, &qword_101398A18);
              sub_1002DBBF0(v200, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
              v201 = v2;
            }

            sub_10000B3A8(v201, &qword_10169C970, &qword_101398A18);
            v118 = v354;
          }

          v83 = v118 + 1;
          sub_1002DBBF0(*(v1 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
          v3 = 0;
          if (v83 == v361)
          {

            sub_100016590(v117, v347);

            v2 = 0;
            goto LABEL_179;
          }
        }

        goto LABEL_304;
      }

      sub_100016590(v21, v347);

      v2 = 0;
LABEL_179:
      sub_1002DBBF0(*(v1 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_123:
      v17 = v335;
      v18 = v336 + 1;
      if (v336 + 1 == v331)
      {
        goto LABEL_200;
      }

      goto LABEL_8;
    }

    sub_100017D5C(v21, v347);
    sub_100017D5C(v21, v347);
    sub_100017D5C(v59, v61);
    v73 = sub_100F0B1BC(v59, v61, v21, v347);
    v364 = 0;
    sub_100016590(v59, v61);
    sub_100016590(v59, v61);
    sub_100016590(v21, v347);
    v26 = v360;
    if (v73)
    {
      goto LABEL_128;
    }

LABEL_22:
    sub_1002DBBF0(*(v1 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v2 += v353;
    v25 = v26 - 1;
    if (!v25)
    {
      goto LABEL_118;
    }
  }

  v247 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_324;
  }

LABEL_228:
  v248 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v249 = swift_allocObject();
  *(v249 + 16) = v305;
  *v303 = v3;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v250 = String.init<A>(describing:)();
  v252 = v251;
  *(v249 + 56) = &type metadata for String;
  *(v249 + 64) = sub_100008C00();
  *(v249 + 32) = v250;
  *(v249 + 40) = v252;
  os_log(_:dso:log:_:_:)(v247, &_mh_execute_header, v248, "Error deriving advertisementKey: %@", 35, 2, v249);

  sub_1001BAF88();
  v253 = swift_allocError();
  *v254 = 0;
  swift_willThrow();

LABEL_273:
  v369 = 0;
  v370 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v287 = v370;
  *(v1 + 472) = v369;
  *(v1 + 480) = v287;
  v288._countAndFlagsBits = 0xD000000000000021;
  v288._object = 0x800000010134CB30;
  String.append(_:)(v288);
  *(v1 + 584) = v253;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002BD4EC()
{

  v1 = swift_task_alloc();
  v0[202] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[203] = v2;
  *v1 = v0;
  v1[1] = sub_1002BD5D0;
  v3 = v0[174];

  return unsafeBlocking<A>(context:_:)(v0 + 68, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_1002BD5D0()
{
  v1 = *(*v0 + 1392);

  return _swift_task_switch(sub_1002BD6E8, v1, 0);
}

uint64_t sub_1002BD6E8()
{
  v1 = v0[81];
  v0[204] = v0[68];
  return _swift_task_switch(sub_1002BD70C, v1, 0);
}

uint64_t sub_1002BD70C()
{
  v1 = v0[204];
  v2 = v0[185];
  v3 = v0[184];
  v4 = swift_allocObject();
  v0[205] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  sub_10002E98C(v3, v2);

  v5 = swift_task_alloc();
  v0[206] = v5;
  v6 = sub_1000BC4D4(&qword_10169C980, &qword_1013C4A70);
  *v5 = v0;
  v5[1] = sub_1002BD824;

  return unsafeBlocking<A>(_:)(v0 + 67, sub_1002DB658, v4, v6);
}

uint64_t sub_1002BD824()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_1002BD950, v1, 0);
}

uint64_t sub_1002BD950()
{
  v521 = v0;
  v1 = *(v0 + 1608);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);
  v5 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 536);
  *(swift_task_alloc() + 16) = v2;
  sub_1012BC12C(sub_1002DB664, v7, v3);
  *(v0 + 1656) = v1;

  sub_1000D2A70(v3, v4, &unk_1016C1120, &qword_1013C49D0);
  v8 = (*(v5 + 48))(v4, 1, v6);
  v9 = *(v0 + 984);
  if (v8 == 1)
  {
    v514 = v1;
    sub_10000B3A8(v9, &unk_1016C1120, &qword_1013C49D0);
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 1448);
    v11 = *(v0 + 1336);
    v12 = *(v0 + 1312);
    v13 = *(v0 + 1272);
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177A818);
    v10(v12, v11, v13);
    swift_bridgeObjectRetain_n();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 1312);
    v19 = *(v0 + 1280);
    v20 = *(v0 + 1272);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v519 = swift_slowAlloc();
      *v21 = 141558787;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v19 + 8))(v18, v20);
      v25 = sub_1000136BC(v22, v24, &v519);

      *(v21 + 14) = v25;
      *(v21 + 22) = 2080;
      v26 = Array.description.getter();
      v28 = v27;

      v29 = sub_1000136BC(v26, v28, &v519);

      *(v21 + 24) = v29;
      *(v21 + 32) = 2048;
      v30 = *(v7 + 16);

      *(v21 + 34) = v30;

      _os_log_impl(&_mh_execute_header, v15, v16, "Could not reconcile beacon: %{private,mask.hash}s,found beacons: %s, found count: %ld.", v21, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      swift_bridgeObjectRelease_n();

      (*(v19 + 8))(v18, v20);
    }

    goto LABEL_11;
  }

  v31 = *(v0 + 960);

  sub_1002DB7C8(v9, v31, type metadata accessor for BeaconKeyManager.IndexInformation);
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 960);
  v33 = *(v0 + 952);
  v34 = *(v0 + 944);
  v35 = type metadata accessor for Logger();
  *(v0 + 1664) = sub_1000076D4(v35, qword_10177A818);
  sub_1002DB760(v32, v33, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_1002DB760(v32, v34, type metadata accessor for BeaconKeyManager.IndexInformation);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v515 = v1;
    v38 = *(v0 + 952);
    v39 = *(v0 + 944);
    v511 = *(v0 + 920);
    v40 = swift_slowAlloc();
    v519 = swift_slowAlloc();
    *v40 = 141558531;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_1002DBBF0(v38, type metadata accessor for BeaconKeyManager.IndexInformation);
    v44 = sub_1000136BC(v41, v43, &v519);

    *(v40 + 14) = v44;
    *(v40 + 22) = 2082;
    sub_1000035D0((v39 + *(v511 + 20)), *(v39 + *(v511 + 20) + 24));
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    sub_1002DBBF0(v39, type metadata accessor for BeaconKeyManager.IndexInformation);
    v48 = sub_1000136BC(v45, v47, &v519);
    v1 = v515;

    *(v40 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v36, v37, "Reconciled beacon: %{private,mask.hash}s, index: %{public}s.", v40, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v76 = *(v0 + 952);
    v77 = *(v0 + 944);

    sub_1002DBBF0(v76, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_1002DBBF0(v77, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v78 = *(v0 + 960);
  v79 = *(*(v0 + 920) + 20);
  *(v0 + 1780) = v79;
  v81 = *(v78 + v79 + 24);
  v80 = *(v78 + v79 + 32);
  sub_1000035D0((v78 + v79), v81);
  if (sub_10002BD40(v81, v80))
  {

LABEL_29:
    v83 = *(v0 + 1392);
    v84 = sub_1002C1B94;
    goto LABEL_30;
  }

  v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v82)
  {
    goto LABEL_29;
  }

  *(v0 + 1728) = v1;
  v356 = (*(v0 + 960) + *(v0 + 1780));
  v358 = v356[3];
  v357 = v356[4];
  sub_1000035D0(v356, v358);
  v359 = sub_10002BD40(v358, v357);
  v360 = (*(v0 + 960) + *(v0 + 1780));
  if (v359)
  {
    sub_10001F280(v360, v0 + 216);
  }

  else
  {
    sub_1000035D0(v360, v360[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v379 = *(v0 + 608);
    *(v0 + 240) = &type metadata for PrimaryWildIndex;
    *(v0 + 248) = sub_10022A528();
    *(v0 + 216) = v379;
  }

  sub_1000D2A70(v0 + 216, v0 + 136, &qword_10169C988, &unk_1013B3320);
  if (*(v0 + 160))
  {
    v380 = *(v0 + 1392);
    sub_10000A748((v0 + 136), v0 + 176);
    v84 = sub_1002C99B0;
    v83 = v380;
LABEL_30:
    v85 = 0;

    return _swift_task_switch(v84, v83, v85);
  }

  v514 = v1;
  v388 = *(v0 + 960);
  sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v388, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8(v0 + 136, &qword_10169C988, &unk_1013B3320);
LABEL_11:
  v49 = *(v0 + 1336);
  swift_beginAccess();
  sub_1005CAD18(v49, *(v0 + 520));
  if (v50)
  {
    v51 = v50;
    v52 = *(v0 + 1152);
    v53 = *(v0 + 1136);
    v54 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v52, v53, &qword_10169C970, &qword_101398A18);
    v55 = (v53 + *(v54 + 48));
    Hasher.init(_seed:)();
    sub_100D15128(&v519);
    v56 = Hasher._finalize()();
    v57 = -1 << *(v51 + 32);
    v58 = v56 & ~v57;
    if ((*(v51 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
    {
      v59 = ~v57;
      v60 = *v55;
      v61 = *(*(v0 + 808) + 72);
      do
      {
        v62 = *(v0 + 824);
        sub_1002DB760(*(v51 + 48) + v58 * v61, v62, type metadata accessor for RawSearchResult);
        v63 = *(v0 + 824);
        if (*v62 == v60 && (v64 = static Date.== infix(_:_:)(), v63 = *(v0 + 824), (v64 & 1) != 0) && (v65 = *(v0 + 800), *(v63 + v65[6]) == *&v55[v65[6]]) && *(v63 + v65[7]) == *&v55[v65[7]] && *(v63 + v65[8]) == *&v55[v65[8]])
        {
          v66 = *(v0 + 824);
          v67 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v66, type metadata accessor for RawSearchResult);
          if (v67)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1002DBBF0(v63, type metadata accessor for RawSearchResult);
        }

        v58 = (v58 + 1) & v59;
      }

      while (((*(v51 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0);
    }

    v68 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v55, v68, type metadata accessor for RawSearchResult);
    v519 = v51;
    sub_100DFE348(v68, v58, isUniquelyReferenced_nonNull_native);
    v51 = v519;
LABEL_24:
    sub_1002DBBF0(v55, type metadata accessor for RawSearchResult);
    v70 = *(v0 + 1448);
    v71 = *(v0 + 1336);
    v72 = *(v0 + 1328);
    v73 = *(v0 + 1272);
    v509 = *(*(v0 + 1280) + 8);
    (v509)(*(v0 + 1136), v73);
    v70(v72, v71, v73);
    swift_beginAccess();
    v74 = v51;
    v75 = v72;
  }

  else
  {
    v86 = *(v0 + 1448);
    v87 = *(v0 + 1336);
    v88 = *(v0 + 1328);
    v89 = *(v0 + 1280);
    v90 = *(v0 + 1272);
    v91 = *(v0 + 1152);
    v92 = *(v0 + 1128);
    v510 = *(v0 + 1016);
    v93 = *(v0 + 808);
    swift_endAccess();
    v86(v88, v87, v90);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v94 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_101385D80;
    sub_1000D2A70(v91, v92, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v92 + *(v510 + 48), v95 + v94, type metadata accessor for RawSearchResult);
    v509 = *(v89 + 8);
    (v509)(v92, v90);
    v96 = sub_10112A090(v95);
    swift_setDeallocating();
    sub_1002DBBF0(v95 + v94, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v74 = v96;
    v75 = v88;
  }

  sub_1001DE1B0(v74, v75);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_346;
  }

  while (1)
  {
    v97 = *(v0 + 1448);
    v98 = *(v0 + 1336);
    v99 = *(v0 + 1304);
    v100 = *(v0 + 1272);
    v101 = *(v0 + 1152);
    v102 = *(v0 + 1120);
    v103 = *(v0 + 1112);
    v506 = *(v0 + 1104);
    v512 = type metadata accessor for Logger();
    sub_1000076D4(v512, qword_10177A818);
    v97(v99, v98, v100);
    sub_1000D2A70(v101, v102, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v101, v103, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v101, v506, &qword_10169C970, &qword_101398A18);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v490 = v105;
      log = v104;
      v106 = *(v0 + 1304);
      v107 = *(v0 + 1272);
      v108 = *(v0 + 1128);
      v494 = *(v0 + 1120);
      v487 = *(v0 + 1104);
      v484 = *(v0 + 1112);
      v486 = *(v0 + 1096);
      v499 = *(v0 + 1016);
      v109 = *(v0 + 848);
      v478 = *(v0 + 840);
      v482 = *(v0 + 856);
      v501 = *(v0 + 800);
      v110 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v110 = 141559043;
      *(v110 + 4) = 1752392040;
      *(v110 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v111 = dispatch thunk of CustomStringConvertible.description.getter();
      v113 = v112;
      (v509)(v106, v107);
      v114 = sub_1000136BC(v111, v113, (v0 + 528));

      *(v110 + 14) = v114;
      *(v110 + 22) = 2082;
      sub_1000D2A70(v494, v108, &qword_10169C970, &qword_101398A18);
      v115 = v108 + *(v499 + 48);
      (*(v109 + 16))(v482, v115 + *(v501 + 20), v478);
      sub_1002DBBF0(v115, type metadata accessor for RawSearchResult);
      (v509)(v108, v107);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v116 = dispatch thunk of CustomStringConvertible.description.getter();
      v118 = v117;
      (*(v109 + 8))(v482, v478);
      sub_10000B3A8(v494, &qword_10169C970, &qword_101398A18);
      v119 = sub_1000136BC(v116, v118, (v0 + 528));

      *(v110 + 24) = v119;
      *(v110 + 32) = 2082;
      sub_1000D2A70(v484, v108, &qword_10169C970, &qword_101398A18);
      v120 = v108 + *(v499 + 48);
      LOBYTE(v119) = *(v120 + *(v501 + 36));
      sub_1002DBBF0(v120, type metadata accessor for RawSearchResult);
      (v509)(v108, v107);
      v121 = sub_100013454(v119);
      v123 = v122;
      sub_10000B3A8(v484, &qword_10169C970, &qword_101398A18);
      v124 = sub_1000136BC(v121, v123, (v0 + 528));

      *(v110 + 34) = v124;
      *(v110 + 42) = 2048;
      sub_1000D2A70(v487, v486, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v125 = *(v0 + 520);
      if (*(v125 + 16) && (v126 = sub_1000210EC(*(v0 + 1096)), (v127 & 1) != 0))
      {
        v128 = *(*(v125 + 56) + 8 * v126);
        swift_endAccess();
        v129 = *(v128 + 16);
      }

      else
      {
        swift_endAccess();
        v129 = 0;
      }

      v131 = *(v0 + 1568);
      v136 = *(v0 + 1560);
      v137 = *(v0 + 1272);
      v503 = *(v0 + 1152);
      v138 = *(v0 + 1104);
      v139 = *(v0 + 1096);
      v132 = *(v0 + 992);
      sub_1002DBBF0(v139 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      (v509)(v139, v137);
      sub_10000B3A8(v138, &qword_10169C970, &qword_101398A18);
      *(v110 + 44) = v129;
      v130 = log;
      _os_log_impl(&_mh_execute_header, log, v490, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v110, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v136, v131);
      sub_10000B3A8(v132, &unk_1016C1120, &qword_1013C49D0);
      v135 = v503;
    }

    else
    {
      v130 = *(v0 + 1632);
      v131 = *(v0 + 1568);
      v132 = *(v0 + 1560);
      v499 = *(v0 + 1272);
      v502 = *(v0 + 1304);
      v507 = *(v0 + 1152);
      v133 = *(v0 + 1120);
      v134 = *(v0 + 1112);
      v495 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v132, v131);
      sub_10000B3A8(v134, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v133, &qword_10169C970, &qword_101398A18);
      (v509)(v502, v499);
      sub_10000B3A8(v495, &unk_1016C1120, &qword_1013C49D0);
      v135 = v507;
    }

    sub_10000B3A8(v135, &qword_10169C970, &qword_101398A18);
    v140 = *(v0 + 1552) + 1;
    if (v140 != *(v0 + 1544))
    {
      *(v0 + 1552) = v140;
      v334 = *(v0 + 1536);
      if (v140 >= *(v334 + 16))
      {
LABEL_350:
        __break(1u);
        goto LABEL_351;
      }

      v335 = *(v0 + 1480);
      v336 = v335 >> 62;
      v337 = v334 + 24 * v140;
      v338 = *(v337 + 32);
      *(v0 + 1560) = v338;
      v131 = *(v337 + 40);
      *(v0 + 1568) = v131;
      v339 = *(v337 + 48);
      *(v0 + 1580) = *(v337 + 52);
      *(v0 + 1576) = v339;
      if ((v335 >> 62) > 1)
      {
        if (v336 != 2)
        {
          v132 = 0;
          v130 = 0;
          v341 = 0;
          v340 = 0;
          goto LABEL_252;
        }

        v355 = *(v0 + 1472);
        v130 = *(v355 + 16);
        v132 = *(v355 + 24);
      }

      else
      {
        if (!v336)
        {
          v130 = 0;
          v340 = 0;
          v132 = BYTE6(v335);
          v341 = BYTE6(v335);
          goto LABEL_252;
        }

        v355 = *(v0 + 1472);
        v132 = v355 >> 32;
        v130 = v355;
      }

      sub_10002E98C(v355, v335);
      if (v132 < v130)
      {
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
        goto LABEL_353;
      }

      v335 = *(v0 + 1480);
      v372 = *(v0 + 1472);
      if (v335 >> 62 == 2)
      {
        v340 = *(v372 + 16);
        v341 = *(v372 + 24);
      }

      else
      {
        v341 = v372 >> 32;
        v340 = v372;
      }

LABEL_252:
      if (v341 < v132 || v132 < v340)
      {
        goto LABEL_352;
      }

      if (__OFSUB__(v132, v130))
      {
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
        goto LABEL_362;
      }

      if ((v132 - v130) >= 0x39)
      {
        v132 = v130 + 57;
        if (__OFADD__(v130, 57))
        {
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
          goto LABEL_366;
        }

        v374 = v335 >> 62;
        if ((v335 >> 62) > 1)
        {
          if (v374 == 2)
          {
            v378 = *(v0 + 1472);
            v375 = *(v378 + 16);
            v376 = *(v378 + 24);
          }

          else
          {
            v376 = 0;
            v375 = 0;
          }
        }

        else if (v374)
        {
          v375 = *(v0 + 1472);
          v376 = v375 >> 32;
          v375 = v375;
        }

        else
        {
          v375 = 0;
          v376 = BYTE6(v335);
        }

        if (v376 < v132 || v132 < v375)
        {
          goto LABEL_363;
        }

        v390 = 0;
        if (v374 <= 1)
        {
          if (v374)
          {
            v390 = *(v0 + 1472);
          }

LABEL_285:
          if (v132 < v390)
          {
            goto LABEL_354;
          }

LABEL_286:
          v391 = *(v0 + 1472);
          sub_100017D5C(v338, v131);
          sub_100017D5C(v338, v131);
          v392 = Data._Representation.subscript.getter();
          v394 = v393;
          sub_100006654(v391, v335);
          v395 = v394 >> 62;
          if ((v394 >> 62) > 1)
          {
            if (v395 != 2)
            {
              goto LABEL_300;
            }

            v397 = *(v392 + 16);
            v396 = *(v392 + 24);
            v183 = __OFSUB__(v396, v397);
            v398 = v396 - v397;
            if (!v183)
            {
              if (v398 != 57)
              {
                goto LABEL_300;
              }

              goto LABEL_293;
            }

            __break(1u);
          }

          else
          {
            if (!v395)
            {
              if (BYTE6(v394) != 57)
              {
LABEL_300:
                v411 = v392;
                v412 = v394;
LABEL_301:
                sub_100016590(v411, v412);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_293:
              v132 = v514;
              v399 = sub_100A7A194(v392, v394, 0, 0);
              if (v514)
              {
                v131 = v0 + 560;
                v130 = static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_296:
                  v402 = qword_10177BA00;
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v403 = swift_allocObject();
                  *(v403 + 16) = xmmword_101385D80;
                  *v131 = v132;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v404 = String.init<A>(describing:)();
                  v406 = v405;
                  *(v403 + 56) = &type metadata for String;
                  *(v403 + 64) = sub_100008C00();
                  *(v403 + 32) = v404;
                  *(v403 + 40) = v406;
                  os_log(_:dso:log:_:_:)(v130, &_mh_execute_header, v402, "Error deriving advertisementKey: %@", 35, 2, v403);

                  sub_1001BAF88();
                  v407 = swift_allocError();
                  *v408 = 0;
                  swift_willThrow();

LABEL_297:
                  v519 = 0;
                  v520 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v409 = v520;
                  *(v0 + 504) = v519;
                  *(v0 + 512) = v409;
                  v410._countAndFlagsBits = 0xD000000000000021;
                  v410._object = 0x800000010134CB30;
                  String.append(_:)(v410);
                  *(v0 + 552) = v407;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_366:
                swift_once();
                goto LABEL_296;
              }

              v400 = sub_100A7829C(v399, 0, 2);
              *(v0 + 1584) = v400;
              *(v0 + 1592) = v401;
              v414 = v400;
              v415 = v401;
              v84 = CCECCryptorRelease();
              v416 = v415 >> 62;
              if ((v415 >> 62) > 1)
              {
                if (v416 != 2)
                {
                  v432 = 0;
                  goto LABEL_340;
                }

                v424 = v414[2];
                v423 = v414[3];
                v183 = __OFSUB__(v423, v424);
                v417 = v423 - v424;
                if (v183)
                {
                  __break(1u);
                  v425 = *(v0 + 792);
                  v426 = *(v0 + 712);

                  sub_100016590(v338, v392);

                  sub_100016590(v499, v486);

                  sub_1002DBBF0(v425, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v426, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);

                  v427 = *(v0 + 8);

                  return v427();
                }
              }

              else if (v416)
              {
                LODWORD(v417) = HIDWORD(v414) - v414;
                if (__OFSUB__(HIDWORD(v414), v414))
                {
                  goto LABEL_373;
                }

                v417 = v417;
              }

              else
              {
                v417 = BYTE6(v415);
              }

              if (v417 == 28)
              {
                sub_100016590(v392, v394);
                v428 = swift_task_alloc();
                *(v0 + 1600) = v428;
                *v428 = v0;
                v428[1] = sub_1002BA248;
                v429 = *(v0 + 1528);
                v430 = *(v0 + 1336);
                v431 = *(v0 + 1008);

                return sub_1002D7014(v431, v338, v131, v429, v414, v415, 0, v430);
              }

              if (v416 == 2)
              {
                v434 = v414[2];
                v433 = v414[3];
                v432 = v433 - v434;
                if (!__OFSUB__(v433, v434))
                {
                  goto LABEL_340;
                }

                __break(1u);
              }

              else if (v416 == 1)
              {
                if (__OFSUB__(HIDWORD(v414), v414))
                {
                  goto LABEL_374;
                }

                v432 = HIDWORD(v414) - v414;
                goto LABEL_340;
              }

              v432 = BYTE6(v415);
LABEL_340:
              sub_100018350();
              v407 = swift_allocError();
              *v435 = 28;
              *(v435 + 8) = v432;
              *(v435 + 16) = 0;
              swift_willThrow();
              sub_100016590(v414, v415);
              goto LABEL_297;
            }

            if (!__OFSUB__(HIDWORD(v392), v392))
            {
              if (HIDWORD(v392) - v392 != 57)
              {
                goto LABEL_300;
              }

              goto LABEL_293;
            }
          }

          __break(1u);
LABEL_369:
          swift_once();
          goto LABEL_271;
        }

        if (v374 != 2)
        {
          goto LABEL_285;
        }

        v377 = *(v0 + 1472);
      }

      else
      {
        v373 = v335 >> 62;
        if ((v335 >> 62) <= 1)
        {
          if (!v373)
          {
            v132 = BYTE6(v335);
            goto LABEL_286;
          }

          v389 = *(v0 + 1472);
          v132 = v389 >> 32;
          v390 = v389;
          goto LABEL_285;
        }

        if (v373 != 2)
        {
          v132 = 0;
          goto LABEL_286;
        }

        v377 = *(v0 + 1472);
        v132 = *(v377 + 24);
      }

      v390 = *(v377 + 16);
      goto LABEL_285;
    }

    v141 = *(v0 + 1480);
    v131 = *(v0 + 1472);
    v132 = *(v0 + 1384);
    v142 = *(v0 + 1344);
    v143 = *(v0 + 1336);
    v144 = *(v0 + 1280);
    v145 = *(v0 + 1272);

    sub_100006654(v131, v141);
    v146 = *(v144 + 8);
    v146(v142, v145);
    sub_1002DBBF0(v132, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v146(v143, v145);
    v147 = *(v0 + 1408) + 1;
    p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
    if (v147 == *(v0 + 1400))
    {
      break;
    }

    v131 = &qword_1016980D0;
    v132 = &unk_10138F3B0;
    while (1)
    {
      *(v0 + 1408) = v147;
      v343 = *(v0 + 632);
      if (!v343)
      {
        v343 = _swiftEmptyArrayStorage;
      }

      if (v147 >= v343[2])
      {
        break;
      }

      v344 = *(v0 + 1384);
      v345 = *(v0 + 1352);
      v346 = *(v0 + 1280);
      v347 = *(v0 + 1272);
      v348 = *(v0 + 1264);
      sub_1002DB760(v343 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v147, v344, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v349 = *(v344 + 16);
      v350 = *(v344 + 24);
      sub_1000D2A70(v344 + *(v345 + 28), v348, &qword_1016980D0, &unk_10138F3B0);
      v351 = *(v346 + 48);
      *(v0 + 1416) = v351;
      *(v0 + 1424) = (v346 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v351(v348, 1, v347) != 1)
      {
        v363 = *(v0 + 1344);
        v364 = *(v0 + 1280);
        v365 = *(v0 + 1272);
        v366 = *(v0 + 1264);
        v367 = *(v0 + 1256);
        v368 = *(v364 + 32);
        *(v0 + 1432) = v368;
        *(v0 + 1440) = (v364 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v368(v363, v366, v365);
        v369 = *(v364 + 16);
        *(v0 + 1448) = v369;
        *(v0 + 1456) = (v364 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v369(v367, v363, v365);
        (*(v364 + 56))(v367, 0, 1, v365);
        v370 = swift_task_alloc();
        *(v0 + 1464) = v370;
        *v370 = v0;
        v370[1] = sub_1002B09AC;
        v371 = *(v0 + 1256);

        return sub_1002D5B7C(v349, v350, v371);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v512, qword_10177A818);
      v352 = Logger.logObject.getter();
      v353 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v352, v353))
      {
        v354 = swift_slowAlloc();
        *v354 = 0;
        _os_log_impl(&_mh_execute_header, v352, v353, "Missing share id in payload.", v354, 2u);
      }

      v342 = *(v0 + 1384);

      sub_1002DBBF0(v342, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v147 = *(v0 + 1408) + 1;
      if (v147 == *(v0 + 1400))
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    swift_once();
  }

LABEL_44:
  v130 = _swiftEmptyArrayStorage;

  if (*(v0 + 624))
  {
    v149 = *(v0 + 624);
  }

  else
  {
    v149 = _swiftEmptyArrayStorage;
  }

  v468 = v149[2];
  if (!v468)
  {

LABEL_240:

    swift_beginAccess();
    v513 = *(v0 + 520);

    v361 = *(v0 + 8);

    return v361(v513);
  }

  v150 = *(v0 + 1280);
  v437 = (v0 + 600);
  v151 = *(v0 + 1024);
  v473 = *(v0 + 1016);
  v152 = *(v0 + 848);
  v438 = *(v0 + 808);
  v485 = *(v0 + 800);
  v475 = *(v0 + 792);
  v508 = *(v0 + 776);
  v474 = *(v0 + 744);
  v153 = *(v0 + 728);
  v471 = v149 + 4;
  v491 = (v153 + 8);
  loga = (v153 + 104);
  v483 = *(v0 + 704);
  v445 = (*(v0 + 928) + 56);
  v458 = (v152 + 16);
  v459 = *(v0 + 752);
  v444 = *(v0 + 664);
  v443 = (v152 + 56);
  v456 = *(v0 + 712);
  v457 = (v152 + 8);
  v442 = (v150 + 16);
  v440 = (v151 + 48);
  v441 = (v151 + 56);
  v470 = *(*(v0 + 640) + 16);
  v460 = (v150 + 8);
  v489 = enum case for HashAlgorithm.sha256(_:);

  v154 = 0;
  v439 = xmmword_101385D80;
  v469 = v149;
  while (2)
  {
    if (v154 >= v149[2])
    {
      goto LABEL_355;
    }

    v472 = v154;
    v155 = &v471[3 * v154];
    v157 = *v155;
    v156 = v155[1];
    v486 = v156;
    v500 = *v155;
    v488 = v155[2];
    if (!v470)
    {
      sub_100017D5C(v157, v156);

LABEL_159:
      if (p_weak_ivar_lyt[162] != -1)
      {
        swift_once();
      }

      sub_1000076D4(v512, qword_10177A818);
      sub_100017D5C(v500, v486);

      v130 = v486;
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      sub_100016590(v500, v486);

      v149 = v469;
      if (os_log_type_enabled(v131, v132))
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v519 = v209;
        *v208 = 141558275;
        *(v208 + 4) = 1752392040;
        *(v208 + 12) = 2081;
        *(v0 + 488) = v500;
        *(v0 + 496) = v486;
        sub_10025DB08();
        v210 = RawRepresentable<>.hexString.getter();
        v130 = v211;
        v212 = sub_1000136BC(v210, v211, &v519);

        *(v208 + 14) = v212;
        _os_log_impl(&_mh_execute_header, v131, v132, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v208, 0x16u);
        sub_100007BAC(v209);
        v149 = v469;
      }

      sub_100016590(v500, v486);

      goto LABEL_164;
    }

    v130 = *(v0 + 640) + ((*(v459 + 80) + 32) & ~*(v459 + 80));
    sub_100017D5C(v157, v156);
    if (v157)
    {
      v158 = 0;
    }

    else
    {
      v158 = v156 == 0xC000000000000000;
    }

    v159 = !v158;
    v479 = v159;
    v504 = v156 >> 62;
    v476 = BYTE6(v156);
    v496 = *(v459 + 72);
    v160 = __OFSUB__(HIDWORD(v157), v157);
    v464 = v160;
    v461 = HIDWORD(v157) - v157;

    v161 = v470;
LABEL_64:
    v163 = *(v0 + 776);
    sub_1002DB760(v130, v163, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v164 = *v163;
    v165 = *(v508 + 8);
    v131 = v165 >> 62;
    if ((v165 >> 62) > 1)
    {
      v132 = v514;
      if (v131 == 2)
      {
        v166 = *(v164 + 16);
        v168 = *(v164 + 24);
        sub_100017D5C(v164, *(v508 + 8));
        v167 = *(v164 + 16);
        v169 = *(v164 + 24);
      }

      else
      {
        v166 = 0;
        v168 = 0;
        v169 = 0;
        v167 = 0;
      }
    }

    else
    {
      v132 = v514;
      if (v131)
      {
        v166 = v164;
        v168 = v164 >> 32;
        sub_100017D5C(v164, *(v508 + 8));
        v169 = v164 >> 32;
        v167 = v164;
      }

      else
      {
        v166 = 0;
        v167 = 0;
        v168 = BYTE6(v165);
        v169 = BYTE6(v165);
      }
    }

    if (v169 < v166 || v166 < v167)
    {
      goto LABEL_342;
    }

    if (v131 > 1)
    {
      if (v131 == 2)
      {
        v170 = *(v164 + 16);
        v171 = *(v164 + 24);
      }

      else
      {
        v171 = 0;
        v170 = 0;
      }
    }

    else if (v131)
    {
      v170 = v164;
      v171 = v164 >> 32;
    }

    else
    {
      v170 = 0;
      v171 = BYTE6(v165);
    }

    if (v171 < v168 || v168 < v170)
    {
      goto LABEL_343;
    }

    if (__OFSUB__(v168, v166))
    {
      goto LABEL_344;
    }

    if ((v168 - v166) >= 0x39)
    {
      v172 = v166 + 57;
      if (!__OFADD__(v166, 57))
      {
        if (v131 > 1)
        {
          if (v131 == 2)
          {
            v173 = *(v164 + 16);
            v174 = *(v164 + 24);
          }

          else
          {
            v174 = 0;
            v173 = 0;
          }
        }

        else if (v131)
        {
          v173 = v164;
          v174 = v164 >> 32;
        }

        else
        {
          v173 = 0;
          v174 = BYTE6(v165);
        }

        if (v174 < v172 || v172 < v173)
        {
          goto LABEL_348;
        }

        v175 = 0;
        if (v131 <= 1)
        {
          if (v131)
          {
            goto LABEL_103;
          }

          goto LABEL_106;
        }

        if (v131 == 3)
        {
          goto LABEL_106;
        }

        goto LABEL_105;
      }

      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
      goto LABEL_350;
    }

    if (v131 > 1)
    {
      if (v131 != 2)
      {
        goto LABEL_107;
      }

      v172 = *(v164 + 24);
LABEL_105:
      v175 = *(v164 + 16);
      goto LABEL_106;
    }

    if (!v131)
    {
      goto LABEL_107;
    }

    v172 = v164 >> 32;
LABEL_103:
    v175 = v164;
LABEL_106:
    if (v172 < v175)
    {
      goto LABEL_345;
    }

LABEL_107:
    v509 = v161;
    v176 = Data._Representation.subscript.getter();
    v178 = v177;
    sub_100016590(v164, v165);
    v179 = v178 >> 62;
    if ((v178 >> 62) > 1)
    {
      if (v179 != 2)
      {
        goto LABEL_303;
      }

      v182 = *(v176 + 16);
      v181 = *(v176 + 24);
      v183 = __OFSUB__(v181, v182);
      v180 = v181 - v182;
      if (v183)
      {
        goto LABEL_356;
      }
    }

    else if (v179)
    {
      LODWORD(v180) = HIDWORD(v176) - v176;
      if (__OFSUB__(HIDWORD(v176), v176))
      {
        goto LABEL_357;
      }

      v180 = v180;
    }

    else
    {
      v180 = BYTE6(v178);
    }

    if (v180 != 57)
    {
LABEL_303:
      v411 = v176;
      v412 = v178;
      goto LABEL_301;
    }

    v184 = sub_100A7A194(v176, v178, 0, 0);
    if (!v132)
    {
      v185 = sub_100A7829C(v184, 0, 2);
      v131 = v186;
      v84 = CCECCryptorRelease();
      v187 = v131 >> 62;
      if ((v131 >> 62) > 1)
      {
        if (v187 == 2)
        {
          v190 = *(v185 + 16);
          v189 = *(v185 + 24);
          v183 = __OFSUB__(v189, v190);
          v188 = v189 - v190;
          if (v183)
          {
            goto LABEL_359;
          }

          goto LABEL_127;
        }

        v413 = 0;
LABEL_316:
        sub_100018350();
        v386 = swift_allocError();
        *v420 = 28;
        *(v420 + 8) = v413;
        *(v420 + 16) = 0;
        swift_willThrow();
        sub_100016590(v185, v131);
        goto LABEL_317;
      }

      if (v187)
      {
        LODWORD(v188) = HIDWORD(v185) - v185;
        if (__OFSUB__(HIDWORD(v185), v185))
        {
          goto LABEL_358;
        }

        v188 = v188;
      }

      else
      {
        v188 = BYTE6(v131);
      }

LABEL_127:
      if (v188 == 28)
      {
        v191 = *(v0 + 736);
        v192 = *(v0 + 720);
        sub_100016590(v176, v178);
        (loga->isa)(v191, v489, v192);
        v193 = Data.hash(algorithm:)();
        v195 = v194;
        sub_100016590(v185, v131);
        (*v491)(v191, v192);
        v196 = v195 >> 62;
        if (v195 >> 62 == 3)
        {
          if (v193)
          {
            v197 = 0;
          }

          else
          {
            v197 = v195 == 0xC000000000000000;
          }

          v198 = v504;
          v200 = !v197 || v504 < 3;
          p_weak_ivar_lyt = (&BeaconKeyManager + 56);
          if (((v200 | v479) & 1) == 0)
          {
            v213 = 0;
            v214 = 0xC000000000000000;
            goto LABEL_168;
          }

          v201 = 0;
          if (v504 > 1)
          {
LABEL_152:
            if (v198 != 2)
            {
              if (!v201)
              {
                goto LABEL_166;
              }

LABEL_62:
              sub_100016590(v193, v195);
              v514 = 0;
              v162 = v509;
              goto LABEL_63;
            }

            v206 = *(v500 + 16);
            v205 = *(v500 + 24);
            v183 = __OFSUB__(v205, v206);
            v204 = v205 - v206;
            if (v183)
            {
              goto LABEL_360;
            }

            goto LABEL_154;
          }
        }

        else
        {
          p_weak_ivar_lyt = (&BeaconKeyManager + 56);
          v198 = v504;
          if (v196 == 2)
          {
            v203 = *(v193 + 16);
            v202 = *(v193 + 24);
            v183 = __OFSUB__(v202, v203);
            v201 = v202 - v203;
            if (v183)
            {
              goto LABEL_365;
            }

            if (v504 > 1)
            {
              goto LABEL_152;
            }
          }

          else if (v196 == 1)
          {
            LODWORD(v201) = HIDWORD(v193) - v193;
            if (__OFSUB__(HIDWORD(v193), v193))
            {
              goto LABEL_364;
            }

            v201 = v201;
            if (v504 > 1)
            {
              goto LABEL_152;
            }
          }

          else
          {
            v201 = BYTE6(v195);
            if (v504 > 1)
            {
              goto LABEL_152;
            }
          }
        }

        v204 = v476;
        if (v198)
        {
          v204 = v461;
          if (v464)
          {
            goto LABEL_361;
          }
        }

LABEL_154:
        if (v201 != v204)
        {
          goto LABEL_62;
        }

        if (v201 < 1)
        {
LABEL_166:
          v213 = v193;
          v214 = v195;
LABEL_168:
          sub_100016590(v213, v214);
          v514 = 0;
LABEL_169:
          v215 = *(v0 + 792);
          v131 = *(v0 + 784);
          v132 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey;
          sub_1002DB7C8(*(v0 + 776), v131, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v131, v215, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v130 = v488;
          v216 = *(v488 + 16);
          v149 = v469;
          if (v216)
          {
            v509 = (v488 + ((*(v483 + 80) + 32) & ~*(v483 + 80)));

            v217 = 0;
            v505 = v216;
            while (v217 < *(v488 + 16))
            {
              sub_1002DB760(&v509[*(v483 + 72) * v217], *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v516 = v217;
              v218 = sub_100496ABC();
              v219 = **(v0 + 712);
              v220 = *(v456 + 8);
              v221 = **(v0 + 792);
              v222 = *(v475 + 8);
              sub_100017D5C(v221, v222);
              sub_10002EA98(57, v221, v222, &v519);
              sub_100496F68(v519, v520, &v517);
              v223 = v518;
              if (v518 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v480 = *(v0 + 792);
              v224 = v517;
              v225 = PublicKey.advertisement.getter(v517, v518);
              v227 = v226;
              v84 = sub_100006654(v224, v223);
              v228 = v220 >> 62;
              v497 = *(v474 + 20);
              if ((v220 >> 62) > 1)
              {
                if (v228 == 2)
                {
                  v231 = *(v219 + 16);
                  v230 = *(v219 + 24);
                  v229 = v230 - v231;
                  if (__OFSUB__(v230, v231))
                  {
                    goto LABEL_371;
                  }
                }

                else
                {
                  v229 = 0;
                }
              }

              else if (v228)
              {
                if (__OFSUB__(HIDWORD(v219), v219))
                {
                  __break(1u);
LABEL_371:
                  __break(1u);
                  goto LABEL_372;
                }

                v229 = HIDWORD(v219) - v219;
              }

              else
              {
                v229 = BYTE6(v220);
              }

              sub_100A2A240(3);
              v233 = v232;
              v234 = v218;
              sub_100017D5C(v219, v220);
              sub_100017D5C(v225, v227);
              if (v229 >= v233)
              {
                v235 = (v0 + 672);
                sub_100A2AA58(v234, v219, v220, v225, v227, *(v0 + 672));
              }

              else
              {
                v235 = (v0 + 680);
                sub_100A2B118(v234, v219, v220, v225, v227, *(v0 + 680));
              }

              v451 = v225;
              v477 = v234;
              v236 = *v235;
              v462 = *(v0 + 1272);
              v465 = *(v0 + 1016);
              v455 = *(v0 + 1000);
              v237 = *(v0 + 976);
              v446 = *(v0 + 968);
              v238 = *(v0 + 920);
              v239 = *(v0 + 856);
              v240 = *(v0 + 840);
              v241 = *(v0 + 832);
              v242 = *(v0 + 696);
              v243 = *(v0 + 688);
              v244 = *(v0 + 656);
              sub_1002DB7C8(v236, v243, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v243, v242, type metadata accessor for BeaconPayloadv1);
              v245 = v237;
              v448 = v237;
              (*v445)(v237, 1, 1, v238);
              v453 = *(v242 + v444[10]);
              v246 = *v458;
              (*v458)(v239, v242 + v444[5], v240);
              v247 = *(v242 + v444[7]);
              v248 = *(v242 + v444[8]);
              v249 = *(v242 + v444[9]);
              (*v443)(v244, 1, 1, v240);
              sub_1000D2A70(v245, v446, &unk_1016C1120, &qword_1013C49D0);
              v436 = v246;
              v246(&v241[v485[5]], v239, v240);
              sub_1000D2A70(v244, &v241[v485[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v446, &v241[v485[11]], &unk_1016C1120, &qword_1013C49D0);
              UUID.init()();
              sub_100016590(v451, v227);
              sub_10000B3A8(v446, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v244, &unk_101696900, &unk_10138B1E0);
              v250 = *v457;
              (*v457)(v239, v240);
              sub_10000B3A8(v448, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v242, type metadata accessor for BeaconPayloadv1);
              *v241 = v453;
              *&v241[v485[6]] = v247;
              *&v241[v485[7]] = v248;
              *&v241[v485[8]] = v249;
              v241[v485[9]] = 15;
              *&v241[v485[13]] = 256;
              v251 = *(v473 + 48);
              (*v442)(v455, v480 + v497, v462);
              sub_1002DB7C8(v241, v455 + v251, type metadata accessor for RawSearchResult);
              (*v441)(v455, 0, 1, v465);
              if ((*v440)(v455, 1, v465) == 1)
              {
                v252 = *(v0 + 1000);

                sub_10000B3A8(v252, &qword_10169C968, &qword_101398A10);
                p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
                v253 = v505;
                v254 = v516;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v255 = *(v0 + 792);
                v256 = *(v0 + 760);
                sub_1000076D4(v512, qword_10177A818);
                sub_1002DB760(v255, v256, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v131 = Logger.logObject.getter();
                v132 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v131, v132))
                {
                  v257 = *(v0 + 760);
                  v258 = swift_slowAlloc();
                  v259 = swift_slowAlloc();
                  v519 = v259;
                  *v258 = 141558275;
                  *(v258 + 4) = 1752392040;
                  *(v258 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v260 = dispatch thunk of CustomStringConvertible.description.getter();
                  v262 = v261;
                  v263 = v257;
                  p_weak_ivar_lyt = (&BeaconKeyManager + 56);
                  sub_1002DBBF0(v263, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v130 = sub_1000136BC(v260, v262, &v519);

                  *(v258 + 14) = v130;
                  _os_log_impl(&_mh_execute_header, v131, v132, "Could not create search result for beacon: %{private,mask.hash}s.", v258, 0x16u);
                  sub_100007BAC(v259);
                  v253 = v505;
                }

                else
                {
                  v130 = *(v0 + 760);

                  sub_1002DBBF0(v130, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v481 = v250;
                v264 = *(v0 + 1088);
                v265 = *(v0 + 1080);
                sub_1000D2AD8(*(v0 + 1000), v264, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v264, v265, &qword_10169C970, &qword_101398A18);
                v266 = *(v473 + 48);
                swift_beginAccess();
                sub_1005CAD18(v265, *(v0 + 520));
                v268 = *(v0 + 1272);
                if (v267)
                {
                  v269 = v267;
                  v466 = *(v0 + 1088);
                  v270 = *(v0 + 1080);
                  v271 = *(v0 + 1072);
                  swift_endAccess();
                  sub_1002DBBF0(v265 + v266, type metadata accessor for RawSearchResult);
                  v498 = *v460;
                  (*v460)(v270, v268);
                  sub_1000D2A70(v466, v271, &qword_10169C970, &qword_101398A18);
                  v272 = (v271 + *(v473 + 48));
                  Hasher.init(_seed:)();
                  sub_100D15128(&v519);
                  v273 = Hasher._finalize()();
                  v274 = -1 << *(v269 + 32);
                  v275 = v273 & ~v274;
                  if ((*(v269 + 56 + ((v275 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v275))
                  {
                    v276 = ~v274;
                    v277 = *v272;
                    v278 = *(v438 + 72);
                    do
                    {
                      v279 = *(v0 + 816);
                      sub_1002DB760(*(v269 + 48) + v275 * v278, v279, type metadata accessor for RawSearchResult);
                      v280 = *(v0 + 816);
                      if (*v279 == v277 && (v281 = static Date.== infix(_:_:)(), v280 = *(v0 + 816), (v281 & 1) != 0) && *(v280 + v485[6]) == *&v272[v485[6]] && *(v280 + v485[7]) == *&v272[v485[7]] && *(v280 + v485[8]) == *&v272[v485[8]])
                      {
                        v282 = *(v0 + 816);
                        v283 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v282, type metadata accessor for RawSearchResult);
                        if (v283)
                        {
                          goto LABEL_206;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v280, type metadata accessor for RawSearchResult);
                      }

                      v275 = (v275 + 1) & v276;
                    }

                    while (((*(v269 + 56 + ((v275 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v275) & 1) != 0);
                  }

                  v284 = *(v0 + 832);
                  v285 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v272, v284, type metadata accessor for RawSearchResult);
                  v519 = v269;
                  sub_100DFE348(v284, v275, v285);
                  v269 = v519;
LABEL_206:
                  sub_1002DBBF0(v272, type metadata accessor for RawSearchResult);
                  v286 = *(v0 + 1128);
                  v287 = *(v0 + 1088);
                  v498(*(v0 + 1072), *(v0 + 1272));
                  sub_1000D2A70(v287, v286, &qword_10169C970, &qword_101398A18);
                  v288 = *(v473 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v269, v286);
                }

                else
                {
                  v289 = *(v0 + 1128);
                  v290 = *(v0 + 1088);
                  v291 = *(v0 + 1080);
                  v292 = *(v0 + 1064);
                  swift_endAccess();
                  sub_1002DBBF0(v265 + v266, type metadata accessor for RawSearchResult);
                  v498 = *v460;
                  (*v460)(v291, v268);
                  sub_1000D2A70(v290, v289, &qword_10169C970, &qword_101398A18);
                  v288 = *(v473 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v293 = (*(v438 + 80) + 32) & ~*(v438 + 80);
                  v294 = swift_allocObject();
                  *(v294 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v290, v292, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v292 + *(v473 + 48), v294 + v293, type metadata accessor for RawSearchResult);
                  v498(v292, v268);
                  v295 = sub_10112A090(v294);
                  swift_setDeallocating();
                  sub_1002DBBF0(v294 + v293, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v296 = swift_isUniquelyReferenced_nonNull_native();
                  v519 = *(v0 + 520);
                  sub_100FFC200(v295, v289, v296);
                  v498(v289, v268);
                  *(v0 + 520) = v519;
                }

                swift_endAccess();
                sub_1002DBBF0(*(v0 + 1128) + v288, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v297 = *(v0 + 1088);
                v298 = *(v0 + 1056);
                v299 = *(v0 + 1048);
                v300 = *(v0 + 1040);
                v301 = *(v0 + 792);
                v302 = *(v0 + 768);
                sub_1000076D4(v512, qword_10177A818);
                sub_1002DB760(v301, v302, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v297, v298, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v297, v299, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v297, v300, &qword_10169C970, &qword_101398A18);
                v303 = Logger.logObject.getter();
                v304 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v303, v304))
                {
                  v463 = v304;
                  v467 = v303;
                  v305 = *(v0 + 1272);
                  v306 = *(v0 + 1128);
                  v307 = *(v0 + 1056);
                  v454 = *(v0 + 1040);
                  v450 = *(v0 + 1048);
                  v452 = *(v0 + 1032);
                  v447 = *(v0 + 840);
                  v449 = *(v0 + 856);
                  v308 = *(v0 + 768);
                  v309 = swift_slowAlloc();
                  v519 = swift_slowAlloc();
                  *v309 = 141559043;
                  *(v309 + 4) = 1752392040;
                  *(v309 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v310 = dispatch thunk of CustomStringConvertible.description.getter();
                  v312 = v311;
                  sub_1002DBBF0(v308, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v313 = sub_1000136BC(v310, v312, &v519);

                  *(v309 + 14) = v313;
                  *(v309 + 22) = 2082;
                  sub_1000D2A70(v307, v306, &qword_10169C970, &qword_101398A18);
                  v314 = v306 + *(v473 + 48);
                  v436(v449, v314 + v485[5], v447);
                  sub_1002DBBF0(v314, type metadata accessor for RawSearchResult);
                  v498(v306, v305);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v315 = dispatch thunk of CustomStringConvertible.description.getter();
                  v317 = v316;
                  v481(v449, v447);
                  sub_10000B3A8(v307, &qword_10169C970, &qword_101398A18);
                  v318 = sub_1000136BC(v315, v317, &v519);

                  *(v309 + 24) = v318;
                  *(v309 + 32) = 2082;
                  sub_1000D2A70(v450, v306, &qword_10169C970, &qword_101398A18);
                  v319 = v306 + *(v473 + 48);
                  LOBYTE(v318) = *(v319 + v485[9]);
                  sub_1002DBBF0(v319, type metadata accessor for RawSearchResult);
                  v498(v306, v305);
                  v320 = sub_100013454(v318);
                  v322 = v321;
                  sub_10000B3A8(v450, &qword_10169C970, &qword_101398A18);
                  v323 = sub_1000136BC(v320, v322, &v519);

                  *(v309 + 34) = v323;
                  *(v309 + 42) = 2048;
                  sub_1000D2A70(v454, v452, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v324 = *(v0 + 520);
                  if (*(v324 + 16) && (v325 = sub_1000210EC(*(v0 + 1032)), (v326 & 1) != 0))
                  {
                    v327 = *(*(v324 + 56) + 8 * v325);
                    swift_endAccess();
                    v328 = *(v327 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v328 = 0;
                  }

                  p_weak_ivar_lyt = (&BeaconKeyManager + 56);
                  v253 = v505;
                  v330 = *(v0 + 1272);
                  v130 = *(v0 + 1088);
                  v331 = *(v0 + 1040);
                  v332 = *(v0 + 1032);
                  sub_1002DBBF0(v332 + *(v473 + 48), type metadata accessor for RawSearchResult);
                  v498(v332, v330);
                  v333 = v331;
                  v131 = &qword_10169C970;
                  v132 = &qword_101398A18;
                  sub_10000B3A8(v333, &qword_10169C970, &qword_101398A18);
                  *(v309 + 44) = v328;
                  _os_log_impl(&_mh_execute_header, v467, v463, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v309, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v130, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v130 = *(v0 + 1088);
                  v131 = *(v0 + 1056);
                  v132 = *(v0 + 1048);
                  v329 = *(v0 + 768);
                  sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v132, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v131, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v329, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v130, &qword_10169C970, &qword_101398A18);
                  p_weak_ivar_lyt = (&BeaconKeyManager + 56);
                  v253 = v505;
                }

                v254 = v516;
              }

              v217 = v254 + 1;
              sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              if (v217 == v253)
              {
                v130 = v488;

                sub_100016590(v500, v486);

                v514 = 0;
                v149 = v469;
                goto LABEL_220;
              }
            }

            goto LABEL_349;
          }

          sub_100016590(v500, v486);

LABEL_220:
          sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_164:
          v154 = v472 + 1;
          if (v472 + 1 == v468)
          {
            goto LABEL_240;
          }

          continue;
        }

        sub_100017D5C(v500, v486);
        sub_100017D5C(v500, v486);
        sub_100017D5C(v193, v195);
        v207 = sub_100F0B1BC(v193, v195, v500, v486);
        v514 = 0;
        sub_100016590(v193, v195);
        sub_100016590(v193, v195);
        sub_100016590(v500, v486);
        v162 = v509;
        if (v207)
        {
          goto LABEL_169;
        }

LABEL_63:
        sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v130 += v496;
        v161 = v162 - 1;
        if (!v161)
        {
          goto LABEL_159;
        }

        goto LABEL_64;
      }

      if (v187 == 2)
      {
        v419 = *(v185 + 16);
        v418 = *(v185 + 24);
        v413 = v418 - v419;
        if (!__OFSUB__(v418, v419))
        {
          goto LABEL_316;
        }

        __break(1u);
      }

      else if (v187 == 1)
      {
        if (!__OFSUB__(HIDWORD(v185), v185))
        {
          v413 = HIDWORD(v185) - v185;
          goto LABEL_316;
        }

LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
        return _swift_task_switch(v84, v83, v85);
      }

      v413 = BYTE6(v131);
      goto LABEL_316;
    }

    break;
  }

  v130 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_369;
  }

LABEL_271:
  v381 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v382 = swift_allocObject();
  *(v382 + 16) = v439;
  *v437 = v132;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v383 = String.init<A>(describing:)();
  v385 = v384;
  *(v382 + 56) = &type metadata for String;
  *(v382 + 64) = sub_100008C00();
  *(v382 + 32) = v383;
  *(v382 + 40) = v385;
  os_log(_:dso:log:_:_:)(v130, &_mh_execute_header, v381, "Error deriving advertisementKey: %@", 35, 2, v382);

  sub_1001BAF88();
  v386 = swift_allocError();
  *v387 = 0;
  swift_willThrow();

LABEL_317:
  v519 = 0;
  v520 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v421 = v520;
  *(v0 + 472) = v519;
  *(v0 + 480) = v421;
  v422._countAndFlagsBits = 0xD000000000000021;
  v422._object = 0x800000010134CB30;
  String.append(_:)(v422);
  *(v0 + 584) = v386;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002C1B94()
{

  v1 = swift_task_alloc();
  v0[209] = v1;
  *v1 = v0;
  v1[1] = sub_1002C1C6C;
  v2 = v0[203];
  v3 = v0[174];

  return unsafeBlocking<A>(context:_:)(v0 + 77, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1002C1C6C()
{
  v1 = *(*v0 + 1392);

  return _swift_task_switch(sub_1002C1D84, v1, 0);
}

uint64_t sub_1002C1D84()
{
  v1 = v0[81];
  v0[210] = v0[77];
  return _swift_task_switch(sub_1002C1DA8, v1, 0);
}

uint64_t sub_1002C1DA8()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = *(v0[210] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v0[211] = v3;

  v4 = PrivateKey.publicKey.getter(v2, v1);
  v6 = v5;
  v0[212] = PublicKey.advertisement.getter(v4, v5);
  v0[213] = v7;
  sub_100016590(v4, v6);
  v8 = getuid();
  sub_1000294F0(v8);

  return _swift_task_switch(sub_1002C1E84, v3, 0);
}

uint64_t sub_1002C1E84()
{
  v1 = *(*(v0 + 1688) + 112);
  if (!v1)
  {
    v18 = *(v0 + 1704);
    v19 = *(v0 + 1696);

    sub_100016590(v19, v18);
LABEL_7:
    v17 = *(v0 + 1656);
    goto LABEL_8;
  }

  v2 = sub_1002072CC();
  v3 = *(v0 + 1704);
  v4 = *(v0 + 1696);
  if (!v2)
  {

    sub_100016590(v4, v3);

    goto LABEL_7;
  }

  v5 = v2;
  v41 = *(v0 + 1656);
  v38 = *(v0 + 1772);
  v6 = *(v0 + 960);
  v7 = *(v0 + 912);
  v30 = *(v0 + 1320);
  v32 = *(v0 + 888);
  v8 = *(v0 + 880);
  v35 = *(v0 + 872);
  v28 = *(v0 + 1704);
  v9 = (v6 + *(v0 + 1780));
  (*(*(v0 + 904) + 16))(v7, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys, *(v0 + 896));
  v10 = v9[3];
  v11 = v9[4];
  sub_1000035D0(v9, v10);
  LOBYTE(v11) = sub_10002BD40(v10, v11);
  v12 = swift_task_alloc();
  *(v12 + 16) = v7;
  *(v12 + 24) = v30;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11 & 1;
  *(v12 + 48) = v9;
  *(v12 + 56) = v4;
  *(v12 + 64) = v28;
  *(v12 + 72) = v5;
  (*(v8 + 104))(v32, v38, v35);
  Connection.transaction(_:block:)();
  *(v0 + 1712) = v41;
  v13 = *(v0 + 1704);
  v14 = *(v0 + 1696);
  if (v41)
  {
    v15 = *(v0 + 904);
    v39 = *(v0 + 896);
    v42 = *(v0 + 912);
    v16 = *(v0 + 880);
    v33 = *(v0 + 872);
    v36 = *(v0 + 888);

    sub_100016590(v14, v13);

    (*(v16 + 8))(v36, v33);

    (*(v15 + 8))(v42, v39);

    v17 = 0;
LABEL_8:
    *(v0 + 1720) = v17;
    v20 = *(v0 + 648);
    (*(*(v0 + 1280) + 8))(*(v0 + 1320), *(v0 + 1272));
    v21 = sub_1002C5DC4;
    v22 = v20;
    goto LABEL_9;
  }

  v23 = *(v0 + 1280);
  v37 = *(v0 + 1272);
  v40 = *(v0 + 1320);
  v24 = *(v0 + 904);
  v31 = *(v0 + 896);
  v34 = *(v0 + 912);
  v25 = *(v0 + 880);
  v27 = *(v0 + 872);
  v29 = *(v0 + 888);
  v43 = *(v0 + 648);

  sub_100016590(v14, v13);

  (*(v25 + 8))(v29, v27);

  (*(v24 + 8))(v34, v31);
  (*(v23 + 8))(v40, v37);
  v21 = sub_1002C21D8;
  v22 = v43;
LABEL_9:

  return _swift_task_switch(v21, v22, 0);
}

uint64_t sub_1002C21D8()
{
  v470 = v0;
  v1 = *(v0 + 1712);
  *(v0 + 1728) = v1;
  v2 = (*(v0 + 960) + *(v0 + 1780));
  v4 = v2[3];
  v3 = v2[4];
  sub_1000035D0(v2, v4);
  if (sub_10002BD40(v4, v3))
  {
    sub_10001F280(*(v0 + 960) + *(v0 + 1780), v0 + 216);
  }

  else
  {
    v5 = (*(v0 + 960) + *(v0 + 1780));
    sub_1000035D0(v5, v5[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v6 = *(v0 + 608);
    *(v0 + 240) = &type metadata for PrimaryWildIndex;
    *(v0 + 248) = sub_10022A528();
    *(v0 + 216) = v6;
  }

  sub_1000D2A70(v0 + 216, v0 + 136, &qword_10169C988, &unk_1013B3320);
  if (*(v0 + 160))
  {
    v7 = *(v0 + 1392);
    sub_10000A748((v0 + 136), v0 + 176);
    v8 = sub_1002C99B0;
    v9 = v7;
    v10 = 0;

    return _swift_task_switch(v8, v9, v10);
  }

  v457 = v1;
  v11 = *(v0 + 960);
  sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v11, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8(v0 + 136, &qword_10169C988, &unk_1013B3320);
  v12 = *(v0 + 1336);
  swift_beginAccess();
  sub_1005CAD18(v12, *(v0 + 520));
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 1152);
    v16 = *(v0 + 1136);
    v17 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v15, v16, &qword_10169C970, &qword_101398A18);
    v18 = (v16 + *(v17 + 48));
    Hasher.init(_seed:)();
    sub_100D15128(&v468);
    v19 = Hasher._finalize()();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      v23 = *v18;
      v24 = *(*(v0 + 808) + 72);
      do
      {
        v25 = *(v0 + 824);
        sub_1002DB760(*(v14 + 48) + v21 * v24, v25, type metadata accessor for RawSearchResult);
        v26 = *(v0 + 824);
        if (*v25 == v23 && (v27 = static Date.== infix(_:_:)(), v26 = *(v0 + 824), (v27 & 1) != 0) && (v28 = *(v0 + 800), *(v26 + v28[6]) == *&v18[v28[6]]) && *(v26 + v28[7]) == *&v18[v28[7]] && *(v26 + v28[8]) == *&v18[v28[8]])
        {
          v29 = *(v0 + 824);
          v30 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v29, type metadata accessor for RawSearchResult);
          if (v30)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1002DBBF0(v26, type metadata accessor for RawSearchResult);
        }

        v21 = (v21 + 1) & v22;
      }

      while (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
    }

    v31 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v18, v31, type metadata accessor for RawSearchResult);
    v468 = v14;
    sub_100DFE348(v31, v21, isUniquelyReferenced_nonNull_native);
    v14 = v468;
LABEL_21:
    sub_1002DBBF0(v18, type metadata accessor for RawSearchResult);
    v33 = *(v0 + 1448);
    v34 = *(v0 + 1336);
    v35 = *(v0 + 1328);
    v36 = *(v0 + 1272);
    v462 = *(*(v0 + 1280) + 8);
    v462(*(v0 + 1136), v36);
    v33(v35, v34, v36);
    swift_beginAccess();
    v37 = v14;
    v38 = v35;
  }

  else
  {
    v39 = *(v0 + 1448);
    v40 = *(v0 + 1336);
    v41 = *(v0 + 1328);
    v42 = *(v0 + 1280);
    v43 = *(v0 + 1272);
    v44 = *(v0 + 1152);
    v45 = *(v0 + 1128);
    v463 = *(v0 + 1016);
    v46 = *(v0 + 808);
    swift_endAccess();
    v39(v41, v40, v43);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_101385D80;
    sub_1000D2A70(v44, v45, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v45 + *(v463 + 48), v48 + v47, type metadata accessor for RawSearchResult);
    v462 = *(v42 + 8);
    v462(v45, v43);
    v49 = sub_10112A090(v48);
    swift_setDeallocating();
    sub_1002DBBF0(v48 + v47, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v37 = v49;
    v38 = v41;
  }

  sub_1001DE1B0(v37, v38);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_328;
  }

  while (1)
  {
    v50 = *(v0 + 1448);
    v51 = *(v0 + 1336);
    v52 = *(v0 + 1304);
    v53 = *(v0 + 1272);
    v54 = *(v0 + 1152);
    v55 = *(v0 + 1120);
    v56 = *(v0 + 1112);
    v459 = *(v0 + 1104);
    v465 = type metadata accessor for Logger();
    sub_1000076D4(v465, qword_10177A818);
    v50(v52, v51, v53);
    sub_1000D2A70(v54, v55, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v54, v56, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v54, v459, &qword_10169C970, &qword_101398A18);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v444 = v58;
      v446 = v57;
      v59 = *(v0 + 1304);
      v60 = *(v0 + 1272);
      v61 = *(v0 + 1128);
      v429 = *(v0 + 1120);
      v441 = *(v0 + 1104);
      v438 = *(v0 + 1112);
      v440 = *(v0 + 1096);
      v449 = *(v0 + 1016);
      v62 = *(v0 + 848);
      logc = *(v0 + 840);
      v436 = *(v0 + 856);
      v454 = *(v0 + 800);
      v63 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v63 = 141559043;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v462(v59, v60);
      v67 = sub_1000136BC(v64, v66, (v0 + 528));

      *(v63 + 14) = v67;
      *(v63 + 22) = 2082;
      sub_1000D2A70(v429, v61, &qword_10169C970, &qword_101398A18);
      v68 = v61 + *(v449 + 48);
      (*(v62 + 16))(v436, v68 + *(v454 + 20), logc);
      sub_1002DBBF0(v68, type metadata accessor for RawSearchResult);
      v462(v61, v60);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      (*(v62 + 8))(v436, logc);
      sub_10000B3A8(v429, &qword_10169C970, &qword_101398A18);
      v72 = sub_1000136BC(v69, v71, (v0 + 528));

      *(v63 + 24) = v72;
      *(v63 + 32) = 2082;
      sub_1000D2A70(v438, v61, &qword_10169C970, &qword_101398A18);
      v73 = v61 + *(v449 + 48);
      LOBYTE(v72) = *(v73 + *(v454 + 36));
      sub_1002DBBF0(v73, type metadata accessor for RawSearchResult);
      v462(v61, v60);
      v74 = sub_100013454(v72);
      v76 = v75;
      sub_10000B3A8(v438, &qword_10169C970, &qword_101398A18);
      v77 = sub_1000136BC(v74, v76, (v0 + 528));

      *(v63 + 34) = v77;
      *(v63 + 42) = 2048;
      sub_1000D2A70(v441, v440, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v78 = *(v0 + 520);
      if (*(v78 + 16) && (v79 = sub_1000210EC(*(v0 + 1096)), (v80 & 1) != 0))
      {
        v81 = *(*(v78 + 56) + 8 * v79);
        swift_endAccess();
        v82 = *(v81 + 16);
      }

      else
      {
        swift_endAccess();
        v82 = 0;
      }

      v84 = *(v0 + 1568);
      v89 = *(v0 + 1560);
      v90 = *(v0 + 1272);
      v455 = *(v0 + 1152);
      v91 = *(v0 + 1104);
      v92 = *(v0 + 1096);
      v85 = *(v0 + 992);
      sub_1002DBBF0(v92 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      v462(v92, v90);
      sub_10000B3A8(v91, &qword_10169C970, &qword_101398A18);
      *(v63 + 44) = v82;
      v83 = v446;
      _os_log_impl(&_mh_execute_header, v446, v444, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v63, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v89, v84);
      sub_10000B3A8(v85, &unk_1016C1120, &qword_1013C49D0);
      v88 = v455;
    }

    else
    {
      v83 = *(v0 + 1632);
      v84 = *(v0 + 1568);
      v85 = *(v0 + 1560);
      v450 = *(v0 + 1272);
      v455 = *(v0 + 1304);
      v460 = *(v0 + 1152);
      v86 = *(v0 + 1120);
      v87 = *(v0 + 1112);
      v447 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v85, v84);
      sub_10000B3A8(v87, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v86, &qword_10169C970, &qword_101398A18);
      v462(v455, v450);
      sub_10000B3A8(v447, &unk_1016C1120, &qword_1013C49D0);
      v88 = v460;
    }

    sub_10000B3A8(v88, &qword_10169C970, &qword_101398A18);
    v93 = *(v0 + 1552) + 1;
    if (v93 != *(v0 + 1544))
    {
      *(v0 + 1552) = v93;
      v293 = *(v0 + 1536);
      if (v93 >= *(v293 + 16))
      {
LABEL_332:
        __break(1u);
        goto LABEL_333;
      }

      v294 = *(v0 + 1480);
      v295 = v294 >> 62;
      v296 = v293 + 24 * v93;
      v297 = *(v296 + 32);
      *(v0 + 1560) = v297;
      v84 = *(v296 + 40);
      *(v0 + 1568) = v84;
      v298 = *(v296 + 48);
      *(v0 + 1580) = *(v296 + 52);
      *(v0 + 1576) = v298;
      if ((v294 >> 62) > 1)
      {
        if (v295 != 2)
        {
          v85 = 0;
          v83 = 0;
          v300 = 0;
          v299 = 0;
          goto LABEL_238;
        }

        v314 = *(v0 + 1472);
        v83 = *(v314 + 16);
        v85 = *(v314 + 24);
      }

      else
      {
        if (!v295)
        {
          v83 = 0;
          v299 = 0;
          v85 = BYTE6(v294);
          v300 = BYTE6(v294);
          goto LABEL_238;
        }

        v314 = *(v0 + 1472);
        v85 = v314 >> 32;
        v83 = v314;
      }

      sub_10002E98C(v314, v294);
      if (v85 < v83)
      {
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
        goto LABEL_335;
      }

      v294 = *(v0 + 1480);
      v326 = *(v0 + 1472);
      if (v294 >> 62 == 2)
      {
        v299 = *(v326 + 16);
        v300 = *(v326 + 24);
      }

      else
      {
        v300 = v326 >> 32;
        v299 = v326;
      }

LABEL_238:
      if (v300 < v85 || v85 < v299)
      {
        goto LABEL_334;
      }

      if (__OFSUB__(v85, v83))
      {
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
        goto LABEL_344;
      }

      if ((v85 - v83) >= 0x39)
      {
        v328 = v83 + 57;
        if (__OFADD__(v83, 57))
        {
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
          goto LABEL_348;
        }

        v329 = v294 >> 62;
        if ((v294 >> 62) > 1)
        {
          if (v329 == 2)
          {
            v333 = *(v0 + 1472);
            v330 = *(v333 + 16);
            v331 = *(v333 + 24);
          }

          else
          {
            v331 = 0;
            v330 = 0;
          }
        }

        else if (v329)
        {
          v330 = *(v0 + 1472);
          v331 = v330 >> 32;
          v330 = v330;
        }

        else
        {
          v330 = 0;
          v331 = BYTE6(v294);
        }

        if (v331 < v328 || v328 < v330)
        {
          goto LABEL_345;
        }

        v85 = 0;
        if (v329 <= 1)
        {
          if (v329)
          {
            v85 = *(v0 + 1472);
          }

LABEL_267:
          if (v328 < v85)
          {
            goto LABEL_336;
          }

LABEL_268:
          v342 = *(v0 + 1472);
          sub_100017D5C(v297, v84);
          sub_100017D5C(v297, v84);
          v343 = Data._Representation.subscript.getter();
          v345 = v344;
          sub_100006654(v342, v294);
          v346 = v345 >> 62;
          if ((v345 >> 62) > 1)
          {
            v85 = v457;
            if (v346 != 2)
            {
              goto LABEL_282;
            }

            v349 = *(v343 + 16);
            v348 = *(v343 + 24);
            v135 = __OFSUB__(v348, v349);
            v350 = v348 - v349;
            if (!v135)
            {
              if (v350 != 57)
              {
                goto LABEL_282;
              }

              goto LABEL_274;
            }

            __break(1u);
          }

          else
          {
            if (!v346)
            {
              v347 = BYTE6(v345);
              goto LABEL_281;
            }

            LODWORD(v347) = HIDWORD(v343) - v343;
            if (!__OFSUB__(HIDWORD(v343), v343))
            {
              v347 = v347;
LABEL_281:
              v85 = v457;
              if (v347 != 57)
              {
LABEL_282:
                v364 = v343;
                v365 = v345;
LABEL_283:
                sub_100016590(v364, v365);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_274:
              v351 = sub_100A7A194(v343, v345, 0, 0);
              if (v85)
              {
                v84 = v0 + 560;
                v83 = static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_277:
                  v355 = qword_10177BA00;
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v356 = swift_allocObject();
                  *(v356 + 16) = xmmword_101385D80;
                  *v84 = v85;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v357 = String.init<A>(describing:)();
                  v359 = v358;
                  *(v356 + 56) = &type metadata for String;
                  *(v356 + 64) = sub_100008C00();
                  *(v356 + 32) = v357;
                  *(v356 + 40) = v359;
                  os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v355, "Error deriving advertisementKey: %@", 35, 2, v356);

                  sub_1001BAF88();
                  v360 = swift_allocError();
                  *v361 = 0;
                  swift_willThrow();

LABEL_278:
                  v468 = 0;
                  v469 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v362 = v469;
                  *(v0 + 504) = v468;
                  *(v0 + 512) = v362;
                  v363._countAndFlagsBits = 0xD000000000000021;
                  v363._object = 0x800000010134CB30;
                  String.append(_:)(v363);
                  *(v0 + 552) = v360;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_348:
                swift_once();
                goto LABEL_277;
              }

              v352 = v351;
              v353 = sub_100A7829C(v351, 0, 2);
              *(v0 + 1584) = v353;
              *(v0 + 1592) = v354;
              v367 = v353;
              v368 = v354;
              v8 = CCECCryptorRelease();
              v369 = v368 >> 62;
              if ((v368 >> 62) > 1)
              {
                if (v369 != 2)
                {
                  v385 = 0;
                  goto LABEL_322;
                }

                v377 = v367[2];
                v376 = v367[3];
                v135 = __OFSUB__(v376, v377);
                v370 = v376 - v377;
                if (v135)
                {
                  __break(1u);
                  v378 = *(v0 + 792);
                  v379 = *(v0 + 712);

                  sub_100016590(v352, v297);

                  sub_100016590(v455, v440);

                  sub_1002DBBF0(v378, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v379, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);

                  v380 = *(v0 + 8);

                  return v380();
                }
              }

              else if (v369)
              {
                LODWORD(v370) = HIDWORD(v367) - v367;
                if (__OFSUB__(HIDWORD(v367), v367))
                {
                  goto LABEL_355;
                }

                v370 = v370;
              }

              else
              {
                v370 = BYTE6(v368);
              }

              if (v370 == 28)
              {
                sub_100016590(v343, v345);
                v381 = swift_task_alloc();
                *(v0 + 1600) = v381;
                *v381 = v0;
                v381[1] = sub_1002BA248;
                v382 = *(v0 + 1528);
                v383 = *(v0 + 1336);
                v384 = *(v0 + 1008);

                return sub_1002D7014(v384, v297, v84, v382, v367, v368, 0, v383);
              }

              if (v369 == 2)
              {
                v387 = v367[2];
                v386 = v367[3];
                v385 = v386 - v387;
                if (!__OFSUB__(v386, v387))
                {
                  goto LABEL_322;
                }

                __break(1u);
              }

              else if (v369 == 1)
              {
                if (__OFSUB__(HIDWORD(v367), v367))
                {
                  goto LABEL_356;
                }

                v385 = HIDWORD(v367) - v367;
                goto LABEL_322;
              }

              v385 = BYTE6(v368);
LABEL_322:
              sub_100018350();
              v360 = swift_allocError();
              *v388 = 28;
              *(v388 + 8) = v385;
              *(v388 + 16) = 0;
              swift_willThrow();
              sub_100016590(v367, v368);
              goto LABEL_278;
            }
          }

          __break(1u);
LABEL_351:
          swift_once();
          goto LABEL_254;
        }

        if (v329 != 2)
        {
          goto LABEL_267;
        }

        v332 = *(v0 + 1472);
      }

      else
      {
        v327 = v294 >> 62;
        if ((v294 >> 62) <= 1)
        {
          if (!v327)
          {
            v85 = 0;
            goto LABEL_268;
          }

          v341 = *(v0 + 1472);
          v328 = v341 >> 32;
          v85 = v341;
          goto LABEL_267;
        }

        if (v327 != 2)
        {
          v85 = 0;
          goto LABEL_268;
        }

        v332 = *(v0 + 1472);
        v328 = *(v332 + 24);
      }

      v85 = *(v332 + 16);
      goto LABEL_267;
    }

    v94 = *(v0 + 1480);
    v95 = *(v0 + 1472);
    v96 = *(v0 + 1384);
    v97 = *(v0 + 1344);
    v98 = *(v0 + 1336);
    v99 = *(v0 + 1280);
    v100 = *(v0 + 1272);

    sub_100006654(v95, v94);
    v101 = *(v99 + 8);
    v101(v97, v100);
    sub_1002DBBF0(v96, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v101(v98, v100);
    v102 = *(v0 + 1408) + 1;
    if (v102 == *(v0 + 1400))
    {
      break;
    }

    while (1)
    {
      *(v0 + 1408) = v102;
      v302 = *(v0 + 632);
      if (!v302)
      {
        v302 = _swiftEmptyArrayStorage;
      }

      if (v102 >= v302[2])
      {
        break;
      }

      v303 = *(v0 + 1384);
      v304 = *(v0 + 1352);
      v305 = *(v0 + 1280);
      v306 = *(v0 + 1272);
      v307 = *(v0 + 1264);
      sub_1002DB760(v302 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v102, v303, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v309 = *(v303 + 16);
      v308 = *(v303 + 24);
      sub_1000D2A70(v303 + *(v304 + 28), v307, &qword_1016980D0, &unk_10138F3B0);
      v310 = *(v305 + 48);
      *(v0 + 1416) = v310;
      *(v0 + 1424) = (v305 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v310(v307, 1, v306) != 1)
      {
        v317 = *(v0 + 1344);
        v318 = *(v0 + 1280);
        v319 = *(v0 + 1272);
        v320 = *(v0 + 1264);
        v321 = *(v0 + 1256);
        v322 = *(v318 + 32);
        *(v0 + 1432) = v322;
        *(v0 + 1440) = (v318 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v322(v317, v320, v319);
        v323 = *(v318 + 16);
        *(v0 + 1448) = v323;
        *(v0 + 1456) = (v318 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v323(v321, v317, v319);
        (*(v318 + 56))(v321, 0, 1, v319);
        v324 = swift_task_alloc();
        *(v0 + 1464) = v324;
        *v324 = v0;
        v324[1] = sub_1002B09AC;
        v325 = *(v0 + 1256);

        return sub_1002D5B7C(v309, v308, v325);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v465, qword_10177A818);
      v311 = Logger.logObject.getter();
      v312 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v311, v312))
      {
        v313 = swift_slowAlloc();
        *v313 = 0;
        _os_log_impl(&_mh_execute_header, v311, v312, "Missing share id in payload.", v313, 2u);
      }

      v301 = *(v0 + 1384);

      sub_1002DBBF0(v301, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v102 = *(v0 + 1408) + 1;
      if (v102 == *(v0 + 1400))
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    swift_once();
  }

LABEL_33:

  if (*(v0 + 624))
  {
    v84 = *(v0 + 624);
  }

  else
  {
    v84 = _swiftEmptyArrayStorage;
  }

  v422 = *(v84 + 16);
  if (!v422)
  {

LABEL_226:

    swift_beginAccess();
    v464 = *(v0 + 520);

    v315 = *(v0 + 8);

    return v315(v464);
  }

  v103 = *(v0 + 1280);
  v390 = (v0 + 600);
  v104 = *(v0 + 1024);
  v83 = *(v0 + 1016);
  v105 = *(v0 + 848);
  v391 = *(v0 + 808);
  v439 = *(v0 + 800);
  v428 = *(v0 + 792);
  v461 = *(v0 + 776);
  v414 = *(v0 + 752);
  v427 = *(v0 + 744);
  v106 = *(v0 + 728);
  v424 = v84 + 32;
  v411 = *(v0 + 712);
  v448 = (v106 + 104);
  v445 = (v106 + 8);
  v437 = *(v0 + 704);
  v398 = (*(v0 + 928) + 56);
  v413 = (v105 + 16);
  v397 = *(v0 + 664);
  v396 = (v105 + 56);
  v412 = (v105 + 8);
  v395 = (v103 + 16);
  v393 = (v104 + 48);
  v394 = (v104 + 56);
  v423 = *(*(v0 + 640) + 16);
  v416 = (v103 + 8);
  v443 = enum case for HashAlgorithm.sha256(_:);

  v107 = 0;
  v392 = xmmword_101385D80;
  v85 = v457;
  v415 = v84;
  v425 = v83;
  while (2)
  {
    if (v107 >= *(v84 + 16))
    {
      goto LABEL_337;
    }

    v426 = v107;
    v108 = (v424 + 24 * v107);
    v110 = *v108;
    v109 = v108[1];
    v440 = v109;
    v456 = *v108;
    v442 = v108[2];
    if (!v423)
    {
      sub_100017D5C(v110, v109);

LABEL_148:
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v465, qword_10177A818);
      sub_100017D5C(v456, v440);

      v83 = v440;
      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.error.getter();
      sub_100016590(v456, v440);

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v468 = v165;
        *v164 = 141558275;
        *(v164 + 4) = 1752392040;
        *(v164 + 12) = 2081;
        *(v0 + 488) = v456;
        *(v0 + 496) = v440;
        sub_10025DB08();
        v166 = RawRepresentable<>.hexString.getter();
        v83 = v167;
        v168 = sub_1000136BC(v166, v167, &v468);

        *(v164 + 14) = v168;
        _os_log_impl(&_mh_execute_header, v162, v163, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v164, 0x16u);
        sub_100007BAC(v165);
      }

      sub_100016590(v456, v440);

      v84 = v415;
      goto LABEL_153;
    }

    v83 = *(v0 + 640) + ((*(v414 + 80) + 32) & ~*(v414 + 80));
    sub_100017D5C(v110, v109);
    if (v110)
    {
      v111 = 0;
    }

    else
    {
      v111 = v109 == 0xC000000000000000;
    }

    v112 = !v111;
    log = v112;
    v457 = v109 >> 62;
    v430 = BYTE6(v109);
    v451 = *(v414 + 72);
    v113 = __OFSUB__(HIDWORD(v110), v110);
    v420 = v113;
    v417 = HIDWORD(v110) - v110;

    v114 = v423;
LABEL_53:
    v115 = *(v0 + 776);
    sub_1002DB760(v83, v115, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v116 = *v115;
    v117 = *(v461 + 8);
    v84 = v117 >> 62;
    v118 = v85;
    if ((v117 >> 62) > 1)
    {
      if (v84 == 2)
      {
        v85 = *(v116 + 16);
        v120 = *(v116 + 24);
        sub_100017D5C(v116, *(v461 + 8));
        v119 = *(v116 + 16);
        v121 = *(v116 + 24);
      }

      else
      {
        v85 = 0;
        v120 = 0;
        v121 = 0;
        v119 = 0;
      }
    }

    else if (v84)
    {
      v85 = v116;
      v120 = v116 >> 32;
      sub_100017D5C(v116, *(v461 + 8));
      v121 = v116 >> 32;
      v119 = v116;
    }

    else
    {
      v85 = 0;
      v119 = 0;
      v120 = BYTE6(v117);
      v121 = BYTE6(v117);
    }

    if (v121 < v85 || v85 < v119)
    {
      goto LABEL_324;
    }

    if (v84 > 1)
    {
      if (v84 == 2)
      {
        v122 = *(v116 + 16);
        v123 = *(v116 + 24);
      }

      else
      {
        v123 = 0;
        v122 = 0;
      }
    }

    else if (v84)
    {
      v122 = v116;
      v123 = v116 >> 32;
    }

    else
    {
      v122 = 0;
      v123 = BYTE6(v117);
    }

    if (v123 < v120 || v120 < v122)
    {
      goto LABEL_325;
    }

    if (__OFSUB__(v120, v85))
    {
      goto LABEL_326;
    }

    if ((v120 - v85) >= 0x39)
    {
      v124 = v85 + 57;
      if (!__OFADD__(v85, 57))
      {
        v85 = v118;
        if (v84 > 1)
        {
          if (v84 == 2)
          {
            v125 = *(v116 + 16);
            v126 = *(v116 + 24);
          }

          else
          {
            v126 = 0;
            v125 = 0;
          }
        }

        else if (v84)
        {
          v125 = v116;
          v126 = v116 >> 32;
        }

        else
        {
          v125 = 0;
          v126 = BYTE6(v117);
        }

        if (v126 < v124 || v124 < v125)
        {
          goto LABEL_330;
        }

        v127 = 0;
        if (v84 <= 1)
        {
          if (v84)
          {
            goto LABEL_92;
          }

          goto LABEL_95;
        }

        if (v84 == 3)
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
      goto LABEL_332;
    }

    v85 = v118;
    if (v84 > 1)
    {
      if (v84 != 2)
      {
        goto LABEL_96;
      }

      v124 = *(v116 + 24);
LABEL_94:
      v127 = *(v116 + 16);
      goto LABEL_95;
    }

    if (!v84)
    {
      goto LABEL_96;
    }

    v124 = v116 >> 32;
LABEL_92:
    v127 = v116;
LABEL_95:
    if (v124 < v127)
    {
      goto LABEL_327;
    }

LABEL_96:
    v128 = Data._Representation.subscript.getter();
    v130 = v129;
    sub_100016590(v116, v117);
    v131 = v130 >> 62;
    if ((v130 >> 62) > 1)
    {
      if (v131 != 2)
      {
        goto LABEL_285;
      }

      v134 = *(v128 + 16);
      v133 = *(v128 + 24);
      v135 = __OFSUB__(v133, v134);
      v132 = v133 - v134;
      if (v135)
      {
        goto LABEL_338;
      }
    }

    else if (v131)
    {
      LODWORD(v132) = HIDWORD(v128) - v128;
      if (__OFSUB__(HIDWORD(v128), v128))
      {
        goto LABEL_339;
      }

      v132 = v132;
    }

    else
    {
      v132 = BYTE6(v130);
    }

    if (v132 != 57)
    {
LABEL_285:
      v364 = v128;
      v365 = v130;
      goto LABEL_283;
    }

    v136 = sub_100A7A194(v128, v130, 0, 0);
    if (!v85)
    {
      v137 = sub_100A7829C(v136, 0, 2);
      v84 = v138;
      v8 = CCECCryptorRelease();
      v139 = v84 >> 62;
      if ((v84 >> 62) > 1)
      {
        if (v139 == 2)
        {
          v142 = *(v137 + 16);
          v141 = *(v137 + 24);
          v135 = __OFSUB__(v141, v142);
          v140 = v141 - v142;
          if (v135)
          {
            goto LABEL_341;
          }

          goto LABEL_116;
        }

        v366 = 0;
LABEL_298:
        sub_100018350();
        v339 = swift_allocError();
        *v373 = 28;
        *(v373 + 8) = v366;
        *(v373 + 16) = 0;
        swift_willThrow();
        sub_100016590(v137, v84);
        goto LABEL_299;
      }

      if (v139)
      {
        LODWORD(v140) = HIDWORD(v137) - v137;
        if (__OFSUB__(HIDWORD(v137), v137))
        {
          goto LABEL_340;
        }

        v140 = v140;
      }

      else
      {
        v140 = BYTE6(v84);
      }

LABEL_116:
      if (v140 == 28)
      {
        v462 = v83;
        v143 = v114;
        v144 = *(v0 + 736);
        v145 = *(v0 + 720);
        sub_100016590(v128, v130);
        (*v448)(v144, v443, v145);
        v146 = Data.hash(algorithm:)();
        v148 = v147;
        sub_100016590(v137, v84);
        (*v445)(v144, v145);
        v149 = v148 >> 62;
        if (v148 >> 62 == 3)
        {
          if (v146)
          {
            v150 = 0;
          }

          else
          {
            v150 = v148 == 0xC000000000000000;
          }

          v151 = v457;
          v153 = !v150 || v457 < 3;
          if (((v153 | log) & 1) == 0)
          {
            v169 = 0;
            v170 = 0xC000000000000000;
            goto LABEL_157;
          }

          v154 = v143;
          v155 = 0;
          v83 = v462;
          if (v457 > 1)
          {
LABEL_141:
            if (v151 != 2)
            {
              if (!v155)
              {
                goto LABEL_155;
              }

LABEL_51:
              sub_100016590(v146, v148);
              v85 = 0;
              goto LABEL_52;
            }

            v160 = *(v456 + 16);
            v159 = *(v456 + 24);
            v135 = __OFSUB__(v159, v160);
            v158 = v159 - v160;
            if (v135)
            {
              goto LABEL_342;
            }

            goto LABEL_143;
          }
        }

        else
        {
          v151 = v457;
          v154 = v143;
          if (v149 == 2)
          {
            v157 = *(v146 + 16);
            v156 = *(v146 + 24);
            v135 = __OFSUB__(v156, v157);
            v155 = v156 - v157;
            v83 = v462;
            if (v135)
            {
              goto LABEL_347;
            }

            if (v457 > 1)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v83 = v462;
            if (v149 == 1)
            {
              LODWORD(v155) = HIDWORD(v146) - v146;
              if (__OFSUB__(HIDWORD(v146), v146))
              {
                goto LABEL_346;
              }

              v155 = v155;
              if (v457 > 1)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v155 = BYTE6(v148);
              if (v457 > 1)
              {
                goto LABEL_141;
              }
            }
          }
        }

        v158 = v430;
        if (v151)
        {
          v158 = v417;
          if (v420)
          {
            goto LABEL_343;
          }
        }

LABEL_143:
        if (v155 != v158)
        {
          goto LABEL_51;
        }

        if (v155 < 1)
        {
LABEL_155:
          v169 = v146;
          v170 = v148;
LABEL_157:
          sub_100016590(v169, v170);
          v85 = 0;
LABEL_158:
          v171 = *(v0 + 792);
          v172 = *(v0 + 784);
          sub_1002DB7C8(*(v0 + 776), v172, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v172, v171, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v83 = v442;
          v84 = v415;
          v462 = *(v442 + 16);
          if (v462)
          {
            v458 = v442 + ((*(v437 + 80) + 32) & ~*(v437 + 80));

            v173 = 0;
            while (v173 < *(v442 + 16))
            {
              sub_1002DB760(v458 + *(v437 + 72) * v173, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v174 = sub_100496ABC();
              v175 = **(v0 + 712);
              v176 = *(v411 + 8);
              v177 = **(v0 + 792);
              v178 = *(v428 + 8);
              sub_100017D5C(v177, v178);
              sub_10002EA98(57, v177, v178, &v468);
              sub_100496F68(v468, v469, &v466);
              v179 = v467;
              if (v467 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v452 = *(v0 + 792);
              v180 = v466;
              v181 = PublicKey.advertisement.getter(v466, v467);
              v183 = v182;
              v8 = sub_100006654(v180, v179);
              v184 = v176 >> 62;
              loga = *(v427 + 20);
              if ((v176 >> 62) > 1)
              {
                if (v184 == 2)
                {
                  v187 = *(v175 + 16);
                  v186 = *(v175 + 24);
                  v185 = v186 - v187;
                  if (__OFSUB__(v186, v187))
                  {
                    goto LABEL_353;
                  }
                }

                else
                {
                  v185 = 0;
                }
              }

              else if (v184)
              {
                if (__OFSUB__(HIDWORD(v175), v175))
                {
                  __break(1u);
LABEL_353:
                  __break(1u);
                  goto LABEL_354;
                }

                v185 = HIDWORD(v175) - v175;
              }

              else
              {
                v185 = BYTE6(v176);
              }

              sub_100A2A240(3);
              v189 = v188;
              v190 = v174;
              sub_100017D5C(v175, v176);
              sub_100017D5C(v181, v183);
              if (v185 >= v189)
              {
                v191 = (v0 + 672);
                sub_100A2AA58(v190, v175, v176, v181, v183, *(v0 + 672));
              }

              else
              {
                v191 = (v0 + 680);
                sub_100A2B118(v190, v175, v176, v181, v183, *(v0 + 680));
              }

              v402 = v183;
              v404 = v181;
              v431 = v173;
              v192 = *v191;
              v418 = *(v0 + 1016);
              v421 = v190;
              v408 = *(v0 + 1000);
              v410 = *(v0 + 1272);
              v193 = *(v0 + 976);
              v399 = *(v0 + 968);
              v194 = *(v0 + 920);
              v195 = *(v0 + 856);
              v196 = *(v0 + 840);
              v197 = *(v0 + 832);
              v198 = *(v0 + 696);
              v199 = *(v0 + 688);
              v200 = *(v0 + 656);
              sub_1002DB7C8(v192, v199, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v199, v198, type metadata accessor for BeaconPayloadv1);
              v201 = v193;
              v400 = v193;
              (*v398)(v193, 1, 1, v194);
              v406 = *(v198 + v397[10]);
              v202 = *v413;
              (*v413)(v195, v198 + v397[5], v196);
              v203 = *(v198 + v397[7]);
              v204 = *(v198 + v397[8]);
              v205 = *(v198 + v397[9]);
              (*v396)(v200, 1, 1, v196);
              sub_1000D2A70(v201, v399, &unk_1016C1120, &qword_1013C49D0);
              v389 = v202;
              v202(&v197[v439[5]], v195, v196);
              sub_1000D2A70(v200, &v197[v439[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v399, &v197[v439[11]], &unk_1016C1120, &qword_1013C49D0);
              UUID.init()();
              sub_100016590(v404, v402);
              sub_10000B3A8(v399, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v200, &unk_101696900, &unk_10138B1E0);
              v206 = *v412;
              (*v412)(v195, v196);
              sub_10000B3A8(v400, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v198, type metadata accessor for BeaconPayloadv1);
              *v197 = v406;
              *&v197[v439[6]] = v203;
              *&v197[v439[7]] = v204;
              *&v197[v439[8]] = v205;
              v197[v439[9]] = 15;
              *&v197[v439[13]] = 256;
              v207 = *(v425 + 48);
              (*v395)(v408, loga + v452, v410);
              sub_1002DB7C8(v197, v408 + v207, type metadata accessor for RawSearchResult);
              (*v394)(v408, 0, 1, v418);
              if ((*v393)(v408, 1, v418) == 1)
              {
                v208 = *(v0 + 1000);

                sub_10000B3A8(v208, &qword_10169C968, &qword_101398A10);
                v209 = v431;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v210 = *(v0 + 792);
                v211 = *(v0 + 760);
                sub_1000076D4(v465, qword_10177A818);
                sub_1002DB760(v210, v211, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v84 = Logger.logObject.getter();
                v212 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v84, v212))
                {
                  v213 = *(v0 + 760);
                  v214 = swift_slowAlloc();
                  v215 = swift_slowAlloc();
                  v468 = v215;
                  *v214 = 141558275;
                  *(v214 + 4) = 1752392040;
                  *(v214 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v216 = dispatch thunk of CustomStringConvertible.description.getter();
                  v218 = v217;
                  v219 = v213;
                  v209 = v431;
                  sub_1002DBBF0(v219, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v83 = sub_1000136BC(v216, v218, &v468);

                  *(v214 + 14) = v83;
                  _os_log_impl(&_mh_execute_header, v84, v212, "Could not create search result for beacon: %{private,mask.hash}s.", v214, 0x16u);
                  sub_100007BAC(v215);
                }

                else
                {
                  v83 = *(v0 + 760);

                  sub_1002DBBF0(v83, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v220 = *(v0 + 1088);
                v221 = *(v0 + 1080);
                sub_1000D2AD8(*(v0 + 1000), v220, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v220, v221, &qword_10169C970, &qword_101398A18);
                v222 = *(v425 + 48);
                swift_beginAccess();
                sub_1005CAD18(v221, *(v0 + 520));
                v224 = *(v0 + 1272);
                v405 = v206;
                if (v223)
                {
                  v225 = v223;
                  v226 = *(v0 + 1088);
                  v227 = *(v0 + 1080);
                  v228 = *(v0 + 1072);
                  swift_endAccess();
                  sub_1002DBBF0(v221 + v222, type metadata accessor for RawSearchResult);
                  v453 = *v416;
                  (*v416)(v227, v224);
                  sub_1000D2A70(v226, v228, &qword_10169C970, &qword_101398A18);
                  v229 = (v228 + *(v425 + 48));
                  Hasher.init(_seed:)();
                  sub_100D15128(&v468);
                  v230 = Hasher._finalize()();
                  v231 = -1 << *(v225 + 32);
                  v232 = v230 & ~v231;
                  if ((*(v225 + 56 + ((v232 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v232))
                  {
                    v233 = ~v231;
                    v234 = *v229;
                    v235 = *(v391 + 72);
                    do
                    {
                      v236 = *(v0 + 816);
                      sub_1002DB760(*(v225 + 48) + v232 * v235, v236, type metadata accessor for RawSearchResult);
                      v237 = *(v0 + 816);
                      if (*v236 == v234 && (v238 = static Date.== infix(_:_:)(), v237 = *(v0 + 816), (v238 & 1) != 0) && *(v237 + v439[6]) == *&v229[v439[6]] && *(v237 + v439[7]) == *&v229[v439[7]] && *(v237 + v439[8]) == *&v229[v439[8]])
                      {
                        v239 = *(v0 + 816);
                        v240 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v239, type metadata accessor for RawSearchResult);
                        if (v240)
                        {
                          goto LABEL_195;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v237, type metadata accessor for RawSearchResult);
                      }

                      v232 = (v232 + 1) & v233;
                    }

                    while (((*(v225 + 56 + ((v232 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v232) & 1) != 0);
                  }

                  v241 = *(v0 + 832);
                  v242 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v229, v241, type metadata accessor for RawSearchResult);
                  v468 = v225;
                  sub_100DFE348(v241, v232, v242);
                  v225 = v468;
LABEL_195:
                  sub_1002DBBF0(v229, type metadata accessor for RawSearchResult);
                  v243 = *(v0 + 1128);
                  v244 = *(v0 + 1088);
                  v453(*(v0 + 1072), *(v0 + 1272));
                  sub_1000D2A70(v244, v243, &qword_10169C970, &qword_101398A18);
                  v245 = *(v425 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v225, v243);
                }

                else
                {
                  v246 = *(v0 + 1128);
                  v247 = *(v0 + 1088);
                  v248 = *(v0 + 1080);
                  v249 = *(v0 + 1064);
                  swift_endAccess();
                  sub_1002DBBF0(v221 + v222, type metadata accessor for RawSearchResult);
                  v250 = *v416;
                  (*v416)(v248, v224);
                  sub_1000D2A70(v247, v246, &qword_10169C970, &qword_101398A18);
                  v245 = *(v425 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v251 = (*(v391 + 80) + 32) & ~*(v391 + 80);
                  v252 = swift_allocObject();
                  *(v252 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v247, v249, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v249 + *(v425 + 48), v252 + v251, type metadata accessor for RawSearchResult);
                  v250(v249, v224);
                  v253 = sub_10112A090(v252);
                  swift_setDeallocating();
                  sub_1002DBBF0(v252 + v251, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v254 = swift_isUniquelyReferenced_nonNull_native();
                  v468 = *(v0 + 520);
                  sub_100FFC200(v253, v246, v254);
                  v453 = v250;
                  v250(v246, v224);
                  *(v0 + 520) = v468;
                }

                swift_endAccess();
                sub_1002DBBF0(*(v0 + 1128) + v245, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v255 = *(v0 + 1088);
                v256 = *(v0 + 1056);
                v257 = *(v0 + 1048);
                v258 = *(v0 + 1040);
                v259 = *(v0 + 792);
                v260 = *(v0 + 768);
                sub_1000076D4(v465, qword_10177A818);
                sub_1002DB760(v259, v260, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v255, v256, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v255, v257, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v255, v258, &qword_10169C970, &qword_101398A18);
                v261 = Logger.logObject.getter();
                v262 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v261, v262))
                {
                  v419 = v262;
                  logb = v261;
                  v263 = *(v0 + 1272);
                  v264 = *(v0 + 1128);
                  v265 = *(v0 + 1056);
                  v407 = *(v0 + 1032);
                  v409 = *(v0 + 1040);
                  v401 = *(v0 + 856);
                  v403 = *(v0 + 1048);
                  v266 = *(v0 + 840);
                  v267 = *(v0 + 768);
                  v268 = swift_slowAlloc();
                  v468 = swift_slowAlloc();
                  *v268 = 141559043;
                  *(v268 + 4) = 1752392040;
                  *(v268 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v269 = dispatch thunk of CustomStringConvertible.description.getter();
                  v271 = v270;
                  sub_1002DBBF0(v267, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v272 = sub_1000136BC(v269, v271, &v468);

                  *(v268 + 14) = v272;
                  *(v268 + 22) = 2082;
                  sub_1000D2A70(v265, v264, &qword_10169C970, &qword_101398A18);
                  v273 = v264 + *(v425 + 48);
                  v389(v401, v273 + v439[5], v266);
                  sub_1002DBBF0(v273, type metadata accessor for RawSearchResult);
                  v453(v264, v263);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v274 = dispatch thunk of CustomStringConvertible.description.getter();
                  v276 = v275;
                  v405(v401, v266);
                  sub_10000B3A8(v265, &qword_10169C970, &qword_101398A18);
                  v277 = sub_1000136BC(v274, v276, &v468);

                  *(v268 + 24) = v277;
                  *(v268 + 32) = 2082;
                  sub_1000D2A70(v403, v264, &qword_10169C970, &qword_101398A18);
                  v278 = v264 + *(v425 + 48);
                  LOBYTE(v277) = *(v278 + v439[9]);
                  sub_1002DBBF0(v278, type metadata accessor for RawSearchResult);
                  v453(v264, v263);
                  v279 = sub_100013454(v277);
                  v281 = v280;
                  sub_10000B3A8(v403, &qword_10169C970, &qword_101398A18);
                  v282 = sub_1000136BC(v279, v281, &v468);

                  *(v268 + 34) = v282;
                  *(v268 + 42) = 2048;
                  sub_1000D2A70(v409, v407, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v283 = *(v0 + 520);
                  if (*(v283 + 16) && (v284 = sub_1000210EC(*(v0 + 1032)), (v285 & 1) != 0))
                  {
                    v286 = *(*(v283 + 56) + 8 * v284);
                    swift_endAccess();
                    v287 = *(v286 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v287 = 0;
                  }

                  v209 = v431;
                  v290 = *(v0 + 1272);
                  v83 = *(v0 + 1088);
                  v291 = *(v0 + 1040);
                  v292 = *(v0 + 1032);
                  sub_1002DBBF0(v292 + *(v425 + 48), type metadata accessor for RawSearchResult);
                  v453(v292, v290);
                  v84 = &qword_10169C970;
                  sub_10000B3A8(v291, &qword_10169C970, &qword_101398A18);
                  *(v268 + 44) = v287;
                  _os_log_impl(&_mh_execute_header, logb, v419, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v268, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v83, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v83 = *(v0 + 1088);
                  v84 = *(v0 + 1056);
                  v288 = *(v0 + 1048);
                  v289 = *(v0 + 768);
                  sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v288, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v84, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v289, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v83, &qword_10169C970, &qword_101398A18);
                  v209 = v431;
                }
              }

              v173 = v209 + 1;
              sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v85 = 0;
              if (v173 == v462)
              {

                sub_100016590(v456, v440);

                v85 = 0;
                v84 = v415;
                goto LABEL_208;
              }
            }

            goto LABEL_331;
          }

          sub_100016590(v456, v440);

LABEL_208:
          sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_153:
          v107 = v426 + 1;
          if (v426 + 1 == v422)
          {
            goto LABEL_226;
          }

          continue;
        }

        sub_100017D5C(v456, v440);
        sub_100017D5C(v456, v440);
        sub_100017D5C(v146, v148);
        v161 = sub_100F0B1BC(v146, v148, v456, v440);
        sub_100016590(v146, v148);
        sub_100016590(v146, v148);
        sub_100016590(v456, v440);
        if (v161)
        {
          goto LABEL_158;
        }

LABEL_52:
        sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v83 += v451;
        v114 = v154 - 1;
        if (!v114)
        {
          goto LABEL_148;
        }

        goto LABEL_53;
      }

      if (v139 == 2)
      {
        v372 = *(v137 + 16);
        v371 = *(v137 + 24);
        v366 = v371 - v372;
        if (!__OFSUB__(v371, v372))
        {
          goto LABEL_298;
        }

        __break(1u);
      }

      else if (v139 == 1)
      {
        if (!__OFSUB__(HIDWORD(v137), v137))
        {
          v366 = HIDWORD(v137) - v137;
          goto LABEL_298;
        }

LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
        return _swift_task_switch(v8, v9, v10);
      }

      v366 = BYTE6(v84);
      goto LABEL_298;
    }

    break;
  }

  v83 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_351;
  }

LABEL_254:
  v334 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v335 = swift_allocObject();
  *(v335 + 16) = v392;
  *v390 = v85;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v336 = String.init<A>(describing:)();
  v338 = v337;
  *(v335 + 56) = &type metadata for String;
  *(v335 + 64) = sub_100008C00();
  *(v335 + 32) = v336;
  *(v335 + 40) = v338;
  os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v334, "Error deriving advertisementKey: %@", 35, 2, v335);

  sub_1001BAF88();
  v339 = swift_allocError();
  *v340 = 0;
  swift_willThrow();

LABEL_299:
  v468 = 0;
  v469 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v374 = v469;
  *(v0 + 472) = v468;
  *(v0 + 480) = v374;
  v375._countAndFlagsBits = 0xD000000000000021;
  v375._object = 0x800000010134CB30;
  String.append(_:)(v375);
  *(v0 + 584) = v339;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002C5DC4()
{
  v470 = v0;
  v1 = *(v0 + 1720);
  *(v0 + 1728) = v1;
  v2 = (*(v0 + 960) + *(v0 + 1780));
  v4 = v2[3];
  v3 = v2[4];
  sub_1000035D0(v2, v4);
  if (sub_10002BD40(v4, v3))
  {
    sub_10001F280(*(v0 + 960) + *(v0 + 1780), v0 + 216);
  }

  else
  {
    v5 = (*(v0 + 960) + *(v0 + 1780));
    sub_1000035D0(v5, v5[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v6 = *(v0 + 608);
    *(v0 + 240) = &type metadata for PrimaryWildIndex;
    *(v0 + 248) = sub_10022A528();
    *(v0 + 216) = v6;
  }

  sub_1000D2A70(v0 + 216, v0 + 136, &qword_10169C988, &unk_1013B3320);
  if (*(v0 + 160))
  {
    v7 = *(v0 + 1392);
    sub_10000A748((v0 + 136), v0 + 176);
    v8 = sub_1002C99B0;
    v9 = v7;
    v10 = 0;

    return _swift_task_switch(v8, v9, v10);
  }

  v457 = v1;
  v11 = *(v0 + 960);
  sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v11, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8(v0 + 136, &qword_10169C988, &unk_1013B3320);
  v12 = *(v0 + 1336);
  swift_beginAccess();
  sub_1005CAD18(v12, *(v0 + 520));
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 1152);
    v16 = *(v0 + 1136);
    v17 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v15, v16, &qword_10169C970, &qword_101398A18);
    v18 = (v16 + *(v17 + 48));
    Hasher.init(_seed:)();
    sub_100D15128(&v468);
    v19 = Hasher._finalize()();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      v23 = *v18;
      v24 = *(*(v0 + 808) + 72);
      do
      {
        v25 = *(v0 + 824);
        sub_1002DB760(*(v14 + 48) + v21 * v24, v25, type metadata accessor for RawSearchResult);
        v26 = *(v0 + 824);
        if (*v25 == v23 && (v27 = static Date.== infix(_:_:)(), v26 = *(v0 + 824), (v27 & 1) != 0) && (v28 = *(v0 + 800), *(v26 + v28[6]) == *&v18[v28[6]]) && *(v26 + v28[7]) == *&v18[v28[7]] && *(v26 + v28[8]) == *&v18[v28[8]])
        {
          v29 = *(v0 + 824);
          v30 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v29, type metadata accessor for RawSearchResult);
          if (v30)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1002DBBF0(v26, type metadata accessor for RawSearchResult);
        }

        v21 = (v21 + 1) & v22;
      }

      while (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
    }

    v31 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v18, v31, type metadata accessor for RawSearchResult);
    v468 = v14;
    sub_100DFE348(v31, v21, isUniquelyReferenced_nonNull_native);
    v14 = v468;
LABEL_21:
    sub_1002DBBF0(v18, type metadata accessor for RawSearchResult);
    v33 = *(v0 + 1448);
    v34 = *(v0 + 1336);
    v35 = *(v0 + 1328);
    v36 = *(v0 + 1272);
    v462 = *(*(v0 + 1280) + 8);
    v462(*(v0 + 1136), v36);
    v33(v35, v34, v36);
    swift_beginAccess();
    v37 = v14;
    v38 = v35;
  }

  else
  {
    v39 = *(v0 + 1448);
    v40 = *(v0 + 1336);
    v41 = *(v0 + 1328);
    v42 = *(v0 + 1280);
    v43 = *(v0 + 1272);
    v44 = *(v0 + 1152);
    v45 = *(v0 + 1128);
    v463 = *(v0 + 1016);
    v46 = *(v0 + 808);
    swift_endAccess();
    v39(v41, v40, v43);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_101385D80;
    sub_1000D2A70(v44, v45, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v45 + *(v463 + 48), v48 + v47, type metadata accessor for RawSearchResult);
    v462 = *(v42 + 8);
    v462(v45, v43);
    v49 = sub_10112A090(v48);
    swift_setDeallocating();
    sub_1002DBBF0(v48 + v47, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v37 = v49;
    v38 = v41;
  }

  sub_1001DE1B0(v37, v38);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_328;
  }

  while (1)
  {
    v50 = *(v0 + 1448);
    v51 = *(v0 + 1336);
    v52 = *(v0 + 1304);
    v53 = *(v0 + 1272);
    v54 = *(v0 + 1152);
    v55 = *(v0 + 1120);
    v56 = *(v0 + 1112);
    v459 = *(v0 + 1104);
    v465 = type metadata accessor for Logger();
    sub_1000076D4(v465, qword_10177A818);
    v50(v52, v51, v53);
    sub_1000D2A70(v54, v55, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v54, v56, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v54, v459, &qword_10169C970, &qword_101398A18);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v444 = v58;
      v446 = v57;
      v59 = *(v0 + 1304);
      v60 = *(v0 + 1272);
      v61 = *(v0 + 1128);
      v429 = *(v0 + 1120);
      v441 = *(v0 + 1104);
      v438 = *(v0 + 1112);
      v440 = *(v0 + 1096);
      v449 = *(v0 + 1016);
      v62 = *(v0 + 848);
      logc = *(v0 + 840);
      v436 = *(v0 + 856);
      v454 = *(v0 + 800);
      v63 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v63 = 141559043;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v462(v59, v60);
      v67 = sub_1000136BC(v64, v66, (v0 + 528));

      *(v63 + 14) = v67;
      *(v63 + 22) = 2082;
      sub_1000D2A70(v429, v61, &qword_10169C970, &qword_101398A18);
      v68 = v61 + *(v449 + 48);
      (*(v62 + 16))(v436, v68 + *(v454 + 20), logc);
      sub_1002DBBF0(v68, type metadata accessor for RawSearchResult);
      v462(v61, v60);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      (*(v62 + 8))(v436, logc);
      sub_10000B3A8(v429, &qword_10169C970, &qword_101398A18);
      v72 = sub_1000136BC(v69, v71, (v0 + 528));

      *(v63 + 24) = v72;
      *(v63 + 32) = 2082;
      sub_1000D2A70(v438, v61, &qword_10169C970, &qword_101398A18);
      v73 = v61 + *(v449 + 48);
      LOBYTE(v72) = *(v73 + *(v454 + 36));
      sub_1002DBBF0(v73, type metadata accessor for RawSearchResult);
      v462(v61, v60);
      v74 = sub_100013454(v72);
      v76 = v75;
      sub_10000B3A8(v438, &qword_10169C970, &qword_101398A18);
      v77 = sub_1000136BC(v74, v76, (v0 + 528));

      *(v63 + 34) = v77;
      *(v63 + 42) = 2048;
      sub_1000D2A70(v441, v440, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v78 = *(v0 + 520);
      if (*(v78 + 16) && (v79 = sub_1000210EC(*(v0 + 1096)), (v80 & 1) != 0))
      {
        v81 = *(*(v78 + 56) + 8 * v79);
        swift_endAccess();
        v82 = *(v81 + 16);
      }

      else
      {
        swift_endAccess();
        v82 = 0;
      }

      v84 = *(v0 + 1568);
      v89 = *(v0 + 1560);
      v90 = *(v0 + 1272);
      v455 = *(v0 + 1152);
      v91 = *(v0 + 1104);
      v92 = *(v0 + 1096);
      v85 = *(v0 + 992);
      sub_1002DBBF0(v92 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      v462(v92, v90);
      sub_10000B3A8(v91, &qword_10169C970, &qword_101398A18);
      *(v63 + 44) = v82;
      v83 = v446;
      _os_log_impl(&_mh_execute_header, v446, v444, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v63, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v89, v84);
      sub_10000B3A8(v85, &unk_1016C1120, &qword_1013C49D0);
      v88 = v455;
    }

    else
    {
      v83 = *(v0 + 1632);
      v84 = *(v0 + 1568);
      v85 = *(v0 + 1560);
      v450 = *(v0 + 1272);
      v455 = *(v0 + 1304);
      v460 = *(v0 + 1152);
      v86 = *(v0 + 1120);
      v87 = *(v0 + 1112);
      v447 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v85, v84);
      sub_10000B3A8(v87, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v86, &qword_10169C970, &qword_101398A18);
      v462(v455, v450);
      sub_10000B3A8(v447, &unk_1016C1120, &qword_1013C49D0);
      v88 = v460;
    }

    sub_10000B3A8(v88, &qword_10169C970, &qword_101398A18);
    v93 = *(v0 + 1552) + 1;
    if (v93 != *(v0 + 1544))
    {
      *(v0 + 1552) = v93;
      v293 = *(v0 + 1536);
      if (v93 >= *(v293 + 16))
      {
LABEL_332:
        __break(1u);
        goto LABEL_333;
      }

      v294 = *(v0 + 1480);
      v295 = v294 >> 62;
      v296 = v293 + 24 * v93;
      v297 = *(v296 + 32);
      *(v0 + 1560) = v297;
      v84 = *(v296 + 40);
      *(v0 + 1568) = v84;
      v298 = *(v296 + 48);
      *(v0 + 1580) = *(v296 + 52);
      *(v0 + 1576) = v298;
      if ((v294 >> 62) > 1)
      {
        if (v295 != 2)
        {
          v85 = 0;
          v83 = 0;
          v300 = 0;
          v299 = 0;
          goto LABEL_238;
        }

        v314 = *(v0 + 1472);
        v83 = *(v314 + 16);
        v85 = *(v314 + 24);
      }

      else
      {
        if (!v295)
        {
          v83 = 0;
          v299 = 0;
          v85 = BYTE6(v294);
          v300 = BYTE6(v294);
          goto LABEL_238;
        }

        v314 = *(v0 + 1472);
        v85 = v314 >> 32;
        v83 = v314;
      }

      sub_10002E98C(v314, v294);
      if (v85 < v83)
      {
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
        goto LABEL_335;
      }

      v294 = *(v0 + 1480);
      v326 = *(v0 + 1472);
      if (v294 >> 62 == 2)
      {
        v299 = *(v326 + 16);
        v300 = *(v326 + 24);
      }

      else
      {
        v300 = v326 >> 32;
        v299 = v326;
      }

LABEL_238:
      if (v300 < v85 || v85 < v299)
      {
        goto LABEL_334;
      }

      if (__OFSUB__(v85, v83))
      {
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
        goto LABEL_344;
      }

      if ((v85 - v83) >= 0x39)
      {
        v328 = v83 + 57;
        if (__OFADD__(v83, 57))
        {
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
          goto LABEL_348;
        }

        v329 = v294 >> 62;
        if ((v294 >> 62) > 1)
        {
          if (v329 == 2)
          {
            v333 = *(v0 + 1472);
            v330 = *(v333 + 16);
            v331 = *(v333 + 24);
          }

          else
          {
            v331 = 0;
            v330 = 0;
          }
        }

        else if (v329)
        {
          v330 = *(v0 + 1472);
          v331 = v330 >> 32;
          v330 = v330;
        }

        else
        {
          v330 = 0;
          v331 = BYTE6(v294);
        }

        if (v331 < v328 || v328 < v330)
        {
          goto LABEL_345;
        }

        v85 = 0;
        if (v329 <= 1)
        {
          if (v329)
          {
            v85 = *(v0 + 1472);
          }

LABEL_267:
          if (v328 < v85)
          {
            goto LABEL_336;
          }

LABEL_268:
          v342 = *(v0 + 1472);
          sub_100017D5C(v297, v84);
          sub_100017D5C(v297, v84);
          v343 = Data._Representation.subscript.getter();
          v345 = v344;
          sub_100006654(v342, v294);
          v346 = v345 >> 62;
          if ((v345 >> 62) > 1)
          {
            v85 = v457;
            if (v346 != 2)
            {
              goto LABEL_282;
            }

            v349 = *(v343 + 16);
            v348 = *(v343 + 24);
            v135 = __OFSUB__(v348, v349);
            v350 = v348 - v349;
            if (!v135)
            {
              if (v350 != 57)
              {
                goto LABEL_282;
              }

              goto LABEL_274;
            }

            __break(1u);
          }

          else
          {
            if (!v346)
            {
              v347 = BYTE6(v345);
              goto LABEL_281;
            }

            LODWORD(v347) = HIDWORD(v343) - v343;
            if (!__OFSUB__(HIDWORD(v343), v343))
            {
              v347 = v347;
LABEL_281:
              v85 = v457;
              if (v347 != 57)
              {
LABEL_282:
                v364 = v343;
                v365 = v345;
LABEL_283:
                sub_100016590(v364, v365);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_274:
              v351 = sub_100A7A194(v343, v345, 0, 0);
              if (v85)
              {
                v84 = v0 + 560;
                v83 = static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_277:
                  v355 = qword_10177BA00;
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v356 = swift_allocObject();
                  *(v356 + 16) = xmmword_101385D80;
                  *v84 = v85;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v357 = String.init<A>(describing:)();
                  v359 = v358;
                  *(v356 + 56) = &type metadata for String;
                  *(v356 + 64) = sub_100008C00();
                  *(v356 + 32) = v357;
                  *(v356 + 40) = v359;
                  os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v355, "Error deriving advertisementKey: %@", 35, 2, v356);

                  sub_1001BAF88();
                  v360 = swift_allocError();
                  *v361 = 0;
                  swift_willThrow();

LABEL_278:
                  v468 = 0;
                  v469 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v362 = v469;
                  *(v0 + 504) = v468;
                  *(v0 + 512) = v362;
                  v363._countAndFlagsBits = 0xD000000000000021;
                  v363._object = 0x800000010134CB30;
                  String.append(_:)(v363);
                  *(v0 + 552) = v360;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_348:
                swift_once();
                goto LABEL_277;
              }

              v352 = v351;
              v353 = sub_100A7829C(v351, 0, 2);
              *(v0 + 1584) = v353;
              *(v0 + 1592) = v354;
              v367 = v353;
              v368 = v354;
              v8 = CCECCryptorRelease();
              v369 = v368 >> 62;
              if ((v368 >> 62) > 1)
              {
                if (v369 != 2)
                {
                  v385 = 0;
                  goto LABEL_322;
                }

                v377 = v367[2];
                v376 = v367[3];
                v135 = __OFSUB__(v376, v377);
                v370 = v376 - v377;
                if (v135)
                {
                  __break(1u);
                  v378 = *(v0 + 792);
                  v379 = *(v0 + 712);

                  sub_100016590(v352, v297);

                  sub_100016590(v455, v440);

                  sub_1002DBBF0(v378, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v379, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);

                  v380 = *(v0 + 8);

                  return v380();
                }
              }

              else if (v369)
              {
                LODWORD(v370) = HIDWORD(v367) - v367;
                if (__OFSUB__(HIDWORD(v367), v367))
                {
                  goto LABEL_355;
                }

                v370 = v370;
              }

              else
              {
                v370 = BYTE6(v368);
              }

              if (v370 == 28)
              {
                sub_100016590(v343, v345);
                v381 = swift_task_alloc();
                *(v0 + 1600) = v381;
                *v381 = v0;
                v381[1] = sub_1002BA248;
                v382 = *(v0 + 1528);
                v383 = *(v0 + 1336);
                v384 = *(v0 + 1008);

                return sub_1002D7014(v384, v297, v84, v382, v367, v368, 0, v383);
              }

              if (v369 == 2)
              {
                v387 = v367[2];
                v386 = v367[3];
                v385 = v386 - v387;
                if (!__OFSUB__(v386, v387))
                {
                  goto LABEL_322;
                }

                __break(1u);
              }

              else if (v369 == 1)
              {
                if (__OFSUB__(HIDWORD(v367), v367))
                {
                  goto LABEL_356;
                }

                v385 = HIDWORD(v367) - v367;
                goto LABEL_322;
              }

              v385 = BYTE6(v368);
LABEL_322:
              sub_100018350();
              v360 = swift_allocError();
              *v388 = 28;
              *(v388 + 8) = v385;
              *(v388 + 16) = 0;
              swift_willThrow();
              sub_100016590(v367, v368);
              goto LABEL_278;
            }
          }

          __break(1u);
LABEL_351:
          swift_once();
          goto LABEL_254;
        }

        if (v329 != 2)
        {
          goto LABEL_267;
        }

        v332 = *(v0 + 1472);
      }

      else
      {
        v327 = v294 >> 62;
        if ((v294 >> 62) <= 1)
        {
          if (!v327)
          {
            v85 = 0;
            goto LABEL_268;
          }

          v341 = *(v0 + 1472);
          v328 = v341 >> 32;
          v85 = v341;
          goto LABEL_267;
        }

        if (v327 != 2)
        {
          v85 = 0;
          goto LABEL_268;
        }

        v332 = *(v0 + 1472);
        v328 = *(v332 + 24);
      }

      v85 = *(v332 + 16);
      goto LABEL_267;
    }

    v94 = *(v0 + 1480);
    v95 = *(v0 + 1472);
    v96 = *(v0 + 1384);
    v97 = *(v0 + 1344);
    v98 = *(v0 + 1336);
    v99 = *(v0 + 1280);
    v100 = *(v0 + 1272);

    sub_100006654(v95, v94);
    v101 = *(v99 + 8);
    v101(v97, v100);
    sub_1002DBBF0(v96, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v101(v98, v100);
    v102 = *(v0 + 1408) + 1;
    if (v102 == *(v0 + 1400))
    {
      break;
    }

    while (1)
    {
      *(v0 + 1408) = v102;
      v302 = *(v0 + 632);
      if (!v302)
      {
        v302 = _swiftEmptyArrayStorage;
      }

      if (v102 >= v302[2])
      {
        break;
      }

      v303 = *(v0 + 1384);
      v304 = *(v0 + 1352);
      v305 = *(v0 + 1280);
      v306 = *(v0 + 1272);
      v307 = *(v0 + 1264);
      sub_1002DB760(v302 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v102, v303, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v309 = *(v303 + 16);
      v308 = *(v303 + 24);
      sub_1000D2A70(v303 + *(v304 + 28), v307, &qword_1016980D0, &unk_10138F3B0);
      v310 = *(v305 + 48);
      *(v0 + 1416) = v310;
      *(v0 + 1424) = (v305 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v310(v307, 1, v306) != 1)
      {
        v317 = *(v0 + 1344);
        v318 = *(v0 + 1280);
        v319 = *(v0 + 1272);
        v320 = *(v0 + 1264);
        v321 = *(v0 + 1256);
        v322 = *(v318 + 32);
        *(v0 + 1432) = v322;
        *(v0 + 1440) = (v318 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v322(v317, v320, v319);
        v323 = *(v318 + 16);
        *(v0 + 1448) = v323;
        *(v0 + 1456) = (v318 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v323(v321, v317, v319);
        (*(v318 + 56))(v321, 0, 1, v319);
        v324 = swift_task_alloc();
        *(v0 + 1464) = v324;
        *v324 = v0;
        v324[1] = sub_1002B09AC;
        v325 = *(v0 + 1256);

        return sub_1002D5B7C(v309, v308, v325);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v465, qword_10177A818);
      v311 = Logger.logObject.getter();
      v312 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v311, v312))
      {
        v313 = swift_slowAlloc();
        *v313 = 0;
        _os_log_impl(&_mh_execute_header, v311, v312, "Missing share id in payload.", v313, 2u);
      }

      v301 = *(v0 + 1384);

      sub_1002DBBF0(v301, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v102 = *(v0 + 1408) + 1;
      if (v102 == *(v0 + 1400))
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    swift_once();
  }

LABEL_33:

  if (*(v0 + 624))
  {
    v84 = *(v0 + 624);
  }

  else
  {
    v84 = _swiftEmptyArrayStorage;
  }

  v422 = *(v84 + 16);
  if (!v422)
  {

LABEL_226:

    swift_beginAccess();
    v464 = *(v0 + 520);

    v315 = *(v0 + 8);

    return v315(v464);
  }

  v103 = *(v0 + 1280);
  v390 = (v0 + 600);
  v104 = *(v0 + 1024);
  v83 = *(v0 + 1016);
  v105 = *(v0 + 848);
  v391 = *(v0 + 808);
  v439 = *(v0 + 800);
  v428 = *(v0 + 792);
  v461 = *(v0 + 776);
  v414 = *(v0 + 752);
  v427 = *(v0 + 744);
  v106 = *(v0 + 728);
  v424 = v84 + 32;
  v411 = *(v0 + 712);
  v448 = (v106 + 104);
  v445 = (v106 + 8);
  v437 = *(v0 + 704);
  v398 = (*(v0 + 928) + 56);
  v413 = (v105 + 16);
  v397 = *(v0 + 664);
  v396 = (v105 + 56);
  v412 = (v105 + 8);
  v395 = (v103 + 16);
  v393 = (v104 + 48);
  v394 = (v104 + 56);
  v423 = *(*(v0 + 640) + 16);
  v416 = (v103 + 8);
  v443 = enum case for HashAlgorithm.sha256(_:);

  v107 = 0;
  v392 = xmmword_101385D80;
  v85 = v457;
  v415 = v84;
  v425 = v83;
  while (2)
  {
    if (v107 >= *(v84 + 16))
    {
      goto LABEL_337;
    }

    v426 = v107;
    v108 = (v424 + 24 * v107);
    v110 = *v108;
    v109 = v108[1];
    v440 = v109;
    v456 = *v108;
    v442 = v108[2];
    if (!v423)
    {
      sub_100017D5C(v110, v109);

LABEL_148:
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v465, qword_10177A818);
      sub_100017D5C(v456, v440);

      v83 = v440;
      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.error.getter();
      sub_100016590(v456, v440);

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v468 = v165;
        *v164 = 141558275;
        *(v164 + 4) = 1752392040;
        *(v164 + 12) = 2081;
        *(v0 + 488) = v456;
        *(v0 + 496) = v440;
        sub_10025DB08();
        v166 = RawRepresentable<>.hexString.getter();
        v83 = v167;
        v168 = sub_1000136BC(v166, v167, &v468);

        *(v164 + 14) = v168;
        _os_log_impl(&_mh_execute_header, v162, v163, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v164, 0x16u);
        sub_100007BAC(v165);
      }

      sub_100016590(v456, v440);

      v84 = v415;
      goto LABEL_153;
    }

    v83 = *(v0 + 640) + ((*(v414 + 80) + 32) & ~*(v414 + 80));
    sub_100017D5C(v110, v109);
    if (v110)
    {
      v111 = 0;
    }

    else
    {
      v111 = v109 == 0xC000000000000000;
    }

    v112 = !v111;
    log = v112;
    v457 = v109 >> 62;
    v430 = BYTE6(v109);
    v451 = *(v414 + 72);
    v113 = __OFSUB__(HIDWORD(v110), v110);
    v420 = v113;
    v417 = HIDWORD(v110) - v110;

    v114 = v423;
LABEL_53:
    v115 = *(v0 + 776);
    sub_1002DB760(v83, v115, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v116 = *v115;
    v117 = *(v461 + 8);
    v84 = v117 >> 62;
    v118 = v85;
    if ((v117 >> 62) > 1)
    {
      if (v84 == 2)
      {
        v85 = *(v116 + 16);
        v120 = *(v116 + 24);
        sub_100017D5C(v116, *(v461 + 8));
        v119 = *(v116 + 16);
        v121 = *(v116 + 24);
      }

      else
      {
        v85 = 0;
        v120 = 0;
        v121 = 0;
        v119 = 0;
      }
    }

    else if (v84)
    {
      v85 = v116;
      v120 = v116 >> 32;
      sub_100017D5C(v116, *(v461 + 8));
      v121 = v116 >> 32;
      v119 = v116;
    }

    else
    {
      v85 = 0;
      v119 = 0;
      v120 = BYTE6(v117);
      v121 = BYTE6(v117);
    }

    if (v121 < v85 || v85 < v119)
    {
      goto LABEL_324;
    }

    if (v84 > 1)
    {
      if (v84 == 2)
      {
        v122 = *(v116 + 16);
        v123 = *(v116 + 24);
      }

      else
      {
        v123 = 0;
        v122 = 0;
      }
    }

    else if (v84)
    {
      v122 = v116;
      v123 = v116 >> 32;
    }

    else
    {
      v122 = 0;
      v123 = BYTE6(v117);
    }

    if (v123 < v120 || v120 < v122)
    {
      goto LABEL_325;
    }

    if (__OFSUB__(v120, v85))
    {
      goto LABEL_326;
    }

    if ((v120 - v85) >= 0x39)
    {
      v124 = v85 + 57;
      if (!__OFADD__(v85, 57))
      {
        v85 = v118;
        if (v84 > 1)
        {
          if (v84 == 2)
          {
            v125 = *(v116 + 16);
            v126 = *(v116 + 24);
          }

          else
          {
            v126 = 0;
            v125 = 0;
          }
        }

        else if (v84)
        {
          v125 = v116;
          v126 = v116 >> 32;
        }

        else
        {
          v125 = 0;
          v126 = BYTE6(v117);
        }

        if (v126 < v124 || v124 < v125)
        {
          goto LABEL_330;
        }

        v127 = 0;
        if (v84 <= 1)
        {
          if (v84)
          {
            goto LABEL_92;
          }

          goto LABEL_95;
        }

        if (v84 == 3)
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
      goto LABEL_332;
    }

    v85 = v118;
    if (v84 > 1)
    {
      if (v84 != 2)
      {
        goto LABEL_96;
      }

      v124 = *(v116 + 24);
LABEL_94:
      v127 = *(v116 + 16);
      goto LABEL_95;
    }

    if (!v84)
    {
      goto LABEL_96;
    }

    v124 = v116 >> 32;
LABEL_92:
    v127 = v116;
LABEL_95:
    if (v124 < v127)
    {
      goto LABEL_327;
    }

LABEL_96:
    v128 = Data._Representation.subscript.getter();
    v130 = v129;
    sub_100016590(v116, v117);
    v131 = v130 >> 62;
    if ((v130 >> 62) > 1)
    {
      if (v131 != 2)
      {
        goto LABEL_285;
      }

      v134 = *(v128 + 16);
      v133 = *(v128 + 24);
      v135 = __OFSUB__(v133, v134);
      v132 = v133 - v134;
      if (v135)
      {
        goto LABEL_338;
      }
    }

    else if (v131)
    {
      LODWORD(v132) = HIDWORD(v128) - v128;
      if (__OFSUB__(HIDWORD(v128), v128))
      {
        goto LABEL_339;
      }

      v132 = v132;
    }

    else
    {
      v132 = BYTE6(v130);
    }

    if (v132 != 57)
    {
LABEL_285:
      v364 = v128;
      v365 = v130;
      goto LABEL_283;
    }

    v136 = sub_100A7A194(v128, v130, 0, 0);
    if (!v85)
    {
      v137 = sub_100A7829C(v136, 0, 2);
      v84 = v138;
      v8 = CCECCryptorRelease();
      v139 = v84 >> 62;
      if ((v84 >> 62) > 1)
      {
        if (v139 == 2)
        {
          v142 = *(v137 + 16);
          v141 = *(v137 + 24);
          v135 = __OFSUB__(v141, v142);
          v140 = v141 - v142;
          if (v135)
          {
            goto LABEL_341;
          }

          goto LABEL_116;
        }

        v366 = 0;
LABEL_298:
        sub_100018350();
        v339 = swift_allocError();
        *v373 = 28;
        *(v373 + 8) = v366;
        *(v373 + 16) = 0;
        swift_willThrow();
        sub_100016590(v137, v84);
        goto LABEL_299;
      }

      if (v139)
      {
        LODWORD(v140) = HIDWORD(v137) - v137;
        if (__OFSUB__(HIDWORD(v137), v137))
        {
          goto LABEL_340;
        }

        v140 = v140;
      }

      else
      {
        v140 = BYTE6(v84);
      }

LABEL_116:
      if (v140 == 28)
      {
        v462 = v83;
        v143 = v114;
        v144 = *(v0 + 736);
        v145 = *(v0 + 720);
        sub_100016590(v128, v130);
        (*v448)(v144, v443, v145);
        v146 = Data.hash(algorithm:)();
        v148 = v147;
        sub_100016590(v137, v84);
        (*v445)(v144, v145);
        v149 = v148 >> 62;
        if (v148 >> 62 == 3)
        {
          if (v146)
          {
            v150 = 0;
          }

          else
          {
            v150 = v148 == 0xC000000000000000;
          }

          v151 = v457;
          v153 = !v150 || v457 < 3;
          if (((v153 | log) & 1) == 0)
          {
            v169 = 0;
            v170 = 0xC000000000000000;
            goto LABEL_157;
          }

          v154 = v143;
          v155 = 0;
          v83 = v462;
          if (v457 > 1)
          {
LABEL_141:
            if (v151 != 2)
            {
              if (!v155)
              {
                goto LABEL_155;
              }

LABEL_51:
              sub_100016590(v146, v148);
              v85 = 0;
              goto LABEL_52;
            }

            v160 = *(v456 + 16);
            v159 = *(v456 + 24);
            v135 = __OFSUB__(v159, v160);
            v158 = v159 - v160;
            if (v135)
            {
              goto LABEL_342;
            }

            goto LABEL_143;
          }
        }

        else
        {
          v151 = v457;
          v154 = v143;
          if (v149 == 2)
          {
            v157 = *(v146 + 16);
            v156 = *(v146 + 24);
            v135 = __OFSUB__(v156, v157);
            v155 = v156 - v157;
            v83 = v462;
            if (v135)
            {
              goto LABEL_347;
            }

            if (v457 > 1)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v83 = v462;
            if (v149 == 1)
            {
              LODWORD(v155) = HIDWORD(v146) - v146;
              if (__OFSUB__(HIDWORD(v146), v146))
              {
                goto LABEL_346;
              }

              v155 = v155;
              if (v457 > 1)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v155 = BYTE6(v148);
              if (v457 > 1)
              {
                goto LABEL_141;
              }
            }
          }
        }

        v158 = v430;
        if (v151)
        {
          v158 = v417;
          if (v420)
          {
            goto LABEL_343;
          }
        }

LABEL_143:
        if (v155 != v158)
        {
          goto LABEL_51;
        }

        if (v155 < 1)
        {
LABEL_155:
          v169 = v146;
          v170 = v148;
LABEL_157:
          sub_100016590(v169, v170);
          v85 = 0;
LABEL_158:
          v171 = *(v0 + 792);
          v172 = *(v0 + 784);
          sub_1002DB7C8(*(v0 + 776), v172, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v172, v171, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v83 = v442;
          v84 = v415;
          v462 = *(v442 + 16);
          if (v462)
          {
            v458 = v442 + ((*(v437 + 80) + 32) & ~*(v437 + 80));

            v173 = 0;
            while (v173 < *(v442 + 16))
            {
              sub_1002DB760(v458 + *(v437 + 72) * v173, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v174 = sub_100496ABC();
              v175 = **(v0 + 712);
              v176 = *(v411 + 8);
              v177 = **(v0 + 792);
              v178 = *(v428 + 8);
              sub_100017D5C(v177, v178);
              sub_10002EA98(57, v177, v178, &v468);
              sub_100496F68(v468, v469, &v466);
              v179 = v467;
              if (v467 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v452 = *(v0 + 792);
              v180 = v466;
              v181 = PublicKey.advertisement.getter(v466, v467);
              v183 = v182;
              v8 = sub_100006654(v180, v179);
              v184 = v176 >> 62;
              loga = *(v427 + 20);
              if ((v176 >> 62) > 1)
              {
                if (v184 == 2)
                {
                  v187 = *(v175 + 16);
                  v186 = *(v175 + 24);
                  v185 = v186 - v187;
                  if (__OFSUB__(v186, v187))
                  {
                    goto LABEL_353;
                  }
                }

                else
                {
                  v185 = 0;
                }
              }

              else if (v184)
              {
                if (__OFSUB__(HIDWORD(v175), v175))
                {
                  __break(1u);
LABEL_353:
                  __break(1u);
                  goto LABEL_354;
                }

                v185 = HIDWORD(v175) - v175;
              }

              else
              {
                v185 = BYTE6(v176);
              }

              sub_100A2A240(3);
              v189 = v188;
              v190 = v174;
              sub_100017D5C(v175, v176);
              sub_100017D5C(v181, v183);
              if (v185 >= v189)
              {
                v191 = (v0 + 672);
                sub_100A2AA58(v190, v175, v176, v181, v183, *(v0 + 672));
              }

              else
              {
                v191 = (v0 + 680);
                sub_100A2B118(v190, v175, v176, v181, v183, *(v0 + 680));
              }

              v402 = v183;
              v404 = v181;
              v431 = v173;
              v192 = *v191;
              v418 = *(v0 + 1016);
              v421 = v190;
              v408 = *(v0 + 1000);
              v410 = *(v0 + 1272);
              v193 = *(v0 + 976);
              v399 = *(v0 + 968);
              v194 = *(v0 + 920);
              v195 = *(v0 + 856);
              v196 = *(v0 + 840);
              v197 = *(v0 + 832);
              v198 = *(v0 + 696);
              v199 = *(v0 + 688);
              v200 = *(v0 + 656);
              sub_1002DB7C8(v192, v199, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v199, v198, type metadata accessor for BeaconPayloadv1);
              v201 = v193;
              v400 = v193;
              (*v398)(v193, 1, 1, v194);
              v406 = *(v198 + v397[10]);
              v202 = *v413;
              (*v413)(v195, v198 + v397[5], v196);
              v203 = *(v198 + v397[7]);
              v204 = *(v198 + v397[8]);
              v205 = *(v198 + v397[9]);
              (*v396)(v200, 1, 1, v196);
              sub_1000D2A70(v201, v399, &unk_1016C1120, &qword_1013C49D0);
              v389 = v202;
              v202(&v197[v439[5]], v195, v196);
              sub_1000D2A70(v200, &v197[v439[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v399, &v197[v439[11]], &unk_1016C1120, &qword_1013C49D0);
              UUID.init()();
              sub_100016590(v404, v402);
              sub_10000B3A8(v399, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v200, &unk_101696900, &unk_10138B1E0);
              v206 = *v412;
              (*v412)(v195, v196);
              sub_10000B3A8(v400, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v198, type metadata accessor for BeaconPayloadv1);
              *v197 = v406;
              *&v197[v439[6]] = v203;
              *&v197[v439[7]] = v204;
              *&v197[v439[8]] = v205;
              v197[v439[9]] = 15;
              *&v197[v439[13]] = 256;
              v207 = *(v425 + 48);
              (*v395)(v408, loga + v452, v410);
              sub_1002DB7C8(v197, v408 + v207, type metadata accessor for RawSearchResult);
              (*v394)(v408, 0, 1, v418);
              if ((*v393)(v408, 1, v418) == 1)
              {
                v208 = *(v0 + 1000);

                sub_10000B3A8(v208, &qword_10169C968, &qword_101398A10);
                v209 = v431;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v210 = *(v0 + 792);
                v211 = *(v0 + 760);
                sub_1000076D4(v465, qword_10177A818);
                sub_1002DB760(v210, v211, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v84 = Logger.logObject.getter();
                v212 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v84, v212))
                {
                  v213 = *(v0 + 760);
                  v214 = swift_slowAlloc();
                  v215 = swift_slowAlloc();
                  v468 = v215;
                  *v214 = 141558275;
                  *(v214 + 4) = 1752392040;
                  *(v214 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v216 = dispatch thunk of CustomStringConvertible.description.getter();
                  v218 = v217;
                  v219 = v213;
                  v209 = v431;
                  sub_1002DBBF0(v219, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v83 = sub_1000136BC(v216, v218, &v468);

                  *(v214 + 14) = v83;
                  _os_log_impl(&_mh_execute_header, v84, v212, "Could not create search result for beacon: %{private,mask.hash}s.", v214, 0x16u);
                  sub_100007BAC(v215);
                }

                else
                {
                  v83 = *(v0 + 760);

                  sub_1002DBBF0(v83, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v220 = *(v0 + 1088);
                v221 = *(v0 + 1080);
                sub_1000D2AD8(*(v0 + 1000), v220, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v220, v221, &qword_10169C970, &qword_101398A18);
                v222 = *(v425 + 48);
                swift_beginAccess();
                sub_1005CAD18(v221, *(v0 + 520));
                v224 = *(v0 + 1272);
                v405 = v206;
                if (v223)
                {
                  v225 = v223;
                  v226 = *(v0 + 1088);
                  v227 = *(v0 + 1080);
                  v228 = *(v0 + 1072);
                  swift_endAccess();
                  sub_1002DBBF0(v221 + v222, type metadata accessor for RawSearchResult);
                  v453 = *v416;
                  (*v416)(v227, v224);
                  sub_1000D2A70(v226, v228, &qword_10169C970, &qword_101398A18);
                  v229 = (v228 + *(v425 + 48));
                  Hasher.init(_seed:)();
                  sub_100D15128(&v468);
                  v230 = Hasher._finalize()();
                  v231 = -1 << *(v225 + 32);
                  v232 = v230 & ~v231;
                  if ((*(v225 + 56 + ((v232 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v232))
                  {
                    v233 = ~v231;
                    v234 = *v229;
                    v235 = *(v391 + 72);
                    do
                    {
                      v236 = *(v0 + 816);
                      sub_1002DB760(*(v225 + 48) + v232 * v235, v236, type metadata accessor for RawSearchResult);
                      v237 = *(v0 + 816);
                      if (*v236 == v234 && (v238 = static Date.== infix(_:_:)(), v237 = *(v0 + 816), (v238 & 1) != 0) && *(v237 + v439[6]) == *&v229[v439[6]] && *(v237 + v439[7]) == *&v229[v439[7]] && *(v237 + v439[8]) == *&v229[v439[8]])
                      {
                        v239 = *(v0 + 816);
                        v240 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v239, type metadata accessor for RawSearchResult);
                        if (v240)
                        {
                          goto LABEL_195;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v237, type metadata accessor for RawSearchResult);
                      }

                      v232 = (v232 + 1) & v233;
                    }

                    while (((*(v225 + 56 + ((v232 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v232) & 1) != 0);
                  }

                  v241 = *(v0 + 832);
                  v242 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v229, v241, type metadata accessor for RawSearchResult);
                  v468 = v225;
                  sub_100DFE348(v241, v232, v242);
                  v225 = v468;
LABEL_195:
                  sub_1002DBBF0(v229, type metadata accessor for RawSearchResult);
                  v243 = *(v0 + 1128);
                  v244 = *(v0 + 1088);
                  v453(*(v0 + 1072), *(v0 + 1272));
                  sub_1000D2A70(v244, v243, &qword_10169C970, &qword_101398A18);
                  v245 = *(v425 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v225, v243);
                }

                else
                {
                  v246 = *(v0 + 1128);
                  v247 = *(v0 + 1088);
                  v248 = *(v0 + 1080);
                  v249 = *(v0 + 1064);
                  swift_endAccess();
                  sub_1002DBBF0(v221 + v222, type metadata accessor for RawSearchResult);
                  v250 = *v416;
                  (*v416)(v248, v224);
                  sub_1000D2A70(v247, v246, &qword_10169C970, &qword_101398A18);
                  v245 = *(v425 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v251 = (*(v391 + 80) + 32) & ~*(v391 + 80);
                  v252 = swift_allocObject();
                  *(v252 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v247, v249, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v249 + *(v425 + 48), v252 + v251, type metadata accessor for RawSearchResult);
                  v250(v249, v224);
                  v253 = sub_10112A090(v252);
                  swift_setDeallocating();
                  sub_1002DBBF0(v252 + v251, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v254 = swift_isUniquelyReferenced_nonNull_native();
                  v468 = *(v0 + 520);
                  sub_100FFC200(v253, v246, v254);
                  v453 = v250;
                  v250(v246, v224);
                  *(v0 + 520) = v468;
                }

                swift_endAccess();
                sub_1002DBBF0(*(v0 + 1128) + v245, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v255 = *(v0 + 1088);
                v256 = *(v0 + 1056);
                v257 = *(v0 + 1048);
                v258 = *(v0 + 1040);
                v259 = *(v0 + 792);
                v260 = *(v0 + 768);
                sub_1000076D4(v465, qword_10177A818);
                sub_1002DB760(v259, v260, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v255, v256, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v255, v257, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v255, v258, &qword_10169C970, &qword_101398A18);
                v261 = Logger.logObject.getter();
                v262 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v261, v262))
                {
                  v419 = v262;
                  logb = v261;
                  v263 = *(v0 + 1272);
                  v264 = *(v0 + 1128);
                  v265 = *(v0 + 1056);
                  v407 = *(v0 + 1032);
                  v409 = *(v0 + 1040);
                  v401 = *(v0 + 856);
                  v403 = *(v0 + 1048);
                  v266 = *(v0 + 840);
                  v267 = *(v0 + 768);
                  v268 = swift_slowAlloc();
                  v468 = swift_slowAlloc();
                  *v268 = 141559043;
                  *(v268 + 4) = 1752392040;
                  *(v268 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v269 = dispatch thunk of CustomStringConvertible.description.getter();
                  v271 = v270;
                  sub_1002DBBF0(v267, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v272 = sub_1000136BC(v269, v271, &v468);

                  *(v268 + 14) = v272;
                  *(v268 + 22) = 2082;
                  sub_1000D2A70(v265, v264, &qword_10169C970, &qword_101398A18);
                  v273 = v264 + *(v425 + 48);
                  v389(v401, v273 + v439[5], v266);
                  sub_1002DBBF0(v273, type metadata accessor for RawSearchResult);
                  v453(v264, v263);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v274 = dispatch thunk of CustomStringConvertible.description.getter();
                  v276 = v275;
                  v405(v401, v266);
                  sub_10000B3A8(v265, &qword_10169C970, &qword_101398A18);
                  v277 = sub_1000136BC(v274, v276, &v468);

                  *(v268 + 24) = v277;
                  *(v268 + 32) = 2082;
                  sub_1000D2A70(v403, v264, &qword_10169C970, &qword_101398A18);
                  v278 = v264 + *(v425 + 48);
                  LOBYTE(v277) = *(v278 + v439[9]);
                  sub_1002DBBF0(v278, type metadata accessor for RawSearchResult);
                  v453(v264, v263);
                  v279 = sub_100013454(v277);
                  v281 = v280;
                  sub_10000B3A8(v403, &qword_10169C970, &qword_101398A18);
                  v282 = sub_1000136BC(v279, v281, &v468);

                  *(v268 + 34) = v282;
                  *(v268 + 42) = 2048;
                  sub_1000D2A70(v409, v407, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v283 = *(v0 + 520);
                  if (*(v283 + 16) && (v284 = sub_1000210EC(*(v0 + 1032)), (v285 & 1) != 0))
                  {
                    v286 = *(*(v283 + 56) + 8 * v284);
                    swift_endAccess();
                    v287 = *(v286 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v287 = 0;
                  }

                  v209 = v431;
                  v290 = *(v0 + 1272);
                  v83 = *(v0 + 1088);
                  v291 = *(v0 + 1040);
                  v292 = *(v0 + 1032);
                  sub_1002DBBF0(v292 + *(v425 + 48), type metadata accessor for RawSearchResult);
                  v453(v292, v290);
                  v84 = &qword_10169C970;
                  sub_10000B3A8(v291, &qword_10169C970, &qword_101398A18);
                  *(v268 + 44) = v287;
                  _os_log_impl(&_mh_execute_header, logb, v419, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v268, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v83, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v83 = *(v0 + 1088);
                  v84 = *(v0 + 1056);
                  v288 = *(v0 + 1048);
                  v289 = *(v0 + 768);
                  sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v288, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v84, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v289, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v83, &qword_10169C970, &qword_101398A18);
                  v209 = v431;
                }
              }

              v173 = v209 + 1;
              sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v85 = 0;
              if (v173 == v462)
              {

                sub_100016590(v456, v440);

                v85 = 0;
                v84 = v415;
                goto LABEL_208;
              }
            }

            goto LABEL_331;
          }

          sub_100016590(v456, v440);

LABEL_208:
          sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_153:
          v107 = v426 + 1;
          if (v426 + 1 == v422)
          {
            goto LABEL_226;
          }

          continue;
        }

        sub_100017D5C(v456, v440);
        sub_100017D5C(v456, v440);
        sub_100017D5C(v146, v148);
        v161 = sub_100F0B1BC(v146, v148, v456, v440);
        sub_100016590(v146, v148);
        sub_100016590(v146, v148);
        sub_100016590(v456, v440);
        if (v161)
        {
          goto LABEL_158;
        }

LABEL_52:
        sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v83 += v451;
        v114 = v154 - 1;
        if (!v114)
        {
          goto LABEL_148;
        }

        goto LABEL_53;
      }

      if (v139 == 2)
      {
        v372 = *(v137 + 16);
        v371 = *(v137 + 24);
        v366 = v371 - v372;
        if (!__OFSUB__(v371, v372))
        {
          goto LABEL_298;
        }

        __break(1u);
      }

      else if (v139 == 1)
      {
        if (!__OFSUB__(HIDWORD(v137), v137))
        {
          v366 = HIDWORD(v137) - v137;
          goto LABEL_298;
        }

LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
        return _swift_task_switch(v8, v9, v10);
      }

      v366 = BYTE6(v84);
      goto LABEL_298;
    }

    break;
  }

  v83 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_351;
  }

LABEL_254:
  v334 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v335 = swift_allocObject();
  *(v335 + 16) = v392;
  *v390 = v85;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v336 = String.init<A>(describing:)();
  v338 = v337;
  *(v335 + 56) = &type metadata for String;
  *(v335 + 64) = sub_100008C00();
  *(v335 + 32) = v336;
  *(v335 + 40) = v338;
  os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v334, "Error deriving advertisementKey: %@", 35, 2, v335);

  sub_1001BAF88();
  v339 = swift_allocError();
  *v340 = 0;
  swift_willThrow();

LABEL_299:
  v468 = 0;
  v469 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v374 = v469;
  *(v0 + 472) = v468;
  *(v0 + 480) = v374;
  v375._countAndFlagsBits = 0xD000000000000021;
  v375._object = 0x800000010134CB30;
  String.append(_:)(v375);
  *(v0 + 584) = v339;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002C99B0()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1272);
  v5 = (*(v0 + 1776) + 24) & ~*(v0 + 1776);
  (*(v0 + 1448))(v3, *(v0 + 1336), v4);
  v6 = swift_allocObject();
  *(v0 + 1736) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1744) = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_1002C9B20;

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v6, v8);
}

uint64_t sub_1002C9B20()
{
  v1 = *(*v0 + 648);

  return _swift_task_switch(sub_1002C9C4C, v1, 0);
}

uint64_t sub_1002C9C4C()
{
  v482 = v0;
  if (*(v0 + 80))
  {
    v476 = *(v0 + 1580);
    v472 = *(v0 + 1576);
    v1 = *(v0 + 1448);
    v2 = *(v0 + 1336);
    v3 = *(v0 + 1272);
    v4 = *(v0 + 1152);
    v5 = *(v0 + 1144);
    v6 = *(v0 + 1016);
    v7 = *(v0 + 936);
    v8 = v0;
    v9 = *(v0 + 920);
    v468 = *(v8 + 864);
    v10 = *(v8 + 848);
    v458 = v6;
    v463 = *(v8 + 840);
    v455 = *(v8 + 800);
    sub_10000A748((v8 + 56), v8 + 96);
    v1(v7, v2, v3);
    sub_10001F280(v8 + 176, v7 + *(v9 + 20));
    sub_1000D2A70(v4, v5, &qword_10169C970, &qword_101398A18);
    v11 = v5 + *(v458 + 48);
    (*(v10 + 16))(v468, v11 + *(v455 + 20), v463);
    sub_1002DBBF0(v11, type metadata accessor for RawSearchResult);
    v12 = swift_task_alloc();
    v13 = v476;
    *(v8 + 1752) = v12;
    if (v472 == 3)
    {
      v13 = 0;
    }

    *v12 = v8;
    v12[1] = sub_1002CD898;
    v14 = *(v8 + 864);
    v15 = *(v8 + 936);

    return sub_1010B7D4C(v15, v14, v13 | ((v472 == 3) << 8), v8 + 96);
  }

  v17 = *(v0 + 960);
  sub_100007BAC((v0 + 176));
  sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v17, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
  v18 = *(v0 + 1728);
  v19 = *(v0 + 1336);
  swift_beginAccess();
  sub_1005CAD18(v19, *(v0 + 520));
  v453 = v18;
  if (v20)
  {
    v21 = v20;
    v22 = *(v0 + 1152);
    v23 = *(v0 + 1136);
    v24 = v0;
    v25 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v22, v23, &qword_10169C970, &qword_101398A18);
    v26 = (v23 + *(v25 + 48));
    Hasher.init(_seed:)();
    sub_100D15128(&v480);
    v27 = Hasher._finalize()();
    v28 = -1 << *(v21 + 32);
    v29 = v27 & ~v28;
    if ((*(v21 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
    {
      v30 = ~v28;
      v31 = *v26;
      v32 = *(*(v24 + 808) + 72);
      v0 = v24;
      do
      {
        v33 = *(v0 + 824);
        sub_1002DB760(*(v21 + 48) + v29 * v32, v33, type metadata accessor for RawSearchResult);
        v34 = *(v0 + 824);
        if (*v33 == v31 && (v35 = static Date.== infix(_:_:)(), v34 = *(v0 + 824), (v35 & 1) != 0) && (v36 = *(v0 + 800), *(v34 + v36[6]) == *&v26[v36[6]]) && *(v34 + v36[7]) == *&v26[v36[7]] && *(v34 + v36[8]) == *&v26[v36[8]])
        {
          v37 = *(v0 + 824);
          v38 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v37, type metadata accessor for RawSearchResult);
          if (v38)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1002DBBF0(v34, type metadata accessor for RawSearchResult);
        }

        v29 = (v29 + 1) & v30;
      }

      while (((*(v21 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
    }

    else
    {
      v0 = v24;
    }

    v52 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v26, v52, type metadata accessor for RawSearchResult);
    v480 = v21;
    sub_100DFE348(v52, v29, isUniquelyReferenced_nonNull_native);
    v21 = v480;
LABEL_23:
    sub_1002DBBF0(v26, type metadata accessor for RawSearchResult);
    v54 = *(v0 + 1448);
    v55 = *(v0 + 1336);
    v56 = *(v0 + 1328);
    v57 = *(v0 + 1272);
    v474 = *(*(v0 + 1280) + 8);
    (v474)(*(v0 + 1136), v57);
    v54(v56, v55, v57);
    swift_beginAccess();
    v50 = v21;
    v51 = v56;
  }

  else
  {
    v39 = *(v0 + 1448);
    v40 = *(v0 + 1336);
    v41 = *(v0 + 1328);
    v42 = *(v0 + 1280);
    v43 = *(v0 + 1272);
    v44 = *(v0 + 1152);
    v45 = *(v0 + 1128);
    v473 = *(v0 + 1016);
    v46 = *(v0 + 808);
    swift_endAccess();
    v39(v41, v40, v43);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_101385D80;
    sub_1000D2A70(v44, v45, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v45 + *(v473 + 48), v48 + v47, type metadata accessor for RawSearchResult);
    v474 = *(v42 + 8);
    (v474)(v45, v43);
    v49 = sub_10112A090(v48);
    swift_setDeallocating();
    sub_1002DBBF0(v48 + v47, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v50 = v49;
    v51 = v41;
  }

  sub_1001DE1B0(v50, v51);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_330;
  }

  while (1)
  {
    v58 = *(v0 + 1448);
    v59 = *(v0 + 1336);
    v60 = *(v0 + 1304);
    v61 = *(v0 + 1272);
    v62 = *(v0 + 1152);
    v63 = *(v0 + 1120);
    v64 = *(v0 + 1112);
    v469 = *(v0 + 1104);
    v477 = type metadata accessor for Logger();
    sub_1000076D4(v477, qword_10177A818);
    v58(v60, v59, v61);
    sub_1000D2A70(v62, v63, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v62, v64, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v62, v469, &qword_10169C970, &qword_101398A18);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v449 = v66;
      log = v65;
      v67 = *(v0 + 1304);
      v68 = *(v0 + 1272);
      v69 = *(v0 + 1128);
      v456 = *(v0 + 1120);
      v446 = *(v0 + 1104);
      v443 = *(v0 + 1112);
      v445 = *(v0 + 1096);
      v459 = *(v0 + 1016);
      v70 = *(v0 + 848);
      v436 = *(v0 + 840);
      v441 = *(v0 + 856);
      v464 = *(v0 + 800);
      v71 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v71 = 141559043;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (v474)(v67, v68);
      v75 = sub_1000136BC(v72, v74, (v0 + 528));

      *(v71 + 14) = v75;
      *(v71 + 22) = 2082;
      sub_1000D2A70(v456, v69, &qword_10169C970, &qword_101398A18);
      v76 = v69 + *(v459 + 48);
      (*(v70 + 16))(v441, v76 + *(v464 + 20), v436);
      sub_1002DBBF0(v76, type metadata accessor for RawSearchResult);
      (v474)(v69, v68);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v70 + 8))(v441, v436);
      sub_10000B3A8(v456, &qword_10169C970, &qword_101398A18);
      v80 = sub_1000136BC(v77, v79, (v0 + 528));

      *(v71 + 24) = v80;
      *(v71 + 32) = 2082;
      sub_1000D2A70(v443, v69, &qword_10169C970, &qword_101398A18);
      v81 = v69 + *(v459 + 48);
      LOBYTE(v80) = *(v81 + *(v464 + 36));
      sub_1002DBBF0(v81, type metadata accessor for RawSearchResult);
      (v474)(v69, v68);
      v82 = sub_100013454(v80);
      v84 = v83;
      sub_10000B3A8(v443, &qword_10169C970, &qword_101398A18);
      v85 = sub_1000136BC(v82, v84, (v0 + 528));

      *(v71 + 34) = v85;
      *(v71 + 42) = 2048;
      sub_1000D2A70(v446, v445, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v86 = *(v0 + 520);
      if (*(v86 + 16) && (v87 = sub_1000210EC(*(v0 + 1096)), (v88 & 1) != 0))
      {
        v89 = *(*(v86 + 56) + 8 * v87);
        swift_endAccess();
        v90 = *(v89 + 16);
      }

      else
      {
        swift_endAccess();
        v90 = 0;
      }

      v92 = *(v0 + 1568);
      v97 = *(v0 + 1560);
      v98 = *(v0 + 1272);
      v466 = *(v0 + 1152);
      v99 = *(v0 + 1104);
      v100 = *(v0 + 1096);
      v93 = *(v0 + 992);
      sub_1002DBBF0(v100 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      (v474)(v100, v98);
      sub_10000B3A8(v99, &qword_10169C970, &qword_101398A18);
      *(v71 + 44) = v90;
      v91 = log;
      _os_log_impl(&_mh_execute_header, log, v449, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v71, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v97, v92);
      sub_10000B3A8(v93, &unk_1016C1120, &qword_1013C49D0);
      v96 = v466;
    }

    else
    {
      v91 = *(v0 + 1632);
      v92 = *(v0 + 1568);
      v93 = *(v0 + 1560);
      v460 = *(v0 + 1272);
      v465 = *(v0 + 1304);
      v470 = *(v0 + 1152);
      v94 = *(v0 + 1120);
      v95 = *(v0 + 1112);
      v456 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v93, v92);
      sub_10000B3A8(v95, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v94, &qword_10169C970, &qword_101398A18);
      (v474)(v465, v460);
      sub_10000B3A8(v456, &unk_1016C1120, &qword_1013C49D0);
      v96 = v470;
    }

    sub_10000B3A8(v96, &qword_10169C970, &qword_101398A18);
    v101 = *(v0 + 1552) + 1;
    if (v101 != *(v0 + 1544))
    {
      *(v0 + 1552) = v101;
      v300 = *(v0 + 1536);
      if (v101 >= *(v300 + 16))
      {
LABEL_334:
        __break(1u);
        goto LABEL_335;
      }

      v301 = *(v0 + 1480);
      v302 = v301 >> 62;
      v303 = v300 + 24 * v101;
      v304 = *(v303 + 32);
      *(v0 + 1560) = v304;
      v92 = *(v303 + 40);
      *(v0 + 1568) = v92;
      v305 = *(v303 + 48);
      *(v0 + 1580) = *(v303 + 52);
      *(v0 + 1576) = v305;
      if ((v301 >> 62) > 1)
      {
        if (v302 != 2)
        {
          v93 = 0;
          v91 = 0;
          v307 = 0;
          v306 = 0;
          goto LABEL_240;
        }

        v321 = *(v0 + 1472);
        v91 = *(v321 + 16);
        v93 = *(v321 + 24);
      }

      else
      {
        if (!v302)
        {
          v91 = 0;
          v306 = 0;
          v93 = BYTE6(v301);
          v307 = BYTE6(v301);
          goto LABEL_240;
        }

        v321 = *(v0 + 1472);
        v93 = v321 >> 32;
        v91 = v321;
      }

      sub_10002E98C(v321, v301);
      if (v93 < v91)
      {
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
        goto LABEL_337;
      }

      v301 = *(v0 + 1480);
      v332 = *(v0 + 1472);
      if (v301 >> 62 == 2)
      {
        v306 = *(v332 + 16);
        v307 = *(v332 + 24);
      }

      else
      {
        v307 = v332 >> 32;
        v306 = v332;
      }

LABEL_240:
      if (v307 < v93 || v93 < v306)
      {
        goto LABEL_336;
      }

      if (__OFSUB__(v93, v91))
      {
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
        goto LABEL_346;
      }

      if ((v93 - v91) >= 0x39)
      {
        v93 = v91 + 57;
        if (__OFADD__(v91, 57))
        {
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

        v334 = v301 >> 62;
        if ((v301 >> 62) > 1)
        {
          if (v334 == 2)
          {
            v338 = *(v0 + 1472);
            v335 = *(v338 + 16);
            v336 = *(v338 + 24);
          }

          else
          {
            v336 = 0;
            v335 = 0;
          }
        }

        else if (v334)
        {
          v335 = *(v0 + 1472);
          v336 = v335 >> 32;
          v335 = v335;
        }

        else
        {
          v335 = 0;
          v336 = BYTE6(v301);
        }

        if (v336 < v93 || v93 < v335)
        {
          goto LABEL_347;
        }

        v347 = 0;
        if (v334 <= 1)
        {
          if (v334)
          {
            v347 = *(v0 + 1472);
          }

LABEL_269:
          if (v93 < v347)
          {
            goto LABEL_338;
          }

LABEL_270:
          v348 = *(v0 + 1472);
          sub_100017D5C(v304, v92);
          sub_100017D5C(v304, v92);
          v349 = Data._Representation.subscript.getter();
          v351 = v350;
          sub_100006654(v348, v301);
          v352 = v351 >> 62;
          if ((v351 >> 62) > 1)
          {
            if (v352 != 2)
            {
              goto LABEL_284;
            }

            v354 = *(v349 + 16);
            v353 = *(v349 + 24);
            v144 = __OFSUB__(v353, v354);
            v355 = v353 - v354;
            if (!v144)
            {
              if (v355 != 57)
              {
                goto LABEL_284;
              }

              goto LABEL_277;
            }

            __break(1u);
          }

          else
          {
            if (!v352)
            {
              if (BYTE6(v351) != 57)
              {
LABEL_284:
                v368 = v349;
                v369 = v351;
LABEL_285:
                sub_100016590(v368, v369);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_277:
              v93 = v453;
              v356 = sub_100A7A194(v349, v351, 0, 0);
              if (v453)
              {
                v92 = v0 + 560;
                v91 = static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_280:
                  v359 = qword_10177BA00;
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v360 = swift_allocObject();
                  *(v360 + 16) = xmmword_101385D80;
                  *v92 = v93;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v361 = String.init<A>(describing:)();
                  v363 = v362;
                  *(v360 + 56) = &type metadata for String;
                  *(v360 + 64) = sub_100008C00();
                  *(v360 + 32) = v361;
                  *(v360 + 40) = v363;
                  os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v359, "Error deriving advertisementKey: %@", 35, 2, v360);

                  sub_1001BAF88();
                  v364 = swift_allocError();
                  *v365 = 0;
                  swift_willThrow();

LABEL_281:
                  v480 = 0;
                  v481 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v366 = v481;
                  *(v0 + 504) = v480;
                  *(v0 + 512) = v366;
                  v367._countAndFlagsBits = 0xD000000000000021;
                  v367._object = 0x800000010134CB30;
                  String.append(_:)(v367);
                  *(v0 + 552) = v364;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_350:
                swift_once();
                goto LABEL_280;
              }

              v357 = sub_100A7829C(v356, 0, 2);
              *(v0 + 1584) = v357;
              *(v0 + 1592) = v358;
              v371 = v357;
              v372 = v358;
              result = CCECCryptorRelease();
              v373 = v372 >> 62;
              if ((v372 >> 62) > 1)
              {
                if (v373 != 2)
                {
                  v389 = 0;
                  goto LABEL_324;
                }

                v381 = v371[2];
                v380 = v371[3];
                v144 = __OFSUB__(v380, v381);
                v374 = v380 - v381;
                if (v144)
                {
                  __break(1u);
                  v382 = *(v0 + 792);
                  v383 = *(v0 + 712);

                  sub_100016590(v304, v349);

                  sub_100016590(v456, v445);

                  sub_1002DBBF0(v382, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v383, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);

                  v384 = *(v0 + 8);

                  return v384();
                }
              }

              else if (v373)
              {
                LODWORD(v374) = HIDWORD(v371) - v371;
                if (__OFSUB__(HIDWORD(v371), v371))
                {
                  goto LABEL_357;
                }

                v374 = v374;
              }

              else
              {
                v374 = BYTE6(v372);
              }

              if (v374 == 28)
              {
                sub_100016590(v349, v351);
                v385 = swift_task_alloc();
                *(v0 + 1600) = v385;
                *v385 = v0;
                v385[1] = sub_1002BA248;
                v386 = *(v0 + 1528);
                v387 = *(v0 + 1336);
                v388 = *(v0 + 1008);

                return sub_1002D7014(v388, v304, v92, v386, v371, v372, 0, v387);
              }

              if (v373 == 2)
              {
                v391 = v371[2];
                v390 = v371[3];
                v389 = v390 - v391;
                if (!__OFSUB__(v390, v391))
                {
                  goto LABEL_324;
                }

                __break(1u);
              }

              else if (v373 == 1)
              {
                if (__OFSUB__(HIDWORD(v371), v371))
                {
                  goto LABEL_358;
                }

                v389 = HIDWORD(v371) - v371;
                goto LABEL_324;
              }

              v389 = BYTE6(v372);
LABEL_324:
              sub_100018350();
              v364 = swift_allocError();
              *v392 = 28;
              *(v392 + 8) = v389;
              *(v392 + 16) = 0;
              swift_willThrow();
              sub_100016590(v371, v372);
              goto LABEL_281;
            }

            if (!__OFSUB__(HIDWORD(v349), v349))
            {
              if (HIDWORD(v349) - v349 != 57)
              {
                goto LABEL_284;
              }

              goto LABEL_277;
            }
          }

          __break(1u);
LABEL_353:
          swift_once();
          goto LABEL_256;
        }

        if (v334 != 2)
        {
          goto LABEL_269;
        }

        v337 = *(v0 + 1472);
      }

      else
      {
        v333 = v301 >> 62;
        if ((v301 >> 62) <= 1)
        {
          if (!v333)
          {
            v93 = BYTE6(v301);
            goto LABEL_270;
          }

          v346 = *(v0 + 1472);
          v93 = v346 >> 32;
          v347 = v346;
          goto LABEL_269;
        }

        if (v333 != 2)
        {
          v93 = 0;
          goto LABEL_270;
        }

        v337 = *(v0 + 1472);
        v93 = *(v337 + 24);
      }

      v347 = *(v337 + 16);
      goto LABEL_269;
    }

    v102 = *(v0 + 1528);
    v103 = *(v0 + 1480);
    v104 = *(v0 + 1472);
    v93 = *(v0 + 1384);
    v105 = *(v0 + 1344);
    v106 = *(v0 + 1336);
    v471 = v0;
    v107 = *(v0 + 1280);
    v108 = *(v471 + 1272);

    sub_100006654(v104, v103);
    v109 = *(v107 + 8);
    v109(v105, v108);
    sub_1002DBBF0(v93, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v109(v106, v108);
    v0 = v471;
    v110 = *(v471 + 1408) + 1;
    if (v110 == *(v471 + 1400))
    {
      break;
    }

    v93 = &unk_10138F3B0;
    while (1)
    {
      *(v471 + 1408) = v110;
      v309 = *(v471 + 632);
      if (!v309)
      {
        v309 = _swiftEmptyArrayStorage;
      }

      if (v110 >= v309[2])
      {
        break;
      }

      v310 = *(v471 + 1384);
      v311 = *(v471 + 1352);
      v312 = *(v471 + 1280);
      v313 = *(v471 + 1272);
      v314 = *(v471 + 1264);
      sub_1002DB760(v309 + ((*(v471 + 1768) + 32) & ~*(v471 + 1768)) + *(*(v471 + 1360) + 72) * v110, v310, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v315 = *(v310 + 16);
      v316 = *(v310 + 24);
      sub_1000D2A70(v310 + *(v311 + 28), v314, &qword_1016980D0, &unk_10138F3B0);
      v317 = *(v312 + 48);
      *(v471 + 1416) = v317;
      *(v471 + 1424) = (v312 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v317(v314, 1, v313) != 1)
      {
        v323 = *(v471 + 1344);
        v324 = *(v471 + 1280);
        v325 = *(v471 + 1272);
        v326 = *(v471 + 1264);
        v327 = *(v471 + 1256);
        v328 = *(v324 + 32);
        *(v471 + 1432) = v328;
        *(v471 + 1440) = (v324 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v328(v323, v326, v325);
        v329 = *(v324 + 16);
        *(v471 + 1448) = v329;
        *(v471 + 1456) = (v324 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v329(v327, v323, v325);
        (*(v324 + 56))(v327, 0, 1, v325);
        v330 = swift_task_alloc();
        *(v471 + 1464) = v330;
        *v330 = v471;
        v330[1] = sub_1002B09AC;
        v331 = *(v471 + 1256);

        return sub_1002D5B7C(v315, v316, v331);
      }

      sub_10000B3A8(*(v471 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v477, qword_10177A818);
      v318 = Logger.logObject.getter();
      v319 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v318, v319))
      {
        v320 = swift_slowAlloc();
        *v320 = 0;
        _os_log_impl(&_mh_execute_header, v318, v319, "Missing share id in payload.", v320, 2u);
      }

      v308 = *(v471 + 1384);

      sub_1002DBBF0(v308, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v110 = *(v471 + 1408) + 1;
      if (v110 == *(v471 + 1400))
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    swift_once();
  }

LABEL_34:

  if (*(v471 + 624))
  {
    v92 = *(v471 + 624);
  }

  else
  {
    v92 = _swiftEmptyArrayStorage;
  }

  v425 = *(v92 + 16);
  if (!v425)
  {

LABEL_228:

    swift_beginAccess();
    v475 = *(v0 + 520);

    v322 = *(v0 + 8);

    return v322(v475);
  }

  v111 = *(v471 + 1280);
  v394 = (v471 + 600);
  v112 = *(v471 + 1024);
  v91 = *(v471 + 1016);
  v113 = *(v471 + 848);
  v395 = *(v471 + 808);
  v444 = *(v471 + 800);
  v432 = *(v471 + 792);
  v467 = *(v471 + 776);
  v430 = *(v471 + 744);
  v114 = *(v471 + 728);
  v428 = v92 + 32;
  v415 = *(v471 + 712);
  v450 = (v114 + 8);
  loga = (v114 + 104);
  v442 = *(v471 + 704);
  v402 = (*(v471 + 928) + 56);
  v418 = (v113 + 16);
  v419 = *(v471 + 752);
  v401 = *(v471 + 664);
  v400 = (v113 + 56);
  v417 = (v113 + 8);
  v399 = (v111 + 16);
  v397 = (v112 + 48);
  v398 = (v112 + 56);
  v427 = *(*(v471 + 640) + 16);
  v426 = (v111 + 8);
  v448 = enum case for HashAlgorithm.sha256(_:);

  v115 = 0;
  v396 = xmmword_101385D80;
  v116 = v453;
  v416 = v92;
  v431 = v91;
  while (2)
  {
    if (v115 >= *(v92 + 16))
    {
      goto LABEL_339;
    }

    v429 = v115;
    v117 = (v428 + 24 * v115);
    v119 = *v117;
    v118 = v117[1];
    v445 = v118;
    v457 = *v117;
    v447 = v117[2];
    if (!v427)
    {
      sub_100017D5C(v119, v118);

LABEL_149:
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v477, qword_10177A818);
      sub_100017D5C(v457, v445);

      v91 = v445;
      v169 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      sub_100016590(v457, v445);

      if (os_log_type_enabled(v169, v93))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v480 = v171;
        *v170 = 141558275;
        *(v170 + 4) = 1752392040;
        *(v170 + 12) = 2081;
        *(v0 + 488) = v457;
        *(v0 + 496) = v445;
        sub_10025DB08();
        v172 = RawRepresentable<>.hexString.getter();
        v91 = v173;
        v174 = sub_1000136BC(v172, v173, &v480);

        *(v170 + 14) = v174;
        _os_log_impl(&_mh_execute_header, v169, v93, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v170, 0x16u);
        sub_100007BAC(v171);
      }

      sub_100016590(v457, v445);

      goto LABEL_154;
    }

    v91 = *(v0 + 640) + ((*(v419 + 80) + 32) & ~*(v419 + 80));
    sub_100017D5C(v119, v118);
    if (v119)
    {
      v120 = 0;
    }

    else
    {
      v120 = v118 == 0xC000000000000000;
    }

    v121 = !v120;
    v437 = v121;
    v461 = v118 >> 62;
    v433 = BYTE6(v118);
    v453 = *(v419 + 72);
    v122 = __OFSUB__(HIDWORD(v119), v119);
    v423 = v122;
    v420 = (HIDWORD(v119) - v119);

    v123 = v427;
LABEL_54:
    v125 = *(v0 + 776);
    sub_1002DB760(v91, v125, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v126 = *v125;
    v127 = *(v467 + 8);
    v92 = v127 >> 62;
    if ((v127 >> 62) > 1)
    {
      if (v92 == 2)
      {
        v93 = *(v126 + 16);
        v129 = *(v126 + 24);
        sub_100017D5C(v126, *(v467 + 8));
        v128 = *(v126 + 16);
        v130 = *(v126 + 24);
      }

      else
      {
        v93 = 0;
        v129 = 0;
        v130 = 0;
        v128 = 0;
      }
    }

    else if (v92)
    {
      v93 = v126;
      v129 = v126 >> 32;
      sub_100017D5C(v126, *(v467 + 8));
      v130 = v126 >> 32;
      v128 = v126;
    }

    else
    {
      v93 = 0;
      v128 = 0;
      v129 = BYTE6(v127);
      v130 = BYTE6(v127);
    }

    if (v130 < v93 || v93 < v128)
    {
      goto LABEL_326;
    }

    if (v92 > 1)
    {
      if (v92 == 2)
      {
        v131 = *(v126 + 16);
        v132 = *(v126 + 24);
      }

      else
      {
        v132 = 0;
        v131 = 0;
      }
    }

    else if (v92)
    {
      v131 = v126;
      v132 = v126 >> 32;
    }

    else
    {
      v131 = 0;
      v132 = BYTE6(v127);
    }

    if (v132 < v129 || v129 < v131)
    {
      goto LABEL_327;
    }

    if (__OFSUB__(v129, v93))
    {
      goto LABEL_328;
    }

    if ((v129 - v93) >= 0x39)
    {
      v133 = v93 + 57;
      if (!__OFADD__(v93, 57))
      {
        if (v92 > 1)
        {
          if (v92 == 2)
          {
            v134 = *(v126 + 16);
            v135 = *(v126 + 24);
          }

          else
          {
            v135 = 0;
            v134 = 0;
          }
        }

        else if (v92)
        {
          v134 = v126;
          v135 = v126 >> 32;
        }

        else
        {
          v134 = 0;
          v135 = BYTE6(v127);
        }

        if (v135 < v133 || v133 < v134)
        {
          goto LABEL_332;
        }

        v136 = 0;
        if (v92 <= 1)
        {
          if (v92)
          {
            goto LABEL_93;
          }

          goto LABEL_96;
        }

        if (v92 == 3)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
      goto LABEL_334;
    }

    if (v92 > 1)
    {
      if (v92 != 2)
      {
        goto LABEL_97;
      }

      v133 = *(v126 + 24);
LABEL_95:
      v136 = *(v126 + 16);
      goto LABEL_96;
    }

    if (!v92)
    {
      goto LABEL_97;
    }

    v133 = v126 >> 32;
LABEL_93:
    v136 = v126;
LABEL_96:
    if (v133 < v136)
    {
      goto LABEL_329;
    }

LABEL_97:
    v474 = v123;
    v137 = Data._Representation.subscript.getter();
    v139 = v138;
    sub_100016590(v126, v127);
    v140 = v139 >> 62;
    if ((v139 >> 62) > 1)
    {
      if (v140 != 2)
      {
        goto LABEL_287;
      }

      v143 = *(v137 + 16);
      v142 = *(v137 + 24);
      v144 = __OFSUB__(v142, v143);
      v141 = v142 - v143;
      if (v144)
      {
        goto LABEL_340;
      }
    }

    else if (v140)
    {
      LODWORD(v141) = HIDWORD(v137) - v137;
      if (__OFSUB__(HIDWORD(v137), v137))
      {
        goto LABEL_341;
      }

      v141 = v141;
    }

    else
    {
      v141 = BYTE6(v139);
    }

    if (v141 != 57)
    {
LABEL_287:
      v368 = v137;
      v369 = v139;
      goto LABEL_285;
    }

    v93 = v116;
    v145 = sub_100A7A194(v137, v139, 0, 0);
    if (!v116)
    {
      v146 = sub_100A7829C(v145, 0, 2);
      v92 = v147;
      result = CCECCryptorRelease();
      v148 = v92 >> 62;
      if ((v92 >> 62) > 1)
      {
        if (v148 == 2)
        {
          v151 = *(v146 + 16);
          v150 = *(v146 + 24);
          v144 = __OFSUB__(v150, v151);
          v149 = v150 - v151;
          if (v144)
          {
            goto LABEL_343;
          }

          goto LABEL_117;
        }

        v370 = 0;
LABEL_300:
        sub_100018350();
        v344 = swift_allocError();
        *v377 = 28;
        *(v377 + 8) = v370;
        *(v377 + 16) = 0;
        swift_willThrow();
        sub_100016590(v146, v92);
        goto LABEL_301;
      }

      if (v148)
      {
        LODWORD(v149) = HIDWORD(v146) - v146;
        if (__OFSUB__(HIDWORD(v146), v146))
        {
          goto LABEL_342;
        }

        v149 = v149;
      }

      else
      {
        v149 = BYTE6(v92);
      }

LABEL_117:
      if (v149 == 28)
      {
        v152 = *(v0 + 736);
        v153 = *(v0 + 720);
        sub_100016590(v137, v139);
        (loga->isa)(v152, v448, v153);
        v154 = Data.hash(algorithm:)();
        v156 = v155;
        sub_100016590(v146, v92);
        (*v450)(v152, v153);
        v157 = v156 >> 62;
        if (v156 >> 62 == 3)
        {
          if (v154)
          {
            v158 = 0;
          }

          else
          {
            v158 = v156 == 0xC000000000000000;
          }

          v159 = v461;
          v161 = !v158 || v461 < 3;
          if (((v161 | v437) & 1) == 0)
          {
            v175 = 0;
            v176 = 0xC000000000000000;
            goto LABEL_158;
          }

          v162 = 0;
          if (v461 > 1)
          {
LABEL_142:
            if (v159 != 2)
            {
              if (!v162)
              {
                goto LABEL_156;
              }

LABEL_52:
              sub_100016590(v154, v156);
              v116 = 0;
              v124 = v474;
              goto LABEL_53;
            }

            v167 = *(v457 + 16);
            v166 = *(v457 + 24);
            v144 = __OFSUB__(v166, v167);
            v165 = (v166 - v167);
            if (v144)
            {
              goto LABEL_344;
            }

            goto LABEL_144;
          }
        }

        else
        {
          v159 = v461;
          if (v157 == 2)
          {
            v164 = *(v154 + 16);
            v163 = *(v154 + 24);
            v144 = __OFSUB__(v163, v164);
            v162 = v163 - v164;
            if (v144)
            {
              goto LABEL_349;
            }

            if (v461 > 1)
            {
              goto LABEL_142;
            }
          }

          else if (v157 == 1)
          {
            LODWORD(v162) = HIDWORD(v154) - v154;
            if (__OFSUB__(HIDWORD(v154), v154))
            {
              goto LABEL_348;
            }

            v162 = v162;
            if (v461 > 1)
            {
              goto LABEL_142;
            }
          }

          else
          {
            v162 = BYTE6(v156);
            if (v461 > 1)
            {
              goto LABEL_142;
            }
          }
        }

        v165 = v433;
        if (v159)
        {
          v165 = v420;
          if (v423)
          {
            goto LABEL_345;
          }
        }

LABEL_144:
        if (v162 != v165)
        {
          goto LABEL_52;
        }

        if (v162 < 1)
        {
LABEL_156:
          v175 = v154;
          v176 = v156;
LABEL_158:
          sub_100016590(v175, v176);
          v116 = 0;
LABEL_159:
          v177 = *(v0 + 792);
          v92 = *(v0 + 784);
          v93 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey;
          sub_1002DB7C8(*(v0 + 776), v92, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v92, v177, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v91 = v447;
          v178 = *(v447 + 16);
          if (v178)
          {
            v474 = (v447 + ((*(v442 + 80) + 32) & ~*(v442 + 80)));

            v179 = 0;
            v93 = 0;
            v462 = v178;
            while (v179 < *(v447 + 16))
            {
              sub_1002DB760(&v474[*(v442 + 72) * v179], *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v454 = v179;
              v180 = sub_100496ABC();
              v181 = **(v0 + 712);
              v182 = *(v415 + 8);
              v183 = **(v0 + 792);
              v184 = *(v432 + 8);
              sub_100017D5C(v183, v184);
              sub_10002EA98(57, v183, v184, &v480);
              sub_100496F68(v480, v481, &v478);
              v185 = v479;
              if (v479 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v434 = *(v0 + 792);
              v186 = v478;
              v187 = PublicKey.advertisement.getter(v478, v479);
              v189 = v188;
              result = sub_100006654(v186, v185);
              v190 = v182 >> 62;
              v438 = *(v430 + 20);
              if ((v182 >> 62) > 1)
              {
                if (v190 == 2)
                {
                  v193 = *(v181 + 16);
                  v192 = *(v181 + 24);
                  v191 = v192 - v193;
                  if (__OFSUB__(v192, v193))
                  {
                    goto LABEL_355;
                  }
                }

                else
                {
                  v191 = 0;
                }
              }

              else if (v190)
              {
                if (__OFSUB__(HIDWORD(v181), v181))
                {
                  __break(1u);
LABEL_355:
                  __break(1u);
                  goto LABEL_356;
                }

                v191 = HIDWORD(v181) - v181;
              }

              else
              {
                v191 = BYTE6(v182);
              }

              sub_100A2A240(3);
              v195 = v194;
              v196 = v180;
              sub_100017D5C(v181, v182);
              sub_100017D5C(v187, v189);
              if (v191 >= v195)
              {
                v197 = (v471 + 672);
                sub_100A2AA58(v196, v181, v182, v187, v189, *(v471 + 672));
              }

              else
              {
                v197 = (v471 + 680);
                sub_100A2B118(v196, v181, v182, v187, v189, *(v471 + 680));
              }

              v408 = v187;
              v198 = *v197;
              v421 = *(v0 + 1016);
              v424 = v196;
              v412 = *(v0 + 1000);
              v413 = *(v0 + 1272);
              v199 = *(v0 + 976);
              v403 = *(v0 + 968);
              v200 = *(v0 + 920);
              v201 = *(v0 + 856);
              v202 = *(v0 + 840);
              v203 = *(v0 + 832);
              v204 = *(v0 + 696);
              v205 = *(v0 + 688);
              v206 = *(v0 + 656);
              sub_1002DB7C8(v198, v205, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v205, v204, type metadata accessor for BeaconPayloadv1);
              v207 = v199;
              v405 = v199;
              (*v402)(v199, 1, 1, v200);
              v410 = *(v204 + v401[10]);
              v208 = *v418;
              (*v418)(v201, v204 + v401[5], v202);
              v209 = *(v204 + v401[7]);
              v210 = *(v204 + v401[8]);
              v211 = *(v204 + v401[9]);
              (*v400)(v206, 1, 1, v202);
              sub_1000D2A70(v207, v403, &unk_1016C1120, &qword_1013C49D0);
              v393 = v208;
              v208(&v203[v444[5]], v201, v202);
              sub_1000D2A70(v206, &v203[v444[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v403, &v203[v444[11]], &unk_1016C1120, &qword_1013C49D0);
              UUID.init()();
              sub_100016590(v408, v189);
              sub_10000B3A8(v403, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v206, &unk_101696900, &unk_10138B1E0);
              v212 = *v417;
              (*v417)(v201, v202);
              sub_10000B3A8(v405, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v204, type metadata accessor for BeaconPayloadv1);
              *v203 = v410;
              *&v203[v444[6]] = v209;
              *&v203[v444[7]] = v210;
              *&v203[v444[8]] = v211;
              v203[v444[9]] = 15;
              *&v203[v444[13]] = 256;
              v213 = *(v431 + 48);
              (*v399)(v412, v434 + v438, v413);
              sub_1002DB7C8(v203, v412 + v213, type metadata accessor for RawSearchResult);
              (*v398)(v412, 0, 1, v421);
              if ((*v397)(v412, 1, v421) == 1)
              {
                v214 = *(v0 + 1000);

                sub_10000B3A8(v214, &qword_10169C968, &qword_101398A10);
                v215 = v462;
                v216 = v454;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v217 = *(v0 + 792);
                v218 = *(v0 + 760);
                sub_1000076D4(v477, qword_10177A818);
                sub_1002DB760(v217, v218, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v92 = Logger.logObject.getter();
                v219 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v92, v219))
                {
                  v220 = *(v0 + 760);
                  v221 = swift_slowAlloc();
                  v222 = swift_slowAlloc();
                  v480 = v222;
                  *v221 = 141558275;
                  *(v221 + 4) = 1752392040;
                  *(v221 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v223 = dispatch thunk of CustomStringConvertible.description.getter();
                  v225 = v224;
                  sub_1002DBBF0(v220, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v91 = sub_1000136BC(v223, v225, &v480);

                  *(v221 + 14) = v91;
                  _os_log_impl(&_mh_execute_header, v92, v219, "Could not create search result for beacon: %{private,mask.hash}s.", v221, 0x16u);
                  sub_100007BAC(v222);

                  v215 = v462;
                }

                else
                {
                  v91 = *(v0 + 760);

                  sub_1002DBBF0(v91, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v435 = v212;
                v226 = *(v0 + 1088);
                v227 = *(v0 + 1080);
                sub_1000D2AD8(*(v0 + 1000), v226, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v226, v227, &qword_10169C970, &qword_101398A18);
                v228 = *(v431 + 48);
                swift_beginAccess();
                sub_1005CAD18(v227, *(v0 + 520));
                v230 = *(v0 + 1272);
                if (v229)
                {
                  v231 = v229;
                  v232 = *(v0 + 1088);
                  v233 = *(v0 + 1080);
                  v234 = *(v0 + 1072);
                  swift_endAccess();
                  sub_1002DBBF0(v227 + v228, type metadata accessor for RawSearchResult);
                  v439 = *v426;
                  (*v426)(v233, v230);
                  sub_1000D2A70(v232, v234, &qword_10169C970, &qword_101398A18);
                  v235 = (v234 + *(v431 + 48));
                  Hasher.init(_seed:)();
                  sub_100D15128(&v480);
                  v236 = Hasher._finalize()();
                  v237 = -1 << *(v231 + 32);
                  v238 = v236 & ~v237;
                  if ((*(v231 + 56 + ((v238 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v238))
                  {
                    v239 = ~v237;
                    v240 = *v235;
                    v241 = *(v395 + 72);
                    do
                    {
                      v242 = *(v0 + 816);
                      sub_1002DB760(*(v231 + 48) + v238 * v241, v242, type metadata accessor for RawSearchResult);
                      v243 = *(v0 + 816);
                      if (*v242 == v240 && (v244 = static Date.== infix(_:_:)(), v243 = *(v0 + 816), (v244 & 1) != 0) && *(v243 + v444[6]) == *&v235[v444[6]] && *(v243 + v444[7]) == *&v235[v444[7]] && *(v243 + v444[8]) == *&v235[v444[8]])
                      {
                        v245 = *(v0 + 816);
                        v246 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v245, type metadata accessor for RawSearchResult);
                        if (v246)
                        {
                          goto LABEL_196;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v243, type metadata accessor for RawSearchResult);
                      }

                      v238 = (v238 + 1) & v239;
                    }

                    while (((*(v231 + 56 + ((v238 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v238) & 1) != 0);
                  }

                  v247 = *(v0 + 832);
                  v248 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v235, v247, type metadata accessor for RawSearchResult);
                  v480 = v231;
                  sub_100DFE348(v247, v238, v248);
                  v231 = v480;
LABEL_196:
                  sub_1002DBBF0(v235, type metadata accessor for RawSearchResult);
                  v249 = *(v0 + 1128);
                  v250 = *(v0 + 1088);
                  v439(*(v0 + 1072), *(v0 + 1272));
                  sub_1000D2A70(v250, v249, &qword_10169C970, &qword_101398A18);
                  v251 = *(v431 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v231, v249);
                }

                else
                {
                  v252 = *(v0 + 1128);
                  v440 = v252;
                  v253 = *(v0 + 1088);
                  v254 = *(v0 + 1080);
                  v255 = *(v0 + 1064);
                  swift_endAccess();
                  sub_1002DBBF0(v227 + v228, type metadata accessor for RawSearchResult);
                  v256 = *v426;
                  (*v426)(v254, v230);
                  sub_1000D2A70(v253, v252, &qword_10169C970, &qword_101398A18);
                  v251 = *(v431 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v257 = (*(v395 + 80) + 32) & ~*(v395 + 80);
                  v258 = swift_allocObject();
                  *(v258 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v253, v255, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v255 + *(v431 + 48), v258 + v257, type metadata accessor for RawSearchResult);
                  v256(v255, v230);
                  v259 = sub_10112A090(v258);
                  swift_setDeallocating();
                  v260 = v258 + v257;
                  v0 = v471;
                  sub_1002DBBF0(v260, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v261 = swift_isUniquelyReferenced_nonNull_native();
                  v480 = *(v471 + 520);
                  v262 = v440;
                  sub_100FFC200(v259, v440, v261);
                  v439 = v256;
                  v256(v262, v230);
                  *(v471 + 520) = v480;
                }

                swift_endAccess();
                sub_1002DBBF0(*(v0 + 1128) + v251, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v263 = *(v0 + 1088);
                v264 = *(v0 + 1056);
                v265 = *(v0 + 1048);
                v266 = *(v0 + 1040);
                v267 = *(v0 + 792);
                v268 = *(v0 + 768);
                sub_1000076D4(v477, qword_10177A818);
                sub_1002DB760(v267, v268, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v263, v264, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v263, v265, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v263, v266, &qword_10169C970, &qword_101398A18);
                v269 = Logger.logObject.getter();
                v270 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v269, v270))
                {
                  v414 = v270;
                  v422 = v269;
                  v271 = *(v0 + 1272);
                  v272 = *(v0 + 1128);
                  v273 = *(v0 + 1056);
                  v411 = *(v0 + 1040);
                  v407 = *(v0 + 1048);
                  v409 = *(v0 + 1032);
                  v404 = *(v0 + 840);
                  v406 = *(v0 + 856);
                  v274 = *(v0 + 768);
                  v275 = swift_slowAlloc();
                  v480 = swift_slowAlloc();
                  *v275 = 141559043;
                  *(v275 + 4) = 1752392040;
                  *(v275 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v276 = dispatch thunk of CustomStringConvertible.description.getter();
                  v278 = v277;
                  sub_1002DBBF0(v274, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v279 = sub_1000136BC(v276, v278, &v480);

                  *(v275 + 14) = v279;
                  *(v275 + 22) = 2082;
                  sub_1000D2A70(v273, v272, &qword_10169C970, &qword_101398A18);
                  v280 = v272 + *(v431 + 48);
                  v393(v406, v280 + v444[5], v404);
                  sub_1002DBBF0(v280, type metadata accessor for RawSearchResult);
                  v439(v272, v271);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v281 = dispatch thunk of CustomStringConvertible.description.getter();
                  v283 = v282;
                  v435(v406, v404);
                  sub_10000B3A8(v273, &qword_10169C970, &qword_101398A18);
                  v284 = sub_1000136BC(v281, v283, &v480);

                  *(v275 + 24) = v284;
                  *(v275 + 32) = 2082;
                  sub_1000D2A70(v407, v272, &qword_10169C970, &qword_101398A18);
                  v285 = v272 + *(v431 + 48);
                  LOBYTE(v284) = *(v285 + v444[9]);
                  sub_1002DBBF0(v285, type metadata accessor for RawSearchResult);
                  v439(v272, v271);
                  v286 = sub_100013454(v284);
                  v288 = v287;
                  sub_10000B3A8(v407, &qword_10169C970, &qword_101398A18);
                  v289 = sub_1000136BC(v286, v288, &v480);

                  *(v275 + 34) = v289;
                  *(v275 + 42) = 2048;
                  sub_1000D2A70(v411, v409, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v290 = *(v0 + 520);
                  if (*(v290 + 16) && (v291 = sub_1000210EC(*(v0 + 1032)), (v292 & 1) != 0))
                  {
                    v293 = *(*(v290 + 56) + 8 * v291);
                    swift_endAccess();
                    v294 = *(v293 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v294 = 0;
                  }

                  v215 = v462;
                  v297 = *(v0 + 1272);
                  v91 = *(v0 + 1088);
                  v298 = *(v0 + 1040);
                  v299 = *(v0 + 1032);
                  sub_1002DBBF0(v299 + *(v431 + 48), type metadata accessor for RawSearchResult);
                  v439(v299, v297);
                  v92 = &qword_10169C970;
                  sub_10000B3A8(v298, &qword_10169C970, &qword_101398A18);
                  *(v275 + 44) = v294;
                  _os_log_impl(&_mh_execute_header, v422, v414, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v275, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v91, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v91 = *(v0 + 1088);
                  v92 = *(v0 + 1056);
                  v295 = *(v0 + 1048);
                  v296 = *(v0 + 768);
                  sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v295, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v92, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v296, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v91, &qword_10169C970, &qword_101398A18);
                  v215 = v462;
                }

                v216 = v454;
              }

              v179 = v216 + 1;
              sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v93 = 0;
              if (v179 == v215)
              {

                sub_100016590(v457, v445);

                v116 = 0;
                goto LABEL_210;
              }
            }

            goto LABEL_333;
          }

          sub_100016590(v457, v445);

LABEL_210:
          sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_154:
          v92 = v416;
          v115 = v429 + 1;
          if (v429 + 1 == v425)
          {
            goto LABEL_228;
          }

          continue;
        }

        sub_100017D5C(v457, v445);
        sub_100017D5C(v457, v445);
        sub_100017D5C(v154, v156);
        v168 = sub_100F0B1BC(v154, v156, v457, v445);
        v116 = 0;
        sub_100016590(v154, v156);
        sub_100016590(v154, v156);
        sub_100016590(v457, v445);
        v124 = v474;
        if (v168)
        {
          goto LABEL_159;
        }

LABEL_53:
        sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v91 += v453;
        v123 = v124 - 1;
        if (!v123)
        {
          goto LABEL_149;
        }

        goto LABEL_54;
      }

      if (v148 == 2)
      {
        v376 = *(v146 + 16);
        v375 = *(v146 + 24);
        v370 = v375 - v376;
        if (!__OFSUB__(v375, v376))
        {
          goto LABEL_300;
        }

        __break(1u);
      }

      else if (v148 == 1)
      {
        if (!__OFSUB__(HIDWORD(v146), v146))
        {
          v370 = HIDWORD(v146) - v146;
          goto LABEL_300;
        }

LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
        return result;
      }

      v370 = BYTE6(v92);
      goto LABEL_300;
    }

    break;
  }

  v91 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_353;
  }

LABEL_256:
  v339 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v340 = swift_allocObject();
  *(v340 + 16) = v396;
  *v394 = v93;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v341 = String.init<A>(describing:)();
  v343 = v342;
  *(v340 + 56) = &type metadata for String;
  *(v340 + 64) = sub_100008C00();
  *(v340 + 32) = v341;
  *(v340 + 40) = v343;
  os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v339, "Error deriving advertisementKey: %@", 35, 2, v340);

  sub_1001BAF88();
  v344 = swift_allocError();
  *v345 = 0;
  swift_willThrow();

LABEL_301:
  v480 = 0;
  v481 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v378 = v481;
  *(v0 + 472) = v480;
  *(v0 + 480) = v378;
  v379._countAndFlagsBits = 0xD000000000000021;
  v379._object = 0x800000010134CB30;
  String.append(_:)(v379);
  *(v0 + 584) = v344;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002CD898()
{
  v2 = *v1;
  *(*v1 + 1760) = v0;

  if (v0)
  {
    v3 = v2[117];
    v4 = v2[108];
    v5 = v2[106];
    v6 = v2[105];
    v7 = v2[81];
    (*(v5 + 8))(v4, v6);
    sub_1002DBBF0(v3, type metadata accessor for BeaconKeyManager.IndexInformation);
    v8 = sub_1002D1DAC;
  }

  else
  {
    v9 = v2[160];
    v10 = v2[159];
    v11 = v2[143];
    v12 = v2[117];
    v13 = v2[108];
    v14 = v2[106];
    v15 = v2[105];
    v7 = v2[81];
    (*(v14 + 8))(v13, v15);
    sub_1002DBBF0(v12, type metadata accessor for BeaconKeyManager.IndexInformation);
    (*(v9 + 8))(v11, v10);
    v8 = sub_1002CDA60;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002CDA60()
{
  v453 = v0;
  v1 = *(v0 + 960);
  sub_100007BAC((v0 + 96));
  sub_100007BAC((v0 + 176));
  sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v1, type metadata accessor for BeaconKeyManager.IndexInformation);
  v425 = *(v0 + 1760);
  v2 = *(v0 + 1336);
  swift_beginAccess();
  sub_1005CAD18(v2, *(v0 + 520));
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 1152);
    v6 = *(v0 + 1136);
    v7 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v5, v6, &qword_10169C970, &qword_101398A18);
    v8 = (v6 + *(v7 + 48));
    Hasher.init(_seed:)();
    sub_100D15128(&v451);
    v9 = Hasher._finalize()();
    v10 = -1 << *(v4 + 32);
    v11 = v9 & ~v10;
    if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      v13 = *v8;
      v14 = *(*(v0 + 808) + 72);
      do
      {
        v15 = *(v0 + 824);
        sub_1002DB760(*(v4 + 48) + v11 * v14, v15, type metadata accessor for RawSearchResult);
        v16 = *(v0 + 824);
        if (*v15 == v13 && (v17 = static Date.== infix(_:_:)(), v16 = *(v0 + 824), (v17 & 1) != 0) && (v18 = *(v0 + 800), *(v16 + v18[6]) == *&v8[v18[6]]) && *(v16 + v18[7]) == *&v8[v18[7]] && *(v16 + v18[8]) == *&v8[v18[8]])
        {
          v19 = *(v0 + 824);
          v20 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v19, type metadata accessor for RawSearchResult);
          if (v20)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_1002DBBF0(v16, type metadata accessor for RawSearchResult);
        }

        v11 = (v11 + 1) & v12;
      }

      while (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    v21 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v8, v21, type metadata accessor for RawSearchResult);
    v451 = v4;
    sub_100DFE348(v21, v11, isUniquelyReferenced_nonNull_native);
    v4 = v451;
LABEL_14:
    sub_1002DBBF0(v8, type metadata accessor for RawSearchResult);
    v23 = *(v0 + 1448);
    v24 = *(v0 + 1336);
    v25 = *(v0 + 1328);
    v26 = *(v0 + 1272);
    v445 = *(*(v0 + 1280) + 8);
    (v445)(*(v0 + 1136), v26);
    v23(v25, v24, v26);
    swift_beginAccess();
    v27 = v4;
    v28 = v25;
  }

  else
  {
    v29 = *(v0 + 1448);
    v30 = *(v0 + 1336);
    v31 = *(v0 + 1328);
    v32 = *(v0 + 1280);
    v33 = *(v0 + 1272);
    v34 = *(v0 + 1152);
    v35 = *(v0 + 1128);
    v446 = *(v0 + 1016);
    v36 = *(v0 + 808);
    swift_endAccess();
    v29(v31, v30, v33);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_101385D80;
    sub_1000D2A70(v34, v35, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v35 + *(v446 + 48), v38 + v37, type metadata accessor for RawSearchResult);
    v445 = *(v32 + 8);
    (v445)(v35, v33);
    v39 = sub_10112A090(v38);
    swift_setDeallocating();
    sub_1002DBBF0(v38 + v37, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v27 = v39;
    v28 = v31;
  }

  sub_1001DE1B0(v27, v28);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_322;
  }

  while (1)
  {
    v40 = *(v0 + 1448);
    v41 = *(v0 + 1336);
    v42 = *(v0 + 1304);
    v43 = *(v0 + 1272);
    v44 = *(v0 + 1152);
    v45 = *(v0 + 1120);
    v46 = *(v0 + 1112);
    v442 = *(v0 + 1104);
    v448 = type metadata accessor for Logger();
    sub_1000076D4(v448, qword_10177A818);
    v40(v42, v41, v43);
    sub_1000D2A70(v44, v45, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v44, v46, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v44, v442, &qword_10169C970, &qword_101398A18);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v427 = v48;
      v49 = *(v0 + 1304);
      v50 = *(v0 + 1272);
      v51 = *(v0 + 1128);
      v429 = v47;
      v431 = *(v0 + 1120);
      v424 = *(v0 + 1104);
      v420 = *(v0 + 1112);
      v422 = *(v0 + 1096);
      v435 = *(v0 + 1016);
      v52 = *(v0 + 848);
      v412 = *(v0 + 840);
      v416 = *(v0 + 856);
      v437 = *(v0 + 800);
      v53 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v53 = 141559043;
      *(v53 + 4) = 1752392040;
      *(v53 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (v445)(v49, v50);
      v57 = sub_1000136BC(v54, v56, (v0 + 528));

      *(v53 + 14) = v57;
      *(v53 + 22) = 2082;
      sub_1000D2A70(v431, v51, &qword_10169C970, &qword_101398A18);
      v58 = v51 + *(v435 + 48);
      (*(v52 + 16))(v416, v58 + *(v437 + 20), v412);
      sub_1002DBBF0(v58, type metadata accessor for RawSearchResult);
      (v445)(v51, v50);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v52 + 8))(v416, v412);
      sub_10000B3A8(v431, &qword_10169C970, &qword_101398A18);
      v62 = sub_1000136BC(v59, v61, (v0 + 528));

      *(v53 + 24) = v62;
      *(v53 + 32) = 2082;
      sub_1000D2A70(v420, v51, &qword_10169C970, &qword_101398A18);
      v63 = v51 + *(v435 + 48);
      LOBYTE(v62) = *(v63 + *(v437 + 36));
      sub_1002DBBF0(v63, type metadata accessor for RawSearchResult);
      (v445)(v51, v50);
      v64 = sub_100013454(v62);
      v66 = v65;
      sub_10000B3A8(v420, &qword_10169C970, &qword_101398A18);
      v67 = sub_1000136BC(v64, v66, (v0 + 528));

      *(v53 + 34) = v67;
      *(v53 + 42) = 2048;
      sub_1000D2A70(v424, v422, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v68 = *(v0 + 520);
      if (*(v68 + 16) && (v69 = sub_1000210EC(*(v0 + 1096)), (v70 & 1) != 0))
      {
        v71 = *(*(v68 + 56) + 8 * v69);
        swift_endAccess();
        v72 = *(v71 + 16);
      }

      else
      {
        swift_endAccess();
        v72 = 0;
      }

      v74 = *(v0 + 1568);
      v79 = *(v0 + 1560);
      v80 = *(v0 + 1272);
      v439 = *(v0 + 1152);
      v81 = *(v0 + 1104);
      v82 = *(v0 + 1096);
      v75 = *(v0 + 992);
      sub_1002DBBF0(v82 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      (v445)(v82, v80);
      sub_10000B3A8(v81, &qword_10169C970, &qword_101398A18);
      *(v53 + 44) = v72;
      v73 = v429;
      _os_log_impl(&_mh_execute_header, v429, v427, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v53, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v79, v74);
      sub_10000B3A8(v75, &unk_1016C1120, &qword_1013C49D0);
      v78 = v439;
    }

    else
    {
      v73 = *(v0 + 1632);
      v74 = *(v0 + 1568);
      v75 = *(v0 + 1560);
      v435 = *(v0 + 1272);
      v438 = *(v0 + 1304);
      v443 = *(v0 + 1152);
      v76 = *(v0 + 1120);
      v77 = *(v0 + 1112);
      v432 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v75, v74);
      sub_10000B3A8(v77, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v76, &qword_10169C970, &qword_101398A18);
      (v445)(v438, v435);
      sub_10000B3A8(v432, &unk_1016C1120, &qword_1013C49D0);
      v78 = v443;
    }

    sub_10000B3A8(v78, &qword_10169C970, &qword_101398A18);
    v83 = *(v0 + 1552) + 1;
    if (v83 != *(v0 + 1544))
    {
      *(v0 + 1552) = v83;
      v279 = *(v0 + 1536);
      if (v83 >= *(v279 + 16))
      {
LABEL_326:
        __break(1u);
        goto LABEL_327;
      }

      v280 = *(v0 + 1480);
      v281 = v280 >> 62;
      v282 = v279 + 24 * v83;
      v283 = *(v282 + 32);
      *(v0 + 1560) = v283;
      v74 = *(v282 + 40);
      *(v0 + 1568) = v74;
      v284 = *(v282 + 48);
      *(v0 + 1580) = *(v282 + 52);
      *(v0 + 1576) = v284;
      if ((v280 >> 62) > 1)
      {
        if (v281 != 2)
        {
          v75 = 0;
          v73 = 0;
          v286 = 0;
          v285 = 0;
          goto LABEL_232;
        }

        v300 = *(v0 + 1472);
        v73 = *(v300 + 16);
        v75 = *(v300 + 24);
      }

      else
      {
        if (!v281)
        {
          v73 = 0;
          v285 = 0;
          v75 = BYTE6(v280);
          v286 = BYTE6(v280);
          goto LABEL_232;
        }

        v300 = *(v0 + 1472);
        v75 = v300 >> 32;
        v73 = v300;
      }

      sub_10002E98C(v300, v280);
      if (v75 < v73)
      {
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
        goto LABEL_329;
      }

      v280 = *(v0 + 1480);
      v311 = *(v0 + 1472);
      if (v280 >> 62 == 2)
      {
        v285 = *(v311 + 16);
        v286 = *(v311 + 24);
      }

      else
      {
        v286 = v311 >> 32;
        v285 = v311;
      }

LABEL_232:
      if (v286 < v75 || v75 < v285)
      {
        goto LABEL_328;
      }

      if (__OFSUB__(v75, v73))
      {
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
        goto LABEL_338;
      }

      if ((v75 - v73) >= 0x39)
      {
        v75 = v73 + 57;
        if (__OFADD__(v73, 57))
        {
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
          goto LABEL_342;
        }

        v313 = v280 >> 62;
        if ((v280 >> 62) > 1)
        {
          if (v313 == 2)
          {
            v317 = *(v0 + 1472);
            v314 = *(v317 + 16);
            v315 = *(v317 + 24);
          }

          else
          {
            v315 = 0;
            v314 = 0;
          }
        }

        else if (v313)
        {
          v314 = *(v0 + 1472);
          v315 = v314 >> 32;
          v314 = v314;
        }

        else
        {
          v314 = 0;
          v315 = BYTE6(v280);
        }

        if (v315 < v75 || v75 < v314)
        {
          goto LABEL_339;
        }

        v326 = 0;
        if (v313 <= 1)
        {
          if (v313)
          {
            v326 = *(v0 + 1472);
          }

LABEL_261:
          if (v75 < v326)
          {
            goto LABEL_330;
          }

LABEL_262:
          v327 = *(v0 + 1472);
          sub_100017D5C(v283, v74);
          sub_100017D5C(v283, v74);
          v328 = Data._Representation.subscript.getter();
          v330 = v329;
          sub_100006654(v327, v280);
          v331 = v330 >> 62;
          if ((v330 >> 62) > 1)
          {
            if (v331 != 2)
            {
              goto LABEL_276;
            }

            v333 = *(v328 + 16);
            v332 = *(v328 + 24);
            v125 = __OFSUB__(v332, v333);
            v334 = v332 - v333;
            if (!v125)
            {
              if (v334 != 57)
              {
                goto LABEL_276;
              }

              goto LABEL_269;
            }

            __break(1u);
          }

          else
          {
            if (!v331)
            {
              if (BYTE6(v330) != 57)
              {
LABEL_276:
                v347 = v328;
                v348 = v330;
LABEL_277:
                sub_100016590(v347, v348);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_269:
              v75 = v425;
              v335 = sub_100A7A194(v328, v330, 0, 0);
              if (v425)
              {
                v74 = v0 + 560;
                v73 = static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_272:
                  v338 = qword_10177BA00;
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v339 = swift_allocObject();
                  *(v339 + 16) = xmmword_101385D80;
                  *v74 = v75;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v340 = String.init<A>(describing:)();
                  v342 = v341;
                  *(v339 + 56) = &type metadata for String;
                  *(v339 + 64) = sub_100008C00();
                  *(v339 + 32) = v340;
                  *(v339 + 40) = v342;
                  os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v338, "Error deriving advertisementKey: %@", 35, 2, v339);

                  sub_1001BAF88();
                  v343 = swift_allocError();
                  *v344 = 0;
                  swift_willThrow();

LABEL_273:
                  v451 = 0;
                  v452 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v345 = v452;
                  *(v0 + 504) = v451;
                  *(v0 + 512) = v345;
                  v346._countAndFlagsBits = 0xD000000000000021;
                  v346._object = 0x800000010134CB30;
                  String.append(_:)(v346);
                  *(v0 + 552) = v343;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_342:
                swift_once();
                goto LABEL_272;
              }

              v336 = sub_100A7829C(v335, 0, 2);
              *(v0 + 1584) = v336;
              *(v0 + 1592) = v337;
              v350 = v336;
              v351 = v337;
              result = CCECCryptorRelease();
              v352 = v351 >> 62;
              if ((v351 >> 62) > 1)
              {
                if (v352 != 2)
                {
                  v368 = 0;
                  goto LABEL_316;
                }

                v360 = v350[2];
                v359 = v350[3];
                v125 = __OFSUB__(v359, v360);
                v353 = v359 - v360;
                if (v125)
                {
                  __break(1u);
                  v361 = *(v0 + 792);
                  v362 = *(v0 + 712);

                  sub_100016590(v283, v328);

                  sub_100016590(v435, v424);

                  sub_1002DBBF0(v361, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v362, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);

                  v363 = *(v0 + 8);

                  return v363();
                }
              }

              else if (v352)
              {
                LODWORD(v353) = HIDWORD(v350) - v350;
                if (__OFSUB__(HIDWORD(v350), v350))
                {
                  goto LABEL_349;
                }

                v353 = v353;
              }

              else
              {
                v353 = BYTE6(v351);
              }

              if (v353 == 28)
              {
                sub_100016590(v328, v330);
                v364 = swift_task_alloc();
                *(v0 + 1600) = v364;
                *v364 = v0;
                v364[1] = sub_1002BA248;
                v365 = *(v0 + 1528);
                v366 = *(v0 + 1336);
                v367 = *(v0 + 1008);

                return sub_1002D7014(v367, v283, v74, v365, v350, v351, 0, v366);
              }

              if (v352 == 2)
              {
                v370 = v350[2];
                v369 = v350[3];
                v368 = v369 - v370;
                if (!__OFSUB__(v369, v370))
                {
                  goto LABEL_316;
                }

                __break(1u);
              }

              else if (v352 == 1)
              {
                if (__OFSUB__(HIDWORD(v350), v350))
                {
                  goto LABEL_350;
                }

                v368 = HIDWORD(v350) - v350;
                goto LABEL_316;
              }

              v368 = BYTE6(v351);
LABEL_316:
              sub_100018350();
              v343 = swift_allocError();
              *v371 = 28;
              *(v371 + 8) = v368;
              *(v371 + 16) = 0;
              swift_willThrow();
              sub_100016590(v350, v351);
              goto LABEL_273;
            }

            if (!__OFSUB__(HIDWORD(v328), v328))
            {
              if (HIDWORD(v328) - v328 != 57)
              {
                goto LABEL_276;
              }

              goto LABEL_269;
            }
          }

          __break(1u);
LABEL_345:
          swift_once();
          goto LABEL_248;
        }

        if (v313 != 2)
        {
          goto LABEL_261;
        }

        v316 = *(v0 + 1472);
      }

      else
      {
        v312 = v280 >> 62;
        if ((v280 >> 62) <= 1)
        {
          if (!v312)
          {
            v75 = BYTE6(v280);
            goto LABEL_262;
          }

          v325 = *(v0 + 1472);
          v75 = v325 >> 32;
          v326 = v325;
          goto LABEL_261;
        }

        if (v312 != 2)
        {
          v75 = 0;
          goto LABEL_262;
        }

        v316 = *(v0 + 1472);
        v75 = *(v316 + 24);
      }

      v326 = *(v316 + 16);
      goto LABEL_261;
    }

    v84 = *(v0 + 1480);
    v85 = *(v0 + 1472);
    v75 = *(v0 + 1384);
    v86 = *(v0 + 1344);
    v87 = *(v0 + 1336);
    v88 = *(v0 + 1280);
    v89 = *(v0 + 1272);

    sub_100006654(v85, v84);
    v90 = *(v88 + 8);
    v90(v86, v89);
    sub_1002DBBF0(v75, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v90(v87, v89);
    v91 = *(v0 + 1408) + 1;
    if (v91 == *(v0 + 1400))
    {
      break;
    }

    v75 = &unk_10138F3B0;
    while (1)
    {
      *(v0 + 1408) = v91;
      v288 = *(v0 + 632);
      if (!v288)
      {
        v288 = _swiftEmptyArrayStorage;
      }

      if (v91 >= v288[2])
      {
        break;
      }

      v289 = *(v0 + 1384);
      v290 = *(v0 + 1352);
      v291 = *(v0 + 1280);
      v292 = *(v0 + 1272);
      v293 = *(v0 + 1264);
      sub_1002DB760(v288 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v91, v289, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v294 = *(v289 + 16);
      v295 = *(v289 + 24);
      sub_1000D2A70(v289 + *(v290 + 28), v293, &qword_1016980D0, &unk_10138F3B0);
      v296 = *(v291 + 48);
      *(v0 + 1416) = v296;
      *(v0 + 1424) = (v291 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v296(v293, 1, v292) != 1)
      {
        v302 = *(v0 + 1344);
        v303 = *(v0 + 1280);
        v304 = *(v0 + 1272);
        v305 = *(v0 + 1264);
        v306 = *(v0 + 1256);
        v307 = *(v303 + 32);
        *(v0 + 1432) = v307;
        *(v0 + 1440) = (v303 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v307(v302, v305, v304);
        v308 = *(v303 + 16);
        *(v0 + 1448) = v308;
        *(v0 + 1456) = (v303 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v308(v306, v302, v304);
        (*(v303 + 56))(v306, 0, 1, v304);
        v309 = swift_task_alloc();
        *(v0 + 1464) = v309;
        *v309 = v0;
        v309[1] = sub_1002B09AC;
        v310 = *(v0 + 1256);

        return sub_1002D5B7C(v294, v295, v310);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v448, qword_10177A818);
      v297 = Logger.logObject.getter();
      v298 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v297, v298))
      {
        v299 = swift_slowAlloc();
        *v299 = 0;
        _os_log_impl(&_mh_execute_header, v297, v298, "Missing share id in payload.", v299, 2u);
      }

      v287 = *(v0 + 1384);

      sub_1002DBBF0(v287, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v91 = *(v0 + 1408) + 1;
      if (v91 == *(v0 + 1400))
      {
        goto LABEL_26;
      }
    }

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
    swift_once();
  }

LABEL_26:

  if (*(v0 + 624))
  {
    v74 = *(v0 + 624);
  }

  else
  {
    v74 = _swiftEmptyArrayStorage;
  }

  v405 = *(v74 + 16);
  if (!v405)
  {

LABEL_220:

    swift_beginAccess();
    v447 = *(v0 + 520);

    v301 = *(v0 + 8);

    return v301(v447);
  }

  v92 = *(v0 + 1280);
  v373 = (v0 + 600);
  v93 = *(v0 + 1024);
  v73 = *(v0 + 1016);
  v94 = *(v0 + 848);
  v374 = *(v0 + 808);
  v423 = *(v0 + 800);
  v411 = *(v0 + 792);
  v444 = *(v0 + 776);
  v398 = *(v0 + 752);
  v409 = *(v0 + 744);
  v95 = *(v0 + 728);
  v407 = v74 + 32;
  v394 = *(v0 + 712);
  v430 = (v95 + 104);
  v428 = (v95 + 8);
  v421 = *(v0 + 704);
  v381 = (*(v0 + 928) + 56);
  v397 = (v94 + 16);
  v380 = *(v0 + 664);
  v379 = (v94 + 56);
  v396 = (v94 + 8);
  v378 = (v92 + 16);
  v376 = (v93 + 48);
  v377 = (v93 + 56);
  v406 = *(*(v0 + 640) + 16);
  v399 = (v92 + 8);
  v426 = enum case for HashAlgorithm.sha256(_:);

  v96 = 0;
  v375 = xmmword_101385D80;
  v97 = v425;
  v395 = v74;
  v410 = v73;
  while (2)
  {
    if (v96 >= *(v74 + 16))
    {
      goto LABEL_331;
    }

    v408 = v96;
    v98 = (v407 + 24 * v96);
    v100 = *v98;
    v99 = v98[1];
    v424 = v99;
    v436 = *v98;
    v425 = v98[2];
    if (!v406)
    {
      sub_100017D5C(v100, v99);

LABEL_141:
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v448, qword_10177A818);
      sub_100017D5C(v436, v424);

      v73 = v424;
      v151 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      sub_100016590(v436, v424);

      if (os_log_type_enabled(v151, v75))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v451 = v153;
        *v152 = 141558275;
        *(v152 + 4) = 1752392040;
        *(v152 + 12) = 2081;
        *(v0 + 488) = v436;
        *(v0 + 496) = v424;
        sub_10025DB08();
        v154 = RawRepresentable<>.hexString.getter();
        v73 = v155;
        v156 = sub_1000136BC(v154, v155, &v451);

        *(v152 + 14) = v156;
        _os_log_impl(&_mh_execute_header, v151, v75, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v152, 0x16u);
        sub_100007BAC(v153);
      }

      sub_100016590(v436, v424);

      goto LABEL_146;
    }

    v73 = *(v0 + 640) + ((*(v398 + 80) + 32) & ~*(v398 + 80));
    sub_100017D5C(v100, v99);
    if (v100)
    {
      v101 = 0;
    }

    else
    {
      v101 = v99 == 0xC000000000000000;
    }

    v102 = !v101;
    v417 = v102;
    v440 = v99 >> 62;
    v413 = BYTE6(v99);
    v433 = *(v398 + 72);
    v103 = __OFSUB__(HIDWORD(v100), v100);
    v403 = v103;
    log = (HIDWORD(v100) - v100);

    v104 = v406;
LABEL_46:
    v106 = *(v0 + 776);
    sub_1002DB760(v73, v106, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v107 = *v106;
    v108 = *(v444 + 8);
    v74 = v108 >> 62;
    if ((v108 >> 62) > 1)
    {
      if (v74 == 2)
      {
        v75 = *(v107 + 16);
        v110 = *(v107 + 24);
        sub_100017D5C(v107, *(v444 + 8));
        v109 = *(v107 + 16);
        v111 = *(v107 + 24);
      }

      else
      {
        v75 = 0;
        v110 = 0;
        v111 = 0;
        v109 = 0;
      }
    }

    else if (v74)
    {
      v75 = v107;
      v110 = v107 >> 32;
      sub_100017D5C(v107, *(v444 + 8));
      v111 = v107 >> 32;
      v109 = v107;
    }

    else
    {
      v75 = 0;
      v109 = 0;
      v110 = BYTE6(v108);
      v111 = BYTE6(v108);
    }

    if (v111 < v75 || v75 < v109)
    {
      goto LABEL_318;
    }

    if (v74 > 1)
    {
      if (v74 == 2)
      {
        v112 = *(v107 + 16);
        v113 = *(v107 + 24);
      }

      else
      {
        v113 = 0;
        v112 = 0;
      }
    }

    else if (v74)
    {
      v112 = v107;
      v113 = v107 >> 32;
    }

    else
    {
      v112 = 0;
      v113 = BYTE6(v108);
    }

    if (v113 < v110 || v110 < v112)
    {
      goto LABEL_319;
    }

    if (__OFSUB__(v110, v75))
    {
      goto LABEL_320;
    }

    if ((v110 - v75) >= 0x39)
    {
      v114 = v75 + 57;
      if (!__OFADD__(v75, 57))
      {
        if (v74 > 1)
        {
          if (v74 == 2)
          {
            v115 = *(v107 + 16);
            v116 = *(v107 + 24);
          }

          else
          {
            v116 = 0;
            v115 = 0;
          }
        }

        else if (v74)
        {
          v115 = v107;
          v116 = v107 >> 32;
        }

        else
        {
          v115 = 0;
          v116 = BYTE6(v108);
        }

        if (v116 < v114 || v114 < v115)
        {
          goto LABEL_324;
        }

        v117 = 0;
        if (v74 <= 1)
        {
          if (v74)
          {
            goto LABEL_85;
          }

          goto LABEL_88;
        }

        if (v74 == 3)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      }

      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
      goto LABEL_326;
    }

    if (v74 > 1)
    {
      if (v74 != 2)
      {
        goto LABEL_89;
      }

      v114 = *(v107 + 24);
LABEL_87:
      v117 = *(v107 + 16);
      goto LABEL_88;
    }

    if (!v74)
    {
      goto LABEL_89;
    }

    v114 = v107 >> 32;
LABEL_85:
    v117 = v107;
LABEL_88:
    if (v114 < v117)
    {
      goto LABEL_321;
    }

LABEL_89:
    v445 = v104;
    v118 = Data._Representation.subscript.getter();
    v120 = v119;
    sub_100016590(v107, v108);
    v121 = v120 >> 62;
    if ((v120 >> 62) > 1)
    {
      if (v121 != 2)
      {
        goto LABEL_279;
      }

      v124 = *(v118 + 16);
      v123 = *(v118 + 24);
      v125 = __OFSUB__(v123, v124);
      v122 = v123 - v124;
      if (v125)
      {
        goto LABEL_332;
      }
    }

    else if (v121)
    {
      LODWORD(v122) = HIDWORD(v118) - v118;
      if (__OFSUB__(HIDWORD(v118), v118))
      {
        goto LABEL_333;
      }

      v122 = v122;
    }

    else
    {
      v122 = BYTE6(v120);
    }

    if (v122 != 57)
    {
LABEL_279:
      v347 = v118;
      v348 = v120;
      goto LABEL_277;
    }

    v75 = v97;
    v126 = sub_100A7A194(v118, v120, 0, 0);
    if (!v97)
    {
      v127 = sub_100A7829C(v126, 0, 2);
      v74 = v128;
      result = CCECCryptorRelease();
      v130 = v74 >> 62;
      if ((v74 >> 62) > 1)
      {
        if (v130 == 2)
        {
          v133 = *(v127 + 16);
          v132 = *(v127 + 24);
          v125 = __OFSUB__(v132, v133);
          v131 = v132 - v133;
          if (v125)
          {
            goto LABEL_335;
          }

          goto LABEL_109;
        }

        v349 = 0;
LABEL_292:
        sub_100018350();
        v323 = swift_allocError();
        *v356 = 28;
        *(v356 + 8) = v349;
        *(v356 + 16) = 0;
        swift_willThrow();
        sub_100016590(v127, v74);
        goto LABEL_293;
      }

      if (v130)
      {
        LODWORD(v131) = HIDWORD(v127) - v127;
        if (__OFSUB__(HIDWORD(v127), v127))
        {
          goto LABEL_334;
        }

        v131 = v131;
      }

      else
      {
        v131 = BYTE6(v74);
      }

LABEL_109:
      if (v131 == 28)
      {
        v134 = *(v0 + 736);
        v135 = *(v0 + 720);
        sub_100016590(v118, v120);
        (*v430)(v134, v426, v135);
        v136 = Data.hash(algorithm:)();
        v138 = v137;
        sub_100016590(v127, v74);
        (*v428)(v134, v135);
        v139 = v138 >> 62;
        if (v138 >> 62 == 3)
        {
          if (v136)
          {
            v140 = 0;
          }

          else
          {
            v140 = v138 == 0xC000000000000000;
          }

          v141 = v440;
          v143 = !v140 || v440 < 3;
          if (((v143 | v417) & 1) == 0)
          {
            v157 = 0;
            v158 = 0xC000000000000000;
            goto LABEL_150;
          }

          v144 = 0;
          if (v440 > 1)
          {
LABEL_134:
            if (v141 != 2)
            {
              if (!v144)
              {
                goto LABEL_148;
              }

LABEL_44:
              sub_100016590(v136, v138);
              v97 = 0;
              v105 = v445;
              goto LABEL_45;
            }

            v149 = *(v436 + 16);
            v148 = *(v436 + 24);
            v125 = __OFSUB__(v148, v149);
            v147 = (v148 - v149);
            if (v125)
            {
              goto LABEL_336;
            }

            goto LABEL_136;
          }
        }

        else
        {
          v141 = v440;
          if (v139 == 2)
          {
            v146 = *(v136 + 16);
            v145 = *(v136 + 24);
            v125 = __OFSUB__(v145, v146);
            v144 = v145 - v146;
            if (v125)
            {
              goto LABEL_341;
            }

            if (v440 > 1)
            {
              goto LABEL_134;
            }
          }

          else if (v139 == 1)
          {
            LODWORD(v144) = HIDWORD(v136) - v136;
            if (__OFSUB__(HIDWORD(v136), v136))
            {
              goto LABEL_340;
            }

            v144 = v144;
            if (v440 > 1)
            {
              goto LABEL_134;
            }
          }

          else
          {
            v144 = BYTE6(v138);
            if (v440 > 1)
            {
              goto LABEL_134;
            }
          }
        }

        v147 = v413;
        if (v141)
        {
          v147 = log;
          if (v403)
          {
            goto LABEL_337;
          }
        }

LABEL_136:
        if (v144 != v147)
        {
          goto LABEL_44;
        }

        if (v144 < 1)
        {
LABEL_148:
          v157 = v136;
          v158 = v138;
LABEL_150:
          sub_100016590(v157, v158);
          v97 = 0;
LABEL_151:
          v159 = *(v0 + 792);
          v74 = *(v0 + 784);
          v75 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey;
          sub_1002DB7C8(*(v0 + 776), v74, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v74, v159, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v73 = v425;
          v160 = *(v425 + 16);
          if (v160)
          {
            v445 = (v425 + ((*(v421 + 80) + 32) & ~*(v421 + 80)));

            v161 = 0;
            v75 = 0;
            v441 = v160;
            while (v161 < *(v425 + 16))
            {
              sub_1002DB760(&v445[*(v421 + 72) * v161], *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v434 = v161;
              v162 = sub_100496ABC();
              v163 = **(v0 + 712);
              v164 = *(v394 + 8);
              v165 = **(v0 + 792);
              v166 = *(v411 + 8);
              sub_100017D5C(v165, v166);
              sub_10002EA98(57, v165, v166, &v451);
              sub_100496F68(v451, v452, &v449);
              v167 = v450;
              if (v450 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v414 = *(v0 + 792);
              v168 = v449;
              v169 = PublicKey.advertisement.getter(v449, v450);
              v171 = v170;
              result = sub_100006654(v168, v167);
              v172 = v164 >> 62;
              v418 = *(v409 + 20);
              if ((v164 >> 62) > 1)
              {
                if (v172 == 2)
                {
                  v175 = *(v163 + 16);
                  v174 = *(v163 + 24);
                  v173 = v174 - v175;
                  if (__OFSUB__(v174, v175))
                  {
                    goto LABEL_347;
                  }
                }

                else
                {
                  v173 = 0;
                }
              }

              else if (v172)
              {
                if (__OFSUB__(HIDWORD(v163), v163))
                {
                  __break(1u);
LABEL_347:
                  __break(1u);
                  goto LABEL_348;
                }

                v173 = HIDWORD(v163) - v163;
              }

              else
              {
                v173 = BYTE6(v164);
              }

              sub_100A2A240(3);
              v177 = v176;
              v178 = v162;
              sub_100017D5C(v163, v164);
              sub_100017D5C(v169, v171);
              if (v173 >= v177)
              {
                v179 = (v0 + 672);
                sub_100A2AA58(v178, v163, v164, v169, v171, *(v0 + 672));
              }

              else
              {
                v179 = (v0 + 680);
                sub_100A2B118(v178, v163, v164, v169, v171, *(v0 + 680));
              }

              v387 = v169;
              v180 = *v179;
              logb = *(v0 + 1016);
              v404 = v178;
              v391 = *(v0 + 1000);
              v392 = *(v0 + 1272);
              v181 = *(v0 + 976);
              v382 = *(v0 + 968);
              v182 = *(v0 + 920);
              v183 = *(v0 + 856);
              v184 = *(v0 + 840);
              v185 = *(v0 + 832);
              v186 = *(v0 + 696);
              v187 = *(v0 + 688);
              v188 = *(v0 + 656);
              sub_1002DB7C8(v180, v187, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v187, v186, type metadata accessor for BeaconPayloadv1);
              v189 = v181;
              v384 = v181;
              (*v381)(v181, 1, 1, v182);
              v389 = *(v186 + v380[10]);
              v190 = *v397;
              (*v397)(v183, v186 + v380[5], v184);
              v191 = *(v186 + v380[7]);
              v192 = *(v186 + v380[8]);
              v193 = *(v186 + v380[9]);
              (*v379)(v188, 1, 1, v184);
              sub_1000D2A70(v189, v382, &unk_1016C1120, &qword_1013C49D0);
              v372 = v190;
              v190(&v185[v423[5]], v183, v184);
              sub_1000D2A70(v188, &v185[v423[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v382, &v185[v423[11]], &unk_1016C1120, &qword_1013C49D0);
              UUID.init()();
              sub_100016590(v387, v171);
              sub_10000B3A8(v382, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v188, &unk_101696900, &unk_10138B1E0);
              v194 = *v396;
              (*v396)(v183, v184);
              sub_10000B3A8(v384, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v186, type metadata accessor for BeaconPayloadv1);
              *v185 = v389;
              *&v185[v423[6]] = v191;
              *&v185[v423[7]] = v192;
              *&v185[v423[8]] = v193;
              v185[v423[9]] = 15;
              *&v185[v423[13]] = 256;
              v195 = *(v410 + 48);
              (*v378)(v391, v414 + v418, v392);
              sub_1002DB7C8(v185, v391 + v195, type metadata accessor for RawSearchResult);
              (*v377)(v391, 0, 1, logb);
              if ((*v376)(v391, 1, logb) == 1)
              {
                v196 = *(v0 + 1000);

                sub_10000B3A8(v196, &qword_10169C968, &qword_101398A10);
                v197 = v441;
                v198 = v434;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v199 = *(v0 + 792);
                v200 = *(v0 + 760);
                sub_1000076D4(v448, qword_10177A818);
                sub_1002DB760(v199, v200, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v74 = Logger.logObject.getter();
                v201 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v74, v201))
                {
                  v202 = *(v0 + 760);
                  v203 = swift_slowAlloc();
                  v204 = swift_slowAlloc();
                  v451 = v204;
                  *v203 = 141558275;
                  *(v203 + 4) = 1752392040;
                  *(v203 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v205 = dispatch thunk of CustomStringConvertible.description.getter();
                  v207 = v206;
                  sub_1002DBBF0(v202, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v73 = sub_1000136BC(v205, v207, &v451);

                  *(v203 + 14) = v73;
                  _os_log_impl(&_mh_execute_header, v74, v201, "Could not create search result for beacon: %{private,mask.hash}s.", v203, 0x16u);
                  sub_100007BAC(v204);

                  v197 = v441;
                }

                else
                {
                  v73 = *(v0 + 760);

                  sub_1002DBBF0(v73, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v415 = v194;
                v208 = *(v0 + 1088);
                v209 = *(v0 + 1080);
                sub_1000D2AD8(*(v0 + 1000), v208, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v208, v209, &qword_10169C970, &qword_101398A18);
                v210 = *(v410 + 48);
                swift_beginAccess();
                sub_1005CAD18(v209, *(v0 + 520));
                v212 = *(v0 + 1272);
                if (v211)
                {
                  v213 = v211;
                  v214 = *(v0 + 1088);
                  v215 = *(v0 + 1080);
                  v216 = *(v0 + 1072);
                  swift_endAccess();
                  sub_1002DBBF0(v209 + v210, type metadata accessor for RawSearchResult);
                  v419 = *v399;
                  (*v399)(v215, v212);
                  sub_1000D2A70(v214, v216, &qword_10169C970, &qword_101398A18);
                  v217 = (v216 + *(v410 + 48));
                  Hasher.init(_seed:)();
                  sub_100D15128(&v451);
                  v218 = Hasher._finalize()();
                  v219 = -1 << *(v213 + 32);
                  v220 = v218 & ~v219;
                  if ((*(v213 + 56 + ((v220 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v220))
                  {
                    v221 = ~v219;
                    v222 = *v217;
                    v223 = *(v374 + 72);
                    do
                    {
                      v224 = *(v0 + 816);
                      sub_1002DB760(*(v213 + 48) + v220 * v223, v224, type metadata accessor for RawSearchResult);
                      v225 = *(v0 + 816);
                      if (*v224 == v222 && (v226 = static Date.== infix(_:_:)(), v225 = *(v0 + 816), (v226 & 1) != 0) && *(v225 + v423[6]) == *&v217[v423[6]] && *(v225 + v423[7]) == *&v217[v423[7]] && *(v225 + v423[8]) == *&v217[v423[8]])
                      {
                        v227 = *(v0 + 816);
                        v228 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v227, type metadata accessor for RawSearchResult);
                        if (v228)
                        {
                          goto LABEL_188;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v225, type metadata accessor for RawSearchResult);
                      }

                      v220 = (v220 + 1) & v221;
                    }

                    while (((*(v213 + 56 + ((v220 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v220) & 1) != 0);
                  }

                  v229 = *(v0 + 832);
                  v230 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v217, v229, type metadata accessor for RawSearchResult);
                  v451 = v213;
                  sub_100DFE348(v229, v220, v230);
                  v213 = v451;
LABEL_188:
                  sub_1002DBBF0(v217, type metadata accessor for RawSearchResult);
                  v231 = *(v0 + 1128);
                  v232 = *(v0 + 1088);
                  v419(*(v0 + 1072), *(v0 + 1272));
                  sub_1000D2A70(v232, v231, &qword_10169C970, &qword_101398A18);
                  v233 = *(v410 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v213, v231);
                }

                else
                {
                  v234 = *(v0 + 1128);
                  v235 = *(v0 + 1088);
                  v236 = *(v0 + 1080);
                  v237 = *(v0 + 1064);
                  swift_endAccess();
                  sub_1002DBBF0(v209 + v210, type metadata accessor for RawSearchResult);
                  v419 = *v399;
                  (*v399)(v236, v212);
                  sub_1000D2A70(v235, v234, &qword_10169C970, &qword_101398A18);
                  v233 = *(v410 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v238 = (*(v374 + 80) + 32) & ~*(v374 + 80);
                  v239 = swift_allocObject();
                  *(v239 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v235, v237, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v237 + *(v410 + 48), v239 + v238, type metadata accessor for RawSearchResult);
                  v419(v237, v212);
                  v240 = sub_10112A090(v239);
                  swift_setDeallocating();
                  sub_1002DBBF0(v239 + v238, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v241 = swift_isUniquelyReferenced_nonNull_native();
                  v451 = *(v0 + 520);
                  sub_100FFC200(v240, v234, v241);
                  v419(v234, v212);
                  *(v0 + 520) = v451;
                }

                swift_endAccess();
                sub_1002DBBF0(*(v0 + 1128) + v233, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v242 = *(v0 + 1088);
                v243 = *(v0 + 1056);
                v244 = *(v0 + 1048);
                v245 = *(v0 + 1040);
                v246 = *(v0 + 792);
                v247 = *(v0 + 768);
                sub_1000076D4(v448, qword_10177A818);
                sub_1002DB760(v246, v247, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v242, v243, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v242, v244, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v242, v245, &qword_10169C970, &qword_101398A18);
                v248 = Logger.logObject.getter();
                v249 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v248, v249))
                {
                  v393 = v249;
                  loga = v248;
                  v250 = *(v0 + 1272);
                  v251 = *(v0 + 1128);
                  v252 = *(v0 + 1056);
                  v390 = *(v0 + 1040);
                  v386 = *(v0 + 1048);
                  v388 = *(v0 + 1032);
                  v383 = *(v0 + 840);
                  v385 = *(v0 + 856);
                  v253 = *(v0 + 768);
                  v254 = swift_slowAlloc();
                  v451 = swift_slowAlloc();
                  *v254 = 141559043;
                  *(v254 + 4) = 1752392040;
                  *(v254 + 12) = 2081;
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v255 = dispatch thunk of CustomStringConvertible.description.getter();
                  v257 = v256;
                  sub_1002DBBF0(v253, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v258 = sub_1000136BC(v255, v257, &v451);

                  *(v254 + 14) = v258;
                  *(v254 + 22) = 2082;
                  sub_1000D2A70(v252, v251, &qword_10169C970, &qword_101398A18);
                  v259 = v251 + *(v410 + 48);
                  v372(v385, v259 + v423[5], v383);
                  sub_1002DBBF0(v259, type metadata accessor for RawSearchResult);
                  v419(v251, v250);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  v260 = dispatch thunk of CustomStringConvertible.description.getter();
                  v262 = v261;
                  v415(v385, v383);
                  sub_10000B3A8(v252, &qword_10169C970, &qword_101398A18);
                  v263 = sub_1000136BC(v260, v262, &v451);

                  *(v254 + 24) = v263;
                  *(v254 + 32) = 2082;
                  sub_1000D2A70(v386, v251, &qword_10169C970, &qword_101398A18);
                  v264 = v251 + *(v410 + 48);
                  LOBYTE(v263) = *(v264 + v423[9]);
                  sub_1002DBBF0(v264, type metadata accessor for RawSearchResult);
                  v419(v251, v250);
                  v265 = sub_100013454(v263);
                  v267 = v266;
                  sub_10000B3A8(v386, &qword_10169C970, &qword_101398A18);
                  v268 = sub_1000136BC(v265, v267, &v451);

                  *(v254 + 34) = v268;
                  *(v254 + 42) = 2048;
                  sub_1000D2A70(v390, v388, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v269 = *(v0 + 520);
                  if (*(v269 + 16) && (v270 = sub_1000210EC(*(v0 + 1032)), (v271 & 1) != 0))
                  {
                    v272 = *(*(v269 + 56) + 8 * v270);
                    swift_endAccess();
                    v273 = *(v272 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v273 = 0;
                  }

                  v197 = v441;
                  v276 = *(v0 + 1272);
                  v73 = *(v0 + 1088);
                  v277 = *(v0 + 1040);
                  v278 = *(v0 + 1032);
                  sub_1002DBBF0(v278 + *(v410 + 48), type metadata accessor for RawSearchResult);
                  v419(v278, v276);
                  v74 = &qword_10169C970;
                  sub_10000B3A8(v277, &qword_10169C970, &qword_101398A18);
                  *(v254 + 44) = v273;
                  _os_log_impl(&_mh_execute_header, loga, v393, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v254, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v73, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v73 = *(v0 + 1088);
                  v74 = *(v0 + 1056);
                  v274 = *(v0 + 1048);
                  v275 = *(v0 + 768);
                  sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v274, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v74, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v275, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v73, &qword_10169C970, &qword_101398A18);
                  v197 = v441;
                }

                v198 = v434;
              }

              v161 = v198 + 1;
              sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v75 = 0;
              if (v161 == v197)
              {

                sub_100016590(v436, v424);

                v97 = 0;
                goto LABEL_202;
              }
            }

            goto LABEL_325;
          }

          sub_100016590(v436, v424);

LABEL_202:
          sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_146:
          v74 = v395;
          v96 = v408 + 1;
          if (v408 + 1 == v405)
          {
            goto LABEL_220;
          }

          continue;
        }

        sub_100017D5C(v436, v424);
        sub_100017D5C(v436, v424);
        sub_100017D5C(v136, v138);
        v150 = sub_100F0B1BC(v136, v138, v436, v424);
        v97 = 0;
        sub_100016590(v136, v138);
        sub_100016590(v136, v138);
        sub_100016590(v436, v424);
        v105 = v445;
        if (v150)
        {
          goto LABEL_151;
        }

LABEL_45:
        sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v73 += v433;
        v104 = v105 - 1;
        if (!v104)
        {
          goto LABEL_141;
        }

        goto LABEL_46;
      }

      if (v130 == 2)
      {
        v355 = *(v127 + 16);
        v354 = *(v127 + 24);
        v349 = v354 - v355;
        if (!__OFSUB__(v354, v355))
        {
          goto LABEL_292;
        }

        __break(1u);
      }

      else if (v130 == 1)
      {
        if (!__OFSUB__(HIDWORD(v127), v127))
        {
          v349 = HIDWORD(v127) - v127;
          goto LABEL_292;
        }

LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
        return result;
      }

      v349 = BYTE6(v74);
      goto LABEL_292;
    }

    break;
  }

  v73 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_345;
  }

LABEL_248:
  v318 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v319 = swift_allocObject();
  *(v319 + 16) = v375;
  *v373 = v75;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v320 = String.init<A>(describing:)();
  v322 = v321;
  *(v319 + 56) = &type metadata for String;
  *(v319 + 64) = sub_100008C00();
  *(v319 + 32) = v320;
  *(v319 + 40) = v322;
  os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v318, "Error deriving advertisementKey: %@", 35, 2, v319);

  sub_1001BAF88();
  v323 = swift_allocError();
  *v324 = 0;
  swift_willThrow();

LABEL_293:
  v451 = 0;
  v452 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v357 = v452;
  *(v0 + 472) = v451;
  *(v0 + 480) = v357;
  v358._countAndFlagsBits = 0xD000000000000021;
  v358._object = 0x800000010134CB30;
  String.append(_:)(v358);
  *(v0 + 584) = v323;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}