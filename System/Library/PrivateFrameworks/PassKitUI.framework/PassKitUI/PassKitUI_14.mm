void sub_1BD1B0114(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for SavingsBankVerificationView(0);
  MEMORY[0x1EEE9AC00](v8);
  v349 = &v346 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = sub_1BE04D214();
  v354 = *(v353 - 8);
  MEMORY[0x1EEE9AC00](v353);
  v348 = &v346 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v346 = &v346 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v346 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v346 - v17;
  v351 = sub_1BE04A474();
  v350 = *(v351 - 8);
  v19 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v351);
  v347 = &v346 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v352 = &v346 - v21;
  v22 = sub_1BE051F54();
  v358 = *(v22 - 8);
  v359 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v356 = &v346 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BE051FA4();
  v360 = *(v24 - 8);
  v361 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v357 = &v346 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v355 = a4;
  v27 = OBJC_IVAR____PKAccountSavingsViewController_configuration;
  v28 = a2;
  v29 = *(a2 + OBJC_IVAR____PKAccountSavingsViewController_configuration);
  v30 = a3;
  v31 = [v29 account];
  if (v31)
  {
    v362 = v26;
    v363 = v31;
    if (a1 <= 7)
    {
      if (a1 <= 3)
      {
        if (a1 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }

      if ((a1 - 4) < 2)
      {
        goto LABEL_20;
      }

      if (a1 != 6)
      {
        if (a1 != 7)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }

      v73 = [objc_allocWithZone(PKAccountDocumentsViewInterfaceConfiguration) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1BE0B7020;
      *(v74 + 32) = v363;
      sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
      v75 = v363;
      v76 = sub_1BE052724();
      v74, v77, v78, v79, v80, v81, v82, v83;
      [v73 setAccounts_];

      v84 = [objc_allocWithZone(PKAccountDocumentsViewController) initWithConfiguration_];
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v85 = v84;
      v86 = sub_1BE052D54();
      v87 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v88 = swift_allocObject();
      v89 = v355;
      v88[2] = v87;
      v88[3] = v89;
      v88[4] = v85;
      v370 = sub_1BD1B6FF4;
      v371 = v88;
      aBlock = MEMORY[0x1E69E9820];
      v367 = 1107296256;
      v368 = sub_1BD126964;
      v369 = &block_descriptor_299;
      v90 = _Block_copy(&aBlock);
      v91 = v371;
      v92 = v85;
      v91, v93, v94, v95, v96, v97, v98, v99;
      v100 = v357;
      sub_1BE051F74();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      v101 = v356;
      v102 = v359;
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v100, v101, v90);
      _Block_release(v90);

      (*(v358 + 8))(v101, v102);
      (*(v360 + 8))(v100, v361);
      v362, v103, v104, v105, v106, v107, v108, v109;

LABEL_23:
      return;
    }

    if (a1 <= 10)
    {
      if (a1 == 8)
      {
        v110 = [*(v28 + v27) transaction];
        if (v110)
        {
          v111 = v110;
          v112 = [*(v28 + v27) viewStyle];
          v113 = sub_1BD1AEEFC(v111, v363, v112);
          sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
          v114 = v113;
          v115 = sub_1BE052D54();
          v116 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v117 = swift_allocObject();
          v118 = v355;
          v117[2] = v116;
          v117[3] = v118;
          v117[4] = v114;
          v370 = sub_1BD1B6FF4;
          v371 = v117;
          aBlock = MEMORY[0x1E69E9820];
          v367 = 1107296256;
          v368 = sub_1BD126964;
          v369 = &block_descriptor_307;
          v119 = _Block_copy(&aBlock);
          v120 = v371;
          v121 = v114;
          v120, v122, v123, v124, v125, v126, v127, v128;
          v129 = v357;
          sub_1BE051F74();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
          sub_1BD14ECDC();
          v130 = v356;
          v131 = v359;
          sub_1BE053664();
          MEMORY[0x1BFB3FDF0](0, v129, v130, v119);
          _Block_release(v119);

          (*(v358 + 8))(v130, v131);
          (*(v360 + 8))(v129, v361);
          v362, v132, v133, v134, v135, v136, v137, v138;

          goto LABEL_51;
        }

        sub_1BE04D1E4();
        v230 = sub_1BE04D204();
        v231 = sub_1BE052C34();
        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          *v232 = 0;
          _os_log_impl(&dword_1BD026000, v230, v231, "Attempted to present transaction without transaction", v232, 2u);
          MEMORY[0x1BFB45F20](v232, -1, -1);
        }

        v354[1](v18, v353);
        goto LABEL_49;
      }

      if (a1 == 9)
      {
        v154 = [*(v28 + v27) rewardsDateComponents];
        if (v154)
        {
          v155 = v352;
          v156 = v154;
          sub_1BE04A424();

          v157 = [*(v28 + v27) viewStyle];
          v158 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
          v159 = [v158 initWithAccount_];
          v160 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

          v161 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
          v162 = objc_allocWithZone(MEMORY[0x1E69B8788]);
          v163 = v160;
          v164 = [v162 initWithTransactionSourceCollection:v163 paymentDataProvider:v161];

          if (v164)
          {
            v165 = v350;
            v166 = *(v350 + 16);
            v361 = v157;
            v167 = v347;
            v168 = v351;
            v166(v347, v155, v351);
            v169 = (*(v165 + 80) + 32) & ~*(v165 + 80);
            v170 = (v19 + v169 + 7) & 0xFFFFFFFFFFFFFFF8;
            v171 = (v170 + 15) & 0xFFFFFFFFFFFFFFF8;
            v172 = swift_allocObject();
            *(v172 + 16) = v361;
            *(v172 + 24) = v164;
            (*(v165 + 32))(v172 + v169, v167, v168);
            *(v172 + v170) = v163;
            v173 = v362;
            *(v172 + v171) = v363;
            v174 = (v172 + ((v171 + 15) & 0xFFFFFFFFFFFFFFF8));
            *v174 = sub_1BD1B6C34;
            v174[1] = v173;
            v370 = sub_1BD1B6FE8;
            v371 = v172;
            aBlock = MEMORY[0x1E69E9820];
            v367 = 1107296256;
            v368 = sub_1BD56AD40;
            v369 = &block_descriptor_291;
            v175 = _Block_copy(&aBlock);
            v176 = v371;
            v177 = v363;
            v178 = v163;
            v179 = v164;
            sub_1BE048964();
            v176, v180, v181, v182, v183, v184, v185, v186;
            [v179 reloadTransactionsWithCompletion_];
            _Block_release(v175);

            (*(v165 + 8))(v352, v168);
            v173, v187, v188, v189, v190, v191, v192, v193;
          }

          else
          {

            (*(v350 + 8))(v155, v351);
            v362, v243, v244, v245, v246, v247, v248, v249;
          }

          return;
        }

        sub_1BE04D1E4();
        v240 = sub_1BE04D204();
        v241 = sub_1BE052C34();
        if (os_log_type_enabled(v240, v241))
        {
          v242 = swift_slowAlloc();
          *v242 = 0;
          _os_log_impl(&dword_1BD026000, v240, v241, "Attempted to present rewards without date components", v242, 2u);
          MEMORY[0x1BFB45F20](v242, -1, -1);
        }

        v354[1](v15, v353);
LABEL_49:
        v239 = v362;
LABEL_50:
        v239, v39, v40, v41, v42, v43, v44, v45;
        goto LABEL_51;
      }

LABEL_20:
      [*(v28 + v27) copy];
      sub_1BE053624();
      swift_unknownObjectRelease();
      sub_1BD0E5E8C(0, &qword_1EBD3C038, off_1E8004620);
      if (swift_dynamicCast())
      {
        v46 = v372;
        [v372 setDestination_];
        v47 = [objc_allocWithZone(PKSavingsAccountDetailsViewController) initWithConfiguration_];

        sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
        v48 = v47;
        v49 = sub_1BE052D54();
        v50 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = swift_allocObject();
        v52 = v355;
        v51[2] = v50;
        v51[3] = v52;
        v51[4] = v48;
        v370 = sub_1BD1B6C7C;
        v371 = v51;
        aBlock = MEMORY[0x1E69E9820];
        v367 = 1107296256;
        v368 = sub_1BD126964;
        v369 = &block_descriptor_254;
        v53 = _Block_copy(&aBlock);
        v54 = v371;
        v55 = v48;
        v54, v56, v57, v58, v59, v60, v61, v62;
        v63 = v357;
        sub_1BE051F74();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
        sub_1BD14ECDC();
        v64 = v356;
        v65 = v359;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v63, v64, v53);
        _Block_release(v53);

        (*(v358 + 8))(v64, v65);
        (*(v360 + 8))(v63, v361);
        v362, v66, v67, v68, v69, v70, v71, v72;

LABEL_51:
        return;
      }

      goto LABEL_49;
    }

    if (a1 != 11)
    {
      if (a1 == 12)
      {
        v194 = [*(v28 + v27) fundingSource];
        if (v194)
        {
          v195 = v194;
          KeyPath = swift_getKeyPath();
          v197 = v349;
          *&v349[*(v8 + 32)] = KeyPath;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
          swift_storeEnumTagMultiPayload();
          v198 = v363;
          *v197 = v363;
          *(v197 + 1) = v195;
          LOBYTE(v372) = 0;
          v199 = v198;
          v200 = v195;
          sub_1BE051694();
          v201 = v367;
          v197[16] = aBlock;
          *(v197 + 3) = v201;
          *(v197 + 4) = sub_1BD87F37C;
          *(v197 + 5) = 0;
          v197[48] = 0;
          v202 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C020, &qword_1BE0BDDB0));
          v203 = sub_1BE04F894();
          sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
          v204 = v203;
          v205 = sub_1BE052D54();
          v206 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v207 = swift_allocObject();
          v208 = v355;
          v207[2] = v206;
          v207[3] = v208;
          v207[4] = v204;
          v370 = sub_1BD1B6FF4;
          v371 = v207;
          aBlock = MEMORY[0x1E69E9820];
          v367 = 1107296256;
          v368 = sub_1BD126964;
          v369 = &block_descriptor_262;
          v209 = _Block_copy(&aBlock);
          v210 = v371;
          v211 = v204;
          v210, v212, v213, v214, v215, v216, v217, v218;
          v219 = v357;
          sub_1BE051F74();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
          sub_1BD14ECDC();
          v220 = v356;
          v221 = v359;
          sub_1BE053664();
          MEMORY[0x1BFB3FDF0](0, v219, v220, v209);
          _Block_release(v209);

          (*(v358 + 8))(v220, v221);
          (*(v360 + 8))(v219, v361);
          v362, v222, v223, v224, v225, v226, v227, v228;

          return;
        }

        goto LABEL_37;
      }

      if (a1 != 13)
      {
LABEL_37:
        v362, v32, v33, v34, v35, v36, v37, v38;
        v229 = v363;

        return;
      }

      goto LABEL_20;
    }

    v139 = [v31 savingsDetails];
    if (!v139)
    {
      v233 = v346;
      sub_1BE04D1E4();
      v234 = sub_1BE04D204();
      v235 = sub_1BE052C34();
      v236 = os_log_type_enabled(v234, v235);
      v237 = v362;
      if (v236)
      {
        v238 = swift_slowAlloc();
        *v238 = 0;
        _os_log_impl(&dword_1BD026000, v234, v235, "Attempted to present FCC step up without account details", v238, 2u);
        MEMORY[0x1BFB45F20](v238, -1, -1);
      }

      v354[1](v233, v353);
      v239 = v237;
      goto LABEL_50;
    }

    v140 = v139;
    v141 = [v139 fccStepUpRequired];
    v142 = v362;
    if ((v141 & 1) != 0 && [v363 state] != 4)
    {
      v250 = v30;
      v251 = type metadata accessor for SavingsFCCStepUpController();
      v252 = objc_allocWithZone(v251);
      *&v252[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController] = 1;
      v253 = v363;
      *&v252[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account] = v363;
      v365.receiver = v252;
      v365.super_class = v251;
      v254 = v253;
      v255 = objc_msgSendSuper2(&v365, sel_init);
      v256 = swift_allocObject();
      v256[2] = sub_1BD1B6C34;
      v256[3] = v142;
      v257 = *&v255[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account];
      swift_retain_n();
      v258 = [v257 savingsDetails];
      if (v258)
      {
        v259 = v258;
        v260 = [v258 fccStepUpDetails];

        if (!v260 || (v261 = [v260 thresholdExceeded], v260, (v261 & 1) == 0))
        {
          v292 = swift_allocObject();
          v292[2] = sub_1BD1B6CB0;
          v292[3] = v256;
          sub_1BE048964();
          v293 = sub_1BD8BD4F8();
          if (!v293)
          {

            v256, v318, v319, v320, v321, v322, v323, v324;

            v292, v325, v326, v327, v328, v329, v330, v331;
            return;
          }

          v75 = v293;
          v294 = swift_allocObject();
          *(v294 + 16) = sub_1BD1B6F4C;
          *(v294 + 24) = v292;
          v370 = sub_1BD1B6F50;
          v371 = v294;
          aBlock = MEMORY[0x1E69E9820];
          v367 = 1107296256;
          v368 = sub_1BD14E1D8;
          v369 = &block_descriptor_276;
          v295 = _Block_copy(&aBlock);
          v296 = v371;
          sub_1BE048964();
          v296, v297, v298, v299, v300, v301, v302, v303;
          [v75 nextViewControllerWithCompletion_];
          v292, v304, v305, v306, v307, v308, v309, v310;
          _Block_release(v295);

          v256, v311, v312, v313, v314, v315, v316, v317;

          goto LABEL_23;
        }

        v363 = v254;
        v262 = type metadata accessor for SavingsFCCStepUpClosureViewController();
        v263 = objc_allocWithZone(v262);
        *&v263[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] = v255;
        v364.receiver = v263;
        v364.super_class = v262;
        v354 = v255;
        v264 = objc_msgSendSuper2(&v364, sel_initWithContext_, 0);
        if (v264)
        {
          v265 = v264;
          v266 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
          sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
          v267 = v266;
          v353 = sub_1BE052D54();
          v268 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v269 = swift_allocObject();
          v270 = v355;
          v269[2] = v268;
          v269[3] = v270;
          v269[4] = v267;
          v370 = sub_1BD1B6FF4;
          v371 = v269;
          aBlock = MEMORY[0x1E69E9820];
          v367 = 1107296256;
          v368 = sub_1BD126964;
          v369 = &block_descriptor_284;
          v271 = _Block_copy(&aBlock);
          v272 = v371;
          v273 = v267;
          v272, v274, v275, v276, v277, v278, v279, v280;
          v355 = v265;
          v281 = v357;
          sub_1BE051F74();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
          sub_1BD14ECDC();
          v282 = v356;
          v283 = v359;
          sub_1BE053664();
          v284 = v353;
          MEMORY[0x1BFB3FDF0](0, v281, v282, v271);
          _Block_release(v271);

          (*(v358 + 8))(v282, v283);
          (*(v360 + 8))(v281, v361);

          v256, v285, v286, v287, v288, v289, v290, v291;

          return;
        }
      }

      else
      {

        v142, v332, v333, v334, v335, v336, v337, v338;
        __break(1u);
      }

      v142, v339, v340, v341, v342, v343, v344, v345;
      __break(1u);
      return;
    }

    v143 = v348;
    sub_1BE04D1E4();
    v144 = sub_1BE04D204();
    v145 = sub_1BE052C34();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_1BD026000, v144, v145, "Attempted to present FCC step up when its no longer required", v146, 2u);
      MEMORY[0x1BFB45F20](v146, -1, -1);
    }

    v354[1](v143, v353);
    v142, v147, v148, v149, v150, v151, v152, v153;
  }

  else
  {

    v26, v32, v33, v34, v35, v36, v37, v38;
  }
}

void sub_1BD1B1AC0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v456 = type metadata accessor for SavingsBankVerificationView(0);
  MEMORY[0x1EEE9AC00](v456);
  v457 = &v447 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04D214();
  v10 = *(v9 - 1);
  v465 = v9;
  v466 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v453 = &v447 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v452 = &v447 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v455 = &v447 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v447 - v17;
  v459 = sub_1BE04A474();
  v458 = *(v459 - 8);
  v19 = *(v458 + 64);
  MEMORY[0x1EEE9AC00](v459);
  v454 = &v447 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v464 = &v447 - v21;
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B198, &qword_1BE0BDD70);
  MEMORY[0x1EEE9AC00](v460);
  v461 = &v447 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v463 = (&v447 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v447 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v447 - v29;
  v31 = type metadata accessor for AccountInformationView(0);
  MEMORY[0x1EEE9AC00](v31);
  v462 = (&v447 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = swift_allocObject();
  v34 = a3;
  *(v33 + 2) = a3;
  *(v33 + 3) = a4;
  if ((a1 - 2) >= 0xC)
  {
    v75 = v33;
    sub_1BE048964();
    v76 = v75;
    goto LABEL_12;
  }

  v447 = a4;
  v451 = v33;
  v35 = OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration;
  v448 = a2;
  v36 = *(a2 + OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration);
  v449 = v34;
  sub_1BE048964();
  v37 = [v36 account];
  if (!v37)
  {
    v76 = v451;
LABEL_12:

    goto LABEL_14;
  }

  v450 = v37;
  if (a1 > 7)
  {
    if (a1 > 10)
    {
      if (a1 != 11)
      {
        if (a1 == 12)
        {
          v125 = [*(v448 + v35) fundingSource];
          if (v125)
          {
            v126 = v125;
            KeyPath = swift_getKeyPath();
            v128 = v457;
            *&v457[*(v456 + 32)] = KeyPath;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
            swift_storeEnumTagMultiPayload();
            v129 = v450;
            *v128 = v450;
            *(v128 + 1) = v126;
            v467 = 0;
            v130 = v129;
            v131 = v126;
            sub_1BE051694();
            v132 = v471;
            v128[16] = aBlock;
            *(v128 + 3) = v132;
            *(v128 + 4) = sub_1BD87F37C;
            *(v128 + 5) = 0;
            v128[48] = 0;
            v133 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C020, &qword_1BE0BDDB0));
            v134 = sub_1BE04F894();
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v65 = Strong;
              sub_1BD1A6550(v447, v134);
              v451, v143, v144, v145, v146, v147, v148, v149;

LABEL_47:
              return;
            }

            v451, v136, v137, v138, v139, v140, v141, v142;

            return;
          }

          goto LABEL_48;
        }

        v243 = v448;
        v244 = *(v448 + v35);
        v245 = v450;
        LODWORD(v244) = [v244 isNewAccount];
        v246 = objc_allocWithZone(type metadata accessor for AccountModel(0));
        v247 = sub_1BD1DF0D8(v245, v244);
        type metadata accessor for AccountUserInfoModel(0);
        swift_allocObject();
        v248 = sub_1BD2FA644();
        v249 = *&v248[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account];
        *&v248[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account] = v450;
        v250 = v245;

        v251 = v247;
        sub_1BE048964();
        v252 = v463;
        sub_1BD3C154C(v251, v248, 0, v463);
        v253 = *(*(v243 + OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC) + *((*MEMORY[0x1E69E7D40] & **(v243 + OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC)) + class metadata base offset for WrapperHostingController + 16));
        type metadata accessor for ObservableHostingController();
        sub_1BD1B6BA4(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
        sub_1BE048964();
        v254 = sub_1BE04D804();
        v255 = (v252 + *(v460 + 36));
        *v255 = v254;
        v255[1] = v253;
        sub_1BD0DE19C(v252, v461, &qword_1EBD3B198, &qword_1BE0BDD70);
        v256 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C028, &qword_1BE0BDDB8));
        v257 = sub_1BE04F894();
        swift_beginAccess();
        v258 = swift_unknownObjectWeakLoadStrong();
        if (v258)
        {
          v266 = v258;
          sub_1BD1A6550(v447, v257);
          v248, v267, v268, v269, v270, v271, v272, v273;

          v257 = v266;
        }

        else
        {
          v248, v259, v260, v261, v262, v263, v264, v265;
        }

        sub_1BD0DE53C(v252, &qword_1EBD3B198, &qword_1BE0BDD70);
        goto LABEL_73;
      }

      v204 = [v37 savingsDetails];
      if (v204)
      {
        v205 = v204;
        if (([v204 fccStepUpRequired] & 1) == 0 || objc_msgSend(v450, sel_state) == 4)
        {
          v206 = v455;
          sub_1BE04D1E4();
          v207 = sub_1BE04D204();
          v208 = sub_1BE052C34();
          if (os_log_type_enabled(v207, v208))
          {
            v209 = swift_slowAlloc();
            *v209 = 0;
            _os_log_impl(&dword_1BD026000, v207, v208, "Attempted to present FCC step up when its no longer required", v209, 2u);
            MEMORY[0x1BFB45F20](v209, -1, -1);
          }

          v466[1](v206, v465);
          v451, v210, v211, v212, v213, v214, v215, v216;

          return;
        }

        v296 = type metadata accessor for SavingsFCCStepUpController();
        v297 = objc_allocWithZone(v296);
        *&v297[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController] = 1;
        v298 = v450;
        *&v297[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account] = v450;
        v469.receiver = v297;
        v469.super_class = v296;
        v299 = v298;
        v300 = objc_msgSendSuper2(&v469, sel_init);
        v301 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v302 = swift_allocObject();
        v302[2] = v301;
        v302[3] = sub_1BD1B6BEC;
        v302[4] = v451;
        v303 = *&v300[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account];
        swift_retain_n();
        swift_retain_n();
        v304 = [v303 savingsDetails];
        if (v304)
        {
          v312 = v304;
          v313 = [v304 fccStepUpDetails];

          if (!v313 || (v314 = [v313 thresholdExceeded], v313, (v314 & 1) == 0))
          {
            v355 = swift_allocObject();
            v355[2] = sub_1BD1B6F74;
            v355[3] = v302;
            sub_1BE048964();
            v356 = sub_1BD8BD4F8();
            if (v356)
            {
              v357 = v356;
              v358 = swift_allocObject();
              *(v358 + 16) = sub_1BD1B6F4C;
              *(v358 + 24) = v355;
              v474 = sub_1BD1B6F50;
              v475 = v358;
              aBlock = MEMORY[0x1E69E9820];
              v471 = 1107296256;
              v472 = sub_1BD14E1D8;
              v473 = &block_descriptor_244;
              v359 = _Block_copy(&aBlock);
              v360 = v475;
              sub_1BE048964();
              v360, v361, v362, v363, v364, v365, v366, v367;
              [v357 nextViewControllerWithCompletion_];
              v355, v368, v369, v370, v371, v372, v373, v374;
              _Block_release(v359);

              v302, v375, v376, v377, v378, v379, v380, v381;

              return;
            }

            swift_beginAccess();
            v382 = swift_unknownObjectWeakLoadStrong();
            if (v382)
            {
              v383 = v382;
              [v382 pkui_userInterfaceIdiomSupportsLargeLayouts];

              v302, v384, v385, v386, v387, v388, v389, v390;

              v355, v391, v392, v393, v394, v395, v396, v397;
              return;
            }

            v302, v412, v413, v414, v415, v416, v417, v418;

            v76 = v355;
            goto LABEL_14;
          }

          v315 = type metadata accessor for SavingsFCCStepUpClosureViewController();
          v316 = objc_allocWithZone(v315);
          *&v316[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] = v300;
          v468.receiver = v316;
          v468.super_class = v315;
          v317 = v300;
          v318 = objc_msgSendSuper2(&v468, sel_initWithContext_, 0);
          if (v318)
          {
            v326 = v318;
            v327 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
            swift_beginAccess();
            v328 = swift_unknownObjectWeakLoadStrong();
            if (v328)
            {
              v329 = v328;
              v330 = [v328 pkui_userInterfaceIdiomSupportsLargeLayouts];

              if (v330)
              {
                [v327 setModalPresentationStyle_];
              }
            }

            swift_beginAccess();
            v331 = swift_unknownObjectWeakLoadStrong();
            if (v331)
            {
              v339 = v331;
              v340 = v327;
              sub_1BD1A6550(v447, v340);
              v301, v341, v342, v343, v344, v345, v346, v347;
              v302, v348, v349, v350, v351, v352, v353, v354;

              v299 = v339;
              v326 = v340;
            }

            else
            {
              v301, v332, v333, v334, v335, v336, v337, v338;
              v302, v398, v399, v400, v401, v402, v403, v404;
            }

            v301, v405, v406, v407, v408, v409, v410, v411;

            return;
          }
        }

        else
        {
          v449, v305, v306, v307, v308, v309, v310, v311;
          v451, v419, v420, v421, v422, v423, v424, v425;
          v301, v426, v427, v428, v429, v430, v431, v432;
          __break(1u);
        }

        v449, v319, v320, v321, v322, v323, v324, v325;
        v451, v433, v434, v435, v436, v437, v438, v439;
        v301, v440, v441, v442, v443, v444, v445, v446;
        __break(1u);
        return;
      }

      sub_1BE04D1E4();
      v286 = sub_1BE04D204();
      v287 = sub_1BE052C34();
      if (os_log_type_enabled(v286, v287))
      {
        v288 = swift_slowAlloc();
        *v288 = 0;
        _os_log_impl(&dword_1BD026000, v286, v287, "Attempted to present FCC step up without account details", v288, 2u);
        MEMORY[0x1BFB45F20](v288, -1, -1);
      }

      v466[1](v18, v465);
      goto LABEL_69;
    }

    if (a1 == 8)
    {
      v150 = v448;
      v151 = [*(v448 + v35) transaction];
      if (!v151)
      {
        v274 = v452;
        sub_1BE04D1E4();
        v275 = sub_1BE04D204();
        v276 = sub_1BE052C34();
        if (!os_log_type_enabled(v275, v276))
        {
LABEL_68:

          v466[1](v274, v465);
LABEL_69:
          v451, v289, v290, v291, v292, v293, v294, v295;
LABEL_70:

          return;
        }

        v277 = swift_slowAlloc();
        *v277 = 0;
        v278 = "Attempted to present transaction without transaction";
LABEL_67:
        _os_log_impl(&dword_1BD026000, v275, v276, v278, v277, 2u);
        MEMORY[0x1BFB45F20](v277, -1, -1);
        goto LABEL_68;
      }

      v152 = v151;
      v153 = [*(v150 + v35) viewStyle];
      v154 = sub_1BD1AEEFC(v152, v450, v153);
      swift_beginAccess();
      v155 = swift_unknownObjectWeakLoadStrong();
      if (!v155)
      {
        v451, v156, v157, v158, v159, v160, v161, v162;

        goto LABEL_70;
      }

      v65 = v155;
      sub_1BD1A6550(v447, v154);
      v451, v163, v164, v165, v166, v167, v168, v169;
    }

    else
    {
      if (a1 == 9)
      {
        v77 = v448;
        v78 = [*(v448 + v35) rewardsDateComponents];
        if (v78)
        {
          v79 = v464;
          v80 = v78;
          sub_1BE04A424();

          v81 = [*(v77 + v35) viewStyle];
          v82 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
          v83 = [v82 initWithAccount_];
          v84 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

          v85 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
          v86 = objc_allocWithZone(MEMORY[0x1E69B8788]);
          v87 = v84;
          v88 = [v86 initWithTransactionSourceCollection:v87 paymentDataProvider:v85];

          if (!v88)
          {

            (*(v458 + 8))(v79, v459);
LABEL_73:
            v76 = v451;
            goto LABEL_14;
          }

          v89 = v458;
          v90 = *(v458 + 16);
          v466 = v81;
          v91 = v454;
          v92 = v459;
          v90(v454, v79, v459);
          v93 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v94 = (v19 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
          v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
          v96 = swift_allocObject();
          *(v96 + 16) = v466;
          *(v96 + 24) = v88;
          (*(v89 + 32))(v96 + v93, v91, v92);
          *(v96 + v94) = v87;
          *(v96 + v95) = v450;
          v97 = (v96 + ((v95 + 15) & 0xFFFFFFFFFFFFFFF8));
          v98 = v451;
          *v97 = sub_1BD1B6BEC;
          v97[1] = v98;
          v474 = sub_1BD1B6FE8;
          v475 = v96;
          aBlock = MEMORY[0x1E69E9820];
          v471 = 1107296256;
          v472 = sub_1BD56AD40;
          v473 = &block_descriptor_228;
          v99 = _Block_copy(&aBlock);
          v100 = v475;
          v101 = v450;
          sub_1BE048964();
          v102 = v87;
          v103 = v88;
          v100, v104, v105, v106, v107, v108, v109, v110;
          [v103 reloadTransactionsWithCompletion_];
          _Block_release(v99);

          (*(v89 + 8))(v464, v92);
          v76 = v98;
LABEL_14:
          v76, v38, v39, v40, v41, v42, v43, v44;
          return;
        }

        v274 = v453;
        sub_1BE04D1E4();
        v275 = sub_1BE04D204();
        v276 = sub_1BE052C34();
        if (!os_log_type_enabled(v275, v276))
        {
          goto LABEL_68;
        }

        v277 = swift_slowAlloc();
        *v277 = 0;
        v278 = "Attempted to present rewards without date components";
        goto LABEL_67;
      }

      v217 = *(v448 + v35);
      v218 = objc_allocWithZone(type metadata accessor for AccountNumbersViewController());
      v219 = AccountNumbersViewController.init(withConfiguration:)(v217);
      if (!v219)
      {
LABEL_48:
        v451, v38, v39, v40, v41, v42, v43, v44;
        v236 = v450;
LABEL_49:

        return;
      }

      v220 = v219;
      swift_beginAccess();
      v221 = swift_unknownObjectWeakLoadStrong();
      if (!v221)
      {
        v451, v222, v223, v224, v225, v226, v227, v228;

        goto LABEL_70;
      }

      v65 = v221;
      sub_1BD1A6550(v447, v220);
      v451, v229, v230, v231, v232, v233, v234, v235;
    }

    v74 = v450;
    goto LABEL_46;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v170 = *(v448 + v35);
      v171 = v450;
      LODWORD(v170) = [v170 isNewAccount];
      v466 = type metadata accessor for AccountModel(0);
      v172 = objc_allocWithZone(v466);
      v173 = sub_1BD1DF0D8(v171, v170);
      type metadata accessor for AccountUserInfoModel(0);
      swift_allocObject();
      v174 = sub_1BD2FA644();
      v175 = *(v174 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
      *(v174 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account) = v450;
      v464 = v171;

      v467 = 0;
      v465 = v173;
      sub_1BE048964();
      sub_1BE051694();
      v176 = v471;
      v177 = v462;
      *(v462 + 32) = aBlock;
      v177[5] = v176;
      v178 = type metadata accessor for FeatureError(0);
      (*(*(v178 - 8) + 56))(v30, 1, 1, v178);
      sub_1BD0DE19C(v30, v27, &qword_1EBD416C0, &unk_1BE0BC2A0);
      v179 = v174;
      sub_1BE051694();
      sub_1BD0DE53C(v30, &qword_1EBD416C0, &unk_1BE0BC2A0);
      v180 = *(v31 + 32);
      *(v177 + v180) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8, &unk_1BE0BC2E0);
      swift_storeEnumTagMultiPayload();
      sub_1BD1B6BA4(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
      v181 = v465;
      *v177 = sub_1BE04E954();
      v177[1] = v182;
      sub_1BD1B6BA4(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
      v183 = sub_1BE04E954();
      v185 = v184;

      v177[2] = v183;
      v177[3] = v185;
      v186 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C030, &qword_1BE0BDDF8));
      v187 = sub_1BE04F894();
      swift_beginAccess();
      v188 = swift_unknownObjectWeakLoadStrong();
      if (v188)
      {
        v196 = v188;
        sub_1BD1A6550(v447, v187);
        v179, v197, v198, v199, v200, v201, v202, v203;

        v187 = v464;
      }

      else
      {
        v179, v189, v190, v191, v192, v193, v194, v195;
        v196 = v464;
      }

      v451, v279, v280, v281, v282, v283, v284, v285;
      return;
    }

    if (a1 == 6)
    {
      v111 = [objc_allocWithZone(PKAccountDocumentsViewInterfaceConfiguration) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v112 = swift_allocObject();
      *(v112 + 16) = xmmword_1BE0B7020;
      *(v112 + 32) = v450;
      sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
      v113 = v450;
      v114 = sub_1BE052724();
      v112, v115, v116, v117, v118, v119, v120, v121;
      [v111 setAccounts_];

      v122 = [objc_allocWithZone(PKAccountDocumentsViewController) initWithConfiguration_];
      swift_beginAccess();
      v123 = swift_unknownObjectWeakLoadStrong();
      if (v123)
      {
        v124 = v123;
        sub_1BD1A6550(v447, v122);

        v111 = v122;
        v122 = v113;
        v113 = v124;
      }
    }

    else
    {
      v237 = objc_allocWithZone(PKAccountSupportTopicsViewController);
      v238 = [v237 initWithAccount_];
      v239 = [v238 navigationItem];
      [v239 setLargeTitleDisplayMode_];

      v240 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
      swift_beginAccess();
      v241 = swift_unknownObjectWeakLoadStrong();
      if (v241)
      {
        v242 = v241;
        v240 = v240;
        sub_1BD1A6550(v447, v240);

        v238 = v242;
        v450 = v240;
      }
    }

    goto LABEL_73;
  }

  if (a1 == 2 || a1 == 3)
  {
    goto LABEL_48;
  }

  v45 = objc_opt_self();
  v466 = v450;
  v46 = [v45 sharedService];
  v47 = objc_allocWithZone(PKAccountBankAccountsViewController);
  v48 = [v47 initWithAccount:v466 paymentWebService:v46 context:0];

  if (!v48)
  {
    v451, v49, v50, v51, v52, v53, v54, v55;
    v236 = v466;
    goto LABEL_49;
  }

  v56 = [v48 navigationItem];
  [v56 setLargeTitleDisplayMode_];

  swift_beginAccess();
  v57 = swift_unknownObjectWeakLoadStrong();
  if (v57)
  {
    v65 = v57;
    v66 = v48;
    sub_1BD1A6550(v447, v66);
    v451, v67, v68, v69, v70, v71, v72, v73;

    v74 = v466;
LABEL_46:

    goto LABEL_47;
  }

  v451, v58, v59, v60, v61, v62, v63, v64;
}

