void sub_1CF2B6580(NSObject *a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v474 = a2;
  v475 = a3;
  v473 = a1;
  v501 = *MEMORY[0x1E69E9840];
  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  MEMORY[0x1EEE9AC00](v446);
  v445 = (v428 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v444 = (v428 - v12);
  v472 = type metadata accessor for VFSItem(0);
  v470 = *(v472 - 8);
  MEMORY[0x1EEE9AC00](v472);
  v451 = v428 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v469 = v428 - v15;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v450);
  v449 = (v428 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v447 = (v428 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v453 = (v428 - v20);
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v458);
  v462 = v428 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v460 = (v428 - v23);
  v24 = sub_1CF9E6068();
  v468 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v464 = v428 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v428 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v471 = v428 - v30;
  v463 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v463);
  v32 = v428 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v457 = v428 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v459 = v428 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v454 = v428 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v428 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E8, &unk_1CF9FCBD0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v465 = (v428 - v43);
  v44 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  v62 = v428 - v61;
  if ((a6 & 0x10) == 0)
  {
    v435 = v54;
    v436 = v57;
    v429 = v53;
    v430 = v56;
    v433 = a6;
    v434 = v55;
    v431 = v60;
    v432 = v59;
    v455 = v58;
    v456 = v52;
    v466 = v41;
    v63 = objc_sync_enter(v6);
    if (v63)
    {
LABEL_101:
      MEMORY[0x1EEE9AC00](v63);
      p_isa = &v6->super.isa;
      goto LABEL_104;
    }

    v440 = a4;
    v448 = a6;
    v443 = a5;
    v452 = v32;
    isa = v6[5].super.isa;

    v65 = objc_sync_exit(v6);
    v66 = v6;
    if (v65)
    {
      MEMORY[0x1EEE9AC00](v65);
      p_isa = &v6->super.isa;
    }

    else
    {
      v438 = *(isa + 5);
      v439 = *(isa + 48);

      v67 = v473;
      v68 = v474;
      v69 = sub_1CF9E6888();
      v70 = [v69 fp_prettyPath];

      v442 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v461 = v71;

      v467 = v66;
      v72 = sub_1CF25D188(aBlock);
      if (*(v73 + 8))
      {

        v74 = sub_1CF6E995C(&v485, v475, v67, v68);
        v486, v75, v76, v77, v78, v79, v80, v81;
        (v72)(aBlock, 0);
        v82 = v466;
        v83 = v468;
        if ((v74 & 1) == 0)
        {
          v84 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v85 = v461;

          v86 = sub_1CF9E6108();
          v87 = sub_1CF9E7298();
          v85, v88, v89, v90, v91, v92, v93, v94;
          v95 = os_log_type_enabled(v86, v87);
          v96 = v443;
          if (v95)
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            *aBlock = v98;
            *v97 = 134218242;
            *(v97 + 4) = v475;
            *(v97 + 12) = 2082;
            v99 = sub_1CEFD0DF0(v442, v85, aBlock);
            v85, v100, v101, v102, v103, v104, v105, v106;
            *(v97 + 14) = v99;
            _os_log_impl(&dword_1CEFC7000, v86, v87, "deduplicating FSEvent lookup for %llu at %{public}s", v97, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v98);
            MEMORY[0x1D386CDC0](v98, -1, -1);
            MEMORY[0x1D386CDC0](v97, -1, -1);
          }

          else
          {

            v85, v265, v266, v267, v268, v269, v270, v271;
          }

          (*(v455 + 8))(v62, v456);
          v272 = v448;
          v273 = v473;
          if (v96)
          {
            v275 = sub_1CF25D188(aBlock);
            if (*(v274 + 8))
            {
              v276 = v274;
              v277 = v465;
              *v465 = v96;
              *(v277 + 8) = 0;
              v278 = type metadata accessor for SyncState(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v278 - 8) + 56))(v277, 0, 1, v278);
              sub_1CF1C8B4C(v277, 3);
              *(v276 + 48) = v96;
              *(v276 + 56) = 0;
            }

            (v275)(aBlock, 0);
          }

          sub_1CF2A4868(v272, 0, v273, v474, v475);
          return;
        }
      }

      else
      {
        (v72)(aBlock, 0);
        v82 = v466;
        v83 = v468;
      }

      v112 = *(v470 + 56);
      v468 = v470 + 56;
      v441 = v112;
      v112(v82, 1, 1, v472);
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v113 = qword_1EDEBBE40;
      v114 = v471;
      (*(v83 + 56))(v471, 1, 1, v24);
      *aBlock = 0;
      *&aBlock[8] = 0xE000000000000000;
      sub_1CF9E7948();
      *&aBlock[8], v115, v116, v117, v118, v119, v120, v121;
      strcpy(aBlock, "lookup path ");
      aBlock[13] = 0;
      *&aBlock[14] = -5120;
      MEMORY[0x1D3868CC0](v442, v461);
      MEMORY[0x1D3868CC0](0x2044496D65746920, 0xE800000000000000);
      *&v485 = v475;
      v122 = sub_1CF9E7F98();
      v124 = v123;
      MEMORY[0x1D3868CC0](v122);
      v124, v125, v126, v127, v128, v129, v130, v131;
      v442 = *aBlock;
      v437 = *&aBlock[8];
      sub_1CEFCCBDC(v114, v28, &unk_1EC4BED20, &unk_1CFA00700);
      v132 = *(v83 + 48);
      if (v132(v28, 1, v24) == 1)
      {
        v133 = v113;
        v134 = v464;
        sub_1CF9E6048();
        if (v132(v28, 1, v24) != 1)
        {
          sub_1CEFCCC44(v28, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v134 = v464;
        (*(v83 + 32))(v464, v28, v24);
      }

      v135 = v452;
      (*(v83 + 16))(v452, v134, v24);
      v136 = v463;
      *(v135 + *(v463 + 20)) = v113;
      v137 = v135 + *(v136 + 24);
      *v137 = "FS: handle event";
      *(v137 + 8) = 16;
      *(v137 + 16) = 2;
      v138 = v113;
      v139 = v134;
      v140 = v138;
      v141 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1CF9FA450;
      *(v142 + 56) = MEMORY[0x1E69E6158];
      *(v142 + 64) = sub_1CEFD51C4();
      v143 = v437;
      *(v142 + 32) = v442;
      *(v142 + 40) = v143;
      p_isa = v142;
      BYTE8(v425) = 2;
      v144 = v140;
      sub_1CF9E6028(v141, &dword_1CEFC7000, v140, "FS: handle event", 16, 2, v135, "%s", 2);
      v142, v145, v146, v147, v148, v149, v150, v151;
      (*(v83 + 8))(v139, v24);
      sub_1CEFCCC44(v471, &unk_1EC4BED20, &unk_1CFA00700);
      v152 = v467;
      v153 = objc_sync_enter(v467);
      if (v153)
      {
        MEMORY[0x1EEE9AC00](v153);
        p_isa = &v152->super.isa;
LABEL_104:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v425, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v154 = v152[5].super.isa;

      v155 = objc_sync_exit(v152);
      if (!v155)
      {
        v156 = type metadata accessor for VFSFileTree(0);
        Strong = swift_unknownObjectWeakLoadStrong();
        v158 = v152[9].super.isa;
        0, v159, v160, v161, v162, v163, v164, v165;
        *aBlock = v475;
        memset(&aBlock[8], 0, 32);
        v166 = sub_1CEFDADE0(aBlock, *(v154 + 4), 2129920);
        v428[3] = v144;
        v182 = v166;
        LODWORD(v471) = v166;
        *&aBlock[32], v183, v184, v185, v186, v187, v188, v189;
        v464 = *(v154 + 3);
        os_unfair_lock_lock(v154 + 14);
        v191 = *(v154 + 8);
        v190 = *(v154 + 9);
        LODWORD(v463) = *(v154 + 88);
        LODWORD(v442) = *(v154 + 89);
        LODWORD(v437) = *(v154 + 90);

        v192 = *(v154 + 10);
        os_unfair_lock_unlock(v154 + 14);
        v428[1] = v428;
        MEMORY[0x1EEE9AC00](v193);
        v428[-10] = v156;
        LODWORD(v428[-9]) = v182;
        v428[-8] = v154;
        v428[-7] = Strong;
        v428[4] = Strong;
        v428[-6] = v158;
        LOBYTE(v428[-5]) = 0;
        v425 = xmmword_1CF9FD950;
        LOBYTE(p_isa) = -1;
        v427 = 0;
        *&aBlock[32] = v191;
        *&aBlock[40] = v190;
        *aBlock = MEMORY[0x1E69E9820];
        *&aBlock[8] = 1107296256;
        *&aBlock[16] = sub_1CEFDB088;
        *&aBlock[24] = &block_descriptor_1433;
        v194 = _Block_copy(aBlock);
        v428[2] = v190;

        v428[0] = v194;
        *&v485 = v194;
        *(&v485 + 1) = v192;
        LOBYTE(v486) = v463;
        BYTE1(v486) = v442;
        BYTE2(v486) = v437;
        sub_1CEFDB034();
        v195 = swift_allocError();
        *v196 = 6;
        *(v196 + 8) = 0u;
        *(v196 + 24) = 0u;
        *(v196 + 40) = 19;
        v197 = v453;
        *v453 = v195;
        swift_storeEnumTagMultiPayload();
        v198 = swift_allocObject();
        v198[2] = v197;
        v198[3] = sub_1CF2B9F90;
        v198[4] = &v428[-12];
        v199 = swift_allocObject();
        *(v199 + 16) = sub_1CF1DBD3C;
        *(v199 + 24) = v198;
        *&aBlock[32] = sub_1CF1DBD5C;
        *&aBlock[40] = v199;
        *aBlock = MEMORY[0x1E69E9820];
        *&aBlock[8] = 1107296256;
        *&aBlock[16] = sub_1CEFDB270;
        *&aBlock[24] = &block_descriptor_1444;
        v200 = _Block_copy(aBlock);

        v201 = fpfs_fgetfileattrs_detailed();
        _Block_release(v200);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        if (v201)
        {
          swift_getErrorValue();
          v203 = v476;
          v204 = swift_allocError();
          *v205 = 6;
          *(v205 + 8) = 0u;
          *(v205 + 24) = 0u;
          *(v205 + 40) = 19;
          v206 = v201;
          v207 = sub_1CF199074(v204, v203);

          v197 = v453;
          v208 = v447;
          *v447 = v207;
          swift_storeEnumTagMultiPayload();
          sub_1CEFDA9E0(v208, v197, &qword_1EC4BE000, &unk_1CFA006A0);
        }

        v209 = v449;
        sub_1CEFCCBDC(v197, v449, &qword_1EC4BE000, &unk_1CFA006A0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          sub_1CEFE55D0(v209, v460, &unk_1EC4BE2F0, qword_1CFA04220);
          sub_1CEFCCC44(v197, &qword_1EC4BE000, &unk_1CFA006A0);

          _Block_release(v428[0]);

          v461, v279, v280, v281, v282, v283, v284, v285;
          v220 = v452;
          v181 = v472;
          v222 = v462;
          goto LABEL_41;
        }

        *aBlock = *v209;
        v210 = *aBlock;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();

        sub_1CEFCCC44(v197, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v428[0]);

        v211 = v210;
        *aBlock = sub_1CF9E52A8();
        sub_1CF196978();
        v212 = sub_1CF9E5658();

        v220 = v452;
        v221 = v469;
        v222 = v462;
        if (v212)
        {
          v461, v213, v214, v215, v216, v217, v218, v219;

          v223 = v460;
          *v460 = xmmword_1CF9FD940;
          *(v223 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v181 = v472;
LABEL_41:
          v169 = v220;
          v180 = v459;
          if ((v471 & 0x80000000) == 0)
          {
            close(v471);
          }

          swift_unknownObjectRelease();
          v170 = v466;
          sub_1CEFCCC44(v466, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v179 = v448;
          v178 = v460;
          goto LABEL_44;
        }

        v264 = v467;
        if ((v471 & 0x80000000) == 0)
        {
          close(v471);
        }

        v167 = v210;
        *aBlock = sub_1CF9E5328();
        sub_1CF196978();
        v168 = sub_1CF9E5658();

        swift_unknownObjectRelease();

        if (v168)
        {
          v169 = v220;
          v170 = v466;
          sub_1CEFCCC44(v466, &unk_1EC4BEC00, &unk_1CF9FCB60);

          v461, v171, v172, v173, v174, v175, v176, v177;
          v178 = v460;
          *v460 = xmmword_1CF9FD930;
          *(v178 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v179 = v448;
          v180 = v459;
          v181 = v472;
LABEL_44:
          sub_1CEFE55D0(v178, v222, &unk_1EC4BE2F0, qword_1CFA04220);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1CEFCCC44(v222, &unk_1EC4BE2F0, qword_1CFA04220);
            v286 = 1;
            v287 = v170;
            v288 = v454;
          }

          else
          {
            v289 = v222;
            v288 = v454;
            sub_1CEFE4C60(v289, v454, type metadata accessor for VFSItem);
            v286 = 0;
            v287 = v170;
          }

          v441(v288, v286, 1, v181);
          sub_1CEFE55D0(v288, v287, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v220 = v169;
          v221 = v469;
          goto LABEL_56;
        }

        v479[0] = v210;
        v224 = v210;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        if (swift_dynamicCast())
        {
          v483[5] = v497;
          v483[6] = v498;
          v483[7] = v499;
          v483[1] = *&aBlock[16];
          v483[2] = *&aBlock[32];
          v483[3] = v495;
          v483[4] = v496;
          v483[0] = *aBlock;
          v491 = v498;
          v492 = v499;
          v487 = *&aBlock[32];
          v488 = v495;
          v489 = v496;
          v490 = v497;
          v484 = v500;
          v493 = v500;
          v485 = *aBlock;
          v486 = *&aBlock[16];
          if (sub_1CF2B971C(&v485) == 4)
          {
            nullsub_1();
            v475 = *v232;
            v233 = *(v232 + 8);
            v234 = *(v232 + 16);
            v235 = *(v232 + 24);
            v236 = fpfs_current_or_default_log();
            v237 = v430;
            sub_1CF9E6128();
            v238 = sub_1CF9E6108();
            v239 = sub_1CF9E7298();
            v240 = os_log_type_enabled(v238, v239);
            LODWORD(v474) = v233;
            v473 = v234;
            LODWORD(v471) = v235;
            if (v240)
            {
              LODWORD(v470) = v239;
              v241 = swift_slowAlloc();
              v242 = swift_slowAlloc();
              v480 = v242;
              v481 = v234;
              *v241 = 136315394;
              v482 = v235;
              v243 = VFSItemID.description.getter(v242);
              v6 = v244;
              v245 = sub_1CEFD0DF0(v243, v244, &v480);
              v6, v246, v247, v248, v249, v250, v251, v252;
              *(v241 + 4) = v245;
              *(v241 + 12) = 2080;
              if (v233 == 255)
              {
LABEL_100:
                __break(1u);
                goto LABEL_101;
              }

              v481 = v475;
              v482 = v233;
              v253 = VFSItemID.description.getter(v63);
              v255 = v254;
              v256 = sub_1CEFD0DF0(v253, v254, &v480);
              v255, v257, v258, v259, v260, v261, v262, v263;
              *(v241 + 14) = v256;
              _os_log_impl(&dword_1CEFC7000, v238, v470, "Item mismatch when resolving FSEvent: got %s when expecting %s", v241, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v242, -1, -1);
              MEMORY[0x1D386CDC0](v241, -1, -1);

              (*(v455 + 8))(v430, v456);
              v264 = v467;
            }

            else
            {

              (*(v455 + 8))(v237, v456);
            }

            v388 = v466;
            if (v443)
            {
              v390 = sub_1CF25D188(&v481);
              if (*(v389 + 8))
              {
                v391 = v389;
                v392 = v443;
                v393 = v465;
                *v465 = v443;
                *(v393 + 8) = 0;
                v394 = type metadata accessor for SyncState(0);
                swift_storeEnumTagMultiPayload();
                (*(*(v394 - 8) + 56))(v393, 0, 1, v394);
                sub_1CF1C8B4C(v393, 3);
                *(v391 + 48) = v392;
                *(v391 + 56) = 0;
              }

              (v390)(&v481, 0);
            }

            v395 = sub_1CF25D188(&v481);
            if (*(v396 + 8))
            {
              v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
              v398 = *(v397 + 48);
              v399 = *(v397 + 64);
              v400 = v444;
              v401 = v472;
              *v444 = v473;
              *(v400 + 8) = v471;
              v441(v400 + v398, 1, 1, v401);
              *(v400 + v399) = 0;
              swift_storeEnumTagMultiPayload();
              sub_1CF25C780(v400, 0, 0);
              sub_1CEFCCC44(v400, &unk_1EC4BED40, &unk_1CFA00720);
            }

            (v395)(&v481, 0);
            v402 = v461;
            v6 = v264;
            v63 = sub_1CF25D188(&v481);
            v403 = v63;
            if (!*(v404 + 8))
            {

              v402, v417, v418, v419, v420, v421, v422, v423;
              v403(&v481, 0);
              goto LABEL_97;
            }

            v405 = v474;
            if (v474 != 255)
            {

              v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
              v407 = *(v406 + 48);
              v408 = *(v406 + 64);
              v402, v409, v410, v411, v412, v413, v414, v415;
              v416 = v445;
              *v445 = v475;
              *(v416 + 8) = v405;
              v441(v416 + v407, 1, 1, v472);
              *(v416 + v408) = 0;
              swift_storeEnumTagMultiPayload();
              sub_1CF25C780(v416, 0, 0);
              sub_1CEFCCC44(v416, &unk_1EC4BED40, &unk_1CFA00720);
              v403(&v481, 0);
LABEL_97:
              sub_1CF9E7458();
              v424 = v452;
              sub_1CF9E6038();
              sub_1CEFCCC44(v388, &unk_1EC4BEC00, &unk_1CF9FCB60);
              sub_1CEFE5888(v424, type metadata accessor for Signpost);

              return;
            }

            __break(1u);
            goto LABEL_100;
          }

          sub_1CEFCCC44(v483, &unk_1EC4BE320, &unk_1CFA08B50);
        }

        v461, v225, v226, v227, v228, v229, v230, v231;

        v290 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v291 = v210;
        v292 = sub_1CF9E6108();
        v293 = sub_1CF9E7298();

        if (os_log_type_enabled(v292, v293))
        {
          v294 = swift_slowAlloc();
          v295 = swift_slowAlloc();
          *v294 = 138412290;
          swift_getErrorValue();
          v296 = Error.prettyDescription.getter(v477, v478);
          *(v294 + 4) = v296;
          *v295 = v296;
          _os_log_impl(&dword_1CEFC7000, v292, v293, "error when resolving item: %@", v294, 0xCu);
          sub_1CEFCCC44(v295, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v295, -1, -1);
          v297 = v294;
          v221 = v469;
          MEMORY[0x1D386CDC0](v297, -1, -1);
        }

        else
        {
        }

        v179 = v448;
        v180 = v459;
        v287 = v466;
        (*(v455 + 8))(v436, v456);
        v181 = v472;
LABEL_56:
        sub_1CF9E7458();
        sub_1CF9E6038();
        sub_1CEFCCBDC(v287, v180, &unk_1EC4BEC00, &unk_1CF9FCB60);
        if ((*(v470 + 48))(v180, 1, v181) == 1)
        {
          sub_1CEFCCC44(v180, &unk_1EC4BEC00, &unk_1CF9FCB60);
          if ((v433 & 0x80A00) == 0x80000)
          {
            v298 = sub_1CF25D188(aBlock);
            if (*(v299 + 8))
            {
              sub_1CF8DD07C(v475, v473, v474);
              v301, v300, v301, v302, v303, v304, v305, v306;
            }

            (v298)(aBlock, 0);
            v307 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v308 = sub_1CF9E6108();
            v309 = sub_1CF9E7298();
            if (os_log_type_enabled(v308, v309))
            {
              v310 = swift_slowAlloc();
              *v310 = 134349056;
              *(v310 + 4) = v475;
              _os_log_impl(&dword_1CEFC7000, v308, v309, "Ignoring unresolved own-event on fileID(%{public}llu)", v310, 0xCu);
              MEMORY[0x1D386CDC0](v310, -1, -1);
            }

            (*(v455 + 8))(v434, v456);
            v311 = v287;
            goto LABEL_74;
          }

          v345 = v181;
          v346 = sub_1CF25D188(aBlock);
          if (*(v347 + 8))
          {
            v348 = v474;

            sub_1CF6E9AF0(&v485, v473, v348);
            *(&v485 + 1), v349, v350, v351, v352, v353, v354, v355;
          }

          (v346)(aBlock, 0);
          v356 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v357 = sub_1CF9E6108();
          v358 = sub_1CF9E7298();
          if (os_log_type_enabled(v357, v358))
          {
            v359 = swift_slowAlloc();
            *v359 = 134349056;
            *(v359 + 4) = v475;
            _os_log_impl(&dword_1CEFC7000, v357, v358, "Unable to resolve FSEvent item attributes for event on fileID(%{public}llu)", v359, 0xCu);
            MEMORY[0x1D386CDC0](v359, -1, -1);
          }

          (*(v455 + 8))(v435, v456);
          v360 = v457;
          v441(v457, 1, 1, v345);
          sub_1CF2B2820(v473, v474, v475, v440, v438, v439, v443, v179, v360);
          sub_1CEFCCC44(v360, &unk_1EC4BEC00, &unk_1CF9FCB60);
        }

        else
        {
          sub_1CEFE4C60(v180, v221, type metadata accessor for VFSItem);
          v312 = v221 + *(v181 + 28);
          v313 = type metadata accessor for ItemMetadata(0);
          v314 = *(v312 + *(v313 + 68));
          if (v314 == 2 || (v314 & 1) == 0 || *(v312 + *(v313 + 80)) == 1)
          {
            v315 = v287;
            v316 = [objc_allocWithZone(FPLoggerScope) init];
            v317 = fpfs_current_or_default_log();
            v318 = v431;
            sub_1CF9E6128();
            v319 = v451;
            sub_1CEFD90AC(v221, v451, type metadata accessor for VFSItem);
            v320 = v316;
            v321 = sub_1CF9E6108();
            v322 = sub_1CF9E7298();

            if (os_log_type_enabled(v321, v322))
            {
              v323 = swift_slowAlloc();
              v324 = swift_slowAlloc();
              v325 = swift_slowAlloc();
              v471 = v320;
              v326 = v325;
              *aBlock = v325;
              *v323 = 138412546;
              v327 = [v471 enter];
              *(v323 + 4) = v327;
              *v324 = v327;
              *(v323 + 12) = 2080;
              v328 = sub_1CF255338();
              v330 = v329;
              sub_1CEFE5888(v319, type metadata accessor for VFSItem);
              v331 = sub_1CEFD0DF0(v328, v330, aBlock);
              v330, v332, v333, v334, v335, v336, v337, v338;
              *(v323 + 14) = v331;
              _os_log_impl(&dword_1CEFC7000, v321, v322, "%@ Delivering FSEvent notification for change on %s", v323, 0x16u);
              sub_1CEFCCC44(v324, &qword_1EC4BE350, &unk_1CF9FC3B0);
              v339 = v324;
              v340 = v466;
              MEMORY[0x1D386CDC0](v339, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v326);
              v341 = v326;
              v320 = v471;
              MEMORY[0x1D386CDC0](v341, -1, -1);
              v342 = v323;
              v221 = v469;
              MEMORY[0x1D386CDC0](v342, -1, -1);

              v343 = *(v455 + 8);
              v343(v318, v456);
              v344 = v474;
            }

            else
            {

              sub_1CEFE5888(v319, type metadata accessor for VFSItem);
              v343 = *(v455 + 8);
              v343(v318, v456);
              v344 = v474;
              v340 = v315;
            }

            v362 = v457;
            sub_1CEFD90AC(v221, v457, type metadata accessor for VFSItem);
            v441(v362, 0, 1, v472);
            sub_1CF2B2820(v473, v344, v475, v440, v438, v439, v443, v448, v362);
            sub_1CEFCCC44(v362, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v363 = fpfs_current_or_default_log();
            v364 = v432;
            sub_1CF9E6128();
            v365 = v320;
            v366 = sub_1CF9E6108();
            v367 = v221;
            v368 = sub_1CF9E7298();

            if (os_log_type_enabled(v366, v368))
            {
              v369 = swift_slowAlloc();
              v370 = swift_slowAlloc();
              *v369 = 138412290;
              v371 = [v365 leave];
              *(v369 + 4) = v371;
              *v370 = v371;
              _os_log_impl(&dword_1CEFC7000, v366, v368, "%@", v369, 0xCu);
              sub_1CEFCCC44(v370, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v370, -1, -1);
              MEMORY[0x1D386CDC0](v369, -1, -1);
            }

            v343(v364, v456);
            sub_1CEFE5888(v367, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v340, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v361 = v452;
            goto LABEL_79;
          }

          v372 = sub_1CF25D188(aBlock);
          if (*(v373 + 8))
          {
            v374 = v474;

            v375 = v374;
            v221 = v469;
            sub_1CF6E9AF0(&v485, v473, v375);
            *(&v485 + 1), v376, v377, v378, v379, v380, v381, v382;
          }

          (v372)(aBlock, 0);
          v383 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v384 = sub_1CF9E6108();
          v385 = sub_1CF9E7298();
          if (os_log_type_enabled(v384, v385))
          {
            v386 = swift_slowAlloc();
            *v386 = 134349056;
            *(v386 + 4) = v475;
            _os_log_impl(&dword_1CEFC7000, v384, v385, "Ignoring event for item in an ignored folder fileID(%{public}llu)", v386, 0xCu);
            MEMORY[0x1D386CDC0](v386, -1, -1);
          }

          (*(v455 + 8))(v429, v456);
          v387 = v457;
          v441(v457, 1, 1, v472);
          sub_1CF2B2820(v473, v474, v475, v440, v438, v439, v443, v179, v387);
          sub_1CEFCCC44(v387, &unk_1EC4BEC00, &unk_1CF9FCB60);
          sub_1CEFE5888(v221, type metadata accessor for VFSItem);
        }

        v311 = v287;
LABEL_74:
        sub_1CEFCCC44(v311, &unk_1EC4BEC00, &unk_1CF9FCB60);
        v361 = v220;
LABEL_79:
        sub_1CEFE5888(v361, type metadata accessor for Signpost);
        return;
      }

      MEMORY[0x1EEE9AC00](v155);
      p_isa = &v152->super.isa;
    }

    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v425, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v108 = sub_1CF25D188(aBlock);
  if (*(v107 + 8))
  {
    v109 = v107;
    v110 = v465;
    *v465 = a5;
    *(v110 + 8) = 0;
    v111 = type metadata accessor for SyncState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
    sub_1CF1C8B4C(v110, 3);
    *(v109 + 48) = a5;
    *(v109 + 56) = 0;
  }

  (v108)(aBlock, 0);
}

void sub_1CF2B8C00()
{
  v1 = sub_1CF9E6068();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  if (qword_1EDEA8528 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDEBB990;
  (*(v2 + 56))(v10, 1, 1, v1);
  sub_1CEFCCBDC(v10, v7, &unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(v2 + 48);
  if (v12(v7, 1, v1) == 1)
  {
    v13 = v11;
    sub_1CF9E6048();
    if (v12(v7, 1, v1) != 1)
    {
      sub_1CEFCCC44(v7, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
  }

  v14 = sub_1CF9E7478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v15 = swift_allocObject();
  v40 = xmmword_1CF9FA450;
  *(v15 + 16) = xmmword_1CF9FA450;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1CEFD51C4();
  *(v15 + 32) = 0x20646570706F7244;
  *(v15 + 40) = 0xEF746E6576455346;
  sub_1CF9E6028(v14, &dword_1CEFC7000, v11, "Reset stream", 12, 2, v4, "%s", 2);
  v15, v16, v17, v18, v19, v20, v21, v22;
  (*(v2 + 8))(v4, v1);
  sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
  v23 = v0 + qword_1EDEBBE70;
  swift_beginAccess();
  v24 = *(v23 + 16);
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v26;
    v27 = *(v0 + 16);
    if (v27)
    {
      v28 = *(v0 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v40;
      v32 = v31 + v30;
      *v32 = 1;
      *(v32 + 8) = 3;
      *(v32 + 16) = 1;
      swift_storeEnumTagMultiPayload();

      v27(v31, MEMORY[0x1E69E7CC0], 0, 0);
      sub_1CEFF7124(v27, v28);
      v31, v33, v34, v35, v36, v37, v38, v39;
    }
  }
}

void sub_1CF2B9060(unint64_t a1)
{
  v2 = sub_1CF9E6068();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  if (qword_1EDEA8528 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDEBB990;
  (*(v3 + 56))(v11, 1, 1, v2);
  v67 = a1;
  v13 = resetReason2str(a1);
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  sub_1CEFCCBDC(v11, v8, &unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(v3 + 48);
  if (v17(v8, 1, v2) == 1)
  {
    v18 = v12;
    sub_1CF9E6048();
    if (v17(v8, 1, v2) != 1)
    {
      sub_1CEFCCC44(v8, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
  }

  v19 = sub_1CF9E7478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v20 = swift_allocObject();
  v66 = xmmword_1CF9FA450;
  *(v20 + 16) = xmmword_1CF9FA450;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1CEFD51C4();
  *(v20 + 32) = v14;
  *(v20 + 40) = v16;
  sub_1CF9E6028(v19, &dword_1CEFC7000, v12, "Reset stream", 12, 2, v5, "%s", 2);
  v20, v21, v22, v23, v24, v25, v26, v27;
  (*(v3 + 8))(v5, v2);
  v16, v28, v29, v30, v31, v32, v33, v34;
  sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = v67;
  if (v67 == 11)
  {
    v36 = *(v68 + 16);
    if (!v36)
    {
      return;
    }

    v37 = *(v68 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v38 = *(type metadata accessor for SyncState(0) - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v66;

    sub_1CF25F590(v40 + v39);
    swift_storeEnumTagMultiPayload();
    v36(MEMORY[0x1E69E7CC0], v40, 0, 0);
    sub_1CEFF7124(v36, v37);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v69 = 0;
    v48 = v68;

    sub_1CF9E62A8();
    v49 = *(v48 + 16);
    if (!v49)
    {
      return;
    }

    v50 = *(v48 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = v66;
    v54 = v53 + v52;
    *v54 = (v35 & 0xFFFFFFFFFFFFFFFELL) == 8;
    *(v54 + 8) = v35;
    *(v54 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v55 = *(type metadata accessor for SyncState(0) - 8);
    v56 = *(v55 + 72);
    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1CF9FA440;
    v58 = v40 + v57;

    *v58 = FSEventsGetCurrentEventId();
    *(v58 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1CF25F590(v40 + v57 + v56);
    swift_storeEnumTagMultiPayload();
    v49(v53, v40, 0, 0);
    sub_1CEFF7124(v49, v50);
    v53, v59, v60, v61, v62, v63, v64, v65;
  }

  v40, v41, v42, v43, v44, v45, v46, v47;
}

__CFString *resetReason2str(unint64_t a1)
{
  if (a1 <= 0xD)
  {
    v1 = off_1E83C20B0[a1];
    v2 = off_1E83C2040[a1];
  }

  return v1;
}

uint64_t sub_1CF2B971C(uint64_t a1)
{
  if (*(a1 + 128) <= 0xAu)
  {
    return *(a1 + 128);
  }

  else
  {
    return (*a1 + 11);
  }
}

uint64_t sub_1CF2B9768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CF2664E0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 9) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t sub_1CF2B9854(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1CF9E5A58() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v2 + 40);

  return a2(a1, v6, v7, v8, v10, v2 + v5, v9);
}

void sub_1CF2B9910(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + 40);

  sub_1CF28979C(a1, v5, v6, v7, v11, v1 + v4, v9, v10);
}

uint64_t objectdestroy_191Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_179Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF2B9B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF2B9B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CF2B9BBC()
{
  result = qword_1EDEA62B0[0];
  if (!qword_1EDEA62B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA62B0);
  }

  return result;
}

unint64_t sub_1CF2B9C14()
{
  result = qword_1EC4BEE68;
  if (!qword_1EC4BEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE68);
  }

  return result;
}

unint64_t sub_1CF2B9C6C()
{
  result = qword_1EC4BEE70;
  if (!qword_1EC4BEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE70);
  }

  return result;
}

unint64_t sub_1CF2B9CC4()
{
  result = qword_1EC4BEE78;
  if (!qword_1EC4BEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE78);
  }

  return result;
}

id FPDiagnosticSignatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPDiagnosticSignatures.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPDiagnosticSignatures();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FPDiagnosticSignatures.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FPDiagnosticSignatures();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1CF2BA390(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 32);
  v16[0] = *(a1 + 16);
  v16[1] = v4;
  v5 = type metadata accessor for ThrottlingKey(0, v16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = *(a1 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, v2, a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v9 + 8))(v13, a1);
      return 0xD000000000000015;
    }

    else
    {
      (*(v6 + 32))(v8, v13, v5);
      *&v16[0] = 0;
      *(&v16[0] + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA3DDA0);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      (*(v6 + 8))(v8, v5);
      return 0xD000000000000011;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return 0xD000000000000011;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x6564206B63757473;
  }

  else
  {
    return 0xD000000000000010;
  }
}

BOOL sub_1CF2BA6AC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    return EnumCaseMultiPayload != 2 && EnumCaseMultiPayload == 3;
  }

  (*(v2 + 8))(v5, a1);
  return 0;
}

uint64_t sub_1CF2BA7B0(uint64_t a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v43 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v43 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v47 = v6;
  v48 = AssociatedTypeWitness;
  v49 = AssociatedConformanceWitness;
  v50 = v9;
  v10 = type metadata accessor for ReconciliationID(0, &v47);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  (*(v14 + 16))(&v43 - v12, v2, v10, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v45;
    v15 = v46;
    (*(v46 + 32))(v45, v13, AssociatedTypeWitness);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](980444732, 0xE400000000000000);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](0x3A726F72726520, 0xE700000000000000);
    v17 = v2 + *(a1 + 52);
    v18 = sub_1CF19F0C0(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24) | (*(v17 + 26) << 16));
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v28 = v47;
    (*(v15 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v30 = v43;
    v29 = v44;
    (*(v44 + 32))(v43, v13, v6);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](980641340, 0xE400000000000000);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](0x3A726F72726520, 0xE700000000000000);
    v31 = v2 + *(a1 + 52);
    v32 = sub_1CF19F0C0(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24) | (*(v31 + 26) << 16));
    v34 = v33;
    MEMORY[0x1D3868CC0](v32);
    v34, v35, v36, v37, v38, v39, v40, v41;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v28 = v47;
    (*(v29 + 8))(v30, v6);
  }

  return v28;
}

uint64_t sub_1CF2BABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  if (sub_1CF024490(a1, a2, AssociatedTypeWitness, v12))
  {
    v17[0] = a3;
    v17[1] = a4;
    v17[2] = a5;
    v17[3] = a6;
    v13 = *(type metadata accessor for FPDiagnosticsManagerStateKey(0, v17) + 52);
    v14 = sub_1CF1A752C(*(a1 + v13), *(a1 + v13 + 8), *(a1 + v13 + 16), *(a1 + v13 + 24) | (*(a1 + v13 + 26) << 16), *(a2 + v13), *(a2 + v13 + 8), *(a2 + v13 + 16), *(a2 + v13 + 24) | (*(a2 + v13 + 26) << 16));
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1CF2BAD24(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFA2DD50 == a2)
  {
    a2, 0x80000001CFA2DD50, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF2BADF4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x44496D657469;
  }
}

uint64_t sub_1CF2BAE2C(void *a1, void *a2)
{
  v22 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v20 = a2;
  *(&v26 + 1) = v22;
  v27 = v3;
  v28 = v4;
  type metadata accessor for FPDiagnosticsManagerStateKey.CodingKeys(255, &v26);
  swift_getWitnessTable();
  v21 = sub_1CF9E7F78();
  v24 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v29 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = v23;
  v11 = swift_getAssociatedConformanceWitness();
  *&v26 = AssociatedTypeWitness;
  *(&v26 + 1) = v8;
  v12 = v21;
  v27 = AssociatedConformanceWitness;
  v28 = v11;
  type metadata accessor for ReconciliationID(0, &v26);
  swift_getWitnessTable();
  v13 = v25;
  sub_1CF9E7F08();
  if (v13)
  {
    return (*(v24 + 8))(v6, v12);
  }

  v15 = v24;
  v16 = (v10 + *(v20 + 13));
  v17 = *v16;
  v18 = *(v16 + 2);
  v19 = *(v16 + 12);
  LOBYTE(v16) = *(v16 + 26);
  v26 = v17;
  v27 = v18;
  LOWORD(v28) = v19;
  BYTE2(v28) = v16;
  v29 = 1;
  sub_1CF1A8980();
  sub_1CF9E7F08();
  return (*(v15 + 8))(v6, v12);
}

uint64_t sub_1CF2BB100(uint64_t a1, uint64_t a2)
{
  v8[0] = swift_getAssociatedTypeWitness();
  v8[1] = swift_getAssociatedTypeWitness();
  v8[2] = swift_getAssociatedConformanceWitness();
  v8[3] = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for ReconciliationID(0, v8);
  sub_1CF01D348(a1, v4);
  v5 = v2 + *(a2 + 52);
  return sub_1CF1A0B24(a1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24) | (*(v5 + 26) << 16));
}

uint64_t sub_1CF2BB228(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF2BB100(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF2BB270@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a1;
  v34 = a6;
  *&v42 = swift_getAssociatedTypeWitness();
  *(&v42 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = swift_getAssociatedConformanceWitness();
  v38 = type metadata accessor for ReconciliationID(0, &v42);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v32 - v10;
  *&v42 = a2;
  *(&v42 + 1) = a3;
  AssociatedConformanceWitness = a4;
  v44 = a5;
  type metadata accessor for FPDiagnosticsManagerStateKey.CodingKeys(255, &v42);
  swift_getWitnessTable();
  v37 = sub_1CF9E7E08();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v32 - v11;
  *&v42 = a2;
  *(&v42 + 1) = a3;
  AssociatedConformanceWitness = a4;
  v44 = a5;
  v13 = type metadata accessor for FPDiagnosticsManagerStateKey(0, &v42);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = v40;
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v17 = v41;
  sub_1CF9E8298();
  v18 = v16;
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v19 = v15;
  v41 = v13;
  v21 = v35;
  v20 = v36;
  v22 = v18;
  LOBYTE(v42) = 0;
  v23 = v38;
  swift_getWitnessTable();
  v24 = v37;
  sub_1CF9E7D88();
  (*(v20 + 32))(v19, v39, v23);
  v45 = 1;
  sub_1CF1A8870();
  sub_1CF9E7D88();
  (*(v21 + 8))(v12, v24);
  v25 = AssociatedConformanceWitness;
  v26 = v44;
  v27 = BYTE2(v44);
  v28 = v41;
  v29 = &v19[*(v41 + 52)];
  *v29 = v42;
  *(v29 + 2) = v25;
  *(v29 + 12) = v26;
  v29[26] = v27;
  v30 = v33;
  (*(v33 + 16))(v34, v19, v28);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return (*(v30 + 8))(v19, v28);
}

uint64_t sub_1CF2BB6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a5;
  v19 = HIWORD(a5);
  v20 = a5 >> 8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for ReconciliationID(0, &AssociatedTypeWitness);
  (*(*(v14 - 8) + 32))(a9, a1, v14);
  AssociatedTypeWitness = a6;
  v25 = a7;
  AssociatedConformanceWitness = a8;
  v27 = a10;
  result = type metadata accessor for FPDiagnosticsManagerStateKey(0, &AssociatedTypeWitness);
  v16 = a9 + *(result + 52);
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = a4;
  *(v16 + 24) = v13;
  *(v16 + 25) = v20;
  *(v16 + 26) = v19;
  return result;
}

uint64_t sub_1CF2BB8AC(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF0BA674(v3, *v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF2BB90C@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X6>, void *a6@<X7>)
{
  result = sub_1CF2BAD24(a1, a2, *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), a5, a6);
  *a3 = result;
  return result;
}

uint64_t sub_1CF2BB940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF2BB994(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF2BBA2C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  sub_1CF2BB100(v4, a2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF2BBA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    MEMORY[0x1D3868CC0](a2, a3);
    v5 = 0x3A6E6961686320;
    v4 = 0xE700000000000000;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  sub_1CF9E7948();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  v13 = MEMORY[0x1D3868FE0](a1, MEMORY[0x1E69E6158]);
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](v5, v4);
  v4, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x657620746E65733CLL;
}

uint64_t sub_1CF2BBB88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v15[1] = a3;
  v15[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEF48, &qword_1CFA010F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4BEF50, &qword_1CFA01100);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF2CAAA8();
  sub_1CF9E82A8();
  sub_1CF2CAAFC();
  sub_1CF9E7E18();
  v20 = v16;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFE7C14(&qword_1EDEA3780, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v13 = v17;
  sub_1CF9E7F08();
  if (!v13)
  {
    v18 = 1;
    sub_1CF9E7E38();
  }

  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

void sub_1CF2BBE44(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  if (a1 == 1953391987 && a2 == 0xE400000000000000)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v20 = 0;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    v20 = v12 ^ 1;
  }

  *a3 = v20 & 1;
}

uint64_t sub_1CF2BBECC(uint64_t a1)
{
  v2 = sub_1CF2CAAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF2BBF08(uint64_t a1)
{
  v2 = sub_1CF2CAAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF2BBF44()
{
  if (*v0)
  {
    return 0x616843726F727265;
  }

  else
  {
    return 0xD000000000000018;
  }
}

void sub_1CF2BBF88(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0x80000001CFA3DE80;
  if (a1 == 0xD000000000000018 && 0x80000001CFA3DE80 == a2 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x616843726F727265 && a2 == 0xEA00000000006E69)
  {
    0xEA00000000006E69, v12, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF2BC078(uint64_t a1)
{
  v2 = sub_1CF2CAAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF2BC0B4(uint64_t a1)
{
  v2 = sub_1CF2CAAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF2BC0F0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1CF2C95B8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void sub_1CF2BC14C(void *a1, uint64_t a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5, uint64_t a6)
{
  v164 = a3;
  v165 = a4;
  v166 = a5;
  v167 = a6;
  v8 = type metadata accessor for FPDiagnosticsManagerStateKey(0, &v164);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v160 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v143 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v152 = sub_1CF9E75D8();
  v14 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v161 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v143 - v17;

  WitnessTable = swift_getWitnessTable();
  if (MEMORY[0x1D3868960](a2, v8, &type metadata for FPDiagnosticsManagerStateValue, WitnessTable))
  {
    a2, v20, v21, v22, v23, v24, v25, v26;
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA3DC40, v27, v28);
  }

  else
  {
    v153 = v18;
    v159 = v14;
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    v164 = 0;
    v165 = 0xE000000000000000;
    sub_1CF9E7948();
    v165, v31, v32, v33, v34, v35, v36, v37;
    v164 = 0xD000000000000017;
    v165 = 0x80000001CFA3DC20;
    v162 = sub_1CF9E6698();
    v38 = sub_1CF9E7F98();
    v40 = v39;
    MEMORY[0x1D3868CC0](v38);
    v40, v41, v42, v43, v44, v45, v46, v47;
    v48 = v165;
    sub_1CF4FB2BC(v164, v165, v29, v30);
    v48, v49, v50, v51, v52, v53, v54, v55;
    v56 = 0;
    v145 = a2;
    v57 = a2 + 64;
    v58 = 1 << *(a2 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(a2 + 64);
    v61 = (v58 + 63) >> 6;
    v154 = TupleTypeMetadata2;
    v151 = TupleTypeMetadata2 - 8;
    v143 = v9 + 16;
    v155 = (v9 + 32);
    v150 = (v159 + 32);
    v144 = v9;
    v147 = (v9 + 8);
    v148 = v57;
    v62 = v8;
    v149 = v8;
    v63 = v161;
    v64 = a1;
    v156 = a1;
    while (v60)
    {
      v121 = v56;
LABEL_18:
      v126 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v127 = v126 | (v121 << 6);
      v128 = v145;
      v129 = v144;
      v130 = v146;
      (*(v144 + 16))(v146, *(v145 + 48) + *(v144 + 72) * v127, v62);
      v131 = (*(v128 + 56) + 24 * v127);
      v132 = *v131;
      v133 = v131[1];
      v134 = v131[2];
      v135 = &v161[*(v154 + 48)];
      v136 = *(v129 + 32);
      v125 = v154;
      v136(v161, v130, v62);
      *v135 = v132;
      *(v135 + 1) = v133;
      *(v135 + 2) = v134;
      v63 = v161;
      v137 = *(v125 - 8);
      (*(v137 + 56))(v161, 0, 1, v125);

      v124 = v153;
      v64 = v156;
LABEL_19:
      (*v150)(v124, v63, v152);
      if ((*(v137 + 48))(v124, 1, v125) == 1)
      {

        return;
      }

      v138 = &v124[*(v125 + 48)];
      v139 = *v138;
      v140 = *(v138 + 1);
      v141 = *(v138 + 2);
      (*v155)(v160, v124, v62);
      v142 = v64[3];
      v158 = v64[4];
      v159 = v142;
      v157 = __swift_project_boxed_opaque_existential_1(v64, v142);
      v66 = 0xE000000000000000;
      v164 = 0;
      v165 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](538976288, 0xE400000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      if (v141)
      {
        v162 = 0x3A6E6961686320;
        v163 = 0xE700000000000000;
        MEMORY[0x1D3868CC0](v140, v141);
        v65 = v162;
        v66 = v163;
      }

      else
      {
        v65 = 0;
      }

      v162 = 0;
      v163 = 0xE000000000000000;
      sub_1CF9E7948();
      v163, v67, v68, v69, v70, v71, v72, v73;
      v162 = 0x657620746E65733CLL;
      v163 = 0xEF3A736E6F697372;
      v74 = MEMORY[0x1D3868FE0](v139, MEMORY[0x1E69E6158]);
      v76 = v75;
      MEMORY[0x1D3868CC0](v74);
      v76, v77, v78, v79, v80, v81, v82, v83;
      MEMORY[0x1D3868CC0](v65, v66);
      v66, v84, v85, v86, v87, v88, v89, v90;
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v141, v91, v92, v93, v94, v95, v96, v97;
      v139, v98, v99, v100, v101, v102, v103, v104;
      v105 = v163;
      MEMORY[0x1D3868CC0](v162, v163);
      v105, v106, v107, v108, v109, v110, v111, v112;
      v113 = v165;
      sub_1CF4FB2BC(v164, v165, v159, v158);
      v113, v114, v115, v116, v117, v118, v119, v120;
      v62 = v149;
      (*v147)(v160, v149);
      v64 = v156;
      v63 = v161;
      v57 = v148;
    }

    if (v61 <= v56 + 1)
    {
      v122 = v56 + 1;
    }

    else
    {
      v122 = v61;
    }

    v123 = v122 - 1;
    v124 = v153;
    v125 = v154;
    while (1)
    {
      v121 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v121 >= v61)
      {
        v137 = *(v154 - 8);
        (*(v137 + 56))(v63, 1, 1, v154);
        v60 = 0;
        v56 = v123;
        goto LABEL_19;
      }

      v60 = *(v57 + 8 * v121);
      ++v56;
      if (v60)
      {
        v56 = v121;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1CF2BC8C4(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a1 == 0xD000000000000010 && 0x80000001CFA3DE60 == a2)
  {
    a2, 0x80000001CFA3DE60, 0xD000000000000010, a4, a5, a6, a7, a8;
    v9 = 0;
  }

  else
  {
    v10 = sub_1CF9E8048();
    a2, v11, v12, v13, v14, v15, v16, v17;
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1CF2BC948(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a5;
  v17 = a6;
  v18 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  type metadata accessor for FPDiagnosticsManagerState.CodingKeys(255, &v22);
  swift_getWitnessTable();
  v9 = sub_1CF9E7F78();
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v26 = v18;
  v22 = a3;
  v23 = a4;
  v24 = v16;
  v25 = v17;
  type metadata accessor for FPDiagnosticsManagerStateKey(255, &v22);
  swift_getWitnessTable();
  sub_1CF9E6708();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1CF2C9160();
  v20 = WitnessTable;
  v21 = v13;
  swift_getWitnessTable();
  sub_1CF9E7F08();
  return (*(v19 + 8))(v11, v9);
}

unint64_t sub_1CF2BCB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v4 = type metadata accessor for FPDiagnosticsManagerStateKey(255, v16);
  swift_getTupleTypeMetadata2();
  v5 = sub_1CF9E6DA8();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1CF04F294(v5, v4, &type metadata for FPDiagnosticsManagerStateValue, WitnessTable);
  v5, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

void *sub_1CF2BCC20(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  type metadata accessor for FPDiagnosticsManagerState.CodingKeys(255, &v41);
  swift_getWitnessTable();
  v10 = sub_1CF9E7E08();
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v13 = type metadata accessor for FPDiagnosticsManagerStateKey(255, &v41);
  swift_getTupleTypeMetadata2();
  v14 = sub_1CF9E6DA8();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1CF04F294(v14, v13, &type metadata for FPDiagnosticsManagerStateValue, WitnessTable);
  v16, v17, v18, v19, v20, v21, v22, v23;
  v14, v24, v25, v26, v27, v28, v29, v30;
  v31 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v45;
  sub_1CF9E8298();
  if (!v32)
  {
    v33 = v38;
    sub_1CF9E6708();
    v34 = swift_getWitnessTable();
    v35 = sub_1CF2C910C();
    v39 = v34;
    v40 = v35;
    swift_getWitnessTable();
    sub_1CF9E7D88();
    (*(v33 + 8))(v12, v10);
    v31 = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v31;
}

uint64_t sub_1CF2BCEF4@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X6>, void *a6@<X7>)
{
  result = sub_1CF2BC8C4(a1, a2, *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), a5, a6);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CF2BCF2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF189FC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CF2BCF64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF2BCFB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *sub_1CF2BD00C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1CF2BCC20(a1, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1CF2BD06C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1CF2BCB6C(a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  return result;
}

void sub_1CF2BD0A0(uint64_t a1)
{
  if (sub_1CEFDB148(0xD000000000000018, 0x80000001CFA3DE40, a1))
  {
    v2 = [objc_opt_self() defaultStore];
    v3 = [v2 targetedSPSErrorsPayload];
    v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v6 = v5;

    v7 = sub_1CF2C8330(v4, v6);
    v6, v8, v9, v10, v11, v12, v13, v14;
    v15 = objc_sync_enter(v1);
    if (v15)
    {
      MEMORY[0x1EEE9AC00](v15);
      v33 = v1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v32, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v16 = v1[3];
    v1[3] = v7;

    v16, v17, v18, v19, v20, v21, v22, v23;
    v24 = objc_sync_exit(v1);
    if (v24)
    {
      MEMORY[0x1EEE9AC00](v24);
      v33 = v1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v32, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v7, v25, v26, v27, v28, v29, v30, v31;
  }
}

void sub_1CF2BD260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1CF9E6F98();

  sub_1CF2BD0A0(v3);

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1CF2BD2CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v342 = a5;
  v341 = a4;
  v340 = a3;
  v322 = a2;
  v343 = a1;
  v338 = a6;
  v7 = *v6;
  *&v344 = v6 + 1;
  v337 = sub_1CF9E6118();
  v336 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v333 = &v302 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v328 = (&v302 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v323 = &v302 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v316 = &v302 - v14;
  v15 = v7[10];
  v345 = v7[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = v7[13];
  v317 = v6;
  v18 = v7[11];
  v19 = v17;
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  *&v352[0] = AssociatedTypeWitness;
  *(&v352[0] + 1) = v20;
  *&v352[1] = AssociatedConformanceWitness;
  *(&v352[1] + 1) = v22;
  v23 = type metadata accessor for ReconciliationID(0, v352);
  v329 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v325 = (&v302 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v302 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v318 = &v302 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v315 = &v302 - v31;
  *&v352[0] = AssociatedTypeWitness;
  *(&v352[0] + 1) = v20;
  *&v352[1] = AssociatedConformanceWitness;
  *(&v352[1] + 1) = v22;
  v321 = type metadata accessor for CodepathTriggeringDiagnostics(0, v352);
  v32 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v321);
  v34 = &v302 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BEE98, &qword_1CFA00DA0);
  v339 = v23;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v320 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v314 = &v302 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v319 = &v302 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v331 = &v302 - v39;
  v327 = v15;
  *&v352[0] = v15;
  *(&v352[0] + 1) = v18;
  v40 = v19;
  v326 = v18;
  *&v352[1] = v345;
  *(&v352[1] + 1) = v19;
  v41 = type metadata accessor for ItemReconciliation(0, v352);
  v332 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v330 = &v302 - v42;
  v335 = v43;
  v334 = sub_1CF9E75D8();
  v44 = *(v334 - 8);
  MEMORY[0x1EEE9AC00](v334);
  v46 = &v302 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v302 - v48;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v54 = fpfs_current_or_default_log();
    v55 = v333;
    sub_1CF9E6128();
    v56 = sub_1CF9E6108();
    v57 = sub_1CF9E72A8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1CEFC7000, v56, v57, "checkItemMatchesTargetedSPSError: missing database", v58, 2u);
      MEMORY[0x1D386CDC0](v58, -1, -1);
    }

    (*(v336 + 8))(v55, v337);
    *&v352[0] = v339;
    *(&v352[0] + 1) = &type metadata for TargetedSPSErrorAndValue;
    *&v352[1] = MEMORY[0x1E69E6158];
    *(&v352[1] + 1) = MEMORY[0x1E69E6158];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    return (*(*(TupleTypeMetadata - 8) + 56))(v338, 1, 1, TupleTypeMetadata);
  }

  *&v344 = v27;
  v51 = Strong;

  v52 = v346;
  sub_1CF68DB40(v343, v340, v341, v342, v49);

  if (v52)
  {
  }

  v346 = 0;
  v312 = v51;
  v60 = *(v44 + 16);
  v313 = v49;
  v61 = v334;
  v60(v46, v49, v334);
  v62 = v332;
  v63 = v335;
  if ((*(v332 + 48))(v46, 1, v335) == 1)
  {
    v64 = *(v44 + 8);
    v311 = v44 + 8;
    v345 = v64;
    (v64)(v46, v61);
    v65 = fpfs_current_or_default_log();
    v66 = v328;
    sub_1CF9E6128();
    v67 = v329;
    v68 = *(v329 + 16);
    v69 = v325;
    v70 = v339;
    v68(v325, v343, v339);
    v71 = sub_1CF9E6108();
    v72 = sub_1CF9E72A8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v343 = swift_slowAlloc();
      *&v352[0] = v343;
      *v73 = 136315138;
      v74 = v344;
      v68(v344, v69, v70);
      v75 = *(v67 + 8);
      v75(v69, v70);
      v76 = sub_1CF01D738(v70);
      v78 = v77;
      v75(v74, v70);
      v79 = sub_1CEFD0DF0(v76, v78, v352);
      v78, v80, v81, v82, v83, v84, v85, v86;
      *(v73 + 4) = v79;
      _os_log_impl(&dword_1CEFC7000, v71, v72, "checkItemMatchesTargetedSPSError: missing RT entry for %s", v73, 0xCu);
      v87 = v343;
      __swift_destroy_boxed_opaque_existential_1(v343);
      MEMORY[0x1D386CDC0](v87, -1, -1);
      MEMORY[0x1D386CDC0](v73, -1, -1);

      (*(v336 + 8))(v328, v337);
    }

    else
    {
      (*(v67 + 8))(v69, v70);

      (*(v336 + 8))(v66, v337);
    }

    (v345)(v313, v334);
    v115 = v338;
    *&v352[0] = v70;
LABEL_19:
    *(&v352[0] + 1) = &type metadata for TargetedSPSErrorAndValue;
    *&v352[1] = MEMORY[0x1E69E6158];
    *(&v352[1] + 1) = MEMORY[0x1E69E6158];
    v127 = swift_getTupleTypeMetadata();
    return (*(*(v127 - 8) + 56))(v115, 1, 1, v127);
  }

  (*(v62 + 32))(v330, v46, v63);
  v88 = sub_1CF083B80(v63);
  if (sub_1CF06EE80(v88, 0))
  {
    v311 = v44;
    v89 = fpfs_current_or_default_log();
    v90 = v323;
    sub_1CF9E6128();
    v91 = v329;
    v92 = *(v329 + 16);
    v93 = v318;
    v94 = v339;
    v92(v318, v343, v339);
    v95 = sub_1CF9E6108();
    v96 = sub_1CF9E7288();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v345 = v95;
      v98 = v97;
      v343 = swift_slowAlloc();
      *&v352[0] = v343;
      *v98 = 136315138;
      v99 = v344;
      v92(v344, v93, v94);
      v100 = *(v91 + 8);
      v100(v93, v94);
      v101 = v63;
      v102 = sub_1CF01D738(v94);
      v104 = v103;
      v100(v99, v94);
      v105 = sub_1CEFD0DF0(v102, v104, v352);
      v104, v106, v107, v108, v109, v110, v111, v112;
      *(v98 + 4) = v105;
      v113 = v345;
      _os_log_impl(&dword_1CEFC7000, v345, v96, "checkItemMatchesTargetedSPSError: dropping %s no longer in SPS", v98, 0xCu);
      v114 = v343;
      __swift_destroy_boxed_opaque_existential_1(v343);
      MEMORY[0x1D386CDC0](v114, -1, -1);
      MEMORY[0x1D386CDC0](v98, -1, -1);

      (*(v336 + 8))(v323, v337);
      (*(v332 + 8))(v330, v101);
    }

    else
    {
      (*(v91 + 8))(v93, v94);

      (*(v336 + 8))(v90, v337);
      (*(v332 + 8))(v330, v63);
    }

    (*(v311 + 8))(v313, v334);
    v115 = v338;
    *&v352[0] = v94;
    goto LABEL_19;
  }

  v116 = v321;
  (*(v32 + 16))(v34, v322, v321);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v311 = v44;
    v344 = *v34;
    v117 = *(v34 + 2);
    v118 = *(v34 + 12);
    v119 = v34[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6C0, &qword_1CF9FE540);
    v120 = swift_allocObject();
    v121 = v344;
    *(v120 + 16) = xmmword_1CF9FA450;
    *(v120 + 32) = v121;
    *(v120 + 48) = v117;
    *(v120 + 56) = v118;
    *(v120 + 58) = v119;
    v122 = sub_1CF082CB0(v63);
    v124 = v123;
    v125 = v331;
    (*(v329 + 16))(v331, v343, v339);
    v126 = v346;
  }

  else
  {
    (*(v32 + 8))(v34, v116);
    type metadata accessor for FPCK(0);
    v128 = v315;
    v129 = v330;
    v130 = v346;
    v131 = sub_1CF6BFD3C(v315, v330, v312, v340, v341, v342);
    v126 = v130;
    if (v130)
    {

      (*(v332 + 8))(v129, v63);
      return (*(v44 + 8))(v313, v334);
    }

    v120 = v131;
    v311 = v44;
    v125 = v331;
    v122 = v132;
    v124 = v133;
    (*(v329 + 32))(v331, v128, v339);
  }

  v134 = TupleTypeMetadata3;
  *&v125[*(TupleTypeMetadata3 + 48)] = v120;
  v135 = &v125[*(v134 + 64)];
  v303 = v122;
  *v135 = v122;
  v135[1] = v124;
  v304 = v124;

  v136 = v317;
  v137 = objc_sync_enter(v317);
  if (v137)
  {
    goto LABEL_79;
  }

  *&v344 = *(v136 + 3);

  if (v126)
  {

    v300 = objc_sync_exit(v136);
    MEMORY[0x1EEE9AC00](v300);
    v301 = &v302 - 4;
    *(&v302 - 2) = v136;
    goto LABEL_82;
  }

  v137 = objc_sync_exit(v136);
  if (v137)
  {
    MEMORY[0x1EEE9AC00](v137);
    v301 = &v302 - 4;
    *(&v302 - 2) = v136;
LABEL_82:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v301, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v136 = &v349;
  v145 = *(v120 + 16);
  v308 = v120;
  v305 = v40;
  if (v145)
  {
    v350 = 0u;
    memset(v351, 0, 25);
    v349 = 0u;
    if (!*(v120 + 16))
    {
      goto LABEL_78;
    }

    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v136 = 0;
    v154 = 0;
    v307 = v120 + 32;
    v155 = v344 + 64;
    v156 = 0;
    v306 = v145;
LABEL_29:
    if (v147)
    {
      LODWORD(v347[0]) = *(&v350 + 11);
      v122 = &v353 + 4;
      BYTE4(v347[0]) = HIBYTE(v350);
      goto LABEL_60;
    }

    v346 = v126;
    v317 = v146;
    v157 = v307 + 32 * v146;
    v158 = *(v157 + 8);
    v343 = *v157;
    v159 = *(v157 + 16);
    LODWORD(v318) = *(v157 + 24);
    v309 = *(v157 + 25);
    v310 = v309;
    LODWORD(v315) = *(v157 + 26);
    v160 = 1 << *(v344 + 32);
    if (v160 < 64)
    {
      v161 = ~(-1 << v160);
    }

    else
    {
      v161 = -1;
    }

    v162 = v161 & *(v344 + 64);
    v163 = (v160 + 63) >> 6;
    v340 = v158;

    v164 = v159;
    v165 = 0;
    v323 = v164;
LABEL_35:
    if (v162)
    {
      v166 = v343;
      goto LABEL_42;
    }

    v166 = v343;
    while (1)
    {
      v167 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
        break;
      }

      if (v167 >= v163)
      {

        v340, v178, v179, v180, v181, v182, v183, v184;
        v147 = *(&v349 + 1);
        v148 = v349;
        v149 = v350;
        v150 = BYTE8(v350);
        v151 = BYTE9(v350);
        v152 = BYTE10(v350);
        LODWORD(v347[0]) = *(&v350 + 11);
        BYTE4(v347[0]) = HIBYTE(v350);
        v136 = *(&v351[0] + 1);
        v153 = *&v351[0];
        v156 = *&v351[1];
        v154 = BYTE8(v351[1]);
        v126 = v346;
        v63 = v335;
        v125 = v331;
        v120 = v308;
        v145 = v306;
        goto LABEL_59;
      }

      v162 = *(v155 + 8 * v167);
      ++v165;
      if (v162)
      {
        v165 = v167;
LABEL_42:
        v168 = __clz(__rbit64(v162));
        v162 &= v162 - 1;
        v169 = (v165 << 11) | (32 * v168);
        v170 = *(v344 + 48) + v169;
        v171 = *v170;
        v172 = *(v170 + 8);
        v122 = *(v170 + 16);
        v173 = *(v170 + 24);
        v126 = *(v170 + 25);
        v174 = *(v170 + 26);
        v175 = *(v344 + 56) + v169;
        v333 = *v175;
        v328 = *(v175 + 8);
        v156 = *(v175 + 16);
        LODWORD(v325) = *(v175 + 24);
        if (v171 != v166 || v172 != v340)
        {
          v177 = sub_1CF9E8048();
          v164 = v323;
          if ((v177 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        if (v122 != v164 || v173 != 6 && v173 != v318 || v126 != 89 && (v310 == 89 || qword_1CFA01448[v126] != qword_1CFA01448[v309]) || v174 != 2 && (v315 == 2 || ((v174 ^ v315) & 1) != 0))
        {
          goto LABEL_35;
        }

        v136 = v328;

        sub_1CEFCCC44(&v349, qword_1EC4BEEA0, &qword_1CFA00DA8);
        v172, v185, v186, v187, v188, v189, v190, v191;
        v149 = v323;
        v126 = v346;
        v63 = v335;
        v125 = v331;
        v120 = v308;
        v145 = v306;
        v147 = v340;
        v148 = v343;
        v150 = v318;
        v151 = v310;
        v152 = v315;
        v153 = v333;
        v154 = v325;
LABEL_59:
        v146 = v317;
LABEL_60:
        if (++v146 == v145)
        {
          v346 = v126;
          v192 = v152;
          v193 = v147;
          v328 = v136;
          v194 = v148;
          v195 = v149;
          v196 = v151;
          v333 = v153;
          LODWORD(v325) = v154;
          v344, v138, v139, v140, v141, v142, v143, v144;
          v120, v197, v198, v199, v200, v201, v202, v203;
          *&v352[0] = v194;
          *(&v352[0] + 1) = v193;
          *&v352[1] = v195;
          BYTE8(v352[1]) = v150;
          BYTE9(v352[1]) = v196;
          BYTE10(v352[1]) = v192;
          *(&v352[1] + 11) = v347[0];
          HIBYTE(v352[1]) = BYTE4(v347[0]);
          *&v352[2] = v333;
          *(&v352[2] + 1) = v328;
          *&v352[3] = v156;
          BYTE8(v352[3]) = v325;
          goto LABEL_66;
        }

        *&v349 = v148;
        *(&v349 + 1) = v147;
        *&v350 = v149;
        BYTE8(v350) = v150;
        BYTE9(v350) = v151;
        BYTE10(v350) = v152;
        *(&v350 + 11) = v347[0];
        HIBYTE(v350) = BYTE4(v347[0]);
        *&v351[0] = v153;
        *(&v351[0] + 1) = v136;
        *&v351[1] = v156;
        BYTE8(v351[1]) = v154;
        if (v146 >= *(v120 + 16))
        {
LABEL_78:
          __break(1u);
LABEL_79:
          MEMORY[0x1EEE9AC00](v137);
          *(&v302 - 2) = v136;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v302 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  v346 = 0;
  v344, v138, v139, v140, v141, v142, v143, v144;
  v120, v204, v205, v206, v207, v208, v209, v210;
  memset(v352, 0, 57);
LABEL_66:
  v211 = *(v320 + 16);
  v212 = TupleTypeMetadata3;
  v211(v319, v125, TupleTypeMetadata3);
  *v348 = *(&v352[1] + 11);
  *&v348[14] = *(&v352[2] + 9);
  v213 = v313;
  v214 = v330;
  if (!*(&v352[0] + 1))
  {
    if (!sub_1CF2BA6AC(v321))
    {

      v282 = *(v320 + 8);
      v283 = TupleTypeMetadata3;
      v282(v319, TupleTypeMetadata3);
      (*(v332 + 8))(v214, v63);
      (*(v311 + 8))(v213, v334);
      v282(v331, v283);
      *&v349 = v339;
      *(&v349 + 1) = &type metadata for TargetedSPSErrorAndValue;
      *&v350 = MEMORY[0x1E69E6158];
      *(&v350 + 1) = MEMORY[0x1E69E6158];
      v284 = swift_getTupleTypeMetadata();
      return (*(*(v284 - 8) + 56))(v338, 1, 1, v284);
    }

    v126 = 0xEE00646574656772;
    v122 = 0x6154737961776C41;
    if (*(v308 + 16))
    {
      v126 = *(v308 + 40);
      v336 = *(v308 + 32);
      *&v344 = *(v308 + 48);
      LODWORD(v337) = *(v308 + 56);
      LODWORD(v340) = *(v308 + 57);
      LODWORD(v343) = *(v308 + 58);

LABEL_77:
      v285 = v339;
      *&v349 = v339;
      *(&v349 + 1) = &type metadata for TargetedSPSErrorAndValue;
      *&v350 = MEMORY[0x1E69E6158];
      *(&v350 + 1) = MEMORY[0x1E69E6158];
      v286 = swift_getTupleTypeMetadata();
      v287 = v338;
      v288 = v338 + v286[12];
      v289 = (v338 + v286[16]);
      v290 = (v338 + v286[20]);
      v291 = v331;
      (*(v329 + 16))(v338, v331, v285);
      *v288 = v336;
      *(v288 + 8) = v126;
      *(v288 + 16) = v344;
      *(v288 + 24) = v337;
      *(v288 + 25) = v340;
      *(v288 + 26) = v343;
      *(v288 + 27) = v349;
      *(v288 + 31) = BYTE4(v349);
      *(v288 + 32) = v122 + 32;
      *(v288 + 40) = 0xEE00646574656772;
      *(v288 + 48) = 0x3FF0000000000000;
      *(v288 + 56) = 1;
      v292 = v304;
      *v289 = v303;
      v289[1] = v292;

      v293 = v319;
      v294 = sub_1CF2BF318(v319, v327, v326, v341, v345, v305);
      v296 = v295;

      v297 = *(v320 + 8);
      v298 = v293;
      v299 = TupleTypeMetadata3;
      v297(v298, TupleTypeMetadata3);
      (*(v332 + 8))(v330, v335);
      (*(v311 + 8))(v313, v334);
      v297(v291, v299);
      *v290 = v294;
      v290[1] = v296;
      return (*(*(v286 - 1) + 56))(v287, 0, 1, v286);
    }

LABEL_76:
    *&v344 = 0;
    LODWORD(v343) = 2;
    LODWORD(v340) = 89;
    LODWORD(v337) = 5;
    v336 = v122;
    goto LABEL_77;
  }

  v328 = *&v352[1];
  v333 = *&v352[0];
  LODWORD(v340) = BYTE10(v352[1]);
  LODWORD(v344) = BYTE9(v352[1]);
  LODWORD(v343) = BYTE8(v352[1]);
  v325 = *(&v352[0] + 1);
  v215 = fpfs_current_or_default_log();
  v216 = v316;
  sub_1CF9E6128();
  v217 = v314;
  v211(v314, v125, v212);
  v349 = v352[0];
  v350 = v352[1];
  v351[0] = v352[2];
  *(v351 + 9) = *(&v352[2] + 9);
  sub_1CF1A8918(&v349, v347);
  v218 = sub_1CF9E6108();
  v219 = sub_1CF9E7288();
  sub_1CEFCCC44(v352, qword_1EC4BEEA0, &qword_1CFA00DA8);
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v321 = swift_slowAlloc();
    v347[0] = v321;
    *v220 = 136315394;
    v221 = v343 | (v344 << 8) | (v340 << 16);
    v222 = v325;

    v223 = sub_1CF19F0C0(v333, v222, v328, v221);
    v225 = v224;
    v222, v224, v226, v227, v228, v229, v230, v231;
    v232 = sub_1CEFD0DF0(v223, v225, v347);
    v225, v233, v234, v235, v236, v237, v238, v239;
    *(v220 + 4) = v232;
    *(v220 + 12) = 2080;
    v240 = *&v217[*(v212 + 48)];
    v241 = *(v320 + 8);
    v322 = (v320 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

    v242 = v217;
    v243 = v212;
    v323 = v241;
    (v241)(v242, v212);
    v244 = MEMORY[0x1D3868FE0](v240, &type metadata for TargetedSPSError);
    v246 = v245;
    v240, v245, v247, v248, v249, v250, v251, v252;
    v253 = v244;
    v63 = v335;
    v254 = sub_1CEFD0DF0(v253, v246, v347);
    v246, v255, v256, v257, v258, v259, v260, v261;
    *(v220 + 14) = v254;
    v262 = v339;
    _os_log_impl(&dword_1CEFC7000, v218, v219, "checkItemMatchesTargetedSPSError: matching %s found in %s", v220, 0x16u);
    v263 = v321;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v263, -1, -1);
    v264 = v220;
    v265 = v344;
    MEMORY[0x1D386CDC0](v264, -1, -1);

    (*(v336 + 8))(v316, v337);
  }

  else
  {
    v266 = *(v320 + 8);
    v322 = (v320 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v267 = v217;
    v243 = v212;
    v323 = v266;
    (v266)(v267, v212);

    (*(v336 + 8))(v216, v337);
    v262 = v339;
    v222 = v325;
    v265 = v344;
  }

  v347[0] = v262;
  v347[1] = &type metadata for TargetedSPSErrorAndValue;
  v347[2] = MEMORY[0x1E69E6158];
  v347[3] = MEMORY[0x1E69E6158];
  v268 = swift_getTupleTypeMetadata();
  v269 = v262;
  v270 = v338;
  v271 = v338 + v268[12];
  v272 = (v338 + v268[16]);
  *&v344 = v338 + v268[20];
  v273 = v331;
  (*(v329 + 16))(v338, v331, v269);
  *v271 = v333;
  *(v271 + 8) = v222;
  *(v271 + 16) = v328;
  *(v271 + 24) = v343;
  *(v271 + 25) = v265;
  *(v271 + 26) = v340;
  *(v271 + 27) = *v348;
  *(v271 + 41) = *&v348[14];
  v274 = v304;
  *v272 = v303;
  v272[1] = v274;

  v275 = v319;
  v276 = sub_1CF2BF318(v319, v327, v326, v341, v345, v305);
  v278 = v277;

  v279 = v275;
  v280 = v323;
  (v323)(v279, v243);
  (*(v332 + 8))(v330, v63);
  (*(v311 + 8))(v313, v334);
  (v280)(v273, v243);
  v281 = v344;
  *v344 = v276;
  *(v281 + 8) = v278;
  return (*(*(v268 - 1) + 56))(v270, 0, 1, v268);
}

uint64_t sub_1CF2BF318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35[0] = swift_getAssociatedTypeWitness();
  v35[1] = swift_getAssociatedTypeWitness();
  v35[2] = swift_getAssociatedConformanceWitness();
  v35[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(255, v35);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BEE98, &qword_1CFA00DA0);
  v7 = *(a1 + *(swift_getTupleTypeMetadata3() + 48));
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v35[0] = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v8, 0);
    v9 = v35[0];
    v10 = (v7 + 58);
    do
    {
      v11 = *(v10 - 26);
      v12 = *(v10 - 18);
      v13 = *(v10 - 10);
      LODWORD(v7) = v7 & 0xFF000000 | *(v10 - 2) | (*(v10 - 1) << 8) | (*v10 << 16);

      v14 = sub_1CF19F0C0(v11, v12, v13, v7);
      v16 = v15;
      v12, v15, v17, v18, v19, v20, v21, v22;
      v35[0] = v9;
      v24 = *v9->tree;
      v23 = *v9->tester;
      if (v24 >= v23 >> 1)
      {
        sub_1CEFE95CC((v23 > 1), v24 + 1, 1);
        v9 = v35[0];
      }

      v10 += 32;
      *v9->tree = v24 + 1;
      v25 = v9 + 16 * v24;
      *(v25 + 4) = v14;
      *(v25 + 5) = v16;
      --v8;
    }

    while (v8);
  }

  v35[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CF0711CC();
  v26 = sub_1CF9E67D8();
  v9, v27, v28, v29, v30, v31, v32, v33;
  return v26;
}

uint64_t sub_1CF2BF56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a3;
  v102 = a4;
  v99 = a1;
  v100 = a2;
  v5 = *v4;
  v6 = *(*v4 + 104);
  v7 = *(*v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v89 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v80 - v11;
  v13 = type metadata accessor for SnapshotItem(255, v7, v6, v12);
  v86 = sub_1CF9E75D8();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v94 = v13;
  v95 = &v80 - v14;
  v93 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v80 - v16;
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v80 - v18;
  v19 = *(v5 + 96);
  v20 = *(v5 + 80);
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v84 = type metadata accessor for ItemState(0, v21, v22, v23);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v80 - v24;
  v26 = type metadata accessor for SnapshotItem(255, v20, v19, v25);
  v81 = sub_1CF9E75D8();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v28 = &v80 - v27;
  v91 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v90 = &v80 - v30;
  v98 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v80 - v32;
  v107 = v21;
  v108 = AssociatedTypeWitness;
  v109 = v22;
  v110 = AssociatedConformanceWitness;
  v34 = type metadata accessor for ReconciliationID(0, &v107);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v80 - v36;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0x6D20424420412F4ELL;
  }

  v39 = Strong;
  (*(v35 + 16))(v37, v99, v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v96;
    v40 = v97;
    (*(v97 + 32))(v96, v37, AssociatedTypeWitness);
    v42 = *(v39 + 40);
    v43 = *(*v42 + 240);

    v44 = v95;
    v45 = v111;
    v43(v41, 1, v100, v101, v102);
    if (v45)
    {
      (*(v40 + 8))(v41, AssociatedTypeWitness);
LABEL_8:

      return v42;
    }

    v50 = v93;
    v51 = v94;
    if ((*(v93 + 48))(v44, 1, v94) == 1)
    {
      v42 = 0xD000000000000017;
      (*(v85 + 8))(v44, v86);

      (*(v40 + 8))(v41, AssociatedTypeWitness);
    }

    else
    {
      (*(v50 + 32))();
      WitnessTable = swift_getWitnessTable();
      v54 = v87;
      sub_1CF937E0C(v51, WitnessTable, v87);
      v55 = v89;
      v56 = (v54 + *(v89 + 36));
      v57 = v56[1];
      v111 = *v56;
      v58 = *(v88 + 8);

      v58(v54, v55);
      v107 = v111;
      v108 = v57;
      v105 = 47;
      v106 = 0xE100000000000000;
      v103 = 58;
      v104 = 0xE100000000000000;
      sub_1CEFE4E68();
      v42 = sub_1CF9E7668();

      (*(v93 + 8))(v92, v94);
      (*(v40 + 8))(v41, AssociatedTypeWitness);
      v57, v59, v60, v61, v62, v63, v64, v65;
    }
  }

  else
  {
    v46 = v98;
    (*(v98 + 32))(v33, v37, v21);
    v42 = *(v39 + 32);
    v47 = *(*v42 + 240);

    v48 = v111;
    v47(v33, 1, v100, v101, v102);
    v111 = v48;
    if (v48)
    {
      (*(v46 + 8))(v33, v21);
      goto LABEL_8;
    }

    v52 = v91;
    if ((*(v91 + 48))(v28, 1, v26) == 1)
    {
      v42 = 0xD000000000000017;
      (*(v80 + 8))(v28, v81);

      (*(v98 + 8))(v33, v21);
    }

    else
    {
      (*(v52 + 32))();
      v66 = swift_getWitnessTable();
      v67 = v82;
      sub_1CF937E0C(v26, v66, v82);
      v68 = v84;
      v69 = (v67 + *(v84 + 36));
      v70 = v69[1];
      v102 = *v69;
      v71 = *(v83 + 8);

      v71(v67, v68);
      v107 = v102;
      v108 = v70;
      v72 = v70;
      v105 = 47;
      v106 = 0xE100000000000000;
      v103 = 58;
      v104 = 0xE100000000000000;
      sub_1CEFE4E68();
      v42 = sub_1CF9E7668();

      (*(v52 + 8))(v90, v26);
      (*(v98 + 8))(v33, v21);
      v72, v73, v74, v75, v76, v77, v78, v79;
    }
  }

  return v42;
}

uint64_t sub_1CF2C0070(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), void (**a5)(char *))
{
  v125 = a5;
  v124 = a4;
  v123 = a3;
  v115 = a2;
  v149 = a1;
  v138 = (v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  *&v144 = AssociatedTypeWitness;
  *(&v144 + 1) = v7;
  *&v145 = AssociatedConformanceWitness;
  *(&v145 + 1) = v9;
  v10 = type metadata accessor for ThrottlingKey(0, &v144);
  v113 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v109 - v11;
  v127 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v128 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v112 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v109 - v15;
  v110 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v130 = &v109 - v18;
  v119 = sub_1CF9E75D8();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v109 - v19;
  v122 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v109 - v21;
  *&v144 = v7;
  *(&v144 + 1) = AssociatedTypeWitness;
  v137 = AssociatedTypeWitness;
  v135 = v9;
  *&v145 = v9;
  *(&v145 + 1) = AssociatedConformanceWitness;
  v136 = AssociatedConformanceWitness;
  v22 = type metadata accessor for ThrottlingKey(255, &v144);
  v23 = swift_getTupleTypeMetadata2();
  v131 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v109 - v26;
  v111 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v109 - v30;
  v32 = sub_1CF9E75D8();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v109 - v34;
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v134 = &v109 - v38;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_36;
  }

  v138 = v22;
  sub_1CF050EC8(v22, v35);
  if ((*(v36 + 48))(v35, 1, v7) == 1)
  {
    v132 = v7;
    (*(v33 + 8))(v35, v32);
    v27 = v121;
    sub_1CF94A2D4(v138, v121);
    v39 = v122;
    v40 = v137;
    if ((*(v122 + 48))(v27, 1, v137) == 1)
    {

      (*(v118 + 8))(v27, v119);
LABEL_36:
      LOBYTE(v27) = 0;
      return v27 & 1;
    }

    v46 = v120;
    (*(v39 + 32))(v120, v27, v40);
    v47 = *(Strong + 24);

    v48 = sub_1CF051078(v138);
    v49 = v133;
    v50 = (*(*v47 + 376))(v46, v48, 0, 1, v123, v124, v125);
    if (v49)
    {
      (*(v39 + 8))(v46, v40);
      goto LABEL_9;
    }

    v27 = v50;
    v133 = 0;

    v71 = TupleTypeMetadata2;
    v72 = sub_1CF9E6DF8();
    v73 = v116;
    if (v72)
    {
      v74 = 0;
      v131 = v128 + 2;
      v125 = (v113 + 32);
      v134 = (v113 + 8);
      v124 = (v128 + 1);
      while (1)
      {
        v75 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v75)
        {
          (v128[2])(v130, v27 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + v128[9] * v74, v71);
          v76 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            goto LABEL_33;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          if (v110 != 8)
          {
            goto LABEL_41;
          }

          *&v144 = result;
          (*v131)(v130, &v144, v71);
          swift_unknownObjectRelease();
          v76 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        v77 = &v130[*(v71 + 48)];
        v148 = *(v77 + 8);
        v78 = *(v77 + 3);
        v146 = *(v77 + 2);
        v147 = v78;
        v79 = *(v77 + 1);
        v144 = *v77;
        v145 = v79;
        v80 = v73 + *(v71 + 48);
        v81 = v127;
        (*v125)(v73);
        v82 = v147;
        *(v80 + 32) = v146;
        *(v80 + 48) = v82;
        *(v80 + 64) = v148;
        v83 = v145;
        *v80 = v144;
        *(v80 + 16) = v83;
        v84 = v126;
        sub_1CF05043C(v138, v126);
        LOBYTE(v80) = sub_1CF94A0F4(v73, v84, v40, v132, v136, v135);
        v85 = *v134;
        (*v134)(v84, v81);
        if (v80)
        {
          break;
        }

        (*v124)(v73, v71);
        v86 = sub_1CF9E6DF8();
        ++v74;
        v40 = v137;
        if (v76 == v86)
        {
          goto LABEL_34;
        }
      }

      (*(v122 + 8))(v120, v137);
      v27, v98, v99, v100, v101, v102, v103, v104;

      v105 = v112;
      (v128[4])(v112, v73, v71);
      v106 = &v105[*(v71 + 48)];
      v143 = *(v106 + 8);
      v107 = *(v106 + 3);
      v141 = *(v106 + 2);
      v142 = v107;
      v108 = *(v106 + 1);
      v139 = *v106;
      v140 = v108;
      sub_1CF2CA1E8(&v139);
      LOBYTE(v27) = v140 >= v115;
      v85(v105, v127);
      return v27 & 1;
    }

LABEL_34:
    (*(v122 + 8))(v120, v40);
    v70 = v27;
LABEL_35:
    v70, v63, v64, v65, v66, v67, v68, v69;

    goto LABEL_36;
  }

  v41 = v134;
  (*(v36 + 32))();
  v42 = *(Strong + 24);

  v43 = sub_1CF051078(v138);
  v44 = v133;
  v45 = (*(*v42 + 384))(v41, v43, 0, 1, v123, v124, v125);
  if (v44)
  {
    (*(v36 + 8))(v41, v7);
LABEL_9:

    return v27 & 1;
  }

  v51 = v45;
  v132 = v7;
  v133 = 0;

  if (!sub_1CF9E6DF8())
  {
LABEL_22:
    (*(v36 + 8))(v41, v132);
    v70 = v51;
    goto LABEL_35;
  }

  v52 = 0;
  v130 = (v131 + 2);
  v128 = v138 - 1;
  v127 = (v131 + 1);
  while (1)
  {
    v53 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v53)
    {
      (v131[2])(v31, v51 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + v131[9] * v52, v23);
      v41 = (v52 + 1);
      if (__OFADD__(v52, 1))
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    result = sub_1CF9E7998();
    if (v111 != 8)
    {
      break;
    }

    *&v144 = result;
    (*v130)(v31, &v144, v23);
    swift_unknownObjectRelease();
    v41 = (v52 + 1);
    if (__OFADD__(v52, 1))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_14:
    v54 = &v31[*(v23 + 48)];
    v148 = *(v54 + 8);
    v55 = *(v54 + 3);
    v146 = *(v54 + 2);
    v147 = v55;
    v56 = *(v54 + 1);
    v144 = *v54;
    v145 = v56;
    v57 = v27 + *(v23 + 48);
    v58 = *(v138 - 1);
    (*(v58 + 32))(v27, v31);
    v59 = v147;
    *(v57 + 32) = v146;
    *(v57 + 48) = v59;
    *(v57 + 64) = v148;
    v60 = v145;
    *v57 = v144;
    *(v57 + 16) = v60;
    if (sub_1CF94A0F4(v27, v149, v132, v137, v135, v136))
    {
      (*(v36 + 8))(v134, v132);
      v51, v87, v88, v89, v90, v91, v92, v93;

      v94 = v114;
      (v131[4])(v114, v27, v23);
      v95 = &v94[*(v23 + 48)];
      v143 = *(v95 + 8);
      v96 = *(v95 + 3);
      v141 = *(v95 + 2);
      v142 = v96;
      v97 = *(v95 + 1);
      v139 = *v95;
      v140 = v97;
      sub_1CF2CA1E8(&v139);
      LOBYTE(v27) = v140 >= v115;
      (*(v58 + 8))(v94, v138);
      return v27 & 1;
    }

    (*v127)(v27, v23);
    ++v52;
    v61 = v41 == sub_1CF9E6DF8();
    v41 = v134;
    if (v61)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1CF2C0F7C()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF2C10C8(v0, &v6);
  v2 = objc_sync_exit(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

uint64_t sub_1CF2C10C8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v5;
    return result;
  }

  v5 = sub_1CF1F8AAC(*(v3 + 16), 0);
  v6 = sub_1CF1F97A8(&v8, (v5 + 4), v4, v3);
  v7 = v8;

  result = sub_1CEFCB59C(v7);
  if (v6 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF2C1194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 432))(2, a1, a2, a3);
  }

  else
  {
    sub_1CF2CA194();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1CF2C1264()
{
  swift_weakDestroy();
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  return v0;
}

uint64_t sub_1CF2C128C()
{
  swift_weakDestroy();
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

uint64_t sub_1CF2C1384(uint64_t a1, uint64_t a2, void *a3, _TtC18FileProviderDaemon8FSTester *a4)
{
  v5 = v4;
  v176 = a4;
  v178 = a3;
  v182 = a2;
  v7 = *v4;
  v8 = sub_1CF9E6118();
  v179 = *(v8 - 8);
  v180 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = a1;
  v184 = v7[10];
  v185 = v7[11];
  v186 = v7[12];
  v187 = v7[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v188[0] = AssociatedTypeWitness;
  v188[1] = v11;
  v189 = AssociatedConformanceWitness;
  v190 = v13;
  v14 = type metadata accessor for ReconciliationID(255, v188);
  swift_getWitnessTable();
  v15 = MEMORY[0x1E69E6158];
  v181 = v14;
  v16 = sub_1CF9E6708();
  WitnessTable = swift_getWitnessTable();
  v174 = sub_1CF054A5C(sub_1CF2CA124, v183, v16, v15, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);
  if (v176)
  {
    v19 = v178;
  }

  else
  {
    v19 = 0;
  }

  if (v176)
  {
    v20 = v176;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v188[0] = AssociatedTypeWitness;
  v188[1] = v11;
  v189 = AssociatedConformanceWitness;
  v190 = v13;
  v21 = type metadata accessor for CodepathTriggeringDiagnostics(0, v188);
  v22 = sub_1CF2BA390(v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v188[0] = 0;
  v188[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v188[1], v29, v30, v31, v32, v33, v34, v35;
  strcpy(v188, "FileProvider ");
  HIWORD(v188[1]) = -4864;
  MEMORY[0x1D3868CC0](v22, v24);
  v24, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0x6574636574656420, 0xE900000000000064);
  MEMORY[0x1D3868CC0](v19, v20);
  v20, v43, v44, v45, v46, v47, v48, v49;
  v50 = v188[1];
  v175 = v188[0];
  v188[0] = 0;
  v188[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](v26, v28);
  v28, v51, v52, v53, v54, v55, v56, v57;
  MEMORY[0x1D3868CC0](0x6D6F6420726F6620, 0xED0000203A6E6961);
  v178 = v5;
  v176 = v5[3];
  v58 = [(FSTester *)v176 fp_obfuscatedProviderDomainID];
  v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v61 = v60;

  MEMORY[0x1D3868CC0](v59, v61);
  v61, v62, v63, v64, v65, v66, v67, v68;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3DCC0);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v69 = v174;
  v191 = *(v174 + 16);
  v70 = sub_1CF9E7F98();
  v72 = v71;
  MEMORY[0x1D3868CC0](v70);
  v72, v73, v74, v75, v76, v77, v78, v79;
  MEMORY[0x1D3868CC0](0xA3A736D65744920, 0xE800000000000000);
  v191 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CF0711CC();
  v80 = sub_1CF9E67D8();
  v82 = v81;
  MEMORY[0x1D3868CC0](v80);
  v82, v83, v84, v85, v86, v87, v88, v89;
  v90 = v188[1];
  v182 = v188[0];
  v91 = fpfs_current_or_default_log();
  v92 = v177;
  sub_1CF9E6128();

  v93 = v92;
  v94 = sub_1CF9E6108();
  v95 = sub_1CF9E72A8();
  v69, v96, v97, v98, v99, v100, v101, v102;
  if (os_log_type_enabled(v94, v95))
  {
    v103 = swift_slowAlloc();
    v173 = v50;
    v104 = v103;
    v105 = swift_slowAlloc();
    v188[0] = v105;
    *v104 = 136315138;
    v191 = v69;
    v106 = sub_1CF9E67D8();
    v108 = v107;
    v69, v107, v109, v110, v111, v112, v113, v114;
    v115 = sub_1CEFD0DF0(v106, v108, v188);
    v108, v116, v117, v118, v119, v120, v121, v122;
    *(v104 + 4) = v115;
    _os_log_impl(&dword_1CEFC7000, v94, v95, "DiagnosticsManager: TTR-ing stuck deletion:\n%s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x1D386CDC0](v105, -1, -1);
    v123 = v104;
    v50 = v173;
    MEMORY[0x1D386CDC0](v123, -1, -1);
  }

  else
  {

    v69, v124, v125, v126, v127, v128, v129, v130;
  }

  (*(v179 + 8))(v93, v180);
  v131 = v178[2];
  v132 = sub_1CF9E6888();
  v50, v133, v134, v135, v136, v137, v138, v139;
  v140 = sub_1CF9E6888();
  v90, v141, v142, v143, v144, v145, v146, v147;
  sub_1CF2CA148();
  v148 = sub_1CF9E6D28();
  sub_1CF9E5A58();
  v149 = sub_1CF9E6D28();
  v150 = sub_1CF9E6888();
  v151 = v176;
  v152 = [(FSTester *)v151 pathComponents];
  v153 = sub_1CF9E6D48();

  v154 = *v153->tree;
  v153, v155, v156, v157, v158, v159, v160, v161;
  if (v154 >= 2)
  {
    v162 = [(FSTester *)v151 stringByDeletingLastPathComponent];
    if (!v162)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v164 = v163;
      v162 = sub_1CF9E6888();
      v164, v165, v166, v167, v168, v169, v170, v171;
    }

    v151 = v162;
  }

  [v131 requestTapToRadarWithTitle:v132 description:v140 keywords:v148 attachments:v149 displayReason:v150 providerID:v151];

  return sub_1CF9E6DA8();
}

uint64_t sub_1CF2C1B04@<X0>(uint64_t a1@<X0>, uint64_t *a6@<X8>)
{
  v27 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ReconciliationID(255, &AssociatedTypeWitness);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v26 - v10;
  (*(v12 + 16))(&v26 - v10, a1, TupleTypeMetadata2, v9);
  *&v11[*(TupleTypeMetadata2 + 48) + 8], v13, v14, v15, v16, v17, v18, v19;
  v20 = sub_1CF01D738(v7);
  v22 = v21;
  (*(*(v7 - 1) + 8))(v11, v7);
  AssociatedTypeWitness = v20;
  v29 = v22;
  MEMORY[0x1D3868CC0](2108704, 0xE300000000000000);
  result = MEMORY[0x1D3868CC0](*(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
  v24 = v29;
  v25 = v27;
  *v27 = AssociatedTypeWitness;
  v25[1] = v24;
  return result;
}

uint64_t sub_1CF2C1D58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1CF2C1E78(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v3 = *v2;
  v4 = *(*v2 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(v3 + 88);
  v8 = swift_getAssociatedConformanceWitness();
  *&v43 = AssociatedTypeWitness;
  *(&v43 + 1) = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ReconciliationID(0, &v43);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  *&v43 = v4;
  *(&v43 + 1) = v7;
  v44 = AssociatedConformanceWitness;
  v45 = v8;
  v13 = type metadata accessor for FPDiagnosticsManagerStateKey(0, &v43);
  v39 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  (*(v10 + 16))(v12, v40, v9, v14);
  v17 = v41;
  sub_1CF2BB6F4(v12, *v41, *(v41 + 8), *(v41 + 16), *(v41 + 24) | (*(v41 + 26) << 16), v4, v7, AssociatedConformanceWitness, v16, v8);
  sub_1CF9CCC54(&v42);
  v18 = v42;

  swift_getWitnessTable();
  sub_1CF9E6728();
  v18, v19, v20, v21, v22, v23, v24, v25;
  v27 = v43;
  if (v43)
  {
    v28 = *(&v43 + 1);
    v29 = v44;
    v43 = *(v17 + 32);
    MEMORY[0x1EEE9AC00](v26);
    v37 = &v43;
    v30 = sub_1CF7F7438(sub_1CF25107C, (&v38 - 4), v27);
    sub_1CF2CA088(v27, v28, v29, v31, v32, v33, v34, v35);
    (*(v39 + 8))(v16, v13);
  }

  else
  {
    (*(v39 + 8))(v16, v13);
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_1CF2C2264(uint64_t a1, uint64_t a2)
{
  *(v3 + 168) = a2;
  *(v3 + 176) = v2;
  *(v3 + 160) = a1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  *(v3 + 184) = v5;
  v6 = v4[11];
  *(v3 + 192) = v6;
  v7 = v4[12];
  *(v3 + 200) = v7;
  v8 = v4[13];
  *(v3 + 208) = v8;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v11 = v4[14];
  *(v3 + 216) = v11;
  v12 = v4[15];
  *(v3 + 224) = v12;
  v13 = v4[16];
  *(v3 + 232) = v13;
  v14 = v4[17];
  *(v3 + 240) = v14;
  *(v3 + 16) = v9;
  *&v9 = v13;
  *(&v9 + 1) = v14;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  *(v3 + 32) = v10;
  *(v3 + 48) = v15;
  *(v3 + 64) = v9;
  type metadata accessor for FPDiagnosticsManager(0, v3 + 16);
  swift_getWitnessTable();
  v17 = sub_1CF9E6EC8();
  *(v3 + 248) = v17;
  *(v3 + 256) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1CF2C23FC, v17, v16);
}

uint64_t sub_1CF2C23FC()
{
  if (!fpfs_is_seed_build() || fpfs_supports_tap_to_feedback()) && (sub_1CF2C9A24(v0[21], v0[23], v0[24], v0[25], v0[26], v0[27], v0[28]))
  {
    v1 = v0[24];
    v2 = v0[23];
    v31 = v0[22];
    v32 = v0[21];
    v33 = v0[20];
    v30 = v0[28];
    v34 = v0[25];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = swift_getAssociatedConformanceWitness();
    v6 = swift_getAssociatedTypeWitness();
    v7 = swift_getAssociatedConformanceWitness();
    v8 = swift_getAssociatedConformanceWitness();
    v0[10] = AssociatedTypeWitness;
    v0[11] = v6;
    v0[12] = v7;
    v0[13] = v8;
    v9 = type metadata accessor for ReconciliationID(255, (v0 + 10));
    v10 = MEMORY[0x1E69E6158];
    swift_getTupleTypeMetadata2();
    v11 = sub_1CF9E6DA8();
    WitnessTable = swift_getWitnessTable();
    v13 = sub_1CF04F294(v11, v9, v10, WitnessTable);
    v11, v14, v15, v16, v17, v18, v19, v20;
    v0[18] = v13;
    v21 = swift_task_alloc();
    v21[2] = v32;
    v21[3] = v31;
    v21[4] = v33;
    v21[5] = v0 + 18;
    v22 = *(v30 + 72);
    v0[14] = v2;
    v0[15] = v1;
    v0[16] = AssociatedConformanceWitness;
    v0[17] = v5;
    type metadata accessor for FPDiagnosticsManagerStateKey(255, (v0 + 14));
    swift_getTupleTypeMetadata3();
    v23 = sub_1CF9E6E58();
    v22(sub_1CF2CA0C8, v21, v23, v34, v30);

    v26 = v0[18];
    v27 = v0[19];
    v0[33] = v27;
    v0[34] = v26;
    v28 = swift_task_alloc();
    v0[35] = v28;
    *v28 = v0;
    v28[1] = sub_1CF2C2794;
    v29 = v0[21];

    return sub_1CF2C38F0(v27, v26, v29);
  }

  else
  {
    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1CF2C2794()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  *(v2 + 264), v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v2 + 256);
  v11 = *(v2 + 248);
  if (v0)
  {
    v12 = sub_1CF2C294C;
  }

  else
  {
    v12 = sub_1CF2C28E8;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1CF2C28E8(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 272), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1CF2C294C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 144), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1CF2C29B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v60 = a2;
  v54 = a1;
  v55 = a5;
  v53 = a4;
  v47 = a6;
  v7 = *a3;
  v8 = sub_1CF9E6118();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v7[15];
  v11 = v7[12];
  v12 = v7[10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = v7[11];
  v48 = v11;
  v49 = v10;
  v16 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v58 = AssociatedConformanceWitness;
  v59 = v12;
  v18 = swift_getAssociatedConformanceWitness();
  v56 = v16;
  v57 = v15;
  v19 = v60;
  v20 = swift_getAssociatedConformanceWitness();
  v62 = AssociatedTypeWitness;
  v63 = v17;
  v64 = v18;
  v65 = v20;
  v21 = type metadata accessor for CodepathTriggeringDiagnostics(0, &v62);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  v62 = AssociatedTypeWitness;
  v63 = v17;
  v51 = v18;
  v52 = v17;
  v64 = v18;
  v65 = v20;
  v50 = v20;
  v25 = type metadata accessor for ThrottlingKey(0, &v62);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v43 - v28;
  (*(v22 + 16))(v24, v19, v21, v27);
  if (swift_getEnumCaseMultiPayload())
  {
    v30 = (*(v22 + 8))(v24, v21);
    goto LABEL_7;
  }

  v31 = v49;
  v32 = (*(v26 + 32))(v29, v24, v25);
  if (*(a3 + *(*a3 + 192)) != 1)
  {
    v30 = (*(v26 + 8))(v29, v25);
    goto LABEL_7;
  }

  v33 = MEMORY[0x1EEE9AC00](v32);
  *(&v43 - 2) = a3;
  *(&v43 - 1) = v29;
  v34 = v61;
  (*(v31 + 9))(&v62, sub_1CF2CA108, v33);
  if (v34)
  {
    return (*(v26 + 8))(v29, v25);
  }

  v49 = v29;
  v61 = 0;
  if (v62 == 1)
  {
    v30 = (*(v26 + 8))(v49, v25);
LABEL_7:
    v66 = v53;
    MEMORY[0x1EEE9AC00](v30);
    v36 = v55;
    *(&v43 - 4) = v54;
    *(&v43 - 3) = a3;
    *(&v43 - 2) = v19;
    *(&v43 - 1) = v36;
    v62 = AssociatedTypeWitness;
    v63 = v52;
    v64 = v51;
    v65 = v50;
    type metadata accessor for ReconciliationID(255, &v62);
    sub_1CF9E6E58();
    v62 = v59;
    v63 = v57;
    v64 = v58;
    v65 = v56;
    type metadata accessor for FPDiagnosticsManagerStateKey(255, &v62);
    swift_getTupleTypeMetadata3();
    swift_getWitnessTable();
    v37 = v61;
    result = sub_1CF9E6B88();
    if (!v37)
    {
      *v47 = result;
    }

    return result;
  }

  v38 = fpfs_current_or_default_log();
  v39 = v44;
  sub_1CF9E6128();
  v40 = sub_1CF9E6108();
  v41 = sub_1CF9E7298();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1CEFC7000, v40, v41, "Item not yet throttled - giving up", v42, 2u);
    MEMORY[0x1D386CDC0](v42, -1, -1);
  }

  (*(v45 + 8))(v39, v46);
  v62 = v59;
  v63 = v57;
  v64 = v58;
  v65 = v56;
  type metadata accessor for FPDiagnosticsManagerStateKey(255, &v62);
  swift_getTupleTypeMetadata3();
  *v47 = sub_1CF9E6DA8();
  return (*(v26 + 8))(v49, v25);
}

uint64_t sub_1CF2C3090@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *a2;
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = sub_1CF2C9F28(v10);
  result = (*(*(v7 + 120) + 56))(a3, v11, v10, v8, v9, *(v7 + 96));
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t sub_1CF2C316C@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  v85 = a1;
  v86 = a4;
  v83 = a2;
  v81 = a6;
  v6 = *a3;
  v7 = *(*a3 + 80);
  v8 = *(*a3 + 88);
  v82 = *(*a3 + 120);
  v84 = *(v6 + 96);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v87 = v7;
  v88 = v8;
  v89 = AssociatedConformanceWitness;
  v90 = v10;
  v80 = type metadata accessor for FPDiagnosticsManagerStateKey(0, &v87);
  v75 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v70 = &v69 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v74 = AssociatedConformanceWitness;
  v72 = v7;
  v14 = swift_getAssociatedConformanceWitness();
  v73 = v10;
  v71 = v8;
  v15 = swift_getAssociatedConformanceWitness();
  v87 = AssociatedTypeWitness;
  v88 = v13;
  v89 = v14;
  v90 = v15;
  v87 = type metadata accessor for ReconciliationID(255, &v87);
  v88 = &type metadata for TargetedSPSErrorAndValue;
  v89 = MEMORY[0x1E69E6158];
  v90 = MEMORY[0x1E69E6158];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = sub_1CF9E75D8();
  v78 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  v87 = AssociatedTypeWitness;
  v88 = v13;
  v89 = v14;
  v90 = v15;
  v19 = type metadata accessor for ReconciliationID(0, &v87);
  v77 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  v25 = *v83->tester;
  isa = v83[1].super.isa;
  v27 = __swift_project_boxed_opaque_existential_1(v83, v25);
  v28 = v96;
  result = (*(v82 + 40))(v85, v86, v27, v25, isa, v84);
  if (!v28)
  {
    v30 = v78;
    v31 = v77;
    v86 = v21;
    v32 = v24;
    v96 = 0;
    v33 = TupleTypeMetadata;
    if ((*(*(TupleTypeMetadata - 8) + 48))(v18, 1, TupleTypeMetadata) == 1)
    {
      (*(v30 + 8))(v18, v16);
LABEL_6:
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v81, 1, 1, TupleTypeMetadata3);
    }

    v34 = &v18[v33[12]];
    v35 = *(v34 + 1);
    v91 = *v34;
    v92 = v35;
    *v93 = *(v34 + 2);
    *&v93[9] = *(v34 + 41);
    v36 = &v18[v33[16]];
    v37 = *v36;
    v38 = *(v36 + 1);
    v39 = &v18[v33[20]];
    v40 = *v39;
    v41 = v39[1];
    v84 = v37;
    v85 = v40;
    v42 = v19;
    (*(v31 + 32))(v32, v18, v19);
    if (sub_1CF2C1E78(v32, &v91))
    {
      (*(v31 + 8))(v32, v19);
      v41, v43, v44, v45, v46, v47, v48, v49;
      v38, v50, v51, v52, v53, v54, v55, v56;
      sub_1CF1A8950(&v91);
      goto LABEL_6;
    }

    v58 = v38;
    v59 = *(v31 + 16);
    v83 = v41;
    v60 = v86;
    v59(v86, v32, v19);
    v61 = v70;
    sub_1CF2BB6F4(v60, v91, *(&v91 + 1), v92, WORD4(v92) | (BYTE10(v92) << 16), v72, v71, v74, v70, v73);
    v59(v60, v32, v42);
    v87 = v84;
    v88 = v58;

    swift_getWitnessTable();
    sub_1CF9E6708();
    sub_1CF9E6738();
    (*(v31 + 8))(v32, v42);
    v62 = v80;
    v63 = swift_getTupleTypeMetadata3();
    v64 = v81;
    v65 = v81 + *(v63 + 48);
    v66 = (v81 + *(v63 + 64));
    (*(v75 + 32))(v81, v61, v62);
    v67 = *v93;
    v94 = *&v93[16];
    v95 = v93[24];

    sub_1CF1A8950(&v91);
    *v65 = v67;
    *(v65 + 16) = v94;
    *(v65 + 24) = v95;
    v68 = v83;
    *v66 = v85;
    v66[1] = v68;
    return (*(*(v63 - 8) + 56))(v64, 0, 1, v63);
  }

  return result;
}

uint64_t sub_1CF2C38F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 224) = a3;
  *(v4 + 232) = v3;
  *(v4 + 208) = a1;
  *(v4 + 216) = a2;
  v5 = *v3;
  v6 = sub_1CF9E5CF8();
  *(v4 + 240) = v6;
  *(v4 + 248) = *(v6 - 8);
  *(v4 + 256) = swift_task_alloc();
  v7 = sub_1CF9E6118();
  *(v4 + 264) = v7;
  *(v4 + 272) = *(v7 - 8);
  *(v4 + 280) = swift_task_alloc();
  v8 = v5[15];
  *(v4 + 288) = v8;
  v9 = v5[12];
  *(v4 + 296) = v9;
  v10 = v5[10];
  *(v4 + 304) = v10;
  *(v4 + 312) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 320) = AssociatedTypeWitness;
  v12 = v5[11];
  *(v4 + 328) = v12;
  *(v4 + 336) = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  *(v4 + 344) = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v4 + 352) = AssociatedConformanceWitness;
  v15 = swift_getAssociatedConformanceWitness();
  *(v4 + 360) = v15;
  *(v4 + 80) = AssociatedTypeWitness;
  *(v4 + 88) = v13;
  *(v4 + 96) = AssociatedConformanceWitness;
  *(v4 + 104) = v15;
  v16 = type metadata accessor for CodepathTriggeringDiagnostics(0, v4 + 80);
  *(v4 + 368) = v16;
  *(v4 + 376) = *(v16 - 8);
  *(v4 + 384) = swift_task_alloc();
  v17 = v5[13];
  *(v4 + 392) = v17;
  v18 = v5[14];
  *(v4 + 400) = v18;
  v19 = v5[16];
  *(v4 + 408) = v19;
  v20 = v5[17];
  *(v4 + 416) = v20;
  *&v21 = v10;
  *(&v21 + 1) = v12;
  *&v22 = v9;
  *(&v22 + 1) = v17;
  *(v4 + 16) = v21;
  *&v21 = v19;
  *(&v21 + 1) = v20;
  *(v4 + 64) = v21;
  *&v21 = v18;
  *(&v21 + 1) = v8;
  *(v4 + 32) = v22;
  *(v4 + 48) = v21;
  type metadata accessor for FPDiagnosticsManager(0, v4 + 16);
  swift_getWitnessTable();
  v24 = sub_1CF9E6EC8();
  *(v4 + 424) = v24;
  *(v4 + 432) = v23;

  return MEMORY[0x1EEE6DFA0](sub_1CF2C3CBC, v24, v23);
}

uint64_t sub_1CF2C3CBC()
{
  v70 = v0;
  *(v0 + 112) = *(v0 + 304);
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  *(v0 + 176) = *(v0 + 208);
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  *(v0 + 136) = v1;
  type metadata accessor for FPDiagnosticsManagerStateKey(255, v0 + 112);
  swift_getTupleTypeMetadata3();
  v4 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  if (sub_1CF9E7128())
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 184) = *(v0 + 208);
    v7 = *(v0 + 232);
    swift_getWitnessTable();
    v8 = sub_1CF9E6BE8();
    *(v0 + 440) = *(v7 + *(*v7 + 160));
    sub_1CF9CCD64(v8);
    v60 = *(v0 + 408);
    v61 = *(v0 + 416);
    v58 = *(v0 + 392);
    v59 = *(v0 + 400);
    v66 = *(v0 + 368);
    v67 = *(v0 + 384);
    v63 = *(v0 + 360);
    v10 = *(v0 + 328);
    v62 = *(v0 + 320);
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v57 = *(v0 + 288);
    v64 = *(v0 + 224);
    v65 = *(v0 + 376);
    *(v0 + 192) = *(v0 + 208);
    v13 = swift_task_alloc();
    v14 = swift_task_alloc();
    v15 = *(v0 + 344);
    v13[2] = v12;
    v13[3] = v10;
    v13[4] = v11;
    v13[5] = v58;
    v13[6] = v59;
    v13[7] = v57;
    v13[8] = v60;
    v13[9] = v61;
    v14[2] = v12;
    v14[3] = v10;
    v14[4] = v11;
    v14[5] = v58;
    v14[6] = v59;
    v14[7] = v57;
    v14[8] = v60;
    v14[9] = v61;
    v14[10] = sub_1CF2C946C;
    v14[11] = v13;
    *(v0 + 144) = v62;
    *(v0 + 152) = v15;
    *(v0 + 168) = v63;
    *(v0 + 448) = type metadata accessor for ReconciliationID(255, v0 + 144);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v18 = sub_1CF054A5C(sub_1CF2C94AC, v14, v4, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v17);
    *(v0 + 456) = v18;

    (*(v65 + 16))(v67, v64, v66);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    (*(v65 + 8))(v67, v66);
    if (EnumCaseMultiPayload == 4)
    {
      v20 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v21 = sub_1CF9E6108();
      v22 = sub_1CF9E7288();
      v23 = os_log_type_enabled(v21, v22);
      v31 = *(v0 + 272);
      v32 = *(v0 + 280);
      v33 = *(v0 + 264);
      if (v23)
      {
        v68 = *(v0 + 280);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v69 = v35;
        *v34 = 136315138;
        v36 = MEMORY[0x1D3868FE0](v18, TupleTypeMetadata2);
        v38 = v37;
        v18, v37, v39, v40, v41, v42, v43, v44;
        v45 = sub_1CEFD0DF0(v36, v38, &v69);
        v38, v46, v47, v48, v49, v50, v51, v52;
        *(v34 + 4) = v45;
        _os_log_impl(&dword_1CEFC7000, v21, v22, "A provider triggered diagnostics on %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1D386CDC0](v35, -1, -1);
        MEMORY[0x1D386CDC0](v34, -1, -1);

        (*(v31 + 8))(v68, v33);
      }

      else
      {
        v18, v24, v25, v26, v27, v28, v29, v30;

        (*(v31 + 8))(v32, v33);
      }
    }

    sub_1CF9E5CE8();
    v53 = swift_task_alloc();
    *(v0 + 464) = v53;
    *v53 = v0;
    v53[1] = sub_1CF2C41F0;
    v54 = *(v0 + 256);
    v55 = *(v0 + 224);
    v56 = *(v0 + 216);

    return sub_1CF2C5C08(v18, v56, v54, v55);
  }
}

uint64_t sub_1CF2C41F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v4[59] = v1;

  v6 = (v5 + 8);
  v7 = v4[57];
  v8 = v4[32];
  v9 = v4[30];
  if (v1)
  {
    (*v6)(v8, v9);
    v7, v10, v11, v12, v13, v14, v15, v16;
    v17 = v4[53];
    v18 = v4[54];
    v19 = sub_1CF2C44D4;
  }

  else
  {
    v4[60] = a1;
    (*v6)(v8, v9);
    v7, v20, v21, v22, v23, v24, v25, v26;
    v17 = v4[53];
    v18 = v4[54];
    v19 = sub_1CF2C43A0;
  }

  return MEMORY[0x1EEE6DFA0](v19, v17, v18);
}

uint64_t sub_1CF2C43A0()
{
  v1 = v0[60];
  v2 = v0[29];
  v3 = v0[26];
  sub_1CF9CD178();
  v0[25] = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E6BE8();
  v1, v5, v6, v7, v8, v9, v10, v11;

  sub_1CF9CCF38();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1CF2C44D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF2C4558(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  v110 = *(*a2 + 80);
  v111 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v113 = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for FPDiagnosticsManagerStateKey(255, &v110);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v108 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v101 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v101 - v17;
  v114 = MEMORY[0x1E69E7CC0];
  v19 = *(a2 + *(v4 + 160));
  v20 = *(v8 + 16);
  v20(&v101 - v17, a1, TupleTypeMetadata3, v16);
  *&v18[*(TupleTypeMetadata3 + 48) + 8], v21, v22, v23, v24, v25, v26, v27;
  *&v18[*(TupleTypeMetadata3 + 64) + 8], v28, v29, v30, v31, v32, v33, v34;
  v106 = v19;
  sub_1CF9CCC54(&v109);
  v35 = v109;
  WitnessTable = swift_getWitnessTable();
  sub_1CF9E6728();
  v35, v36, v37, v38, v39, v40, v41, v42;
  v43 = v110;
  if (v110)
  {
    v44 = AssociatedConformanceWitness;
    v102 = *(v6 - 8);
    (*(v102 + 8))(v18, v6);
    v44, v45, v46, v47, v48, v49, v50, v51;
    sub_1CF1E8CF8(v43);
  }

  else
  {
    v102 = *(v6 - 8);
    (*(v102 + 8))(v18, v6);
  }

  v105 = v20;
  (v20)(v14, a1, TupleTypeMetadata3);
  v52 = &v14[*(TupleTypeMetadata3 + 48)];
  v53 = *v52;
  v101 = *(v52 + 1);
  *&v14[*(TupleTypeMetadata3 + 64) + 8], v54, v55, v56, v57, v58, v59, v60;
  v61 = v114;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v61 = sub_1CF0710C0(0, *v61->tree + 1, 1, v61, v63, v64, v65, v66);
  }

  v68 = *v61->tree;
  v67 = *v61->tester;
  if (v68 >= v67 >> 1)
  {
    v61 = sub_1CF0710C0((v67 > 1), v68 + 1, 1, v61, v63, v64, v65, v66);
  }

  *v61->tree = v68 + 1;
  v69 = v61 + 16 * v68;
  v70 = v101;
  v71 = v102;
  *(v69 + 4) = v53;
  *(v69 + 5) = v70;
  v102 = *(v71 + 8);
  (v102)(v14, v6);
  v72 = v107;
  v73 = v104;
  v74 = v105;
  v105(v107, v104, TupleTypeMetadata3);
  *&v72[*(TupleTypeMetadata3 + 48) + 8], v75, v76, v77, v78, v79, v80, v81;
  *&v72[*(TupleTypeMetadata3 + 64) + 8], v82, v83, v84, v85, v86, v87, v88;
  v89 = v108;
  v74(v108, v73, TupleTypeMetadata3);
  *&v89[*(TupleTypeMetadata3 + 48) + 8], v90, v91, v92, v93, v94, v95, v96;
  v97 = &v89[*(TupleTypeMetadata3 + 64)];
  v99 = *v97;
  v98 = *(v97 + 1);
  v110 = v61;
  v111 = v99;
  AssociatedConformanceWitness = v98;
  swift_beginAccess();
  sub_1CF9E6708();
  sub_1CF9E6738();
  swift_endAccess();
  sub_1CF9CD588();
  return (v102)(v89, v6);
}

void sub_1CF2C4A6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v30 = AssociatedTypeWitness;
  v31 = swift_getAssociatedTypeWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for ReconciliationID(0, &v30);
  (*(*(v19 - 8) + 16))(a1, a2, v19);
  v30 = a6;
  v31 = a9;
  v32 = AssociatedConformanceWitness;
  v33 = v18;
  v20 = (a2 + *(type metadata accessor for FPDiagnosticsManagerStateKey(0, &v30) + 52));
  v22 = *v20;
  v21 = v20[1];
  v23 = v20[2];
  v24 = *(v20 + 12);
  LOBYTE(v20) = *(v20 + 26);
  *a7 = v22;
  *(a7 + 8) = v21;
  *(a7 + 16) = v23;
  *(a7 + 24) = v24;
  *(a7 + 26) = v20;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a8;
  *(a7 + 56) = a5;
}

double sub_1CF2C4C48@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>, uint64_t a7)
{
  *&v18 = a3;
  *(&v18 + 1) = a4;
  *&v19 = swift_getAssociatedConformanceWitness();
  *(&v19 + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for FPDiagnosticsManagerStateKey(255, &v18);
  v8 = *(a1 + *(swift_getTupleTypeMetadata3() + 48) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  *&v18 = AssociatedTypeWitness;
  *(&v18 + 1) = v10;
  *&v19 = AssociatedConformanceWitness;
  *(&v19 + 1) = v12;
  type metadata accessor for ReconciliationID(255, &v18);
  v13 = (a6 + *(swift_getTupleTypeMetadata2() + 48));
  a2(&v18, v8);
  v14 = v19;
  *v13 = v18;
  v13[1] = v14;
  v13[2] = v20[0];
  result = *(v20 + 9);
  *(v13 + 41) = *(v20 + 9);
  return result;
}

void sub_1CF2C4E60(void (*a1)(void, void, void), uint64_t a2, uint64_t *a3)
{
  v120 = a1;
  v4 = *a3;
  v5 = *a3;
  WitnessTable = sub_1CF9E6118();
  v117 = *(WitnessTable - 8);
  MEMORY[0x1EEE9AC00](WitnessTable);
  v116 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *(v5 + 80);
  v7 = *(v4 + 96);
  v131 = v123;
  v8 = *(v4 + 120);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v132 = AssociatedConformanceWitness;
  v133 = v10;
  v119 = type metadata accessor for FPDiagnosticsManagerStateKey(255, &v131);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v115 = sub_1CF9E75D8();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v13 = &v108 - v12;
  v121 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v108 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v108 - v20;
  *&v131 = a2;
  v124 = v123;
  v112 = v7;
  v125 = v7;
  v110 = *(v5 + 104);
  v126 = v110;
  v113 = v8;
  v127 = v8;
  v111 = *(v5 + 128);
  v128 = v111;
  v129 = v120;
  sub_1CF9E6E58();

  swift_getWitnessTable();
  v22 = v122;
  v23 = sub_1CF9E7A08();
  v122 = v22;
  *&v131 = v23;
  swift_getWitnessTable();
  v24 = v121;
  sub_1CF9E7118();
  if ((*(v24 + 48))(v13, 1, TupleTypeMetadata3) == 1)
  {
    (*(v114 + 8))(v13, v115);
    v23, v25, v26, v27, v28, v29, v30, v31;
    v32 = fpfs_current_or_default_log();
    v33 = v116;
    sub_1CF9E6128();
    v34 = sub_1CF9E6108();
    v35 = sub_1CF9E72A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1CEFC7000, v34, v35, "Cannot add back unsentItem, couldn't find matching item", v36, 2u);
      MEMORY[0x1D386CDC0](v36, -1, -1);
    }

    (*(v117 + 8))(v33, WitnessTable);
    return;
  }

  (*(v24 + 32))(v21, v13, TupleTypeMetadata3);
  v23, v37, v38, v39, v40, v41, v42, v43;
  v120 = *(v24 + 16);
  v120(v18, v21, TupleTypeMetadata3);
  *&v18[*(TupleTypeMetadata3 + 48) + 8], v44, v45, v46, v47, v48, v49, v50;
  *&v18[*(TupleTypeMetadata3 + 64) + 8], v51, v52, v53, v54, v55, v56, v57;
  sub_1CF9CCC54(&v130);
  v58 = v130;
  v59 = v119;
  WitnessTable = swift_getWitnessTable();
  sub_1CF9E6728();
  v58, v60, v61, v62, v63, v64, v65, v66;
  v67 = v131;
  if (!v131)
  {
    (*(*(v59 - 8) + 8))(v18, v59);
    (*(v24 + 8))(v21, TupleTypeMetadata3);
    return;
  }

  v68 = v132;
  v117 = *(&v131 + 1);
  v69 = (*(*(v59 - 8) + 8))(v18, v59);
  v116 = &v108;
  v134 = v67;
  v70 = MEMORY[0x1EEE9AC00](v69);
  v70.i64[0] = v112;
  v71 = vzip1q_s64(v70, v110);
  *&v72 = vdupq_laneq_s64(v110, 1).u64[0];
  *(&v108 - 5) = v123;
  *(&v108 - 4) = v71;
  *(&v72 + 1) = v113;
  v73 = v111;
  *(&v108 - 3) = v72;
  *(&v108 - 2) = v73;
  *(&v108 - 2) = v21;
  *&v123 = v68;

  v74 = v122;
  sub_1CF8DF4CC(sub_1CF2C957C, (&v108 - 12));
  v76 = v134;
  v77 = *v134->tree;
  if (v75 > v77)
  {
    __break(1u);
    goto LABEL_19;
  }

  v78 = v75;
  if (v75 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v79 = v75;
  if (__OFADD__(v77, v75 - v77))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v122 = v74;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v79 > *v76->tester >> 1)
  {
    if (v77 <= v79)
    {
      v85 = v79;
    }

    else
    {
      v85 = v77;
    }

    v76 = sub_1CF0710C0(isUniquelyReferenced_nonNull_native, v85, 1, v76, v81, v82, v83, v84);
    v134 = v76;
  }

  sub_1CF8E6498(v78, v77, 0);
  v86 = v109;
  v120(v109, v21, TupleTypeMetadata3);
  *&v86[*(TupleTypeMetadata3 + 48) + 8], v87, v88, v89, v90, v91, v92, v93;
  *&v86[*(TupleTypeMetadata3 + 64) + 8], v94, v95, v96, v97, v98, v99, v100;
  *&v131 = v76;
  v101 = v117;
  v102 = v123;
  *(&v131 + 1) = v117;
  v132 = v123;
  swift_beginAccess();
  sub_1CF9E6708();
  sub_1CF9E6738();
  swift_endAccess();
  sub_1CF2CA088(v67, v101, v102, v103, v104, v105, v106, v107);
  sub_1CF9CD588();
  (*(v121 + 8))(v21, TupleTypeMetadata3);
}

uint64_t sub_1CF2C56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a1;
  v42 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v40 = swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedConformanceWitness();
  v43 = AssociatedTypeWitness;
  v44 = v13;
  v45 = v40;
  v46 = v39;
  v14 = type metadata accessor for ReconciliationID(0, &v43);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v43 = a3;
  v44 = a4;
  v45 = AssociatedConformanceWitness;
  v46 = v12;
  v18 = type metadata accessor for FPDiagnosticsManagerStateKey(255, &v43);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v22 = &v39 - v21;
  (*(v23 + 16))(&v39 - v21, v41, TupleTypeMetadata3, v20);
  *&v22[*(TupleTypeMetadata3 + 48) + 8], v24, v25, v26, v27, v28, v29, v30;
  *&v22[*(TupleTypeMetadata3 + 64) + 8], v31, v32, v33, v34, v35, v36, v37;
  (*(v15 + 16))(v17, v22, v14);
  (*(*(v18 - 8) + 8))(v22, v18);
  LOBYTE(v18) = sub_1CF024490(v17, v42, AssociatedTypeWitness, v13);
  (*(v15 + 8))(v17, v14);
  return v18 & 1;
}

uint64_t sub_1CF2C5A14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38[0] = a3;
  v38[1] = a4;
  v38[2] = swift_getAssociatedConformanceWitness();
  v38[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FPDiagnosticsManagerStateKey(255, v38);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v14 = v38 - v13;
  v16 = *a1;
  v15 = a1[1];
  (*(v17 + 16))(v38 - v13, a2, TupleTypeMetadata3, v12);
  v18 = &v14[*(TupleTypeMetadata3 + 48)];
  v20 = *v18;
  v19 = *(v18 + 1);
  *&v14[*(TupleTypeMetadata3 + 64) + 8], v21, v22, v23, v24, v25, v26, v27;
  if (v16 == v20 && v15 == v19)
  {
    v36 = 1;
  }

  else
  {
    v36 = sub_1CF9E8048();
  }

  v19, v28, v29, v30, v31, v32, v33, v34;
  (*(*(v10 - 8) + 8))(v14, v10);
  return v36 & 1;
}

uint64_t sub_1CF2C5C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 256) = a4;
  *(v5 + 264) = v4;
  *(v5 + 240) = a2;
  *(v5 + 248) = a3;
  *(v5 + 232) = a1;
  v6 = *v4;
  v7 = sub_1CF9E6118();
  *(v5 + 272) = v7;
  *(v5 + 280) = *(v7 - 8);
  *(v5 + 288) = swift_task_alloc();
  v8 = v6[15];
  *(v5 + 296) = v8;
  v9 = v6[12];
  *(v5 + 304) = v9;
  v10 = v6[10];
  *(v5 + 312) = v10;
  swift_getAssociatedConformanceWitness();
  v28 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = v6[11];
  *(v5 + 320) = v12;
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  *(v5 + 120) = v14;
  *(v5 + 128) = v13;
  *(v5 + 136) = AssociatedConformanceWitness;
  *(v5 + 144) = v16;
  *(v5 + 328) = type metadata accessor for ReconciliationID(255, v5 + 120);
  *(v5 + 336) = swift_getTupleTypeMetadata2();
  v17 = sub_1CF9E75D8();
  *(v5 + 344) = v17;
  *(v5 + 352) = *(v17 - 8);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 152) = v14;
  *(v5 + 160) = v13;
  *(v5 + 168) = AssociatedConformanceWitness;
  *(v5 + 176) = v16;
  v18 = type metadata accessor for CodepathTriggeringDiagnostics(0, v5 + 152);
  *(v5 + 368) = v18;
  *(v5 + 376) = *(v18 - 8);
  *(v5 + 384) = swift_task_alloc();
  v19 = v6[13];
  *(v5 + 392) = v19;
  v20 = v6[14];
  *(v5 + 400) = v20;
  v21 = v6[16];
  *(v5 + 408) = v21;
  v22 = v6[17];
  *(v5 + 416) = v22;
  *&v23 = v28;
  *&v24 = v9;
  *(&v23 + 1) = v12;
  *(&v24 + 1) = v19;
  *(v5 + 16) = v23;
  *&v23 = v21;
  *(&v23 + 1) = v22;
  *(v5 + 64) = v23;
  *&v23 = v20;
  *(&v23 + 1) = v8;
  *(v5 + 32) = v24;
  *(v5 + 48) = v23;
  type metadata accessor for FPDiagnosticsManager(0, v5 + 16);
  swift_getWitnessTable();
  v26 = sub_1CF9E6EC8();
  *(v5 + 424) = v26;
  *(v5 + 432) = v25;

  return MEMORY[0x1EEE6DFA0](sub_1CF2C6008, v26, v25);
}

uint64_t sub_1CF2C6008()
{
  v1 = *(v0 + 264);
  v2 = v1 + *(*v1 + 208);
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 8);
    v5 = *(v0 + 232);

    v3(v5);
    v12 = sub_1CF9E6DA8();
    sub_1CEFF7124(v3, v4);
LABEL_14:

    v141 = *(v0 + 8);

    return v141(v12);
  }

  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 232);
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  v10 = *(v7 + 72);
  swift_getTupleTypeMetadata3();
  v11 = sub_1CF9E6E58();
  v10(sub_1CF2C933C, v9, v11, v6, v7);

  v13 = *(v0 + 184);
  v14 = *(v0 + 376);
  v15 = *(v0 + 384);
  v16 = *(v0 + 368);
  (*(v14 + 16))(v15, *(v0 + 256), v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v14 + 8))(v15, v16);
  if (sub_1CF2BA6AC(v16))
  {
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    *(v0 + 224) = v13;
    v20 = swift_task_alloc();
    v21 = *(v0 + 392);
    v22 = *(v0 + 408);
    *(v20 + 16) = *(v0 + 312);
    *(v20 + 32) = v18;
    *(v20 + 40) = v21;
    *(v20 + 56) = v19;
    *(v20 + 64) = v22;
    swift_getWitnessTable();
    v12 = sub_1CF9E6B88();
    v13, v23, v24, v25, v26, v27, v28, v29;

    *(v0 + 192) = v12;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v30 = sub_1CF9E7128();
    v12, v31, v32, v33, v34, v35, v36, v37;
    if (v30)
    {
      v12, v38, v39, v40, v41, v42, v43, v44;
      v12 = sub_1CF9E6DA8();
    }

    else if (fpfs_is_internal_build())
    {
      v63 = *(v0 + 408);
      v65 = *(v0 + 392);
      v64 = *(v0 + 400);
      v144 = *(v0 + 360);
      v146 = *(v0 + 416);
      v66 = *(v0 + 312);
      v67 = *(v0 + 320);
      v68 = *(v0 + 296);
      v69 = *(v0 + 304);
      v142 = *(v0 + 232);
      v143 = *(v0 + 336);
      v70 = swift_task_alloc();
      v70[2] = v66;
      v70[3] = v67;
      v70[4] = v69;
      v70[5] = v65;
      v70[6] = v64;
      v70[7] = v68;
      v70[8] = v63;
      v70[9] = v146;
      v70[10] = v12;

      swift_getWitnessTable();
      v148 = sub_1CF9E66C8();

      *(v0 + 200) = v142;
      v71 = swift_task_alloc();
      v71[2] = v66;
      v71[3] = v67;
      v71[4] = v69;
      v71[5] = v65;
      v71[6] = v64;
      v71[7] = v68;
      v71[8] = v63;
      v71[9] = v146;
      v71[10] = v12;
      sub_1CF9E6E58();

      swift_getWitnessTable();
      v72 = sub_1CF9E7A08();
      v12, v73, v74, v75, v76, v77, v78, v79;

      *(v0 + 208) = v72;
      swift_getWitnessTable();
      sub_1CF9E7118();
      v72, v80, v81, v82, v83, v84, v85, v86;
      v87 = (*(*(v143 - 8) + 48))(v144, 1, v143);
      v88 = *(v0 + 360);
      if (v87 == 1)
      {
        (*(*(v0 + 352) + 8))(v88, *(v0 + 344));
        v89 = 0;
        v90 = 0;
      }

      else
      {
        v91 = (v88 + *(*(v0 + 336) + 48));
        v93 = *v91;
        v92 = v91[1];
        v94 = v91[2];
        v95 = v91[5];
        (*(*(*(v0 + 328) - 8) + 8))();

        MEMORY[0x1D3868CC0](v93, v92);
        v92, v96, v97, v98, v99, v100, v101, v102;
        MEMORY[0x1D3868CC0](58, 0xE100000000000000);
        *(v0 + 216) = v94;
        v103 = sub_1CF9E7F98();
        v105 = v104;
        MEMORY[0x1D3868CC0](v103);
        v92, v106, v107, v108, v109, v110, v111, v112;
        v95, v113, v114, v115, v116, v117, v118, v119;
        v105, v120, v121, v122, v123, v124, v125, v126;
        v89 = 8250;
        v90 = 0xE200000000000000;
      }

      v12 = (*(*(v0 + 416) + 40))(v148, *(v0 + 256), v89, v90, *(v0 + 400));
      v148, v127, v128, v129, v130, v131, v132, v133;
      v90, v134, v135, v136, v137, v138, v139, v140;
    }

    goto LABEL_14;
  }

  v147 = *(v0 + 408);
  v45 = *(v0 + 264);
  v46 = EnumCaseMultiPayload == 4;
  swift_getTupleTypeMetadata3();
  v47 = sub_1CF9E7B48();
  *(v0 + 440) = v47;
  v13, v48, v49, v50, v51, v52, v53, v54;
  v55 = *(*v45 + 200);
  v56 = *(v45 + *(*v45 + 176));
  *(v0 + 104) = type metadata accessor for FPFeedbackUIManager();
  *(v0 + 112) = &off_1F4BFD800;
  *(v0 + 80) = v56;
  v57 = *(v147 + 40);

  v145 = (v57 + *v57);
  v58 = swift_task_alloc();
  *(v0 + 448) = v58;
  *v58 = v0;
  v58[1] = sub_1CF2C699C;
  v59 = *(v0 + 408);
  v60 = *(v0 + 392);
  v61 = *(v0 + 248);

  return v145(v47, v61, v45 + v55, v46, v0 + 80, v60, v59);
}

uint64_t sub_1CF2C699C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 456) = v2;

  *(v5 + 440), v6, v7, v8, v9, v10, v11, v12;
  if (v2)
  {
    v13 = *(v5 + 424);
    v14 = *(v5 + 432);
    v15 = sub_1CF2C6F30;
  }

  else
  {
    *(v5 + 464) = a2;
    __swift_destroy_boxed_opaque_existential_1((v5 + 80));
    v13 = *(v5 + 424);
    v14 = *(v5 + 432);
    v15 = sub_1CF2C6AD8;
  }

  return MEMORY[0x1EEE6DFA0](v15, v13, v14);
}

uint64_t sub_1CF2C6AD8()
{
  v1 = v0[58];

  v0[24] = v1;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  v2 = sub_1CF9E7128();
  v1, v3, v4, v5, v6, v7, v8, v9;
  if (v2)
  {
    v1, v10, v11, v12, v13, v14, v15, v16;
    v1 = sub_1CF9E6DA8();
  }

  else if (fpfs_is_internal_build())
  {
    v99 = v0[51];
    v100 = v0[52];
    v18 = v0[49];
    v17 = v0[50];
    v97 = v0[42];
    v98 = v0[45];
    v19 = v0[39];
    v20 = v0[40];
    v22 = v0[37];
    v21 = v0[38];
    v96 = v0[29];
    v23 = swift_task_alloc();
    v23[2] = v19;
    v23[3] = v20;
    v23[4] = v21;
    v23[5] = v18;
    v23[6] = v17;
    v23[7] = v22;
    v23[8] = v99;
    v23[9] = v100;
    v23[10] = v1;

    swift_getWitnessTable();
    v101 = sub_1CF9E66C8();

    v0[25] = v96;
    v24 = swift_task_alloc();
    v24[2] = v19;
    v24[3] = v20;
    v24[4] = v21;
    v24[5] = v18;
    v24[6] = v17;
    v24[7] = v22;
    v24[8] = v99;
    v24[9] = v100;
    v24[10] = v1;
    sub_1CF9E6E58();

    swift_getWitnessTable();
    v25 = sub_1CF9E7A08();
    v1, v26, v27, v28, v29, v30, v31, v32;

    v0[26] = v25;
    swift_getWitnessTable();
    sub_1CF9E7118();
    v25, v33, v34, v35, v36, v37, v38, v39;
    v40 = (*(*(v97 - 8) + 48))(v98, 1, v97);
    v41 = v0[45];
    if (v40 == 1)
    {
      (*(v0[44] + 8))(v41, v0[43]);
      v42 = 0;
      v43 = 0;
    }

    else
    {
      v44 = (v41 + *(v0[42] + 48));
      v45 = *v44;
      v46 = v44[1];
      v47 = v44[2];
      v48 = v44[5];
      (*(*(v0[41] - 8) + 8))();

      MEMORY[0x1D3868CC0](v45, v46);
      v46, v49, v50, v51, v52, v53, v54, v55;
      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      v0[27] = v47;
      v56 = sub_1CF9E7F98();
      v58 = v57;
      MEMORY[0x1D3868CC0](v56);
      v46, v59, v60, v61, v62, v63, v64, v65;
      v48, v66, v67, v68, v69, v70, v71, v72;
      v58, v73, v74, v75, v76, v77, v78, v79;
      v42 = 8250;
      v43 = 0xE200000000000000;
    }

    v1 = (*(v0[52] + 40))(v101, v0[32], v42, v43, v0[50]);
    v101, v80, v81, v82, v83, v84, v85, v86;
    v43, v87, v88, v89, v90, v91, v92, v93;
  }

  v94 = v0[1];

  return v94(v1);
}

uint64_t sub_1CF2C6F30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF2C6FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a3;
  v5 = *a3;
  v30[3] = a2;
  v27 = a1;
  v28 = a3;
  v18 = v4[10];
  v19 = v4[11];
  v20 = *(v5 + 6);
  v21 = v4[14];
  v22 = *(v5 + 15);
  v23 = v4[17];
  v24 = sub_1CF2C9408;
  v25 = &v26;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v29[0] = AssociatedTypeWitness;
  v29[1] = v7;
  v29[2] = AssociatedConformanceWitness;
  v29[3] = v9;
  type metadata accessor for ReconciliationID(255, v29);
  swift_getTupleTypeMetadata2();
  v10 = sub_1CF9E6E58();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF054A5C(sub_1CF2C9424, v17, v10, TupleTypeMetadata3, v12, WitnessTable, MEMORY[0x1E69E7288], v30);
  if (!v16)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF2C7288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a5;
  v29 = a3[1];
  v30 = *a3;
  v28 = a3[2];
  v26 = *(a3 + 25);
  v27 = *(a3 + 24);
  v25 = *(a3 + 26);
  v23 = a3[5];
  v24 = a3[4];
  v11 = a3[6];
  v22 = *(a3 + 56);
  v13 = a4[3];
  v12 = a4[4];
  v14 = __swift_project_boxed_opaque_existential_1(a4, v13);
  result = (*(*(v10 + 120) + 48))(a2, v14, v13, v12, *(v10 + 96), *(v10 + 120));
  if (!v6)
  {
    v19 = v16;
    v20 = result;
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v31[0] = AssociatedTypeWitness;
    v31[1] = swift_getAssociatedTypeWitness();
    v31[2] = swift_getAssociatedConformanceWitness();
    v31[3] = swift_getAssociatedConformanceWitness();
    v18 = type metadata accessor for ReconciliationID(0, v31);
    (*(*(v18 - 8) + 16))(a1, a2, v18);
    result = sub_1CF1A8918(a3, v31);
    *a6 = v30;
    *(a6 + 8) = v29;
    *(a6 + 16) = v28;
    *(a6 + 24) = v27;
    *(a6 + 25) = v26;
    *(a6 + 26) = v25;
    *(a6 + 32) = v24;
    *(a6 + 40) = v23;
    *(a6 + 48) = v11;
    *(a6 + 56) = v22;
    *(a6 + 64) = v20;
    *(a6 + 72) = v19;
  }

  return result;
}

