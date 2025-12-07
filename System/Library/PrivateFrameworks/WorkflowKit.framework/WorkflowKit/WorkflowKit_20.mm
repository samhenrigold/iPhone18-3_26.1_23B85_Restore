uint64_t sub_1CA4610EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_39_1();
  v711 = v18;
  v23 = *(v18 + 1184);
  v24 = *(v18 + 1088);
  *(v18 + 1192) = *(v24 + 16);
  *(v18 + 1200) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25 = OUTLINED_FUNCTION_136();
  v702 = v26;
  v26(v25);
  v27 = v24 + 88;
  v28 = OUTLINED_FUNCTION_3_3();
  v30 = v29(v28);
  if (v30 == *MEMORY[0x1E69DAE70])
  {
    OUTLINED_FUNCTION_52_8();
    OUTLINED_FUNCTION_146_2();
    v31 = OUTLINED_FUNCTION_14_1();
    v32(v31);
    v33 = swift_projectBox();
    v34 = v21 + 16;
    v35 = *(v21 + 16);
    v35(v27, v33, v20);
    v36 = OUTLINED_FUNCTION_188();
    (v35)(v36);
    v37 = OUTLINED_FUNCTION_70();
    LODWORD(v39) = v38(v37);
    if (v39 == *MEMORY[0x1E69DADC0])
    {
      v40 = OUTLINED_FUNCTION_3_31();
      v41(v40);
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v42 = sub_1CA94CFA8();
LABEL_33:
      v99 = v42;
      v100 = *(v19 + 1);
      v101 = v27;
LABEL_34:
      v100(v101, v20);
LABEL_35:
      swift_unknownObjectRetain();

      goto LABEL_36;
    }

    if (v39 == *MEMORY[0x1E69DADB0])
    {
      v71 = OUTLINED_FUNCTION_3_31();
      v72(v71);
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      OUTLINED_FUNCTION_5_3();
      v42 = sub_1CA94CFB8();
      goto LABEL_33;
    }

    if (v39 == *MEMORY[0x1E69DADE0])
    {
      v97 = OUTLINED_FUNCTION_3_31();
      v98(v97);
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v42 = sub_1CA94CF98();
      goto LABEL_33;
    }

    if (v39 == *MEMORY[0x1E69DADF8])
    {
      OUTLINED_FUNCTION_146_2();
      v196 = OUTLINED_FUNCTION_70();
      v197(v196);
      v709 = *v19;
      LODWORD(v710) = *(v19 + 4);
      v198 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      *(v18 + 1496) = v709;
      *(v18 + 1512) = v710;
      v99 = [v198 initWithDecimal_];
      v199 = OUTLINED_FUNCTION_21_6();
      v200(v199);
      goto LABEL_35;
    }

    if (v39 == *MEMORY[0x1E69DADF0])
    {
      v20 = *(v18 + 1048);
      v252 = OUTLINED_FUNCTION_21_6();
      v253(v252);
      v99 = sub_1CA94C368();

      v101 = OUTLINED_FUNCTION_95_5();
      goto LABEL_34;
    }

    if (v39 == *MEMORY[0x1E69DADC8])
    {
      v311 = OUTLINED_FUNCTION_3_31();
      v312(v311);
      sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_13_19();
      v313();
      v314 = v35;
      sub_1CA948C58();
LABEL_120:
      v367 = OUTLINED_FUNCTION_157_3();
      v368(v367);
      v99 = v314;
      v369 = OUTLINED_FUNCTION_21_6();
      v370(v369);
      swift_unknownObjectRetain();

      goto LABEL_36;
    }

    if (v39 == *MEMORY[0x1E69DAD80])
    {
      v326 = OUTLINED_FUNCTION_3_31();
      v327(v326);
      sub_1CA9488E8();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_13_19();
      v328();
      v314 = v35;
      sub_1CA9488B8();
      goto LABEL_120;
    }

    if (v39 == *MEMORY[0x1E69DADB8])
    {
      v364 = OUTLINED_FUNCTION_3_31();
      v365(v364);
      sub_1CA948BA8();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_13_19();
      v366();
      v314 = v35;
      sub_1CA948B48();
      goto LABEL_120;
    }

    if (v39 == *MEMORY[0x1E69DAD98])
    {
      v408 = OUTLINED_FUNCTION_3_31();
      v409(v408);
      sub_1CA948978();
      OUTLINED_FUNCTION_1_0();
      swift_task_alloc();
      OUTLINED_FUNCTION_127_3();
      v410();
      sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
      swift_task_alloc();
      OUTLINED_FUNCTION_129_2();
      v411();
      v412 = sub_1CA94CDE8();
LABEL_128:
      v413 = v412;
      v414 = OUTLINED_FUNCTION_162();
      v415(v414);
      v416 = OUTLINED_FUNCTION_21_6();
      v417(v416);
      v99 = v413;

      swift_unknownObjectRetain();

LABEL_132:

      goto LABEL_36;
    }

    if (v39 != *MEMORY[0x1E69DAD60])
    {
      goto LABEL_135;
    }

    v418 = OUTLINED_FUNCTION_3_31();
    v419(v418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_13_19();
    v420();
    v421 = v35;
    sub_1CA9487F8();
LABEL_131:
    v422 = OUTLINED_FUNCTION_157_3();
    v423(v422);
    v99 = v421;
    v424 = OUTLINED_FUNCTION_21_6();
    v425(v424);
    swift_unknownObjectRetain();

    goto LABEL_132;
  }

  if (v30 != *MEMORY[0x1E69DAE20])
  {
    if (v30 == *MEMORY[0x1E69DAE58])
    {
      OUTLINED_FUNCTION_52_8();
      v74 = *(v18 + 232);
      v73 = *(v18 + 240);
      v75 = OUTLINED_FUNCTION_14_1();
      v76(v75);
      *(v18 + 1312) = *v23;
      swift_projectBox();
      v77 = OUTLINED_FUNCTION_86_2();
      v78(v77);
      sub_1CA94A948();
      if (__swift_getEnumTagSinglePayload(v74, 1, v73) == 1)
      {
        v79 = *(v18 + 496);
        sub_1CA27080C(*(v18 + 232), &unk_1EC445A60, &unk_1CA985F10);
        sub_1CA469DC0();
        sub_1CA94A8B8();
        OUTLINED_FUNCTION_107_0();
        sub_1CA2B5928();
        v81 = v80;

        *(v18 + 1320) = *(v79 + 8);
        *(v18 + 1328) = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v82 = OUTLINED_FUNCTION_20_0();
        v83(v82);
        if (v81)
        {
          sub_1CA46B580(*(v18 + 280));
          (*(*(v18 + 272) + 8))(*(v18 + 280), *(v18 + 264));

          goto LABEL_109;
        }

        sub_1CA94A8B8();
        v238 = swift_task_alloc();
        *(v18 + 1336) = v238;
        *v238 = v18;
        v238[1] = sub_1CA4662E4;
        goto LABEL_77;
      }

      v170 = *(v18 + 112);
      v171 = OUTLINED_FUNCTION_136();
      v172(v171);
      v173 = sub_1CA94AD18();
      if (!*(v170 + 40) || (objc_opt_self(), OUTLINED_FUNCTION_5_3(), (v174 = swift_dynamicCastObjCClass()) == 0) || (v175 = [v174 codableAttribute]) == 0)
      {
        sub_1CA949C58();
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_149_1();
        v208();
        OUTLINED_FUNCTION_6_26();
        v209 = OUTLINED_FUNCTION_195();
        sub_1CA47154C(v209, v210);
        v211 = sub_1CA949F68();
        sub_1CA94CC18();
        OUTLINED_FUNCTION_124_4();
        if (os_log_type_enabled(v211, v212))
        {
          v213 = *(v18 + 552);
          v214 = *(v18 + 496);
          v649 = *(v18 + 488);
          v705 = *(v18 + 448);
          v674 = *(v18 + 400);
          v681 = *(v18 + 392);
          v663 = *(v18 + 224);
          OUTLINED_FUNCTION_60_5();
          swift_slowAlloc();
          v654 = OUTLINED_FUNCTION_141_3();
          v670 = OUTLINED_FUNCTION_254();
          *&v709 = v670;
          OUTLINED_FUNCTION_134_3(4.8151e-34);
          sub_1CA94AC28();
          sub_1CA94ADA8();
          (*(v214 + 8))(v213, v649);
          v215 = OUTLINED_FUNCTION_78_5();
          v216(v215);
          v217 = OUTLINED_FUNCTION_63_7();
          sub_1CA26B54C(v217, v218, v219);
          OUTLINED_FUNCTION_143_2();
          OUTLINED_FUNCTION_115_3();
          v220 = *(v663 + 40);
          *(v22 + 14) = v220;
          *v654 = v220;
          v221 = v220;
          OUTLINED_FUNCTION_2_35();
          sub_1CA4715A8(v663, v222);
          OUTLINED_FUNCTION_110_3();
          _os_log_impl(v223, v224, v225, v226, v227, 0x16u);
          sub_1CA27080C(v654, &qword_1EC444AE0, &qword_1CA985B70);
          OUTLINED_FUNCTION_138();
          __swift_destroy_boxed_opaque_existential_0(v670);
          OUTLINED_FUNCTION_138();
          OUTLINED_FUNCTION_51();

          (*(v674 + 8))(v705, v681);
        }

        else
        {
          v295 = *(v18 + 224);

          OUTLINED_FUNCTION_2_35();
          sub_1CA4715A8(v295, v296);
          v297 = OUTLINED_FUNCTION_78_5();
          v298(v297);
          v299 = OUTLINED_FUNCTION_3_3();
          v300(v299);
        }

        v301 = sub_1CA471600();
        v302 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v301);
        OUTLINED_FUNCTION_35_9(v302, v303);
        OUTLINED_FUNCTION_139_4(v304);

        v305 = OUTLINED_FUNCTION_70();
        v306(v305);
        v307 = OUTLINED_FUNCTION_3_3();
        v308(v307);
        goto LABEL_98;
      }

      v176 = v175;
      if ([v175 wf:v173 processedParameterValueForValue:?])
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        v709 = 0u;
        v710 = 0u;
      }

      v329 = v710;
      *(v18 + 16) = v709;
      *(v18 + 32) = v329;
      if (*(v18 + 40))
      {
        sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
        if (swift_dynamicCast())
        {
          v330 = v173;
          v331 = *(v18 + 272);
          v682 = *(v18 + 264);
          v688 = *(v18 + 280);
          v332 = *(v18 + 104);
          sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
          v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v334 = OUTLINED_FUNCTION_137_3(v333);
          *(v334 + 16) = xmmword_1CA9813B0;
          *(v334 + 32) = v332;
          v335 = v332;
          sub_1CA46934C(v334);

          v336 = OUTLINED_FUNCTION_176_0();
          v337(v336);
          (*(v331 + 8))(v688, v682);
          goto LABEL_108;
        }

        v689 = v176;
      }

      else
      {
        v689 = v176;
        sub_1CA27080C(v18 + 16, &unk_1EC444650, &unk_1CA981C70);
      }

      sub_1CA949C58();
      OUTLINED_FUNCTION_61();
      OUTLINED_FUNCTION_149_1();
      v341();
      v342 = v173;
      v343 = sub_1CA949F68();
      v344 = sub_1CA94CC18();

      if (os_log_type_enabled(v343, v344))
      {
        v345 = *(v18 + 552);
        v346 = *(v18 + 496);
        v650 = *(v18 + 488);
        v672 = *(v18 + 400);
        v675 = *(v18 + 392);
        v683 = *(v18 + 456);
        OUTLINED_FUNCTION_60_5();
        v707 = v342;
        v347 = swift_slowAlloc();
        v659 = swift_slowAlloc();
        v665 = OUTLINED_FUNCTION_254();
        *&v709 = v665;
        *v347 = 136315394;
        v655 = v344;
        sub_1CA94AC28();
        sub_1CA94ADA8();
        OUTLINED_FUNCTION_58_2();
        (*(v346 + 8))(v345, v650);
        v348 = OUTLINED_FUNCTION_107_0();
        v349(v348);
        v350 = sub_1CA26B54C(v345, v22, &v709);

        *(v347 + 4) = v350;
        *(v347 + 12) = 2112;
        *(v347 + 14) = v707;
        *v659 = v707;
        v351 = v707;
        _os_log_impl(&dword_1CA256000, v343, v655, "[%s] Unable to make wf_processedParameterValue from %@", v347, 0x16u);
        sub_1CA27080C(v659, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_138();
        __swift_destroy_boxed_opaque_existential_0(v665);
        OUTLINED_FUNCTION_138();
        v342 = v707;
        OUTLINED_FUNCTION_26();

        (*(v672 + 8))(v683, v675);
      }

      else
      {

        v352 = OUTLINED_FUNCTION_107_0();
        v353(v352);
        v354 = OUTLINED_FUNCTION_119();
        v355(v354);
      }

      v356 = sub_1CA471600();
      v357 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v356);
      OUTLINED_FUNCTION_35_9(v357, v358);
      OUTLINED_FUNCTION_139_4(v359);

      v360 = OUTLINED_FUNCTION_176_0();
      v361(v360);
      v362 = OUTLINED_FUNCTION_3_3();
      v363(v362);
      goto LABEL_98;
    }

    if (v30 == *MEMORY[0x1E69DAE18])
    {
      OUTLINED_FUNCTION_52_8();
      v161 = OUTLINED_FUNCTION_14_1();
      v162(v161);
      *(v18 + 1248) = *v23;
      swift_projectBox();
      v163 = OUTLINED_FUNCTION_22();
      v164(v163);
      v165 = sub_1CA94A878();
      *(v18 + 1256) = v165;
      v166 = *(v165 + 16);
      *(v18 + 1264) = v166;
      *(v18 + 1280) = MEMORY[0x1E69E7CC0];
      *(v18 + 1272) = 0;
      if (v166)
      {
        if (!*(v165 + 16))
        {
          __break(1u);
LABEL_154:
          OUTLINED_FUNCTION_93_0();

          return sub_1CA94D7E8();
        }

        v167 = *(*(v18 + 1088) + 80);
        (*(v18 + 1192))(*(v18 + 1160), v165 + ((v167 + 32) & ~v167), *(v18 + 1080));
        v168 = swift_task_alloc();
        *(v18 + 1288) = v168;
        *v168 = v18;
        OUTLINED_FUNCTION_49_4(v168);
        OUTLINED_FUNCTION_93_0();

        return TypedValue.resolve(in:)();
      }

      sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
      sub_1CA46934C(MEMORY[0x1E69E7CC0]);
      v309 = OUTLINED_FUNCTION_69_0();
      v310(v309);
LABEL_108:

LABEL_109:
      OUTLINED_FUNCTION_18_17();
      OUTLINED_FUNCTION_25_10(v338);

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_93_0();

      __asm { BRAA            X2, X16 }
    }

    if (v30 == *MEMORY[0x1E69DAE28])
    {
      OUTLINED_FUNCTION_52_8();
      v202 = *(v18 + 192);
      v201 = *(v18 + 200);
      v203 = *(v18 + 184);
      v204 = OUTLINED_FUNCTION_14_1();
      v205(v204);
      *(v18 + 1400) = *v23;
      v206 = swift_projectBox();
      (*(v202 + 16))(v201, v206, v203);
      sub_1CA94A8B8();
      v207 = swift_task_alloc();
      *(v18 + 1408) = v207;
      *v207 = v18;
      v207[1] = sub_1CA467000;
LABEL_77:
      OUTLINED_FUNCTION_93_0();

      return sub_1CA4693D0();
    }

    OUTLINED_FUNCTION_52_8();
    if (v255 != v256)
    {
      (*(v254 + 8))(v23);
      v99 = 0;
      goto LABEL_36;
    }

    v257 = *(v18 + 176);
    v259 = *(v18 + 152);
    v258 = *(v18 + 160);
    v260 = OUTLINED_FUNCTION_14_1();
    v261(v260);
    v262 = swift_projectBox();
    v263 = *(v258 + 16);
    v263(v257, v262, v259);
    sub_1CA949338();
    sub_1CA94A9C8();
    sub_1CA949318();
    v264 = OUTLINED_FUNCTION_195();
    v266 = sub_1CA3118B4(v264, v265);

    v267 = OUTLINED_FUNCTION_33_10();
    v268(v267);
    if (v266)
    {
      objc_opt_self();
      v269 = swift_dynamicCastObjCClass();
      if (v269)
      {
        v270 = v269;
        v271 = sub_1CA94CC88();
        v272 = sub_1CA94A9D8();
        *(&v710 + 1) = v271;
        *&v709 = sub_1CA46E0C8(v272, v273);
        v274 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
        v275 = v266;
        v276 = v709;
        v277 = v274;
        sub_1CA320AB4(&v709, v270);
        OUTLINED_FUNCTION_40();
        v278 = sub_1CA94C368();
        [v270 wf:v277 contentCollectionFromLinkValue:v278 appBundleIdentifier:0 displayedBundleIdentifier:1 disclosureLevel:?];

        v279 = OUTLINED_FUNCTION_69_0();
        v280(v279);
        goto LABEL_108;
      }
    }

    v372 = *(v18 + 168);
    v371 = *(v18 + 176);
    v373 = *(v18 + 152);
    sub_1CA949C58();
    v374 = OUTLINED_FUNCTION_135_2();
    v702(v374);
    v263(v372, v371, v373);
    v375 = sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_124_4();
    v377 = os_log_type_enabled(v375, v376);
    v378 = *(v18 + 1120);
    v379 = *(v18 + 1088);
    v708 = *(v18 + 1080);
    if (v377)
    {
      v380 = *(v18 + 552);
      v381 = *(v18 + 496);
      v676 = *(v18 + 400);
      v684 = *(v18 + 392);
      v690 = *(v18 + 424);
      v382 = *(v18 + 160);
      v651 = *(v18 + 488);
      v656 = *(v18 + 168);
      v666 = *(v18 + 152);
      OUTLINED_FUNCTION_60_5();
      v383 = swift_slowAlloc();
      *&v709 = OUTLINED_FUNCTION_29_4();
      OUTLINED_FUNCTION_134_3(4.8151e-34);
      sub_1CA94AC28();
      sub_1CA94ADA8();
      (*(v381 + 8))(v380, v651);
      (v379[1].isa)(v378, v708);
      v384 = OUTLINED_FUNCTION_41_0();
      sub_1CA26B54C(v384, v385, v386);
      OUTLINED_FUNCTION_108_3();

      OUTLINED_FUNCTION_81_3();
      v378 = v656;
      sub_1CA94A9C8();
      OUTLINED_FUNCTION_5_0();
      v387 = *(v382 + 8);
      v388 = v375;
      v387(v656, v666);
      v389 = OUTLINED_FUNCTION_3_3();
      sub_1CA26B54C(v389, v390, v391);
      OUTLINED_FUNCTION_87();

      *(v383 + 14) = v656;
      OUTLINED_FUNCTION_110_3();
      _os_log_impl(v392, v393, v394, v395, v396, 0x16u);
      OUTLINED_FUNCTION_167_1();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_51();

      (*(v676 + 8))(v690, v684);
    }

    else
    {
      v398 = *(v18 + 160);
      v397 = *(v18 + 168);
      v399 = *(v18 + 152);

      v400 = v397;
      v387 = *(v398 + 8);
      v387(v400, v399);
      isa = v379[1].isa;
      v388 = v379 + 1;
      isa(v378, v708);
      v402 = OUTLINED_FUNCTION_3_3();
      v403(v402);
    }

    sub_1CA94A9C8();
    OUTLINED_FUNCTION_148_2();
    v404 = sub_1CA471600();
    v405 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v404);
    *v406 = v388;
    *(v406 + 8) = v378;
    *(v406 + 16) = 0;
    *(v406 + 24) = 0;
    *(v406 + 32) = 1;
    OUTLINED_FUNCTION_139_4(v405);
    v407 = OUTLINED_FUNCTION_3_3();
    (v387)(v407);
    goto LABEL_98;
  }

  v43 = *(v18 + 1184);
  (*(*(v18 + 1088) + 96))(v43, *(v18 + 1080));
  *(v18 + 1208) = *v43;
  swift_projectBox();
  v44 = OUTLINED_FUNCTION_86_2();
  v661 = v45;
  v45(v44);
  sub_1CA94AC28();
  v46 = OUTLINED_FUNCTION_70();
  v48 = v47(v46);
  if (v48 == *MEMORY[0x1E69DB098])
  {
    v49 = *(v18 + 560);
    v50 = OUTLINED_FUNCTION_14_1();
    v51(v50);
    v52 = *v49;
    v53 = *(*v49 + 16);
    v54 = *(*v49 + 24);
    v34 = *(*v49 + 32);
    v35 = *(v52 + 40);
    v55 = [objc_opt_self() sharedProvider];
    v647 = v54;
    v653 = v53;
    OUTLINED_FUNCTION_69_0();
    v56 = sub_1CA94C368();
    v57 = OUTLINED_FUNCTION_86_2();
    v59 = [v57 v58];

    sub_1CA25B3D0(0, &qword_1EC441A80, 0x1E69AC830);
    v60 = sub_1CA94C658();

    v39 = sub_1CA25B410(v60);
    v61 = v39;
    v62 = 0;
    v695 = (v60 & 0xC000000000000001);
    while (1)
    {
      if (v61 == v62)
      {

        sub_1CA94A898();
        v99 = sub_1CA94C368();

        v228 = OUTLINED_FUNCTION_52_0();
        v229(v228);
        swift_unknownObjectRetain();

        goto LABEL_72;
      }

      if (v695)
      {
        v70 = OUTLINED_FUNCTION_116();
        v39 = MEMORY[0x1CCAA22D0](v70);
      }

      else
      {
        if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_134;
        }

        v39 = *(v60 + 8 * v62 + 32);
      }

      if (__OFADD__(v62, 1))
      {
        break;
      }

      v63 = v39;
      v64 = [v39 identifier];
      v65 = sub_1CA94C3A8();
      v67 = v66;

      if (v65 == v34 && v67 == v35)
      {

LABEL_74:

        v230 = sub_1CA94C368();
        sub_1CA94A898();
        sub_1CA94C368();
        OUTLINED_FUNCTION_11();

        v231 = v63;
        v232 = [v63 wf:v230 contentItemWithAppBundleIdentifier:v62 enumCaseIdentifier:?];

        if (v232)
        {
          sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
          v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v234 = OUTLINED_FUNCTION_137_3(v233);
          OUTLINED_FUNCTION_130_2(v234, xmmword_1CA9813B0);
          v235 = v232;
          sub_1CA46934C(v234);

          v236 = OUTLINED_FUNCTION_116();
          v237(v236);

          goto LABEL_108;
        }

        sub_1CA949C58();
        v281 = OUTLINED_FUNCTION_52_0();
        v661(v281);
        sub_1CA94C218();
        v282 = sub_1CA949F68();
        v283 = sub_1CA94CC18();

        v699 = v283;
        v284 = os_log_type_enabled(v282, v283);
        v285 = *(v18 + 584);
        v286 = *(v18 + 576);
        v287 = *(v18 + 480);
        v288 = *(v18 + 400);
        v706 = *(v18 + 392);
        if (v284)
        {
          OUTLINED_FUNCTION_60_5();
          v289 = swift_slowAlloc();
          *&v709 = OUTLINED_FUNCTION_29_4();
          *v289 = 136315394;
          v664 = sub_1CA94A898();
          v671 = v282;
          v687 = v287;
          v291 = v290;
          v292 = *(v286 + 8);
          v293 = OUTLINED_FUNCTION_63_7();
          v292(v293);
          sub_1CA26B54C(v664, v291, &v709);
          OUTLINED_FUNCTION_108_3();

          *(v289 + 4) = v285;
          *(v289 + 12) = 2080;
          *(v289 + 14) = sub_1CA26B54C(v653, v647, &v709);
          _os_log_impl(&dword_1CA256000, v671, v699, "Unable to get content item for enum case: %s in bundle: %s", v289, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_76_4();
          v231 = v63;
          v294 = v292;
          OUTLINED_FUNCTION_26();

          (*(v288 + 8))(v687, v706);
        }

        else
        {

          v294 = *(v286 + 8);
          v315 = OUTLINED_FUNCTION_63_7();
          v294(v315);
          (*(v288 + 8))(v287, v706);
        }

        v316 = sub_1CA94A898();
        v318 = v317;
        v319 = sub_1CA471600();
        v320 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v319);
        *v321 = v316;
        *(v321 + 8) = v318;
        *(v321 + 16) = 0;
        *(v321 + 24) = 0;
        *(v321 + 32) = 3;
        OUTLINED_FUNCTION_139_4(v320);

        v322 = OUTLINED_FUNCTION_3_3();
        v294(v322);

LABEL_98:

LABEL_99:
        OUTLINED_FUNCTION_20_15();
        OUTLINED_FUNCTION_4_34();
        OUTLINED_FUNCTION_25_10(v323);

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_93_0();

        __asm { BRAA            X1, X16 }
      }

      v69 = sub_1CA94D7F8();

      if (v69)
      {
        goto LABEL_74;
      }

      ++v62;
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    if (v39 == *MEMORY[0x1E69DAD78])
    {
      OUTLINED_FUNCTION_147_2();
      v426 = OUTLINED_FUNCTION_19_13();
      v427(v426);
      v428 = OUTLINED_FUNCTION_75_4();
      v429(v428);
      sub_1CA94AAA8();
      sub_1CA94D048();
      sub_1CA94AA88();
      v430 = objc_allocWithZone(MEMORY[0x1E696E7E8]);
      v431 = OUTLINED_FUNCTION_129();
      v99 = sub_1CA471124(v431, v432);
      v433 = OUTLINED_FUNCTION_162();
      v434(v433);
      v435 = OUTLINED_FUNCTION_111_4();
      v436(v435);
      goto LABEL_169;
    }

    if (v39 == *MEMORY[0x1E69DAD70])
    {
      OUTLINED_FUNCTION_69_6();
      v437 = *(v18 + 920);
      v691 = *(v18 + 744);
      v438 = OUTLINED_FUNCTION_14_1();
      v439(v438);
      v440 = OUTLINED_FUNCTION_129();
      v441(v440);
      sub_1CA94AA68();
      v442 = sub_1CA2F0A90();
      v443 = OUTLINED_FUNCTION_78_5();
      v444(v443);
      sub_1CA94AA38();
      v700 = v442;
      if (__swift_getEnumTagSinglePayload(v437, 1, v691) == 1)
      {
        sub_1CA27080C(*(v18 + 920), &qword_1EC4468C0, &qword_1CA988C00);
        v677 = 0;
        v445 = 0;
      }

      else
      {
        v465 = *(v18 + 752);
        v677 = sub_1CA94B378();
        v445 = v466;
        v442 = v465 + 8;
        v467 = OUTLINED_FUNCTION_119();
        v468(v467);
      }

      v693 = *(v18 + 1072);
      v469 = *(v18 + 1056);
      v470 = *(v18 + 1048);
      v471 = *(v18 + 968);
      v472 = *(v18 + 960);
      v473 = *(v18 + 952);
      sub_1CA94AA28();
      OUTLINED_FUNCTION_1_2();
      v474 = objc_allocWithZone(MEMORY[0x1E696E938]);
      v475 = sub_1CA470FE4(v700, v677, v445, v471, v442, 0);
      v476 = v471;
      v99 = v475;
      (*(v472 + 8))(v476, v473);
      (*(v469 + 8))(v693, v470);
LABEL_169:
      swift_unknownObjectRetain();
LABEL_72:

      goto LABEL_36;
    }

    if (v39 == *MEMORY[0x1E69DAE10])
    {
      OUTLINED_FUNCTION_69_6();
      v446 = *(v18 + 880);
      v447 = *(v18 + 872);
      v448 = *(v18 + 864);
      v449 = OUTLINED_FUNCTION_14_1();
      v450(v449);
      (*(v447 + 32))(v446, v34, v448);
      sub_1CA94AB88();
      v451 = OUTLINED_FUNCTION_126();
      v453 = v452(v451);
      if (v453 == *MEMORY[0x1E69DAD48])
      {
        v454 = *(v18 + 1056);
        v692 = *(v18 + 1048);
        v701 = *(v18 + 1072);
        v678 = *(v18 + 880);
        v455 = *(v18 + 872);
        v456 = *(v18 + 864);
        v457 = *(v18 + 832);
        v458 = *(v18 + 824);
        v459 = *(v18 + 816);
        v460 = OUTLINED_FUNCTION_14_1();
        v461(v460);
        v462 = OUTLINED_FUNCTION_75_4();
        v463(v462);
        v464 = sub_1CA94AD18();
        v99 = [objc_allocWithZone(MEMORY[0x1E695FC20]) initWithPlacemark_];

        (*(v458 + 8))(v457, v459);
        (*(v455 + 8))(v678, v456);
        (*(v454 + 8))(v701, v692);
        goto LABEL_169;
      }

      if (v453 == *MEMORY[0x1E69DAD40])
      {
        v99 = [objc_opt_self() mapItemForCurrentLocation];
        v488 = OUTLINED_FUNCTION_126();
        v489(v488);
        v490 = OUTLINED_FUNCTION_52_0();
        goto LABEL_168;
      }

      goto LABEL_154;
    }

    if (v39 == *MEMORY[0x1E69DADE8])
    {
      v477 = OUTLINED_FUNCTION_19_13();
      v478(v477);
      v479 = OUTLINED_FUNCTION_75_4();
      v480(v479);
      v481 = objc_opt_self();
      v482 = sub_1CA94AB48();
      v483 = [v481 cnContactWithINPerson_];

      v484 = OUTLINED_FUNCTION_162();
      v485(v484);
      v486 = OUTLINED_FUNCTION_21_6();
      v487(v486);
      v99 = v483;
      goto LABEL_169;
    }

    if (v39 == *MEMORY[0x1E69DADD0])
    {
      OUTLINED_FUNCTION_69_6();
      v493 = *(v18 + 1040);
      v494 = *(v18 + 1032);
      v495 = *(v18 + 1024);
      v496 = OUTLINED_FUNCTION_14_1();
      v497(v496);
      (*(v494 + 32))(v493, v34, v495);
      v498 = sub_1CA94AB18();
      v499 = [v498 wf_fileRepresentation];

      if (v499)
      {
        v500 = objc_opt_self();
        v501 = v499;
        v502 = [v500 genericLocation];
        v503 = [objc_opt_self() itemWithFile:v501 origin:v502 disclosureLevel:1];

        if (v503)
        {
          OUTLINED_FUNCTION_147_2();
          sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
          v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v505 = OUTLINED_FUNCTION_137_3(v504);
          v506 = OUTLINED_FUNCTION_130_2(v505, xmmword_1CA9813B0);
          sub_1CA46934C(v506);

          v507 = OUTLINED_FUNCTION_162();
          v508(v507);
          v509 = OUTLINED_FUNCTION_111_4();
          v510(v509);
          goto LABEL_108;
        }
      }

      v99 = sub_1CA94AB18();
      v540 = OUTLINED_FUNCTION_119();
      v541(v540);
      v490 = OUTLINED_FUNCTION_21_6();
      goto LABEL_168;
    }

    if (v39 != *MEMORY[0x1E69DADA8])
    {
      if (v39 == *MEMORY[0x1E69DAE08])
      {
        OUTLINED_FUNCTION_147_2();
        v519 = OUTLINED_FUNCTION_70();
        v520(v519);
        v521 = OUTLINED_FUNCTION_61();
        v522(v521);
        v523 = [objc_opt_self() defaultDatabase];
        sub_1CA94A9C8();
        v524 = sub_1CA94C368();

        v525 = [v523 referenceForWorkflowID_];

        v99 = v525;
        v526 = OUTLINED_FUNCTION_119();
        v527(v526);
        v528 = OUTLINED_FUNCTION_111_4();
        v529(v528);
        goto LABEL_169;
      }

      if (v39 == *MEMORY[0x1E69DAD88])
      {
        v536 = OUTLINED_FUNCTION_3_31();
        v537(v536);
        sub_1CA949058();
        OUTLINED_FUNCTION_1_0();
        swift_task_alloc();
        OUTLINED_FUNCTION_127_3();
        v538();
        sub_1CA94CED8();
        swift_task_alloc();
        OUTLINED_FUNCTION_129_2();
        v539();
        v412 = sub_1CA94CEC8();
        goto LABEL_128;
      }

      if (v39 == *MEMORY[0x1E69DAD68])
      {
        v551 = OUTLINED_FUNCTION_3_31();
        v552(v551);
        sub_1CA948898();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_13_19();
        v553();
        v421 = v35;
        sub_1CA948878();
        goto LABEL_131;
      }

      if (v39 != *MEMORY[0x1E69DAE00])
      {
        if (v39 == *MEMORY[0x1E69DADA0])
        {
          v583 = OUTLINED_FUNCTION_3_31();
          v584(v583);
          sub_1CA948A48();
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_13_19();
          v585();
          v421 = v35;
          sub_1CA948A18();
          goto LABEL_131;
        }

        v634 = *(v18 + 1072);
        v635 = *(v18 + 1056);
        v636 = *(v18 + 1048);
        if (v39 == *MEMORY[0x1E69DAD58])
        {
          v637 = OUTLINED_FUNCTION_14_1();
          v638(v637, v636);
          v639 = OUTLINED_FUNCTION_75_4();
          v640(v639);
          v641 = sub_1CA94AD18();
          v642 = OUTLINED_FUNCTION_33_10();
          v643(v642);
          v99 = v641;
          (*(v635 + 8))(v634, v636);
          goto LABEL_169;
        }

        v644 = *(v635 + 8);
        (v644)(*(v18 + 1072), *(v18 + 1048));
        v645 = OUTLINED_FUNCTION_52_0();
        v644(v645);

        v99 = 0;
LABEL_36:
        sub_1CA949C58();
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_149_1();
        v102();
        swift_unknownObjectRetain();
        v103 = sub_1CA949F68();
        v104 = sub_1CA94CC38();
        swift_unknownObjectRelease();
        v105 = os_log_type_enabled(v103, v104);
        v106 = *(v18 + 1112);
        v107 = *(v18 + 1080);
        v696 = v99;
        if (v105)
        {
          OUTLINED_FUNCTION_60_5();
          v108 = swift_slowAlloc();
          *&v709 = OUTLINED_FUNCTION_29_4();
          *v108 = 136315394;
          v109 = sub_1CA94AC38();
          v111 = v110;
          v112 = OUTLINED_FUNCTION_95_5();
          v685 = v113;
          v113(v112, v107);
          sub_1CA26B54C(v109, v111, &v709);
          OUTLINED_FUNCTION_143_2();
          *(v108 + 4) = v106;
          *(v108 + 12) = 2080;
          if (v696 && (objc_opt_self(), swift_dynamicCastObjCClass()) && !os_variant_allows_internal_security_policies())
          {
            v116 = 0xE800000000000000;
            v114 = 0x3E676E697274733CLL;
          }

          else
          {
            *(v18 + 96) = v696;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AA8, &qword_1CA988C08);
            v114 = sub_1CA94C408();
            v116 = v115;
          }

          v117 = *(v18 + 392);
          v118 = sub_1CA26B54C(v114, v116, &v709);

          *(v108 + 14) = v118;
          _os_log_impl(&dword_1CA256000, v103, v104, "Turning %s into a content item with object: %s", v108, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_54_5();
          OUTLINED_FUNCTION_26();

          v119 = OUTLINED_FUNCTION_95_5();
          v120 = v117;
          v122 = v121;
          (v121)(v119, v120);
          v99 = v696;
          if (!v696)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v123 = *(v18 + 400);

          v124 = OUTLINED_FUNCTION_95_5();
          v685 = v125;
          v125(v124, v107);
          v122 = *(v123 + 8);
          v126 = OUTLINED_FUNCTION_21_6();
          v122(v126);
          if (!v99)
          {
            goto LABEL_47;
          }
        }

        sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
        *(&v710 + 1) = swift_getObjectType();
        *&v709 = v99;
        swift_unknownObjectRetain();
        v127 = sub_1CA470A0C(&v709);
        if (v127)
        {
          v128 = v127;
          sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
          v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v130 = OUTLINED_FUNCTION_137_3(v129);
          OUTLINED_FUNCTION_130_2(v130, xmmword_1CA9813B0);
          v131 = v128;
          sub_1CA46934C(v130);
          swift_unknownObjectRelease_n();

          goto LABEL_109;
        }

        swift_unknownObjectRelease();
LABEL_47:
        v132 = *(v18 + 1096);
        v133 = *(v18 + 1080);
        v134 = *(v18 + 408);
        v135 = *(v18 + 120);
        sub_1CA949C58();
        v136 = OUTLINED_FUNCTION_119();
        v702(v136);
        (v702)(v132, v135, v133);
        v137 = v134;
        v138 = sub_1CA949F68();
        sub_1CA94CC18();
        OUTLINED_FUNCTION_124_4();
        v140 = os_log_type_enabled(v138, v139);
        v141 = *(v18 + 1104);
        v142 = *(v18 + 1096);
        v143 = *(v18 + 1080);
        if (v140)
        {
          v144 = *(v18 + 552);
          v145 = *(v18 + 496);
          v648 = *(v18 + 488);
          v703 = *(v18 + 408);
          v680 = *(v18 + 392);
          OUTLINED_FUNCTION_60_5();
          v668 = v122;
          v146 = swift_slowAlloc();
          *&v709 = OUTLINED_FUNCTION_29_4();
          *v146 = 136315394;
          v658 = v137;
          sub_1CA94AC28();
          sub_1CA94ADA8();
          (*(v145 + 8))(v144, v648);
          v685(v141, v143);
          v147 = OUTLINED_FUNCTION_63_7();
          sub_1CA26B54C(v147, v148, v149);
          OUTLINED_FUNCTION_143_2();
          OUTLINED_FUNCTION_81_3();
          v150 = sub_1CA94AC38();
          v685(v142, v143);
          v151 = OUTLINED_FUNCTION_61();
          sub_1CA26B54C(v151, v152, v153);
          OUTLINED_FUNCTION_139();

          *(v146 + 14) = v150;
          OUTLINED_FUNCTION_140_3(&dword_1CA256000, v138, v658, "[%s] TypedValue %s does not support a Content Graph representation yet");
          OUTLINED_FUNCTION_167_1();
          OUTLINED_FUNCTION_138();
          OUTLINED_FUNCTION_51();

          v668(v703, v680);
        }

        else
        {

          v685(v142, v143);
          v685(v141, v143);
          v154 = OUTLINED_FUNCTION_61();
          v122(v154);
        }

        *&v709 = 0;
        *(&v709 + 1) = 0xE000000000000000;
        sub_1CA94D408();
        v155 = *(&v709 + 1);
        *(v18 + 80) = v709;
        *(v18 + 88) = v155;
        MEMORY[0x1CCAA1300](0x6C61566465707954, 0xEB00000000206575);
        sub_1CA94D578();
        MEMORY[0x1CCAA1300](0xD000000000000034, 0x80000001CA9B8A40);
        v157 = *(v18 + 80);
        v156 = *(v18 + 88);
        v158 = sub_1CA471600();
        v159 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v158);
        *v160 = v157;
        *(v160 + 8) = v156;
        *(v160 + 16) = 0;
        *(v160 + 24) = 0;
        *(v160 + 32) = 0;
        OUTLINED_FUNCTION_139_4(v159);
        swift_unknownObjectRelease();
        goto LABEL_99;
      }

      v565 = OUTLINED_FUNCTION_19_13();
      v566(v565);
      sub_1CA94CCC8();
      OUTLINED_FUNCTION_129();
      v99 = sub_1CA94CCA8();
      v490 = OUTLINED_FUNCTION_21_6();
LABEL_168:
      v492(v490, v491);
      goto LABEL_169;
    }

    OUTLINED_FUNCTION_69_6();
    v512 = *(v18 + 912);
    v513 = *(v18 + 744);
    v514 = OUTLINED_FUNCTION_14_1();
    v515(v514);
    v516 = OUTLINED_FUNCTION_129();
    v517(v516);
    sub_1CA94AAE8();
    if (__swift_getEnumTagSinglePayload(v512, 1, v513) == 1)
    {
      sub_1CA27080C(*(v18 + 912), &qword_1EC4468C0, &qword_1CA988C00);
      v518 = 0;
LABEL_210:
      OUTLINED_FUNCTION_147_2();
      v625 = *(v18 + 1056);
      v626 = *(v18 + 784);
      v627 = *(v18 + 776);
      v628 = *(v18 + 768);
      sub_1CA94A9C8();
      v629 = objc_allocWithZone(MEMORY[0x1E6996C80]);
      v630 = OUTLINED_FUNCTION_61();
      v632 = sub_1CA471340(v630, v631, v518);
      v633 = v628;
      v99 = v632;
      (*(v627 + 8))(v626, v633);
      (*(v625 + 8))(v695);
      goto LABEL_169;
    }

    v530 = *(v18 + 760);
    (*(*(v18 + 752) + 32))(v530, *(v18 + 912), *(v18 + 744));
    v531 = sub_1CA94B378();
    v694 = v532;
    v695 = v531;
    sub_1CA94B438();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AC0, &qword_1CA985668);
    v533 = OUTLINED_FUNCTION_171();
    v534 = OUTLINED_FUNCTION_142_3(v533);
    v535 = MEMORY[0x1E69DB378];
    if (v534 == 1)
    {
      sub_1CA27080C(*(v18 + 712), &qword_1EC444AB8, &qword_1CA988BF0);
    }

    else
    {
      OUTLINED_FUNCTION_4_12();
      v543 = v542;
      if ((*(v544 + 88))() == *v535)
      {
        (*(v543 + 96))(*(v18 + 712), v530);
        v545 = OUTLINED_FUNCTION_56_5();
        v546(v545);
        v547 = sub_1CA94B3B8();
        v673 = v548;
        v679 = v547;
        v549 = OUTLINED_FUNCTION_69_0();
        v550(v549);
        goto LABEL_176;
      }

      (*(v543 + 8))(*(v18 + 712), v530);
    }

    v673 = 0;
    v679 = 0;