void sub_1BD1B352C(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v550 = a2;
  v534 = type metadata accessor for SavingsBankVerificationView(0);
  MEMORY[0x1EEE9AC00](v534);
  v535 = &v525 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D214();
  v9 = *(v8 - 1);
  v543 = v8;
  v544 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v531 = &v525 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v530 = &v525 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v533 = &v525 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v529 = &v525 - v16;
  v537 = sub_1BE04A474();
  v536 = *(v537 - 8);
  v17 = *(v536 + 64);
  MEMORY[0x1EEE9AC00](v537);
  v532 = &v525 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v542 = &v525 - v19;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B198, &qword_1BE0BDD70);
  MEMORY[0x1EEE9AC00](v539);
  v540 = &v525 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v541 = (&v525 - v22);
  v23 = sub_1BE051F54();
  v24 = *(v23 - 8);
  v547 = v23;
  v548 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v546 = &v525 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v549 = &v525 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v525 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v525 - v33;
  v35 = type metadata accessor for AccountInformationView(0);
  MEMORY[0x1EEE9AC00](v35);
  v538 = (&v525 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = swift_allocObject();
  v37[2] = a3;
  v37[3] = a4;
  v545 = a4;
  if ((a1 - 2) >= 0xC)
  {
    v88 = v37;
    v89 = a3;
    v90 = v88;
  }

  else
  {
    v525 = v26;
    v526 = v27;
    v528 = v37;
    v38 = OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration;
    v39 = v550;
    v40 = *&v550[OBJC_IVAR____PKAccountSavingsDetailsViewController_configuration];
    v41 = a3;
    v42 = [v40 account];
    if (v42)
    {
      v527 = v42;
      if (a1 <= 7)
      {
        if (a1 <= 4)
        {
          if (a1 != 2 && a1 != 3)
          {
            v50 = objc_opt_self();
            v550 = v527;
            v51 = [v50 sharedService];
            v52 = objc_allocWithZone(PKAccountBankAccountsViewController);
            v53 = [v52 initWithAccount:v550 paymentWebService:v51 context:0];

            if (v53)
            {
              v61 = [v53 navigationItem];
              [v61 setLargeTitleDisplayMode_];

              sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
              v62 = v53;
              v63 = sub_1BE052D54();
              v64 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v65 = swift_allocObject();
              v66 = v545;
              v65[2] = v64;
              v65[3] = v66;
              v65[4] = v62;
              v558 = sub_1BD1B6FF0;
              v559 = v65;
              aBlock = MEMORY[0x1E69E9820];
              v555 = 1107296256;
              v556 = sub_1BD126964;
              v557 = &block_descriptor_210;
              v67 = _Block_copy(&aBlock);
              v68 = v559;
              v69 = v62;
              v68, v70, v71, v72, v73, v74, v75, v76;
              v77 = v549;
              sub_1BE051F74();
              aBlock = MEMORY[0x1E69E7CC0];
              sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
              sub_1BD14ECDC();
              v79 = v546;
              v78 = v547;
              sub_1BE053664();
              MEMORY[0x1BFB3FDF0](0, v77, v79, v67);
              _Block_release(v67);

              (*(v548 + 8))(v79, v78);
              (*(v526 + 8))(v77, v525);
              v528, v80, v81, v82, v83, v84, v85, v86;

              v87 = v550;
LABEL_41:

              return;
            }

            v528, v54, v55, v56, v57, v58, v59, v60;
            v87 = v550;
LABEL_39:

            goto LABEL_41;
          }

LABEL_38:
          v528, v43, v44, v45, v46, v47, v48, v49;
          v87 = v527;
          goto LABEL_39;
        }

        if (a1 == 5)
        {
          v213 = *&v39[v38];
          v214 = v527;
          LODWORD(v213) = [v213 isNewAccount];
          v543 = type metadata accessor for AccountModel(0);
          v215 = objc_allocWithZone(v543);
          v216 = sub_1BD1DF0D8(v214, v213);
          v544 = v41;
          v217 = v216;
          type metadata accessor for AccountUserInfoModel(0);
          swift_allocObject();
          v218 = sub_1BD2FA644();
          v219 = *(v218 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
          *(v218 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account) = v527;
          v550 = v214;

          v551 = 0;
          v542 = v217;
          sub_1BE048964();
          sub_1BE051694();
          v220 = v555;
          v221 = v538;
          *(v538 + 32) = aBlock;
          v221[5] = v220;
          v222 = type metadata accessor for FeatureError(0);
          (*(*(v222 - 8) + 56))(v34, 1, 1, v222);
          sub_1BD0DE19C(v34, v31, &qword_1EBD416C0, &unk_1BE0BC2A0);
          sub_1BE051694();
          sub_1BD0DE53C(v34, &qword_1EBD416C0, &unk_1BE0BC2A0);
          v223 = *(v35 + 32);
          *(v221 + v223) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8, &unk_1BE0BC2E0);
          swift_storeEnumTagMultiPayload();
          sub_1BD1B6BA4(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
          v224 = v542;
          *v221 = sub_1BE04E954();
          v221[1] = v225;
          sub_1BD1B6BA4(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
          v226 = v218;
          v227 = sub_1BE04E954();
          v229 = v228;

          v221[2] = v227;
          v221[3] = v229;
          v230 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C030, &qword_1BE0BDDF8));
          v231 = sub_1BE04F894();
          sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
          v232 = v231;
          v233 = sub_1BE052D54();
          v234 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v235 = swift_allocObject();
          v236 = v545;
          v235[2] = v234;
          v235[3] = v236;
          v235[4] = v232;
          v558 = sub_1BD1B6FF0;
          v559 = v235;
          aBlock = MEMORY[0x1E69E9820];
          v555 = 1107296256;
          v556 = sub_1BD126964;
          v557 = &block_descriptor_202;
          v237 = _Block_copy(&aBlock);
          v238 = v559;
          v239 = v232;
          v238, v240, v241, v242, v243, v244, v245, v246;
          v247 = v549;
          sub_1BE051F74();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
          sub_1BD14ECDC();
          v249 = v546;
          v248 = v547;
          sub_1BE053664();
          MEMORY[0x1BFB3FDF0](0, v247, v249, v237);
          _Block_release(v237);

          (*(v548 + 8))(v249, v248);
          (*(v526 + 8))(v247, v525);
          v528, v250, v251, v252, v253, v254, v255, v256;

          v226, v257, v258, v259, v260, v261, v262, v263;
          return;
        }

        if (a1 == 6)
        {
          v131 = [objc_allocWithZone(PKAccountDocumentsViewInterfaceConfiguration) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
          v132 = swift_allocObject();
          *(v132 + 16) = xmmword_1BE0B7020;
          *(v132 + 32) = v527;
          sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
          v133 = v527;
          v134 = sub_1BE052724();
          v132, v135, v136, v137, v138, v139, v140, v141;
          [v131 setAccounts_];

          v142 = [objc_allocWithZone(PKAccountDocumentsViewController) initWithConfiguration_];
          sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
          v143 = v142;
          v144 = sub_1BE052D54();
          v145 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v146 = swift_allocObject();
          v147 = v545;
          v146[2] = v145;
          v146[3] = v147;
          v146[4] = v143;
          v558 = sub_1BD1B6FF0;
          v559 = v146;
          aBlock = MEMORY[0x1E69E9820];
          v555 = 1107296256;
          v556 = sub_1BD126964;
          v557 = &block_descriptor_132;
          v148 = _Block_copy(&aBlock);
          v149 = v559;
          v150 = v143;
          v149, v151, v152, v153, v154, v155, v156, v157;
          v158 = v549;
          sub_1BE051F74();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
          sub_1BD14ECDC();
          v160 = v546;
          v159 = v547;
          sub_1BE053664();
          MEMORY[0x1BFB3FDF0](0, v158, v160, v148);
          _Block_release(v148);

          (*(v548 + 8))(v160, v159);
          (*(v526 + 8))(v158, v525);
          v528, v161, v162, v163, v164, v165, v166, v167;

          return;
        }

        v306 = objc_allocWithZone(PKAccountSupportTopicsViewController);
        v204 = [v306 initWithAccount_];
        v307 = [v204 navigationItem];
        [v307 setLargeTitleDisplayMode_];

        v308 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
        sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
        v207 = v308;
        v208 = sub_1BE052D54();
        v309 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v310 = swift_allocObject();
        v311 = v545;
        v310[2] = v309;
        v310[3] = v311;
        v310[4] = v207;
        v558 = sub_1BD1B6FF0;
        v559 = v310;
        aBlock = MEMORY[0x1E69E9820];
        v555 = 1107296256;
        v212 = &block_descriptor_191;
        goto LABEL_43;
      }

      if (a1 <= 10)
      {
        if (a1 == 8)
        {
          v203 = [*&v39[v38] transaction];
          if (v203)
          {
            v204 = v203;
            v205 = [*&v39[v38] viewStyle];
            v206 = sub_1BD1AEEFC(v204, v527, v205);
            sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
            v207 = v206;
            v208 = sub_1BE052D54();
            v209 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v210 = swift_allocObject();
            v211 = v545;
            v210[2] = v209;
            v210[3] = v211;
            v210[4] = v207;
            v558 = sub_1BD1B6FF0;
            v559 = v210;
            aBlock = MEMORY[0x1E69E9820];
            v555 = 1107296256;
            v212 = &block_descriptor_146;
LABEL_43:
            v556 = sub_1BD126964;
            v557 = v212;
            v312 = _Block_copy(&aBlock);
            v313 = v559;
            v314 = v207;
            v313, v315, v316, v317, v318, v319, v320, v321;
            v322 = v549;
            sub_1BE051F74();
            aBlock = MEMORY[0x1E69E7CC0];
            sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
            sub_1BD14ECDC();
            v324 = v546;
            v323 = v547;
            sub_1BE053664();
            MEMORY[0x1BFB3FDF0](0, v322, v324, v312);
            _Block_release(v312);

            (*(v548 + 8))(v324, v323);
            (*(v526 + 8))(v322, v525);
            v528, v325, v326, v327, v328, v329, v330, v331;

            goto LABEL_57;
          }

          v377 = v530;
          sub_1BE04D1E4();
          v378 = sub_1BE04D204();
          v379 = sub_1BE052C34();
          if (!os_log_type_enabled(v378, v379))
          {
            goto LABEL_55;
          }

          v380 = swift_slowAlloc();
          *v380 = 0;
          v381 = "Attempted to present transaction without transaction";
        }

        else
        {
          if (a1 != 9)
          {
            v277 = *&v39[v38];
            v278 = objc_allocWithZone(type metadata accessor for AccountNumbersViewController());
            v279 = AccountNumbersViewController.init(withConfiguration:)(v277);
            if (!v279)
            {
              goto LABEL_38;
            }

            v280 = v279;
            sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
            v281 = v280;
            v282 = sub_1BE052D54();
            v283 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v284 = swift_allocObject();
            v285 = v545;
            v284[2] = v283;
            v284[3] = v285;
            v284[4] = v281;
            v558 = sub_1BD1B6FF0;
            v559 = v284;
            aBlock = MEMORY[0x1E69E9820];
            v555 = 1107296256;
            v556 = sub_1BD126964;
            v557 = &block_descriptor_183;
            v286 = _Block_copy(&aBlock);
            v287 = v559;
            v288 = v281;
            v287, v289, v290, v291, v292, v293, v294, v295;
            v296 = v549;
            sub_1BE051F74();
            aBlock = MEMORY[0x1E69E7CC0];
            sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
            sub_1BD14ECDC();
            v298 = v546;
            v297 = v547;
            sub_1BE053664();
            MEMORY[0x1BFB3FDF0](0, v296, v298, v286);
            _Block_release(v286);

            (*(v548 + 8))(v298, v297);
            (*(v526 + 8))(v296, v525);
            v528, v299, v300, v301, v302, v303, v304, v305;

LABEL_57:
            v87 = v527;
            goto LABEL_41;
          }

          v91 = [*&v39[v38] rewardsDateComponents];
          if (v91)
          {
            v92 = v542;
            v93 = v91;
            sub_1BE04A424();

            v94 = [*&v39[v38] viewStyle];
            v95 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
            v96 = [v95 initWithAccount_];
            v97 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];

            v98 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
            v99 = objc_allocWithZone(MEMORY[0x1E69B8788]);
            v100 = v97;
            v101 = [v99 initWithTransactionSourceCollection:v100 paymentDataProvider:v98];

            if (v101)
            {
              v102 = v536;
              v103 = *(v536 + 16);
              v550 = v94;
              v104 = v532;
              v105 = v537;
              v103(v532, v92, v537);
              v106 = (*(v102 + 80) + 32) & ~*(v102 + 80);
              v107 = (v17 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
              v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
              v109 = swift_allocObject();
              *(v109 + 16) = v550;
              *(v109 + 24) = v101;
              (*(v102 + 32))(v109 + v106, v104, v105);
              *(v109 + v107) = v100;
              *(v109 + v108) = v527;
              v110 = (v109 + ((v108 + 15) & 0xFFFFFFFFFFFFFFF8));
              v111 = v528;
              *v110 = sub_1BD1B6B08;
              v110[1] = v111;
              v558 = sub_1BD1B6B84;
              v559 = v109;
              aBlock = MEMORY[0x1E69E9820];
              v555 = 1107296256;
              v556 = sub_1BD56AD40;
              v557 = &block_descriptor_138;
              v112 = _Block_copy(&aBlock);
              v113 = v559;
              v114 = v527;
              sub_1BE048964();
              v115 = v100;
              v116 = v101;
              v113, v117, v118, v119, v120, v121, v122, v123;
              [v116 reloadTransactionsWithCompletion_];
              _Block_release(v112);

              (*(v102 + 8))(v542, v105);
              v111, v124, v125, v126, v127, v128, v129, v130;
              return;
            }

            (*(v536 + 8))(v92, v537);
LABEL_45:
            v528, v370, v371, v372, v373, v374, v375, v376;
            return;
          }

          v377 = v531;
          sub_1BE04D1E4();
          v378 = sub_1BE04D204();
          v379 = sub_1BE052C34();
          if (!os_log_type_enabled(v378, v379))
          {
            goto LABEL_55;
          }

          v380 = swift_slowAlloc();
          *v380 = 0;
          v381 = "Attempted to present rewards without date components";
        }

        _os_log_impl(&dword_1BD026000, v378, v379, v381, v380, 2u);
        MEMORY[0x1BFB45F20](v380, -1, -1);
LABEL_55:

        (v544)[1](v377, v543);
LABEL_56:
        v528, v386, v387, v388, v389, v390, v391, v392;
        goto LABEL_57;
      }

      if (a1 != 11)
      {
        if (a1 == 12)
        {
          v168 = [*&v39[v38] fundingSource];
          if (v168)
          {
            v169 = v168;
            KeyPath = swift_getKeyPath();
            v171 = v535;
            *&v535[*(v534 + 32)] = KeyPath;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
            swift_storeEnumTagMultiPayload();
            v172 = v527;
            *v171 = v527;
            *(v171 + 1) = v169;
            v551 = 0;
            v173 = v172;
            v174 = v169;
            sub_1BE051694();
            v175 = v555;
            v171[16] = aBlock;
            *(v171 + 3) = v175;
            *(v171 + 4) = sub_1BD87F37C;
            *(v171 + 5) = 0;
            v171[48] = 0;
            v176 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C020, &qword_1BE0BDDB0));
            v177 = sub_1BE04F894();
            sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
            v178 = v177;
            v179 = sub_1BE052D54();
            v180 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v181 = swift_allocObject();
            v182 = v545;
            v181[2] = v180;
            v181[3] = v182;
            v181[4] = v178;
            v558 = sub_1BD1B6B50;
            v559 = v181;
            aBlock = MEMORY[0x1E69E9820];
            v555 = 1107296256;
            v556 = sub_1BD126964;
            v557 = &block_descriptor_124;
            v183 = _Block_copy(&aBlock);
            v184 = v559;
            v185 = v178;
            v184, v186, v187, v188, v189, v190, v191, v192;
            v193 = v549;
            sub_1BE051F74();
            aBlock = MEMORY[0x1E69E7CC0];
            sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
            sub_1BD14ECDC();
            v195 = v546;
            v194 = v547;
            sub_1BE053664();
            MEMORY[0x1BFB3FDF0](0, v193, v195, v183);
            _Block_release(v183);

            (*(v548 + 8))(v195, v194);
            (*(v526 + 8))(v193, v525);
            v528, v196, v197, v198, v199, v200, v201, v202;

            return;
          }

          goto LABEL_38;
        }

        v332 = *&v39[v38];
        v333 = v527;
        LODWORD(v332) = [v332 isNewAccount];
        v334 = objc_allocWithZone(type metadata accessor for AccountModel(0));
        v335 = sub_1BD1DF0D8(v333, v332);
        type metadata accessor for AccountUserInfoModel(0);
        swift_allocObject();
        v336 = sub_1BD2FA644();
        v337 = *&v336[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account];
        *&v336[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account] = v527;
        v544 = v333;

        v338 = v335;
        v543 = v338;
        sub_1BE048964();
        v339 = v541;
        sub_1BD3C154C(v338, v336, 0, v541);
        v340 = *(*&v39[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC] + *((*MEMORY[0x1E69E7D40] & **&v39[OBJC_IVAR____PKAccountSavingsDetailsViewController_detailsHostingVC]) + class metadata base offset for WrapperHostingController + 16));
        type metadata accessor for ObservableHostingController();
        sub_1BD1B6BA4(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
        sub_1BE048964();
        v341 = sub_1BE04D804();
        v342 = (v339 + *(v539 + 36));
        *v342 = v341;
        v342[1] = v340;
        sub_1BD0DE19C(v339, v540, &qword_1EBD3B198, &qword_1BE0BDD70);
        v343 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C028, &qword_1BE0BDDB8));
        v344 = sub_1BE04F894();
        sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
        v345 = v344;
        v346 = sub_1BE052D54();
        v347 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v348 = swift_allocObject();
        v349 = v545;
        v348[2] = v347;
        v348[3] = v349;
        v348[4] = v345;
        v558 = sub_1BD1B6FF0;
        v559 = v348;
        aBlock = MEMORY[0x1E69E9820];
        v555 = 1107296256;
        v556 = sub_1BD126964;
        v557 = &block_descriptor_154;
        v350 = _Block_copy(&aBlock);
        v351 = v559;
        v352 = v345;
        v351, v353, v354, v355, v356, v357, v358, v359;
        v360 = v549;
        sub_1BE051F74();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
        sub_1BD14ECDC();
        v361 = v546;
        v362 = v547;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v360, v361, v350);
        _Block_release(v350);

        (*(v548 + 8))(v361, v362);
        (*(v526 + 8))(v360, v525);

        v336, v363, v364, v365, v366, v367, v368, v369;
        sub_1BD0DE53C(v339, &qword_1EBD3B198, &qword_1BE0BDD70);
        goto LABEL_45;
      }

      v264 = [v42 savingsDetails];
      if (!v264)
      {
        v382 = v529;
        sub_1BE04D1E4();
        v383 = sub_1BE04D204();
        v384 = sub_1BE052C34();
        if (os_log_type_enabled(v383, v384))
        {
          v385 = swift_slowAlloc();
          *v385 = 0;
          _os_log_impl(&dword_1BD026000, v383, v384, "Attempted to present FCC step up without account details", v385, 2u);
          MEMORY[0x1BFB45F20](v385, -1, -1);
        }

        (v544)[1](v382, v543);
        goto LABEL_56;
      }

      v265 = v264;
      if (([v264 fccStepUpRequired] & 1) == 0 || objc_msgSend(v527, sel_state) == 4)
      {
        v266 = v533;
        sub_1BE04D1E4();
        v267 = sub_1BE04D204();
        v268 = sub_1BE052C34();
        if (os_log_type_enabled(v267, v268))
        {
          v269 = swift_slowAlloc();
          *v269 = 0;
          _os_log_impl(&dword_1BD026000, v267, v268, "Attempted to present FCC step up when its no longer required", v269, 2u);
          MEMORY[0x1BFB45F20](v269, -1, -1);
        }

        (v544)[1](v266, v543);
        v528, v270, v271, v272, v273, v274, v275, v276;

        return;
      }

      v393 = type metadata accessor for SavingsFCCStepUpController();
      v394 = objc_allocWithZone(v393);
      *&v394[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController] = 1;
      v395 = v527;
      *&v394[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account] = v527;
      v553.receiver = v394;
      v553.super_class = v393;
      v396 = v395;
      v397 = objc_msgSendSuper2(&v553, sel_init);
      v398 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v399 = swift_allocObject();
      v399[2] = v398;
      v399[3] = sub_1BD1B6B08;
      v399[4] = v528;
      v400 = *&v397[OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account];
      swift_retain_n();
      swift_retain_n();
      v401 = [v400 savingsDetails];
      if (v401)
      {
        v402 = v401;
        v403 = [v401 fccStepUpDetails];

        if (!v403 || (v404 = [v403 thresholdExceeded], v403, (v404 & 1) == 0))
        {
          v440 = swift_allocObject();
          v440[2] = sub_1BD1B6B88;
          v440[3] = v399;
          sub_1BE048964();
          v441 = sub_1BD8BD4F8();
          if (v441)
          {
            v442 = v441;
            v443 = swift_allocObject();
            *(v443 + 16) = sub_1BD1B6B94;
            *(v443 + 24) = v440;
            v558 = sub_1BD1B6B9C;
            v559 = v443;
            aBlock = MEMORY[0x1E69E9820];
            v555 = 1107296256;
            v556 = sub_1BD14E1D8;
            v557 = &block_descriptor_167;
            v444 = _Block_copy(&aBlock);
            v445 = v559;
            sub_1BE048964();
            v445, v446, v447, v448, v449, v450, v451, v452;
            [v442 nextViewControllerWithCompletion_];
            v440, v453, v454, v455, v456, v457, v458, v459;
            _Block_release(v444);

            v399, v460, v461, v462, v463, v464, v465, v466;
          }

          else
          {
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v468 = Strong;
              [Strong pkui_userInterfaceIdiomSupportsLargeLayouts];

              v399, v469, v470, v471, v472, v473, v474, v475;

              v440, v476, v477, v478, v479, v480, v481, v482;
            }

            else
            {

              v399, v483, v484, v485, v486, v487, v488, v489;

              v440, v490, v491, v492, v493, v494, v495, v496;
            }
          }

          return;
        }

        v405 = type metadata accessor for SavingsFCCStepUpClosureViewController();
        v406 = objc_allocWithZone(v405);
        *&v406[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] = v397;
        v552.receiver = v406;
        v552.super_class = v405;
        v407 = v397;
        v408 = objc_msgSendSuper2(&v552, sel_initWithContext_, 0);
        if (v408)
        {
          v409 = v408;
          v542 = v407;
          v544 = v396;
          v550 = v265;
          v410 = objc_allocWithZone(PKNavigationController);
          v543 = v409;
          v411 = [v410 initWithRootViewController_];
          swift_beginAccess();
          v412 = swift_unknownObjectWeakLoadStrong();
          if (v412)
          {
            v413 = v412;
            v414 = [v412 pkui_userInterfaceIdiomSupportsLargeLayouts];

            if (v414)
            {
              [v411 setModalPresentationStyle_];
            }
          }

          sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
          v415 = v411;
          v416 = sub_1BE052D54();
          v417 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v418 = swift_allocObject();
          v419 = v545;
          v418[2] = v417;
          v418[3] = v419;
          v418[4] = v415;
          v558 = sub_1BD1B6FF0;
          v559 = v418;
          aBlock = MEMORY[0x1E69E9820];
          v555 = 1107296256;
          v556 = sub_1BD126964;
          v557 = &block_descriptor_175;
          v420 = _Block_copy(&aBlock);
          v421 = v559;
          v422 = v415;
          v421, v423, v424, v425, v426, v427, v428, v429;
          v430 = v549;
          sub_1BE051F74();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1BD1B6BA4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
          sub_1BD14ECDC();
          v431 = v546;
          v432 = v547;
          sub_1BE053664();
          MEMORY[0x1BFB3FDF0](0, v430, v431, v420);
          _Block_release(v420);

          (*(v548 + 8))(v431, v432);
          (*(v526 + 8))(v430, v525);

          v399, v433, v434, v435, v436, v437, v438, v439;

          return;
        }
      }

      else
      {

        v528, v497, v498, v499, v500, v501, v502, v503;
        v398, v504, v505, v506, v507, v508, v509, v510;
        __break(1u);
      }

      v528, v511, v512, v513, v514, v515, v516, v517;
      v398, v518, v519, v520, v521, v522, v523, v524;
      __break(1u);
      return;
    }

    v90 = v528;
  }

  v90, v43, v44, v45, v46, v47, v48, v49;
}

