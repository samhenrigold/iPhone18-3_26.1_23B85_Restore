uint64_t sub_100175660(uint64_t a1)
{
  v227 = v1;
  __s2 = (v1 + 152);
  v2 = *(v1 + 448);
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v226[0] = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, v226);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get SE : %s", v5, 0xCu);
    sub_1000752F4(v6);
  }

  v202 = (v1 + 272);
  *(v1 + 152) = 4;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  swift_allocError();
  *v10 = 4;
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v226[0] = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_1002FFA0C(v15, v16, v226);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to delete stale TLK : %s", v13, 0xCu);
    sub_1000752F4(v14);
  }

  sub_100180988(32, 0);
  sub_10018C684(v1 + 80);

  v18 = *(v1 + 440) + 1;
  v19 = *(v1 + 408);
  if (v18 != *(v1 + 416))
  {
    if (v18 < *(v19 + 16))
    {
      v26 = 0;
      v27 = *(v1 + 424);
      goto LABEL_12;
    }

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
LABEL_328:
    __break(1u);
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
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
  }

  v20 = *(v1 + 392);
  v21 = *(v1 + 376);
  v22 = *(v1 + 384);

  sub_10006A178(v21, v22);
  v23 = *(v1 + 360) + 1;
  if (v23 == *(v1 + 344))
  {
LABEL_7:
    v24 = *(v1 + 8);

    return v24(1);
  }

  v26 = 0;
  while (1)
  {
    *(v1 + 360) = v23;
    v39 = (*(v1 + 320) + 48 * v23);
    v40 = v39[4];
    v41 = v39[5];
    *(v1 + 368) = v41;
    v42 = v39[6];
    *(v1 + 376) = v42;
    v43 = v39[7];
    *(v1 + 384) = v43;
    v44 = v39[9];
    *(v1 + 392) = v44;

    sub_100069E2C(v42, v43);
    v222 = v44;
    v45 = [v222 currentTLK];
    *(v1 + 400) = v45;
    if (v45)
    {
      break;
    }

    sub_100069E2C(v42, v43);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    sub_10006A178(v42, v43);
    if (!os_log_type_enabled(v46, v47))
    {

LABEL_21:

      sub_10006A178(v42, v43);
      goto LABEL_17;
    }

    v35 = v42;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v226[0] = v37;
    *v36 = 136315138;

    v38 = sub_1002FFA0C(v40, v41, v226);

    *(v36 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v46, v47, "View %s doesn't have a TLK?", v36, 0xCu);
    sub_1000752F4(v37);

    sub_10006A178(v35, v43);

LABEL_17:
    v23 = *(v1 + 360) + 1;
    if (v23 == *(v1 + 344))
    {
      goto LABEL_7;
    }
  }

  v48 = v45;
  v212 = *(*(v1 + 328) + 16);
  if (!v212)
  {
    v209 = _swiftEmptyArrayStorage;
LABEL_301:
    v79 = v209;
    *(v1 + 408) = v209;
    v186 = v209[2];
    *(v1 + 416) = v186;
    if (v186)
    {
      goto LABEL_305;
    }

    goto LABEL_21;
  }

  v49 = 0;
  v209 = _swiftEmptyArrayStorage;
  v221 = v43;
  v210 = v42;
  v201 = v45;
  while (1)
  {
    v216 = v26;
    v215 = v49;
    v53 = *(v1 + 328) + 72 * v49;
    *(v1 + 80) = *(v53 + 32);
    v55 = *(v53 + 64);
    v54 = *(v53 + 80);
    v56 = *(v53 + 48);
    *(v1 + 144) = *(v53 + 96);
    *(v1 + 112) = v55;
    *(v1 + 128) = v54;
    *(v1 + 96) = v56;
    v58 = *(v1 + 80);
    v57 = *(v1 + 88);
    sub_10018C628(v1 + 80, __s2);
    v59 = [v48 tlkUUID];
    v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v220 = v57;
    v63 = v57 >> 62;
    v64 = v62 >> 62;
    if (v57 >> 62 == 3)
    {
      v65 = 0;
      if (!v58 && v57 == 0xC000000000000000 && v62 >> 62 == 3)
      {
        v65 = 0;
        if (!v60 && v62 == 0xC000000000000000)
        {
          sub_10018C684(v1 + 80);
          v50 = 0;
          v51 = 0xC000000000000000;
          goto LABEL_25;
        }
      }
    }

    else if (v63 > 1)
    {
      if (v63 == 2)
      {
        v67 = *(v58 + 16);
        v66 = *(v58 + 24);
        v68 = __OFSUB__(v66, v67);
        v65 = v66 - v67;
        if (v68)
        {
          goto LABEL_326;
        }
      }

      else
      {
        v65 = 0;
      }
    }

    else if (v63)
    {
      LODWORD(v65) = HIDWORD(v58) - v58;
      if (__OFSUB__(HIDWORD(v58), v58))
      {
        goto LABEL_325;
      }

      v65 = v65;
    }

    else
    {
      v65 = BYTE6(v57);
    }

    v219 = v58;
    v225 = v57 >> 62;
    if (v64 <= 1)
    {
      if (!v64)
      {
        if (v65 == BYTE6(v62))
        {
          goto LABEL_56;
        }

        goto LABEL_67;
      }

      if (__OFSUB__(HIDWORD(v60), v60))
      {
        goto LABEL_316;
      }

      if (v65 != HIDWORD(v60) - v60)
      {
        goto LABEL_67;
      }

LABEL_56:
      if (v65 < 1)
      {
        goto LABEL_24;
      }

      if (v63 > 1)
      {
        if (v63 != 2)
        {
          *(v1 + 278) = 0;
          *v202 = 0;
          if (!v64)
          {
            *(v1 + 152) = v60;
            *(v1 + 160) = v62;
            *(v1 + 162) = BYTE2(v62);
            *(v1 + 163) = BYTE3(v62);
            *(v1 + 164) = BYTE4(v62);
            v154 = BYTE6(v62);
            *(v1 + 165) = BYTE5(v62);
            v155 = (v1 + 272);
            v156 = (v1 + 152);
            goto LABEL_263;
          }

          if (v64 == 2)
          {
            v149 = *(v60 + 16);
            v150 = *(v60 + 24);
            v76 = __DataStorage._bytes.getter();
            if (v76)
            {
              v151 = __DataStorage._offset.getter();
              if (__OFSUB__(v149, v151))
              {
                goto LABEL_345;
              }

              v76 += v149 - v151;
            }

            v68 = __OFSUB__(v150, v149);
            v152 = v150 - v149;
            if (v68)
            {
              goto LABEL_338;
            }

            v153 = __DataStorage._length.getter();
            if (!v76)
            {
              goto LABEL_377;
            }
          }

          else
          {
            v152 = (v60 >> 32) - v60;
            if (v60 >> 32 < v60)
            {
              goto LABEL_335;
            }

            v160 = __DataStorage._bytes.getter();
            if (!v160)
            {
              goto LABEL_375;
            }

            v161 = v160;
            v162 = __DataStorage._offset.getter();
            if (__OFSUB__(v60, v162))
            {
              goto LABEL_341;
            }

            v76 = v60 - v162 + v161;
            v153 = __DataStorage._length.getter();
            if (!v76)
            {
              goto LABEL_376;
            }
          }

          if (v153 >= v152)
          {
            v154 = v152;
          }

          else
          {
            v154 = v153;
          }

          v155 = (v1 + 272);
LABEL_262:
          v156 = v76;
LABEL_263:
          v163 = memcmp(v155, v156, v154);
          sub_10006A178(v60, v62);
          v77 = v220;
          if (!v163)
          {
            goto LABEL_291;
          }

          goto LABEL_68;
        }

        v224 = *(v58 + 16);
        v137 = __DataStorage._bytes.getter();
        if (v137)
        {
          v138 = __DataStorage._offset.getter();
          if (__OFSUB__(v224, v138))
          {
            goto LABEL_333;
          }

          v137 += v224 - v138;
        }

        __DataStorage._length.getter();
        if (v64 == 2)
        {
          v164 = *(v60 + 16);
          v165 = *(v60 + 24);
          v139 = __DataStorage._bytes.getter();
          if (v139)
          {
            v166 = __DataStorage._offset.getter();
            if (__OFSUB__(v164, v166))
            {
              goto LABEL_347;
            }

            v139 += v164 - v166;
          }

          v68 = __OFSUB__(v165, v164);
          v167 = v165 - v164;
          if (v68)
          {
            goto LABEL_342;
          }

          v168 = __DataStorage._length.getter();
          if (v168 >= v167)
          {
            v142 = v167;
          }

          else
          {
            v142 = v168;
          }

          v43 = v221;
          if (!v137)
          {
            goto LABEL_368;
          }

          v77 = v220;
          if (!v139)
          {
            goto LABEL_367;
          }

          goto LABEL_286;
        }

        if (v64 == 1)
        {
          if (v60 >> 32 < v60)
          {
            goto LABEL_339;
          }

          v139 = __DataStorage._bytes.getter();
          if (v139)
          {
            v140 = __DataStorage._offset.getter();
            if (__OFSUB__(v60, v140))
            {
              goto LABEL_349;
            }

            v139 += v60 - v140;
          }

          v43 = v221;
          v141 = __DataStorage._length.getter();
          if (v141 >= (v60 >> 32) - v60)
          {
            v142 = (v60 >> 32) - v60;
          }

          else
          {
            v142 = v141;
          }

          if (!v137)
          {
            goto LABEL_366;
          }

          v77 = v220;
          if (!v139)
          {
            goto LABEL_365;
          }

LABEL_286:
          if (v137 != v139)
          {
            v174 = v142;
            v175 = v137;
            v176 = v139;
LABEL_290:
            v177 = memcmp(v175, v176, v174);
            sub_10006A178(v60, v62);
            if (v177)
            {
              goto LABEL_68;
            }

LABEL_291:
            sub_10018C684(v1 + 80);
LABEL_26:
            v26 = v216;
            v42 = v210;
            goto LABEL_27;
          }

LABEL_24:
          sub_10018C684(v1 + 80);
          v50 = v60;
          v51 = v62;
LABEL_25:
          sub_10006A178(v50, v51);
          goto LABEL_26;
        }

        *(v1 + 152) = v60;
        *(v1 + 160) = v62;
        *(v1 + 162) = BYTE2(v62);
        *(v1 + 163) = BYTE3(v62);
        *(v1 + 164) = BYTE4(v62);
        *(v1 + 165) = BYTE5(v62);
        v77 = v220;
        if (!v137)
        {
          goto LABEL_364;
        }
      }

      else
      {
        if (!v63)
        {
          *(v1 + 152) = v58;
          *(v1 + 160) = v57;
          *(v1 + 162) = BYTE2(v57);
          *(v1 + 163) = BYTE3(v57);
          *(v1 + 164) = BYTE4(v57);
          *(v1 + 165) = BYTE5(v57);
          if (!v64)
          {
            *(v1 + 272) = v60;
            *(v1 + 280) = v62;
            *(v1 + 282) = BYTE2(v62);
            *(v1 + 283) = BYTE3(v62);
            *(v1 + 284) = BYTE4(v62);
            v154 = BYTE6(v62);
            *(v1 + 285) = BYTE5(v62);
            v155 = (v1 + 152);
            v156 = (v1 + 272);
            goto LABEL_263;
          }

          if (v64 == 1)
          {
            v72 = (v60 >> 32) - v60;
            if (v60 >> 32 < v60)
            {
              goto LABEL_336;
            }

            v73 = __DataStorage._bytes.getter();
            if (!v73)
            {
              goto LABEL_378;
            }

            v74 = v73;
            v75 = __DataStorage._offset.getter();
            if (__OFSUB__(v60, v75))
            {
              goto LABEL_340;
            }

            v76 = v60 - v75 + v74;
            v34 = __DataStorage._length.getter();
            if (!v76)
            {
              goto LABEL_379;
            }
          }

          else
          {
            v157 = *(v60 + 16);
            v158 = *(v60 + 24);
            v76 = __DataStorage._bytes.getter();
            if (v76)
            {
              v159 = __DataStorage._offset.getter();
              if (__OFSUB__(v157, v159))
              {
                goto LABEL_346;
              }

              v76 += v157 - v159;
            }

            v68 = __OFSUB__(v158, v157);
            v72 = v158 - v157;
            if (v68)
            {
              goto LABEL_337;
            }

            v34 = __DataStorage._length.getter();
            if (!v76)
            {
              goto LABEL_374;
            }
          }

          if (v34 >= v72)
          {
            v154 = v72;
          }

          else
          {
            v154 = v34;
          }

          v155 = (v1 + 152);
          goto LABEL_262;
        }

        if (v58 > v58 >> 32)
        {
          goto LABEL_332;
        }

        v137 = __DataStorage._bytes.getter();
        if (v137)
        {
          v146 = __DataStorage._offset.getter();
          if (__OFSUB__(v58, v146))
          {
            goto LABEL_334;
          }

          v137 += v58 - v146;
        }

        __DataStorage._length.getter();
        if (v64 == 2)
        {
          v169 = *(v60 + 16);
          v170 = *(v60 + 24);
          v139 = __DataStorage._bytes.getter();
          if (v139)
          {
            v171 = __DataStorage._offset.getter();
            if (__OFSUB__(v169, v171))
            {
              goto LABEL_348;
            }

            v139 += v169 - v171;
          }

          v68 = __OFSUB__(v170, v169);
          v172 = v170 - v169;
          if (v68)
          {
            goto LABEL_344;
          }

          v173 = __DataStorage._length.getter();
          if (v173 >= v172)
          {
            v142 = v172;
          }

          else
          {
            v142 = v173;
          }

          v43 = v221;
          if (!v137)
          {
            goto LABEL_373;
          }

          v77 = v220;
          if (!v139)
          {
            goto LABEL_372;
          }

          goto LABEL_286;
        }

        if (v64 == 1)
        {
          if (v60 >> 32 < v60)
          {
            goto LABEL_343;
          }

          v139 = __DataStorage._bytes.getter();
          if (v139)
          {
            v147 = __DataStorage._offset.getter();
            if (__OFSUB__(v60, v147))
            {
              goto LABEL_350;
            }

            v139 += v60 - v147;
          }

          v43 = v221;
          v148 = __DataStorage._length.getter();
          if (v148 >= (v60 >> 32) - v60)
          {
            v142 = (v60 >> 32) - v60;
          }

          else
          {
            v142 = v148;
          }

          if (!v137)
          {
            goto LABEL_371;
          }

          v77 = v220;
          if (!v139)
          {
            goto LABEL_370;
          }

          goto LABEL_286;
        }

        *(v1 + 152) = v60;
        *(v1 + 160) = v62;
        *(v1 + 162) = BYTE2(v62);
        *(v1 + 163) = BYTE3(v62);
        *(v1 + 164) = BYTE4(v62);
        *(v1 + 165) = BYTE5(v62);
        v77 = v220;
        if (!v137)
        {
          goto LABEL_369;
        }
      }

      v174 = BYTE6(v62);
      v175 = v137;
      v176 = (v1 + 152);
      goto LABEL_290;
    }

    if (v64 == 2)
    {
      v70 = *(v60 + 16);
      v69 = *(v60 + 24);
      v68 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v68)
      {
        goto LABEL_315;
      }

      if (v65 == v71)
      {
        goto LABEL_56;
      }
    }

    else if (!v65)
    {
      goto LABEL_24;
    }

LABEL_67:
    sub_10006A178(v60, v62);
    v77 = v57;
LABEL_68:
    v78 = [v222 previousTLKs];
    sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v26 >> 62)
    {
      v79 = _CocoaArrayWrapper.endIndex.getter();
      v80 = v79;
      if (!v79)
      {
LABEL_295:

        v178 = v209;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 288) = v209;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F684(0, v209[2] + 1, 1);
          v178 = *(v1 + 288);
        }

        v26 = v216;
        v42 = v210;
        v48 = v201;
        v52 = v215;
        v181 = v178[2];
        v180 = v178[3];
        if (v181 >= v180 >> 1)
        {
          sub_10019F684((v180 > 1), v181 + 1, 1);
          v52 = v215;
          v178 = *(v1 + 288);
        }

        v178[2] = v181 + 1;
        v209 = v178;
        v182 = &v178[9 * v181];
        *(v182 + 2) = *(v1 + 80);
        v183 = *(v1 + 96);
        v184 = *(v1 + 112);
        v185 = *(v1 + 128);
        *(v182 + 96) = *(v1 + 144);
        *(v182 + 4) = v184;
        *(v182 + 5) = v185;
        *(v182 + 3) = v183;
        goto LABEL_28;
      }
    }

    else
    {
      v80 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v80)
      {
        goto LABEL_295;
      }
    }

    v81 = v58;
    v82 = 0;
    __n = BYTE6(v77);
    v211 = v81;
    v203 = (v81 >> 32) - v81;
    v204 = v81 >> 32;
    v205 = HIDWORD(v81);
    v68 = __OFSUB__(HIDWORD(v81), v81);
    v83 = HIDWORD(v81) - v81;
    v84 = v68;
    v214 = v84;
    v213 = v83;
    v223 = v80;
LABEL_77:
    if ((v26 & 0xC000000000000001) != 0)
    {
      v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v82 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_304;
      }

      v79 = *(v26 + 8 * v82 + 32);
    }

    v85 = v79;
    v86 = (v82 + 1);
    if (__OFADD__(v82, 1))
    {
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      v187 = v79;

      v188 = Logger.logObject.getter();
      v189 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v188, v189))
      {
        v190 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v226[0] = v191;
        *v190 = 136315138;
        v192 = Array.description.getter();
        v194 = sub_1002FFA0C(v192, v193, v226);

        *(v190 + 4) = v194;
        _os_log_impl(&_mh_execute_header, v188, v189, "Removing stale TLKs %s", v190, 0xCu);
        sub_1000752F4(v191);
      }

      v195 = objc_opt_self();
      *(v1 + 424) = v195;
      if (v187[2])
      {
        v27 = v195;
        v18 = 0;
        v19 = *(v1 + 408);
LABEL_12:
        *(v1 + 432) = v26;
        *(v1 + 440) = v18;
        v28 = v19 + 72 * v18;
        *(v1 + 80) = *(v28 + 32);
        v29 = *(v28 + 48);
        v30 = *(v28 + 64);
        v31 = *(v28 + 80);
        *(v1 + 144) = *(v28 + 96);
        *(v1 + 112) = v30;
        *(v1 + 128) = v31;
        *(v1 + 96) = v29;
        sub_10018C628(v1 + 80, __s2);
        v32 = String._bridgeToObjectiveC()();
        *(v1 + 448) = v32;
        *(v1 + 16) = v1;
        *(v1 + 56) = v202;
        *(v1 + 24) = sub_1001738C8;
        v33 = swift_continuation_init();
        *(v1 + 208) = sub_100068FC4(&qword_100503460, &qword_10040B560);
        *(v1 + 152) = _NSConcreteStackBlock;
        *(v1 + 160) = 1107296256;
        *(v1 + 168) = sub_1001861F4;
        *(v1 + 176) = &unk_1004C94F8;
        *(v1 + 184) = v33;
        sub_1003AF710(v27, v32, __s2);
        v34 = v1 + 16;

        return _swift_continuation_await(v34);
      }

      goto LABEL_317;
    }

    v87 = [v79 tlkUUID];
    v88 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v91 = v90 >> 62;
    if (v90 >> 62 == 3)
    {
      v92 = 0;
      v93 = v225;
      if (v225 == 3 && !v88 && v90 == 0xC000000000000000)
      {
        v88 = 0;
        if (v219)
        {
LABEL_215:
          v143 = v216;
          v42 = v210;
          v48 = v201;
        }

        else
        {
          v143 = v216;
          v42 = v210;
          v48 = v201;
          if (v77 == 0xC000000000000000)
          {

            sub_10018C684(v1 + 80);

            v144 = 0;
            v145 = 0xC000000000000000;
LABEL_217:
            sub_10006A178(v144, v145);
            v43 = v221;
            v52 = v215;
            v26 = v143;
            goto LABEL_28;
          }
        }

        sub_10018C684(v1 + 80);

        v144 = v88;
        v145 = v90;
        goto LABEL_217;
      }

LABEL_95:
      if (v93 <= 1)
      {
        goto LABEL_96;
      }

      goto LABEL_89;
    }

    v93 = v225;
    if (v91 > 1)
    {
      if (v91 == 2)
      {
        v98 = *(v88 + 16);
        v97 = *(v88 + 24);
        v68 = __OFSUB__(v97, v98);
        v92 = v97 - v98;
        if (v68)
        {
          goto LABEL_310;
        }

        goto LABEL_95;
      }

      v92 = 0;
      if (v225 <= 1)
      {
        goto LABEL_96;
      }
    }

    else if (v91)
    {
      LODWORD(v92) = HIDWORD(v88) - v88;
      if (__OFSUB__(HIDWORD(v88), v88))
      {
        goto LABEL_311;
      }

      v92 = v92;
      if (v225 <= 1)
      {
LABEL_96:
        v96 = __n;
        if (v93)
        {
          v96 = v213;
          if (v214)
          {
            goto LABEL_309;
          }
        }

        goto LABEL_98;
      }
    }

    else
    {
      v92 = BYTE6(v90);
      if (v225 <= 1)
      {
        goto LABEL_96;
      }
    }