void *sub_1CF2C7550@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v32 = AssociatedTypeWitness;
  v33 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(255, &v32);
  v11 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  *&v44[9] = *(v11 + 41);
  v12 = v11[1];
  v42 = *v11;
  v43 = v12;
  *v44 = v11[2];
  result = a2(&v32);
  if (v30)
  {
    *a10 = v30;
  }

  else
  {
    v14 = v32;
    v15 = AssociatedConformanceWitness;
    v16 = v35;
    v17 = BYTE1(v35);
    v18 = BYTE2(v35);
    v19 = v36;
    v29 = v37;
    v31 = v33;
    v20 = v38;
    v27 = v39;
    v23 = v41;
    v25 = v40;
    result = swift_getTupleTypeMetadata3();
    v21 = a6 + *(result + 12);
    v22 = (a6 + *(result + 16));
    *v21 = v14;
    *(v21 + 8) = v31;
    *(v21 + 16) = v15;
    *(v21 + 24) = v16;
    *(v21 + 25) = v17;
    *(v21 + 26) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = v29;
    *(v21 + 48) = v20;
    *(v21 + 56) = v27;
    *v22 = v25;
    v22[1] = v23;
  }

  return result;
}

uint64_t sub_1CF2C77A8@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  v39 = a1;
  v40 = a6;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v41[0] = AssociatedTypeWitness;
  v41[1] = swift_getAssociatedTypeWitness();
  v41[2] = swift_getAssociatedConformanceWitness();
  v41[3] = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ReconciliationID(255, v41);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v11 = &v39 - v10;
  (*(v12 + 16))(&v39 - v10, v39, TupleTypeMetadata3, v9);
  v13 = &v11[*(TupleTypeMetadata3 + 48)];
  v14 = *(v13 + 1);
  *(v13 + 5), v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  *&v11[*(TupleTypeMetadata3 + 64) + 8], v29, v30, v31, v32, v33, v34, v35;
  v36 = *(v7 - 8);
  v37 = v40;
  (*(v36 + 32))(v40, v11, v7);
  return (*(v36 + 56))(v37, 0, 1, v7);
}