uint64_t sub_1BD1B5DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1B5E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_1BD1B6140(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BD1B61AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD1B6214(void *a1, void (**a2)(void, void))
{
  v125 = a1;
  v134 = *MEMORY[0x1E69E9840];
  v124 = sub_1BE04D214();
  v3 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v5 = &v117[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = sub_1BE04BD74();
  v6 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v117[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v117[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v117[-v12];
  v126 = swift_allocObject();
  *(v126 + 16) = a2;
  v14 = objc_allocWithZone(MEMORY[0x1E696EE50]);
  v122 = a2;
  _Block_copy(a2);
  v15 = [v14 init];
  v128 = 0;
  v16 = [v15 canEvaluatePolicy:2 error:&v128];
  v17 = v128;
  if (!v16)
  {
    v79 = v128;
    sub_1BE04D194();
    v80 = sub_1BE04D204();
    v81 = sub_1BE052C54();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = v15;
      v84 = swift_slowAlloc();
      *v82 = 138412290;
      *(v82 + 4) = v79;
      *v84 = v17;
      v85 = v79;
      _os_log_impl(&dword_1BD026000, v80, v81, "Cannot evaluate local authentication policy for Savings interstitial due to error: %@", v82, 0xCu);
      sub_1BD0DE53C(v84, &unk_1EBD3E590, &unk_1BE0B7E50);
      v86 = v84;
      v15 = v83;
      MEMORY[0x1BFB45F20](v86, -1, -1);
      MEMORY[0x1BFB45F20](v82, -1, -1);
    }

    (*(v3 + 8))(v5, v124);
    if (v79)
    {
      v87 = v79;
      v88 = sub_1BE04A844();
    }

    else
    {
      v88 = 0;
    }

    v89 = v126;
    v51 = [objc_opt_self() displayableErrorForError:v88 featureIdentifier:5 genericErrorTitle:0 genericErrorMessage:0];

    if (v51)
    {
      v90 = v51;
      v91 = sub_1BE04A844();
    }

    else
    {
      v91 = 0;
    }

    v92 = swift_allocObject();
    *(v92 + 16) = sub_1BD1B6B00;
    *(v92 + 24) = v89;
    v132 = sub_1BD1B6F78;
    v133 = v92;
    v128 = MEMORY[0x1E69E9820];
    v129 = 1107296256;
    v130 = sub_1BD126964;
    v131 = &block_descriptor_99;
    v93 = _Block_copy(&v128);
    v94 = v133;
    sub_1BE048964();
    v94, v95, v96, v97, v98, v99, v100, v101;
    v102 = PKAlertForDisplayableErrorWithCancelHandler(v91, 0, v93);
    _Block_release(v93);

    if (v102)
    {
      [v125 presentViewController:v102 animated:1 completion:0];
      v89, v103, v104, v105, v106, v107, v108, v109;
    }

    else
    {
      v122[2](v122, 0);
      v89, v110, v111, v112, v113, v114, v115, v116;
    }

    goto LABEL_18;
  }

  v124 = v10;
  v121 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8, &unk_1BE0BD960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v128 = 1021;
  v120 = v17;
  sub_1BE0537C4();
  v19 = v6;
  v20 = *(v6 + 104);
  v20(v13, *MEMORY[0x1E69B80D0], v127);
  v21 = PKPassKitBundle();
  if (!v21)
  {
    _Block_release(v122);
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = sub_1BE04B6F4();
  v25 = v24;

  v26 = *(v19 + 8);
  v26(v13, v127);
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 72) = v23;
  *(inited + 80) = v25;
  v128 = 1037;
  sub_1BE0537C4();
  v27 = v124;
  v118 = *MEMORY[0x1E69B80E0];
  v119 = v20;
  (v20)(v124);
  v28 = PKPassKitBundle();
  if (!v28)
  {
LABEL_20:
    _Block_release(v122);
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  v30 = sub_1BE04B6F4();
  v32 = v31;

  v26(v27, v127);
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 144) = v30;
  *(inited + 152) = v32;
  v128 = 1031;
  sub_1BE0537C4();
  v33 = sub_1BE052404();
  v34 = PKDeviceSpecificLocalizedStringKeyForKey(v33, 0);

  if (!v34)
  {
LABEL_21:
    _Block_release(v122);
    __break(1u);
    goto LABEL_22;
  }

  v35 = v26;
  sub_1BE052434();
  v37 = v36;

  v38 = v123;
  v119(v123, v118, v127);
  v39 = PKPassKitBundle();
  if (v39)
  {
    v40 = v39;
    v41 = sub_1BE04B6F4();
    v43 = v42;
    v37, v42, v44, v45, v46, v47, v48, v49;

    v35(v38, v127);
    *(inited + 240) = MEMORY[0x1E69E6158];
    *(inited + 216) = v41;
    *(inited + 224) = v43;
    v50 = sub_1BD1AB16C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0, &unk_1BE0D5150);
    swift_arrayDestroy();
    v51 = sub_1BE052224();
    v50, v52, v53, v54, v55, v56, v57, v58;
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = sub_1BD1B6B00;
    v61 = v126;
    v60[4] = v126;
    v132 = sub_1BD1B6F70;
    v133 = v60;
    v128 = MEMORY[0x1E69E9820];
    v129 = 1107296256;
    v130 = sub_1BD1AA864;
    v131 = &block_descriptor_107;
    v62 = _Block_copy(&v128);
    v63 = v133;
    sub_1BE048964();
    v63, v64, v65, v66, v67, v68, v69, v70;
    v71 = v121;
    [v121 evaluatePolicy:2 options:v51 reply:v62];

    _Block_release(v62);
    v61, v72, v73, v74, v75, v76, v77, v78;
    v15 = v120;
LABEL_18:

    return;
  }

LABEL_22:
  _Block_release(v122);
  __break(1u);
}

uint64_t sub_1BD1B6BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_20Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t objectdestroy_120Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t objectdestroy_134Tm()
{
  v1 = sub_1BE04A474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v6, v7, v8, v9, v10, v11, v12;

  return swift_deallocObject();
}

void sub_1BD1B6E24(uint64_t a1)
{
  v3 = *(sub_1BE04A474() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD1A9650(a1, v9, v10, v1 + v4, v7, v8, v11);
}

void sub_1BD1B6FF8(uint64_t a1)
{
  sub_1BD1B7F00(319);
  if (v1 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v2 <= 0x3F)
    {
      sub_1BD0FA9D0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD1B70B0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1BE04CF34() - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 40) & ~v6) + *(v5 + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v73 = sub_1BE04DA84();
  v9 = *(v73 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  v14 = *(sub_1BE04AF64() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18 - 1;
  if (v13 <= v18 - 1)
  {
    v20 = v18 - 1;
  }

  else
  {
    v20 = v13;
  }

  if (v17 <= 0x7FFFFFFD)
  {
    v21 = 2147483645;
  }

  else
  {
    v21 = v17;
  }

  v22 = v21 - 1;
  if (v20 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  v25 = v24 - 1;
  v26 = *(a3 + 16);
  v27 = *(v26 - 8);
  v28 = v27;
  v29 = *(v27 + 84);
  v30 = v29 - 1;
  if (!v29)
  {
    v30 = 0;
  }

  if (v25 <= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v24 - 1;
  }

  if (v31 <= 0x7FFFFFFF)
  {
    v32 = 0x7FFFFFFF;
  }

  else
  {
    v32 = v31;
  }

  v33 = *(v14 + 64);
  if (v16)
  {
    v34 = v33;
  }

  else
  {
    v34 = v33 + 1;
  }

  v35 = *(v9 + 80);
  v36 = *(v15 + 80);
  v37 = *(v9 + 64);
  v38 = *(v27 + 80);
  v39 = *(v27 + 64);
  if (v29)
  {
    v40 = v39;
  }

  else
  {
    v40 = v39 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v41 = v36 | 7;
  v42 = v35 | v6 | v36;
  v43 = v42 | 7;
  v72 = v42 + 8;
  v71 = (v35 | 7) + v8 + 2;
  v70 = ((((((v37 + ((v35 + 16) & ~v35) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (v36 | 7) + 16;
  v69 = ((v36 + 10) & ~v36) + v34 + 7;
  v44 = ((((((v42 + 8) & ~(v42 | 7)) + ((((v34 + ((v34 + v36 + ((v36 + 113) & ~v36)) & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v36 + 8 + ((((v69 + ((v70 + (v71 & ~(v35 | 7))) & ~(v36 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v36 | 7)) + 119) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v32 < a2)
  {
    v45 = ((v40 + ((v44 + v38 + ((v42 + 16) & ~v43)) & ~v38)) & 0xFFFFFFFFFFFFFFF8) + 24;
    if ((v45 & 0xFFFFFFF8) != 0)
    {
      v46 = 2;
    }

    else
    {
      v46 = a2 - v32 + 1;
    }

    if (v46 >= 0x10000)
    {
      v47 = 4;
    }

    else
    {
      v47 = 2;
    }

    if (v46 < 0x100)
    {
      v47 = 1;
    }

    if (v46 >= 2)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v49 = *(a1 + v45);
        if (*(a1 + v45))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v49 = *(a1 + v45);
        if (v49)
        {
          goto LABEL_55;
        }
      }
    }

    else if (v48)
    {
      v49 = *(a1 + v45);
      if (*(a1 + v45))
      {
LABEL_55:
        v50 = v49 - 1;
        if ((v45 & 0xFFFFFFF8) != 0)
        {
          v50 = 0;
          v51 = *a1;
        }

        else
        {
          v51 = 0;
        }

        return v32 + (v51 | v50) + 1;
      }
    }
  }

  if ((v31 & 0x80000000) != 0)
  {
    v54 = ((a1 + v43 + 16) & ~v43);
    if (v25 == v32)
    {
      if ((v23 & 0x80000000) == 0)
      {
        v55 = *v54;
        if (*v54 >= 0xFFFFFFFF)
        {
          LODWORD(v55) = -1;
        }

        v56 = v55 + 1;
        goto LABEL_105;
      }

      v58 = (v71 + ((v54 + v72) & ~v43)) & ~(v35 | 7);
      if (v13 == v24)
      {
        if ((v11 & 0x80000000) != 0)
        {
          v60 = (*(v10 + 48))((v35 + 16 + v58) & ~v35, v11, v73);
        }

        else
        {
          v59 = *(((v71 + ((v54 + v72) & ~v43)) & ~(v35 | 7)) + 8);
          if (v59 >= 0xFFFFFFFF)
          {
            LODWORD(v59) = -1;
          }

          v60 = v59 + 1;
        }

        v56 = v60 - 1;
        if (v60 < 2)
        {
          v56 = 0;
        }

        goto LABEL_105;
      }

      v61 = ~v41;
      v62 = ((v70 + v58) & ~v41);
      if (v19 == v24)
      {
        if ((v17 & 0x80000000) == 0)
        {
          v63 = *v62;
          if (*v62 >= 0xFFFFFFFF)
          {
            LODWORD(v63) = -1;
          }

          v64 = v63 + 1;
LABEL_102:
          if (v64 >= 2)
          {
            v56 = v64 - 1;
          }

          else
          {
            v56 = 0;
          }

LABEL_105:
          if (v56 >= 2)
          {
            return v56 - 1;
          }

          else
          {
            return 0;
          }
        }

        v68 = v62 + v36 + 10;
      }

      else
      {
        v65 = (v36 + 8 + ((((v62 + v69) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v61;
        if (v17 <= 0x7FFFFFFD)
        {
          v66 = *(v65 + 16);
          if (v66 >= 0xFFFFFFFF)
          {
            LODWORD(v66) = -1;
          }

          v64 = v66 - 1;
          if (v64 < 0)
          {
            v64 = -1;
          }

          v67 = v64 + 1;
          goto LABEL_100;
        }

        v68 = v36 + 113 + v65;
      }

      v67 = (*(v15 + 48))(v68 & ~v36);
      v64 = v67 - 1;
LABEL_100:
      if (v67 < 2)
      {
        v64 = 0;
      }

      goto LABEL_102;
    }

    if (v29 >= 2)
    {
      v57 = (*(v28 + 48))((v54 + v38 + v44) & ~v38, v29, v26);
      if (v57 >= 2)
      {
        return v57 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v52 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v52) = -1;
  }

  return (v52 + 1);
}

void sub_1BD1B7668(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1BE04CF34() - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 40) & ~v6) + *(v5 + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1BE04DA84() - 8);
  v89 = v9;
  v10 = *(v9 + 84);
  v78 = v10;
  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  v82 = v10;
  v11 = v10 - 1;
  v12 = 0;
  v13 = *(sub_1BE04AF64() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v80 = v17;
  v18 = v17 - 1;
  v81 = v18;
  if (v11 > v18)
  {
    v18 = v11;
  }

  if (v16 <= 0x7FFFFFFD)
  {
    v19 = 2147483645;
  }

  else
  {
    v19 = v16;
  }

  v79 = v19;
  v20 = v19 - 1;
  if (v18 <= v20)
  {
    v18 = v20;
  }

  v83 = v11;
  v84 = v18;
  if (v18 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v18;
  }

  v85 = *(a4 + 16);
  v22 = *(v85 - 8);
  v23 = *(v22 + 84);
  v24 = *(v13 + 64);
  v25 = *(v9 + 80);
  v76 = v14;
  v26 = *(v14 + 80);
  v27 = *(v22 + 80);
  v86 = v21;
  v28 = v21 - 1;
  v29 = v23 - 1;
  if (!v23)
  {
    v29 = 0;
  }

  if (v28 <= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v21 - 1;
  }

  if (v30 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v30;
  }

  if (v15)
  {
    v32 = v24;
  }

  else
  {
    v32 = v24 + 1;
  }

  v33 = v25 | v6;
  v34 = v26 | 7;
  v35 = v33 | v26;
  v36 = v35 | 7;
  v37 = v35 + 8;
  v38 = (v25 | 7) + v8 + 2;
  v39 = ((((((*(v9 + 64) + ((v25 + 16) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v40 = v39 + (v26 | 7);
  v77 = ((v26 + 10) & ~v26) + v32;
  v41 = (v26 + 8 + ((((v77 + 7 + ((v40 + (v38 & ~(v25 | 7))) & ~(v26 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v26 | 7);
  v42 = ((v32 + v26 + ((v26 + 113) & ~v26)) & ~v26) + v32;
  v43 = (v35 + 8) & ~(v35 | 7);
  v44 = ((((v43 + ((((v42 + 7) & 0xFFFFFFFFFFFFFFF8) + v41 + 119) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v45 = (v44 + v27 + ((v35 + 16) & ~(v35 | 7))) & ~v27;
  if (v23)
  {
    v46 = *(*(v85 - 8) + 64);
  }

  else
  {
    v46 = *(*(v85 - 8) + 64) + 1;
  }

  v47 = ((v45 + v46) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v31 < a3)
  {
    if (((v45 + v46) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v48 = a3 - v31 + 1;
    }

    else
    {
      v48 = 2;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 >= 2)
    {
      v12 = v49;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v31)
  {
    if (v47)
    {
      v50 = 1;
    }

    else
    {
      v50 = a2 - v31;
    }

    if (v47)
    {
      v51 = ~v31 + a2;
      bzero(a1, v47);
      *a1 = v51;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v47) = v50;
      }

      else
      {
        *(a1 + v47) = v50;
      }
    }

    else if (v12)
    {
      *(a1 + v47) = v50;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v47) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_66;
    }

    *(a1 + v47) = 0;
  }

  else if (v12)
  {
    *(a1 + v47) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_66;
  }

  if (!a2)
  {
    return;
  }

LABEL_66:
  if ((v30 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      a1[1] = 0;
    }

    else
    {
      *a1 = a2 - 1;
    }

    return;
  }

  v52 = ((a1 + v36 + 16) & ~v36);
  if (v28 == v31)
  {
    if (a2 >= v86)
    {
      v56 = (((v43 + ((((v42 + 7) & 0xFFFFFFF8) + v41 + 119) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8;
      if (v56 != -8)
      {
        bzero(((a1 + v36 + 16) & ~v36), (v56 + 8));
        *v52 = a2 - v86;
      }
    }

    else
    {
      v53 = a2 + 1;
      if ((v84 & 0x80000000) == 0)
      {
        if ((v53 & 0x80000000) != 0)
        {
          v54 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v54 = a2;
        }

        *v52 = v54;
        return;
      }

      v57 = ((v38 + ((v52 + v37) & ~v36)) & ~(v25 | 7));
      if (v83 == v86)
      {
        v58 = a2 + 2;
        if (v58 > v82)
        {
          if (v39)
          {
            v59 = v53 - v82;
            bzero(v57, v39);
            *v57 = v59;
          }

          return;
        }

        if ((v78 & 0x80000000) == 0)
        {
          if ((v58 & 0x80000000) != 0)
          {
            *v57 = a2 - 2147483646;
            v57[1] = 0;
          }

          else
          {
            v57[1] = v53;
          }

          return;
        }

        v69 = *(v89 + 56);
        v70 = (v57 + v25 + 16) & ~v25;
        goto LABEL_141;
      }

      v60 = ~v26;
      v61 = (v57 + v40) & ~v34;
      if (v81 == v86)
      {
        v62 = a2 + 2;
        if (a2 + 2 > v80)
        {
          if (v77 <= 3)
          {
            v63 = ~(-1 << (8 * v77));
          }

          else
          {
            v63 = -1;
          }

          if (v77)
          {
            v64 = v63 & (v53 - v80);
            if (v77 <= 3)
            {
              v65 = ((v26 + 10) & ~v26) + v32;
            }

            else
            {
              v65 = 4;
            }

            bzero(((v57 + v40) & ~v34), v77);
            if (v65 > 2)
            {
              if (v65 == 3)
              {
                *v61 = v64;
                *(v61 + 2) = BYTE2(v64);
              }

              else
              {
                *v61 = v64;
              }
            }

            else if (v65 == 1)
            {
              *v61 = v64;
            }

            else
            {
              *v61 = v64;
            }
          }

          return;
        }

        if ((v16 & 0x80000000) == 0)
        {
          if ((v62 & 0x80000000) != 0)
          {
            v53 = a2 - 2147483646;
          }

          *v61 = v53;
          return;
        }

        v71 = ((v26 + 10 + v61) & v60);
        if (v62 > v16)
        {
          if (v32 <= 3)
          {
            v75 = ~(-1 << (8 * v32));
          }

          else
          {
            v75 = -1;
          }

          if (!v32)
          {
            return;
          }

          v73 = v75 & (v53 - v16);
          if (v32 <= 3)
          {
            v74 = v32;
          }

          else
          {
            v74 = 4;
          }

          bzero(v71, v32);
          if (v74 <= 2)
          {
            if (v74 != 1)
            {
              goto LABEL_139;
            }

            goto LABEL_127;
          }

          goto LABEL_149;
        }

        goto LABEL_140;
      }

      v66 = ((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34);
      if (a2 + 2 <= v79)
      {
        if (v16 <= 0x7FFFFFFD)
        {
          if (a2 > 0x7FFFFFFB)
          {
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 8) = 0u;
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 0x38) = 0;
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 0x28) = 0u;
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 0x18) = 0u;
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 8) = a2 - 2147483644;
          }

          else
          {
            *(((v26 + 8 + ((((v77 + 7 + v61) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + 0x10) = a2 + 3;
          }

          return;
        }

        v71 = ((v66 + v26 + 113) & v60);
        if (a2 + 2 > v16)
        {
          if (v32 <= 3)
          {
            v72 = ~(-1 << (8 * v32));
          }

          else
          {
            v72 = -1;
          }

          if (!v32)
          {
            return;
          }

          v73 = v72 & (v53 - v16);
          if (v32 <= 3)
          {
            v74 = v32;
          }

          else
          {
            v74 = 4;
          }

          bzero(v71, v32);
          if (v74 <= 2)
          {
            if (v74 != 1)
            {
LABEL_139:
              *v71 = v73;
              return;
            }

LABEL_127:
            *v71 = v73;
            return;
          }

LABEL_149:
          if (v74 == 3)
          {
            *v71 = v73;
            v71[2] = BYTE2(v73);
          }

          else
          {
            *v71 = v73;
          }

          return;
        }

LABEL_140:
        v69 = *(v76 + 56);
        v58 = a2 + 3;
        v70 = v71;
LABEL_141:

        v69(v70, v58);
        return;
      }

      v67 = (v42 + 7) & 0xFFFFFFF8;
      if (v67 != -8)
      {
        v68 = v53 - v79;
        bzero(v66, (v67 + 8));
        *v66 = v68;
      }
    }
  }

  else if (v23 >= 2)
  {
    v55 = *(v22 + 56);

    v55((v52 + v27 + v44) & ~v27, a2 + 1, v23, v85);
  }
}

void sub_1BD1B7F00(uint64_t a1)
{
  if (!qword_1EBD36458)
  {
    type metadata accessor for PeerPaymentModel(255);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD36458);
    }
  }
}

uint64_t sub_1BD1B7F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0C8, &unk_1BE0BDE90);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  v6 = *(a1 + 16);
  v7 = sub_1BD0DE4F4(&qword_1EBD3C0D0, &qword_1EBD3C0C8, &unk_1BE0BDE90, MEMORY[0x1E6981870]);
  v8 = sub_1BD1B9AAC();
  v9 = *(a1 + 24);
  v59 = MEMORY[0x1E6981748];
  v60 = v4;
  v61 = v5;
  v62 = v6;
  v50 = v6;
  v63 = MEMORY[0x1E6981710];
  v64 = v7;
  v65 = v8;
  v66 = v9;
  v49 = v9;
  sub_1BE04C6F4();
  sub_1BE0500D4();
  v10 = sub_1BE04EBD4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v48 - v15;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1BD0F15A0();
  v57 = WitnessTable;
  v58 = v17;
  v52 = swift_getWitnessTable();
  v18 = sub_1BE051754();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  v25 = sub_1BE04F9B4();
  v26 = a1;
  v51 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v54 = &v48 - v29;
  v30 = &v2[*(v28 + 48)];
  v31 = *v30;
  if (*v30)
  {
    v48 = &v48;
    v32 = v30[1];
    MEMORY[0x1EEE9AC00](v28);
    v33 = v49;
    *(&v48 - 4) = v50;
    *(&v48 - 3) = v33;
    *(&v48 - 2) = v2;
    sub_1BD0D44B8(v31, v32);
    sub_1BE048964();
    v50 = v27;
    v34 = v52;
    sub_1BE051704();
    swift_getWitnessTable();
    sub_1BD147308();
    v35 = *(v19 + 8);
    v35(v21, v18);
    sub_1BD147308();
    v36 = v34;
    v27 = v50;
    sub_1BD13A700(v21, v18);
    sub_1BD0D4744(v31, v32, v37, v38, v39, v40, v41, v42);
    v35(v21, v18);
    v35(v24, v18);
  }

  else
  {
    sub_1BD1B8770(v28, v13);
    v43 = v48;
    v36 = v52;
    sub_1BD147308();
    v44 = *(v11 + 8);
    v44(v13, v10);
    sub_1BD147308();
    swift_getWitnessTable();
    sub_1BD13A7F8(v13, v18, v10);
    v44(v13, v10);
    v44(v43, v10);
  }

  v55 = swift_getWitnessTable();
  v56 = v36;
  v45 = v51;
  swift_getWitnessTable();
  v46 = v54;
  sub_1BD147308();
  return (*(v27 + 1))(v46, v45);
}

uint64_t sub_1BD1B8524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0C8, &unk_1BE0BDE90);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  v7 = sub_1BD0DE4F4(&qword_1EBD3C0D0, &qword_1EBD3C0C8, &unk_1BE0BDE90, MEMORY[0x1E6981870]);
  v8 = sub_1BD1B9AAC();
  v22[2] = MEMORY[0x1E6981748];
  v22[3] = v5;
  v22[4] = v6;
  v22[5] = a2;
  v22[6] = MEMORY[0x1E6981710];
  v22[7] = v7;
  v22[8] = v8;
  v22[9] = a3;
  sub_1BE04C6F4();
  sub_1BE0500D4();
  v9 = sub_1BE04EBD4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v17 = type metadata accessor for BankAccountMainItem(0, a2, a3, v16);
  sub_1BD1B8770(v17, v12);
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1BD0F15A0();
  v22[0] = WitnessTable;
  v22[1] = v19;
  swift_getWitnessTable();
  sub_1BD147308();
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_1BD147308();
  return (v20)(v15, v9);
}

uint64_t sub_1BD1B8770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = sub_1BE04C624();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BE04C744();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0C8, &unk_1BE0BDE90);
  v44 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  v43 = v7;
  v8 = *(a1 + 16);
  v9 = sub_1BD0DE4F4(&qword_1EBD3C0D0, &qword_1EBD3C0C8, &unk_1BE0BDE90, MEMORY[0x1E6981870]);
  v42 = v9;
  v41 = sub_1BD1B9AAC();
  v10 = *(a1 + 24);
  v65 = MEMORY[0x1E6981748];
  v66 = v6;
  v67 = v7;
  v68 = v8;
  v69 = MEMORY[0x1E6981710];
  v70 = v9;
  v71 = v41;
  v72 = v10;
  v11 = sub_1BE04C6F4();
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  sub_1BE0500D4();
  v14 = sub_1BE04EBD4();
  v51 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v60 = v8;
  v61 = v10;
  v62 = v2;
  v57 = v8;
  v58 = v10;
  v21 = *(v2 + *(a1 + 48));
  v22 = *(v46 + 104);
  v59 = v2;
  if (v21)
  {
    v23 = MEMORY[0x1E69BC950];
  }

  else
  {
    v23 = MEMORY[0x1E69BC940];
  }

  v22(v45, *v23, v47, v18);
  v54 = v8;
  v55 = v10;
  v24 = *(v2 + *(a1 + 44));
  v25 = *(v50 + 104);
  v56 = v2;
  if (v24)
  {
    v26 = MEMORY[0x1E69BC910];
  }

  else
  {
    v26 = MEMORY[0x1E69BC908];
  }

  v25(v48, *v26, v52);
  sub_1BE04C684();
  sub_1BE052434();
  v28 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_1BE050DE4();
  v28, v30, v31, v32, v33, v34, v35, v36;
  (*(v49 + 8))(v13, v11);
  v37 = sub_1BD0F15A0();
  v63 = WitnessTable;
  v64 = v37;
  swift_getWitnessTable();
  sub_1BD147308();
  v38 = *(v51 + 8);
  v38(v16, v14);
  sub_1BD147308();
  return (v38)(v20, v14);
}

uint64_t sub_1BD1B8D4C@<X0>(uint64_t *a2@<X8>)
{
  v3 = PKPassKitUIBundle();
  result = sub_1BE0515F4();
  *a2 = result;
  return result;
}

uint64_t sub_1BD1B8DA4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1BE04F7C4();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E0, &unk_1BE0BDEA0);
  return sub_1BD1B8E14(a2, a3, a4 + *(v7 + 44));
}

uint64_t sub_1BD1B8E14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0F0, &qword_1BE0BDEB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  type metadata accessor for BankAccountMainItem(0, a1, a2, v19);
  sub_1BD1B9104();
  sub_1BE052434();
  v21 = v20;
  sub_1BD1B9BC4();
  sub_1BE050DE4();
  v21, v22, v23, v24, v25, v26, v27, v28;
  sub_1BD0DE53C(v7, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD1B92F0();
  sub_1BE052434();
  v30 = v29;
  sub_1BE050DE4();
  v30, v31, v32, v33, v34, v35, v36, v37;
  sub_1BD0DE53C(v7, &qword_1EBD3C0E8, &qword_1BE0C4010);
  sub_1BD0DE19C(v18, v12, &qword_1EBD3C0F0, &qword_1BE0BDEB0);
  v38 = v42;
  sub_1BD0DE19C(v15, v42, &qword_1EBD3C0F0, &qword_1BE0BDEB0);
  v39 = v43;
  sub_1BD0DE19C(v12, v43, &qword_1EBD3C0F0, &qword_1BE0BDEB0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C110, &qword_1BE0BDEB8);
  sub_1BD0DE19C(v38, v39 + *(v40 + 48), &qword_1EBD3C0F0, &qword_1BE0BDEB0);
  sub_1BD0DE53C(v15, &qword_1EBD3C0F0, &qword_1BE0BDEB0);
  sub_1BD0DE53C(v18, &qword_1EBD3C0F0, &qword_1BE0BDEB0);
  sub_1BD0DE53C(v38, &qword_1EBD3C0F0, &qword_1BE0BDEB0);
  return sub_1BD0DE53C(v12, &qword_1EBD3C0F0, &qword_1BE0BDEB0);
}

void sub_1BD1B9104()
{
  v1 = [*v0 bankName];
  if (v1)
  {
    v2 = v1;
    sub_1BE052434();
  }

  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1BE050324();
  v11 = sub_1BE0505F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v10, v12, v14, v16, v18, v19, v20, v21;
  sub_1BD0DDF10(v3, v5, (v7 & 1), v22, v23, v24, v25, v26);
  v9, v27, v28, v29, v30, v31, v32, v33;
  v34 = sub_1BE051224();
  v35 = sub_1BE050564();
  v37 = v36;
  LOBYTE(v10) = v38;
  v40 = v39;
  v34, v36, v38, v39, v41, v42, v43, v44;
  sub_1BD0DDF10(v11, v13, (v15 & 1), v45, v46, v47, v48, v49);
  v17, v50, v51, v52, v53, v54, v55, v56;
  KeyPath = swift_getKeyPath();
  sub_1BE052434();
  v58 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
  sub_1BD1B9C50();
  sub_1BE050DE4();
  v58, v59, v60, v61, v62, v63, v64, v65;
  sub_1BD0DDF10(v35, v37, (v10 & 1), v66, v67, v68, v69, v70);
  KeyPath, v71, v72, v73, v74, v75, v76, v77;
  v40, v78, v79, v80, v81, v82, v83, v84;
}

void sub_1BD1B92F0()
{
  sub_1BD41F634(*v0);
  sub_1BD0DDEBC();
  v1 = sub_1BE0506C4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BE0502C4();
  v9 = sub_1BE0505F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v8, v10, v12, v14, v16, v17, v18, v19;
  sub_1BD0DDF10(v1, v3, (v5 & 1), v20, v21, v22, v23, v24);
  v7, v25, v26, v27, v28, v29, v30, v31;
  v32 = sub_1BE051234();
  v33 = sub_1BE050564();
  v35 = v34;
  LOBYTE(v8) = v36;
  v38 = v37;
  v32, v34, v36, v37, v39, v40, v41, v42;
  sub_1BD0DDF10(v9, v11, (v13 & 1), v43, v44, v45, v46, v47);
  v15, v48, v49, v50, v51, v52, v53, v54;
  KeyPath = swift_getKeyPath();
  sub_1BE052434();
  v56 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
  sub_1BD1B9C50();
  sub_1BE050DE4();
  v56, v57, v58, v59, v60, v61, v62, v63;
  sub_1BD0DDF10(v33, v35, (v8 & 1), v64, v65, v66, v67, v68);
  KeyPath, v69, v70, v71, v72, v73, v74, v75;
  v38, v76, v77, v78, v79, v80, v81, v82;
}

uint64_t sub_1BD1B94A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v110 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  v9 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v110 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v110 - v12;
  v14 = type metadata accessor for PeerPaymentModel(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BankAccountMainItem(0, a2, a3, v18);
  sub_1BD0DE19C(a1 + *(v19 + 36), v13, &qword_1EBD45480, &unk_1BE0B8C30);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD0DE53C(v13, &qword_1EBD45480, &unk_1BE0B8C30);
LABEL_8:
    v105 = 1;
    v106 = v117;
    return (*(v9 + 56))(v106, v105, 1, v116);
  }

  sub_1BD1B9B60(v13, v17);
  if (v17[*(v14 + 52)] != 1)
  {
    sub_1BD1104F4(v17);
    goto LABEL_8;
  }

  v20 = *(a1 + 8);
  if (v20 && (v21 = [v20 formattedStringValue]) != 0)
  {
    v22 = v21;
    v23 = sub_1BE052434();
    v25 = v24;

    v118 = v23;
    v119 = v25;
    sub_1BD0DDEBC();
    v26 = sub_1BE0506C4();
    v28 = v27;
    LOBYTE(v25) = v29;
    v31 = v30;
    v32 = sub_1BE0502C4();
    v111 = sub_1BE0505F4();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v32, v33, v35, v37, v39, v40, v41, v42;
    sub_1BD0DDF10(v26, v28, (v25 & 1), v43, v44, v45, v46, v47);
    v31, v48, v49, v50, v51, v52, v53, v54;
    v55 = sub_1BE051234();
    v56 = v111;
    v57 = v38;
    v58 = sub_1BE050564();
    v60 = v59;
    LOBYTE(v28) = v61;
    v110 = v62;
    v55, v59, v61, v62, v63, v64, v65, v66;
    sub_1BD0DDF10(v56, v34, (v36 & 1), v67, v68, v69, v70, v71);
    v57, v72, v73, v74, v75, v76, v77, v78;
    v118 = v58;
    v119 = v60;
    v79 = v60;
    v120 = v28 & 1;
    v80 = v110;
    v121 = v110;
    sub_1BE052434();
    v82 = v81;
    v83 = v112;
    sub_1BE050DE4();
    v82, v84, v85, v86, v87, v88, v89, v90;
    sub_1BD0DDF10(v58, v79, (v28 & 1), v91, v92, v93, v94, v95);
    v80, v96, v97, v98, v99, v100, v101, v102;
    sub_1BD1104F4(v17);
    v103 = v113;
    sub_1BD0DE204(v83, v113, &qword_1EBD452C0, &qword_1BE0B7620);
    v104 = 0;
  }

  else
  {
    sub_1BD1104F4(v17);
    v104 = 1;
    v103 = v113;
  }

  (*(v114 + 56))(v103, v104, 1, v115);
  v107 = v103;
  v108 = v117;
  sub_1BD0DE204(v107, v117, &unk_1EBD5BB60, &qword_1BE0C4580);
  v106 = v108;
  v105 = 0;
  return (*(v9 + 56))(v106, v105, 1, v116);
}

uint64_t sub_1BD1B996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE0534B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  type metadata accessor for BankAccountMainItem(0, a2, a3, v9);
  v11[1] = a3;
  swift_getWitnessTable();
  sub_1BD147308();
  sub_1BD147308();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BD1B9AAC()
{
  result = qword_1EBD3C0D8;
  if (!qword_1EBD3C0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60, &qword_1BE0C4580);
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C0D8);
  }

  return result;
}

uint64_t sub_1BD1B9B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1B9BC4()
{
  result = qword_1EBD3C0F8;
  if (!qword_1EBD3C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
    sub_1BD1B9C50();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C0F8);
  }

  return result;
}

unint64_t sub_1BD1B9C50()
{
  result = qword_1EBD3C100;
  if (!qword_1EBD3C100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C108, &unk_1BE0C28D0);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C100);
  }

  return result;
}

uint64_t AccountAutomaticPaymentsSetupCompleteView.init(model:dismissAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BE051694();
  *a4 = v9;
  *(a4 + 8) = v10;
  result = sub_1BE051694();
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t AccountAutomaticPaymentsSetupCompleteView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C118, &qword_1BE0BDF10);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C120, &qword_1BE0BDF18);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19[-v5];
  v7 = v0[1];
  v23 = *v0;
  v24 = v7;
  v25 = v0[2];
  v26 = *(v0 + 6);
  v21 = &v23;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C128, &qword_1BE0BDF20);
  sub_1BD1BA234();
  sub_1BE04E304();
  v8 = swift_allocObject();
  v9 = v24;
  *(v8 + 16) = v23;
  *(v8 + 32) = v9;
  *(v8 + 48) = v25;
  *(v8 + 64) = v26;
  v10 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C158, &qword_1BE0BDF48) + 36)];
  sub_1BE04E7B4();
  sub_1BD1BB688(&v23, v22);
  sub_1BE0528B4();
  *v10 = &unk_1BE0BDF40;
  v10[1] = v8;
  v11 = swift_allocObject();
  v12 = v24;
  *(v11 + 16) = v23;
  *(v11 + 32) = v12;
  *(v11 + 48) = v25;
  *(v11 + 64) = v26;
  v13 = &v3[*(v1 + 36)];
  sub_1BD1BB688(&v23, v22);
  sub_1BE0528B4();
  *v13 = &unk_1BE0BDF58;
  v13[1] = v11;
  v20 = &v23;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C160, &qword_1BE0BDF60);
  sub_1BD1BC00C();
  v14 = sub_1BD1BC1B0();
  v22[0] = &type metadata for SetupFooterView;
  v22[1] = v14;
  swift_getOpaqueTypeConformance2();
  sub_1BE050954();
  sub_1BD0DE53C(v3, &qword_1EBD3C118, &qword_1BE0BDF10);
  v15 = sub_1BE04EC54();
  v16 = sub_1BE0501F4();
  v17 = &v6[*(v4 + 36)];
  *v17 = v15;
  v17[8] = v16;
  sub_1BD1BC204();
  sub_1BE050E74();
  return sub_1BD0DE53C(v6, &qword_1EBD3C120, &qword_1BE0BDF18);
}

uint64_t sub_1BD1BA0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1A0, &unk_1BE0BE038);
  sub_1BD1BA378(a1, a2 + *(v4 + 44));
  v5 = sub_1BE0501C4();
  if (qword_1EBD36D58 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C140, &qword_1BE0BDF28) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C128, &qword_1BE0BDF20);
  v25 = a2 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

unint64_t sub_1BD1BA234()
{
  result = qword_1EBD3C130;
  if (!qword_1EBD3C130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C128, &qword_1BE0BDF20);
    sub_1BD1BA2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C130);
  }

  return result;
}

unint64_t sub_1BD1BA2C0()
{
  result = qword_1EBD3C138;
  if (!qword_1EBD3C138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C140, &qword_1BE0BDF28);
    sub_1BD0DE4F4(&qword_1EBD3C148, &qword_1EBD3C150, &qword_1BE0BDF30, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C138);
  }

  return result;
}

uint64_t sub_1BD1BA378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for SetupAttentionView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v77 - v8;
  v84 = sub_1BE04AA64();
  v10 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1A8, &qword_1BE0BE048);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v90 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1B0, &qword_1BE0BE050);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v86 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - v20;
  *v21 = sub_1BE04F504();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1B8, &qword_1BE0BE058);
  sub_1BD1BA9D8(a1, &v21[*(v22 + 44)]);
  v23 = *(a1 + 32);
  sub_1BDA2493C();
  *&v93 = v24;
  *(&v93 + 1) = v25;
  sub_1BD0DDEBC();
  v26 = sub_1BE0506C4();
  v87 = v27;
  v88 = v26;
  v85 = v28;
  v89 = v29;
  v93 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v30 = 1;
  if (v92 == 1)
  {
    sub_1BD1BC520();
    sub_1BE052C04();
    v32 = v31;
    sub_1BE04AA54();
    v32, v33, v34, v35, v36, v37, v38, v39;
    if ((*(v10 + 48))(v9, 1, v84) == 1)
    {
      sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
      v30 = 1;
    }

    else
    {
      v81 = *(v10 + 32);
      v40 = v84;
      v81(v83, v9, v84);
      v41 = *(v23 + 48);
      v82 = v16;
      [v41 featureIdentifier];
      v42 = sub_1BE04C124();
      v79 = v43;
      v80 = v42;
      [v41 featureIdentifier];
      v44 = sub_1BE04C124();
      v77 = v45;
      v78 = v44;
      [v41 featureIdentifier];
      v46 = sub_1BE04C124();
      v48 = v47;
      v49 = *(v3 + 32);
      v81(&v6[v49], v83, v40);
      (*(v10 + 56))(&v6[v49], 0, 1, v40);
      *v6 = xmmword_1BE0BDEF0;
      *(v6 + 2) = 0;
      v6[24] = 0;
      v50 = v79;
      *(v6 + 4) = v80;
      *(v6 + 5) = v50;
      v51 = v77;
      *(v6 + 6) = v78;
      *(v6 + 7) = v51;
      *(v6 + 8) = v46;
      *(v6 + 9) = v48;
      v16 = v82;
      sub_1BD1BC56C(v6, v82);
      v30 = 0;
    }
  }

  (*(v4 + 56))(v16, v30, 1, v3);
  v52 = v86;
  sub_1BD0DE19C(v21, v86, &qword_1EBD3C1B0, &qword_1BE0BE050);
  v53 = v90;
  sub_1BD0DE19C(v16, v90, &qword_1EBD3C1A8, &qword_1BE0BE048);
  v54 = v91;
  sub_1BD0DE19C(v52, v91, &qword_1EBD3C1B0, &qword_1BE0BE050);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1C0, &unk_1BE0BE060);
  v56 = v54 + v55[12];
  v57 = v21;
  v59 = v87;
  v58 = v88;
  *v56 = v88;
  *(v56 + 8) = v59;
  v60 = (v85 & 1);
  *(v56 + 16) = v60;
  v61 = v89;
  *(v56 + 24) = v89;
  v62 = v54 + v55[16];
  *v62 = 0x403A000000000000;
  *(v62 + 8) = 0;
  sub_1BD0DE19C(v53, v54 + v55[20], &qword_1EBD3C1A8, &qword_1BE0BE048);
  v63 = v54 + v55[24];
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_1BD0D7F18(v58, v59, v60);
  sub_1BE048C84();
  sub_1BD0DE53C(v16, &qword_1EBD3C1A8, &qword_1BE0BE048);
  sub_1BD0DE53C(v57, &qword_1EBD3C1B0, &qword_1BE0BE050);
  sub_1BD0DE53C(v53, &qword_1EBD3C1A8, &qword_1BE0BE048);
  sub_1BD0DDF10(v58, v59, v60, v64, v65, v66, v67, v68);
  v61, v69, v70, v71, v72, v73, v74, v75;
  return sub_1BD0DE53C(v52, &qword_1EBD3C1B0, &qword_1BE0BE050);
}

void sub_1BD1BA9D8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = sub_1BE051F34();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BE051EF4();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D8, &qword_1BE0BE070);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v60 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1E0, &qword_1BE0BE078);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1E8, &unk_1BE0BE080);
  MEMORY[0x1EEE9AC00](v61);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - v19;
  v68 = a1;
  [*(*(a1 + 32) + 48) featureIdentifier];
  *&v76 = sub_1BE04C124();
  *(&v76 + 1) = v21;
  sub_1BD0DDEBC();
  v22 = sub_1BE0506C4();
  v64 = v23;
  v65 = v22;
  v62 = v24;
  v66 = v25;
  v26 = sub_1BE051574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1F0, &qword_1BE1089E0);
  sub_1BE04EA34();
  *v11 = v26;
  v27 = sub_1BE0503E4();
  KeyPath = swift_getKeyPath();
  v29 = (v11 + *(v9 + 36));
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = sub_1BD1BC5D0();
  sub_1BE050EA4();
  sub_1BD0DE53C(v11, &qword_1EBD3C1D8, &qword_1BE0BE070);
  v31 = *MEMORY[0x1E697E6C0];
  v32 = sub_1BE04EB24();
  (*(*(v32 - 8) + 104))(v8, v31, v32);
  sub_1BD1BC740(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  if (sub_1BE052334())
  {
    *&v76 = v9;
    *(&v76 + 1) = v30;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    sub_1BE050B34();
    sub_1BD0DE53C(v8, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
    (*(v13 + 8))(v15, v12);
    v33 = v63;
    sub_1BE051EE4();
    v76 = *v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    v34 = v75;
    v35 = v70;
    sub_1BE051F24();
    v36 = &v20[*(v61 + 36)];
    v37 = sub_1BE050124();
    v39 = v72;
    v38 = v73;
    (*(v72 + 16))(&v36[*(v37 + 20)], v35, v73);
    sub_1BD1BC740(&qword_1EBD3C228, MEMORY[0x1E69820F0], MEMORY[0x1E69820E8]);
    v40 = v71;
    sub_1BE051ED4();
    (*(v39 + 8))(v35, v38);
    (*(v69 + 8))(v33, v40);
    v36[*(v37 + 24)] = v34;
    v41 = v67;
    sub_1BD0DE19C(v20, v67, &qword_1EBD3C1E8, &unk_1BE0BE080);
    v42 = v74;
    v44 = v64;
    v43 = v65;
    *v74 = v65;
    v42[1] = v44;
    v45 = (v62 & 1);
    *(v42 + 16) = v62 & 1;
    v46 = v66;
    v42[3] = v66;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C230, &unk_1BE0BE0D0);
    sub_1BD0DE19C(v41, v42 + *(v47 + 48), &qword_1EBD3C1E8, &unk_1BE0BE080);
    sub_1BD0D7F18(v43, v44, v45);
    sub_1BE048C84();
    sub_1BD0DE53C(v20, &qword_1EBD3C1E8, &unk_1BE0BE080);
    sub_1BD0DE53C(v41, &qword_1EBD3C1E8, &unk_1BE0BE080);
    sub_1BD0DDF10(v43, v44, v45, v48, v49, v50, v51, v52);
    v46, v53, v54, v55, v56, v57, v58, v59;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD1BB0CC(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1BE053924();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB1C4, v4, v3);
}

uint64_t sub_1BD1BB1C4()
{
  v1 = sub_1BE053DB4();
  v3 = v2;
  sub_1BE053C44();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1BD1BB2A4;

  return sub_1BD60F4D4(v1, v3, 0, 0, 1);
}

uint64_t sub_1BD1BB2A4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1BD1BB444;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v9 = sub_1BD1BB460;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BD1BB460(uint64_t a1)
{
  *(v1 + 104) = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB4EC, v3, v2);
}

uint64_t sub_1BD1BB4EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 32);
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 16) = *v9;
  *(v8 + 112) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v10 = *(v8 + 80);
  v11 = *(v8 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB588, v10, v11);
}

uint64_t sub_1BD1BB588(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD1BB5F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD1BB0CC(v0 + 16);
}

uint64_t sub_1BD1BB6C0(uint64_t a1)
{
  v1[23] = a1;
  v1[24] = sub_1BE0528A4();
  v1[25] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[26] = v3;
  v1[27] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB75C, v3, v2);
}

uint64_t sub_1BD1BB75C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[28] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_1BD1BB8A0;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C198, &qword_1BE0BE030);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD1BD93C;
    v0[13] = &block_descriptor_17;
    v0[14] = v3;
    [v2 authorizationStatusWithCompletion_];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BD1BB8A0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1BD1BB9A8, v2, v1);
}

uint64_t sub_1BD1BB9A8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  if (v2 != 1 || v1 == 2)
  {
    *(v0 + 200), v3, v4, v5, v6, v7, v8, v9;
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD1BBA5C, 0, 0);
  }
}

uint64_t sub_1BD1BBA5C(uint64_t a1)
{
  *(v1 + 232) = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1BBAE8, v3, v2);
}

uint64_t sub_1BD1BBAE8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 184);
  *(v8 + 232), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 144) = *(v9 + 16);
  *(v8 + 80) = *(v9 + 16);
  *(v8 + 176) = *(v8 + 152);
  sub_1BD0DE19C(v8 + 176, v8 + 160, &unk_1EBD4EF10, &qword_1BE0C2670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v10 = *(v8 + 240);
  *(v8 + 160) = *(v8 + 144);
  *(v8 + 241) = (v10 & 1) == 0;
  sub_1BE0516B4();
  sub_1BD0DE53C(v8 + 144, &qword_1EBD54350, &unk_1BE0B8D00);
  v11 = *(v8 + 208);
  v12 = *(v8 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1BD1BBBF0, v11, v12);
}