LABEL_176:
    v554 = *(v18 + 760);
    sub_1CA94B3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445AC0, L"b\t\r");
    v555 = OUTLINED_FUNCTION_171();
    if (OUTLINED_FUNCTION_142_3(v555) == 1)
    {
      sub_1CA27080C(*(v18 + 680), &unk_1EC445A70, &qword_1CA985648);
    }

    else
    {
      OUTLINED_FUNCTION_4_12();
      v557 = v556;
      if ((*(v558 + 88))() == *v535)
      {
        (*(v557 + 96))(*(v18 + 680), v554);
        v559 = OUTLINED_FUNCTION_56_5();
        v560(v559);
        v561 = sub_1CA94B3B8();
        v660 = v562;
        v667 = v561;
        v563 = OUTLINED_FUNCTION_69_0();
        v564(v563);
        goto LABEL_184;
      }

      (*(v557 + 8))(*(v18 + 680), v554);
    }

    v660 = 0;
    v667 = 0;
LABEL_184:
    v567 = *(v18 + 760);
    sub_1CA94B328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
    v568 = OUTLINED_FUNCTION_171();
    if (OUTLINED_FUNCTION_142_3(v568) == 1)
    {
      sub_1CA27080C(*(v18 + 640), &qword_1EC444A98, &unk_1CA988BE0);
    }

    else
    {
      OUTLINED_FUNCTION_4_12();
      v570 = v569;
      if ((*(v571 + 88))() == *v535)
      {
        v572 = *(v18 + 656);
        (*(v570 + 96))(*(v18 + 640), v567);
        v573 = *(v572 + 32);
        v574 = OUTLINED_FUNCTION_164();
        v573(v574);
        v575 = OUTLINED_FUNCTION_188();
        v573(v575);
        v576 = OUTLINED_FUNCTION_70();
        v578 = v577(v576);
        v579 = *(v18 + 664);
        if (v578 == *MEMORY[0x1E69DB380])
        {
          v580 = OUTLINED_FUNCTION_14_1();
          v581(v580);
          v582 = v579[1];
          v657 = *v579;
          goto LABEL_194;
        }

        (*(*(v18 + 656) + 8))(*(v18 + 664), *(v18 + 648));
      }

      else
      {
        (*(v570 + 8))(*(v18 + 640), v567);
      }
    }

    v657 = 0;
    v582 = 0xF000000000000000;
LABEL_194:
    v652 = v582;
    v586 = *(v18 + 904);
    v587 = *(v18 + 744);
    sub_1CA94AAE8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v586, 1, v587);
    v589 = *(v18 + 904);
    if (EnumTagSinglePayload == 1)
    {
      v590 = &qword_1EC4468C0;
      v591 = &qword_1CA988C00;
    }

    else
    {
      v592 = *(v18 + 632);
      sub_1CA94B308();
      v593 = OUTLINED_FUNCTION_61();
      v594(v593);
      v595 = sub_1CA94B2E8();
      v596 = __swift_getEnumTagSinglePayload(v592, 1, v595);
      v589 = *(v18 + 632);
      if (v596 != 1)
      {
        v646 = sub_1CA94B2D8();
        v597 = v598;
        OUTLINED_FUNCTION_39();
        v599 = OUTLINED_FUNCTION_119();
        v600(v599);
LABEL_200:
        v601 = *(v18 + 896);
        v602 = *(v18 + 744);
        sub_1CA94AAE8();
        v603 = __swift_getEnumTagSinglePayload(v601, 1, v602);
        v604 = *(v18 + 896);
        if (v603 == 1)
        {
          v605 = &qword_1EC4468C0;
          v606 = &qword_1CA988C00;
        }

        else
        {
          v607 = *(v18 + 624);
          sub_1CA94B308();
          v608 = OUTLINED_FUNCTION_119();
          v609(v608);
          v610 = sub_1CA94B2E8();
          v611 = __swift_getEnumTagSinglePayload(v607, 1, v610);
          v604 = *(v18 + 624);
          if (v611 != 1)
          {
            v612 = sub_1CA94B2C8();
            v613 = v614;
            OUTLINED_FUNCTION_39();
            v615 = OUTLINED_FUNCTION_135_2();
            v616(v615);
            goto LABEL_206;
          }

          v605 = &qword_1EC444A70;
          v606 = &qword_1CA985610;
        }

        sub_1CA27080C(v604, v605, v606);
        v612 = 0;
        v613 = 0;
LABEL_206:
        v617 = *(v18 + 888);
        v618 = *(v18 + 744);
        sub_1CA94AAE8();
        if (__swift_getEnumTagSinglePayload(v617, 1, v618) == 1)
        {
          sub_1CA27080C(*(v18 + 888), &qword_1EC4468C0, &qword_1CA988C00);
          v619 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v619 = sub_1CA94B448();
          v620 = OUTLINED_FUNCTION_177();
          v621(v620);
        }

        v622 = objc_allocWithZone(MEMORY[0x1E6996C98]);
        v518 = sub_1CA47118C(v695, v694, v679, v673, v667, v660, v657, v652, v646, v597, v612, v613, v619);
        v623 = OUTLINED_FUNCTION_177();
        v624(v623);
        goto LABEL_210;
      }

      v590 = &qword_1EC444A70;
      v591 = &qword_1CA985610;
    }

    sub_1CA27080C(v589, v590, v591);
    v646 = 0;
    v597 = 0xF000000000000000;
    goto LABEL_200;
  }

  if (v48 != *MEMORY[0x1E69DB088])
  {
    sub_1CA949C58();
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_149_1();
    v177();
    v178 = sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_124_4();
    v180 = os_log_type_enabled(v178, v179);
    v181 = *(v18 + 1168);
    v182 = *(v18 + 1088);
    v183 = *(v18 + 1080);
    if (v180)
    {
      v184 = *(v18 + 552);
      v185 = *(v18 + 496);
      v669 = *(v18 + 488);
      v686 = *(v18 + 400);
      v697 = *(v18 + 392);
      v704 = *(v18 + 464);
      v186 = swift_slowAlloc();
      v187 = OUTLINED_FUNCTION_254();
      *&v709 = v187;
      OUTLINED_FUNCTION_134_3(4.8149e-34);
      sub_1CA94AC28();
      v662 = sub_1CA94ADA8();
      v188 = v183;
      v190 = v189;
      (*(v185 + 8))(v184, v669);
      (*(v182 + 8))(v181, v188);
      sub_1CA26B54C(v662, v190, &v709);
      OUTLINED_FUNCTION_108_3();

      *(v186 + 4) = v188;
      OUTLINED_FUNCTION_110_3();
      _os_log_impl(v191, v192, v193, v194, v195, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v187);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_51();

      (*(v686 + 8))(v704, v697);
    }

    else
    {

      (*(v182 + 8))(v181, v183);
      v240 = OUTLINED_FUNCTION_3_3();
      v241(v240);
    }

    v698 = *(v18 + 560);
    v242 = *(v18 + 488);
    v243 = *(v18 + 496);
    sub_1CA94AC28();
    sub_1CA94ADA8();
    OUTLINED_FUNCTION_58_2();
    v244 = *(v243 + 8);
    v245 = OUTLINED_FUNCTION_164();
    v244(v245);
    v246 = sub_1CA471600();
    v247 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v246);
    OUTLINED_FUNCTION_70_8(v247, v248);
    OUTLINED_FUNCTION_139_4(v249);
    v250 = OUTLINED_FUNCTION_107_0();
    v251(v250);
    (v244)(v698, v242);
    goto LABEL_98;
  }

  v84 = *(v18 + 560);
  v85 = OUTLINED_FUNCTION_14_1();
  v86(v85);
  *(v18 + 1216) = *v84;
  swift_projectBox();
  v87 = OUTLINED_FUNCTION_86_2();
  v88(v87);
  v89 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v89);
  v90 = OUTLINED_FUNCTION_78_5();
  v91(v90);
  if (qword_1EC4420F0 != -1)
  {
    OUTLINED_FUNCTION_97_1(&qword_1EC4420F0);
  }

  v92 = qword_1EC4420F8;
  v93 = (*(v18 + 344) + *(*(v18 + 336) + 20));
  v93[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v93[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v93 = v92;
  objc_opt_self();
  OUTLINED_FUNCTION_158();

  OUTLINED_FUNCTION_160_2([v93 defaultContext]);
  v94 = swift_task_alloc();
  *(v18 + 1224) = v94;
  *v94 = v18;
  v94[1] = sub_1CA464DBC;
  OUTLINED_FUNCTION_73_0(*(v18 + 120));
  OUTLINED_FUNCTION_93_0();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA464DBC()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_1();
  *v6 = v5;
  *(v8 + 1232) = v7;
  *(v8 + 1240) = v0;

  sub_1CA4715A8(*(v2 + 344), type metadata accessor for TypedValueConversionContext);
  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA464EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = *(v12 + 384);
  v14 = *(v12 + 328);
  v15 = *(v12 + 1232);
  sub_1CA94AD68();
  v16 = type metadata accessor for WFRemoteAppValue(0);
  v17 = objc_allocWithZone(v16);
  v18 = OUTLINED_FUNCTION_171();
  sub_1CA560484(v18, v14);
  OUTLINED_FUNCTION_40();
  type metadata accessor for WFRemoteAppEnumContentItem();
  v81[3] = v16;
  v81[0] = v13;
  v19 = v13;
  if (sub_1CA470A0C(v81))
  {
    v20 = *(v12 + 1232);
    v75 = *(v12 + 592);
    v21 = *(v12 + 576);
    v22 = *(v12 + 568);
    v23 = *(v12 + 384);
    v25 = *(v12 + 352);
    v24 = *(v12 + 360);
    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v27 = OUTLINED_FUNCTION_137_3(v26);
    v28 = OUTLINED_FUNCTION_130_2(v27, xmmword_1CA9813B0);
    sub_1CA46934C(v28);

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v75, v22);

    OUTLINED_FUNCTION_20_15();
    OUTLINED_FUNCTION_4_34();
    OUTLINED_FUNCTION_26_14(v29);

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_23_0();

    return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }

  else
  {
    v39 = *(v12 + 1192);
    sub_1CA949C58();
    v40 = OUTLINED_FUNCTION_41_0();
    (v39)(v40);
    v41 = v19;
    v42 = sub_1CA949F68();
    v43 = sub_1CA94CC18();

    v78 = v41;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v12 + 552);
      v45 = *(v12 + 496);
      v72 = *(v12 + 488);
      v79 = *(v12 + 472);
      v76 = *(v12 + 400);
      v77 = *(v12 + 392);
      OUTLINED_FUNCTION_60_5();
      swift_slowAlloc();
      v73 = OUTLINED_FUNCTION_141_3();
      v74 = OUTLINED_FUNCTION_254();
      v81[0] = v74;
      OUTLINED_FUNCTION_134_3(4.8151e-34);
      sub_1CA94AC28();
      sub_1CA94ADA8();
      (*(v45 + 8))(v44, v72);
      v46 = OUTLINED_FUNCTION_70();
      v47(v46);
      v48 = OUTLINED_FUNCTION_52_0();
      sub_1CA26B54C(v48, v49, v50);
      OUTLINED_FUNCTION_171();

      OUTLINED_FUNCTION_115_3();
      *(v39 + 14) = v41;
      *v73 = v41;
      v51 = v41;
      OUTLINED_FUNCTION_140_3(&dword_1CA256000, v42, v43, "[%s] Unable to make remote app enum content item with value: %@");
      sub_1CA27080C(v73, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_138();
      __swift_destroy_boxed_opaque_existential_0(v74);
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_51();

      (*(v76 + 8))(v79, v77);
    }

    else
    {

      v52 = OUTLINED_FUNCTION_70();
      v53(v52);
      v54 = OUTLINED_FUNCTION_3_3();
      v55(v54);
    }

    v56 = *(v12 + 1232);
    v57 = sub_1CA471600();
    v80 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v57);
    OUTLINED_FUNCTION_35_9(v80, v58);
    swift_willThrow();

    v59 = OUTLINED_FUNCTION_162();
    v60(v59);
    v61 = OUTLINED_FUNCTION_70();
    v62(v61);

    OUTLINED_FUNCTION_77_6();
    OUTLINED_FUNCTION_26_14(v63);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
  }
}

void sub_1CA465808()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  (*(v0[45] + 8))(v0[48], v0[44]);
  v1 = OUTLINED_FUNCTION_69_0();
  v2(v1);

  OUTLINED_FUNCTION_12_19(v0[155]);
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v3);

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1CA465B30()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  v4[162] = v0;

  if (v0)
  {

    v8 = OUTLINED_FUNCTION_116();
    v9(v8);
  }

  else
  {
    v10 = v4[145];
    v11 = v4[136];
    v12 = v4[135];
    v4[163] = v1;
    (*(v11 + 8))(v10, v12);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA465C84()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 1304);
  v2 = [v1 items];

  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  OUTLINED_FUNCTION_107_0();
  v3 = sub_1CA94C658();

  if (v3 >> 62)
  {
    v4 = sub_1CA94D328();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v0 + 1280);
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    result = sub_1CA94D328();
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + v4;
  if (__OFADD__(result, v4))
  {
    __break(1u);
    goto LABEL_40;
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6)
  {
LABEL_12:
    sub_1CA94D328();
    goto LABEL_13;
  }

  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v10 >= v8)
  {
    v11 = *(v0 + 1280);
    goto LABEL_14;
  }

LABEL_13:
  result = sub_1CA94D488();
  v11 = result;
  v9 = result & 0xFFFFFFFFFFFFFF8;
  v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_14:
  v12 = *(v9 + 16);
  v13 = v10 - v12;
  if (v3 >> 62)
  {
    v15 = sub_1CA94D328();
    if (v15)
    {
      v16 = v15;
      result = sub_1CA94D328();
      if (v13 < result)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v16 < 1)
      {
LABEL_45:
        __break(1u);
        return result;
      }

      v35 = result;
      v36 = v9;
      v37 = v11;
      v17 = v3;
      v18 = v0 + 48;
      v19 = v9 + 8 * v12 + 32;
      sub_1CA471654();
      for (i = 0; i != v16; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AB0, &unk_1CA988C30);
        v21 = sub_1CA276BDC(v18, i, v17);
        v23 = *v22;
        v21(v18, 0);
        *(v19 + 8 * i) = v23;
      }

      v9 = v36;
      v11 = v37;
      v14 = v35;
      goto LABEL_24;
    }

LABEL_28:

    if (v4 <= 0)
    {
      goto LABEL_29;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_28;
  }

  if (v13 < v14)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_arrayInitWithCopy();
LABEL_24:

  if (v14 < v4)
  {
    goto LABEL_40;
  }

  if (v14 > 0)
  {
    v24 = *(v9 + 16);
    v25 = __OFADD__(v24, v14);
    v26 = v24 + v14;
    if (v25)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    *(v9 + 16) = v26;
  }

LABEL_29:
  v27 = *(v0 + 1272) + 1;
  *(v0 + 1280) = v11;
  *(v0 + 1272) = v27;
  result = *(v0 + 1256);
  if (v27 == *(v0 + 1264))
  {

    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    sub_1CA46934C(v11);
    v28 = OUTLINED_FUNCTION_69_0();
    v29(v28);

    OUTLINED_FUNCTION_20_15();
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_1_33(v30);

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_113_2();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X2, X16 }
  }

  if (v27 >= *(result + 16))
  {
    goto LABEL_41;
  }

  (*(v0 + 1192))(*(v0 + 1160), result + ((*(*(v0 + 1088) + 80) + 32) & ~*(*(v0 + 1088) + 80)) + *(*(v0 + 1088) + 72) * v27, *(v0 + 1080));
  v33 = swift_task_alloc();
  *(v0 + 1288) = v33;
  *v33 = v0;
  OUTLINED_FUNCTION_49_4(v33);
  OUTLINED_FUNCTION_23_0();

  return TypedValue.resolve(in:)();
}

uint64_t sub_1CA4662E4()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1344) = v0;

  (*(v2 + 1320))(*(v2 + 536), *(v2 + 488));
  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA466440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[27];
  if (OUTLINED_FUNCTION_142_3(v13) == 1)
  {
    sub_1CA27080C(v13, &qword_1EC444368, &unk_1CA988BC0);
LABEL_8:
    v32 = v12[149];
    v33 = v12[55];
    v34 = v12[15];
    sub_1CA949C58();
    v35 = OUTLINED_FUNCTION_61();
    v32(v35);
    v36 = sub_1CA949F68();
    v37 = sub_1CA94CC18();
    if (OUTLINED_FUNCTION_105_4(v37))
    {
      v38 = v12[142];
      OUTLINED_FUNCTION_131_4();
      v39 = OUTLINED_FUNCTION_138_4();
      v71 = OUTLINED_FUNCTION_254();
      *v39 = 136315138;
      sub_1CA94AC28();
      sub_1CA94ADA8();
      v40 = OUTLINED_FUNCTION_133_2();
      v41(v40);
      (*(v34 + 8))(v38);
      v42 = OUTLINED_FUNCTION_63_7();
      sub_1CA26B54C(v42, v43, v44);
      OUTLINED_FUNCTION_143_2();
      *(v39 + 4) = v33;
      OUTLINED_FUNCTION_55_6();
      _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_54_5();

      (*(v69 + 8))();
    }

    else
    {

      v50 = OUTLINED_FUNCTION_52_0();
      v51(v50);
      v52 = OUTLINED_FUNCTION_70();
      v53(v52);
    }

    v54 = v12[165];
    sub_1CA94AC28();
    sub_1CA94ADA8();
    OUTLINED_FUNCTION_58_2();
    v55 = OUTLINED_FUNCTION_69_0();
    v54(v55);
    v56 = sub_1CA471600();
    v70 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v56);
    OUTLINED_FUNCTION_70_8(v70, v57);
    swift_willThrow();
    v58 = OUTLINED_FUNCTION_126();
    v59(v58);

    OUTLINED_FUNCTION_77_6();
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_39_7(v60);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12);
  }

  v14 = OUTLINED_FUNCTION_116();
  v15(v14);
  v16 = OUTLINED_FUNCTION_188();
  v17(v16);
  v18 = OUTLINED_FUNCTION_129();
  if (v19(v18) != *MEMORY[0x1E69DB088])
  {
    v30 = v12[165];
    v30(v12[68], v12[61]);
    v31 = OUTLINED_FUNCTION_3_3();
    (v30)(v31);
    goto LABEL_8;
  }

  v20 = OUTLINED_FUNCTION_14_1();
  v21(v20);
  swift_projectBox();
  v22 = OUTLINED_FUNCTION_22();
  v23(v22);

  v24 = swift_task_alloc();
  v12[169] = v24;
  *v24 = v12;
  v24[1] = sub_1CA466A7C;
  OUTLINED_FUNCTION_73_0(v12[14]);
  OUTLINED_FUNCTION_23_0();

  return sub_1CA46D1C4(v25, v26, v27);
}

uint64_t sub_1CA466A7C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  v4[170] = v1;
  v4[171] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_3();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v4[172] = v11;
    *v11 = v6;
    v11[1] = sub_1CA466BE4;
    v12 = v4[47];

    return sub_1CA46D96C(v1, v12);
  }
}

uint64_t sub_1CA466BE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v4 + 1384) = v0;

  if (!v0)
  {
    *(v4 + 1392) = v1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1CA466CE8()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_74_4();
  v2 = OUTLINED_FUNCTION_70();
  v3(v2);
  v4 = OUTLINED_FUNCTION_20_0();
  v1(v4);
  v5 = OUTLINED_FUNCTION_33_10();
  v6(v5);

  OUTLINED_FUNCTION_12_19(*(v0 + 1392));
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v7);

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_113_2();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1CA467000()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *v4 = *v1;
  v3[177] = v0;

  v5 = v2[64];
  v6 = v2[62];
  v7 = v2[61];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (!v0)
  {
    v3[178] = v9;
    v3[179] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v9(v5, v7);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA467174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[26];
  if (OUTLINED_FUNCTION_142_3(v13) == 1)
  {
    sub_1CA27080C(v13, &qword_1EC444368, &unk_1CA988BC0);
LABEL_7:
    v35 = v12[149];
    v36 = v12[54];
    v37 = v12[15];
    sub_1CA949C58();
    v38 = OUTLINED_FUNCTION_61();
    v35(v38);
    v39 = sub_1CA949F68();
    v40 = sub_1CA94CC18();
    if (OUTLINED_FUNCTION_105_4(v40))
    {
      v41 = v12[141];
      OUTLINED_FUNCTION_131_4();
      v42 = OUTLINED_FUNCTION_138_4();
      v79 = OUTLINED_FUNCTION_254();
      *v42 = 136315138;
      sub_1CA94AC28();
      sub_1CA94ADA8();
      v43 = OUTLINED_FUNCTION_133_2();
      v44(v43);
      (*(v37 + 8))(v41);
      v45 = OUTLINED_FUNCTION_63_7();
      sub_1CA26B54C(v45, v46, v47);
      OUTLINED_FUNCTION_143_2();
      *(v42 + 4) = v36;
      OUTLINED_FUNCTION_55_6();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_54_5();

      (*(v78 + 8))();
    }

    else
    {

      v53 = OUTLINED_FUNCTION_52_0();
      v54(v53);
      v55 = OUTLINED_FUNCTION_70();
      v56(v55);
    }

    v57 = v12[178];
    sub_1CA94AC28();
    sub_1CA94ADA8();
    OUTLINED_FUNCTION_58_2();
    v58 = OUTLINED_FUNCTION_69_0();
    v57(v58);
    v59 = sub_1CA471600();
    v60 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v59);
    OUTLINED_FUNCTION_70_8(v60, v61);
    swift_willThrow();
    v62 = OUTLINED_FUNCTION_126();
    v63(v62);
    goto LABEL_11;
  }

  v14 = OUTLINED_FUNCTION_116();
  v15(v14);
  v16 = OUTLINED_FUNCTION_188();
  v17(v16);
  v18 = OUTLINED_FUNCTION_129();
  if (v19(v18) != *MEMORY[0x1E69DB088])
  {
    v33 = v12[178];
    (v33)(v12[65], v12[61]);
    v34 = OUTLINED_FUNCTION_3_3();
    v33(v34);
    goto LABEL_7;
  }

  v20 = v12[177];
  v22 = v12[45];
  v21 = v12[46];
  v23 = v12[44];
  v24 = OUTLINED_FUNCTION_14_1();
  v25(v24);
  v26 = swift_projectBox();
  (*(v22 + 16))(v21, v26, v23);

  v12[180] = sub_1CA344A04();
  if (v20)
  {
    v27 = v12[178];
    v28 = OUTLINED_FUNCTION_103_2();
    v29(v28);
    v30 = OUTLINED_FUNCTION_52_0();
    v27(v30);
    v31 = OUTLINED_FUNCTION_70();
    v32(v31);
LABEL_11:

    OUTLINED_FUNCTION_77_6();
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_39_7(v64);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12);
  }

  v74 = swift_task_alloc();
  v12[181] = v74;
  *v74 = v12;
  v74[1] = sub_1CA467818;
  OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_23_0();

  return sub_1CA46E134(v75, v76);
}

uint64_t sub_1CA467818()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1456) = v4;
  *(v2 + 1464) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA46791C()
{
  OUTLINED_FUNCTION_0();

  v1 = swift_task_alloc();
  *(v0 + 1472) = v1;
  *v1 = v0;
  v1[1] = sub_1CA4679B8;
  v2 = OUTLINED_FUNCTION_73_0(*(v0 + 1456));

  return sub_1CA46D96C(v2, v3);
}

uint64_t sub_1CA4679B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v4 + 1480) = v0;

  if (!v0)
  {
    *(v4 + 1488) = v1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1CA467ABC()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();

  v1 = *(v0 + 1424);
  v2 = OUTLINED_FUNCTION_103_2();
  v3(v2);
  v4 = OUTLINED_FUNCTION_20_0();
  v1(v4);
  v5 = OUTLINED_FUNCTION_70();
  v6(v5);

  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v7);

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA467DE4()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_71_5();
  v2 = OUTLINED_FUNCTION_70();
  v3(v2);
  v4 = OUTLINED_FUNCTION_20_0();
  v1(v4);
  v5 = OUTLINED_FUNCTION_33_10();
  v6(v5);

  OUTLINED_FUNCTION_12_19(*(v0 + 1488));
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v7);

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_113_2();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X2, X16 }
}

void sub_1CA4680FC()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  (*(v0[37] + 8))(v0[38], v0[36]);

  OUTLINED_FUNCTION_12_19(v0[162]);
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v1);

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA4683F8()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  (*(v0[34] + 8))(v0[35], v0[33]);

  OUTLINED_FUNCTION_12_19(v0[168]);
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v1);

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA4686F4()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v1 = v0[165];
  (*(v0[45] + 8))(v0[47], v0[44]);
  v2 = OUTLINED_FUNCTION_20_0();
  v1(v2);
  v3 = OUTLINED_FUNCTION_70();
  v4(v3);

  OUTLINED_FUNCTION_12_19(v0[171]);
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v5);

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA468A24()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_74_4();
  v2 = OUTLINED_FUNCTION_70();
  v3(v2);
  v4 = OUTLINED_FUNCTION_20_0();
  v1(v4);
  v5 = OUTLINED_FUNCTION_33_10();
  v6(v5);

  OUTLINED_FUNCTION_12_19(*(v0 + 1384));
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v7);

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA468D38()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  (*(v0[24] + 8))(v0[25], v0[23]);

  OUTLINED_FUNCTION_12_19(v0[177]);
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v1);

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

void sub_1CA469034()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_71_5();
  v2 = OUTLINED_FUNCTION_70();
  v3(v2);
  v4 = OUTLINED_FUNCTION_20_0();
  v1(v4);
  v5 = OUTLINED_FUNCTION_33_10();
  v6(v5);

  OUTLINED_FUNCTION_12_19(*(v0 + 1480));
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_1_33(v7);

  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X1, X16 }
}

id sub_1CA46934C(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  v1 = sub_1CA94C648();

  v2 = [swift_getObjCClassFromMetadata() collectionWithItems_];

  return v2;
}