uint64_t sub_1CF2C7A30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a1;
  v23 = a3;
  v21 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v24[0] = AssociatedTypeWitness;
  v24[1] = swift_getAssociatedTypeWitness();
  v24[2] = swift_getAssociatedConformanceWitness();
  v24[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ReconciliationID(255, v24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v20 - v14;
  v17 = *v21;
  v16 = v21[1];
  (*(*(v10 - 8) + 16))(&v20 - v14, v22, v10, v13);
  v18 = &v15[*(TupleTypeMetadata2 + 48)];
  *v18 = v17;
  *(v18 + 1) = v16;
  v24[0] = v23;
  sub_1CF9E6E58();

  swift_getWitnessTable();
  swift_getWitnessTable();
  LOBYTE(v16) = sub_1CF9E6C08();
  (*(v12 + 8))(v15, TupleTypeMetadata2);
  return v16 & 1;
}

uint64_t sub_1CF2C7CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[5] = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10[0] = AssociatedTypeWitness;
  v10[1] = swift_getAssociatedTypeWitness();
  v10[2] = swift_getAssociatedConformanceWitness();
  v10[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(255, v10);
  sub_1CF9E6E58();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1CF9E6C08() & 1;
}

void sub_1CF2C7E80(uint64_t a1)
{
  v2 = *v1;
  v8 = a1;
  v3 = v2[6];
  v9[0] = v2[5];
  v9[1] = v3;
  v4 = v2[8];
  v9[2] = v2[7];
  v9[3] = v4;
  v5 = type metadata accessor for FPDiagnosticsManager(0, v9);
  WitnessTable = swift_getWitnessTable();
  sub_1CF559504(sub_1CF2C928C, v7, "FileProviderDaemon/FPDiagnosticsManager.swift", 45, 2u, 823, v5, MEMORY[0x1E69E7CA8] + 8, WitnessTable);
}

uint64_t sub_1CF2C7F58(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1CF9CCC54(&v22);
  v5 = v22;
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  sub_1CF2BC14C(a2, v5, v6, v7, AssociatedConformanceWitness, v9);
  v5, v10, v11, v12, v13, v14, v15, v16;
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  sub_1CF4FB2BC(0xD00000000000001ALL, 0x80000001CFA3DC00, v17, v18);
  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF2C92A8, a1, v19, MEMORY[0x1E69E7CA8] + 8, v20);
}