uint64_t sub_1BD1BBBF0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 200), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD1BBC50()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD126968;

  return sub_1BD1BB6C0(v0 + 16);
}

id sub_1BD1BBCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = sub_1BE04F714();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B80D0], v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v7 + 8))(v10, v6);
    v16 = swift_allocObject();
    v17 = *(a1 + 16);
    *(v16 + 16) = *a1;
    *(v16 + 32) = v17;
    *(v16 + 48) = *(a1 + 32);
    *(v16 + 64) = *(a1 + 48);
    sub_1BD1BB688(a1, v26);
    if (qword_1EBD36ED8 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBDAB648;
    v19 = qword_1EBD36EE0;
    sub_1BE048964();
    if (v19 != -1)
    {
      swift_once();
    }

    *&v22 = v13;
    *(&v22 + 1) = v15;
    *&v23 = v18;
    *(&v23 + 1) = qword_1EBDAB650;
    LOWORD(v24) = 0;
    *(&v24 + 1) = sub_1BD1BC4C4;
    *&v25[0] = v16;
    *(v25 + 8) = 0u;
    *(&v25[1] + 8) = 0u;
    *(&v25[2] + 8) = 0u;
    *(&v25[3] + 8) = 0u;
    *(&v25[4] + 8) = 0u;
    *(&v25[5] + 1) = 0;
    sub_1BE048964();
    sub_1BE04F704();
    sub_1BD1BC1B0();
    sub_1BE050CB4();
    (*(v3 + 8))(v5, v21);
    v26[6] = v25[3];
    v26[7] = v25[4];
    v26[8] = v25[5];
    v26[2] = v24;
    v26[3] = v25[0];
    v26[4] = v25[1];
    v26[5] = v25[2];
    v26[0] = v22;
    v26[1] = v23;
    return sub_1BD1BC4CC(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD1BC00C()
{
  result = qword_1EBD3C168;
  if (!qword_1EBD3C168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C118, &qword_1BE0BDF10);
    sub_1BD1BC0C8();
    sub_1BD1BC740(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C168);
  }

  return result;
}

unint64_t sub_1BD1BC0C8()
{
  result = qword_1EBD3C170;
  if (!qword_1EBD3C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C158, &qword_1BE0BDF48);
    sub_1BD0DE4F4(&qword_1EBD3C178, &qword_1EBD3C180, &qword_1BE0BDF68, MEMORY[0x1E697BE60]);
    sub_1BD1BC740(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C170);
  }

  return result;
}