uint64_t sub_1CA4693D0()
{
  OUTLINED_FUNCTION_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1CA94B168();
  v1[5] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v6);
  v1[8] = OUTLINED_FUNCTION_13_5();
  v1[9] = swift_task_alloc();
  v7 = sub_1CA94B1C8();
  v1[10] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_13_5();
  v1[13] = swift_task_alloc();
  v9 = sub_1CA94ADC8();
  v1[14] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA469558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18[15] + 16);
  v20 = OUTLINED_FUNCTION_136();
  v19(v20);
  v21 = OUTLINED_FUNCTION_3_3();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x1E69DB0B0] || v23 == *MEMORY[0x1E69DB0A0])
  {
    goto LABEL_6;
  }

  if (v23 == *MEMORY[0x1E69DB098])
  {
    v32 = v18[16];
    v34 = v18[6];
    v33 = v18[7];
    v35 = v18[5];
    v36 = v18[3];
    v37 = OUTLINED_FUNCTION_14_1();
    v38(v37);
    v39 = *v32;
    v18[17] = *v32;
    v18[18] = *(v39 + 32);
    v18[19] = *(v39 + 40);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    (*(v34 + 104))(v33, *MEMORY[0x1E69DB2E0], v35);
    sub_1CA94C218();
    v40 = swift_task_alloc();
    v18[20] = v40;
    *v40 = v18;
    v40[1] = sub_1CA469878;
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X6, X16 }
  }

  if (v23 == *MEMORY[0x1E69DB088] || v23 == *MEMORY[0x1E69DB0A8])
  {
LABEL_6:
    v25 = v18[14];
    (*(v18[15] + 8))(v18[16], v25);
    v26 = OUTLINED_FUNCTION_116();
    v19(v26);
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v25);
    OUTLINED_FUNCTION_96_5();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_24();

  return sub_1CA94D7E8();
}

uint64_t sub_1CA469878()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  if (v0)
  {
    v8 = v3[6];
    v7 = v3[7];
    v9 = v3[5];

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    (*(v3[6] + 8))(v3[7], v3[5]);
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1CA4699C0()
{
  v1 = v0[15];
  v22 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[2];
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
  (*(v4 + 32))(v2, v6, v5);
  sub_1CA94AD88();
  v11 = swift_allocBox();
  (*(v4 + 16))(v3, v2, v5);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v5);
  sub_1CA94AD58();
  v15 = OUTLINED_FUNCTION_176_0();
  v16(v15);
  *v7 = v11;
  (*(v1 + 104))(v7, *MEMORY[0x1E69DB088], v22);
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v22);

  OUTLINED_FUNCTION_96_5();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1CA469B5C()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_1CA27080C(v2, &qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);

  OUTLINED_FUNCTION_96_5();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_2();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t ContentGraphRepresentationContext.shortcuts.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  v4 = v2;

  return swift_unknownObjectRetain();
}

uint64_t ContentGraphRepresentationContext.toolkit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContentGraphRepresentationContext(0);
  v3 = OUTLINED_FUNCTION_22_13(*(v2 + 24));
  return sub_1CA47154C(v3, a1);
}

uint64_t sub_1CA469CF0()
{
  sub_1CA2B8BCC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA981310;
  result = sub_1CA25B3D0(0, &qword_1EC445B58, 0x1E6996E40);
  *(v0 + 32) = result;
  qword_1EC4616A0 = v0;
  return result;
}

uint64_t sub_1CA469D60()
{
  sub_1CA2B8BF0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA981310;
  result = type metadata accessor for WFAskLLMModelParameter();
  *(v0 + 32) = result;
  qword_1EC4616A8 = v0;
  return result;
}

void sub_1CA469DC0()
{
  v0 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v46[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46[-v9];
  v11 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v53 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v46[-v16];
  if (qword_1EC442D78 != -1)
  {
    swift_once();
  }

  v49 = v8;
  v17 = qword_1EC4616A0;
  v18 = *(qword_1EC4616A0 + 16);
  if (v18)
  {
    v19 = objc_opt_self();
    v20 = v17 + 32;
    v21 = *MEMORY[0x1E69DB488];
    v56 = sub_1CA94B668();
    OUTLINED_FUNCTION_52();
    v23 = *(v22 + 104);
    v54 = v22 + 104;
    v55 = v23;
    v50 = (v53 + 32);
    v57 = MEMORY[0x1E69E7CC0];
    v47 = v21;
    v48 = v19;
    do
    {
      *(v3 + 4) = 0;
      *v3 = 0u;
      *(v3 + 1) = 0u;
      v55(&v3[*(v0 + 20)], v21, v56);
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      *&v3[*(v0 + 28)] = [v19 defaultContext];
      static WFContentItem.toolkitTypeIdentifier(context:)(v3, v10);
      OUTLINED_FUNCTION_68_6();
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
      v27 = *v50;
      (*v50)(v51, v10, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E4E18();
        v57 = v31;
      }

      v29 = *(v57 + 16);
      v28 = *(v57 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_18(v28);
        sub_1CA2E4E18();
        v57 = v32;
      }

      v30 = v57;
      *(v57 + 16) = v29 + 1;
      v27(v30 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, v51, v11);
      v19 = v48;
      v21 = v47;
      v20 += 8;
      --v18;
    }

    while (v18);
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC442D80 != -1)
  {
    swift_once();
  }

  v33 = *(qword_1EC4616A8 + 16);
  v34 = v49;
  if (v33)
  {
    v35 = qword_1EC4616A8 + 32;
    v36 = (v53 + 32);
    v37 = MEMORY[0x1E69E7CC0];
    do
    {
      static WFParameter.toolkitTypeIdentifier()(v34);
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v11);
      v41 = *v36;
      (*v36)(v52, v34, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E4E18();
        v37 = v44;
      }

      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_18(v42);
        sub_1CA2E4E18();
        v37 = v45;
      }

      *(v37 + 16) = v43 + 1;
      v41(v37 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v43, v52, v11);
      v34 = v49;
      v35 += 8;
      --v33;
    }

    while (v33);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v58 = v57;
  sub_1CA2B7BFC(v37);
  sub_1CA2E2EEC();
}

unint64_t ContentGraphRepresentationContext.debugDescription.getter()
{
  v1 = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(0);
  v2 = OUTLINED_FUNCTION_18_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);
  v6 = OUTLINED_FUNCTION_18_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(v0 + 40);
  if (v9)
  {
    v10 = [v9 key];
    sub_1CA94C3A8();
  }

  else
  {
    v11 = type metadata accessor for ContentGraphRepresentationContext(0);
    v12 = OUTLINED_FUNCTION_22_13(*(v11 + 24));
    sub_1CA47154C(v12, v4);
    sub_1CA393EE4(v4, v8, &qword_1EC444D00, &qword_1CA988B80);
    v13 = sub_1CA94B258();
    if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
    {
      sub_1CA27080C(v8, &qword_1EC444D00, &qword_1CA988B80);
    }

    else
    {
      sub_1CA94B228();
      OUTLINED_FUNCTION_39();
      (*(v14 + 8))(v8, v13);
    }
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1CA94D408();

  v17 = 0xD000000000000027;
  v18 = 0x80000001CA9B8A80;
  v15 = OUTLINED_FUNCTION_116();
  MEMORY[0x1CCAA1300](v15);

  MEMORY[0x1CCAA1300](62, 0xE100000000000000);
  return v17;
}

uint64_t sub_1CA46A50C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA31555C;

  return ContentGraphRepresentable.resolve(to:in:)();
}

uint64_t WFContentCollection.resolve(to:in:)()
{
  OUTLINED_FUNCTION_0();
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v3;
  v4 = sub_1CA949F78();
  v1[59] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[60] = v5;
  v1[61] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA46A674()
{
  v41 = v0;
  if (*(v0[57] + 40))
  {
    v1 = [*(v0[57] + 40) allowsMultipleValues];
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 processesIntoContentItems];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
    v1 = 0;
  }

  v4 = v0[58];
  sub_1CA949C58();
  v5 = v4;
  v6 = sub_1CA949F68();
  v7 = sub_1CA94CC38();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[60];
  v9 = v0[61];
  v11 = v0[59];
  if (v8)
  {
    v39 = v3;
    v12 = v0[58];
    v38 = v0[61];
    OUTLINED_FUNCTION_60_5();
    v37 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_254();
    v40 = v36;
    *v13 = 136315394;
    v15 = sub_1CA94DA18();
    v17 = sub_1CA26B54C(v15, v16, &v40);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v12;
    *v14 = v12;
    v18 = v12;
    v3 = v39;
    _os_log_impl(&dword_1CA256000, v6, v7, "Extraction %s from content collection: %@", v13, 0x16u);
    sub_1CA27080C(v14, &qword_1EC444AE0, &qword_1CA985B70);
    OUTLINED_FUNCTION_26();
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_76_4();
    OUTLINED_FUNCTION_54_5();

    (*(v10 + 8))(v38, v37);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  OUTLINED_FUNCTION_5_3();
  if ((swift_dynamicCastMetatype() != 0) | v3 & 1)
  {
    swift_unknownObjectRetain();

    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_99();

    __asm { BRAA            X2, X16 }
  }

  v0[62] = sub_1CA25B3D0(0, &qword_1EC441928, 0x1E6996E20);
  if (swift_dynamicCastMetatype())
  {
    v21 = v0[58];
    if (v1)
    {
      v22 = v0 + 42;
      v0[18] = v0;
      v0[23] = v0 + 55;
      v0[19] = sub_1CA46AC48;
      v23 = OUTLINED_FUNCTION_213_0();
      v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AE8, &qword_1CA988C58);
      v0[42] = MEMORY[0x1E69E9820];
      v0[43] = 1107296256;
      v0[44] = sub_1CA470D58;
      v0[45] = &block_descriptor_30;
      v0[46] = v23;
      v24 = sel_getFileRepresentations_forType_;
    }

    else
    {
      v22 = v0 + 34;
      v0[10] = v0;
      v0[15] = v0 + 54;
      v0[11] = sub_1CA46ADBC;
      v27 = OUTLINED_FUNCTION_213_0();
      v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AE0, &qword_1CA988C50);
      v0[34] = MEMORY[0x1E69E9820];
      v0[35] = 1107296256;
      v0[36] = sub_1CA3CD588;
      v0[37] = &block_descriptor_27_0;
      v0[38] = v27;
      v24 = sel_getFileRepresentation_forType_;
    }

    [v21 v24];
    goto LABEL_20;
  }

  sub_1CA25B3D0(0, &qword_1EC441940, 0x1E6996F20);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    v25 = swift_task_alloc();
    v0[65] = v25;
    *v25 = v0;
    v26 = sub_1CA46AF14;
  }

  else
  {
    if (v1)
    {
      v30 = v0[58];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v0[2] = v0;
      v0[7] = v0 + 50;
      v0[3] = sub_1CA46B0D8;
      v32 = OUTLINED_FUNCTION_213_0();
      v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD8, &qword_1CA988C48);
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1CA470E00;
      v0[29] = &block_descriptor_23;
      v0[30] = v32;
      [v30 getObjectRepresentations:v0 + 26 forClass:{ObjCClassFromMetadata, v36}];
LABEL_20:
      OUTLINED_FUNCTION_99();

      return MEMORY[0x1EEE6DEC8](v28);
    }

    v25 = swift_task_alloc();
    v0[68] = v25;
    *v25 = v0;
    v26 = sub_1CA46B258;
  }

  v25[1] = v26;
  OUTLINED_FUNCTION_73_0(v0[56]);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEDF81A0](v33);
}

uint64_t sub_1CA46AC48()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 504) = *(v3 + 176);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA46AD44()
{
  OUTLINED_FUNCTION_0();
  sub_1CA94C648();
  OUTLINED_FUNCTION_158();

  OUTLINED_FUNCTION_2_4();

  return v1(v0);
}

uint64_t sub_1CA46ADBC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 512) = *(v3 + 112);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA46AEB8()
{
  OUTLINED_FUNCTION_0();

  v0 = OUTLINED_FUNCTION_1_3();

  return v1(v0);
}

uint64_t sub_1CA46AF14()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_9_2();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    *(v4 + 528) = v1;

    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

uint64_t sub_1CA46B054()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 424) = *(v0 + 528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AA8, &qword_1CA988C08);
  sub_1CA94D088();
  OUTLINED_FUNCTION_87();
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_1_3();

  return v2(v1);
}

uint64_t sub_1CA46B0D8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 536) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA46B1D4()
{
  OUTLINED_FUNCTION_0();

  sub_1CA94C648();
  OUTLINED_FUNCTION_158();

  OUTLINED_FUNCTION_2_4();

  return v1(v0);
}

uint64_t sub_1CA46B258()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_9_2();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    *(v4 + 552) = v1;

    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

uint64_t sub_1CA46B398()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 416) = *(v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AA8, &qword_1CA988C08);
  sub_1CA94D088();
  OUTLINED_FUNCTION_87();
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_1_3();

  return v2(v1);
}

uint64_t sub_1CA46B41C()
{
  OUTLINED_FUNCTION_14();
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA46B488()
{
  OUTLINED_FUNCTION_14();
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA46B4F4()
{
  OUTLINED_FUNCTION_14();
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v0();
}

void (*sub_1CA46B580(uint64_t a1))(char *, uint64_t)
{
  v292 = sub_1CA94A9A8();
  v288 = *(v292 - 8);
  v2 = MEMORY[0x1EEE9AC00](v292);
  v277 = &v258 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v271 = &v258 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v270 = &v258 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v285 = &v258 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v284 = &v258 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v268 = &v258 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v267 = &v258 - v14;
  v15 = sub_1CA949F78();
  v16 = *(v15 - 8);
  v289 = v15;
  v290 = v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v280 = &v258 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v273 = &v258 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v291 = &v258 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v272 = &v258 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v274 = &v258 - v25;
  v278 = sub_1CA9486C8();
  v275 = *(v278 - 8);
  v26 = MEMORY[0x1EEE9AC00](v278);
  v264 = &v258 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v276 = &v258 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v269 = &v258 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v287 = (&v258 - v32);
  v33 = sub_1CA94AC18();
  v34 = *(v33 - 8);
  v281 = v33;
  v282 = v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v265 = (&v258 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x1EEE9AC00](v35);
  v266 = &v258 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v279 = &v258 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v283 = &v258 - v41;
  v42 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v43 = v42 - 8;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v258 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CA94ADC8();
  v47 = *(v46 - 8);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v286 = (&v258 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = MEMORY[0x1EEE9AC00](v48);
  v294 = &v258 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v293 = &v258 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = (&v258 - v55);
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v258 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v258 - v60;
  v295 = a1;
  sub_1CA94A8B8();
  v299 = v47;
  (*(v47 + 16))(v59, v61, v46);
  v62 = sub_1CA25B3D0(0, &qword_1EC445B58, 0x1E6996E40);
  *(v45 + 4) = 0;
  *v45 = 0u;
  *(v45 + 1) = 0u;
  v63 = *(v43 + 28);
  v64 = *MEMORY[0x1E69DB488];
  v65 = sub_1CA94B668();
  (*(*(v65 - 8) + 104))(&v45[v63], v64, v65);
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  *&v45[*(v43 + 36)] = [objc_opt_self() defaultContext];
  v66 = v296;
  static WFContentItem.toolkitTypeIdentifier(context:)(v45, v56);
  if (v66)
  {
    sub_1CA4715A8(v45, type metadata accessor for WFContentItem.ToolKitTypeResolutionContext);
    v67 = *(v299 + 8);
    v67(v59, v46);
    v67(v61, v46);
    return v67;
  }

  v296 = 0;
  v68 = v294;
  v263 = v62;
  sub_1CA4715A8(v45, type metadata accessor for WFContentItem.ToolKitTypeResolutionContext);
  sub_1CA471BD8();
  v69 = v56;
  v70 = sub_1CA94C358();
  v71 = (v299 + 8);
  v72 = *(v299 + 8);
  (v72)(v69, v46);
  (v72)(v59, v46);
  if ((v70 & 1) == 0)
  {
    (*(v299 + 32))(v68, v61, v46);
    v78 = type metadata accessor for WFAskLLMModelParameter();
    v79 = v286;
    v67 = v78;
    v80 = v296;
    static WFParameter.toolkitTypeIdentifier()(v286);
    v81 = v295;
    if (v80)
    {
      (v72)(v68, v46);
      return v67;
    }

    v102 = sub_1CA94C358();
    v103 = v79;
    v104 = v102;
    (v72)(v103, v46);
    v299 = v46;
    (v72)(v68, v46);
    if (v104)
    {
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      v105 = sub_1CA94A898();
      v298 = MEMORY[0x1E69E6158];
      v297[0] = v105;
      v297[1] = v106;
      v107 = sub_1CA470A0C(v297);
      v108 = v290;
      v109 = v292;
      if (v107)
      {
        v110 = v107;
        sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1CA9813B0;
        *(v111 + 32) = v110;
        return sub_1CA46934C(v111);
      }

      v286 = v72;
      v294 = v71;
      v166 = v273;
      sub_1CA949C58();
      v167 = v288;
      v168 = *(v288 + 16);
      v169 = v270;
      v168(v270, v81, v109);
      v170 = v271;
      v168(v271, v81, v109);
      v171 = sub_1CA949F68();
      v67 = sub_1CA94CC18();
      if (os_log_type_enabled(v171, v67))
      {
        v172 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        v297[0] = v296;
        *v172 = 136315394;
        v173 = v293;
        LODWORD(v295) = v67;
        sub_1CA94A8B8();
        v174 = sub_1CA94ADA8();
        v175 = v170;
        v177 = v176;
        (v286)(v173, v299);
        v178 = *(v167 + 8);
        v179 = v169;
        v180 = v292;
        v178(v179, v292);
        v181 = sub_1CA26B54C(v174, v177, v297);

        *(v172 + 4) = v181;
        *(v172 + 12) = 2080;
        v182 = sub_1CA94A898();
        v184 = v183;
        v178(v175, v180);
        v185 = sub_1CA26B54C(v182, v184, v297);

        *(v172 + 14) = v185;
        _os_log_impl(&dword_1CA256000, v171, v295, "[%s] [AskLLM] Unable to make content item from value identifier: %s", v172, 0x16u);
        v67 = v296;
        swift_arrayDestroy();
        MEMORY[0x1CCAA4BF0](v67, -1, -1);
        MEMORY[0x1CCAA4BF0](v172, -1, -1);

        (*(v108 + 8))(v273, v289);
      }

      else
      {

        v188 = *(v167 + 8);
        v188(v170, v109);
        v188(v169, v109);
        (*(v108 + 8))(v166, v289);
      }

      sub_1CA471600();
      swift_allocError();
      *v162 = 0u;
      *(v162 + 16) = 0u;
      v163 = 5;
LABEL_25:
      *(v162 + 32) = v163;
      swift_willThrow();
      return v67;
    }

    v286 = v72;
    v294 = v71;
    v112 = v280;
    sub_1CA949C58();
    v113 = v288;
    v114 = v277;
    v115 = v292;
    (*(v288 + 16))(v277, v81, v292);
    v116 = sub_1CA949F68();
    v117 = sub_1CA94CC18();
    v118 = os_log_type_enabled(v116, v117);
    v119 = v289;
    v120 = v290;
    if (v118)
    {
      v121 = swift_slowAlloc();
      v291 = v121;
      v296 = swift_slowAlloc();
      v297[0] = v296;
      *v121 = 136315138;
      v122 = v293;
      sub_1CA94A8B8();
      v285 = sub_1CA94ADA8();
      v123 = v114;
      v125 = v124;
      LODWORD(v287) = v117;
      v126 = v286;
      (v286)(v122, v299);
      (*(v113 + 8))(v123, v292);
      v127 = sub_1CA26B54C(v285, v125, v297);

      v128 = v291;
      *(v291 + 4) = v127;
      v129 = v128;
      _os_log_impl(&dword_1CA256000, v116, v287, "[%s] [Default] Unable to make a content collection for an unknown custom entity — we probably shouldn't down this path", v128, 0xCu);
      v130 = v296;
      __swift_destroy_boxed_opaque_existential_0(v296);
      MEMORY[0x1CCAA4BF0](v130, -1, -1);
      v131 = v299;
      MEMORY[0x1CCAA4BF0](v129, -1, -1);

      (*(v120 + 8))(v280, v289);
    }

    else
    {

      (*(v113 + 8))(v114, v115);
      (*(v120 + 8))(v112, v119);
      v131 = v299;
      v122 = v293;
      v126 = v286;
    }

    sub_1CA94A8B8();
    v160 = sub_1CA94ADA8();
    v67 = v165;
    v126(v122, v131);
LABEL_24:
    sub_1CA471600();
    swift_allocError();
    *v162 = v160;
    *(v162 + 8) = v67;
    *(v162 + 16) = 0;
    *(v162 + 24) = 0;
    v163 = 4;
    goto LABEL_25;
  }

  v299 = v46;
  v294 = v71;
  v286 = v72;
  (v72)(v61, v46);
  v73 = v295;
  v74 = sub_1CA94A968();
  v75 = v287;
  sub_1CA3118CC(0x6D614E6C65646F6DLL, 0xE900000000000065, v74, v287);

  v76 = sub_1CA94AC88();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v76);
  v280 = v76;
  if (EnumTagSinglePayload == 1)
  {
    sub_1CA27080C(v75, &qword_1EC444C60, &qword_1CA9827D0);
LABEL_20:
    v133 = v293;
    v134 = v288;
    v135 = v291;
    sub_1CA949C58();
    v136 = *(v134 + 16);
    v137 = v284;
    v138 = v292;
    v136(v284, v73, v292);
    v139 = v285;
    v136(v285, v73, v138);
    v140 = sub_1CA949F68();
    v141 = sub_1CA94CC18();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v296 = swift_slowAlloc();
      v297[0] = v296;
      *v142 = 136315394;
      LODWORD(v288) = v141;
      sub_1CA94A8B8();
      v143 = sub_1CA94ADA8();
      v287 = v140;
      v144 = v137;
      v146 = v145;
      (v286)(v133, v299);
      v147 = *(v134 + 8);
      v147(v144, v138);
      v148 = sub_1CA26B54C(v143, v146, v297);

      *(v142 + 4) = v148;
      *(v142 + 12) = 2080;
      sub_1CA94A968();
      v149 = sub_1CA94C1D8();
      v151 = v150;

      v152 = v138;
      v153 = v286;
      v147(v139, v152);
      v154 = sub_1CA26B54C(v149, v151, v297);
      v133 = v293;

      *(v142 + 14) = v154;
      v155 = v287;
      _os_log_impl(&dword_1CA256000, v287, v288, "[%s] [AskLLM] Unable to get generative model name from value properties: %s", v142, 0x16u);
      v156 = v296;
      swift_arrayDestroy();
      MEMORY[0x1CCAA4BF0](v156, -1, -1);
      v157 = v142;
      v158 = v299;
      MEMORY[0x1CCAA4BF0](v157, -1, -1);

      (*(v290 + 8))(v291, v289);
    }

    else
    {

      v159 = *(v134 + 8);
      v159(v139, v138);
      v159(v137, v138);
      (*(v290 + 8))(v135, v289);
      v158 = v299;
      v153 = v286;
    }

    sub_1CA94A8B8();
    v160 = sub_1CA94ADA8();
    v67 = v161;
    v153(v133, v158);
    goto LABEL_24;
  }

  v82 = *(v76 - 8);
  v83 = v82;
  v84 = *(v82 + 88);
  v85 = (v82 + 88);
  v86 = v84(v75, v76);
  if (v86 != *MEMORY[0x1E69DAE70])
  {
    (*(v83 + 8))(v75, v76);
    goto LABEL_19;
  }

  v87 = v86;
  v273 = v85;
  v277 = v84;
  v88 = *(v83 + 96);
  v271 = (v83 + 96);
  v270 = v88;
  (v88)(v75, v76);
  v89 = swift_projectBox();
  v90 = v282;
  v91 = v283;
  isa = v282[2].isa;
  v93 = v281;
  isa(v283, v89, v281);
  v94 = v93;

  v95 = v279;
  isa(v279, v91, v94);
  v96 = v90[11].isa;
  v287 = v90 + 11;
  v262 = v96;
  v97 = v96(v95, v94);
  if (v97 != *MEMORY[0x1E69DADF0])
  {
    v132 = v90[1].isa;
    v132(v91, v94);
    v132(v95, v94);
    goto LABEL_19;
  }

  v261 = v97;
  v98 = v90[12].isa;
  v260 = v90 + 12;
  v259 = v98;
  v98(v95, v94);
  v99 = v274;
  sub_1CA9486A8();
  v100 = v94;
  v101 = v278;
  if (__swift_getEnumTagSinglePayload(v99, 1, v278) == 1)
  {
    (v90[1].isa)(v283, v100);
    sub_1CA27080C(v99, &qword_1EC445BF0, &unk_1CA989120);
LABEL_19:
    v73 = v295;
    goto LABEL_20;
  }

  (*(v275 + 32))(v276, v99, v101);
  v186 = sub_1CA94A968();
  v187 = v269;
  sub_1CA3118CC(1954047348, 0xE400000000000000, v186, v269);

  if (__swift_getEnumTagSinglePayload(v187, 1, v76) == 1)
  {
    sub_1CA27080C(v187, &qword_1EC444C60, &qword_1CA9827D0);
LABEL_40:
    v194 = v295;
    v213 = v282;
    goto LABEL_41;
  }

  if ((v277)(v187, v76) != v87)
  {
    (*(v83 + 8))(v187, v76);
    goto LABEL_40;
  }

  (v270)(v187, v76);
  v189 = swift_projectBox();
  v190 = v266;
  v191 = v281;
  isa(v266, v189, v281);

  v192 = v265;
  isa(v265, v190, v191);
  v193 = v262(v192, v191);
  v194 = v295;
  if (v193 == v261)
  {
    v259(v192, v191);
    v195 = *v192;
    v196 = v192[1];
    v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
    MEMORY[0x1EEE9AC00](v197 - 8);
    v199 = &v258 - v198;
    v200 = sub_1CA948CB8();
    __swift_storeEnumTagSinglePayload(v199, 1, 1, v200);
    v201 = v275;
    v202 = v278;
    (*(v275 + 16))(v264, v276, v278);
    [objc_allocWithZone(sub_1CA948648()) init];
    v203 = objc_allocWithZone(sub_1CA948738());
    v204 = sub_1CA948718();
    v205 = objc_allocWithZone(MEMORY[0x1E6996E48]);
    v206 = sub_1CA4713A4(v195, v196, 0, 0, 0, 0, v199, v204);
    v298 = sub_1CA25B3D0(0, &unk_1EC445B60, 0x1E6996E48);
    v297[0] = v206;
    v207 = v206;
    v208 = sub_1CA470A0C(v297);
    if (v208)
    {
      v209 = v208;
      sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v210 = swift_allocObject();
      *(v210 + 16) = xmmword_1CA9813B0;
      *(v210 + 32) = v209;
      v67 = sub_1CA46934C(v210);

      v211 = v281;
      v212 = v282[1].isa;
      v212(v190, v281);
      (*(v201 + 8))(v276, v202);
      v212(v283, v211);
    }

    else
    {
      v250 = v202;
      v251 = v293;
      sub_1CA94A8B8();
      v252 = sub_1CA94ADA8();
      v254 = v253;
      (v286)(v251, v299);
      sub_1CA471600();
      swift_allocError();
      *v255 = v252;
      *(v255 + 8) = v254;
      *(v255 + 16) = 0;
      *(v255 + 24) = 0;
      *(v255 + 32) = 4;
      swift_willThrow();

      v256 = v281;
      v67 = &v282[1];
      v257 = v282[1].isa;
      v257(v190, v281);
      (*(v201 + 8))(v276, v250);
      v257(v283, v256);
    }

    return v67;
  }

  v213 = v282;
  v248 = v191;
  v249 = v282[1].isa;
  v249(v190, v248);
  v249(v192, v248);
LABEL_41:
  v214 = v272;
  sub_1CA949C58();
  v215 = v288;
  v216 = *(v288 + 16);
  v217 = v267;
  v218 = v292;
  v216(v267, v194, v292);
  v219 = v268;
  v216(v268, v194, v218);
  v220 = sub_1CA949F68();
  v221 = sub_1CA94CC18();
  v222 = os_log_type_enabled(v220, v221);
  v223 = v293;
  if (v222)
  {
    v224 = swift_slowAlloc();
    v296 = swift_slowAlloc();
    v297[0] = v296;
    *v224 = 136315394;
    LODWORD(v291) = v221;
    sub_1CA94A8B8();
    v225 = sub_1CA94ADA8();
    v227 = v226;
    v228 = v223;
    v229 = v286;
    (v286)(v228, v299);
    v287 = v220;
    v230 = *(v215 + 8);
    v231 = v217;
    v232 = v229;
    v230(v231, v218);
    v233 = sub_1CA26B54C(v225, v227, v297);

    *(v224 + 4) = v233;
    *(v224 + 12) = 2080;
    sub_1CA94A968();
    v234 = sub_1CA94C1D8();
    v236 = v235;

    v230(v219, v218);
    v237 = v299;
    v238 = v234;
    v213 = v282;
    v239 = sub_1CA26B54C(v238, v236, v297);
    v223 = v293;

    *(v224 + 14) = v239;
    v240 = v287;
    _os_log_impl(&dword_1CA256000, v287, v291, "[%s] [AskLLM] Unable to get text from value properties: %s", v224, 0x16u);
    v241 = v296;
    swift_arrayDestroy();
    MEMORY[0x1CCAA4BF0](v241, -1, -1);
    MEMORY[0x1CCAA4BF0](v224, -1, -1);

    (*(v290 + 8))(v272, v289);
  }

  else
  {

    v244 = *(v215 + 8);
    v244(v219, v218);
    v244(v217, v218);
    (*(v290 + 8))(v214, v289);
    v237 = v299;
    v232 = v286;
  }

  v242 = v278;
  v243 = v276;
  sub_1CA94A8B8();
  v245 = sub_1CA94ADA8();
  v67 = v246;
  v232(v223, v237);
  sub_1CA471600();
  swift_allocError();
  *v247 = v245;
  *(v247 + 8) = v67;
  *(v247 + 16) = 0;
  *(v247 + 24) = 0;
  *(v247 + 32) = 4;
  swift_willThrow();
  (*(v275 + 8))(v243, v242);
  (v213[1].isa)(v283, v281);
  return v67;
}

uint64_t sub_1CA46D1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a2;
  v5 = sub_1CA94B1C8();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for TypedValueConversionContext(0);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA46D2B8, 0, 0);
}

uint64_t sub_1CA46D2B8()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v1);
  v2 = OUTLINED_FUNCTION_69_0();
  v3(v2);
  if (qword_1EC4420F0 != -1)
  {
    OUTLINED_FUNCTION_97_1(&qword_1EC4420F0);
  }

  v4 = qword_1EC4420F8;
  v5 = (v0[14] + *(v0[13] + 20));
  v5[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v5[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v5 = v4;
  objc_opt_self();
  OUTLINED_FUNCTION_158();

  OUTLINED_FUNCTION_160_2([v5 defaultContext]);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1CA46D404;
  OUTLINED_FUNCTION_73_0(v0[7]);
  OUTLINED_FUNCTION_9_2();

  return sub_1CA514FA4();
}

uint64_t sub_1CA46D404()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA46D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14();
  v13 = *(v12 + 128);
  sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
  v14 = [v13 valueType];
  v15 = [objc_allocWithZone(MEMORY[0x1E69AC7F0]) init];
  OUTLINED_FUNCTION_69_0();
  LOBYTE(v13) = sub_1CA94CFD8();

  if (v13 & 1) != 0 && (v16 = [*(v12 + 128) value], sub_1CA94D258(), swift_unknownObjectRelease(), sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8), (swift_dynamicCast()))
  {
    *(v12 + 144) = *(v12 + 48);
    v17 = swift_task_alloc();
    *(v12 + 152) = v17;
    *v17 = v12;
    v17[1] = sub_1CA46D750;
    v18 = OUTLINED_FUNCTION_151();

    return sub_1CA46E134(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_9_22();
    sub_1CA4715A8(v21, v22);

    v23 = OUTLINED_FUNCTION_1_3();

    return v24(v23);
  }
}

uint64_t sub_1CA46D6D0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_9_22();
  sub_1CA4715A8(v1, v2);

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA46D750()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v4 + 160) = v0;

  if (!v0)
  {
    *(v4 + 168) = v1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA46D854()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_9_22();
  sub_1CA4715A8(v2, v3);

  v4 = OUTLINED_FUNCTION_1_3();

  return v5(v4);
}

uint64_t sub_1CA46D8DC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 128);

  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_9_22();
  sub_1CA4715A8(v2, v3);

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA46D96C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1CA94ADC8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1CA94AC88();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_1CA949F78();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_1CA94B168();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_1CA94B1C8();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA46DBAC, 0, 0);
}

uint64_t sub_1CA46DBAC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v74 = v19;
  v20 = v19[18];
  v21 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v21);
  v22 = *(v20 + 8);
  v23 = OUTLINED_FUNCTION_20_0();
  v22(v23);
  v24 = OUTLINED_FUNCTION_70();
  v26 = v25(v24);
  if (v26 == *MEMORY[0x1E69DB2E8])
  {
    v27 = v19[19];
    v28 = v19[2];
    (*(v19[15] + 8))(v19[16], v19[14]);
    sub_1CA94AD68();
    v29 = type metadata accessor for WFRemoteAppValue(0);
    v30 = objc_allocWithZone(v29);
    sub_1CA560484(v28, v27);
    OUTLINED_FUNCTION_40();
    type metadata accessor for WFRemoteAppEntityContentItem();
    v73[3] = v29;
    v73[0] = v30;
    v31 = v30;
    if (!sub_1CA470A0C(v73))
    {
      sub_1CA949C58();
      v43 = OUTLINED_FUNCTION_56_5();
      v44(v43);
      v45 = v31;
      v46 = sub_1CA949F68();
      v47 = sub_1CA94CC18();

      v48 = os_log_type_enabled(v46, v47);
      v50 = v19[12];
      v49 = v19[13];
      v51 = v19[11];
      if (v48)
      {
        v70 = v45;
        v72 = v19[13];
        v53 = v19[6];
        v52 = v19[7];
        v68 = v19[5];
        OUTLINED_FUNCTION_60_5();
        swift_slowAlloc();
        v69 = OUTLINED_FUNCTION_141_3();
        v71 = OUTLINED_FUNCTION_254();
        v73[0] = v71;
        OUTLINED_FUNCTION_134_3(4.8151e-34);
        sub_1CA94AC28();
        sub_1CA94ADA8();
        (*(v53 + 8))(v52, v68);
        v54 = OUTLINED_FUNCTION_70();
        v55(v54);
        v56 = OUTLINED_FUNCTION_135_2();
        sub_1CA26B54C(v56, v57, v58);

        OUTLINED_FUNCTION_115_3();
        v59 = v70;
        *(v51 + 14) = v70;
        *v69 = v70;
        v60 = v70;
        OUTLINED_FUNCTION_140_3(&dword_1CA256000, v46, v47, "[%s] Unable to make a remote app entity content item from value: %@");
        sub_1CA27080C(v69, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_76_4();
        __swift_destroy_boxed_opaque_existential_0(v71);
        OUTLINED_FUNCTION_76_4();
        OUTLINED_FUNCTION_51();

        (*(v50 + 8))(v72, v51);
      }

      else
      {

        v61 = OUTLINED_FUNCTION_70();
        v62(v61);
        (*(v50 + 8))(v49, v51);
        v59 = v45;
      }

      v63 = sub_1CA471600();
      v64 = OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v63);
      OUTLINED_FUNCTION_35_9(v64, v65);
      swift_willThrow();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_90_0();

      __asm { BRAA            X1, X16 }
    }

    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v33 = OUTLINED_FUNCTION_137_3(v32);
    v34 = OUTLINED_FUNCTION_130_2(v33, xmmword_1CA9813B0);
    sub_1CA46934C(v34);
LABEL_6:

    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_90_0();

    __asm { BRAA            X2, X16 }
  }

  if (v26 == *MEMORY[0x1E69DB2E0])
  {
    v35 = v19[2];
    v36 = [v35 valueType];
    sub_1CA94AD68();
    sub_1CA94B0F8();
    v37 = OUTLINED_FUNCTION_20_0();
    v22(v37);
    OUTLINED_FUNCTION_119();
    v31 = sub_1CA94C368();

    v38 = [v36 wf:v35 contentCollectionFromLinkValue:v31 appBundleIdentifier:0 displayedBundleIdentifier:1 disclosureLevel:?];

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_90_0();

  return sub_1CA94D7E8();
}