uint64_t *sub_1CF2C8114()
{
  v1 = *v0;
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 144));
  swift_unknownObjectRelease();

  (*(*(*(v1 + 104) - 8) + 8))(v0 + *(*v0 + 168));

  (*(*(*(v1 + 112) - 8) + 8))(v0 + *(*v0 + 184));
  sub_1CEFCCC44(v0 + *(*v0 + 200), &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CEFF7124(*(v0 + *(*v0 + 208)), *(v0 + *(*v0 + 208) + 8));
  return v0;
}

uint64_t sub_1CF2C82D4()
{
  sub_1CF2C8114();

  return swift_deallocClassInstance();
}

unint64_t sub_1CF2C8330(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E6938();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6918();
  v10 = sub_1CF9E68C8();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v12 >> 60 == 15)
  {
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = sub_1CF9E6108();
    v15 = sub_1CF9E72A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1CEFC7000, v14, v15, "Error decoding targetedSPSErrorsPayload as UTF8", v16, 2u);
      MEMORY[0x1D386CDC0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return sub_1CF4E26CC(MEMORY[0x1E69E7CC0]);
  }

  sub_1CF9E5408();
  swift_allocObject();
  v18 = sub_1CF9E53F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE90, &qword_1CFA00D98);
  sub_1CF2C91B4();
  sub_1CF9E53E8();
  v96 = v18;
  v97 = v10;
  v98 = v12;
  v19 = v109;
  v101 = *v109->tree;
  if (!v101)
  {
    v17 = MEMORY[0x1E69E7CC8];
LABEL_20:

    sub_1CEFE48D8(v97, v98);
    v19, v88, v89, v90, v91, v92, v93, v94;
    return v17;
  }

  v20 = 0;
  tree = v109[1].tree;
  v17 = MEMORY[0x1E69E7CC8];
  v100 = v109;
  while (v20 < *v19->tree)
  {
    v102 = v20;
    v46 = *(tree - 2);
    v47 = *(tree - 1);
    v48 = *tree;
    v49 = tree[8];
    v50 = tree[9];
    v51 = tree[10];
    v52 = *(tree + 3);
    v108 = *(tree + 2);
    v53 = *(tree + 4);
    v104 = tree[40];
    swift_bridgeObjectRetain_n();
    v103 = v52;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v17;
    v105 = v50;
    v106 = v49;
    v55 = v9 & 0xFF000000 | v49 & 0xFFFF00FF | (v50 << 8);
    v56 = v51;
    LODWORD(v9) = v55 & 0xFF00FFFF | (v51 << 16);
    v107 = v46;
    v57 = v48;
    v65 = sub_1CF7BF840(v46, v47, v48, v9);
    v66 = *v17->tree;
    v67 = (v58 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_23;
    }

    v69 = v58;
    if (*v17->tester >= v68)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CF7D0140();
      }
    }

    else
    {
      v70 = v105 << 8;
      sub_1CF7C5610(v68, isUniquelyReferenced_nonNull_native);
      v99 = v99 & 0xFF000000 | v106 | v70 | (v51 << 16);
      v71 = sub_1CF7BF840(v107, v47, v57, v99);
      if ((v69 & 1) != (v58 & 1))
      {
        goto LABEL_25;
      }

      v65 = v71;
    }

    v72 = v104;
    v73 = v108;
    if (v69)
    {
      v47, v58, v59, v60, v61, v62, v63, v64;
      v17 = v109;
      v22 = *v109[1].tester + 32 * v65;
      v23 = *(v22 + 8);
      v24 = v103;
      *v22 = v73;
      *(v22 + 8) = v24;
      *(v22 + 16) = v53;
      *(v22 + 24) = v72;
      v24, v25, v26, v27, v28, v29, v30, v31;
      v47, v32, v33, v34, v35, v36, v37, v38;
      v23, v39, v40, v41, v42, v43, v44, v45;
    }

    else
    {
      v17 = v109;
      *(&v109[2].super.isa + (v65 >> 6)) |= 1 << v65;
      v74 = *v17[1].tree + 32 * v65;
      *v74 = v107;
      *(v74 + 8) = v47;
      *(v74 + 16) = v57;
      v75 = v105;
      *(v74 + 24) = v106;
      *(v74 + 25) = v75;
      *(v74 + 26) = v56;
      v76 = *v17[1].tester + 32 * v65;
      v77 = v103;
      *v76 = v73;
      *(v76 + 8) = v77;
      *(v76 + 16) = v53;
      *(v76 + 24) = v72;
      v77, v58, v59, v60, v61, v62, v63, v64;
      v47, v78, v79, v80, v81, v82, v83, v84;
      v85 = *v17->tree;
      v86 = __OFADD__(v85, 1);
      v87 = v85 + 1;
      if (v86)
      {
        goto LABEL_24;
      }

      *v17->tree = v87;
    }

    v20 = v102 + 1;
    tree += 64;
    v19 = v100;
    if (v101 == v102 + 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

unint64_t _s18FileProviderDaemon22FPDiagnosticSignaturesC22validateJSONSignatures10jsonStringSaySSGSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  result = sub_1CF2C8330(a1, a2);
  if (*(result + 16))
  {
    v10 = 0;
    v11 = result + 64;
    v12 = 1 << *(result + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(result + 64);
    v15 = (v12 + 63) >> 6;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 0x205D5254545BLL;
    if (!v14)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = (v10 << 11) | (32 * v18);
        v20 = *(result + 56) + v19;
        if (*(v20 + 16) > 0.0)
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_7;
        }
      }

      v63 = result;
      v22 = *(result + 48) + v19;
      v23 = *(v22 + 8);
      v60 = *(v22 + 16);
      v61 = *v22;
      v24 = *(v22 + 24);
      v58 = *(v22 + 26);
      v59 = *(v22 + 25);
      v25 = *(v20 + 8);
      v26 = *(v20 + 24);

      if (v26 == 2 || (v26 & 1) == 0)
      {
        v17 = 0;
        v34 = 0xE000000000000000;
      }

      else
      {
        v34 = 0xE600000000000000;
      }

      v25, v27, v28, v29, v30, v31, v32, v33;
      v64 = v17;
      v65 = v34;
      v35 = sub_1CF19F0C0(v61, v23, v60, v62 & 0xFF000000 | v24 | (v59 << 8) | (v58 << 16));
      v37 = v36;
      v23, v36, v38, v39, v40, v41, v42, v43;
      MEMORY[0x1D3868CC0](v35, v37);
      v37, v44, v45, v46, v47, v48, v49, v50;
      v62 = v62 & 0xFF000000 | v24 | (v59 << 8) | (v58 << 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1CF0710C0(0, *v16->tree + 1, 1, v16, v51, v52, v53, v54);
      }

      result = v63;
      v56 = *v16->tree;
      v55 = *v16->tester;
      if (v56 >= v55 >> 1)
      {
        v16 = sub_1CF0710C0((v55 > 1), v56 + 1, 1, v16, v51, v52, v53, v54);
        result = v63;
      }

      *v16->tree = v56 + 1;
      v57 = v16 + 16 * v56;
      *(v57 + 4) = v64;
      *(v57 + 5) = v65;
      v17 = 0x205D5254545BLL;
    }

    while (v14);
