uint64_t sub_19A3CC9EC()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3CCB04, 0, 0);
}

void sub_19A3CCB04()
{
  v521 = v0;
  v2 = v0 + 2376;
  aBlock = (v0 + 16);
  v480 = (v0 + 64);
  v483 = (v0 + 112);
  v487 = (v0 + 160);
  v490 = (v0 + 208);
  v478 = (v0 + 256);
  v479 = (v0 + 304);
  v491 = v0 + 632;
  v485 = v0 + 1160;
  v492 = v0 + 1192;
  v486 = v0 + 1200;
  v481 = v0 + 1224;
  v482 = v0 + 1208;
  v3 = *(v0 + 1656);
  v4 = *(v0 + 1648);
  v5 = *(v0 + 1560);
  v6 = *(v3 + 48);
  v488 = (v0 + 2376);
  if ((v6)(v5, 1, v4) == 1)
  {
    v7 = *(v0 + 1568);
    v8 = *(v0 + 1312);
    v9 = *(v0 + 1304);

    sub_19A2E0A60(v9, v8);
    sub_19A2F3FA0(v5, &qword_1EAFA10A8, &qword_19A581278);
    v11 = *(v3 + 56);
    v10 = v3 + 56;
    v11(v7, 1, 1, v4);
    goto LABEL_14;
  }

  v12 = *(v0 + 1736);
  v13 = *(v0 + 1728);
  sub_19A3E3DD8(v5, v12, type metadata accessor for Concept);
  sub_19A3E3C64(v12, v13, type metadata accessor for Concept);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v14 = *(v0 + 2216);
    v15 = *(v0 + 2208);
    v16 = *(v0 + 1600);
    v17 = *(v0 + 1576);
    v18 = *(v0 + 1520);
    sub_19A3E3DD8(*(v0 + 1728), v16, type metadata accessor for NamedEntityData);
    sub_19A3E3C64(v16 + *(v17 + 20), v18, type metadata accessor for NamedEntityData.NamedEntityType);
    if ((*(v14 + 48))(v18, 1, v15) != 1)
    {
      v40 = *(v0 + 2168);
      v41 = *(v0 + 2160);
      v42 = v6;
      v43 = *(v0 + 1952);
      v44 = *(v0 + 1736);
      v515.length = *(v0 + 1600);
      v45 = *(v0 + 1520);
      v10 = *(v0 + 1312);
      v46 = *(v0 + 1304);

      sub_19A3E3E40(v45, type metadata accessor for NamedEntityData.NamedEntityType);
      v47 = *(v43 + 40);

      v48 = v47;
      sub_19A340970(v44, v41, v40);
      sub_19A2E0A60(v46, v10);

      v6 = v42;
      v30 = type metadata accessor for NamedEntityData;
      length = v515.length;
      goto LABEL_12;
    }

    v19 = *(v0 + 1520);
    sub_19A3E3E40(*(v0 + 1600), type metadata accessor for NamedEntityData);
    sub_19A3E3E40(v19, type metadata accessor for NamedEntityData.NamedEntityType);
    v2 = v0 + 2376;
  }

  else
  {
    sub_19A3E3E40(*(v0 + 1728), type metadata accessor for Concept);
  }

  v20 = *(v0 + 2380);
  v21 = *(v0 + 2192);
  if (v20 != 3 && (*(v2 + 2) & 1) == 0)
  {
    v22 = *(v0 + 2168);
    v23 = *(v0 + 2160);
    v24 = *(v0 + 1952);
    v25 = *(v0 + 1752);
    v26 = *(v0 + 1312);
    v27 = *(v0 + 1304);
    *v25 = *(v0 + 2184);
    *(v25 + 8) = v21;
    *(v25 + 16) = v20;
    swift_storeEnumTagMultiPayload();
    v10 = *(v24 + 24);
    v28 = *(v24 + 40);

    v29 = v28;
    sub_19A340970(v25, v23, v22);
    sub_19A2E0A60(v27, v26);

    v30 = type metadata accessor for Concept;
    length = v25;
LABEL_12:
    sub_19A3E3E40(length, v30);
    goto LABEL_13;
  }

  v32 = *(v0 + 2168);
  v33 = *(v0 + 2160);
  v34 = *(v0 + 1952);
  v35 = *(v0 + 1736);
  v36 = *(v0 + 1312);
  v37 = *(v0 + 1304);

  v10 = *(v34 + 24);
  v38 = *(v34 + 40);

  v39 = v38;
  sub_19A340970(v35, v33, v32);
  sub_19A2E0A60(v37, v36);

LABEL_13:
  v49 = *(v0 + 1656);
  v50 = *(v0 + 1648);
  v51 = *(v0 + 1568);
  sub_19A3E3DD8(*(v0 + 1736), v51, type metadata accessor for Concept);
  (*(v49 + 56))(v51, 0, 1, v50);
LABEL_14:
  v496 = (v0 + 1752);
  v499 = (v0 + 1672);
  v489 = 1;
  v52 = v0;
  v513 = v0;
  v53 = (v6)(v52[196], 1, v52[206]);
LABEL_15:
  if (v53 == 1)
  {

    v493 = v52[268];
  }

  else
  {
    v54 = v52[271];
    v55 = v52[270];
    v56 = v52;
    v57 = v52[268];
    v58 = v52[255];
    v59 = swift_task_alloc();
    *(v59 + 16) = v55;
    *(v59 + 24) = v54;
    swift_beginAccess();
    v60 = sub_19A3E3548(v58 + 2, sub_19A3E406C, v59);
    if (v57)
    {
      goto LABEL_259;
    }

    v61 = *(*(v56[255] + 16) + 16);
    if (v61 < v60)
    {
      __break(1u);
      goto LABEL_270;
    }

    sub_19A46B010(v60, v61);
    swift_endAccess();
    v52 = v513;

    v493 = 0;
  }

  sub_19A2F3FA0(v52[196], &qword_1EAFA10A8, &qword_19A581278);