id sub_1CA46E0C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_171();
  v4 = sub_1CA948BF8();
  v5 = [v2 initWithData_];

  v6 = OUTLINED_FUNCTION_116();
  sub_1CA266F2C(v6, v7);
  return v5;
}

uint64_t sub_1CA46E134(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  v4 = sub_1CA9499E8();
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D08, &qword_1CA985B60);
  v3[42] = swift_task_alloc();
  v5 = sub_1CA949768();
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  v6 = sub_1CA949838();
  v3[46] = v6;
  v3[47] = *(v6 - 8);
  v3[48] = swift_task_alloc();
  v7 = sub_1CA949868();
  v3[49] = v7;
  v3[50] = *(v7 - 8);
  v3[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445B80, &unk_1CA985B50);
  v3[52] = swift_task_alloc();
  v8 = sub_1CA9498A8();
  v3[53] = v8;
  v3[54] = *(v8 - 8);
  v3[55] = swift_task_alloc();
  v9 = sub_1CA9498C8();
  v3[56] = v9;
  v3[57] = *(v9 - 8);
  v3[58] = swift_task_alloc();
  v10 = sub_1CA949878();
  v3[59] = v10;
  v3[60] = *(v10 - 8);
  v3[61] = swift_task_alloc();
  v11 = sub_1CA94ADC8();
  v3[62] = v11;
  v3[63] = *(v11 - 8);
  v3[64] = swift_task_alloc();
  v12 = sub_1CA94AD88();
  v3[65] = v12;
  v3[66] = *(v12 - 8);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v13 = sub_1CA94AC88();
  v3[69] = v13;
  v3[70] = *(v13 - 8);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v14 = sub_1CA949F78();
  v3[73] = v14;
  v3[74] = *(v14 - 8);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v15 = sub_1CA94CEF8();
  v3[78] = v15;
  v3[79] = *(v15 - 8);
  v3[80] = swift_task_alloc();
  v16 = sub_1CA94CF08();
  v3[81] = v16;
  v3[82] = *(v16 - 8);
  v3[83] = swift_task_alloc();
  v17 = sub_1CA94B168();
  v3[84] = v17;
  v3[85] = *(v17 - 8);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v18 = sub_1CA94B1C8();
  v3[88] = v18;
  v3[89] = *(v18 - 8);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA46E7F0, 0, 0);
}

uint64_t sub_1CA46E7F0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19[89];
  v21 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v21);
  v22 = *(v20 + 8);
  v19[93] = v22;
  v19[94] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23 = OUTLINED_FUNCTION_20_0();
  v22(v23);
  v24 = OUTLINED_FUNCTION_70();
  v26 = v25(v24);
  if (v26 == *MEMORY[0x1E69DB2E8])
  {
    v27 = *(v19[85] + 8);
    v27(v19[87], v19[84]);
    v28 = sub_1CA94AD68();
    MEMORY[0x1CCA9FFE0](v28);
    v29 = OUTLINED_FUNCTION_20_0();
    v22(v29);
    v66 = sub_1CA94B148();
    v68 = v67;
    v69 = v19[60];
    v70 = v19[61];
    v71 = v19[59];
    v141 = v19[51];
    v72 = v19[50];
    v145 = v19[49];
    v27(v19[86], v19[84]);
    *v70 = v66;
    v70[1] = v68;
    (*(v69 + 104))(v70, *MEMORY[0x1E698AE18], v71);
    sub_1CA9498B8();
    v73 = [objc_opt_self() defaultEnvironment];
    v74 = sub_1CA25B3D0(0, &qword_1EC444D28, 0x1E69ACF10);
    v75 = MEMORY[0x1E698AE78];
    v19[21] = v74;
    v19[22] = v75;
    v19[18] = v73;
    sub_1CA949858();
    (*(v72 + 104))(v141, *MEMORY[0x1E698AE10], v145);
    OUTLINED_FUNCTION_20_0();
    sub_1CA949898();
    v76 = swift_task_alloc();
    v19[99] = v76;
    *v76 = v19;
    v76[1] = sub_1CA46F7A4;
    OUTLINED_FUNCTION_73_0(v19[58]);
    OUTLINED_FUNCTION_51_0();

    return MEMORY[0x1EEDEBED0](v77, v78, v79, v80, v81, v82, v83, v84, a10, a11, a12, a13);
  }

  if (v26 == *MEMORY[0x1E69DB2E0])
  {
    v30 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) init];
    sub_1CA94AD68();
    sub_1CA94B0F8();
    v31 = OUTLINED_FUNCTION_69_0();
    v22(v31);
    OUTLINED_FUNCTION_41_0();
    v32 = sub_1CA94C368();

    v19[33] = 0;
    v33 = OUTLINED_FUNCTION_86_2();
    v35 = [v33 v34];

    v36 = v19[33];
    if (v35)
    {
      v37 = v19[37];
      sub_1CA25B3D0(0, &unk_1EC441A38, 0x1E69AC800);
      OUTLINED_FUNCTION_5_3();
      v38 = sub_1CA94C658();
      v39 = v36;

      v40 = swift_task_alloc();
      *(v40 + 16) = v37;
      sub_1CA3E4C5C(sub_1CA471CF8, v40, v38);
      v42 = v41;
      v19[95] = v41;

      if (v42)
      {
        v43 = v19[83];
        v44 = v19[82];
        v45 = v19[81];
        v46 = v19[80];
        v47 = v19[79];
        v48 = v19[78];
        v49 = v19[36];
        sub_1CA25B3D0(0, &unk_1EC445BB0, 0x1E69ACE00);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v51 = OUTLINED_FUNCTION_137_3(v50);
        *(v51 + 16) = xmmword_1CA9813B0;
        *(v51 + 32) = v49;
        *v43 = v51;
        (*(v44 + 104))(v43, *MEMORY[0x1E69ACAC8], v45);
        *v46 = v42;
        (*(v47 + 104))(v46, *MEMORY[0x1E69ACB00], v48);
        v52 = objc_allocWithZone(MEMORY[0x1E69ACFD8]);
        v53 = v49;
        v54 = v42;
        [v52 init];
        OUTLINED_FUNCTION_20_0();
        v55 = sub_1CA94CF18();
        v19[96] = v55;
        v56 = [objc_opt_self() policyWithEntityMetadata_];
        v19[34] = 0;
        v57 = [v56 connectionWithError_];
        v19[97] = v57;

        v58 = v19[34];
        if (v57)
        {
          v19[2] = v19;
          v19[7] = v19 + 35;
          v19[3] = sub_1CA46F3B8;
          v59 = swift_continuation_init();
          v19[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D0, &qword_1CA988F20);
          v19[10] = MEMORY[0x1E69E9820];
          v19[11] = 1107296256;
          v19[12] = sub_1CA4F4758;
          v19[13] = &block_descriptor_74;
          v19[14] = v59;
          v60 = v58;
          v61 = OUTLINED_FUNCTION_136();
          [v61 v62];
          OUTLINED_FUNCTION_51_0();

          return MEMORY[0x1EEE6DEC8](v63);
        }

        v111 = v58;
        OUTLINED_FUNCTION_108_3();
        sub_1CA948AD8();

        swift_willThrow();
LABEL_23:
        OUTLINED_FUNCTION_5_26();
        OUTLINED_FUNCTION_7_22();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_51_0();

        __asm { BRAA            X1, X16 }
      }

      v86 = v19[76];
      v87 = v19[70];
      v88 = v19[69];
      v142 = v19[72];
      v146 = v19[68];
      v149 = v19[67];
      v89 = v19[66];
      v90 = v19[65];
      v92 = v19[37];
      v91 = v19[38];
      sub_1CA949C58();
      (*(v87 + 16))(v142, v91, v88);
      v93 = *(v89 + 16);
      v93(v146, v92, v90);
      v93(v149, v92, v90);
      v94 = sub_1CA949F68();
      sub_1CA94CC18();
      OUTLINED_FUNCTION_124_4();
      if (os_log_type_enabled(v94, v95))
      {
        v137 = v19[91];
        v139 = v19[88];
        v150 = v19[76];
        v143 = v19[74];
        v147 = v19[73];
        v96 = v19[72];
        v97 = v19[70];
        v131 = v19[69];
        v132 = v19[68];
        v133 = v19[66];
        v135 = v19[65];
        v136 = v19[67];
        v98 = v19[63];
        v99 = v19[64];
        v130 = v19[62];
        v100 = OUTLINED_FUNCTION_254();
        swift_slowAlloc();
        *v100 = 136315650;
        v138 = v86;
        sub_1CA94AC28();
        v101 = sub_1CA94ADA8();
        (*(v98 + 8))(v99, v130);
        (*(v97 + 8))(v96, v131);
        v102 = OUTLINED_FUNCTION_41_0();
        sub_1CA26B54C(v102, v103, v104);
        OUTLINED_FUNCTION_108_3();

        *(v100 + 4) = v101;
        *(v100 + 12) = 2080;
        sub_1CA94AD78();
        OUTLINED_FUNCTION_1_2();
        v134 = *(v133 + 8);
        v134(v132, v135);
        v105 = OUTLINED_FUNCTION_52_0();
        sub_1CA26B54C(v105, v106, v107);
        OUTLINED_FUNCTION_171();

        *(v100 + 14) = v132;
        *(v100 + 22) = 2080;
        sub_1CA94AD68();
        sub_1CA94B0F8();
        OUTLINED_FUNCTION_1_2();
        (v22)(v137, v139);
        v134(v136, v135);
        v108 = OUTLINED_FUNCTION_52_0();
        sub_1CA26B54C(v108, v109, v110);
        OUTLINED_FUNCTION_171();

        *(v100 + 24) = v137;
        _os_log_impl(&dword_1CA256000, v94, v138, "[%s] Unable to find %s in %s — does this type exist?", v100, 0x20u);
        OUTLINED_FUNCTION_144_2();
        OUTLINED_FUNCTION_138();
        OUTLINED_FUNCTION_26();

        (*(v143 + 8))(v150, v147);
      }

      else
      {
        v151 = v19[76];
        v112 = v19[74];
        v144 = v19[72];
        v148 = v19[73];
        v113 = v19[70];
        v140 = v19[69];
        v114 = v19[68];
        v115 = v19[67];
        v116 = v19[66];
        v117 = v19[65];

        v118 = *(v116 + 8);
        v118(v115, v117);
        v118(v114, v117);
        (*(v113 + 8))(v144, v140);
        (*(v112 + 8))(v151, v148);
      }

      v119 = v19[91];
      v120 = v19[37];
      sub_1CA94AD68();
      v121 = sub_1CA94B0F8();
      v123 = v122;
      v124 = OUTLINED_FUNCTION_20_0();
      v22(v124);
      sub_1CA94AD78();
      OUTLINED_FUNCTION_5_0();
      v125 = sub_1CA471600();
      OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v125);
      *v126 = v121;
      *(v126 + 8) = v123;
      *(v126 + 16) = v120;
      *(v126 + 24) = v119;
      *(v126 + 32) = 2;
    }

    else
    {
      v85 = v36;
      OUTLINED_FUNCTION_87();
      sub_1CA948AD8();
    }

    swift_willThrow();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_51_0();

  return sub_1CA94D7E8();
}

uint64_t sub_1CA46F3B8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 784) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA46F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_145_1();
  v60 = *MEMORY[0x1E69E9840];
  v29 = *(v28 + 280);
  v30 = *(v28 + 288);
  v31 = [v29 value];

  sub_1CA949C58();
  v32 = v30;
  v33 = v31;
  v34 = sub_1CA949F68();
  v35 = sub_1CA94CC38();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v28 + 768);
    v37 = *(v28 + 760);
    v38 = *(v28 + 288);
    OUTLINED_FUNCTION_60_5();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412546;
    *(v39 + 4) = v33;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v38;
    *v40 = v33;
    v40[1] = v38;
    v41 = v38;
    v42 = v33;
    _os_log_impl(&dword_1CA256000, v34, v35, "Received %@ for entity id lookup: %@", v39, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AE0, &qword_1CA985B70);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_76_4();

    v43 = *(v28 + 776);
  }

  else
  {
    v44 = *(v28 + 768);

    v43 = *(v28 + 760);
  }

  v45 = OUTLINED_FUNCTION_3_3();
  v46(v45);
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_7_22();
  v58 = v48;
  v59 = v47;

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_251();

  return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, v33, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v58, v59, v60, a26, a27, a28);
}

uint64_t sub_1CA46F7A4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v7 = v4[54];
  v5[100] = v8;
  v5[101] = v2;

  v9 = v4[55];
  v10 = v4[53];
  if (!v2)
  {
    v5[102] = a2;
  }

  (*(v7 + 8))(v9, v10);
  v11 = OUTLINED_FUNCTION_177();
  v12(v11);
  v13 = OUTLINED_FUNCTION_162();
  v14(v13);
  __swift_destroy_boxed_opaque_existential_0(v5 + 18);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1CA46FA44()
{
  v1 = v0[93];
  v2 = v0[91];
  v3 = v0[88];
  v4 = v0[45];
  v18 = v0[44];
  v19 = v0[43];
  v20 = v0[102];
  v17 = v0[36];
  ObjectType = swift_getObjectType();
  sub_1CA94AD68();
  sub_1CA94B0F8();
  OUTLINED_FUNCTION_1_2();
  v1(v2, v3);
  sub_1CA949778();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_52_0();
  sub_1CA949758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445B90, &qword_1CA988F10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CA981310;
  *(v10 + 56) = sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
  *(v10 + 64) = sub_1CA471C30();
  *(v10 + 32) = v17;
  v11 = v17;
  OUTLINED_FUNCTION_129();
  sub_1CA949828();

  (*(v18 + 8))(v4, v19);
  v12 = *(v20 + 8);
  OUTLINED_FUNCTION_107_0();
  sub_1CA470974();
  v13 = swift_task_alloc();
  v0[103] = v13;
  *v13 = v0;
  v13[1] = sub_1CA46FC64;
  v14 = v0[48];
  v15 = v0[41];

  return MEMORY[0x1EEDEBDD0](v0 + 23, v14, v15, ObjectType, v12);
}

uint64_t sub_1CA46FC64()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 832) = v0;

  (*(v2[40] + 8))(v2[41], v2[39]);
  v5 = OUTLINED_FUNCTION_70();
  v6(v5);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1CA46FE4C()
{
  v1 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  OUTLINED_FUNCTION_20_0();
  sub_1CA949848();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445BA0, &qword_1CA988F18);
  OUTLINED_FUNCTION_3_3();
  sub_1CA94D568();
  OUTLINED_FUNCTION_11();

  v39 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1CA471C98(v3, (v0 + 28));
      __swift_project_boxed_opaque_existential_1(v0 + 28, v0[31]);
      OUTLINED_FUNCTION_108_3();
      v5 = sub_1CA9498D8();
      v6 = __swift_destroy_boxed_opaque_existential_0(v0 + 28);
      if (v5)
      {
        MEMORY[0x1CCAA1490](v6);
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
        v4 = v39;
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1CA25B410(v4))
  {
    sub_1CA275D70(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0](0, v4);
    }

    else
    {
      v7 = *(v4 + 32);
    }

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v0 + 23);
    OUTLINED_FUNCTION_7_22();

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_51_0();

    __asm { BRAA            X2, X16 }
  }

  sub_1CA949C58();
  v10 = OUTLINED_FUNCTION_56_5();
  v11(v10);
  v12 = sub_1CA949F68();
  v13 = sub_1CA94CC18();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[75];
  v16 = v0[74];
  if (v14)
  {
    v38 = v0[73];
    v36 = v13;
    v18 = v0[63];
    v17 = v0[64];
    v35 = v0[62];
    v19 = swift_slowAlloc();
    v40 = OUTLINED_FUNCTION_254();
    *v19 = 136315138;
    v37 = v15;
    sub_1CA94AC28();
    v20 = sub_1CA94ADA8();
    (*(v18 + 8))(v17, v35);
    v21 = OUTLINED_FUNCTION_177();
    v22(v21);
    v23 = OUTLINED_FUNCTION_52_0();
    sub_1CA26B54C(v23, v24, v25);
    OUTLINED_FUNCTION_171();

    *(v19 + 4) = v20;
    _os_log_impl(&dword_1CA256000, v12, v36, "[%s] Unable to get LNValues from remote query", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_54_5();

    (*(v16 + 8))(v37, v38);
  }

  else
  {

    v26 = OUTLINED_FUNCTION_177();
    v27(v26);
    v28 = OUTLINED_FUNCTION_3_3();
    v30(v28, v29);
  }

  v31 = sub_1CA471600();
  OUTLINED_FUNCTION_127(&type metadata for TypedValueToContentGraphResolutionError, v31);
  *v32 = 1;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = 5;
  swift_willThrow();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_7_22();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_51_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1CA470468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_145_1();
  v57 = *MEMORY[0x1E69E9840];
  v29 = v28[97];
  v30 = v28[96];
  v31 = v28[95];
  swift_willThrow();

  OUTLINED_FUNCTION_5_26();
  v42 = v32;
  v43 = v28[72];
  v44 = v28[71];
  v45 = v28[68];
  v46 = v28[67];
  v47 = v28[64];
  v48 = v28[61];
  v49 = v28[58];
  v50 = v28[55];
  v51 = v28[52];
  v52 = v28[51];
  v53 = v28[48];
  v54 = v28[45];
  v55 = v28[42];
  v56 = v28[41];

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_251();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, a24, v57, a26, a27, a28);
}

uint64_t sub_1CA470624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_145_1();
  v38 = *MEMORY[0x1E69E9840];
  v28 = OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_50_4(v28);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_251();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v38, a26, a27, a28);
}

uint64_t sub_1CA470770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_145_1();
  v38 = *MEMORY[0x1E69E9840];
  swift_unknownObjectRelease();
  v28 = OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_50_4(v28);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_251();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v38, a26, a27, a28);
}

uint64_t sub_1CA4708C4(id *a1)
{
  v1 = [*a1 identifier];
  v2 = sub_1CA94C3A8();
  v4 = v3;

  if (v2 == sub_1CA94AD78() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();
  }

  return v7 & 1;
}

uint64_t sub_1CA470974()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BC0, &qword_1CA985B40);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1CA949D18();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_1CA9499D8();
}

uint64_t sub_1CA470A0C(void *a1)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_1CA94D7D8();
  OUTLINED_FUNCTION_11();
  v4 = [swift_getObjCClassFromMetadata() itemWithObject_];
  OUTLINED_FUNCTION_171();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_1CA470A7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;

  return TypedValue.resolve(in:)();
}

uint64_t sub_1CA470B10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;

  return TypedValue.resolve(to:in:)();
}

uint64_t sub_1CA470BB4()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;
  v2 = OUTLINED_FUNCTION_151();

  return TypedValue.ID.resolve(in:)(v2);
}

uint64_t sub_1CA470C40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;

  return sub_1CA31D7BC();
}

uint64_t WFContentCollection.resolve(in:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  v4 = v1;
  v2 = v0;

  return v4(v2);
}

uint64_t sub_1CA470D58(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441928, 0x1E6996E20);
    sub_1CA94C658();

    return sub_1CA35FF84();
  }
}

uint64_t sub_1CA470E00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v5 = a4;

    return sub_1CA35FF80();
  }

  else
  {
    sub_1CA94C658();
    sub_1CA94C658();
    OUTLINED_FUNCTION_20_0();

    return sub_1CA35E734();
  }
}

uint64_t sub_1CA470EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;

  return WFContentCollection.resolve(in:)();
}

uint64_t sub_1CA470F3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3888;

  return WFContentCollection.resolve(to:in:)();
}

id sub_1CA470FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a3)
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1CA94C368();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1CA94C368();

LABEL_6:
  v12 = [v6 initWithType:a1 name:v10 identificationHint:v11 icon:a6];

  return v12;
}

void *sub_1CA4710A8(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5, void *a6)
{
  [v6 initWithVariableSource:a1 parameter:a2 isInputParameter:a3 & 1 environment:a4 contentAttributionTracker:a5 widgetSizeClass:a6];
  OUTLINED_FUNCTION_139();
  swift_unknownObjectRelease();

  return v6;
}

id sub_1CA471124(void *a1, uint64_t a2)
{
  sub_1CA94C368();
  OUTLINED_FUNCTION_151();

  v5 = [v2 initWithAmount:a1 currencyCode:v3];

  return v5;
}

id sub_1CA47118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = sub_1CA94C368();

  if (a4)
  {
    v19 = sub_1CA94C368();

    if (a6)
    {
LABEL_3:
      v20 = sub_1CA94C368();

      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  if (a8 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_1CA948BF8();
    sub_1CA39F318(a7, a8);
  }

  if (a10 >> 60 != 15)
  {
    v22 = sub_1CA948BF8();
    sub_1CA39F318(a9, a10);
    if (a12)
    {
      goto LABEL_11;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v22 = 0;
  if (!a12)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = sub_1CA94C368();

LABEL_14:
  v24 = sub_1CA94C648();

  v25 = [v13 initWithTitle:v18 subtitle:v19 altText:v20 imageData:v21 snippetPluginModelData:v22 snippetPluginModelBundleIdentifier:v23 synonyms:v24];

  return v25;
}

id sub_1CA471340(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithBundleIdentifier:v5 displayRepresentation:a3];

  return v6;
}

id sub_1CA4713A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  if (a2)
  {
    v16 = sub_1CA94C368();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v16 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  v17 = sub_1CA94C648();

  if (a6)
  {
LABEL_4:
    v18 = sub_1CA94C1A8();

    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v19 = sub_1CA948CB8();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v19) != 1)
  {
    v20 = sub_1CA948C58();
    (*(*(v19 - 8) + 8))(a7, v19);
  }

  v21 = [v9 initWithRawResponse:v16 list:v17 BOOLeanValue:a4 numberValue:a5 dictionary:v18 date:v20 responseDataModel:a8];

  return v21;
}

uint64_t sub_1CA47154C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_40();
  v5(v4);
  OUTLINED_FUNCTION_52();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1CA4715A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1CA471600()
{
  result = qword_1EC445A98;
  if (!qword_1EC445A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A98);
  }

  return result;
}

unint64_t sub_1CA471654()
{
  result = qword_1EC445AB8;
  if (!qword_1EC445AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC445AB0, &unk_1CA988C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445AB8);
  }

  return result;
}

uint64_t sub_1CA4716E0(uint64_t a1)
{
  result = sub_1CA47176C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CA47176C()
{
  result = qword_1EC442210;
  if (!qword_1EC442210)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC442210);
  }

  return result;
}

void sub_1CA471800(uint64_t a1)
{
  sub_1CA47186C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1CA47186C(uint64_t a1)
{
  if (!qword_1EC441CE8)
  {
    sub_1CA94B258();
    v1 = sub_1CA94D098();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441CE8);
    }
  }
}

uint64_t dispatch thunk of ContentGraphRepresentable.resolve(in:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_152_2(v1);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1CA3D338C;
  v4 = OUTLINED_FUNCTION_188();

  return v6(v4);
}

uint64_t dispatch thunk of ContentGraphRepresentable.resolve(to:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA471D38;

  return v11(a1, a2, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit39TypedValueToContentGraphResolutionErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1CA471B24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA471B64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA471BAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1CA471BD8()
{
  result = qword_1EC443AB0;
  if (!qword_1EC443AB0)
  {
    sub_1CA94ADC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443AB0);
  }

  return result;
}

unint64_t sub_1CA471C30()
{
  result = qword_1EC445B98;
  if (!qword_1EC445B98)
  {
    sub_1CA25B3D0(255, &qword_1EC445B70, 0x1E69AC7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445B98);
  }

  return result;
}

uint64_t sub_1CA471C98(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_39();
  (*v3)(a2);
  return a2;
}

void OUTLINED_FUNCTION_76_4()
{

  JUMPOUT(0x1CCAA4BF0);
}

void OUTLINED_FUNCTION_123_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v14 + 14) = v11;
  *(v14 + 22) = v13;
  *(v12 + 24) = a11;
}

uint64_t OUTLINED_FUNCTION_137_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_138_4()
{
  v5 = *(v2 + 392);
  v6 = *(v2 + 400);
  *(v3 - 128) = v0;
  *(v3 - 120) = v6;
  *(v3 - 112) = v5;
  *(v3 - 104) = v1;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_141_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_160_2(uint64_t result)
{
  *(v1 + *(v2 + 24)) = result;
  *(v1 + *(v2 + 28)) = 0;
  return result;
}

void OUTLINED_FUNCTION_163_2(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x20u);
}

unint64_t OUTLINED_FUNCTION_164_2()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return ContentGraphRepresentationContext.debugDescription.getter();
}

unint64_t OUTLINED_FUNCTION_165_3()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return ContentGraphRepresentationContext.debugDescription.getter();
}

uint64_t OUTLINED_FUNCTION_167_1()
{

  return swift_arrayDestroy();
}

uint64_t sub_1CA471F78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v100 = xmmword_1CA981400;
  *(inited + 16) = xmmword_1CA981400;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v2 = sub_1CA94C1E8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x746E656D75636F44;
  v91 = inited;
  *(inited + 88) = 0xEF736E6F69746341;
  *&v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v99 = xmmword_1CA981310;
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1CA981310;
  v90 = v0;
  v4 = swift_initStackObject();
  *(v4 + 16) = v100;
  *(v4 + 32) = 0x79726F6765746143;
  *(v4 + 40) = 0xE800000000000000;
  v5 = *MEMORY[0x1E6996FC8];
  type metadata accessor for WFContentCategory(0);
  *(v4 + 48) = v5;
  *(v4 + 72) = v6;
  *(v4 + 80) = 0x7470697263736544;
  *(v4 + 88) = 0xEB000000006E6F69;
  v94 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v7 = swift_initStackObject();
  *(v7 + 16) = v99;
  *(v7 + 32) = @"DescriptionSummary";
  v8 = v5;
  v9 = @"DescriptionSummary";
  v10 = sub_1CA94C438("Opens the input as a PDF in Books.", 34);
  v98 = v11;
  v12 = sub_1CA94C438("Opens the input as a PDF in Books.", 34);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  *&v99 = v16;
  *&v100 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v85 - v100;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v97 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v95 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v96 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v85 - v96;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v10, v98, v12, v14, 0, 0, v17, v21);
  v98 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v7 + 64) = v98;
  *(v7 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v24 = sub_1CA94C1E8();
  v25 = v94;
  *(v4 + 96) = sub_1CA6B3784(v24);
  *(v4 + 120) = v25;
  *(v4 + 128) = 0x65707954656C6946;
  *(v4 + 136) = 0xE900000000000073;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v94 = v26;
  *(v4 + 144) = &unk_1F49FBD88;
  *(v4 + 168) = v26;
  strcpy((v4 + 176), "InputMapping");
  *(v4 + 189) = 0;
  *(v4 + 190) = -5120;
  v27 = swift_allocObject();
  v93 = xmmword_1CA97EDF0;
  *(v27 + 16) = xmmword_1CA97EDF0;
  v28 = v27;
  v88 = v27;
  v29 = swift_initStackObject();
  *(v29 + 16) = v93;
  *(v29 + 32) = 0x654B656372756F53;
  *(v29 + 40) = 0xE900000000000079;
  v89 = 0xEA00000000007475;
  *(v29 + 48) = 0x706E49736B6F6F42;
  *(v29 + 56) = 0xEA00000000007475;
  v30 = MEMORY[0x1E69E6158];
  *(v29 + 72) = MEMORY[0x1E69E6158];
  *(v29 + 80) = 0x7954656372756F53;
  *(v29 + 120) = v30;
  *(v29 + 88) = 0xEA00000000006570;
  *(v29 + 96) = 0x7475706E49;
  *(v29 + 104) = 0xE500000000000000;
  v31 = v30;
  *(v28 + 32) = sub_1CA94C1E8();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CA9813C0;
  *(v32 + 32) = 0x6574656D61726150;
  *(v32 + 40) = 0xEB00000000495572;
  v90 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v33 = swift_allocObject();
  *(v33 + 16) = v93;
  *(v33 + 32) = @"Class";
  *(v33 + 40) = 0xD000000000000019;
  *(v33 + 48) = 0x80000001CA99B030;
  *(v33 + 64) = v31;
  *(v33 + 72) = @"Label";
  v34 = @"Class";
  v35 = @"Label";
  *&v93 = sub_1CA94C438("File (Parameter Label)", 22);
  v87 = v36;
  v37 = sub_1CA94C438("File", 4);
  v86 = v38;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v85 - v100;
  sub_1CA948D98();
  v40 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v85 - v96;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v93, v87, v37, v86, 0, 0, v39, v41);
  *(v33 + 104) = v98;
  *(v33 + 80) = v43;
  _s3__C3KeyVMa_0(0);
  sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v44 = sub_1CA94C1E8();
  v45 = v90;
  *(v32 + 48) = sub_1CA2F864C(v44);
  *(v32 + 72) = v45;
  *(v32 + 80) = 0x654B656372756F53;
  *(v32 + 88) = 0xE900000000000079;
  *(v32 + 96) = 0x706E49736B6F6F42;
  *(v32 + 104) = v89;
  v46 = MEMORY[0x1E69E6158];
  *(v32 + 120) = MEMORY[0x1E69E6158];
  *(v32 + 128) = 0x7954656372756F53;
  *(v32 + 168) = v46;
  *(v32 + 136) = 0xEA00000000006570;
  *(v32 + 144) = 0x6574656D61726150;
  *(v32 + 152) = 0xE900000000000072;
  v47 = sub_1CA94C1E8();
  v48 = v88;
  *(v88 + 40) = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *&v93 = v49;
  *(v4 + 192) = v48;
  *(v4 + 216) = v49;
  *(v4 + 224) = 0xD000000000000010;
  *(v4 + 232) = 0x80000001CA9B8B90;
  *(v4 + 264) = sub_1CA948CB8();
  __swift_allocate_boxed_opaque_existential_1((v4 + 240));
  sub_1CA948C28();
  *(v4 + 272) = 1701667150;
  *(v4 + 280) = 0xE400000000000000;
  v50 = sub_1CA94C438("Add PDF to Books (Action Name)", 30);
  v88 = v51;
  v89 = v50;
  v52 = sub_1CA94C438("Add PDF to Books", 16);
  v87 = v53;
  v90 = &v85;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v85 - v100;
  sub_1CA948D98();
  v55 = v97;
  v56 = [v97 bundleURL];
  v86 = &v85;
  MEMORY[0x1EEE9AC00](v56);
  v57 = v96;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v4 + 288) = sub_1CA2F9F14(v89, v88, v52, v87, 0, 0, v54, &v85 - v57);
  *(v4 + 312) = v98;
  *(v4 + 320) = 0xD000000000000010;
  *(v4 + 328) = 0x80000001CA9A8F60;
  v59 = sub_1CA94C438("Add ${BooksInput} to Books (Parameter Summary)", 46);
  v88 = v60;
  v89 = v59;
  v61 = sub_1CA94C438("Add ${BooksInput} to Books", 26);
  v63 = v62;
  v90 = &v85;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v85 - v100;
  sub_1CA948D98();
  v65 = [v55 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v89, v88, v61, v63, 0, 0, v64, &v85 - v57);
  v68 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v4 + 360) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v4 + 336) = v68;
  v69 = MEMORY[0x1E69E6158];
  v70 = sub_1CA94C1E8();
  v72 = v91;
  v71 = v92;
  *(v92 + 32) = v70;
  *(v72 + 96) = v71;
  *(v72 + 120) = v93;
  strcpy((v72 + 128), "DocumentTypes");
  *(v72 + 142) = -4864;
  *(v72 + 144) = &unk_1F49FBDD8;
  v73 = v94;
  *(v72 + 168) = v94;
  strcpy((v72 + 176), "ExportedTypes");
  *(v72 + 190) = -4864;
  *(v72 + 192) = &unk_1F49FBE38;
  *(v72 + 216) = v73;
  *(v72 + 224) = 0xD000000000000010;
  *(v72 + 232) = 0x80000001CA9A8AF0;
  *(v72 + 240) = 0x3931393037343633;
  *(v72 + 248) = 0xE900000000000033;
  *(v72 + 264) = v69;
  *(v72 + 272) = 1701667150;
  *(v72 + 280) = 0xE400000000000000;
  v74 = sub_1CA94C438("Books (App Name)", 16);
  v76 = v75;
  v77 = sub_1CA94C438("Books", 5);
  v79 = v78;
  *&v93 = &v85;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v85 - v100;
  sub_1CA948D98();
  v81 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v85 - v96;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 288) = sub_1CA2F9F14(v74, v76, v77, v79, 0, 0, v80, v82);
  *(v72 + 312) = v98;
  *(v72 + 320) = 0x6D656863534C5255;
  *(v72 + 360) = v94;
  *(v72 + 328) = 0xEA00000000007365;
  *(v72 + 336) = &unk_1F49FBE78;
  return sub_1CA94C1E8();
}