unint64_t sub_1BD1BC1B0()
{
  result = qword_1EBD3C188;
  if (!qword_1EBD3C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C188);
  }

  return result;
}

unint64_t sub_1BD1BC204()
{
  result = qword_1EBD3C190;
  if (!qword_1EBD3C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C120, &qword_1BE0BDF18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C118, &qword_1BE0BDF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C160, &qword_1BE0BDF60);
    sub_1BD1BC00C();
    sub_1BD1BC1B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C190);
  }

  return result;
}

uint64_t sub_1BD1BC340(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 delegate];
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      [v4 accountAutomaticPaymentsControllerDidSelectSetupCompletionDone_];
    }

    v3 = swift_unknownObjectRelease();
  }

  return (*(a1 + 40))(v3);
}

uint64_t sub_1BD1BC3D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD1BC418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_9(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;
  v8[8], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

unint64_t sub_1BD1BC520()
{
  result = qword_1EBD3C1C8;
  if (!qword_1EBD3C1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3C1C8);
  }

  return result;
}

uint64_t sub_1BD1BC56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupAttentionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1BC5D0()
{
  result = qword_1EBD3C1F8;
  if (!qword_1EBD3C1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1D8, &qword_1BE0BE070);
    sub_1BD1BC688();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C1F8);
  }

  return result;
}

unint64_t sub_1BD1BC688()
{
  result = qword_1EBD3C200;
  if (!qword_1EBD3C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1F0, &qword_1BE1089E0);
    sub_1BD0DE4F4(&qword_1EBD3C208, &qword_1EBD3C210, &unk_1BE0BE0C0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C200);
  }

  return result;
}

uint64_t sub_1BD1BC740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BD1BC7A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD1BC7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD1BC868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C238, &unk_1BE0BE190);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - v3;
  v40 = *(v2 + 16);
  v41 = v40;
  v33 = *(v2 + 40);
  LOBYTE(v34) = *(v2 + 56);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  sub_1BE051914();
  v5 = v38;
  v6 = v39;
  v32 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C240, &unk_1BE0BE1A0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C248, &qword_1BE111830);
  v9 = sub_1BD0DE4F4(&qword_1EBD3C250, &qword_1EBD3C240, &unk_1BE0BE1A0, MEMORY[0x1E697FDF8]);
  v26 = sub_1BD0DDEBC();
  v27 = sub_1BD1BCD34();
  sub_1BE050C84();
  v6, v10, v11, v12, v13, v14, v15, v16;
  v5, v17, v18, v19, v20, v21, v22, v23;
  sub_1BD1BCDE4(&v41);
  *&v33 = v7;
  *(&v33 + 1) = MEMORY[0x1E69E6158];
  v34 = v8;
  v35 = v9;
  v36 = v26;
  v37 = v27;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_1BE050844();
  return (*(v30 + 8))(v4, v24);
}

uint64_t sub_1BD1BCAF0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v18 = *a1;
  v8 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v9 = v18;
    v17 = v18;
    v15 = v5;
    v10 = swift_allocObject();
    v11 = a1[1];
    *(v10 + 16) = *a1;
    *(v10 + 32) = v11;
    *(v10 + 48) = a1[2];
    *(v10 + 57) = *(a1 + 41);
    *(v10 + 80) = v9;
    *(v10 + 88) = v8;
    sub_1BD1BCE40(&v18, v16);
    sub_1BD1BCE40(&v18, v16);
    sub_1BD1BCEB0(a1, v16);
    sub_1BD0DDEBC();
    sub_1BE051744();
    (*(v15 + 32))(a2, v7, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v13 = *(v5 + 56);

    return v13(a2, 1, 1, v4);
  }
}

unint64_t sub_1BD1BCD34()
{
  result = qword_1EBD3C258;
  if (!qword_1EBD3C258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C248, &qword_1BE111830);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C258);
  }

  return result;
}

uint64_t sub_1BD1BCE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD1BCEE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1BE052404();
  v10 = PKTelephoneURLFromPhoneNumber();

  if (v10)
  {
    sub_1BE04A9F4();

    (*(v3 + 32))(v8, v5, v2);
    v11 = [objc_opt_self() sharedApplication];
    v12 = sub_1BE04A9C4();
    v13 = sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1BD1BD0CC();
    v14 = sub_1BE052224();
    v13, v15, v16, v17, v18, v19, v20, v21;
    [v11 openURL:v12 options:v14 completionHandler:0];

    (*(v3 + 8))(v8, v2);
  }
}

unint64_t sub_1BD1BD0CC()
{
  result = qword_1EBD37B90;
  if (!qword_1EBD37B90)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37B90);
  }

  return result;
}

uint64_t sub_1BD1BD124()
{
  KeyPath = swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 16);
}

void sub_1BD1BD198(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v12;
}

void sub_1BD1BD24C(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
    return;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1BD1BDC70();
  sub_1BE04B584();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD1BD350()
{
  KeyPath = swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 25);
}

void sub_1BD1BD3C0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 25);
}

void sub_1BD1BD438(uint64_t result)
{
  if (*(v1 + 25) == (result & 1))
  {
    *(v1 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD1BDC70();
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD1BD538()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8960]) init];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD1BD6A8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C280, &qword_1BE0BE280);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD1BD93C;
    v0[13] = &block_descriptor_18;
    v0[14] = v3;
    [v2 hasValidSecurityConfigurationWithType:1 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1BD1BD6A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD1BD788, 0, 0);
}

uint64_t sub_1BD1BD788()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  if ((*(v1 + 24) & 1) != 0 || *(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    *(v5 + 32) = 0;
    *(v0 + 80) = v1;
    sub_1BD1BDC70();
    sub_1BE04B584();
    KeyPath, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    *(v1 + 24) = 0;
  }

  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  if (v3 == *(v13 + 25))
  {

    *(v13 + 25) = v3;
  }

  else
  {
    v15 = swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v13;
    *(v16 + 24) = v3;
    *(v0 + 80) = v13;
    sub_1BD1BDC70();
    sub_1BE04B584();

    v15, v17, v18, v19, v20, v21, v22, v23;
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1BD1BD93C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *(*(v5 + 64) + 40);
  *v6 = a2;
  *(v6 + 8) = a3;

  return MEMORY[0x1EEE6DED8](v5);
}

uint64_t HardwareConfigurationModel.updateHardwareConfigurationModel()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD1BD518();
}

Swift::String_optional __swiftcall HardwareConfigurationModel.securityErrorTitleMessage()()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  KeyPath = swift_getKeyPath();
  v26 = v0;
  sub_1BD1BDC70();
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  if ((*(v0 + 24) & 1) == 0)
  {
    v16 = *(v0 + 16);
    if (v16 == 2)
    {
      (*(v2 + 104))(v4, *MEMORY[0x1E69B80F0], v1);
      v17 = PKPassKitBundle();
      if (v17)
      {
        v19 = v17;
        v20 = sub_1BE04B6F4();
        v22 = v23;
        v7 = v4;
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (v16 == 1)
    {
      (*(v2 + 104))(v7, *MEMORY[0x1E69B80F0], v1);
      v17 = PKPassKitBundle();
      if (v17)
      {
        v19 = v17;
        v20 = sub_1BE04B6F4();
        v22 = v21;
LABEL_9:

        (*(v2 + 8))(v7, v1);
        v17 = v20;
        v18 = v22;
        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  v17 = 0;
  v18 = 0;
LABEL_13:
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

unint64_t sub_1BD1BDC70()
{
  result = qword_1EBD3C268;
  if (!qword_1EBD3C268)
  {
    type metadata accessor for HardwareConfigurationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C268);
  }

  return result;
}

uint64_t type metadata accessor for HardwareConfigurationModel(uint64_t a1)
{
  result = qword_1EBD3C270;
  if (!qword_1EBD3C270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String_optional __swiftcall HardwareConfigurationModel.securityErrorButtonTitle()()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  KeyPath = swift_getKeyPath();
  v26 = v0;
  sub_1BD1BDC70();
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  if ((*(v0 + 24) & 1) == 0)
  {
    v16 = *(v0 + 16);
    if (v16 == 2)
    {
      (*(v2 + 104))(v4, *MEMORY[0x1E69B80F0], v1);
      v17 = PKPassKitBundle();
      if (v17)
      {
        v19 = v17;
        v20 = sub_1BE04B6F4();
        v22 = v23;
        v7 = v4;
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (v16 == 1)
    {
      (*(v2 + 104))(v7, *MEMORY[0x1E69B80F0], v1);
      v17 = PKPassKitBundle();
      if (v17)
      {
        v19 = v17;
        v20 = sub_1BE04B6F4();
        v22 = v21;
LABEL_9:

        (*(v2 + 8))(v7, v1);
        v17 = v20;
        v18 = v22;
        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  v17 = 0;
  v18 = 0;
LABEL_13:
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

uint64_t HardwareConfigurationModel.securityErrorButtonURL()@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1BD1BDC70();
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  if ((*(v1 + 24) & 1) == 0)
  {
    v13 = *(v1 + 16);
    if (v13)
    {
      if (v13 == 2 || v13 == 1)
      {
        return sub_1BE04AA54();
      }
    }
  }

  v11 = sub_1BE04AA64();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t HardwareConfigurationModel.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26HardwareConfigurationModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HardwareConfigurationModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26HardwareConfigurationModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD1BE178(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

void sub_1BD1BE234()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_1BD1BE294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD1BE310@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2D0, &qword_1BE0BE3C0);
  MEMORY[0x1EEE9AC00](v38);
  v37 = (&v34 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2D8, &qword_1BE0BE3C8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2E0, &unk_1BE0BE3D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v34 = (&v34 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2C0, &qword_1BE0BE3B8);
  MEMORY[0x1EEE9AC00](v11);
  v36 = (&v34 - v12);
  v13 = sub_1BE04F3D4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 + 48);
  v40 = a1;
  v18 = *(a1 + 40);
  v42 = v18;
  if (v43 != 1)
  {
    v24 = v15;
    sub_1BE048964();
    sub_1BE052C44();
    v25 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v42, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v14 + 8))(v17, v24);
    if (v41 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v26 = sub_1BE04F504();
    v20 = v36;
    *v36 = v26;
    *(v20 + 8) = 0;
    *(v20 + 16) = 1;
    v27 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2F0, &qword_1BE0BE3E8) + 44);
    v28 = sub_1BE04F7C4();
    v29 = v34;
    *v34 = v28;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2F8, &qword_1BE0BE3F0);
    sub_1BD1BE82C(0, v29 + *(v30 + 44));
    v31 = v35;
    sub_1BD0DE19C(v29, v35, &qword_1EBD3C2E0, &unk_1BE0BE3D0);
    sub_1BD0DE19C(v31, v27, &qword_1EBD3C2E0, &unk_1BE0BE3D0);
    v32 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C300, &qword_1BE0BE3F8) + 48);
    *v32 = 0;
    *(v32 + 8) = 0;
    sub_1BD0DE53C(v29, &qword_1EBD3C2E0, &unk_1BE0BE3D0);
    sub_1BD0DE53C(v31, &qword_1EBD3C2E0, &unk_1BE0BE3D0);
    v22 = &qword_1EBD3C2C0;
    v23 = &qword_1BE0BE3B8;
    sub_1BD0DE19C(v20, v6, &qword_1EBD3C2C0, &qword_1BE0BE3B8);
    swift_storeEnumTagMultiPayload();
    sub_1BD1BEF98(&qword_1EBD3C2B8, &qword_1EBD3C2C0, &qword_1BE0BE3B8);
    goto LABEL_6;
  }

  if (v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = sub_1BE04F504();
  v20 = v37;
  *v37 = v19;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C2E8, &qword_1BE0BE3E0);
  sub_1BD1BE82C(1, v20 + *(v21 + 44));
  v22 = &qword_1EBD3C2D0;
  v23 = &qword_1BE0BE3C0;
  sub_1BD0DE19C(v20, v6, &qword_1EBD3C2D0, &qword_1BE0BE3C0);
  swift_storeEnumTagMultiPayload();
  sub_1BD1BEF98(&qword_1EBD3C2B8, &qword_1EBD3C2C0, &qword_1BE0BE3B8);
LABEL_6:
  sub_1BD1BEF98(&qword_1EBD3C2C8, &qword_1EBD3C2D0, &qword_1BE0BE3C0);
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v20, v22, v23);
}

void sub_1BD1BE82C(int a1@<W0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C308, &qword_1BE0BE400);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v107 = v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v104 - v7;
  v9 = *v2;
  v10 = v2[1];
  v110 = v2[2];
  v111 = v9;
  v112 = v10;
  v11 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v104[1] = v11;
  v12 = sub_1BE0506C4();
  v14 = v13;
  LOBYTE(v11) = v15;
  v17 = v16;
  v18 = sub_1BE051224();
  v19 = sub_1BE050564();
  v108 = v20;
  v109 = v21;
  v23 = v22;
  v18, v20, v22, v21, v24, v25, v26, v27;
  sub_1BD0DDF10(v12, v14, (v11 & 1), v28, v29, v30, v31, v32);
  v17, v33, v34, v35, v36, v37, v38, v39;
  v40 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C310, &qword_1BE0BE408) + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318, &qword_1BE0BE410) + 28);
  v42 = *MEMORY[0x1E6980FA8];
  v43 = sub_1BE050554();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  v44 = v108;
  *v8 = v19;
  *(v8 + 1) = v44;
  v8[16] = v23 & 1;
  *(v8 + 3) = v109;
  KeyPath = swift_getKeyPath();
  v46 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C320, &qword_1BE0BE478) + 36)];
  *v46 = KeyPath;
  v46[8] = 1;
  v47 = swift_getKeyPath();
  v48 = &v8[*(v4 + 44)];
  *v48 = v47;
  *(v48 + 1) = 2;
  v48[16] = 0;
  v49 = sub_1BE052404();
  v50 = PKFormattedCurrencyStringFromNumber();

  if (v50)
  {
    v51 = v105;
    LODWORD(v110) = v105 & 1;
    v52 = sub_1BE052434();
    v54 = v53;

    v111 = v52;
    v112 = v54;
    v55 = sub_1BE0506C4();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = sub_1BE051234();
    v63 = sub_1BE050564();
    v65 = v64;
    LODWORD(v109) = v66;
    v68 = v67;
    v62, v64, v66, v67, v69, v70, v71, v72;
    sub_1BD0DDF10(v55, v57, (v59 & 1), v73, v74, v75, v76, v77);
    v61, v78, v79, v80, v81, v82, v83, v84;
    v85 = v107;
    sub_1BD0DE19C(v8, v107, &qword_1EBD3C308, &qword_1BE0BE400);
    v86 = v106;
    sub_1BD0DE19C(v85, v106, &qword_1EBD3C308, &qword_1BE0BE400);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C328, &unk_1BE0BE4B0);
    v88 = v86 + *(v87 + 48);
    *v88 = 0;
    *(v88 + 8) = v110;
    *(v88 + 9) = (v51 & 1) == 0;
    v89 = v86 + *(v87 + 64);
    *v89 = v63;
    *(v89 + 8) = v65;
    v90 = v109;
    v91 = (v109 & 1);
    *(v89 + 16) = v109 & 1;
    *(v89 + 24) = v68;
    sub_1BD0D7F18(v63, v65, v90 & 1);
    sub_1BE048C84();
    sub_1BD0DE53C(v8, &qword_1EBD3C308, &qword_1BE0BE400);
    sub_1BD0DDF10(v63, v65, v91, v92, v93, v94, v95, v96);
    v68, v97, v98, v99, v100, v101, v102, v103;
    sub_1BD0DE53C(v85, &qword_1EBD3C308, &qword_1BE0BE400);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD1BEC20()
{
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C288, &qword_1BE0BE3A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v8 = v0[1];
  v17[0] = *v0;
  v17[1] = v8;
  v9 = v0[3];
  v17[2] = v0[2];
  v17[3] = v9;
  sub_1BD1BE310(v17, (v17 - v6));
  v10 = sub_1BE050234();
  sub_1BE04E1F4();
  v11 = &v7[*(v5 + 36)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  sub_1BE04FF44();
  sub_1BD1BEDCC();
  sub_1BE050D14();
  (*(v2 + 8))(v4, v1);
  return sub_1BD0DE53C(v7, &qword_1EBD3C288, &qword_1BE0BE3A0);
}

unint64_t sub_1BD1BEDCC()
{
  result = qword_1EBD3C290;
  if (!qword_1EBD3C290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C288, &qword_1BE0BE3A0);
    sub_1BD1BEE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C290);
  }

  return result;
}

unint64_t sub_1BD1BEE58()
{
  result = qword_1EBD3C298;
  if (!qword_1EBD3C298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C2A0, &qword_1BE0BE3A8);
    sub_1BD1BEEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C298);
  }

  return result;
}

unint64_t sub_1BD1BEEDC()
{
  result = qword_1EBD3C2A8;
  if (!qword_1EBD3C2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C2B0, &qword_1BE0BE3B0);
    sub_1BD1BEF98(&qword_1EBD3C2B8, &qword_1EBD3C2C0, &qword_1BE0BE3B8);
    sub_1BD1BEF98(&qword_1EBD3C2C8, &qword_1EBD3C2D0, &qword_1BE0BE3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C2A8);
  }

  return result;
}

uint64_t sub_1BD1BEF98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PaymentTotalAmountDetails(uint64_t a1)
{
  result = qword_1EBD3C348;
  if (!qword_1EBD3C348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1BF060(uint64_t a1)
{
  _s11TotalAmountVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1BF164(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD1BF164(319, &qword_1EBD3C358, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981948]);
      if (v3 <= 0x3F)
      {
        sub_1BD1BF1B4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD1BF164(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BD1BF1B4()
{
  result = qword_1EBD3C360;
  if (!qword_1EBD3C360)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBD3C360);
  }

  return result;
}

id sub_1BD1BF234()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3E8, &qword_1BE0BE5F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B98D0;
  v1 = *MEMORY[0x1E69DDDB8];
  v2 = *MEMORY[0x1E69DDDC0];
  *(v0 + 32) = *MEMORY[0x1E69DDDB8];
  *(v0 + 40) = v2;
  v6 = *MEMORY[0x1E69DDDC8];
  *(v0 + 48) = *MEMORY[0x1E69DDDC8];
  off_1EBD3C330 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

double sub_1BD1BF2D8()
{
  result = *MEMORY[0x1E69DB980];
  qword_1EBD3C338 = *MEMORY[0x1E69DB980];
  return result;
}

void sub_1BD1BF2F0()
{
  if (qword_1EBD36B28 != -1)
  {
LABEL_12:
    swift_once();
  }

  v0 = off_1EBD3C330;
  v1 = *(off_1EBD3C330 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v3 = 0;
    v4 = *MEMORY[0x1E69DB8D8];
    v5 = *MEMORY[0x1E69DDC90];
    while (1)
    {
      if (v3 >= v0[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      v6 = qword_1EBD36B30;
      v7 = v0[v3 + 4];
      if (v6 != -1)
      {
        swift_once();
      }

      if (!PKFontForDesign(v4, v7, v5, 2, 0, *&qword_1EBD3C338))
      {
        break;
      }

      ++v3;

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      if (v1 == v3)
      {
        v2 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    qword_1EBD3C340 = v2;
  }
}

id sub_1BD1BF480@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v57 = sub_1BE04FF64();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C368, &qword_1BE0BE530);
  MEMORY[0x1EEE9AC00](v54);
  v5 = &v52 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C370, &qword_1BE0BE538);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v53 = &v52 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C378, &qword_1BE0BE540);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v52 - v7;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BD1C8894();
  v14 = v13;
  if (*(v1 + *(_s11TotalAmountVMa(0) + 44)) != 1)
  {
    sub_1BD1C93D0();
    v17 = v20;
    v19 = v21;
    goto LABEL_5;
  }

  v52 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69B8068], v8);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v9 + 8))(v11, v8);
    v12 = v52;