LABEL_7:
    while (1)
    {
      v21 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v21 >= v15)
      {

        return v16;
      }

      v14 = *(v11 + 8 * v21);
      ++v10;
      if (v14)
      {
        v10 = v21;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
    result, v3, v4, v5, v6, v7, v8, v9;
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void _s18FileProviderDaemon22FPDiagnosticSignaturesC015isErrorMatchingE010jsonString5error9direction7jobCode10underlyingSbSS_So7NSErrorCSo8NSNumberCSgA2NtFZ_0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v17 = sub_1CF2C8330(a1, a2);
  if (!*(v17 + 16))
  {
LABEL_4:
    v18 = v17;
LABEL_40:
    v18, v10, v11, v12, v13, v14, v15, v16;
    return;
  }

  if (a4)
  {
    v63 = [a4 integerValue];
    if (v63 >= 7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v63 = 6;
  }

  if (a5)
  {
    v19 = sub_1CF043D7C([a5 integerValue]);
    if (a6)
    {
LABEL_8:
      v62 = [a6 BOOLValue];
      goto LABEL_11;
    }
  }

  else
  {
    v19 = 89;
    if (a6)
    {
      goto LABEL_8;
    }
  }

  v62 = 2;
LABEL_11:
  v20 = [a3 domain];
  v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  v64 = [a3 code];
  v23 = 1 << *(v17 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v17 + 64);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  v60 = v19;
  v61 = v19;
  while (v25)
  {
LABEL_19:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = (v27 << 11) | (32 * v29);
    v31 = *(v17 + 48) + v30;
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);
    v34 = *(v31 + 25);
    v35 = *(v31 + 26);
    v36 = *(*(v17 + 56) + v30 + 16);
    v37 = *v31 == v65 && *(v31 + 8) == v22;
    if (v37 || (sub_1CF9E8048()) && v32 == v64)
    {
      v38 = v33 == 6 || v63 == v33;
      if (v38 && (v34 == 89 || v61 != 89 && qword_1CFA01448[v34] == qword_1CFA01448[v60]) && (v35 == 2 || v62 != 2 && ((v35 ^ v62) & 1) == 0) && v36 > 0.0)
      {

        v17, v46, v47, v48, v49, v50, v51, v52;
        v22, v53, v54, v55, v56, v57, v58, v59;
        return;
      }
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      v17, v39, v40, v41, v42, v43, v44, v45;
      v18 = v22;
      goto LABEL_40;
    }

    v25 = *(v17 + 64 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1CF2C8EFC(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1CF1DEC4C(319);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1CF2C9088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1CF2C910C()
{
  result = qword_1EC4BEE80;
  if (!qword_1EC4BEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE80);
  }

  return result;
}

unint64_t sub_1CF2C9160()
{
  result = qword_1EC4BEE88;
  if (!qword_1EC4BEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEE88);
  }

  return result;
}

unint64_t sub_1CF2C91B4()
{
  result = qword_1EDEAB678;
  if (!qword_1EDEAB678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BEE90, &qword_1CFA00D98);
    sub_1CF2C9238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB678);
  }

  return result;
}