LABEL_89:
    if (v93 != 2)
    {
      if (!v92)
      {
        goto LABEL_215;
      }

LABEL_75:

      v79 = sub_10006A178(v88, v90);
      goto LABEL_76;
    }

    v95 = *(v219 + 16);
    v94 = *(v219 + 24);
    v68 = __OFSUB__(v94, v95);
    v96 = v94 - v95;
    if (v68)
    {
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

LABEL_98:
    if (v92 != v96)
    {
      goto LABEL_75;
    }

    if (v92 < 1)
    {
      goto LABEL_215;
    }

    if (v91 > 1)
    {
      break;
    }

    if (!v91)
    {
      *(v1 + 152) = v88;
      *(v1 + 160) = v90;
      *(v1 + 162) = BYTE2(v90);
      *(v1 + 163) = BYTE3(v90);
      *(v1 + 164) = BYTE4(v90);
      *(v1 + 165) = BYTE5(v90);
      sub_10019F024(__s2, v219, v77, v226);

      v79 = sub_10006A178(v88, v90);
      v77 = v220;
      if (v226[0])
      {
        goto LABEL_242;
      }

      goto LABEL_76;
    }

    if (v88 > v88 >> 32)
    {
      goto LABEL_312;
    }

    v103 = __DataStorage._bytes.getter();
    if (v103)
    {
      v104 = v103;
      v105 = __DataStorage._offset.getter();
      if (__OFSUB__(v88, v105))
      {
        goto LABEL_314;
      }

      __s1a = (v88 - v105 + v104);
    }

    else
    {
      __s1a = 0;
    }

    __DataStorage._length.getter();
    v77 = v220;
    if (v225 != 2)
    {
      if (v225 == 1)
      {
        if (v204 < v211)
        {
          goto LABEL_323;
        }

        v109 = __DataStorage._bytes.getter();
        if (v109)
        {
          v116 = __DataStorage._offset.getter();
          if (__OFSUB__(v211, v116))
          {
            goto LABEL_331;
          }

          v109 += v211 - v116;
        }

        v117 = __DataStorage._length.getter();
        v115 = v203;
        if (v117 < v203)
        {
          v115 = v117;
        }

        v112 = __s1a;
        if (!__s1a)
        {
          goto LABEL_357;
        }

        if (!v109)
        {
          goto LABEL_356;
        }

LABEL_150:
        if (v112 == v109)
        {
          goto LABEL_292;
        }

LABEL_192:
        v111 = v115;
LABEL_193:
        v136 = memcmp(v112, v109, v111);

        v79 = sub_10006A178(v88, v90);
        if (!v136)
        {
          goto LABEL_242;
        }

        goto LABEL_76;
      }

      v121 = __s1a;
      *(v1 + 152) = v219;
      *(v1 + 156) = v205;
      *(v1 + 157) = *(&v219 + 5);
      *(v1 + 159) = HIBYTE(v219);
      *(v1 + 160) = v220;
      *(v1 + 164) = WORD2(v220);
      if (!__s1a)
      {
        goto LABEL_361;
      }

LABEL_165:
      v122 = (v1 + 152);
LABEL_166:
      v127 = memcmp(v121, v122, __n);

      v79 = sub_10006A178(v88, v90);
      if (!v127)
      {
        goto LABEL_242;
      }

      goto LABEL_76;
    }

    v197 = *(v219 + 24);
    v200 = *(v219 + 16);
    v109 = __DataStorage._bytes.getter();
    if (v109)
    {
      v125 = __DataStorage._offset.getter();
      v126 = v200;
      if (__OFSUB__(v200, v125))
      {
        goto LABEL_329;
      }

      v109 += v200 - v125;
    }

    else
    {
      v126 = v200;
    }

    v134 = v197 - v126;
    if (__OFSUB__(v197, v126))
    {
      goto LABEL_324;
    }

    v135 = __DataStorage._length.getter();
    if (v135 >= v134)
    {
      v115 = v134;
    }

    else
    {
      v115 = v135;
    }

    v112 = __s1a;
    if (!__s1a)
    {
      goto LABEL_363;
    }

    if (!v109)
    {
      goto LABEL_362;
    }

LABEL_191:
    v77 = v220;
    if (v112 != v109)
    {
      goto LABEL_192;
    }

LABEL_292:

    sub_10018C684(v1 + 80);
    sub_10006A178(v88, v90);
    v26 = v216;
LABEL_293:
    v42 = v210;
    v43 = v221;
    v48 = v201;
LABEL_27:
    v52 = v215;
LABEL_28:
    v49 = v52 + 1;
    if (v49 == v212)
    {
      goto LABEL_301;
    }
  }

  if (v91 == 2)
  {
    v99 = *(v88 + 16);
    v100 = __DataStorage._bytes.getter();
    if (v100)
    {
      v101 = v100;
      v102 = __DataStorage._offset.getter();
      if (__OFSUB__(v99, v102))
      {
        goto LABEL_313;
      }

      __s1 = (v99 - v102 + v101);
    }

    else
    {
      __s1 = 0;
    }

    __DataStorage._length.getter();
    v77 = v220;
    if (v225 != 2)
    {
      if (v225 == 1)
      {
        if (v204 < v211)
        {
          goto LABEL_320;
        }

        v109 = __DataStorage._bytes.getter();
        if (v109)
        {
          v113 = __DataStorage._offset.getter();
          if (__OFSUB__(v211, v113))
          {
            goto LABEL_330;
          }

          v109 += v211 - v113;
        }

        v114 = __DataStorage._length.getter();
        v115 = v203;
        if (v114 < v203)
        {
          v115 = v114;
        }

        v112 = __s1;
        if (!__s1)
        {
          goto LABEL_360;
        }

        if (!v109)
        {
          goto LABEL_359;
        }

        goto LABEL_150;
      }

      v121 = __s1;
      *(v1 + 152) = v219;
      *(v1 + 156) = v205;
      *(v1 + 157) = *(&v219 + 5);
      *(v1 + 159) = HIBYTE(v219);
      *(v1 + 160) = v220;
      *(v1 + 164) = WORD2(v220);
      if (!__s1)
      {
        goto LABEL_353;
      }

      goto LABEL_165;
    }

    v196 = *(v219 + 24);
    v199 = *(v219 + 16);
    v109 = __DataStorage._bytes.getter();
    if (v109)
    {
      v123 = __DataStorage._offset.getter();
      v124 = v199;
      if (__OFSUB__(v199, v123))
      {
        goto LABEL_328;
      }

      v109 += v199 - v123;
    }

    else
    {
      v124 = v199;
    }

    v132 = v196 - v124;
    if (__OFSUB__(v196, v124))
    {
      goto LABEL_322;
    }

    v133 = __DataStorage._length.getter();
    if (v133 >= v132)
    {
      v115 = v132;
    }

    else
    {
      v115 = v133;
    }

    v112 = __s1;
    if (!__s1)
    {
      goto LABEL_355;
    }

    if (!v109)
    {
      goto LABEL_354;
    }

    goto LABEL_191;
  }

  *(v1 + 158) = 0;
  *__s2 = 0;
  if (v93 == 2)
  {
    __s1b = *(v219 + 16);
    v198 = *(v219 + 24);
    v118 = __DataStorage._bytes.getter();
    if (v118)
    {
      v119 = __DataStorage._offset.getter();
      v120 = __s1b;
      if (__OFSUB__(__s1b, v119))
      {
        goto LABEL_327;
      }

      v118 = &__s1b[v118 - v119];
    }

    else
    {
      v120 = __s1b;
    }

    v128 = v198 - v120;
    if (__OFSUB__(v198, v120))
    {
      goto LABEL_319;
    }

    v129 = __DataStorage._length.getter();
    if (!v118)
    {
      goto LABEL_358;
    }

    if (v129 >= v128)
    {
      v130 = v128;
    }

    else
    {
      v130 = v129;
    }

    v131 = memcmp(__s2, v118, v130);

    v79 = sub_10006A178(v88, v90);
    v77 = v220;
    if (!v131)
    {
LABEL_242:

      sub_10018C684(v1 + 80);
      v26 = v216;
      goto LABEL_293;
    }

LABEL_76:
    ++v82;
    v43 = v221;
    if (v86 == v223)
    {
      goto LABEL_295;
    }

    goto LABEL_77;
  }

  if (v93 != 1)
  {
    *(v1 + 272) = v219;
    *(v1 + 276) = v205;
    *(v1 + 277) = *(&v219 + 5);
    *(v1 + 279) = HIBYTE(v219);
    *(v1 + 280) = v77;
    *(v1 + 282) = BYTE2(v77);
    *(v1 + 283) = BYTE3(v77);
    *(v1 + 284) = BYTE4(v77);
    *(v1 + 285) = BYTE5(v77);
    v121 = (v1 + 152);
    v122 = (v1 + 272);
    goto LABEL_166;
  }

  if (v204 < v211)
  {
    goto LABEL_318;
  }

  v106 = __DataStorage._bytes.getter();
  if (v106)
  {
    v107 = v106;
    v108 = __DataStorage._offset.getter();
    if (__OFSUB__(v211, v108))
    {
      goto LABEL_321;
    }

    v109 = (v211 - v108 + v107);
    v110 = __DataStorage._length.getter();
    if (!v109)
    {
      goto LABEL_352;
    }

    if (v110 >= v203)
    {
      v111 = v203;
    }

    else
    {
      v111 = v110;
    }

    v112 = (v1 + 152);
    goto LABEL_193;
  }

  __DataStorage._length.getter();
LABEL_352:
  __break(1u);
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
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __DataStorage._length.getter();
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  v34 = __DataStorage._length.getter();
LABEL_379:
  __break(1u);
  return _swift_continuation_await(v34);
}

uint64_t sub_100177110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[32] = a8;
  v9[33] = v8;
  v9[30] = a6;
  v9[31] = a7;
  v9[28] = a4;
  v9[29] = a5;
  v9[26] = a2;
  v9[27] = a3;
  v9[25] = a1;
  v10 = *(type metadata accessor for SESPeerIdentityData(0) - 8);
  v9[34] = v10;
  v9[35] = *(v10 + 64);
  v9[36] = swift_task_alloc();
  sub_100068FC4(&qword_100504250, &qword_10040D610);
  v9[37] = swift_task_alloc();
  type metadata accessor for SEKeySyncRecovery.RecoveryRecord(0);
  v9[38] = swift_task_alloc();

  return _swift_task_switch(sub_100177248, v8, 0);
}

uint64_t sub_100177248()
{
  v49 = v0;
  v1 = [*(v0 + 216) currentTLK];
  *(v0 + 312) = v1;
  if (v1)
  {
    v2 = v1;
    if (sub_100182868(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232)))
    {
      v3 = [*(v0 + 216) currentTLK];
      if (!v3)
      {
        __break(1u);
        return _swift_continuation_await(0);
      }

      v4 = v3;
      v5 = *(v0 + 304);
      v7 = *(v0 + 248);
      v6 = *(v0 + 256);
      v9 = *(v0 + 200);
      v8 = *(v0 + 208);
      v10 = [v3 tlkUUID];

      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1001F3488(v9, v8, v11, v13, v7, v6, (v0 + 353), v5);
      sub_10018CE30(*(v0 + 304), type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
      sub_10006A178(v11, v13);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v21 = *(v0 + 200);
        v20 = *(v0 + 208);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v48 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1002FFA0C(v21, v20, &v48);
        _os_log_impl(&_mh_execute_header, v17, v18, "Detaching a recovery request for view %s", v22, 0xCu);
        sub_1000752F4(v23);
      }

      v25 = *(v0 + 288);
      v24 = *(v0 + 296);
      v40 = *(v0 + 272);
      v41 = *(v0 + 280);
      v45 = *(v0 + 248);
      v46 = *(v0 + 240);
      v47 = *(v0 + 256);
      v26 = *(v0 + 232);
      v27 = *(v0 + 208);
      v43 = v24;
      v44 = *(v0 + 216);
      v28 = *(v0 + 200);
      v42 = *(v0 + 264);
      swift_beginAccess();

      sub_1000D78B8(&v48, v28, v27);
      swift_endAccess();

      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
      sub_10018D04C(v26, v25, type metadata accessor for SESPeerIdentityData);
      v30 = (*(v40 + 80) + 56) & ~*(v40 + 80);
      v31 = (v41 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v28;
      v33[5] = v27;
      v33[6] = v44;
      sub_10018CF04(v25, v33 + v30, type metadata accessor for SESPeerIdentityData);
      v34 = (v33 + v31);
      *v34 = v45;
      v34[1] = v47;
      *(v33 + v32) = v46;
      *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;

      v35 = v44;
      sub_100069E2C(v45, v47);
      v36 = v46;

      sub_1001608B4(0, 0, v43, &unk_10040C490, v33);

      sub_100075768(v43, &qword_100504250, &qword_10040D610);
    }

    else
    {
    }

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Recovery but TLK is not set?", v16, 2u);
    }

    *(v0 + 352) = 27;
    sub_10018C6D8();
    swift_willThrowTypedImpl();

    v39 = *(v0 + 8);

    return v39(27);
  }
}

uint64_t sub_1001779E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 264);
  if (v2)
  {
    v4 = sub_100177C10;
  }

  else
  {
    v4 = sub_100177B08;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100177B08()
{
  v10 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 264);

  v3 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState;
  if (*(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState))
  {
    v8 = *(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState);

    sub_1000D7BA4(&v9, 11);
    v4 = v8;
  }

  else
  {
    v4 = sub_1000B3934(&off_1004C4650);
  }

  *(v2 + v3) = v4;

  v5 = *(v0 + 312);
  *(v0 + 354) = 17;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v6 = *(v0 + 8);

  return v6(17);
}

uint64_t sub_100177C10(uint64_t a1)
{
  v15 = v1;
  v2 = *(v1 + 336);
  v3 = *(v1 + 328);
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to delete SE View? %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v11 = *(v1 + 312);
  *(v1 + 355) = 34;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v12 = *(v1 + 8);

  return v12(34);
}

void sub_100177DE4(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v65 = *(a2 + 32);
  v67 = [a1 currentTLK];
  if (!v67)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_59;
  }

  v55 = v10;
  v57 = v9;
  v59 = v8;
  v61 = v7;
  v63 = a1;
  v66 = a4;
  v11 = *a3;
  v12 = *(*a3 + 16);

  v13 = v67;
  v69 = v12;
  if (!v12)
  {
LABEL_53:

    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    a4 = v66;
    goto LABEL_59;
  }

  v14 = 0;
  v68 = 0;
  v15 = 32;
  v16 = &selRef_retrievePeripheralsWithIdentifiers_;
  while (1)
  {
    if (v14 >= *(v11 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
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
    }

    v72[0] = *(v11 + v15);
    v17 = *(v11 + v15 + 16);
    v18 = *(v11 + v15 + 32);
    v19 = *(v11 + v15 + 48);
    v73 = *(v11 + v15 + 64);
    v72[3] = v19;
    v72[1] = v17;
    v72[2] = v18;
    v20 = *(&v72[0] + 1);
    v21 = *&v72[0];
    sub_10018C628(v72, v71);
    v22 = [v13 v16[105]];
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = v20 >> 62;
    v27 = v25 >> 62;
    if (v20 >> 62 == 3)
    {
      v28 = 0;
      if (!v21 && v20 == 0xC000000000000000 && v25 >> 62 == 3)
      {
        v28 = 0;
        if (!v23 && v25 == 0xC000000000000000)
        {

          v50 = 0;
          v51 = 0xC000000000000000;
          goto LABEL_57;
        }
      }

LABEL_25:
      if (v27 <= 1)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        v28 = BYTE6(v20);
        if (v27 <= 1)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }

      LODWORD(v28) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_63;
      }

      v28 = v28;
      goto LABEL_25;
    }

    if (v26 == 2)
    {
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      v31 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v31)
      {
        goto LABEL_64;
      }

      goto LABEL_25;
    }

    v28 = 0;
    if (v27 <= 1)
    {
LABEL_26:
      if (v27)
      {
        LODWORD(v32) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_62;
        }

        v32 = v32;
      }

      else
      {
        v32 = BYTE6(v25);
      }

      goto LABEL_33;
    }

LABEL_31:
    if (v27 != 2)
    {
      if (!v28)
      {
        goto LABEL_55;
      }

      goto LABEL_5;
    }

    v34 = *(v23 + 16);
    v33 = *(v23 + 24);
    v31 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (v31)
    {
      goto LABEL_61;
    }

LABEL_33:
    if (v28 == v32)
    {
      break;
    }

LABEL_5:
    sub_10006A178(v23, v25);
    sub_10018C684(v72);
LABEL_6:
    ++v14;
    v15 += 72;
    if (v69 == v14)
    {
      goto LABEL_53;
    }
  }

  if (v28 >= 1)
  {
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        *&v71[6] = 0;
        *v71 = 0;
        goto LABEL_51;
      }

      v36 = *(v21 + 16);
      v35 = *(v21 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v36, v38))
        {
          goto LABEL_67;
        }

        v37 += v36 - v38;
      }

      if (__OFSUB__(v35, v36))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (!v26)
      {
        *v71 = v21;
        *&v71[8] = v20;
        v71[10] = BYTE2(v20);
        v71[11] = BYTE3(v20);
        v71[12] = BYTE4(v20);
        v71[13] = BYTE5(v20);
LABEL_51:
        v41 = v68;
        sub_10019F024(v71, v23, v25, &v70);
        sub_10006A178(v23, v25);
        sub_10018C684(v72);
        if (v70)
        {
LABEL_56:

          v16 = &selRef_retrievePeripheralsWithIdentifiers_;
          goto LABEL_58;
        }

LABEL_52:
        v68 = v41;
        v16 = &selRef_retrievePeripheralsWithIdentifiers_;
        goto LABEL_6;
      }

      v39 = v21;
      if (v21 >> 32 < v21)
      {
        goto LABEL_65;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v39, v40))
        {
          goto LABEL_68;
        }

        v37 += v39 - v40;
      }
    }

    __DataStorage._length.getter();
    v41 = v68;
    sub_10019F024(v37, v23, v25, v71);
    sub_10006A178(v23, v25);
    sub_10018C684(v72);
    v13 = v67;
    if (v71[0])
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_55:

  v50 = v23;
  v51 = v25;
LABEL_57:
  sub_10006A178(v50, v51);
  sub_10018C684(v72);
LABEL_58:
  v52 = [v13 v16[105]];
  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v53;

  sub_10018C898(a2, v71);
  v48 = v63;
  v54 = v63;
  a4 = v66;
  v49 = v65 & 1;
  v45 = v60;
  v44 = v62;
  v47 = v56;
  v46 = v58;
LABEL_59:
  *a4 = v42;
  a4[1] = v43;
  a4[2] = v44;
  a4[3] = v45;
  a4[4] = v46;
  a4[5] = v47;
  a4[6] = v49;
  a4[7] = v48;
}

uint64_t sub_100178310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[107] = v8;
  v9[106] = a8;
  v9[105] = a7;
  v9[104] = a6;
  v9[103] = a5;
  v9[102] = a4;
  v9[101] = a3;
  v9[100] = a2;
  v9[99] = a1;
  sub_100068FC4(&qword_100504EF0, &unk_10040C470);
  v9[108] = swift_task_alloc();
  v10 = type metadata accessor for SESPeerIdentityData(0);
  v9[109] = v10;
  v9[110] = *(v10 - 8);
  v9[111] = swift_task_alloc();
  v9[112] = swift_task_alloc();
  v9[113] = swift_task_alloc();
  v9[114] = swift_task_alloc();
  v9[115] = type metadata accessor for SESTLKShareData(0);
  v9[116] = swift_task_alloc();
  v9[117] = swift_task_alloc();

  return _swift_task_switch(sub_1001784BC, v8, 0);
}