uint64_t sub_1CA472D10()
{
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = sub_1CA94C1E8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001CA9AC960;
  *(inited + 96) = sub_1CA94C1E8();
  *(inited + 120) = v2;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v3 = sub_1CA94C438("Skype (App Name)", 16);
  v5 = v4;
  v6 = sub_1CA94C438("Skype", 5);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = v10;
  v11 = &v99 - v114;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v112 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v111 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v113 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v99 - v113;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v110 = v18;
  *(inited + 144) = v17;
  *(inited + 168) = v18;
  *(inited + 176) = 0x6D656863534C5255;
  *(inited + 184) = 0xEA00000000007365;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v106 = swift_allocObject();
  v107 = xmmword_1CA981310;
  *(v106 + 16) = xmmword_1CA981310;
  v19 = swift_initStackObject();
  v105 = v19;
  v108 = xmmword_1CA97EDF0;
  *(v19 + 16) = xmmword_1CA97EDF0;
  *(v19 + 32) = 0x736E6F69746341;
  *(v19 + 40) = 0xE700000000000000;
  v104 = swift_allocObject();
  *(v104 + 16) = v107;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981400;
  strcpy((v20 + 32), "ActionKeywords");
  *(v20 + 47) = -18;
  v21 = sub_1CA94C438("video|phone|number|dial|mobile|telephone", 40);
  v99 = v22;
  v100 = v21;
  v23 = sub_1CA94C438("video|phone|number|dial|mobile|telephone", 40);
  v25 = v24;
  v101 = &v99;
  MEMORY[0x1EEE9AC00](v23);
  v103 = inited;
  v26 = &v99 - v114;
  sub_1CA948D98();
  v27 = v112;
  v28 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v99 - v113;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 48) = sub_1CA2F9F14(v100, v99, v23, v25, 0, 0, v26, v29);
  v31 = v110;
  *(v20 + 72) = v110;
  *(v20 + 80) = 0x7470697263736544;
  *(v20 + 88) = 0xEB000000006E6F69;
  v101 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v32 = swift_initStackObject();
  *(v32 + 16) = v107;
  *(v32 + 32) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v34 = sub_1CA94C438("Calls the phone number or Skype name passed as input.", 53);
  v99 = v35;
  v100 = v34;
  v36 = sub_1CA94C438("Calls the phone number or Skype name passed as input.", 53);
  v38 = v37;
  *&v107 = &v99;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v99 - v114;
  sub_1CA948D98();
  v40 = [v27 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v99 - v113;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v100, v99, v36, v38, 0, 0, v39, v41);
  *(v32 + 64) = v31;
  *(v32 + 40) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v44 = sub_1CA94C1E8();
  v45 = v101;
  *(v20 + 96) = sub_1CA6B3784(v44);
  *(v20 + 120) = v45;
  *(v20 + 128) = 0x74616D726F46;
  *(v20 + 136) = 0xE600000000000000;
  *(v20 + 144) = 0xD000000000000013;
  *(v20 + 152) = 0x80000001CA9B8CF0;
  v46 = MEMORY[0x1E69E6158];
  *(v20 + 168) = MEMORY[0x1E69E6158];
  *(v20 + 176) = 0x696669746E656449;
  *(v20 + 184) = 0xEA00000000007265;
  *(v20 + 192) = 1819042147;
  *(v20 + 200) = 0xE400000000000000;
  *(v20 + 216) = v46;
  strcpy((v20 + 224), "InputMapping");
  *(v20 + 237) = 0;
  *(v20 + 238) = -5120;
  v47 = swift_allocObject();
  *(v47 + 16) = v108;
  v48 = v47;
  *&v107 = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1CA981380;
  *(v49 + 32) = 0xD000000000000013;
  *(v49 + 40) = 0x80000001CA9ACAF0;
  *(v49 + 48) = 0xD000000000000019;
  *(v49 + 56) = 0x80000001CA9B8D10;
  *(v49 + 72) = v46;
  strcpy((v49 + 80), "DestinationKey");
  *(v49 + 95) = -18;
  *(v49 + 96) = 0x6E65697069636572;
  *(v49 + 104) = 0xE900000000000074;
  *(v49 + 120) = v46;
  *(v49 + 128) = 0x74616E6974736544;
  *(v49 + 136) = 0xEF657079546E6F69;
  *(v49 + 144) = 0x74736275534C5255;
  *(v49 + 152) = 0xEF6E6F6974757469;
  *(v49 + 168) = v46;
  *(v49 + 176) = 0x73616C436D657449;
  *(v49 + 184) = 0xEB00000000736573;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 192) = &unk_1F49FBFA8;
  *(v49 + 216) = v50;
  *(v49 + 224) = 0x654B656372756F53;
  *(v49 + 232) = 0xE900000000000079;
  *(v49 + 240) = 0x7265506570796B53;
  *(v49 + 248) = 0xEB000000006E6F73;
  *(v49 + 264) = v46;
  *(v49 + 272) = 0x7954656372756F53;
  *(v49 + 312) = v46;
  *(v49 + 280) = 0xEA00000000006570;
  *(v49 + 288) = 0x7475706E49;
  *(v49 + 296) = 0xE500000000000000;
  *(v48 + 32) = sub_1CA94C1E8();
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA9813C0;
  *(v51 + 32) = 0x6574656D61726150;
  *(v51 + 40) = 0xEB00000000495572;
  v109 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v52 = swift_allocObject();
  *(v52 + 16) = v108;
  *(v52 + 32) = @"Class";
  *(v52 + 40) = 0xD000000000000017;
  *(v52 + 48) = 0x80000001CA9A37F0;
  *(v52 + 64) = v46;
  *(v52 + 72) = @"Label";
  v53 = @"Class";
  v54 = @"Label";
  v55 = sub_1CA94C438("Person (Parameter Label)", 24);
  v101 = v56;
  v102 = v55;
  v57 = sub_1CA94C438("Person", 6);
  v59 = v58;
  *&v108 = &v99;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v99 - v114;
  sub_1CA948D98();
  v61 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v99 - v113;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v102, v101, v57, v59, 0, 0, v60, v62);
  *(v52 + 104) = v110;
  *(v52 + 80) = v64;
  _s3__C3KeyVMa_0(0);
  sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v65 = sub_1CA94C1E8();
  v66 = v109;
  *(v51 + 48) = sub_1CA2F864C(v65);
  *(v51 + 72) = v66;
  *(v51 + 80) = 0x654B656372756F53;
  *(v51 + 88) = 0xE900000000000079;
  *(v51 + 96) = 0x7265506570796B53;
  *(v51 + 104) = 0xEB000000006E6F73;
  v67 = MEMORY[0x1E69E6158];
  *(v51 + 120) = MEMORY[0x1E69E6158];
  *(v51 + 128) = 0x7954656372756F53;
  *(v51 + 168) = v67;
  *(v51 + 136) = 0xEA00000000006570;
  *(v51 + 144) = 0x6574656D61726150;
  *(v51 + 152) = 0xE900000000000072;
  v68 = sub_1CA94C1E8();
  v69 = v107;
  *(v107 + 40) = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v109 = v70;
  *(v20 + 240) = v69;
  *(v20 + 264) = v70;
  *(v20 + 272) = 1701667150;
  *(v20 + 280) = 0xE400000000000000;
  v71 = sub_1CA94C438("Call via Skype (Action Name)", 28);
  *&v107 = v72;
  v73 = sub_1CA94C438("Call via Skype", 14);
  v75 = v74;
  *&v108 = &v99;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v99 - v114;
  sub_1CA948D98();
  v77 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = v113;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 288) = sub_1CA2F9F14(v71, v107, v73, v75, 0, 0, v76, &v99 - v78);
  *(v20 + 312) = v110;
  *(v20 + 320) = 0xD000000000000010;
  *(v20 + 328) = 0x80000001CA9A8F60;
  v80 = sub_1CA94C438("Call ${SkypePerson} (Parameter Summary)", 39);
  *&v108 = v81;
  v82 = sub_1CA94C438("Call ${SkypePerson}", 19);
  v84 = v83;
  v110 = &v99;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v99 - v114;
  sub_1CA948D98();
  v86 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v80, v108, v82, v84, 0, 0, v85, &v99 - v78);
  v89 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v20 + 360) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v20 + 336) = v89;
  v90 = MEMORY[0x1E69E6158];
  v91 = sub_1CA94C1E8();
  v92 = v104;
  *(v104 + 32) = v91;
  v93 = v105;
  v105[6] = v92;
  v94 = v109;
  v93[9] = v109;
  v93[10] = 0x656D65686353;
  v93[15] = v90;
  v93[11] = 0xE600000000000000;
  v93[12] = 0x6570796B73;
  v93[13] = 0xE500000000000000;
  v95 = sub_1CA94C1E8();
  v96 = v106;
  *(v106 + 32) = v95;
  v97 = v103;
  *(v103 + 216) = v94;
  *(v97 + 192) = v96;
  return sub_1CA94C1E8();
}