unint64_t sub_1CF2C9238()
{
  result = qword_1EDEAC5B0;
  if (!qword_1EDEAC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5B0);
  }

  return result;
}

uint64_t sub_1CF2C95B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEF28, &qword_1CFA010E0);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEF30, &qword_1CFA010E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = a1[3];
  v19 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1CF2CAAA8();
  sub_1CF9E8298();
  if (v1)
  {
    goto LABEL_6;
  }

  v17 = v7;
  v11 = sub_1CF9E7DF8();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (sub_1CF18BDE0() || v23 != v24 >> 1)
  {
    v13 = sub_1CF9E79E8();
    swift_allocError();
    v15 = v14;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AD0, &qword_1CFA010F0) + 48);
    *v15 = &type metadata for FPDiagnosticsManagerStateValue;
    sub_1CF9E7C98();
    sub_1CF9E79D8();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    (*(v17 + 8))(v9, v6);
    swift_unknownObjectRelease();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v10;
  }

  sub_1CF2CAAFC();
  sub_1CF9E7C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  v20 = 0;
  sub_1CEFE7C14(&qword_1EDEAB660, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1CF9E7D88();
  v10 = v25;
  v20 = 1;
  sub_1CF9E7CB8();
  (*(v18 + 8))(v5, v3);
  (*(v17 + 8))(v9, v6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v10;
}

uint64_t sub_1CF2C9A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *&v42 = AssociatedTypeWitness;
  *(&v42 + 1) = swift_getAssociatedTypeWitness();
  *&v43 = swift_getAssociatedConformanceWitness();
  *(&v43 + 1) = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for CodepathTriggeringDiagnostics(0, &v42);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  if (fpfs_is_internal_build() && (v13 = objc_allocWithZone(MEMORY[0x1E695E000]), v14 = sub_1CF9E6888(), v15 = [v13 initWithSuiteName_], v14, v15))
  {
    v16 = sub_1CF9E6888();
    v17 = [v15 objectForKey_];

    if (v17)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
      sub_1CEFCCC44(&v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v18 = sub_1CF9E6888();
      v19 = [v15 stringForKey_];

      if (v19)
      {
        v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      (*(v10 + 16))(v12, a1, v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          if (!v22)
          {
            goto LABEL_34;
          }

          if (v20 != 1801678950 || v22 != 0xE400000000000000)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (EnumCaseMultiPayload == 3)
          {
            if (v22)
            {
              v28 = 0x80000001CFA3DCA0;
              v27 = 0xD000000000000014;
              if (v20 != 0xD000000000000014 || v22 != 0x80000001CFA3DCA0)
              {
LABEL_39:
                v23 = sub_1CF9E8048();
                v22, v35, v36, v37, v38, v39, v40, v41;

                return v23 & 1;
              }

              goto LABEL_33;
            }

LABEL_34:

            v23 = 0;
            return v23 & 1;
          }

          if (!v22)
          {
            goto LABEL_34;
          }

          v27 = 0x72656469766F7270;
          if (v20 != 0x72656469766F7270 || v22 != 0xE800000000000000)
          {
            goto LABEL_39;
          }
        }

LABEL_33:
        v22, v26, v27, v28, v29, v30, v31, v32;

        v23 = 1;
        return v23 & 1;
      }

      if (EnumCaseMultiPayload)
      {
        (*(v10 + 8))(v12, v9);
        if (!v22)
        {
          goto LABEL_34;
        }

        v27 = 0x687370616E737066;
        if (v20 != 0x687370616E737066 || v22 != 0xEA0000000000746FLL)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      if (v22)
      {
        v33 = 0xED000073726F7272;
        v34 = 0x4563696D616E7964;
        if (v20 == 0x4563696D616E7964 && v22 == 0xED000073726F7272)
        {
          v23 = 1;
        }

        else
        {
          v23 = sub_1CF9E8048();
        }

        v22, v26, v34, v33, v29, v30, v31, v32;
      }

      else
      {
        v23 = 0;
      }

      (*(v10 + 8))(v12, v9);
    }

    else
    {

      v42 = 0u;
      v43 = 0u;
      sub_1CEFCCC44(&v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v23 = 1;
    }
  }

  else
  {
    v23 = 1;
  }

  return v23 & 1;
}

uint64_t sub_1CF2C9F28(uint64_t a1)
{
  if (fpfs_is_internal_build())
  {
    v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v2 = sub_1CF9E6888();
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = sub_1CF9E6888();
      v5 = [v3 objectForKey_];

      if (v5)
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        sub_1CEFCCC44(v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v6 = sub_1CF9E6888();
        v7 = [v3 integerForKey_];

        return v7;
      }

      memset(v9, 0, sizeof(v9));
      sub_1CEFCCC44(v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }
  }

  return 7;
}

void sub_1CF2CA088(_TtC18FileProviderDaemon8FSTester *result, const char *a2, _TtC18FileProviderDaemon8FSTester *a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (result)
  {
    result, a2, a3, a4, a5, a6, a7, a8;

    a3, v9, v10, v11, v12, v13, v14, v15;
  }
}

unint64_t sub_1CF2CA148()
{
  result = qword_1EDEAED20;
  if (!qword_1EDEAED20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAED20);
  }

  return result;
}

unint64_t sub_1CF2CA194()
{
  result = qword_1EC4BFBA0;
  if (!qword_1EC4BFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFBA0);
  }

  return result;
}