uint64_t sub_1001784BC()
{
  v198 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = [v2 tlkShares];
  *(v0 + 944) = sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v8 = v6;
  v9 = 0;
  *(v0 + 952) = sub_10033322C(sub_10018C788, v7, v8);

  *(v0 + 752) = _swiftEmptyArrayStorage;
  v10 = [v2 tlkShares];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = swift_task_alloc();
  v12[2] = v4;
  v12[3] = v3;
  v12[4] = v1;
  v13 = sub_1002FB068(sub_10018C7AC, v12, v11);

  *(v0 + 960) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  sub_100069E2C(v4, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  sub_10006A178(v4, v3);
  if (os_log_type_enabled(v14, v15))
  {
    v192 = v15;
    v16 = *(v0 + 816);
    v17 = *(v0 + 808);
    v18 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v195 = v190;
    *v18 = 136315394;
    sub_100069E2C(v17, v16);
    sub_100288640(4, v17, v16, &v196);
    v1 = v196;
    v19 = v197;
    *(v0 + 624) = sub_100288788(v196, v197);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;
    sub_10006A178(v1, v19);

    v23 = sub_1002FFA0C(v20, v22, &v195);

    *(v18 + 4) = v23;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v13 & 1;
    _os_log_impl(&_mh_execute_header, v14, v192, "Self share for %s present? %{BOOL}d", v18, 0x12u);
    sub_1000752F4(v190);
  }

  v24 = _swiftEmptyArrayStorage;
  if ((v13 & 1) == 0)
  {
    v29 = swift_task_alloc();
    *(v0 + 968) = v29;
    *v29 = v0;
    v30 = sub_10017A310;
    goto LABEL_6;
  }

  v25 = *(v0 + 840);
  v27 = *(v25 + 48);
  v26 = *(v25 + 56);
  sub_10029FE40(v0 + 272);
  v196 = v27;
  v197 = v26;
  sub_100069E2C(v27, v26);
  v28 = sub_1001A93E0(&v196, (v0 + 272));
  *(v0 + 520) = *(v0 + 288);
  *(v0 + 536) = *(v0 + 304);
  v32 = v28;
  sub_10018C454(v0 + 520);
  *(v0 + 776) = *(v0 + 312);
  sub_100075768(v0 + 776, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(v196, v197);
  sub_1002A0074(v32, (v0 + 144));
  v33 = *(v0 + 848);
  v34 = *(v0 + 840);
  v35 = *(v0 + 832);
  v36 = *(v0 + 816);
  v37 = *(v0 + 808);
  v38 = *(v0 + 160);
  v39 = *(v0 + 168);
  *(v0 + 992) = v38;
  *(v0 + 1000) = v39;
  sub_100069E2C(v38, v39);
  sub_10018C7D0(v0 + 144);
  v40 = swift_task_alloc();
  *(v40 + 16) = v35;
  *(v40 + 24) = v37;
  *(v40 + 32) = v36;
  *(v40 + 40) = v34;

  v41 = sub_10033322C(sub_10018C824, v40, v33);
  *(v0 + 1008) = v41;

  if (v41 >> 62)
  {
    goto LABEL_168;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 1016) = v42;
  if (!v42)
  {
LABEL_169:
    *(v0 + 1096) = _swiftEmptyArrayStorage;
    v157 = *(v0 + 1000);
    v158 = *(v0 + 992);

    sub_10006A178(v158, v157);
    if (_swiftEmptyArrayStorage >> 62)
    {
      v172 = _CocoaArrayWrapper.endIndex.getter();
      v159 = *(v0 + 952);
      if (v172)
      {
        goto LABEL_173;
      }
    }

    else
    {
      v159 = *(v0 + 952);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_173:

        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 134218240;
          if (_swiftEmptyArrayStorage >> 62)
          {
            v163 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v163 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v164 = *(v0 + 952);
          *(v162 + 4) = v163;

          *(v162 + 12) = 2048;
          if (v164 >> 62)
          {
            v165 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v165 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v162 + 14) = v165;

          _os_log_impl(&_mh_execute_header, v160, v161, "Adding %ld shares and removing %ld shares", v162, 0x16u);
        }

        else
        {
        }

        v166 = *(*(v0 + 856) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
        v167 = String._bridgeToObjectiveC()();
        *(v0 + 1104) = v167;
        isa = Data._bridgeToObjectiveC()().super.isa;
        *(v0 + 1112) = isa;
        v169 = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 1120) = v169;
        v170 = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 1128) = v170;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_10017EC78;
        v171 = swift_continuation_init();
        *(v0 + 264) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
        *(v0 + 208) = _NSConcreteStackBlock;
        *(v0 + 216) = 1107296256;
        *(v0 + 224) = sub_1001E95B0;
        *(v0 + 232) = &unk_1004C9408;
        *(v0 + 240) = v171;
        [v166 modifyTLKSharesForView:v167 altDSID:isa addingShares:v169 removingShares:v170 completion:v0 + 208];
        v42 = (v0 + 16);

        return _swift_continuation_await(v42);
      }
    }

    if (v159 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_173;
      }
    }

    else if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_173;
    }

    v173 = *(v0 + 8);

    return v173();
  }

  while (2)
  {
    v43 = 0;
    v187 = (v0 + 640);
    v193 = (v0 + 656);
    v175 = (v0 + 760);
    v189 = 0x8000000100464D80;
    v188 = 9;
    while (1)
    {
      *(v0 + 1032) = _swiftEmptyArrayStorage;
      *(v0 + 1024) = _swiftEmptyArrayStorage;
      v44 = *(v0 + 1008);
      if ((v44 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          __break(1u);
          __break(1u);
          goto LABEL_130;
        }

        v42 = *(v44 + 8 * v43 + 32);
      }

      v45 = v42;
      *(v0 + 1040) = v42;
      *(v0 + 1048) = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_116;
      }

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      v46 = [v45 peerData];
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData, &unk_10040DFAC);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v9)
      {
        v50 = *(v0 + 880);
        v51 = *(v0 + 872);
        v37 = *(v0 + 864);

        sub_10006A178(v47, v49);

        v52 = *(v50 + 56);
        v1 = v50 + 56;
        v52(v37, 1, 1, v51);
        sub_100075768(v37, &qword_100504EF0, &unk_10040C470);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Failed to decode peer data", v62, 2u);
        }

        v63 = objc_opt_self();
        sub_100068FC4(&unk_100503F50, &unk_10040D950);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1004098F0;
        strcpy((v0 + 560), "decodingError");
        *(v0 + 574) = -4864;
        AnyHashable.init<A>(_:)();
        *(v64 + 96) = &type metadata for Int;
        *(v64 + 72) = 1;
        sub_100090BC4(v64);
        swift_setDeallocating();
        sub_100075768(v64 + 32, &qword_100502C48, &qword_10040B2D0);
        swift_deallocClassInstance();
        v40 = Dictionary._bridgeToObjectiveC()().super.isa;

        sub_10004DC20(v63, v40);

        goto LABEL_26;
      }

      v53 = *(v0 + 904);
      v54 = *(v0 + 880);
      v55 = *(v0 + 872);
      v56 = *(v0 + 864);
      sub_10006A178(v47, v49);

      (*(v54 + 56))(v56, 0, 1, v55);
      v24 = _swiftEmptyArrayStorage;
      sub_10018CF04(v56, v53, type metadata accessor for SESPeerIdentityData);
      v57 = *(v53 + 48);
      v1 = *(v53 + 56);
      sub_100068FC4(&qword_100504F00, &qword_10040C480);
      v58 = swift_allocObject();
      *(v58 + 109) = 0;
      *(v58 + 110) = -5120;
      *(v58 + 16) = xmmword_10040C130;
      strcpy((v58 + 32), "serialNumber");
      *(v58 + 45) = 0;
      *(v58 + 46) = -5120;
      *(v58 + 48) = 147;
      *(v58 + 56) = 0;
      *(v58 + 64) = 0u;
      *(v58 + 80) = -64;
      *(v58 + 88) = _swiftEmptyArrayStorage;
      strcpy((v58 + 96), "caIdentifier");
      *(v58 + 112) = 66;
      *(v58 + 120) = 0;
      *(v58 + 128) = 0u;
      *(v58 + 144) = -64;
      *(v58 + 152) = _swiftEmptyArrayStorage;
      *(v58 + 160) = 0xD000000000000011;
      *(v58 + 168) = 0x8000000100464D60;
      *(v58 + 176) = 24352;
      *(v58 + 184) = 0;
      *(v58 + 192) = 0u;
      *(v58 + 208) = -64;
      *(v58 + 216) = _swiftEmptyArrayStorage;
      *(v58 + 224) = 0x656761735579656BLL;
      *(v58 + 232) = 0xE800000000000000;
      *(v58 + 240) = 149;
      *(v58 + 248) = 0;
      *(v58 + 256) = 0u;
      *(v58 + 272) = -64;
      *(v58 + 280) = _swiftEmptyArrayStorage;
      strcpy((v58 + 288), "effectiveDate");
      *(v58 + 302) = -4864;
      *(v58 + 304) = 37;
      *(v58 + 312) = 256;
      *(v58 + 320) = 0u;
      *(v58 + 336) = -64;
      *(v58 + 344) = _swiftEmptyArrayStorage;
      strcpy((v58 + 352), "expirationDate");
      *(v58 + 367) = -18;
      *(v58 + 368) = 24356;
      *(v58 + 376) = 256;
      *(v58 + 384) = 0u;
      *(v58 + 400) = -64;
      *(v58 + 408) = _swiftEmptyArrayStorage;
      *(v58 + 416) = 0x4E4944536163;
      *(v58 + 424) = 0xE600000000000000;
      *(v58 + 432) = 69;
      *(v58 + 440) = 0;
      *(v58 + 448) = 0u;
      *(v58 + 464) = -64;
      *(v58 + 472) = _swiftEmptyArrayStorage;
      *(v58 + 480) = 0xD000000000000011;
      *(v58 + 488) = 0x8000000100464D80;
      *(v58 + 496) = 83;
      *(v58 + 504) = 0;
      *(v58 + 512) = 0u;
      *(v58 + 528) = -64;
      *(v58 + 536) = _swiftEmptyArrayStorage;
      *(v58 + 544) = 0x654B63696C627570;
      *(v58 + 552) = 0xE900000000000079;
      *(v58 + 560) = 32585;
      *(v58 + 568) = 0;
      *(v58 + 576) = 0u;
      *(v58 + 592) = -64;
      *(v58 + 600) = _swiftEmptyArrayStorage;
      *(v0 + 320) = 32545;
      *(v0 + 328) = 0;
      *(v0 + 336) = v58;
      *(v0 + 344) = 0;
      *(v0 + 352) = 64;
      *(v0 + 360) = _swiftEmptyArrayStorage;
      *(v0 + 576) = v57;
      *(v0 + 584) = v1;
      sub_100069E2C(v57, v1);
      v59 = sub_1001A93E0((v0 + 576), (v0 + 320));

      sub_10006A178(*(v0 + 576), *(v0 + 584));
      sub_1002A0074(v59, (v0 + 80));
      v65 = *(v0 + 1000);
      v66 = *(v0 + 992);
      v9 = *(v0 + 96);
      v40 = *(v0 + 104);
      *(v0 + 1056) = v9;
      *(v0 + 1064) = v40;
      sub_100069E2C(v9, v40);
      sub_10018C7D0(v0 + 80);
      if (sub_10008FB4C(v9, v40, v66, v65))
      {
        v126 = *(v0 + 816);
        v127 = *(v0 + 808);
        sub_10018D04C(*(v0 + 904), *(v0 + 896), type metadata accessor for SESPeerIdentityData);
        sub_100069E2C(v127, v126);
        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.info.getter();
        sub_10006A178(v127, v126);
        if (os_log_type_enabled(v128, v129))
        {
          v130 = *(v0 + 816);
          v131 = *(v0 + 808);
          v132 = swift_slowAlloc();
          *(v0 + 744) = swift_slowAlloc();
          *v132 = 136315394;
          sub_100069E2C(v131, v130);
          v42 = sub_100288640(4, v131, v130, (v0 + 544));
          v24 = *(v0 + 544);
          v37 = *(v0 + 552);
          v40 = v37 >> 62;
          v189 = HIDWORD(v24);
          v182 = v128;
          LOBYTE(v181) = v129;
          v180 = v132;
          if ((v37 >> 62) <= 1)
          {
            if (!v40)
            {
              v9 = BYTE6(v37);
              goto LABEL_122;
            }

LABEL_120:
            if (__OFSUB__(v189, v24))
            {
              goto LABEL_208;
            }

            v9 = v189 - v24;
            goto LABEL_122;
          }

LABEL_116:
          if (v40 == 2)
          {
            v135 = *(v24 + 16);
            v134 = *(v24 + 24);
            v9 = v134 - v135;
            if (__OFSUB__(v134, v135))
            {
              __break(1u);
              goto LABEL_120;
            }

LABEL_122:
            v1 = _swiftEmptyArrayStorage;
            if (v9)
            {
              *v175 = _swiftEmptyArrayStorage;
              v42 = sub_10019F3C0(0, v9 & ~(v9 >> 63), 0);
              v1 = *v175;
              v188 = v24;
              if (v40 != 2)
              {
                if (v40 == 1)
                {
                  v136 = v24;
                  goto LABEL_131;
                }

LABEL_133:
                if (v9 < 0)
                {
                  goto LABEL_209;
                }

                v136 = 0;
                goto LABEL_135;
              }

LABEL_130:
              v136 = *(v24 + 16);
LABEL_131:
              if (v9 < 0)
              {
                __break(1u);
                goto LABEL_133;
              }

LABEL_135:
              v186 = v24 >> 32;
              v184 = v24 >> 16;
              v185 = v24 >> 8;
              v183 = v24 >> 24;
              v191 = v40;
              v194 = v24;
              while (2)
              {
                if (!v9)
                {
                  __break(1u);
                  goto LABEL_190;
                }

                if (v40 != 2)
                {
                  if (v40 == 1)
                  {
                    if (v136 < v188 || v136 >= v186)
                    {
                      goto LABEL_199;
                    }

                    v42 = __DataStorage._bytes.getter();
                    if (!v42)
                    {
                      goto LABEL_210;
                    }

                    v146 = v42;
                    v147 = __DataStorage._offset.getter();
                    v148 = v136 - v147;
                    if (__OFSUB__(v136, v147))
                    {
                      goto LABEL_201;
                    }

LABEL_149:
                    v150 = v146[v148];
                  }

                  else
                  {
                    if (v136 >= BYTE6(v37))
                    {
                      goto LABEL_197;
                    }

                    *(v0 + 471) = v24;
                    *(v0 + 472) = v185;
                    *(v0 + 473) = v184;
                    *(v0 + 474) = v183;
                    *(v0 + 475) = v189;
                    *(v0 + 476) = BYTE5(v24);
                    *(v0 + 477) = BYTE6(v24);
                    *(v0 + 478) = HIBYTE(v24);
                    *(v0 + 479) = v37;
                    *(v0 + 481) = BYTE2(v37);
                    *(v0 + 482) = BYTE3(v37);
                    *(v0 + 483) = BYTE4(v37);
                    *(v0 + 484) = BYTE5(v37);
                    v150 = *(v0 + 471 + v136);
                  }

                  sub_100068FC4(&qword_100502440, &unk_10040B240);
                  v151 = swift_allocObject();
                  *(v151 + 16) = xmmword_1004098F0;
                  *(v151 + 56) = &type metadata for UInt8;
                  *(v151 + 64) = &protocol witness table for UInt8;
                  *(v151 + 32) = v150;
                  v40 = String.init(format:_:)();
                  v153 = v152;
                  *v175 = v1;
                  v155 = *(v1 + 16);
                  v154 = *(v1 + 24);
                  if (v155 >= v154 >> 1)
                  {
                    sub_10019F3C0((v154 > 1), v155 + 1, 1);
                    v1 = *v175;
                  }

                  *(v1 + 16) = v155 + 1;
                  v156 = v1 + 16 * v155;
                  *(v156 + 32) = v40;
                  *(v156 + 40) = v153;
                  ++v136;
                  --v9;
                  LODWORD(v40) = v191;
                  v24 = v194;
                  if (!v9)
                  {
                    goto LABEL_127;
                  }

                  continue;
                }

                break;
              }

              if (v136 < *(v24 + 16))
              {
                goto LABEL_198;
              }

              if (v136 >= *(v24 + 24))
              {
                goto LABEL_200;
              }

              v42 = __DataStorage._bytes.getter();
              if (!v42)
              {
                goto LABEL_211;
              }

              v146 = v42;
              v149 = __DataStorage._offset.getter();
              v148 = v136 - v149;
              if (__OFSUB__(v136, v149))
              {
                goto LABEL_202;
              }

              goto LABEL_149;
            }
          }

          else
          {
            v1 = _swiftEmptyArrayStorage;
          }

LABEL_127:
          v137 = *(v0 + 896);
          *(v0 + 768) = v1;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v138 = BidirectionalCollection<>.joined(separator:)();
          v140 = v139;
          sub_10006A178(v24, v37);

          v141 = sub_1002FFA0C(v138, v140, (v0 + 744));

          *(v180 + 1) = v141;
          *(v180 + 6) = 2080;
          v142 = sub_100289B6C();
          v144 = v143;
          sub_10018CE30(v137, type metadata accessor for SESPeerIdentityData);
          v145 = sub_1002FFA0C(v142, v144, (v0 + 744));

          *(v180 + 14) = v145;
          _os_log_impl(&_mh_execute_header, v182, v181, "KeySyncManager: Sharing TLK %s to %s)", v180, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v133 = *(v0 + 896);

          sub_10018CE30(v133, type metadata accessor for SESPeerIdentityData);
        }

        v29 = swift_task_alloc();
        *(v0 + 1072) = v29;
        *v29 = v0;
        v30 = sub_10017C65C;
LABEL_6:
        v29[1] = v30;

        return sub_10016C130();
      }

      v67 = *(v0 + 1000);
      v68 = *(v0 + 992);
      sub_100069E2C(v68, v67);
      sub_100069E2C(v9, v40);
      v69 = v45;
      v37 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      sub_10006A178(v68, v67);
      sub_10006A178(v9, v40);

      if (os_log_type_enabled(v37, v70))
      {
        break;
      }

      v75 = *(v0 + 904);
      sub_10006A178(v9, v40);

      v76 = v75;
LABEL_84:
      v42 = sub_10018CE30(v76, type metadata accessor for SESPeerIdentityData);
LABEL_26:
      v9 = 0;
      v43 = *(v0 + 1048);
      if (v43 == *(v0 + 1016))
      {
        goto LABEL_169;
      }
    }

    v177 = v70;
    v71 = *(v0 + 1000) >> 62;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *(v0 + 672) = swift_slowAlloc();
    v180 = v72;
    *v72 = 136315650;
    v178 = v69;
    log = v37;
    v176 = v73;
    if (v71 > 1)
    {
      if (v71 != 2)
      {
LABEL_44:
        v84 = _swiftEmptyArrayStorage;
LABEL_69:
        *(v0 + 648) = v84;
        v37 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v101 = BidirectionalCollection<>.joined(separator:)();
        v103 = v102;

        v104 = sub_1002FFA0C(v101, v103, (v0 + 672));

        *(v180 + 1) = v104;
        *(v180 + 6) = 2080;
        v105 = v40 >> 62;
        if ((v40 >> 62) > 1)
        {
          if (v105 != 2)
          {
LABEL_82:
            v108 = _swiftEmptyArrayStorage;
LABEL_83:
            v1 = *(v0 + 904);
            *(v0 + 736) = v108;
            v109 = BidirectionalCollection<>.joined(separator:)();
            v111 = v110;

            v112 = sub_1002FFA0C(v109, v111, (v0 + 672));

            *(v180 + 14) = v112;
            *(v180 + 11) = 2112;
            *(v180 + 3) = v178;
            *v176 = v178;
            v113 = v178;
            _os_log_impl(&_mh_execute_header, log, v177, "Cannot export from my CA %s) to CA %s for peer %@", v180, 0x20u);
            sub_100075768(v176, &unk_100503F70, &unk_10040B2E0);

            swift_arrayDestroy();

            sub_10006A178(v9, v40);
            v76 = v1;
            goto LABEL_84;
          }

          v107 = *(v9 + 16);
          v106 = *(v9 + 24);
          v1 = v106 - v107;
          if (__OFSUB__(v106, v107))
          {
            goto LABEL_194;
          }
        }

        else if (v105)
        {
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            goto LABEL_195;
          }

          v1 = HIDWORD(v9) - v9;
        }

        else
        {
          v1 = BYTE6(v40);
        }

        if (v1)
        {
          *v187 = _swiftEmptyArrayStorage;
          sub_10019F3C0(0, v1 & ~(v1 >> 63), 0);
          v108 = *v187;
          if (v105 != 2)
          {
            if (v105 == 1)
            {
              v37 = v9;
              goto LABEL_86;
            }

            if ((v1 & 0x8000000000000000) == 0)
            {
              v37 = 0;
              goto LABEL_90;
            }

LABEL_203:
            __break(1u);
          }

          v37 = *(v9 + 16);
LABEL_86:
          if (v1 < 0)
          {
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
            goto LABEL_196;
          }

LABEL_90:
          v181 = v9 >> 32;
          v182 = BYTE6(v40);
          while (2)
          {
            if (v105 == 2)
            {
              if (v37 < *(v9 + 16))
              {
                goto LABEL_162;
              }

              if (v37 >= *(v9 + 24))
              {
                goto LABEL_165;
              }

              v42 = __DataStorage._bytes.getter();
              if (!v42)
              {
                goto LABEL_207;
              }

              v114 = v42;
              v117 = __DataStorage._offset.getter();
              v116 = v37 - v117;
              if (__OFSUB__(v37, v117))
              {
                goto LABEL_167;
              }

LABEL_103:
              v118 = v114[v116];
            }

            else
            {
              if (v105 == 1)
              {
                if (v37 < v9 || v37 >= v181)
                {
                  goto LABEL_164;
                }

                v42 = __DataStorage._bytes.getter();
                if (!v42)
                {
                  goto LABEL_206;
                }

                v114 = v42;
                v115 = __DataStorage._offset.getter();
                v116 = v37 - v115;
                if (__OFSUB__(v37, v115))
                {
                  goto LABEL_166;
                }

                goto LABEL_103;
              }

              if (v37 >= BYTE6(v40))
              {
                goto LABEL_163;
              }

              *(v0 + 457) = v9;
              *(v0 + 465) = v40;
              *(v0 + 467) = BYTE2(v40);
              *(v0 + 468) = BYTE3(v40);
              *(v0 + 469) = BYTE4(v40);
              *(v0 + 470) = BYTE5(v40);
              v118 = *(v0 + 457 + v37);
            }

            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v119 = swift_allocObject();
            *(v119 + 16) = xmmword_1004098F0;
            *(v119 + 56) = &type metadata for UInt8;
            *(v119 + 64) = &protocol witness table for UInt8;
            *(v119 + 32) = v118;
            v120 = String.init(format:_:)();
            *v187 = v108;
            v123 = v108[2];
            v122 = v108[3];
            if (v123 >= v122 >> 1)
            {
              v174 = v120;
              v125 = v121;
              sub_10019F3C0((v122 > 1), v123 + 1, 1);
              v121 = v125;
              v120 = v174;
              v108 = *v187;
            }

            v108[2] = v123 + 1;
            v124 = &v108[2 * v123];
            v124[4] = v120;
            v124[5] = v121;
            ++v37;
            --v1;
            v24 = _swiftEmptyArrayStorage;
            if (!v1)
            {
              goto LABEL_83;
            }

            continue;
          }
        }

        goto LABEL_82;
      }

      v77 = *(*(v0 + 992) + 16);
      v78 = *(*(v0 + 992) + 24);
      v74 = v78 - v77;
      if (__OFSUB__(v78, v77))
      {
        goto LABEL_193;
      }
    }

    else if (v71)
    {
      v79 = *(v0 + 992);
      v80 = *(v0 + 996);
      v81 = __OFSUB__(v80, v79);
      v82 = v80 - v79;
      if (v81)
      {
        goto LABEL_192;
      }

      v74 = v82;
    }

    else
    {
      v74 = *(v0 + 1006);
    }

    if (!v74)
    {
      goto LABEL_44;
    }

    v83 = *(v0 + 1000) >> 62;
    *(v0 + 656) = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v74 & ~(v74 >> 63), 0);
    v84 = *(v0 + 656);
    if (!v83)
    {
      if ((v74 & 0x8000000000000000) == 0)
      {
        v37 = 0;
        goto LABEL_49;
      }

LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

    if (v83 == 2)
    {
      v37 = *(*(v0 + 992) + 16);
    }

    else
    {
      v37 = *(v0 + 992);
    }

    if (v74 < 0)
    {
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

LABEL_49:
    v87 = *(v0 + 1000);
    if (v87 >> 62 == 2)
    {
      v93 = *(v0 + 992);
      if (v37 < *(v93 + 16))
      {
        goto LABEL_157;
      }

      if (v37 >= *(v93 + 24))
      {
        goto LABEL_159;
      }

      v42 = __DataStorage._bytes.getter();
      if (!v42)
      {
        goto LABEL_205;
      }

      v90 = v42;
      v94 = __DataStorage._offset.getter();
      v92 = v37 - v94;
      if (__OFSUB__(v37, v94))
      {
        goto LABEL_161;
      }

LABEL_63:
      v95 = v90[v92];
      goto LABEL_66;
    }

    if (v87 >> 62 != 1)
    {
      if (v37 >= BYTE6(v87))
      {
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
        v42 = _CocoaArrayWrapper.endIndex.getter();
        *(v0 + 1016) = v42;
        if (!v42)
        {
          goto LABEL_169;
        }

        continue;
      }

      *(v0 + 499) = *(v0 + 992);
      *(v0 + 507) = v87;
      *(v0 + 509) = BYTE2(v87);
      *(v0 + 510) = BYTE3(v87);
      *(v0 + 511) = BYTE4(v87);
      *(v0 + 512) = BYTE5(v87);
      v95 = *(v0 + 499 + v37);
LABEL_66:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1004098F0;
      *(v96 + 56) = &type metadata for UInt8;
      *(v96 + 64) = &protocol witness table for UInt8;
      *(v96 + 32) = v95;
      v97 = String.init(format:_:)();
      *v193 = v84;
      v1 = v84[2];
      v99 = v84[3];
      if (v1 >= v99 >> 1)
      {
        v85 = v97;
        v86 = v98;
        sub_10019F3C0((v99 > 1), v1 + 1, 1);
        v98 = v86;
        v24 = _swiftEmptyArrayStorage;
        v97 = v85;
        v84 = *v193;
      }

      v84[2] = v1 + 1;
      v100 = &v84[2 * v1];
      v100[4] = v97;
      v100[5] = v98;
      ++v37;
      if (!--v74)
      {
        goto LABEL_69;
      }

      goto LABEL_49;
    }

    break;
  }

  v88 = *(v0 + 992);
  if (v37 >= v88 >> 32 || v37 < v88)
  {
    goto LABEL_158;
  }

  v42 = __DataStorage._bytes.getter();
  if (v42)
  {
    v90 = v42;
    v91 = __DataStorage._offset.getter();
    v92 = v37 - v91;
    if (__OFSUB__(v37, v91))
    {
      goto LABEL_160;
    }

    goto LABEL_63;
  }

  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
  return _swift_continuation_await(v42);
}