uint64_t sub_1CA473C88()
{
  v1318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v1320 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = sub_1CA94C1E8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000011;
  v1303 = 0xD000000000000011;
  *(inited + 88) = 0x80000001CA9AC960;
  *(inited + 96) = sub_1CA94C1E8();
  v1314 = v2;
  *(inited + 120) = v2;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v3 = sub_1CA94C438("iTranslate (App Name)", 21);
  v5 = v4;
  v6 = sub_1CA94C438("iTranslate", 10);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v1323 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1324 = v10;
  v11 = &v1287 - v1323;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v1325 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v1321 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v1322 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v1287 - v1322;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v1319 = v18;
  *(inited + 144) = v17;
  *(inited + 168) = v18;
  *(inited + 176) = 0x6D656863534C5255;
  *(inited + 184) = 0xEA00000000007365;
  v1316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v1302 = swift_allocObject();
  v1317 = xmmword_1CA981310;
  *(v1302 + 16) = xmmword_1CA981310;
  v19 = swift_initStackObject();
  v1301 = v19;
  v1313 = xmmword_1CA97EDF0;
  *(v19 + 16) = xmmword_1CA97EDF0;
  *(v19 + 32) = 0x736E6F69746341;
  *(v19 + 40) = 0xE700000000000000;
  v1300 = swift_allocObject();
  *(v1300 + 16) = v1317;
  v20 = swift_initStackObject();
  v1307 = xmmword_1CA981300;
  *(v20 + 16) = xmmword_1CA981300;
  strcpy((v20 + 32), "CreationDate");
  *(v20 + 45) = 0;
  *(v20 + 46) = -5120;
  *(v20 + 72) = sub_1CA948CB8();
  __swift_allocate_boxed_opaque_existential_1((v20 + 48));
  sub_1CA948C28();
  *(v20 + 80) = 0x7470697263736544;
  *(v20 + 88) = 0xEB000000006E6F69;
  v1315 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = v1317;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Shows a translation of the text passed as input in the iTranslate app.", 70);
  v1312 = v24;
  v25 = sub_1CA94C438("Shows a translation of the text passed as input in the iTranslate app.", 70);
  v27 = v26;
  *&v1317 = &v1287;
  MEMORY[0x1EEE9AC00](v25);
  v1299 = inited;
  v28 = &v1287 - v1323;
  sub_1CA948D98();
  v29 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v1287 - v1322;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v1312, v25, v27, 0, 0, v28, v30);
  *(v21 + 64) = v1319;
  *(v21 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v1315;
  v35 = sub_1CA6B3784(v33);
  v1298 = v20;
  *(v20 + 96) = v35;
  *(v20 + 120) = v34;
  *(v20 + 128) = 0x74616D726F46;
  *(v20 + 136) = 0xE600000000000000;
  *(v20 + 144) = 0xD00000000000003CLL;
  *(v20 + 152) = 0x80000001CA9B8E50;
  v36 = MEMORY[0x1E69E6158];
  *(v20 + 168) = MEMORY[0x1E69E6158];
  *(v20 + 176) = 0x696669746E656449;
  *(v20 + 184) = 0xEA00000000007265;
  *(v20 + 192) = 0x74616C736E617274;
  *(v20 + 200) = 0xE900000000000065;
  *(v20 + 216) = v36;
  strcpy((v20 + 224), "InputMapping");
  *(v20 + 237) = 0;
  *(v20 + 238) = -5120;
  v37 = swift_allocObject();
  *(v37 + 16) = v1320;
  v38 = v37;
  *&v1317 = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CA981370;
  strcpy((v39 + 32), "DestinationKey");
  *(v39 + 47) = -18;
  *(v39 + 48) = 1954047348;
  *(v39 + 56) = 0xE400000000000000;
  *(v39 + 72) = v36;
  *(v39 + 80) = 0x74616E6974736544;
  *(v39 + 88) = 0xEF657079546E6F69;
  *(v39 + 96) = 0x74736275534C5255;
  *(v39 + 104) = 0xEF6E6F6974757469;
  *(v39 + 120) = v36;
  *(v39 + 128) = 0x73616C436D657449;
  *(v39 + 136) = 0xE900000000000073;
  *(v39 + 144) = 0xD000000000000013;
  *(v39 + 152) = 0x80000001CA993390;
  v1306 = 0x80000001CA993390;
  *(v39 + 168) = v36;
  *(v39 + 176) = 0x654B656372756F53;
  v1316 = 0xE900000000000079;
  *(v39 + 184) = 0xE900000000000079;
  *(v39 + 192) = 0x7475706E49;
  *(v39 + 200) = 0xE500000000000000;
  *(v39 + 216) = v36;
  *(v39 + 224) = 0x7954656372756F53;
  *(v39 + 264) = v36;
  *(v39 + 232) = 0xEA00000000006570;
  *(v39 + 240) = 0x7475706E49;
  *(v39 + 248) = 0xE500000000000000;
  *(v38 + 32) = sub_1CA94C1E8();
  v40 = swift_allocObject();
  *(v40 + 16) = v1320;
  *(v40 + 32) = 0x73616C436D657449;
  *(v40 + 40) = 0xE900000000000073;
  *(v40 + 48) = 0xD000000000000013;
  *(v40 + 56) = 0x80000001CA993390;
  *(v40 + 72) = v36;
  *(v40 + 80) = 0x6574656D61726150;
  *(v40 + 88) = 0xEB00000000495572;
  v1315 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v1305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v41 = swift_initStackObject();
  *(v41 + 16) = v1313;
  *(v41 + 32) = @"Class";
  *(v41 + 40) = 0xD000000000000014;
  *(v41 + 48) = 0x80000001CA99B500;
  *(v41 + 64) = v36;
  *(v41 + 72) = @"Label";
  v42 = @"Class";
  v43 = @"Label";
  v44 = v42;
  v45 = v43;
  v1304 = v44;
  v1311 = v45;
  v46 = sub_1CA94C438("Text (Parameter Label)", 22);
  v1312 = v47;
  v48 = sub_1CA94C438("Text", 4);
  v50 = v49;
  *&v1313 = &v1287;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v1287 - v1323;
  sub_1CA948D98();
  v52 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v1287 - v1322;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v46, v1312, v48, v50, 0, 0, v51, v53);
  *(v41 + 104) = v1319;
  *(v41 + 80) = v55;
  _s3__C3KeyVMa_0(0);
  v1309 = v56;
  v1308 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v57 = sub_1CA94C1E8();
  v58 = v1315;
  *(v40 + 96) = sub_1CA2F864C(v57);
  *(v40 + 120) = v58;
  *(v40 + 128) = 0x654B656372756F53;
  *(v40 + 136) = v1316;
  *(v40 + 144) = 0x7475706E49;
  *(v40 + 152) = 0xE500000000000000;
  v59 = MEMORY[0x1E69E6158];
  *(v40 + 168) = MEMORY[0x1E69E6158];
  *(v40 + 176) = 0x7954656372756F53;
  *(v40 + 216) = v59;
  *(v40 + 184) = 0xEA00000000006570;
  *(v40 + 192) = 0x6574656D61726150;
  v1310 = 0xE900000000000072;
  *(v40 + 200) = 0xE900000000000072;
  *(v1317 + 40) = sub_1CA94C1E8();
  v60 = swift_allocObject();
  v1293 = v60;
  *(v60 + 16) = v1307;
  strcpy((v60 + 32), "DestinationKey");
  *(v60 + 47) = -18;
  *(v60 + 48) = 1836020326;
  *(v60 + 56) = 0xE400000000000000;
  *(v60 + 72) = v59;
  *(v60 + 80) = 0x74616E6974736544;
  *(v60 + 88) = 0xEF657079546E6F69;
  *(v60 + 96) = 0x74736275534C5255;
  *(v60 + 104) = 0xEF6E6F6974757469;
  *(v60 + 120) = v59;
  *(v60 + 128) = 0x73616C436D657449;
  *(v60 + 136) = 0xE900000000000073;
  *(v60 + 144) = 0xD000000000000013;
  *(v60 + 152) = v1306;
  v1297 = 0x80000001CA9A8C50;
  v1312 = 0xD000000000000010;
  *(v60 + 168) = v59;
  *(v60 + 176) = 0xD000000000000010;
  *(v60 + 184) = 0x80000001CA9A8C50;
  *(v60 + 192) = 0x4C20746365746544;
  *(v60 + 200) = 0xEF65676175676E61;
  *(v60 + 216) = v59;
  *(v60 + 224) = 0x6574656D61726150;
  *(v60 + 232) = 0xEB00000000495572;
  v61 = swift_allocObject();
  *(v61 + 16) = v1320;
  v1295 = 0xD000000000000016;
  v1296 = 0x80000001CA99C4A0;
  *(v61 + 32) = v1304;
  *(v61 + 40) = 0xD000000000000016;
  *(v61 + 48) = 0x80000001CA99C4A0;
  *(v61 + 64) = v59;
  *(v61 + 72) = @"Items";
  v62 = v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v1292 = v62;
  v62[10] = &unk_1F49FC0B8;
  v62[13] = v63;
  v62[14] = @"ItemDisplayNames";
  *&v1313 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v1320 = swift_allocObject();
  *(v1320 + 16) = xmmword_1CA988F30;
  v1294 = @"Items";
  v64 = @"ItemDisplayNames";
  v65 = sub_1CA94C438("Detected Language", 17);
  v1289 = v66;
  v1290 = v65;
  v67 = sub_1CA94C438("Detected Language", 17);
  v1288 = v68;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v67);
  v69 = v1323;
  sub_1CA948D98();
  v70 = v1325;
  v71 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v1287 - v1322;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v1290, v1289, v67, v1288, 0, 0, &v1287 - v69, v72);
  *(v1320 + 32) = v74;
  v75 = sub_1CA94C438("English (FromLanguage)", 22);
  v1289 = v76;
  v1290 = v75;
  v77 = sub_1CA94C438("English", 7);
  v1288 = v78;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v1287 - v69;
  sub_1CA948D98();
  v80 = v70;
  v81 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v1322;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v1290, v1289, v77, v1288, 0, 0, v79, &v1287 - v82);
  v85 = v1320;
  *(v1320 + 40) = v84;
  v86 = sub_1CA94C438("Afrikaans (FromLanguage)", 24);
  v1289 = v87;
  v1290 = v86;
  v88 = sub_1CA94C438("Afrikaans", 9);
  v1288 = v89;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v1287 - v1323;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 48) = sub_1CA2F9F14(v1290, v1289, v88, v1288, 0, 0, v90, &v1287 - v82);
  v93 = sub_1CA94C438("Albanian (FromLanguage)", 23);
  v1289 = v94;
  v1290 = v93;
  v95 = sub_1CA94C438("Albanian", 8);
  v1288 = v96;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v95);
  v97 = v1323;
  sub_1CA948D98();
  v98 = v1325;
  v99 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v1322;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v1290, v1289, v95, v1288, 0, 0, &v1287 - v97, &v1287 - v100);
  v103 = v1320;
  *(v1320 + 56) = v102;
  v104 = sub_1CA94C438("Arabic (FromLanguage)", 21);
  v1289 = v105;
  v1290 = v104;
  v106 = sub_1CA94C438("Arabic", 6);
  v1288 = v107;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948D98();
  v108 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 64) = sub_1CA2F9F14(v1290, v1289, v106, v1288, 0, 0, &v1287 - v97, &v1287 - v100);
  v110 = sub_1CA94C438("Azerbaijani (FromLanguage)", 26);
  v1289 = v111;
  v1290 = v110;
  v112 = sub_1CA94C438("Azerbaijani", 11);
  v1288 = v113;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v112);
  v114 = v1323;
  sub_1CA948D98();
  v115 = v1325;
  v116 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v1290, v1289, v112, v1288, 0, 0, &v1287 - v114, &v1287 - v100);
  *(v1320 + 72) = v118;
  v119 = sub_1CA94C438("Basque (FromLanguage)", 21);
  v1289 = v120;
  v1290 = v119;
  v121 = sub_1CA94C438("Basque", 6);
  v1288 = v122;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948D98();
  v123 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v1290, v1289, v121, v1288, 0, 0, &v1287 - v114, &v1287 - v100);
  v126 = v1320;
  *(v1320 + 80) = v125;
  v127 = sub_1CA94C438("Bengali (FromLanguage)", 22);
  v1289 = v128;
  v1290 = v127;
  v129 = sub_1CA94C438("Bengali", 7);
  v1288 = v130;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v1323;
  sub_1CA948D98();
  v132 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v126 + 88) = sub_1CA2F9F14(v1290, v1289, v129, v1288, 0, 0, &v1287 - v131, &v1287 - v100);
  v134 = sub_1CA94C438("Belarusian (FromLanguage)", 25);
  v1289 = v135;
  v1290 = v134;
  v136 = sub_1CA94C438("Belarusian", 10);
  v1288 = v137;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v1287 - v131;
  sub_1CA948D98();
  v139 = v1325;
  v140 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = v1322;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v1290, v1289, v136, v1288, 0, 0, v138, &v1287 - v141);
  *(v1320 + 96) = v143;
  v144 = sub_1CA94C438("Bulgarian (FromLanguage)", 24);
  v1289 = v145;
  v1290 = v144;
  v146 = sub_1CA94C438("Bulgarian", 9);
  v1288 = v147;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v146);
  v148 = v1323;
  sub_1CA948D98();
  v149 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v1290, v1289, v146, v1288, 0, 0, &v1287 - v148, &v1287 - v141);
  v152 = v1320;
  *(v1320 + 104) = v151;
  v153 = sub_1CA94C438("Catalan (FromLanguage)", 22);
  v1289 = v154;
  v1290 = v153;
  v155 = sub_1CA94C438("Catalan", 7);
  v1288 = v156;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v1287 - v148;
  sub_1CA948D98();
  v158 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = v1322;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v152 + 112) = sub_1CA2F9F14(v1290, v1289, v155, v1288, 0, 0, v157, &v1287 - v159);
  v161 = sub_1CA94C438("ChineseFromLanguage (ToLanguage)", 32);
  v1289 = v162;
  v1290 = v161;
  v163 = sub_1CA94C438("Chinese Simplified", 18);
  v1288 = v164;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v163);
  v165 = v1323;
  sub_1CA948D98();
  v166 = v1325;
  v167 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v1290, v1289, v163, v1288, 0, 0, &v1287 - v165, &v1287 - v159);
  v170 = v1320;
  *(v1320 + 120) = v169;
  v171 = sub_1CA94C438("Chinese FromLanguage (ToLanguage)", 33);
  v1289 = v172;
  v1290 = v171;
  v173 = sub_1CA94C438("Chinese Traditional", 19);
  v1288 = v174;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v173);
  v175 = &v1287 - v165;
  sub_1CA948D98();
  v176 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  v177 = v1322;
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 128) = sub_1CA2F9F14(v1290, v1289, v173, v1288, 0, 0, v175, &v1287 - v177);
  v179 = sub_1CA94C438("Croatian (FromLanguage)", 23);
  v1289 = v180;
  v1290 = v179;
  v181 = sub_1CA94C438("Croatian", 8);
  v183 = v182;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v181);
  v184 = v1323;
  sub_1CA948D98();
  v185 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v185);
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v1290, v1289, v181, v183, 0, 0, &v1287 - v184, &v1287 - v177);
  v188 = v1320;
  *(v1320 + 136) = v187;
  v189 = sub_1CA94C438("Czech (FromLanguage)", 20);
  v1289 = v190;
  v1290 = v189;
  v191 = sub_1CA94C438("Czech", 5);
  v1288 = v192;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v191);
  v193 = &v1287 - v184;
  sub_1CA948D98();
  v194 = v1325;
  v195 = [v1325 bundleURL];
  v1287 = &v1287;
  MEMORY[0x1EEE9AC00](v195);
  v196 = v1322;
  sub_1CA948B68();

  v197 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v188 + 144) = sub_1CA2F9F14(v1290, v1289, v191, v1288, 0, 0, v193, &v1287 - v196);
  v198 = sub_1CA94C438("Danish (FromLanguage)", 21);
  v1289 = v199;
  v1290 = v198;
  v200 = sub_1CA94C438("Danish", 6);
  v202 = v201;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v200);
  v203 = v1323;
  sub_1CA948D98();
  v204 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v204);
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v206 = sub_1CA2F9F14(v1290, v1289, v200, v202, 0, 0, &v1287 - v203, &v1287 - v196);
  v207 = v1320;
  *(v1320 + 152) = v206;
  v208 = sub_1CA94C438("Dutch (FromLanguage)", 20);
  v1289 = v209;
  v1290 = v208;
  v1288 = sub_1CA94C438("Dutch", 5);
  v211 = v210;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v1288);
  v212 = &v1287 - v203;
  sub_1CA948D98();
  v213 = v1325;
  v214 = [v1325 bundleURL];
  v1287 = &v1287;
  MEMORY[0x1EEE9AC00](v214);
  v215 = v1322;
  sub_1CA948B68();

  v216 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v207 + 160) = sub_1CA2F9F14(v1290, v1289, v1288, v211, 0, 0, v212, &v1287 - v215);
  v217 = sub_1CA94C438("Esperanto (FromLanguage)", 24);
  v1289 = v218;
  v1290 = v217;
  v219 = sub_1CA94C438("Esperanto", 9);
  v221 = v220;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v219);
  v222 = v1323;
  sub_1CA948D98();
  v223 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v223);
  sub_1CA948B68();

  v224 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v225 = sub_1CA2F9F14(v1290, v1289, v219, v221, 0, 0, &v1287 - v222, &v1287 - v215);
  v226 = v1320;
  *(v1320 + 168) = v225;
  v227 = sub_1CA94C438("Estonian (FromLanguage)", 23);
  v1289 = v228;
  v1290 = v227;
  v229 = sub_1CA94C438("Estonian", 8);
  v1288 = v230;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v229);
  v231 = &v1287 - v222;
  sub_1CA948D98();
  v232 = v1325;
  v233 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v233);
  v234 = v1322;
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v226 + 176) = sub_1CA2F9F14(v1290, v1289, v229, v1288, 0, 0, v231, &v1287 - v234);
  v236 = sub_1CA94C438("Filipino (FromLanguage)", 23);
  v1289 = v237;
  v1290 = v236;
  v238 = sub_1CA94C438("Filipino", 8);
  v1288 = v239;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v238);
  v240 = v1323;
  sub_1CA948D98();
  v241 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v241);
  sub_1CA948B68();

  v242 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v243 = sub_1CA2F9F14(v1290, v1289, v238, v1288, 0, 0, &v1287 - v240, &v1287 - v234);
  v244 = v1320;
  *(v1320 + 184) = v243;
  v245 = sub_1CA94C438("Finnish (FromLanguage)", 22);
  v1289 = v246;
  v1290 = v245;
  v247 = sub_1CA94C438("Finnish", 7);
  v1288 = v248;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v247);
  v249 = &v1287 - v240;
  sub_1CA948D98();
  v250 = v1325;
  v251 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  v252 = v1322;
  sub_1CA948B68();

  v253 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v244 + 192) = sub_1CA2F9F14(v1290, v1289, v247, v1288, 0, 0, v249, &v1287 - v252);
  v254 = sub_1CA94C438("French (FromLanguage)", 21);
  v1289 = v255;
  v1290 = v254;
  v1288 = sub_1CA94C438("French", 6);
  v257 = v256;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v1288);
  v258 = v1323;
  sub_1CA948D98();
  v259 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v259);
  sub_1CA948B68();

  v260 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v261 = sub_1CA2F9F14(v1290, v1289, v1288, v257, 0, 0, &v1287 - v258, &v1287 - v252);
  v262 = v1320;
  *(v1320 + 200) = v261;
  v263 = sub_1CA94C438("Galician (FromLanguage)", 23);
  v1289 = v264;
  v1290 = v263;
  v265 = sub_1CA94C438("Galician", 8);
  v1288 = v266;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v265);
  v267 = v258;
  v268 = &v1287 - v258;
  sub_1CA948D98();
  v269 = v1325;
  v270 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v270);
  v271 = v1322;
  sub_1CA948B68();

  v272 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v262 + 208) = sub_1CA2F9F14(v1290, v1289, v265, v1288, 0, 0, v268, &v1287 - v271);
  v273 = sub_1CA94C438("Georgian (FromLanguage)", 23);
  v1289 = v274;
  v1290 = v273;
  v275 = sub_1CA94C438("Georgian", 8);
  v1288 = v276;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v275);
  sub_1CA948D98();
  v277 = [v269 bundleURL];
  MEMORY[0x1EEE9AC00](v277);
  sub_1CA948B68();

  v278 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v279 = sub_1CA2F9F14(v1290, v1289, v275, v1288, 0, 0, &v1287 - v267, &v1287 - v271);
  v280 = v1320;
  *(v1320 + 216) = v279;
  v281 = sub_1CA94C438("German (FromLanguage)", 21);
  v1289 = v282;
  v1290 = v281;
  v283 = sub_1CA94C438("German", 6);
  v1288 = v284;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v283);
  v285 = v1323;
  sub_1CA948D98();
  v286 = v1325;
  v287 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v287);
  v288 = &v1287 - v1322;
  sub_1CA948B68();

  v289 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v280 + 224) = sub_1CA2F9F14(v1290, v1289, v283, v1288, 0, 0, &v1287 - v285, v288);
  v290 = sub_1CA94C438("Greek (FromLanguage)", 20);
  v1289 = v291;
  v1290 = v290;
  v1288 = sub_1CA94C438("Greek", 5);
  v293 = v292;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v1288);
  sub_1CA948D98();
  v294 = [v286 bundleURL];
  MEMORY[0x1EEE9AC00](v294);
  v295 = v1322;
  sub_1CA948B68();

  v296 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v297 = sub_1CA2F9F14(v1290, v1289, v1288, v293, 0, 0, &v1287 - v285, &v1287 - v295);
  v298 = v1320;
  *(v1320 + 232) = v297;
  v299 = sub_1CA94C438("Gujarati (FromLanguage)", 23);
  v1289 = v300;
  v1290 = v299;
  v301 = sub_1CA94C438("Gujarati", 8);
  v1288 = v302;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v301);
  sub_1CA948D98();
  v303 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v303);
  sub_1CA948B68();

  v304 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v298 + 240) = sub_1CA2F9F14(v1290, v1289, v301, v1288, 0, 0, &v1287 - v285, &v1287 - v295);
  v305 = sub_1CA94C438("HaiFromLanguage (ToLanguage)", 28);
  v1289 = v306;
  v1290 = v305;
  v307 = sub_1CA94C438("Haitian Creole", 14);
  v1288 = v308;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v307);
  sub_1CA948D98();
  v309 = v1325;
  v310 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v310);
  v311 = v1322;
  sub_1CA948B68();

  v312 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v313 = sub_1CA2F9F14(v1290, v1289, v307, v1288, 0, 0, &v1287 - v285, &v1287 - v311);
  v314 = v1320;
  *(v1320 + 248) = v313;
  v315 = sub_1CA94C438("Hebrew (FromLanguage)", 21);
  v1289 = v316;
  v1290 = v315;
  v317 = sub_1CA94C438("Hebrew", 6);
  v1288 = v318;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v317);
  v319 = v1323;
  sub_1CA948D98();
  v320 = [v309 bundleURL];
  MEMORY[0x1EEE9AC00](v320);
  sub_1CA948B68();

  v321 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v314 + 256) = sub_1CA2F9F14(v1290, v1289, v317, v1288, 0, 0, &v1287 - v319, &v1287 - v311);
  v322 = sub_1CA94C438("Hindi (FromLanguage)", 20);
  v1289 = v323;
  v1290 = v322;
  v324 = sub_1CA94C438("Hindi", 5);
  v1288 = v325;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v324);
  sub_1CA948D98();
  v326 = v1325;
  v327 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v327);
  sub_1CA948B68();

  v328 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v329 = sub_1CA2F9F14(v1290, v1289, v324, v1288, 0, 0, &v1287 - v319, &v1287 - v311);
  v330 = v1320;
  *(v1320 + 264) = v329;
  v331 = sub_1CA94C438("Hungarian (FromLanguage)", 24);
  v1289 = v332;
  v1290 = v331;
  v333 = sub_1CA94C438("Hungarian", 9);
  v1288 = v334;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v333);
  v335 = &v1287 - v1323;
  sub_1CA948D98();
  v336 = [v326 bundleURL];
  MEMORY[0x1EEE9AC00](v336);
  sub_1CA948B68();

  v337 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v330 + 272) = sub_1CA2F9F14(v1290, v1289, v333, v1288, 0, 0, v335, &v1287 - v311);
  v338 = sub_1CA94C438("Icelandic (FromLanguage)", 24);
  v1289 = v339;
  v1290 = v338;
  v1288 = sub_1CA94C438("Icelandic", 9);
  v341 = v340;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v1288);
  v342 = v1323;
  sub_1CA948D98();
  v343 = v1325;
  v344 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v344);
  sub_1CA948B68();

  v345 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v346 = sub_1CA2F9F14(v1290, v1289, v1288, v341, 0, 0, &v1287 - v342, &v1287 - v311);
  v347 = v1320;
  *(v1320 + 280) = v346;
  v348 = sub_1CA94C438("Indonesian (FromLanguage)", 25);
  v1289 = v349;
  v1290 = v348;
  v350 = sub_1CA94C438("Indonesian", 10);
  v1288 = v351;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v350);
  v352 = &v1287 - v342;
  sub_1CA948D98();
  v353 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v353);
  v354 = v1322;
  sub_1CA948B68();

  v355 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v347 + 288) = sub_1CA2F9F14(v1290, v1289, v350, v1288, 0, 0, v352, &v1287 - v354);
  v356 = sub_1CA94C438("Irish (FromLanguage)", 20);
  v1289 = v357;
  v1290 = v356;
  v358 = sub_1CA94C438("Irish", 5);
  v1288 = v359;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v358);
  v360 = v1323;
  sub_1CA948D98();
  v361 = v1325;
  v362 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v362);
  sub_1CA948B68();

  v363 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v364 = sub_1CA2F9F14(v1290, v1289, v358, v1288, 0, 0, &v1287 - v360, &v1287 - v354);
  v365 = v1320;
  *(v1320 + 296) = v364;
  v366 = sub_1CA94C438("Italian (FromLanguage)", 22);
  v1289 = v367;
  v1290 = v366;
  v368 = sub_1CA94C438("Italian", 7);
  v1288 = v369;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v368);
  v370 = &v1287 - v360;
  sub_1CA948D98();
  v371 = [v361 bundleURL];
  MEMORY[0x1EEE9AC00](v371);
  v372 = v1322;
  sub_1CA948B68();

  v373 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v365 + 304) = sub_1CA2F9F14(v1290, v1289, v368, v1288, 0, 0, v370, &v1287 - v372);
  v374 = sub_1CA94C438("Japanese (FromLanguage)", 23);
  v1289 = v375;
  v1290 = v374;
  v376 = sub_1CA94C438("Japanese", 8);
  v1288 = v377;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v376);
  v378 = v1323;
  sub_1CA948D98();
  v379 = v1325;
  v380 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v380);
  sub_1CA948B68();

  v381 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v382 = sub_1CA2F9F14(v1290, v1289, v376, v1288, 0, 0, &v1287 - v378, &v1287 - v372);
  v383 = v1320;
  *(v1320 + 312) = v382;
  v384 = sub_1CA94C438("Kannada (FromLanguage)", 22);
  v1289 = v385;
  v1290 = v384;
  v1288 = sub_1CA94C438("Kannada", 7);
  v387 = v386;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v1288);
  v388 = &v1287 - v378;
  sub_1CA948D98();
  v389 = [v379 bundleURL];
  MEMORY[0x1EEE9AC00](v389);
  v390 = v1322;
  sub_1CA948B68();

  v391 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v383 + 320) = sub_1CA2F9F14(v1290, v1289, v1288, v387, 0, 0, v388, &v1287 - v390);
  v392 = sub_1CA94C438("Korean (FromLanguage)", 21);
  v1289 = v393;
  v1290 = v392;
  v394 = sub_1CA94C438("Korean", 6);
  v1288 = v395;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v394);
  v396 = v1323;
  sub_1CA948D98();
  v397 = v1325;
  v398 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v398);
  sub_1CA948B68();

  v399 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v400 = sub_1CA2F9F14(v1290, v1289, v394, v1288, 0, 0, &v1287 - v396, &v1287 - v390);
  v401 = v1320;
  *(v1320 + 328) = v400;
  v402 = sub_1CA94C438("Latin (FromLanguage)", 20);
  v1289 = v403;
  v1290 = v402;
  v404 = sub_1CA94C438("Latin", 5);
  v1288 = v405;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v404);
  v406 = &v1287 - v396;
  sub_1CA948D98();
  v407 = [v397 bundleURL];
  MEMORY[0x1EEE9AC00](v407);
  v408 = v1322;
  sub_1CA948B68();

  v409 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v401 + 336) = sub_1CA2F9F14(v1290, v1289, v404, v1288, 0, 0, v406, &v1287 - v408);
  v410 = sub_1CA94C438("Latvian (FromLanguage)", 22);
  v1289 = v411;
  v1290 = v410;
  v1288 = sub_1CA94C438("Latvian", 7);
  v413 = v412;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v1288);
  v414 = v1323;
  sub_1CA948D98();
  v415 = v1325;
  v416 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v416);
  sub_1CA948B68();

  v417 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v418 = sub_1CA2F9F14(v1290, v1289, v1288, v413, 0, 0, &v1287 - v414, &v1287 - v408);
  v419 = v1320;
  *(v1320 + 344) = v418;
  v420 = sub_1CA94C438("Lithuanian (FromLanguage)", 25);
  v1289 = v421;
  v1290 = v420;
  v422 = sub_1CA94C438("Lithuanian", 10);
  v1288 = v423;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v422);
  v424 = &v1287 - v414;
  sub_1CA948D98();
  v425 = [v415 bundleURL];
  MEMORY[0x1EEE9AC00](v425);
  v426 = v1322;
  sub_1CA948B68();

  v427 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v419 + 352) = sub_1CA2F9F14(v1290, v1289, v422, v1288, 0, 0, v424, &v1287 - v426);
  v428 = sub_1CA94C438("Macedonian (FromLanguage)", 25);
  v1289 = v429;
  v1290 = v428;
  v430 = sub_1CA94C438("Macedonian", 10);
  v1288 = v431;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v430);
  v432 = v1323;
  sub_1CA948D98();
  v433 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v433);
  sub_1CA948B68();

  v434 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v435 = sub_1CA2F9F14(v1290, v1289, v430, v1288, 0, 0, &v1287 - v432, &v1287 - v426);
  v436 = v1320;
  *(v1320 + 360) = v435;
  v437 = sub_1CA94C438("Malay (FromLanguage)", 20);
  v1289 = v438;
  v1290 = v437;
  v439 = sub_1CA94C438("Malay", 5);
  v1288 = v440;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v439);
  sub_1CA948D98();
  v441 = v1325;
  v442 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v442);
  v443 = v1322;
  sub_1CA948B68();

  v444 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v436 + 368) = sub_1CA2F9F14(v1290, v1289, v439, v1288, 0, 0, &v1287 - v432, &v1287 - v443);
  v445 = sub_1CA94C438("Maltese (FromLanguage)", 22);
  v1289 = v446;
  v1290 = v445;
  v447 = sub_1CA94C438("Maltese", 7);
  v449 = v448;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v447);
  v450 = &v1287 - v1323;
  sub_1CA948D98();
  v451 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v451);
  sub_1CA948B68();

  v452 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v453 = sub_1CA2F9F14(v1290, v1289, v447, v449, 0, 0, v450, &v1287 - v443);
  v454 = v1320;
  *(v1320 + 376) = v453;
  v455 = sub_1CA94C438("Norwegian (FromLanguage)", 24);
  v1289 = v456;
  v1290 = v455;
  v457 = sub_1CA94C438("Norwegian", 9);
  v1288 = v458;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v457);
  v459 = v1323;
  sub_1CA948D98();
  v460 = v1325;
  v461 = [v1325 bundleURL];
  v1287 = &v1287;
  MEMORY[0x1EEE9AC00](v461);
  v462 = v1322;
  sub_1CA948B68();

  v463 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v454 + 384) = sub_1CA2F9F14(v1290, v1289, v457, v1288, 0, 0, &v1287 - v459, &v1287 - v462);
  v464 = sub_1CA94C438("Persian (FromLanguage)", 22);
  v1289 = v465;
  v1290 = v464;
  v466 = sub_1CA94C438("Persian", 7);
  v468 = v467;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v466);
  sub_1CA948D98();
  v469 = [v460 bundleURL];
  MEMORY[0x1EEE9AC00](v469);
  sub_1CA948B68();

  v470 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v471 = sub_1CA2F9F14(v1290, v1289, v466, v468, 0, 0, &v1287 - v459, &v1287 - v462);
  v472 = v1320;
  *(v1320 + 392) = v471;
  v473 = sub_1CA94C438("Polish (FromLanguage)", 21);
  v1289 = v474;
  v1290 = v473;
  v475 = sub_1CA94C438("Polish", 6);
  v1288 = v476;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v475);
  v477 = v1323;
  sub_1CA948D98();
  v478 = v1325;
  v479 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v479);
  v480 = v1322;
  sub_1CA948B68();

  v481 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v472 + 400) = sub_1CA2F9F14(v1290, v1289, v475, v1288, 0, 0, &v1287 - v477, &v1287 - v480);
  v482 = sub_1CA94C438("Portuguese (FromLanguage)", 25);
  v1289 = v483;
  v1290 = v482;
  v484 = sub_1CA94C438("Portuguese", 10);
  v1288 = v485;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v484);
  sub_1CA948D98();
  v486 = [v478 bundleURL];
  MEMORY[0x1EEE9AC00](v486);
  sub_1CA948B68();

  v487 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v488 = sub_1CA2F9F14(v1290, v1289, v484, v1288, 0, 0, &v1287 - v477, &v1287 - v480);
  v489 = v1320;
  *(v1320 + 408) = v488;
  v490 = sub_1CA94C438("Romanian (FromLanguage)", 23);
  v1289 = v491;
  v1290 = v490;
  v492 = sub_1CA94C438("Romanian", 8);
  v1288 = v493;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v492);
  v494 = v1323;
  sub_1CA948D98();
  v495 = v1325;
  v496 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v496);
  v497 = &v1287 - v1322;
  sub_1CA948B68();

  v498 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v489 + 416) = sub_1CA2F9F14(v1290, v1289, v492, v1288, 0, 0, &v1287 - v494, v497);
  v499 = sub_1CA94C438("Russian (FromLanguage)", 22);
  v1289 = v500;
  v1290 = v499;
  v1288 = sub_1CA94C438("Russian", 7);
  v502 = v501;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v1288);
  sub_1CA948D98();
  v503 = [v495 bundleURL];
  MEMORY[0x1EEE9AC00](v503);
  v504 = v1322;
  sub_1CA948B68();

  v505 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v506 = sub_1CA2F9F14(v1290, v1289, v1288, v502, 0, 0, &v1287 - v494, &v1287 - v504);
  v507 = v1320;
  *(v1320 + 424) = v506;
  v508 = sub_1CA94C438("Serbian (FromLanguage)", 22);
  v1289 = v509;
  v1290 = v508;
  v510 = sub_1CA94C438("Serbian", 7);
  v1288 = v511;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v510);
  sub_1CA948D98();
  v512 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v512);
  sub_1CA948B68();

  v513 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v507 + 432) = sub_1CA2F9F14(v1290, v1289, v510, v1288, 0, 0, &v1287 - v494, &v1287 - v504);
  v514 = sub_1CA94C438("Slovak (FromLanguage)", 21);
  v1289 = v515;
  v1290 = v514;
  v1288 = sub_1CA94C438("Slovak", 6);
  v517 = v516;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v1288);
  v518 = &v1287 - v494;
  sub_1CA948D98();
  v519 = v1325;
  v520 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v520);
  v521 = v1322;
  sub_1CA948B68();

  v522 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v523 = sub_1CA2F9F14(v1290, v1289, v1288, v517, 0, 0, v518, &v1287 - v521);
  v524 = v1320;
  *(v1320 + 440) = v523;
  v525 = sub_1CA94C438("Slovenian (FromLanguage)", 24);
  v1289 = v526;
  v1290 = v525;
  v527 = sub_1CA94C438("Slovenian", 9);
  v1288 = v528;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v527);
  v529 = v1323;
  sub_1CA948D98();
  v530 = [v519 bundleURL];
  MEMORY[0x1EEE9AC00](v530);
  sub_1CA948B68();

  v531 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v524 + 448) = sub_1CA2F9F14(v1290, v1289, v527, v1288, 0, 0, &v1287 - v529, &v1287 - v521);
  v532 = sub_1CA94C438("Spanish (FromLanguage)", 22);
  v1289 = v533;
  v1290 = v532;
  v534 = sub_1CA94C438("Spanish", 7);
  v536 = v535;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v534);
  v537 = &v1287 - v529;
  sub_1CA948D98();
  v538 = v1325;
  v539 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v539);
  sub_1CA948B68();

  v540 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v541 = sub_1CA2F9F14(v1290, v1289, v534, v536, 0, 0, v537, &v1287 - v521);
  v542 = v1320;
  *(v1320 + 456) = v541;
  v543 = sub_1CA94C438("Swahili (FromLanguage)", 22);
  v1289 = v544;
  v1290 = v543;
  v545 = sub_1CA94C438("Swahili", 7);
  v1288 = v546;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v545);
  v547 = &v1287 - v1323;
  sub_1CA948D98();
  v548 = [v538 bundleURL];
  MEMORY[0x1EEE9AC00](v548);
  sub_1CA948B68();

  v549 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v542 + 464) = sub_1CA2F9F14(v1290, v1289, v545, v1288, 0, 0, v547, &v1287 - v521);
  v550 = sub_1CA94C438("Swedish (FromLanguage)", 22);
  v1289 = v551;
  v1290 = v550;
  v552 = sub_1CA94C438("Swedish", 7);
  v1288 = v553;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v552);
  v554 = v1323;
  sub_1CA948D98();
  v555 = v1325;
  v556 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v556);
  sub_1CA948B68();

  v557 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v558 = sub_1CA2F9F14(v1290, v1289, v552, v1288, 0, 0, &v1287 - v554, &v1287 - v521);
  v559 = v1320;
  *(v1320 + 472) = v558;
  v560 = sub_1CA94C438("Tamil (FromLanguage)", 20);
  v1289 = v561;
  v1290 = v560;
  v562 = sub_1CA94C438("Tamil", 5);
  v1288 = v563;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v562);
  v564 = &v1287 - v554;
  sub_1CA948D98();
  v565 = [v555 bundleURL];
  MEMORY[0x1EEE9AC00](v565);
  v566 = v1322;
  sub_1CA948B68();

  v567 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v559 + 480) = sub_1CA2F9F14(v1290, v1289, v562, v1288, 0, 0, v564, &v1287 - v566);
  v568 = sub_1CA94C438("Telugu (FromLanguage)", 21);
  v1289 = v569;
  v1290 = v568;
  v570 = sub_1CA94C438("Telugu", 6);
  v1288 = v571;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v570);
  v572 = v1323;
  sub_1CA948D98();
  v573 = v1325;
  v574 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v574);
  sub_1CA948B68();

  v575 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v576 = sub_1CA2F9F14(v1290, v1289, v570, v1288, 0, 0, &v1287 - v572, &v1287 - v566);
  v577 = v1320;
  *(v1320 + 488) = v576;
  v578 = sub_1CA94C438("Thai (FromLanguage)", 19);
  v1289 = v579;
  v1290 = v578;
  v580 = sub_1CA94C438("Thai", 4);
  v1288 = v581;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v580);
  v582 = &v1287 - v572;
  sub_1CA948D98();
  v583 = [v573 bundleURL];
  MEMORY[0x1EEE9AC00](v583);
  v584 = v1322;
  sub_1CA948B68();

  v585 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v577 + 496) = sub_1CA2F9F14(v1290, v1289, v580, v1288, 0, 0, v582, &v1287 - v584);
  v586 = sub_1CA94C438("Turkish (FromLanguage)", 22);
  v1289 = v587;
  v1290 = v586;
  v588 = sub_1CA94C438("Turkish", 7);
  v1288 = v589;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v588);
  v590 = v1323;
  sub_1CA948D98();
  v591 = v1325;
  v592 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v592);
  sub_1CA948B68();

  v593 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v594 = sub_1CA2F9F14(v1290, v1289, v588, v1288, 0, 0, &v1287 - v590, &v1287 - v584);
  v595 = v1320;
  *(v1320 + 504) = v594;
  v596 = sub_1CA94C438("Ukrainian (FromLanguage)", 24);
  v1289 = v597;
  v1290 = v596;
  v598 = sub_1CA94C438("Ukrainian", 9);
  v1288 = v599;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v598);
  sub_1CA948D98();
  v600 = [v591 bundleURL];
  MEMORY[0x1EEE9AC00](v600);
  sub_1CA948B68();

  v601 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v595 + 512) = sub_1CA2F9F14(v1290, v1289, v598, v1288, 0, 0, &v1287 - v590, &v1287 - v584);
  v602 = sub_1CA94C438("Urdu (FromLanguage)", 19);
  v1289 = v603;
  v1290 = v602;
  v604 = sub_1CA94C438("Urdu", 4);
  v606 = v605;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v604);
  v607 = v1323;
  sub_1CA948D98();
  v608 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v608);
  sub_1CA948B68();

  v609 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v610 = sub_1CA2F9F14(v1290, v1289, v604, v606, 0, 0, &v1287 - v607, &v1287 - v584);
  v611 = v1320;
  *(v1320 + 520) = v610;
  v612 = sub_1CA94C438("Vietnamese (FromLanguage)", 25);
  v1289 = v613;
  v1290 = v612;
  v614 = sub_1CA94C438("Vietnamese", 10);
  v1288 = v615;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v614);
  sub_1CA948D98();
  v616 = v1325;
  v617 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v617);
  v618 = &v1287 - v1322;
  sub_1CA948B68();

  v619 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v611 + 528) = sub_1CA2F9F14(v1290, v1289, v614, v1288, 0, 0, &v1287 - v607, v618);
  v620 = sub_1CA94C438("Welsh (FromLanguage)", 20);
  v1289 = v621;
  v1290 = v620;
  v622 = sub_1CA94C438("Welsh", 5);
  v1288 = v623;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v622);
  v624 = v1323;
  sub_1CA948D98();
  v625 = [v616 bundleURL];
  MEMORY[0x1EEE9AC00](v625);
  v626 = v1322;
  sub_1CA948B68();

  v627 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v611 + 536) = sub_1CA2F9F14(v1290, v1289, v622, v1288, 0, 0, &v1287 - v624, &v1287 - v626);
  v628 = sub_1CA94C438("Yiddish (FromLanguage)", 22);
  v1289 = v629;
  v1290 = v628;
  v630 = sub_1CA94C438("Yiddish", 7);
  v1288 = v631;
  v1291 = &v1287;
  MEMORY[0x1EEE9AC00](v630);
  sub_1CA948D98();
  v632 = v1325;
  v633 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v633);
  sub_1CA948B68();

  v634 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v635 = sub_1CA2F9F14(v1290, v1289, v630, v1288, 0, 0, &v1287 - v624, &v1287 - v626);
  v636 = v1320;
  *(v1320 + 544) = v635;
  v637 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v1291 = v637;
  v638 = v1292;
  v1292[15] = v636;
  v639 = v1311;
  v638[18] = v637;
  v638[19] = v639;
  v640 = sub_1CA94C438("From (Parameter Label)", 22);
  v1289 = v641;
  v1290 = v640;
  v642 = sub_1CA94C438("From", 4);
  v644 = v643;
  *&v1320 = &v1287;
  MEMORY[0x1EEE9AC00](v642);
  v645 = &v1287 - v1323;
  sub_1CA948D98();
  v646 = [v632 bundleURL];
  MEMORY[0x1EEE9AC00](v646);
  sub_1CA948B68();

  v647 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v648 = sub_1CA2F9F14(v1290, v1289, v642, v644, 0, 0, v645, &v1287 - v626);
  v638[23] = v1319;
  v638[20] = v648;
  v649 = sub_1CA94C1E8();
  v650 = v1315;
  v651 = sub_1CA2F864C(v649);
  v652 = v1293;
  *(v1293 + 240) = v651;
  *(v652 + 264) = v650;
  *(v652 + 272) = 0x654B656372756F53;
  *(v652 + 280) = v1316;
  strcpy((v652 + 288), "FromLanguage");
  *(v652 + 301) = 0;
  *(v652 + 302) = -5120;
  v653 = MEMORY[0x1E69E6158];
  *(v652 + 312) = MEMORY[0x1E69E6158];
  *(v652 + 320) = 0x7954656372756F53;
  *(v652 + 328) = 0xEA00000000006570;
  *(v652 + 336) = 0x6574656D61726150;
  *(v652 + 344) = v1310;
  *(v652 + 360) = v653;
  strcpy((v652 + 368), "ValueMapping");
  *(v652 + 381) = 0;
  *(v652 + 382) = -5120;
  v654 = v653;
  v655 = sub_1CA94C1E8();
  *(v652 + 408) = v1314;
  *(v652 + 384) = v655;
  *(v1317 + 48) = sub_1CA94C1E8();
  v656 = swift_allocObject();
  v1318 = v656;
  *(v656 + 16) = v1307;
  strcpy((v656 + 32), "DestinationKey");
  *(v656 + 47) = -18;
  *(v656 + 48) = 28532;
  *(v656 + 56) = 0xE200000000000000;
  *(v656 + 72) = v654;
  *(v656 + 80) = 0x74616E6974736544;
  *(v656 + 88) = 0xEF657079546E6F69;
  *(v656 + 96) = 0x74736275534C5255;
  *(v656 + 104) = 0xEF6E6F6974757469;
  *(v656 + 120) = v654;
  *(v656 + 128) = 0x73616C436D657449;
  *(v656 + 136) = 0xE900000000000073;
  *(v656 + 144) = 0xD000000000000013;
  *(v656 + 152) = v1306;
  v657 = v1312;
  *(v656 + 168) = v654;
  *(v656 + 176) = v657;
  *(v656 + 184) = v1297;
  *(v656 + 192) = 0x6873696C676E45;
  *(v656 + 200) = 0xE700000000000000;
  *(v656 + 216) = v654;
  *(v656 + 224) = 0x6574656D61726150;
  *(v656 + 232) = 0xEB00000000495572;
  v658 = swift_allocObject();
  *&v1307 = v658;
  *(v658 + 16) = xmmword_1CA9813C0;
  v660 = v1295;
  v659 = v1296;
  *(v658 + 32) = v1304;
  *(v658 + 40) = v660;
  *(v658 + 48) = v659;
  v661 = v1294;
  *(v658 + 64) = v654;
  *(v658 + 72) = v661;
  *&v1320 = swift_allocObject();
  *(v1320 + 16) = xmmword_1CA988F40;
  v662 = sub_1CA94C438("English (ToLanguage)", 20);
  v1304 = v663;
  v1305 = v662;
  v664 = sub_1CA94C438("English", 7);
  v1297 = v665;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v664);
  v666 = v1323;
  sub_1CA948D98();
  v667 = v1325;
  v668 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v668);
  v669 = &v1287 - v1322;
  sub_1CA948B68();

  v670 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v671 = sub_1CA2F9F14(v1305, v1304, v664, v1297, 0, 0, &v1287 - v666, v669);
  *(v1320 + 32) = v671;
  v672 = sub_1CA94C438("Afrikaans (ToLanguage)", 22);
  v1304 = v673;
  v1305 = v672;
  v1297 = sub_1CA94C438("Afrikaans", 9);
  v675 = v674;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1297);
  sub_1CA948D98();
  v676 = [v667 bundleURL];
  MEMORY[0x1EEE9AC00](v676);
  v677 = v1322;
  sub_1CA948B68();

  v678 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v679 = sub_1CA2F9F14(v1305, v1304, v1297, v675, 0, 0, &v1287 - v666, &v1287 - v677);
  v680 = v1320;
  *(v1320 + 40) = v679;
  v681 = sub_1CA94C438("Albanian (ToLanguage)", 21);
  v1304 = v682;
  v1305 = v681;
  v683 = sub_1CA94C438("Albanian", 8);
  v1297 = v684;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v683);
  sub_1CA948D98();
  v685 = v1325;
  v686 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v686);
  sub_1CA948B68();

  v687 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v680 + 48) = sub_1CA2F9F14(v1305, v1304, v683, v1297, 0, 0, &v1287 - v666, &v1287 - v677);
  v688 = sub_1CA94C438("Arabic (ToLanguage)", 19);
  v1304 = v689;
  v1305 = v688;
  v690 = sub_1CA94C438("Arabic", 6);
  v1297 = v691;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v690);
  v692 = v1323;
  sub_1CA948D98();
  v693 = [v685 bundleURL];
  MEMORY[0x1EEE9AC00](v693);
  v694 = v1322;
  sub_1CA948B68();

  v695 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v696 = sub_1CA2F9F14(v1305, v1304, v690, v1297, 0, 0, &v1287 - v692, &v1287 - v694);
  *(v1320 + 56) = v696;
  v697 = sub_1CA94C438("Azerbaijani (ToLanguage)", 24);
  v1304 = v698;
  v1305 = v697;
  v699 = sub_1CA94C438("Azerbaijani", 11);
  v1297 = v700;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v699);
  sub_1CA948D98();
  v701 = v1325;
  v702 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v702);
  sub_1CA948B68();

  v703 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v704 = sub_1CA2F9F14(v1305, v1304, v699, v1297, 0, 0, &v1287 - v692, &v1287 - v694);
  v705 = v1320;
  *(v1320 + 64) = v704;
  v706 = sub_1CA94C438("Basque (ToLanguage)", 19);
  v1304 = v707;
  v1305 = v706;
  v1297 = sub_1CA94C438("Basque", 6);
  v709 = v708;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1297);
  v710 = &v1287 - v1323;
  sub_1CA948D98();
  v711 = [v701 bundleURL];
  MEMORY[0x1EEE9AC00](v711);
  sub_1CA948B68();

  v712 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v705 + 72) = sub_1CA2F9F14(v1305, v1304, v1297, v709, 0, 0, v710, &v1287 - v694);
  v713 = sub_1CA94C438("Bengali (ToLanguage)", 20);
  v1304 = v714;
  v1305 = v713;
  v715 = sub_1CA94C438("Bengali", 7);
  v1297 = v716;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v715);
  v717 = v1323;
  sub_1CA948D98();
  v718 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v718);
  sub_1CA948B68();

  v719 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v720 = sub_1CA2F9F14(v1305, v1304, v715, v1297, 0, 0, &v1287 - v717, &v1287 - v694);
  v721 = v1320;
  *(v1320 + 80) = v720;
  v722 = sub_1CA94C438("Belarusian (ToLanguage)", 23);
  v1304 = v723;
  v1305 = v722;
  v724 = sub_1CA94C438("Belarusian", 10);
  v1297 = v725;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v724);
  v726 = &v1287 - v717;
  sub_1CA948D98();
  v727 = v1325;
  v728 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v728);
  v729 = &v1287 - v1322;
  sub_1CA948B68();

  v730 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v721 + 88) = sub_1CA2F9F14(v1305, v1304, v724, v1297, 0, 0, v726, v729);
  v731 = sub_1CA94C438("Bulgarian (ToLanguage)", 22);
  v1304 = v732;
  v1305 = v731;
  v733 = sub_1CA94C438("Bulgarian", 9);
  v1297 = v734;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v733);
  v735 = &v1287 - v1323;
  sub_1CA948D98();
  v736 = v727;
  v737 = [v727 bundleURL];
  MEMORY[0x1EEE9AC00](v737);
  v738 = v1322;
  sub_1CA948B68();

  v739 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v740 = sub_1CA2F9F14(v1305, v1304, v733, v1297, 0, 0, v735, &v1287 - v738);
  *(v1320 + 96) = v740;
  v741 = sub_1CA94C438("Catalan (ToLanguage)", 20);
  v1304 = v742;
  v1305 = v741;
  v743 = sub_1CA94C438("Catalan", 7);
  v1297 = v744;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v743);
  v745 = v1323;
  sub_1CA948D98();
  v746 = [v736 bundleURL];
  MEMORY[0x1EEE9AC00](v746);
  sub_1CA948B68();

  v747 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v748 = sub_1CA2F9F14(v1305, v1304, v743, v1297, 0, 0, &v1287 - v745, &v1287 - v738);
  v749 = v1320;
  *(v1320 + 104) = v748;
  v750 = sub_1CA94C438("Chinese Simplified (ToLanguage)", 31);
  v1304 = v751;
  v1305 = v750;
  v752 = sub_1CA94C438("Chinese Simplified", 18);
  v1297 = v753;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v752);
  v754 = &v1287 - v745;
  sub_1CA948D98();
  v755 = v1325;
  v756 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v756);
  v757 = v1322;
  sub_1CA948B68();

  v758 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v749 + 112) = sub_1CA2F9F14(v1305, v1304, v752, v1297, 0, 0, v754, &v1287 - v757);
  v759 = sub_1CA94C438("Chinese Traditional (ToLanguage)", 32);
  v1304 = v760;
  v1305 = v759;
  v761 = sub_1CA94C438("Chinese Traditional", 19);
  v1297 = v762;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v761);
  v763 = v1323;
  sub_1CA948D98();
  v764 = [v755 bundleURL];
  MEMORY[0x1EEE9AC00](v764);
  sub_1CA948B68();

  v765 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v766 = sub_1CA2F9F14(v1305, v1304, v761, v1297, 0, 0, &v1287 - v763, &v1287 - v757);
  v767 = v1320;
  *(v1320 + 120) = v766;
  v768 = sub_1CA94C438("Croatian (ToLanguage)", 21);
  v1304 = v769;
  v1305 = v768;
  v770 = sub_1CA94C438("Croatian", 8);
  v1297 = v771;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v770);
  v772 = &v1287 - v763;
  sub_1CA948D98();
  v773 = v1325;
  v774 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v774);
  sub_1CA948B68();

  v775 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v767 + 128) = sub_1CA2F9F14(v1305, v1304, v770, v1297, 0, 0, v772, &v1287 - v757);
  v776 = sub_1CA94C438("Czech (ToLanguage)", 18);
  v1304 = v777;
  v1305 = v776;
  v778 = sub_1CA94C438("Czech", 5);
  v780 = v779;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v778);
  v781 = &v1287 - v1323;
  sub_1CA948D98();
  v782 = [v773 bundleURL];
  MEMORY[0x1EEE9AC00](v782);
  sub_1CA948B68();

  v783 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v784 = sub_1CA2F9F14(v1305, v1304, v778, v780, 0, 0, v781, &v1287 - v757);
  v785 = v1320;
  *(v1320 + 136) = v784;
  v786 = sub_1CA94C438("Danish (ToLanguage)", 19);
  v1304 = v787;
  v1305 = v786;
  v1297 = sub_1CA94C438("Danish", 6);
  v789 = v788;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1297);
  v790 = v1323;
  sub_1CA948D98();
  v791 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v791);
  sub_1CA948B68();

  v792 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v785 + 144) = sub_1CA2F9F14(v1305, v1304, v1297, v789, 0, 0, &v1287 - v790, &v1287 - v757);
  v793 = sub_1CA94C438("Dutch (ToLanguage)", 18);
  v1304 = v794;
  v1305 = v793;
  v795 = sub_1CA94C438("Dutch", 5);
  v1297 = v796;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v795);
  v797 = &v1287 - v790;
  sub_1CA948D98();
  v798 = v1325;
  v799 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v799);
  sub_1CA948B68();

  v800 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v801 = sub_1CA2F9F14(v1305, v1304, v795, v1297, 0, 0, v797, &v1287 - v757);
  v802 = v1320;
  *(v1320 + 152) = v801;
  v803 = sub_1CA94C438("Esperanto (ToLanguage)", 22);
  v1304 = v804;
  v1305 = v803;
  v805 = sub_1CA94C438("Esperanto", 9);
  v1297 = v806;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v805);
  v807 = v1323;
  sub_1CA948D98();
  v808 = [v798 bundleURL];
  MEMORY[0x1EEE9AC00](v808);
  v809 = v1322;
  sub_1CA948B68();

  v810 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v802 + 160) = sub_1CA2F9F14(v1305, v1304, v805, v1297, 0, 0, &v1287 - v807, &v1287 - v809);
  v811 = sub_1CA94C438("Estonian (ToLanguage)", 21);
  v1304 = v812;
  v1305 = v811;
  v1297 = sub_1CA94C438("Estonian", 8);
  v814 = v813;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1297);
  sub_1CA948D98();
  v815 = v1325;
  v816 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v816);
  sub_1CA948B68();

  v817 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v818 = sub_1CA2F9F14(v1305, v1304, v1297, v814, 0, 0, &v1287 - v807, &v1287 - v809);
  *(v1320 + 168) = v818;
  v819 = sub_1CA94C438("Filipino (ToLanguage)", 21);
  v1304 = v820;
  v1305 = v819;
  v821 = sub_1CA94C438("Filipino", 8);
  v1297 = v822;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v821);
  v823 = v1323;
  sub_1CA948D98();
  v824 = [v815 bundleURL];
  MEMORY[0x1EEE9AC00](v824);
  v825 = v1322;
  sub_1CA948B68();

  v826 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v827 = sub_1CA2F9F14(v1305, v1304, v821, v1297, 0, 0, &v1287 - v823, &v1287 - v825);
  v828 = v1320;
  *(v1320 + 176) = v827;
  v829 = sub_1CA94C438("Finnish (ToLanguage)", 20);
  v1304 = v830;
  v1305 = v829;
  v831 = sub_1CA94C438("Finnish", 7);
  v1297 = v832;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v831);
  sub_1CA948D98();
  v833 = v1325;
  v834 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v834);
  sub_1CA948B68();

  v835 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v828 + 184) = sub_1CA2F9F14(v1305, v1304, v831, v1297, 0, 0, &v1287 - v823, &v1287 - v825);
  v836 = sub_1CA94C438("French (ToLanguage)", 19);
  v1304 = v837;
  v1305 = v836;
  v838 = sub_1CA94C438("French", 6);
  v1297 = v839;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v838);
  v840 = v1323;
  sub_1CA948D98();
  v841 = [v833 bundleURL];
  MEMORY[0x1EEE9AC00](v841);
  v842 = v1322;
  sub_1CA948B68();

  v843 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v844 = sub_1CA2F9F14(v1305, v1304, v838, v1297, 0, 0, &v1287 - v840, &v1287 - v842);
  *(v1320 + 192) = v844;
  v845 = sub_1CA94C438("Galician (ToLanguage)", 21);
  v1304 = v846;
  v1305 = v845;
  v847 = sub_1CA94C438("Galician", 8);
  v1297 = v848;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v847);
  v849 = &v1287 - v840;
  sub_1CA948D98();
  v850 = v1325;
  v851 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v851);
  sub_1CA948B68();

  v852 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v853 = sub_1CA2F9F14(v1305, v1304, v847, v1297, 0, 0, v849, &v1287 - v842);
  v854 = v1320;
  *(v1320 + 200) = v853;
  v855 = sub_1CA94C438("Georgian (ToLanguage)", 21);
  v1304 = v856;
  v1305 = v855;
  v857 = sub_1CA94C438("Georgian", 8);
  v1297 = v858;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v857);
  v859 = &v1287 - v1323;
  sub_1CA948D98();
  v860 = [v850 bundleURL];
  MEMORY[0x1EEE9AC00](v860);
  v861 = &v1287 - v1322;
  sub_1CA948B68();

  v862 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v854 + 208) = sub_1CA2F9F14(v1305, v1304, v857, v1297, 0, 0, v859, v861);
  v863 = sub_1CA94C438("German (ToLanguage)", 19);
  v1304 = v864;
  v1305 = v863;
  v865 = sub_1CA94C438("German", 6);
  v1297 = v866;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v865);
  v867 = v1323;
  sub_1CA948D98();
  v868 = [v850 bundleURL];
  MEMORY[0x1EEE9AC00](v868);
  v869 = v1322;
  sub_1CA948B68();

  v870 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v871 = sub_1CA2F9F14(v1305, v1304, v865, v1297, 0, 0, &v1287 - v867, &v1287 - v869);
  v872 = v1320;
  *(v1320 + 216) = v871;
  v873 = sub_1CA94C438("Greek (ToLanguage)", 18);
  v1304 = v874;
  v1305 = v873;
  v875 = sub_1CA94C438("Greek", 5);
  v1297 = v876;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v875);
  v877 = &v1287 - v867;
  sub_1CA948D98();
  v878 = v1325;
  v879 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v879);
  sub_1CA948B68();

  v880 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v872 + 224) = sub_1CA2F9F14(v1305, v1304, v875, v1297, 0, 0, v877, &v1287 - v869);
  v881 = sub_1CA94C438("Gujarati (ToLanguage)", 21);
  v1304 = v882;
  v1305 = v881;
  v883 = sub_1CA94C438("Gujarati", 8);
  v1297 = v884;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v883);
  v885 = v1323;
  sub_1CA948D98();
  v886 = [v878 bundleURL];
  MEMORY[0x1EEE9AC00](v886);
  v887 = v1322;
  sub_1CA948B68();

  v888 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v889 = sub_1CA2F9F14(v1305, v1304, v883, v1297, 0, 0, &v1287 - v885, &v1287 - v887);
  v890 = v1320;
  *(v1320 + 232) = v889;
  v891 = sub_1CA94C438("Haitian Creole (ToLanguage)", 27);
  v1304 = v892;
  v1305 = v891;
  v893 = sub_1CA94C438("Haitian Creole", 14);
  v1297 = v894;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v893);
  v895 = &v1287 - v885;
  sub_1CA948D98();
  v896 = v1325;
  v897 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v897);
  sub_1CA948B68();

  v898 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v890 + 240) = sub_1CA2F9F14(v1305, v1304, v893, v1297, 0, 0, v895, &v1287 - v887);
  v899 = sub_1CA94C438("Hebrew (ToLanguage)", 19);
  v1304 = v900;
  v1305 = v899;
  v901 = sub_1CA94C438("Hebrew", 6);
  v1297 = v902;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v901);
  v903 = &v1287 - v1323;
  sub_1CA948D98();
  v904 = [v896 bundleURL];
  MEMORY[0x1EEE9AC00](v904);
  v905 = v1322;
  sub_1CA948B68();

  v906 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v907 = sub_1CA2F9F14(v1305, v1304, v901, v1297, 0, 0, v903, &v1287 - v905);
  v908 = v1320;
  *(v1320 + 248) = v907;
  v909 = sub_1CA94C438("Hindi (ToLanguage)", 18);
  v1304 = v910;
  v1305 = v909;
  v911 = sub_1CA94C438("Hindi", 5);
  v1297 = v912;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v911);
  v913 = v1323;
  sub_1CA948D98();
  v914 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v914);
  sub_1CA948B68();

  v915 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v908 + 256) = sub_1CA2F9F14(v1305, v1304, v911, v1297, 0, 0, &v1287 - v913, &v1287 - v905);
  v916 = sub_1CA94C438("Hungarian (ToLanguage)", 22);
  v1304 = v917;
  v1305 = v916;
  v918 = sub_1CA94C438("Hungarian", 9);
  v920 = v919;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v918);
  sub_1CA948D98();
  v921 = v1325;
  v922 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v922);
  v923 = &v1287 - v1322;
  sub_1CA948B68();

  v924 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v925 = sub_1CA2F9F14(v1305, v1304, v918, v920, 0, 0, &v1287 - v913, v923);
  v926 = v1320;
  *(v1320 + 264) = v925;
  v927 = sub_1CA94C438("Icelandic (ToLanguage)", 22);
  v1304 = v928;
  v1305 = v927;
  v929 = sub_1CA94C438("Icelandic", 9);
  v1297 = v930;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v929);
  v931 = v1323;
  sub_1CA948D98();
  v932 = [v921 bundleURL];
  MEMORY[0x1EEE9AC00](v932);
  v933 = v1322;
  sub_1CA948B68();

  v934 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v926 + 272) = sub_1CA2F9F14(v1305, v1304, v929, v1297, 0, 0, &v1287 - v931, &v1287 - v933);
  v935 = sub_1CA94C438("Indonesian (ToLanguage)", 23);
  v1304 = v936;
  v1305 = v935;
  v937 = sub_1CA94C438("Indonesian", 10);
  v1297 = v938;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v937);
  v939 = &v1287 - v931;
  sub_1CA948D98();
  v940 = v1325;
  v941 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v941);
  sub_1CA948B68();

  v942 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v943 = sub_1CA2F9F14(v1305, v1304, v937, v1297, 0, 0, v939, &v1287 - v933);
  v944 = v1320;
  *(v1320 + 280) = v943;
  v945 = sub_1CA94C438("Irish (ToLanguage)", 18);
  v1304 = v946;
  v1305 = v945;
  v947 = sub_1CA94C438("Irish", 5);
  v1297 = v948;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v947);
  v949 = v1323;
  sub_1CA948D98();
  v950 = [v940 bundleURL];
  MEMORY[0x1EEE9AC00](v950);
  v951 = v1322;
  sub_1CA948B68();

  v952 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v944 + 288) = sub_1CA2F9F14(v1305, v1304, v947, v1297, 0, 0, &v1287 - v949, &v1287 - v951);
  v953 = sub_1CA94C438("Italian (ToLanguage)", 20);
  v1304 = v954;
  v1305 = v953;
  v955 = sub_1CA94C438("Italian", 7);
  v1297 = v956;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v955);
  v957 = &v1287 - v949;
  sub_1CA948D98();
  v958 = v1325;
  v959 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v959);
  sub_1CA948B68();

  v960 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v961 = sub_1CA2F9F14(v1305, v1304, v955, v1297, 0, 0, v957, &v1287 - v951);
  v962 = v1320;
  *(v1320 + 296) = v961;
  v963 = sub_1CA94C438("Japanese (ToLanguage)", 21);
  v1304 = v964;
  v1305 = v963;
  v965 = sub_1CA94C438("Japanese", 8);
  v1297 = v966;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v965);
  v967 = v1323;
  sub_1CA948D98();
  v968 = [v958 bundleURL];
  MEMORY[0x1EEE9AC00](v968);
  v969 = v1322;
  sub_1CA948B68();

  v970 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v962 + 304) = sub_1CA2F9F14(v1305, v1304, v965, v1297, 0, 0, &v1287 - v967, &v1287 - v969);
  v971 = sub_1CA94C438("Kannada (ToLanguage)", 20);
  v1304 = v972;
  v1305 = v971;
  v973 = sub_1CA94C438("Kannada", 7);
  v1297 = v974;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v973);
  v975 = &v1287 - v967;
  sub_1CA948D98();
  v976 = v1325;
  v977 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v977);
  sub_1CA948B68();

  v978 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v979 = sub_1CA2F9F14(v1305, v1304, v973, v1297, 0, 0, v975, &v1287 - v969);
  v980 = v1320;
  *(v1320 + 312) = v979;
  v981 = sub_1CA94C438("Korean (ToLanguage)", 19);
  v1304 = v982;
  v1305 = v981;
  v983 = sub_1CA94C438("Korean", 6);
  v1297 = v984;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v983);
  v985 = v1323;
  sub_1CA948D98();
  v986 = [v976 bundleURL];
  MEMORY[0x1EEE9AC00](v986);
  v987 = v1322;
  sub_1CA948B68();

  v988 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v980 + 320) = sub_1CA2F9F14(v1305, v1304, v983, v1297, 0, 0, &v1287 - v985, &v1287 - v987);
  v989 = sub_1CA94C438("Latin (ToLanguage)", 18);
  v1304 = v990;
  v1305 = v989;
  v991 = sub_1CA94C438("Latin", 5);
  v1297 = v992;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v991);
  v993 = &v1287 - v985;
  sub_1CA948D98();
  v994 = v1325;
  v995 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v995);
  sub_1CA948B68();

  v996 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v997 = sub_1CA2F9F14(v1305, v1304, v991, v1297, 0, 0, v993, &v1287 - v987);
  v998 = v1320;
  *(v1320 + 328) = v997;
  v999 = sub_1CA94C438("Latvian (ToLanguage)", 20);
  v1304 = v1000;
  v1305 = v999;
  v1001 = sub_1CA94C438("Latvian", 7);
  v1003 = v1002;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1001);
  v1004 = v1323;
  sub_1CA948D98();
  v1005 = [v994 bundleURL];
  MEMORY[0x1EEE9AC00](v1005);
  v1006 = v1322;
  sub_1CA948B68();

  v1007 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v998 + 336) = sub_1CA2F9F14(v1305, v1304, v1001, v1003, 0, 0, &v1287 - v1004, &v1287 - v1006);
  v1008 = sub_1CA94C438("Lithuanian (ToLanguage)", 23);
  v1304 = v1009;
  v1305 = v1008;
  v1297 = sub_1CA94C438("Lithuanian", 10);
  v1011 = v1010;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1297);
  v1012 = &v1287 - v1004;
  sub_1CA948D98();
  v1013 = v1325;
  v1014 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1014);
  sub_1CA948B68();

  v1015 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1016 = sub_1CA2F9F14(v1305, v1304, v1297, v1011, 0, 0, v1012, &v1287 - v1006);
  v1017 = v1320;
  *(v1320 + 344) = v1016;
  v1018 = sub_1CA94C438("Macedonian (ToLanguage)", 23);
  v1304 = v1019;
  v1305 = v1018;
  v1020 = sub_1CA94C438("Macedonian", 10);
  v1297 = v1021;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1020);
  v1022 = v1323;
  sub_1CA948D98();
  v1023 = [v1013 bundleURL];
  MEMORY[0x1EEE9AC00](v1023);
  v1024 = v1322;
  sub_1CA948B68();

  v1025 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1017 + 352) = sub_1CA2F9F14(v1305, v1304, v1020, v1297, 0, 0, &v1287 - v1022, &v1287 - v1024);
  v1026 = sub_1CA94C438("Malay (ToLanguage)", 18);
  v1304 = v1027;
  v1305 = v1026;
  v1028 = sub_1CA94C438("Malay", 5);
  v1297 = v1029;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1028);
  v1030 = &v1287 - v1022;
  sub_1CA948D98();
  v1031 = v1325;
  v1032 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1032);
  sub_1CA948B68();

  v1033 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1034 = sub_1CA2F9F14(v1305, v1304, v1028, v1297, 0, 0, v1030, &v1287 - v1024);
  v1035 = v1320;
  *(v1320 + 360) = v1034;
  v1036 = sub_1CA94C438("Maltese (ToLanguage)", 20);
  v1304 = v1037;
  v1305 = v1036;
  v1038 = sub_1CA94C438("Maltese", 7);
  v1297 = v1039;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1038);
  v1040 = v1323;
  sub_1CA948D98();
  v1041 = [v1031 bundleURL];
  MEMORY[0x1EEE9AC00](v1041);
  v1042 = v1322;
  sub_1CA948B68();

  v1043 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1035 + 368) = sub_1CA2F9F14(v1305, v1304, v1038, v1297, 0, 0, &v1287 - v1040, &v1287 - v1042);
  v1044 = sub_1CA94C438("Norwegian (ToLanguage)", 22);
  v1304 = v1045;
  v1305 = v1044;
  v1046 = sub_1CA94C438("Norwegian", 9);
  v1297 = v1047;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1046);
  sub_1CA948D98();
  v1048 = v1325;
  v1049 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1049);
  sub_1CA948B68();

  v1050 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1051 = sub_1CA2F9F14(v1305, v1304, v1046, v1297, 0, 0, &v1287 - v1040, &v1287 - v1042);
  v1052 = v1320;
  *(v1320 + 376) = v1051;
  v1053 = sub_1CA94C438("Persian (ToLanguage)", 20);
  v1304 = v1054;
  v1305 = v1053;
  v1055 = sub_1CA94C438("Persian", 7);
  v1297 = v1056;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1055);
  v1057 = &v1287 - v1040;
  sub_1CA948D98();
  v1058 = [v1048 bundleURL];
  MEMORY[0x1EEE9AC00](v1058);
  v1059 = v1322;
  sub_1CA948B68();

  v1060 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1052 + 384) = sub_1CA2F9F14(v1305, v1304, v1055, v1297, 0, 0, v1057, &v1287 - v1059);
  v1061 = sub_1CA94C438("Polish (ToLanguage)", 19);
  v1304 = v1062;
  v1305 = v1061;
  v1063 = sub_1CA94C438("Polish", 6);
  v1065 = v1064;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1063);
  v1066 = v1323;
  sub_1CA948D98();
  v1067 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1067);
  sub_1CA948B68();

  v1068 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1069 = sub_1CA2F9F14(v1305, v1304, v1063, v1065, 0, 0, &v1287 - v1066, &v1287 - v1059);
  v1070 = v1320;
  *(v1320 + 392) = v1069;
  v1071 = sub_1CA94C438("Portuguese (ToLanguage)", 23);
  v1304 = v1072;
  v1305 = v1071;
  v1073 = sub_1CA94C438("Portuguese", 10);
  v1297 = v1074;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1073);
  sub_1CA948D98();
  v1075 = v1325;
  v1076 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1076);
  v1077 = &v1287 - v1322;
  sub_1CA948B68();

  v1078 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1070 + 400) = sub_1CA2F9F14(v1305, v1304, v1073, v1297, 0, 0, &v1287 - v1066, v1077);
  v1079 = sub_1CA94C438("Romanian (ToLanguage)", 21);
  v1304 = v1080;
  v1305 = v1079;
  v1081 = sub_1CA94C438("Romanian", 8);
  v1297 = v1082;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1081);
  v1083 = v1323;
  sub_1CA948D98();
  v1084 = [v1075 bundleURL];
  MEMORY[0x1EEE9AC00](v1084);
  v1085 = v1322;
  sub_1CA948B68();

  v1086 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1087 = sub_1CA2F9F14(v1305, v1304, v1081, v1297, 0, 0, &v1287 - v1083, &v1287 - v1085);
  v1088 = v1320;
  *(v1320 + 408) = v1087;
  v1089 = sub_1CA94C438("Russian (ToLanguage)", 20);
  v1304 = v1090;
  v1305 = v1089;
  v1091 = sub_1CA94C438("Russian", 7);
  v1297 = v1092;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1091);
  v1093 = &v1287 - v1083;
  sub_1CA948D98();
  v1094 = v1325;
  v1095 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1095);
  sub_1CA948B68();

  v1096 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1088 + 416) = sub_1CA2F9F14(v1305, v1304, v1091, v1297, 0, 0, v1093, &v1287 - v1085);
  v1097 = sub_1CA94C438("Serbian (ToLanguage)", 20);
  v1304 = v1098;
  v1305 = v1097;
  v1099 = sub_1CA94C438("Serbian", 7);
  v1297 = v1100;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1099);
  v1101 = v1323;
  sub_1CA948D98();
  v1102 = [v1094 bundleURL];
  MEMORY[0x1EEE9AC00](v1102);
  v1103 = v1322;
  sub_1CA948B68();

  v1104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1105 = sub_1CA2F9F14(v1305, v1304, v1099, v1297, 0, 0, &v1287 - v1101, &v1287 - v1103);
  v1106 = v1320;
  *(v1320 + 424) = v1105;
  v1107 = sub_1CA94C438("Slovak (ToLanguage)", 19);
  v1304 = v1108;
  v1305 = v1107;
  v1109 = sub_1CA94C438("Slovak", 6);
  v1297 = v1110;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1109);
  v1111 = &v1287 - v1101;
  v1112 = v1101;
  sub_1CA948D98();
  v1113 = v1325;
  v1114 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1114);
  sub_1CA948B68();

  v1115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1106 + 432) = sub_1CA2F9F14(v1305, v1304, v1109, v1297, 0, 0, v1111, &v1287 - v1103);
  v1116 = sub_1CA94C438("Slovenian (ToLanguage)", 22);
  v1304 = v1117;
  v1305 = v1116;
  v1118 = sub_1CA94C438("Slovenian", 9);
  v1297 = v1119;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1118);
  v1120 = &v1287 - v1112;
  sub_1CA948D98();
  v1121 = [v1113 bundleURL];
  MEMORY[0x1EEE9AC00](v1121);
  v1122 = v1322;
  sub_1CA948B68();

  v1123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1124 = sub_1CA2F9F14(v1305, v1304, v1118, v1297, 0, 0, v1120, &v1287 - v1122);
  v1125 = v1320;
  *(v1320 + 440) = v1124;
  v1126 = sub_1CA94C438("Spanish (ToLanguage)", 20);
  v1304 = v1127;
  v1305 = v1126;
  v1128 = sub_1CA94C438("Spanish", 7);
  v1297 = v1129;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1128);
  v1130 = v1323;
  sub_1CA948D98();
  v1131 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1131);
  sub_1CA948B68();

  v1132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1125 + 448) = sub_1CA2F9F14(v1305, v1304, v1128, v1297, 0, 0, &v1287 - v1130, &v1287 - v1122);
  v1133 = sub_1CA94C438("Swahili (ToLanguage)", 20);
  v1304 = v1134;
  v1305 = v1133;
  v1135 = sub_1CA94C438("Swahili", 7);
  v1137 = v1136;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1135);
  sub_1CA948D98();
  v1138 = v1325;
  v1139 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1139);
  v1140 = &v1287 - v1322;
  sub_1CA948B68();

  v1141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1142 = sub_1CA2F9F14(v1305, v1304, v1135, v1137, 0, 0, &v1287 - v1130, v1140);
  v1143 = v1320;
  *(v1320 + 456) = v1142;
  v1144 = sub_1CA94C438("Swedish (ToLanguage)", 20);
  v1304 = v1145;
  v1305 = v1144;
  v1146 = sub_1CA94C438("Swedish", 7);
  v1297 = v1147;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1146);
  v1148 = v1323;
  sub_1CA948D98();
  v1149 = [v1138 bundleURL];
  MEMORY[0x1EEE9AC00](v1149);
  v1150 = v1322;
  sub_1CA948B68();

  v1151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1143 + 464) = sub_1CA2F9F14(v1305, v1304, v1146, v1297, 0, 0, &v1287 - v1148, &v1287 - v1150);
  v1152 = sub_1CA94C438("Tamil (ToLanguage)", 18);
  v1304 = v1153;
  v1305 = v1152;
  v1154 = sub_1CA94C438("Tamil", 5);
  v1297 = v1155;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1154);
  v1156 = &v1287 - v1148;
  sub_1CA948D98();
  v1157 = v1325;
  v1158 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1158);
  sub_1CA948B68();

  v1159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1160 = sub_1CA2F9F14(v1305, v1304, v1154, v1297, 0, 0, v1156, &v1287 - v1150);
  v1161 = v1320;
  *(v1320 + 472) = v1160;
  v1162 = sub_1CA94C438("Telugu (ToLanguage)", 19);
  v1304 = v1163;
  v1305 = v1162;
  v1164 = sub_1CA94C438("Telugu", 6);
  v1297 = v1165;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1164);
  v1166 = v1323;
  sub_1CA948D98();
  v1167 = [v1157 bundleURL];
  MEMORY[0x1EEE9AC00](v1167);
  v1168 = v1322;
  sub_1CA948B68();

  v1169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1161 + 480) = sub_1CA2F9F14(v1305, v1304, v1164, v1297, 0, 0, &v1287 - v1166, &v1287 - v1168);
  v1170 = sub_1CA94C438("Thai (ToLanguage)", 17);
  v1304 = v1171;
  v1305 = v1170;
  v1172 = sub_1CA94C438("Thai", 4);
  v1297 = v1173;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1172);
  v1174 = &v1287 - v1166;
  sub_1CA948D98();
  v1175 = v1325;
  v1176 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1176);
  sub_1CA948B68();

  v1177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1178 = sub_1CA2F9F14(v1305, v1304, v1172, v1297, 0, 0, v1174, &v1287 - v1168);
  v1179 = v1320;
  *(v1320 + 488) = v1178;
  v1180 = sub_1CA94C438("Turkish (ToLanguage)", 20);
  v1304 = v1181;
  v1305 = v1180;
  v1182 = sub_1CA94C438("Turkish", 7);
  v1297 = v1183;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1182);
  v1184 = v1323;
  sub_1CA948D98();
  v1185 = [v1175 bundleURL];
  MEMORY[0x1EEE9AC00](v1185);
  v1186 = v1322;
  sub_1CA948B68();

  v1187 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1179 + 496) = sub_1CA2F9F14(v1305, v1304, v1182, v1297, 0, 0, &v1287 - v1184, &v1287 - v1186);
  v1188 = sub_1CA94C438("Ukrainian (ToLanguage)", 22);
  v1304 = v1189;
  v1305 = v1188;
  v1190 = sub_1CA94C438("Ukrainian", 9);
  v1297 = v1191;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1190);
  sub_1CA948D98();
  v1192 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1192);
  sub_1CA948B68();

  v1193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1194 = sub_1CA2F9F14(v1305, v1304, v1190, v1297, 0, 0, &v1287 - v1184, &v1287 - v1186);
  v1195 = v1320;
  *(v1320 + 504) = v1194;
  v1196 = sub_1CA94C438("Urdu (ToLanguage)", 17);
  v1304 = v1197;
  v1305 = v1196;
  v1198 = sub_1CA94C438("Urdu", 4);
  v1297 = v1199;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1198);
  v1200 = v1323;
  sub_1CA948D98();
  v1201 = v1325;
  v1202 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1202);
  v1203 = &v1287 - v1322;
  sub_1CA948B68();

  v1204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1195 + 512) = sub_1CA2F9F14(v1305, v1304, v1198, v1297, 0, 0, &v1287 - v1200, v1203);
  v1205 = sub_1CA94C438("Vietnamese (ToLanguage)", 23);
  v1304 = v1206;
  v1305 = v1205;
  v1207 = sub_1CA94C438("Vietnamese", 10);
  v1297 = v1208;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1207);
  sub_1CA948D98();
  v1209 = [v1201 bundleURL];
  MEMORY[0x1EEE9AC00](v1209);
  v1210 = v1322;
  sub_1CA948B68();

  v1211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1212 = sub_1CA2F9F14(v1305, v1304, v1207, v1297, 0, 0, &v1287 - v1200, &v1287 - v1210);
  v1213 = v1320;
  *(v1320 + 520) = v1212;
  v1214 = sub_1CA94C438("Welsh (ToLanguage)", 18);
  v1304 = v1215;
  v1305 = v1214;
  v1216 = sub_1CA94C438("Welsh", 5);
  v1297 = v1217;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1216);
  v1218 = v1323;
  sub_1CA948D98();
  v1219 = v1325;
  v1220 = [v1325 bundleURL];
  v1296 = &v1287;
  MEMORY[0x1EEE9AC00](v1220);
  sub_1CA948B68();

  v1221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v1213 + 528) = sub_1CA2F9F14(v1305, v1304, v1216, v1297, 0, 0, &v1287 - v1218, &v1287 - v1210);
  v1222 = sub_1CA94C438("Yiddish (ToLanguage)", 20);
  v1304 = v1223;
  v1305 = v1222;
  v1297 = sub_1CA94C438("Yiddish", 7);
  v1225 = v1224;
  v1306 = &v1287;
  MEMORY[0x1EEE9AC00](v1297);
  v1226 = &v1287 - v1218;
  sub_1CA948D98();
  v1227 = [v1219 bundleURL];
  MEMORY[0x1EEE9AC00](v1227);
  v1228 = v1322;
  sub_1CA948B68();

  v1229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1230 = sub_1CA2F9F14(v1305, v1304, v1297, v1225, 0, 0, v1226, &v1287 - v1228);
  v1231 = v1307;
  v1232 = v1320;
  *(v1320 + 536) = v1230;
  v1231[10] = v1232;
  v1233 = v1311;
  v1231[13] = v1291;
  v1231[14] = v1233;
  v1311 = sub_1CA94C438("To (Parameter Label)", 20);
  v1306 = v1234;
  v1235 = sub_1CA94C438("To", 2);
  v1305 = v1236;
  *&v1320 = &v1287;
  MEMORY[0x1EEE9AC00](v1235);
  v1237 = &v1287 - v1323;
  sub_1CA948D98();
  v1238 = [v1219 bundleURL];
  MEMORY[0x1EEE9AC00](v1238);
  sub_1CA948B68();

  v1239 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1240 = sub_1CA2F9F14(v1311, v1306, v1235, v1305, 0, 0, v1237, &v1287 - v1228);
  v1231[18] = v1319;
  v1231[15] = v1240;
  v1241 = sub_1CA94C1E8();
  v1242 = v1315;
  v1243 = sub_1CA2F864C(v1241);
  v1244 = v1318;
  v1318[30] = v1243;
  *(v1244 + 264) = v1242;
  *(v1244 + 272) = 0x654B656372756F53;
  *(v1244 + 280) = v1316;
  *(v1244 + 288) = 0x6175676E614C6F54;
  *(v1244 + 296) = 0xEA00000000006567;
  v1245 = MEMORY[0x1E69E6158];
  *(v1244 + 312) = MEMORY[0x1E69E6158];
  *(v1244 + 320) = 0x7954656372756F53;
  *(v1244 + 328) = 0xEA00000000006570;
  *(v1244 + 336) = 0x6574656D61726150;
  *(v1244 + 344) = v1310;
  *(v1244 + 360) = v1245;
  strcpy((v1244 + 368), "ValueMapping");
  *(v1244 + 381) = 0;
  *(v1244 + 382) = -5120;
  v1246 = sub_1CA94C1E8();
  *(v1244 + 408) = v1314;
  *(v1244 + 384) = v1246;
  v1247 = sub_1CA94C1E8();
  v1248 = v1317;
  *(v1317 + 56) = v1247;
  v1249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *&v1320 = v1249;
  v1250 = v1298;
  v1298[30] = v1248;
  v1250[33] = v1249;
  v1250[34] = 1701667150;
  v1250[35] = 0xE400000000000000;
  v1251 = sub_1CA94C438("Show in iTranslate (Action Name)", 32);
  *&v1317 = v1252;
  v1253 = sub_1CA94C438("Show in iTranslate", 18);
  v1255 = v1254;
  v1318 = &v1287;
  MEMORY[0x1EEE9AC00](v1253);
  v1256 = v1323;
  sub_1CA948D98();
  v1257 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1257);
  v1258 = &v1287 - v1322;
  sub_1CA948B68();

  v1259 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1260 = sub_1CA2F9F14(v1251, v1317, v1253, v1255, 0, 0, &v1287 - v1256, v1258);
  v1261 = v1319;
  v1250[36] = v1260;
  v1262 = v1312;
  v1250[39] = v1261;
  v1250[40] = v1262;
  v1250[41] = 0x80000001CA9A8F60;
  v1263 = sub_1CA94C438("Show ${Input} translated from ${FromLanguage} to ${ToLanguage} (Parameter Summary)", 82);
  v1318 = v1264;
  v1265 = sub_1CA94C438("Show ${Input} translated from ${FromLanguage} to ${ToLanguage}", 62);
  v1267 = v1266;
  v1319 = &v1287;
  MEMORY[0x1EEE9AC00](v1265);
  sub_1CA948D98();
  v1268 = [v1325 bundleURL];
  MEMORY[0x1EEE9AC00](v1268);
  v1269 = &v1287 - v1322;
  sub_1CA948B68();

  v1270 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v1271 = sub_1CA2F9F14(v1263, v1318, v1265, v1267, 0, 0, &v1287 - v1256, v1269);
  v1272 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v1273 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v1250[42] = v1272;
  v1274 = v1303;
  v1250[45] = v1273;
  v1250[46] = v1274;
  v1250[47] = 0x80000001CA99B240;
  v1275 = swift_allocObject();
  *(v1275 + 16) = xmmword_1CA9813B0;
  v1326 = 2;
  v1327 = 1;
  v1276 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  WFDeviceIdiomResource.init(requirement:)(&v1326);
  *(v1275 + 32) = v1277;
  v1250[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v1250[48] = v1275;
  v1278 = MEMORY[0x1E69E6158];
  v1279 = sub_1CA94C1E8();
  v1280 = v1300;
  *(v1300 + 32) = v1279;
  v1281 = v1301;
  v1301[6] = v1280;
  v1282 = v1320;
  v1281[9] = v1320;
  v1281[10] = 0x656D65686353;
  v1281[15] = v1278;
  v1281[11] = 0xE600000000000000;
  v1281[12] = 0x616C736E61727469;
  v1281[13] = 0xEA00000000006574;
  v1283 = sub_1CA94C1E8();
  v1284 = v1302;
  *(v1302 + 32) = v1283;
  v1285 = v1299;
  *(v1299 + 216) = v1282;
  *(v1285 + 192) = v1284;
  return sub_1CA94C1E8();
}