uint64_t sub_1CF2CA23C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for ThrottlingKey(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = result;
    v6 = &type metadata for TargetedSPSError;
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF2CA2B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = v3 + 2;
  v6 = 27;
  if (v5 > 0x1B)
  {
    v6 = v5;
  }

  v7 = 253 - (2u >> (8 * v6));
  if (v6 > 3)
  {
    v7 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_29;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v12 = ((~(-1 << v9) + a2 - v7) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 < 2)
    {
LABEL_29:
      v14 = *(a1 + v6);
      if (v7 <= (v14 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v14);
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_29;
  }

LABEL_18:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v7 + (v8 | v13) + 1;
}

void sub_1CF2CA410(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 2;
  if (v6 <= 0x1B)
  {
    v6 = 27;
  }

  v7 = 253 - (2u >> (8 * v6));
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_39:
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_43:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v9)
  {
    a1[v8] = v15;
  }
}

uint64_t sub_1CF2CA604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF2CA64C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF2CA69C(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for ReconciliationID(319, &AssociatedTypeWitness);
  if (v2 <= 0x3F)
  {
    v7 = 0;
    AssociatedTypeWitness = result;
    v4 = &type metadata for TargetedSPSError;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF2CA7D0(unsigned __int16 *a1, int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && (v9 = (v6 & 0xFFFFFFFFFFFFFFF8) + 35, *(a1 + v9)))
  {
    if ((v9 & 0xFFFFFFFB) == 3)
    {
      v10 = (*(a1 + v9) << 24) - 0x1000000;
    }

    else
    {
      v10 = 0;
    }

    if ((v9 & 0xFFFFFFFB) == 3)
    {
      v11 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v11 = *a1;
    }

    return (v11 | v10) ^ 0x80000000;
  }

  else
  {
    v7 = *(((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }
}

void sub_1CF2CA8F4(_BYTE *a1, unsigned int a2, int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 35;
  if ((a2 & 0x80000000) != 0)
  {
    bzero(a1, (v8 & 0xFFFFFFFFFFFFFFF8) + 35);
    if (v9 == 3)
    {
      *a1 = a2;
      a1[2] = BYTE2(a2);
      if ((a3 & 0x80000000) == 0)
      {
        return;
      }
    }

    else
    {
      *a1 = a2 & 0x7FFFFFFF;
      if ((a3 & 0x80000000) == 0)
      {
        return;
      }
    }

    v10 = (HIBYTE(a2) & 0x7F) + 1;
    if (v9 != 3)
    {
      LOBYTE(v10) = 1;
    }

    a1[v9] = v10;
  }

  else
  {
    if (a3 < 0)
    {
      a1[v9] = 0;
    }

    if (a2)
    {
      *((&a1[v8 + 8] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 - 1;
    }
  }
}

unint64_t sub_1CF2CAAA8()
{
  result = qword_1EC4BEF38;
  if (!qword_1EC4BEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEF38);
  }

  return result;
}

unint64_t sub_1CF2CAAFC()
{
  result = qword_1EC4BEF40;
  if (!qword_1EC4BEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEF40);
  }

  return result;
}

unint64_t sub_1CF2CAB90()
{
  result = qword_1EC4BEFD8;
  if (!qword_1EC4BEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFD8);
  }

  return result;
}

unint64_t sub_1CF2CABE8()
{
  result = qword_1EC4BEFE0;
  if (!qword_1EC4BEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFE0);
  }

  return result;
}

unint64_t sub_1CF2CAC40()
{
  result = qword_1EC4BEFE8;
  if (!qword_1EC4BEFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFE8);
  }

  return result;
}

unint64_t sub_1CF2CAC98()
{
  result = qword_1EC4BEFF0;
  if (!qword_1EC4BEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFF0);
  }

  return result;
}

unint64_t sub_1CF2CACF0()
{
  result = qword_1EC4BEFF8;
  if (!qword_1EC4BEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEFF8);
  }

  return result;
}

unint64_t sub_1CF2CAD48()
{
  result = qword_1EC4BF000;
  if (!qword_1EC4BF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF000);
  }

  return result;
}

id NSFileProviderItemIdentifier.init(rs:at:)(void *a1, uint64_t a2)
{
  v3 = [a1 stringAtIndex_];
  if (!v3)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v5 = v4;
    v3 = sub_1CF9E6888();
    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  return v3;
}

uint64_t static NSFileProviderItemIdentifier.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v5;
  if (v2 == v6 && v4 == v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1CF9E8048();
  }

  v4, v5, v6, v7, v8, v9, v10, v11;
  v12, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

uint64_t sub_1CF2CAEDC(void *a1, uint64_t *a2)
{
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_1CF9E8048();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_1CF2CAF64(uint64_t *a1, void *a2)
{
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v4, v6, v7, v8, v9, v10, v11, v12;
    v13, v31, v32, v33, v34, v35, v36, v37;
    v30 = 1;
  }

  else
  {
    v15 = sub_1CF9E8048();
    v4, v16, v17, v18, v19, v20, v21, v22;
    v13, v23, v24, v25, v26, v27, v28, v29;
    v30 = v15 ^ 1;
  }

  return v30 & 1;
}

uint64_t sub_1CF2CB000(void *a1, uint64_t *a2)
{
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v4, v6, v7, v8, v9, v10, v11, v12;
    v13, v31, v32, v33, v34, v35, v36, v37;
    v30 = 1;
  }

  else
  {
    v15 = sub_1CF9E8048();
    v4, v16, v17, v18, v19, v20, v21, v22;
    v13, v23, v24, v25, v26, v27, v28, v29;
    v30 = v15 ^ 1;
  }

  return v30 & 1;
}

uint64_t sub_1CF2CB09C(uint64_t *a1, void *a2)
{
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_1CF9E8048();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

__C::NSFileProviderItemIdentifier_optional __swiftcall NSFileProviderItemIdentifier.init(parsing:)(Swift::String parsing)
{
  object = parsing._object;
  v2 = sub_1CF9E6888();
  object, v3, v4, v5, v6, v7, v8, v9;
  v11 = v2;
  result.value._rawValue = v11;
  result.is_nil = v10;
  return result;
}

id sub_1CF2CB1E4(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_1CF2CB2A4@<X0>(void *a1@<X2>, void **a2@<X3>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

void sub_1CF2CB30C(_TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_1CF9E6888();
  a2, v6, v7, v8, v9, v10, v11, v12;
  *a3 = v5;
}

char *sub_1CF2CB34C@<X0>(sqlite3_value *a1@<X0>, char **a2@<X8>)
{
  result = sub_1CF2CB644(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1CF2CB460(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 64))(v13, v12, v9) & 1) != 0 && (a2)
  {
    v14 = MEMORY[0x1E6967258];
  }

  else
  {
    if (((*(a4 + 72))(a3, a4) & 1) == 0 || (a2 & 1) == 0)
    {
      (*(v8 + 16))(v11, a1, a3);
      type metadata accessor for NSFileProviderItemIdentifier(0);
      if (swift_dynamicCast())
      {
        return v36;
      }

      v36 = 0x2F73662F70665F5FLL;
      v37 = 0xE800000000000000;
      v17 = (*(a4 + 80))(a3, a4);
      v19 = v18;
      MEMORY[0x1D3868CC0](v17);
      v19, v20, v21, v22, v23, v24, v25, v26;
      v27 = v37;
      v28 = sub_1CF9E6888();
      v27, v29, v30, v31, v32, v33, v34, v35;
      return v28;
    }

    v14 = MEMORY[0x1E6967280];
  }

  v15 = *v14;

  return v15;
}

char *sub_1CF2CB644(sqlite3_value *a1)
{
  v2 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sqlite3_value_blob(a1);
  result = sqlite3_value_bytes(a1);
  if (v5)
  {
    v7 = sub_1CF51FAD8(v5, result);
    v9 = v8;
    sub_1CF9E6918();
    v10 = sub_1CF9E68D8();
    if (v11)
    {
      v18 = (v11 >> 56) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v18 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = v11;
        v4 = sub_1CF9E6888();
        sub_1CEFE4714(v7, v9);
        v19, v20, v21, v22, v23, v24, v25, v26;
        return v4;
      }

      v11, v11, v12, v13, v14, v15, v16, v17;
    }

    sub_1CF24CD3C();
    swift_allocError();
    *v27 = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 9;
    swift_willThrow();
    sub_1CEFE4714(v7, v9);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF2CB7D4(void *a1)
{
  a1[2] = sub_1CF2CB884(&qword_1EDEAB530, &protocol conformance descriptor for NSFileProviderItemIdentifier);
  a1[3] = sub_1CF2CB884(&qword_1EDEAB538, &protocol conformance descriptor for NSFileProviderItemIdentifier);
  a1[4] = sub_1CF2CB884(&qword_1EDEAB558, &protocol conformance descriptor for NSFileProviderItemIdentifier);
  result = sub_1CF2CB884(&qword_1EDEAB550, &unk_1CF9F76A8);
  a1[5] = result;
  return result;
}

uint64_t sub_1CF2CB884(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSFileProviderItemIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1CF2CB8C8(void *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v52 = a5;
  v53 = a1;
  v54 = a4;
  v55 = a3;
  v7 = sub_1CF9E53C8();
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v43 - v22);
  if (a2)
  {
    *v23 = a2;
    swift_storeEnumTagMultiPayload();
    v24 = a2;
LABEL_3:
    v55(v23);
    return sub_1CEFCCC44(v23, &qword_1EC4BF008, &unk_1CFA01CB0);
  }

  v43 = v14;
  v44 = v13;
  v25 = v53;
  v46 = v7;
  v47 = v12;
  v45 = v9;
  v48 = v21;
  if (!v53)
  {
    v36 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v37 = sub_1CF9E6108();
    v38 = sub_1CF9E7288();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1CEFC7000, v37, v38, "⚔️  no addition was created", v39, 2u);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    (*(v43 + 8))(v16, v44);
    v56 = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    v41 = v45;
    v40 = v46;
    sub_1CF9E57D8();
    v42 = sub_1CF9E53A8();
    (*(v49 + 8))(v41, v40);
    *v23 = v42;
    swift_storeEnumTagMultiPayload();
    goto LABEL_3;
  }

  v26 = objc_opt_self();
  v27 = v25;
  v28 = sub_1CF9E5928();
  v29 = [v27 nameSpace];
  v30 = [v27 name];
  [v26 __itemAtURL_didGainVersionWithClientID_name_purposeID_];

  v31 = v51;
  (*(v51 + 16))(v19, v50, v10);
  result = [v27 url];
  if (result)
  {
    v33 = result;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF010, &unk_1CFA01890) + 48);
    v35 = v47;
    sub_1CF9E59D8();

    (*(v31 + 32))(v19 + v34, v35, v10);
    swift_storeEnumTagMultiPayload();
    v55(v19);

    v23 = v19;
    return sub_1CEFCCC44(v23, &qword_1EC4BF008, &unk_1CFA01CB0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF2CBDAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CF2CC430(a1, a3, a4);
  if (!v5)
  {
    v15 = v7;
    v43 = MEMORY[0x1E69E7CC0];
    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
    {
      v17 = 0;
      v40 = v15 & 0xC000000000000001;
      v41 = v5;
      v38 = a2;
      v39 = v15 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v40)
        {
          v18 = MEMORY[0x1D3869C30](v17, v15);
        }

        else
        {
          if (v17 >= *(v39 + 16))
          {
            goto LABEL_19;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v21 = [v18 name];
        if (v21)
        {
          v22 = v15;
          v23 = i;
          v24 = v21;
          v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v27 = v26;

          a2 = &v38;
          v42[0] = v25;
          v42[1] = v27;
          MEMORY[0x1EEE9AC00](v28);
          v37[2] = v42;
          v5 = v41;
          LOBYTE(v24) = sub_1CF7F7438(sub_1CF25107C, v37, v38);
          v41 = v5;
          v27, v29, v30, v31, v32, v33, v34, v35;
          if (v24)
          {
            sub_1CF9E7A18();
            sub_1CF9E7A58();
            sub_1CF9E7A68();
            sub_1CF9E7A28();
          }

          else
          {
          }

          i = v23;
          v15 = v22;
        }

        else
        {
        }

        ++v17;
        if (v20 == i)
        {
          v4 = v43;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v4 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v15, v8, v9, v10, v11, v12, v13, v14;
  }

  return v4;
}

uint64_t sub_1CF2CBFC0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a1)
  {
    v6 = a1;
    v7 = *(a1 + 16);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = sub_1CF4E2964(MEMORY[0x1E69E7CC0]);
    v7 = *(v6 + 16);
    if (v7)
    {
LABEL_3:
      v77 = a3;
      v88 = MEMORY[0x1E69E7CC0];

      sub_1CF680D0C(0, v7, 0);
      v8 = v88;
      v9 = v6 + 64;
      v10 = sub_1CF9E77C8();
      v11 = 0;
      v12 = *(v6 + 36);
      v80 = v7;
      v81 = v12;
      do
      {
        if (v10 < 0 || v10 >= 1 << *(v6 + 32))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        a3 = v10 >> 6;
        if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_40;
        }

        if (v12 != *(v6 + 36))
        {
          goto LABEL_41;
        }

        v82 = v11;
        sub_1CF0272BC(*(v6 + 48) + 40 * v10, v86);
        v14 = *(*(v6 + 56) + 8 * v10);
        v83[0] = v86[0];
        v83[1] = v86[1];
        v84 = v87;
        v85 = v14;
        v15 = v14;
        v16 = sub_1CF9E7868();
        v18 = v17;
        v19 = v14;
        sub_1CEFCCC44(v83, &qword_1EC4BF018, &unk_1CFA018A0);
        v88 = v8;
        v28 = *v8->tree;
        v27 = *v8->tester;
        v29 = v8;
        if (v28 >= v27 >> 1)
        {
          sub_1CF680D0C((v27 > 1), v28 + 1, 1);
          v29 = v88;
        }

        *v29->tree = v28 + 1;
        v30 = &v29->super.isa + 3 * v28;
        v30[4] = v16;
        v30[5] = v18;
        v30[6] = v14;
        v13 = 1 << *(v6 + 32);
        if (v10 >= v13)
        {
          goto LABEL_42;
        }

        v9 = v6 + 64;
        v31 = *(v6 + 64 + 8 * a3);
        if ((v31 & (1 << v10)) == 0)
        {
          goto LABEL_43;
        }

        v8 = v29;
        v12 = v81;
        if (v81 != *(v6 + 36))
        {
          goto LABEL_44;
        }

        v32 = v31 & (-2 << (v10 & 0x3F));
        if (v32)
        {
          v13 = __clz(__rbit64(v32)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v33 = a3 << 6;
          v34 = a3 + 1;
          v35 = (v6 + 72 + 8 * a3);
          while (v34 < (v13 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              sub_1CF0663D8(v10, v81, 0, v22, v23, v24, v25, v26);
              v13 = __clz(__rbit64(v36)) + v33;
              goto LABEL_5;
            }
          }

          sub_1CF0663D8(v10, v81, 0, v22, v23, v24, v25, v26);
        }

LABEL_5:
        v11 = v82 + 1;
        v10 = v13;
      }

      while (v82 + 1 != v80);
      v6, v20, v21, v22, v23, v24, v25, v26;
      a3 = v77;
      if (!*v8->tree)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  v6, v39, v40, v41, v42, v43, v44, v45;
  v8 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E70, &qword_1CFA07CF0);
    v38 = sub_1CF9E7BE8();
    goto LABEL_26;
  }

LABEL_25:
  v38 = MEMORY[0x1E69E7CC8];
LABEL_26:
  *&v86[0] = v38;

  sub_1CF2CC6AC(v46, 1, v86, v47, v48, v49, v50, v51);
  v8, v52, v53, v54, v55, v56, v57, v58;
  v82 = *&v86[0];
  if (!(a3 >> 62))
  {
    v59 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_28;
    }

LABEL_46:
    a5(v82, a2);
  }

LABEL_45:
  v59 = sub_1CF9E7818();
  if (!v59)
  {
    goto LABEL_46;
  }

LABEL_28:
  v60 = 0;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x1D3869C30](v60, a3);
    }

    else
    {
      if (v60 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v61 = *(a3 + 8 * v60 + 32);
    }

    v62 = v61;
    v63 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v64 = [v61 nameSpace];
    if (!v64)
    {
      break;
    }

    v65 = v64;
    v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v68 = v67;

    sub_1CF2CCC54(v62, v66, v68);
    v68, v69, v70, v71, v72, v73, v74, v75;
    ++v60;
    if (v63 == v59)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1CF2CC430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 16);
  v7 = sub_1CF9E5928();
  v12[0] = 0;
  v8 = [v6 permanentStorageForItemAtURL:v7 allocateIfNone:0 error:v12];

  if (v8)
  {
    v9 = v12[0];
    a3 = sub_1CF2CCA40(v8, a2);
  }

  else
  {
    v10 = v12[0];
    sub_1CF9E57F8();

    swift_willThrow();
  }

  return a3;
}

id sub_1CF2CC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(v4 + 16);
  v13[0] = 0;
  v8 = [v7 permanentStorageForItemWithDocID:a1 deviceID:a2 allocateIfNone:0 error:v13];
  if (v8)
  {
    v9 = v8;
    v10 = v13[0];
    v11 = sub_1CF2CCA40(v9, a3);
  }

  else
  {
    v11 = v13[0];
    sub_1CF9E57F8();

    swift_willThrow();
  }

  return v11;
}