uint64_t sub_10017A310(uint64_t a1)
{
  v3 = *v2;
  v3[122] = a1;
  v3[123] = v1;

  if (v1)
  {
    v4 = v3[107];

    v5 = sub_10017EEFC;
    v6 = v4;
  }

  else
  {
    v6 = v3[107];
    v5 = sub_10017A488;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10017A488()
{
  v223 = v0;
  v1 = *(v0 + 984);
  v2 = sub_1001A57D8(*(v0 + 976), *(v0 + 808), *(v0 + 816), *(v0 + 840));
  v4 = v1;
  v5 = *(v0 + 816);
  v6 = *(v0 + 808);
  if (!v4)
  {
    v27 = v2;
    v28 = v3;
    v29 = *(v0 + 936);
    v4 = *(v0 + 920);
    v30 = *(v0 + 840);
    v31 = *(v0 + 824);
    sub_10018D04C(v30, v29, type metadata accessor for SESPeerIdentityData);
    sub_10018D04C(v30, v29 + *(v4 + 20), type metadata accessor for SESPeerIdentityData);
    v32 = *(v4 + 28);
    sub_100069E2C(v27, v28);
    sub_1001C5FF8((v29 + v32));
    v33 = type metadata accessor for CreationMetadata(0);
    (*(*(v33 - 8) + 56))(v29 + v32, 0, 1, v33);
    v34 = (v29 + *(v4 + 24));
    *v34 = v27;
    v34[1] = v28;
    sub_1001C89E8(*v31, v31[1], v6, v5, v29);
    sub_10018CE30(*(v0 + 936), type metadata accessor for SESTLKShareData);
    sub_10006A178(v27, v28);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 752) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 752) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_167;
    }

    goto LABEL_14;
  }

  sub_10018D04C(*(v0 + 840), *(v0 + 912), type metadata accessor for SESPeerIdentityData);
  sub_100069E2C(v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10006A178(v6, v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 912);
  if (v9)
  {
    v218 = v8;
    v11 = *(v0 + 816);
    v12 = *(v0 + 808);
    v13 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = v12;
    v15 = 0;
    *(v0 + 632) = sub_100288788(v14, v11);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v16 = BidirectionalCollection<>.joined(separator:)();
    v18 = v17;

    v19 = sub_1002FFA0C(v16, v18, &v221);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = sub_100289B6C();
    v22 = v21;
    sub_10018CE30(v10, type metadata accessor for SESPeerIdentityData);
    v23 = sub_1002FFA0C(v20, v22, &v221);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    v26 = sub_1002FFA0C(v24, v25, &v221);

    *(v13 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v7, v218, "Failed to export TLK %s to peer %s : %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018CE30(v10, type metadata accessor for SESPeerIdentityData);
    v15 = 0;
  }

  *(v0 + 515) = 14;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v35 = *(v0 + 816);
  v36 = *(v0 + 808);
  sub_100069E2C(v36, v35);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  sub_10006A178(v36, v35);
  if (os_log_type_enabled(v37, v38))
  {
    v219 = v38;
    v39 = *(v0 + 816);
    v40 = *(v0 + 808);
    v41 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    *v41 = 136315394;
    sub_100069E2C(v40, v39);
    sub_100288640(4, v40, v39, &v221);
    v42 = v221;
    v43 = v222;
    v4 = sub_100288788(v221, v222);
    *(v0 + 784) = v4;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v44 = BidirectionalCollection<>.joined(separator:)();
    v46 = v45;
    sub_10006A178(v42, v43);

    v47 = sub_1002FFA0C(v44, v46, &v220);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    *(v0 + 514) = 14;
    sub_10018C6D8();
    v48 = Error.localizedDescription.getter();
    v50 = sub_1002FFA0C(v48, v49, &v220);

    *(v41 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v37, v219, "Failed to create self-share for tlk %s : %s", v41, 0x16u);
    swift_arrayDestroy();
  }

  v51 = *(v0 + 976);
  sub_100180988(13, 0);

  for (i = _swiftEmptyArrayStorage; ; i = *(v0 + 752))
  {
    v53 = *(v0 + 840);
    v54 = *(v53 + 48);
    v55 = *(v53 + 56);
    sub_10029FE40(v0 + 272);
    v221 = v54;
    v222 = v55;
    sub_100069E2C(v54, v55);
    v56 = sub_1001A93E0(&v221, (v0 + 272));
    *(v0 + 520) = *(v0 + 288);
    *(v0 + 536) = *(v0 + 304);
    v57 = v56;
    sub_10018C454(v0 + 520);
    *(v0 + 776) = *(v0 + 312);
    sub_100075768(v0 + 776, &qword_100504EC8, &qword_10040C3B0);
    sub_10006A178(v221, v222);
    sub_1002A0074(v57, (v0 + 144));
    v60 = *(v0 + 848);
    v61 = *(v0 + 840);
    v62 = *(v0 + 832);
    v63 = *(v0 + 816);
    v64 = *(v0 + 808);
    v65 = *(v0 + 160);
    v66 = *(v0 + 168);
    *(v0 + 992) = v65;
    *(v0 + 1000) = v66;
    sub_100069E2C(v65, v66);
    sub_10018C7D0(v0 + 144);
    v67 = swift_task_alloc();
    v67[2] = v62;
    v67[3] = v64;
    v67[4] = v63;
    v67[5] = v61;

    v68 = sub_10033322C(sub_10018C824, v67, v60);
    *(v0 + 1008) = v68;

    if (!(v68 >> 62))
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v69;
      if (!v69)
      {
        goto LABEL_169;
      }

      goto LABEL_17;
    }

    v69 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 1016) = v69;
    if (!v69)
    {
LABEL_169:
      *(v0 + 1096) = i;
      v180 = *(v0 + 1000);
      v181 = *(v0 + 992);

      sub_10006A178(v181, v180);
      if (i >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_173;
        }
      }

      else if (*((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_173:

        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          *v185 = 134218240;
          if (i >> 62)
          {
            v186 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v186 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v187 = *(v0 + 952);
          *(v185 + 4) = v186;

          *(v185 + 12) = 2048;
          if (v187 >> 62)
          {
            v188 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v188 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v185 + 14) = v188;

          _os_log_impl(&_mh_execute_header, v183, v184, "Adding %ld shares and removing %ld shares", v185, 0x16u);
        }

        else
        {
        }

        v189 = *(*(v0 + 856) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
        v190 = String._bridgeToObjectiveC()();
        *(v0 + 1104) = v190;
        isa = Data._bridgeToObjectiveC()().super.isa;
        *(v0 + 1112) = isa;
        v192 = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 1120) = v192;
        v193 = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 1128) = v193;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_10017EC78;
        v194 = swift_continuation_init();
        *(v0 + 264) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
        *(v0 + 208) = _NSConcreteStackBlock;
        *(v0 + 216) = 1107296256;
        *(v0 + 224) = sub_1001E95B0;
        *(v0 + 232) = &unk_1004C9408;
        *(v0 + 240) = v194;
        [v189 modifyTLKSharesForView:v190 altDSID:isa addingShares:v192 removingShares:v193 completion:v0 + 208];
        v69 = (v0 + 16);

        return _swift_continuation_await(v69);
      }

      v182 = *(v0 + 952);
      if (v182 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_173;
        }
      }

      else if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_173;
      }

      v195 = *(v0 + 8);

      return v195();
    }

LABEL_17:
    v70 = 0;
    v210 = (v0 + 640);
    v214 = (v0 + 656);
    v197 = (v0 + 760);
    v212 = 0x8000000100464D80;
    v213 = 0x8000000100464D60;
    v216 = i;
    while (1)
    {
      *(v0 + 1032) = i;
      *(v0 + 1024) = i;
      v71 = *(v0 + 1008);
      if ((v71 & 0xC000000000000001) != 0)
      {
        v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v70 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          __break(1u);
          __break(1u);
          goto LABEL_129;
        }

        v69 = *(v71 + 8 * v70 + 32);
      }

      v64 = v69;
      *(v0 + 1040) = v69;
      *(v0 + 1048) = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        __break(1u);
        goto LABEL_113;
      }

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      v72 = [v64 peerData];
      v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData, &unk_10040DFAC);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v76 = *(v0 + 904);
      v77 = *(v0 + 880);
      v78 = *(v0 + 872);
      v4 = *(v0 + 864);
      sub_10006A178(v73, v75);

      (*(v77 + 56))(v4, 0, 1, v78);
      sub_10018CF04(v4, v76, type metadata accessor for SESPeerIdentityData);
      v79 = *(v76 + 48);
      v80 = *(v76 + 56);
      sub_100068FC4(&qword_100504F00, &qword_10040C480);
      v81 = swift_allocObject();
      *(v81 + 109) = 0;
      *(v81 + 110) = -5120;
      *(v81 + 16) = xmmword_10040C130;
      strcpy((v81 + 32), "serialNumber");
      *(v81 + 45) = 0;
      *(v81 + 46) = -5120;
      *(v81 + 48) = 147;
      *(v81 + 56) = 0;
      *(v81 + 64) = 0u;
      *(v81 + 80) = -64;
      *(v81 + 88) = _swiftEmptyArrayStorage;
      strcpy((v81 + 96), "caIdentifier");
      *(v81 + 112) = 66;
      *(v81 + 120) = 0;
      *(v81 + 128) = 0u;
      *(v81 + 144) = -64;
      *(v81 + 152) = _swiftEmptyArrayStorage;
      *(v81 + 160) = 0xD000000000000011;
      *(v81 + 168) = 0x8000000100464D60;
      *(v81 + 176) = 24352;
      *(v81 + 184) = 0;
      *(v81 + 192) = 0u;
      *(v81 + 208) = -64;
      *(v81 + 216) = _swiftEmptyArrayStorage;
      *(v81 + 224) = 0x656761735579656BLL;
      *(v81 + 232) = 0xE800000000000000;
      *(v81 + 240) = 149;
      *(v81 + 248) = 0;
      *(v81 + 256) = 0u;
      *(v81 + 272) = -64;
      *(v81 + 280) = _swiftEmptyArrayStorage;
      strcpy((v81 + 288), "effectiveDate");
      *(v81 + 302) = -4864;
      *(v81 + 304) = 37;
      *(v81 + 312) = 256;
      *(v81 + 320) = 0u;
      *(v81 + 336) = -64;
      *(v81 + 344) = _swiftEmptyArrayStorage;
      strcpy((v81 + 352), "expirationDate");
      *(v81 + 367) = -18;
      *(v81 + 368) = 24356;
      *(v81 + 376) = 256;
      *(v81 + 384) = 0u;
      *(v81 + 400) = -64;
      *(v81 + 408) = _swiftEmptyArrayStorage;
      *(v81 + 416) = 0x4E4944536163;
      *(v81 + 424) = 0xE600000000000000;
      *(v81 + 432) = 69;
      *(v81 + 440) = 0;
      *(v81 + 448) = 0u;
      *(v81 + 464) = -64;
      *(v81 + 472) = _swiftEmptyArrayStorage;
      *(v81 + 480) = 0xD000000000000011;
      *(v81 + 488) = 0x8000000100464D80;
      *(v81 + 496) = 83;
      *(v81 + 504) = 0;
      *(v81 + 512) = 0u;
      *(v81 + 528) = -64;
      *(v81 + 536) = _swiftEmptyArrayStorage;
      *(v81 + 544) = 0x654B63696C627570;
      *(v81 + 552) = 0xE900000000000079;
      *(v81 + 560) = 32585;
      *(v81 + 568) = 0;
      *(v81 + 576) = 0u;
      *(v81 + 592) = -64;
      *(v81 + 600) = _swiftEmptyArrayStorage;
      *(v0 + 320) = 32545;
      *(v0 + 328) = 0;
      *(v0 + 336) = v81;
      *(v0 + 344) = 0;
      *(v0 + 352) = 64;
      *(v0 + 360) = _swiftEmptyArrayStorage;
      *(v0 + 576) = v79;
      *(v0 + 584) = v80;
      sub_100069E2C(v79, v80);
      v82 = sub_1001A93E0((v0 + 576), (v0 + 320));

      sub_10006A178(*(v0 + 576), *(v0 + 584));
      sub_1002A0074(v82, (v0 + 80));
      i = v216;
      v83 = *(v0 + 1000);
      v84 = *(v0 + 992);
      v85 = *(v0 + 96);
      v86 = *(v0 + 104);
      *(v0 + 1056) = v85;
      *(v0 + 1064) = v86;
      sub_100069E2C(v85, v86);
      sub_10018C7D0(v0 + 80);
      if (sub_10008FB4C(v85, v86, v84, v83))
      {
        v148 = *(v0 + 816);
        v149 = *(v0 + 808);
        sub_10018D04C(*(v0 + 904), *(v0 + 896), type metadata accessor for SESPeerIdentityData);
        sub_100069E2C(v149, v148);
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.info.getter();
        sub_10006A178(v149, v148);
        if (os_log_type_enabled(v150, v151))
        {
          v152 = *(v0 + 816);
          v153 = *(v0 + 808);
          v154 = swift_slowAlloc();
          *(v0 + 744) = swift_slowAlloc();
          *v154 = 136315394;
          sub_100069E2C(v153, v152);
          v69 = sub_100288640(4, v153, v152, (v0 + 544));
          v4 = *(v0 + 544);
          v64 = *(v0 + 552);
          v61 = (v64 >> 62);
          v213 = HIDWORD(v4);
          v206 = v150;
          v205 = v151;
          v204 = v154;
          if ((v64 >> 62) <= 1)
          {
            if (!v61)
            {
              v15 = BYTE6(v64);
              goto LABEL_119;
            }

LABEL_117:
            if (__OFSUB__(v213, v4))
            {
              goto LABEL_208;
            }

            v15 = v213 - v4;
            goto LABEL_119;
          }

LABEL_113:
          if (v61 == 2)
          {
            v157 = *(v4 + 16);
            v156 = *(v4 + 24);
            v15 = v156 - v157;
            if (__OFSUB__(v156, v157))
            {
              __break(1u);
              goto LABEL_117;
            }

LABEL_119:
            i = _swiftEmptyArrayStorage;
            if (v15)
            {
              *v197 = _swiftEmptyArrayStorage;
              v69 = sub_10019F3C0(0, v15 & ~(v15 >> 63), 0);
              i = *v197;
              v212 = v4;
              if (v61 != 2)
              {
                if (v61 == 1)
                {
                  v158 = v4;
                  goto LABEL_130;
                }

LABEL_132:
                if (v15 < 0)
                {
                  goto LABEL_209;
                }

                v158 = 0;
                goto LABEL_134;
              }

LABEL_129:
              v158 = *(v4 + 16);
LABEL_130:
              if (v15 < 0)
              {
                __break(1u);
                goto LABEL_132;
              }

LABEL_134:
              v211 = v4 >> 32;
              v208 = v4 >> 16;
              v209 = v4 >> 8;
              v207 = v4 >> 24;
              v215 = v61;
              v217 = v4;
              do
              {
                if (!v15)
                {
                  __break(1u);
                  goto LABEL_190;
                }

                if (v61 == 2)
                {
                  if (v158 < *(v4 + 16))
                  {
                    goto LABEL_198;
                  }

                  if (v158 >= *(v4 + 24))
                  {
                    goto LABEL_200;
                  }

                  v69 = __DataStorage._bytes.getter();
                  if (!v69)
                  {
                    goto LABEL_211;
                  }

                  v169 = v69;
                  v172 = __DataStorage._offset.getter();
                  v171 = v158 - v172;
                  if (__OFSUB__(v158, v172))
                  {
                    goto LABEL_202;
                  }
                }

                else
                {
                  if (v61 != 1)
                  {
                    if (v158 >= BYTE6(v64))
                    {
                      goto LABEL_197;
                    }

                    *(v0 + 471) = v4;
                    *(v0 + 472) = v209;
                    *(v0 + 473) = v208;
                    *(v0 + 474) = v207;
                    *(v0 + 475) = v213;
                    *(v0 + 476) = BYTE5(v4);
                    *(v0 + 477) = BYTE6(v4);
                    *(v0 + 478) = HIBYTE(v4);
                    *(v0 + 479) = v64;
                    *(v0 + 481) = BYTE2(v64);
                    *(v0 + 482) = BYTE3(v64);
                    *(v0 + 483) = BYTE4(v64);
                    *(v0 + 484) = BYTE5(v64);
                    v173 = *(v0 + 471 + v158);
                    goto LABEL_151;
                  }

                  if (v158 < v212 || v158 >= v211)
                  {
                    goto LABEL_199;
                  }

                  v69 = __DataStorage._bytes.getter();
                  if (!v69)
                  {
                    goto LABEL_210;
                  }

                  v169 = v69;
                  v170 = __DataStorage._offset.getter();
                  v171 = v158 - v170;
                  if (__OFSUB__(v158, v170))
                  {
                    goto LABEL_201;
                  }
                }

                v173 = v169[v171];
LABEL_151:
                sub_100068FC4(&qword_100502440, &unk_10040B240);
                v174 = swift_allocObject();
                *(v174 + 16) = xmmword_1004098F0;
                *(v174 + 56) = &type metadata for UInt8;
                *(v174 + 64) = &protocol witness table for UInt8;
                *(v174 + 32) = v173;
                v61 = String.init(format:_:)();
                v176 = v175;
                *v197 = i;
                v178 = *(i + 16);
                v177 = *(i + 24);
                if (v178 >= v177 >> 1)
                {
                  sub_10019F3C0((v177 > 1), v178 + 1, 1);
                  i = *v197;
                }

                *(i + 16) = v178 + 1;
                v179 = (i + 16 * v178);
                v179[4] = v61;
                v179[5] = v176;
                ++v158;
                --v15;
                LODWORD(v61) = v215;
                v4 = v217;
              }

              while (v15);
            }
          }

          else
          {
            i = _swiftEmptyArrayStorage;
          }

          v159 = *(v0 + 896);
          *(v0 + 768) = i;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v160 = BidirectionalCollection<>.joined(separator:)();
          v162 = v161;
          sub_10006A178(v4, v64);

          v163 = sub_1002FFA0C(v160, v162, (v0 + 744));

          *(v204 + 4) = v163;
          *(v204 + 12) = 2080;
          v164 = sub_100289B6C();
          v166 = v165;
          sub_10018CE30(v159, type metadata accessor for SESPeerIdentityData);
          v167 = sub_1002FFA0C(v164, v166, (v0 + 744));

          *(v204 + 14) = v167;
          _os_log_impl(&_mh_execute_header, v206, v205, "KeySyncManager: Sharing TLK %s to %s)", v204, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v155 = *(v0 + 896);

          sub_10018CE30(v155, type metadata accessor for SESPeerIdentityData);
        }

        v168 = swift_task_alloc();
        *(v0 + 1072) = v168;
        *v168 = v0;
        v168[1] = sub_10017C65C;

        return sub_10016C130();
      }

      v87 = *(v0 + 1000);
      v88 = *(v0 + 992);
      sub_100069E2C(v88, v87);
      sub_100069E2C(v85, v86);
      v64 = v64;
      v61 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      sub_10006A178(v88, v87);
      sub_10006A178(v85, v86);

      if (os_log_type_enabled(v61, v89))
      {
        break;
      }

      v95 = *(v0 + 904);
      sub_10006A178(v85, v86);

      v69 = sub_10018CE30(v95, type metadata accessor for SESPeerIdentityData);
LABEL_24:
      v15 = 0;
      v70 = *(v0 + 1048);
      if (v70 == *(v0 + 1016))
      {
        goto LABEL_169;
      }
    }

    v200 = v89;
    v90 = *(v0 + 1000) >> 62;
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *(v0 + 672) = v93;
    v203 = v91;
    *v91 = 136315650;
    v201 = v64;
    log = v61;
    v198 = v92;
    v199 = v93;
    if (v90 > 1)
    {
      if (v90 == 2)
      {
        v96 = *(*(v0 + 992) + 16);
        v97 = *(*(v0 + 992) + 24);
        v94 = v97 - v96;
        if (__OFSUB__(v97, v96))
        {
          goto LABEL_193;
        }

        goto LABEL_38;
      }

LABEL_42:
      v103 = _swiftEmptyArrayStorage;
LABEL_67:
      *(v0 + 648) = v103;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v121 = BidirectionalCollection<>.joined(separator:)();
      v123 = v122;

      v124 = sub_1002FFA0C(v121, v123, (v0 + 672));

      *(v203 + 1) = v124;
      *(v203 + 6) = 2080;
      v125 = v86 >> 62;
      if ((v86 >> 62) > 1)
      {
        if (v125 != 2)
        {
LABEL_80:
          v128 = _swiftEmptyArrayStorage;
LABEL_81:
          v130 = *(v0 + 904);
          *(v0 + 736) = v128;
          v131 = BidirectionalCollection<>.joined(separator:)();
          v133 = v132;

          v134 = sub_1002FFA0C(v131, v133, (v0 + 672));

          *(v203 + 14) = v134;
          *(v203 + 11) = 2112;
          *(v203 + 3) = v201;
          *v198 = v201;
          v135 = v201;
          LODWORD(v61) = log;
          _os_log_impl(&_mh_execute_header, log, v200, "Cannot export from my CA %s) to CA %s for peer %@", v203, 0x20u);
          sub_100075768(v198, &unk_100503F70, &unk_10040B2E0);

          v64 = v199;
          swift_arrayDestroy();

          sub_10006A178(v85, v86);
          v69 = sub_10018CE30(v130, type metadata accessor for SESPeerIdentityData);
          i = v216;
          goto LABEL_24;
        }

        v127 = *(v85 + 16);
        v126 = *(v85 + 24);
        v4 = v126 - v127;
        if (__OFSUB__(v126, v127))
        {
          goto LABEL_194;
        }
      }

      else if (v125)
      {
        if (__OFSUB__(HIDWORD(v85), v85))
        {
          goto LABEL_195;
        }

        v4 = HIDWORD(v85) - v85;
      }

      else
      {
        v4 = BYTE6(v86);
      }

      if (v4)
      {
        *v210 = _swiftEmptyArrayStorage;
        sub_10019F3C0(0, v4 & ~(v4 >> 63), 0);
        v128 = *v210;
        v206 = v85;
        if (v125 != 2)
        {
          if (v125 == 1)
          {
            v129 = v85;
            goto LABEL_83;
          }

          if ((v4 & 0x8000000000000000) == 0)
          {
            v129 = 0;
            goto LABEL_87;
          }

LABEL_203:
          __break(1u);
        }

        v129 = *(v85 + 16);
LABEL_83:
        if ((v4 & 0x8000000000000000) != 0)
        {
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

LABEL_87:
        v204 = v85 >> 32;
        v205 = BYTE6(v86);
        while (2)
        {
          if (v125 == 2)
          {
            if (v129 < *(v85 + 16))
            {
              goto LABEL_161;
            }

            if (v129 >= *(v85 + 24))
            {
              goto LABEL_164;
            }

            v69 = __DataStorage._bytes.getter();
            if (!v69)
            {
              goto LABEL_207;
            }

            v136 = v69;
            v139 = __DataStorage._offset.getter();
            v138 = v129 - v139;
            if (__OFSUB__(v129, v139))
            {
              goto LABEL_166;
            }

LABEL_100:
            v140 = v136[v138];
          }

          else
          {
            if (v125 == 1)
            {
              if (v129 < v85 || v129 >= v204)
              {
                goto LABEL_163;
              }

              v69 = __DataStorage._bytes.getter();
              if (!v69)
              {
                goto LABEL_206;
              }

              v136 = v69;
              v137 = __DataStorage._offset.getter();
              v138 = v129 - v137;
              if (__OFSUB__(v129, v137))
              {
                goto LABEL_165;
              }

              goto LABEL_100;
            }

            if (v129 >= BYTE6(v86))
            {
              goto LABEL_162;
            }

            *(v0 + 457) = v85;
            *(v0 + 465) = v86;
            *(v0 + 467) = BYTE2(v86);
            *(v0 + 468) = BYTE3(v86);
            *(v0 + 469) = BYTE4(v86);
            *(v0 + 470) = BYTE5(v86);
            v140 = *(v0 + 457 + v129);
          }

          sub_100068FC4(&qword_100502440, &unk_10040B240);
          v141 = swift_allocObject();
          *(v141 + 16) = xmmword_1004098F0;
          *(v141 + 56) = &type metadata for UInt8;
          *(v141 + 64) = &protocol witness table for UInt8;
          *(v141 + 32) = v140;
          v142 = String.init(format:_:)();
          *v210 = v128;
          v145 = v128[2];
          v144 = v128[3];
          if (v145 >= v144 >> 1)
          {
            v196 = v142;
            v147 = v143;
            sub_10019F3C0((v144 > 1), v145 + 1, 1);
            v143 = v147;
            v142 = v196;
            v128 = *v210;
          }

          v128[2] = v145 + 1;
          v146 = &v128[2 * v145];
          v146[4] = v142;
          v146[5] = v143;
          ++v129;
          if (!--v4)
          {
            goto LABEL_81;
          }

          continue;
        }
      }

      goto LABEL_80;
    }

    if (v90)
    {
      v98 = *(v0 + 992);
      v99 = *(v0 + 996);
      v100 = __OFSUB__(v99, v98);
      v101 = v99 - v98;
      if (v100)
      {
        goto LABEL_192;
      }

      v94 = v101;
    }

    else
    {
      v94 = *(v0 + 1006);
    }

LABEL_38:
    if (!v94)
    {
      goto LABEL_42;
    }

    v102 = *(v0 + 1000) >> 62;
    *(v0 + 656) = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v94 & ~(v94 >> 63), 0);
    v103 = *(v0 + 656);
    if (!v102)
    {
      if ((v94 & 0x8000000000000000) == 0)
      {
        v104 = 0;
        goto LABEL_47;
      }

LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

    if (v102 == 2)
    {
      v104 = *(*(v0 + 992) + 16);
    }

    else
    {
      v104 = *(v0 + 992);
    }

    if (v94 < 0)
    {
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

LABEL_47:
    while (2)
    {
      v107 = *(v0 + 1000);
      if (v107 >> 62 == 2)
      {
        v113 = *(v0 + 992);
        if (v104 < *(v113 + 16))
        {
          goto LABEL_156;
        }

        if (v104 >= *(v113 + 24))
        {
          goto LABEL_158;
        }

        v69 = __DataStorage._bytes.getter();
        if (!v69)
        {
          goto LABEL_205;
        }

        v110 = v69;
        v114 = __DataStorage._offset.getter();
        v112 = v104 - v114;
        if (__OFSUB__(v104, v114))
        {
          goto LABEL_160;
        }

LABEL_61:
        v115 = v110[v112];
LABEL_64:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_1004098F0;
        *(v116 + 56) = &type metadata for UInt8;
        *(v116 + 64) = &protocol witness table for UInt8;
        *(v116 + 32) = v115;
        v117 = String.init(format:_:)();
        *v214 = v103;
        v4 = v103[2];
        v119 = v103[3];
        if (v4 >= v119 >> 1)
        {
          v105 = v117;
          v106 = v118;
          sub_10019F3C0((v119 > 1), v4 + 1, 1);
          v118 = v106;
          v117 = v105;
          v103 = *v214;
        }

        v103[2] = v4 + 1;
        v120 = &v103[2 * v4];
        v120[4] = v117;
        v120[5] = v118;
        ++v104;
        if (!--v94)
        {
          goto LABEL_67;
        }

        continue;
      }

      break;
    }

    if (v107 >> 62 == 1)
    {
      break;
    }

    if (v104 < BYTE6(v107))
    {
      *(v0 + 499) = *(v0 + 992);
      *(v0 + 507) = v107;
      *(v0 + 509) = BYTE2(v107);
      *(v0 + 510) = BYTE3(v107);
      *(v0 + 511) = BYTE4(v107);
      *(v0 + 512) = BYTE5(v107);
      v115 = *(v0 + 499 + v104);
      goto LABEL_64;
    }

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
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_14:
    v59 = *(v0 + 976);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v15 = 0;
  }

  v108 = *(v0 + 992);
  if (v104 >= v108 >> 32 || v104 < v108)
  {
    goto LABEL_157;
  }

  v69 = __DataStorage._bytes.getter();
  if (v69)
  {
    v110 = v69;
    v111 = __DataStorage._offset.getter();
    v112 = v104 - v111;
    if (__OFSUB__(v104, v111))
    {
      goto LABEL_159;
    }

    goto LABEL_61;
  }

  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
  return _swift_continuation_await(v69);
}