uint64_t sub_1CA47D218()
{
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v221 = xmmword_1CA9813C0;
  *(inited + 16) = xmmword_1CA9813C0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001CA9A8AF0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x3531393233383031;
  *(inited + 56) = 0xEA00000000003835;
  *(inited + 72) = v1;
  *(inited + 80) = 1701667150;
  *(inited + 88) = 0xE400000000000000;
  v2 = sub_1CA94C438("Associate (App Name)", 20);
  v4 = v3;
  v5 = sub_1CA94C438("Associate", 9);
  v7 = v6;
  v8 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v230 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v231 = v9;
  v10 = &v187 - v230;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v228 = qword_1EDB9F690;
  v11 = [qword_1EDB9F690 bundleURL];
  v12 = sub_1CA948BA8();
  v229 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v227 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v187 - v227;
  sub_1CA948B68();

  v15 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v16 = sub_1CA2F9F14(v2, v4, v5, v7, 0, 0, v10, v14);
  v17 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v226 = v17;
  *(inited + 96) = v16;
  *(inited + 120) = v17;
  *(inited + 128) = 0x6D656863534C5255;
  *(inited + 136) = 0xEA00000000007365;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v214 = swift_allocObject();
  v222 = xmmword_1CA981310;
  *(v214 + 16) = xmmword_1CA981310;
  v18 = swift_initStackObject();
  v213 = v18;
  *(v18 + 16) = v221;
  *(v18 + 32) = 0x736E6F69746341;
  *(v18 + 40) = 0xE700000000000000;
  v219 = swift_allocObject();
  v218 = xmmword_1CA97EDF0;
  *(v219 + 16) = xmmword_1CA97EDF0;
  v19 = swift_initStackObject();
  v209 = xmmword_1CA981420;
  *(v19 + 16) = xmmword_1CA981420;
  *(v19 + 32) = 0x79726F6765746143;
  *(v19 + 40) = 0xE800000000000000;
  v20 = *MEMORY[0x1E6996FF0];
  type metadata accessor for WFContentCategory(0);
  v205 = v21;
  *(v19 + 48) = v20;
  *(v19 + 72) = v21;
  strcpy((v19 + 80), "CreationDate");
  *(v19 + 93) = 0;
  *(v19 + 94) = -5120;
  v201 = sub_1CA948CB8();
  *(v19 + 120) = v201;
  __swift_allocate_boxed_opaque_existential_1((v19 + 96));
  v198 = v20;
  sub_1CA948C28();
  *(v19 + 128) = 0x7470697263736544;
  *(v19 + 136) = 0xEB000000006E6F69;
  v216 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = v218;
  *(v22 + 32) = @"DescriptionResult";
  v211 = @"DescriptionResult";
  *&v220 = sub_1CA94C438("The link created in Associate, as Plain Text or Markdown", 56);
  v217 = v23;
  v24 = sub_1CA94C438("The link created in Associate, as Plain Text or Markdown", 56);
  v26 = v25;
  v223 = &v187;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v187 - v230;
  sub_1CA948D98();
  v28 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v212 = inited;
  v29 = &v187 - v227;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 40) = sub_1CA2F9F14(v220, v217, v24, v26, 0, 0, v27, v29);
  v31 = v226;
  *(v22 + 64) = v226;
  *(v22 + 72) = @"DescriptionSummary";
  v210 = @"DescriptionSummary";
  *&v220 = sub_1CA94C438("Uses Associate to quickly look up products on Amazon and create affiliate links.", 80);
  v217 = v32;
  v33 = sub_1CA94C438("Uses Associate to quickly look up products on Amazon and create affiliate links.", 80);
  v35 = v34;
  v223 = &v187;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v187 - v230;
  sub_1CA948D98();
  v37 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v187 - v227;
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v40 = sub_1CA2F9F14(v220, v217, v33, v35, 0, 0, v36, v38);
  *(v22 + 104) = v31;
  *(v22 + 80) = v40;
  type metadata accessor for DescriptionKey(0);
  v208 = v41;
  v207 = sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v42 = sub_1CA94C1E8();
  v43 = v216;
  *(v19 + 144) = sub_1CA6B3784(v42);
  *(v19 + 168) = v43;
  strcpy((v19 + 176), "Discontinued");
  *(v19 + 189) = 0;
  *(v19 + 190) = -5120;
  v44 = MEMORY[0x1E69E6370];
  *(v19 + 192) = 1;
  *(v19 + 216) = v44;
  *(v19 + 224) = 0x74616D726F46;
  *(v19 + 232) = 0xE600000000000000;
  *(v19 + 240) = 0xD00000000000002DLL;
  *(v19 + 248) = 0x80000001CA9BA300;
  v45 = MEMORY[0x1E69E6158];
  *(v19 + 264) = MEMORY[0x1E69E6158];
  *(v19 + 272) = 0x696669746E656449;
  v46 = v45;
  v204 = 0xEA00000000007265;
  *(v19 + 280) = 0xEA00000000007265;
  *(v19 + 288) = 0x686372616573;
  *(v19 + 296) = 0xE600000000000000;
  *(v19 + 312) = v45;
  strcpy((v19 + 320), "InputMapping");
  *(v19 + 333) = 0;
  *(v19 + 334) = -5120;
  *&v220 = swift_allocObject();
  *(v220 + 16) = v222;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1CA981380;
  strcpy((v47 + 32), "DestinationKey");
  *(v47 + 47) = -18;
  *(v47 + 48) = 0x7972657571;
  *(v47 + 56) = 0xE500000000000000;
  *(v47 + 72) = v46;
  *(v47 + 80) = 0x74616E6974736544;
  *(v47 + 88) = 0xEF657079546E6F69;
  *(v47 + 96) = 0x74736275534C5255;
  *(v47 + 104) = 0xEF6E6F6974757469;
  *(v47 + 120) = v46;
  *(v47 + 128) = 0x73616C436D657449;
  v199 = 0xE900000000000073;
  *(v47 + 136) = 0xE900000000000073;
  *(v47 + 144) = 0xD000000000000013;
  *(v47 + 152) = 0x80000001CA993390;
  *(v47 + 168) = v46;
  *(v47 + 176) = 0x6574656D61726150;
  *(v47 + 184) = 0xEB00000000495572;
  v215 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v48 = swift_allocObject();
  *(v48 + 16) = v221;
  v202 = 0xD000000000000014;
  v203 = 0x80000001CA99B500;
  *(v48 + 32) = @"Class";
  *(v48 + 40) = 0xD000000000000014;
  *(v48 + 48) = 0x80000001CA99B500;
  *(v48 + 64) = v46;
  *(v48 + 72) = @"Label";
  v49 = @"Class";
  v50 = @"Label";
  v197 = v49;
  v200 = v50;
  v217 = sub_1CA94C438("Item (Parameter Label)", 22);
  v196 = v51;
  v52 = sub_1CA94C438("Item", 4);
  v54 = v53;
  v223 = &v187;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v187 - v230;
  sub_1CA948D98();
  v56 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v187 - v227;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v48 + 80) = sub_1CA2F9F14(v217, v196, v52, v54, 0, 0, v55, v57);
  *(v48 + 104) = v226;
  *(v48 + 112) = @"TextAlignment";
  v59 = MEMORY[0x1E69E6158];
  *(v48 + 144) = MEMORY[0x1E69E6158];
  *(v48 + 120) = 0x7468676952;
  *(v48 + 128) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v196 = v60;
  v195 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v192 = @"TextAlignment";
  v61 = sub_1CA94C1E8();
  v62 = v215;
  *(v47 + 192) = sub_1CA2F864C(v61);
  *(v47 + 216) = v62;
  *(v47 + 224) = 0x654B656372756F53;
  *(v47 + 232) = 0xE900000000000079;
  strcpy((v47 + 240), "AssociateQuery");
  *(v47 + 255) = -18;
  *(v47 + 264) = v59;
  *(v47 + 272) = 0x7954656372756F53;
  *(v47 + 312) = v59;
  *(v47 + 280) = 0xEA00000000006570;
  *(v47 + 288) = 0x6574656D61726150;
  v193 = 0xE900000000000072;
  *(v47 + 296) = 0xE900000000000072;
  v63 = sub_1CA94C1E8();
  v64 = v220;
  *(v220 + 32) = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v223 = v65;
  *(v19 + 336) = v64;
  *(v19 + 360) = v65;
  *(v19 + 368) = 1701667150;
  *(v19 + 376) = 0xE400000000000000;
  v66 = sub_1CA94C438("Search in Associate (Action Name)", 33);
  v68 = v67;
  v69 = sub_1CA94C438("Search in Associate", 19);
  v71 = v70;
  *&v220 = &v187;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v187 - v230;
  sub_1CA948D98();
  v73 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v187 - v227;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v19 + 384) = sub_1CA2F9F14(v66, v68, v69, v71, 0, 0, v72, v74);
  *(v19 + 408) = v226;
  strcpy((v19 + 416), "OutputMapping");
  *(v19 + 430) = -4864;
  v76 = swift_allocObject();
  *(v76 + 16) = v222;
  v77 = swift_allocObject();
  v220 = xmmword_1CA981370;
  *(v77 + 16) = xmmword_1CA981370;
  strcpy((v77 + 32), "DestinationKey");
  *(v77 + 47) = -18;
  *(v77 + 48) = 0x5D5D6B6E696C5B5BLL;
  *(v77 + 56) = 0xE800000000000000;
  v78 = MEMORY[0x1E69E6158];
  *(v77 + 72) = MEMORY[0x1E69E6158];
  *(v77 + 80) = 0x74616E6974736544;
  *(v77 + 88) = 0xEF657079546E6F69;
  *(v77 + 96) = 0x74757074754FLL;
  *(v77 + 104) = 0xE600000000000000;
  *(v77 + 120) = v78;
  *(v77 + 128) = 0x73616C436D657449;
  v187 = 0x80000001CA9934F0;
  *(v77 + 136) = 0xEB00000000736573;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v217 = v79;
  *(v77 + 144) = &unk_1F49FD568;
  *(v77 + 168) = v79;
  *(v77 + 176) = 0x654B656372756F53;
  *(v77 + 184) = 0xE900000000000079;
  *(v77 + 192) = 1954047348;
  *(v77 + 200) = 0xE400000000000000;
  *(v77 + 216) = v78;
  *(v77 + 224) = 0x7954656372756F53;
  *(v77 + 264) = v78;
  v190 = 0xD000000000000011;
  v191 = 0x80000001CA9978E0;
  *(v77 + 232) = 0xEA00000000006570;
  *(v77 + 240) = 0xD000000000000011;
  *(v77 + 248) = 0x80000001CA9978E0;
  *(v76 + 32) = sub_1CA94C1E8();
  *(v19 + 432) = v76;
  v189 = 0x80000001CA9A8F60;
  *(v19 + 456) = v223;
  *(v19 + 464) = 0xD000000000000010;
  *(v19 + 472) = 0x80000001CA9A8F60;
  v80 = sub_1CA94C438("Search for ${AssociateQuery} (Parameter Summary)", 48);
  v82 = v81;
  v83 = sub_1CA94C438("Search for ${AssociateQuery}", 28);
  v85 = v84;
  v188 = &v187;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v187 - v230;
  sub_1CA948D98();
  v87 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v187 - v227;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v80, v82, v83, v85, 0, 0, v86, v88);
  v91 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v188 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v19 + 504) = v188;
  *(v19 + 480) = v91;
  *(v219 + 32) = sub_1CA94C1E8();
  v92 = swift_allocObject();
  *(v92 + 16) = v209;
  *(v92 + 32) = 0x79726F6765746143;
  v93 = v198;
  *(v92 + 40) = 0xE800000000000000;
  *(v92 + 48) = v93;
  *(v92 + 72) = v205;
  strcpy((v92 + 80), "CreationDate");
  *(v92 + 93) = 0;
  *(v92 + 94) = -5120;
  *(v92 + 120) = v201;
  __swift_allocate_boxed_opaque_existential_1((v92 + 96));
  sub_1CA948C28();
  *(v92 + 128) = 0x7470697263736544;
  *(v92 + 136) = 0xEB000000006E6F69;
  v94 = swift_allocObject();
  *(v94 + 16) = v221;
  *(v94 + 32) = @"DescriptionInput";
  v95 = @"DescriptionInput";
  *&v209 = sub_1CA94C438("An Amazon URL to convert", 24);
  v205 = v96;
  v201 = sub_1CA94C438("An Amazon URL to convert", 24);
  v98 = v97;
  *&v221 = &v187;
  MEMORY[0x1EEE9AC00](v201);
  v99 = v230;
  sub_1CA948D98();
  v100 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v187 - v227;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v94 + 40) = sub_1CA2F9F14(v209, v205, v201, v98, 0, 0, &v187 - v99, v101);
  v103 = v211;
  *(v94 + 64) = v226;
  *(v94 + 72) = v103;
  v211 = sub_1CA94C438("The converted link, as Plain Text or Markdown", 45);
  *&v209 = v104;
  v205 = sub_1CA94C438("The converted link, as Plain Text or Markdown", 45);
  v106 = v105;
  *&v221 = &v187;
  MEMORY[0x1EEE9AC00](v205);
  v107 = &v187 - v99;
  sub_1CA948D98();
  v108 = v228;
  v109 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = v227;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v94 + 80) = sub_1CA2F9F14(v211, v209, v205, v106, 0, 0, v107, &v187 - v110);
  v112 = v210;
  *(v94 + 104) = v226;
  *(v94 + 112) = v112;
  v113 = sub_1CA94C438("Converts the Amazon URL passed as input to an affiliate link using Associate.", 77);
  v210 = v114;
  v211 = v113;
  v115 = sub_1CA94C438("Converts the Amazon URL passed as input to an affiliate link using Associate.", 77);
  v117 = v116;
  *&v221 = &v187;
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v187 - v230;
  sub_1CA948D98();
  v119 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v211, v210, v115, v117, 0, 0, v118, &v187 - v110);
  *(v94 + 144) = v226;
  *(v94 + 120) = v121;
  v122 = sub_1CA94C1E8();
  v123 = v216;
  *(v92 + 144) = sub_1CA6B3784(v122);
  *(v92 + 168) = v123;
  strcpy((v92 + 176), "Discontinued");
  *(v92 + 189) = 0;
  *(v92 + 190) = -5120;
  *(v92 + 192) = 1;
  *(v92 + 216) = MEMORY[0x1E69E6370];
  *(v92 + 224) = 0x74616D726F46;
  *(v92 + 232) = 0xE600000000000000;
  *(v92 + 240) = 0xD00000000000002ELL;
  *(v92 + 248) = 0x80000001CA9BA4A0;
  v124 = MEMORY[0x1E69E6158];
  *(v92 + 264) = MEMORY[0x1E69E6158];
  *(v92 + 272) = 0x696669746E656449;
  *(v92 + 280) = v204;
  *(v92 + 288) = 0x747265766E6F63;
  *(v92 + 296) = 0xE700000000000000;
  *(v92 + 312) = v124;
  strcpy((v92 + 320), "InputMapping");
  *(v92 + 333) = 0;
  *(v92 + 334) = -5120;
  v125 = swift_allocObject();
  *(v125 + 16) = v218;
  v126 = v125;
  *&v221 = v125;
  v127 = swift_allocObject();
  *(v127 + 16) = v220;
  strcpy((v127 + 32), "DestinationKey");
  *(v127 + 47) = -18;
  *(v127 + 48) = 5001813;
  *(v127 + 56) = 0xE300000000000000;
  *(v127 + 72) = v124;
  *(v127 + 80) = 0x74616E6974736544;
  *(v127 + 88) = 0xEF657079546E6F69;
  *(v127 + 96) = 0x74736275534C5255;
  *(v127 + 104) = 0xEF6E6F6974757469;
  *(v127 + 120) = v124;
  *(v127 + 128) = 0x73616C436D657449;
  v128 = v199;
  *(v127 + 136) = v199;
  *(v127 + 144) = 0xD000000000000010;
  v129 = v187;
  *(v127 + 152) = v187;
  *(v127 + 168) = v124;
  *(v127 + 176) = 0x654B656372756F53;
  *(v127 + 184) = 0xE900000000000079;
  strcpy((v127 + 192), "AssociateURL");
  *(v127 + 205) = 0;
  *(v127 + 206) = -5120;
  *(v127 + 216) = v124;
  *(v127 + 224) = 0x7954656372756F53;
  *(v127 + 264) = v124;
  *(v127 + 232) = 0xEA00000000006570;
  *(v127 + 240) = 0x7475706E49;
  *(v127 + 248) = 0xE500000000000000;
  *(v126 + 32) = sub_1CA94C1E8();
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1CA981350;
  *(v130 + 32) = 0x73616C436D657449;
  *(v130 + 40) = v128;
  *(v130 + 48) = 0xD000000000000010;
  *(v130 + 56) = v129;
  *(v130 + 72) = v124;
  *(v130 + 80) = 0x6574656D61726150;
  *(v130 + 88) = 0xEB00000000495572;
  v131 = swift_allocObject();
  *(v131 + 16) = v220;
  v133 = v202;
  v132 = v203;
  *(v131 + 32) = v197;
  *(v131 + 40) = v133;
  *(v131 + 48) = v132;
  *(v131 + 64) = v124;
  *(v131 + 72) = @"KeyboardType";
  *(v131 + 80) = 5001813;
  *(v131 + 88) = 0xE300000000000000;
  v134 = v200;
  *(v131 + 104) = v124;
  *(v131 + 112) = v134;
  v135 = @"KeyboardType";
  v216 = sub_1CA94C438("URL (Parameter Label)", 21);
  v211 = v136;
  v137 = sub_1CA94C438("URL", 3);
  v139 = v138;
  *&v218 = &v187;
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v187 - v230;
  sub_1CA948D98();
  v141 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v187 - v227;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 120) = sub_1CA2F9F14(v216, v211, v137, v139, 0, 0, v140, v142);
  v144 = v192;
  *(v131 + 144) = v226;
  *(v131 + 152) = v144;
  *(v131 + 160) = 0x7468676952;
  *(v131 + 168) = 0xE500000000000000;
  v145 = MEMORY[0x1E69E6158];
  *(v131 + 184) = MEMORY[0x1E69E6158];
  *(v131 + 192) = @"TextContentType";
  *(v131 + 224) = v145;
  v146 = v145;
  *(v131 + 200) = 5001813;
  *(v131 + 208) = 0xE300000000000000;
  v147 = @"TextContentType";
  v148 = sub_1CA94C1E8();
  v149 = v215;
  *(v130 + 96) = sub_1CA2F864C(v148);
  *(v130 + 120) = v149;
  *(v130 + 128) = 0x654B656372756F53;
  *(v130 + 136) = 0xE900000000000079;
  strcpy((v130 + 144), "AssociateURL");
  *(v130 + 157) = 0;
  *(v130 + 158) = -5120;
  *(v130 + 168) = v146;
  *(v130 + 176) = 0x7954656372756F53;
  *(v130 + 216) = v146;
  *(v130 + 184) = 0xEA00000000006570;
  *(v130 + 192) = 0x6574656D61726150;
  *(v130 + 200) = v193;
  v150 = sub_1CA94C1E8();
  v151 = v221;
  *(v221 + 40) = v150;
  *(v92 + 336) = v151;
  *(v92 + 360) = v223;
  *(v92 + 368) = 1701667150;
  *(v92 + 376) = 0xE400000000000000;
  v152 = sub_1CA94C438("Convert URL with Associate (Action Name)", 40);
  v154 = v153;
  v155 = sub_1CA94C438("Convert URL with Associate", 26);
  v157 = v156;
  *&v221 = &v187;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v187 - v230;
  sub_1CA948D98();
  v159 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v187 - v227;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 384) = sub_1CA2F9F14(v152, v154, v155, v157, 0, 0, v158, v160);
  *(v92 + 408) = v226;
  strcpy((v92 + 416), "OutputMapping");
  *(v92 + 430) = -4864;
  v162 = swift_allocObject();
  *(v162 + 16) = v222;
  v163 = swift_allocObject();
  *(v163 + 16) = v220;
  strcpy((v163 + 32), "DestinationKey");
  *(v163 + 47) = -18;
  *(v163 + 48) = 0x5D5D6B6E696C5B5BLL;
  *(v163 + 56) = 0xE800000000000000;
  v164 = MEMORY[0x1E69E6158];
  *(v163 + 72) = MEMORY[0x1E69E6158];
  *(v163 + 80) = 0x74616E6974736544;
  *(v163 + 88) = 0xEF657079546E6F69;
  *(v163 + 96) = 0x74757074754FLL;
  *(v163 + 104) = 0xE600000000000000;
  *(v163 + 120) = v164;
  *(v163 + 128) = 0x73616C436D657449;
  *(v163 + 136) = 0xEB00000000736573;
  *(v163 + 144) = &unk_1F49FD5A8;
  *(v163 + 168) = v217;
  *(v163 + 176) = 0x654B656372756F53;
  *(v163 + 184) = 0xE900000000000079;
  *(v163 + 192) = 1954047348;
  *(v163 + 200) = 0xE400000000000000;
  *(v163 + 216) = v164;
  *(v163 + 224) = 0x7954656372756F53;
  *(v163 + 264) = v164;
  *(v163 + 232) = 0xEA00000000006570;
  v165 = v191;
  *(v163 + 240) = v190;
  *(v163 + 248) = v165;
  *(v162 + 32) = sub_1CA94C1E8();
  *(v92 + 432) = v162;
  *(v92 + 456) = v223;
  *(v92 + 464) = 0xD000000000000010;
  *(v92 + 472) = v189;
  v166 = sub_1CA94C438("Convert ${AssociateURL} (Parameter Summary)", 43);
  v168 = v167;
  v169 = sub_1CA94C438("Convert ${AssociateURL}", 23);
  v171 = v170;
  v226 = &v187;
  MEMORY[0x1EEE9AC00](v169);
  v172 = &v187 - v230;
  sub_1CA948D98();
  v173 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v187 - v227;
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176 = sub_1CA2F9F14(v166, v168, v169, v171, 0, 0, v172, v174);
  v177 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v92 + 504) = v188;
  *(v92 + 480) = v177;
  v178 = MEMORY[0x1E69E6158];
  v179 = sub_1CA94C1E8();
  v180 = v219;
  *(v219 + 40) = v179;
  v181 = v213;
  *(v213 + 48) = v180;
  v182 = v223;
  *(v181 + 72) = v223;
  strcpy((v181 + 80), "Capabilities");
  *(v181 + 93) = 0;
  *(v181 + 94) = -5120;
  *(v181 + 96) = &unk_1F49FD5E8;
  *(v181 + 120) = v217;
  *(v181 + 128) = 0x656D65686353;
  *(v181 + 168) = v178;
  *(v181 + 136) = 0xE600000000000000;
  *(v181 + 144) = 0x746169636F737361;
  *(v181 + 152) = 0xE900000000000065;
  v183 = sub_1CA94C1E8();
  v184 = v214;
  *(v214 + 32) = v183;
  v185 = v212;
  *(v212 + 168) = v182;
  *(v185 + 144) = v184;
  return sub_1CA94C1E8();
}