uint64_t GSRemoteVersionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1CF2CC6AC(_TtC18FileProviderDaemon8FSTester *a1, const char *a2, void *a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v54 = *a1->tree;
  if (!v54)
  {
    goto LABEL_21;
  }

  LOBYTE(anon_8) = a2;
  isa = a1[1].super.isa;
  v11 = *a1[1]._anon_8;
  v13 = *a1[1].tree;
  v14 = *a3;

  v15 = v13;
  v16 = sub_1CEFE4328(isa, v11);
  v17 = v14[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v14[3] < v20)
  {
    sub_1CF7C59C0(v20, anon_8 & 1);
    v16 = sub_1CEFE4328(isa, v11);
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v16 = sub_1CF9E8108();
    __break(1u);
  }

  if (anon_8)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v38 = v16;
  sub_1CF7D02E0();
  v16 = v38;
  if (v21)
  {
LABEL_8:
    v22 = swift_allocError();
    swift_willThrow();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      a1, v24, v25, v26, v27, v28, v29, v30;

      v11, v31, v32, v33, v34, v35, v36, v37;
      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v39 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  v40 = (v39[6] + 16 * v16);
  *v40 = isa;
  v40[1] = v11;
  *(v39[7] + 8 * v16) = v13;
  v41 = v39[2];
  v19 = __OFADD__(v41, 1);
  v42 = v41 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3DF20);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](39, 0xE100000000000000);
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  v39[2] = v42;
  if (v54 != 1)
  {
    anon_8 = a1[2]._anon_8;
    v43 = 1;
    while (v43 < *a1->tree)
    {
      isa = *(anon_8 - 2);
      v11 = *(anon_8 - 1);
      v13 = *anon_8;
      v44 = *a3;

      v45 = v13;
      v46 = sub_1CEFE4328(isa, v11);
      v47 = v44[2];
      v48 = (a2 & 1) == 0;
      v19 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v44[3] < v49)
      {
        sub_1CF7C59C0(v49, 1);
        v46 = sub_1CEFE4328(isa, v11);
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v50 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v51 = (v50[6] + 16 * v46);
      *v51 = isa;
      v51[1] = v11;
      *(v50[7] + 8 * v46) = v13;
      v52 = v50[2];
      v19 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v43;
      v50[2] = v53;
      anon_8 += 3;
      if (v54 == v43)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t sub_1CF2CCA40(void *a1, uint64_t a2)
{
  v13 = MEMORY[0x1E69E7CC0];
  v3 = sub_1CF9E6888();
  v4 = [a1 enumeratorForAdditionsInNameSpace:v3 withOptions:0 withoutOptions:0 ordering:0];

  if (v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ([v4 nextObject])
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = 0u;
        v9 = 0u;
      }

      v10 = v8;
      v11 = v9;
      if (!*(&v9 + 1))
      {
        break;
      }

      sub_1CEFE9EB8(&v10, v12);
      sub_1CEFD1104(v12, &v10);
      sub_1CF2CCC08();
      if (swift_dynamicCast())
      {
        v6 = v8;
        MEMORY[0x1D3868FA0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();

        __swift_destroy_boxed_opaque_existential_1(v12);
        v5 = v13;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1CEFCCC44(&v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  return v5;
}

unint64_t sub_1CF2CCC08()
{
  result = qword_1EC4C4FE0;
  if (!qword_1EC4C4FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4C4FE0);
  }

  return result;
}

void sub_1CF2CCC54(void *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v14;
  if (v13 == a2 && v14 == a3)
  {
    v14, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    v23 = sub_1CF9E8048();
    v21, v24, v25, v26, v27, v28, v29, v30;
    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v31 = [a1 storage];
  if (!v31)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v32 = [v31 documentURL];
  swift_unknownObjectRelease();
  if (v32)
  {
    sub_1CF9E59D8();

    v32 = sub_1CF9E5928();
    (*(v7 + 8))(v12, v6);
  }

  v33 = objc_opt_self();
  v34 = [a1 nameSpace];
  v35 = [a1 name];
  [v33 __itemAtURL_didResolveConflictVersionWithClientID_name_purposeID_];

LABEL_12:
  v36 = [a1 storage];
  if (!v36)
  {
    __break(1u);
    goto LABEL_17;
  }

  v37 = [v36 documentURL];
  swift_unknownObjectRelease();
  if (v37)
  {
    sub_1CF9E59D8();

    v37 = sub_1CF9E5928();
    (*(v7 + 8))(v9, v6);
  }

  v38 = objc_opt_self();
  v39 = [a1 nameSpace];
  v40 = [a1 name];
  [v38 __itemAtURL_didLoseVersionWithClientID_name_purposeID_];
}

id sub_1CF2CCF64()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  qword_1EC4EBCA8 = result;
  return result;
}

id sub_1CF2CCF98(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v31 = a3;
  v28 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = *a1;
  v29 = sub_1CF75C4E8(v10, a4);
  v11 = *(a1 + 8);
  v12 = sub_1CF75C4E8(v11, a4);
  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  v15 = *(v7 + 48);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48));
  sub_1CEFF4408(v16, &v9[v15]);
  *v9 = v12;
  *(v9 + 1) = v14;
  *(v9 + 2) = v13;
  v17 = qword_1EDEA47A0;
  v18 = v11;
  v30 = v12;

  if (v17 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDEBB6B8;
  v19 = v29;
  v20 = v31;
  v21 = sub_1CEFE5A60(v29, v28, v31, v9, &v32, 0);
  sub_1CEFCCC44(v9, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v21 setFormerIdentifier_];
  [v21 setParentFormerIdentifier_];

  v22 = *v16;
  [v21 isExcludedFromSync];
  v23 = *(v16 + 5);
  if (v20)
  {
    v24 = [v20 supportsSyncingTrash];
  }

  else
  {
    v24 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v25 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v22 == 1)
    {
      if ((~v23 & 0x140) != 0)
      {
LABEL_15:
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v23 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v25 |= 1uLL;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    if ((~v23 & 0x140) == 0)
    {
LABEL_12:
      v25 = 44;
      goto LABEL_14;
    }
  }

  else if ((v23 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v25 = 44;
  if ((v23 & 0x80) == 0)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v25 |= 2uLL;
LABEL_17:
  if (v24)
  {
LABEL_18:
    v25 |= 0x10uLL;
  }

LABEL_19:
  [v21 setCapabilities_];

  return v21;
}

id sub_1CF2CD248(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a3;
  v4 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = sub_1CF75C4E8(*a1, v4);
  v12 = sub_1CF75C4E8(*(a1 + 8), v4);
  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  v15 = *(v8 + 48);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48));
  sub_1CEFF4408(v16, &v10[v15]);
  *v10 = v12;
  *(v10 + 1) = v14;
  *(v10 + 2) = v13;
  v17 = qword_1EDEA47A0;
  v18 = v12;

  if (v17 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDEBB6B8;
  v19 = v26;
  v20 = sub_1CEFE5A60(v11, a2, v26, v10, &v27, 0);
  sub_1CEFCCC44(v10, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v20 setFormerIdentifier_];
  [v20 setParentFormerIdentifier_];
  v21 = *v16;
  [v20 isExcludedFromSync];
  v22 = *(v16 + 5);
  if (v19)
  {
    v23 = [v19 supportsSyncingTrash];
  }

  else
  {
    v23 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v24 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v21 == 1)
    {
      if ((~v22 & 0x140) != 0)
      {
LABEL_15:
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v22 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v24 |= 1uLL;
    goto LABEL_15;
  }

  if (v21 == 1)
  {
    if ((~v22 & 0x140) == 0)
    {
LABEL_12:
      v24 = 44;
      goto LABEL_14;
    }
  }

  else if ((v22 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v24 = 44;
  if ((v22 & 0x80) == 0)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v24 |= 2uLL;
LABEL_17:
  if (v23)
  {
LABEL_18:
    v24 |= 0x10uLL;
  }

LABEL_19:
  [v20 setCapabilities_];

  return v20;
}

id sub_1CF2CD4D0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v33 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = sub_1CF75C40C(*a1, *(a1 + 8), v4);
  v13 = v11 == 2 && v10 == 0;
  v35 = v12;
  if (v13)
  {
    v34 = *MEMORY[0x1E6967258];
  }

  else
  {
    v34 = 0;
  }

  v14 = a1[2];
  v15 = *(a1 + 24);
  v16 = sub_1CF75C40C(v14, *(a1 + 24), v4 & 1);
  v17 = 0;
  if (v15 == 2 && !v14)
  {
    v17 = *MEMORY[0x1E6967258];
  }

  v19 = a1[4];
  v18 = a1[5];
  v20 = *(v7 + 40);
  v21 = a1 + *(type metadata accessor for VFSItem(0) + 28);
  sub_1CEFF4408(v21, &v9[v20]);
  *v9 = v16;
  *(v9 + 1) = v19;
  *(v9 + 2) = v18;
  v22 = qword_1EDEA47A0;
  v23 = v16;
  v24 = v17;

  if (v22 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDEBB6B8;
  v25 = v35;
  v26 = sub_1CEFE5A60(v35, v33, a3, v9, &v36, 0);
  sub_1CEFCCC44(v9, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v27 = v34;
  [v26 setFormerIdentifier_];
  [v26 setParentFormerIdentifier_];

  v28 = *v21;
  [v26 isExcludedFromSync];
  v29 = *(v21 + 5);
  if (a3)
  {
    v30 = [a3 supportsSyncingTrash];
  }

  else
  {
    v30 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v31 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v28 == 1)
    {
      if ((~v29 & 0x140) != 0)
      {
LABEL_24:
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if ((v29 & 0x100) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    v31 |= 1uLL;
    goto LABEL_24;
  }

  if (v28 == 1)
  {
    if ((~v29 & 0x140) == 0)
    {
LABEL_21:
      v31 = 44;
      goto LABEL_23;
    }
  }

  else if ((v29 & 0x100) != 0)
  {
    goto LABEL_21;
  }

  v31 = 44;
  if ((v29 & 0x80) == 0)
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_25:
  v31 |= 2uLL;
LABEL_26:
  if (v30)
  {
LABEL_27:
    v31 |= 0x10uLL;
  }

LABEL_28:
  [v26 setCapabilities_];

  return v26;
}

id sub_1CF2CD7C8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v78 = a2;
  v79 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v77 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = sub_1CF75C40C(*a1, *(a1 + 8), v4);
  v12 = v11;
  if (v10 == 2 && v9 == 0)
  {
    v34 = MEMORY[0x1E6967258];
LABEL_12:
    v26 = *v34;
    goto LABEL_13;
  }

  if (v10 == 2 && v9 == 1)
  {
    v34 = MEMORY[0x1E6967280];
    goto LABEL_12;
  }

  v83 = 0x2F73662F70665F5FLL;
  v84 = 0xE800000000000000;
  v81 = v9;
  v82 = v10;
  v15 = VFSItemID.description.getter(v11);
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  v25 = v84;
  v26 = sub_1CF9E6888();
  v25, v27, v28, v29, v30, v31, v32, v33;
LABEL_13:
  v35 = a1[2];
  v36 = *(a1 + 24);
  v37 = sub_1CF75C40C(v35, *(a1 + 24), v4 & 1);
  v38 = v37;
  v80 = v26;
  if (v36 == 2 && !v35)
  {
    v39 = v12;
    v40 = MEMORY[0x1E6967258];
LABEL_19:
    v41 = *v40;
    goto LABEL_21;
  }

  if (v36 == 2 && v35 == 1)
  {
    v39 = v12;
    v40 = MEMORY[0x1E6967280];
    goto LABEL_19;
  }

  v39 = v12;
  v83 = 0x2F73662F70665F5FLL;
  v84 = 0xE800000000000000;
  v81 = v35;
  v82 = v36;
  v42 = VFSItemID.description.getter(v37);
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = v84;
  v41 = sub_1CF9E6888();
  v52, v53, v54, v55, v56, v57, v58, v59;
LABEL_21:
  v60 = a1[4];
  v61 = a1[5];
  v62 = *(v6 + 40);
  v63 = a1 + *(type metadata accessor for VFSItem(0) + 28);
  sub_1CEFF4408(v63, &v8[v62]);
  *v8 = v38;
  *(v8 + 1) = v60;
  *(v8 + 2) = v61;
  v64 = qword_1EDEA47A0;
  v65 = v38;
  v66 = v41;

  if (v64 != -1)
  {
    swift_once();
  }

  v83 = qword_1EDEBB6B8;
  v67 = v39;
  v68 = v79;
  v69 = sub_1CEFE5A60(v39, v78, v79, v8, &v83, 0);
  sub_1CEFCCC44(v8, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v70 = v80;
  [v69 setFormerIdentifier_];
  [v69 setParentFormerIdentifier_];

  v71 = *v63;
  [v69 isExcludedFromSync];
  v72 = v68;
  v73 = *(v63 + 5);
  if (v72)
  {
    v74 = [v72 supportsSyncingTrash];
  }

  else
  {
    v74 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v75 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v71 == 1)
    {
      if ((~v73 & 0x140) != 0)
      {
LABEL_35:
        if ((v73 & 0x80) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    else if ((v73 & 0x100) == 0)
    {
      goto LABEL_35;
    }

LABEL_34:
    v75 |= 1uLL;
    goto LABEL_35;
  }

  if (v71 == 1)
  {
    if ((~v73 & 0x140) == 0)
    {
LABEL_32:
      v75 = 44;
      goto LABEL_34;
    }
  }

  else if ((v73 & 0x100) != 0)
  {
    goto LABEL_32;
  }

  v75 = 44;
  if ((v73 & 0x80) == 0)
  {
    if ((v74 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_36:
  v75 |= 2uLL;
LABEL_37:
  if (v74)
  {
LABEL_38:
    v75 |= 0x10uLL;
  }

LABEL_39:
  [v69 setCapabilities_];

  return v69;
}

id sub_1CF2CDBA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = sub_1CF75C40C(*a1, *(a1 + 8), v4);
  v13 = sub_1CF75C40C(*(a1 + 16), *(a1 + 24), v4);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(v9 + 48);
  v17 = (a1 + *(type metadata accessor for VFSItem(0) + 28));
  sub_1CEFF4408(v17, &v11[v16]);
  *v11 = v13;
  *(v11 + 1) = v14;
  *(v11 + 2) = v15;
  v18 = qword_1EDEA47A0;
  v19 = v13;

  if (v18 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDEBB6B8;
  v20 = sub_1CEFE5A60(v12, a2, a3, v11, &v27, 0);
  sub_1CEFCCC44(v11, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v20 setFormerIdentifier_];
  [v20 setParentFormerIdentifier_];
  v21 = *v17;
  [v20 isExcludedFromSync];
  v22 = *(v17 + 5);
  if (a3)
  {
    v23 = [a3 supportsSyncingTrash];
  }

  else
  {
    v23 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v24 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v21 == 1)
    {
      if ((~v22 & 0x140) != 0)
      {
LABEL_15:
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v22 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v24 |= 1uLL;
    goto LABEL_15;
  }

  if (v21 == 1)
  {
    if ((~v22 & 0x140) == 0)
    {
LABEL_12:
      v24 = 44;
      goto LABEL_14;
    }
  }

  else if ((v22 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v24 = 44;
  if ((v22 & 0x80) == 0)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v24 |= 2uLL;
LABEL_17:
  if (v23)
  {
LABEL_18:
    v24 |= 0x10uLL;
  }

LABEL_19:
  [v20 setCapabilities_];

  return v20;
}

id sub_1CF2CDE20(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v49 = a3;
  v47 = a2;
  v6 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v12 = v11 - 8;
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v44 - v14;
  v16 = [a1 itemID];
  v17 = [v16 identifier];

  v46 = sub_1CF75C4E8(v17, v4);
  v18 = [a1 itemID];

  v19 = sub_1CF0689E4();
  v20 = sub_1CF75C4E8(v19, v4);

  v21 = v20;
  v22 = [a1 filename];
  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v24;

  v54[0] = v23;
  v54[1] = v25;
  v52 = 58;
  v53 = 0xE100000000000000;
  v50 = 47;
  v51 = 0xE100000000000000;
  sub_1CEFE4E68();
  v26 = sub_1CF9E7668();
  v28 = v27;
  v25, v27, v29, v30, v31, v32, v33, v34;
  sub_1CEFF54BC(&v15[*(v12 + 48)]);
  v45 = v21;
  *v15 = v21;
  *(v15 + 1) = v26;
  *(v15 + 2) = v28;
  if (qword_1EDEA47A0 != -1)
  {
    swift_once();
  }

  v54[0] = qword_1EDEBB6B8;
  v35 = v46;
  v36 = v49;
  v37 = sub_1CEFE5A60(v46, v47, v49, v15, v54, 0);
  sub_1CEFCCC44(v15, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v37 setFormerIdentifier_];
  [v37 setParentFormerIdentifier_];
  sub_1CEFF54BC(v10);
  v38 = *v10;
  sub_1CF06DA00(v10);
  [v37 isExcludedFromSync];
  v39 = v48;
  sub_1CEFF54BC(v48);
  v40 = *(v39 + 5);
  sub_1CF06DA00(v39);
  if (v36)
  {
    v41 = [v36 supportsSyncingTrash];
  }

  else
  {
    v41 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v42 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v38 == 1)
    {
      if ((~v40 & 0x140) != 0)
      {
LABEL_15:
        if ((v40 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v40 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v42 |= 1uLL;
    goto LABEL_15;
  }

  if (v38 == 1)
  {
    if ((~v40 & 0x140) == 0)
    {
LABEL_12:
      v42 = 44;
      goto LABEL_14;
    }
  }

  else if ((v40 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v42 = 44;
  if ((v40 & 0x80) == 0)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v42 |= 2uLL;
LABEL_17:
  if (v41)
  {
LABEL_18:
    v42 |= 0x10uLL;
  }

LABEL_19:
  [v37 setCapabilities_];

  return v37;
}

id sub_1CF2CE21C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = sub_1CF75C40C(*a1, *(a1 + 8), v4);
  v13 = sub_1CF75C40C(*(a1 + 16), *(a1 + 24), v4);
  v14 = *(a1 + 128);
  v15 = *(a1 + 136);
  v16 = *(v9 + 48);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48));
  sub_1CEFF4408(v17, &v11[v16]);
  *v11 = v13;
  *(v11 + 1) = v14;
  *(v11 + 2) = v15;
  v18 = qword_1EDEA47A0;
  v19 = v13;

  if (v18 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDEBB6B8;
  v20 = sub_1CEFE5A60(v12, a2, a3, v11, &v27, 0);
  sub_1CEFCCC44(v11, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  [v20 setFormerIdentifier_];
  [v20 setParentFormerIdentifier_];
  v21 = *v17;
  [v20 isExcludedFromSync];
  v22 = *(v17 + 5);
  if (a3)
  {
    v23 = [a3 supportsSyncingTrash];
  }

  else
  {
    v23 = 1;
  }

  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    v24 = *MEMORY[0x1E6967238] | 0x2CLL;
    if (v21 == 1)
    {
      if ((~v22 & 0x140) != 0)
      {
LABEL_15:
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v22 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v24 |= 1uLL;
    goto LABEL_15;
  }

  if (v21 == 1)
  {
    if ((~v22 & 0x140) == 0)
    {
LABEL_12:
      v24 = 44;
      goto LABEL_14;
    }
  }

  else if ((v22 & 0x100) != 0)
  {
    goto LABEL_12;
  }

  v24 = 44;
  if ((v22 & 0x80) == 0)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:
  v24 |= 2uLL;
LABEL_17:
  if (v23)
  {
LABEL_18:
    v24 |= 0x10uLL;
  }

LABEL_19:
  [v20 setCapabilities_];

  return v20;
}

id sub_1CF2CE4A4(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a6;
  v69 = a5;
  LODWORD(v67) = a4;
  v59 = a3;
  v57 = a2;
  v11 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v54 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  v24 = *(a8 + 64);
  v24(a7, a8, v21);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = sub_1CF2CB460(v23, v67, AssociatedTypeWitness, AssociatedConformanceWitness);
  v26 = *(v15 + 8);
  v25 = (v15 + 8);
  v71 = v26;
  v26(v23, AssociatedTypeWitness);
  v62 = a1;
  v63 = a8;
  v64 = a7;
  (v24)(a7, a8);
  v27 = v65;
  v28 = v69(v19);
  if (!v27)
  {
    v54 = v28;
    v71(v19, AssociatedTypeWitness);
    v65 = 0;
    v30 = v63;
    v31 = *(v63 + 72);
    v32 = v64;
    v31(v64, v63);
    v67 = sub_1CF2CB460(v23, v67 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
    v71(v23, AssociatedTypeWitness);
    v33 = v61;
    v31(v32, v30);
    v34 = v65;
    v35 = v69(v33);
    if (v34)
    {
      v71(v33, AssociatedTypeWitness);

      v29 = v54;
      goto LABEL_5;
    }

    v37 = v35;
    v65 = 0;
    v71(v33, AssociatedTypeWitness);
    v38 = v63;
    v39 = *(v63 + 80);
    v40 = v37;
    v41 = v67;
    v42 = v64;
    v39(v70, v64, v38);
    v43 = v70[0];
    v44 = v70[1];
    v45 = v56;
    v69 = *(v38 + 104);
    (v69)(v42, v38);
    v71 = v41;
    *v45 = v41;
    *(v45 + 8) = v43;
    *(v45 + 16) = v44;
    v46 = v42;
    if (qword_1EDEA47A0 != -1)
    {
      swift_once();
    }

    v70[0] = qword_1EDEBB6B8;
    v47 = v59;
    v25 = sub_1CEFE5A60(v66, v57, v59, v45, v70, 0);
    sub_1CEFCCC44(v45, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    [v25 setFormerIdentifier_];
    [v25 setParentFormerIdentifier_];
    v48 = v40;

    sub_1CF06D940(v46, v38, v70);
    v49 = LOBYTE(v70[0]);
    [v25 isExcludedFromSync];
    v50 = v58;
    (v69)(v46, v38);
    v51 = *(v50 + 10);
    sub_1CF06DA00(v50);
    if (v47)
    {
      v52 = [v47 supportsSyncingTrash];
    }

    else
    {
      v52 = 1;
    }

    if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
    {
      v53 = *MEMORY[0x1E6967238] | 0x2CLL;
      if (v49 == 1)
      {
        if ((~v51 & 0x140) != 0)
        {
          goto LABEL_26;
        }
      }

      else if ((v51 & 0x100) == 0)
      {
LABEL_26:
        if ((v51 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_25:
      v53 |= 1uLL;
      goto LABEL_26;
    }

    if (v49 == 1)
    {
      if ((~v51 & 0x140) != 0)
      {
LABEL_18:
        if ((v51 & 0x80) == 0)
        {
          v53 = 44;
          if (v52)
          {
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        v53 = 44;
LABEL_27:
        v53 |= 2uLL;
LABEL_28:
        if (v52)
        {
LABEL_29:
          v53 |= 0x10uLL;
        }

LABEL_30:
        [v25 setCapabilities_];

        return v25;
      }
    }

    else if ((v51 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    v53 = 44;
    goto LABEL_25;
  }

  v71(v19, AssociatedTypeWitness);
  v29 = v66;
LABEL_5:

  return v25;
}

unint64_t sub_1CF2CEABC()
{
  result = qword_1EDEAD660;
  if (!qword_1EDEAD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD660);
  }

  return result;
}

unint64_t sub_1CF2CEB14()
{
  result = qword_1EDEAB560;
  if (!qword_1EDEAB560)
  {
    type metadata accessor for NSFileProviderItemIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB560);
  }

  return result;
}

unint64_t sub_1CF2CEB6C(uint64_t a1)
{
  result = sub_1CF2CEB94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF2CEB94()
{
  result = qword_1EDEAB518;
  if (!qword_1EDEAB518)
  {
    sub_1CEFD57E0(255, &qword_1EDEAB520, 0x1E6967388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB518);
  }

  return result;
}

uint64_t sub_1CF2CEC48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E6388();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = (v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1CF9E7388();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E7318();
  v71 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = v63 - v11;
  v12 = sub_1CF9E6448();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v67 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v63 - v15;
  v17 = sub_1CF9E6498();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 128) = 0;
  *(v2 + 136) = 1;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + qword_1EDEBB6C0) = 0;
  v21 = (v2 + qword_1EDEBB6D0);
  *v21 = 0;
  v21[1] = 0;
  v22 = v2 + qword_1EDEBB730;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v2 + qword_1EDEBB720;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v2 + qword_1EDEBB748;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v2 + qword_1EDEBB710;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v2 + qword_1EDEBB708;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v2 + qword_1EDEBB740;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v2 + qword_1EDEBB6C8;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v2 + qword_1EDEBB770) = 0;
  v29 = (v2 + qword_1EDEBB700);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v2 + qword_1EDEBB6F8);
  *v30 = 0;
  v30[1] = 0;
  v31 = v2 + qword_1EDEBB758;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = MEMORY[0x1E69E7CC0];
  *(v2 + qword_1EDEA4990) = sub_1CF4E2A8C(MEMORY[0x1E69E7CC0]);
  sub_1CF9E6458();
  v33 = *(v18 + 32);
  v33(v2 + qword_1EDEA4980, v20, v17);
  sub_1CF9E6458();
  v33(v2 + qword_1EDEA4988, v20, v17);
  *(v2 + 120) = [objc_allocWithZone(FPFSVolume) init];
  v34 = sub_1CF9E5A18();
  v35 = (v2 + qword_1EDEA4970);
  *v35 = v34;
  v35[1] = v36;
  v65 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&v78 + 1), v37, v38, v39, v40, v41, v42, v43;
  v66 = a1;
  v44 = *(a1 + 24);
  *&v78 = *(a1 + 16);
  *(&v78 + 1) = v44;

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA3E330);
  v63[0] = *(&v78 + 1);
  v63[1] = v78;
  sub_1CF9E63F8();
  *&v78 = v32;
  sub_1CF2F1F24(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, MEMORY[0x1E69E6328]);
  v45 = v64;
  v46 = v8;
  sub_1CF9E77B8();
  v47 = v68;
  v48 = v69;
  (*(v68 + 16))(v67, v16, v69);
  v49 = v71;
  (*(v71 + 16))(v70, v45, v46);
  (*(v73 + 104))(v72, *MEMORY[0x1E69E8098], v74);
  v50 = sub_1CF9E73B8();
  (*(v49 + 8))(v45, v46);
  (*(v47 + 8))(v16, v48);
  *(v2 + qword_1EDEA4968) = v50;
  v51 = [objc_opt_self() defaultStore];
  v52 = [v51 minimumDiskSpaceRequiredToBeGreedy];
  *(v2 + qword_1EDEBB738) = v52;
  [v51 relativeDiskSpaceRequiredToBeGreedy];
  *(v2 + qword_1EDEBB728) = v53;
  v54 = [v51 diskSpaceRequiredToReturnToGreedyState];
  *(v2 + qword_1EDEBB750) = v54;
  [v51 relativeDiskSpaceRequiredToReturnToGreedyState];
  *(v2 + qword_1EDEBB718) = v55;
  v56 = [v51 diskSpaceCheckInterval];
  v58 = v75;
  v57 = v76;
  *v75 = v56;
  v59 = v77;
  (*(v57 + 104))(v58, *MEMORY[0x1E69E7F48], v77);
  (*(v57 + 32))(v2 + qword_1EDEBB6D8, v58, v59);
  v60 = [v51 minTimeBetweenSpeculativeDownloadsPurgeSession];
  *(v2 + qword_1EDEBB768) = 1000000000 * v60;
  v61 = [v51 minTimeToPreventDownloadsAfterReturningToGreedyState];
  *(v2 + qword_1EDEBB760) = 1000000000 * v61;
  *(v2 + qword_1EDEBB6F0) = 0;
  *(v2 + qword_1EDEBB6E8) = 0x7FFFFFFFFFFFFFFFLL;
  *(v2 + qword_1EDEBB6E0) = 0x7FFFFFFFFFFFFFFFLL;
  v79 = type metadata accessor for DocumentWharf(0);
  v80 = &off_1F4C2E638;
  *&v78 = v66;

  *(v2 + 72) = 0;
  sub_1CF054EA0(&v78, v2 + 16);
  *(v2 + 80) = 1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 1;
  *(v2 + 56) = 0xD00000000000002BLL;
  *(v2 + 64) = 0x80000001CFA3E360;
  return v2;
}

uint64_t sub_1CF2CF514(uint64_t result)
{
  v1 = qword_1EDEBB730;
  if (*(result + qword_1EDEBB730 + 8))
  {
    v1 = qword_1EDEBB738;
  }

  v2 = *(result + v1);
  v3 = qword_1EDEBB748;
  if (*(result + qword_1EDEBB748 + 8))
  {
    v3 = qword_1EDEBB750;
  }

  v4 = *(result + v3);
  v5 = (result + qword_1EDEBB740);
  if (*(result + qword_1EDEBB740 + 8) == 1)
  {
    if (*(result + 152))
    {
LABEL_22:
      *(result + qword_1EDEBB6E8) = v2;
      *(result + qword_1EDEBB6E0) = v4;
      return result;
    }

    v5 = (result + 144);
  }

  v6 = qword_1EDEBB720;
  if (*(result + qword_1EDEBB720 + 8))
  {
    v6 = qword_1EDEBB728;
  }

  v7 = *v5;
  v8 = *(result + v6) * v7;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2 <= v8)
  {
    v2 = v8;
  }

  v9 = qword_1EDEBB710;
  if (*(result + qword_1EDEBB710 + 8))
  {
    v9 = qword_1EDEBB718;
  }

  v10 = *(result + v9) * v7;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v10 < 9.22337204e18)
  {
    if (v4 <= v10)
    {
      v4 = v10;
    }

    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

ssize_t sub_1CF2CF6C0()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + qword_1EDEA4970);
  v7 = *(v1 + qword_1EDEA4970 + 8);

  v8 = sub_1CF9E6888();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = [v8 fileSystemRepresentation];
  v17 = v8;
  result = getxattr(v16, "com.apple.fileprovider.testing.failSpeculativeDownload", 0, 0, 0, 1);
  if (result >= 1)
  {
    *(v1 + qword_1EDEBB770) = 1;
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E7298();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136315138;
      v24 = *v6;
      v25 = v6[1];

      v26 = sub_1CEFD0DF0(v24, v25, &v35);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v22 + 4) = v26;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "💾 marking SpeculativeDownloadsDiskManagement as ailDownloadsWithInsufficiantStorage: for root %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D386CDC0](v23, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1CF2CF910(void (*a1)(void *), uint64_t (*a2)(__n128), uint64_t a3, uint64_t (*a4)(__n128))
{
  v8 = objc_sync_enter(v4);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v11 = v4;
    fp_preconditionFailure(_:file:line:)(a2, v10, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a1(v4);
  result = objc_sync_exit(v4);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v11 = v4;
    fp_preconditionFailure(_:file:line:)(a4, v10, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void sub_1CF2CFA4C(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF7F33F0();
  v6 = *(a1 + 120);
  v7 = *(a1 + qword_1EDEA4970 + 8);

  v8 = sub_1CF9E6888();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v31[0] = 0;
  v16 = [v6 setupForPath:v8 error:v31];

  if (v16)
  {
    v17 = v31[0];
    v18 = [v6 totalSize];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 longLongValue];
    }

    else
    {
      v20 = 0;
    }

    *(a1 + 144) = v20;
    *(a1 + 152) = v19 == 0;
    if (os_variant_has_internal_content())
    {
      sub_1CF2CF6C0();
    }

    sub_1CF2CF910(sub_1CF2CF514, sub_1CF1C546C, sub_1CF1C5468, sub_1CF1C5468);
    sub_1CF385874();
    sub_1CF38525C();
  }

  else
  {
    v21 = v31[0];
    v22 = sub_1CF9E57F8();

    swift_willThrow();
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = v22;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72B8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_getErrorValue();
      v29 = Error.prettyDescription.getter(v30[1], v30[2]);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "💾 failed to register root path for speculative downloader: %@", v27, 0xCu);
      sub_1CEFCCC44(v28, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

BOOL sub_1CF2CFDB8()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    goto LABEL_18;
  }

  if (v0[qword_1EDEBB770])
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v1 = objc_sync_enter(v0);
  if (v1)
  {
LABEL_18:
    MEMORY[0x1EEE9AC00](v1);
    v11 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v10, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF385874();
  v3 = v2;
  v4 = objc_sync_exit(v0);
  if (v4)
  {
    goto LABEL_19;
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_1CF386068(1);
  if (v6)
  {
    goto LABEL_8;
  }

  v7 = v5;
  if (sub_1CF38773C())
  {
    goto LABEL_8;
  }

  v1 = sub_1CF3850A0();
  if (v1 < v7)
  {
    v8 = 1;
    goto LABEL_9;
  }

  if (__OFSUB__(v7, v1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = *&v0[qword_1EDEBB6E8] < v7 - v1;
LABEL_9:
  v4 = objc_sync_exit(v0);
  if (v4)
  {
LABEL_19:
    MEMORY[0x1EEE9AC00](v4);
    v11 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v10, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v8;
}