uint64_t sub_10017C65C(uint64_t a1)
{
  v3 = *v2;
  v3[135] = a1;
  v3[136] = v1;

  if (v1)
  {
    v4 = v3[107];

    v5 = sub_10017F010;
    v6 = v4;
  }

  else
  {
    v6 = v3[107];
    v5 = sub_10017C7F4;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10017C7F4()
{
  v240 = v0;
  v1 = *(v0 + 1088);
  v2 = sub_1001A57D8(*(v0 + 1080), *(v0 + 808), *(v0 + 816), *(v0 + 904));
  if (!v1)
  {
    v24 = v2;
    v25 = v3;
    v26 = *(v0 + 928);
    v27 = *(v0 + 920);
    v28 = *(v0 + 904);
    v29 = *(v0 + 824);
    v237 = *(v0 + 816);
    v30 = *(v0 + 808);
    v31 = type metadata accessor for SESPeerIdentityData;
    sub_10018D04C(*(v0 + 840), v26, type metadata accessor for SESPeerIdentityData);
    sub_10018D04C(v28, v26 + *(v27 + 20), type metadata accessor for SESPeerIdentityData);
    v32 = *(v27 + 28);
    sub_100069E2C(v24, v25);
    sub_1001C5FF8((v26 + v32));
    v33 = type metadata accessor for CreationMetadata(0);
    (*(*(v33 - 8) + 56))(v26 + v32, 0, 1, v33);
    v34 = (v26 + *(v27 + 24));
    *v34 = v24;
    v34[1] = v25;
    sub_1001C89E8(*v29, v29[1], v30, v237, v26);
    v35 = *(v0 + 928);
    goto LABEL_15;
  }

  v4 = *(v0 + 816);
  v5 = *(v0 + 808);
  sub_10018D04C(*(v0 + 904), *(v0 + 888), type metadata accessor for SESPeerIdentityData);
  sub_100069E2C(v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  sub_10006A178(v5, v4);

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 888);
  if (v8)
  {
    v236 = v7;
    v10 = *(v0 + 816);
    v11 = *(v0 + 808);
    v12 = swift_slowAlloc();
    v239[0] = swift_slowAlloc();
    *v12 = 136315650;
    v218 = OS_LOG_TYPE_DEFAULT;
    *(v0 + 712) = sub_100288788(v11, v10);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v13 = BidirectionalCollection<>.joined(separator:)();
    v15 = v14;

    v16 = sub_1002FFA0C(v13, v15, v239);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_100289B6C();
    v19 = v18;
    sub_10018CE30(v9, type metadata accessor for SESPeerIdentityData);
    v20 = sub_1002FFA0C(v17, v19, v239);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_1002FFA0C(v21, v22, v239);

    *(v12 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v6, v236, "Failed to export TLK %s to peer %s : %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018CE30(v9, type metadata accessor for SESPeerIdentityData);
    v218 = OS_LOG_TYPE_DEFAULT;
  }

  v27 = 14;
  *(v0 + 518) = 14;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v36 = *(v0 + 1040);
  v37 = *(v0 + 816);
  v38 = *(v0 + 808);
  sub_100069E2C(v38, v37);
  v39 = v36;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  sub_10006A178(v38, v37);

  if (!os_log_type_enabled(v30, v31))
  {

    goto LABEL_25;
  }

  v40 = *(v0 + 816);
  v41 = *(v0 + 808);
  v42 = swift_slowAlloc();
  v211 = swift_slowAlloc();
  *(v0 + 664) = swift_slowAlloc();
  *v42 = 136315650;
  sub_100069E2C(v41, v40);
  sub_100288640(4, v41, v40, (v0 + 592));
  v24 = *(v0 + 592);
  v43 = *(v0 + 600);
  v35 = v43 >> 62;
  v228 = HIDWORD(v24);
  LODWORD(v217) = 14;
  v214 = v42;
  log = v30;
  v213 = v31;
  if ((v43 >> 62) <= 1)
  {
    if (v35)
    {
      if (__OFSUB__(HIDWORD(v24), v24))
      {
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
        goto LABEL_242;
      }

      v25 = HIDWORD(v24) - v24;
    }

    else
    {
      v25 = BYTE6(v43);
    }

LABEL_19:
    v52 = _swiftEmptyArrayStorage;
    if (v25)
    {
      *(v0 + 680) = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v25 & ~(v25 >> 63), 0);
      v238 = (v0 + 680);
      v52 = *(v0 + 680);
      v227 = v24;
      if (v35 == 2)
      {
        v53 = *(v24 + 16);
      }

      else
      {
        if (v35 != 1)
        {
LABEL_135:
          if ((v25 & 0x8000000000000000) == 0)
          {
            v53 = 0;
            goto LABEL_137;
          }

LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        v53 = v24;
      }

      if ((v25 & 0x8000000000000000) == 0)
      {
LABEL_137:
        v224 = v24 >> 32;
        v219 = (v24 >> 16);
        v220 = v24 >> 8;
        v234 = v24;
        while (v35 != 2)
        {
          if (v35 == 1)
          {
            if (v53 < v227 || v53 >= v224)
            {
              goto LABEL_209;
            }

            v158 = __DataStorage._bytes.getter();
            if (!v158)
            {
              goto LABEL_251;
            }

            v159 = v158;
            v160 = __DataStorage._offset.getter();
            v161 = v53 - v160;
            if (__OFSUB__(v53, v160))
            {
              goto LABEL_211;
            }

            goto LABEL_150;
          }

          if (v53 >= BYTE6(v43))
          {
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_29;
            }

            goto LABEL_31;
          }

          *(v0 + 485) = v24;
          *(v0 + 486) = v220;
          *(v0 + 487) = v219;
          *(v0 + 488) = BYTE3(v24);
          *(v0 + 489) = v228;
          *(v0 + 490) = BYTE5(v24);
          *(v0 + 491) = BYTE6(v24);
          *(v0 + 492) = HIBYTE(v24);
          *(v0 + 493) = v43;
          *(v0 + 495) = BYTE2(v43);
          *(v0 + 496) = BYTE3(v43);
          *(v0 + 497) = BYTE4(v43);
          *(v0 + 498) = BYTE5(v43);
          v164 = *(v0 + 485 + v53);
LABEL_153:
          sub_100068FC4(&qword_100502440, &unk_10040B240);
          v165 = swift_allocObject();
          *(v165 + 16) = xmmword_1004098F0;
          *(v165 + 56) = &type metadata for UInt8;
          *(v165 + 64) = &protocol witness table for UInt8;
          *(v165 + 32) = v164;
          v166 = String.init(format:_:)();
          v168 = v167;
          *v238 = v52;
          v170 = v52[2];
          v169 = v52[3];
          if (v170 >= v169 >> 1)
          {
            sub_10019F3C0((v169 > 1), v170 + 1, 1);
            v52 = *v238;
          }

          v52[2] = v170 + 1;
          v171 = &v52[2 * v170];
          v171[4] = v166;
          v171[5] = v168;
          ++v53;
          --v25;
          v35 = v43 >> 62;
          v24 = v234;
          if (!v25)
          {
            goto LABEL_24;
          }
        }

        if (v53 < *(v24 + 16))
        {
          goto LABEL_208;
        }

        if (v53 >= *(v24 + 24))
        {
          goto LABEL_210;
        }

        v162 = __DataStorage._bytes.getter();
        if (!v162)
        {
          goto LABEL_252;
        }

        v159 = v162;
        v163 = __DataStorage._offset.getter();
        v161 = v53 - v163;
        if (__OFSUB__(v53, v163))
        {
          goto LABEL_212;
        }

LABEL_150:
        v164 = *(v159 + v161);
        goto LABEL_153;
      }

      __break(1u);
      goto LABEL_135;
    }

    goto LABEL_24;
  }

  if (v35 == 2)
  {
    v45 = *(v24 + 16);
    v44 = *(v24 + 24);
    v25 = v44 - v45;
    if (!__OFSUB__(v44, v45))
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_15:
    sub_10018CE30(v35, type metadata accessor for SESTLKShareData);
    sub_10006A178(v24, v25);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 752) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 752) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_234;
    }

    goto LABEL_16;
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_24:
  v54 = v24;
  v55 = *(v0 + 1040);
  *(v0 + 688) = v52;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v56 = BidirectionalCollection<>.joined(separator:)();
  v58 = v57;
  sub_10006A178(v54, v43);

  v59 = sub_1002FFA0C(v56, v58, (v0 + 664));

  *(v214 + 1) = v59;
  *(v214 + 6) = 2112;
  *(v214 + 14) = v55;
  v211->isa = v55;
  *(v214 + 11) = 2080;
  v27 = 14;
  *(v0 + 516) = 14;
  sub_10018C6D8();
  v60 = v55;
  v61 = Error.localizedDescription.getter();
  v63 = sub_1002FFA0C(v61, v62, (v0 + 664));

  *(v214 + 3) = v63;
  _os_log_impl(&_mh_execute_header, log, v213, "Couldn't share TLK %s to peer %@ : %s", v214, 0x20u);
  sub_100075768(v211, &unk_100503F70, &unk_10040B2E0);

  swift_arrayDestroy();

LABEL_25:
  v31 = *(v0 + 1080);
  v64 = *(v0 + 1064);
  v47 = *(v0 + 1056);
  v30 = *(v0 + 1040);
  v65 = objc_opt_self();
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1004098F0;
  *(v0 + 608) = sub_100285E10(14);
  *(v0 + 616) = v67;
  AnyHashable.init<A>(_:)();
  *(v66 + 96) = &type metadata for Int;
  *(v66 + 72) = 1;
  sub_100090BC4(v66);
  swift_setDeallocating();
  sub_100075768(v66 + 32, &qword_100502C48, &qword_10040B2D0);
  swift_deallocClassInstance();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10004DC20(v65, isa);

  sub_10006A178(v47, v64);
  v35 = *(v0 + 1032);
  v51 = *(v0 + 1024);
  v50 = 0;
LABEL_26:
  sub_10018CE30(*(v0 + 904), type metadata accessor for SESPeerIdentityData);
  v69 = *(v0 + 1048);
  if (v69 == *(v0 + 1016))
  {
LABEL_27:
    *(v0 + 1096) = v35;
    v70 = *(v0 + 1000);
    v71 = *(v0 + 992);

    sub_10006A178(v71, v70);
    if (v51 >> 62)
    {
      goto LABEL_225;
    }

    if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:
      v72 = *(v0 + 952);
      if (v72 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_31;
        }
      }

      else if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v205 = *(v0 + 8);

      return v205();
    }

LABEL_31:

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 134218240;
      if (v35 >> 62)
      {
        v76 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v76 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v77 = *(v0 + 952);
      *(v75 + 4) = v76;

      *(v75 + 12) = 2048;
      if (v77 >> 62)
      {
        v78 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v75 + 14) = v78;

      _os_log_impl(&_mh_execute_header, v73, v74, "Adding %ld shares and removing %ld shares", v75, 0x16u);
    }

    else
    {
    }

    v151 = *(*(v0 + 856) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
    v152 = String._bridgeToObjectiveC()();
    *(v0 + 1104) = v152;
    v153 = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 1112) = v153;
    v154 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 1120) = v154;
    v155 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 1128) = v155;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10017EC78;
    v156 = swift_continuation_init();
    *(v0 + 264) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1001E95B0;
    *(v0 + 232) = &unk_1004C9408;
    *(v0 + 240) = v156;
    [v151 modifyTLKSharesForView:v152 altDSID:v153 addingShares:v154 removingShares:v155 completion:v0 + 208];
    v157 = v0 + 16;

    return _swift_continuation_await(v157);
  }

  v223 = (v0 + 640);
  v230 = (v0 + 656);
  v207 = (v0 + 760);
  v229 = 0x8000000100464D80;
  v231 = v51;
  v233 = v35;
  while (1)
  {
    *(v0 + 1032) = v35;
    *(v0 + 1024) = v51;
    v79 = *(v0 + 1008);
    if ((v79 & 0xC000000000000001) != 0)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v69 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v80 = *(v79 + 8 * v69 + 32);
    }

    v27 = v80;
    *(v0 + 1040) = v80;
    *(v0 + 1048) = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
      goto LABEL_163;
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v81 = [v27 peerData];
    v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData, &unk_10040DFAC);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v85 = *(v0 + 904);
    v86 = *(v0 + 880);
    v87 = *(v0 + 872);
    v88 = *(v0 + 864);
    sub_10006A178(v82, v84);

    (*(v86 + 56))(v88, 0, 1, v87);
    sub_10018CF04(v88, v85, type metadata accessor for SESPeerIdentityData);
    v89 = *(v85 + 48);
    v90 = *(v85 + 56);
    sub_100068FC4(&qword_100504F00, &qword_10040C480);
    v91 = swift_allocObject();
    *(v91 + 109) = 0;
    *(v91 + 110) = -5120;
    *(v91 + 16) = xmmword_10040C130;
    strcpy((v91 + 32), "serialNumber");
    *(v91 + 45) = 0;
    *(v91 + 46) = -5120;
    *(v91 + 48) = 147;
    *(v91 + 56) = 0;
    *(v91 + 64) = 0u;
    *(v91 + 80) = -64;
    *(v91 + 88) = _swiftEmptyArrayStorage;
    strcpy((v91 + 96), "caIdentifier");
    *(v91 + 112) = 66;
    *(v91 + 120) = 0;
    *(v91 + 128) = 0u;
    *(v91 + 144) = -64;
    *(v91 + 152) = _swiftEmptyArrayStorage;
    *(v91 + 160) = 0xD000000000000011;
    *(v91 + 168) = 0x8000000100464D60;
    *(v91 + 176) = 24352;
    *(v91 + 184) = 0;
    *(v91 + 192) = 0u;
    *(v91 + 208) = -64;
    *(v91 + 216) = _swiftEmptyArrayStorage;
    *(v91 + 224) = 0x656761735579656BLL;
    *(v91 + 232) = 0xE800000000000000;
    *(v91 + 240) = 149;
    *(v91 + 248) = 0;
    *(v91 + 256) = 0u;
    *(v91 + 272) = -64;
    *(v91 + 280) = _swiftEmptyArrayStorage;
    strcpy((v91 + 288), "effectiveDate");
    *(v91 + 302) = -4864;
    *(v91 + 304) = 37;
    *(v91 + 312) = 256;
    *(v91 + 320) = 0u;
    *(v91 + 336) = -64;
    *(v91 + 344) = _swiftEmptyArrayStorage;
    strcpy((v91 + 352), "expirationDate");
    *(v91 + 367) = -18;
    *(v91 + 368) = 24356;
    *(v91 + 376) = 256;
    *(v91 + 384) = 0u;
    *(v91 + 400) = -64;
    *(v91 + 408) = _swiftEmptyArrayStorage;
    *(v91 + 416) = 0x4E4944536163;
    *(v91 + 424) = 0xE600000000000000;
    *(v91 + 432) = 69;
    *(v91 + 440) = 0;
    *(v91 + 448) = 0u;
    *(v91 + 464) = -64;
    *(v91 + 472) = _swiftEmptyArrayStorage;
    *(v91 + 480) = 0xD000000000000011;
    *(v91 + 488) = 0x8000000100464D80;
    *(v91 + 496) = 83;
    *(v91 + 504) = 0;
    *(v91 + 512) = 0u;
    *(v91 + 528) = -64;
    *(v91 + 536) = _swiftEmptyArrayStorage;
    *(v91 + 544) = 0x654B63696C627570;
    *(v91 + 552) = 0xE900000000000079;
    *(v91 + 560) = 32585;
    *(v91 + 568) = 0;
    *(v91 + 576) = 0u;
    *(v91 + 592) = -64;
    *(v91 + 600) = _swiftEmptyArrayStorage;
    *(v0 + 320) = 32545;
    *(v0 + 328) = 0;
    *(v0 + 336) = v91;
    *(v0 + 344) = 0;
    *(v0 + 352) = 64;
    *(v0 + 360) = _swiftEmptyArrayStorage;
    *(v0 + 576) = v89;
    *(v0 + 584) = v90;
    sub_100069E2C(v89, v90);
    v92 = sub_1001A93E0((v0 + 576), (v0 + 320));

    sub_10006A178(*(v0 + 576), *(v0 + 584));
    sub_1002A0074(v92, (v0 + 80));
    v93 = *(v0 + 1000);
    v94 = *(v0 + 992);
    v50 = *(v0 + 96);
    v95 = *(v0 + 104);
    *(v0 + 1056) = v50;
    *(v0 + 1064) = v95;
    sub_100069E2C(v50, v95);
    sub_10018C7D0(v0 + 80);
    if (sub_10008FB4C(v50, v95, v94, v93))
    {
      break;
    }

    v47 = *(v0 + 1000);
    v96 = *(v0 + 992);
    sub_100069E2C(v96, v47);
    sub_100069E2C(v50, v95);
    v30 = v27;
    v97 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_10006A178(v96, v47);
    sub_10006A178(v50, v95);

    if (os_log_type_enabled(v97, v31))
    {
      v98 = *(v0 + 1000) >> 62;
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *(v0 + 672) = swift_slowAlloc();
      v215 = v99;
      *v99 = 136315650;
      v210 = v30;
      v212 = v97;
      v209 = v31;
      v208 = v100;
      if (v98 > 1)
      {
        if (v98 == 2)
        {
          v103 = *(*(v0 + 992) + 16);
          v104 = *(*(v0 + 992) + 24);
          v35 = v104 - v103;
          if (__OFSUB__(v104, v103))
          {
            goto LABEL_239;
          }

          if (v35)
          {
            goto LABEL_56;
          }
        }
      }

      else if (v98)
      {
        v105 = *(v0 + 992);
        v106 = *(v0 + 996);
        v107 = __OFSUB__(v106, v105);
        v108 = v106 - v105;
        if (v107)
        {
          goto LABEL_238;
        }

        v35 = v108;
        if (v108)
        {
LABEL_56:
          v47 = *(v0 + 1000) >> 62;
          *(v0 + 656) = _swiftEmptyArrayStorage;
          sub_10019F3C0(0, v35 & ~(v35 >> 63), 0);
          v27 = *(v0 + 656);
          if (v47)
          {
            if (v47 == 2)
            {
              v30 = *(*(v0 + 992) + 16);
              if ((v35 & 0x8000000000000000) == 0)
              {
                goto LABEL_66;
              }

              goto LABEL_235;
            }

            v30 = *(v0 + 992);
            if (v35 < 0)
            {
LABEL_235:
              __break(1u);
              goto LABEL_236;
            }

LABEL_66:
            while (2)
            {
              if (!v35)
              {
                goto LABEL_179;
              }

              v111 = *(v0 + 1000);
              if (v111 >> 62 == 2)
              {
                v118 = *(v0 + 992);
                if (v30 < *(v118 + 16))
                {
                  goto LABEL_214;
                }

                if (v30 >= *(v118 + 24))
                {
                  goto LABEL_216;
                }

                v119 = __DataStorage._bytes.getter();
                if (!v119)
                {
                  goto LABEL_254;
                }

                v115 = v119;
                v120 = __DataStorage._offset.getter();
                v117 = v30 - v120;
                if (__OFSUB__(v30, v120))
                {
                  goto LABEL_218;
                }

LABEL_81:
                v121 = *(v115 + v117);
              }

              else
              {
                if (v111 >> 62 == 1)
                {
                  v112 = *(v0 + 992);
                  if (v30 >= v112 >> 32 || v30 < v112)
                  {
                    goto LABEL_215;
                  }

                  v114 = __DataStorage._bytes.getter();
                  if (!v114)
                  {
                    goto LABEL_253;
                  }

                  v115 = v114;
                  v116 = __DataStorage._offset.getter();
                  v117 = v30 - v116;
                  if (__OFSUB__(v30, v116))
                  {
                    goto LABEL_217;
                  }

                  goto LABEL_81;
                }

                if (v30 >= BYTE6(v111))
                {
                  goto LABEL_213;
                }

                *(v0 + 499) = *(v0 + 992);
                *(v0 + 507) = v111;
                *(v0 + 509) = BYTE2(v111);
                *(v0 + 510) = BYTE3(v111);
                *(v0 + 511) = BYTE4(v111);
                *(v0 + 512) = BYTE5(v111);
                v121 = *(v0 + 499 + v30);
              }

              sub_100068FC4(&qword_100502440, &unk_10040B240);
              v122 = swift_allocObject();
              *(v122 + 16) = xmmword_1004098F0;
              *(v122 + 56) = &type metadata for UInt8;
              *(v122 + 64) = &protocol witness table for UInt8;
              *(v122 + 32) = v121;
              v123 = String.init(format:_:)();
              *v230 = v27;
              v31 = *(v27 + 16);
              v125 = *(v27 + 24);
              v47 = v31 + 1;
              if (v31 >= v125 >> 1)
              {
                v109 = v123;
                v110 = v124;
                sub_10019F3C0((v125 > 1), v31 + 1, 1);
                v124 = v110;
                v123 = v109;
                v27 = *v230;
              }

              *(v27 + 16) = v47;
              v126 = v27 + 16 * v31;
              *(v126 + 32) = v123;
              *(v126 + 40) = v124;
              ++v30;
              if (!--v35)
              {
                goto LABEL_87;
              }

              continue;
            }
          }

          if ((v35 & 0x8000000000000000) == 0)
          {
            v30 = 0;
            goto LABEL_66;
          }

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
          goto LABEL_250;
        }
      }

      else
      {
        v35 = *(v0 + 1006);
        if (*(v0 + 1006))
        {
          goto LABEL_56;
        }
      }

      v27 = _swiftEmptyArrayStorage;
LABEL_87:
      *(v0 + 648) = v27;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v127 = BidirectionalCollection<>.joined(separator:)();
      v47 = v128;

      v129 = sub_1002FFA0C(v127, v47, (v0 + 672));

      *(v215 + 1) = v129;
      *(v215 + 6) = 2080;
      v35 = v95 >> 62;
      v219 = HIDWORD(v50);
      if ((v95 >> 62) > 1)
      {
        if (v35 == 2)
        {
          v131 = *(v50 + 16);
          v130 = *(v50 + 24);
          v31 = v130 - v131;
          if (__OFSUB__(v130, v131))
          {
            goto LABEL_240;
          }

          if (v31)
          {
            goto LABEL_94;
          }
        }
      }

      else if (v35)
      {
        v132 = HIDWORD(v50) - v50;
        if (__OFSUB__(HIDWORD(v50), v50))
        {
          goto LABEL_241;
        }

        v31 = v132;
        if (v132)
        {
LABEL_94:
          *v223 = _swiftEmptyArrayStorage;
          sub_10019F3C0(0, v31 & ~(v31 >> 63), 0);
          v27 = *v223;
          v218 = v50;
          if (v35 != 2)
          {
            if (v35 == 1)
            {
              v30 = v50;
              goto LABEL_103;
            }

            if ((v31 & 0x8000000000000000) == 0)
            {
              v30 = 0;
              goto LABEL_107;
            }

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
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
          }

          v30 = *(v50 + 16);
LABEL_103:
          if (v31 < 0)
          {
LABEL_236:
            __break(1u);
            goto LABEL_237;
          }

LABEL_107:
          v217 = BYTE6(v95);
          while (2)
          {
            if (!v31)
            {
              goto LABEL_180;
            }

            if (v35 == 2)
            {
              if (v30 < *(v50 + 16))
              {
                goto LABEL_219;
              }

              if (v30 >= *(v50 + 24))
              {
                goto LABEL_222;
              }

              v141 = __DataStorage._bytes.getter();
              if (!v141)
              {
                goto LABEL_256;
              }

              v138 = v141;
              v142 = __DataStorage._offset.getter();
              v140 = v30 - v142;
              if (__OFSUB__(v30, v142))
              {
                goto LABEL_224;
              }

LABEL_121:
              v143 = *(v138 + v140);
            }

            else
            {
              if (v35 == 1)
              {
                if (v30 < v50 || v30 >= v50 >> 32)
                {
                  goto LABEL_221;
                }

                v137 = __DataStorage._bytes.getter();
                if (!v137)
                {
                  goto LABEL_255;
                }

                v138 = v137;
                v139 = __DataStorage._offset.getter();
                v140 = v30 - v139;
                if (__OFSUB__(v30, v139))
                {
                  goto LABEL_223;
                }

                goto LABEL_121;
              }

              if (v30 >= BYTE6(v95))
              {
                goto LABEL_220;
              }

              *(v0 + 457) = v50;
              *(v0 + 465) = v95;
              *(v0 + 467) = BYTE2(v95);
              *(v0 + 468) = BYTE3(v95);
              *(v0 + 469) = BYTE4(v95);
              *(v0 + 470) = BYTE5(v95);
              v143 = *(v0 + 457 + v30);
            }

            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v144 = swift_allocObject();
            *(v144 + 16) = xmmword_1004098F0;
            *(v144 + 56) = &type metadata for UInt8;
            *(v144 + 64) = &protocol witness table for UInt8;
            *(v144 + 32) = v143;
            v145 = String.init(format:_:)();
            *v223 = v27;
            v148 = *(v27 + 16);
            v147 = *(v27 + 24);
            v47 = v148 + 1;
            if (v148 >= v147 >> 1)
            {
              v206 = v145;
              v150 = v146;
              sub_10019F3C0((v147 > 1), v148 + 1, 1);
              v146 = v150;
              v145 = v206;
              v27 = *v223;
            }

            *(v27 + 16) = v47;
            v149 = v27 + 16 * v148;
            *(v149 + 32) = v145;
            *(v149 + 40) = v146;
            ++v30;
            if (!--v31)
            {
              goto LABEL_100;
            }

            continue;
          }
        }
      }

      else
      {
        v31 = BYTE6(v95);
        if (BYTE6(v95))
        {
          goto LABEL_94;
        }
      }

      v27 = _swiftEmptyArrayStorage;
LABEL_100:
      v30 = *(v0 + 904);
      *(v0 + 736) = v27;
      v133 = BidirectionalCollection<>.joined(separator:)();
      v47 = v134;

      v135 = sub_1002FFA0C(v133, v47, (v0 + 672));

      *(v215 + 14) = v135;
      *(v215 + 11) = 2112;
      *(v215 + 3) = v210;
      *v208 = v210;
      v136 = v210;
      LODWORD(v47) = v212;
      _os_log_impl(&_mh_execute_header, v212, v209, "Cannot export from my CA %s) to CA %s for peer %@", v215, 0x20u);
      sub_100075768(v208, &unk_100503F70, &unk_10040B2E0);

      swift_arrayDestroy();

      sub_10006A178(v50, v95);
      v102 = v30;
    }

    else
    {
      v101 = *(v0 + 904);
      sub_10006A178(v50, v95);

      v102 = v101;
    }

    sub_10018CE30(v102, type metadata accessor for SESPeerIdentityData);
    v51 = v231;
    v35 = v233;
    v50 = 0;
    v69 = *(v0 + 1048);
    if (v69 == *(v0 + 1016))
    {
      goto LABEL_27;
    }
  }

  v172 = *(v0 + 816);
  v173 = *(v0 + 808);
  sub_10018D04C(*(v0 + 904), *(v0 + 896), type metadata accessor for SESPeerIdentityData);
  sub_100069E2C(v173, v172);
  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.info.getter();
  sub_10006A178(v173, v172);
  if (!os_log_type_enabled(v174, v175))
  {
    v179 = *(v0 + 896);

    sub_10018CE30(v179, type metadata accessor for SESPeerIdentityData);
    goto LABEL_175;
  }

  v176 = *(v0 + 816);
  v177 = *(v0 + 808);
  v178 = swift_slowAlloc();
  *(v0 + 744) = swift_slowAlloc();
  *v178 = 136315394;
  sub_100069E2C(v177, v176);
  sub_100288640(4, v177, v176, (v0 + 544));
  v27 = *(v0 + 544);
  v30 = *(v0 + 552);
  v47 = v30 >> 62;
  v230 = HIDWORD(v27);
  v219 = v174;
  v218 = v175;
  v217 = v178;
  if ((v30 >> 62) <= 1)
  {
    if (!v47)
    {
      v50 = BYTE6(v30);
      goto LABEL_169;
    }

LABEL_167:
    if (__OFSUB__(v230, v27))
    {
      goto LABEL_257;
    }

    v50 = v230 - v27;
    goto LABEL_169;
  }