uint64_t sub_1CA47F0F8()
{
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v181 = xmmword_1CA9813C0;
  *(inited + 16) = xmmword_1CA9813C0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001CA9A8AF0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x3933393938303733;
  *(inited + 56) = 0xE900000000000031;
  *(inited + 72) = v1;
  *(inited + 80) = 1701667150;
  *(inited + 88) = 0xE400000000000000;
  v2 = sub_1CA94C438("Captio (App Name)", 17);
  v4 = v3;
  v5 = sub_1CA94C438("Captio", 6);
  v7 = v6;
  v8 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v187 = v9;
  v190 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v146 - v190;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v185 = qword_1EDB9F690;
  v11 = [qword_1EDB9F690 bundleURL];
  v12 = sub_1CA948BA8();
  v188 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v189 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v146 - v189;
  sub_1CA948B68();

  v15 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v16 = sub_1CA2F9F14(v2, v4, v5, v7, 0, 0, v10, v14);
  v17 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v186 = v17;
  *(inited + 96) = v16;
  *(inited + 120) = v17;
  *(inited + 128) = 0x6D656863534C5255;
  *(inited + 136) = 0xEA00000000007365;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v175 = swift_allocObject();
  v183 = xmmword_1CA981310;
  *(v175 + 16) = xmmword_1CA981310;
  v18 = swift_initStackObject();
  v174 = v18;
  *(v18 + 16) = xmmword_1CA981350;
  *(v18 + 32) = 0x736E6F69746341;
  *(v18 + 40) = 0xE700000000000000;
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_1CA97EDF0;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA981400;
  *(v19 + 32) = 0x7470697263736544;
  *(v19 + 40) = 0xEB000000006E6F69;
  v178 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = v183;
  *(v20 + 32) = @"DescriptionSummary";
  v171 = @"DescriptionSummary";
  v21 = sub_1CA94C438("Sends the specified note using Captio and returns to the shortcut.", 66);
  v177 = v22;
  v23 = sub_1CA94C438("Sends the specified note using Captio and returns to the shortcut.", 66);
  v25 = v24;
  v179 = &v146;
  MEMORY[0x1EEE9AC00](v23);
  v173 = inited;
  v26 = &v146 - v190;
  sub_1CA948D98();
  v27 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v146 - v189;
  sub_1CA948B68();

  v29 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v30 = sub_1CA2F9F14(v21, v177, v23, v25, 0, 0, v26, v28);
  *(v20 + 64) = v186;
  *(v20 + 40) = v30;
  type metadata accessor for DescriptionKey(0);
  v170 = v31;
  v169 = sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v178;
  *(v19 + 48) = sub_1CA6B3784(v32);
  *(v19 + 72) = v33;
  *(v19 + 80) = 0x74616D726F46;
  v168 = 0xD00000000000001BLL;
  *(v19 + 88) = 0xE600000000000000;
  *(v19 + 96) = 0xD00000000000001BLL;
  *(v19 + 104) = 0x80000001CA9BA620;
  v34 = MEMORY[0x1E69E6158];
  *(v19 + 120) = MEMORY[0x1E69E6158];
  *(v19 + 128) = 0x696669746E656449;
  v35 = v34;
  v167 = 0xEA00000000007265;
  *(v19 + 136) = 0xEA00000000007265;
  *(v19 + 144) = 0x65746F6E646E6573;
  *(v19 + 152) = 0xE800000000000000;
  *(v19 + 168) = v34;
  strcpy((v19 + 176), "InputMapping");
  *(v19 + 189) = 0;
  *(v19 + 190) = -5120;
  v153 = swift_allocObject();
  *(v153 + 1) = v183;
  v36 = swift_allocObject();
  v166 = xmmword_1CA981380;
  *(v36 + 16) = xmmword_1CA981380;
  strcpy((v36 + 32), "DestinationKey");
  *(v36 + 47) = -18;
  *(v36 + 48) = 1702129518;
  *(v36 + 56) = 0xE400000000000000;
  *(v36 + 72) = v35;
  *(v36 + 80) = 0x74616E6974736544;
  *(v36 + 88) = 0xEF657079546E6F69;
  *(v36 + 96) = 0x74736275534C5255;
  *(v36 + 104) = 0xEF6E6F6974757469;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x73616C436D657449;
  v164 = 0xE900000000000073;
  v165 = 0x80000001CA993390;
  v177 = 0xD000000000000013;
  *(v36 + 136) = 0xE900000000000073;
  *(v36 + 144) = 0xD000000000000013;
  *(v36 + 152) = 0x80000001CA993390;
  *(v36 + 168) = v35;
  *(v36 + 176) = 0x6574656D61726150;
  *(v36 + 184) = 0xEB00000000495572;
  v176 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v37 = swift_initStackObject();
  *(v37 + 16) = v181;
  v161 = 0xD000000000000014;
  v162 = 0x80000001CA99B500;
  *(v37 + 32) = @"Class";
  *(v37 + 40) = 0xD000000000000014;
  *(v37 + 48) = 0x80000001CA99B500;
  *(v37 + 64) = v35;
  *(v37 + 72) = @"Label";
  v38 = @"Class";
  v39 = @"Label";
  v160 = v38;
  v159 = v39;
  v40 = sub_1CA94C438("Note (Parameter Label)", 22);
  v157 = v41;
  v158 = v40;
  v42 = sub_1CA94C438("Note", 4);
  v44 = v43;
  v179 = &v146;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v146 - v190;
  sub_1CA948D98();
  v46 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v146 - v189;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v37 + 80) = sub_1CA2F9F14(v158, v157, v42, v44, 0, 0, v45, v47);
  *(v37 + 104) = v186;
  *(v37 + 112) = @"Multiline";
  *(v37 + 144) = MEMORY[0x1E69E6370];
  *(v37 + 120) = 1;
  _s3__C3KeyVMa_0(0);
  v158 = v49;
  v157 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v156 = @"Multiline";
  v50 = sub_1CA94C1E8();
  v51 = v176;
  *(v36 + 192) = sub_1CA2F864C(v50);
  *(v36 + 216) = v51;
  *(v36 + 224) = 0x654B656372756F53;
  v155 = 0xE900000000000079;
  *(v36 + 232) = 0xE900000000000079;
  *(v36 + 240) = 0x6F4E6F6974706163;
  v154 = 0xEA00000000006574;
  *(v36 + 248) = 0xEA00000000006574;
  v52 = MEMORY[0x1E69E6158];
  *(v36 + 264) = MEMORY[0x1E69E6158];
  *(v36 + 272) = 0x7954656372756F53;
  *(v36 + 312) = v52;
  *(v36 + 280) = 0xEA00000000006570;
  *(v36 + 288) = 0x6574656D61726150;
  *(v36 + 296) = 0xE900000000000072;
  v53 = sub_1CA94C1E8();
  v54 = v153;
  v153[4] = v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v179 = v55;
  *(v19 + 192) = v54;
  *(v19 + 216) = v55;
  *(v19 + 224) = 1701667150;
  *(v19 + 232) = 0xE400000000000000;
  v56 = sub_1CA94C438("Send Note (Action Name)", 23);
  v151 = v57;
  v152 = v56;
  v58 = sub_1CA94C438("Send Note", 9);
  v150 = v59;
  v153 = &v146;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v146 - v190;
  sub_1CA948D98();
  v61 = v185;
  v62 = [v185 bundleURL];
  v149 = &v146;
  MEMORY[0x1EEE9AC00](v62);
  v63 = v189;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v19 + 240) = sub_1CA2F9F14(v152, v151, v58, v150, 0, 0, v60, &v146 - v63);
  v153 = 0x80000001CA9A8F60;
  *(v19 + 264) = v186;
  *(v19 + 272) = 0xD000000000000010;
  *(v19 + 280) = 0x80000001CA9A8F60;
  v65 = sub_1CA94C438("Send ${captioNote} (Parameter Summary)", 38);
  v150 = v66;
  v151 = v65;
  v67 = sub_1CA94C438("Send ${captioNote}", 18);
  v149 = v68;
  v152 = &v146;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v146 - v190;
  sub_1CA948D98();
  v70 = [v61 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v151, v150, v67, v149, 0, 0, v69, &v146 - v63);
  v73 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v74 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v19 + 288) = v73;
  v151 = 0x80000001CA99B240;
  v152 = v74;
  v150 = 0xD000000000000011;
  *(v19 + 312) = v74;
  *(v19 + 320) = 0xD000000000000011;
  *(v19 + 328) = 0x80000001CA99B240;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v75 = swift_allocObject();
  v148 = xmmword_1CA9813B0;
  *(v75 + 16) = xmmword_1CA9813B0;
  v191 = 2;
  v192 = 1;
  v147 = type metadata accessor for WFDeviceIdiomResource();
  v76 = objc_allocWithZone(v147);
  WFDeviceIdiomResource.init(requirement:)(&v191);
  *(v75 + 32) = v77;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v19 + 360) = v146;
  *(v19 + 336) = v75;
  *(v182 + 32) = sub_1CA94C1E8();
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1CA981300;
  *(v78 + 32) = v177;
  *(v78 + 40) = 0x80000001CA9BA6E0;
  *(v78 + 48) = 1;
  *(v78 + 72) = MEMORY[0x1E69E6370];
  *(v78 + 80) = 0x7470697263736544;
  *(v78 + 88) = 0xEB000000006E6F69;
  v79 = swift_allocObject();
  *(v79 + 16) = v183;
  *(v79 + 32) = v171;
  v80 = sub_1CA94C438("Opens Captio and appends the specified note text to the current note.", 69);
  v171 = v81;
  v82 = sub_1CA94C438("Opens Captio and appends the specified note text to the current note.", 69);
  v84 = v83;
  v172 = &v146;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v146 - v190;
  sub_1CA948D98();
  v86 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v146 - v189;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v80, v171, v82, v84, 0, 0, v85, v87);
  *(v79 + 64) = v186;
  *(v79 + 40) = v89;
  v90 = sub_1CA94C1E8();
  v91 = v178;
  *(v78 + 96) = sub_1CA6B3784(v90);
  *(v78 + 120) = v91;
  *(v78 + 128) = 0x74616D726F46;
  v92 = v167;
  v93 = v168;
  *(v78 + 136) = 0xE600000000000000;
  *(v78 + 144) = v93;
  *(v78 + 152) = 0x80000001CA9BA750;
  v94 = MEMORY[0x1E69E6158];
  *(v78 + 168) = MEMORY[0x1E69E6158];
  *(v78 + 176) = 0x696669746E656449;
  *(v78 + 184) = v92;
  strcpy((v78 + 192), "appendtonote");
  *(v78 + 205) = 0;
  *(v78 + 206) = -5120;
  *(v78 + 216) = v94;
  strcpy((v78 + 224), "InputMapping");
  *(v78 + 237) = 0;
  *(v78 + 238) = -5120;
  v180 = swift_allocObject();
  *(v180 + 16) = v183;
  v95 = swift_allocObject();
  *(v95 + 16) = v166;
  strcpy((v95 + 32), "DestinationKey");
  *(v95 + 47) = -18;
  *(v95 + 48) = 1702129518;
  *(v95 + 56) = 0xE400000000000000;
  *(v95 + 72) = v94;
  *(v95 + 80) = 0x74616E6974736544;
  *(v95 + 88) = 0xEF657079546E6F69;
  *(v95 + 96) = 0x74736275534C5255;
  *(v95 + 104) = 0xEF6E6F6974757469;
  *(v95 + 120) = v94;
  *(v95 + 128) = 0x73616C436D657449;
  v96 = v177;
  *(v95 + 136) = v164;
  *(v95 + 144) = v96;
  *(v95 + 152) = v165;
  *(v95 + 168) = v94;
  *(v95 + 176) = 0x6574656D61726150;
  *(v95 + 184) = 0xEB00000000495572;
  v97 = swift_allocObject();
  *(v97 + 16) = v181;
  v98 = v161;
  *(v97 + 32) = v160;
  *(v97 + 40) = v98;
  *(v97 + 48) = v162;
  v99 = v159;
  *(v97 + 64) = v94;
  *(v97 + 72) = v99;
  *&v183 = sub_1CA94C438("Text (Parameter Label)", 22);
  *&v181 = v100;
  v101 = sub_1CA94C438("Text", 4);
  v103 = v102;
  v184 = &v146;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v146 - v190;
  sub_1CA948D98();
  v105 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v146 - v189;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 80) = sub_1CA2F9F14(v183, v181, v101, v103, 0, 0, v104, v106);
  v108 = v156;
  *(v97 + 104) = v186;
  *(v97 + 112) = v108;
  *(v97 + 144) = MEMORY[0x1E69E6370];
  *(v97 + 120) = 1;
  v109 = sub_1CA94C1E8();
  v110 = v176;
  *(v95 + 192) = sub_1CA2F864C(v109);
  *(v95 + 216) = v110;
  *(v95 + 224) = 0x654B656372756F53;
  *(v95 + 232) = v155;
  *(v95 + 240) = 0x6F4E6F6974706163;
  *(v95 + 248) = v154;
  v111 = MEMORY[0x1E69E6158];
  *(v95 + 264) = MEMORY[0x1E69E6158];
  *(v95 + 272) = 0x7954656372756F53;
  *(v95 + 312) = v111;
  *(v95 + 280) = 0xEA00000000006570;
  *(v95 + 288) = 0x6574656D61726150;
  *(v95 + 296) = 0xE900000000000072;
  v112 = sub_1CA94C1E8();
  v114 = v179;
  v113 = v180;
  *(v180 + 32) = v112;
  *(v78 + 240) = v113;
  *(v78 + 264) = v114;
  *(v78 + 272) = 1701667150;
  *(v78 + 280) = 0xE400000000000000;
  *&v183 = sub_1CA94C438("Append to Captio Note (Action Name)", 35);
  *&v181 = v115;
  v116 = sub_1CA94C438("Append to Captio Note", 21);
  v180 = v117;
  v184 = &v146;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v190;
  sub_1CA948D98();
  v119 = v185;
  v120 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v146 - v189;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 288) = sub_1CA2F9F14(v183, v181, v116, v180, 0, 0, &v146 - v118, v121);
  *(v78 + 312) = v186;
  *(v78 + 320) = 0xD000000000000010;
  *(v78 + 328) = v153;
  v184 = sub_1CA94C438("Append ${captioNote} (Parameter Summary)", 40);
  *&v183 = v123;
  v124 = sub_1CA94C438("Append ${captioNote}", 20);
  *&v181 = v125;
  v186 = &v146;
  MEMORY[0x1EEE9AC00](v124);
  sub_1CA948D98();
  v126 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v146 - v189;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v184, v183, v124, v181, 0, 0, &v146 - v118, v127);
  v130 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v78 + 336) = v130;
  v132 = v150;
  v131 = v151;
  *(v78 + 360) = v152;
  *(v78 + 368) = v132;
  *(v78 + 376) = v131;
  v133 = swift_allocObject();
  *(v133 + 16) = v148;
  v191 = 2;
  v192 = 1;
  v134 = objc_allocWithZone(v147);
  WFDeviceIdiomResource.init(requirement:)(&v191);
  *(v133 + 32) = v135;
  *(v78 + 408) = v146;
  *(v78 + 384) = v133;
  v136 = MEMORY[0x1E69E6158];
  v137 = sub_1CA94C1E8();
  v138 = v182;
  *(v182 + 40) = v137;
  v139 = v174;
  *(v174 + 48) = v138;
  v140 = v179;
  *(v139 + 72) = v179;
  *(v139 + 80) = 0xD000000000000015;
  *(v139 + 88) = 0x80000001CA9BA810;
  strcpy((v139 + 96), "callback-url");
  *(v139 + 109) = 0;
  *(v139 + 110) = -5120;
  *(v139 + 120) = v136;
  strcpy((v139 + 128), "Capabilities");
  *(v139 + 141) = 0;
  *(v139 + 142) = -5120;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v139 + 144) = &unk_1F49FD618;
  *(v139 + 168) = v141;
  *(v139 + 176) = 0x656D65686353;
  *(v139 + 216) = v136;
  *(v139 + 184) = 0xE600000000000000;
  *(v139 + 192) = 0x6F6974706163;
  *(v139 + 200) = 0xE600000000000000;
  v142 = sub_1CA94C1E8();
  v143 = v175;
  *(v175 + 32) = v142;
  v144 = v173;
  *(v173 + 168) = v140;
  *(v144 + 144) = v143;
  return sub_1CA94C1E8();
}