LABEL_5:
    *v5 = sub_1BE04F7C4();
    *(v5 + 1) = 0x4000000000000000;
    v5[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C380, &qword_1BE0BE548);
    sub_1BD1BF9AC(v1, v12, v14, v17, v19, &v5[*(v22 + 44)]);
    v19, v23, v24, v25, v26, v27, v28, v29;
    v14, v30, v31, v32, v33, v34, v35, v36;
    sub_1BE04FF44();
    v37 = sub_1BD0DE4F4(&qword_1EBD3C388, &qword_1EBD3C368, &qword_1BE0BE530, MEMORY[0x1E6981870]);
    v39 = v53;
    v38 = v54;
    sub_1BE050D14();
    (*(v55 + 8))(v3, v57);
    sub_1BD0DE53C(v5, &qword_1EBD3C368, &qword_1BE0BE530);
    sub_1BE052434();
    v41 = v40;
    v62 = v38;
    v63 = v37;
    swift_getOpaqueTypeConformance2();
    v42 = v59;
    v43 = v58;
    sub_1BE050DE4();
    v41, v44, v45, v46, v47, v48, v49, v50;
    (*(v56 + 8))(v39, v43);
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C390, &qword_1BE0BE550);
    v51 = sub_1BD1C07FC();
    v62 = v60;
    v63 = v51;
    swift_getOpaqueTypeConformance2();
    sub_1BE0510C4();
    return sub_1BD052E20(v42);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1BF9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v231 = a4;
  *(&v231 + 1) = a5;
  *&v241 = a2;
  *(&v241 + 1) = a3;
  v235 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3A0, &qword_1BE0BE558);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v236 = &v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v234 = &v224 - v10;
  v11 = sub_1BE04F454();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v243 = &v224 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v238 = &v224 - v15;
  v16 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3A8, &qword_1BE0BE560);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v233 = &v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v224 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3B0, &qword_1BE0BE568);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v232 = &v224 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v224 - v26;
  v28 = type metadata accessor for PaymentTotalAmountDetails(0);
  v29 = (a1 + *(v28 + 20));
  v30 = v29[1];
  v239 = a1;
  v240 = v27;
  v244 = v22;
  v245 = v12;
  v242 = v28;
  v237 = v11;
  if (v30)
  {
    v31 = *v29;
    v227 = v30;
    v228 = v31;
    sub_1BE04F604();
    sub_1BE04F5F4();
    v32 = sub_1BE051574();
    sub_1BE04F5D4();
    v32, v33, v34, v35, v36, v37, v38, v39;
    sub_1BE04F5F4();
    sub_1BE04F5E4();
    sub_1BE04F5F4();
    sub_1BE04F634();
    v40 = sub_1BE050694();
    v42 = v41;
    v44 = v43;
    v230 = v17;
    v46 = v45;
    v47 = sub_1BE0505F4();
    v229 = v18;
    v48 = v237;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_1BD0DDF10(v40, v42, (v44 & 1), v53, v55, v56, v57, v58);
    v46, v59, v60, v61, v62, v63, v64, v65;
    v66 = sub_1BE0513B4();
    *&v253 = v66;
    v67 = sub_1BE050574();
    v225 = v68;
    v226 = v67;
    v70 = v69;
    v72 = v71;
    sub_1BD0DDF10(v47, v50, (v52 & 1), v68, v73, v74, v75, v76);
    v66, v77, v78, v79, v80, v81, v82, v83;
    v54, v84, v85, v86, v87, v88, v89, v90;
    KeyPath = swift_getKeyPath();
    v92 = swift_getKeyPath();
    v72 &= 1u;
    LOBYTE(v253) = v72;
    LOBYTE(v246) = 0;
    v93 = v238;
    sub_1BE04F444();
    v94 = v245;
    (*(v245 + 16))(v243, v93, v48);
    sub_1BD1C0928(&unk_1EBD367A0, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v95 = sub_1BE04E644();
    (*(v94 + 8))(v93, v48);
    *&v253 = 0x676E696E726177;
    *(&v253 + 1) = 0xE700000000000000;
    MEMORY[0x1BFB3F610](v228, v227);
    *&v246 = v226;
    *(&v246 + 1) = v70;
    LOBYTE(v247) = v72;
    *(&v247 + 1) = v225;
    *&v248 = KeyPath;
    a1 = v239;
    BYTE8(v248) = 0;
    *&v249 = v92;
    *(&v249 + 1) = 2;
    LOBYTE(v250) = 0;
    *(&v250 + 1) = v95;
    v251[0] = v253;
    sub_1BE052434();
    v97 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3B8, &qword_1BE0BE5D0);
    sub_1BD0DE4F4(&qword_1EBD3C3C0, &qword_1EBD3C3B8, &qword_1BE0BE5D0, MEMORY[0x1E6981810]);
    v98 = v244;
    sub_1BE050DE4();
    v97, v99, v100, v101, v102, v103, v104, v105;
    v255 = v248;
    v256 = v249;
    v257 = v250;
    v258 = v251[0];
    v253 = v246;
    v254 = v247;
    v106 = v242;
    sub_1BD0DE53C(&v253, &qword_1EBD3C3B8, &qword_1BE0BE5D0);
    v107 = v240;
    sub_1BD1C0970(v98, v240);
    (*(v229 + 7))(v107, 0, 1, v230);
  }

  else
  {
    v106 = v28;
    (*(v18 + 56))(v27, 1, 1, v17);
  }

  v108 = (a1 + *(v106 + 32));
  v109 = v108[3];
  v229 = v108[4];
  v228 = __swift_project_boxed_opaque_existential_1(v108, v109);
  v253 = v241;
  v230 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v110 = sub_1BE0506C4();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = sub_1BE0505F4();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  sub_1BD0DDF10(v110, v112, (v114 & 1), v122, v124, v125, v126, v127);
  v116, v128, v129, v130, v131, v132, v133, v134;
  v135 = sub_1BE050574();
  v225 = v136;
  LOBYTE(v109) = v137;
  v139 = v138;
  sub_1BD0DDF10(v117, v119, (v121 & 1), v138, v140, v141, v142, v143);
  v123, v144, v145, v146, v147, v148, v149, v150;
  v151 = swift_getKeyPath();
  v152 = swift_getKeyPath();
  LOBYTE(v123) = v109 & 1;
  LOBYTE(v253) = v109 & 1;
  LOBYTE(v246) = 0;
  v153 = v238;
  sub_1BE04F444();
  v154 = v245;
  v155 = *(v245 + 16);
  v228 = (v245 + 16);
  v229 = v155;
  v156 = v237;
  v155(v243, v153, v237);
  v227 = sub_1BD1C0928(&unk_1EBD367A0, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v157 = sub_1BE04E644();
  v158 = *(v154 + 8);
  v245 = v154 + 8;
  v226 = v158;
  v158(v153, v156);
  *&v253 = 0x656C746974;
  *(&v253 + 1) = 0xE500000000000000;
  MEMORY[0x1BFB3F610](v241, *(&v241 + 1));
  v159 = v253;
  *&v253 = v135;
  *(&v253 + 1) = v225;
  LOBYTE(v254) = v123;
  *(&v254 + 1) = v139;
  *&v255 = v151;
  BYTE8(v255) = 0;
  *&v256 = v152;
  *(&v256 + 1) = 2;
  LOBYTE(v257) = 0;
  *(&v257 + 1) = v157;
  v258 = v159;
  sub_1BE052434();
  v161 = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3B8, &qword_1BE0BE5D0);
  sub_1BD0DE4F4(&qword_1EBD3C3C0, &qword_1EBD3C3B8, &qword_1BE0BE5D0, MEMORY[0x1E6981810]);
  sub_1BE050DE4();
  v161, v162, v163, v164, v165, v166, v167, v168;
  v252[2] = v255;
  v252[3] = v256;
  v252[4] = v257;
  v252[5] = v258;
  v252[0] = v253;
  v252[1] = v254;
  sub_1BD0DE53C(v252, &qword_1EBD3C3B8, &qword_1BE0BE5D0);
  v169 = v231;
  v253 = v231;
  sub_1BE048C84();
  v170 = sub_1BE0506C4();
  v172 = v171;
  LOBYTE(v135) = v173;
  v175 = v174;
  v176 = sub_1BE051224();
  v177 = sub_1BE050564();
  *&v241 = v178;
  *(&v241 + 1) = v177;
  LODWORD(v225) = v179;
  v230 = v180;
  v176, v178, v179, v180, v181, v182, v183, v184;
  sub_1BD0DDF10(v170, v172, (v135 & 1), v185, v186, v187, v188, v189);
  v175, v190, v191, v192, v193, v194, v195, v196;
  v197 = swift_getKeyPath();
  sub_1BE04F444();
  v229(v243, v153, v156);
  v198 = sub_1BE04E644();
  v226(v153, v156);
  if (qword_1EBD36B38 != -1)
  {
    swift_once();
  }

  v199 = qword_1EBD3C340;
  v200 = (v239 + *(v242 + 24));
  v201 = v200[1];
  v202 = v200[2];
  *&v253 = *v200;
  *(&v253 + 1) = v201;
  *&v254 = v202;
  sub_1BE048C84();
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3C8, &qword_1BE0BE5D8);
  MEMORY[0x1BFB3E970](&v246, v203);
  v204 = v246;
  v205 = v225 & 1;
  LOBYTE(v246) = v225 & 1;
  *&v253 = 0x746E756F6D61;
  *(&v253 + 1) = 0xE600000000000000;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v169, *(&v169 + 1));
  *&v246 = *(&v241 + 1);
  *(&v246 + 1) = v241;
  LOBYTE(v247) = v205;
  *(&v247 + 1) = v230;
  *&v248 = v197;
  BYTE8(v248) = 0;
  *&v249 = v198;
  *(&v249 + 1) = v199;
  v250 = v169;
  *&v251[0] = v204;
  *(v251 + 8) = v253;
  sub_1BE052434();
  v207 = v206;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3D0, &qword_1BE0BE5E0);
  sub_1BD0DE4F4(&qword_1EBD3C3D8, &qword_1EBD3C3D0, &qword_1BE0BE5E0, MEMORY[0x1E6981810]);
  v208 = v234;
  sub_1BE050DE4();
  v207, v209, v210, v211, v212, v213, v214, v215;
  v257 = v250;
  v258 = v251[0];
  v259 = *&v251[1];
  v253 = v246;
  v254 = v247;
  v255 = v248;
  v256 = v249;
  sub_1BD0DE53C(&v253, &qword_1EBD3C3D0, &qword_1BE0BE5E0);
  v216 = v240;
  v217 = v232;
  sub_1BD0DE19C(v240, v232, &qword_1EBD3C3B0, &qword_1BE0BE568);
  v218 = v244;
  v219 = v233;
  sub_1BD0DE19C(v244, v233, &qword_1EBD3C3A8, &qword_1BE0BE560);
  v220 = v236;
  sub_1BD0DE19C(v208, v236, &qword_1EBD3C3A0, &qword_1BE0BE558);
  v221 = v235;
  sub_1BD0DE19C(v217, v235, &qword_1EBD3C3B0, &qword_1BE0BE568);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3E0, &qword_1BE0BE5E8);
  sub_1BD0DE19C(v219, v221 + *(v222 + 48), &qword_1EBD3C3A8, &qword_1BE0BE560);
  sub_1BD0DE19C(v220, v221 + *(v222 + 64), &qword_1EBD3C3A0, &qword_1BE0BE558);
  sub_1BD0DE53C(v208, &qword_1EBD3C3A0, &qword_1BE0BE558);
  sub_1BD0DE53C(v218, &qword_1EBD3C3A8, &qword_1BE0BE560);
  sub_1BD0DE53C(v216, &qword_1EBD3C3B0, &qword_1BE0BE568);
  sub_1BD0DE53C(v220, &qword_1EBD3C3A0, &qword_1BE0BE558);
  sub_1BD0DE53C(v219, &qword_1EBD3C3A8, &qword_1BE0BE560);
  return sub_1BD0DE53C(v217, &qword_1EBD3C3B0, &qword_1BE0BE568);
}

uint64_t sub_1BD1C06D8()
{
  v0 = sub_1BE04EB24();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E697E6E8], v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C378, &qword_1BE0BE540);
  sub_1BD1C07FC();
  sub_1BE050B24();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1BD1C07FC()
{
  result = qword_1EBD3C398;
  if (!qword_1EBD3C398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C378, &qword_1BE0BE540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C368, &qword_1BE0BE530);
    sub_1BD0DE4F4(&qword_1EBD3C388, &qword_1EBD3C368, &qword_1BE0BE530, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1BD1C0928(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C398);
  }

  return result;
}

uint64_t sub_1BD1C0928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD1C0970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3A8, &qword_1BE0BE560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1BD1C09F0@<Q0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C418, &qword_1BE0BE758);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v32 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C420, &qword_1BE0BE760) - 8;
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C428, &qword_1BE0BE768);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C430, &qword_1BE0BE770);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C438, &qword_1BE0BE778);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v40 = v1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C440, &qword_1BE0BE780);
  sub_1BD0DE4F4(&qword_1EBD3C448, &qword_1EBD3C440, &qword_1BE0BE780, MEMORY[0x1E69817F8]);
  v14 = v32;
  sub_1BE051704();
  v15 = sub_1BE0501D4();
  v16 = &v14[*(v3 + 44)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v17 = v14;
  v18 = v34;
  sub_1BD0DE204(v17, v34, &qword_1EBD3C418, &qword_1BE0BE758);
  v19 = (v18 + *(v35 + 44));
  v20 = v46;
  v19[4] = v45;
  v19[5] = v20;
  v19[6] = v47;
  v21 = v42;
  *v19 = v41;
  v19[1] = v21;
  v22 = v44;
  v19[2] = v43;
  v19[3] = v22;
  sub_1BD0DE204(v18, v7, &qword_1EBD3C420, &qword_1BE0BE760);
  v7[*(v36 + 36)] = 1;
  sub_1BD1C2EAC();
  v23 = v33;
  sub_1BE050714();
  sub_1BD053118(v7);
  v24 = sub_1BE051214();
  if (sub_1BE051C54())
  {
    v25 = 26.0;
  }

  else
  {
    v25 = 10.0;
  }

  (*(v37 + 32))(v13, v23, v38);
  v26 = &v13[*(v11 + 44)];
  *v26 = 0;
  *(v26 + 1) = v24;
  *(v26 + 2) = 0x3FF0000000000000;
  *(v26 + 3) = v25;
  sub_1BE051C54();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v27 = v39;
  sub_1BD0DE204(v13, v39, &qword_1EBD3C438, &qword_1BE0BE778);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C478, &qword_1BE0BE790) + 36);
  v29 = v53;
  *(v28 + 64) = v52;
  *(v28 + 80) = v29;
  *(v28 + 96) = v54;
  v30 = v49;
  *v28 = v48;
  *(v28 + 16) = v30;
  result = v51;
  *(v28 + 32) = v50;
  *(v28 + 48) = result;
  return result;
}

uint64_t sub_1BD1C0F2C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C480, &qword_1BE0BE798);
  return sub_1BD1C0F84(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD1C0F84@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = type metadata accessor for SheetButton(0);
  v97 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v100 = v4;
  v101 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04C894();
  v93 = *(v5 - 8);
  v94 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BE04C764();
  v99 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v95 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C488, &qword_1BE0BE7A0);
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C490, &qword_1BE0BE7A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v96 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v86 - v15;
  v103 = a1;
  v16 = *a1;
  v17 = sub_1BD1C16EC(*a1);
  v19 = v18;
  v89 = v17;
  *&v128[0] = v17;
  *(&v128[0] + 1) = v18;
  sub_1BD0DDEBC();
  v88 = v19;
  sub_1BE048C84();
  v20 = sub_1BE0506C4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v91 = v16;
  if ((v16 & 0xFE) == 4)
  {
    v90 = MEMORY[0x1E69BC9F8];
    v27 = sub_1BE051264();
  }

  else
  {
    v90 = MEMORY[0x1E69BCA00];
    v27 = sub_1BE051224();
  }

  v28 = v27;
  v87 = sub_1BE050564();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v28, v29, v31, v33, v35, v36, v37, v38;
  sub_1BD0DDF10(v20, v22, (v24 & 1), v39, v40, v41, v42, v43);
  v26, v44, v45, v46, v47, v48, v49, v50;
  sub_1BE051CE4();
  sub_1BE04EE54();
  v130 = v32 & 1;
  KeyPath = swift_getKeyPath();
  v52 = sub_1BE051D44();
  *&v109 = v87;
  *(&v109 + 1) = v30;
  LOBYTE(v110) = v32 & 1;
  *(&v110 + 1) = v34;
  v115 = v125;
  v116 = v126;
  v117 = v127;
  v111 = v121;
  v112 = v122;
  v114 = v124;
  v113 = v123;
  *&v118 = KeyPath;
  BYTE8(v118) = 0;
  *&v119 = v52;
  *(&v119 + 1) = v89;
  v120 = v88;
  sub_1BE052434();
  v54 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C498, &qword_1BE0BE7E0);
  sub_1BD1C301C();
  v55 = v108;
  sub_1BE050DE4();
  v54, v56, v57, v58, v59, v60, v61, v62;
  v128[8] = v117;
  v128[9] = v118;
  v128[10] = v119;
  v129 = v120;
  v128[4] = v113;
  v128[5] = v114;
  v128[6] = v115;
  v128[7] = v116;
  v128[0] = v109;
  v128[1] = v110;
  v128[2] = v111;
  v128[3] = v112;
  sub_1BD0DE53C(v128, &qword_1EBD3C498, &qword_1BE0BE7E0);
  (*(v93 + 104))(v92, *v90, v94);
  v63 = v95;
  sub_1BE04C754();
  LOBYTE(v109) = v91;
  v64 = v101;
  sub_1BD1C318C(v103, v101, type metadata accessor for SheetButton);
  v65 = (*(v97 + 80) + 16) & ~*(v97 + 80);
  v66 = swift_allocObject();
  sub_1BD1C31F4(v64, v66 + v65, type metadata accessor for SheetButton);
  sub_1BD1C32BC();
  sub_1BD1C1E78();
  v67 = v98;
  v68 = v102;
  sub_1BE051074();
  v66, v69, v70, v71, v72, v73, v74, v75;
  (*(v99 + 8))(v63, v68);
  v76 = v96;
  sub_1BD0DE19C(v55, v96, &qword_1EBD3C490, &qword_1BE0BE7A8);
  v78 = v104;
  v77 = v105;
  v79 = *(v105 + 16);
  v80 = v106;
  v79(v104, v67, v106);
  v81 = v107;
  sub_1BD0DE19C(v76, v107, &qword_1EBD3C490, &qword_1BE0BE7A8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C4C8, &unk_1BE0BE7F0);
  v83 = v81 + *(v82 + 48);
  *v83 = 0;
  *(v83 + 8) = 1;
  v79((v81 + *(v82 + 64)), v78, v80);
  v84 = *(v77 + 8);
  v84(v67, v80);
  sub_1BD0DE53C(v108, &qword_1EBD3C490, &qword_1BE0BE7A8);
  v84(v78, v80);
  return sub_1BD0DE53C(v76, &qword_1EBD3C490, &qword_1BE0BE7A8);
}

id sub_1BD1C16EC(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v36 - v24;
  v28 = *MEMORY[0x1E69B8068];
  v36 = v30;
  v37 = v29;
  v31 = *(v30 + 104);
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        v31(v16, v28, v25, v26);
        result = PKPassKitBundle();
        if (result)
        {
          v33 = result;
          v34 = sub_1BE04B6F4();
          v27 = v16;
          goto LABEL_24;
        }

        goto LABEL_31;
      }

      v31(v19, v28, v25, v26);
      result = PKPassKitBundle();
      if (result)
      {
        v35 = result;
        v34 = sub_1BE04B6F4();
        v27 = v19;
        v33 = v35;
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (a1)
    {
      v31(v22, v28, v25, v26);
      result = PKPassKitBundle();
      if (result)
      {
        v33 = result;
        v34 = sub_1BE04B6F4();
        v27 = v22;
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    v31(&v36 - v24, v28, v25, v26);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();
LABEL_24:

      (*(v36 + 8))(v27, v37);
      return v34;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a1 <= 5u)
  {
    if (a1 != 4)
    {
      v31(v10, v28, v25, v26);
      result = PKPassKitBundle();
      if (result)
      {
        v33 = result;
        v34 = sub_1BE04B6F4();
        v27 = v10;
        goto LABEL_24;
      }

      goto LABEL_30;
    }

    v31(v13, v28, v25, v26);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();
      v27 = v13;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (a1 == 6)
  {
    v31(v7, v28, v25, v26);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v34 = sub_1BE04B6F4();
      v27 = v7;
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v31(v4, v28, v25, v26);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    v34 = sub_1BE04B6F4();
    v27 = v4;
    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BD1C1C20(uint64_t a1)
{
  v2 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *v4 = v3;
  v4[1] = v5;
  *(v4 + 1) = v6;
  *(v4 + 2) = v7;
  *(v4 + 3) = v8;
  swift_storeEnumTagMultiPayload();
  v9 = v8;
  sub_1BE048C84();
  sub_1BD6B56B4(v4, 1);
  return sub_1BD1C3314(v4, type metadata accessor for Analytics.StateChange);
}

unint64_t sub_1BD1C1D24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD1C2B68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD1C1D54(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001BE117300;
    v9 = 0xD000000000000019;
    if (v2 != 6)
    {
      v9 = 0x797469746E656469;
      v8 = 0xE800000000000000;
    }

    v10 = 0xEA00000000006472;
    v11 = 0x614365676E616863;
    if (v2 != 4)
    {
      v11 = 0xD000000000000010;
      v10 = 0x80000001BE1172E0;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x636972656E6567;
    v5 = 0x80000001BE117290;
    v6 = 0xD000000000000011;
    if (v2 != 2)
    {
      v6 = 0xD00000000000001CLL;
      v5 = 0x80000001BE1172B0;
    }

    if (*v1)
    {
      v4 = 0xD000000000000013;
      v3 = 0x80000001BE117270;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_1BD1C1E78()
{
  result = qword_1EBD3C3F0;
  if (!qword_1EBD3C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C3F0);
  }

  return result;
}

void sub_1BD1C1ECC(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD1C1F48(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1BD1C318C(a1, &v10 - v7, type metadata accessor for Passes);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD1C318C(v8, v5, type metadata accessor for Passes);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD1C3314(v8, type metadata accessor for Passes);
}

id sub_1BD1C2074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v136 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v138 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v136 - v10;
  v11 = type metadata accessor for Passes(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v140 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v136 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v143 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v136 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v136 - v23);
  v26 = *(a1 + qword_1EBDAAD68 + 24);
  v25 = *(a1 + qword_1EBDAAD68 + 32);
  v27 = v26;
  v28 = v25;
  v144 = v27;
  v29 = v28;
  sub_1BD2B1238(v29, v26, &v149);
  type metadata accessor for PaymentAuthorizationModel(0);
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    sub_1BE048964();
  }

  result = [v29 paymentRequest];
  if (result)
  {
    v32 = result;
    v142 = [result requestType];

    if (v30)
    {
      KeyPath = swift_getKeyPath();
      v34 = swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8B4(v24);
      v30, v35, v36, v37, v38, v39, v40, v41;
      KeyPath, v42, v43, v44, v45, v46, v47, v48;
      v34, v49, v50, v51, v52, v53, v54, v55;
      (*(v12 + 56))(v24, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v24, 1, 1, v11);
    }

    v137 = v4;
    v56 = v150;
    if (v150)
    {
      v57 = v149;
      v58 = sub_1BD1C2B14();
      v59 = swift_allocObject();
      *(v59 + 16) = v57;
      *(v59 + 24) = v56;
      v60 = v152;
      *(v59 + 32) = v151;
      *(v59 + 48) = v60;
      v61 = &type metadata for AuthorizationError;
    }

    else
    {
      v59 = 0;
      v61 = 0;
      v58 = 0;
      v148[1] = 0;
      v148[2] = 0;
    }

    v148[0] = v59;
    v148[3] = v61;
    v148[4] = v58;
    sub_1BD0DE19C(&v149, v147, &qword_1EBD3C400, &qword_1BE0BE6B8);
    v141 = [v29 hasAnyPayLaterOptions];
    sub_1BD0DE19C(v24, v21, &unk_1EBD43B40, &qword_1BE0D42C0);
    v62 = *(v12 + 48);
    if (v62(v21, 1, v11) == 1)
    {
      sub_1BD0DE53C(v21, &unk_1EBD43B40, &qword_1BE0D42C0);
    }

    else
    {
      sub_1BD1C31F4(v21, v16, type metadata accessor for Passes);
      if ((v16[*(v11 + 24)] & 1) != 0 && (v63 = v139, sub_1BD0DE19C(v16, v139, &qword_1EBD520A0, &qword_1BE0B9840), v64 = type metadata accessor for AvailablePass(0), v65 = (*(*(v64 - 8) + 48))(v63, 1, v64), sub_1BD0DE53C(v63, &qword_1EBD520A0, &qword_1BE0B9840), v65 == 1) && !*(*&v16[*(v11 + 28)] + 16))
      {
        v116 = v137;
        sub_1BD4941F8(v137);
        v117 = type metadata accessor for UnavailablePass(0);
        v118 = (*(*(v117 - 8) + 48))(v116, 1, v117) == 1;
        sub_1BD0DE53C(v116, &qword_1EBD3C3F8, &qword_1BE0DB080);
        sub_1BD1C3314(v16, type metadata accessor for Passes);
        if ((v118 & v141) == 1)
        {
          sub_1BD0DE53C(&v149, &qword_1EBD3C400, &qword_1BE0BE6B8);

          v30, v119, v120, v121, v122, v123, v124, v125;
          sub_1BD0DE53C(v24, &unk_1EBD43B40, &qword_1BE0D42C0);
          v87 = 6;
          goto LABEL_36;
        }
      }

      else
      {
        sub_1BD1C3314(v16, type metadata accessor for Passes);
      }
    }

    sub_1BD0DE19C(v148, &v145, &qword_1EBD51EC0, &qword_1BE0B7120);
    if (v146)
    {
      sub_1BD0EF554(&v145, v147);
      __swift_project_boxed_opaque_existential_1(v147, v147[3]);
      if (sub_1BE04C704())
      {
        sub_1BD0DE53C(&v149, &qword_1EBD3C400, &qword_1BE0BE6B8);

        v30, v73, v74, v75, v76, v77, v78, v79;
        sub_1BD0DE53C(v24, &unk_1EBD43B40, &qword_1BE0D42C0);
        __swift_destroy_boxed_opaque_existential_0(v147, v80, v81, v82, v83, v84, v85, v86);
        v87 = 5;
LABEL_36:
        sub_1BD0DE53C(v148, &qword_1EBD51EC0, &qword_1BE0B7120);
        return v87;
      }

      __swift_destroy_boxed_opaque_existential_0(v147, v66, v67, v68, v69, v70, v71, v72);
    }

    else
    {
      sub_1BD0DE53C(&v145, &qword_1EBD51EC0, &qword_1BE0B7120);
    }

    v88 = v143;
    sub_1BD0DE19C(v24, v143, &unk_1EBD43B40, &qword_1BE0D42C0);
    if (v62(v88, 1, v11) == 1)
    {
      sub_1BD0DE53C(&v149, &qword_1EBD3C400, &qword_1BE0BE6B8);

      v30, v89, v90, v91, v92, v93, v94, v95;
      sub_1BD0DE53C(v24, &unk_1EBD43B40, &qword_1BE0D42C0);
      sub_1BD0DE53C(v88, &unk_1EBD43B40, &qword_1BE0D42C0);
      goto LABEL_29;
    }

    v96 = v140;
    sub_1BD1C31F4(v88, v140, type metadata accessor for Passes);
    if (*(v96 + *(v11 + 24)))
    {
      v97 = v138;
      sub_1BD0DE19C(v96, v138, &qword_1EBD520A0, &qword_1BE0B9840);
      v98 = type metadata accessor for AvailablePass(0);
      if ((*(*(v98 - 8) + 48))(v97, 1, v98) != 1)
      {
        sub_1BD0DE53C(&v149, &qword_1EBD3C400, &qword_1BE0BE6B8);

        v30, v109, v110, v111, v112, v113, v114, v115;
        sub_1BD0DE53C(v24, &unk_1EBD43B40, &qword_1BE0D42C0);
        v106 = &qword_1EBD520A0;
        v107 = &qword_1BE0B9840;
        v108 = v97;
        goto LABEL_28;
      }

      sub_1BD0DE53C(v97, &qword_1EBD520A0, &qword_1BE0B9840);
      if (!*(*(v96 + *(v11 + 28)) + 16))
      {
        v126 = v136;
        sub_1BD4941F8(v136);
        sub_1BD0DE53C(&v149, &qword_1EBD3C400, &qword_1BE0BE6B8);

        v30, v127, v128, v129, v130, v131, v132, v133;
        sub_1BD0DE53C(v24, &unk_1EBD43B40, &qword_1BE0D42C0);
        v134 = type metadata accessor for UnavailablePass(0);
        v135 = (*(*(v134 - 8) + 48))(v126, 1, v134);
        sub_1BD0DE53C(v126, &qword_1EBD3C3F8, &qword_1BE0DB080);
        sub_1BD1C3314(v96, type metadata accessor for Passes);
        if (v135 != 1)
        {
          v87 = 4;
          goto LABEL_36;
        }

LABEL_29:
        if (v142 == 2)
        {
          v87 = 2;
        }

        else if (((v142 == 0) & v141) != 0)
        {
          v87 = 3;
        }

        else if (v142 == 13)
        {
          v87 = 7;
        }

        else
        {
          v87 = 0;
        }

        goto LABEL_36;
      }
    }

    sub_1BD0DE53C(&v149, &qword_1EBD3C400, &qword_1BE0BE6B8);

    v30, v99, v100, v101, v102, v103, v104, v105;
    v106 = &unk_1EBD43B40;
    v107 = &qword_1BE0D42C0;
    v108 = v24;
LABEL_28:
    sub_1BD0DE53C(v108, v106, v107);
    sub_1BD1C3314(v96, type metadata accessor for Passes);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD1C2B14()
{
  result = qword_1EBD45BA0;
  if (!qword_1EBD45BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45BA0);
  }

  return result;
}

unint64_t sub_1BD1C2B68(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for SheetButton(uint64_t a1)
{
  result = qword_1EBD3C408;
  if (!qword_1EBD3C408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1C2C28(uint64_t a1)
{
  sub_1BD1030A8();
  if (v1 <= 0x3F)
  {
    sub_1BD1C2DD8(319, &qword_1EBD4F750, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1BD1C2E24(319, &qword_1EBD39320, sub_1BD1C2D8C, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD1C2DD8(319, &qword_1EBD39308, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          sub_1BD1C2E24(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1BD1C2D8C()
{
  result = qword_1EBD496B0;
  if (!qword_1EBD496B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD496B0);
  }

  return result;
}

void sub_1BD1C2DD8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD1C2E24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BD1C2EAC()
{
  result = qword_1EBD3C450;
  if (!qword_1EBD3C450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C428, &qword_1BE0BE768);
    sub_1BD1C3374(&qword_1EBD3C458, &qword_1EBD3C420, &qword_1BE0BE760, sub_1BD1C2F64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C450);
  }

  return result;
}

unint64_t sub_1BD1C2F64()
{
  result = qword_1EBD3C460;
  if (!qword_1EBD3C460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C418, &qword_1BE0BE758);
    sub_1BD0DE4F4(&qword_1EBD3C468, &qword_1EBD3C470, &qword_1BE0BE788, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C460);
  }

  return result;
}

unint64_t sub_1BD1C301C()
{
  result = qword_1EBD3C4A0;
  if (!qword_1EBD3C4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C498, &qword_1BE0BE7E0);
    sub_1BD1C30D4();
    sub_1BD0DE4F4(&qword_1EBD3C4B8, &qword_1EBD3C4C0, &qword_1BE0D6DE0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C4A0);
  }

  return result;
}

unint64_t sub_1BD1C30D4()
{
  result = qword_1EBD3C4A8;
  if (!qword_1EBD3C4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C4B0, &qword_1BE0BE7E8);
    sub_1BD19D16C();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C4A8);
  }

  return result;
}

uint64_t sub_1BD1C318C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1C31F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1C325C()
{
  v1 = *(type metadata accessor for SheetButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD1C1C20(v2);
}

unint64_t sub_1BD1C32BC()
{
  result = qword_1EBD39D60;
  if (!qword_1EBD39D60)
  {
    sub_1BE04C764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39D60);
  }

  return result;
}

uint64_t sub_1BD1C3314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD1C3374(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD1C33F8()
{
  result = qword_1EBD3C4D8;
  if (!qword_1EBD3C4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C438, &qword_1BE0BE778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C428, &qword_1BE0BE768);
    sub_1BD1C2EAC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0FEBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C4D8);
  }

  return result;
}

unint64_t PKPassTileForeignViewAdaptorViewSizingMethod.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1BD1C34D4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1BD1C357C()
{
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_1BE048C84();
  return v2;
}

void sub_1BD1C3650(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BD1C36B0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_1BE048C84();
  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t sub_1BD1C37C4()
{
  v1 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BD1C385C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PKPassTileForeignViewAdaptor.__allocating_init(view:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_view] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id PKPassTileForeignViewAdaptor.init(view:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_view] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PKPassTileForeignViewAdaptor();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1BD1C3A8C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = (v2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
    swift_beginAccess();
    v6 = v5[1];
    if (v6)
    {
      if (a2 && (v7 = *v5, v8 = (a2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier), swift_beginAccess(), (v9 = v8[1]) != 0))
      {
        if (v7 == *v8 && v6 == v9)
        {
          LOBYTE(a1) = 1;
        }

        else
        {
          LOBYTE(a1) = sub_1BE053B84();
        }
      }

      else
      {
        LOBYTE(a1) = 0;
      }
    }

    else
    {
      LOBYTE(a1) = [*(v2 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_view) isEqual_];
    }
  }

  return a1 & 1;
}

id PKPassTileForeignViewAdaptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKPassTileForeignViewAdaptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKPassTileForeignViewAdaptor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD1C3CB4()
{
  result = qword_1EBD3C4F8[0];
  if (!qword_1EBD3C4F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBD3C4F8);
  }

  return result;
}

uint64_t sub_1BD1C3F48(uint64_t a1)
{
  v2 = v1;
  v50 = v2;
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = *(v4 + qword_1EBDAAE38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v42 - v7;
  v8 = sub_1BE0534B4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v42 - v10;
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v42 - v18;
  sub_1BD1C4810(a1, v56);
  v44 = v4;
  v51 = v11;
  v52 = v16;
  v49 = v8;
  if (v57)
  {
    sub_1BE04EAF4();
    if (swift_dynamicCast())
    {
      v19 = v55;
      v20 = v53;
      sub_1BE04EAD4();

      v21 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BD14EC0C(v56);
  }

  v21 = 1;
  v20 = v53;
LABEL_6:
  v22 = v6;
  v23 = *(v6 + 56);
  v23(v20, v21, 1, v5);
  v24 = v52;
  sub_1BE04EAD4();
  v23(v24, 0, 1, v5);
  v47 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = v54;
  v27 = *(v54 + 16);
  v28 = v51;
  v29 = v49;
  v27(v51, v20, v49);
  v50 = v25;
  v27(&v25[v28], v24, v29);
  v48 = v22;
  v30 = *(v22 + 48);
  if (v30(v28, 1, v5) != 1)
  {
    v33 = v45;
    v27(v45, v28, v29);
    v34 = v50;
    v35 = v29;
    if (v30(&v50[v28], 1, v5) != 1)
    {
      v37 = v48;
      v38 = v43;
      (*(v48 + 32))(v43, &v34[v28], v5);
      v32 = sub_1BE052334();
      v39 = *(v37 + 8);
      v39(v38, v5);
      v40 = *(v54 + 8);
      v40(v24, v35);
      v40(v53, v35);
      v39(v33, v5);
      v40(v28, v35);
      return v32 & 1;
    }

    v36 = *(v54 + 8);
    v36(v24, v35);
    v36(v53, v35);
    (*(v48 + 8))(v33, v5);
    goto LABEL_11;
  }

  v31 = *(v26 + 8);
  v31(v24, v29);
  v31(v20, v29);
  if (v30(&v50[v28], 1, v5) != 1)
  {
LABEL_11:
    (*(v46 + 8))(v28, v47);
    v32 = 0;
    return v32 & 1;
  }

  v31(v28, v29);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1BD1C44C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1BD1C3F48(v8);

  sub_1BD14EC0C(v8);
  return v6 & 1;
}

uint64_t sub_1BD1C4538(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1BD1C4728(a1);
  (*(*(*(v2 + qword_1EBDAAE38) - 8) + 8))(a1);
  return v5;
}

id sub_1BD1C45B8(void *a1)
{
  v3 = type metadata accessor for PKEquatableHostingView(0, *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EBDAAE38), *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EBDAAE38 + 8), *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EBDAAE38 + 16));
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1BD1C4690()
{
  v1 = type metadata accessor for PKEquatableHostingView(0, *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EBDAAE38), *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EBDAAE38 + 8), *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EBDAAE38 + 16));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD1C4728(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_1BE04EAC4();
}

uint64_t sub_1BD1C4810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1C4880@<X0>(void *a2@<X8>)
{
  v53 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5C8, &qword_1BE0BEA60);
  v50 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v49 - v2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5D0, &qword_1BE0BEA68);
  MEMORY[0x1EEE9AC00](v51);
  v4 = &v49 - v3;
  v5 = sub_1BE04C894();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5A8, &qword_1BE0BEA50);
  v9 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v49 - v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(&v55);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = v55[2];
  v55, v29, v30, v31, v32, v33, v34, v35;
  if (v28)
  {
    v37 = MEMORY[0x1EEE9AC00](v36);
    (*(v6 + 104))(v8, *MEMORY[0x1E69BC9F0], v5, v37);
    sub_1BE04C784();
    sub_1BD1C7FB0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970], MEMORY[0x1E69BC968]);
    sub_1BE04C6B4();
    v38 = v52;
    (*(v9 + 16))(v4, v11, v52);
    swift_storeEnumTagMultiPayload();
    v39 = MEMORY[0x1E69BC928];
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8, &qword_1BE0BEA50, MEMORY[0x1E69BC928]);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5B0, &qword_1BE0BEA58);
    v41 = sub_1BD0DE4F4(&qword_1EBD3C5B8, &qword_1EBD3C5B0, &qword_1BE0BEA58, v39);
    v55 = v40;
    v56 = MEMORY[0x1E69E6370];
    v57 = v41;
    v58 = MEMORY[0x1E69E6388];
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v9 + 8))(v11, v38);
  }

  else
  {
    v43 = v49;
    sub_1BD1C4E10(v49);
    v44 = v50;
    v45 = v54;
    (*(v50 + 16))(v4, v43, v54);
    swift_storeEnumTagMultiPayload();
    v46 = MEMORY[0x1E69BC928];
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8, &qword_1BE0BEA50, MEMORY[0x1E69BC928]);
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5B0, &qword_1BE0BEA58);
    v48 = sub_1BD0DE4F4(&qword_1EBD3C5B8, &qword_1EBD3C5B0, &qword_1BE0BEA58, v46);
    v55 = v47;
    v56 = MEMORY[0x1E69E6370];
    v57 = v48;
    v58 = MEMORY[0x1E69E6388];
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v44 + 8))(v43, v45);
  }
}