LABEL_163:
  if (v47 != 2)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_174:
    v183 = *(v0 + 896);
    *(v0 + 768) = v31;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v184 = BidirectionalCollection<>.joined(separator:)();
    v186 = v185;
    sub_10006A178(v27, v30);

    v187 = sub_1002FFA0C(v184, v186, (v0 + 744));

    *(v217 + 1) = v187;
    *(v217 + 6) = 2080;
    v188 = sub_100289B6C();
    v190 = v189;
    sub_10018CE30(v183, type metadata accessor for SESPeerIdentityData);
    v191 = sub_1002FFA0C(v188, v190, (v0 + 744));

    *(v217 + 14) = v191;
    _os_log_impl(&_mh_execute_header, v219, v218, "KeySyncManager: Sharing TLK %s to %s)", v217, 0x16u);
    swift_arrayDestroy();

LABEL_175:
    v192 = swift_task_alloc();
    *(v0 + 1072) = v192;
    *v192 = v0;
    v192[1] = sub_10017C65C;

    return sub_10016C130();
  }

  v181 = *(v27 + 16);
  v180 = *(v27 + 24);
  v50 = v180 - v181;
  if (__OFSUB__(v180, v181))
  {
    __break(1u);
    __break(1u);
    goto LABEL_167;
  }

LABEL_169:
  v31 = _swiftEmptyArrayStorage;
  if (!v50)
  {
    goto LABEL_174;
  }

  *v207 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v50 & ~(v50 >> 63), 0);
  v31 = *v207;
  v229 = v27;
  if (v47 != 2)
  {
    if (v47 == 1)
    {
      v182 = v27;
      goto LABEL_182;
    }

LABEL_184:
    if (v50 < 0)
    {
      goto LABEL_258;
    }

    v182 = 0;
    goto LABEL_186;
  }

LABEL_181:
  v182 = *(v27 + 16);
LABEL_182:
  if (v50 < 0)
  {
    __break(1u);
    goto LABEL_184;
  }

LABEL_186:
  v226 = v27 >> 32;
  v222 = v27 >> 16;
  v225 = v27 >> 8;
  v221 = v27 >> 24;
  v232 = v47;
  v235 = v27;
  while (1)
  {
    if (!v50)
    {
      __break(1u);
LABEL_234:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_16:
      v46 = *(v0 + 1080);
      v47 = *(v0 + 1064);
      v48 = *(v0 + 1056);
      v49 = *(v0 + 1040);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_10006A178(v48, v47);
      v50 = 0;
      v51 = *(v0 + 752);
      v35 = v51;
      goto LABEL_26;
    }

    if (v47 == 2)
    {
      if (v182 < *(v27 + 16))
      {
        goto LABEL_245;
      }

      if (v182 >= *(v27 + 24))
      {
        goto LABEL_247;
      }

      v157 = __DataStorage._bytes.getter();
      if (!v157)
      {
        goto LABEL_260;
      }

      v194 = v157;
      v197 = __DataStorage._offset.getter();
      v196 = v182 - v197;
      if (__OFSUB__(v182, v197))
      {
        goto LABEL_249;
      }

      goto LABEL_200;
    }

    if (v47 != 1)
    {
      if (v182 >= BYTE6(v30))
      {
        goto LABEL_244;
      }

      *(v0 + 471) = v27;
      *(v0 + 472) = v225;
      *(v0 + 473) = v222;
      *(v0 + 474) = v221;
      *(v0 + 475) = v230;
      *(v0 + 476) = BYTE5(v27);
      *(v0 + 477) = BYTE6(v27);
      *(v0 + 478) = HIBYTE(v27);
      *(v0 + 479) = v30;
      *(v0 + 481) = BYTE2(v30);
      *(v0 + 482) = BYTE3(v30);
      *(v0 + 483) = BYTE4(v30);
      *(v0 + 484) = BYTE5(v30);
      v198 = *(v0 + 471 + v182);
      goto LABEL_203;
    }

    if (v182 < v229 || v182 >= v226)
    {
      goto LABEL_246;
    }

    v157 = __DataStorage._bytes.getter();
    if (!v157)
    {
      break;
    }

    v194 = v157;
    v195 = __DataStorage._offset.getter();
    v196 = v182 - v195;
    if (__OFSUB__(v182, v195))
    {
      goto LABEL_248;
    }

LABEL_200:
    v198 = *(v194 + v196);
LABEL_203:
    sub_100068FC4(&qword_100502440, &unk_10040B240);
    v199 = swift_allocObject();
    *(v199 + 16) = xmmword_1004098F0;
    *(v199 + 56) = &type metadata for UInt8;
    *(v199 + 64) = &protocol witness table for UInt8;
    *(v199 + 32) = v198;
    v47 = String.init(format:_:)();
    v201 = v200;
    *v207 = v31;
    v203 = *(v31 + 16);
    v202 = *(v31 + 24);
    if (v203 >= v202 >> 1)
    {
      sub_10019F3C0((v202 > 1), v203 + 1, 1);
      v31 = *v207;
    }

    *(v31 + 16) = v203 + 1;
    v204 = v31 + 16 * v203;
    *(v204 + 32) = v47;
    *(v204 + 40) = v201;
    ++v182;
    --v50;
    LODWORD(v47) = v232;
    v27 = v235;
    if (!v50)
    {
      goto LABEL_174;
    }
  }

  __break(1u);
LABEL_260:
  __break(1u);
  return _swift_continuation_await(v157);
}

uint64_t sub_10017EC78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1136) = v2;
  if (v2)
  {
    v3 = *(v1 + 856);
    v4 = sub_10017F17C;
  }

  else
  {
    v5 = *(v1 + 856);

    v4 = sub_10017EDEC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10017EDEC()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017EEFC(uint64_t a1)
{
  v2 = *(v1 + 976);
  sub_10018C6D8();
  swift_allocError();
  *v3 = v2;

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_10017F010(uint64_t a1)
{
  v2 = v1[135];
  v3 = v1[133];
  v4 = v1[132];
  v5 = v1[130];
  v6 = v1[125];
  v7 = v1[124];
  v8 = v1[113];
  sub_10018C6D8();
  swift_allocError();
  *v9 = v2;

  sub_10006A178(v4, v3);
  sub_10006A178(v7, v6);
  sub_10018CE30(v8, type metadata accessor for SESPeerIdentityData);

  v10 = v1[1];

  return v10();
}

uint64_t sub_10017F17C(uint64_t a1)
{
  v19 = v1;
  v2 = v1[141];
  v3 = v1[140];
  v4 = v1[139];
  v5 = v1[138];
  swift_willThrow();

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_1002FFA0C(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to modifyTLKShares %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v13 = v1[137];
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 23;
  }

  else
  {
    v15 = 24;
  }

  sub_100180988(v15, 0);

  v16 = v1[1];

  return v16();
}

uint64_t sub_10017F3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  type metadata accessor for SEKeySyncRecovery.RecoveryRecord(0);
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_10017F48C, v7, 0);
}

uint64_t sub_10017F48C()
{
  sub_1001F3488(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), (v0 + 152), *(v0 + 120));
  sub_10018CE30(*(v0 + 120), type metadata accessor for SEKeySyncRecovery.RecoveryRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017F644(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v5 = *(v3 + 112);
  if (v1)
  {
    v6 = sub_10017F968;
  }

  else
  {
    v6 = sub_10017F778;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10017F778()
{
  v13 = v0;
  v1 = *(v0 + 144);
  sub_1001F60C4(*(v0 + 136), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 104));

  if (v1)
  {
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1002FFA0C(v6, v7, &v12);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to store recovery record : %s", v4, 0xCu);
      sub_1000752F4(v5);
    }

    *(v0 + 40) = v1;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v9 = *(v0 + 153);
    }

    else
    {
      v9 = 28;
    }

    sub_100180988(v9, 0);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10017F968(uint64_t a1)
{
  v16 = v1;
  v2 = *(v1 + 136);
  sub_10018C6D8();
  v3 = swift_allocError();
  *v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1002FFA0C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to store recovery record : %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  *(v1 + 40) = v3;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v12 = *(v1 + 153);
  }

  else
  {
    v12 = 28;
  }

  sub_100180988(v12, 0);

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_10017FB60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100180F6C(a1);
  if (v3)
  {
    return result;
  }

  if (v6 >> 60 == 15)
  {
    sub_1001A38C8(a1);
    result = sub_100180F6C(a1);
    if (v7 >> 60 == 15)
    {
      LOBYTE(v8) = 27;
      sub_10018C6D8();
      swift_willThrowTypedImpl();
      LOBYTE(result) = 27;
      return result;
    }
  }

  return result;
}

uint64_t sub_10017FD44@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  result = sub_100180F6C(a1);
  if (v3)
  {
    v9 = result;
  }

  else
  {
    if (v8 >> 60 != 15)
    {
      v27 = result;
      v28 = v8;
      v10 = sub_1001A3F58(a1);
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = sub_1003AF3C4(a1, v11);
      v18 = [v17 casdCertificate];

      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = type metadata accessor for SESPeerIdentityData(0);
      v23 = *(v22 + 32);
      static Date.now.getter();
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 56))(&a3[v23], 0, 1, v24);
      v25 = *(v22 + 36);
      sub_1001C5FF8(&a3[v25]);
      v26 = type metadata accessor for CreationMetadata(0);
      result = (*(*(v26 - 8) + 56))(&a3[v25], 0, 1, v26);
      *a3 = v27;
      *(a3 + 1) = v28;
      *(a3 + 2) = v10;
      *(a3 + 3) = v12;
      *(a3 + 4) = v14;
      *(a3 + 5) = v16;
      *(a3 + 6) = v19;
      *(a3 + 7) = v21;
      return result;
    }

    v9 = 27;
    LOBYTE(v29) = 27;
    sub_10018C6D8();
    result = swift_willThrowTypedImpl();
  }

  *a2 = v9;
  return result;
}

BOOL sub_100180030(void *a1, NSObject *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = a2;
  v70 = a4;
  v71 = a5;
  v72 = a3;
  v6 = type metadata accessor for SHA256();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256Digest();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[2];
  v15 = a1[3];
  sub_10026CE44(v80);
  v84 = v14;
  v85 = v15;
  sub_100069E2C(v14, v15);
  v16 = sub_1001A93E0(&v84, v80);
  v66 = v9;
  v67 = v7;
  v68 = v13;
  v69 = v11;
  v17 = v72;
  v18 = v73;
  v99 = v81;
  v100 = v82;
  sub_10018C454(&v99);
  v98 = v83;
  sub_100075768(&v98, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(v84, v85);
  sub_10026DA04(v16, &v84);
  v21 = a1[4];
  v20 = a1[5];
  sub_10026CE44(v87);
  *&v75 = v21;
  *(&v75 + 1) = v20;
  sub_100069E2C(v21, v20);
  v22 = sub_1001A93E0(&v75, v87);
  v96 = v88;
  v97 = v89;
  v23 = v22;
  sub_10018C454(&v96);
  v95 = v90;
  sub_100075768(&v95, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(v75, *(&v75 + 1));
  sub_10026DA04(v23, v91);
  v94 = v86;
  v78 = v86;
  v93 = v92;
  v75 = v92;
  v76 = &type metadata for Data;
  v77 = &protocol witness table for Data;
  v24 = sub_1000752B0(&v75, &type metadata for Data);
  v26 = *v24;
  v25 = v24[1];
  sub_10018CFF0(&v94, v79);
  sub_10018CFF0(&v93, v79);
  sub_10008E4C8(v26, v25, &v78);
  v65 = 0;
  sub_1000752F4(&v75);
  v28 = *(&v78 + 1);
  v27 = v78;
  v79[0] = v78;
  v76 = &type metadata for Data;
  v77 = &protocol witness table for Data;
  *&v75 = v18;
  *(&v75 + 1) = v17;
  v29 = sub_1000752B0(&v75, &type metadata for Data);
  v31 = *v29;
  v30 = v29[1];
  sub_100069E2C(v27, v28);
  sub_100069E2C(v18, v17);
  sub_10008E4C8(v31, v30, v79);
  sub_10006A178(v27, v28);
  sub_1000752F4(&v75);
  v33 = *(&v79[0] + 1);
  v32 = *&v79[0];
  sub_100188AF0(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  v34 = v66;
  v35 = v6;
  dispatch thunk of HashFunction.init()();
  v36 = v33;
  sub_100069E2C(v32, v33);
  sub_100357FC4(v32, v33, v34);
  sub_10006A178(v32, v33);
  v37 = v68;
  dispatch thunk of HashFunction.finalize()();
  (*(v67 + 8))(v34, v35);
  v76 = v10;
  v77 = sub_100188AF0(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v38 = sub_1000B9634(&v75);
  v39 = v69;
  (*(v69 + 16))(v38, v37, v10);
  sub_1000752B0(&v75, v76);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v39 + 8))(v37, v10);
  v40 = *(&v78 + 1);
  v41 = v78;
  sub_1000752F4(&v75);
  sub_10006A178(v32, v36);
  v42 = v72;
  v43 = v73;
  sub_100069E2C(v73, v72);
  v45 = v70;
  v44 = v71;
  sub_100069E2C(v70, v71);
  sub_100069E2C(v41, v40);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  sub_10006A178(v43, v42);
  sub_10006A178(v45, v44);
  sub_10006A178(v41, v40);
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    LODWORD(v69) = v47;
    v49 = v48;
    v74 = swift_slowAlloc();
    *&v75 = v74;
    *v49 = 136315650;
    *&v79[0] = sub_100288788(v43, v42);
    v73 = v46;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v50 = BidirectionalCollection<>.joined(separator:)();
    v51 = v41;
    v53 = v52;

    v54 = sub_1002FFA0C(v50, v53, &v75);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    *&v79[0] = sub_100288788(v70, v71);
    v55 = BidirectionalCollection<>.joined(separator:)();
    v57 = v56;

    v58 = sub_1002FFA0C(v55, v57, &v75);
    v41 = v51;

    *(v49 + 14) = v58;
    *(v49 + 22) = 2080;
    *&v79[0] = sub_100288788(v51, v40);
    v45 = v70;
    v59 = BidirectionalCollection<>.joined(separator:)();
    v61 = v60;

    v62 = sub_1002FFA0C(v59, v61, &v75);
    v44 = v71;

    *(v49 + 24) = v62;
    v63 = v73;
    _os_log_impl(&_mh_execute_header, v73, v69, "For DSID %s expected %s got %s", v49, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v64 = sub_10008FB4C(v41, v40, v45, v44);
  sub_10006A178(v41, v40);
  sub_10018CF9C(v91);
  sub_10018CF9C(&v84);
  return v64;
}

void sub_100180988(uint64_t a1, char a2)
{
  v4 = a1;
  v5 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = objc_opt_self();
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  v30[0] = sub_100285E10(v4);
  v30[1] = v11;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = 1;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10004DC20(v9, isa);

  if ((a2 & 1) == 0)
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 isAlarmSet:v14];

    if ((v15 & 1) == 0 && (*(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped) & 1) == 0)
    {
      v16 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      v17 = *(v6 + 16);
      v29 = v16;
      v28 = v17;
      v17(v8, v2 + v16, v5);
      UserDefaultBacked.wrappedValue.getter();
      v27 = *(v6 + 8);
      v27(v8, v5);
      v18 = v30[0];
      if (v30[0] >= 6)
      {
        v18 = 6;
      }

      v19 = *(&off_1004C40A8 + (v18 & ~(v18 >> 63)) + 4);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134218240;
        v28(v8, v2 + v29, v5);
        UserDefaultBacked.wrappedValue.getter();
        v27(v8, v5);
        *(v22 + 4) = v30[0];

        *(v22 + 12) = 2048;
        *(v22 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "KeySyncManager: Retrying count %ld in %f seconds", v22, 0x16u);
      }

      else
      {
      }

      v23 = String._bridgeToObjectiveC()();
      [v13 setAlarm:v23 secondsFromNow:v19];

      swift_beginAccess();
      v24 = UserDefaultBacked.wrappedValue.modify();
      if (__OFADD__(*v25, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v25;
        v24(v30, 0);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_100180E2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = a2;
      v12 = a3;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v16 = a3;
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    sub_10009393C(0, &qword_100504F70, SESPeerIdentity_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(*(v7 + 64) + 40);
    *v18 = v13;
    v18[1] = v15;
    v18[2] = v17;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_100180F6C(void *a1)
{
  result = sub_1001A3680(a1);
  if (v1)
  {
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_1002FFA0C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to query device identity hash %s", v5, 0xCu);
      sub_1000752F4(v6);
    }

    LOBYTE(v10) = 31;
    sub_10018C6D8();
    swift_willThrowTypedImpl();

    return 31;
  }

  return result;
}

uint64_t sub_1001810DC(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  type metadata accessor for SESPeerIdentityData(0);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for SESTLKShareData(0);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for SESTLKRecordData(0);
  v3[18] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[19] = v4;
  *v4 = v3;
  v4[1] = sub_1001811FC;

  return sub_10016C130();
}

uint64_t sub_1001811FC(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  v4[20] = a1;
  v4[21] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5(v3);
  }

  else
  {
    v7 = v4[13];

    return _swift_task_switch(sub_100181368, v7, 0);
  }
}

uint64_t sub_100181368()
{
  v80 = v0;
  v1 = *(v0 + 168);
  sub_1001A4854(*(v0 + 160), *(*(v0 + 88) + 16), *(*(v0 + 88) + 24), *(*(v0 + 88) + 32), v77);
  if (v1)
  {
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v77[0] = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1002FFA0C(v6, v7, v77);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to createTLK on SE %s", v4, 0xCu);
      sub_1000752F4(v5);
    }

    v9 = *(v0 + 160);
    *(v0 + 176) = 10;
    sub_10018C6D8();
    swift_willThrowTypedImpl();

    v10 = *(v0 + 8);

    return v10(10);
  }

  else
  {
    v63 = v77[0];
    v64 = v77[1];
    v13 = v77[2];
    v12 = v77[3];
    v67 = v77[4];
    v68 = v77[5];
    v69 = v77[6];
    v70 = v77[7];
    v71 = v77[9];
    v72 = v77[11];
    v73 = v77[12];
    v74 = v77[13];
    v75 = v77[14];
    v76 = v77[10];
    v15 = v78;
    v14 = v79;
    v16 = *(v0 + 144);
    v17 = *(v0 + 88);
    v18 = *(*(v0 + 136) + 20);
    sub_100069E2C(v78, v79);
    sub_1001C5FF8((v16 + v18));
    v19 = type metadata accessor for CreationMetadata(0);
    v56 = *(*(v19 - 8) + 56);
    v56(v16 + v18, 0, 1, v19);
    v62 = v15;
    *v16 = v15;
    v16[1] = v14;
    v20 = v14;
    v21 = v17[1];
    v57 = *v17;
    v60 = String._bridgeToObjectiveC()();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v65 = v13;
    v66 = v12;
    v22 = Data._bridgeToObjectiveC()().super.isa;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100188AF0(&qword_100504F60, type metadata accessor for SESTLKRecordData, &unk_10040DF0C);
    v23 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v25 = v24;

    v51 = v19;
    v52 = v21;
    v53 = *(v0 + 160);
    v54 = *(v0 + 96);
    v55 = v20;
    v26 = objc_opt_self();
    v27 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v23, v25);
    v28 = [v26 withView:v60 tlkUUID:isa parentTLKUUID:v22 recordData:v27];

    v29 = [v28 tlkUUID];
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_1001A57D8(v53, v30, v32, v54);
    v35 = v34;
    v36 = v32;
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);
    v39 = *(v0 + 96);
    sub_10018D04C(v39, v37, type metadata accessor for SESPeerIdentityData);
    sub_10018D04C(v39, v37 + v38[5], type metadata accessor for SESPeerIdentityData);
    v40 = v38[7];
    sub_100069E2C(v33, v35);
    sub_1001C5FF8((v37 + v40));
    v56((v37 + v40), 0, 1, v51);
    v41 = v38[6];
    v42 = v36;
    v43 = (v37 + v41);
    *v43 = v33;
    v43[1] = v35;
    v61 = sub_1001C89E8(v57, v21, v30, v36, v37);
    v44 = *(v0 + 160);
    v59 = *(v0 + 96);
    sub_10018CE30(*(v0 + 128), type metadata accessor for SESTLKShareData);
    sub_10006A178(v33, v35);
    sub_10006A178(v30, v42);
    v45 = [v28 tlkUUID];
    v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    sub_1001F60C4(v44, v57, v52, v46, v48, v59);
    v49 = *(v0 + 160);
    sub_10018CE30(*(v0 + 144), type metadata accessor for SESTLKRecordData);
    sub_10006A178(v62, v55);
    sub_10006A178(v46, v48);

    sub_10006A178(v63, v64);
    sub_10006A178(v65, v66);
    sub_10006A178(v67, v68);
    sub_10006A178(v69, v70);
    sub_10006A2D0(v71, v76);
    sub_10006A2D0(v72, v73);
    sub_10006A2D0(v74, v75);

    v50 = *(v0 + 8);

    return v50(v28, v61);
  }
}

BOOL sub_100182150(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 view];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == *a2 && v9 == a2[1])
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = [v5 targetPeerIdentifier];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = sub_10008FB4C(v14, v16, *a3, *(a3 + 8));
  sub_10006A178(v14, v16);
  return v17;
}