LABEL_21:

  v62 = v52[272];
  v63 = v52[218];
  v64 = v513[205];
  v65 = v513[201];

  sub_19A3E3E40(v63, type metadata accessor for Concept);
  sub_19A3E3E40(v65, type metadata accessor for NamedEntityData);
  v66 = v64;
  v67 = v513;
  sub_19A3E3E40(v66, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
LABEL_22:
  v68 = *(v67 + 2152) + 1;
  if (v68 == *(v67 + 2136))
  {
LABEL_155:
    v225 = *(v67 + 1952);

    sub_19A3DF010("buildEntityConcepts", 19, 2);

    *(v67 + 1192) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v226 = *(v225 + 40);
    v227 = v67;
    v228 = qword_1EAF9F838;

    v229 = v226;
    if (v228 != -1)
    {
      swift_once();
    }

    v230 = v227[244];
    v515.length = qword_1EAFCA248;
    v231 = [v229 length];
    v232 = swift_task_alloc();
    *(v232 + 16) = v492;
    *(v232 + 24) = v230;
    v233 = swift_allocObject();
    *(v233 + 16) = sub_19A3E393C;
    *(v233 + 24) = v232;
    v227[30] = sub_19A3E3944;
    v227[31] = v233;
    v227[26] = MEMORY[0x1E69E9820];
    v1 = 1107296256;
    v227[27] = 1107296256;
    v227[28] = sub_19A3C4EB0;
    v227[29] = &block_descriptor_3;
    v234 = _Block_copy(v490);

    [v229 enumerateAttribute:v515.length inRange:0 options:v231 usingBlock:{0, v234}];

    _Block_release(v234);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_259:

      swift_endAccess();
      return;
    }

    if (*(*v492 + 16))
    {

      v236 = sub_19A5723DC();
      v237 = sub_19A57355C();
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v519 = v239;
        *v238 = 136380675;
        swift_beginAccess();

        v241 = sub_19A3E501C(v240, 8236, 0xE200000000000000);
        v243 = v242;

        v244 = sub_19A31F114(v241, v243, &v519);

        *(v238 + 4) = v244;
        _os_log_impl(&dword_19A2DE000, v236, v237, "Unresolved ambiguities: %{private}s", v238, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v239);
        MEMORY[0x19A902C50](v239, -1, -1);
        MEMORY[0x19A902C50](v238, -1, -1);
      }

      swift_beginAccess();
      v245 = v513[149];
      sub_19A3B8774();
      swift_allocError();
      *v246 = v245;
      *(v246 + 8) = 0;
      swift_willThrow();

      v247 = v513;
      goto LABEL_208;
    }

    v248 = MEMORY[0x1E69E6158];
    v67 = v513;
    if (v488[3] == 1)
    {
      v249 = v513[244];
      LOBYTE(v518) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
      v250 = swift_allocObject();
      *(v250 + 16) = xmmword_19A576E10;
      *(v250 + 32) = 0x74706D6F7270;
      *(v250 + 40) = 0xE600000000000000;
      v251 = [*(v249 + 40) string];
      v118 = v513;
      v252 = v251;
      v253 = sub_19A572CFC();
      v255 = v254;

      *(v250 + 72) = v248;
      *(v250 + 48) = v253;
      *(v250 + 56) = v255;
      v256 = sub_19A330370(v250);
      swift_setDeallocating();
      sub_19A2F3FA0(v250 + 32, &qword_1EAFA2F00, &qword_19A578A30);
      swift_deallocClassInstance();
      sub_19A338028(&v518, v256, &v519);
      if (v493)
      {
        goto LABEL_174;
      }

      LOBYTE(v490) = v519;
      v257 = v520;

      v493 = 0;
      v67 = v513;
    }

    else
    {
      LOBYTE(v490) = 0;
      v257 = 0;
    }

    v258 = &unk_1EAF9F000;
    v10 = &unk_1EAFCA000;
    v491 = v257;
    if (!(*(v67 + 1320) | *(v67 + 1352) & 2))
    {
      goto LABEL_189;
    }

    v259 = *(v67 + 1952);
    *(v67 + 1160) = MEMORY[0x1E69E7CD0];
    v260 = *(v259 + 32);
    v6 = v67;
    v261 = *(v259 + 40);
    v262 = qword_1EAF9F840;

    v515.length = v260;

    v58 = v261;
    if (v262 != -1)
    {
      goto LABEL_273;
    }

    while (1)
    {
      v80 = *(v10 + 592);
      v263 = [v58 length];
      v264 = swift_task_alloc();
      v59 = v485;
      *(v264 + 16) = v485;
      *(v264 + 24) = v259;
      v265 = swift_allocObject();
      *(v265 + 16) = sub_19A3E3CD4;
      *(v265 + 24) = v264;
      *(v6 + 48) = sub_19A3E4068;
      *(v6 + 56) = v265;
      *(v6 + 16) = MEMORY[0x1E69E9820];
      *(v6 + 24) = v1;
      *(v6 + 32) = sub_19A3C4EB0;
      *(v6 + 40) = &block_descriptor_59;
      v67 = _Block_copy(aBlock);

      [v58 enumerateAttribute:v80 inRange:0 options:v263 usingBlock:{0, v67}];

      _Block_release(v67);
      v266 = swift_isEscapingClosureAtFileLocation();

      if (v266)
      {
        __break(1u);
        goto LABEL_275;
      }

      if (*(*v485 + 16))
      {
        v67 = v513;
        v59 = v491;
        if (v491)
        {

          v268 = sub_19A3C3960(v267, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          v513[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
          v513[53] = v268;
          sub_19A334618((v513 + 53), (v513 + 57));
          v118 = v513;
          JSONValue.init(_:)(v513 + 57, &v518);
          if (v493)
          {

            __swift_destroy_boxed_opaque_existential_0Tm(v513 + 53);
            goto LABEL_174;
          }

LABEL_178:
          v269 = v59;
          v270 = v518;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v519 = v269;
          sub_19A33D400(v270, 0xD000000000000010, 0x800000019A5989F0, isUniquelyReferenced_nonNull_native);
          v59 = v519;
          __swift_destroy_boxed_opaque_existential_0Tm(v118 + 53);
          v493 = 0;
          v67 = v118;
        }

        if ((*(v67 + 1352) & 2) != 0)
        {

          v280 = sub_19A5723DC();
          v281 = v67;
          v282 = sub_19A57355C();
          if (os_log_type_enabled(v280, v282))
          {
            v283 = swift_slowAlloc();
            v284 = swift_slowAlloc();
            v519 = v284;
            *v283 = 136380675;
            swift_beginAccess();

            v286 = sub_19A3E51D0(v285, 8236, 0xE200000000000000);
            v288 = v287;

            v289 = sub_19A31F114(v286, v288, &v519);

            *(v283 + 4) = v289;
            _os_log_impl(&dword_19A2DE000, v280, v282, "Disallowed concepts: %{private}s", v283, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v284);
            MEMORY[0x19A902C50](v284, -1, -1);
            MEMORY[0x19A902C50](v283, -1, -1);
          }

          swift_beginAccess();

          v291 = sub_19A3C3960(v290, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          sub_19A3B8774();
          swift_allocError();
          *v292 = v291;
          *(v292 + 8) = 3;
          swift_willThrow();

          v247 = v281;
          goto LABEL_208;
        }

        v62 = sub_19A5723DC();
        v272 = sub_19A57355C();
        v491 = v59;
        if (os_log_type_enabled(v62, v272))
        {
          v273 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          v519 = v274;
          *v273 = 136380675;
          swift_beginAccess();

          v276 = sub_19A3E51D0(v275, 8236, 0xE200000000000000);
          v278 = v277;

          v279 = sub_19A31F114(v276, v278, &v519);

          *(v273 + 4) = v279;
          v67 = v513;
          _os_log_impl(&dword_19A2DE000, v62, v272, "Disallowed concepts: %{private}s", v273, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v274);
          MEMORY[0x19A902C50](v274, -1, -1);
          MEMORY[0x19A902C50](v273, -1, -1);
        }

        else
        {
LABEL_186:
        }
      }

      else
      {

        v67 = v513;
      }

      v10 = 0x1EAFCA000;
      v258 = &unk_1EAF9F000;
LABEL_189:
      v293 = *(v67 + 2040);
      swift_beginAccess();
      v294 = *(v293 + 16);
      v295 = *(v294 + 16);
      if (v295)
      {
        v296 = *(v67 + 1424);
        v297 = (*(v67 + 1432) + *(*(v67 + 1416) + 48));
        v298 = v294 + ((*(v296 + 80) + 32) & ~*(v296 + 80));
        v515.location = *(v293 + 16);
        v515.length = *(v296 + 72);

        do
        {
          v299 = *(v67 + 1952);
          v300 = *(v67 + 1752);
          v301 = *(v67 + 1432);
          sub_19A33546C(v298, v301, &qword_1EAF9FFE0, &qword_19A578B00);
          v302 = *v297;
          v303 = v297[1];
          sub_19A3E3DD8(v301, v300, type metadata accessor for Concept);
          v304 = *(v299 + 40);

          v305 = v304;
          v306 = v302;
          v67 = v513;
          sub_19A340970(v300, v306, v303);

          sub_19A3E3E40(v300, type metadata accessor for Concept);
          v298 += v515.length;
          --v295;
        }

        while (v295);

        v10 = &unk_1EAFCA000;
        v258 = &unk_1EAF9F000;
      }

      v307 = *(v67 + 1952);
      *(v67 + 1200) = MEMORY[0x1E69E7CC0];
      v59 = *(v307 + 24);
      v308 = *(v307 + 40);
      v6 = v67;
      v309 = v258[264];

      v58 = v308;
      if (v309 != -1)
      {
LABEL_271:
        swift_once();
      }

      v310 = *(v10 + 592);
      v311 = [v58 length];
      v312 = swift_task_alloc();
      *(v312 + 16) = v486;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_19A3E3984;
      *(v10 + 24) = v312;
      *(v6 + 192) = sub_19A3E4068;
      *(v6 + 200) = v10;
      *(v6 + 160) = MEMORY[0x1E69E9820];
      *(v6 + 168) = v1;
      *(v6 + 176) = sub_19A3C4EB0;
      *(v6 + 184) = &block_descriptor_23_0;
      v313 = _Block_copy(v487);

      v489 = v310;
      [v58 enumerateAttribute:v310 inRange:0 options:v311 usingBlock:{0, v313}];

      _Block_release(v313);
      v314 = swift_isEscapingClosureAtFileLocation();

      if ((v314 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_273:
      swift_once();
      v259 = *(v6 + 1952);
    }

    v315 = *(v6 + 1952);

    v67 = v493;
    v316 = sub_19A474074(*(v6 + 1200));
    *(v6 + 1200) = v316;

    v317 = [*(v315 + 40) string];
    v515.length = sub_19A572CFC();
    v123 = v318;

    v319 = *(v316 + 16);
    v69 = v6;
    v320 = MEMORY[0x1E69E6158];
    if (!v319)
    {
      goto LABEL_220;
    }

    v321 = (v316 + 16 * v319 + 24);
    v500 = v316;
    v501 = v123;
    while (v319 <= *(v316 + 16))
    {
      v325 = *(v321 - 1);
      v59 = *v321;
      v326 = sub_19A57348C();
      if ((v328 & 1) == 0)
      {
        v510 = v59;
        v515.location = v325;
        v329 = v327;
        v330 = v320;
        v331 = v326;

        v332 = sub_19A5723DC();
        v333 = sub_19A57353C();

        v505 = v331;
        if (os_log_type_enabled(v332, v333))
        {
          v497 = v67;
          v494 = v333;
          v334 = swift_slowAlloc();
          v335 = swift_slowAlloc();
          v519 = v335;
          *v334 = 136380931;
          v336 = sub_19A572F9C();
          v337 = MEMORY[0x19A900970](v336);
          v339 = v338;

          v340 = sub_19A31F114(v337, v339, &v519);

          *(v334 + 4) = v340;
          v69 = v513;
          *(v334 + 12) = 2080;
          *(v334 + 14) = sub_19A31F114(0x6E6F73726570, 0xE600000000000000, &v519);
          _os_log_impl(&dword_19A2DE000, v332, v494, "Replacing named entity string %{private}s with %s", v334, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x19A902C50](v335, -1, -1);
          v67 = v497;
          v320 = MEMORY[0x1E69E6158];
          MEMORY[0x19A902C50](v334, -1, -1);
        }

        else
        {

          v320 = v330;
        }

        v341 = *(v69 + 1952);
        swift_beginAccess();
        v342 = [*(v341 + 40) mutableString];
        v343 = sub_19A572CCC();
        [v342 replaceCharactersInRange:v515.location withString:{v510, v343}];

        v59 = v513;
        v513[47] = v320;
        v513[48] = sub_19A2F4450();
        v513[44] = 0x6E6F73726570;
        v513[45] = 0xE600000000000000;
        if ((v505 ^ v329) >> 14)
        {
          v322 = sub_19A3859C0(v505, v329, v513 + 44);
          v316 = v500;
          v123 = v501;
          if (v67)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v322 = sub_19A384CAC(v513 + 44, v505);
          v316 = v500;
          v123 = v501;
          if (v67)
          {
LABEL_207:
            v344 = v324;
            v345 = v323;
            v346 = v322;
            sub_19A387988();
            swift_allocError();
            *v347 = v346;
            *(v347 + 8) = v345;
            v247 = v513;
            *(v347 + 16) = v344;
            __swift_destroy_boxed_opaque_existential_0Tm(v513 + 44);
            swift_endAccess();

            goto LABEL_208;
          }
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v513 + 44);
        swift_endAccess();
        v67 = 0;
        v69 = v513;
      }

      v321 -= 2;
      if (!--v319)
      {
        goto LABEL_220;
      }
    }

    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    v370 = *(v123[244] + 40);

    v371 = [v370 string];
    v372 = sub_19A572CFC();
    v374 = v373;

    v123[292] = v374;
    v123[140] = v59;
    v511 = (v67 + *v67);
    v375 = swift_task_alloc();
    v123[293] = v375;
    *v375 = v123;
    v375[1] = sub_19A3D59D4;
    v376 = v123[191];
    v377 = v123 + 140;
    goto LABEL_225;
  }

  *(v67 + 2144) = v493;
  while (1)
  {
    *(v67 + 2152) = v68;
    v71 = *(v67 + 2112);
    if (v68 >= *(v71 + 16))
    {
      __break(1u);
      goto LABEL_186;
    }

    v72 = *(v67 + 1952);
    v503 = v68;
    v73 = (v71 + 24 * v68);
    v74 = v73[4];
    *(v67 + 2160) = v74;
    v75 = v73[5];
    *(v67 + 2168) = v75;
    v76 = v73[6];
    *(v67 + 2176) = v76;
    v77 = *(v72 + 40);

    v59 = [v77 string];
    sub_19A572CFC();
    v78 = [*(v72 + 40) string];
    sub_19A572CFC();
    v80 = v79;

    v515.location = v74;
    v515.length = v75;
    sub_19A57348C();
    LOBYTE(v75) = v81;

    if (v75)
    {
      goto LABEL_280;
    }

    v82 = sub_19A572F9C();
    v84 = v83;
    v86 = v85;
    v88 = v87;

    v89 = MEMORY[0x19A900970](v82, v84, v86, v88);
    v69 = v90;

    *(v67 + 2184) = v89;
    *(v67 + 2192) = v69;
    v91 = *(v76 + 32);
    *(v67 + 2380) = v91;
    type metadata accessor for EntityExtractor.NamedEntity();
    v92 = swift_dynamicCastClass();
    if (v92)
    {
      v93 = v92;

      location = v515.location;
    }

    else
    {
      location = v515.location;
      if (v91 == 2)
      {
        v95 = *(v76 + 16);
        v96 = *(v76 + 24);
        v93 = swift_allocObject();
        *(v93 + 40) = MEMORY[0x1E69E7CC0];
        *(v93 + 16) = v95;
        *(v93 + 24) = v96;
        *(v93 + 32) = 2;
      }

      else
      {
        v93 = 0;
      }
    }

    *(v67 + 2200) = v93;
    v97 = *(v67 + 2032);
    v98 = *(v97 + 16);
    if (!v98)
    {
LABEL_50:
      if (!v93)
      {
        goto LABEL_53;
      }

      if ((*(v67 + 1352) & 1) == 0)
      {
        v106 = *(v67 + 1952);
        v107 = *(v67 + 1752);
        v108 = *(*(v67 + 1576) + 20);
        v109 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        (*(*(v109 - 8) + 56))(v107 + v108, 1, 1, v109);
        *v107 = v89;
        v107[1] = v69;
        swift_storeEnumTagMultiPayload();
        v110 = *(v106 + 40);

        v111 = v110;
        sub_19A340970(v107, location, v515.length);

        v67 = v513;

        v70 = v496;
        goto LABEL_26;
      }

      v126 = *(v93 + 40);
      if (*(v126 + 16) != 1)
      {

LABEL_80:
        v131 = v513[230];
        v132 = v513[185];
        v133 = v513[184];
        sub_19A33546C(v513[160], v131, &qword_1EAF9FD80, &unk_19A57B720);
        if ((*(v132 + 48))(v131, 1, v133) == 1)
        {
          sub_19A2F3FA0(v513[230], &qword_1EAF9FD80, &unk_19A57B720);
          goto LABEL_84;
        }

        (*(v513[185] + 32))(v513[187], v513[230], v513[184]);
        if (*(*(v93 + 40) + 16))
        {
          (*(v513[185] + 8))(v513[187], v513[184]);
LABEL_84:
          if (*(*(v93 + 40) + 16))
          {
            v353 = v513[265];
            v354 = v513[169];

            v356 = sub_19A3E2C08(v355, v89, v69, v353);
            v513[294] = v356;
            v513[295] = v493;

            v357 = swift_task_alloc();
            v513[296] = v357;
            *v357 = v513;
            v357[1] = sub_19A3DA250;
            v358 = v513[255];
            v359 = v513[244];
            v360 = v488[2];
            v361 = v513[164];
            v362 = v513[163];
            v363 = v513[162];
            v364 = v513[161];
            v528 = v89;
            v529 = v69;
            v527 = v360;
            v526 = v91;
            v525 = v515;
            v523 = v361;
            v524 = v359;

            sub_19A3DF2F8(v356, v515.location, v515.length, v358, (v354 & 4) != 0, v364, v363, v362);
            return;
          }

          v134 = v513[255];
          v135 = v513[212];
          v136 = v513[207];
          v80 = v513[197];

          v137 = *(v80 + 20);
          v138 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
          v513[288] = v138;
          v139 = *(v138 - 8);
          v513[289] = v139;
          (*(v139 + 56))(v135 + v137, 1, 1, v138);
          *v135 = v89;
          v135[1] = v69;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
          v140 = (*(v136 + 80) + 32) & ~*(v136 + 80);
          v67 = swift_allocObject();
          v513[290] = v67;
          *(v67 + 16) = xmmword_19A576E10;
          sub_19A3E3C64(v135, v67 + v140, type metadata accessor for Concept);
          v513[142] = v67;

          v141 = sub_19A3DEBC0(v515.location, v515.length, v134);
          sub_19A47086C(v141);
          v59 = v513[142];
          v513[291] = v59;
          v142 = *(v59 + 16);
          if (v142 != 1)
          {
            if (!v142)
            {

              v67 = v513;
              goto LABEL_121;
            }

LABEL_90:
            v123 = v513;
            if (v513[161] != 1)
            {
              v67 = v513[163];
              if (v67)
              {
                goto LABEL_224;
              }
            }

            v143 = *(v513[244] + 40);
            v144 = qword_1EAF9F838;

            v145 = v143;
            if (v144 != -1)
            {
              swift_once();
            }

            v146 = v513[207];
            v147 = v513[206];
            v148 = v513[192];
            v149 = qword_1EAFCA248;
            v513[139] = v59;
            swift_bridgeObjectRetain_n();
            [v145 addAttribute:v149 value:sub_19A57402C() range:v515];
            swift_unknownObjectRelease();

            (*(v146 + 56))(v148, 1, 1, v147);
            v67 = v513;
            if ((*(v146 + 48))(v513[192], 1, v513[206]) == 1)
            {
            }

            else
            {
              v58 = v513[271];
              v167 = v513[270];
              v168 = v513[255];
              v169 = swift_task_alloc();
              v515.length = v167;
              *(v169 + 16) = v167;
              *(v169 + 24) = v58;
              swift_beginAccess();
              v59 = *(v168 + 16);
              v170 = (v59 + 16);
              v80 = *(v59 + 16);
              if (v80)
              {
                v67 = 0;
                v10 = 1;
                v171 = v167;
                while (1)
                {
                  v172 = v513[178];
                  v173 = (*(v172 + 80) + 32) & ~*(v172 + 80);
                  v174 = *(v172 + 72);
                  v530.location = v515.length;
                  v530.length = v58;
                  if (NSIntersectionRange(*(v59 + v173 + v174 * v67 + *(v513[1416] + 48)), v530).length > 0)
                  {
                    break;
                  }

                  ++v67;
                  ++v10;
                  if (v80 == v67)
                  {
                    v67 = *v170;
                    v80 = *v170;
                    goto LABEL_118;
                  }
                }

                v80 = v67 + 1;
                if (__OFADD__(v67, 1))
                {
                  goto LABEL_282;
                }

                v183 = *v170;
                if (v80 != *v170)
                {
                  v6 = v173 + v174 * v10;
                  v515.location = v58;
                  while (v80 < v183)
                  {
                    v10 = v59 + v6;
                    v531.location = v171;
                    v531.length = v58;
                    if (NSIntersectionRange(*(v59 + v6 + *(v513[1416] + 48)), v531).length <= 0)
                    {
                      if (v80 != v67)
                      {
                        if ((v67 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_276;
                        }

                        v200 = *v170;
                        if (v67 >= *v170)
                        {
                          goto LABEL_277;
                        }

                        sub_19A33546C(v59 + v173 + v67 * v174, v513[183], &qword_1EAF9FFE0, &qword_19A578B00);
                        if (v80 >= v200)
                        {
                          goto LABEL_278;
                        }

                        sub_19A33546C(v59 + v6, v513[182], &qword_1EAF9FFE0, &qword_19A578B00);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v59 = sub_19A32E604(v59);
                        }

                        sub_19A3E3898(v513[182], v59 + v173 + v67 * v174);
                        if (v80 >= *(v59 + 16))
                        {
                          goto LABEL_279;
                        }

                        v199 = v513[255];
                        sub_19A3E3898(v513[183], v59 + v6);
                        *(v199 + 16) = v59;
                        v171 = v515.length;
                        v58 = v515.location;
                      }

                      ++v67;
                    }

                    ++v80;
                    v170 = (v59 + 16);
                    v183 = *(v59 + 16);
                    v6 += v174;
                    if (v80 == v183)
                    {
                      goto LABEL_117;
                    }
                  }

LABEL_270:
                  __break(1u);
                  goto LABEL_271;
                }

LABEL_117:
                if (v80 < v67)
                {
                  goto LABEL_281;
                }
              }

              else
              {
                v67 = 0;
              }

LABEL_118:
              v184 = v67;
              v67 = v513;
              sub_19A46B010(v184, v80);
              swift_endAccess();
            }

            sub_19A2F3FA0(*(v67 + 1536), &qword_1EAFA10A8, &qword_19A581278);
            goto LABEL_120;
          }

          if (v513[169] & 4) != 0 && (sub_19A3C4F5C(v59))
          {
            goto LABEL_90;
          }

          if (!*(v67 + 16))
          {
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
            v469 = *(*(v80 + 1952) + 40);

            v470 = [v469 string];
            v471 = sub_19A572CFC();
            v473 = v472;

            *(v80 + 2240) = v473;
            *(v80 + 1184) = v59;
            v514 = (v67 + *v67);
            v474 = swift_task_alloc();
            *(v80 + 2248) = v474;
            *v474 = v80;
            v474[1] = sub_19A3CC9EC;
            v376 = *(v80 + 1560);
            v377 = (v80 + 1184);
            v378 = v471;
            v379 = v473;
            v381 = v515.length;
            v380 = v515.location;
            v382 = v514;
LABEL_226:

            v382(v376, v378, v379, v380, v381, v377);
            return;
          }

          v150 = v513[219];
          v151 = *(v513[244] + 40);
          sub_19A3E3C64(v67 + v140, v150, type metadata accessor for Concept);

          v152 = v151;
          v67 = v513;

          sub_19A340970(v150, v515.location, v515.length);

          sub_19A3E3E40(v150, type metadata accessor for Concept);
LABEL_120:

LABEL_121:

          v62 = *(v67 + 2176);
          v185 = *(v67 + 1696);

          sub_19A3E3E40(v185, type metadata accessor for Concept);
          v493 = *(v67 + 2144);
        }

        else
        {
          v153 = v513[265];
          v154 = v513[215];
          v155 = v513[207];
          v508 = v513[255];
          v156 = v513[197];
          v157 = v513[187];
          v158 = v513[185];
          v159 = v513[184];

          v160 = sub_19A41F408(v157, v153);
          v67 = v154 + *(v156 + 20);
          (*(v158 + 16))(v67, v157, v159);
          v161 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
          v513[282] = v161;
          *(v67 + *(v161 + 20)) = 0;
          *(v67 + *(v161 + 24)) = (v160 & 1) == 0;
          v162 = *(v161 - 8);
          v513[283] = v162;
          v80 = v513;
          (*(v162 + 56))(v67, 0, 1, v161);
          *v154 = v89;
          v154[1] = v69;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
          v163 = (*(v155 + 80) + 32) & ~*(v155 + 80);
          v164 = swift_allocObject();
          v513[284] = v164;
          *(v164 + 16) = xmmword_19A576E10;
          sub_19A3E3C64(v154, v164 + v163, type metadata accessor for Concept);
          v513[141] = v164;

          v165 = sub_19A3DEBC0(v515.location, v515.length, v508);
          sub_19A47086C(v165);
          v59 = v513[141];
          v513[285] = v59;
          v166 = *(v59 + 16);
          if (v166 == 1)
          {
            if ((v513[169] & 4) == 0 || (sub_19A3C4F5C(v59) & 1) == 0)
            {

              if (!*(v164 + 16))
              {
                goto LABEL_283;
              }

              v186 = v513[219];
              v187 = *(v513[244] + 40);
              sub_19A3E3C64(v164 + v163, v186, type metadata accessor for Concept);

              v188 = v187;

              sub_19A340970(v186, v515.location, v515.length);

              v80 = v513;
              sub_19A3E3E40(v186, type metadata accessor for Concept);
              goto LABEL_128;
            }
          }

          else if (!v166)
          {

            goto LABEL_128;
          }

          if (v513[161] != 1)
          {
            v175 = v513[163];
            if (v175)
            {
              v404 = *(v513[244] + 40);

              v405 = [v404 string];
              v372 = sub_19A572CFC();
              v374 = v406;

              v513[286] = v374;
              v513[144] = v59;
              v511 = v175 + *v175;
              v407 = swift_task_alloc();
              v513[287] = v407;
              *v407 = v513;
              v407[1] = sub_19A3D11E0;
              v376 = v513[193];
              v377 = v513 + 144;
LABEL_225:
              v378 = v372;
              v379 = v374;
              v381 = v515.length;
              v380 = v515.location;
              v382 = v511;
              goto LABEL_226;
            }
          }

          v176 = *(v513[244] + 40);
          v177 = qword_1EAF9F838;

          v178 = v176;
          if (v177 != -1)
          {
            swift_once();
          }

          v179 = v513[207];
          v180 = v513[206];
          v181 = v513[194];
          v182 = qword_1EAFCA248;
          v513[143] = v59;
          swift_bridgeObjectRetain_n();
          [v178 addAttribute:v182 value:sub_19A57402C() range:v515];
          swift_unknownObjectRelease();

          (*(v179 + 56))(v181, 1, 1, v180);
          if ((*(v179 + 48))(v513[194], 1, v513[206]) == 1)
          {

            v493 = v513[268];
          }

          else
          {
            v189 = v513[271];
            v190 = v513[270];
            v67 = v513[268];
            v191 = v513[255];
            v59 = swift_task_alloc();
            *(v59 + 16) = v190;
            *(v59 + 24) = v189;
            swift_beginAccess();
            v192 = sub_19A3E3548((v191 + 16), sub_19A3E3908, v59);
            if (v67)
            {
              goto LABEL_259;
            }

            v193 = *(*(v513[255] + 16) + 16);
            if (v193 < v192)
            {
              goto LABEL_284;
            }

            sub_19A46B010(v192, v193);
            swift_endAccess();

            v80 = v513;

            v493 = 0;
          }

          sub_19A2F3FA0(*(v80 + 1552), &qword_1EAFA10A8, &qword_19A581278);
LABEL_128:

          v62 = *(v80 + 2176);
          v194 = *(v80 + 1720);
          v195 = v513[187];
          v196 = v513[185];
          v197 = v513[184];

          sub_19A3E3E40(v194, type metadata accessor for Concept);
          v198 = v195;
          v67 = v513;
          (*(v196 + 8))(v198, v197);
        }

        goto LABEL_22;
      }

      v52 = v67;
      v127 = *(v67 + 1640);
      v128 = v52[202];
      v129 = *(v52[203] + 80);
      sub_19A3E3C64(v126 + ((v129 + 32) & ~v129), v127, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      if (*(v127 + *(v128 + 20)))
      {
        v130 = v52[205];

        sub_19A3E3E40(v130, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        goto LABEL_80;
      }

      v201 = v52[265];
      v509 = v52[255];
      v477 = v52[218];
      v504 = v52[207];
      v202 = v52[205];
      v203 = v52[204];
      v476 = v52[202];
      v204 = v52[201];
      v205 = v52[197];
      v206 = v52[185];
      v207 = v52[184];
      sub_19A3E3C64(v202, v203, type metadata accessor for EntityExtractor.NamedEntity.EntityData);

      LOBYTE(v201) = sub_19A41F408(v202, v201);
      *v204 = v89;
      v204[1] = v69;
      v208 = v204 + *(v205 + 20);
      (*(v206 + 16))(v208, v203, v207);
      LOBYTE(v206) = *(v203 + *(v476 + 20));
      sub_19A3E3E40(v203, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      v209 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      v52[276] = v209;
      v208[*(v209 + 20)] = v206;
      v208[*(v209 + 24)] = (v201 & 1) == 0;
      v210 = *(v209 - 8);
      v52[277] = v210;
      (*(v210 + 56))(v208, 0, 1, v209);
      sub_19A3E3C64(v204, v477, type metadata accessor for NamedEntityData);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
      v211 = (*(v504 + 80) + 32) & ~*(v504 + 80);
      v212 = swift_allocObject();
      v52[278] = v212;
      *(v212 + 16) = xmmword_19A576E10;
      sub_19A3E3C64(v477, v212 + v211, type metadata accessor for Concept);
      v52[146] = v212;

      v213 = sub_19A3DEBC0(v515.location, v515.length, v509);
      sub_19A47086C(v213);
      v59 = v52[146];
      v52[279] = v59;
      v214 = *(v59 + 16);
      if (v214 != 1)
      {
        if (v214)
        {
          goto LABEL_150;
        }

        goto LABEL_21;
      }

      if ((v52[169] & 4) == 0 || (sub_19A3C4F5C(v59) & 1) == 0)
      {

        if (!*(v212 + 16))
        {
          goto LABEL_289;
        }

        v215 = v513[219];
        v216 = *(v52[244] + 40);
        sub_19A3E3C64(v212 + v211, v215, type metadata accessor for Concept);

        v217 = v216;

        sub_19A340970(v215, v515.location, v515.length);

        v52 = v513;
        sub_19A3E3E40(v215, type metadata accessor for Concept);
        goto LABEL_21;
      }

LABEL_150:
      v80 = v52;
      if (v52[161] != 1)
      {
        v67 = v52[163];
        if (v67)
        {
          goto LABEL_285;
        }
      }

      v218 = v52[244];

      v219 = *(v218 + 40);
      v220 = qword_1EAF9F838;

      v221 = v219;
      if (v220 != -1)
      {
        swift_once();
      }

      v222 = *(v80 + 1656);
      v223 = *(v80 + 1648);
      v10 = *(v80 + 1568);
      v224 = qword_1EAFCA248;
      *(v80 + 1176) = v59;
      swift_bridgeObjectRetain_n();
      [v221 addAttribute:v224 value:sub_19A57402C() range:v515];
      swift_unknownObjectRelease();

      (*(v222 + 56))(v10, 1, 1, v223);
      v6 = *(v222 + 48);
      v52 = v80;
      v53 = (v6)(v52[196], 1, v52[206]);
      goto LABEL_15;
    }

    v99 = location + v515.length;
    if (__OFADD__(location, v515.length))
    {
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
      v496 = v67;
      v365 = *(v69 + 1832);
      v366 = *(v69 + 1480);
      v367 = *(v69 + 1472);
      v368 = *(v69 + 1280);

      sub_19A33546C(v368, v365, &qword_1EAF9FD80, &unk_19A57B720);
      if ((*(v366 + 48))(v365, 1, v367) == 1)
      {
        sub_19A2F3FA0(*(v69 + 1832), &qword_1EAF9FD80, &unk_19A57B720);
        v369 = v483;
        v91 = 0x1E7517000;
        goto LABEL_238;
      }

      v383 = *(v69 + 1952);
      v384 = *(v69 + 1488);
      (*(*(v69 + 1480) + 32))(v384, *(v69 + 1832), *(v69 + 1472));
      *(v69 + 2376) = 1;
      v385 = *(v383 + 40);

      v386 = v385;
      v387 = [v386 length];
      v388 = swift_task_alloc();
      *(v388 + 16) = v384;
      *(v388 + 24) = v488;
      v389 = swift_allocObject();
      *(v389 + 16) = sub_19A3E3CCC;
      *(v389 + 24) = v388;
      *(v69 + 288) = sub_19A3E4068;
      *(v69 + 296) = v389;
      *(v69 + 256) = MEMORY[0x1E69E9820];
      *(v69 + 264) = v1;
      *(v69 + 272) = sub_19A3C4EB0;
      *(v69 + 280) = &block_descriptor_52;
      v390 = _Block_copy(v478);

      v91 = &off_1E7517000;
      [v386 enumerateAttribute:v489 inRange:0 options:v387 usingBlock:{0, v390}];

      _Block_release(v390);
      v391 = swift_isEscapingClosureAtFileLocation();

      if ((v391 & 1) == 0)
      {

        if (*v488 != 1)
        {
          goto LABEL_234;
        }

        v392 = v513[208];
        v393 = v513[197];
        v394 = v513[186];
        v395 = v513[185];
        v396 = v513[184];
        v397 = sub_19A572E7C();
        v398 = v392 + *(v393 + 20);
        (*(v395 + 16))(v398, v394, v396);
        v399 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        v398[*(v399 + 20)] = 0;
        v398[*(v399 + 24)] = 0;
        (*(*(v399 - 8) + 56))(v398, 0, 1, v399);
        *v392 = 0x6E6F73726570;
        v392[1] = 0xE600000000000000;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_19A340CA4(0x206E6F73726570, 0xE700000000000000, v392, 0, v397);
        if (!v496)
        {
          v408 = v513[208];
          swift_endAccess();
          sub_19A3E3E40(v408, type metadata accessor for Concept);
          v496 = 0;
          v69 = v513;
          v369 = v483;
          v91 = &off_1E7517000;
          goto LABEL_237;
        }

        v400 = v513[208];
        v401 = v513[186];
        v402 = v513[185];
        v403 = v513[184];
        swift_endAccess();

        sub_19A3E3E40(v400, type metadata accessor for Concept);
        (*(v402 + 8))(v401, v403);

        v247 = v513;
        goto LABEL_208;
      }

      goto LABEL_290;
    }

    if (v99 < location)
    {
      goto LABEL_215;
    }

    v100 = (v97 + 40);
    while (1)
    {
      v102 = *(v100 - 1);
      v101 = *v100;
      v103 = v102 < v99 && location < v101;
      v104 = !v103 || v102 == v101;
      if (!v104 && location != v99)
      {
        break;
      }

      v100 += 4;
      if (!--v98)
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    v112 = *(v67 + 2040);
    v113 = v513[244];
    v114 = v513[209];
    *v114 = v89;
    *(v114 + 8) = v69;
    *(v114 + 16) = v91;
    swift_storeEnumTagMultiPayload();
    v115 = *(v113 + 40);
    v67 = v513;

    v116 = v115;
    sub_19A340970(v114, location, v515.length);

    v117 = swift_task_alloc();
    *(v117 + 16) = location;
    *(v117 + 24) = v515.length;
    swift_beginAccess();
    v118 = *(v112 + 16);
    v119 = v118 + 2;
    v120 = v118[2];
    if (!v120)
    {
      v69 = 0;
      goto LABEL_25;
    }

    v69 = 0;
    v59 = 1;
    while (1)
    {
      v121 = v513[178];
      v122 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v123 = *(v121 + 72);
      if (NSIntersectionRange(*(v118 + v122 + v123 * v69 + *(v513[1416] + 48)), v515).length > 0)
      {
        break;
      }

      ++v69;
      ++v59;
      if (v120 == v69)
      {
        v69 = *v119;
        v120 = *v119;
        goto LABEL_25;
      }
    }

    v120 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    v124 = *v119;
    if (v120 != *v119)
    {
      v59 = v122 + v123 * v59;
      do
      {
        if (v120 >= v124)
        {
          __break(1u);
          goto LABEL_178;
        }

        if (NSIntersectionRange(*(v118 + v59 + *(*(v67 + 1416) + 48)), v515).length <= 0)
        {
          if (v120 != v69)
          {
            if ((v69 & 0x8000000000000000) != 0)
            {
              goto LABEL_216;
            }

            v67 = *v119;
            if (v69 >= *v119)
            {
              goto LABEL_217;
            }

            sub_19A33546C(v118 + v122 + v69 * v123, v513[181], &qword_1EAF9FFE0, &qword_19A578B00);
            if (v120 >= v67)
            {
              goto LABEL_218;
            }

            sub_19A33546C(v118 + v59, v513[180], &qword_1EAF9FFE0, &qword_19A578B00);
            v67 = v513;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v118 = sub_19A32E604(v118);
            }

            sub_19A3E3898(v513[180], v118 + v122 + v69 * v123);
            if (v120 >= v118[2])
            {
              goto LABEL_219;
            }

            v125 = v513[255];
            sub_19A3E3898(v513[181], v118 + v59);
            *(v125 + 16) = v118;
          }

          ++v69;
        }

        ++v120;
        v119 = v118 + 2;
        v124 = v118[2];
        v59 += v123;
      }

      while (v120 != v124);
    }

    if (v120 < v69)
    {
      goto LABEL_223;
    }

LABEL_25:
    sub_19A46B010(v69, v120);
    swift_endAccess();

    v70 = v499;
LABEL_26:
    v68 = v503 + 1;
    v62 = *(v67 + 2136);
    sub_19A3E3E40(*v70, type metadata accessor for Concept);
    if ((v503 + 1) == v62)
    {
      goto LABEL_155;
    }
  }

  __break(1u);
LABEL_234:
  v69 = v513;
  v369 = v483;
LABEL_237:
  (*(*(v69 + 1480) + 8))(*(v69 + 1488), *(v69 + 1472));
LABEL_238:
  v409 = *(*(v69 + 1952) + 40);
  v410 = MEMORY[0x1E69E7CD0];
  *(v69 + 1208) = MEMORY[0x1E69E7CD0];
  *(v69 + 1224) = v410;

  v411 = v409;
  v412 = [v411 length];
  v413 = swift_task_alloc();
  *(v413 + 16) = v481;
  *(v413 + 24) = v482;
  v414 = swift_allocObject();
  *(v414 + 16) = sub_19A3E398C;
  *(v414 + 24) = v413;
  *(v69 + 144) = sub_19A3E4068;
  *(v69 + 152) = v414;
  *(v69 + 112) = MEMORY[0x1E69E9820];
  *(v69 + 120) = v1;
  *(v69 + 128) = sub_19A3C4EB0;
  *(v69 + 136) = &block_descriptor_30;
  v118 = v69;
  v415 = _Block_copy(v369);

  [v411 *(v91 + 3984)];
  _Block_release(v415);
  LOBYTE(v415) = swift_isEscapingClosureAtFileLocation();

  if (v415)
  {
    __break(1u);
    goto LABEL_287;
  }

  v416 = *(v69 + 1952);
  v417 = *(v69 + 1408);
  v418 = v118[175];

  v517 = v118[151];
  v512 = v118[153];

  v506 = v416[2];
  v419 = v416[4];
  v420 = v416[5];
  v516 = v416[3];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v421 = v420;
  v422 = [v421 string];
  sub_19A572CFC();

  sub_19A570C6C();
  v423 = v417 + *(v418 + 20);
  sub_19A570BFC();
  v424 = [v421 length];
  v425 = swift_task_alloc();
  *(v425 + 16) = v423;
  v426 = swift_allocObject();
  *(v426 + 16) = sub_19A3E3994;
  *(v426 + 24) = v425;
  v118[12] = sub_19A3E4068;
  v118[13] = v426;
  v118[8] = MEMORY[0x1E69E9820];
  v118[9] = v1;
  v118[10] = sub_19A3C4EB0;
  v118[11] = &block_descriptor_37;
  v427 = _Block_copy(v480);

  [v421 enumerateAttribute:v489 inRange:0 options:v424 usingBlock:{0, v427}];
  _Block_release(v427);
  LOBYTE(v427) = swift_isEscapingClosureAtFileLocation();

  if (v427)
  {
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
    return;
  }

  v428 = *MEMORY[0x1E696A518];
  v429 = [v421 length];
  v430 = swift_task_alloc();
  *(v430 + 16) = v423;
  v431 = swift_allocObject();
  *(v431 + 16) = sub_19A3E399C;
  *(v431 + 24) = v430;
  v118[42] = sub_19A3E4068;
  v118[43] = v431;
  v118[38] = MEMORY[0x1E69E9820];
  v118[39] = v1;
  v118[40] = sub_19A3C4EB0;
  v118[41] = &block_descriptor_44;
  v432 = _Block_copy(v479);

  [v421 enumerateAttribute:v428 inRange:0 options:v429 usingBlock:{0, v432}];
  _Block_release(v432);
  v433 = swift_isEscapingClosureAtFileLocation();

  if (v433)
  {
    goto LABEL_288;
  }

  v434 = v118[176];

  *v434 = v506;
  v434[1] = v516;
  v434[2] = v419;
  v435 = MEMORY[0x1E69E6158];
  v436 = v496;
  if (!v491)
  {
    v439 = 0;
    goto LABEL_246;
  }

  sub_19A570A4C();
  sub_19A3E3F34(&qword_1ED825330, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  v437 = sub_19A572F7C();
  v118[52] = v435;
  v118[49] = v437;
  v118[50] = v438;
  sub_19A334618((v118 + 49), (v118 + 69));
  JSONValue.init(_:)(v118 + 69, &v518);
  if (!v496)
  {
    v440 = v518;
    v441 = swift_isUniquelyReferenced_nonNull_native();
    v519 = v491;
    sub_19A33D400(v440, 0x65746E656D677561, 0xEF74706D6F725064, v441);
    v439 = v519;
    __swift_destroy_boxed_opaque_existential_0Tm(v118 + 49);
LABEL_246:
    v442 = v118[161];
    if (v442 > 1)
    {
      v443 = v513[257];
      v444 = v513[239];
      v445 = v513[238];
      v502 = v445;
      v507 = v118[259];
      v446 = v513[162];
      v447 = swift_task_alloc();
      v443(v447, v444, v445);

      v448 = swift_slowAlloc();
      *v448 = 0;
      v449 = sub_19A57234C();
      v450 = sub_19A57361C();
      v451 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v449, v450, v451, "reportConcepts", "", v448, 2u);

      sub_19A3C3960(v452, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
      v442();

      v453 = sub_19A57360C();
      v454 = sub_19A5722FC();
      v118 = v513;
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v449, v453, v454, "reportConcepts", "", v448, 2u);

      v436 = v496;

      MEMORY[0x19A902C50](v448, -1, -1);
      sub_19A2E0A60(v442, v446);
      v507(v447, v502);
    }

    else
    {
    }

    if (v439)
    {
      v455 = sub_19A3C3960(v517, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
      v118[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
      v118[65] = v455;
      sub_19A334618((v118 + 65), (v118 + 61));
      JSONValue.init(_:)(v118 + 61, &v518);
      if (v436)
      {
        sub_19A3E3E40(v118[176], type metadata accessor for TextPrompt);

        __swift_destroy_boxed_opaque_existential_0Tm(v118 + 65);
LABEL_174:

        goto LABEL_175;
      }

      v457 = v518;
      v458 = swift_isUniquelyReferenced_nonNull_native();
      v519 = v439;
      sub_19A33D400(v457, 0xD000000000000012, 0x800000019A595740, v458);
      v456 = v519;
      __swift_destroy_boxed_opaque_existential_0Tm(v118 + 65);
      v436 = 0;
    }

    else
    {

      v456 = 0;
    }

    if (*(v512 + 16))
    {
      v459 = sub_19A3C3960(v512, sub_19A31EFA0, MEMORY[0x1E69695A8], sub_19A32ED90);
      sub_19A3E39A4(v459);
      if (v436)
      {
        v247 = v513;
        sub_19A3E3E40(v513[176], type metadata accessor for TextPrompt);

        goto LABEL_208;
      }

      v118 = v513;
    }

    else
    {
    }

    if (v456)
    {
      v460 = v118[165];
      if (v460)
      {
        LOBYTE(v519) = v490;
        v520 = v456;
        v460(&v519);
      }
    }

    v461 = v118[244];
    v462 = v118[237];
    v463 = v118[235];
    v475 = v118[234];
    v464 = v118[176];
    sub_19A3E3C64(v464, v118[154], type metadata accessor for TextPrompt);
    v465 = [*(v461 + 40) string];
    v466 = sub_19A572CFC();
    v495 = v467;
    v498 = v466;

    sub_19A3E3E40(v464, type metadata accessor for TextPrompt);

    sub_19A3DF010("validateText", 12, 2);

    (*(v463 + 8))(v462, v475);

    v468 = v118[1];

    v468(v498, v495);
    return;
  }

  sub_19A3E3E40(v118[176], type metadata accessor for TextPrompt);

  __swift_destroy_boxed_opaque_existential_0Tm(v118 + 49);

LABEL_175:

  v247 = v118;
LABEL_208:

  v348 = v247[237];
  v349 = v247[235];
  v350 = v247;
  v351 = v247[234];
  sub_19A3DF010("validateText", 12, 2);

  (*(v349 + 8))(v348, v351);

  v352 = v350[1];

  v352();
}

uint64_t sub_19A3D11E0()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3D12F8, 0, 0);
}

void sub_19A3D12F8()
{
  v521 = v0;
  v2 = v0 + 2376;
  aBlock = (v0 + 16);
  v481 = (v0 + 112);
  v485 = (v0 + 160);
  v488 = (v0 + 208);
  v476 = (v0 + 256);
  v3 = v0 + 304;
  v483 = v0 + 1160;
  v489 = v0 + 1192;
  v484 = v0 + 1200;
  v479 = v0 + 1224;
  v480 = v0 + 1208;
  v4 = *(v0 + 1656);
  v5 = *(v0 + 1648);
  v6 = *(v0 + 1544);
  v7 = *(v4 + 48);
  v486 = (v0 + 2376);
  v477 = (v0 + 304);
  v478 = (v0 + 64);
  if ((v7)(v6, 1, v5) == 1)
  {
    v8 = *(v0 + 1552);
    sub_19A2E0A60(*(v0 + 1304), *(v0 + 1312));
    sub_19A2F3FA0(v6, &qword_1EAFA10A8, &qword_19A581278);
    (*(v4 + 56))(v8, 1, 1, v5);
    goto LABEL_14;
  }

  v9 = *(v0 + 1712);
  v10 = *(v0 + 1704);
  sub_19A3E3DD8(v6, v9, type metadata accessor for Concept);
  sub_19A3E3C64(v9, v10, type metadata accessor for Concept);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v11 = *(v0 + 2264);
    v12 = *(v0 + 2256);
    v13 = *(v0 + 1592);
    v14 = *(v0 + 1576);
    v15 = *(v0 + 1512);
    sub_19A3E3DD8(*(v0 + 1704), v13, type metadata accessor for NamedEntityData);
    sub_19A3E3C64(v13 + *(v14 + 20), v15, type metadata accessor for NamedEntityData.NamedEntityType);
    if ((*(v11 + 48))(v15, 1, v12) != 1)
    {
      v37 = *(v0 + 2168);
      v38 = *(v0 + 2160);
      v39 = v7;
      v40 = *(v0 + 1952);
      v41 = *(v0 + 1712);
      v515.length = *(v0 + 1592);
      v42 = *(v0 + 1312);
      v3 = *(v0 + 1304);
      sub_19A3E3E40(*(v0 + 1512), type metadata accessor for NamedEntityData.NamedEntityType);
      v43 = *(v40 + 40);

      v44 = v43;
      sub_19A340970(v41, v38, v37);
      sub_19A2E0A60(v3, v42);

      v7 = v39;
      v27 = type metadata accessor for NamedEntityData;
      length = v515.length;
      goto LABEL_12;
    }

    v16 = *(v0 + 1512);
    sub_19A3E3E40(*(v0 + 1592), type metadata accessor for NamedEntityData);
    sub_19A3E3E40(v16, type metadata accessor for NamedEntityData.NamedEntityType);
    v2 = v0 + 2376;
  }

  else
  {
    sub_19A3E3E40(*(v0 + 1704), type metadata accessor for Concept);
  }

  v17 = *(v0 + 2380);
  if (v17 != 3 && (*(v2 + 2) & 1) == 0)
  {
    v18 = *(v0 + 2192);
    v19 = *(v0 + 2168);
    v20 = *(v0 + 2160);
    v21 = v7;
    v22 = *(v0 + 1952);
    v23 = *(v0 + 1752);
    v515.length = *(v0 + 1312);
    v3 = *(v0 + 1304);
    *v23 = *(v0 + 2184);
    *(v23 + 8) = v18;
    *(v23 + 16) = v17;
    swift_storeEnumTagMultiPayload();
    v24 = *(v22 + 40);

    v25 = v24;
    v7 = v21;
    v26 = v25;
    sub_19A340970(v23, v20, v19);
    sub_19A2E0A60(v3, v515.length);

    v27 = type metadata accessor for Concept;
    length = v23;
LABEL_12:
    sub_19A3E3E40(length, v27);
    goto LABEL_13;
  }

  v29 = *(v0 + 2168);
  v30 = *(v0 + 2160);
  v31 = *(v0 + 1952);
  v32 = *(v0 + 1712);
  v33 = *(v0 + 1312);
  v34 = *(v0 + 1304);
  v3 = *(v31 + 24);
  v35 = *(v31 + 40);

  v36 = v35;
  sub_19A340970(v32, v30, v29);
  sub_19A2E0A60(v34, v33);

LABEL_13:
  v45 = *(v0 + 1656);
  v46 = *(v0 + 1648);
  v47 = *(v0 + 1552);
  sub_19A3E3DD8(*(v0 + 1712), v47, type metadata accessor for Concept);
  (*(v45 + 56))(v47, 0, 1, v46);
LABEL_14:
  v491 = v0 + 1752;
  v494 = (v0 + 1672);
  v487 = 1;
  v48 = v0;
  v513 = v0;
  v49 = (v7)(*(v48 + 1552), 1, *(v48 + 1648));
LABEL_15:
  if (v49 == 1)
  {

    v490 = *(v48 + 2144);
  }

  else
  {
    v50 = *(v48 + 2168);
    v51 = *(v48 + 2160);
    v52 = *(v48 + 2144);
    v53 = *(v48 + 2040);
    v54 = swift_task_alloc();
    *(v54 + 16) = v51;
    *(v54 + 24) = v50;
    swift_beginAccess();
    v55 = sub_19A3E3548(v53 + 2, sub_19A3E3908, v54);
    if (v52)
    {
LABEL_236:

      swift_endAccess();
      return;
    }

    v56 = *(*(*(v48 + 2040) + 16) + 16);
    if (v56 < v55)
    {
      __break(1u);
      goto LABEL_270;
    }

    sub_19A46B010(v55, v56);
    swift_endAccess();

    v48 = v513;

    v490 = 0;
  }

  sub_19A2F3FA0(*(v48 + 1552), &qword_1EAFA10A8, &qword_19A581278);
LABEL_21:

  v57 = *(v48 + 2176);
  v58 = *(v48 + 1720);
  v59 = *(v513 + 1496);
  v60 = *(v513 + 1480);
  v61 = *(v513 + 1472);

  sub_19A3E3E40(v58, type metadata accessor for Concept);
  v62 = v59;
  v63 = v513;
  (*(v60 + 8))(v62, v61);
LABEL_22:
  v64 = *(v63 + 2152) + 1;
  if (v64 == *(v63 + 2136))
  {
LABEL_155:
    v224 = *(v63 + 1952);

    sub_19A3DF010("buildEntityConcepts", 19, 2);

    *(v63 + 1192) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v225 = *(v224 + 40);
    v226 = v63;
    v227 = qword_1EAF9F838;

    v228 = v225;
    if (v227 != -1)
    {
      swift_once();
    }

    v229 = v226[244];
    v515.length = qword_1EAFCA248;
    v230 = [v228 length];
    v231 = swift_task_alloc();
    *(v231 + 16) = v489;
    *(v231 + 24) = v229;
    v232 = swift_allocObject();
    *(v232 + 16) = sub_19A3E393C;
    *(v232 + 24) = v231;
    v226[30] = sub_19A3E3944;
    v226[31] = v232;
    v226[26] = MEMORY[0x1E69E9820];
    v1 = 1107296256;
    v226[27] = 1107296256;
    v226[28] = sub_19A3C4EB0;
    v226[29] = &block_descriptor_3;
    v233 = _Block_copy(v488);
    v234 = v226[31];

    [v228 enumerateAttribute:v515.length inRange:0 options:v230 usingBlock:{0, v233}];

    _Block_release(v233);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_262;
    }

    if (*(*v489 + 16))
    {

      v236 = sub_19A5723DC();
      v237 = sub_19A57355C();
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v519 = v239;
        *v238 = 136380675;
        swift_beginAccess();

        v241 = sub_19A3E501C(v240, 8236, 0xE200000000000000);
        v243 = v242;

        v244 = sub_19A31F114(v241, v243, &v519);

        *(v238 + 4) = v244;
        _os_log_impl(&dword_19A2DE000, v236, v237, "Unresolved ambiguities: %{private}s", v238, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v239);
        MEMORY[0x19A902C50](v239, -1, -1);
        MEMORY[0x19A902C50](v238, -1, -1);
      }

      swift_beginAccess();
      v245 = *(v513 + 1192);
      sub_19A3B8774();
      swift_allocError();
      *v246 = v245;
      *(v246 + 8) = 0;
      swift_willThrow();

      v247 = v513;
LABEL_208:

      v348 = v247[237];
      v349 = v247[235];
      v350 = v247;
      v351 = v247[234];
      sub_19A3DF010("validateText", 12, 2);

      (*(v349 + 8))(v348, v351);

      v352 = v350[1];

      v352();
      return;
    }

    v248 = MEMORY[0x1E69E6158];
    v63 = v513;
    if (v486[3] == 1)
    {
      v249 = *(v513 + 1952);
      LOBYTE(v518) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
      v250 = swift_allocObject();
      *(v250 + 16) = xmmword_19A576E10;
      *(v250 + 32) = 0x74706D6F7270;
      *(v250 + 40) = 0xE600000000000000;
      v251 = [*(v249 + 40) string];
      v114 = v513;
      v252 = v251;
      v253 = sub_19A572CFC();
      v255 = v254;

      *(v250 + 72) = v248;
      *(v250 + 48) = v253;
      *(v250 + 56) = v255;
      v256 = sub_19A330370(v250);
      swift_setDeallocating();
      sub_19A2F3FA0(v250 + 32, &qword_1EAFA2F00, &qword_19A578A30);
      swift_deallocClassInstance();
      sub_19A338028(&v518, v256, &v519);
      if (v490)
      {
        goto LABEL_174;
      }

      LOBYTE(v488) = v519;
      v257 = v520;

      v490 = 0;
      v63 = v513;
    }

    else
    {
      LOBYTE(v488) = 0;
      v257 = 0;
    }

    v258 = &unk_1EAF9F000;
    v3 = &unk_1EAFCA000;
    v489 = v257;
    if (!(*(v63 + 1320) | *(v63 + 1352) & 2))
    {
      goto LABEL_189;
    }

    v259 = *(v63 + 1952);
    *(v63 + 1160) = MEMORY[0x1E69E7CD0];
    v260 = *(v259 + 32);
    v7 = v63;
    v261 = *(v259 + 40);
    v262 = qword_1EAF9F840;

    v515.length = v260;

    v53 = v261;
    if (v262 != -1)
    {
      goto LABEL_273;
    }

    while (1)
    {
      v48 = *(v3 + 592);
      v263 = [v53 length];
      v264 = swift_task_alloc();
      v54 = v483;
      *(v264 + 16) = v483;
      *(v264 + 24) = v259;
      v265 = swift_allocObject();
      *(v265 + 16) = sub_19A3E3CD4;
      *(v265 + 24) = v264;
      *(v7 + 48) = sub_19A3E4068;
      *(v7 + 56) = v265;
      *(v7 + 16) = MEMORY[0x1E69E9820];
      *(v7 + 24) = v1;
      *(v7 + 32) = sub_19A3C4EB0;
      *(v7 + 40) = &block_descriptor_59;
      v63 = _Block_copy(aBlock);

      [v53 enumerateAttribute:v48 inRange:0 options:v263 usingBlock:{0, v63}];

      _Block_release(v63);
      v266 = swift_isEscapingClosureAtFileLocation();

      if (v266)
      {
        __break(1u);
        goto LABEL_275;
      }

      if (*(*v483 + 16))
      {
        v63 = v513;
        v54 = v489;
        if (v489)
        {

          v268 = sub_19A3C3960(v267, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          *(v513 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
          *(v513 + 424) = v268;
          sub_19A334618(v513 + 424, v513 + 456);
          v114 = v513;
          JSONValue.init(_:)((v513 + 456), &v518);
          if (v490)
          {

            __swift_destroy_boxed_opaque_existential_0Tm((v513 + 424));
            goto LABEL_174;
          }

LABEL_178:
          v269 = v54;
          v270 = v518;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v519 = v269;
          sub_19A33D400(v270, 0xD000000000000010, 0x800000019A5989F0, isUniquelyReferenced_nonNull_native);
          v54 = v519;
          __swift_destroy_boxed_opaque_existential_0Tm(v114 + 53);
          v490 = 0;
          v63 = v114;
        }

        if ((*(v63 + 1352) & 2) != 0)
        {

          v280 = sub_19A5723DC();
          v281 = v63;
          v282 = sub_19A57355C();
          if (os_log_type_enabled(v280, v282))
          {
            v283 = swift_slowAlloc();
            v284 = swift_slowAlloc();
            v519 = v284;
            *v283 = 136380675;
            swift_beginAccess();

            v286 = sub_19A3E51D0(v285, 8236, 0xE200000000000000);
            v288 = v287;

            v289 = sub_19A31F114(v286, v288, &v519);

            *(v283 + 4) = v289;
            _os_log_impl(&dword_19A2DE000, v280, v282, "Disallowed concepts: %{private}s", v283, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v284);
            MEMORY[0x19A902C50](v284, -1, -1);
            MEMORY[0x19A902C50](v283, -1, -1);
          }

          swift_beginAccess();

          v291 = sub_19A3C3960(v290, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          sub_19A3B8774();
          swift_allocError();
          *v292 = v291;
          *(v292 + 8) = 3;
          swift_willThrow();

          v247 = v281;
          goto LABEL_208;
        }

        v57 = sub_19A5723DC();
        v272 = sub_19A57355C();
        v489 = v54;
        if (os_log_type_enabled(v57, v272))
        {
          v273 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          v519 = v274;
          *v273 = 136380675;
          swift_beginAccess();

          v276 = sub_19A3E51D0(v275, 8236, 0xE200000000000000);
          v278 = v277;

          v279 = sub_19A31F114(v276, v278, &v519);

          *(v273 + 4) = v279;
          v63 = v513;
          _os_log_impl(&dword_19A2DE000, v57, v272, "Disallowed concepts: %{private}s", v273, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v274);
          MEMORY[0x19A902C50](v274, -1, -1);
          MEMORY[0x19A902C50](v273, -1, -1);
        }

        else
        {
LABEL_186:
        }
      }

      else
      {

        v63 = v513;
      }

      v3 = 0x1EAFCA000;
      v258 = &unk_1EAF9F000;
LABEL_189:
      v293 = *(v63 + 2040);
      swift_beginAccess();
      v294 = *(v293 + 16);
      v295 = *(v294 + 16);
      if (v295)
      {
        v296 = *(v63 + 1424);
        v297 = (*(v63 + 1432) + *(*(v63 + 1416) + 48));
        v298 = v294 + ((*(v296 + 80) + 32) & ~*(v296 + 80));
        v515.location = *(v293 + 16);
        v515.length = *(v296 + 72);

        do
        {
          v299 = *(v63 + 1952);
          v300 = *(v63 + 1752);
          v301 = *(v63 + 1432);
          sub_19A33546C(v298, v301, &qword_1EAF9FFE0, &qword_19A578B00);
          v302 = *v297;
          v303 = v297[1];
          sub_19A3E3DD8(v301, v300, type metadata accessor for Concept);
          v304 = *(v299 + 40);

          v305 = v304;
          v306 = v302;
          v63 = v513;
          sub_19A340970(v300, v306, v303);

          sub_19A3E3E40(v300, type metadata accessor for Concept);
          v298 += v515.length;
          --v295;
        }

        while (v295);

        v3 = &unk_1EAFCA000;
        v258 = &unk_1EAF9F000;
      }

      v307 = *(v63 + 1952);
      *(v63 + 1200) = MEMORY[0x1E69E7CC0];
      v54 = *(v307 + 24);
      v308 = *(v307 + 40);
      v7 = v63;
      v309 = v258[264];

      v53 = v308;
      if (v309 != -1)
      {
LABEL_271:
        swift_once();
      }

      v310 = *(v3 + 592);
      v311 = [v53 length];
      v312 = swift_task_alloc();
      *(v312 + 16) = v484;
      v3 = swift_allocObject();
      *(v3 + 16) = sub_19A3E3984;
      *(v3 + 24) = v312;
      *(v7 + 192) = sub_19A3E4068;
      *(v7 + 200) = v3;
      *(v7 + 160) = MEMORY[0x1E69E9820];
      *(v7 + 168) = v1;
      *(v7 + 176) = sub_19A3C4EB0;
      *(v7 + 184) = &block_descriptor_23_0;
      v313 = _Block_copy(v485);

      v487 = v310;
      [v53 enumerateAttribute:v310 inRange:0 options:v311 usingBlock:{0, v313}];

      _Block_release(v313);
      v314 = swift_isEscapingClosureAtFileLocation();

      if ((v314 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_273:
      swift_once();
      v259 = *(v7 + 1952);
    }

    v315 = *(v7 + 1952);

    v63 = v490;
    v316 = sub_19A474074(*(v7 + 1200));
    *(v7 + 1200) = v316;

    v317 = [*(v315 + 40) string];
    v515.length = sub_19A572CFC();
    v119 = v318;

    v319 = *(v316 + 16);
    v65 = v7;
    v320 = MEMORY[0x1E69E6158];
    if (!v319)
    {
      goto LABEL_220;
    }

    v321 = (v316 + 16 * v319 + 24);
    v498 = v316;
    v499 = v119;
    while (v319 <= *(v316 + 16))
    {
      v325 = *(v321 - 1);
      v54 = *v321;
      v326 = sub_19A57348C();
      if ((v328 & 1) == 0)
      {
        v509 = v54;
        v515.location = v325;
        v329 = v327;
        v330 = v320;
        v331 = v326;

        v332 = sub_19A5723DC();
        v333 = sub_19A57353C();

        v504 = v331;
        if (os_log_type_enabled(v332, v333))
        {
          v495 = v63;
          v492 = v333;
          v334 = swift_slowAlloc();
          v335 = swift_slowAlloc();
          v519 = v335;
          *v334 = 136380931;
          v336 = sub_19A572F9C();
          v337 = MEMORY[0x19A900970](v336);
          v339 = v338;

          v340 = sub_19A31F114(v337, v339, &v519);

          *(v334 + 4) = v340;
          v65 = v513;
          *(v334 + 12) = 2080;
          *(v334 + 14) = sub_19A31F114(0x6E6F73726570, 0xE600000000000000, &v519);
          _os_log_impl(&dword_19A2DE000, v332, v492, "Replacing named entity string %{private}s with %s", v334, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x19A902C50](v335, -1, -1);
          v63 = v495;
          v320 = MEMORY[0x1E69E6158];
          MEMORY[0x19A902C50](v334, -1, -1);
        }

        else
        {

          v320 = v330;
        }

        v341 = *(v65 + 1952);
        swift_beginAccess();
        v342 = [*(v341 + 40) mutableString];
        v343 = sub_19A572CCC();
        [v342 replaceCharactersInRange:v515.location withString:{v509, v343}];

        v54 = v513;
        *(v513 + 376) = v320;
        *(v513 + 384) = sub_19A2F4450();
        *(v513 + 352) = 0x6E6F73726570;
        *(v513 + 360) = 0xE600000000000000;
        if ((v504 ^ v329) >> 14)
        {
          v322 = sub_19A3859C0(v504, v329, (v513 + 352));
          v316 = v498;
          v119 = v499;
          if (v63)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v322 = sub_19A384CAC((v513 + 352), v504);
          v316 = v498;
          v119 = v499;
          if (v63)
          {
LABEL_207:
            v344 = v324;
            v345 = v323;
            v346 = v322;
            sub_19A387988();
            swift_allocError();
            *v347 = v346;
            *(v347 + 8) = v345;
            v247 = v513;
            *(v347 + 16) = v344;
            __swift_destroy_boxed_opaque_existential_0Tm((v513 + 352));
            swift_endAccess();

            goto LABEL_208;
          }
        }

        __swift_destroy_boxed_opaque_existential_0Tm((v513 + 352));
        swift_endAccess();
        v63 = 0;
        v65 = v513;
      }

      v321 -= 2;
      if (!--v319)
      {
        goto LABEL_220;
      }
    }

    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    v370 = *(*(v119 + 1952) + 40);

    v371 = [v370 string];
    v372 = sub_19A572CFC();
    v374 = v373;

    *(v119 + 2336) = v374;
    *(v119 + 1120) = v54;
    v510 = (v63 + *v63);
    v375 = swift_task_alloc();
    *(v119 + 2344) = v375;
    *v375 = v119;
    v375[1] = sub_19A3D59D4;
    v376 = *(v119 + 1528);
    v377 = (v119 + 1120);
    goto LABEL_225;
  }

  *(v63 + 2144) = v490;
  while (1)
  {
    *(v63 + 2152) = v64;
    v67 = *(v63 + 2112);
    if (v64 >= *(v67 + 16))
    {
      __break(1u);
      goto LABEL_186;
    }

    v68 = *(v63 + 1952);
    v501 = v64;
    v69 = (v67 + 24 * v64);
    v70 = v69[4];
    *(v63 + 2160) = v70;
    v71 = v69[5];
    *(v63 + 2168) = v71;
    v72 = v69[6];
    *(v63 + 2176) = v72;
    v73 = *(v68 + 40);

    v54 = [v73 string];
    sub_19A572CFC();
    v74 = [*(v68 + 40) string];
    sub_19A572CFC();
    v48 = v75;

    v515.location = v70;
    v515.length = v71;
    sub_19A57348C();
    LOBYTE(v71) = v76;

    if (v71)
    {
      goto LABEL_276;
    }

    v77 = sub_19A572F9C();
    v79 = v78;
    v81 = v80;
    v83 = v82;

    v84 = MEMORY[0x19A900970](v77, v79, v81, v83);
    v86 = v85;

    *(v63 + 2184) = v84;
    *(v63 + 2192) = v86;
    v87 = *(v72 + 32);
    *(v63 + 2380) = v87;
    type metadata accessor for EntityExtractor.NamedEntity();
    v88 = swift_dynamicCastClass();
    if (v88)
    {
      v89 = v88;

      location = v515.location;
    }

    else
    {
      location = v515.location;
      if (v87 == 2)
      {
        v91 = *(v72 + 16);
        v92 = *(v72 + 24);
        v89 = swift_allocObject();
        *(v89 + 40) = MEMORY[0x1E69E7CC0];
        *(v89 + 16) = v91;
        *(v89 + 24) = v92;
        *(v89 + 32) = 2;
      }

      else
      {
        v89 = 0;
      }
    }

    *(v63 + 2200) = v89;
    v93 = *(v63 + 2032);
    v94 = *(v93 + 16);
    if (!v94)
    {
LABEL_50:
      if (!v89)
      {
        goto LABEL_53;
      }

      if ((*(v63 + 1352) & 1) == 0)
      {
        v102 = *(v63 + 1952);
        v103 = *(v63 + 1752);
        v104 = *(*(v63 + 1576) + 20);
        v105 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        (*(*(v105 - 8) + 56))(v103 + v104, 1, 1, v105);
        *v103 = v84;
        v103[1] = v86;
        swift_storeEnumTagMultiPayload();
        v106 = *(v102 + 40);

        v107 = v106;
        sub_19A340970(v103, location, v515.length);

        v63 = v513;

        v66 = v491;
        goto LABEL_26;
      }

      v122 = *(v89 + 40);
      if (*(v122 + 16) == 1)
      {
        v123 = *(v63 + 1640);
        v124 = *(v63 + 1616);
        v125 = *(*(v63 + 1624) + 80);
        sub_19A3E3C64(v122 + ((v125 + 32) & ~v125), v123, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        if (*(v123 + *(v124 + 20)))
        {
          v126 = *(v63 + 1640);

          sub_19A3E3E40(v126, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
          goto LABEL_80;
        }

        v140 = *(v63 + 2120);
        v141 = *(v63 + 1744);
        v502 = *(v63 + 1656);
        v506 = *(v63 + 2040);
        v48 = *(v63 + 1640);
        v142 = *(v63 + 1632);
        v497 = *(v63 + 1616);
        v143 = *(v63 + 1608);
        v144 = *(v63 + 1576);
        v145 = *(v63 + 1480);
        v475 = *(v63 + 1472);
        sub_19A3E3C64(v48, v142, type metadata accessor for EntityExtractor.NamedEntity.EntityData);

        LOBYTE(v140) = sub_19A41F408(v48, v140);
        *v143 = v84;
        v143[1] = v86;
        v146 = v143 + *(v144 + 20);
        (*(v145 + 16))(v146, v142, v475);
        LOBYTE(v145) = *(v142 + *(v497 + 20));
        sub_19A3E3E40(v142, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        v147 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        *(v63 + 2208) = v147;
        v146[*(v147 + 20)] = v145;
        v146[*(v147 + 24)] = (v140 & 1) == 0;
        v148 = *(v147 - 8);
        *(v63 + 2216) = v148;
        (*(v148 + 56))(v146, 0, 1, v147);
        sub_19A3E3C64(v143, v141, type metadata accessor for NamedEntityData);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
        v149 = (*(v502 + 80) + 32) & ~*(v502 + 80);
        v150 = swift_allocObject();
        *(v63 + 2224) = v150;
        *(v150 + 16) = xmmword_19A576E10;
        sub_19A3E3C64(v141, v150 + v149, type metadata accessor for Concept);
        *(v63 + 1168) = v150;

        v151 = sub_19A3DEBC0(v515.location, v515.length, v506);
        sub_19A47086C(v151);
        v54 = *(v63 + 1168);
        *(v63 + 2232) = v54;
        v152 = *(v54 + 16);
        if (v152 == 1)
        {
          if ((*(v63 + 1352) & 4) == 0 || (sub_19A3C4F5C(v54) & 1) == 0)
          {

            if (!*(v150 + 16))
            {
              goto LABEL_282;
            }

            v180 = *(v63 + 1952);
            v181 = *(v513 + 1752);
            v182 = *(v180 + 40);
            sub_19A3E3C64(v150 + v149, v181, type metadata accessor for Concept);

            v183 = v182;

            sub_19A340970(v181, v515.location, v515.length);

            v184 = v181;
            v63 = v513;
            sub_19A3E3E40(v184, type metadata accessor for Concept);
            goto LABEL_121;
          }
        }

        else if (!v152)
        {

LABEL_121:

          v57 = *(v63 + 2176);
          v190 = *(v63 + 1744);
          v191 = *(v513 + 1640);
          v192 = *(v513 + 1608);

          sub_19A3E3E40(v190, type metadata accessor for Concept);
          sub_19A3E3E40(v192, type metadata accessor for NamedEntityData);
          v193 = v191;
          v63 = v513;
          sub_19A3E3E40(v193, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
          goto LABEL_22;
        }

        v48 = v63;
        if (*(v63 + 1288) != 1)
        {
          v171 = *(v63 + 1304);
          if (v171)
          {
            v404 = *(*(v48 + 1952) + 40);

            v405 = [v404 string];
            v406 = sub_19A572CFC();
            v408 = v407;

            *(v48 + 2240) = v408;
            *(v48 + 1184) = v54;
            v514 = v171 + *v171;
            v409 = swift_task_alloc();
            *(v48 + 2248) = v409;
            *v409 = v48;
            v409[1] = sub_19A3CC9EC;
            v376 = *(v48 + 1560);
            v377 = (v48 + 1184);
            v378 = v406;
            v379 = v408;
            v381 = v515.length;
            v380 = v515.location;
            v382 = v514;
            goto LABEL_233;
          }
        }

        v172 = *(v48 + 1952);

        v173 = *(v172 + 40);
        v174 = qword_1EAF9F838;

        v175 = v173;
        if (v174 != -1)
        {
          swift_once();
        }

        v176 = *(v48 + 1656);
        v177 = *(v48 + 1648);
        v178 = *(v48 + 1568);
        v179 = qword_1EAFCA248;
        *(v48 + 1176) = v54;
        swift_bridgeObjectRetain_n();
        [v175 addAttribute:v179 value:sub_19A57402C() range:v515];
        swift_unknownObjectRelease();

        (*(v176 + 56))(v178, 1, 1, v177);
        v63 = v48;
        if ((*(v176 + 48))(*(v48 + 1568), 1, *(v48 + 1648)) == 1)
        {

          v490 = *(v48 + 2144);
        }

        else
        {
          v185 = *(v48 + 2168);
          v186 = *(v48 + 2160);
          v63 = *(v48 + 2144);
          v187 = *(v48 + 2040);
          v54 = swift_task_alloc();
          *(v54 + 16) = v186;
          *(v54 + 24) = v185;
          swift_beginAccess();
          v188 = sub_19A3E3548((v187 + 16), sub_19A3E406C, v54);
          if (v63)
          {
            goto LABEL_236;
          }

          v189 = *(*(*(v48 + 2040) + 16) + 16);
          if (v189 < v188)
          {
            goto LABEL_283;
          }

          sub_19A46B010(v188, v189);
          swift_endAccess();
          v63 = v513;

          v490 = 0;
        }

        sub_19A2F3FA0(*(v63 + 1568), &qword_1EAFA10A8, &qword_19A581278);
        goto LABEL_121;
      }

LABEL_80:
      v127 = *(v513 + 1840);
      v128 = *(v513 + 1480);
      v129 = *(v513 + 1472);
      sub_19A33546C(*(v513 + 1280), v127, &qword_1EAF9FD80, &unk_19A57B720);
      v130 = v127;
      v63 = v513;
      if ((*(v128 + 48))(v130, 1, v129) == 1)
      {
        sub_19A2F3FA0(*(v513 + 1840), &qword_1EAF9FD80, &unk_19A57B720);
        goto LABEL_84;
      }

      (*(*(v513 + 1480) + 32))(*(v513 + 1496), *(v513 + 1840), *(v513 + 1472));
      if (*(*(v89 + 40) + 16))
      {
        (*(*(v513 + 1480) + 8))(*(v513 + 1496), *(v513 + 1472));
LABEL_84:
        if (*(*(v89 + 40) + 16))
        {
          goto LABEL_213;
        }

        v131 = *(v513 + 2040);
        v132 = *(v513 + 1696);
        v133 = *(v513 + 1656);
        v48 = *(v513 + 1576);

        v134 = *(v48 + 20);
        v135 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        *(v513 + 2304) = v135;
        v136 = *(v135 - 8);
        *(v513 + 2312) = v136;
        (*(v136 + 56))(v132 + v134, 1, 1, v135);
        *v132 = v84;
        v132[1] = v86;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
        v137 = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v63 = swift_allocObject();
        *(v513 + 2320) = v63;
        *(v63 + 16) = xmmword_19A576E10;
        sub_19A3E3C64(v132, v63 + v137, type metadata accessor for Concept);
        *(v513 + 1136) = v63;

        v138 = sub_19A3DEBC0(v515.location, v515.length, v131);
        sub_19A47086C(v138);
        v54 = *(v513 + 1136);
        *(v513 + 2328) = v54;
        v139 = *(v54 + 16);
        if (v139 != 1)
        {
          if (!v139)
          {

            v63 = v513;
            goto LABEL_128;
          }

LABEL_93:
          v119 = v513;
          if (*(v513 + 1288) != 1)
          {
            v63 = *(v513 + 1304);
            if (v63)
            {
              goto LABEL_224;
            }
          }

          v153 = *(*(v513 + 1952) + 40);
          v154 = qword_1EAF9F838;

          v155 = v153;
          if (v154 != -1)
          {
            swift_once();
          }

          v156 = *(v513 + 1656);
          v157 = *(v513 + 1648);
          v158 = *(v513 + 1536);
          v159 = qword_1EAFCA248;
          *(v513 + 1112) = v54;
          swift_bridgeObjectRetain_n();
          [v155 addAttribute:v159 value:sub_19A57402C() range:v515];
          swift_unknownObjectRelease();

          (*(v156 + 56))(v158, 1, 1, v157);
          v63 = v513;
          if ((*(v156 + 48))(*(v513 + 1536), 1, *(v513 + 1648)) == 1)
          {
          }

          else
          {
            v53 = *(v513 + 2168);
            v163 = *(v513 + 2160);
            v164 = *(v513 + 2040);
            v165 = swift_task_alloc();
            v515.length = v163;
            *(v165 + 16) = v163;
            *(v165 + 24) = v53;
            swift_beginAccess();
            v54 = *(v164 + 16);
            v166 = (v54 + 16);
            v48 = *(v54 + 16);
            if (v48)
            {
              v63 = 0;
              v3 = 1;
              v167 = v163;
              while (1)
              {
                v168 = *(v513 + 1424);
                v169 = (*(v168 + 80) + 32) & ~*(v168 + 80);
                v170 = *(v168 + 72);
                v530.location = v515.length;
                v530.length = v53;
                if (NSIntersectionRange(*(v54 + v169 + v170 * v63 + *(*(v513 + 1416) + 48)), v530).length > 0)
                {
                  break;
                }

                ++v63;
                ++v3;
                if (v48 == v63)
                {
                  v63 = *v166;
                  v48 = *v166;
                  goto LABEL_125;
                }
              }

              v48 = v63 + 1;
              if (__OFADD__(v63, 1))
              {
                goto LABEL_284;
              }

              v194 = *v166;
              if (v48 != *v166)
              {
                v7 = v169 + v170 * v3;
                v503 = v53;
                while (v48 < v194)
                {
                  v3 = v54 + v7;
                  v531.location = v167;
                  v531.length = v53;
                  if (NSIntersectionRange(*(v54 + v7 + *(*(v513 + 1416) + 48)), v531).length <= 0)
                  {
                    if (v48 != v63)
                    {
                      if ((v63 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_277;
                      }

                      v198 = *v166;
                      if (v63 >= *v166)
                      {
                        goto LABEL_278;
                      }

                      v515.location = v63 * v170;
                      v199 = v54 + v169 + v63 * v170;
                      v507 = v54;
                      v54 = &qword_19A578B00;
                      sub_19A33546C(v199, *(v513 + 1464), &qword_1EAF9FFE0, &qword_19A578B00);
                      if (v48 >= v198)
                      {
                        goto LABEL_279;
                      }

                      sub_19A33546C(v3, *(v513 + 1456), &qword_1EAF9FFE0, &qword_19A578B00);
                      v54 = v507;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v54 = sub_19A32E604(v507);
                      }

                      sub_19A3E3898(*(v513 + 1456), v54 + v169 + v515.location);
                      if (v48 >= *(v54 + 16))
                      {
                        goto LABEL_280;
                      }

                      v197 = *(v513 + 2040);
                      sub_19A3E3898(*(v513 + 1464), v54 + v7);
                      *(v197 + 16) = v54;
                      v53 = v503;
                      v167 = v515.length;
                    }

                    ++v63;
                  }

                  ++v48;
                  v166 = (v54 + 16);
                  v194 = *(v54 + 16);
                  v7 += v170;
                  if (v48 == v194)
                  {
                    goto LABEL_124;
                  }
                }

LABEL_270:
                __break(1u);
                goto LABEL_271;
              }

LABEL_124:
              if (v48 < v63)
              {
                goto LABEL_281;
              }
            }

            else
            {
              v63 = 0;
            }

LABEL_125:
            v195 = v63;
            v63 = v513;
            sub_19A46B010(v195, v48);
            swift_endAccess();
          }

          sub_19A2F3FA0(*(v63 + 1536), &qword_1EAFA10A8, &qword_19A581278);
          goto LABEL_127;
        }

        if (*(v513 + 1352) & 4) != 0 && (sub_19A3C4F5C(v54))
        {
          goto LABEL_93;
        }

        if (!*(v63 + 16))
        {
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
          v470 = *(*(v48 + 1952) + 40);

          v471 = [v470 string];
          v372 = sub_19A572CFC();
          v374 = v472;

          *(v48 + 2288) = v374;
          *(v48 + 1152) = v54;
          v510 = (v63 + *v63);
          v473 = swift_task_alloc();
          *(v48 + 2296) = v473;
          *v473 = v48;
          v473[1] = sub_19A3D11E0;
          v376 = *(v48 + 1544);
          v377 = (v48 + 1152);
LABEL_225:
          v378 = v372;
          v379 = v374;
          v381 = v515.length;
          v380 = v515.location;
          v382 = v510;
LABEL_233:

          v382(v376, v378, v379, v380, v381, v377);
          return;
        }

        v160 = *(v513 + 1752);
        v161 = *(*(v513 + 1952) + 40);
        sub_19A3E3C64(v63 + v137, v160, type metadata accessor for Concept);

        v162 = v161;
        v63 = v513;

        sub_19A340970(v160, v515.location, v515.length);

        sub_19A3E3E40(v160, type metadata accessor for Concept);
LABEL_127:

LABEL_128:

        v57 = *(v63 + 2176);
        v196 = *(v63 + 1696);

        sub_19A3E3E40(v196, type metadata accessor for Concept);
        v490 = *(v63 + 2144);
        goto LABEL_22;
      }

      v200 = *(v513 + 2120);
      v201 = *(v513 + 1720);
      v202 = *(v513 + 1656);
      v508 = *(v513 + 2040);
      v203 = *(v513 + 1576);
      v204 = *(v513 + 1496);
      v205 = *(v513 + 1480);
      v206 = *(v513 + 1472);

      v207 = sub_19A41F408(v204, v200);
      v208 = v201 + *(v203 + 20);
      (*(v205 + 16))(v208, v204, v206);
      v209 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      *(v513 + 2256) = v209;
      v208[*(v209 + 20)] = 0;
      v208[*(v209 + 24)] = (v207 & 1) == 0;
      v210 = *(v209 - 8);
      *(v513 + 2264) = v210;
      v48 = v513;
      (*(v210 + 56))(v208, 0, 1, v209);
      *v201 = v84;
      v201[1] = v86;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
      v211 = (*(v202 + 80) + 32) & ~*(v202 + 80);
      v212 = swift_allocObject();
      *(v513 + 2272) = v212;
      *(v212 + 16) = xmmword_19A576E10;
      sub_19A3E3C64(v201, v212 + v211, type metadata accessor for Concept);
      *(v513 + 1128) = v212;

      v213 = sub_19A3DEBC0(v515.location, v515.length, v508);
      sub_19A47086C(v213);
      v54 = *(v513 + 1128);
      *(v513 + 2280) = v54;
      v214 = *(v54 + 16);
      if (v214 != 1)
      {
        if (v214)
        {
          goto LABEL_150;
        }

        goto LABEL_21;
      }

      if ((*(v513 + 1352) & 4) == 0 || (sub_19A3C4F5C(v54) & 1) == 0)
      {

        if (!*(v212 + 16))
        {
          goto LABEL_290;
        }

        v215 = *(v513 + 1752);
        v216 = *(*(v513 + 1952) + 40);
        sub_19A3E3C64(v212 + v211, v215, type metadata accessor for Concept);

        v217 = v216;

        sub_19A340970(v215, v515.location, v515.length);

        v48 = v513;
        sub_19A3E3E40(v215, type metadata accessor for Concept);
        goto LABEL_21;
      }

LABEL_150:
      if (*(v513 + 1288) != 1)
      {
        v63 = *(v513 + 1304);
        if (v63)
        {
          goto LABEL_285;
        }
      }

      v218 = *(*(v513 + 1952) + 40);
      v219 = qword_1EAF9F838;

      v220 = v218;
      if (v219 != -1)
      {
        swift_once();
      }

      v221 = *(v513 + 1656);
      v222 = *(v513 + 1648);
      v3 = *(v513 + 1552);
      v223 = qword_1EAFCA248;
      *(v513 + 1144) = v54;
      swift_bridgeObjectRetain_n();
      [v220 addAttribute:v223 value:sub_19A57402C() range:v515];
      swift_unknownObjectRelease();

      (*(v221 + 56))(v3, 1, 1, v222);
      v7 = *(v221 + 48);
      v49 = (v7)(*(v513 + 1552), 1, *(v513 + 1648));
      goto LABEL_15;
    }

    v95 = location + v515.length;
    if (__OFADD__(location, v515.length))
    {
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      v353 = *(v63 + 2120);
      v354 = *(v63 + 1352);

      v356 = sub_19A3E2C08(v355, v84, v86, v353);
      *(v63 + 2352) = v356;
      *(v63 + 2360) = v490;

      v357 = swift_task_alloc();
      *(v63 + 2368) = v357;
      *v357 = v63;
      v357[1] = sub_19A3DA250;
      v358 = *(v63 + 2040);
      v359 = *(v63 + 1952);
      v360 = v486[2];
      v361 = *(v63 + 1312);
      v362 = *(v63 + 1304);
      v363 = *(v63 + 1296);
      v364 = *(v63 + 1288);
      v528 = v84;
      v529 = v86;
      v527 = v360;
      v526 = v87;
      v525 = v515;
      v523 = v361;
      v524 = v359;

      sub_19A3DF2F8(v356, v515.location, v515.length, v358, (v354 & 4) != 0, v364, v363, v362);
      return;
    }

    if (v95 < location)
    {
      goto LABEL_212;
    }

    v96 = (v93 + 40);
    while (1)
    {
      v98 = *(v96 - 1);
      v97 = *v96;
      v99 = v98 < v95 && location < v97;
      v100 = !v99 || v98 == v97;
      if (!v100 && location != v95)
      {
        break;
      }

      v96 += 4;
      if (!--v94)
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    v108 = *(v63 + 2040);
    v109 = *(v513 + 1952);
    v110 = *(v513 + 1672);
    *v110 = v84;
    *(v110 + 8) = v86;
    *(v110 + 16) = v87;
    swift_storeEnumTagMultiPayload();
    v111 = *(v109 + 40);
    v63 = v513;

    v112 = v111;
    sub_19A340970(v110, location, v515.length);

    v113 = swift_task_alloc();
    *(v113 + 16) = location;
    *(v113 + 24) = v515.length;
    swift_beginAccess();
    v114 = *(v108 + 16);
    v115 = v114 + 2;
    v116 = v114[2];
    if (!v116)
    {
      v65 = 0;
      goto LABEL_25;
    }

    v65 = 0;
    v54 = 1;
    while (1)
    {
      v117 = *(v513 + 1424);
      v118 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v119 = *(v117 + 72);
      if (NSIntersectionRange(*(v114 + v118 + v119 * v65 + *(*(v513 + 1416) + 48)), v515).length > 0)
      {
        break;
      }

      ++v65;
      ++v54;
      if (v116 == v65)
      {
        v65 = *v115;
        v116 = *v115;
        goto LABEL_25;
      }
    }

    v116 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
      goto LABEL_231;
    }

    v120 = *v115;
    if (v116 != *v115)
    {
      break;
    }

LABEL_60:
    if (v116 < v65)
    {
      goto LABEL_223;
    }

LABEL_25:
    sub_19A46B010(v65, v116);
    swift_endAccess();

    v66 = v494;
LABEL_26:
    v64 = v501 + 1;
    v57 = *(v63 + 2136);
    sub_19A3E3E40(*v66, type metadata accessor for Concept);
    if ((v501 + 1) == v57)
    {
      goto LABEL_155;
    }
  }

  v54 = v118 + v119 * v54;
  while (2)
  {
    if (v116 >= v120)
    {
      __break(1u);
      goto LABEL_178;
    }

    if (NSIntersectionRange(*(v114 + v54 + *(*(v63 + 1416) + 48)), v515).length > 0)
    {
      goto LABEL_65;
    }

    if (v116 == v65)
    {
LABEL_64:
      ++v65;
LABEL_65:
      ++v116;
      v115 = v114 + 2;
      v120 = v114[2];
      v54 += v119;
      if (v116 == v120)
      {
        goto LABEL_60;
      }

      continue;
    }

    break;
  }

  if ((v65 & 0x8000000000000000) == 0)
  {
    v63 = *v115;
    if (v65 >= *v115)
    {
      goto LABEL_217;
    }

    sub_19A33546C(v114 + v118 + v65 * v119, *(v513 + 1448), &qword_1EAF9FFE0, &qword_19A578B00);
    if (v116 >= v63)
    {
      goto LABEL_218;
    }

    v63 = v513;
    sub_19A33546C(v114 + v54, *(v513 + 1440), &qword_1EAF9FFE0, &qword_19A578B00);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_19A32E604(v114);
    }

    sub_19A3E3898(*(v513 + 1440), v114 + v118 + v65 * v119);
    if (v116 >= v114[2])
    {
      goto LABEL_219;
    }

    v121 = *(v513 + 2040);
    sub_19A3E3898(*(v513 + 1448), v114 + v54);
    *(v121 + 16) = v114;
    goto LABEL_64;
  }

  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  v494 = v63;
  v365 = *(v65 + 1832);
  v366 = *(v65 + 1480);
  v367 = *(v65 + 1472);
  v368 = *(v65 + 1280);

  sub_19A33546C(v368, v365, &qword_1EAF9FD80, &unk_19A57B720);
  if ((*(v366 + 48))(v365, 1, v367) == 1)
  {
    sub_19A2F3FA0(*(v65 + 1832), &qword_1EAF9FD80, &unk_19A57B720);
    v369 = v481;
    v87 = 0x1E7517000;
    goto LABEL_241;
  }

  v383 = *(v65 + 1952);
  v384 = *(v65 + 1488);
  (*(*(v65 + 1480) + 32))(v384, *(v65 + 1832), *(v65 + 1472));
  *(v65 + 2376) = 1;
  v385 = *(v383 + 40);

  v386 = v385;
  v387 = [v386 length];
  v388 = swift_task_alloc();
  *(v388 + 16) = v384;
  *(v388 + 24) = v486;
  v389 = swift_allocObject();
  *(v389 + 16) = sub_19A3E3CCC;
  *(v389 + 24) = v388;
  *(v65 + 288) = sub_19A3E4068;
  *(v65 + 296) = v389;
  *(v65 + 256) = MEMORY[0x1E69E9820];
  *(v65 + 264) = v1;
  *(v65 + 272) = sub_19A3C4EB0;
  *(v65 + 280) = &block_descriptor_52;
  v390 = _Block_copy(v476);

  v87 = &off_1E7517000;
  [v386 enumerateAttribute:v487 inRange:0 options:v387 usingBlock:{0, v390}];

  _Block_release(v390);
  v391 = swift_isEscapingClosureAtFileLocation();

  if (v391)
  {
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
    return;
  }

  if (*v486 != 1)
  {
LABEL_231:
    v65 = v513;
    v369 = v481;
    goto LABEL_240;
  }

  v392 = *(v513 + 1664);
  v393 = *(v513 + 1576);
  v394 = *(v513 + 1488);
  v395 = *(v513 + 1480);
  v396 = *(v513 + 1472);
  v397 = sub_19A572E7C();
  v398 = v392 + *(v393 + 20);
  (*(v395 + 16))(v398, v394, v396);
  v399 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v398[*(v399 + 20)] = 0;
  v398[*(v399 + 24)] = 0;
  (*(*(v399 - 8) + 56))(v398, 0, 1, v399);
  *v392 = 0x6E6F73726570;
  v392[1] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_19A340CA4(0x206E6F73726570, 0xE700000000000000, v392, 0, v397);
  if (v494)
  {
    v400 = *(v513 + 1664);
    v401 = *(v513 + 1488);
    v402 = *(v513 + 1480);
    v403 = *(v513 + 1472);
    swift_endAccess();

    sub_19A3E3E40(v400, type metadata accessor for Concept);
    (*(v402 + 8))(v401, v403);

    v247 = v513;
    goto LABEL_208;
  }

  v410 = *(v513 + 1664);
  swift_endAccess();
  sub_19A3E3E40(v410, type metadata accessor for Concept);
  v494 = 0;
  v65 = v513;
  v369 = v481;
  v87 = &off_1E7517000;
LABEL_240:
  (*(*(v65 + 1480) + 8))(*(v65 + 1488), *(v65 + 1472));
LABEL_241:
  v411 = *(*(v65 + 1952) + 40);
  v412 = MEMORY[0x1E69E7CD0];
  *(v65 + 1208) = MEMORY[0x1E69E7CD0];
  *(v65 + 1224) = v412;

  v413 = v411;
  v414 = [v413 length];
  v415 = swift_task_alloc();
  *(v415 + 16) = v479;
  *(v415 + 24) = v480;
  v416 = swift_allocObject();
  *(v416 + 16) = sub_19A3E398C;
  *(v416 + 24) = v415;
  *(v65 + 144) = sub_19A3E4068;
  *(v65 + 152) = v416;
  *(v65 + 112) = MEMORY[0x1E69E9820];
  *(v65 + 120) = v1;
  *(v65 + 128) = sub_19A3C4EB0;
  *(v65 + 136) = &block_descriptor_30;
  v114 = v65;
  v417 = _Block_copy(v369);

  [v413 *(v87 + 3984)];
  _Block_release(v417);
  LOBYTE(v417) = swift_isEscapingClosureAtFileLocation();

  if (v417)
  {
    __break(1u);
    goto LABEL_287;
  }

  v418 = *(v65 + 1952);
  v419 = *(v65 + 1408);
  v420 = v114[175];

  v517 = v114[151];
  v505 = v114[153];

  v511 = v418[2];
  v421 = v418[4];
  v422 = v418[5];
  v516 = v418[3];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v423 = v422;
  v424 = [v423 string];
  sub_19A572CFC();

  sub_19A570C6C();
  v425 = v419 + *(v420 + 20);
  sub_19A570BFC();
  v426 = [v423 length];
  v427 = swift_task_alloc();
  *(v427 + 16) = v425;
  v428 = swift_allocObject();
  *(v428 + 16) = sub_19A3E3994;
  *(v428 + 24) = v427;
  v114[12] = sub_19A3E4068;
  v114[13] = v428;
  v114[8] = MEMORY[0x1E69E9820];
  v114[9] = v1;
  v114[10] = sub_19A3C4EB0;
  v114[11] = &block_descriptor_37;
  v429 = _Block_copy(v478);

  [v423 enumerateAttribute:v487 inRange:0 options:v426 usingBlock:{0, v429}];
  _Block_release(v429);
  LOBYTE(v429) = swift_isEscapingClosureAtFileLocation();

  if (v429)
  {
LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

  v430 = *MEMORY[0x1E696A518];
  v431 = [v423 length];
  v432 = swift_task_alloc();
  *(v432 + 16) = v425;
  v433 = swift_allocObject();
  *(v433 + 16) = sub_19A3E399C;
  *(v433 + 24) = v432;
  v114[42] = sub_19A3E4068;
  v114[43] = v433;
  v114[38] = MEMORY[0x1E69E9820];
  v114[39] = v1;
  v114[40] = sub_19A3C4EB0;
  v114[41] = &block_descriptor_44;
  v434 = _Block_copy(v477);

  [v423 enumerateAttribute:v430 inRange:0 options:v431 usingBlock:{0, v434}];
  _Block_release(v434);
  v435 = swift_isEscapingClosureAtFileLocation();

  if (v435)
  {
LABEL_288:
    __break(1u);
    goto LABEL_289;
  }

  v436 = v114[176];

  *v436 = v511;
  v436[1] = v516;
  v436[2] = v421;
  v437 = MEMORY[0x1E69E6158];
  v438 = v494;
  if (v489)
  {
    sub_19A570A4C();
    sub_19A3E3F34(&qword_1ED825330, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    v439 = sub_19A572F7C();
    v114[52] = v437;
    v114[49] = v439;
    v114[50] = v440;
    sub_19A334618((v114 + 49), (v114 + 69));
    JSONValue.init(_:)(v114 + 69, &v518);
    if (v494)
    {
      sub_19A3E3E40(v114[176], type metadata accessor for TextPrompt);

      __swift_destroy_boxed_opaque_existential_0Tm(v114 + 49);

      goto LABEL_175;
    }

    v442 = v518;
    v443 = swift_isUniquelyReferenced_nonNull_native();
    v519 = v489;
    sub_19A33D400(v442, 0x65746E656D677561, 0xEF74706D6F725064, v443);
    v441 = v519;
    __swift_destroy_boxed_opaque_existential_0Tm(v114 + 49);
  }

  else
  {
    v441 = 0;
  }

  v444 = v114[161];
  if (v444 > 1)
  {
    v512 = v114[259];
    v445 = *(v513 + 2056);
    v446 = *(v513 + 1912);
    v447 = *(v513 + 1904);
    v500 = v447;
    v448 = *(v513 + 1296);
    v449 = swift_task_alloc();
    v445(v449, v446, v447);

    v450 = swift_slowAlloc();
    *v450 = 0;
    v451 = sub_19A57234C();
    v452 = sub_19A57361C();
    v453 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v451, v452, v453, "reportConcepts", "", v450, 2u);

    sub_19A3C3960(v454, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
    v444();

    v455 = sub_19A57360C();
    v456 = sub_19A5722FC();
    v114 = v513;
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v451, v455, v456, "reportConcepts", "", v450, 2u);

    v438 = v494;

    MEMORY[0x19A902C50](v450, -1, -1);
    sub_19A2E0A60(v444, v448);
    v512(v449, v500);
  }

  else
  {
  }

  if (v441)
  {
    v457 = sub_19A3C3960(v517, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
    v114[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
    v114[65] = v457;
    sub_19A334618((v114 + 65), (v114 + 61));
    JSONValue.init(_:)(v114 + 61, &v518);
    if (v438)
    {
      sub_19A3E3E40(v114[176], type metadata accessor for TextPrompt);

      __swift_destroy_boxed_opaque_existential_0Tm(v114 + 65);
LABEL_174:

LABEL_175:

      v247 = v114;
      goto LABEL_208;
    }

    v458 = v518;
    v459 = swift_isUniquelyReferenced_nonNull_native();
    v519 = v441;
    sub_19A33D400(v458, 0xD000000000000012, 0x800000019A595740, v459);
    v234 = v519;
    __swift_destroy_boxed_opaque_existential_0Tm(v114 + 65);
    v438 = 0;
  }

  else
  {

    v234 = 0;
  }

  if (*(v505 + 16))
  {
    v460 = sub_19A3C3960(v505, sub_19A31EFA0, MEMORY[0x1E69695A8], sub_19A32ED90);
    sub_19A3E39A4(v460);
    if (v438)
    {
      v247 = v513;
      sub_19A3E3E40(*(v513 + 1408), type metadata accessor for TextPrompt);

      goto LABEL_208;
    }

LABEL_262:

    v114 = v513;
  }

  else
  {
  }

  if (v234)
  {
    v461 = v114[165];
    if (v461)
    {
      LOBYTE(v519) = v488;
      v520 = v234;
      v461(&v519);
    }
  }

  v462 = v114[244];
  v463 = v114[237];
  v464 = v114[235];
  v474 = v114[234];
  v465 = v114[176];
  sub_19A3E3C64(v465, v114[154], type metadata accessor for TextPrompt);
  v466 = [*(v462 + 40) string];
  v467 = sub_19A572CFC();
  v493 = v468;
  v496 = v467;

  sub_19A3E3E40(v465, type metadata accessor for TextPrompt);

  sub_19A3DF010("validateText", 12, 2);

  (*(v464 + 8))(v463, v474);

  v469 = v114[1];

  v469(v496, v493);
}

uint64_t sub_19A3D59D4()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3D5AEC, 0, 0);
}

void sub_19A3D5AEC()
{
  v549 = v0;
  v515 = (v0 + 2376);
  aBlock = (v0 + 16);
  v506 = (v0 + 64);
  v509 = (v0 + 112);
  v513 = (v0 + 160);
  v516 = (v0 + 208);
  v504 = (v0 + 256);
  v511 = v0 + 1160;
  v517 = v0 + 1192;
  v512 = v0 + 1200;
  v507 = v0 + 1224;
  v508 = v0 + 1208;
  v2 = *(v0 + 1656);
  v3 = *(v0 + 1648);
  v4 = *(v0 + 1528);
  v5 = *(v2 + 48);
  v505 = (v0 + 304);
  if (v5(v4, 1, v3) == 1)
  {
    v6 = *(v0 + 1536);
    sub_19A2E0A60(*(v0 + 1304), *(v0 + 1312));
    sub_19A2F3FA0(v4, &qword_1EAFA10A8, &qword_19A581278);
    (*(v2 + 56))(v6, 1, 1, v3);
    goto LABEL_14;
  }

  v7 = *(v0 + 1688);
  v8 = *(v0 + 1680);
  sub_19A3E3DD8(v4, v7, type metadata accessor for Concept);
  sub_19A3E3C64(v7, v8, type metadata accessor for Concept);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v9 = *(v0 + 2312);
    v10 = *(v0 + 2304);
    v11 = *(v0 + 1584);
    v12 = *(v0 + 1576);
    v13 = *(v0 + 1504);
    sub_19A3E3DD8(*(v0 + 1680), v11, type metadata accessor for NamedEntityData);
    sub_19A3E3C64(v11 + *(v12 + 20), v13, type metadata accessor for NamedEntityData.NamedEntityType);
    if ((*(v9 + 48))(v13, 1, v10) != 1)
    {
      v37 = *(v0 + 2168);
      v38 = *(v0 + 2160);
      v39 = v5;
      v40 = *(v0 + 1952);
      v41 = *(v0 + 1688);
      v542 = *(v0 + 1584);
      v42 = *(v0 + 1312);
      v43 = *(v0 + 1304);
      sub_19A3E3E40(*(v0 + 1504), type metadata accessor for NamedEntityData.NamedEntityType);
      v44 = *(v40 + 40);

      v45 = v44;
      sub_19A340970(v41, v38, v37);
      sub_19A2E0A60(v43, v42);

      v5 = v39;
      v28 = type metadata accessor for NamedEntityData;
      v29 = v542;
      goto LABEL_12;
    }

    v14 = *(v0 + 1504);
    sub_19A3E3E40(*(v0 + 1584), type metadata accessor for NamedEntityData);
    v15 = type metadata accessor for NamedEntityData.NamedEntityType;
    v16 = v14;
  }

  else
  {
    v16 = *(v0 + 1680);
    v15 = type metadata accessor for Concept;
  }

  sub_19A3E3E40(v16, v15);
  v17 = *(v0 + 2380);
  if (v17 != 3 && (*(v0 + 2378) & 1) == 0)
  {
    v18 = *(v0 + 2192);
    v19 = *(v0 + 2168);
    v20 = *(v0 + 2160);
    v21 = v5;
    v22 = *(v0 + 1952);
    v23 = *(v0 + 1752);
    v542 = *(v0 + 1312);
    v24 = *(v0 + 1304);
    *v23 = *(v0 + 2184);
    *(v23 + 8) = v18;
    *(v23 + 16) = v17;
    swift_storeEnumTagMultiPayload();
    v25 = *(v22 + 40);

    v26 = v25;
    v5 = v21;
    v27 = v26;
    sub_19A340970(v23, v20, v19);
    sub_19A2E0A60(v24, v542);

    v28 = type metadata accessor for Concept;
    v29 = v23;
LABEL_12:
    sub_19A3E3E40(v29, v28);
    goto LABEL_13;
  }

  v30 = *(v0 + 2168);
  v31 = *(v0 + 2160);
  v32 = *(v0 + 1688);
  v33 = *(v0 + 1312);
  v34 = *(v0 + 1304);
  v35 = *(*(v0 + 1952) + 40);

  v36 = v35;
  sub_19A340970(v32, v31, v30);
  sub_19A2E0A60(v34, v33);

LABEL_13:
  v46 = *(v0 + 1656);
  v47 = *(v0 + 1648);
  v48 = *(v0 + 1536);
  sub_19A3E3DD8(*(v0 + 1688), v48, type metadata accessor for Concept);
  (*(v46 + 56))(v48, 0, 1, v47);
LABEL_14:
  v519 = v0 + 1752;
  v522 = (v0 + 1672);
  v514 = 1;
  v49 = v0;
  v537 = v0;
  v50 = v5(v49[192], 1, v49[206]);
  while (2)
  {
    if (v50 == 1)
    {
    }

    else
    {
      v51 = v49[271];
      v52 = v49[270];
      v53 = v49[255];
      v54 = swift_task_alloc();
      v542 = v52;
      v54[2] = v52;
      v54[3] = v51;
      swift_beginAccess();
      v55 = *(v53 + 16);
      v56 = v55 + 2;
      v57 = v55[2];
      if (v57)
      {
        v58 = 0;
        v59 = 1;
        v60 = v52;
        while (1)
        {
          v61 = *(v537 + 1424);
          v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v63 = *(v61 + 72);
          v559.location = v542;
          v559.length = v51;
          if (NSIntersectionRange(*(v55 + v62 + v63 * v58 + *(*(v537 + 1416) + 48)), v559).length > 0)
          {
            break;
          }

          ++v58;
          ++v59;
          if (v57 == v58)
          {
            v58 = *v56;
            v57 = *v56;
            goto LABEL_26;
          }
        }

        v57 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_280;
        }

        v64 = *v56;
        if (v57 != *v56)
        {
          v241 = v62 + v63 * v59;
          v533 = v51;
          while (v57 < v64)
          {
            v59 = v55 + v241;
            v562.location = v60;
            v562.length = v51;
            if (NSIntersectionRange(*(v55 + v241 + *(*(v537 + 1416) + 48)), v562).length <= 0)
            {
              if (v57 != v58)
              {
                if (v58 < 0)
                {
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
                  v497 = *(*(v59 + 1952) + 40);

                  v498 = [v497 string];
                  v433 = sub_19A572CFC();
                  v435 = v499;

                  *(v59 + 2336) = v435;
                  *(v59 + 1120) = v55;
                  v535 = (v58 + *v58);
                  v500 = swift_task_alloc();
                  *(v59 + 2344) = v500;
                  *v500 = v59;
                  v500[1] = sub_19A3D59D4;
                  v424 = *(v59 + 1528);
                  v425 = v59 + 1120;
LABEL_236:
                  v426 = v433;
                  v427 = v435;
                  v429 = v539;
                  v428 = v542;
                  v430 = v535;
LABEL_237:

                  v430(v424, v426, v427, v428, v429, v425);
                  return;
                }

                v243 = *v56;
                if (v58 >= *v56)
                {
                  goto LABEL_274;
                }

                v539 = v58 * v63;
                sub_19A33546C(v55 + v62 + v58 * v63, *(v537 + 1464), &qword_1EAF9FFE0, &qword_19A578B00);
                if (v57 >= v243)
                {
                  goto LABEL_275;
                }

                sub_19A33546C(v55 + v241, *(v537 + 1456), &qword_1EAF9FFE0, &qword_19A578B00);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v55 = sub_19A32E604(v55);
                }

                sub_19A3E3898(*(v537 + 1456), v55 + v62 + v539);
                if (v57 >= v55[2])
                {
                  goto LABEL_276;
                }

                v242 = *(v537 + 2040);
                sub_19A3E3898(*(v537 + 1464), v55 + v241);
                *(v242 + 16) = v55;
                v51 = v533;
                v60 = v542;
              }

              ++v58;
            }

            ++v57;
            v56 = v55 + 2;
            v64 = v55[2];
            v241 += v63;
            if (v57 == v64)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_234:
          v418 = *(*(v59 + 1952) + 40);

          v419 = [v418 string];
          v420 = sub_19A572CFC();
          v422 = v421;

          *(v59 + 2240) = v422;
          *(v59 + 1184) = v55;
          v538 = (v58 + *v58);
          v423 = swift_task_alloc();
          *(v59 + 2248) = v423;
          *v423 = v59;
          v423[1] = sub_19A3CC9EC;
          v424 = *(v59 + 1560);
          v425 = v59 + 1184;
          v426 = v420;
          v427 = v422;
          v429 = v539;
          v428 = v542;
          v430 = v538;
          goto LABEL_237;
        }

LABEL_25:
        if (v57 < v58)
        {
          goto LABEL_277;
        }
      }

      else
      {
        v58 = 0;
      }

LABEL_26:
      v65 = v58;
      v49 = v537;
      sub_19A46B010(v65, v57);
      swift_endAccess();
    }

    sub_19A2F3FA0(v49[192], &qword_1EAFA10A8, &qword_19A581278);

    v66 = v49[272];
    v67 = v49[212];

    sub_19A3E3E40(v67, type metadata accessor for Concept);
    v518 = v49[268];
    v68 = v49[269] + 1;
    if (v68 == v49[267])
    {
      goto LABEL_157;
    }

LABEL_28:
    v49[268] = v518;
    while (1)
    {
      v49[269] = v68;
      v72 = v49[264];
      if (v68 >= *(v72 + 16))
      {
        __break(1u);
        goto LABEL_188;
      }

      v73 = v49[244];
      v527 = v68;
      v74 = (v72 + 24 * v68);
      v75 = v74[4];
      v49[270] = v75;
      v76 = v74[5];
      v49[271] = v76;
      v77 = v74[6];
      v49[272] = v77;
      v78 = *(v73 + 40);

      v79 = [v78 string];
      sub_19A572CFC();
      v80 = *(v73 + 40);
      v81 = v75;
      v82 = [v80 string];
      sub_19A572CFC();

      v539 = v76;
      sub_19A57348C();
      LOBYTE(v76) = v83;

      if (v76)
      {
        goto LABEL_284;
      }

      v84 = sub_19A572F9C();
      v86 = v85;
      v88 = v87;
      v90 = v89;

      v91 = MEMORY[0x19A900970](v84, v86, v88, v90);
      v93 = v92;

      v49[273] = v91;
      v49[274] = v93;
      LODWORD(v69) = *(v77 + 32);
      *(v49 + 2380) = v69;
      type metadata accessor for EntityExtractor.NamedEntity();
      v94 = swift_dynamicCastClass();
      v532 = v77;
      if (v94)
      {
        v95 = v94;

        v96 = v539;
      }

      else
      {
        v96 = v539;
        if (v69 == 2)
        {
          v97 = v81;
          v98 = *(v532 + 16);
          v99 = *(v532 + 24);
          v95 = swift_allocObject();
          *(v95 + 40) = MEMORY[0x1E69E7CC0];
          *(v95 + 16) = v98;
          *(v95 + 24) = v99;
          v81 = v97;
          *(v95 + 32) = 2;
        }

        else
        {
          v95 = 0;
        }
      }

      v49[275] = v95;
      v100 = v49[254];
      v101 = *(v100 + 16);
      if (v101)
      {
        v102 = v81 + v96;
        if (__OFADD__(v81, v96))
        {
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
          v380 = v49[265];
          v381 = v49[169];

          v383 = sub_19A3E2C08(v382, v91, v532, v380);
          v49[294] = v383;
          v49[295] = v518;

          v384 = swift_task_alloc();
          v49[296] = v384;
          *v384 = v49;
          v384[1] = sub_19A3DA250;
          v385 = v49[255];
          v386 = v49[244];
          v387 = v515[2];
          v388 = v49[164];
          v389 = v49[163];
          v390 = v49[162];
          v391 = v49[161];
          v557 = v91;
          v558 = v532;
          v556 = v387;
          v555 = v69;
          v553 = v542;
          v554 = v539;
          v551 = v388;
          v552 = v386;

          sub_19A3DF2F8(v383, v542, v539, v385, (v381 & 4) != 0, v391, v390, v389);
          return;
        }

        if (v102 < v81)
        {
          goto LABEL_215;
        }

        v103 = (v100 + 40);
        while (1)
        {
          v105 = *(v103 - 1);
          v104 = *v103;
          v106 = v105 < v102 && v81 < v104;
          v107 = !v106 || v105 == v104;
          if (!v107 && v81 != v102)
          {
            break;
          }

          v103 += 4;
          if (!--v101)
          {
            goto LABEL_55;
          }
        }

        v118 = v81;

        goto LABEL_59;
      }

LABEL_55:
      if (v95)
      {
        break;
      }

      v118 = v81;
LABEL_59:
      v119 = v49[255];
      v120 = *(v537 + 1952);
      v121 = *(v537 + 1672);
      *v121 = v91;
      *(v121 + 8) = v93;
      *(v121 + 16) = v69;
      swift_storeEnumTagMultiPayload();
      v122 = *(v120 + 40);
      v49 = v537;

      v123 = v122;
      sub_19A340970(v121, v118, v96);

      v124 = swift_task_alloc();
      v542 = v118;
      *(v124 + 16) = v118;
      *(v124 + 24) = v96;
      swift_beginAccess();
      v125 = *(v119 + 16);
      v126 = (v125 + 16);
      v127 = *(v125 + 16);
      if (v127)
      {
        v69 = 0;
        v128 = 1;
        while (1)
        {
          v129 = *(v537 + 1424);
          v130 = (*(v129 + 80) + 32) & ~*(v129 + 80);
          v91 = *(v129 + 72);
          v560.location = v118;
          v560.length = v96;
          if (NSIntersectionRange(*(v125 + v130 + v91 * v69 + *(*(v537 + 1416) + 48)), v560).length > 0)
          {
            break;
          }

          ++v69;
          ++v128;
          if (v127 == v69)
          {
            v69 = *v126;
            v70 = *v126;
            goto LABEL_30;
          }
        }

        v70 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          __break(1u);
          goto LABEL_232;
        }

        v131 = *v126;
        if (v70 != *v126)
        {
          v132 = v130 + v91 * v128;
          do
          {
            if (v70 >= v131)
            {
              __break(1u);
              goto LABEL_180;
            }

            v127 = v125 + v132;
            v561.length = v539;
            v561.location = v118;
            if (NSIntersectionRange(*(v125 + v132 + *(v49[1416] + 48)), v561).length <= 0)
            {
              if (v70 != v69)
              {
                if ((v69 & 0x8000000000000000) != 0)
                {
                  goto LABEL_216;
                }

                v49 = *v126;
                if (v69 >= *v126)
                {
                  goto LABEL_217;
                }

                sub_19A33546C(v125 + v130 + v69 * v91, *(v537 + 1448), &qword_1EAF9FFE0, &qword_19A578B00);
                if (v70 >= v49)
                {
                  goto LABEL_218;
                }

                sub_19A33546C(v125 + v132, *(v537 + 1440), &qword_1EAF9FFE0, &qword_19A578B00);
                v49 = v537;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v125 = sub_19A32E604(v125);
                }

                sub_19A3E3898(*(v537 + 1440), v125 + v130 + v69 * v91);
                if (v70 >= *(v125 + 16))
                {
                  goto LABEL_219;
                }

                v133 = *(v537 + 2040);
                sub_19A3E3898(*(v537 + 1448), v125 + v132);
                *(v133 + 16) = v125;
              }

              ++v69;
            }

            ++v70;
            v126 = (v125 + 16);
            v131 = *(v125 + 16);
            v132 += v91;
          }

          while (v70 != v131);
        }

        if (v70 < v69)
        {
          goto LABEL_226;
        }
      }

      else
      {
        v69 = 0;
        v70 = 0;
      }

LABEL_30:
      sub_19A46B010(v69, v70);
      swift_endAccess();

      v71 = v522;
LABEL_31:
      v68 = v527 + 1;
      v66 = v49[267];
      sub_19A3E3E40(*v71, type metadata accessor for Concept);
      if ((v527 + 1) == v66)
      {
        goto LABEL_157;
      }
    }

    if ((v49[169] & 1) == 0)
    {
      v109 = v91;
      v110 = v81;
      v111 = v49[244];
      v112 = v49[219];
      v113 = *(v49[197] + 20);
      v114 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      v115 = v112 + v113;
      v49 = v537;
      (*(*(v114 - 8) + 56))(v115, 1, 1, v114);
      *v112 = v109;
      v112[1] = v93;
      swift_storeEnumTagMultiPayload();
      v116 = *(v111 + 40);

      v117 = v116;
      sub_19A340970(v112, v110, v96);

      v71 = v519;
      goto LABEL_31;
    }

    v532 = v93;
    v542 = v81;
    v134 = *(v95 + 40);
    if (*(v134 + 16) != 1)
    {

LABEL_86:
      v139 = *(v537 + 1840);
      v140 = *(v537 + 1480);
      v141 = *(v537 + 1472);
      sub_19A33546C(*(v537 + 1280), v139, &qword_1EAF9FD80, &unk_19A57B720);
      v142 = v139;
      v49 = v537;
      if ((*(v140 + 48))(v142, 1, v141) == 1)
      {
        sub_19A2F3FA0(*(v537 + 1840), &qword_1EAF9FD80, &unk_19A57B720);
        goto LABEL_90;
      }

      (*(*(v537 + 1480) + 32))(*(v537 + 1496), *(v537 + 1840), *(v537 + 1472));
      if (*(*(v95 + 40) + 16))
      {
        (*(*(v537 + 1480) + 8))(*(v537 + 1496), *(v537 + 1472));
LABEL_90:
        if (*(*(v95 + 40) + 16))
        {
          goto LABEL_220;
        }

        v143 = *(v537 + 2040);
        v144 = *(v537 + 1696);
        v145 = *(v537 + 1656);
        v146 = *(v537 + 1576);

        v147 = *(v146 + 20);
        v148 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        *(v537 + 2304) = v148;
        v149 = *(v148 - 8);
        *(v537 + 2312) = v149;
        (*(v149 + 56))(v144 + v147, 1, 1, v148);
        *v144 = v91;
        v144[1] = v93;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
        v150 = (*(v145 + 80) + 32) & ~*(v145 + 80);
        v151 = swift_allocObject();
        *(v537 + 2320) = v151;
        *(v151 + 16) = xmmword_19A576E10;
        sub_19A3E3C64(v144, v151 + v150, type metadata accessor for Concept);
        *(v537 + 1136) = v151;

        v152 = sub_19A3DEBC0(v542, v539, v143);
        sub_19A47086C(v152);
        v55 = *(v537 + 1136);
        *(v537 + 2328) = v55;
        v153 = v55[2];
        if (v153 == 1)
        {
          if (*(v537 + 1352) & 4) != 0 && (sub_19A3C4F5C(v55))
          {
LABEL_152:
            v59 = v537;
            if (*(v537 + 1288) != 1)
            {
              v58 = *(v537 + 1304);
              if (v58)
              {
                goto LABEL_278;
              }
            }

            v244 = *(*(v537 + 1952) + 40);
            v245 = qword_1EAF9F838;

            v246 = v244;
            if (v245 != -1)
            {
              swift_once();
            }

            v247 = *(v537 + 1656);
            v248 = *(v537 + 1648);
            v249 = *(v537 + 1536);
            v250 = qword_1EAFCA248;
            *(v537 + 1112) = v55;
            swift_bridgeObjectRetain_n();
            [v246 addAttribute:v250 value:sub_19A57402C() range:{v542, v539}];
            swift_unknownObjectRelease();

            (*(v247 + 56))(v249, 1, 1, v248);
            v49 = v537;
            v50 = (*(v247 + 48))(v49[192], 1, v49[206]);
            continue;
          }

          if (!*(v151 + 16))
          {
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
            goto LABEL_286;
          }

          v154 = v537;
          v155 = *(v537 + 1752);
          v156 = *(*(v537 + 1952) + 40);
          sub_19A3E3C64(v151 + v150, v155, type metadata accessor for Concept);

          v157 = v156;

          sub_19A340970(v155, v542, v539);

          sub_19A3E3E40(v155, type metadata accessor for Concept);
        }

        else
        {
          if (v153)
          {
            goto LABEL_152;
          }

          v154 = v537;
        }

        v66 = v154[272];
        v158 = v154[212];

        sub_19A3E3E40(v158, type metadata accessor for Concept);
        v518 = v154[268];
        v68 = v154[269] + 1;
        v49 = v154;
        if (v68 != v154[267])
        {
          goto LABEL_28;
        }

        goto LABEL_157;
      }

      v174 = *(v537 + 2120);
      v175 = *(v537 + 2040);
      v176 = *(v537 + 1720);
      v177 = *(v537 + 1656);
      v178 = *(v537 + 1576);
      v179 = *(v537 + 1496);
      v180 = *(v537 + 1480);
      v181 = v91;
      v182 = *(v537 + 1472);

      v183 = sub_19A41F408(v179, v174);
      v184 = v176 + *(v178 + 20);
      (*(v180 + 16))(v184, v179, v182);
      v185 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      *(v537 + 2256) = v185;
      v184[*(v185 + 20)] = 0;
      v184[*(v185 + 24)] = (v183 & 1) == 0;
      v186 = *(v185 - 8);
      *(v537 + 2264) = v186;
      v187 = v184;
      v188 = v537;
      (*(v186 + 56))(v187, 0, 1, v185);
      *v176 = v181;
      v176[1] = v532;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
      v189 = (*(v177 + 80) + 32) & ~*(v177 + 80);
      v190 = swift_allocObject();
      *(v537 + 2272) = v190;
      *(v190 + 16) = xmmword_19A576E10;
      sub_19A3E3C64(v176, v190 + v189, type metadata accessor for Concept);
      *(v537 + 1128) = v190;

      v191 = sub_19A3DEBC0(v542, v539, v175);
      sub_19A47086C(v191);
      v192 = *(v537 + 1128);
      *(v537 + 2280) = v192;
      v193 = *(v192 + 16);
      if (v193 == 1)
      {
        if ((*(v537 + 1352) & 4) == 0 || (sub_19A3C4F5C(v192) & 1) == 0)
        {

          if (!*(v190 + 16))
          {
LABEL_287:
            __break(1u);
            goto LABEL_288;
          }

          v226 = *(v537 + 1752);
          v227 = *(*(v537 + 1952) + 40);
          sub_19A3E3C64(v190 + v189, v226, type metadata accessor for Concept);

          v228 = v227;

          sub_19A340970(v226, v542, v539);

          v229 = v226;
          v188 = v537;
          sub_19A3E3E40(v229, type metadata accessor for Concept);
          goto LABEL_135;
        }
      }

      else if (!v193)
      {

        goto LABEL_135;
      }

      if (*(v537 + 1288) != 1)
      {
        v218 = *(v537 + 1304);
        if (v218)
        {
          v431 = *(*(v537 + 1952) + 40);

          v432 = [v431 string];
          v433 = sub_19A572CFC();
          v435 = v434;

          *(v537 + 2288) = v435;
          *(v537 + 1152) = v192;
          v535 = (v218 + *v218);
          v436 = swift_task_alloc();
          *(v537 + 2296) = v436;
          *v436 = v537;
          v436[1] = sub_19A3D11E0;
          v424 = *(v537 + 1544);
          v425 = v537 + 1152;
          goto LABEL_236;
        }
      }

      v219 = *(*(v537 + 1952) + 40);
      v220 = qword_1EAF9F838;

      v221 = v219;
      if (v220 != -1)
      {
        swift_once();
      }

      v222 = *(v537 + 1656);
      v223 = *(v537 + 1648);
      v224 = *(v537 + 1552);
      v225 = qword_1EAFCA248;
      *(v537 + 1144) = v192;
      swift_bridgeObjectRetain_n();
      [v221 addAttribute:v225 value:sub_19A57402C() range:{v542, v539}];
      swift_unknownObjectRelease();

      (*(v222 + 56))(v224, 1, 1, v223);
      v188 = v537;
      if ((*(v222 + 48))(*(v537 + 1552), 1, *(v537 + 1648)) == 1)
      {

        v518 = *(v537 + 2144);
      }

      else
      {
        v230 = *(v537 + 2168);
        v231 = *(v537 + 2160);
        v232 = *(v537 + 2144);
        v233 = *(v537 + 2040);
        v234 = swift_task_alloc();
        *(v234 + 16) = v231;
        *(v234 + 24) = v230;
        swift_beginAccess();
        v235 = sub_19A3E3548((v233 + 16), sub_19A3E3908, v234);
        if (v232)
        {
          goto LABEL_270;
        }

        v236 = *(*(*(v537 + 2040) + 16) + 16);
        if (v236 < v235)
        {
LABEL_288:
          __break(1u);
          goto LABEL_289;
        }

        sub_19A46B010(v235, v236);
        swift_endAccess();

        v188 = v537;

        v518 = 0;
      }

      sub_19A2F3FA0(v188[194], &qword_1EAFA10A8, &qword_19A581278);
LABEL_135:

      v66 = v188[272];
      v237 = v188[215];
      v215 = v188;
      v238 = v188[187];
      v239 = v215[185];
      v240 = v215[184];

      sub_19A3E3E40(v237, type metadata accessor for Concept);
      (*(v239 + 8))(v238, v240);
      goto LABEL_136;
    }

    break;
  }

  v135 = v49[205];
  v136 = v49[202];
  v137 = *(v49[203] + 80);
  sub_19A3E3C64(v134 + ((v137 + 32) & ~v137), v135, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
  if (*(v135 + *(v136 + 20)))
  {
    v138 = v49[205];

    sub_19A3E3E40(v138, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
    goto LABEL_86;
  }

  v159 = v49[265];
  v160 = v49[218];
  v525 = v49[207];
  v528 = v49[255];
  v161 = v49[205];
  v162 = v91;
  v163 = v49[204];
  v164 = v49[201];
  v165 = v49[197];
  v166 = v49[185];
  v502 = v49[184];
  v503 = v49[202];
  sub_19A3E3C64(v161, v163, type metadata accessor for EntityExtractor.NamedEntity.EntityData);

  LOBYTE(v161) = sub_19A41F408(v161, v159);
  *v164 = v162;
  v164[1] = v532;
  v167 = v164 + *(v165 + 20);
  (*(v166 + 16))(v167, v163, v502);
  LOBYTE(v166) = *(v163 + *(v503 + 20));
  sub_19A3E3E40(v163, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
  v168 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v49[276] = v168;
  v167[*(v168 + 20)] = v166;
  v167[*(v168 + 24)] = (v161 & 1) == 0;
  v169 = *(v168 - 8);
  v49[277] = v169;
  (*(v169 + 56))(v167, 0, 1, v168);
  sub_19A3E3C64(v164, v160, type metadata accessor for NamedEntityData);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
  v170 = (*(v525 + 80) + 32) & ~*(v525 + 80);
  v171 = swift_allocObject();
  v49[278] = v171;
  *(v171 + 16) = xmmword_19A576E10;
  sub_19A3E3C64(v160, v171 + v170, type metadata accessor for Concept);
  v49[146] = v171;

  v172 = sub_19A3DEBC0(v542, v539, v528);
  sub_19A47086C(v172);
  v55 = v49[146];
  v49[279] = v55;
  v173 = v55[2];
  if (v173 == 1)
  {
    if (v49[169] & 4) != 0 && (sub_19A3C4F5C(v55))
    {
      goto LABEL_108;
    }

    if (*(v171 + 16))
    {
      v202 = v49[244];
      v203 = *(v537 + 1752);
      v204 = *(v202 + 40);
      sub_19A3E3C64(v171 + v170, v203, type metadata accessor for Concept);

      v205 = v204;

      sub_19A340970(v203, v542, v539);

      v206 = v203;
      v49 = v537;
      sub_19A3E3E40(v206, type metadata accessor for Concept);
      goto LABEL_120;
    }

    goto LABEL_285;
  }

  if (!v173)
  {

    goto LABEL_120;
  }

LABEL_108:
  v59 = v49;
  if (v49[161] != 1)
  {
    v58 = v49[163];
    if (v58)
    {
      goto LABEL_234;
    }
  }

  v194 = *(v59 + 1952);

  v195 = *(v194 + 40);
  v196 = qword_1EAF9F838;

  v197 = v195;
  if (v196 != -1)
  {
    swift_once();
  }

  v198 = *(v59 + 1656);
  v199 = *(v59 + 1648);
  v200 = *(v59 + 1568);
  v201 = qword_1EAFCA248;
  *(v59 + 1176) = v55;
  swift_bridgeObjectRetain_n();
  [v197 addAttribute:v201 value:sub_19A57402C() range:{v542, v539}];
  swift_unknownObjectRelease();

  (*(v198 + 56))(v200, 1, 1, v199);
  v49 = v59;
  if ((*(v198 + 48))(*(v59 + 1568), 1, *(v59 + 1648)) == 1)
  {

    v518 = *(v59 + 2144);
    goto LABEL_119;
  }

  v207 = *(v59 + 2168);
  v208 = *(v59 + 2160);
  v209 = *(v59 + 2144);
  v210 = *(v59 + 2040);
  v211 = swift_task_alloc();
  *(v211 + 16) = v208;
  *(v211 + 24) = v207;
  swift_beginAccess();
  v212 = sub_19A3E3548((v210 + 16), sub_19A3E406C, v211);
  if (v209)
  {
LABEL_270:

    swift_endAccess();
    return;
  }

  v213 = *(*(*(v59 + 2040) + 16) + 16);
  if (v213 < v212)
  {
LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  sub_19A46B010(v212, v213);
  swift_endAccess();
  v49 = v537;

  v518 = 0;
LABEL_119:
  sub_19A2F3FA0(v49[196], &qword_1EAFA10A8, &qword_19A581278);
LABEL_120:

  v66 = v49[272];
  v214 = v49[218];
  v215 = v49;
  v216 = v49[205];
  v217 = v215[201];

  sub_19A3E3E40(v214, type metadata accessor for Concept);
  sub_19A3E3E40(v217, type metadata accessor for NamedEntityData);
  sub_19A3E3E40(v216, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
LABEL_136:
  v68 = v215[269] + 1;
  v49 = v215;
  if (v68 != v215[267])
  {
    goto LABEL_28;
  }

LABEL_157:
  v251 = v49[244];

  sub_19A3DF010("buildEntityConcepts", 19, 2);

  v49[149] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v252 = *(v251 + 40);
  v253 = v49;
  v254 = qword_1EAF9F838;

  v255 = v252;
  if (v254 != -1)
  {
    swift_once();
  }

  v256 = v253[244];
  v543 = qword_1EAFCA248;
  v257 = [v255 length];
  v258 = swift_task_alloc();
  *(v258 + 16) = v517;
  *(v258 + 24) = v256;
  v259 = swift_allocObject();
  *(v259 + 16) = sub_19A3E393C;
  *(v259 + 24) = v258;
  v253[30] = sub_19A3E3944;
  v253[31] = v259;
  v253[26] = MEMORY[0x1E69E9820];
  v1 = 1107296256;
  v253[27] = 1107296256;
  v253[28] = sub_19A3C4EB0;
  v253[29] = &block_descriptor_3;
  v260 = _Block_copy(v516);
  v261 = v253[31];

  [v255 enumerateAttribute:v543 inRange:0 options:v257 usingBlock:{0, v260}];

  _Block_release(v260);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_263;
  }

  if (!*(*v517 + 16))
  {
    v275 = MEMORY[0x1E69E6158];
    v49 = v537;
    if (v515[3] == 1)
    {
      v276 = *(v537 + 1952);
      LOBYTE(v546) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
      v277 = swift_allocObject();
      *(v277 + 16) = xmmword_19A576E10;
      *(v277 + 32) = 0x74706D6F7270;
      *(v277 + 40) = 0xE600000000000000;
      v278 = [*(v276 + 40) string];
      v125 = v537;
      v279 = v278;
      v280 = sub_19A572CFC();
      v282 = v281;

      *(v277 + 72) = v275;
      *(v277 + 48) = v280;
      *(v277 + 56) = v282;
      v283 = sub_19A330370(v277);
      swift_setDeallocating();
      sub_19A2F3FA0(v277 + 32, &qword_1EAFA2F00, &qword_19A578A30);
      swift_deallocClassInstance();
      sub_19A338028(&v546, v283, &v547);
      if (v518)
      {
        goto LABEL_176;
      }

      LOBYTE(v516) = v547;
      v284 = v548;

      v518 = 0;
      v49 = v537;
    }

    else
    {
      LOBYTE(v516) = 0;
      v284 = 0;
    }

    v285 = &unk_1EAF9F000;
    v56 = &unk_1EAFCA000;
    v517 = v284;
    if (!(v49[165] | v49[169] & 2))
    {
      goto LABEL_191;
    }

    v286 = v49[244];
    v49[145] = MEMORY[0x1E69E7CD0];
    v54 = v49;
    v287 = *(v286 + 40);
    v288 = qword_1EAF9F840;

    v51 = v287;
    if (v288 != -1)
    {
      goto LABEL_281;
    }

    while (1)
    {
      v289 = v56[74];
      v290 = [v51 length];
      v291 = swift_task_alloc();
      *(v291 + 16) = v511;
      *(v291 + 24) = v286;
      v292 = swift_allocObject();
      *(v292 + 16) = sub_19A3E3CD4;
      *(v292 + 24) = v291;
      v54[6] = sub_19A3E4068;
      v54[7] = v292;
      v54[2] = MEMORY[0x1E69E9820];
      v54[3] = v1;
      v54[4] = sub_19A3C4EB0;
      v54[5] = &block_descriptor_59;
      v293 = _Block_copy(aBlock);

      [v51 enumerateAttribute:v289 inRange:0 options:v290 usingBlock:{0, v293}];

      _Block_release(v293);
      v294 = swift_isEscapingClosureAtFileLocation();

      if (v294)
      {
        __break(1u);
        goto LABEL_283;
      }

      if (*(*v511 + 16))
      {
        v49 = v537;
        v127 = v517;
        if (v517)
        {

          v296 = sub_19A3C3960(v295, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          *(v537 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
          *(v537 + 424) = v296;
          sub_19A334618(v537 + 424, v537 + 456);
          v125 = v537;
          JSONValue.init(_:)((v537 + 456), &v546);
          if (v518)
          {

            __swift_destroy_boxed_opaque_existential_0Tm((v537 + 424));
            goto LABEL_176;
          }

LABEL_180:
          v297 = v546;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v547 = v127;
          sub_19A33D400(v297, 0xD000000000000010, 0x800000019A5989F0, isUniquelyReferenced_nonNull_native);
          v127 = v547;
          __swift_destroy_boxed_opaque_existential_0Tm((v125 + 424));
          v518 = 0;
          v49 = v125;
        }

        if ((v49[169] & 2) != 0)
        {

          v307 = sub_19A5723DC();
          v308 = v49;
          v309 = sub_19A57355C();
          if (os_log_type_enabled(v307, v309))
          {
            v310 = swift_slowAlloc();
            v311 = swift_slowAlloc();
            v547 = v311;
            *v310 = 136380675;
            swift_beginAccess();

            v313 = sub_19A3E51D0(v312, 8236, 0xE200000000000000);
            v315 = v314;

            v316 = sub_19A31F114(v313, v315, &v547);

            *(v310 + 4) = v316;
            _os_log_impl(&dword_19A2DE000, v307, v309, "Disallowed concepts: %{private}s", v310, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v311);
            MEMORY[0x19A902C50](v311, -1, -1);
            MEMORY[0x19A902C50](v310, -1, -1);
          }

          swift_beginAccess();

          v318 = sub_19A3C3960(v317, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          sub_19A3B8774();
          swift_allocError();
          *v319 = v318;
          *(v319 + 8) = 3;
          swift_willThrow();

          v274 = v308;
          goto LABEL_211;
        }

        v66 = sub_19A5723DC();
        v299 = sub_19A57355C();
        v517 = v127;
        if (os_log_type_enabled(v66, v299))
        {
          v300 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          v547 = v301;
          *v300 = 136380675;
          swift_beginAccess();

          v303 = sub_19A3E51D0(v302, 8236, 0xE200000000000000);
          v305 = v304;

          v306 = sub_19A31F114(v303, v305, &v547);

          *(v300 + 4) = v306;
          v49 = v537;
          _os_log_impl(&dword_19A2DE000, v66, v299, "Disallowed concepts: %{private}s", v300, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v301);
          MEMORY[0x19A902C50](v301, -1, -1);
          MEMORY[0x19A902C50](v300, -1, -1);
        }

        else
        {
LABEL_188:
        }
      }

      else
      {

        v49 = v537;
      }

      v56 = &unk_1EAFCA000;
      v285 = &unk_1EAF9F000;
LABEL_191:
      v320 = v49[255];
      swift_beginAccess();
      v321 = *(v320 + 16);
      v322 = *(v321 + 16);
      if (v322)
      {
        v323 = v49[178];
        v324 = (v49[179] + *(v49[177] + 48));
        v325 = v321 + ((*(v323 + 80) + 32) & ~*(v323 + 80));
        v544 = *(v323 + 72);

        do
        {
          v326 = v49[244];
          v327 = v49[219];
          v328 = v49[179];
          sub_19A33546C(v325, v328, &qword_1EAF9FFE0, &qword_19A578B00);
          v329 = *v324;
          v330 = v324[1];
          sub_19A3E3DD8(v328, v327, type metadata accessor for Concept);
          v331 = *(v326 + 40);

          v332 = v331;
          v333 = v329;
          v49 = v537;
          sub_19A340970(v327, v333, v330);

          sub_19A3E3E40(v327, type metadata accessor for Concept);
          v325 += v544;
          --v322;
        }

        while (v322);

        v56 = &unk_1EAFCA000;
        v285 = &unk_1EAF9F000;
      }

      v334 = v49[244];
      v49[150] = MEMORY[0x1E69E7CC0];
      v335 = *(v334 + 40);
      v54 = v49;
      v336 = v285[264];

      v51 = v335;
      if (v336 != -1)
      {
        swift_once();
      }

      v337 = v56[74];
      v338 = [v51 length];
      v339 = swift_task_alloc();
      *(v339 + 16) = v512;
      v56 = swift_allocObject();
      v56[2] = sub_19A3E3984;
      v56[3] = v339;
      v54[24] = sub_19A3E4068;
      v54[25] = v56;
      v54[20] = MEMORY[0x1E69E9820];
      v54[21] = v1;
      v54[22] = sub_19A3C4EB0;
      v54[23] = &block_descriptor_23_0;
      v340 = _Block_copy(v513);

      v514 = v337;
      [v51 enumerateAttribute:v337 inRange:0 options:v338 usingBlock:{0, v340}];

      _Block_release(v340);
      v341 = swift_isEscapingClosureAtFileLocation();

      if ((v341 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      swift_once();
      v286 = v54[244];
    }

    v342 = v54[244];

    v343 = v518;
    v344 = sub_19A474074(v54[150]);
    v54[150] = v344;

    v345 = [*(v342 + 40) string];
    sub_19A572CFC();

    v125 = *(v344 + 16);
    v69 = v54;
    v346 = MEMORY[0x1E69E6158];
    if (v125)
    {
      v347 = (v344 + 16 * v125 + 24);
      v524 = v344;
      while (v125 <= *(v344 + 16))
      {
        v352 = *(v347 - 1);
        v351 = *v347;
        v353 = sub_19A57348C();
        if ((v355 & 1) == 0)
        {
          v534 = v351;
          v540 = v352;
          v356 = v354;
          v357 = v346;
          v358 = v353;

          v359 = sub_19A5723DC();
          v360 = sub_19A57353C();

          v529 = v358;
          if (os_log_type_enabled(v359, v360))
          {
            v522 = v343;
            v520 = v360;
            v361 = swift_slowAlloc();
            v362 = swift_slowAlloc();
            v547 = v362;
            *v361 = 136380931;
            v363 = sub_19A572F9C();
            v364 = MEMORY[0x19A900970](v363);
            v366 = v365;

            v367 = sub_19A31F114(v364, v366, &v547);

            *(v361 + 4) = v367;
            v69 = v537;
            *(v361 + 12) = 2080;
            *(v361 + 14) = sub_19A31F114(0x6E6F73726570, 0xE600000000000000, &v547);
            _os_log_impl(&dword_19A2DE000, v359, v520, "Replacing named entity string %{private}s with %s", v361, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x19A902C50](v362, -1, -1);
            v343 = v522;
            v346 = MEMORY[0x1E69E6158];
            MEMORY[0x19A902C50](v361, -1, -1);
          }

          else
          {

            v346 = v357;
          }

          v368 = *(v69 + 1952);
          swift_beginAccess();
          v369 = [*(v368 + 40) mutableString];
          v370 = sub_19A572CCC();
          [v369 replaceCharactersInRange:v540 withString:{v534, v370}];

          *(v537 + 376) = v346;
          *(v537 + 384) = sub_19A2F4450();
          *(v537 + 352) = 0x6E6F73726570;
          *(v537 + 360) = 0xE600000000000000;
          if ((v529 ^ v356) >> 14)
          {
            v348 = sub_19A3859C0(v529, v356, (v537 + 352));
            v344 = v524;
            if (v343)
            {
              goto LABEL_210;
            }
          }

          else
          {
            v348 = sub_19A384CAC((v537 + 352), v529);
            v344 = v524;
            if (v343)
            {
LABEL_210:
              v371 = v350;
              v372 = v349;
              v373 = v348;
              sub_19A387988();
              swift_allocError();
              *v374 = v373;
              *(v374 + 8) = v372;
              v274 = v537;
              *(v374 + 16) = v371;
              __swift_destroy_boxed_opaque_existential_0Tm((v537 + 352));
              swift_endAccess();

              goto LABEL_211;
            }
          }

          __swift_destroy_boxed_opaque_existential_0Tm((v537 + 352));
          swift_endAccess();
          v343 = 0;
          v69 = v537;
        }

        v347 -= 2;
        if (!--v125)
        {
          goto LABEL_223;
        }
      }

      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      v397 = *(v69 + 1952);
      v398 = *(v69 + 1488);
      (*(*(v69 + 1480) + 32))(v398, *(v69 + 1832), *(v69 + 1472));
      *(v69 + 2376) = v125;
      v399 = *(v397 + 40);

      v400 = v399;
      v401 = [v400 length];
      v402 = swift_task_alloc();
      *(v402 + 16) = v398;
      *(v402 + 24) = v515;
      v403 = swift_allocObject();
      *(v403 + 16) = sub_19A3E3CCC;
      *(v403 + 24) = v402;
      *(v69 + 288) = sub_19A3E4068;
      *(v69 + 296) = v403;
      *(v69 + 256) = MEMORY[0x1E69E9820];
      *(v69 + 264) = v1;
      *(v69 + 272) = sub_19A3C4EB0;
      *(v69 + 280) = &block_descriptor_52;
      v404 = _Block_copy(v504);

      v91 = &off_1E7517000;
      [v400 enumerateAttribute:v514 inRange:0 options:v401 usingBlock:{0, v404}];

      _Block_release(v404);
      v405 = swift_isEscapingClosureAtFileLocation();

      if (v405)
      {
        goto LABEL_292;
      }

      if (*v515 == 1)
      {
        v406 = *(v537 + 1664);
        v407 = *(v537 + 1576);
        v408 = *(v537 + 1488);
        v409 = *(v537 + 1480);
        v410 = *(v537 + 1472);
        v411 = sub_19A572E7C();
        v412 = v406 + *(v407 + 20);
        (*(v409 + 16))(v412, v408, v410);
        v413 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        v412[*(v413 + 20)] = 0;
        v412[*(v413 + 24)] = 0;
        (*(*(v413 - 8) + 56))(v412, 0, 1, v413);
        *v406 = 0x6E6F73726570;
        v406[1] = 0xE600000000000000;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_19A340CA4(0x206E6F73726570, 0xE700000000000000, v406, 0, v411);
        if (v522)
        {
          v414 = *(v537 + 1664);
          v415 = *(v537 + 1488);
          v416 = *(v537 + 1480);
          v417 = *(v537 + 1472);
          swift_endAccess();

          sub_19A3E3E40(v414, type metadata accessor for Concept);
          (*(v416 + 8))(v415, v417);

          v274 = v537;
          goto LABEL_211;
        }

        v437 = *(v537 + 1664);
        swift_endAccess();
        sub_19A3E3E40(v437, type metadata accessor for Concept);
        v522 = 0;
        v69 = v537;
        v396 = v509;
        v91 = &off_1E7517000;
      }

      else
      {
LABEL_232:
        v69 = v537;
        v396 = v509;
      }

      (*(*(v69 + 1480) + 8))(*(v69 + 1488), *(v69 + 1472));
    }

    else
    {
LABEL_223:
      v522 = v343;
      v392 = *(v69 + 1832);
      v393 = *(v69 + 1480);
      v394 = *(v69 + 1472);
      v395 = *(v69 + 1280);

      sub_19A33546C(v395, v392, &qword_1EAF9FD80, &unk_19A57B720);
      LOBYTE(v125) = 1;
      if ((*(v393 + 48))(v392, 1, v394) != 1)
      {
        goto LABEL_227;
      }

      sub_19A2F3FA0(*(v69 + 1832), &qword_1EAF9FD80, &unk_19A57B720);
      v396 = v509;
      v91 = 0x1E7517000;
    }

    v438 = *(*(v69 + 1952) + 40);
    v439 = MEMORY[0x1E69E7CD0];
    *(v69 + 1208) = MEMORY[0x1E69E7CD0];
    *(v69 + 1224) = v439;

    v440 = v438;
    v441 = [v440 length];
    v442 = swift_task_alloc();
    *(v442 + 16) = v507;
    *(v442 + 24) = v508;
    v443 = swift_allocObject();
    *(v443 + 16) = sub_19A3E398C;
    *(v443 + 24) = v442;
    *(v69 + 144) = sub_19A3E4068;
    *(v69 + 152) = v443;
    *(v69 + 112) = MEMORY[0x1E69E9820];
    *(v69 + 120) = v1;
    *(v69 + 128) = sub_19A3C4EB0;
    *(v69 + 136) = &block_descriptor_30;
    v125 = v69;
    v444 = _Block_copy(v396);

    [v440 *(v91 + 3984)];
    _Block_release(v444);
    LOBYTE(v444) = swift_isEscapingClosureAtFileLocation();

    if (v444)
    {
LABEL_289:
      __break(1u);
    }

    else
    {
      v445 = *(v69 + 1952);
      v446 = *(v69 + 1408);
      v447 = *(v125 + 1400);

      v545 = *(v125 + 1208);
      v536 = *(v125 + 1224);

      v530 = v445[2];
      v448 = v445[4];
      v449 = v445[5];
      v541 = v445[3];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v450 = v449;
      v451 = [v450 string];
      sub_19A572CFC();

      sub_19A570C6C();
      v452 = v446 + *(v447 + 20);
      sub_19A570BFC();
      v453 = [v450 length];
      v454 = swift_task_alloc();
      *(v454 + 16) = v452;
      v455 = swift_allocObject();
      *(v455 + 16) = sub_19A3E3994;
      *(v455 + 24) = v454;
      *(v125 + 96) = sub_19A3E4068;
      *(v125 + 104) = v455;
      *(v125 + 64) = MEMORY[0x1E69E9820];
      *(v125 + 72) = v1;
      *(v125 + 80) = sub_19A3C4EB0;
      *(v125 + 88) = &block_descriptor_37;
      v456 = _Block_copy(v506);

      [v450 enumerateAttribute:v514 inRange:0 options:v453 usingBlock:{0, v456}];
      _Block_release(v456);
      LOBYTE(v456) = swift_isEscapingClosureAtFileLocation();

      if ((v456 & 1) == 0)
      {

        v457 = *MEMORY[0x1E696A518];
        v458 = [v450 length];
        v459 = swift_task_alloc();
        *(v459 + 16) = v452;
        v460 = swift_allocObject();
        *(v460 + 16) = sub_19A3E399C;
        *(v460 + 24) = v459;
        *(v125 + 336) = sub_19A3E4068;
        *(v125 + 344) = v460;
        *(v125 + 304) = MEMORY[0x1E69E9820];
        *(v125 + 312) = v1;
        *(v125 + 320) = sub_19A3C4EB0;
        *(v125 + 328) = &block_descriptor_44;
        v461 = _Block_copy(v505);

        [v450 enumerateAttribute:v457 inRange:0 options:v458 usingBlock:{0, v461}];
        _Block_release(v461);
        v462 = swift_isEscapingClosureAtFileLocation();

        if ((v462 & 1) == 0)
        {
          v463 = *(v125 + 1408);

          *v463 = v530;
          v463[1] = v541;
          v463[2] = v448;
          v464 = MEMORY[0x1E69E6158];
          v465 = v522;
          if (v517)
          {
            sub_19A570A4C();
            sub_19A3E3F34(&qword_1ED825330, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
            v466 = sub_19A572F7C();
            *(v125 + 416) = v464;
            *(v125 + 392) = v466;
            *(v125 + 400) = v467;
            sub_19A334618(v125 + 392, v125 + 552);
            JSONValue.init(_:)((v125 + 552), &v546);
            if (v522)
            {
              sub_19A3E3E40(*(v125 + 1408), type metadata accessor for TextPrompt);

              __swift_destroy_boxed_opaque_existential_0Tm((v125 + 392));
LABEL_176:

LABEL_177:

              v274 = v125;
              goto LABEL_211;
            }

            v469 = v546;
            v470 = swift_isUniquelyReferenced_nonNull_native();
            v547 = v517;
            sub_19A33D400(v469, 0x65746E656D677561, 0xEF74706D6F725064, v470);
            v468 = v547;
            __swift_destroy_boxed_opaque_existential_0Tm((v125 + 392));
          }

          else
          {
            v468 = 0;
          }

          v471 = *(v125 + 1288);
          if (v471 > 1)
          {
            v472 = *(v537 + 2056);
            v473 = *(v537 + 1912);
            v474 = *(v537 + 1904);
            v526 = v474;
            v531 = *(v125 + 2072);
            v475 = *(v537 + 1296);
            v476 = swift_task_alloc();
            v472(v476, v473, v474);

            v477 = swift_slowAlloc();
            *v477 = 0;
            v478 = sub_19A57234C();
            v479 = sub_19A57361C();
            v480 = sub_19A5722FC();
            _os_signpost_emit_with_name_impl(&dword_19A2DE000, v478, v479, v480, "reportConcepts", "", v477, 2u);

            sub_19A3C3960(v481, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
            v471();

            v482 = sub_19A57360C();
            v483 = sub_19A5722FC();
            v125 = v537;
            _os_signpost_emit_with_name_impl(&dword_19A2DE000, v478, v482, v483, "reportConcepts", "", v477, 2u);

            v465 = v522;

            MEMORY[0x19A902C50](v477, -1, -1);
            sub_19A2E0A60(v471, v475);
            v531(v476, v526);
          }

          else
          {
          }

          if (v468)
          {
            v484 = sub_19A3C3960(v545, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
            *(v125 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
            *(v125 + 520) = v484;
            sub_19A334618(v125 + 520, v125 + 488);
            JSONValue.init(_:)((v125 + 488), &v546);
            if (v465)
            {
              sub_19A3E3E40(*(v125 + 1408), type metadata accessor for TextPrompt);

              __swift_destroy_boxed_opaque_existential_0Tm((v125 + 520));

              goto LABEL_177;
            }

            v485 = v546;
            v486 = swift_isUniquelyReferenced_nonNull_native();
            v547 = v468;
            sub_19A33D400(v485, 0xD000000000000012, 0x800000019A595740, v486);
            v261 = v547;
            __swift_destroy_boxed_opaque_existential_0Tm((v125 + 520));
            v465 = 0;
          }

          else
          {

            v261 = 0;
          }

          if (!*(v536 + 16))
          {

            goto LABEL_264;
          }

          v487 = sub_19A3C3960(v536, sub_19A31EFA0, MEMORY[0x1E69695A8], sub_19A32ED90);
          sub_19A3E39A4(v487);
          if (v465)
          {
            v274 = v537;
            sub_19A3E3E40(*(v537 + 1408), type metadata accessor for TextPrompt);

            goto LABEL_211;
          }

LABEL_263:

          v125 = v537;
LABEL_264:
          if (v261)
          {
            v488 = *(v125 + 1320);
            if (v488)
            {
              LOBYTE(v547) = v516;
              v548 = v261;
              v488(&v547);
            }
          }

          v489 = *(v125 + 1952);
          v490 = *(v125 + 1896);
          v491 = *(v125 + 1880);
          v501 = *(v125 + 1872);
          v492 = *(v125 + 1408);
          sub_19A3E3C64(v492, *(v125 + 1232), type metadata accessor for TextPrompt);
          v493 = [*(v489 + 40) string];
          v494 = sub_19A572CFC();
          v521 = v495;
          v523 = v494;

          sub_19A3E3E40(v492, type metadata accessor for TextPrompt);

          sub_19A3DF010("validateText", 12, 2);

          (*(v491 + 8))(v490, v501);

          v496 = *(v125 + 8);

          v496(v523, v521);
          return;
        }

        goto LABEL_291;
      }
    }

    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
    return;
  }

  v263 = sub_19A5723DC();
  v264 = sub_19A57355C();
  if (os_log_type_enabled(v263, v264))
  {
    v265 = swift_slowAlloc();
    v266 = swift_slowAlloc();
    v547 = v266;
    *v265 = 136380675;
    swift_beginAccess();

    v268 = sub_19A3E501C(v267, 8236, 0xE200000000000000);
    v270 = v269;

    v271 = sub_19A31F114(v268, v270, &v547);

    *(v265 + 4) = v271;
    _os_log_impl(&dword_19A2DE000, v263, v264, "Unresolved ambiguities: %{private}s", v265, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v266);
    MEMORY[0x19A902C50](v266, -1, -1);
    MEMORY[0x19A902C50](v265, -1, -1);
  }

  swift_beginAccess();
  v272 = *(v537 + 1192);
  sub_19A3B8774();
  swift_allocError();
  *v273 = v272;
  *(v273 + 8) = 0;
  swift_willThrow();

  v274 = v537;
LABEL_211:

  v375 = v274[237];
  v376 = v274[235];
  v377 = v274;
  v378 = v274[234];
  sub_19A3DF010("validateText", 12, 2);

  (*(v376 + 8))(v375, v378);

  v379 = v377[1];

  v379();
}

uint64_t sub_19A3DA250()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3DA384, 0, 0);
}

void sub_19A3DA384()
{
  v479 = v0;
  v447 = v0 + 297;
  v4 = v0[275];

  v448 = v0[295];
  v5 = v0[269] + 1;
  v470 = v0;
  if (v5 == v0[267])
  {
LABEL_2:
    v6 = v0 + 26;
    v7 = v0 + 149;
    v8 = v470[244];

    sub_19A3DF010("buildEntityConcepts", 19, 2);

    v470[149] = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v9 = *(v8 + 40);
    v10 = qword_1EAF9F838;

    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = v470[244];
    v13 = qword_1EAFCA248;
    v14 = [v11 length];
    v15 = swift_task_alloc();
    *(v15 + 16) = v7;
    *(v15 + 24) = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_19A3E393C;
    *(v16 + 24) = v15;
    v470[30] = sub_19A3E3944;
    v470[31] = v16;
    v470[26] = MEMORY[0x1E69E9820];
    v3 = 1107296256;
    v470[27] = 1107296256;
    v470[28] = sub_19A3C4EB0;
    v470[29] = &block_descriptor_3;
    v17 = _Block_copy(v6);

    [v11 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v17}];

    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
LABEL_218:

      swift_endAccess();
      return;
    }

    if (*(*v7 + 16))
    {
      v18 = v470;

      v19 = sub_19A5723DC();
      v20 = sub_19A57355C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v477 = v22;
        *v21 = 136380675;
        swift_beginAccess();

        v24 = sub_19A3E501C(v23, 8236, 0xE200000000000000);
        v26 = v25;

        v27 = sub_19A31F114(v24, v26, &v477);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_19A2DE000, v19, v20, "Unresolved ambiguities: %{private}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x19A902C50](v22, -1, -1);
        v18 = v470;
        MEMORY[0x19A902C50](v21, -1, -1);
      }

      swift_beginAccess();
      v28 = v18[149];
      sub_19A3B8774();
      swift_allocError();
      *v29 = v28;
      *(v29 + 8) = 0;
      swift_willThrow();
      v1 = v470;

      goto LABEL_191;
    }

    v205 = MEMORY[0x1E69E6158];
    v206 = v470;
    if (v447[3] == 1)
    {
      v207 = v470[244];
      LOBYTE(v476) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
      v208 = swift_allocObject();
      *(v208 + 32) = 0x74706D6F7270;
      *(v208 + 16) = xmmword_19A576E10;
      *(v208 + 40) = 0xE600000000000000;
      v1 = v470;
      v209 = [*(v207 + 40) string];
      v210 = sub_19A572CFC();
      v212 = v211;

      *(v208 + 72) = v205;
      *(v208 + 48) = v210;
      *(v208 + 56) = v212;
      v213 = sub_19A330370(v208);
      swift_setDeallocating();
      sub_19A2F3FA0(v208 + 32, &qword_1EAFA2F00, &qword_19A578A30);
      swift_deallocClassInstance();
      sub_19A338028(&v476, v213, &v477);
      if (v448)
      {
        goto LABEL_190;
      }

      v445 = v477;
      v446 = v478;

      v448 = 0;
      v206 = v470;
    }

    else
    {
      v445 = 0;
      v446 = 0;
    }

    v214 = &unk_1EAFCA000;
    if (!(v206[165] | v206[169] & 2))
    {
      v228 = &off_1E7517000;
      goto LABEL_170;
    }

    v215 = v206 + 145;
    v216 = v206[244];
    v206[145] = MEMORY[0x1E69E7CD0];
    v217 = *(v216 + 40);
    v218 = qword_1EAF9F840;

    v219 = v217;
    if (v218 != -1)
    {
      swift_once();
      v216 = v206[244];
    }

    v220 = qword_1EAFCA250;
    v221 = [v219 length];
    v222 = swift_task_alloc();
    *(v222 + 16) = v215;
    *(v222 + 24) = v216;
    v223 = swift_allocObject();
    *(v223 + 16) = sub_19A3E3CD4;
    *(v223 + 24) = v222;
    v206[6] = sub_19A3E4068;
    v206[7] = v223;
    v206[2] = MEMORY[0x1E69E9820];
    v206[3] = 1107296256;
    v206[4] = sub_19A3C4EB0;
    v206[5] = &block_descriptor_59;
    v224 = _Block_copy(v206 + 2);

    [v219 enumerateAttribute:v220 inRange:0 options:v221 usingBlock:{0, v224}];

    _Block_release(v224);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      if (!*(*v215 + 16))
      {

        v206 = v470;
LABEL_169:
        v228 = &off_1E7517000;
        v214 = &unk_1EAFCA000;
LABEL_170:
        v238 = v206 + 20;
        v468 = (v206 + 150);
        v239 = v206[255];
        swift_beginAccess();
        v240 = *(v239 + 16);
        v241 = *(v240 + 16);
        if (v241)
        {
          v465 = (v206 + 20);
          v242 = v206[178];
          v243 = (v206[179] + *(v206[177] + 48));
          v244 = v240 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
          v473 = *(v242 + 72);

          do
          {
            v245 = v206[244];
            v246 = v206[219];
            v247 = v206[179];
            sub_19A33546C(v244, v247, &qword_1EAF9FFE0, &qword_19A578B00);
            v248 = *v243;
            v249 = v243[1];
            sub_19A3E3DD8(v247, v246, type metadata accessor for Concept);
            v250 = *(v245 + 40);

            v251 = v250;
            v252 = v248;
            v206 = v470;
            sub_19A340970(v246, v252, v249);

            sub_19A3E3E40(v246, type metadata accessor for Concept);
            v244 += v473;
            --v241;
          }

          while (v241);

          v228 = &off_1E7517000;
          v214 = &unk_1EAFCA000;
          v238 = v465;
        }

        v253 = v206[244];
        v206[150] = MEMORY[0x1E69E7CC0];
        v254 = *(v253 + 24);
        v255 = *(v253 + 40);
        v256 = qword_1EAF9F840;

        v257 = v255;
        if (v256 != -1)
        {
          swift_once();
        }

        v258 = v214[74];
        v2 = [v257 v228[477]];
        v259 = swift_task_alloc();
        *(v259 + 16) = v468;
        v260 = swift_allocObject();
        *(v260 + 16) = sub_19A3E3984;
        *(v260 + 24) = v259;
        v206[24] = sub_19A3E4068;
        v206[25] = v260;
        v206[20] = MEMORY[0x1E69E9820];
        v206[21] = v3;
        v206[22] = sub_19A3C4EB0;
        v206[23] = &block_descriptor_23_0;
        v261 = _Block_copy(v238);
        v262 = v206;
        v263 = v206[25];

        v444 = v258;
        [v257 enumerateAttribute:v258 inRange:0 options:v2 usingBlock:{0, v261}];

        _Block_release(v261);
        v264 = swift_isEscapingClosureAtFileLocation();

        if (v264)
        {
          __break(1u);
        }

        else
        {
          v265 = v262[244];

          v263 = v448;
          v266 = sub_19A474074(v262[150]);
          v262[150] = v266;

          v267 = [*(v265 + 40) string];
          v472 = sub_19A572CFC();
          v454 = v268;

          v269 = *(v266 + 16);
          v254 = v262;
          if (v269)
          {
            v270 = (v266 + 16 * v269 + 24);
            v448 = 136380931;
            LOBYTE(v1) = 112;
            v451 = v266;
            v4 = v454;
            while (v269 <= *(v266 + 16))
            {
              v275 = *(v270 - 1);
              v276 = *v270;
              v277 = sub_19A57348C();
              if ((v279 & 1) == 0)
              {
                v465 = v275;
                v468 = v263;
                v463 = v276;
                v280 = v278;
                v281 = v277;

                v282 = sub_19A5723DC();
                v283 = sub_19A57353C();

                v457 = v283;
                v284 = v283;
                v285 = v282;
                if (os_log_type_enabled(v282, v284))
                {
                  v1 = swift_slowAlloc();
                  v286 = swift_slowAlloc();
                  v477 = v286;
                  *v1 = 136380931;
                  v287 = v281;
                  v288 = sub_19A572F9C();
                  v289 = MEMORY[0x19A900970](v288);
                  v291 = v290;

                  v292 = sub_19A31F114(v289, v291, &v477);
                  v2 = v468;

                  *(v1 + 4) = v292;
                  v254 = v470;
                  *(v1 + 12) = 2080;
                  *(v1 + 14) = sub_19A31F114(0x6E6F73726570, 0xE600000000000000, &v477);
                  _os_log_impl(&dword_19A2DE000, v285, v457, "Replacing named entity string %{private}s with %s", v1, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x19A902C50](v286, -1, -1);
                  v293 = v1;
                  LOBYTE(v1) = 112;
                  MEMORY[0x19A902C50](v293, -1, -1);
                }

                else
                {

                  v287 = v281;
                  v2 = v263;
                }

                v294 = v254[244];
                swift_beginAccess();
                v295 = [*(v294 + 40) mutableString];
                v296 = sub_19A572CCC();
                [v295 replaceCharactersInRange:v465 withString:{v463, v296}];

                v254[47] = MEMORY[0x1E69E6158];
                v254[48] = sub_19A2F4450();
                v254[44] = 0x6E6F73726570;
                v254[45] = 0xE600000000000000;
                if ((v287 ^ v280) >> 14)
                {
                  v271 = v254;
                  v272 = sub_19A3859C0(v287, v280, v254 + 44);
                  if (v2)
                  {
                    goto LABEL_189;
                  }
                }

                else
                {
                  v271 = v254;
                  v272 = sub_19A384CAC(v254 + 44, v287);
                  if (v2)
                  {
LABEL_189:
                    v297 = v274;
                    v298 = v273;
                    v299 = v272;
                    v1 = v470;
                    sub_19A387988();
                    swift_allocError();
                    *v300 = v299;
                    *(v300 + 8) = v298;
                    *(v300 + 16) = v297;
                    __swift_destroy_boxed_opaque_existential_0Tm(v470 + 44);
                    swift_endAccess();

                    goto LABEL_190;
                  }
                }

                __swift_destroy_boxed_opaque_existential_0Tm(v271 + 44);
                swift_endAccess();
                v263 = 0;
                v254 = v271;
                v266 = v451;
                v4 = v454;
              }

              v270 -= 2;
              if (!--v269)
              {
                goto LABEL_223;
              }
            }

LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            v320 = *(v2 + 2120);
            v321 = *(v2 + 1352);

            v323 = sub_19A3E2C08(v322, v4, v465, v320);
            *(v2 + 2352) = v323;
            *(v2 + 2360) = v448;

            v324 = swift_task_alloc();
            *(v2 + 2368) = v324;
            *v324 = v2;
            v324[1] = sub_19A3DA250;
            v325 = *(v2 + 2040);
            v326 = *(v2 + 1952);
            v327 = v447[2];
            v328 = *(v2 + 1312);
            v329 = *(v2 + 1304);
            v330 = *(v2 + 1296);
            v331 = *(v2 + 1288);
            v487 = v4;
            v488 = v465;
            v486 = v327;
            v485 = v1;
            v483 = v472;
            v484 = v468;
            v481 = v328;
            v482 = v326;

            sub_19A3DF2F8(v323, v472, v468, v325, (v321 & 4) != 0, v331, v330, v329);
            return;
          }
        }

LABEL_223:
        v469 = v263;
        v357 = v254[229];
        v358 = v254[185];
        v359 = v254[184];
        v360 = v254[160];

        sub_19A33546C(v360, v357, &qword_1EAF9FD80, &unk_19A57B720);
        if ((*(v358 + 48))(v357, 1, v359) == 1)
        {
          sub_19A2F3FA0(v254[229], &qword_1EAF9FD80, &unk_19A57B720);
          v361 = v254;
          v362 = v444;
        }

        else
        {
          v363 = v254[244];
          v364 = v254[186];
          (*(v254[185] + 32))(v364, v254[229], v254[184]);
          *(v254 + 2376) = 1;
          v365 = *(v363 + 40);

          v366 = v365;
          v474 = [v366 length];
          v367 = swift_task_alloc();
          *(v367 + 16) = v364;
          *(v367 + 24) = v447;
          v368 = swift_allocObject();
          *(v368 + 16) = sub_19A3E3CCC;
          *(v368 + 24) = v367;
          v254[36] = sub_19A3E4068;
          v254[37] = v368;
          v254[32] = MEMORY[0x1E69E9820];
          v254[33] = v3;
          v254[34] = sub_19A3C4EB0;
          v254[35] = &block_descriptor_52;
          v369 = _Block_copy(v254 + 32);

          v362 = v444;
          [v366 enumerateAttribute:v444 inRange:0 options:v474 usingBlock:{0, v369}];

          _Block_release(v369);
          LOBYTE(v369) = swift_isEscapingClosureAtFileLocation();

          if (v369)
          {
LABEL_276:
            __break(1u);
            return;
          }

          if (*v447 == 1)
          {
            v1 = v470;
            v370 = v470[208];
            v371 = v470[197];
            v372 = v470[186];
            v373 = v470[185];
            v374 = v470[184];
            v375 = sub_19A572E7C();
            v376 = v370 + *(v371 + 20);
            (*(v373 + 16))(v376, v372, v374);
            v377 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
            v376[*(v377 + 20)] = 0;
            v376[*(v377 + 24)] = 0;
            (*(*(v377 - 8) + 56))(v376, 0, 1, v377);
            *v370 = 0x6E6F73726570;
            v370[1] = 0xE600000000000000;
            swift_storeEnumTagMultiPayload();
            swift_beginAccess();
            sub_19A340CA4(0x206E6F73726570, 0xE700000000000000, v370, 0, v375);
            if (v469)
            {
              v378 = v470[208];
              v379 = v470[186];
              v380 = v470[185];
              v381 = v470[184];
              swift_endAccess();

              sub_19A3E3E40(v378, type metadata accessor for Concept);
              (*(v380 + 8))(v379, v381);
LABEL_190:

              goto LABEL_191;
            }

            v382 = v470[208];
            swift_endAccess();
            sub_19A3E3E40(v382, type metadata accessor for Concept);
            v469 = 0;
            v361 = v470;
            v362 = v444;
          }

          else
          {
            v361 = v470;
          }

          (*(v361[185] + 8))(v361[186], v361[184]);
        }

        v383 = *(v361[244] + 40);
        v384 = MEMORY[0x1E69E7CD0];
        v361[151] = MEMORY[0x1E69E7CD0];
        v361[153] = v384;

        v385 = v383;
        v386 = [v385 length];
        v387 = swift_task_alloc();
        *(v387 + 16) = v361 + 153;
        *(v387 + 24) = v361 + 151;
        v388 = swift_allocObject();
        *(v388 + 16) = sub_19A3E398C;
        *(v388 + 24) = v387;
        v361[18] = sub_19A3E4068;
        v361[19] = v388;
        v361[14] = MEMORY[0x1E69E9820];
        v361[15] = v3;
        v361[16] = sub_19A3C4EB0;
        v361[17] = &block_descriptor_30;
        v389 = _Block_copy(v361 + 14);

        [v385 enumerateAttribute:v362 inRange:0 options:v386 usingBlock:{0, v389}];
        _Block_release(v389);
        LOBYTE(v389) = swift_isEscapingClosureAtFileLocation();

        if ((v389 & 1) == 0)
        {
          v390 = v361[244];
          v391 = v361[176];
          v392 = v361[175];

          v475 = v361[151];
          v464 = v361[153];

          v458 = v390[2];
          v393 = v390[4];
          v394 = v390[5];
          v467 = v390[3];
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v395 = v394;
          v396 = [v395 string];
          sub_19A572CFC();

          sub_19A570C6C();
          v397 = v391 + *(v392 + 20);
          sub_19A570BFC();
          v398 = [v395 length];
          v399 = swift_task_alloc();
          *(v399 + 16) = v397;
          v400 = swift_allocObject();
          *(v400 + 16) = sub_19A3E3994;
          *(v400 + 24) = v399;
          v361[12] = sub_19A3E4068;
          v361[13] = v400;
          v361[8] = MEMORY[0x1E69E9820];
          v361[9] = v3;
          v361[10] = sub_19A3C4EB0;
          v361[11] = &block_descriptor_37;
          v401 = _Block_copy(v361 + 8);

          [v395 enumerateAttribute:v444 inRange:0 options:v398 usingBlock:{0, v401}];
          _Block_release(v401);
          LOBYTE(v401) = swift_isEscapingClosureAtFileLocation();

          if ((v401 & 1) == 0)
          {

            v402 = *MEMORY[0x1E696A518];
            v403 = [v395 length];
            v404 = swift_task_alloc();
            *(v404 + 16) = v397;
            v405 = swift_allocObject();
            *(v405 + 16) = sub_19A3E399C;
            *(v405 + 24) = v404;
            v361[42] = sub_19A3E4068;
            v361[43] = v405;
            v361[38] = MEMORY[0x1E69E9820];
            v361[39] = v3;
            v361[40] = sub_19A3C4EB0;
            v361[41] = &block_descriptor_44;
            v406 = _Block_copy(v361 + 38);

            [v395 enumerateAttribute:v402 inRange:0 options:v403 usingBlock:{0, v406}];
            _Block_release(v406);
            LOBYTE(v406) = swift_isEscapingClosureAtFileLocation();

            if ((v406 & 1) == 0)
            {
              v407 = v361[176];

              *v407 = v458;
              v407[1] = v467;
              v407[2] = v393;
              if (v446)
              {
                sub_19A570A4C();
                sub_19A3E3F34(&qword_1ED825330, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
                v408 = sub_19A572F7C();
                v361[52] = MEMORY[0x1E69E6158];
                v361[49] = v408;
                v361[50] = v409;
                sub_19A334618((v361 + 49), (v361 + 69));
                v1 = v361;
                JSONValue.init(_:)(v361 + 69, &v476);
                if (v469)
                {
                  sub_19A3E3E40(v361[176], type metadata accessor for TextPrompt);

                  __swift_destroy_boxed_opaque_existential_0Tm(v361 + 49);
                  goto LABEL_190;
                }

                v411 = v476;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v477 = v446;
                sub_19A33D400(v411, 0x65746E656D677561, 0xEF74706D6F725064, isUniquelyReferenced_nonNull_native);
                v410 = v477;
                __swift_destroy_boxed_opaque_existential_0Tm(v361 + 49);
                v469 = 0;
              }

              else
              {
                v410 = 0;
              }

              v413 = v361[161];
              if (v413 > 1)
              {
                v414 = v361[259];
                v415 = v470[257];
                v416 = v470[239];
                v417 = v470[238];
                v455 = v417;
                v459 = v414;
                v418 = v470[162];
                v419 = swift_task_alloc();
                v415(v419, v416, v417);

                v420 = swift_slowAlloc();
                *v420 = 0;
                v421 = sub_19A57234C();
                v422 = sub_19A57361C();
                v423 = sub_19A5722FC();
                _os_signpost_emit_with_name_impl(&dword_19A2DE000, v421, v422, v423, "reportConcepts", "", v420, 2u);

                sub_19A3C3960(v424, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
                v413();

                v425 = sub_19A57360C();
                v426 = sub_19A5722FC();
                v361 = v470;
                _os_signpost_emit_with_name_impl(&dword_19A2DE000, v421, v425, v426, "reportConcepts", "", v420, 2u);

                MEMORY[0x19A902C50](v420, -1, -1);
                sub_19A2E0A60(v413, v418);
                v459(v419, v455);
              }

              else
              {
              }

              v427 = v469;
              if (v410)
              {
                v428 = sub_19A3C3960(v475, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
                v361[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
                v361[65] = v428;
                sub_19A334618((v361 + 65), (v361 + 61));
                v1 = v361;
                JSONValue.init(_:)(v361 + 61, &v476);
                if (v469)
                {
                  sub_19A3E3E40(v361[176], type metadata accessor for TextPrompt);

                  __swift_destroy_boxed_opaque_existential_0Tm(v361 + 65);
                  goto LABEL_190;
                }

                v429 = v476;
                v430 = swift_isUniquelyReferenced_nonNull_native();
                v477 = v410;
                sub_19A33D400(v429, 0xD000000000000012, 0x800000019A595740, v430);
                v410 = v477;
                __swift_destroy_boxed_opaque_existential_0Tm(v361 + 65);
                v427 = 0;
              }

              else
              {
              }

              if (*(v464 + 16))
              {
                v431 = sub_19A3C3960(v464, sub_19A31EFA0, MEMORY[0x1E69695A8], sub_19A32ED90);
                sub_19A3E39A4(v431);
                if (v427)
                {
                  v1 = v470;
                  sub_19A3E3E40(v470[176], type metadata accessor for TextPrompt);

                  goto LABEL_190;
                }

                v361 = v470;
              }

              else
              {
              }

              if (v410)
              {
                v432 = v361[165];
                if (v432)
                {
                  LOBYTE(v477) = v445;
                  v478 = v410;
                  v432(&v477);
                }
              }

              v433 = v361[244];
              v434 = v361[237];
              v435 = v361[235];
              v441 = v361[234];
              v436 = v361;
              v437 = v361[176];
              sub_19A3E3C64(v437, v436[154], type metadata accessor for TextPrompt);
              v438 = [*(v433 + 40) string];
              v452 = sub_19A572CFC();
              v449 = v439;

              sub_19A3E3E40(v437, type metadata accessor for TextPrompt);

              sub_19A3DF010("validateText", 12, 2);

              (*(v435 + 8))(v434, v441);

              v440 = v436[1];

              v440(v452, v449);
              return;
            }

            goto LABEL_275;
          }

LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
          goto LABEL_276;
        }

LABEL_273:
        __break(1u);
        goto LABEL_274;
      }

      v206 = v470;
      if (v446)
      {

        v227 = sub_19A3C3960(v226, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
        v470[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
        v470[53] = v227;
        sub_19A334618((v470 + 53), (v470 + 57));
        v1 = v470;
        JSONValue.init(_:)(v470 + 57, &v476);
        if (!v448)
        {
          goto LABEL_195;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v470 + 53);
        goto LABEL_190;
      }

      v446 = 0;
      if ((v470[169] & 2) != 0)
      {
        goto LABEL_196;
      }

LABEL_166:
      v229 = sub_19A5723DC();
      v230 = sub_19A57355C();
      if (os_log_type_enabled(v229, v230))
      {
        v231 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v477 = v232;
        *v231 = 136380675;
        swift_beginAccess();

        v234 = sub_19A3E51D0(v233, 8236, 0xE200000000000000);
        v236 = v235;

        v237 = sub_19A31F114(v234, v236, &v477);

        *(v231 + 4) = v237;
        v206 = v470;
        _os_log_impl(&dword_19A2DE000, v229, v230, "Disallowed concepts: %{private}s", v231, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v232);
        MEMORY[0x19A902C50](v232, -1, -1);
        MEMORY[0x19A902C50](v231, -1, -1);
      }

      goto LABEL_169;
    }

    __break(1u);
    goto LABEL_260;
  }

  v445 = v0 + 120;
  v450 = v0 + 219;
  v453 = v0 + 209;
  v446 = 1;
LABEL_10:
  v0[268] = v448;
  while (1)
  {
    v0[269] = v5;
    v33 = v0[264];
    if (v5 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_200;
    }

    v34 = v0[244];
    v460 = v5;
    v35 = (v33 + 24 * v5);
    v36 = v35[4];
    v0[270] = v36;
    v37 = v35[5];
    v0[271] = v37;
    v38 = v35[6];
    v0[272] = v38;
    v39 = *(v34 + 40);

    v40 = [v39 string];
    v2 = v0;
    sub_19A572CFC();
    v41 = *(v34 + 40);
    v42 = v37;
    v43 = [v41 string];
    sub_19A572CFC();

    v472 = v36;
    sub_19A57348C();
    LOBYTE(v36) = v44;

    if (v36)
    {
      goto LABEL_262;
    }

    v45 = sub_19A572F9C();
    v47 = v46;
    v49 = v48;
    v1 = v50;

    v4 = MEMORY[0x19A900970](v45, v47, v49, v1);
    v52 = v51;

    *(v2 + 2184) = v4;
    v465 = v52;
    *(v2 + 2192) = v52;
    LODWORD(v1) = *(v38 + 32);
    *(v2 + 2380) = v1;
    type metadata accessor for EntityExtractor.NamedEntity();
    v53 = swift_dynamicCastClass();
    v468 = v42;
    v54 = v2;
    if (v53)
    {
      v55 = v53;

      v56 = v472;
    }

    else
    {
      v56 = v472;
      if (v1 == 2)
      {
        v57 = *(v38 + 16);
        v58 = *(v38 + 24);
        v55 = swift_allocObject();
        *(v55 + 40) = MEMORY[0x1E69E7CC0];
        *(v55 + 16) = v57;
        *(v55 + 24) = v58;
        v42 = v468;
        *(v55 + 32) = 2;
      }

      else
      {
        v55 = 0;
      }
    }

    *(v2 + 2200) = v55;
    v59 = *(v2 + 2032);
    v60 = *(v59 + 16);
    if (!v60)
    {
LABEL_37:
      if (!v55)
      {
        goto LABEL_40;
      }

      if ((*(v2 + 1352) & 1) == 0)
      {
        v2 = *(v2 + 1952);
        v68 = *(v54 + 1752);
        v69 = v42;
        v70 = *(*(v54 + 1576) + 20);
        v71 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        v0 = v470;
        (*(*(v71 - 8) + 56))(v68 + v70, 1, 1, v71);
        *v68 = v4;
        v68[1] = v465;
        swift_storeEnumTagMultiPayload();
        v1 = *(v2 + 32);
        v72 = *(v2 + 40);

        v73 = v72;
        sub_19A340970(v68, v56, v69);

        v32 = v450;
        goto LABEL_13;
      }

      v90 = *(v55 + 40);
      if (*(v90 + 16) != 1)
      {

LABEL_67:
        v95 = v470[230];
        v96 = v470[185];
        v97 = v470[184];
        sub_19A33546C(v470[160], v95, &qword_1EAF9FD80, &unk_19A57B720);
        v2 = v470;
        if ((*(v96 + 48))(v95, 1, v97) == 1)
        {
          sub_19A2F3FA0(v470[230], &qword_1EAF9FD80, &unk_19A57B720);
          goto LABEL_71;
        }

        (*(v470[185] + 32))(v470[187], v470[230], v470[184]);
        if (*(*(v55 + 40) + 16))
        {
          (*(v470[185] + 8))(v470[187], v470[184]);
LABEL_71:
          if (*(*(v55 + 40) + 16))
          {
            goto LABEL_207;
          }

          v98 = v470[255];
          v99 = v470[212];
          v100 = v470[207];
          v101 = v470[197];

          v102 = *(v101 + 20);
          v103 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
          v470[288] = v103;
          v104 = *(v103 - 8);
          v470[289] = v104;
          (*(v104 + 56))(v99 + v102, 1, 1, v103);
          *v99 = v4;
          v99[1] = v465;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
          v105 = (*(v100 + 80) + 32) & ~*(v100 + 80);
          v106 = swift_allocObject();
          v470[290] = v106;
          *(v106 + 16) = xmmword_19A576E10;
          sub_19A3E3C64(v99, v106 + v105, type metadata accessor for Concept);
          v470[142] = v106;

          v31 = v472;
          v107 = sub_19A3DEBC0(v472, v468, v98);
          sub_19A47086C(v107);
          v86 = v470[142];
          v470[291] = v86;
          v108 = *(v86 + 16);
          if (v108 == 1)
          {
            if ((v470[169] & 4) == 0 || (sub_19A3C4F5C(v86) & 1) == 0)
            {
              if (!*(v106 + 16))
              {
                goto LABEL_261;
              }

              v2 = v470;
              v129 = v470[244];
              v130 = v470[219];
              v131 = *(v129 + 40);
              v1 = *(v129 + 24);
              sub_19A3E3C64(v106 + v105, v130, type metadata accessor for Concept);

              v132 = v131;
              v0 = v470;

              sub_19A340970(v130, v472, v468);

              sub_19A3E3E40(v130, type metadata accessor for Concept);
LABEL_125:

              goto LABEL_126;
            }
          }

          else if (!v108)
          {

            v0 = v470;
LABEL_126:

            v4 = v0[272];
            v187 = v0[212];

            sub_19A3E3E40(v187, type metadata accessor for Concept);
            v448 = v0[268];
            goto LABEL_127;
          }

          v2 = v470;
          if (v470[161] != 1)
          {
            v79 = v470[163];
            if (v79)
            {
              goto LABEL_210;
            }
          }

          v122 = *(v470[244] + 40);
          v123 = qword_1EAF9F838;

          v124 = v122;
          if (v123 != -1)
          {
            swift_once();
          }

          v125 = v470[207];
          v126 = v470[206];
          v1 = v470[192];
          v127 = qword_1EAFCA248;
          v470[139] = v86;
          swift_bridgeObjectRetain_n();
          [v124 addAttribute:v127 value:sub_19A57402C() range:{v472, v468}];
          swift_unknownObjectRelease();

          (*(v125 + 56))(v1, 1, 1, v126);
          v128 = (*(v125 + 48))(v470[192], 1, v470[206]);
          v0 = v470;
          if (v128 == 1)
          {
          }

          else
          {
            v148 = v470[271];
            v149 = v470[270];
            v150 = v470[255];
            v151 = swift_task_alloc();
            v472 = v149;
            *(v151 + 16) = v149;
            *(v151 + 24) = v148;
            swift_beginAccess();
            v152 = *(v150 + 16);
            v1 = (v152 + 2);
            v153 = v152[2];
            if (v153)
            {
              v154 = 0;
              v2 = 1;
              v155 = v472;
              while (1)
              {
                v156 = v470[178];
                v157 = (*(v156 + 80) + 32) & ~*(v156 + 80);
                v158 = *(v156 + 72);
                v491.location = v472;
                v491.length = v148;
                if (NSIntersectionRange(*(v152 + v157 + v158 * v154 + *(v470[1416] + 48)), v491).length > 0)
                {
                  break;
                }

                ++v154;
                ++v2;
                if (v153 == v154)
                {
                  v154 = *v1;
                  v153 = *v1;
                  goto LABEL_123;
                }
              }

              v153 = v154 + 1;
              if (__OFADD__(v154, 1))
              {
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
                goto LABEL_273;
              }

              v186 = *v1;
              if (v153 != *v1)
              {
                v202 = v157 + v158 * v2;
                v468 = v148;
                while (v153 < v186)
                {
                  v2 = v152 + v202;
                  v492.location = v155;
                  v492.length = v148;
                  if (NSIntersectionRange(*(v152 + v202 + *(v470[1416] + 48)), v492).length <= 0)
                  {
                    if (v153 != v154)
                    {
                      if ((v154 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_263;
                      }

                      v204 = *v1;
                      if (v154 >= *v1)
                      {
                        goto LABEL_264;
                      }

                      sub_19A33546C(v152 + v157 + v154 * v158, v470[183], &qword_1EAF9FFE0, &qword_19A578B00);
                      if (v153 >= v204)
                      {
                        goto LABEL_265;
                      }

                      sub_19A33546C(v152 + v202, v470[182], &qword_1EAF9FFE0, &qword_19A578B00);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v152 = sub_19A32E604(v152);
                      }

                      sub_19A3E3898(v470[182], v152 + v157 + v154 * v158);
                      if (v153 >= v152[2])
                      {
                        goto LABEL_266;
                      }

                      v203 = v470[255];
                      sub_19A3E3898(v470[183], v152 + v202);
                      *(v203 + 16) = v152;
                      v148 = v468;
                      v155 = v472;
                    }

                    ++v154;
                  }

                  ++v153;
                  v1 = (v152 + 2);
                  v186 = v152[2];
                  v202 += v158;
                  if (v153 == v186)
                  {
                    goto LABEL_122;
                  }
                }

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
                goto LABEL_269;
              }

LABEL_122:
              if (v153 < v154)
              {
                goto LABEL_267;
              }
            }

            else
            {
              v154 = 0;
            }

LABEL_123:
            v0 = v470;
            sub_19A46B010(v154, v153);
            swift_endAccess();
          }

          v465 = v0[274];
          sub_19A2F3FA0(v0[192], &qword_1EAFA10A8, &qword_19A581278);
          goto LABEL_125;
        }

        v133 = v470[265];
        v134 = v470[215];
        v135 = v470[207];
        v462 = v470[255];
        v136 = v470[197];
        v137 = v470[187];
        v138 = v470[185];
        v1 = v470[184];

        v139 = sub_19A41F408(v137, v133);
        v140 = v134 + *(v136 + 20);
        (*(v138 + 16))(v140, v137, v1);
        v141 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        v470[282] = v141;
        v140[*(v141 + 20)] = 0;
        v140[*(v141 + 24)] = (v139 & 1) == 0;
        v142 = *(v141 - 8);
        v470[283] = v142;
        v2 = v470;
        (*(v142 + 56))(v140, 0, 1, v141);
        *v134 = v4;
        v134[1] = v465;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
        v143 = (*(v135 + 80) + 32) & ~*(v135 + 80);
        v144 = swift_allocObject();
        v470[284] = v144;
        *(v144 + 16) = xmmword_19A576E10;
        sub_19A3E3C64(v134, v144 + v143, type metadata accessor for Concept);
        v470[141] = v144;

        v145 = sub_19A3DEBC0(v472, v468, v462);
        sub_19A47086C(v145);
        v146 = v470[141];
        v470[285] = v146;
        v147 = *(v146 + 16);
        if (v147 == 1)
        {
          if ((v470[169] & 4) == 0 || (sub_19A3C4F5C(v146) & 1) == 0)
          {

            if (!*(v144 + 16))
            {
              goto LABEL_271;
            }

            v188 = v470[219];
            v189 = *(v470[244] + 40);
            sub_19A3E3C64(v144 + v143, v188, type metadata accessor for Concept);

            v190 = v189;

            sub_19A340970(v188, v472, v468);

            v2 = v470;
            sub_19A3E3E40(v188, type metadata accessor for Concept);
            goto LABEL_135;
          }
        }

        else if (!v147)
        {

LABEL_135:

          v4 = *(v2 + 2176);
          v198 = *(v2 + 1720);
          v199 = v470[187];
          v200 = v470[185];
          v201 = v470[184];

          sub_19A3E3E40(v198, type metadata accessor for Concept);
          v0 = v470;
          (*(v200 + 8))(v199, v201);
LABEL_127:
          v5 = v0[269] + 1;
          if (v5 != v0[267])
          {
            goto LABEL_10;
          }

          goto LABEL_2;
        }

        if (v470[161] != 1)
        {
          v179 = v470[163];
          if (v179)
          {
            v351 = *(v470[244] + 40);

            v352 = [v351 string];
            v353 = sub_19A572CFC();
            v355 = v354;

            v470[286] = v355;
            v470[144] = v146;
            v466 = (v179 + *v179);
            v356 = swift_task_alloc();
            v470[287] = v356;
            *v356 = v470;
            v356[1] = sub_19A3D11E0;
            v338 = v470[193];
            v339 = (v470 + 144);
            v340 = v353;
            v341 = v355;
            v342 = v472;
            goto LABEL_211;
          }
        }

        v180 = *(v470[244] + 40);
        v181 = qword_1EAF9F838;

        v182 = v180;
        if (v181 != -1)
        {
          swift_once();
        }

        v183 = v470[207];
        v184 = v470[206];
        v1 = v470[194];
        v185 = qword_1EAFCA248;
        v470[143] = v146;
        swift_bridgeObjectRetain_n();
        [v182 addAttribute:v185 value:sub_19A57402C() range:{v472, v468}];
        swift_unknownObjectRelease();

        (*(v183 + 56))(v1, 1, 1, v184);
        if ((*(v183 + 48))(v470[194], 1, v470[206]) == 1)
        {

          v448 = v470[268];
        }

        else
        {
          v191 = v470[271];
          v192 = v470[270];
          v193 = v470[268];
          v194 = v470[255];
          v195 = swift_task_alloc();
          *(v195 + 16) = v192;
          *(v195 + 24) = v191;
          swift_beginAccess();
          v196 = sub_19A3E3548((v194 + 16), sub_19A3E3908, v195);
          if (v193)
          {
            goto LABEL_218;
          }

          v197 = *(*(v470[255] + 16) + 16);
          if (v197 < v196)
          {
            goto LABEL_272;
          }

          sub_19A46B010(v196, v197);
          swift_endAccess();

          v2 = v470;

          v448 = 0;
        }

        sub_19A2F3FA0(*(v2 + 1552), &qword_1EAFA10A8, &qword_19A581278);
        goto LABEL_135;
      }

      v91 = *(v2 + 1640);
      v92 = *(v2 + 1616);
      v93 = *(*(v2 + 1624) + 80);
      sub_19A3E3C64(v90 + ((v93 + 32) & ~v93), v91, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      if (*(v91 + *(v92 + 20)))
      {
        v94 = *(v2 + 1640);

        sub_19A3E3E40(v94, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        goto LABEL_67;
      }

      v109 = *(v2 + 2120);
      v461 = *(v2 + 2040);
      v443 = *(v2 + 1744);
      v456 = *(v2 + 1656);
      v110 = *(v2 + 1640);
      v1 = *(v2 + 1632);
      v442 = *(v2 + 1616);
      v111 = *(v2 + 1608);
      v112 = *(v2 + 1576);
      v113 = *(v2 + 1480);
      v114 = *(v2 + 1472);
      sub_19A3E3C64(v110, v1, type metadata accessor for EntityExtractor.NamedEntity.EntityData);

      LOBYTE(v109) = sub_19A41F408(v110, v109);
      *v111 = v4;
      v111[1] = v465;
      v115 = v111 + *(v112 + 20);
      (*(v113 + 16))(v115, v1, v114);
      LOBYTE(v113) = *(v1 + *(v442 + 20));
      sub_19A3E3E40(v1, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      v116 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      *(v2 + 2208) = v116;
      v115[*(v116 + 20)] = v113;
      v115[*(v116 + 24)] = (v109 & 1) == 0;
      v117 = *(v116 - 8);
      *(v2 + 2216) = v117;
      (*(v117 + 56))(v115, 0, 1, v116);
      sub_19A3E3C64(v111, v443, type metadata accessor for NamedEntityData);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0, &unk_19A5812A0);
      v118 = (*(v456 + 80) + 32) & ~*(v456 + 80);
      v119 = swift_allocObject();
      *(v2 + 2224) = v119;
      *(v119 + 16) = xmmword_19A576E10;
      sub_19A3E3C64(v443, v119 + v118, type metadata accessor for Concept);
      *(v2 + 1168) = v119;

      v120 = sub_19A3DEBC0(v472, v468, v461);
      sub_19A47086C(v120);
      v82 = *(v2 + 1168);
      *(v2 + 2232) = v82;
      v121 = *(v82 + 16);
      if (v121 == 1)
      {
        if ((*(v2 + 1352) & 4) == 0 || (sub_19A3C4F5C(v82) & 1) == 0)
        {

          if (!*(v119 + 16))
          {
            goto LABEL_268;
          }

          v166 = v470[219];
          v167 = *(*(v2 + 1952) + 40);
          sub_19A3E3C64(v119 + v118, v166, type metadata accessor for Concept);

          v168 = v167;

          sub_19A340970(v166, v472, v468);

          v2 = v470;
          sub_19A3E3E40(v166, type metadata accessor for Concept);
          goto LABEL_110;
        }
      }

      else if (!v121)
      {

LABEL_110:

        v4 = *(v2 + 2176);
        v176 = *(v2 + 1744);
        v177 = v470[205];
        v178 = v470[201];

        sub_19A3E3E40(v176, type metadata accessor for Concept);
        sub_19A3E3E40(v178, type metadata accessor for NamedEntityData);
        v0 = v470;
        sub_19A3E3E40(v177, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        goto LABEL_127;
      }

      if (*(v2 + 1288) != 1)
      {
        v79 = *(v2 + 1304);
        if (v79)
        {
LABEL_213:
          v345 = *(*(v2 + 1952) + 40);

          v346 = [v345 string];
          v347 = sub_19A572CFC();
          v349 = v348;

          *(v2 + 2240) = v349;
          *(v2 + 1184) = v82;
          v471 = (v79 + *v79);
          v350 = swift_task_alloc();
          *(v2 + 2248) = v350;
          *v350 = v2;
          v350[1] = sub_19A3CC9EC;
          v338 = *(v2 + 1560);
          v339 = v2 + 1184;
          v340 = v347;
          v341 = v349;
          v344 = v471;
          v342 = v472;
          v343 = v468;
          goto LABEL_214;
        }
      }

      v159 = *(v2 + 1952);

      v160 = *(v159 + 40);
      v161 = qword_1EAF9F838;

      v162 = v160;
      if (v161 != -1)
      {
        swift_once();
      }

      v163 = *(v2 + 1656);
      v164 = *(v2 + 1648);
      v1 = *(v2 + 1568);
      v165 = qword_1EAFCA248;
      *(v2 + 1176) = v82;
      swift_bridgeObjectRetain_n();
      [v162 addAttribute:v165 value:sub_19A57402C() range:{v472, v468}];
      swift_unknownObjectRelease();

      (*(v163 + 56))(v1, 1, 1, v164);
      if ((*(v163 + 48))(*(v2 + 1568), 1, *(v2 + 1648)) == 1)
      {

        v448 = *(v2 + 2144);
      }

      else
      {
        v169 = *(v2 + 2168);
        v170 = *(v2 + 2160);
        v171 = *(v2 + 2144);
        v172 = *(v2 + 2040);
        v173 = swift_task_alloc();
        *(v173 + 16) = v170;
        *(v173 + 24) = v169;
        swift_beginAccess();
        v174 = sub_19A3E3548((v172 + 16), sub_19A3E406C, v173);
        if (v171)
        {
          goto LABEL_218;
        }

        v175 = *(*(*(v2 + 2040) + 16) + 16);
        if (v175 < v174)
        {
LABEL_269:
          __break(1u);
          goto LABEL_270;
        }

        sub_19A46B010(v174, v175);
        swift_endAccess();
        v2 = v470;

        v448 = 0;
      }

      sub_19A2F3FA0(*(v2 + 1568), &qword_1EAFA10A8, &qword_19A581278);
      goto LABEL_110;
    }

    v61 = v56 + v42;
    if (__OFADD__(v56, v42))
    {
      goto LABEL_201;
    }

    if (v61 < v56)
    {
      goto LABEL_202;
    }

    v62 = (v59 + 40);
    while (1)
    {
      v64 = *(v62 - 1);
      v63 = *v62;
      v65 = v64 < v61 && v56 < v63;
      v66 = !v65 || v64 == v63;
      if (!v66 && v56 != v61)
      {
        break;
      }

      v62 += 4;
      if (!--v60)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    v74 = *(v2 + 2040);
    v75 = v470[244];
    v76 = v470[209];
    *v76 = v4;
    *(v76 + 8) = v465;
    *(v76 + 16) = v1;
    swift_storeEnumTagMultiPayload();
    v77 = *(v75 + 40);
    v0 = v470;

    v78 = v77;
    v79 = v468;
    sub_19A340970(v76, v56, v468);

    v80 = swift_task_alloc();
    *(v80 + 16) = v56;
    *(v80 + 24) = v468;
    swift_beginAccess();
    v2 = *(v74 + 16);
    v4 = v2 + 16;
    v81 = *(v2 + 16);
    if (v81)
    {
      break;
    }

    v30 = 0;
    v31 = 0;
LABEL_12:
    sub_19A46B010(v30, v31);
    swift_endAccess();

    v32 = v453;
LABEL_13:
    v5 = v460 + 1;
    v4 = v0[267];
    sub_19A3E3E40(*v32, type metadata accessor for Concept);
    if (v460 + 1 == v4)
    {
      goto LABEL_2;
    }
  }

  v465 = v80;
  v30 = 0;
  v82 = 1;
  while (1)
  {
    v83 = v470[178];
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v1 = *(v83 + 72);
    v489.location = v56;
    v489.length = v468;
    if (NSIntersectionRange(*(v2 + v84 + v1 * v30 + *(v470[1416] + 48)), v489).length > 0)
    {
      break;
    }

    ++v30;
    ++v82;
    if (v81 == v30)
    {
      v30 = *v4;
      v31 = *v4;
      goto LABEL_12;
    }
  }

  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
    goto LABEL_213;
  }

  v85 = *v4;
  if (v31 == *v4)
  {
LABEL_47:
    v86 = v465;
    if (v31 < v30)
    {
      __break(1u);
LABEL_210:
      v332 = *(*(v2 + 1952) + 40);

      v333 = [v332 string];
      v334 = sub_19A572CFC();
      v336 = v335;

      *(v2 + 2336) = v336;
      *(v2 + 1120) = v86;
      v466 = (v79 + *v79);
      v337 = swift_task_alloc();
      *(v2 + 2344) = v337;
      *v337 = v2;
      v337[1] = sub_19A3D59D4;
      v338 = *(v2 + 1528);
      v339 = v2 + 1120;
      v340 = v334;
      v341 = v336;
      v342 = v31;
LABEL_211:
      v344 = v466;
      v343 = v468;
LABEL_214:

      v344(v338, v340, v341, v342, v343, v339);
      return;
    }

    goto LABEL_12;
  }

  v87 = v84 + v1 * v82;
  while (v31 < v85)
  {
    v490.location = v472;
    v490.length = v79;
    if (NSIntersectionRange(*(v2 + v87 + *(v0[1416] + 48)), v490).length <= 0)
    {
      if (v31 != v30)
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_203;
        }

        v89 = *v4;
        if (v30 >= *v4)
        {
          goto LABEL_204;
        }

        v0 = v470;
        v4 = v30 * v1;
        sub_19A33546C(v2 + v84 + v30 * v1, v470[181], &qword_1EAF9FFE0, &qword_19A578B00);
        if (v31 >= v89)
        {
          goto LABEL_205;
        }

        sub_19A33546C(v2 + v87, v470[180], &qword_1EAF9FFE0, &qword_19A578B00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_19A32E604(v2);
        }

        v79 = v468;
        sub_19A3E3898(v470[180], v2 + v84 + v4);
        if (v31 >= *(v2 + 16))
        {
          goto LABEL_206;
        }

        v88 = v470[255];
        sub_19A3E3898(v470[181], v2 + v87);
        *(v88 + 16) = v2;
      }

      ++v30;
    }

    ++v31;
    v4 = v2 + 16;
    v85 = *(v2 + 16);
    v87 += v1;
    if (v31 == v85)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_195:
  v305 = v476;
  v306 = swift_isUniquelyReferenced_nonNull_native();
  v477 = v446;
  sub_19A33D400(v305, 0xD000000000000010, 0x800000019A5989F0, v306);
  v446 = v477;
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 424));
  v448 = 0;
  v206 = v1;
  if ((*(v1 + 1352) & 2) == 0)
  {
    goto LABEL_166;
  }

LABEL_196:

  v307 = sub_19A5723DC();
  v308 = v206;
  v309 = sub_19A57355C();
  if (os_log_type_enabled(v307, v309))
  {
    v310 = swift_slowAlloc();
    v311 = swift_slowAlloc();
    v477 = v311;
    *v310 = 136380675;
    swift_beginAccess();

    v313 = sub_19A3E51D0(v312, 8236, 0xE200000000000000);
    v315 = v314;

    v316 = sub_19A31F114(v313, v315, &v477);

    *(v310 + 4) = v316;
    _os_log_impl(&dword_19A2DE000, v307, v309, "Disallowed concepts: %{private}s", v310, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v311);
    MEMORY[0x19A902C50](v311, -1, -1);
    MEMORY[0x19A902C50](v310, -1, -1);
  }

  swift_beginAccess();

  v318 = sub_19A3C3960(v317, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
  sub_19A3B8774();
  swift_allocError();
  *v319 = v318;
  *(v319 + 8) = 3;
  swift_willThrow();

  v1 = v308;
LABEL_191:

  v301 = *(v1 + 1896);
  v302 = *(v1 + 1880);
  v303 = *(v1 + 1872);
  sub_19A3DF010("validateText", 12, 2);

  (*(v302 + 8))(v301, v303);

  v304 = *(v1 + 8);

  v304();
}

uint64_t sub_19A3DE6C8()
{
  sub_19A3DF010("scrubText", 9, 2);

  v1 = v0[237];
  v2 = v0[235];
  v3 = v0[234];
  sub_19A3DF010("validateText", 12, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3DEA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0, &qword_19A578B00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v13 = (&v19 + *(v12 + 56) - v10);
  sub_19A3E3C64(a1, &v19 - v10, type metadata accessor for Concept);
  *v13 = a2;
  v13[1] = a3;
  v14 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_19A31E384(0, v14[2] + 1, 1, v14);
    *a4 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_19A31E384((v16 > 1), v17 + 1, 1, v14);
    *a4 = v14;
  }

  v14[2] = v17 + 1;
  return sub_19A3E3EC4(v11, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17);
}

uint64_t sub_19A3DEBC0(NSUInteger a1, NSUInteger a2, uint64_t a3)
{
  v35 = a2;
  v40 = a1;
  v4 = type metadata accessor for Concept(0);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0, &qword_19A578B00);
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = *(v14 + 16);

  v17 = MEMORY[0x1E69E7CC0];
  v38 = v15;
  v34 = v6;
  if (v15)
  {
    v18 = 0;
    v19 = v35;
    v36 = v10;
    while (v18 < *(v14 + 16))
    {
      v20 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v21 = *(v41 + 72);
      sub_19A33546C(v14 + v20 + v21 * v18, v13, &qword_1EAF9FFE0, &qword_19A578B00);
      v43.location = v40;
      v43.length = v19;
      if (NSIntersectionRange(*(v13 + *(v39 + 48)), v43).length < 1)
      {
        result = sub_19A2F3FA0(v13, &qword_1EAF9FFE0, &qword_19A578B00);
      }

      else
      {
        sub_19A3E3EC4(v13, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19A322820(0, *(v17 + 16) + 1, 1);
          v19 = v35;
          v17 = v42;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_19A322820((v23 > 1), v24 + 1, 1);
          v19 = v35;
          v17 = v42;
        }

        *(v17 + 16) = v24 + 1;
        v10 = v36;
        result = sub_19A3E3EC4(v36, v17 + v20 + v24 * v21);
      }

      if (v38 == ++v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_12:

  v25 = *(v17 + 16);
  if (v25)
  {
    v42 = MEMORY[0x1E69E7CC0];
    result = sub_19A322740(0, v25, 0);
    v26 = 0;
    v27 = v42;
    v40 = v17 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v29 = v33;
    v28 = v34;
    while (v26 < *(v17 + 16))
    {
      sub_19A33546C(v40 + *(v41 + 72) * v26, v29, &qword_1EAF9FFE0, &qword_19A578B00);
      sub_19A3E3C64(v29, v28, type metadata accessor for Concept);
      sub_19A2F3FA0(v29, &qword_1EAF9FFE0, &qword_19A578B00);
      v42 = v27;
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_19A322740((v30 > 1), v31 + 1, 1);
        v27 = v42;
      }

      ++v26;
      *(v27 + 16) = v31 + 1;
      result = sub_19A3E3DD8(v28, v27 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, type metadata accessor for Concept);
      if (v25 == v26)
      {

        return v27;
      }
    }

LABEL_22:
    __break(1u);
    return result;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_19A3DF010(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A3DF2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v17;
  *(v8 + 296) = v18;
  *(v8 + 442) = v16;
  *(v8 + 441) = v15;
  *(v8 + 256) = v13;
  *(v8 + 272) = v14;
  *(v8 + 240) = a6;
  *(v8 + 248) = a8;
  *(v8 + 440) = a5;
  *(v8 + 224) = a3;
  *(v8 + 232) = a4;
  *(v8 + 208) = a1;
  *(v8 + 216) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0, &qword_19A578B00);
  *(v8 + 304) = v9;
  *(v8 + 312) = *(v9 - 8);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  type metadata accessor for NamedEntityData.NamedEntityType(0);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = type metadata accessor for NamedEntityData(0);
  *(v8 + 352) = swift_task_alloc();
  v10 = type metadata accessor for Concept(0);
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10A8, &qword_19A581278);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3DF514, 0, 0);
}

uint64_t sub_19A3DF514()
{
  *(v0 + 184) = *(v0 + 208);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);

  v5 = sub_19A3DEBC0(v4, v3, v2);
  sub_19A47086C(v5);
  v6 = *(v0 + 184);
  *(v0 + 416) = v6;
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_23;
  }

  if (v7 == 1 && (*(v0 + 440) != 1 || (sub_19A3C4F5C(v6) & 1) == 0))
  {
    v20 = *(v0 + 208);
    swift_beginAccess();
    if (*(v20 + 16))
    {
      v21 = *(v0 + 376);
      v23 = *(v0 + 216);
      v22 = *(v0 + 224);
      v24 = *(*(v0 + 264) + 40);
      v25 = *(*(v0 + 368) + 80);
      sub_19A3E3C64(*(v0 + 208) + ((v25 + 32) & ~v25), v21, type metadata accessor for Concept);

      v26 = v24;
      sub_19A340970(v21, v23, v22);

      sub_19A3E3E40(v21, type metadata accessor for Concept);
      goto LABEL_23;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*(v0 + 240) != 1)
  {
    v8 = *(v0 + 248);
    if (v8)
    {
      v9 = *(v0 + 264);
      swift_beginAccess();
      v10 = *(v9 + 40);

      v11 = [v10 string];
      v12 = sub_19A572CFC();
      v14 = v13;

      *(v0 + 424) = v14;
      *(v0 + 200) = v6;
      v56 = (v8 + *v8);
      v15 = swift_task_alloc();
      *(v0 + 432) = v15;
      *v15 = v0;
      v15[1] = sub_19A3DFBE4;
      v16 = *(v0 + 400);
      v17 = *(v0 + 272);
      v18 = *(v0 + 280);

      return v56(v16, v12, v14, v17, v18, v0 + 200);
    }
  }

  v27 = *(v0 + 264);
  swift_beginAccess();
  v28 = *(v27 + 40);
  v29 = qword_1EAF9F838;

  v1 = v28;
  if (v29 != -1)
  {
LABEL_45:
    swift_once();
  }

  v30 = *(v0 + 368);
  range2a = *(v0 + 408);
  range2_8 = *(v0 + 360);
  v32 = *(v0 + 272);
  v31 = *(v0 + 280);
  v33 = qword_1EAFCA248;
  *(v0 + 192) = v6;
  swift_bridgeObjectRetain_n();
  [v1 addAttribute:v33 value:sub_19A57402C() range:{v32, v31}];
  swift_unknownObjectRelease();

  (*(v30 + 56))(range2a, 1, 1, range2_8);
  v34 = *(v0 + 408);
  if ((*(v30 + 48))(v34, 1, *(v0 + 360)) == 1)
  {
LABEL_22:
    sub_19A2F3FA0(v34, &qword_1EAFA10A8, &qword_19A581278);
LABEL_23:

    v46 = *(v0 + 8);

    return v46();
  }

  v35 = *(v0 + 312);
  v57 = *(v0 + 304);
  v36 = *(v0 + 224);
  v37 = *(v0 + 232);
  v38 = *(v0 + 216);
  v39 = swift_task_alloc();
  range2.location = v38;
  range2.length = v36;
  *(v39 + 16) = v38;
  *(v39 + 24) = v36;
  swift_beginAccess();
  v6 = *(v37 + 16);
  v40 = (v6 + 16);
  v41 = *(v6 + 16);
  if (!v41)
  {
    v42 = 0;
LABEL_21:
    sub_19A46B010(v42, v41);
    swift_endAccess();

    v34 = *(v0 + 408);
    goto LABEL_22;
  }

  v42 = 0;
  v43 = ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v44 = *(v35 + 72);
  v52 = v43;
  while (1)
  {
    v45 = NSIntersectionRange(*(v43 + v6 + *(v57 + 48)), range2);
    result = v45.location;
    if (v45.length > 0)
    {
      break;
    }

    ++v42;
    v43 = (v43 + v44);
    if (v41 == v42)
    {
      v42 = *v40;
      v41 = *v40;
      goto LABEL_21;
    }
  }

  v41 = v42 + 1;
  if (__OFADD__(v42, 1))
  {
    goto LABEL_50;
  }

  v47 = *v40;
  if (v41 != *v40)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (v41 >= v42)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_30:
  v48 = v43 + v44;
  v43 = &qword_1EAF9FFE0;
  v51 = v37;
  while (1)
  {
    if (v41 >= v47)
    {
      __break(1u);
      goto LABEL_44;
    }

    v1 = &v48[v6];
    v49 = NSIntersectionRange(*&v48[v6 + *(v57 + 48)], range2);
    result = v49.location;
    if (v49.length <= 0)
    {
      break;
    }

LABEL_32:
    ++v41;
    v40 = (v6 + 16);
    v47 = *(v6 + 16);
    v48 += v44;
    if (v41 == v47)
    {
      goto LABEL_28;
    }
  }

  if (v41 == v42)
  {
LABEL_31:
    ++v42;
    goto LABEL_32;
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    v50 = *v40;
    if (v42 >= *v40)
    {
      goto LABEL_47;
    }

    result = sub_19A33546C(v52 + v6 + v42 * v44, *(v0 + 328), &qword_1EAF9FFE0, &qword_19A578B00);
    if (v41 >= v50)
    {
      goto LABEL_48;
    }

    sub_19A33546C(&v48[v6], *(v0 + 320), &qword_1EAF9FFE0, &qword_19A578B00);
    v37 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_19A32E604(v6);
    }

    result = sub_19A3E3898(*(v0 + 320), v52 + v6 + v42 * v44);
    if (v41 >= *(v6 + 16))
    {
      goto LABEL_49;
    }

    sub_19A3E3898(*(v0 + 328), &v48[v6]);
    *(v51 + 16) = v6;
    goto LABEL_31;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_19A3DFBE4()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3DFCFC, 0, 0);
}

uint64_t sub_19A3DFCFC()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 408);
    sub_19A2E0A60(*(v0 + 248), *(v0 + 256));
    sub_19A2F3FA0(v1, &qword_1EAFA10A8, &qword_19A581278);
    (*(v3 + 56))(v5, 1, 1, v2);
    goto LABEL_14;
  }

  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  sub_19A3E3DD8(v1, v6, type metadata accessor for Concept);
  sub_19A3E3C64(v6, v7, type metadata accessor for Concept);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 384);
  v71 = v4;
  if (EnumCaseMultiPayload == 4)
  {
    v11 = *(v0 + 344);
    v10 = *(v0 + 352);
    v12 = *(v0 + 336);
    sub_19A3E3DD8(v9, v10, type metadata accessor for NamedEntityData);
    sub_19A3E3C64(v10 + *(v11 + 20), v12, type metadata accessor for NamedEntityData.NamedEntityType);
    v13 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
    {
      v35 = *(v0 + 392);
      range2_8a = *(v0 + 352);
      v37 = *(v0 + 272);
      v36 = *(v0 + 280);
      v38 = *(v0 + 256);
      v39 = *(v0 + 264);
      v40 = *(v0 + 248);
      sub_19A3E3E40(*(v0 + 336), type metadata accessor for NamedEntityData.NamedEntityType);
      swift_beginAccess();
      v41 = *(v39 + 40);

      v42 = v41;
      sub_19A340970(v35, v37, v36);
      sub_19A2E0A60(v40, v38);

      v25 = type metadata accessor for NamedEntityData;
      v26 = range2_8a;
      goto LABEL_12;
    }

    v14 = *(v0 + 336);
    sub_19A3E3E40(*(v0 + 352), type metadata accessor for NamedEntityData);
    v15 = type metadata accessor for NamedEntityData.NamedEntityType;
    v9 = v14;
  }

  else
  {
    v15 = type metadata accessor for Concept;
  }

  sub_19A3E3E40(v9, v15);
  v16 = *(v0 + 441);
  if (v16 != 3 && (*(v0 + 442) & 1) == 0)
  {
    v17 = *(v0 + 376);
    v18 = *(v0 + 296);
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v21 = *(v0 + 264);
    range2_8 = *(v0 + 256);
    v22 = *(v0 + 248);
    *v17 = *(v0 + 288);
    *(v17 + 8) = v18;
    *(v17 + 16) = v16;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v23 = *(v21 + 40);

    v24 = v23;
    sub_19A340970(v17, v20, v19);
    sub_19A2E0A60(v22, range2_8);

    v25 = type metadata accessor for Concept;
    v26 = v17;
LABEL_12:
    sub_19A3E3E40(v26, v25);
    goto LABEL_13;
  }

  v27 = *(v0 + 392);
  v29 = *(v0 + 272);
  v28 = *(v0 + 280);
  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v32 = *(v0 + 248);
  swift_beginAccess();
  v33 = *(v31 + 40);

  v34 = v33;
  sub_19A340970(v27, v29, v28);
  sub_19A2E0A60(v32, v30);

LABEL_13:
  v43 = *(v0 + 408);
  v44 = *(v0 + 360);
  v45 = *(v0 + 368);
  sub_19A3E3DD8(*(v0 + 392), v43, type metadata accessor for Concept);
  (*(v45 + 56))(v43, 0, 1, v44);
  v4 = v71;
LABEL_14:
  v46 = *(v0 + 408);
  if (v4(v46, 1, *(v0 + 360)) != 1)
  {
    v47 = *(v0 + 312);
    v72 = *(v0 + 304);
    v49 = *(v0 + 224);
    v48 = *(v0 + 232);
    v50 = *(v0 + 216);
    v51 = swift_task_alloc();
    *(v51 + 16) = v50;
    *(v51 + 24) = v49;
    range2.length = v49;
    swift_beginAccess();
    v52 = *(v48 + 16);
    v53 = v52 + 2;
    v54 = v52[2];
    if (v54)
    {
      v66 = v51;
      v55 = 0;
      v56 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v57 = *(v47 + 72);
      v67 = v56;
      while (1)
      {
        v74.length = range2.length;
        v74.location = v50;
        v59 = NSIntersectionRange(*(v52 + v56 + *(v72 + 48)), v74);
        result = v59.location;
        if (v59.length > 0)
        {
          break;
        }

        ++v55;
        v56 += v57;
        if (v54 == v55)
        {
          v55 = *v53;
          v54 = *v53;
          goto LABEL_21;
        }
      }

      v54 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_47;
      }

      v61 = *v53;
      if (v54 != *v53)
      {
LABEL_29:
        range2.location = v50;
        v62 = v57 + v56;
        v65 = v48;
        while (v54 < v61)
        {
          v50 = v52 + v62;
          v63 = NSIntersectionRange(*(v52 + v62 + *(v72 + 48)), range2);
          result = v63.location;
          if (v63.length <= 0)
          {
            if (v54 != v55)
            {
              if ((v55 & 0x8000000000000000) != 0)
              {
                goto LABEL_43;
              }

              v64 = *v53;
              if (v55 >= *v53)
              {
                goto LABEL_44;
              }

              result = sub_19A33546C(v52 + v67 + v55 * v57, *(v0 + 328), &qword_1EAF9FFE0, &qword_19A578B00);
              if (v54 >= v64)
              {
                goto LABEL_45;
              }

              sub_19A33546C(v52 + v62, *(v0 + 320), &qword_1EAF9FFE0, &qword_19A578B00);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v52 = sub_19A32E604(v52);
              }

              v48 = v65;
              result = sub_19A3E3898(*(v0 + 320), v52 + v67 + v55 * v57);
              if (v54 >= v52[2])
              {
                goto LABEL_46;
              }

              result = sub_19A3E3898(*(v0 + 328), v52 + v62);
              *(v65 + 16) = v52;
            }

            ++v55;
          }

          ++v54;
          v53 = v52 + 2;
          v61 = v52[2];
          v62 += v57;
          if (v54 == v61)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

LABEL_27:
      v56 = v66;
      if (v54 < v55)
      {
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      v55 = 0;
    }

LABEL_21:
    sub_19A46B010(v55, v54);
    swift_endAccess();

    v46 = *(v0 + 408);
  }

  sub_19A2F3FA0(v46, &qword_1EAFA10A8, &qword_19A581278);

  v60 = *(v0 + 8);

  return v60();
}

void sub_19A3E0448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6)
{
  sub_19A33546C(a1, v21, &qword_1EAFA0228, &qword_19A582FC0);
  if (v22)
  {
    if (swift_dynamicCast())
    {
      v9 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_19A31E6D8(0, *(v9 + 2) + 1, 1, v9);
        *a5 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_19A31E6D8((v11 > 1), v12 + 1, 1, v9);
        *a5 = v9;
      }

      *(v9 + 2) = v12 + 1;
      *&v9[8 * v12 + 32] = v20;
      return;
    }
  }

  else
  {
    sub_19A2F3FA0(v21, &qword_1EAFA0228, &qword_19A582FC0);
  }

  if (*(a1 + 24))
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v13 = sub_19A5723FC();
    __swift_project_value_buffer(v13, qword_1ED82BCF0);

    v14 = sub_19A5723DC();
    v15 = sub_19A57355C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138477827;
      swift_beginAccess();
      v18 = *(a6 + 40);
      *(v16 + 4) = v18;
      *v17 = v18;
      v19 = v18;
      _os_log_impl(&dword_19A2DE000, v14, v15, "There should not be a non-Ambiguity type object associated with an Ambiguity Key in the NSAttributedString: %{private}@", v16, 0xCu);
      sub_19A2F3FA0(v17, &qword_1EAF9FD28, &qword_19A577340);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v16, -1, -1);
    }
  }
}

void sub_19A3E0698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Concept(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v36 - v18;
  sub_19A33546C(a1, v39, &qword_1EAFA0228, &qword_19A582FC0);
  if (!v40)
  {
    sub_19A2F3FA0(v39, &qword_1EAFA0228, &qword_19A582FC0);
LABEL_11:
    if (*(a1 + 24))
    {
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v29 = sub_19A5723FC();
      __swift_project_value_buffer(v29, qword_1ED82BCF0);

      v30 = sub_19A5723DC();
      v31 = sub_19A57355C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138477827;
        swift_beginAccess();
        v34 = *(a6 + 40);
        *(v32 + 4) = v34;
        *v33 = v34;
        v35 = v34;
        _os_log_impl(&dword_19A2DE000, v30, v31, "There should not be a non-[Concept] type object associated with a Concepts Key in the NSAttributedString: %{private}@", v32, 0xCu);
        sub_19A2F3FA0(v33, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v33, -1, -1);
        MEMORY[0x19A902C50](v32, -1, -1);
      }
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v20 = *(v38 + 16);
  if (v20)
  {
    v21 = *(v9 + 80);
    v36[1] = v38;
    v22 = v38 + ((v21 + 32) & ~v21);
    v23 = *(v9 + 72);
    do
    {
      sub_19A3E3C64(v22, v19, type metadata accessor for Concept);
      sub_19A3E3C64(v19, v16, type metadata accessor for Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v25 = v19;
      v26 = v16;
      if (EnumCaseMultiPayload == 3)
      {
        v27 = v16[16];

        v26 = v19;
        if (v27 == 3)
        {
          goto LABEL_6;
        }

        v28 = v37;
        sub_19A3E3C64(v19, v37, type metadata accessor for Concept);
        sub_19A32314C(v13, v28);
        v25 = v13;
        v26 = v19;
      }

      sub_19A3E3E40(v25, type metadata accessor for Concept);
LABEL_6:
      sub_19A3E3E40(v26, type metadata accessor for Concept);
      v22 += v23;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_19A3E0A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = type metadata accessor for Concept(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A33546C(a1, v22, &qword_1EAFA0228, &qword_19A582FC0);
  if (!v23)
  {
    return sub_19A2F3FA0(v22, &qword_1EAFA0228, &qword_19A582FC0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v21;
    v15 = *(v21 + 16);
    if (v15)
    {
      v16 = 0;
      while (1)
      {
        if (v16 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        sub_19A3E3C64(v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v12, type metadata accessor for Concept);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          break;
        }

        ++v16;
        sub_19A3E3E40(v12, type metadata accessor for Concept);
        if (v15 == v16)
        {
        }
      }

      sub_19A3E3E40(v12, type metadata accessor for Concept);
      v9 = *a5;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v9;
      if (result)
      {
        goto LABEL_11;
      }

LABEL_16:
      result = sub_19A31E05C(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *a5 = result;
LABEL_11:
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_19A31E05C((v17 > 1), v18 + 1, 1, v9);
        v9 = result;
        *a5 = result;
      }

      *(v9 + 16) = v18 + 1;
      v19 = v9 + 16 * v18;
      *(v19 + 32) = a2;
      *(v19 + 40) = a3;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_19A3E0D00(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, _BYTE *a6)
{
  v10 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Concept(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v34);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A33546C(a1, v37, &qword_1EAFA0228, &qword_19A582FC0);
  if (!v38)
  {
    return sub_19A2F3FA0(v37, &qword_1EAFA0228, &qword_19A582FC0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318, qword_19A579C80);
  result = swift_dynamicCast();
  if (result)
  {
    v32 = v14;
    v22 = v36;
    v23 = *(v36 + 16);
    if (!v23)
    {
    }

    v30[0] = a6;
    v30[1] = a5;
    v31 = a4;
    v24 = 0;
    v25 = v36 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v26 = (v33 + 48);
    while (1)
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      sub_19A3E3C64(v25 + *(v16 + 72) * v24, v18, type metadata accessor for Concept);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_19A3E3DD8(v18, v20, type metadata accessor for NamedEntityData);
        sub_19A3E3C64(&v20[*(v34 + 20)], v12, type metadata accessor for NamedEntityData.NamedEntityType);
        if ((*v26)(v12, 1, v35) != 1)
        {

          v29 = v32;
          sub_19A3E3DD8(v12, v32, type metadata accessor for NamedEntityData.PhotosPersonData);
          if (sub_19A570FFC())
          {
            *v30[0] = 0;
          }

          *v31 = 1;
          sub_19A3E3E40(v29, type metadata accessor for NamedEntityData.PhotosPersonData);
          return sub_19A3E3E40(v20, type metadata accessor for NamedEntityData);
        }

        sub_19A3E3E40(v20, type metadata accessor for NamedEntityData);
        v27 = type metadata accessor for NamedEntityData.NamedEntityType;
        v28 = v12;
      }

      else
      {
        v27 = type metadata accessor for Concept;
        v28 = v18;
      }

      result = sub_19A3E3E40(v28, v27);
      if (v23 == ++v24)
      {
      }
    }
  }

  return result;
}

uint64_t sub_19A3E112C(void *a1, void (*a2)(_BYTE *), uint64_t a3, const char *a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  v10 = a1[1];
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v30[0] = *a1;
    v31 = v10;

    a2(v30);
  }

  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v12 = sub_19A57236C();
  __swift_project_value_buffer(v12, qword_1ED82BD30);
  v13 = sub_19A57234C();
  v14 = sub_19A57231C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v18 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  v29 = v18;
  if ((a6 & 1) == 0)
  {
    if (a4)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (a4 >> 32)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a4 & 0xFFFFF800) != 0xD800)
  {
    if (a4 >> 16 <= 0x10)
    {
      a4 = &v32;
LABEL_16:
      v20 = sub_19A57237C();
      v21 = *(v20 - 8);
      MEMORY[0x1EEE9AC00](v20);
      v23 = &v28[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v24 = (*(v21 + 88))(v23, v20);
      if (MEMORY[0x1E69E93E0] && v24 == *MEMORY[0x1E69E93E0])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v23, v20);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v13, v29, v27, a4, v25, v26, 2u);
      MEMORY[0x19A902C50](v26, -1, -1);
LABEL_21:

      return (*(v15 + 8))(v17, v14);
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_19A3E1468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a4 + 24))
  {
    return swift_endAccess();
  }

  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210, &qword_19A57BCA0);
  v14[0] = a3;
  sub_19A334618(v14, v12);

  JSONValue.init(_:)(v12, &v13);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    return swift_endAccess();
  }

  v10 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_19A33D400(v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(a4 + 24) = v12[0];
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_19A3E1588(void *a1)
{
  v90[1] = *MEMORY[0x1E69E9840];
  v78 = sub_19A57102C();
  v2 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v72 - v5;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v6 = sub_19A5723FC();
  v7 = __swift_project_value_buffer(v6, qword_1ED82BCF0);

  v8 = sub_19A5723DC();
  v9 = sub_19A57356C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v90[0] = v84;
    *v10 = 136315138;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10C0, &qword_19A5812B0);
    v77 = v2;
    v12 = v11;
    v88 = v11;
    v13 = sub_19A2F12E4(&qword_1EAFA10C8, &qword_1EAFA10C0, &qword_19A5812B0, MEMORY[0x1E69E6328]);
    v89 = v13;
    v87[0] = a1;
    v14 = __swift_project_boxed_opaque_existential_1(v87, v12);
    MEMORY[0x1EEE9AC00](v14);
    *(&v72 - 4) = v12;
    *(&v72 - 3) = v13;
    *(&v72 - 2) = sub_19A475C90;
    *(&v72 - 1) = 0;

    v15 = v74;
    v17 = sub_19A3E4928(sub_19A3E40A0, (&v72 - 6), v12, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v16);
    v74 = v15;
    v86 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
    sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8, &qword_19A57A790, MEMORY[0x1E69E6310]);
    v18 = sub_19A572BEC();
    v20 = v19;
    v2 = v77;

    __swift_destroy_boxed_opaque_existential_0Tm(v87);
    v21 = sub_19A31F114(v18, v20, v90);

    *(v10 + 4) = v21;
    _os_log_impl(&dword_19A2DE000, v8, v9, "Checking personalization validity of %s", v10, 0xCu);
    v22 = v84;
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    MEMORY[0x19A902C50](v22, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  v23 = objc_opt_self();
  v87[0] = 0;
  v24 = [v23 openPhotoLibraryWithWellKnownIdentifier:1 error:v87];
  v25 = v78;
  if (!v24)
  {
    v46 = v87[0];
    v47 = sub_19A570D1C();

    swift_willThrow();
    v48 = v47;
    v49 = sub_19A5723DC();
    v50 = sub_19A57355C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v87[0] = v52;
      *v51 = 136380675;
      swift_getErrorValue();
      v53 = sub_19A57405C();
      v55 = sub_19A31F114(v53, v54, v87);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_19A2DE000, v49, v50, "Personalization unavailable: %{private}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x19A902C50](v52, -1, -1);
      MEMORY[0x19A902C50](v51, -1, -1);
    }

    v56 = 1;
    goto LABEL_25;
  }

  v26 = v24;
  v72 = v7;
  v27 = v87[0];
  v73 = v26;
  v83 = [v26 librarySpecificFetchOptions];
  v28 = a1[2];
  if (v28)
  {
    v82 = objc_opt_self();
    v30 = *(v2 + 16);
    v29 = v2 + 16;
    v76 = (*(v29 + 64) + 32) & ~*(v29 + 64);
    v31 = a1 + v76;
    v32 = v30;
    v33 = *(v29 + 56);
    v81 = (v29 - 8);
    v75 = (v29 + 16);
    v84 = MEMORY[0x1E69E7CC0];
    v80 = xmmword_19A576E10;
    v77 = v29;
    v34 = v85;
    v30(v85, v31, v25);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0, &qword_19A57A800);
      v35 = v29;
      v36 = swift_allocObject();
      *(v36 + 16) = v80;
      v37 = v25;
      *(v36 + 32) = sub_19A570FDC();
      *(v36 + 40) = v38;
      v39 = sub_19A57307C();

      v40 = [v82 fetchPersonsWithLocalIdentifiers:v39 options:v83];

      v41 = [v40 count];
      if (v41)
      {
        (*v81)(v34, v37);
        v29 = v35;
        v25 = v37;
      }

      else
      {
        v32(v79, v34, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_19A31D0E0(0, v84[2] + 1, 1, v84);
        }

        v43 = v84[2];
        v42 = v84[3];
        if (v43 >= v42 >> 1)
        {
          v84 = sub_19A31D0E0((v42 > 1), v43 + 1, 1, v84);
        }

        v44 = v78;
        (*v81)(v85, v78);
        v45 = v84;
        v84[2] = v43 + 1;
        v25 = v44;
        (*v75)(&v45[v76 + v43 * v33], v79, v44);
        v29 = v77;
      }

      v31 += v33;
      if (!--v28)
      {
        break;
      }

      v32(v34, v31, v25);
    }
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];
  }

  v47 = v84;
  if (v84[2])
  {
    swift_bridgeObjectRetain_n();
    v57 = sub_19A5723DC();
    v58 = sub_19A57355C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v90[0] = v60;
      *v59 = 136315138;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10C0, &qword_19A5812B0);
      v88 = v61;
      v62 = sub_19A2F12E4(&qword_1EAFA10C8, &qword_1EAFA10C0, &qword_19A5812B0, MEMORY[0x1E69E6328]);
      v89 = v62;
      v87[0] = v47;
      v63 = __swift_project_boxed_opaque_existential_1(v87, v61);
      MEMORY[0x1EEE9AC00](v63);
      *(&v72 - 4) = v61;
      *(&v72 - 3) = v62;
      *(&v72 - 2) = sub_19A475C90;
      *(&v72 - 1) = 0;

      v65 = sub_19A3E4928(sub_19A3E3EA0, (&v72 - 6), v61, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v62, MEMORY[0x1E69E7410], v64);
      v47 = v84;
      v86 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
      sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8, &qword_19A57A790, MEMORY[0x1E69E6310]);
      v66 = sub_19A572BEC();
      v68 = v67;

      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      v69 = sub_19A31F114(v66, v68, v90);

      *(v59 + 4) = v69;
      _os_log_impl(&dword_19A2DE000, v57, v58, "No personalization available for %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x19A902C50](v60, -1, -1);
      MEMORY[0x19A902C50](v59, -1, -1);
    }

    v56 = 2;
LABEL_25:
    sub_19A3B8774();
    swift_allocError();
    *v70 = v47;
    *(v70 + 8) = v56;
    return swift_willThrow();
  }
}

void sub_19A3E1FE8(unint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v95[1] = *MEMORY[0x1E69E9840];
  v88 = sub_19A57102C();
  v91 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v71 - v5;
  v6 = type metadata accessor for EntityExtractor.NamedEntity.EntityData(0);
  v78 = *(v6 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94[0] = MEMORY[0x1E69E7CC0];
  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_22:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v10 = sub_19A573B4C();
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_3:
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = v11;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A901520](v13, a1, v7);
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      type metadata accessor for EntityExtractor.NamedEntity();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        if (*(*(v14 + 40) + 16))
        {
          break;
        }
      }

      ++v13;
      if (v11 == v10)
      {
        goto LABEL_23;
      }
    }

    MEMORY[0x19A900BE0]();
    if (*((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A5730AC();
    }

    sub_19A5730FC();
    v12 = v94[0];
  }

  while (v11 != v10);
LABEL_23:
  if (!(v12 >> 62))
  {
    v80 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v80)
    {
      goto LABEL_25;
    }

LABEL_56:

    *v73 = MEMORY[0x1E69E7CD0];
    return;
  }

LABEL_55:
  v80 = sub_19A573B4C();
  if (!v80)
  {
    goto LABEL_56;
  }

LABEL_25:
  v93 = MEMORY[0x1E69E7CD0];
  v15 = objc_opt_self();
  v94[0] = 0;
  v16 = [v15 openPhotoLibraryWithWellKnownIdentifier:1 error:v94];
  if (v16)
  {
    v17 = v16;
    v18 = v94[0];
    v72 = v17;
    v19 = [v17 librarySpecificFetchOptions];
    v20 = 0;
    v79 = v12 & 0xC000000000000001;
    v76 = v12 & 0xFFFFFFFFFFFFFF8;
    v75 = (v12 + 32);
    v85 = (v91 + 16);
    v84 = (v91 + 8);
    v21 = &qword_1EAFA2DF0;
    v89 = xmmword_19A576E10;
    v22 = &off_1E7517000;
    v77 = v12;
    do
    {
      if (v79)
      {
        v23 = MEMORY[0x19A901520](v20, v12);
        v24 = __OFADD__(v20++, 1);
        if (v24)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v20 >= *(v76 + 16))
        {
          goto LABEL_54;
        }

        v24 = __OFADD__(v20++, 1);
        if (v24)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }

      v25 = *(v23 + 40);
      v26 = *(v25 + 16);
      if (v26)
      {
        v82 = v23;
        v83 = v20;
        v91 = objc_opt_self();
        v27 = v78;
        v28 = v25;
        v29 = v25 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
        v81 = v28;

        v90 = *(v27 + 72);
        do
        {
          sub_19A3E3C64(v29, v9, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
          __swift_instantiateConcreteTypeFromMangledNameV2(v21, &qword_19A57A800);
          v30 = swift_allocObject();
          *(v30 + 16) = v89;
          *(v30 + 32) = sub_19A570FDC();
          *(v30 + 40) = v31;
          v32 = sub_19A57307C();

          v33 = [v91 v22[502]];

          v34 = [v33 count];
          if (!v34)
          {
            v35 = v19;
            v36 = v87;
            v37 = v88;
            (*v85)(v87, v9, v88);
            v38 = v9;
            v39 = v21;
            v40 = v86;
            v41 = v36;
            v19 = v35;
            sub_19A32338C(v86, v41);
            v42 = v40;
            v21 = v39;
            v9 = v38;
            v22 = &off_1E7517000;
            (*v84)(v42, v37);
          }

          sub_19A3E3E40(v9, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
          v29 += v90;
          --v26;
        }

        while (v26);

        v12 = v77;
        v20 = v83;
      }

      else
      {
      }
    }

    while (v20 != v80);

    v43 = v93;
    if (v93[2])
    {
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v44 = sub_19A5723FC();
      __swift_project_value_buffer(v44, qword_1ED82BCF0);

      v45 = sub_19A5723DC();
      v46 = sub_19A57355C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v95[0] = v48;
        *v47 = 136315138;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10D0, &unk_19A5812B8);
        v94[3] = v49;
        v50 = sub_19A2F12E4(&qword_1EAFA10D8, &qword_1EAFA10D0, &unk_19A5812B8, MEMORY[0x1E69E6508]);
        v94[4] = v50;
        v94[0] = v43;
        v51 = __swift_project_boxed_opaque_existential_1(v94, v49);
        MEMORY[0x1EEE9AC00](v51);
        *(&v71 - 4) = v49;
        *(&v71 - 3) = v50;
        *(&v71 - 2) = sub_19A475C90;
        *(&v71 - 1) = 0;

        v52 = v74;
        v54 = sub_19A3E4928(sub_19A3E40A0, (&v71 - 6), v49, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v50, MEMORY[0x1E69E7410], v53);
        v74 = v52;
        v92 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
        sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8, &qword_19A57A790, MEMORY[0x1E69E6310]);
        v55 = sub_19A572BEC();
        v57 = v56;

        __swift_destroy_boxed_opaque_existential_0Tm(v94);
        v58 = sub_19A31F114(v55, v57, v95);

        *(v47 + 4) = v58;
        _os_log_impl(&dword_19A2DE000, v45, v46, "Entity UUIDs unavailable for personalization: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x19A902C50](v48, -1, -1);
        MEMORY[0x19A902C50](v47, -1, -1);
      }
    }

    *v73 = v43;
  }

  else
  {
    v59 = v94[0];

    v60 = sub_19A570D1C();

    swift_willThrow();
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v61 = sub_19A5723FC();
    __swift_project_value_buffer(v61, qword_1ED82BCF0);
    v62 = v60;
    v63 = sub_19A5723DC();
    v64 = sub_19A57355C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v94[0] = v66;
      *v65 = 136380675;
      swift_getErrorValue();
      v67 = sub_19A57405C();
      v69 = sub_19A31F114(v67, v68, v94);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_19A2DE000, v63, v64, "Personalization unavailable: %{private}s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x19A902C50](v66, -1, -1);
      MEMORY[0x19A902C50](v65, -1, -1);
    }

    sub_19A3B8774();
    swift_allocError();
    *v70 = v60;
    *(v70 + 8) = 1;
    swift_willThrow();
  }
}