uint64_t sub_1BD1C4E10@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_1BE04C624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v59 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04C894();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5B0, &qword_1BE0BEA58);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = v58 - v9;
  v64 = v1;
  v11 = *(v1 + 16);
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(v65);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = MEMORY[0x1E69BCA00];
  if (!LOBYTE(v65[0]))
  {
    v28 = MEMORY[0x1E69BC9F8];
  }

  (*(v6 + 104))(v8, *v28, v5);
  v58[1] = v58;
  v63 = v1;
  (*(v3 + 104))(v59, *MEMORY[0x1E69BC908], v2);
  sub_1BE04C784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5E0, &qword_1BE0BEB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5E8, &qword_1BE0BEB08);
  sub_1BD1C7FB0(&qword_1EBD3C5D8, MEMORY[0x1E69BC970], MEMORY[0x1E69BC968]);
  sub_1BD1C7C1C();
  sub_1BD1C7DB8();
  sub_1BE04C6C4();
  if (*(v11 + 40))
  {
    v29 = swift_getKeyPath();
    v30 = swift_getKeyPath();
    sub_1BE04D8B4(v65);
    v29, v31, v32, v33, v34, v35, v36, v37;
    v30, v38, v39, v40, v41, v42, v43, v44;
    v45 = v65[0];
  }

  else
  {
    v45 = 0;
  }

  v66[0] = v45;
  v46 = swift_allocObject();
  v47 = *(v1 + 48);
  v46[3] = *(v1 + 32);
  v46[4] = v47;
  v46[5] = *(v1 + 64);
  v48 = *(v1 + 16);
  v46[1] = *v1;
  v46[2] = v48;
  sub_1BD1C8050(v1, v65);
  sub_1BD0DE4F4(&qword_1EBD3C5B8, &qword_1EBD3C5B0, &qword_1BE0BEA58, MEMORY[0x1E69BC928]);
  v49 = v61;
  sub_1BE051064();
  v46, v50, v51, v52, v53, v54, v55, v56;
  return (*(v60 + 8))(v10, v49);
}

uint64_t sub_1BD1C52C4()
{
  sub_1BE0512B4();

  return sub_1BE04C774();
}

id sub_1BD1C531C@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C38, &unk_1BE0B9720);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v48 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C670, &qword_1BE0BEC20);
  MEMORY[0x1EEE9AC00](v57);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0, &qword_1BE0BEB50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = v48 - v10;
  v11 = sub_1BE04BD74();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C610, &qword_1BE0BEB18);
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v51 = v48 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C600, &qword_1BE0BEB10);
  MEMORY[0x1EEE9AC00](v56);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = v48 - v19;
  v20 = *(*(v1 + 16) + 16);
  if (*(v20 + 16) == 1 && (sub_1BD6CC0DC(*MEMORY[0x1E69BB7B8], v20) & 1) != 0 && (KeyPath = swift_getKeyPath(), v48[1] = a1, v22 = KeyPath, v23 = swift_getKeyPath(), v49 = v3, v24 = v23, sub_1BE04D8B4(&v59), v22, v25, v26, v27, v28, v29, v30, v31, v32 = v24, v3 = v49, v32, v33, v34, v35, v36, v37, v38, v39, v59 == 1))
  {
    v40 = v55;
    (*(v55 + 104))(v13, *MEMORY[0x1E69B8068], v11);
    result = PKPassKitBundle();
    if (result)
    {
      v42 = result;
      sub_1BE04B6F4();

      (*(v40 + 8))(v13, v11);
      sub_1BD1C5FBC(v50);
      v43 = v51;
      sub_1BE04C654();
      v59 = *(v1 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516A4();
      if (v58 == 1)
      {
        v44 = sub_1BE051D44();
      }

      else
      {
        v44 = 0;
      }

      v45 = &v17[*(v56 + 36)];
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C620, &unk_1BE0BEB20);
      sub_1BD1C5FBC(v45 + *(v46 + 36));
      *v45 = v44;
      (*(v52 + 32))(v17, v43, v53);
      v47 = v54;
      sub_1BD0DE204(v17, v54, &qword_1EBD3C600, &qword_1BE0BEB10);
      sub_1BD0DE19C(v47, v8, &qword_1EBD3C600, &qword_1BE0BEB10);
      swift_storeEnumTagMultiPayload();
      sub_1BD1C7CD4();
      sub_1BD0DE4F4(&qword_1EBD39C30, &qword_1EBD39C38, &unk_1BE0B9720, MEMORY[0x1E69BC918]);
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v47, &qword_1EBD3C600, &qword_1BE0BEB10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1BD1C6A20();
    (*(v4 + 16))(v8, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_1BD1C7CD4();
    sub_1BD0DE4F4(&qword_1EBD39C30, &qword_1EBD39C38, &unk_1BE0B9720, MEMORY[0x1E69BC918]);
    sub_1BE04F9A4();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1BD1C5924@<X0>(uint64_t a1@<X8>)
{
  if (sub_1BD1C59BC())
  {
    sub_1BD1C5B30(a1);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5E8, &qword_1BE0BEB08);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, v2, 1, v3);
}

uint64_t sub_1BD1C59BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  if (!v2)
  {
    return 0;
  }

  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4(&v77);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  if (v77 != 1 || (v26 = *(v1 + 16), *(v26 + 16) == 1) && (sub_1BD6CC0DC(*MEMORY[0x1E69BB7B8], v26) & 1) != 0)
  {
    v2, v19, v20, v21, v22, v23, v24, v25;
    return 0;
  }

  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  sub_1BE04D8B4(&v76);
  v28, v30, v31, v32, v33, v34, v35, v36;
  v29, v37, v38, v39, v40, v41, v42, v43;
  v51 = v76;
  if (v76)
  {
    v2, v44, v45, v46, v47, v48, v49, v50;

    return 1;
  }

  else
  {
    v52 = swift_getKeyPath();
    v53 = swift_getKeyPath();
    sub_1BE04D8B4(&v75);
    v52, v54, v55, v56, v57, v58, v59, v60;
    v53, v61, v62, v63, v64, v65, v66, v67;
    v2, v68, v69, v70, v71, v72, v73, v74;
    return v75;
  }
}

uint64_t sub_1BD1C5B30@<X0>(uint64_t a1@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C658, &unk_1BE0BEB40);
  MEMORY[0x1EEE9AC00](v46);
  v4 = (&v39 - v3);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C648, &qword_1BE0BEB38);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v39 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C638, &qword_1BE0BEB30);
  v7 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0, &qword_1BE0BEB50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_1BE04A5B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  sub_1BD1C5FBC(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD3ACF0, &qword_1BE0BEB50);
    v19 = 1;
  }

  else
  {
    v45 = a1;
    (*(v13 + 32))(v18, v11, v12);
    v20 = *(v13 + 16);
    v20(v15, v18, v12);
    v21 = sub_1BE0506A4();
    v42 = v22;
    v43 = v21;
    v41 = v23;
    v44 = v24;
    KeyPath = swift_getKeyPath();
    v51 = *(v1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    if (v50 == 1)
    {
      v25 = sub_1BE051D44();
    }

    else
    {
      v25 = 0;
    }

    v20(v4 + *(v46 + 36), v18, v12);
    *v4 = v25;
    sub_1BD0DE19C(v4, &v6[*(v48 + 36)], &qword_1EBD3C658, &unk_1BE0BEB40);
    v26 = v42;
    *v6 = v43;
    *(v6 + 1) = v26;
    v6[16] = v41 & 1;
    v27 = KeyPath;
    *(v6 + 3) = v44;
    *(v6 + 4) = v27;
    v6[40] = 0;
    sub_1BD0DE53C(v4, &qword_1EBD3C658, &unk_1BE0BEB40);
    sub_1BE052434();
    v29 = v28;
    sub_1BD1C7EF8();
    v30 = v47;
    sub_1BE050DE4();
    v29, v31, v32, v33, v34, v35, v36, v37;
    sub_1BD0DE53C(v6, &qword_1EBD3C648, &qword_1BE0BEB38);
    (*(v13 + 8))(v18, v12);
    a1 = v45;
    sub_1BD0DE204(v30, v45, &qword_1EBD3C638, &qword_1BE0BEB30);
    v19 = 0;
  }

  return (*(v7 + 56))(a1, v19, 1, v49);
}

id sub_1BD1C5FBC@<X0>(uint64_t a1@<X8>)
{
  v161 = a1;
  v2 = sub_1BE04A5B4();
  v164 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v152 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v148 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v153 = &v148 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v156 = &v148 - v10;
  v11 = sub_1BE04A604();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v159 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v148 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0, &qword_1BE0BEB50);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v155 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v148 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v160 = &v148 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v157 = &v148 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v148 - v28;
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v33 = &v148 - v31;
  v34 = *(*(v1 + 16) + 40);
  if (v34)
  {
    v150 = v6;
    v162 = v164[7];
    v163 = v164 + 7;
    v162(&v148 - v31, 1, 1, v2, v32.n128_f64[0]);
    KeyPath = swift_getKeyPath();
    v36 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(&v165);
    KeyPath, v37, v38, v39, v40, v41, v42, v43;
    v36, v44, v45, v46, v47, v48, v49, v50;
    if (v165 != 1)
    {
      v55 = swift_getKeyPath();
      v56 = swift_getKeyPath();
      sub_1BE04D8B4(&v165);
      v55, v57, v58, v59, v60, v61, v62, v63;
      v56, v64, v65, v66, v67, v68, v69, v70;
      v71 = v165;
      if (!v165)
      {
        goto LABEL_11;
      }

      sub_1BD9DE0A8(v165);
      sub_1BE04A5F4();
      v29 = v157;
      sub_1BE04A5C4();

LABEL_10:
      (v162)(v29, 0, 1, v2);
      sub_1BD1C8088(v29, v33);
LABEL_11:
      v151 = v13;
      v72 = v164[6];
      if (!v72(v33, 1, v2))
      {
        v165 = sub_1BE051224();
        sub_1BD1C80F8();
        sub_1BE04A5D4();
      }

      v73 = v160;
      (v162)(v160, 1, 1, v2);
      v74 = swift_getKeyPath();
      v75 = swift_getKeyPath();
      sub_1BE04D8B4(&v165);
      v74, v76, v77, v78, v79, v80, v81, v82;
      v75, v83, v84, v85, v86, v87, v88, v89;
      if ((v165 & 1) != 0 || (v90 = swift_getKeyPath(), v91 = swift_getKeyPath(), sub_1BE04D8B4(&v165), v90, v92, v93, v94, v95, v96, v97, v98, v91, v99, v100, v101, v102, v103, v104, v105, v165 == 1))
      {
        v106 = *&v34[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString + 8];
        if (v106)
        {
          v107 = *&v34[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString];
          v148 = "T@UIView,N,R,Vview";
          v108 = *MEMORY[0x1E69B8048];
          v109 = v14;
          v110 = *(v14 + 104);
          v149 = v72;
          v111 = v154;
          v112 = v151;
          v110(v154, v108, v151);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v113 = swift_allocObject();
          *(v113 + 16) = xmmword_1BE0B69E0;
          *(v113 + 56) = MEMORY[0x1E69E6158];
          *(v113 + 64) = sub_1BD110550();
          *(v113 + 32) = v107;
          *(v113 + 40) = v106;
          sub_1BE048C84();
          sub_1BE04B714();
          v113, v114, v115, v116, v117, v118, v119, v120;
          v121 = v111;
          v72 = v149;
          (*(v109 + 8))(v121, v112);
          sub_1BE04A5F4();
          v122 = v157;
          v73 = v160;
          sub_1BE04A5C4();
          (v162)(v122, 0, 1, v2);
          sub_1BD1C8088(v122, v73);
          if (!v72(v73, 1, v2))
          {
            v165 = sub_1BE050454();
            sub_1BD1C814C();
            sub_1BE04A5D4();
          }

          if (!v72(v73, 1, v2))
          {
            v165 = sub_1BE051234();
            sub_1BD1C80F8();
            sub_1BE04A5D4();
          }
        }
      }

      v123 = v158;
      sub_1BD0DE19C(v33, v158, &qword_1EBD3ACF0, &qword_1BE0BEB50);
      if (v72(v123, 1, v2) != 1)
      {
        v131 = v164[4];
        v132 = v73;
        v133 = v156;
        v131(v156, v123, v2);
        v123 = v155;
        sub_1BD0DE19C(v132, v155, &qword_1EBD3ACF0, &qword_1BE0BEB50);
        if (v72(v123, 1, v2) != 1)
        {
          v135 = v123;
          v136 = v153;
          v131(v153, v135, v2);
          v137 = v152;
          sub_1BE04A544();
          v138 = v150;
          sub_1BE04A554();
          v139 = v164[1];
          ++v164;
          v139(v137, v2);
          v140 = v161;
          sub_1BE04A554();
          v34, v141, v142, v143, v144, v145, v146, v147;
          v139(v138, v2);
          v139(v136, v2);
          v139(v133, v2);
          (v162)(v140, 0, 1, v2);
          v134 = v132;
          goto LABEL_25;
        }

        (v164[1])(v133, v2);
        v73 = v132;
      }

      v34, v124, v125, v126, v127, v128, v129, v130;
      sub_1BD0DE53C(v123, &qword_1EBD3ACF0, &qword_1BE0BEB50);
      sub_1BD0DE19C(v33, v161, &qword_1EBD3ACF0, &qword_1BE0BEB50);
      v134 = v73;
LABEL_25:
      sub_1BD0DE53C(v134, &qword_1EBD3ACF0, &qword_1BE0BEB50);
      return sub_1BD0DE53C(v33, &qword_1EBD3ACF0, &qword_1BE0BEB50);
    }

    (*(v14 + 104))(v18, *MEMORY[0x1E69B8048], v13);
    result = PKPassKitBundle();
    if (result)
    {
      v52 = result;
      sub_1BE04B6F4();

      (*(v14 + 8))(v18, v13);
      sub_1BE04A5F4();
      sub_1BE04A5C4();
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    v53 = v164[7];
    v54 = v161;

    return v53(v54, 1, 1, v2, v32);
  }

  return result;
}