BOOL sub_100182254(id *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [*a1 tlkUUID];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  LOBYTE(a3) = sub_10008FB4C(v9, v11, a2, a3);
  sub_10006A178(v9, v11);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v12 = [v7 sourcePeerIdentifier];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v7 targetPeerIdentifier];
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  LOBYTE(v16) = sub_10008FB4C(v13, v15, v17, v19);
  sub_10006A178(v17, v19);
  sub_10006A178(v13, v15);
  if (v16)
  {
    return 0;
  }

  v21 = [v7 targetPeerIdentifier];
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = sub_10008FB4C(v22, v24, *a4, *(a4 + 8));
  sub_10006A178(v22, v24);
  return v25;
}

BOOL sub_1001823DC(id *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [*a1 tlkUUID];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  LOBYTE(a3) = sub_10008FB4C(v9, v11, a2, a3);
  sub_10006A178(v9, v11);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v12 = [v7 sourcePeerIdentifier];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v7 targetPeerIdentifier];
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  LOBYTE(v16) = sub_10008FB4C(v13, v15, v17, v19);
  sub_10006A178(v17, v19);
  sub_10006A178(v13, v15);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v20 = [v7 targetPeerIdentifier];
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = sub_10008FB4C(v21, v23, *a4, *(a4 + 8));
  sub_10006A178(v21, v23);
  return v24;
}

BOOL sub_100182564(uint64_t *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = [a2 tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v8;
  v13[5] = a5;
  v11 = sub_1002FB068(sub_10018C874, v13, v10);

  return (v11 & 1) == 0;
}

BOOL sub_100182648(id *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a1;
  v10 = [*a1 tlkUUID];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  LOBYTE(a3) = sub_10008FB4C(v11, v13, a2, a3);
  sub_10006A178(v11, v13);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v14 = [v9 targetPeerIdentifier];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [a4 peerIdentifier];
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  LOBYTE(v18) = sub_10008FB4C(v15, v17, v19, v21);
  sub_10006A178(v19, v21);
  sub_10006A178(v15, v17);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v22 = [v9 sourcePeerIdentifier];
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [v9 targetPeerIdentifier];
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  LOBYTE(v26) = sub_10008FB4C(v23, v25, v27, v29);
  sub_10006A178(v27, v29);
  sub_10006A178(v23, v25);
  if (v26)
  {
    return 1;
  }

  v31 = [v9 sourcePeerIdentifier];
  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = sub_10008FB4C(v32, v34, *a5, *(a5 + 8));
  sub_10006A178(v32, v34);
  return v35;
}

uint64_t sub_100182868(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v181 = a5;
  v187 = a4;
  v10 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v10 - 8);
  v179 = &v165 - v11;
  v184 = type metadata accessor for Date();
  v12 = *(v184 - 8);
  __chkstk_darwin(v184);
  v180 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v165 - v15;
  v17 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v165 - v19;
  v21 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_recoveryPending;
  swift_beginAccess();
  v22 = *(v6 + v21);

  v182 = a1;
  LOBYTE(a1) = sub_1000C6B9C(a1, a2, v22);

  if (a1)
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v199 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1002FFA0C(v182, a2, &v199);
      _os_log_impl(&_mh_execute_header, v23, v24, "Recovery for view %s is already in flight ... ", v25, 0xCu);
      sub_1000752F4(v26);
    }

    return 0;
  }

  v178 = a2;
  v176 = v16;
  v175 = v12;
  v28 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce;
  swift_beginAccess();
  v29 = *(v18 + 16);
  v29(v20, v6 + v28, v17);
  UserDefaultBacked.wrappedValue.getter();
  v30 = *(v18 + 8);
  v30(v20, v17);
  if (v198 == 1)
  {
    v31 = v178;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v198 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1002FFA0C(v182, v31, &v198);
      _os_log_impl(&_mh_execute_header, v32, v33, "Forcing recovery for view %s", v34, 0xCu);
      sub_1000752F4(v35);
    }

    LOBYTE(__s1[0]) = 0;
    swift_beginAccess();
    UserDefaultBacked.wrappedValue.setter();
    swift_endAccess();
    return 1;
  }

  v36 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryRequiredPref;
  swift_beginAccess();
  v29(v20, v6 + v36, v17);
  UserDefaultBacked.wrappedValue.getter();
  v30(v20, v17);
  if (__s1[0])
  {
    return 1;
  }

  v37 = [a3 tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v38 >> 62)
  {
    goto LABEL_225;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v40 = v184;
    v41 = v187;
    if (!v39)
    {
LABEL_197:

      v135 = v178;

      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        __s1[0] = v139;
        *v138 = 136315138;
        *(v138 + 4) = sub_1002FFA0C(v182, v135, __s1);
        _os_log_impl(&_mh_execute_header, v136, v137, "Recovery is required because view %s doesn't have any trusted peer with a self share", v138, 0xCu);
        sub_1000752F4(v139);
      }

      return 1;
    }

    v42 = 0;
    v168 = 0;
    v174 = v38 & 0xC000000000000001;
    v173 = v38 & 0xFFFFFFFFFFFFFF8;
    v172 = v38 + 32;
    v43 = v187 & 0xFFFFFFFFFFFFFF8;
    v188 = v187 & 0xFFFFFFFFFFFFFF8;
    if (v187 < 0)
    {
      v43 = v187;
    }

    v165 = v43;
    v186 = v187 & 0xC000000000000001;
    v170 = v187 >> 62;
    v185 = v6;
    v169 = v38;
    v167 = v39;
    while (1)
    {
      if (v174)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v42 >= *(v173 + 16))
        {
          goto LABEL_219;
        }

        v44 = *(v172 + 8 * v42);
      }

      v189 = v44;
      v45 = __OFADD__(v42, 1);
      v46 = v42 + 1;
      if (v45)
      {
        goto LABEL_218;
      }

      v177 = v46;
      v47 = v189;
      v48 = [v189 sourcePeerIdentifier];
      v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = [v47 targetPeerIdentifier];
      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = v51 >> 62;
      v57 = v55 >> 62;
      if (v51 >> 62 == 3)
      {
        v58 = 0;
        if (!v49 && v51 == 0xC000000000000000 && v55 >> 62 == 3)
        {
          v58 = 0;
          if (!v53 && v55 == 0xC000000000000000)
          {
            sub_10006A178(0, 0xC000000000000000);
            v59 = 0;
            v60 = 0xC000000000000000;
            goto LABEL_51;
          }
        }
      }

      else if (v56)
      {
        if (v56 == 1)
        {
          LODWORD(v58) = HIDWORD(v49) - v49;
          if (__OFSUB__(HIDWORD(v49), v49))
          {
            goto LABEL_231;
          }

          v58 = v58;
        }

        else
        {
          v62 = *(v49 + 16);
          v61 = *(v49 + 24);
          v45 = __OFSUB__(v61, v62);
          v58 = v61 - v62;
          if (v45)
          {
            goto LABEL_230;
          }
        }
      }

      else
      {
        v58 = BYTE6(v51);
      }

      if (v57 > 1)
      {
        if (v57 != 2)
        {
          if (!v58)
          {
            break;
          }

LABEL_18:

          sub_10006A178(v53, v55);
          sub_10006A178(v49, v51);
          goto LABEL_19;
        }

        v64 = *(v53 + 16);
        v63 = *(v53 + 24);
        v45 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v45)
        {
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
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
LABEL_240:
          __break(1u);
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
        }

        if (v58 != v65)
        {
          goto LABEL_18;
        }
      }

      else if (v57)
      {
        if (__OFSUB__(HIDWORD(v53), v53))
        {
          goto LABEL_227;
        }

        if (v58 != HIDWORD(v53) - v53)
        {
          goto LABEL_18;
        }
      }

      else if (v58 != BYTE6(v55))
      {
        goto LABEL_18;
      }

      if (v58 < 1)
      {
        break;
      }

      sub_100069E2C(v53, v55);
      v66 = v168;
      v67 = sub_10008C678(v49, v51, v53, v55);
      v168 = v66;
      sub_10006A178(v49, v51);
      sub_10006A178(v53, v55);
      if (v67)
      {
        v41 = v187;
        goto LABEL_52;
      }

      v41 = v187;
LABEL_19:
      v42 = v177;
      if (v177 == v39)
      {
        goto LABEL_197;
      }
    }

    sub_10006A178(v53, v55);
    v59 = v49;
    v60 = v51;
LABEL_51:
    sub_10006A178(v59, v60);
LABEL_52:
    if (!v170)
    {
      v68 = *(v188 + 16);
      if (v68)
      {
        goto LABEL_54;
      }

      goto LABEL_196;
    }

    v68 = _CocoaArrayWrapper.endIndex.getter();
    if (!v68)
    {
LABEL_196:

      v38 = v169;
      v39 = v167;
      goto LABEL_19;
    }

LABEL_54:
    v69 = 0;
    v183 = v68;
LABEL_58:
    if (v186)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v69 >= *(v188 + 16))
      {
        goto LABEL_217;
      }

      v70 = *(v41 + 8 * v69 + 32);
    }

    v71 = v70;
    v72 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      v39 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }

    break;
  }

  v73 = [v189 sourcePeerIdentifier];
  v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v75;

  v190 = v71;
  v76 = [v71 peerIdentifier];
  v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  v80 = v6 >> 62;
  v38 = v79 >> 62;
  if (v6 >> 62 == 3)
  {
    v81 = 0;
    if (!v74 && v6 == 0xC000000000000000 && v79 >> 62 == 3)
    {
      v81 = 0;
      if (!v77 && v79 == 0xC000000000000000)
      {

        sub_10006A178(0, 0xC000000000000000);
        v140 = 0;
        v141 = 0xC000000000000000;
        goto LABEL_202;
      }
    }

LABEL_78:
    if (v38 <= 1)
    {
      goto LABEL_79;
    }

LABEL_72:
    if (v38 == 2)
    {
      v83 = *(v77 + 16);
      v82 = *(v77 + 24);
      v45 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v45)
      {
        goto LABEL_220;
      }

LABEL_81:
      if (v81 == v84)
      {
        goto LABEL_85;
      }
    }

    else if (!v81)
    {
      goto LABEL_200;
    }

LABEL_56:

    sub_10006A178(v77, v79);
    sub_10006A178(v74, v6);
LABEL_57:
    ++v69;
    v6 = v185;
    if (v72 == v183)
    {
      goto LABEL_196;
    }

    goto LABEL_58;
  }

  if (v80 <= 1)
  {
    if (v80)
    {
      LODWORD(v81) = HIDWORD(v74) - v74;
      if (__OFSUB__(HIDWORD(v74), v74))
      {
        goto LABEL_222;
      }

      v81 = v81;
      if (v38 <= 1)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v81 = BYTE6(v6);
      if (v38 <= 1)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_72;
  }

  if (v80 == 2)
  {
    v86 = *(v74 + 16);
    v85 = *(v74 + 24);
    v45 = __OFSUB__(v85, v86);
    v81 = v85 - v86;
    if (v45)
    {
      goto LABEL_223;
    }

    goto LABEL_78;
  }

  v81 = 0;
  if (v38 > 1)
  {
    goto LABEL_72;
  }

LABEL_79:
  if (!v38)
  {
    v84 = BYTE6(v79);
    goto LABEL_81;
  }

  if (__OFSUB__(HIDWORD(v77), v77))
  {
    goto LABEL_221;
  }

  if (v81 != HIDWORD(v77) - v77)
  {
    goto LABEL_56;
  }

LABEL_85:
  if (v81 < 1)
  {
    goto LABEL_200;
  }

  if (v80 > 1)
  {
    if (v80 != 2)
    {
      memset(__s1, 0, 14);
      if (!v38)
      {
LABEL_116:
        __s2 = v77;
        v192 = v79;
        v193 = BYTE2(v79);
        v194 = BYTE3(v79);
        v195 = BYTE4(v79);
        v196 = BYTE5(v79);
        v104 = memcmp(__s1, &__s2, BYTE6(v79));

        sub_10006A178(v74, v6);
        sub_10006A178(v77, v79);
        if (!v104)
        {
          goto LABEL_201;
        }

        goto LABEL_57;
      }

      if (v38 == 2)
      {
        v99 = *(v77 + 16);
        v100 = *(v77 + 24);
        v101 = __DataStorage._bytes.getter();
        if (v101)
        {
          v102 = __DataStorage._offset.getter();
          if (__OFSUB__(v99, v102))
          {
            goto LABEL_242;
          }

          v101 += v99 - v102;
        }

        v45 = __OFSUB__(v100, v99);
        v38 = v100 - v99;
        if (v45)
        {
          goto LABEL_235;
        }

        v103 = __DataStorage._length.getter();
        v40 = v184;
        if (!v101)
        {
          goto LABEL_250;
        }

LABEL_137:
        if (v103 >= v38)
        {
          v115 = v38;
        }

        else
        {
          v115 = v103;
        }

        v116 = memcmp(__s1, v101, v115);

        sub_10006A178(v74, v6);
        v117 = v77;
        v118 = v79;
LABEL_190:
        sub_10006A178(v117, v118);
        v41 = v187;
        if (!v116)
        {
          goto LABEL_201;
        }

        goto LABEL_57;
      }

      v38 = v77;
      v87 = (v77 >> 32) - v77;
      if (v77 >> 32 < v77)
      {
        goto LABEL_233;
      }

      v119 = __DataStorage._bytes.getter();
      if (!v119)
      {
        goto LABEL_260;
      }

      v120 = v119;
      v121 = __DataStorage._offset.getter();
      if (__OFSUB__(v77, v121))
      {
        goto LABEL_237;
      }

      v91 = (v77 - v121 + v120);
      result = __DataStorage._length.getter();
      if (!v91)
      {
        goto LABEL_261;
      }

LABEL_145:
      if (result >= v87)
      {
        v122 = v87;
      }

      else
      {
        v122 = result;
      }

      v123 = memcmp(__s1, v91, v122);

      sub_10006A178(v74, v6);
      sub_10006A178(v77, v79);
      v41 = v187;
      v40 = v184;
      if (v123)
      {
        goto LABEL_57;
      }

LABEL_201:

      goto LABEL_203;
    }

    v92 = *(v74 + 16);
    v93 = __DataStorage._bytes.getter();
    if (v93)
    {
      v94 = v93;
      v95 = __DataStorage._offset.getter();
      if (__OFSUB__(v92, v95))
      {
        goto LABEL_228;
      }

      v171 = v92 - v95 + v94;
    }

    else
    {
      v171 = 0;
    }

    __DataStorage._length.getter();
    if (v38 == 2)
    {
      v124 = *(v77 + 16);
      v166 = *(v77 + 24);
      v108 = __DataStorage._bytes.getter();
      if (v108)
      {
        v125 = __DataStorage._offset.getter();
        if (__OFSUB__(v124, v125))
        {
          goto LABEL_244;
        }

        v108 += v124 - v125;
      }

      v45 = __OFSUB__(v166, v124);
      v38 = v166 - v124;
      if (v45)
      {
        goto LABEL_239;
      }

      v126 = __DataStorage._length.getter();
      if (v126 >= v38)
      {
        v127 = v38;
      }

      else
      {
        v127 = v126;
      }

      result = v171;
      if (!v171)
      {
        goto LABEL_263;
      }

      v40 = v184;
      if (!v108)
      {
        goto LABEL_262;
      }

      goto LABEL_188;
    }

    if (v38 == 1)
    {
      v38 = (v77 >> 32) - v77;
      if (v77 >> 32 < v77)
      {
        goto LABEL_236;
      }

      v105 = __DataStorage._bytes.getter();
      if (v105)
      {
        v106 = v105;
        v107 = __DataStorage._offset.getter();
        if (__OFSUB__(v77, v107))
        {
          goto LABEL_245;
        }

        v108 = (v77 - v107 + v106);
      }

      else
      {
        v108 = 0;
      }

      v133 = __DataStorage._length.getter();
      if (v133 >= v38)
      {
        v127 = (v77 >> 32) - v77;
      }

      else
      {
        v127 = v133;
      }

      result = v171;
      if (!v171)
      {
        goto LABEL_259;
      }

      v40 = v184;
      if (!v108)
      {
        goto LABEL_258;
      }

LABEL_188:
      if (result != v108)
      {
        v116 = memcmp(result, v108, v127);

        sub_10006A178(v77, v79);
        v117 = v74;
        v118 = v6;
        goto LABEL_190;
      }

LABEL_200:

      sub_10006A178(v77, v79);
      v140 = v74;
      v141 = v6;
LABEL_202:
      sub_10006A178(v140, v141);
LABEL_203:
      v142 = v181;
      v143 = type metadata accessor for SESPeerIdentityData(0);
      v144 = v179;
      sub_1000938D4(v142 + *(v143 + 32), v179, &qword_1005031F0, &unk_10040C4C0);
      v145 = v175;
      v146 = *(v175 + 48);
      v147 = v146(v144, 1, v40);
      v148 = v180;
      if (v147 == 1)
      {
        v149 = v176;
        static Date.now.getter();
        if (v146(v144, 1, v40) != 1)
        {
          sub_100075768(v144, &qword_1005031F0, &unk_10040C4C0);
        }
      }

      else
      {
        v149 = v176;
        (*(v145 + 32))(v176, v144, v40);
      }

      Date.timeIntervalSinceNow.getter();
      v151 = fabs(v150);
      (*(v145 + 16))(v148, v149, v40);
      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        __s1[0] = v155;
        *v154 = 136315394;
        sub_100188AF0(&qword_100504F38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v156 = dispatch thunk of CustomStringConvertible.description.getter();
        v158 = v157;
        v159 = *(v145 + 8);
        v159(v148, v40);
        v160 = sub_1002FFA0C(v156, v158, __s1);

        *(v154 + 4) = v160;
        *(v154 + 12) = 2048;
        *(v154 + 14) = v151;
        _os_log_impl(&_mh_execute_header, v152, v153, "Identity has existed since %s with delta %f", v154, 0x16u);
        sub_1000752F4(v155);
      }

      else
      {

        v159 = *(v145 + 8);
        v159(v148, v40);
      }

      if (v151 <= 86400.0)
      {
        v161 = objc_opt_self();
        v162 = String._bridgeToObjectiveC()();
        v163 = [v161 isAlarmSet:v162];

        if ((v163 & 1) == 0)
        {
          v164 = String._bridgeToObjectiveC()();
          [v161 setAlarm:v164 secondsFromNow:86400.0 - v151 + 300.0];
        }

        v159(v176, v40);
        return 0;
      }

      v159(v176, v40);
      return 1;
    }

    v41 = v187;
    v128 = v171;
    __s1[0] = v77;
    LOWORD(__s1[1]) = v79;
    BYTE2(__s1[1]) = BYTE2(v79);
    BYTE3(__s1[1]) = BYTE3(v79);
    BYTE4(__s1[1]) = BYTE4(v79);
    BYTE5(__s1[1]) = BYTE5(v79);
    v40 = v184;
    if (!v171)
    {
      goto LABEL_254;
    }

LABEL_173:
    v132 = memcmp(v128, __s1, BYTE6(v79));

    sub_10006A178(v77, v79);
    sub_10006A178(v74, v6);
    if (!v132)
    {
      goto LABEL_201;
    }

    goto LABEL_57;
  }

  if (v80)
  {
    if (v74 > v74 >> 32)
    {
      goto LABEL_224;
    }

    v96 = __DataStorage._bytes.getter();
    if (v96)
    {
      v97 = v96;
      v98 = __DataStorage._offset.getter();
      if (__OFSUB__(v74, v98))
      {
        goto LABEL_229;
      }

      v171 = v74 - v98 + v97;
    }

    else
    {
      v171 = 0;
    }

    __DataStorage._length.getter();
    if (v38 == 2)
    {
      v129 = *(v77 + 16);
      v166 = *(v77 + 24);
      v108 = __DataStorage._bytes.getter();
      if (v108)
      {
        v130 = __DataStorage._offset.getter();
        if (__OFSUB__(v129, v130))
        {
          goto LABEL_246;
        }

        v108 += v129 - v130;
      }

      v45 = __OFSUB__(v166, v129);
      v38 = v166 - v129;
      if (v45)
      {
        goto LABEL_241;
      }

      v131 = __DataStorage._length.getter();
      if (v131 >= v38)
      {
        v127 = v38;
      }

      else
      {
        v127 = v131;
      }

      result = v171;
      if (!v171)
      {
        goto LABEL_253;
      }

      v40 = v184;
      if (!v108)
      {
        goto LABEL_252;
      }

      goto LABEL_188;
    }

    if (v38 == 1)
    {
      v38 = (v77 >> 32) - v77;
      if (v77 >> 32 < v77)
      {
        goto LABEL_240;
      }

      v109 = __DataStorage._bytes.getter();
      if (v109)
      {
        v110 = v109;
        v111 = __DataStorage._offset.getter();
        if (__OFSUB__(v77, v111))
        {
          goto LABEL_247;
        }

        v108 = (v77 - v111 + v110);
      }

      else
      {
        v108 = 0;
      }

      v134 = __DataStorage._length.getter();
      if (v134 >= v38)
      {
        v127 = (v77 >> 32) - v77;
      }

      else
      {
        v127 = v134;
      }

      result = v171;
      if (!v171)
      {
        goto LABEL_257;
      }

      v40 = v184;
      if (!v108)
      {
        goto LABEL_256;
      }

      goto LABEL_188;
    }

    v41 = v187;
    v128 = v171;
    __s1[0] = v77;
    LOWORD(__s1[1]) = v79;
    BYTE2(__s1[1]) = BYTE2(v79);
    BYTE3(__s1[1]) = BYTE3(v79);
    BYTE4(__s1[1]) = BYTE4(v79);
    BYTE5(__s1[1]) = BYTE5(v79);
    v40 = v184;
    if (!v171)
    {
      goto LABEL_249;
    }

    goto LABEL_173;
  }

  __s1[0] = v74;
  LOWORD(__s1[1]) = v6;
  BYTE2(__s1[1]) = BYTE2(v6);
  BYTE3(__s1[1]) = BYTE3(v6);
  BYTE4(__s1[1]) = BYTE4(v6);
  BYTE5(__s1[1]) = BYTE5(v6);
  if (!v38)
  {
    goto LABEL_116;
  }

  if (v38 != 1)
  {
    v112 = *(v77 + 16);
    v113 = *(v77 + 24);
    v101 = __DataStorage._bytes.getter();
    if (v101)
    {
      v114 = __DataStorage._offset.getter();
      if (__OFSUB__(v112, v114))
      {
        goto LABEL_243;
      }

      v101 += v112 - v114;
    }

    v45 = __OFSUB__(v113, v112);
    v38 = v113 - v112;
    if (v45)
    {
      goto LABEL_234;
    }

    v103 = __DataStorage._length.getter();
    v40 = v184;
    if (!v101)
    {
      goto LABEL_251;
    }

    goto LABEL_137;
  }

  v38 = v77;
  v87 = (v77 >> 32) - v77;
  if (v77 >> 32 < v77)
  {
    goto LABEL_232;
  }

  v88 = __DataStorage._bytes.getter();
  if (v88)
  {
    v89 = v88;
    v90 = __DataStorage._offset.getter();
    if (__OFSUB__(v77, v90))
    {
      goto LABEL_238;
    }

    v91 = (v77 - v90 + v89);
    result = __DataStorage._length.getter();
    if (!v91)
    {
      goto LABEL_255;
    }

    goto LABEL_145;
  }

  __DataStorage._length.getter();
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
  result = __DataStorage._length.getter();
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
  return result;
}