id sub_1BD1C6A20()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    sub_1BE04B6F4();

    (*(v1 + 8))(v4, v0);
    KeyPath = swift_getKeyPath();
    v8 = swift_getKeyPath();
    sub_1BE04D8B4(&v55);
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
    v8, v16, v17, v18, v19, v20, v21, v22;
    if (v55 == 1)
    {
      v23 = swift_getKeyPath();
      v24 = swift_getKeyPath();
      sub_1BE04D8B4(&v55);
      v23, v25, v26, v27, v28, v29, v30, v31;
      v24, v32, v33, v34, v35, v36, v37, v38;
    }

    else
    {
      sub_1BD1C6C80();
    }

    v39 = swift_getKeyPath();
    v40 = swift_getKeyPath();
    sub_1BE04D8B4(&v55);
    v39, v41, v42, v43, v44, v45, v46, v47;
    v40, v48, v49, v50, v51, v52, v53, v54;
    if (v55 == 1)
    {
      sub_1BE051224();
    }

    else
    {
      sub_1BE051264();
    }

    return sub_1BE04C644();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD1C6C80()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v6;
  v9 = *MEMORY[0x1E69B8068];
  v10 = *(v2 + 104);
  if (*v0 == 10)
  {
    v10(&v14 - v6, v9, v1, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v8, v1);
      return v13;
    }

    __break(1u);
  }

  else
  {
    v10(v4, v9, v1, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
      v8 = v4;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1C6E54(uint64_t a1)
{
  sub_1BE0511D4();

  return sub_1BE04C774();
}

void sub_1BD1C6EAC(uint64_t a1@<X8>)
{
  sub_1BD1C6FD0();
  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1BE050324();
  v10 = sub_1BE0505F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v9, v11, v13, v15, v17, v18, v19, v20;
  sub_1BD0DDF10(v2, v4, (v6 & 1), v21, v22, v23, v24, v25);
  v8, v26, v27, v28, v29, v30, v31, v32;
  v33 = sub_1BE0511F4();
  v34 = sub_1BE050564();
  v36 = v35;
  LOBYTE(v8) = v37;
  v39 = v38;
  v33, v35, v37, v38, v40, v41, v42, v43;
  sub_1BD0DDF10(v10, v12, (v14 & 1), v44, v45, v46, v47, v48);
  v16, v49, v50, v51, v52, v53, v54, v55;
  *a1 = v34;
  *(a1 + 8) = v36;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v39;
}

id sub_1BD1C6FD0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v185 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v185 = &v185 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v185 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v185 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v185 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v185 - v16;
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  sub_1BE04D8B4(&v186);
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  v19, v27, v28, v29, v30, v31, v32, v33;
  v34 = v186;
  v35 = sub_1BD960FA4(v186);
  if (!v35)
  {
    v34, v36, v37, v38, v39, v40, v41, v42;
LABEL_8:
    (*(v1 + 104))(v3, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v65 = result;
      v66 = sub_1BE04B6F4();
      v17 = v3;
LABEL_15:

      (*(v1 + 8))(v17, v0);
      return v66;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v43 = v35;
  v44 = v34[2];
  v34, v36, v37, v38, v39, v40, v41, v42;
  if (v44 != 1)
  {

    goto LABEL_8;
  }

  v45 = sub_1BE052434();
  v47 = v46;
  v49 = sub_1BE052434();
  v55 = v45;
  v56 = v48;
  if (v55 == v49 && v47 == v48)
  {
    v47, v48, v49, v50, v51, v52, v53, v54;
    v56, v57, v58, v59, v60, v61, v62, v63;
    goto LABEL_11;
  }

  v67 = sub_1BE053B84();
  v47, v68, v69, v70, v71, v72, v73, v74;
  v56, v75, v76, v77, v78, v79, v80, v81;
  if (v67)
  {
LABEL_11:
    (*(v1 + 104))(v17, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v65 = result;
LABEL_13:
      v82 = sub_1BE04B6F4();
LABEL_14:
      v66 = v82;

      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v83 = sub_1BE052434();
  v85 = v84;
  v87 = sub_1BE052434();
  v93 = v83;
  v94 = v86;
  if (v93 == v87 && v85 == v86)
  {
    v85, v86, v87, v88, v89, v90, v91, v92;
    v94, v95, v96, v97, v98, v99, v100, v101;
    goto LABEL_20;
  }

  v102 = sub_1BE053B84();
  v85, v103, v104, v105, v106, v107, v108, v109;
  v94, v110, v111, v112, v113, v114, v115, v116;
  if (v102)
  {
LABEL_20:
    (*(v1 + 104))(v14, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v65 = result;
      v66 = sub_1BE04B6F4();

      v17 = v14;
      goto LABEL_15;
    }

    goto LABEL_38;
  }

  v117 = sub_1BE052434();
  v119 = v118;
  v121 = sub_1BE052434();
  v127 = v117;
  v128 = v120;
  if (v127 == v121 && v119 == v120)
  {
    v119, v120, v121, v122, v123, v124, v125, v126;
    v128, v129, v130, v131, v132, v133, v134, v135;
    goto LABEL_26;
  }

  v136 = sub_1BE053B84();
  v119, v137, v138, v139, v140, v141, v142, v143;
  v128, v144, v145, v146, v147, v148, v149, v150;
  if (v136)
  {
LABEL_26:
    (*(v1 + 104))(v11, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v65 = result;
      v66 = sub_1BE04B6F4();

      v17 = v11;
      goto LABEL_15;
    }

    goto LABEL_39;
  }

  v151 = sub_1BE052434();
  v153 = v152;
  v155 = sub_1BE052434();
  v161 = v151;
  v162 = v154;
  if (v161 == v155 && v153 == v154)
  {
    v153, v154, v155, v156, v157, v158, v159, v160;
    v162, v163, v164, v165, v166, v167, v168, v169;
    goto LABEL_32;
  }

  v170 = sub_1BE053B84();
  v153, v171, v172, v173, v174, v175, v176, v177;
  v162, v178, v179, v180, v181, v182, v183, v184;
  if (v170)
  {
LABEL_32:
    (*(v1 + 104))(v8, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v65 = result;
      v82 = sub_1BE04B6F4();
      v17 = v8;
      goto LABEL_14;
    }

    goto LABEL_40;
  }

  v17 = v185;
  (*(v1 + 104))(v185, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v65 = result;
    goto LABEL_13;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1BD1C7660()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C588, &qword_1BE0BEA40);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-v3];
  v5 = v0[3];
  v19[2] = v0[2];
  v19[3] = v5;
  v19[4] = v0[4];
  v6 = v0[1];
  v19[0] = *v0;
  v19[1] = v6;
  v18 = v19;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C590, &qword_1BE0BEA48);
  sub_1BD1C7AB0();
  sub_1BE051704();
  sub_1BE052434();
  v8 = v7;
  sub_1BD0DE4F4(&qword_1EBD3C5C0, &qword_1EBD3C588, &qword_1BE0BEA40, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v8, v9, v10, v11, v12, v13, v14, v15;
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1BD1C7824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE051694();
  v10 = v42;
  v11 = v43;
  type metadata accessor for ShippingContact(0);
  sub_1BD1C7FB0(&qword_1EBD3C580, type metadata accessor for ShippingContact, &unk_1BE0FC340);
  sub_1BE048964();
  v12 = sub_1BE04E954();
  v14 = v13;
  if (*(a2 + 40))
  {
    v41 = v43;
    v15 = a1;
    v16 = a3;
    v17 = a4;
    KeyPath = swift_getKeyPath();
    v19 = v12;
    v20 = v42;
    v21 = swift_getKeyPath();
    sub_1BE04D8B4(&v42);
    v22 = KeyPath;
    a4 = v17;
    a3 = v16;
    a1 = v15;
    v11 = v41;
    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = v21;
    v10 = v20;
    v12 = v19;
    v30, v31, v32, v33, v34, v35, v36, v37;
  }

  result = sub_1BE051694();
  v39 = v42;
  v40 = v43;
  *a5 = a1;
  *(a5 + 8) = v12;
  *(a5 + 16) = v14;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  *(a5 + 40) = 0x4049000000000000;
  *(a5 + 48) = v10;
  *(a5 + 56) = v11;
  *(a5 + 64) = v39;
  *(a5 + 72) = v40;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BD1C79E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BD1C7A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD1C7AB0()
{
  result = qword_1EBD3C598;
  if (!qword_1EBD3C598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C590, &qword_1BE0BEA48);
    v1 = MEMORY[0x1E69BC928];
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8, &qword_1BE0BEA50, MEMORY[0x1E69BC928]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5B0, &qword_1BE0BEA58);
    sub_1BD0DE4F4(&qword_1EBD3C5B8, &qword_1EBD3C5B0, &qword_1BE0BEA58, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C598);
  }

  return result;
}

unint64_t sub_1BD1C7C1C()
{
  result = qword_1EBD3C5F0;
  if (!qword_1EBD3C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5E0, &qword_1BE0BEB00);
    sub_1BD1C7CD4();
    sub_1BD0DE4F4(&qword_1EBD39C30, &qword_1EBD39C38, &unk_1BE0B9720, MEMORY[0x1E69BC918]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C5F0);
  }

  return result;
}

unint64_t sub_1BD1C7CD4()
{
  result = qword_1EBD3C5F8;
  if (!qword_1EBD3C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C600, &qword_1BE0BEB10);
    sub_1BD0DE4F4(&qword_1EBD3C608, &qword_1EBD3C610, &qword_1BE0BEB18, MEMORY[0x1E69BC918]);
    sub_1BD0DE4F4(&qword_1EBD3C618, &qword_1EBD3C620, &unk_1BE0BEB20, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C5F8);
  }

  return result;
}

unint64_t sub_1BD1C7DB8()
{
  result = qword_1EBD3C628;
  if (!qword_1EBD3C628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C5E8, &qword_1BE0BEB08);
    sub_1BD1C7E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C628);
  }

  return result;
}

unint64_t sub_1BD1C7E3C()
{
  result = qword_1EBD3C630;
  if (!qword_1EBD3C630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C638, &qword_1BE0BEB30);
    sub_1BD1C7EF8();
    sub_1BD1C7FB0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C630);
  }

  return result;
}

unint64_t sub_1BD1C7EF8()
{
  result = qword_1EBD3C640;
  if (!qword_1EBD3C640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C648, &qword_1BE0BEB38);
    sub_1BD0FF49C();
    sub_1BD0DE4F4(&qword_1EBD3C650, &qword_1EBD3C658, &unk_1BE0BEB40, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C640);
  }

  return result;
}

uint64_t sub_1BD1C7FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD1C8088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0, &qword_1BE0BEB50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1C80F8()
{
  result = qword_1EBD3C660;
  if (!qword_1EBD3C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C660);
  }

  return result;
}

unint64_t sub_1BD1C814C()
{
  result = qword_1EBD3C668;
  if (!qword_1EBD3C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C668);
  }

  return result;
}

unint64_t sub_1BD1C81A0()
{
  result = qword_1EBD3C678;
  if (!qword_1EBD3C678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C680, &unk_1BE0BEC70);
    sub_1BD0DE4F4(&qword_1EBD3C5C0, &qword_1EBD3C588, &qword_1BE0BEA40, MEMORY[0x1E697D680]);
    sub_1BD1C7FB0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C678);
  }

  return result;
}

void sub_1BD1C82F0(uint64_t a1)
{
  type metadata accessor for PKPaymentRequestType(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD38840, 0x1E696AB90);
    if (v2 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD3C698, &qword_1EBD38840, 0x1E696AB90);
      if (v3 <= 0x3F)
      {
        _s22SummaryItemPricingTypeOMa(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PKPaymentAuthorizationFundingMode(319);
          if (v5 <= 0x3F)
          {
            sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560, 0x1E69B91F8);
            if (v6 <= 0x3F)
            {
              sub_1BD1C84B0(319, &qword_1EBD36458, type metadata accessor for PeerPaymentModel);
              if (v7 <= 0x3F)
              {
                sub_1BD1C84B0(319, &qword_1EBD3C6A0, type metadata accessor for Passes);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for PKPaymentAuthorizationState(319);
                  if (v9 <= 0x3F)
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

void sub_1BD1C84B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD1C8504(uint64_t a1)
{
  result = _s22SummaryItemPricingTypeO13RecurringItemVMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BE04AF64();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD1C85D8(uint64_t a1)
{
  type metadata accessor for Unit(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1C84B0(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1BD1C86BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD1C86BC()
{
  if (!qword_1EBD4F750)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4F750);
    }
  }
}

uint64_t sub_1BD1C870C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    sub_1BD1CA51C(v8, a2, a3, a4);
    _s22SummaryItemPricingTypeOMa(0);
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v17 = v9;
      a3, v10, v11, v12, v13, v14, v15, v16;
      v18 = [v17 deferredDate];
      sub_1BE04AEE4();

      _s22SummaryItemPricingTypeOMa(0);
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v19 = a1;
        v20 = sub_1BD59BFAC(a2, a3);
        v22 = v21;

        a3, v23, v24, v25, v26, v27, v28, v29;
        *a4 = v20;
        a4[1] = v22;
      }

      else
      {

        a3, v30, v31, v32, v33, v34, v35, v36;
      }

      _s22SummaryItemPricingTypeOMa(0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

id sub_1BD1C8894()
{
  v1 = sub_1BE04AF64();
  v122 = *(v1 - 8);
  v123 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v121 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v125 = v9;
  v126 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v119 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v119 - v22;
  v24 = _s11TotalAmountVMa(0);
  v25 = v24;
  if (*(v0 + *(v24 + 52)) != 2 || (v26 = *(v0 + *(v24 + 56))) == 0)
  {
LABEL_9:
    if (*(v0 + v25[12]) == 1)
    {
      v35 = v125;
      v34 = v126;
      (*(v126 + 104))(v14, *MEMORY[0x1E69B8068], v125);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
        v33 = sub_1BE04B6F4();

        (*(v34 + 8))(v14, v35);
        return v33;
      }

      __break(1u);
      goto LABEL_44;
    }

    v38 = *v0;
    if (*v0 <= 9 && ((1 << v38) & 0x20C) != 0 || *(v0 + v25[11]) == 1)
    {
      v33 = v0[5];
      sub_1BE048C84();
      return v33;
    }

    if (v38 == 10)
    {
      v39 = sub_1BD1C9A74();
      if (v40)
      {
        v41 = v39;
        v42 = v40;
        v44 = v125;
        v43 = v126;
        v45 = v124;
        (*(v126 + 104))(v124, *MEMORY[0x1E69B8070], v125);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1BE0B69E0;
        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = sub_1BD110550();
        *(v46 + 32) = v41;
        *(v46 + 40) = v42;
        v33 = sub_1BE04B714();
        v46, v47, v48, v49, v50, v51, v52, v53;
        (*(v43 + 8))(v45, v44);
      }

      else
      {
        v79 = v125;
        v78 = v126;
        v80 = v124;
        (*(v126 + 104))(v124, *MEMORY[0x1E69B8070], v125);
        v33 = sub_1BE04B714();
        (*(v78 + 8))(v80, v79);
      }

      return v33;
    }

    sub_1BD1CBB88(v0 + v25[10], v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1BD1CBAC0(v8, _s22SummaryItemPricingTypeOMa);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1BE0B69E0;
        v60 = v0[5];
        v59 = v0[6];
        *(v58 + 56) = MEMORY[0x1E69E6158];
        *(v58 + 64) = sub_1BD110550();
        *(v58 + 32) = v60;
        *(v58 + 40) = v59;
        v62 = v125;
        v61 = v126;
        v63 = v124;
        (*(v126 + 104))(v124, *MEMORY[0x1E69B8068], v125);
        sub_1BE048C84();
LABEL_36:
        v33 = sub_1BE04B714();
        v58, v83, v84, v85, v86, v87, v88, v89;
        (*(v61 + 8))(v63, v62);
        return v33;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v91 = v121;
        v90 = v122;
        v92 = v123;
        (*(v122 + 32))(v121, v8, v123);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1BE0B69E0;
        v94 = sub_1BD1C9C94(v91);
        v96 = v95;
        *(v93 + 56) = MEMORY[0x1E69E6158];
        *(v93 + 64) = sub_1BD110550();
        *(v93 + 32) = v94;
        *(v93 + 40) = v96;
        v98 = v125;
        v97 = v126;
        v99 = v124;
        (*(v126 + 104))(v124, *MEMORY[0x1E69B8068], v125);
        v33 = sub_1BE04B714();
        v93, v100, v101, v102, v103, v104, v105, v106;
        (*(v97 + 8))(v99, v98);
        (*(v90 + 8))(v91, v92);
        return v33;
      }

      sub_1BD1CBB20(v8, v5, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      if (*(v0 + 56) != 1 || (v5[*(v3 + 32)] & 1) == 0)
      {
        v33 = *&v5[*(v3 + 40)];
        sub_1BE048C84();
        sub_1BD1CBAC0(v5, _s22SummaryItemPricingTypeO13RecurringItemVMa);
        return v33;
      }

      sub_1BD1CBAC0(v5, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1BE0B69E0;
    v82 = v0[5];
    v81 = v0[6];
    *(v58 + 56) = MEMORY[0x1E69E6158];
    *(v58 + 64) = sub_1BD110550();
    *(v58 + 32) = v82;
    *(v58 + 40) = v81;
    v62 = v125;
    v61 = v126;
    v63 = v124;
    (*(v126 + 104))(v124, *MEMORY[0x1E69B8068], v125);
    sub_1BE048C84();
    goto LABEL_36;
  }

  v119 = v20;
  v120 = v17;
  v27 = v26;
  if ([v27 type] != 1 || (objc_opt_self(), (v28 = swift_dynamicCastObjCClass()) == 0) || (v29 = objc_msgSend(v28, sel_selectedInstallmentOffer)) == 0)
  {

    goto LABEL_9;
  }

  v30 = v29;
  v31 = PKPaymentOfferInstallmentAssessmentOffer.checkoutDueDateString.getter();
  if (v32)
  {
    v33 = v31;

    return v33;
  }

  sub_1BD0DE19C(v0 + v25[16], v23, &unk_1EBD43B40, &qword_1BE0D42C0);
  v55 = type metadata accessor for Passes(0);
  if ((*(*(v55 - 8) + 48))(v23, 1, v55) == 1)
  {
    sub_1BD0DE53C(v23, &unk_1EBD43B40, &qword_1BE0D42C0);
    v57 = v125;
    v56 = v126;
    goto LABEL_40;
  }

  v64 = *&v23[*(v55 + 20)];
  v65 = v64;
  sub_1BD1CBAC0(v23, type metadata accessor for Passes);
  v57 = v125;
  v56 = v126;
  if (!v64)
  {
LABEL_40:
    v107 = v120;
    (*(v56 + 104))(v120, *MEMORY[0x1E69B8078], v57);
    v108 = [v30 preferredLanguage];
    sub_1BE052434();
    v110 = v109;

    result = PKPassKitBundle();
    if (result)
    {
      v111 = result;
      v33 = sub_1BE04B6E4();
      v110, v112, v113, v114, v115, v116, v117, v118;

      (*(v56 + 8))(v107, v57);
      return v33;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ([v65 paymentType] != 2)
  {

    goto LABEL_40;
  }

  v66 = v119;
  (*(v56 + 104))(v119, *MEMORY[0x1E69B8078], v57);
  v67 = [v30 preferredLanguage];
  sub_1BE052434();
  v69 = v68;

  result = PKPassKitBundle();
  if (result)
  {
    v70 = result;
    v33 = sub_1BE04B6E4();

    v69, v71, v72, v73, v74, v75, v76, v77;
    (*(v56 + 8))(v66, v57);
    return v33;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_1BD1C93D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v43 = &v41 - v2;
  v3 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = _s11TotalAmountVMa(0);
  v16 = v15;
  if (*(v0 + v15[13]) == 2)
  {
    v17 = *(v0 + v15[14]);
    if (v17)
    {
      if (*(v0 + v15[17]) == 18)
      {
        (*(v9 + 104))(v14, *MEMORY[0x1E69B8078], v8);
        v18 = v17;
        v19 = PKPassKitBundle();
        if (v19)
        {
          v20 = v19;
          sub_1BE04B6F4();

          (*(v9 + 8))(v14, v8);
          return;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v21 = v17;
      if ([v21 type] == 1)
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v23 = v22;
          v42 = v21;
          v24 = [v23 selectedInstallmentOffer];
          if (v24)
          {
            v25 = v24;
            PKPaymentOfferInstallmentAssessmentOffer.checkoutAmountString.getter();
            v26 = v42;

LABEL_26:
            return;
          }
        }
      }
    }
  }

  if (*(v0 + v16[12]) == 1)
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69B8068], v8);
    v27 = PKPassKitBundle();
    if (v27)
    {
      v28 = v27;
      sub_1BE04B6F4();

      (*(v9 + 8))(v11, v8);
      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1BD1CBB88(v0 + v16[10], v5);
  if (!swift_getEnumCaseMultiPayload())
  {
LABEL_19:
    sub_1BD1CBB20(v5, v7, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    sub_1BE048C84();
    sub_1BD1CBAC0(v7, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    return;
  }

  sub_1BD1CBAC0(v5, _s22SummaryItemPricingTypeOMa);
  if (*v0 == 10)
  {
    v7 = *(v0 + 16);
    v29 = sub_1BE052404();
    v30 = PKFormattedCurrencyStringFromNumber();

    if (!v30)
    {
      __break(1u);
      goto LABEL_19;
    }

LABEL_28:
    sub_1BE052434();

    return;
  }

  v31 = v43;
  sub_1BD0DE19C(v0 + v16[15], v43, &qword_1EBD45480, &unk_1BE0B8C30);
  v32 = type metadata accessor for PeerPaymentModel(0);
  if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
  {
    sub_1BD0DE53C(v31, &qword_1EBD45480, &unk_1BE0B8C30);
    goto LABEL_27;
  }

  v33 = (v31 + *(v32 + 24));
  v34 = v33[3];
  v46[2] = v33[2];
  v46[3] = v34;
  v35 = v33[5];
  v46[4] = v33[4];
  v46[5] = v35;
  v36 = v33[1];
  v46[0] = *v33;
  v46[1] = v36;
  sub_1BD0DE19C(v46, v45, &unk_1EBD521D0, qword_1BE0BEDC0);
  sub_1BD1CBAC0(v31, type metadata accessor for PeerPaymentModel);
  v37 = *&v46[0];
  if (*&v46[0] == 1 || (v26 = *&v46[0], sub_1BD0DE53C(v46, &unk_1EBD521D0, qword_1BE0BEDC0), !v37))
  {
LABEL_27:
    v40 = sub_1BE052404();
    v30 = PKFormattedCurrencyStringFromNumber();

    if (!v30)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v38 = [v26 receiveAmount];
  v39 = [v26 receiveAmountCurrency];
  v25 = PKFormattedCurrencyStringFromNumber();

  if (v25)
  {
    sub_1BE052434();
    goto LABEL_26;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1BD1C9A74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = _s11TotalAmountVMa(0);
  sub_1BD0DE19C(v0 + *(v7 + 64), v3, &unk_1EBD43B40, &qword_1BE0D42C0);
  v8 = type metadata accessor for Passes(0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    v9 = &unk_1EBD43B40;
    v10 = &qword_1BE0D42C0;
    v11 = v3;
LABEL_5:
    sub_1BD0DE53C(v11, v9, v10);
    return 0;
  }

  sub_1BD0DE19C(v3, v6, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD1CBAC0(v3, type metadata accessor for Passes);
  v12 = type metadata accessor for AvailablePass(0);
  if ((*(*(v12 - 8) + 48))(v6, 1, v12) == 1)
  {
    v9 = &qword_1EBD520A0;
    v10 = &qword_1BE0B9840;
    v11 = v6;
    goto LABEL_5;
  }

  v15 = sub_1BD49C818(v13);
  sub_1BD1CBAC0(v6, type metadata accessor for AvailablePass);
  return v15;
}

uint64_t sub_1BD1C9C94(uint64_t a1)
{
  v32 = a1;
  v1 = sub_1BE04ACA4();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04ABD4();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AC64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04AD84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v27 - v22;
  MEMORY[0x1BFB371E0](v21);
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v7 + 8))(v9, v6);
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_1BE04ABC4();
  sub_1BE04AB64();
  (*(v27 + 8))(v5, v28);
  v24(v16, v10);
  v25 = v29;
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v30 + 8))(v25, v31);
  v24(v19, v10);
  sub_1BD1CBC5C(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  sub_1BE04AF44();
  v24(v23, v10);
  return v33;
}

uint64_t sub_1BD1CA054()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04AF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s11TotalAmountVMa(0);
  result = 0;
  if ((*(v0 + *(v15 + 44)) & 1) == 0)
  {
    sub_1BD1CBB88(v0 + *(v15 + 40), v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return *v14;
      }

      v23 = _s22SummaryItemPricingTypeOMa;
      v24 = v14;
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v8, v14, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BE0B69E0;
      v26 = sub_1BD1C9C94(v8);
      v28 = v27;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1BD110550();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      (*(v2 + 104))(v4, *MEMORY[0x1E69B8068], v1);
      v29 = sub_1BE04B714();
      v25, v30, v31, v32, v33, v34, v35, v36;
      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v8, v5);
      return v29;
    }

    sub_1BD1CBB20(v14, v11, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    v18 = *(v0 + 8);
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 zero];
    sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
    v22 = sub_1BE053074();

    if (v22)
    {
      v23 = _s22SummaryItemPricingTypeO13RecurringItemVMa;
      v24 = v11;
LABEL_10:
      sub_1BD1CBAC0(v24, v23);
      return 0;
    }

    v37 = PKLocalizedIntervalTermString();
    if (v37)
    {
      v38 = v37;
      v39 = sub_1BE052434();
    }

    else
    {
      v39 = 0;
    }

    sub_1BD1CBAC0(v11, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    return v39;
  }

  return result;
}

uint64_t sub_1BD1CA4BC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1BE053B84() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BD1CA51C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v53 = [a1 intervalCount];
  v52 = [a1 intervalUnit];
  v15 = [a1 startDate];
  if (v15)
  {
    v16 = v15;
    sub_1BE04AEE4();

    v17 = sub_1BE04AF64();
    (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  }

  else
  {
    v18 = sub_1BE04AF64();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  }

  v19 = [a1 endDate];
  v54 = v14;
  if (v19)
  {
    v20 = v19;
    sub_1BE04AEE4();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_1BE04AF64();
  (*(*(v22 - 8) + 56))(v10, v21, 1, v22);
  v51 = sub_1BD7C4C88();
  v23 = sub_1BD7C4F84(a2, a3);
  v49 = v24;
  v50 = v23;
  v25 = sub_1BD7C51C0();
  v27 = v26;
  v28 = sub_1BD7C641C(0);
  v30 = v29;
  v31 = sub_1BD7C5CE0(a2, a3);
  v33 = v32;

  a3, v34, v35, v36, v37, v38, v39, v40;
  v41 = v52;
  *a4 = v53;
  a4[1] = v41;
  v42 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  sub_1BD1CBBEC(v54, a4 + v42[6]);
  result = sub_1BD1CBBEC(v10, a4 + v42[7]);
  *(a4 + v42[8]) = v51 & 1;
  v44 = (a4 + v42[9]);
  v45 = v49;
  *v44 = v50;
  v44[1] = v45;
  v46 = (a4 + v42[10]);
  *v46 = v25;
  v46[1] = v27;
  v47 = (a4 + v42[11]);
  *v47 = v28;
  v47[1] = v30;
  v48 = (a4 + v42[12]);
  *v48 = v31;
  v48[1] = v33;
  return result;
}

BOOL sub_1BD1CA7EC(void *a1, void *a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59[-v18];
  if (*a1 != *a2)
  {
    return 0;
  }

  v61 = v10;
  v20 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  v64 = v5;
  v65 = a2;
  v21 = *(v20 + 24);
  v22 = a1;
  v23 = *(v14 + 48);
  v62 = v20;
  v63 = v22;
  sub_1BD0DE19C(v22 + v21, v19, &unk_1EBD39970, &unk_1BE0B9F80);
  v24 = v65 + v21;
  v25 = v64;
  sub_1BD0DE19C(v24, &v19[v23], &unk_1EBD39970, &unk_1BE0B9F80);
  v26 = *(v25 + 48);
  if (v26(v19, 1, v4) == 1)
  {
    if (v26(&v19[v23], 1, v4) == 1)
    {
      sub_1BD0DE53C(v19, &unk_1EBD39970, &unk_1BE0B9F80);
      goto LABEL_9;
    }

LABEL_7:
    v27 = v19;
LABEL_15:
    sub_1BD0DE53C(v27, &qword_1EBD3A750, &unk_1BE0D3540);
    return 0;
  }

  sub_1BD0DE19C(v19, v13, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v26(&v19[v23], 1, v4) == 1)
  {
    (*(v25 + 8))(v13, v4);
    goto LABEL_7;
  }

  (*(v25 + 32))(v7, &v19[v23], v4);
  sub_1BD1CBC5C(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v60 = sub_1BE052334();
  v28 = *(v25 + 8);
  v28(v7, v4);
  v28(v13, v4);
  sub_1BD0DE53C(v19, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v29 = v62;
  v30 = v62[7];
  v31 = *(v14 + 48);
  sub_1BD0DE19C(v63 + v30, v16, &unk_1EBD39970, &unk_1BE0B9F80);
  v32 = v65 + v30;
  v33 = v65;
  sub_1BD0DE19C(v32, &v16[v31], &unk_1EBD39970, &unk_1BE0B9F80);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v31], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &unk_1EBD39970, &unk_1BE0B9F80);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v34 = v61;
  sub_1BD0DE19C(v16, v61, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v26(&v16[v31], 1, v4) == 1)
  {
    (*(v64 + 8))(v34, v4);
LABEL_14:
    v27 = v16;
    goto LABEL_15;
  }

  v36 = v64;
  (*(v64 + 32))(v7, &v16[v31], v4);
  sub_1BD1CBC5C(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v37 = sub_1BE052334();
  v38 = *(v36 + 8);
  v38(v7, v4);
  v38(v34, v4);
  sub_1BD0DE53C(v16, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v39 = v63;
  if (*(v63 + v29[8]) != *(v33 + v29[8]))
  {
    return 0;
  }

  v40 = v29[9];
  v41 = (v63 + v40);
  v42 = *(v63 + v40 + 8);
  v43 = (v33 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v45 = v29[10];
  v46 = *(v39 + v45);
  v47 = *(v39 + v45 + 8);
  v48 = (v33 + v45);
  if ((v46 != *v48 || v47 != v48[1]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v49 = v29[11];
  v50 = (v39 + v49);
  v51 = *(v39 + v49 + 8);
  v52 = (v33 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v54 = v29[12];
  v55 = (v39 + v54);
  v56 = *(v39 + v54 + 8);
  v57 = (v33 + v54);
  v58 = v57[1];
  if (v56)
  {
    return v58 && (*v55 == *v57 && v56 == v58 || (sub_1BE053B84() & 1) != 0);
  }

  return !v58;
}