BOOL sub_100183F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v5 - 8);
  v7 = v54 - v6;
  v8 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v8 - 8);
  v10 = (v54 - v9);
  v11 = type metadata accessor for SESTLKRecordData(0);
  __chkstk_darwin(v11);
  v13 = (v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = v54 - v15;
  sub_1001C5D54(v13);
  sub_10018CF04(v13, v16, type metadata accessor for SESTLKRecordData);
  sub_1000938D4(&v16[*(v11 + 20)], v10, &qword_100504F08, &unk_10040DE20);
  v17 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    sub_100075768(v10, &qword_100504F08, &unk_10040DE20);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = *v10;
    v19 = v10[1];

    sub_10018CE30(v10, type metadata accessor for CreationMetadata);
  }

  v56 = v7;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v54[1] = v3;
    v55 = v16;
    v23 = v22;
    v24 = swift_slowAlloc();
    v54[0] = a2;
    v25 = v24;
    v57[0] = v24;
    *v23 = 136315138;
    v26 = v18;
    if (v19)
    {
      v27 = v18;
    }

    else
    {
      v27 = 0x3E6C696E3CLL;
    }

    if (v19)
    {
      v28 = v19;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = sub_1002FFA0C(v27, v28, v57);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "TLK was created on version %s", v23, 0xCu);
    sub_1000752F4(v25);
    a2 = v54[0];

    v16 = v55;

    if (!v19)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v26 = v18;

    if (!v19)
    {
      goto LABEL_30;
    }
  }

  v30 = sub_1001850D4(v26, v19);
  if (v32)
  {
    if (v30 >= 22)
    {

LABEL_17:

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = v26;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v57[0] = v37;
        *v36 = 136315138;
        v38 = sub_1002FFA0C(v35, v19, v57);

        *(v36 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v33, v34, "Not forcing recovery of TLK created on newer version %s", v36, 0xCu);
        sub_1000752F4(v37);
      }

      else
      {
      }

      sub_100180988(17, 0);
      sub_10018CE30(v16, type metadata accessor for SESTLKRecordData);
      return 0;
    }

    if (v30 != 21 || (v31 == 66 ? (v39 = v32 == 0xE100000000000000) : (v39 = 0), v39))
    {
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v40)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_30:
  if (qword_100501D60 != -1)
  {
    swift_once();
  }

  v41 = sub_10031F8AC();
  v42 = v56;
  v44 = v41;
  v45 = type metadata accessor for SESPeerIdentityData(0);
  sub_1000938D4(a2 + *(v45 + 32), v42, &qword_1005031F0, &unk_10040C4C0);
  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v42, 1, v46) == 1)
  {
    sub_100075768(v42, &qword_1005031F0, &unk_10040C4C0);
    v48 = 0.0;
  }

  else
  {
    Date.timeIntervalSinceNow.getter();
    v48 = v49;
    (*(v47 + 8))(v42, v46);
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 67109376;
    *(v52 + 4) = v44;
    *(v52 + 8) = 2048;
    *(v52 + 10) = v48;
    _os_log_impl(&_mh_execute_header, v50, v51, "Recovery blob haveFidoKeys %{BOOL}d identityAge %f", v52, 0x12u);
  }

  sub_10018CE30(v16, type metadata accessor for SESTLKRecordData);
  v53 = 172800.0;
  if (v44)
  {
    v53 = 1209600.0;
  }

  return v53 < fabs(v48);
}

uint64_t sub_10018485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v12;
  *(v8 + 56) = v11;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  type metadata accessor for SEKeySyncRecovery.RecoveryRecord(0);
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100184908, 0, 0);
}

uint64_t sub_100184908()
{
  v1 = [*(v0 + 32) currentTLK];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = [v1 tlkUUID];

    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v0 + 88) = v12;
    *(v0 + 96) = v14;
    v15 = [v7 isProd];
    sub_1001F3488(v10, v9, v12, v14, v8, v6, (v0 + 128), v5);
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *v16 = v0;
    v16[1] = sub_100184B00;
    v17 = *(v0 + 80);
    v18 = *(v0 + 40);

    return sub_1001F8290(v17, v18, v15);
  }

  else
  {
    __break(1u);
    return _swift_task_switch(0, v2, v3);
  }
}

uint64_t sub_100184B00()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100184CA0;
  }

  else
  {
    v2 = sub_100184C14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100184C14()
{
  v1 = v0[10];
  sub_10006A178(v0[11], v0[12]);
  sub_10018CE30(v1, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  v0[15] = 0;
  v2 = v0[9];

  return _swift_task_switch(sub_100184D30, v2, 0);
}

uint64_t sub_100184CA0()
{
  v1 = v0[10];
  sub_10006A178(v0[11], v0[12]);
  sub_10018CE30(v1, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  v0[15] = v0[14];
  v2 = v0[9];

  return _swift_task_switch(sub_100184D30, v2, 0);
}

uint64_t sub_100184D30()
{
  sub_100184E0C(*(v0 + 16), *(v0 + 24), *(v0 + 120));

  return _swift_task_switch(sub_100184DA0, 0, 0);
}

uint64_t sub_100184DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100184E0C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  swift_beginAccess();
  sub_10010E7A0(a1, a2);
  swift_endAccess();

  if (a3)
  {
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1002FFA0C(v13, v14, v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to recover : %s", v11, 0xCu);
      sub_1000752F4(v12);
    }

    v22[0] = a3;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v16 = v21;
    }

    else
    {
      v16 = 28;
    }

    sub_100180988(v16, 0);
  }

  else
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_1001608B4(0, 0, v8, &unk_10040C4B8, v19);

    return sub_100075768(v8, &qword_100504250, &qword_10040D610);
  }
}

unsigned __int8 *sub_1001850D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100068FC4(&qword_100504F10, &qword_10040C4D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100068FC4(&qword_100504F18, &qword_10040C4D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_100068FC4(&qword_100504F20, &qword_10040C4E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  sub_100068FC4(&qword_100504F28, &qword_10040C4E8);
  Regex.init(_regexString:version:)();
  Regex.firstMatch(in:)();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    Regex.Match.output.getter();
    v14 = v25;
    v15 = v26;
    v23 = v27;
    v24 = v28;

    if ((v15 ^ v14) >> 14)
    {
      v16 = sub_100189EEC(v14, v15, v23, v24, 10);
      if ((v17 & 0x100) != 0)
      {
        v19 = sub_1001894E0(v14, v15, v23, v24, 10);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
LABEL_11:
          Regex.Match.output.getter();

          Substring.uppercased()();

          (*(v6 + 8))(v8, v5);
          (*(v10 + 8))(v12, v9);
          return v19;
        }
      }

      else
      {
        v18 = v17;
        v19 = v16;

        if ((v18 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  (*(v10 + 8))(v12, v9);
  sub_100075768(v4, &qword_100504F10, &qword_10040C4D0);
  return 0;
}

uint64_t sub_100185508()
{
  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  v1 = sub_1000B3934(&off_1004C4768);
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1001855E4;

  return sub_10015F214(v1);
}

uint64_t sub_1001855E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001856F4()
{
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100185784;

  return sub_10016C130();
}

uint64_t sub_100185784(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  v5 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v6 = v5[1];

    return v6(v3);
  }

  else
  {
    v8 = v4[6];

    return _swift_task_switch(sub_1001858D8, v8, 0);
  }
}

uint64_t sub_1001858D8()
{
  v16 = v0;
  v1 = *(v0 + 72);
  v2 = sub_1001A2ED8(*(v0 + 64));
  if (v1)
  {
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_1002FFA0C(v7, v8, &v15);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to list TLKS : %s", v5, 0xCu);
      sub_1000752F4(v6);
    }

    v10 = *(v0 + 64);
    *(v0 + 80) = 12;
    sub_10018C6D8();
    swift_willThrowTypedImpl();

    v11 = *(v0 + 8);
    v12 = 12;
  }

  else
  {
    v13 = v2;

    v11 = *(v0 + 8);
    v12 = v13;
  }

  return v11(v12);
}

uint64_t sub_100185AA8(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  return _swift_task_switch(sub_100185ACC, v2, 0);
}

uint64_t sub_100185ACC()
{
  v1 = sub_10013044C(0xD000000000000018, 0x8000000100464E20);
  *(v0 + 280) = v2;
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 288) = v1;
    *(v0 + 112) = 0x4354502D4553;
    *(v0 + 120) = 0xE600000000000000;
    *(v0 + 128) = v1;
    *(v0 + 136) = v2;
    *(v0 + 144) = 1;
    v3 = v1;
    v4 = v2;
    v5 = objc_opt_self();

    sub_100069E2C(v3, v4);
    v6 = [v5 sharedInstance];
    *(v0 + 296) = v6;
    v7 = String._bridgeToObjectiveC()();
    *(v0 + 304) = v7;
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 312) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 240;
    *(v0 + 24) = sub_100185CDC;
    v9 = swift_continuation_init();
    *(v0 + 208) = sub_100068FC4(&qword_100504F88, &qword_10040C528);
    *(v0 + 152) = _NSConcreteStackBlock;
    *(v0 + 160) = 1107296256;
    *(v0 + 168) = sub_1001861F4;
    *(v0 + 176) = &unk_1004C95C0;
    *(v0 + 184) = v9;
    [v6 fetchCachedContentForSEView:v7 altDSID:isa completion:v0 + 152];
    v1 = v0 + 16;
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100185CDC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  v4 = *(v1 + 272);
  if (v3)
  {
    sub_10018CF6C(v2 + 112);

    v5 = sub_100185F34;
  }

  else
  {
    v5 = sub_100185E14;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100185E14()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[30];
  swift_unknownObjectRelease();

  v4 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10012F78C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_10012F78C((v5 > 1), v6 + 1, 1, v4);
  }

  v8 = v0[35];
  v7 = v0[36];
  v4[2] = v6 + 1;
  v9 = &v4[6 * v6];
  v9[4] = 0x4354502D4553;
  v9[5] = 0xE600000000000000;
  v9[6] = v7;
  v9[7] = v8;
  *(v9 + 64) = 1;
  v9[9] = v3;
  sub_10018CF6C((v0 + 14));
  v10 = v0[1];

  return v10(v4);
}

uint64_t sub_100185F34(uint64_t a1)
{
  v18 = v1;
  v2 = *(v1 + 312);
  v3 = *(v1 + 304);
  v5 = *(v1 + 280);
  v4 = *(v1 + 288);
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_100069E2C(v4, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  sub_10006A178(v4, v5);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v8 = 136315394;

    v9 = sub_1002FFA0C(0x4354502D4553, 0xE600000000000000, v17);

    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_1002FFA0C(v10, v11, v17);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch view %s : %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v1 + 280);
  v13 = *(v1 + 288);
  *(v1 + 152) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  sub_10006A178(v13, v14);
  v15 = *(v1 + 8);

  return v15(20);
}

uint64_t sub_10018618C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(a1 + 16) = a2;

  *(a1 + 24) = a3;
  return result;
}

uint64_t sub_1001861F4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000752B0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001862CC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a3)
    {
      v11 = a3;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    v15 = *(*(v7 + 64) + 40);
    *v15 = a2;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_1001863D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return _swift_task_switch(sub_100186480, 0, 0);
}

uint64_t sub_100186480()
{
  v1 = sub_10013044C(0xD000000000000018, 0x8000000100464E20);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 344);
    v5 = *(v0 + 352);
    *(v0 + 48) = 0x4354502D4553;
    *(v0 + 56) = 0xE600000000000000;
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = 1;
    v6 = *v4;
    v7 = *(v0 + 64);
    *(v0 + 88) = *(v0 + 48);
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    *(v0 + 104) = v7;
    *(v0 + 120) = *(v0 + 80);
    v10 = type metadata accessor for TaskPriority();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v5;
    v13 = *(v0 + 64);
    *(v12 + 40) = *(v0 + 48);
    *(v12 + 56) = v13;
    *(v12 + 72) = *(v0 + 80);
    sub_1000938D4(v9, v8, &qword_100504250, &qword_10040D610);
    v14 = (*(v11 + 48))(v8, 1, v10);
    v15 = *(v0 + 360);
    if (v14 == 1)
    {
      sub_10018C898(v0 + 88, v0 + 128);
      sub_10018C898(v0 + 88, v0 + 168);

      sub_100075768(v15, &qword_100504250, &qword_10040D610);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      sub_10018C898(v0 + 88, v0 + 208);
      sub_10018C898(v0 + 88, v0 + 248);

      TaskPriority.rawValue.getter();
      (*(v11 + 8))(v15, v10);
      if (*(v12 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = dispatch thunk of Actor.unownedExecutor.getter();
        v17 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }
    }

    v19 = swift_allocObject();
    *(v19 + 16) = &unk_10040C5C8;
    *(v19 + 24) = v12;

    if (v17 | v16)
    {
      v20 = v0 + 288;
      *(v0 + 288) = 0;
      *(v0 + 296) = 0;
      *(v0 + 304) = v16;
      *(v0 + 312) = v17;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v0 + 368);
    *(v0 + 320) = 1;
    *(v0 + 328) = v20;
    *(v0 + 336) = v6;
    swift_task_create();

    sub_10018CF6C(v0 + 88);
    sub_100075768(v21, &qword_100504250, &qword_10040D610);
    sub_10018CF6C(v0 + 48);
    v22 = swift_task_alloc();
    *(v0 + 376) = v22;
    v3 = sub_100068FC4(&qword_100504FC0, &qword_10040C5D8);
    *v22 = v0;
    v22[1] = sub_10018683C;
    v1 = 0;
    v2 = 0;
  }

  return TaskGroup.awaitAllRemainingTasks(isolation:)(v1, v2, v3);
}

uint64_t sub_10018683C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100186968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v5[35] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper;
  return _swift_task_switch(sub_100186994, a4, 0);
}

uint64_t sub_1001869C0()
{
  v1 = v0[36];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_100186ADC;
  v2 = swift_continuation_init();
  v0[25] = sub_100068FC4(&qword_100504F90, &qword_10040C538);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001862CC;
  v0[21] = &unk_1004C9728;
  v0[22] = v2;
  [v1 canSyncSEKeys:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100186ADC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_100186EFC;
  }

  else
  {
    v2 = sub_100186BEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100186BEC()
{
  v1 = *(v0 + 224);
  *(v0 + 304) = *(v0 + 216);
  *(v0 + 312) = v1;
  if (v1 >> 60 == 15)
  {
    return (*(v0 + 8))();
  }

  else
  {
    return _swift_task_switch(sub_100186C30, 0, 0);
  }
}

uint64_t sub_100186C30()
{
  v1 = v0[36];
  v2 = String._bridgeToObjectiveC()();
  v0[40] = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[41] = isa;
  v0[10] = v0;
  v0[11] = sub_100186D80;
  v4 = swift_continuation_init();
  v0[25] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001E95B0;
  v0[21] = &unk_1004C9750;
  v0[22] = v4;
  [v1 syncContentsForSEView:v2 altDSID:isa completion:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100186D80()
{
  v1 = *(*v0 + 112);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_1001870C8;
  }

  else
  {
    v2 = sub_100186E90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100186E90()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_10006A2D0(v0[38], v0[39]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100186EFC(uint64_t a1)
{
  v13 = v1;
  swift_willThrow();
  v2 = *(v1 + 272);
  sub_10018C898(v2, v1 + 144);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  sub_10018CF6C(v2);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 272);
    v6 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1002FFA0C(*v5, *(v5 + 8), v12);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to sync view %s : %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_1001870C8(uint64_t a1)
{
  v17 = v1;
  v2 = v1[41];
  v3 = v1[39];
  v4 = v1[40];
  v5 = v1[38];
  swift_willThrow();
  sub_10006A2D0(v5, v3);

  v6 = v1[34];
  sub_10018C898(v6, (v1 + 18));
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10018CF6C(v6);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[34];
    v10 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1002FFA0C(*v9, *(v9 + 8), v16);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_1002FFA0C(v11, v12, v16);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to sync view %s : %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1001872B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 49) = a5;
  *(v5 + 56) = a4;
  return _swift_task_switch(sub_1001872D4, 0, 0);
}

uint64_t sub_1001872D4()
{
  v1 = *(v0 + 49);
  sub_100068FC4(&qword_100504ED0, &qword_10040C3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = v1;
  v3 = sub_1000B3934(inited);
  *(v0 + 64) = v3;
  swift_setDeallocating();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1001873B0;

  return sub_10015F214(v3);
}

uint64_t sub_1001873B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Int sub_1001875D4()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100187654(uint64_t a1)
{
  v2 = *(v1 + 32);
  String.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1001876A8()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100187724(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v9 & 1) != 0))
  {
    if (sub_10008FB4C(v2, v3, v5, v6))
    {
      return v4 ^ v7 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001877B8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v4 = 0x6552746E65696C63;
    v5 = 0x797265766F636572;
    if (a1 != 10)
    {
      v5 = 0x74656C65446B6C74;
    }

    if (a1 != 9)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000017;
    v7 = 0x6F6F427473726966;
    if (a1 != 7)
    {
      v7 = 0x616C417972746572;
    }

    if (a1 != 6)
    {
      v6 = v7;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x6C6F686B636F7473;
    if (a1 == 4)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 3)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000012;
    if (a1 != 1)
    {
      v2 = 0xD000000000000017;
    }

    if (!a1)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 <= 2u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10018796C()
{
  v0 = sub_1000917B0(&off_1004C3E28);
  sub_100068FC4(&qword_100504FC8, &qword_10040C5F0);
  result = swift_arrayDestroy();
  off_100504D60 = v0;
  return result;
}

uint64_t sub_1001879D0()
{
  v1[25] = v0;
  v2 = sub_100068FC4(&qword_100504EE8, &qword_10040C430);
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[29] = v3;
  *v3 = v1;
  v3[1] = sub_100187ACC;

  return sub_10016BBF8(0);
}

uint64_t sub_100187ACC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v5[30] = a1;
  v5[31] = a2;

  if (v2)
  {

    v7 = v6[1];

    return v7(a1);
  }

  else
  {
    v9 = v5[25];

    return _swift_task_switch(sub_100187C28, v9, 0);
  }
}

uint64_t sub_100187C28(uint64_t a1)
{
  v2 = v1[31] >> 60;
  if (v2 == 15)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No altDSID, reporting no peer changes", v14, 2u);
    }
  }

  else
  {
    v4 = v1[27];
    v3 = v1[28];
    v6 = v1[25];
    v5 = v1[26];
    v7 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__lastTrustedPeerIdentifiers;
    swift_beginAccess();
    (*(v4 + 16))(v3, v6 + v7, v5);
    UserDefaultBackedOptional.wrappedValue.getter();
    (*(v4 + 8))(v3, v5);
    v8 = v1[24];
    v1[32] = v8;
    if (v8)
    {
      v9 = *(v1[25] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v1[33] = isa;
      v1[2] = v1;
      v1[7] = v1 + 21;
      v1[3] = sub_100187F44;
      v11 = swift_continuation_init();
      v1[17] = sub_100068FC4(&qword_100504F68, &unk_10040C4F8);
      v1[10] = _NSConcreteStackBlock;
      v1[11] = 1107296256;
      v1[12] = sub_100180E2C;
      v1[13] = &unk_1004C9660;
      v1[14] = v11;
      [v9 getSEPeerIdentityInfo:isa withCompletion:v1 + 10];

      return _swift_continuation_await(v1 + 2);
    }

    v12 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v12, v15);
    v18 = v1[30];
    v17 = v1[31];
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v12, v15, "No stored peer identifiers", v19, 2u);
    }

    sub_10006A2D0(v18, v17);
  }

  v20 = v1[1];

  return v20(v2 < 0xF);
}

uint64_t sub_100187F44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = *(v1 + 200);

    v4 = sub_100188294;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 200);
    v4 = sub_10018806C;
  }

  return _swift_task_switch(v4, v5, 0);
}

char *sub_10018806C()
{
  v1 = v0[33];
  v2 = v0[23];
  sub_10006A2D0(v0[21], v0[22]);

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  result = sub_10019F4A4(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = [v7 peerIdentifier];
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_10019F4A4((v12 > 1), v13 + 1, 1);
    }

    ++v5;
    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = v9;
    v14[5] = v11;
  }

  while (v3 != v5);
LABEL_13:

  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[30];
  v18 = sub_1000E0074(_swiftEmptyArrayStorage);

  v19 = sub_1000E0074(v15);

  v20 = sub_100223F84(v18, v19);

  sub_10006A2D0(v17, v16);

  v21 = v0[1];

  return v21((v20 & 1) == 0);
}