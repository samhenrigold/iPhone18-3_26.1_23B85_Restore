void sub_1CF774BF8(dispatch_group_t a1, int a2, uint64_t a3, void *a4, unint64_t *a5, id a6)
{
  v410 = a3;
  v411 = a2;
  v10 = sub_1CF9E63A8();
  v379 = *(v10 - 8);
  v380 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v378 = &v376 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E53C8();
  v408 = *(v12 - 8);
  v409 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v381 = &v376 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v385 = &v376 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v386 = &v376 - v17;
  v18 = sub_1CF9E6388();
  v404 = *(v18 - 8);
  v405 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v400 = (&v376 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v401 = &v376 - v21;
  v22 = sub_1CF9E6498();
  v402 = *(v22 - 8);
  v403 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v399 = &v376 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v389 = &v376 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v390 = &v376 - v27;
  v28 = sub_1CF9E63D8();
  v397 = *(v28 - 8);
  v398 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v387 = &v376 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v388 = &v376 - v31;
  v32 = sub_1CF9E6448();
  v406 = *(v32 - 8);
  v407 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v377 = &v376 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v391 = &v376 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v392 = &v376 - v37;
  v38 = sub_1CF9E73D8();
  v395 = *(v38 - 8);
  v396 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v394 = &v376 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v412 = &v376 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CF9E5268();
  v43 = *(v42 - 8);
  v413 = v42;
  v414 = v43;
  MEMORY[0x1EEE9AC00](v42);
  v383 = &v376 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v382 = &v376 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v393 = &v376 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v376 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v384 = &v376 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v376 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v376 - v58;
  v60 = swift_allocObject();
  v60[2] = a4;
  v60[3] = a5;
  v417 = a6;
  v60[4] = a6;
  v448[0] = a1;
  v61 = a4;
  v418 = a5;

  v62 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v429 = v445;
    v430 = v446;
    v425 = v442;
    v426 = v443;
    v427 = v444[0];
    v428 = v444[1];
    v423 = aBlock;
    v424 = v441;
    v437 = v445;
    v438 = v446;
    v434 = v442;
    v435 = v443;
    v436[0] = v444[0];
    v436[1] = v444[1];
    v431 = v447;
    v439 = v447;
    v432 = aBlock;
    v433 = v441;
    if (sub_1CF2B971C(&v432))
    {
      sub_1CEFCCC44(&v423, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v83 = v82;
    v84 = *v82;
    v85 = *(v82 + 8);
    v86 = *(v82 + 112);

    v87 = sub_1CEFCCC44(v83 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v85 != 2 || v84)
    {
      if (v85 != 2 || v84 != 1)
      {
        v421 = 0x2F73662F70665F5FLL;
        v422 = 0xE800000000000000;
        v419 = v84;
        v420 = v85;
        v135 = VFSItemID.description.getter(v87);
        v137 = v136;
        MEMORY[0x1D3868CC0](v135);
        v137, v138, v139, v140, v141, v142, v143, v144;
        v145 = v422;
        v101 = sub_1CF9E6888();
        v145, v146, v147, v148, v149, v150, v151, v152;
        if (v86)
        {
          goto LABEL_22;
        }

        goto LABEL_62;
      }

      v88 = MEMORY[0x1E6967280];
    }

    else
    {
      v88 = MEMORY[0x1E6967258];
    }

    v101 = *v88;
    if (v86)
    {
LABEL_22:
      v102 = v86;
LABEL_63:
      v153 = v86;
      v154 = v102;
      if (objc_sync_enter(v61))
      {
        swift_unknownObjectRetain();

        sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v61);
      }

      sub_1CF771964(v418 + 2, v417, v102);
      if (objc_sync_exit(v61))
      {
        swift_unknownObjectRetain();

        sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v61);
      }

      dispatch_group_leave(v61);
      goto LABEL_88;
    }

LABEL_62:
    v102 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_63;
  }

LABEL_4:
  v415 = v61;
  v416 = v60;

  *&v423 = a1;
  v64 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v436 + 9) = *(v444 + 9);
    v435 = v443;
    v436[0] = v444[0];
    v433 = v441;
    v434 = v442;
    v432 = aBlock;
    if (!BYTE8(v444[1]))
    {
      v89 = *(&v436[0] + 1);
      v90 = *&v436[0];
      v91 = *(&v435 + 1);
      v92 = v435;
      v93 = *(&v434 + 1);
      v94 = v434;
      v95 = *(&v433 + 1);
      v96 = v433;
      v97 = *(&v432 + 1);
      v414 = v432;

      sub_1CF1D56D0(v97, v96, v95, v94, v93, v92, v91, v90);
      if (v89)
      {
        v98 = v89;
        v99 = v415;
        v100 = v414;
      }

      else
      {
        v130 = objc_opt_self();
        v100 = v414;
        v98 = [v130 fileProviderErrorForNonExistentItemWithIdentifier_];
        v99 = v415;
      }

      v131 = v89;
      v132 = v98;
      if (objc_sync_enter(v99))
      {
        swift_unknownObjectRetain();

        sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v99);
      }

      sub_1CF771964(v418 + 2, v417, v98);
      if (objc_sync_exit(v99))
      {
        swift_unknownObjectRetain();

        sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v99);
      }

      dispatch_group_leave(v99);
      goto LABEL_88;
    }

    sub_1CEFCCC44(&v432, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v421 = a1;
  v65 = a1;
  if (swift_dynamicCast())
  {
    v429 = v445;
    v430 = v446;
    v425 = v442;
    v426 = v443;
    v427 = v444[0];
    v428 = v444[1];
    v423 = aBlock;
    v424 = v441;
    v437 = v445;
    v438 = v446;
    v434 = v442;
    v435 = v443;
    v436[0] = v444[0];
    v436[1] = v444[1];
    v431 = v447;
    v439 = v447;
    v432 = aBlock;
    v433 = v441;
    v66 = sub_1CF2B971C(&v432);
    switch(v66)
    {
      case 5:
        nullsub_1();
        v108 = v421;
LABEL_33:

        a1 = v415;
LABEL_34:
        sub_1CF9E50E8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v110 = v413;
        sub_1CF9E57D8();
        v63 = sub_1CF9E50D8();
        (*(v414 + 8))(v56, v110);
        goto LABEL_35;
      case 3:
        nullsub_1();
        v104 = *v103;
        v105 = *(v103 + 8);
        sub_1CEFCCC44(&v423, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v411)
        {
          LODWORD(v419) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v59 = v386;
          v80 = v409;
          sub_1CF9E57D8();
          v63 = sub_1CF9E53A8();
          v81 = v408;
LABEL_25:
          (*(v81 + 8))(v59, v80);
          v106 = v63;
          a1 = v415;
          if (!objc_sync_enter(v415))
          {
LABEL_26:
            sub_1CF771964(v418 + 2, v417, v63);
            if (objc_sync_exit(a1))
            {
              goto LABEL_140;
            }

            dispatch_group_leave(a1);
            v107 = v421;
            goto LABEL_87;
          }

LABEL_141:
          swift_unknownObjectRetain();

          sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
        }

        LODWORD(v417) = v105;
        v418 = v104;
        v155 = v410;
        type metadata accessor for VFSFileTree(0);
        v156 = swift_dynamicCastClassUnconditional();
        v157 = swift_allocObject();
        v158 = v416;
        v157[2] = sub_1CF796A08;
        v157[3] = v158;
        v157[4] = v155;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v415 = v156;
        isa = v156[27].isa;
        v419 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v160 = isa;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v161 = v394;
        v162 = v396;
        sub_1CF9E77B8();
        v163 = sub_1CF9E73E8();

        (*(v395 + 8))(v161, v162);
        qos_class_self();
        v164 = v389;
        sub_1CF9E63B8();
        v166 = v397;
        v165 = v398;
        v167 = *(v397 + 48);
        if (v167(v164, 1, v398) == 1)
        {
          (*(v166 + 104))(v387, *MEMORY[0x1E69E7FA0], v165);
          if (v167(v164, 1, v165) != 1)
          {
            sub_1CEFCCC44(v164, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v166 + 32))(v387, v164, v165);
        }

        ObjectType = swift_getObjectType();
        v185 = v391;
        sub_1CF9E6428();
        v186 = swift_allocObject();
        v187 = v418;
        *(v186 + 16) = v415;
        *(v186 + 24) = v187;
        *(v186 + 32) = v417;
        *(v186 + 40) = 0u;
        *(v186 + 56) = 0u;
        *(v186 + 72) = 0u;
        *(v186 + 88) = 0u;
        *(v186 + 104) = 0u;
        *(v186 + 120) = 0u;
        *(v186 + 136) = 0;
        *(v186 + 144) = 1;
        *(v186 + 152) = v163;
        *(v186 + 160) = sub_1CF796A00;
        *(v186 + 168) = v157;

        swift_unknownObjectRetain();

        goto LABEL_80;
      case 1:
        nullsub_1();
        v68 = *v67;
        v69 = *(v67 + 8);
        v70 = *(v67 + 24);
        v71 = *(v67 + 48);
        v72 = *(v67 + 56);

        sub_1CF480620(v71, v72);
        v70, v73, v74, v75, v76, v77, v78, v79;
        if (v411)
        {
          sub_1CF9E5128();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v80 = v413;
          sub_1CF9E57D8();
          v63 = sub_1CF9E50D8();
          v81 = v414;
          goto LABEL_25;
        }

        LODWORD(v417) = v69;
        v418 = v68;
        v168 = v410;
        type metadata accessor for VFSFileTree(0);
        v169 = swift_dynamicCastClassUnconditional();
        v170 = swift_allocObject();
        v171 = v416;
        v170[2] = sub_1CF796A08;
        v170[3] = v171;
        v170[4] = v168;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v415 = v169;
        v172 = v169[27].isa;
        v419 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v173 = v172;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v174 = v394;
        v175 = v396;
        sub_1CF9E77B8();
        v176 = sub_1CF9E73E8();

        (*(v395 + 8))(v174, v175);
        qos_class_self();
        v177 = v390;
        sub_1CF9E63B8();
        v179 = v397;
        v178 = v398;
        v180 = *(v397 + 48);
        if (v180(v177, 1, v398) == 1)
        {
          (*(v179 + 104))(v388, *MEMORY[0x1E69E7FA0], v178);
          if (v180(v177, 1, v178) != 1)
          {
            sub_1CEFCCC44(v177, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v179 + 32))(v388, v177, v178);
        }

        ObjectType = swift_getObjectType();
        v185 = v392;
        sub_1CF9E6428();
        v186 = swift_allocObject();
        v188 = v418;
        *(v186 + 16) = v415;
        *(v186 + 24) = v188;
        *(v186 + 32) = v417;
        *(v186 + 40) = 0u;
        *(v186 + 56) = 0u;
        *(v186 + 72) = 0u;
        *(v186 + 88) = 0u;
        *(v186 + 104) = 0u;
        *(v186 + 120) = 0u;
        *(v186 + 136) = 0;
        *(v186 + 144) = 1;
        *(v186 + 152) = v176;
        *(v186 + 160) = sub_1CF796A04;
        *(v186 + 168) = v170;

        swift_unknownObjectRetain();

LABEL_80:
        sub_1CEFD5828(0, v185, sub_1CF72A328, v186, ObjectType);

        (*(v406 + 8))(v185, v407);
        v189 = v399;
        sub_1CF9E6478();
        v190 = v401;
        sub_1CEFD5B64(v401);
        v191 = v400;
        sub_1CEFD5BD8(v400);
        MEMORY[0x1D3869770](v189, v190, v191, ObjectType);
        v192 = *(v404 + 8);
        v193 = v191;
        v194 = v405;
        v192(v193, v405);
        v192(v190, v194);
        (*(v402 + 8))(v189, v403);
        sub_1CF9E7448();

        swift_unknownObjectRelease();

        goto LABEL_88;
    }

    sub_1CEFCCC44(&v423, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v423 = a1;
  v109 = a1;
  if (swift_dynamicCast())
  {
    *(v436 + 9) = *(v444 + 9);
    v434 = v442;
    v435 = v443;
    v436[0] = v444[0];
    v432 = aBlock;
    v433 = v441;
    if (BYTE8(v444[1]) == 5)
    {
      v108 = v423;
      goto LABEL_33;
    }

    sub_1CEFCCC44(&v432, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v112 = a1;
  if (swift_dynamicCast())
  {
    a1 = v415;
    if (v432 <= 2u)
    {
      if (v432 - 1 >= 2)
      {

        goto LABEL_34;
      }

      sub_1CF9E5118();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v113 = v413;
      sub_1CF9E57D8();
      v63 = sub_1CF9E50D8();
      (*(v414 + 8))(v51, v113);
LABEL_35:
      v111 = v63;
      if (objc_sync_enter(a1))
      {
        goto LABEL_141;
      }

LABEL_36:
      sub_1CF771964(v418 + 2, v417, v63);
      if (objc_sync_exit(a1))
      {
        goto LABEL_140;
      }

      dispatch_group_leave(a1);
      goto LABEL_38;
    }

    if (v432 != 4)
    {

      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v133 = v393;
      v134 = v413;
      sub_1CF9E57D8();
      v63 = sub_1CF9E50D8();
      (*(v414 + 8))(v133, v134);
      goto LABEL_35;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v123 = v384;
    v124 = v413;
    sub_1CF9E57D8();
    v63 = sub_1CF9E50D8();
    (*(v414 + 8))(v123, v124);
    v125 = v63;
    if (objc_sync_enter(a1))
    {
      goto LABEL_141;
    }

    sub_1CF771964(v418 + 2, v417, v63);
    if (objc_sync_exit(a1))
    {
      goto LABEL_140;
    }

LABEL_86:

    dispatch_group_leave(a1);
    v107 = aBlock;
LABEL_87:

    goto LABEL_88;
  }

  *&v432 = a1;
  v114 = a1;
  if (swift_dynamicCast())
  {
    if ((v441 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v441);
      LODWORD(v423) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v181 = v385;
      v182 = v409;
      sub_1CF9E57D8();
      v63 = sub_1CF9E53A8();
      (*(v408 + 8))(v181, v182);
      v183 = v63;
      a1 = v415;
      if (!objc_sync_enter(v415))
      {
        sub_1CF771964(v418 + 2, v417, v63);
        if (objc_sync_exit(a1))
        {
          goto LABEL_140;
        }

        dispatch_group_leave(a1);
        v107 = v432;
        goto LABEL_87;
      }

      goto LABEL_141;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v432 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1CF9FA450;
    *(v115 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v115 + 40) = v116;
    v117 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v118 = FPLocv();

    v119 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v121 = v120;

    *(v115 + 72) = MEMORY[0x1E69E6158];
    *(v115 + 48) = v119;
    *(v115 + 56) = v121;
    sub_1CF4E04E8(v115);
    swift_setDeallocating();
    sub_1CEFCCC44(v115 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v63 = aBlock;
    v122 = aBlock;
    a1 = v415;
    if (objc_sync_enter(v415))
    {
      goto LABEL_141;
    }

    goto LABEL_36;
  }

  v421 = a1;
  v126 = a1;
  if (swift_dynamicCast())
  {
    v429 = v445;
    v430 = v446;
    v425 = v442;
    v426 = v443;
    v427 = v444[0];
    v428 = v444[1];
    v423 = aBlock;
    v424 = v441;
    v437 = v445;
    v438 = v446;
    v434 = v442;
    v435 = v443;
    v436[0] = v444[0];
    v436[1] = v444[1];
    v431 = v447;
    v439 = v447;
    v432 = aBlock;
    v433 = v441;
    if (sub_1CF2B971C(&v432) == 16)
    {
      sub_1CF9E5168();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v127 = v382;
      v128 = v413;
      sub_1CF9E57D8();
      v63 = sub_1CF9E50D8();
      (*(v414 + 8))(v127, v128);
      v129 = v63;
      a1 = v415;
      if (!objc_sync_enter(v415))
      {
        goto LABEL_26;
      }

      goto LABEL_141;
    }

    sub_1CEFCCC44(&v423, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v195 = a1;
  if (swift_dynamicCast())
  {
    v196 = FPDomainUnavailableError();
    if (!v196)
    {
      goto LABEL_139;
    }

    v63 = v196;
    v197 = v196;
    a1 = v415;
    if (objc_sync_enter(v415))
    {
      v313 = a1;
      goto LABEL_148;
    }

    sub_1CF771964(v418 + 2, v417, v63);
    if (objc_sync_exit(a1))
    {
      v312 = a1;
      goto LABEL_165;
    }

    goto LABEL_86;
  }

  v419 = a1;
  v198 = a1;
  if (swift_dynamicCast())
  {
    v429 = v445;
    v430 = v446;
    v425 = v442;
    v426 = v443;
    v427 = v444[0];
    v428 = v444[1];
    v423 = aBlock;
    v424 = v441;
    v437 = v445;
    v438 = v446;
    v434 = v442;
    v435 = v443;
    v436[0] = v444[0];
    v436[1] = v444[1];
    v431 = v447;
    v439 = v447;
    v432 = aBlock;
    v433 = v441;
    if (sub_1CF2B971C(&v432) == 10)
    {
      nullsub_1();
      v63 = *(v199 + 16);
      if (!v63)
      {
        LODWORD(v421) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v200 = v381;
        v201 = v409;
        sub_1CF9E57D8();
        v63 = sub_1CF9E53A8();
        (*(v408 + 8))(v200, v201);
      }

      sub_1CEFCCBDC(&v423, &v421, &unk_1EC4BE320, &unk_1CFA08B50);
      v202 = v63;
      v203 = v415;
      if (!objc_sync_enter(v415))
      {
        sub_1CF771964(v418 + 2, v417, v63);
        if (objc_sync_exit(v203))
        {
          v312 = v415;
          swift_unknownObjectRetain();

          goto LABEL_166;
        }

        dispatch_group_leave(v415);
        sub_1CEFCCC44(&v423, &unk_1EC4BE320, &unk_1CFA08B50);

LABEL_88:

        return;
      }

      goto LABEL_151;
    }

    sub_1CEFCCC44(&v423, &unk_1EC4BE320, &unk_1CFA08B50);
    v205 = v419;
    goto LABEL_99;
  }

  *&v423 = a1;
  v204 = a1;
  if (swift_dynamicCast())
  {
    v434 = v442;
    v435 = v443;
    v436[0] = v444[0];
    *(v436 + 9) = *(v444 + 9);
    v432 = aBlock;
    v433 = v441;
    sub_1CEFCCC44(&v432, &qword_1EC4BF270, &qword_1CFA01B70);

    goto LABEL_101;
  }

  *&aBlock = a1;
  v206 = a1;
  v207 = swift_dynamicCast();

  v208 = v416;
  if (v207)
  {
LABEL_101:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v209 = v383;
    v210 = v413;
    sub_1CF9E57D8();
    v63 = sub_1CF9E50D8();
    (*(v414 + 8))(v209, v210);
    v211 = v63;
    v203 = v415;
    if (!objc_sync_enter(v415))
    {
      sub_1CF771964(v418 + 2, v417, v63);
      if (objc_sync_exit(v203))
      {
        goto LABEL_164;
      }

      dispatch_group_leave(v415);
LABEL_38:

      return;
    }

LABEL_151:
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v203);
  }

  *&v432 = a1;
  v212 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v441, *(&v441 + 1), v442, v213, v214, v215);
    v205 = v432;
LABEL_99:

    goto LABEL_101;
  }

  *&v432 = a1;
  v216 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v441, SBYTE8(v441));
    v205 = v432;
    goto LABEL_99;
  }

  *&v432 = a1;
  v217 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    v205 = v432;
    goto LABEL_99;
  }

  v218 = sub_1CF9E57E8();
  v219 = [v218 userInfo];
  v220 = sub_1CF9E6638();

  v221 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v229 = v222;
  if (!*v220->tree)
  {
    v220, v222, v223, v224, v225, v226, v227, v228;
    v256 = v229;
LABEL_116:
    v256, v239, v240, v241, v242, v243, v244, v245;
    goto LABEL_117;
  }

  v230 = sub_1CEFE4328(v221, v222);
  v232 = v231;
  v229, v231, v233, v234, v235, v236, v237, v238;
  if ((v232 & 1) == 0)
  {
    v256 = v220;
    goto LABEL_116;
  }

  sub_1CEFD1104(*v220[1].tester + 32 * v230, &aBlock);
  v220, v246, v247, v248, v249, v250, v251, v252;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v253 = v432;

    v254 = v218;
    v255 = v253;
    sub_1CF7725F0(v255, v411 & 1, v410, v254, sub_1CF796A08, v208);

    return;
  }

LABEL_117:
  v257 = swift_allocObject();
  v258 = [v218 userInfo];
  v63 = sub_1CF9E6638();

  v259 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v267 = v260;
  if (!*v63->tree)
  {
    v63, v260, v261, v262, v263, v264, v265, v266;
    v267, v302, v303, v304, v305, v306, v307, v308;
    goto LABEL_133;
  }

  v268 = sub_1CEFE4328(v259, v260);
  v270 = v269;
  v267, v269, v271, v272, v273, v274, v275, v276;
  if ((v270 & 1) == 0)
  {
    v63, v277, v278, v279, v280, v281, v282, v283;
    goto LABEL_133;
  }

  sub_1CEFD1104(*v63[1].tester + 32 * v268, &aBlock);
  v63, v284, v285, v286, v287, v288, v289, v290;
  v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_133:
    swift_deallocUninitializedObject();
    v309 = a1;
    v310 = v415;
    if (objc_sync_enter(v415))
    {
      swift_unknownObjectRetain();

      sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v310);
    }

    sub_1CF771964(v418 + 2, v417, a1);
    if (objc_sync_exit(v310))
    {
      v314 = v415;
      swift_unknownObjectRetain();

      sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v314);
    }

    dispatch_group_leave(v415);

    return;
  }

  v257[2] = v432;
  a1 = dispatch_group_create();
  v291 = v257[2];
  if (v291 >> 62)
  {
    goto LABEL_137;
  }

  v292 = *((v291 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v292)
  {
    goto LABEL_157;
  }

  do
  {
    v293 = 0;
    while (1)
    {
      v294 = a1;
      v295 = objc_sync_enter(v294);
      if (v295)
      {
        MEMORY[0x1EEE9AC00](v295);
        *(&v376 - 2) = v294;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v376 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      swift_beginAccess();
      v296 = v257[2];
      if ((v296 & 0xC000000000000001) != 0)
      {
        v297 = MEMORY[0x1D3869C30](v293);
        goto LABEL_127;
      }

      if (v293 >= *((v296 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v297 = *(v296 + 8 * v293 + 32);
LABEL_127:
      v298 = v297;
      swift_endAccess();
      v299 = objc_sync_exit(v294);
      if (v299)
      {
        MEMORY[0x1EEE9AC00](v299);
        *(&v376 - 2) = v294;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v376 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v294);
      v300 = v294;

      v301 = v298;
      sub_1CF774BF8(v301, v411 & 1, v410, v300, v257, v293);

      v63 = ++v293;
      if (v292 == v293)
      {
        goto LABEL_157;
      }
    }

    __break(1u);
LABEL_137:
    v311 = sub_1CF9E7818();
    if (v311 < 0)
    {
      __break(1u);
LABEL_139:

      __break(1u);
LABEL_140:
      swift_unknownObjectRetain();

      sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
    }

    v292 = v311;
  }

  while (v311);
LABEL_157:
  if (v411)
  {
    v315 = [v218 userInfo];
    v316 = sub_1CF9E6638();

    v317 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v319 = v318;
    swift_beginAccess();
    v320 = v257[2];
    *(&v441 + 1) = v414;
    *&aBlock = v320;
    sub_1CEFE9EB8(&aBlock, &v432);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v421 = v316;
    sub_1CF1D154C(&v432, v317, v319, isUniquelyReferenced_nonNull_native);
    v319, v322, v323, v324, v325, v326, v327, v328;
    v329 = [v218 domain];
    if (!v329)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v331 = v330;
      v329 = sub_1CF9E6888();
      v331, v332, v333, v334, v335, v336, v337, v338;
    }

    v339 = [v218 code];
    v340 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v341 = sub_1CF9E6618();

    v63 = [v340 initWithDomain:v329 code:v339 userInfo:v341];

    v342 = v63;
    if (!objc_sync_enter(v415))
    {
      sub_1CF771964(v418 + 2, v417, v63);
      if (!objc_sync_exit(v415))
      {

        dispatch_group_leave(v415);

        return;
      }

LABEL_164:
      v312 = v415;
      swift_unknownObjectRetain();
LABEL_165:

LABEL_166:
      sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v312);
    }

    v313 = v415;
    swift_unknownObjectRetain();
LABEL_148:

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v313);
  }

  v343 = *(*(v410 + 16) + 64);
  v344 = swift_allocObject();
  v344[2] = v218;
  v344[3] = v257;
  v344[4] = sub_1CF796A08;
  v344[5] = v416;

  v345 = v343;
  v418 = v218;

  v346 = fpfs_current_log();
  v417 = fpfs_adopt_log();
  v347 = swift_allocObject();
  *&aBlock = sub_1CF9E73C8();
  *(&aBlock + 1) = v348;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v349 = sub_1CF9E7988();
  v351 = v350;
  MEMORY[0x1D3868CC0](v349);
  v351, v352, v353, v354, v355, v356, v357, v358;
  v359 = *(&aBlock + 1);
  sub_1CF9E6978();
  v359, v360, v361, v362, v363, v364, v365, v366;
  v367 = __fp_log_fork();

  *(v347 + 16) = v367;
  v368 = swift_allocObject();
  *(v368 + 16) = v346;
  *(v368 + 24) = v347;
  v414 = v347;
  *(v368 + 32) = v345;
  *(v368 + 40) = "normalizeError(_:synchronous:completionHandler:)";
  *(v368 + 48) = 48;
  *(v368 + 56) = 2;
  *(v368 + 64) = sub_1CF796ACC;
  *(v368 + 72) = v344;
  *&v442 = sub_1CF2B9F54;
  *(&v442 + 1) = v368;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v441 = sub_1CEFCA444;
  *(&v441 + 1) = &block_descriptor_204;
  v369 = _Block_copy(&aBlock);
  v413 = v345;
  v415 = v346;

  v370 = v377;
  sub_1CF9E63F8();
  *&v432 = MEMORY[0x1E69E7CC0];
  sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v371 = v378;
  v372 = v380;
  sub_1CF9E77B8();
  v373 = v413;
  sub_1CF9E7308();
  _Block_release(v369);
  (*(v379 + 8))(v371, v372);
  (*(v406 + 8))(v370, v407);

  v374 = v417;
  v375 = fpfs_adopt_log();
}

void sub_1CF7779C8(uint64_t a1, id a2, void (*a3)(id))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  swift_getErrorValue();
  v36 = v34;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v35);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v33, v34);
  sub_1CEFE9EB8(&v35, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v32, v6, v8, isUniquelyReferenced_nonNull_native);
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = [a2 domain];
  if (!v18)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;
    v18 = sub_1CF9E6888();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = [a2 code];
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1CF9E6618();

  v31 = [v29 initWithDomain:v18 code:v28 userInfo:v30];

  a3(v31);
}

void sub_1CF777BC4(uint64_t a1, id a2, void *a3, void (*a4)(id))
{
  v7 = [a2 userInfo];
  sub_1CF9E6638();

  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  swift_getErrorValue();
  v38 = v36;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  (*(*(v36 - 8) + 16))(boxed_opaque_existential_0, v35, v36);
  sub_1CEFE9EB8(&v37, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v34, v8, v10, isUniquelyReferenced_nonNull_native);
  v10, v13, v14, v15, v16, v17, v18, v19;
  v20 = [a2 domain];
  if (!v20)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;
    v20 = sub_1CF9E6888();
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  v30 = [a2 code];
  v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v32 = sub_1CF9E6618();

  v33 = [v31 initWithDomain:v20 code:v30 userInfo:v32];

  sub_1CF77167C(v33, a3, a4);
}

void sub_1CF777DC8(dispatch_group_t a1, int a2, uint64_t a3, void *a4, void *a5, void (*a6)(id), void *a7)
{
  v409 = a3;
  LODWORD(v410) = a2;
  v12 = sub_1CF9E63A8();
  v386 = *(v12 - 8);
  v387 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v385 = &v384 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E53C8();
  v407 = *(v14 - 8);
  v408 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v406 = &v384 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6388();
  v402 = *(v16 - 8);
  v403 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v398 = (&v384 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v399 = &v384 - v19;
  v20 = sub_1CF9E6498();
  v400 = *(v20 - 8);
  v401 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v397 = &v384 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v390 = &v384 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v391 = &v384 - v25;
  v26 = sub_1CF9E63D8();
  v395 = *(v26 - 8);
  v396 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v388 = &v384 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v389 = &v384 - v29;
  v30 = sub_1CF9E6448();
  v404 = *(v30 - 8);
  v405 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v384 = &v384 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v392 = &v384 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v393 = &v384 - v35;
  v36 = sub_1CF9E73D8();
  v394 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v384 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v39 - 8);
  v411 = &v384 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1CF9E5268();
  v42 = *(v41 - 8);
  v413 = v41;
  v414 = v42;
  MEMORY[0x1EEE9AC00](v41);
  v412 = &v384 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = swift_allocObject();
  v44[2] = a5;
  v44[3] = a6;
  v416 = a6;
  v44[4] = a7;
  v45 = swift_allocObject();
  *(v45 + 2) = a4;
  *(v45 + 3) = sub_1CF7969FC;
  v420 = v45;
  *(v45 + 4) = v44;
  v46 = a5;
  swift_retain_n();
  v47 = v46;
  v450[0] = a1;
  v48 = v47;
  swift_retain_n();
  v49 = v48;
  v50 = a4;
  v417 = v44;
  swift_retain_n();
  v419 = v49;
  v418 = v50;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v431 = v447;
    v432 = v448;
    v427 = v444;
    v428 = v445;
    v429 = v446[0];
    v430 = v446[1];
    v425 = aBlock;
    v426 = v443;
    v439 = v447;
    v440 = v448;
    v436 = v444;
    v437 = v445;
    v438[0] = v446[0];
    v438[1] = v446[1];
    v433 = v449;
    v441 = v449;
    v434 = aBlock;
    v435 = v443;
    if (sub_1CF2B971C(&v434))
    {
      sub_1CEFCCC44(&v425, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v69 = v68;
    v70 = *v68;
    v71 = *(v68 + 8);
    v72 = *(v68 + 112);

    v73 = sub_1CEFCCC44(v69 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v71 != 2 || v70)
    {
      v75 = v418;
      v76 = v419;
      if (v71 == 2 && v70 == 1)
      {
        v74 = *MEMORY[0x1E6967280];
        if (v72)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v423 = 0x2F73662F70665F5FLL;
        v424 = 0xE800000000000000;
        v421 = v70;
        v422 = v71;
        v124 = VFSItemID.description.getter(v73);
        v126 = v125;
        MEMORY[0x1D3868CC0](v124);
        v126, v127, v128, v129, v130, v131, v132, v133;
        v134 = v424;
        v74 = sub_1CF9E6888();
        v134, v135, v136, v137, v138, v139, v140, v141;
        if (v72)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v74 = *MEMORY[0x1E6967258];
      v75 = v418;
      v76 = v419;
      if (v72)
      {
LABEL_16:
        v77 = v72;
LABEL_54:
        v142 = v76;

        v143 = v72;
        sub_1CF777BC4(v77, v75, v142, v416);

        goto LABEL_75;
      }
    }

    v77 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v415 = a7;

  *&v425 = a1;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v438 + 9) = *(v446 + 9);
    v437 = v445;
    v438[0] = v446[0];
    v435 = v443;
    v436 = v444;
    v434 = aBlock;
    if (!BYTE8(v446[1]))
    {
      v78 = *(&v438[0] + 1);
      v79 = *&v438[0];
      v80 = *(&v437 + 1);
      v81 = v437;
      v82 = *(&v436 + 1);
      v83 = v436;
      v84 = *(&v435 + 1);
      v85 = v435;
      v86 = *(&v434 + 1);
      v414 = v434;

      sub_1CF1D56D0(v86, v85, v84, v83, v82, v81, v80, v79);
      if (v78)
      {
        v87 = v78;
        v88 = v416;
        v89 = v418;
        v76 = v419;
        v90 = v414;
      }

      else
      {
        v121 = objc_opt_self();
        v90 = v414;
        v87 = [v121 fileProviderErrorForNonExistentItemWithIdentifier_];
        v88 = v416;
        v89 = v418;
        v76 = v419;
      }

      v122 = v76;

      v123 = v78;
      sub_1CF777BC4(v87, v89, v122, v88);

      goto LABEL_74;
    }

    sub_1CEFCCC44(&v434, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v423 = a1;
  v53 = a1;
  if (swift_dynamicCast())
  {
    v431 = v447;
    v432 = v448;
    v427 = v444;
    v428 = v445;
    v429 = v446[0];
    v430 = v446[1];
    v425 = aBlock;
    v426 = v443;
    v439 = v447;
    v440 = v448;
    v436 = v444;
    v437 = v445;
    v438[0] = v446[0];
    v438[1] = v446[1];
    v433 = v449;
    v441 = v449;
    v434 = aBlock;
    v435 = v443;
    v54 = sub_1CF2B971C(&v434);
    switch(v54)
    {
      case 5:
        nullsub_1();
        v98 = v423;
LABEL_30:

        v100 = v416;
        v89 = v418;
        v76 = v419;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v92 = *v91;
        v93 = *(v91 + 8);
        sub_1CEFCCC44(&v425, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v410)
        {
          LODWORD(v421) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v94 = v406;
          v95 = v408;
          sub_1CF9E57D8();
          v96 = sub_1CF9E53A8();
          v97 = v407;
LABEL_48:
          (v97[1].isa)(v94, v95);
          v76 = v419;
          v119 = v419;

          v89 = v418;
          sub_1CF777BC4(v96, v418, v119, v416);

          v120 = v423;
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v412) = v93;
        v413 = v92;
        v144 = v409;
        v145 = *(*(*(v409 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v146 = swift_dynamicCastClassUnconditional();
        v147 = swift_allocObject();
        v148 = v420;
        v147[2].isa = sub_1CF7969FC;
        v147[3].isa = v148;
        v414 = v147;
        v147[4].isa = v144;
        v410 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v411 = v146;
        v149 = *(v146 + 216);
        v421 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v416 = v145;

        v150 = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v151 = sub_1CF9E73E8();

        (*(v394 + 8))(v38, v36);
        qos_class_self();
        v152 = v390;
        sub_1CF9E63B8();
        v154 = v395;
        v153 = v396;
        v155 = *(v395 + 48);
        if (v155(v152, 1, v396) == 1)
        {
          (*(v154 + 104))(v388, *MEMORY[0x1E69E7FA0], v153);
          if (v155(v152, 1, v153) != 1)
          {
            sub_1CEFCCC44(v152, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v154 + 32))(v388, v152, v153);
        }

        ObjectType = swift_getObjectType();
        v173 = v392;
        sub_1CF9E6428();
        v174 = swift_allocObject();
        v175 = v413;
        v176 = v414;
        *(v174 + 16) = v411;
        *(v174 + 24) = v175;
        *(v174 + 32) = v412;
        *(v174 + 40) = 0u;
        *(v174 + 56) = 0u;
        *(v174 + 72) = 0u;
        *(v174 + 88) = 0u;
        *(v174 + 104) = 0u;
        *(v174 + 120) = 0u;
        *(v174 + 136) = 0;
        *(v174 + 144) = 1;
        *(v174 + 152) = v151;
        *(v174 + 160) = sub_1CF796A00;
        *(v174 + 168) = v176;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v173, sub_1CF72A328, v174, ObjectType);

        (*(v404 + 8))(v173, v405);
        v177 = v397;
        sub_1CF9E6478();
        v178 = v399;
        sub_1CEFD5B64(v399);
        v179 = v398;
        sub_1CEFD5BD8(v398);
        MEMORY[0x1D3869770](v177, v178, v179, ObjectType);
        v180 = *(v402 + 8);
        v181 = v179;
        v182 = v403;
        v180(v181, v403);
        v180(v178, v182);
        (*(v400 + 8))(v177, v401);
        sub_1CF9E7448();

LABEL_67:

        swift_unknownObjectRelease();

        v192 = v418;

LABEL_68:
        v76 = v419;
        goto LABEL_76;
      case 1:
        nullsub_1();
        v56 = *v55;
        v57 = *(v55 + 8);
        v58 = v55[3];
        v59 = v55[6];
        v60 = v55[7];

        sub_1CF480620(v59, v60);
        v58, v61, v62, v63, v64, v65, v66, v67;
        if (v410)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v94 = v412;
          v95 = v413;
          sub_1CF9E57D8();
          v96 = sub_1CF9E50D8();
          v97 = v414;
          goto LABEL_48;
        }

        LODWORD(v413) = v57;
        v156 = v409;
        v157 = *(*(*(v409 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v158 = swift_dynamicCastClassUnconditional();
        v159 = swift_allocObject();
        v160 = v420;
        v159[2].isa = sub_1CF7969FC;
        v159[3].isa = v160;
        v414 = v159;
        v159[4].isa = v156;
        v411 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v412 = v158;
        v161 = *(v158 + 27);
        v421 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v416 = v157;

        v162 = v161;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v163 = sub_1CF9E73E8();

        (*(v394 + 8))(v38, v36);
        qos_class_self();
        v164 = v391;
        sub_1CF9E63B8();
        v166 = v395;
        v165 = v396;
        v167 = *(v395 + 48);
        if (v167(v164, 1, v396) == 1)
        {
          (*(v166 + 104))(v389, *MEMORY[0x1E69E7FA0], v165);
          if (v167(v164, 1, v165) != 1)
          {
            sub_1CEFCCC44(v164, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v166 + 32))(v389, v164, v165);
        }

        v183 = swift_getObjectType();
        v184 = v393;
        sub_1CF9E6428();
        v185 = swift_allocObject();
        *(v185 + 16) = v412;
        *(v185 + 24) = v56;
        *(v185 + 32) = v413;
        *(v185 + 40) = 0u;
        *(v185 + 56) = 0u;
        *(v185 + 72) = 0u;
        *(v185 + 88) = 0u;
        *(v185 + 104) = 0u;
        *(v185 + 120) = 0u;
        *(v185 + 136) = 0;
        *(v185 + 144) = 1;
        *(v185 + 152) = v163;
        *(v185 + 160) = sub_1CF796A04;
        *(v185 + 168) = v414;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v184, sub_1CF72A328, v185, v183);

        (*(v404 + 8))(v184, v405);
        v186 = v397;
        sub_1CF9E6478();
        v187 = v399;
        sub_1CEFD5B64(v399);
        v188 = v398;
        sub_1CEFD5BD8(v398);
        MEMORY[0x1D3869770](v186, v187, v188, v183);
        v189 = *(v402 + 8);
        v190 = v188;
        v191 = v403;
        v189(v190, v403);
        v189(v187, v191);
        (*(v400 + 8))(v186, v401);
        sub_1CF9E7448();

        goto LABEL_67;
    }

    sub_1CEFCCC44(&v425, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v425 = a1;
  v99 = a1;
  if (swift_dynamicCast())
  {
    *(v438 + 9) = *(v446 + 9);
    v436 = v444;
    v437 = v445;
    v438[0] = v446[0];
    v434 = aBlock;
    v435 = v443;
    if (BYTE8(v446[1]) == 5)
    {
      v98 = v425;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v434, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v105 = a1;
  if (swift_dynamicCast())
  {
    v100 = v416;
    v89 = v418;
    v76 = v419;
    if (v434 > 2u)
    {
      if (v434 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v114 = v412;
        v115 = v413;
        sub_1CF9E57D8();
        v116 = sub_1CF9E50D8();
        (v414[1].isa)(v114, v115);
        v117 = v76;

        sub_1CF777BC4(v116, v89, v117, v100);

LABEL_74:

        goto LABEL_75;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    if (v434 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v101 = v412;
    v102 = v413;
    sub_1CF9E57D8();
    v103 = sub_1CF9E50D8();
    (v414[1].isa)(v101, v102);
    v104 = v76;

    sub_1CF777BC4(v103, v89, v104, v100);
LABEL_33:

    goto LABEL_75;
  }

  *&v434 = a1;
  v106 = a1;
  if (swift_dynamicCast())
  {
    if ((v443 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v443);
      LODWORD(v425) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v168 = v406;
      v169 = v408;
      sub_1CF9E57D8();
      v170 = sub_1CF9E53A8();
      (*(v407 + 8))(v168, v169);
      v76 = v419;
      v171 = v419;

      v89 = v418;
      sub_1CF777BC4(v170, v418, v171, v416);

      v120 = v434;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v434 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1CF9FA450;
    *(v107 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v107 + 40) = v108;
    v109 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v110 = FPLocv();

    v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v113 = v112;

    *(v107 + 72) = MEMORY[0x1E69E6158];
    *(v107 + 48) = v111;
    *(v107 + 56) = v113;
    sub_1CF4E04E8(v107);
    swift_setDeallocating();
    sub_1CEFCCC44(v107 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v103 = aBlock;
    v76 = v419;
    v104 = v419;
    goto LABEL_87;
  }

  v423 = a1;
  v118 = a1;
  if (swift_dynamicCast())
  {
    v431 = v447;
    v432 = v448;
    v427 = v444;
    v428 = v445;
    v429 = v446[0];
    v430 = v446[1];
    v425 = aBlock;
    v426 = v443;
    v439 = v447;
    v440 = v448;
    v436 = v444;
    v437 = v445;
    v438[0] = v446[0];
    v438[1] = v446[1];
    v433 = v449;
    v441 = v449;
    v434 = aBlock;
    v435 = v443;
    if (sub_1CF2B971C(&v434) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v425, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v193 = a1;
  if (swift_dynamicCast())
  {
    v194 = FPDomainUnavailableError();
    if (!v194)
    {
LABEL_124:

      v313 = v419;

      v314 = v418;

      __break(1u);
LABEL_125:
      MEMORY[0x1EEE9AC00](v296);
      *(&v384 - 2) = a1;

      v315 = v419;

      v316 = v418;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v384 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v195 = v194;
    v76 = v419;
    v196 = v419;

    v89 = v418;
    sub_1CF777BC4(v195, v418, v196, v416);

    v120 = aBlock;
    goto LABEL_73;
  }

  v421 = a1;
  v197 = a1;
  if (swift_dynamicCast())
  {
    v431 = v447;
    v432 = v448;
    v427 = v444;
    v428 = v445;
    v429 = v446[0];
    v430 = v446[1];
    v425 = aBlock;
    v426 = v443;
    v439 = v447;
    v440 = v448;
    v436 = v444;
    v437 = v445;
    v438[0] = v446[0];
    v438[1] = v446[1];
    v433 = v449;
    v441 = v449;
    v434 = aBlock;
    v435 = v443;
    if (sub_1CF2B971C(&v434) == 10)
    {
      nullsub_1();
      v199 = *(v198 + 16);
      v76 = v419;
      if (!v199)
      {
        LODWORD(v423) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v200 = v406;
        v201 = v408;
        sub_1CF9E57D8();
        v199 = sub_1CF9E53A8();
        (*(v407 + 8))(v200, v201);
      }

      v202 = v418;
      v203 = v416;
      v204 = v76;

      sub_1CEFCCBDC(&v425, &v423, &unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CF777BC4(v199, v202, v204, v203);

      sub_1CEFCCC44(&v425, &unk_1EC4BE320, &unk_1CFA08B50);

      goto LABEL_75;
    }

    sub_1CEFCCC44(&v425, &unk_1EC4BE320, &unk_1CFA08B50);
    v206 = v421;
    goto LABEL_85;
  }

  *&v425 = a1;
  v205 = a1;
  if (swift_dynamicCast())
  {
    v436 = v444;
    v437 = v445;
    v438[0] = v446[0];
    *(v438 + 9) = *(v446 + 9);
    v434 = aBlock;
    v435 = v443;
    sub_1CEFCCC44(&v434, &qword_1EC4BF270, &qword_1CFA01B70);
    v206 = v425;
LABEL_85:

    v76 = v419;
LABEL_86:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v207 = v412;
    v208 = v413;
    sub_1CF9E57D8();
    v103 = sub_1CF9E50D8();
    (v414[1].isa)(v207, v208);
    v104 = v76;
LABEL_87:

    v89 = v418;
    sub_1CF777BC4(v103, v418, v104, v416);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v209 = a1;
  v210 = swift_dynamicCast();

  v76 = v419;
  if (v210)
  {
    goto LABEL_86;
  }

  *&v434 = a1;
  v211 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v443, *(&v443 + 1), v444, v212, v213, v214);
LABEL_95:

    goto LABEL_86;
  }

  *&v434 = a1;
  v215 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v443, SBYTE8(v443));
    goto LABEL_95;
  }

  *&v434 = a1;
  v216 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_95;
  }

  v217 = sub_1CF9E57E8();
  v218 = [v217 userInfo];
  v219 = sub_1CF9E6638();

  v220 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v228 = v221;
  if (!*v219->tree)
  {
    v219, v221, v222, v223, v224, v225, v226, v227;
    v257 = v228;
LABEL_102:
    v257, v238, v239, v240, v241, v242, v243, v244;
    goto LABEL_103;
  }

  v229 = sub_1CEFE4328(v220, v221);
  v231 = v230;
  v228, v230, v232, v233, v234, v235, v236, v237;
  if ((v231 & 1) == 0)
  {
    v257 = v219;
    goto LABEL_102;
  }

  sub_1CEFD1104(*v219[1].tester + 32 * v229, &aBlock);
  v219, v245, v246, v247, v248, v249, v250, v251;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v252 = v434;
    v253 = v418;
    v254 = v417;

    v255 = v217;
    v256 = v252;
    sub_1CF777DC8(v256, v410 & 1, v409, v255, v253, sub_1CF7969FC, v254);

    goto LABEL_76;
  }

LABEL_103:
  v258 = swift_allocObject();
  v259 = [v217 userInfo];
  v260 = sub_1CF9E6638();

  v261 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v269 = v262;
  if (!*v260->tree)
  {
    v260, v262, v263, v264, v265, v266, v267, v268;
    v269, v303, v304, v305, v306, v307, v308, v309;
LABEL_120:
    swift_deallocUninitializedObject();
    v310 = v76;

    v311 = v418;
    sub_1CF777BC4(a1, v418, v310, v416);

    goto LABEL_75;
  }

  v270 = sub_1CEFE4328(v261, v262);
  v272 = v271;
  v269, v271, v273, v274, v275, v276, v277, v278;
  if ((v272 & 1) == 0)
  {
    v260, v279, v280, v281, v282, v283, v284, v285;
    goto LABEL_119;
  }

  sub_1CEFD1104(*v260[1].tester + 32 * v270, &aBlock);
  v260, v286, v287, v288, v289, v290, v291, v292;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_119:
    v76 = v419;
    goto LABEL_120;
  }

  v258[2] = v434;
  v414 = dispatch_group_create();
  v293 = v258[2];
  if (v293 >> 62)
  {
    goto LABEL_122;
  }

  v294 = *((v293 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v294)
  {
    goto LABEL_128;
  }

  do
  {
    v295 = 0;
    while (1)
    {
      a1 = v414;
      v296 = objc_sync_enter(a1);
      if (v296)
      {
        goto LABEL_125;
      }

      swift_beginAccess();
      v297 = v258[2];
      if ((v297 & 0xC000000000000001) != 0)
      {
        v298 = MEMORY[0x1D3869C30](v295);
        goto LABEL_113;
      }

      if (v295 >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v298 = *(v297 + 8 * v295 + 32);
LABEL_113:
      v299 = v298;
      swift_endAccess();
      v300 = objc_sync_exit(a1);
      if (v300)
      {
        MEMORY[0x1EEE9AC00](v300);
        *(&v384 - 2) = a1;

        v317 = v419;

        v318 = v418;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v384 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(a1);
      v301 = a1;

      v302 = v299;
      sub_1CF774BF8(v302, v410 & 1, v409, v301, v258, v295);

      if (v294 == ++v295)
      {
        goto LABEL_128;
      }
    }

    __break(1u);
LABEL_122:
    v312 = sub_1CF9E7818();
    if (v312 < 0)
    {
      __break(1u);
      goto LABEL_124;
    }

    v294 = v312;
  }

  while (v312);
LABEL_128:
  if ((v410 & 1) == 0)
  {
    v349 = *(*(v409 + 16) + 64);
    v350 = swift_allocObject();
    v350[2] = v217;
    v350[3] = v258;
    v350[4] = sub_1CF7969FC;
    v350[5] = v420;

    v351 = v349;
    v416 = v217;

    v352 = fpfs_current_log();
    v413 = fpfs_adopt_log();
    v353 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v354;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v355 = sub_1CF9E7988();
    v357 = v356;
    MEMORY[0x1D3868CC0](v355);
    v357, v358, v359, v360, v361, v362, v363, v364;
    v365 = *(&aBlock + 1);
    sub_1CF9E6978();
    v365, v366, v367, v368, v369, v370, v371, v372;
    v373 = __fp_log_fork();

    *(v353 + 16) = v373;
    v374 = swift_allocObject();
    *(v374 + 16) = v352;
    *(v374 + 24) = v353;
    v411 = v353;
    *(v374 + 32) = v351;
    *(v374 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v374 + 48) = 48;
    *(v374 + 56) = 2;
    *(v374 + 64) = sub_1CF796ACC;
    *(v374 + 72) = v350;
    *&v444 = sub_1CF2B9F54;
    *(&v444 + 1) = v374;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v443 = sub_1CEFCA444;
    *(&v443 + 1) = &block_descriptor_169;
    v375 = _Block_copy(&aBlock);
    v410 = v351;
    v412 = v352;

    v376 = v384;
    sub_1CF9E63F8();
    *&v434 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v377 = v385;
    v378 = v387;
    sub_1CF9E77B8();
    v379 = v410;
    v380 = v414;
    sub_1CF9E7308();
    _Block_release(v375);
    (*(v386 + 8))(v377, v378);
    (*(v404 + 8))(v376, v405);

    v381 = v413;
    v382 = fpfs_adopt_log();

    v383 = v418;

    goto LABEL_68;
  }

  v319 = [v217 userInfo];
  v320 = sub_1CF9E6638();

  v321 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v323 = v322;
  swift_beginAccess();
  v324 = v258[2];
  *(&v443 + 1) = v413;
  *&aBlock = v324;
  sub_1CEFE9EB8(&aBlock, &v434);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v423 = v320;
  sub_1CF1D154C(&v434, v321, v323, isUniquelyReferenced_nonNull_native);
  v323, v326, v327, v328, v329, v330, v331, v332;
  v333 = [v217 domain];
  if (!v333)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v335 = v334;
    v333 = sub_1CF9E6888();
    v335, v336, v337, v338, v339, v340, v341, v342;
  }

  v343 = [v217 code];
  v344 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v345 = sub_1CF9E6618();

  v346 = [v344 initWithDomain:v333 code:v343 userInfo:v345];

  v76 = v419;
  v347 = v419;

  v348 = v418;
  sub_1CF777BC4(v346, v418, v347, v416);

LABEL_75:

LABEL_76:
}

void sub_1CF77A9C8(void *a1, int a2, uint64_t a3, void (*a4)(id), uint64_t a5)
{
  v373 = a3;
  LODWORD(v374) = a2;
  v8 = sub_1CF9E63A8();
  v353 = *(v8 - 8);
  v354 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v352 = &v350 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E53C8();
  v371 = *(v10 - 8);
  v372 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v370 = &v350 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6388();
  v366 = *(v12 - 8);
  v367 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v362 = (&v350 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v363 = &v350 - v15;
  v16 = sub_1CF9E6498();
  v364 = *(v16 - 8);
  v365 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v361 = &v350 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v350 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v350 - v22;
  v24 = sub_1CF9E63D8();
  v359 = *(v24 - 8);
  v360 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v350 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v355 = &v350 - v28;
  v29 = sub_1CF9E6448();
  v368 = *(v29 - 8);
  v369 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v351 = &v350 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v356 = &v350 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v357 = &v350 - v34;
  v35 = sub_1CF9E73D8();
  v358 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v350 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v375 = &v350 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CF9E5268();
  v41 = *(v40 - 1);
  v377 = v40;
  v378 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v376 = &v350 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_allocObject();
  v380 = a4;
  v381 = v43;
  *(v43 + 16) = a4;
  *(v43 + 24) = a5;
  v418[0] = a1;
  swift_retain_n();
  v44 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v399 = v415;
    v400 = v416;
    v395 = v412;
    v396 = v413;
    v397 = *v414;
    v398 = *&v414[16];
    v393 = aBlock;
    v394 = v411;
    v407 = v415;
    v408 = v416;
    v404 = v412;
    v405 = v413;
    v406[0] = *v414;
    v406[1] = *&v414[16];
    v401 = v417;
    v409 = v417;
    v402 = aBlock;
    v403 = v411;
    if (sub_1CF2B971C(&v402))
    {
      sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v63 = v62;
    v64 = *v62;
    v65 = *(v62 + 8);
    v66 = *(v62 + 112);

    v67 = sub_1CEFCCC44(v63 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v65 != 2 || v64)
    {
      if (v65 != 2 || v64 != 1)
      {
        *&v384 = 0x2F73662F70665F5FLL;
        *(&v384 + 1) = 0xE800000000000000;
        v382 = v64;
        v383 = v65;
        v111 = VFSItemID.description.getter(v67);
        v113 = v112;
        MEMORY[0x1D3868CC0](v111);
        v113, v114, v115, v116, v117, v118, v119, v120;
        v121 = *(&v384 + 1);
        v80 = sub_1CF9E6888();
        v121, v122, v123, v124, v125, v126, v127, v128;
        if (v66)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v68 = MEMORY[0x1E6967280];
    }

    else
    {
      v68 = MEMORY[0x1E6967258];
    }

    v80 = *v68;
    if (v66)
    {
LABEL_22:
      v81 = v66;
LABEL_54:
      v129 = v66;
      v380(v81);

LABEL_73:

      return;
    }

LABEL_53:
    v81 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v379 = a5;

  *&v393 = a1;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v406 + 9) = *&v414[9];
    v405 = v413;
    v406[0] = *v414;
    v403 = v411;
    v404 = v412;
    v402 = aBlock;
    if (!v414[24])
    {
      v69 = *(&v406[0] + 1);
      v70 = *&v406[0];
      v71 = *(&v405 + 1);
      v72 = v405;
      v73 = *(&v404 + 1);
      v74 = v404;
      v75 = *(&v403 + 1);
      v76 = v403;
      v77 = *(&v402 + 1);
      v378 = v402;

      sub_1CF1D56D0(v77, v76, v75, v74, v73, v72, v71, v70);
      if (v69)
      {
        v78 = v69;
        v79 = v378;
      }

      else
      {
        v109 = objc_opt_self();
        v79 = v378;
        v78 = [v109 fileProviderErrorForNonExistentItemWithIdentifier_];
      }

      v110 = v69;
      v380(v78);

      v107 = v393;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v402, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v384 = a1;
  v47 = a1;
  if (swift_dynamicCast())
  {
    v399 = v415;
    v400 = v416;
    v395 = v412;
    v396 = v413;
    v397 = *v414;
    v398 = *&v414[16];
    v393 = aBlock;
    v394 = v411;
    v407 = v415;
    v408 = v416;
    v404 = v412;
    v405 = v413;
    v406[0] = *v414;
    v406[1] = *&v414[16];
    v401 = v417;
    v409 = v417;
    v402 = aBlock;
    v403 = v411;
    v48 = sub_1CF2B971C(&v402);
    switch(v48)
    {
      case 5:
        nullsub_1();
        v89 = v384;
LABEL_30:

        v91 = v380;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v83 = *v82;
        v84 = *(v82 + 8);
        sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v374)
        {
          LODWORD(v382) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v85 = v370;
          v86 = v372;
          sub_1CF9E57D8();
          v87 = sub_1CF9E53A8();
          v88 = v371;
LABEL_48:
          v88[1](v85, v86);
          v380(v87);

          v107 = v384;
          goto LABEL_72;
        }

        LODWORD(v376) = v84;
        v377 = v83;
        v130 = v373;
        v131 = *(*(*(v373 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v132 = swift_dynamicCastClassUnconditional();
        v133 = swift_allocObject();
        v134 = v381;
        v133[2] = sub_1CF2AF9D0;
        v133[3] = v134;
        v378 = v133;
        v133[4] = v130;
        v374 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v375 = v132;
        v135 = *(v132 + 216);
        v382 = MEMORY[0x1E69E7CC0];
        v372 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v380 = v131;

        v136 = v135;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v137 = sub_1CF9E73E8();

        (*(v358 + 8))(v37, v35);
        qos_class_self();
        sub_1CF9E63B8();
        v139 = v359;
        v138 = v360;
        v140 = *(v359 + 48);
        if (v140(v20, 1, v360) == 1)
        {
          (*(v139 + 104))(v26, *MEMORY[0x1E69E7FA0], v138);
          if (v140(v20, 1, v138) != 1)
          {
            sub_1CEFCCC44(v20, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v139 + 32))(v26, v20, v138);
        }

        ObjectType = swift_getObjectType();
        v156 = v356;
        sub_1CF9E6428();
        v157 = swift_allocObject();
        v158 = v377;
        v159 = v378;
        *(v157 + 16) = v375;
        *(v157 + 24) = v158;
        *(v157 + 32) = v376;
        *(v157 + 40) = 0u;
        *(v157 + 56) = 0u;
        *(v157 + 72) = 0u;
        *(v157 + 88) = 0u;
        *(v157 + 104) = 0u;
        *(v157 + 120) = 0u;
        *(v157 + 136) = 0;
        *(v157 + 144) = 1;
        *(v157 + 152) = v137;
        *(v157 + 160) = sub_1CF77ECE8;
        *(v157 + 168) = v159;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v156, sub_1CEFD5D08, v157, ObjectType);

        (*(v368 + 8))(v156, v369);
        v160 = v361;
        sub_1CF9E6478();
        v161 = v363;
        sub_1CEFD5B64(v363);
        v162 = v362;
        sub_1CEFD5BD8(v362);
        MEMORY[0x1D3869770](v160, v161, v162, ObjectType);
        v163 = *(v366 + 8);
        v164 = v162;
        v165 = v367;
        v163(v164, v367);
        v163(v161, v165);
        (*(v364 + 8))(v160, v365);
        sub_1CF9E7448();
LABEL_67:

        swift_unknownObjectRelease();

        goto LABEL_73;
      case 1:
        nullsub_1();
        v50 = *v49;
        v51 = *(v49 + 8);
        v52 = *(v49 + 24);
        v53 = *(v49 + 48);
        v54 = *(v49 + 56);

        sub_1CF480620(v53, v54);
        v52, v55, v56, v57, v58, v59, v60, v61;
        if (v374)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v85 = v376;
          v86 = v377;
          sub_1CF9E57D8();
          v87 = sub_1CF9E50D8();
          v88 = v378;
          goto LABEL_48;
        }

        LODWORD(v376) = v51;
        v377 = v50;
        v141 = v373;
        v142 = *(*(*(v373 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v143 = swift_dynamicCastClassUnconditional();
        v144 = swift_allocObject();
        v145 = v381;
        v144[2] = sub_1CF2AF9D0;
        v144[3] = v145;
        v378 = v144;
        v144[4] = v141;
        v374 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v375 = v143;
        v146 = *(v143 + 216);
        v382 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v380 = v142;

        v147 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v148 = sub_1CF9E73E8();

        (*(v358 + 8))(v37, v35);
        qos_class_self();
        sub_1CF9E63B8();
        v150 = v359;
        v149 = v360;
        v151 = *(v359 + 48);
        if (v151(v23, 1, v360) == 1)
        {
          (*(v150 + 104))(v355, *MEMORY[0x1E69E7FA0], v149);
          if (v151(v23, 1, v149) != 1)
          {
            sub_1CEFCCC44(v23, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v150 + 32))(v355, v23, v149);
        }

        v166 = swift_getObjectType();
        v167 = v357;
        sub_1CF9E6428();
        v168 = swift_allocObject();
        v169 = v377;
        v170 = v378;
        *(v168 + 16) = v375;
        *(v168 + 24) = v169;
        *(v168 + 32) = v376;
        *(v168 + 40) = 0u;
        *(v168 + 56) = 0u;
        *(v168 + 72) = 0u;
        *(v168 + 88) = 0u;
        *(v168 + 104) = 0u;
        *(v168 + 120) = 0u;
        *(v168 + 136) = 0;
        *(v168 + 144) = 1;
        *(v168 + 152) = v148;
        *(v168 + 160) = sub_1CF77ECF4;
        *(v168 + 168) = v170;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v167, sub_1CF72A328, v168, v166);

        (*(v368 + 8))(v167, v369);
        v171 = v361;
        sub_1CF9E6478();
        v172 = v363;
        sub_1CEFD5B64(v363);
        v173 = v362;
        sub_1CEFD5BD8(v362);
        MEMORY[0x1D3869770](v171, v172, v173, v166);
        v174 = *(v366 + 8);
        v175 = v173;
        v176 = v367;
        v174(v175, v367);
        v174(v172, v176);
        (*(v364 + 8))(v171, v365);
        sub_1CF9E7448();
        goto LABEL_67;
    }

    sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v393 = a1;
  v90 = a1;
  if (swift_dynamicCast())
  {
    *(v406 + 9) = *&v414[9];
    v404 = v412;
    v405 = v413;
    v406[0] = *v414;
    v402 = aBlock;
    v403 = v411;
    if (v414[24] == 5)
    {
      v89 = v393;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v402, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v402 > 2u)
    {
      v91 = v380;
      if (v402 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v105 = v376;
        v104 = v377;
        sub_1CF9E57D8();
        v106 = sub_1CF9E50D8();
        (*(v378 + 1))(v105, v104);
        v91(v106);

        v107 = aBlock;
LABEL_72:

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v91 = v380;
    if (v402 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v93 = v376;
    v92 = v377;
    sub_1CF9E57D8();
    v94 = sub_1CF9E50D8();
    (*(v378 + 1))(v93, v92);
    v91(v94);
    goto LABEL_33;
  }

  *&v402 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v411 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v411);
      LODWORD(v393) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v152 = v370;
      v153 = v372;
      sub_1CF9E57D8();
      v154 = sub_1CF9E53A8();
      v371[1](v152, v153);
      v380(v154);

      v107 = v402;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v402 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    *(v97 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v97 + 40) = v98;
    v99 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v100 = FPLocv();

    v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v103 = v102;

    *(v97 + 72) = MEMORY[0x1E69E6158];
    *(v97 + 48) = v101;
    *(v97 + 56) = v103;
    sub_1CF4E04E8(v97);
    swift_setDeallocating();
    sub_1CEFCCC44(v97 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v94 = aBlock;
    v380(aBlock);
LABEL_33:

    return;
  }

  *&v384 = a1;
  v108 = a1;
  if (swift_dynamicCast())
  {
    v399 = v415;
    v400 = v416;
    v395 = v412;
    v396 = v413;
    v397 = *v414;
    v398 = *&v414[16];
    v393 = aBlock;
    v394 = v411;
    v407 = v415;
    v408 = v416;
    v404 = v412;
    v405 = v413;
    v406[0] = *v414;
    v406[1] = *&v414[16];
    v401 = v417;
    v409 = v417;
    v402 = aBlock;
    v403 = v411;
    if (sub_1CF2B971C(&v402) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v177 = a1;
  if (swift_dynamicCast())
  {
    v178 = FPDomainUnavailableError();
    if (!v178)
    {
LABEL_120:

      __break(1u);
LABEL_121:
      MEMORY[0x1EEE9AC00](v278);
      v349 = v45;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v348, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v179 = v178;
    (v380)();

    v107 = aBlock;
    goto LABEL_72;
  }

  v382 = a1;
  v180 = a1;
  if (swift_dynamicCast())
  {
    v399 = v415;
    v400 = v416;
    v395 = v412;
    v396 = v413;
    v397 = *v414;
    v398 = *&v414[16];
    v393 = aBlock;
    v394 = v411;
    v407 = v415;
    v408 = v416;
    v404 = v412;
    v405 = v413;
    v406[0] = *v414;
    v406[1] = *&v414[16];
    v401 = v417;
    v409 = v417;
    v402 = aBlock;
    v403 = v411;
    if (sub_1CF2B971C(&v402) == 10)
    {
      nullsub_1();
      v182 = *(v181 + 16);
      if (!v182)
      {
        LODWORD(v384) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v183 = v370;
        v184 = v372;
        sub_1CF9E57D8();
        v182 = sub_1CF9E53A8();
        v371[1](v183, v184);
      }

      v185 = v380;
      v390 = v399;
      v391 = v400;
      v392 = v401;
      v386 = v395;
      v387 = v396;
      v388 = v397;
      v389 = v398;
      v384 = v393;
      v385 = v394;
      nullsub_1();
      v187 = *(v186 + 16);
      v185(v182);
      sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);

      v107 = v382;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
    v189 = v382;
    goto LABEL_90;
  }

  *&v393 = a1;
  v188 = a1;
  if (swift_dynamicCast())
  {
    v404 = v412;
    v405 = v413;
    v406[0] = *v414;
    *(v406 + 9) = *&v414[9];
    v402 = aBlock;
    v403 = v411;
    sub_1CEFCCC44(&v402, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_91:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v199 = v376;
    v198 = v377;
    sub_1CF9E57D8();
    v94 = sub_1CF9E50D8();
    (*(v378 + 1))(v199, v198);
    v380(v94);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v190 = a1;
  v191 = swift_dynamicCast();

  if (v191)
  {
    goto LABEL_91;
  }

  *&v402 = a1;
  v192 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v411, *(&v411 + 1), v412, v193, v194, v195);
LABEL_89:
    v189 = v402;
LABEL_90:

    goto LABEL_91;
  }

  *&v402 = a1;
  v196 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v411, SBYTE8(v411));
    goto LABEL_89;
  }

  *&v402 = a1;
  v197 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_89;
  }

  v200 = sub_1CF9E57E8();
  v201 = [v200 userInfo];
  v202 = sub_1CF9E6638();

  v203 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v211 = v204;
  if (!*v202->tree)
  {
    v202, v204, v205, v206, v207, v208, v209, v210;
    v239 = v211;
LABEL_98:
    v239, v221, v222, v223, v224, v225, v226, v227;
    goto LABEL_99;
  }

  v212 = sub_1CEFE4328(v203, v204);
  v214 = v213;
  v211, v213, v215, v216, v217, v218, v219, v220;
  if ((v214 & 1) == 0)
  {
    v239 = v202;
    goto LABEL_98;
  }

  sub_1CEFD1104(*v202[1].tester + 32 * v212, &aBlock);
  v202, v228, v229, v230, v231, v232, v233, v234;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v235 = v402;
    v236 = v379;

    v237 = v200;
    v238 = v235;
    sub_1CF782688(v238, v374 & 1, v373, v237, v380, v236, &unk_1F4C14610, &unk_1F4C14638, sub_1CF2BA174, sub_1CF7779C8, &unk_1F4C14728, sub_1CF7969FC, &unk_1F4C14750, sub_1CF796A04, sub_1CF72A328, &unk_1F4C146D8, &unk_1F4C14700, sub_1CF796A00, sub_1CF72A328, &unk_1F4C14660, &unk_1F4C14688, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_130_0, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_99:
  v240 = swift_allocObject();
  v241 = [v200 userInfo];
  v242 = sub_1CF9E6638();

  v243 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v251 = v244;
  if (!*v242->tree)
  {
    v242, v244, v245, v246, v247, v248, v249, v250;
    v285 = v251;
LABEL_115:
    v285, v260, v261, v262, v263, v264, v265, v266;
    goto LABEL_116;
  }

  v252 = sub_1CEFE4328(v243, v244);
  v45 = v253;
  v251, v253, v254, v255, v256, v257, v258, v259;
  if ((v45 & 1) == 0)
  {
    v285 = v242;
    goto LABEL_115;
  }

  sub_1CEFD1104(*v242[1].tester + 32 * v252, &aBlock);
  v242, v267, v268, v269, v270, v271, v272, v273;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    swift_deallocUninitializedObject();
    v380(a1);

    return;
  }

  v240[2] = v402;
  v274 = dispatch_group_create();
  v275 = v240[2];
  if (v275 >> 62)
  {
    goto LABEL_118;
  }

  v276 = *((v275 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v276)
  {
    goto LABEL_124;
  }

  do
  {
    v277 = 0;
    while (1)
    {
      v45 = v274;
      v278 = objc_sync_enter(v45);
      if (v278)
      {
        goto LABEL_121;
      }

      swift_beginAccess();
      v279 = v240[2];
      if ((v279 & 0xC000000000000001) != 0)
      {
        v280 = MEMORY[0x1D3869C30](v277);
        goto LABEL_109;
      }

      if (v277 >= *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v280 = *(v279 + 8 * v277 + 32);
LABEL_109:
      v281 = v280;
      swift_endAccess();
      v282 = objc_sync_exit(v45);
      if (v282)
      {
        MEMORY[0x1EEE9AC00](v282);
        v349 = v45;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v348, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v45);
      v283 = v45;

      v284 = v281;
      sub_1CF774BF8(v284, v374 & 1, v373, v283, v240, v277);

      if (v276 == ++v277)
      {
        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_118:
    v286 = sub_1CF9E7818();
    if (v286 < 0)
    {
      __break(1u);
      goto LABEL_120;
    }

    v276 = v286;
  }

  while (v286);
LABEL_124:
  if (v374)
  {
    v287 = [v200 userInfo];
    v288 = sub_1CF9E6638();

    v289 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v291 = v290;
    swift_beginAccess();
    v292 = v240[2];
    *(&v411 + 1) = v378;
    *&aBlock = v292;
    sub_1CEFE9EB8(&aBlock, &v402);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v384 = v288;
    sub_1CF1D154C(&v402, v289, v291, isUniquelyReferenced_nonNull_native);
    v291, v294, v295, v296, v297, v298, v299, v300;
    v301 = [v200 domain];
    if (!v301)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v303 = v302;
      v301 = sub_1CF9E6888();
      v303, v304, v305, v306, v307, v308, v309, v310;
    }

    v311 = [v200 code];
    v312 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v313 = sub_1CF9E6618();

    v314 = [v312 initWithDomain:v301 code:v311 userInfo:v313];

    v380(v314);
  }

  else
  {
    v315 = *(*(v373 + 16) + 64);
    v316 = swift_allocObject();
    v316[2] = v200;
    v316[3] = v240;
    v316[4] = sub_1CF2AF9D0;
    v316[5] = v381;

    v317 = v315;
    v380 = v200;

    v318 = fpfs_current_log();
    v378 = fpfs_adopt_log();
    v319 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v320;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v321 = sub_1CF9E7988();
    v323 = v322;
    MEMORY[0x1D3868CC0](v321);
    v323, v324, v325, v326, v327, v328, v329, v330;
    v331 = *(&aBlock + 1);
    sub_1CF9E6978();
    v331, v332, v333, v334, v335, v336, v337, v338;
    v339 = __fp_log_fork();

    *(v319 + 16) = v339;
    v340 = swift_allocObject();
    *(v340 + 16) = v318;
    *(v340 + 24) = v319;
    v376 = v319;
    *(v340 + 32) = v317;
    *(v340 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v340 + 48) = 48;
    *(v340 + 56) = 2;
    *(v340 + 64) = sub_1CF796ACC;
    *(v340 + 72) = v316;
    *&v412 = sub_1CF2B9F54;
    *(&v412 + 1) = v340;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v411 = sub_1CEFCA444;
    *(&v411 + 1) = &block_descriptor_88_1;
    v341 = _Block_copy(&aBlock);
    v375 = v317;
    v377 = v318;

    v342 = v351;
    sub_1CF9E63F8();
    *&v402 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v343 = v352;
    v344 = v354;
    sub_1CF9E77B8();
    v345 = v375;
    sub_1CF9E7308();
    _Block_release(v341);
    (*(v353 + 8))(v343, v344);
    (*(v368 + 8))(v342, v369);

    v346 = v378;
    v347 = fpfs_adopt_log();
  }
}

uint64_t sub_1CF77D1EC(uint64_t a1)
{
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = objc_allocWithZone(MEMORY[0x1E6967308]);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
  sub_1CF2B1654(&qword_1EDEA3420, &unk_1EDEA3430, 0x1E69673A0, MEMORY[0x1E69E81B8]);
  v4 = sub_1CF9E6618();
  v5 = [v3 initWithAlternateContentsDictionary_];

  *(v1 + 48) = v5;
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4740, qword_1CFA16890);
  v6 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v7 = *(a1 + qword_1EDEADB50);
  swift_beginAccess();
  swift_retain_n();

  os_unfair_lock_lock((v7 + 24));
  swift_endAccess();
  *(v7 + 16) = v6;

  swift_beginAccess();
  os_unfair_lock_unlock((v7 + 24));
  swift_endAccess();

  return v1;
}

void *sub_1CF77D3C4(uint64_t a1, uint64_t a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for FPFSSyncEngine(0);
  v10 = swift_allocObject();
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  type metadata accessor for FPFileTree(0);
  v11 = *(swift_dynamicCastClassUnconditional() + 280);

  v12 = v11;
  v13 = [v12 pathComponents];
  v14 = sub_1CF9E6D48();

  v15 = *v14->tree;
  v14, v16, v17, v18, v19, v20, v21, v22;
  if (v15 >= 2)
  {
    v23 = [v12 stringByDeletingLastPathComponent];
    if (!v23)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v24;
      v23 = sub_1CF9E6888();
      v25, v26, v27, v28, v29, v30, v31, v32;
    }

    v12 = v23;
  }

  v33 = [v12 fp_isiCloudDriveIdentifier];

  *(v10 + 72) = v33;

  v35 = sub_1CF77D1EC(v34);

  v36 = v35[6];
  if (a4)
  {
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    sub_1CF9E5A58();
    sub_1CF2B1654(&qword_1EDEA3420, &unk_1EDEA3430, 0x1E69673A0, MEMORY[0x1E69E81B8]);
    swift_retain_n();
    v37 = v36;
    v38 = sub_1CF9E6618();
    a4, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    swift_retain_n();
    v46 = v36;
    v38 = 0;
  }

  [v36 updateWithManagerAlternateContentsDictionary_];

  if (a5)
  {
    v47 = swift_allocObject();
    *(v47 + 16) = a5;
    *(v47 + 24) = v53;
    v48 = sub_1CF79600C;
  }

  else
  {
    v48 = 0;
    v47 = 0;
  }

  v50 = v35[4];
  v49 = v35[5];
  v35[4] = v48;
  v35[5] = v47;
  sub_1CEFF7124(v50, v49);

  return v35;
}

id sub_1CF77D6A0(void *a1, uint64_t *a2, uint64_t a3, char a4, int a5, uint64_t a6)
{
  v7 = v6;
  v183 = a6;
  v184 = a5;
  v176 = a3;
  v182 = *v7;
  v11 = sub_1CF9E5648();
  v167 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v174 = v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1CF9E6068();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v191 = v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v185 = v166 - v17;
  v170 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v170);
  v186 = v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1CF9E5A58();
  v19 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v188 = v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v169 = v166 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v190 = v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v181 = v166 - v26;
  MEMORY[0x1EEE9AC00](v27);
  *&v189 = v166 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v168 = v166 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v166 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v166 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v166 - v38;
  *&v41 = MEMORY[0x1EEE9AC00](v40).n128_u64[0];
  v43 = v166 - v42;
  v44 = a2[1];
  v180 = *a2;
  v177 = v44;
  v45 = a2[3];
  v179 = a2[2];
  v178 = v45;
  v187 = a2[4];
  if ((a4 & 1) == 0)
  {
    v46 = v7[6];
    v47 = [a1 itemID];
    v48 = [v46 getAlternateContentsURLWrapperForItemID_];

    if (v48)
    {

      return [a1 setFileURL_];
    }
  }

  v166[1] = v7;
  v50 = [a1 fileURL];
  v192 = a1;
  v166[0] = v11;
  if (v50)
  {
    v51 = v50;
    sub_1CF9E59D8();

    v52 = *(v19 + 56);
    v53 = v39;
    v54 = 0;
  }

  else
  {
    v52 = *(v19 + 56);
    v53 = v39;
    v54 = 1;
  }

  v55 = v194;
  v175 = v52;
  v52(v53, v54, 1, v194);
  v56 = v43;
  sub_1CEFE55D0(v39, v43, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CEFCCBDC(v43, v36, &unk_1EC4BE310, qword_1CF9FCBE0);
  v193 = v19;
  v57 = *(v19 + 48);
  v58 = v57(v36, 1, v55);
  sub_1CEFCCC44(v36, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v58 == 1)
  {
    sub_1CEFCCBDC(v176, v33, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v57(v33, 1, v55) == 1)
    {
      sub_1CEFCCC44(v33, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      v59 = v169;
      (*(v193 + 32))(v169, v33, v55);
      v60 = [v192 filename];
      v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v63 = v62;

      v199 = v61;
      v200 = v63;
      v197 = 58;
      v198 = 0xE100000000000000;
      v195 = 47;
      v196 = 0xE100000000000000;
      sub_1CEFE4E68();
      v64 = sub_1CF9E7668();
      v66 = v65;
      v67 = v63;
      v55 = v194;
      v67, v65, v68, v69, v70, v71, v72, v73;
      v199 = v64;
      v200 = v66;
      v197 = 47;
      v198 = 0xE100000000000000;
      v195 = 58;
      v196 = 0xE100000000000000;
      sub_1CF9E7668();
      v75 = v74;
      v66, v74, v76, v77, v78, v79, v80, v81;
      [v192 isFolder];
      v82 = v168;
      sub_1CF9E5958();
      v75, v83, v84, v85, v86, v87, v88, v89;
      (*(v193 + 8))(v59, v55);
      sub_1CEFCCC44(v56, &unk_1EC4BE310, qword_1CF9FCBE0);
      v175(v82, 0, 1, v55);
      sub_1CEFE55D0(v82, v56, &unk_1EC4BE310, qword_1CF9FCBE0);
    }
  }

  v90 = v189;
  sub_1CEFCCBDC(v56, v189, &unk_1EC4BE310, qword_1CF9FCBE0);
  v91 = v57(v90, 1, v55);
  sub_1CEFCCC44(v90, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v91 == 1)
  {
    v93 = v190;
    v92 = v191;
    v94 = v187;
    if (v187)
    {
      v195 = sub_1CF65C624();
      v197 = v177;
      LOBYTE(v198) = v179;
      v199 = v178;
      v200 = v94;

      v95 = [v192 isFolder];
      v96 = v181;
      (*(v183 + 32))(v180, &v197, &v199, v95, *(v182 + 96));
      v97 = v200;

      v97, v98, v99, v100, v101, v102, v103, v104;
      sub_1CEFCCC44(v56, &unk_1EC4BE310, qword_1CF9FCBE0);
      v105 = v193;
      v175(v96, 0, 1, v55);
      sub_1CEFE55D0(v96, v56, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      v105 = v193;
    }
  }

  else
  {
    v105 = v193;
    v93 = v190;
    v92 = v191;
  }

  sub_1CEFCCBDC(v56, v93, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v57(v93, 1, v55) == 1)
  {
    sub_1CEFCCC44(v56, &unk_1EC4BE310, qword_1CF9FCBE0);
    v106 = v93;
    return sub_1CEFCCC44(v106, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v107 = v188;
  (*(v105 + 32))(v188, v93, v55);
  v108 = v105;
  v109 = sub_1CF9E5928();
  v110 = v192;
  [v192 setFileURL_];

  if ((v184 & 1) == 0)
  {
    (*(v108 + 8))(v107, v55);
    v106 = v56;
    return sub_1CEFCCC44(v106, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v111 = qword_1EDEBBE40;
  v112 = v172;
  v113 = v185;
  v114 = v173;
  (*(v172 + 56))(v185, 1, 1, v173);
  v115 = v110;
  v116 = v112;
  v117 = [v115 itemIdentifier];
  v118 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v190 = v119;
  v191 = v118;

  sub_1CEFCCBDC(v113, v92, &unk_1EC4BED20, &unk_1CFA00700);
  v120 = *(v116 + 48);
  v121 = v120(v92, 1, v114);
  v122 = v171;
  if (v121 == 1)
  {
    v123 = v111;
    sub_1CF9E6048();
    if (v120(v92, 1, v114) != 1)
    {
      sub_1CEFCCC44(v92, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v116 + 32))(v171, v92, v114);
  }

  v124 = v186;
  (*(v116 + 16))(v186, v122, v114);
  v125 = v170;
  *(v124 + *(v170 + 20)) = v111;
  v126 = v124 + *(v125 + 24);
  *v126 = "Type identifier resolution";
  *(v126 + 8) = 26;
  v127 = v122;
  v128 = v114;
  *(v126 + 16) = 2;
  v129 = v111;
  v130 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v131 = swift_allocObject();
  v189 = xmmword_1CF9FA450;
  *(v131 + 16) = xmmword_1CF9FA450;
  *(v131 + 56) = MEMORY[0x1E69E6158];
  *(v131 + 64) = sub_1CEFD51C4();
  v132 = v190;
  *(v131 + 32) = v191;
  *(v131 + 40) = v132;
  sub_1CF9E6028(v130, &dword_1CEFC7000, v129, "Type identifier resolution", 26, 2, v124, "%s", 2);
  v131, v133, v134, v135, v136, v137, v138, v139;
  (*(v116 + 8))(v127, v128);
  sub_1CEFCCC44(v185, &unk_1EC4BED20, &unk_1CFA00700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = v189;
  v141 = *MEMORY[0x1E695DC68];
  *(inited + 32) = *MEMORY[0x1E695DC68];
  v142 = v141;
  sub_1CEFF8A84(inited);
  v144 = v143;
  swift_setDeallocating();
  sub_1CF007CB8(inited + 32, type metadata accessor for URLResourceKey);
  v145 = v174;
  v146 = v188;
  sub_1CF9E58A8();
  v144, v147, v148, v149, v150, v151, v152, v153;
  sub_1CF9E55B8();
  v155 = v154;
  (*(v167 + 8))(v145, v166[0]);
  v156 = v194;
  if (v155)
  {
    v157 = sub_1CF9E6888();
    v155, v158, v159, v160, v161, v162, v163, v164;
    [v192 setTypeIdentifier_];
  }

  sub_1CF9E7458();
  v165 = v186;
  sub_1CF9E6038();
  (*(v193 + 8))(v146, v156);
  sub_1CEFCCC44(v56, &unk_1EC4BE310, qword_1CF9FCBE0);
  return sub_1CF007CB8(v165, type metadata accessor for Signpost);
}

void sub_1CF77E620(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + 16);
  v5 = sub_1CF9E57E8();
  [v4 *a2];
}

uint64_t sub_1CF77E690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_43Tm()
{
  v1 = *(*(v0 + 16) + 192);
  v131 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v131 + 56) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

void sub_1CF77EB10(void *a1, SEL *a2)
{
  v3 = *(*(*(v2 + 16) + 192) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1CF77153C(a1, *(v2 + 48), v2 + v4, *v5, *(v5 + 8), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_1CF77EB9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 8);
  v15 = *a1;
  v16 = v10;

  sub_1CF68DDB0(&v15, a2, a3, a6, __src);
  if (v6)
  {
  }

  else
  {

    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v14, __src, sizeof(v14));
    if (sub_1CEFF755C() == 1)
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      sub_1CEFCCC44(__dst, &unk_1EC4BFC20, &unk_1CFA0A290);
      v11 = (v14[16] >> 4) & 1;
    }
  }

  return v11 & 1;
}

uint64_t sub_1CF77EC8C@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_fget_parent_id();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_103Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v131 + 24) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v2 + v1[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

void sub_1CF77F0B0(void *a1, SEL *a2)
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1CF7713D8(a1, *(v2 + 16), v2 + v6, *v7, *(v7 + 8), a2);
}

uint64_t objectdestroy_22Tm()
{

  return swift_deallocObject();
}

void sub_1CF77F1A0(uint64_t a1, id a2, void (*a3)(__int128 *))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  swift_getErrorValue();
  v38 = v35;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  (*(*(v35 - 8) + 16))(boxed_opaque_existential_0, v34, v35);
  sub_1CEFE9EB8(&v36, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v33, v6, v8, isUniquelyReferenced_nonNull_native);
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = [a2 domain];
  if (!v18)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;
    v18 = sub_1CF9E6888();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = [a2 code];
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1CF9E6618();

  v31 = [v29 initWithDomain:v18 code:v28 userInfo:v30];

  v37 = 0;
  v36 = v31;
  LOBYTE(v38) = 1;
  v32 = v31;
  a3(&v36);
}

void sub_1CF77F3B8(uint64_t a1, id a2, void (*a3)(__int128 *))
{
  v5 = [a2 userInfo];
  v6 = sub_1CF9E6638();

  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  swift_getErrorValue();
  v10 = v42;
  v11 = v43;
  v38 = v43;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v10, v11);
  sub_1CEFE9EB8(&v36, v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v6;
  sub_1CF1D154C(v41, v7, v9, isUniquelyReferenced_nonNull_native);
  v9, v14, v15, v16, v17, v18, v19, v20;
  v21 = [a2 domain];
  if (!v21)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;
    v21 = sub_1CF9E6888();
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  v31 = [a2 code];
  v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v33 = sub_1CF9E6618();

  v34 = [v32 initWithDomain:v21 code:v31 userInfo:v33];

  v36 = v34;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  v35 = v34;
  a3(&v36);
}

uint64_t sub_1CF77F5D0(void *a1, int a2, uint64_t a3, void *a4, void (*a5)(__int128 *), void *a6, uint64_t a7, uint64_t a8, void (*a9)(id), uint64_t a10, id a11, uint64_t a12, uint64_t (*a13)(__n128), id a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(__n128), id a18, uint64_t a19, void *a20, uint64_t a21, uint64_t (*a22)(__n128), void *a23, uint64_t (*a24)(__n128), uint64_t (*a25)(__n128))
{
  v432 = a3;
  LODWORD(v433) = a2;
  v29 = sub_1CF9E63A8();
  v406 = *(v29 - 8);
  v407 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v405 = &v404 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CF9E53C8();
  v430 = *(v31 - 8);
  v431 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v429 = &v404 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CF9E6388();
  v425 = *(v33 - 8);
  v426 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v421 = (&v404 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v422 = &v404 - v36;
  v37 = sub_1CF9E6498();
  v423 = *(v37 - 8);
  v424 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v420 = &v404 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v411 = &v404 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v412 = &v404 - v42;
  v43 = sub_1CF9E63D8();
  v418 = *(v43 - 8);
  v419 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v409 = &v404 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v410 = &v404 - v46;
  v47 = sub_1CF9E6448();
  v427 = *(v47 - 8);
  v428 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v404 = &v404 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v413 = &v404 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v414 = &v404 - v52;
  v53 = sub_1CF9E73D8();
  v416 = *(v53 - 8);
  v417 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v415 = &v404 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v55 - 8);
  v434 = (&v404 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_1CF9E5268();
  v58 = *(v57 - 1);
  v436 = v57;
  v437 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v435 = &v404 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = swift_allocObject();
  v439 = a5;
  *(v60 + 16) = a5;
  *(v60 + 24) = a6;
  v61 = swift_allocObject();
  v61[2] = a4;
  v61[3] = a9;
  v408 = a9;
  v61[4] = v60;
  swift_retain_n();
  v472[0] = a1;
  v442 = a6;
  swift_retain_n();
  v62 = a4;
  v440 = v60;
  swift_retain_n();
  v441 = v62;
  v63 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v453 = v469;
    v454 = v470;
    v449 = v466;
    v450 = v467;
    v451 = v468[0];
    v452 = v468[1];
    v447 = aBlock;
    v448 = v465;
    v461 = v469;
    v462 = v470;
    v458 = v466;
    v459 = v467;
    v460[0] = v468[0];
    v460[1] = v468[1];
    v455 = v471;
    v463 = v471;
    v456 = aBlock;
    v457 = v465;
    if (sub_1CF2B971C(&v456))
    {
      sub_1CEFCCC44(&v447, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v86 = v85;
    v87 = *v85;
    v88 = *(v85 + 8);
    v89 = *(v85 + 112);

    v90 = sub_1CEFCCC44(v86 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v88 != 2 || v87)
    {
      v92 = v441;
      v93 = v439;
      if (v88 == 2 && v87 == 1)
      {
        v91 = *MEMORY[0x1E6967280];
        if (v89)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v445 = 0x2F73662F70665F5FLL;
        v446 = 0xE800000000000000;
        v443 = v87;
        v444 = v88;
        v137 = VFSItemID.description.getter(v90);
        v139 = v138;
        MEMORY[0x1D3868CC0](v137);
        v139, v140, v141, v142, v143, v144, v145, v146;
        v147 = v446;
        v91 = sub_1CF9E6888();
        v147, v148, v149, v150, v151, v152, v153, v154;
        if (v89)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v91 = *MEMORY[0x1E6967258];
      v92 = v441;
      v93 = v439;
      if (v89)
      {
LABEL_16:
        v94 = v89;
LABEL_54:

        v155 = v89;
        sub_1CF782070(v94, v92, v93);

        goto LABEL_73;
      }
    }

    v94 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v438 = v61;

  *&v447 = a1;
  v64 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v460 + 9) = *(v468 + 9);
    v459 = v467;
    v460[0] = v468[0];
    v457 = v465;
    v458 = v466;
    v456 = aBlock;
    if (!BYTE8(v468[1]))
    {
      v95 = *(&v460[0] + 1);
      v96 = *&v460[0];
      v97 = *(&v459 + 1);
      v98 = v459;
      v99 = *(&v458 + 1);
      v100 = v458;
      v101 = *(&v457 + 1);
      v102 = v457;
      v103 = *(&v456 + 1);
      v437 = v456;

      sub_1CF1D56D0(v103, v102, v101, v100, v99, v98, v97, v96);
      if (v95)
      {
        v104 = v95;
        v105 = v441;
        v106 = v439;
        v107 = v437;
      }

      else
      {
        v135 = objc_opt_self();
        v107 = v437;
        v104 = [v135 fileProviderErrorForNonExistentItemWithIdentifier_];
        v105 = v441;
        v106 = v439;
      }

      v136 = v95;
      sub_1CF782070(v104, v105, v106);

      goto LABEL_73;
    }

    sub_1CEFCCC44(&v456, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v445 = a1;
  v66 = a1;
  if (swift_dynamicCast())
  {
    v453 = v469;
    v454 = v470;
    v449 = v466;
    v450 = v467;
    v451 = v468[0];
    v452 = v468[1];
    v447 = aBlock;
    v448 = v465;
    v461 = v469;
    v462 = v470;
    v458 = v466;
    v459 = v467;
    v460[0] = v468[0];
    v460[1] = v468[1];
    v455 = v471;
    v463 = v471;
    v456 = aBlock;
    v457 = v465;
    v67 = sub_1CF2B971C(&v456);
    switch(v67)
    {
      case 5:
        nullsub_1();

LABEL_32:
        v114 = v439;
        v115 = v441;
        goto LABEL_33;
      case 3:
        nullsub_1();
        v109 = *v108;
        v110 = *(v108 + 8);
        sub_1CEFCCC44(&v447, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v433)
        {
          LODWORD(v443) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v81 = v429;
          v82 = v431;
          sub_1CF9E57D8();
          v83 = sub_1CF9E53A8();
          v84 = v430;
          goto LABEL_25;
        }

        LODWORD(v435) = v110;
        v436 = v109;
        v437 = a18;
        v434 = a17;
        v433 = a16;
        v156 = v432;
        type metadata accessor for VFSFileTree(0);
        v157 = swift_dynamicCastClassUnconditional();
        v158 = swift_allocObject();
        v159 = v438;
        *(v158 + 16) = a11;
        *(v158 + 24) = v159;
        v439 = v158;
        *(v158 + 32) = v156;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v431 = v157;
        v160 = *(v157 + 216);
        v443 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v161 = v160;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v162 = v415;
        v163 = v417;
        sub_1CF9E77B8();
        v164 = sub_1CF9E73E8();

        (*(v416 + 8))(v162, v163);
        qos_class_self();
        v165 = v411;
        sub_1CF9E63B8();
        v167 = v418;
        v166 = v419;
        v168 = *(v418 + 48);
        if (v168(v165, 1, v419) == 1)
        {
          (*(v167 + 104))(v409, *MEMORY[0x1E69E7FA0], v166);
          if (v168(v165, 1, v166) != 1)
          {
            sub_1CEFCCC44(v165, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v167 + 32))(v409, v165, v166);
        }

        ObjectType = swift_getObjectType();
        v186 = v413;
        sub_1CF9E6428();
        v187 = swift_allocObject();
        v188 = v436;
        *(v187 + 16) = v431;
        *(v187 + 24) = v188;
        *(v187 + 32) = v435;
        *(v187 + 40) = 0u;
        *(v187 + 56) = 0u;
        *(v187 + 72) = 0u;
        *(v187 + 88) = 0u;
        *(v187 + 104) = 0u;
        *(v187 + 120) = 0u;
        *(v187 + 136) = 0;
        *(v187 + 144) = 1;
        v189 = v434;
        *(v187 + 152) = v164;
        *(v187 + 160) = v189;
        *(v187 + 168) = v439;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v186, v437, v187, ObjectType);

        (*(v427 + 8))(v186, v428);
        v190 = v420;
        sub_1CF9E6478();
        v191 = v422;
        sub_1CEFD5B64(v422);
        v192 = v421;
        sub_1CEFD5BD8(v421);
        MEMORY[0x1D3869770](v190, v191, v192, ObjectType);
        v193 = *(v425 + 8);
        v194 = v192;
        v195 = v426;
        v193(v194, v426);
        v193(v191, v195);
        (*(v423 + 8))(v190, v424);
        sub_1CF9E7448();

LABEL_67:

        swift_unknownObjectRelease();

        v207 = v441;

      case 1:
        nullsub_1();
        v69 = *v68;
        v70 = *(v68 + 8);
        v71 = *(v68 + 24);
        v72 = *(v68 + 48);
        v73 = *(v68 + 56);

        sub_1CF480620(v72, v73);
        v71, v74, v75, v76, v77, v78, v79, v80;
        if (v433)
        {
          sub_1CF9E5128();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v81 = v435;
          v82 = v436;
          sub_1CF9E57D8();
          v83 = sub_1CF9E50D8();
          v84 = v437;
LABEL_25:
          v84[1](v81, v82);
LABEL_26:

          v111 = v441;
          sub_1CF782070(v83, v441, v439);

          v112 = v445;
LABEL_72:

          goto LABEL_73;
        }

        LODWORD(v435) = v70;
        v436 = v69;
        v437 = a14;
        v434 = a13;
        v433 = a12;
        v169 = v432;
        type metadata accessor for VFSFileTree(0);
        v170 = swift_dynamicCastClassUnconditional();
        v171 = swift_allocObject();
        v172 = v438;
        *(v171 + 16) = a11;
        *(v171 + 24) = v172;
        v439 = v171;
        *(v171 + 32) = v169;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v431 = v170;
        v173 = *(v170 + 216);
        v443 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v174 = v173;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v175 = v415;
        v176 = v417;
        sub_1CF9E77B8();
        v177 = sub_1CF9E73E8();

        (*(v416 + 8))(v175, v176);
        qos_class_self();
        v178 = v412;
        sub_1CF9E63B8();
        v180 = v418;
        v179 = v419;
        v181 = *(v418 + 48);
        if (v181(v178, 1, v419) == 1)
        {
          (*(v180 + 104))(v410, *MEMORY[0x1E69E7FA0], v179);
          if (v181(v178, 1, v179) != 1)
          {
            sub_1CEFCCC44(v178, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v180 + 32))(v410, v178, v179);
        }

        v196 = swift_getObjectType();
        v197 = v414;
        sub_1CF9E6428();
        v198 = swift_allocObject();
        v199 = v436;
        *(v198 + 16) = v431;
        *(v198 + 24) = v199;
        *(v198 + 32) = v435;
        *(v198 + 40) = 0u;
        *(v198 + 56) = 0u;
        *(v198 + 72) = 0u;
        *(v198 + 88) = 0u;
        *(v198 + 104) = 0u;
        *(v198 + 120) = 0u;
        *(v198 + 136) = 0;
        *(v198 + 144) = 1;
        v200 = v434;
        *(v198 + 152) = v177;
        *(v198 + 160) = v200;
        *(v198 + 168) = v439;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v197, v437, v198, v196);

        (*(v427 + 8))(v197, v428);
        v201 = v420;
        sub_1CF9E6478();
        v202 = v422;
        sub_1CEFD5B64(v422);
        v203 = v421;
        sub_1CEFD5BD8(v421);
        MEMORY[0x1D3869770](v201, v202, v203, v196);
        v204 = *(v425 + 8);
        v205 = v203;
        v206 = v426;
        v204(v205, v426);
        v204(v202, v206);
        (*(v423 + 8))(v201, v424);
        sub_1CF9E7448();

        goto LABEL_67;
    }

    sub_1CEFCCC44(&v447, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v447 = a1;
  v113 = a1;
  if (swift_dynamicCast())
  {
    *(v460 + 9) = *(v468 + 9);
    v458 = v466;
    v459 = v467;
    v460[0] = v468[0];
    v456 = aBlock;
    v457 = v465;
    if (BYTE8(v468[1]) == 5)
    {

      goto LABEL_32;
    }

    sub_1CEFCCC44(&v456, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v119 = a1;
  if (swift_dynamicCast())
  {
    v115 = v441;
    v114 = v439;
    if (v456 > 2u)
    {
      if (v456 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v129 = v435;
        v130 = v436;
        sub_1CF9E57D8();
        v131 = sub_1CF9E50D8();
        (*(v437 + 1))(v129, v130);

        sub_1CF782070(v131, v115, v114);

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_34;
    }

    if (v456 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_34;
    }

LABEL_33:
    sub_1CF9E50E8();
LABEL_34:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v116 = v435;
    v117 = v436;
    sub_1CF9E57D8();
    v118 = sub_1CF9E50D8();
    (*(v437 + 1))(v116, v117);

    sub_1CF782070(v118, v115, v114);

    goto LABEL_35;
  }

  *&v456 = a1;
  v120 = a1;
  if (swift_dynamicCast())
  {
    if ((v465 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v465);
      LODWORD(v447) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v182 = v429;
      v183 = v431;
      sub_1CF9E57D8();
      v184 = sub_1CF9E53A8();
      v430[1](v182, v183);

      v111 = v441;
      sub_1CF782070(v184, v441, v439);

      v112 = v456;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v456 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_1CF9FA450;
    *(v121 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v121 + 40) = v122;
    v123 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v124 = FPLocv();

    v125 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v127 = v126;

    *(v121 + 72) = MEMORY[0x1E69E6158];
    *(v121 + 48) = v125;
    *(v121 + 56) = v127;
    sub_1CF4E04E8(v121);
    swift_setDeallocating();
    sub_1CEFCCC44(v121 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v118 = aBlock;

    v128 = v441;
    sub_1CF782070(v118, v441, v439);

LABEL_35:

    goto LABEL_73;
  }

  v445 = a1;
  v132 = a1;
  if (swift_dynamicCast())
  {
    v453 = v469;
    v454 = v470;
    v449 = v466;
    v450 = v467;
    v451 = v468[0];
    v452 = v468[1];
    v447 = aBlock;
    v448 = v465;
    v461 = v469;
    v462 = v470;
    v458 = v466;
    v459 = v467;
    v460[0] = v468[0];
    v460[1] = v468[1];
    v455 = v471;
    v463 = v471;
    v456 = aBlock;
    v457 = v465;
    if (sub_1CF2B971C(&v456) == 16)
    {
      sub_1CF9E5168();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v133 = v435;
      v134 = v436;
      sub_1CF9E57D8();
      v83 = sub_1CF9E50D8();
      (*(v437 + 1))(v133, v134);
      goto LABEL_26;
    }

    sub_1CEFCCC44(&v447, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v208 = a1;
  if (swift_dynamicCast())
  {
    v209 = FPDomainUnavailableError();
    if (!v209)
    {
LABEL_121:

      v333 = v441;

      __break(1u);
LABEL_122:
      MEMORY[0x1EEE9AC00](v317);
      *(&v404 - 2) = v65;

      v334 = v441;

      fp_preconditionFailure(_:file:line:)(v434, (&v404 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v210 = v209;

    v111 = v441;
    sub_1CF782070(v210, v441, v439);

    v112 = aBlock;
    goto LABEL_72;
  }

  v443 = a1;
  v212 = a1;
  if (swift_dynamicCast())
  {
    v453 = v469;
    v454 = v470;
    v449 = v466;
    v450 = v467;
    v451 = v468[0];
    v452 = v468[1];
    v447 = aBlock;
    v448 = v465;
    v461 = v469;
    v462 = v470;
    v458 = v466;
    v459 = v467;
    v460[0] = v468[0];
    v460[1] = v468[1];
    v455 = v471;
    v463 = v471;
    v456 = aBlock;
    v457 = v465;
    if (sub_1CF2B971C(&v456) == 10)
    {
      nullsub_1();
      v214 = *(v213 + 16);
      if (!v214)
      {
        LODWORD(v445) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v215 = v429;
        v216 = v431;
        sub_1CF9E57D8();
        v214 = sub_1CF9E53A8();
        v430[1](v215, v216);
      }

      v217 = v441;
      v218 = v439;

      sub_1CEFCCBDC(&v447, &v445, &unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CF782070(v214, v217, v218);

      sub_1CEFCCC44(&v447, &unk_1EC4BE320, &unk_1CFA08B50);

      goto LABEL_73;
    }

    sub_1CEFCCC44(&v447, &unk_1EC4BE320, &unk_1CFA08B50);
    v220 = v443;
    goto LABEL_91;
  }

  *&v447 = a1;
  v219 = a1;
  if (swift_dynamicCast())
  {
    v458 = v466;
    v459 = v467;
    v460[0] = v468[0];
    *(v460 + 9) = *(v468 + 9);
    v456 = aBlock;
    v457 = v465;
    sub_1CEFCCC44(&v456, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_92:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v229 = v435;
    v230 = v436;
    sub_1CF9E57D8();
    v118 = sub_1CF9E50D8();
    (*(v437 + 1))(v229, v230);

    v231 = v441;
    sub_1CF782070(v118, v441, v439);

    goto LABEL_35;
  }

  *&aBlock = a1;
  v221 = a1;
  v222 = swift_dynamicCast();

  if (v222)
  {
    goto LABEL_92;
  }

  *&v456 = a1;
  v223 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v465, *(&v465 + 1), v466, v224, v225, v226);
LABEL_90:
    v220 = v456;
LABEL_91:

    goto LABEL_92;
  }

  *&v456 = a1;
  v227 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v465, SBYTE8(v465));
    goto LABEL_90;
  }

  *&v456 = a1;
  v228 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_90;
  }

  v232 = sub_1CF9E57E8();
  v233 = [v232 userInfo];
  v234 = sub_1CF9E6638();

  v235 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v243 = v236;
  if (*v234->tree)
  {
    v244 = sub_1CEFE4328(v235, v236);
    v246 = v245;
    v243, v245, v247, v248, v249, v250, v251, v252;
    if (v246)
    {
      sub_1CEFD1104(*v234[1].tester + 32 * v244, &aBlock);
      v234, v260, v261, v262, v263, v264, v265, v266;
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v267 = v456;
        v268 = v441;
        v269 = v440;

        v270 = v232;
        v271 = v267;
        sub_1CF777DC8(v271, v433 & 1, v432, v270, v268, v408, v269);
      }

      v437 = a11;
    }

    else
    {
      v437 = a11;
      v234, v253, v254, v255, v256, v257, v258, v259;
    }
  }

  else
  {
    v437 = a11;
    v234, v236, v237, v238, v239, v240, v241, v242;
    v243, v272, v273, v274, v275, v276, v277, v278;
  }

  v279 = swift_allocObject();
  v280 = [v232 userInfo];
  v281 = sub_1CF9E6638();

  v282 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v290 = v283;
  if (!*v281->tree)
  {
    v281, v283, v284, v285, v286, v287, v288, v289;
    v290, v324, v325, v326, v327, v328, v329, v330;
    goto LABEL_116;
  }

  v65 = sub_1CEFE4328(v282, v283);
  v292 = v291;
  v290, v291, v293, v294, v295, v296, v297, v298;
  if ((v292 & 1) == 0)
  {
    v281, v299, v300, v301, v302, v303, v304, v305;
    goto LABEL_116;
  }

  sub_1CEFD1104(*v281[1].tester + 32 * v65, &aBlock);
  v281, v306, v307, v308, v309, v310, v311, v312;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    swift_deallocUninitializedObject();

    v331 = v441;
    sub_1CF782070(a1, v441, v439);

    goto LABEL_117;
  }

  v435 = v232;
  v279[2] = v456;
  v313 = dispatch_group_create();
  v314 = v279[2];
  if (v314 >> 62)
  {
    goto LABEL_119;
  }

  v315 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v315)
  {
    goto LABEL_125;
  }

  do
  {
    v316 = 0;
    v434 = a24;
    while (1)
    {
      v65 = v313;
      v317 = objc_sync_enter(v65);
      if (v317)
      {
        goto LABEL_122;
      }

      swift_beginAccess();
      v318 = v279[2];
      if ((v318 & 0xC000000000000001) != 0)
      {
        v319 = MEMORY[0x1D3869C30](v316);
        goto LABEL_110;
      }

      if (v316 >= *((v318 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v319 = *(v318 + 8 * v316 + 32);
LABEL_110:
      v320 = v319;
      swift_endAccess();
      v321 = objc_sync_exit(v65);
      if (v321)
      {
        MEMORY[0x1EEE9AC00](v321);
        *(&v404 - 2) = v65;

        v335 = v441;

        fp_preconditionFailure(_:file:line:)(a25, (&v404 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v65);
      v322 = v65;

      v323 = v320;
      sub_1CF774BF8(v323, v433 & 1, v432, v322, v279, v316);

      if (v315 == ++v316)
      {
        goto LABEL_125;
      }
    }

    __break(1u);
LABEL_119:
    v332 = sub_1CF9E7818();
    if (v332 < 0)
    {
      __break(1u);
      goto LABEL_121;
    }

    v315 = v332;
  }

  while (v332);
LABEL_125:
  if (v433)
  {
    v336 = v435;
    v337 = [v435 userInfo];
    v338 = sub_1CF9E6638();

    v339 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v341 = v340;
    swift_beginAccess();
    v342 = v279[2];
    *(&v465 + 1) = v436;
    *&aBlock = v342;
    sub_1CEFE9EB8(&aBlock, &v456);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v445 = v338;
    sub_1CF1D154C(&v456, v339, v341, isUniquelyReferenced_nonNull_native);
    v341, v344, v345, v346, v347, v348, v349, v350;
    v351 = [v336 domain];
    if (!v351)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v353 = v352;
      v351 = sub_1CF9E6888();
      v353, v354, v355, v356, v357, v358, v359, v360;
    }

    v232 = v435;
    v361 = [v435 code];
    v362 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v363 = sub_1CF9E6618();

    v364 = [v362 initWithDomain:v351 code:v361 userInfo:v363];

    v365 = v441;
    sub_1CF782070(v364, v441, v439);

LABEL_117:
LABEL_73:
  }

  else
  {
    v436 = a23;
    v434 = a22;
    v433 = a21;
    v431 = a20;
    v366 = *(*(v432 + 16) + 64);
    v367 = swift_allocObject();
    v368 = v435;
    v367[2] = v435;
    v367[3] = v279;
    v369 = v438;
    v367[4] = v437;
    v367[5] = v369;
    v370 = v367;

    v371 = v366;
    v439 = v368;

    v372 = fpfs_current_log();
    v437 = fpfs_adopt_log();
    v373 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v374;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v375 = sub_1CF9E7988();
    v377 = v376;
    MEMORY[0x1D3868CC0](v375);
    v377, v378, v379, v380, v381, v382, v383, v384;
    v385 = *(&aBlock + 1);
    sub_1CF9E6978();
    v385, v386, v387, v388, v389, v390, v391, v392;
    v393 = __fp_log_fork();

    *(v373 + 2) = v393;
    v394 = swift_allocObject();
    *(v394 + 16) = v372;
    *(v394 + 24) = v373;
    v435 = v373;
    *(v394 + 32) = v371;
    *(v394 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v394 + 48) = 48;
    *(v394 + 56) = 2;
    v395 = v434;
    *(v394 + 64) = v433;
    *(v394 + 72) = v370;
    v432 = v370;
    *&v466 = v395;
    *(&v466 + 1) = v394;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v465 = sub_1CEFCA444;
    *(&v465 + 1) = v436;
    v396 = _Block_copy(&aBlock);
    v434 = v371;
    v436 = v372;

    v397 = v404;
    sub_1CF9E63F8();
    *&v456 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v398 = v405;
    v399 = v407;
    sub_1CF9E77B8();
    v400 = v434;
    sub_1CF9E7308();
    _Block_release(v396);
    (*(v406 + 8))(v398, v399);
    (*(v427 + 8))(v397, v428);

    v401 = v437;
    v402 = fpfs_adopt_log();

    v403 = v441;
  }
}

void sub_1CF782070(uint64_t a1, id a2, void (*a3)(__int128 *))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  swift_getErrorValue();
  v37 = v35;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  (*(*(v35 - 8) + 16))(boxed_opaque_existential_0, v34, v35);
  sub_1CEFE9EB8(&v36, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v33, v6, v8, isUniquelyReferenced_nonNull_native);
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = [a2 domain];
  if (!v18)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;
    v18 = sub_1CF9E6888();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = [a2 code];
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1CF9E6618();

  v31 = [v29 initWithDomain:v18 code:v28 userInfo:v30];

  *&v36 = v31;
  BYTE8(v36) = 1;
  v32 = v31;
  a3(&v36);
}

void sub_1CF782284(uint64_t a1, id a2, void (*a3)(void, void, id))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  swift_getErrorValue();
  v36 = v34;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v35);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v33, v34);
  sub_1CEFE9EB8(&v35, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v32, v6, v8, isUniquelyReferenced_nonNull_native);
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = [a2 domain];
  if (!v18)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;
    v18 = sub_1CF9E6888();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = [a2 code];
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1CF9E6618();

  v31 = [v29 initWithDomain:v18 code:v28 userInfo:v30];

  a3(0, 0, v31);
}

void sub_1CF782488(uint64_t a1, id a2, void (*a3)(void, id))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  swift_getErrorValue();
  v36 = v34;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v35);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v33, v34);
  sub_1CEFE9EB8(&v35, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v32, v6, v8, isUniquelyReferenced_nonNull_native);
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = [a2 domain];
  if (!v18)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;
    v18 = sub_1CF9E6888();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = [a2 code];
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1CF9E6618();

  v31 = [v29 initWithDomain:v18 code:v28 userInfo:v30];

  a3(0, v31);
}

uint64_t sub_1CF782688(dispatch_group_t a1, int a2, uint64_t a3, void *a4, id a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(id), char *a10, uint64_t a11, void *a12, uint64_t (*a13)(__n128), char *a14, id a15, uint64_t a16, uint64_t (*a17)(__n128), char *a18, id a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(__n128), void *a24, uint64_t (*a25)(__n128), uint64_t (*a26)(__n128))
{
  v442 = a3;
  LODWORD(v443) = a2;
  v450 = a10;
  v30 = sub_1CF9E63A8();
  v416 = *(v30 - 8);
  v417 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v415 = &v413 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1CF9E53C8();
  v440 = *(v32 - 8);
  v441 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v439 = &v413 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1CF9E6388();
  v435 = *(v34 - 8);
  v436 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v431 = (&v413 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v432 = &v413 - v37;
  v38 = sub_1CF9E6498();
  v433 = *(v38 - 8);
  v434 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v430 = &v413 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v421 = &v413 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v422 = &v413 - v43;
  v44 = sub_1CF9E63D8();
  v428 = *(v44 - 8);
  v429 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v419 = &v413 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v420 = &v413 - v47;
  v48 = sub_1CF9E6448();
  v437 = *(v48 - 8);
  v438 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v414 = &v413 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v423 = &v413 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v424 = &v413 - v53;
  v54 = sub_1CF9E73D8();
  v426 = *(v54 - 8);
  v427 = v54;
  MEMORY[0x1EEE9AC00](v54);
  v425 = &v413 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v56 - 8);
  v444 = (&v413 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_1CF9E5268();
  v59 = *(v58 - 8);
  v446 = v58;
  v447 = v59;
  MEMORY[0x1EEE9AC00](v58);
  v445 = &v413 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = swift_allocObject();
  v449 = a5;
  *(v61 + 16) = a5;
  *(v61 + 24) = a6;
  v62 = swift_allocObject();
  v62[2] = a4;
  v62[3] = a9;
  v418 = a9;
  v62[4] = v61;
  swift_retain_n();
  v483[0] = a1;
  v453 = a6;
  swift_retain_n();
  v63 = a4;
  v451 = v61;
  swift_retain_n();
  v452 = v63;
  v64 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v464 = v480;
    v465 = v481;
    v460 = v477;
    v461 = v478;
    v462 = v479[0];
    v463 = v479[1];
    v458 = aBlock;
    v459 = v476;
    v472 = v480;
    v473 = v481;
    v469 = v477;
    v470 = v478;
    v471[0] = v479[0];
    v471[1] = v479[1];
    v466 = v482;
    v474 = v482;
    v467 = aBlock;
    v468 = v476;
    if (sub_1CF2B971C(&v467))
    {
      sub_1CEFCCC44(&v458, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v82 = v81;
    v83 = *v81;
    v84 = *(v81 + 8);
    v85 = *(v81 + 112);

    v86 = sub_1CEFCCC44(v82 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v84 != 2 || v83)
    {
      v89 = v452;
      v88 = v453;
      if (v84 == 2 && v83 == 1)
      {
        v87 = *MEMORY[0x1E6967280];
        if (v85)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v456 = 0x2F73662F70665F5FLL;
        v457 = 0xE800000000000000;
        v454 = v83;
        v455 = v84;
        v142 = VFSItemID.description.getter(v86);
        v144 = v143;
        MEMORY[0x1D3868CC0](v142);
        v144, v145, v146, v147, v148, v149, v150, v151;
        v152 = v457;
        v87 = sub_1CF9E6888();
        v152, v153, v154, v155, v156, v157, v158, v159;
        if (v85)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v87 = *MEMORY[0x1E6967258];
      v89 = v452;
      v88 = v453;
      if (v85)
      {
LABEL_16:
        v90 = v85;
LABEL_54:

        v160 = v85;
        (v450)(v90, v89, v449, v88);

        goto LABEL_73;
      }
    }

    v90 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v448 = v62;

  *&v458 = a1;
  v65 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v471 + 9) = *(v479 + 9);
    v470 = v478;
    v471[0] = v479[0];
    v468 = v476;
    v469 = v477;
    v467 = aBlock;
    if (!BYTE8(v479[1]))
    {
      v91 = *(&v471[0] + 1);
      v92 = *&v471[0];
      v93 = *(&v470 + 1);
      v94 = v470;
      v95 = *(&v469 + 1);
      v96 = v469;
      v97 = *(&v468 + 1);
      v98 = v468;
      v99 = *(&v467 + 1);
      v447 = v467;

      sub_1CF1D56D0(v99, v98, v97, v96, v95, v94, v93, v92);
      if (v91)
      {
        v100 = v91;
        v101 = v452;
        v102 = v453;
        v103 = v449;
        v104 = v450;
        v105 = v447;
      }

      else
      {
        v140 = objc_opt_self();
        v105 = v447;
        v100 = [v140 fileProviderErrorForNonExistentItemWithIdentifier_];
        v101 = v452;
        v102 = v453;
        v103 = v449;
        v104 = v450;
      }

      v141 = v91;
      (v104)(v100, v101, v103, v102);

      goto LABEL_73;
    }

    sub_1CEFCCC44(&v467, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v456 = a1;
  v66 = a1;
  if (swift_dynamicCast())
  {
    v464 = v480;
    v465 = v481;
    v460 = v477;
    v461 = v478;
    v462 = v479[0];
    v463 = v479[1];
    v458 = aBlock;
    v459 = v476;
    v472 = v480;
    v473 = v481;
    v469 = v477;
    v470 = v478;
    v471[0] = v479[0];
    v471[1] = v479[1];
    v466 = v482;
    v474 = v482;
    v467 = aBlock;
    v468 = v476;
    v67 = sub_1CF2B971C(&v467);
    switch(v67)
    {
      case 5:
        nullsub_1();
        v113 = v456;
LABEL_30:

        v115 = v452;
        v116 = v453;
        v117 = v449;
        v118 = v450;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v107 = *v106;
        v108 = *(v106 + 8);
        sub_1CEFCCC44(&v458, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v443)
        {
          LODWORD(v454) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v109 = v439;
          v110 = v441;
          sub_1CF9E57D8();
          v111 = sub_1CF9E53A8();
          v112 = v440;
LABEL_48:
          v112[1](v109, v110);
          v137 = v453;

          v138 = v452;
          (v450)(v111, v452, v449, v137);

          v139 = v456;
LABEL_72:

          goto LABEL_73;
        }

        LODWORD(v446) = v108;
        v447 = v107;
        v449 = a19;
        v445 = a18;
        v444 = a17;
        v161 = v442;
        type metadata accessor for VFSFileTree(0);
        v162 = swift_dynamicCastClassUnconditional();
        v163 = swift_allocObject();
        v164 = v448;
        *(v163 + 2) = a12;
        *(v163 + 3) = v164;
        v450 = v163;
        *(v163 + 4) = v161;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v443 = v162;
        v165 = *(v162 + 216);
        v454 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v166 = v165;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v167 = v425;
        v168 = v427;
        sub_1CF9E77B8();
        v169 = sub_1CF9E73E8();

        (*(v426 + 8))(v167, v168);
        qos_class_self();
        v170 = v421;
        sub_1CF9E63B8();
        v172 = v428;
        v171 = v429;
        v173 = *(v428 + 48);
        if (v173(v170, 1, v429) == 1)
        {
          (*(v172 + 104))(v419, *MEMORY[0x1E69E7FA0], v171);
          if (v173(v170, 1, v171) != 1)
          {
            sub_1CEFCCC44(v170, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v172 + 32))(v419, v170, v171);
        }

        ObjectType = swift_getObjectType();
        v194 = v423;
        sub_1CF9E6428();
        v195 = swift_allocObject();
        v196 = v447;
        *(v195 + 16) = v443;
        *(v195 + 24) = v196;
        *(v195 + 32) = v446;
        *(v195 + 40) = 0u;
        *(v195 + 56) = 0u;
        *(v195 + 72) = 0u;
        *(v195 + 88) = 0u;
        *(v195 + 104) = 0u;
        *(v195 + 120) = 0u;
        *(v195 + 136) = 0;
        *(v195 + 144) = 1;
        v197 = v445;
        *(v195 + 152) = v169;
        *(v195 + 160) = v197;
        *(v195 + 168) = v450;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v194, v449, v195, ObjectType);

        (*(v437 + 8))(v194, v438);
        v198 = v430;
        sub_1CF9E6478();
        v199 = v432;
        sub_1CEFD5B64(v432);
        v200 = v431;
        sub_1CEFD5BD8(v431);
        MEMORY[0x1D3869770](v198, v199, v200, ObjectType);
        v201 = *(v435 + 8);
        v202 = v200;
        v203 = v436;
        v201(v202, v436);
        v201(v199, v203);
        (*(v433 + 8))(v198, v434);
        sub_1CF9E7448();

        goto LABEL_67;
      case 1:
        nullsub_1();
        v69 = *v68;
        v70 = *(v68 + 8);
        v71 = *(v68 + 24);
        v72 = *(v68 + 48);
        v73 = *(v68 + 56);

        sub_1CF480620(v72, v73);
        v71, v74, v75, v76, v77, v78, v79, v80;
        if (v443)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v109 = v445;
          v110 = v446;
          sub_1CF9E57D8();
          v111 = sub_1CF9E50D8();
          v112 = v447;
          goto LABEL_48;
        }

        LODWORD(v446) = v70;
        v447 = v69;
        v449 = a15;
        v445 = a14;
        v444 = a13;
        v174 = v442;
        v175 = *(*(*(v442 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v176 = swift_dynamicCastClassUnconditional();
        v177 = swift_allocObject();
        v178 = v448;
        *(v177 + 2) = a12;
        *(v177 + 3) = v178;
        v450 = v177;
        *(v177 + 4) = v174;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v179 = v176;
        v180 = *(v176 + 216);
        v454 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v443 = v175;

        v181 = v180;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v182 = v425;
        v183 = v427;
        sub_1CF9E77B8();
        v184 = sub_1CF9E73E8();

        (*(v426 + 8))(v182, v183);
        qos_class_self();
        v185 = v422;
        sub_1CF9E63B8();
        v187 = v428;
        v186 = v429;
        v188 = *(v428 + 48);
        if (v188(v185, 1, v429) == 1)
        {
          (*(v187 + 104))(v420, *MEMORY[0x1E69E7FA0], v186);
          if (v188(v185, 1, v186) != 1)
          {
            sub_1CEFCCC44(v185, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v187 + 32))(v420, v185, v186);
        }

        v204 = swift_getObjectType();
        v205 = v424;
        sub_1CF9E6428();
        v206 = swift_allocObject();
        v207 = v447;
        *(v206 + 16) = v179;
        *(v206 + 24) = v207;
        *(v206 + 32) = v446;
        *(v206 + 40) = 0u;
        *(v206 + 56) = 0u;
        *(v206 + 72) = 0u;
        *(v206 + 88) = 0u;
        *(v206 + 104) = 0u;
        *(v206 + 120) = 0u;
        *(v206 + 136) = 0;
        *(v206 + 144) = 1;
        v208 = v445;
        *(v206 + 152) = v184;
        *(v206 + 160) = v208;
        *(v206 + 168) = v450;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v205, v449, v206, v204);

        (*(v437 + 8))(v205, v438);
        v209 = v430;
        sub_1CF9E6478();
        v210 = v432;
        sub_1CEFD5B64(v432);
        v211 = v431;
        sub_1CEFD5BD8(v431);
        MEMORY[0x1D3869770](v209, v210, v211, v204);
        v212 = *(v435 + 8);
        v213 = v211;
        v214 = v436;
        v212(v213, v436);
        v212(v210, v214);
        (*(v433 + 8))(v209, v434);
        sub_1CF9E7448();

LABEL_67:

        swift_unknownObjectRelease();

        v215 = v452;
    }

    sub_1CEFCCC44(&v458, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v458 = a1;
  v114 = a1;
  if (swift_dynamicCast())
  {
    *(v471 + 9) = *(v479 + 9);
    v469 = v477;
    v470 = v478;
    v471[0] = v479[0];
    v467 = aBlock;
    v468 = v476;
    if (BYTE8(v479[1]) == 5)
    {
      v113 = v458;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v467, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v122 = a1;
  if (swift_dynamicCast())
  {
    v117 = v449;
    v118 = v450;
    if (v467 > 2u)
    {
      v115 = v452;
      v116 = v453;
      if (v467 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v133 = v445;
        v134 = v446;
        sub_1CF9E57D8();
        v135 = sub_1CF9E50D8();
        (*(v447 + 1))(v133, v134);

        (v118)(v135, v115, v117, v116);

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v115 = v452;
    v116 = v453;
    if (v467 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v119 = v445;
    v120 = v446;
    sub_1CF9E57D8();
    v121 = sub_1CF9E50D8();
    (*(v447 + 1))(v119, v120);

    (v118)(v121, v115, v117, v116);

    goto LABEL_33;
  }

  *&v467 = a1;
  v123 = a1;
  if (swift_dynamicCast())
  {
    if ((v476 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v476);
      LODWORD(v458) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v189 = v439;
      v190 = v441;
      sub_1CF9E57D8();
      v191 = sub_1CF9E53A8();
      v440[1](v189, v190);
      v192 = v453;

      v138 = v452;
      (v450)(v191, v452, v449, v192);

      v139 = v467;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v467 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1CF9FA450;
    *(v124 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v124 + 40) = v125;
    v126 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v127 = FPLocv();

    v128 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v130 = v129;

    *(v124 + 72) = MEMORY[0x1E69E6158];
    *(v124 + 48) = v128;
    *(v124 + 56) = v130;
    sub_1CF4E04E8(v124);
    swift_setDeallocating();
    sub_1CEFCCC44(v124 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v121 = aBlock;
    v131 = v453;

    v132 = v452;
    (v450)(v121, v452, v449, v131);

LABEL_33:

    goto LABEL_73;
  }

  v456 = a1;
  v136 = a1;
  if (swift_dynamicCast())
  {
    v464 = v480;
    v465 = v481;
    v460 = v477;
    v461 = v478;
    v462 = v479[0];
    v463 = v479[1];
    v458 = aBlock;
    v459 = v476;
    v472 = v480;
    v473 = v481;
    v469 = v477;
    v470 = v478;
    v471[0] = v479[0];
    v471[1] = v479[1];
    v466 = v482;
    v474 = v482;
    v467 = aBlock;
    v468 = v476;
    if (sub_1CF2B971C(&v467) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v458, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v216 = a1;
  if (swift_dynamicCast())
  {
    v217 = FPDomainUnavailableError();
    if (!v217)
    {
LABEL_121:

      v341 = v452;

      __break(1u);
LABEL_122:
      MEMORY[0x1EEE9AC00](v330);
      *(&v413 - 2) = a1;

      v342 = v452;

      fp_preconditionFailure(_:file:line:)(v444, (&v413 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v218 = v217;
    v219 = v453;

    v138 = v452;
    (v450)(v218, v452, v449, v219);

    v139 = aBlock;
    goto LABEL_72;
  }

  v454 = a1;
  v221 = a1;
  if (swift_dynamicCast())
  {
    v464 = v480;
    v465 = v481;
    v460 = v477;
    v461 = v478;
    v462 = v479[0];
    v463 = v479[1];
    v458 = aBlock;
    v459 = v476;
    v472 = v480;
    v473 = v481;
    v469 = v477;
    v470 = v478;
    v471[0] = v479[0];
    v471[1] = v479[1];
    v466 = v482;
    v474 = v482;
    v467 = aBlock;
    v468 = v476;
    if (sub_1CF2B971C(&v467) == 10)
    {
      nullsub_1();
      v223 = *(v222 + 16);
      if (!v223)
      {
        LODWORD(v456) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v224 = v439;
        v225 = v441;
        sub_1CF9E57D8();
        v223 = sub_1CF9E53A8();
        v440[1](v224, v225);
      }

      v227 = v452;
      v226 = v453;
      v228 = v450;
      v229 = v449;

      sub_1CEFCCBDC(&v458, &v456, &unk_1EC4BE320, &unk_1CFA08B50);
      (v228)(v223, v227, v229, v226);

      sub_1CEFCCC44(&v458, &unk_1EC4BE320, &unk_1CFA08B50);

      goto LABEL_73;
    }

    sub_1CEFCCC44(&v458, &unk_1EC4BE320, &unk_1CFA08B50);
    v231 = v454;
    goto LABEL_83;
  }

  *&v458 = a1;
  v230 = a1;
  if (swift_dynamicCast())
  {
    v469 = v477;
    v470 = v478;
    v471[0] = v479[0];
    *(v471 + 9) = *(v479 + 9);
    v467 = aBlock;
    v468 = v476;
    sub_1CEFCCC44(&v467, &qword_1EC4BF270, &qword_1CFA01B70);
    v231 = v458;
LABEL_83:

LABEL_84:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v232 = v445;
    v233 = v446;
    sub_1CF9E57D8();
    v121 = sub_1CF9E50D8();
    (*(v447 + 1))(v232, v233);
    v234 = v453;

    v235 = v452;
    (v450)(v121, v452, v449, v234);

    goto LABEL_33;
  }

  *&aBlock = a1;
  v236 = a1;
  v237 = swift_dynamicCast();

  if (v237)
  {
    goto LABEL_84;
  }

  *&v467 = a1;
  v238 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v476, *(&v476 + 1), v477, v239, v240, v241);
LABEL_92:

    goto LABEL_84;
  }

  *&v467 = a1;
  v242 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v476, SBYTE8(v476));
    goto LABEL_92;
  }

  *&v467 = a1;
  v243 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_92;
  }

  v244 = sub_1CF9E57E8();
  v245 = [v244 userInfo];
  v246 = sub_1CF9E6638();

  v247 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v255 = v248;
  if (*v246->tree)
  {
    v256 = sub_1CEFE4328(v247, v248);
    v258 = v257;
    v255, v257, v259, v260, v261, v262, v263, v264;
    if (v258)
    {
      sub_1CEFD1104(*v246[1].tester + 32 * v256, &aBlock);
      v246, v272, v273, v274, v275, v276, v277, v278;
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v279 = v467;
        v280 = v452;
        v281 = v451;

        v282 = v244;
        v283 = v279;
        sub_1CF777DC8(v283, v443 & 1, v442, v282, v280, v418, v281);
      }
    }

    else
    {
      v246, v265, v266, v267, v268, v269, v270, v271;
    }
  }

  else
  {
    v246, v248, v249, v250, v251, v252, v253, v254;
    v255, v284, v285, v286, v287, v288, v289, v290;
  }

  v291 = swift_allocObject();
  v292 = [v244 userInfo];
  v293 = sub_1CF9E6638();

  v294 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v302 = v295;
  if (!*v293->tree)
  {
    v293, v295, v296, v297, v298, v299, v300, v301;
    v337 = v302;
LABEL_115:
    v337, v312, v313, v314, v315, v316, v317, v318;
    goto LABEL_116;
  }

  v447 = a12;
  v303 = sub_1CEFE4328(v294, v295);
  v305 = v304;
  v302, v304, v306, v307, v308, v309, v310, v311;
  if ((v305 & 1) == 0)
  {
    v337 = v293;
    goto LABEL_115;
  }

  sub_1CEFD1104(*v293[1].tester + 32 * v303, &aBlock);
  v293, v319, v320, v321, v322, v323, v324, v325;
  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    swift_deallocUninitializedObject();
    v338 = v453;

    v339 = v452;
    (v450)(a1, v452, v449, v338);

    goto LABEL_117;
  }

  v445 = v244;
  v291[2] = v467;
  v326 = dispatch_group_create();
  v327 = v291[2];
  if (v327 >> 62)
  {
    goto LABEL_119;
  }

  v328 = *((v327 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v328)
  {
    goto LABEL_125;
  }

  do
  {
    v329 = 0;
    v444 = a25;
    while (1)
    {
      a1 = v326;
      v330 = objc_sync_enter(a1);
      if (v330)
      {
        goto LABEL_122;
      }

      swift_beginAccess();
      v331 = v291[2];
      if ((v331 & 0xC000000000000001) != 0)
      {
        v332 = MEMORY[0x1D3869C30](v329);
        goto LABEL_109;
      }

      if (v329 >= *((v331 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v332 = *(v331 + 8 * v329 + 32);
LABEL_109:
      v333 = v332;
      swift_endAccess();
      v334 = objc_sync_exit(a1);
      if (v334)
      {
        MEMORY[0x1EEE9AC00](v334);
        *(&v413 - 2) = a1;

        v343 = v452;

        fp_preconditionFailure(_:file:line:)(a26, (&v413 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(a1);
      v335 = a1;

      v336 = v333;
      sub_1CF774BF8(v336, v443 & 1, v442, v335, v291, v329);

      if (v328 == ++v329)
      {
        goto LABEL_125;
      }
    }

    __break(1u);
LABEL_119:
    v340 = sub_1CF9E7818();
    if (v340 < 0)
    {
      __break(1u);
      goto LABEL_121;
    }

    v328 = v340;
  }

  while (v340);
LABEL_125:
  if (v443)
  {
    v344 = v445;
    v345 = [v445 userInfo];
    v346 = sub_1CF9E6638();

    v347 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v349 = v348;
    swift_beginAccess();
    v350 = v291[2];
    *(&v476 + 1) = v446;
    *&aBlock = v350;
    sub_1CEFE9EB8(&aBlock, &v467);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v456 = v346;
    sub_1CF1D154C(&v467, v347, v349, isUniquelyReferenced_nonNull_native);
    v349, v352, v353, v354, v355, v356, v357, v358;
    v359 = [v344 domain];
    if (!v359)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v361 = v360;
      v359 = sub_1CF9E6888();
      v361, v362, v363, v364, v365, v366, v367, v368;
    }

    v244 = v445;
    v369 = [v445 code];
    v370 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v371 = sub_1CF9E6618();

    v372 = [v370 initWithDomain:v359 code:v369 userInfo:v371];

    v373 = v453;

    v374 = v452;
    (v450)(v372, v452, v449, v373);

LABEL_117:
LABEL_73:
  }

  else
  {
    v446 = a24;
    v444 = a23;
    v443 = a22;
    v441 = a21;
    v375 = *(*(v442 + 16) + 64);
    v376 = swift_allocObject();
    v377 = v445;
    v376[2] = v445;
    v376[3] = v291;
    v378 = v448;
    v376[4] = v447;
    v376[5] = v378;
    v379 = v376;

    v380 = v375;
    v450 = v377;

    v381 = fpfs_current_log();
    v449 = fpfs_adopt_log();
    v382 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v383;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v384 = sub_1CF9E7988();
    v386 = v385;
    MEMORY[0x1D3868CC0](v384);
    v386, v387, v388, v389, v390, v391, v392, v393;
    v394 = *(&aBlock + 1);
    sub_1CF9E6978();
    v394, v395, v396, v397, v398, v399, v400, v401;
    v402 = __fp_log_fork();

    *(v382 + 2) = v402;
    v403 = swift_allocObject();
    *(v403 + 16) = v381;
    *(v403 + 24) = v382;
    v445 = v382;
    *(v403 + 32) = v380;
    *(v403 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v403 + 48) = 48;
    *(v403 + 56) = 2;
    v404 = v444;
    *(v403 + 64) = v443;
    *(v403 + 72) = v379;
    v442 = v379;
    *&v477 = v404;
    *(&v477 + 1) = v403;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v476 = sub_1CEFCA444;
    *(&v476 + 1) = v446;
    v405 = _Block_copy(&aBlock);
    v446 = v380;
    v447 = v381;

    v406 = v414;
    sub_1CF9E63F8();
    *&v467 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v407 = v415;
    v408 = v417;
    sub_1CF9E77B8();
    v409 = v446;
    sub_1CF9E7308();
    _Block_release(v405);
    (*(v416 + 8))(v407, v408);
    (*(v437 + 8))(v406, v438);

    v410 = v449;
    v411 = fpfs_adopt_log();

    v412 = v452;
  }
}

void sub_1CF7850C0(void *a1, int a2, uint64_t a3, void (*a4)(uint64_t *), void *a5)
{
  v376 = a3;
  LODWORD(v377) = a2;
  v8 = sub_1CF9E63A8();
  v354 = *(v8 - 8);
  v355 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v353 = &v352 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E53C8();
  v374 = *(v10 - 8);
  v375 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v373 = &v352 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6388();
  v369 = *(v12 - 8);
  v370 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v365 = (&v352 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v366 = &v352 - v15;
  v16 = sub_1CF9E6498();
  v367 = *(v16 - 8);
  v368 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v364 = &v352 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v352 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v358 = &v352 - v22;
  v23 = sub_1CF9E63D8();
  v362 = *(v23 - 8);
  v363 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v356 = &v352 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v357 = &v352 - v26;
  v27 = sub_1CF9E6448();
  v371 = *(v27 - 8);
  v372 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v352 = &v352 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v359 = &v352 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v360 = &v352 - v32;
  v33 = sub_1CF9E73D8();
  v361 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v352 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v378 = &v352 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5268();
  v39 = *(v38 - 1);
  v380 = v38;
  v381 = v39;
  MEMORY[0x1EEE9AC00](v38);
  v379 = &v352 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_allocObject();
  v384 = a4;
  *(v41 + 16) = a4;
  *(v41 + 24) = a5;
  v418 = a1;
  swift_retain_n();
  v42 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v399 = v415;
    v400 = v416;
    v395 = v412;
    v396 = v413;
    v397 = v414[0];
    v398 = v414[1];
    v393 = aBlock;
    v394 = v411;
    v407 = v415;
    v408 = v416;
    v404 = v412;
    v405 = v413;
    v406[0] = v414[0];
    v406[1] = v414[1];
    v401 = v417;
    v409 = v417;
    v402 = aBlock;
    v403 = v411;
    if (sub_1CF2B971C(&v402))
    {
      sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v61 = v60;
    v62 = *v60;
    v63 = *(v60 + 8);
    v64 = *(v60 + 112);

    v65 = sub_1CEFCCC44(v61 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v63 != 2 || v62)
    {
      if (v63 != 2 || v62 != 1)
      {
        v385 = 0x2F73662F70665F5FLL;
        v386 = 0xE800000000000000;
        v389 = v62;
        LOBYTE(v390) = v63;
        v115 = VFSItemID.description.getter(v65);
        v117 = v116;
        MEMORY[0x1D3868CC0](v115);
        v117, v118, v119, v120, v121, v122, v123, v124;
        v125 = v386;
        v79 = sub_1CF9E6888();
        v125, v126, v127, v128, v129, v130, v131, v132;
        if (v64)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v66 = MEMORY[0x1E6967280];
    }

    else
    {
      v66 = MEMORY[0x1E6967258];
    }

    v79 = *v66;
    if (v64)
    {
LABEL_22:
      v80 = v64;
LABEL_54:
      v386 = 0;
      v387 = 0;
      v385 = v80;
      v388 = 1;
      v133 = v64;
      v134 = v80;
      v384(&v385);

      v135 = v80;
LABEL_55:

      goto LABEL_75;
    }

LABEL_53:
    v80 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v382 = a5;
  v383 = v41;

  v385 = a1;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v406 + 9) = *(v414 + 9);
    v405 = v413;
    v406[0] = v414[0];
    v403 = v411;
    v404 = v412;
    v402 = aBlock;
    if (!BYTE8(v414[1]))
    {
      v67 = *(&v406[0] + 1);
      v68 = *&v406[0];
      v69 = *(&v405 + 1);
      v70 = v405;
      v71 = *(&v404 + 1);
      v72 = v404;
      v73 = *(&v403 + 1);
      v74 = v403;
      v75 = *(&v402 + 1);
      v381 = v402;

      sub_1CF1D56D0(v75, v74, v73, v72, v71, v70, v69, v68);
      if (v67)
      {
        v76 = v67;
        v77 = v384;
        v78 = v381;
      }

      else
      {
        v112 = objc_opt_self();
        v78 = v381;
        v76 = [v112 fileProviderErrorForNonExistentItemWithIdentifier_];
        v77 = v384;
      }

      *&v394 = 0;
      v393 = v76;
      BYTE8(v394) = 1;
      v113 = v67;
      v114 = v76;
      v77(&v393);

      goto LABEL_74;
    }

    sub_1CEFCCC44(&v402, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v389 = a1;
  v45 = a1;
  if (swift_dynamicCast())
  {
    v399 = v415;
    v400 = v416;
    v395 = v412;
    v396 = v413;
    v397 = v414[0];
    v398 = v414[1];
    v393 = aBlock;
    v394 = v411;
    v407 = v415;
    v408 = v416;
    v404 = v412;
    v405 = v413;
    v406[0] = v414[0];
    v406[1] = v414[1];
    v401 = v417;
    v409 = v417;
    v402 = aBlock;
    v403 = v411;
    v46 = sub_1CF2B971C(&v402);
    switch(v46)
    {
      case 5:
        nullsub_1();
        v88 = v389;
LABEL_30:

        v90 = v384;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v82 = *v81;
        v83 = *(v81 + 8);
        sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v377)
        {
          LODWORD(v385) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v84 = v373;
          v85 = v375;
          sub_1CF9E57D8();
          v86 = sub_1CF9E53A8();
          v87 = v374;
LABEL_48:
          v87[1](v84, v85);
          v386 = 0;
          v387 = 0;
          v385 = v86;
          v388 = 1;
          v110 = v86;
          v384(&v385);

          v111 = v389;
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v379) = v83;
        v380 = v82;
        v136 = v376;
        v137 = *(*(*(v376 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v138 = swift_dynamicCastClassUnconditional();
        v139 = swift_allocObject();
        v140 = v383;
        v139[2] = sub_1CF79603C;
        v139[3] = v140;
        v381 = v139;
        v139[4] = v136;
        v377 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v378 = v138;
        v141 = *(v138 + 216);
        v385 = MEMORY[0x1E69E7CC0];
        v375 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v384 = v137;

        v142 = v141;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v143 = sub_1CF9E73E8();

        (*(v361 + 8))(v35, v33);
        qos_class_self();
        sub_1CF9E63B8();
        v145 = v362;
        v144 = v363;
        v146 = *(v362 + 48);
        if (v146(v20, 1, v363) == 1)
        {
          (*(v145 + 104))(v356, *MEMORY[0x1E69E7FA0], v144);
          if (v146(v20, 1, v144) != 1)
          {
            sub_1CEFCCC44(v20, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v145 + 32))(v356, v20, v144);
        }

        ObjectType = swift_getObjectType();
        v164 = v359;
        sub_1CF9E6428();
        v165 = swift_allocObject();
        v166 = v380;
        v167 = v381;
        *(v165 + 16) = v378;
        *(v165 + 24) = v166;
        *(v165 + 32) = v379;
        *(v165 + 40) = 0u;
        *(v165 + 56) = 0u;
        *(v165 + 72) = 0u;
        *(v165 + 88) = 0u;
        *(v165 + 104) = 0u;
        *(v165 + 120) = 0u;
        *(v165 + 136) = 0;
        *(v165 + 144) = 1;
        *(v165 + 152) = v143;
        *(v165 + 160) = sub_1CF796A00;
        *(v165 + 168) = v167;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v164, sub_1CF72A328, v165, ObjectType);

        (*(v371 + 8))(v164, v372);
LABEL_68:
        v170 = v364;
        sub_1CF9E6478();
        v171 = v366;
        sub_1CEFD5B64(v366);
        v172 = v365;
        sub_1CEFD5BD8(v365);
        MEMORY[0x1D3869770](v170, v171, v172, ObjectType);
        v173 = *(v369 + 8);
        v174 = v172;
        v175 = v370;
        v173(v174, v370);
        v173(v171, v175);
        (*(v367 + 8))(v170, v368);
        sub_1CF9E7448();

        swift_unknownObjectRelease();

        goto LABEL_74;
      case 1:
        nullsub_1();
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = v47[3];
        v51 = v47[6];
        v52 = v47[7];

        sub_1CF480620(v51, v52);
        v50, v53, v54, v55, v56, v57, v58, v59;
        if (v377)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v84 = v379;
          v85 = v380;
          sub_1CF9E57D8();
          v86 = sub_1CF9E50D8();
          v87 = v381;
          goto LABEL_48;
        }

        LODWORD(v380) = v49;
        v147 = v376;
        v148 = *(*(*(v376 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v149 = swift_dynamicCastClassUnconditional();
        v150 = swift_allocObject();
        v151 = v383;
        v150[2] = sub_1CF79603C;
        v150[3] = v151;
        v381 = v150;
        v150[4] = v147;
        v378 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v379 = v149;
        v152 = *(v149 + 216);
        v385 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v384 = v148;

        v153 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v154 = sub_1CF9E73E8();

        (*(v361 + 8))(v35, v33);
        qos_class_self();
        v155 = v358;
        sub_1CF9E63B8();
        v157 = v362;
        v156 = v363;
        v158 = *(v362 + 48);
        if (v158(v155, 1, v363) == 1)
        {
          (*(v157 + 104))(v357, *MEMORY[0x1E69E7FA0], v156);
          if (v158(v155, 1, v156) != 1)
          {
            sub_1CEFCCC44(v155, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v157 + 32))(v357, v155, v156);
        }

        ObjectType = swift_getObjectType();
        v168 = v360;
        sub_1CF9E6428();
        v169 = swift_allocObject();
        *(v169 + 16) = v379;
        *(v169 + 24) = v48;
        *(v169 + 32) = v380;
        *(v169 + 40) = 0u;
        *(v169 + 56) = 0u;
        *(v169 + 72) = 0u;
        *(v169 + 88) = 0u;
        *(v169 + 104) = 0u;
        *(v169 + 120) = 0u;
        *(v169 + 136) = 0;
        *(v169 + 144) = 1;
        *(v169 + 152) = v154;
        *(v169 + 160) = sub_1CF796A04;
        *(v169 + 168) = v381;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v168, sub_1CF72A328, v169, ObjectType);

        (*(v371 + 8))(v168, v372);
        goto LABEL_68;
    }

    sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v393 = a1;
  v89 = a1;
  if (swift_dynamicCast())
  {
    *(v406 + 9) = *(v414 + 9);
    v404 = v412;
    v405 = v413;
    v406[0] = v414[0];
    v402 = aBlock;
    v403 = v411;
    if (BYTE8(v414[1]) == 5)
    {
      v88 = v393;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v402, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v402 = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v393 > 2u)
    {
      v90 = v384;
      if (v393 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v106 = v379;
        v105 = v380;
        sub_1CF9E57D8();
        v107 = sub_1CF9E50D8();
        (*(v381 + 1))(v106, v105);
        *&v411 = 0;
        aBlock = v107;
        BYTE8(v411) = 1;
        v108 = v107;
        v90(&aBlock);

LABEL_74:

        goto LABEL_75;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v90 = v384;
    if (v393 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v92 = v379;
    v91 = v380;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v381 + 1))(v92, v91);
    *&v411 = 0;
    aBlock = v93;
    BYTE8(v411) = 1;
    v94 = v93;
    v90(&aBlock);

    goto LABEL_33;
  }

  *&v393 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v403 + 3) >= 2u)
    {
      sub_1CF3386E4(v402, *(&v402 + 1), v403);
      LODWORD(aBlock) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v159 = v373;
      v160 = v375;
      sub_1CF9E57D8();
      v161 = sub_1CF9E53A8();
      v374[1](v159, v160);
      *&v411 = 0;
      aBlock = v161;
      BYTE8(v411) = 1;
      v162 = v161;
      v384(&aBlock);

      v111 = v393;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&aBlock = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    *(v97 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v97 + 40) = v98;
    v99 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v100 = FPLocv();

    v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v103 = v102;

    *(v97 + 72) = MEMORY[0x1E69E6158];
    *(v97 + 48) = v101;
    *(v97 + 56) = v103;
    sub_1CF4E04E8(v97);
    swift_setDeallocating();
    sub_1CEFCCC44(v97 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v93 = v402;
    *&v411 = 0;
    aBlock = v402;
    BYTE8(v411) = 1;
    v104 = v402;
    v384(&aBlock);

LABEL_33:

    return;
  }

  v389 = a1;
  v109 = a1;
  if (swift_dynamicCast())
  {
    v399 = v415;
    v400 = v416;
    v395 = v412;
    v396 = v413;
    v397 = v414[0];
    v398 = v414[1];
    v393 = aBlock;
    v394 = v411;
    v407 = v415;
    v408 = v416;
    v404 = v412;
    v405 = v413;
    v406[0] = v414[0];
    v406[1] = v414[1];
    v401 = v417;
    v409 = v417;
    v402 = aBlock;
    v403 = v411;
    if (sub_1CF2B971C(&v402) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v402 = a1;
  v176 = a1;
  if (swift_dynamicCast())
  {
    v177 = FPDomainUnavailableError();
    if (!v177)
    {
LABEL_122:

      __break(1u);
LABEL_123:
      MEMORY[0x1EEE9AC00](v277);
      v351 = v43;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v350, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v178 = v177;
    *&v411 = 0;
    aBlock = v177;
    BYTE8(v411) = 1;
    v179 = v177;
    v384(&aBlock);

    v111 = v402;
    goto LABEL_73;
  }

  v418 = a1;
  v180 = a1;
  if (swift_dynamicCast())
  {
    v399 = v415;
    v400 = v416;
    v395 = v412;
    v396 = v413;
    v397 = v414[0];
    v398 = v414[1];
    v393 = aBlock;
    v394 = v411;
    v407 = v415;
    v408 = v416;
    v404 = v412;
    v405 = v413;
    v406[0] = v414[0];
    v406[1] = v414[1];
    v401 = v417;
    v409 = v417;
    v402 = aBlock;
    v403 = v411;
    if (sub_1CF2B971C(&v402) == 10)
    {
      nullsub_1();
      v182 = *(v181 + 16);
      if (!v182)
      {
        LODWORD(v385) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v183 = v373;
        v184 = v375;
        sub_1CF9E57D8();
        v182 = sub_1CF9E53A8();
        v374[1](v183, v184);
      }

      v390 = 0;
      v391 = 0;
      v389 = v182;
      v392 = 1;
      sub_1CEFCCBDC(&v393, &v385, &unk_1EC4BE320, &unk_1CFA08B50);
      v185 = v182;
      v384(&v389);

      sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
      v135 = v182;
      goto LABEL_55;
    }

    sub_1CEFCCC44(&v393, &unk_1EC4BE320, &unk_1CFA08B50);
    v187 = v418;
    goto LABEL_92;
  }

  *&v393 = a1;
  v186 = a1;
  if (swift_dynamicCast())
  {
    v404 = v412;
    v405 = v413;
    v406[0] = v414[0];
    *(v406 + 9) = *(v414 + 9);
    v402 = aBlock;
    v403 = v411;
    sub_1CEFCCC44(&v402, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_93:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v197 = v379;
    v196 = v380;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v381 + 1))(v197, v196);
    *&v411 = 0;
    aBlock = v93;
    BYTE8(v411) = 1;
    v198 = v93;
    v384(&aBlock);

    goto LABEL_33;
  }

  *&aBlock = a1;
  v188 = a1;
  v189 = swift_dynamicCast();

  if (v189)
  {
    goto LABEL_93;
  }

  *&v402 = a1;
  v190 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v411, *(&v411 + 1), v412, v191, v192, v193);
LABEL_91:
    v187 = v402;
LABEL_92:

    goto LABEL_93;
  }

  *&v402 = a1;
  v194 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v411, SBYTE8(v411));
    goto LABEL_91;
  }

  *&v402 = a1;
  v195 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_91;
  }

  v199 = sub_1CF9E57E8();
  v200 = [v199 userInfo];
  v201 = sub_1CF9E6638();

  v202 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v210 = v203;
  if (!*v201->tree)
  {
    v201, v203, v204, v205, v206, v207, v208, v209;
    v238 = v210;
LABEL_100:
    v238, v220, v221, v222, v223, v224, v225, v226;
    goto LABEL_101;
  }

  v211 = sub_1CEFE4328(v202, v203);
  v213 = v212;
  v210, v212, v214, v215, v216, v217, v218, v219;
  if ((v213 & 1) == 0)
  {
    v238 = v201;
    goto LABEL_100;
  }

  sub_1CEFD1104(*v201[1].tester + 32 * v211, &aBlock);
  v201, v227, v228, v229, v230, v231, v232, v233;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v234 = v402;
    v235 = v382;

    v236 = v199;
    v237 = v234;
    sub_1CF782688(v237, v377 & 1, v376, v236, v384, v235, &unk_1F4C153F8, &unk_1F4C15420, sub_1CF796A94, sub_1CF77F1A0, &unk_1F4C15510, sub_1CF7969FC, &unk_1F4C15538, sub_1CF796A04, sub_1CF72A328, &unk_1F4C154C0, &unk_1F4C154E8, sub_1CF796A00, sub_1CF72A328, &unk_1F4C15448, &unk_1F4C15470, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_509, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_101:
  v239 = swift_allocObject();
  v240 = [v199 userInfo];
  v241 = sub_1CF9E6638();

  v242 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v250 = v243;
  if (!*v241->tree)
  {
    v241, v243, v244, v245, v246, v247, v248, v249;
    v284 = v250;
LABEL_117:
    v284, v259, v260, v261, v262, v263, v264, v265;
    goto LABEL_118;
  }

  v251 = sub_1CEFE4328(v242, v243);
  v43 = v252;
  v250, v252, v253, v254, v255, v256, v257, v258;
  if ((v43 & 1) == 0)
  {
    v284 = v241;
    goto LABEL_117;
  }

  sub_1CEFD1104(*v241[1].tester + 32 * v251, &aBlock);
  v241, v266, v267, v268, v269, v270, v271, v272;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_118:
    v285 = v384;
    swift_deallocUninitializedObject();
    *&v411 = 0;
    aBlock = a1;
    BYTE8(v411) = 1;
    v286 = a1;
    v285(&aBlock);

    return;
  }

  v239[2] = v402;
  v273 = dispatch_group_create();
  v274 = v239[2];
  if (v274 >> 62)
  {
    goto LABEL_120;
  }

  v275 = *((v274 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v275)
  {
    goto LABEL_126;
  }

  do
  {
    v276 = 0;
    while (1)
    {
      v43 = v273;
      v277 = objc_sync_enter(v43);
      if (v277)
      {
        goto LABEL_123;
      }

      swift_beginAccess();
      v278 = v239[2];
      if ((v278 & 0xC000000000000001) != 0)
      {
        v279 = MEMORY[0x1D3869C30](v276);
        goto LABEL_111;
      }

      if (v276 >= *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v279 = *(v278 + 8 * v276 + 32);
LABEL_111:
      v280 = v279;
      swift_endAccess();
      v281 = objc_sync_exit(v43);
      if (v281)
      {
        MEMORY[0x1EEE9AC00](v281);
        v351 = v43;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v350, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v43);
      v282 = v43;

      v283 = v280;
      sub_1CF774BF8(v283, v377 & 1, v376, v282, v239, v276);

      if (v275 == ++v276)
      {
        goto LABEL_126;
      }
    }

    __break(1u);
LABEL_120:
    v287 = sub_1CF9E7818();
    if (v287 < 0)
    {
      __break(1u);
      goto LABEL_122;
    }

    v275 = v287;
  }

  while (v287);
LABEL_126:
  if (v377)
  {
    v288 = [v199 userInfo];
    v289 = sub_1CF9E6638();

    v290 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v292 = v291;
    swift_beginAccess();
    v293 = v239[2];
    *(&v411 + 1) = v381;
    *&aBlock = v293;
    sub_1CEFE9EB8(&aBlock, &v402);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v385 = v289;
    sub_1CF1D154C(&v402, v290, v292, isUniquelyReferenced_nonNull_native);
    v292, v295, v296, v297, v298, v299, v300, v301;
    v302 = [v199 domain];
    if (!v302)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v304 = v303;
      v302 = sub_1CF9E6888();
      v304, v305, v306, v307, v308, v309, v310, v311;
    }

    v312 = [v199 code];
    v313 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v314 = sub_1CF9E6618();

    v315 = [v313 initWithDomain:v302 code:v312 userInfo:v314];

    *&v411 = 0;
    aBlock = v315;
    BYTE8(v411) = 1;
    v316 = v315;
    v384(&aBlock);

LABEL_75:
  }

  else
  {
    v317 = *(*(v376 + 16) + 64);
    v318 = swift_allocObject();
    v318[2] = v199;
    v318[3] = v239;
    v318[4] = sub_1CF79603C;
    v318[5] = v383;

    v319 = v317;
    v384 = v199;

    v320 = fpfs_current_log();
    v381 = fpfs_adopt_log();
    v321 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v322;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v323 = sub_1CF9E7988();
    v325 = v324;
    MEMORY[0x1D3868CC0](v323);
    v325, v326, v327, v328, v329, v330, v331, v332;
    v333 = *(&aBlock + 1);
    sub_1CF9E6978();
    v333, v334, v335, v336, v337, v338, v339, v340;
    v341 = __fp_log_fork();

    *(v321 + 16) = v341;
    v342 = swift_allocObject();
    *(v342 + 16) = v320;
    *(v342 + 24) = v321;
    v379 = v321;
    *(v342 + 32) = v319;
    *(v342 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v342 + 48) = 48;
    *(v342 + 56) = 2;
    *(v342 + 64) = sub_1CF796ACC;
    *(v342 + 72) = v318;
    *&v412 = sub_1CF2B9F54;
    *(&v412 + 1) = v342;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v411 = sub_1CEFCA444;
    *(&v411 + 1) = &block_descriptor_470_0;
    v343 = _Block_copy(&aBlock);
    v378 = v319;
    v380 = v320;

    v344 = v352;
    sub_1CF9E63F8();
    *&v402 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v345 = v353;
    v346 = v355;
    sub_1CF9E77B8();
    v347 = v378;
    sub_1CF9E7308();
    _Block_release(v343);
    (*(v354 + 8))(v345, v346);
    (*(v371 + 8))(v344, v372);

    v348 = v381;
    v349 = fpfs_adopt_log();
  }
}

void sub_1CF7879EC(void *a1, int a2, uint64_t a3, void (*a4)(uint64_t *), void *a5)
{
  v385 = a3;
  LODWORD(v386) = a2;
  v8 = sub_1CF9E63A8();
  v365 = *(v8 - 8);
  v366 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v364 = &v362 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E53C8();
  v383 = *(v10 - 8);
  v384 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v382 = &v362 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6388();
  v378 = *(v12 - 8);
  v379 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v374 = (&v362 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v375 = &v362 - v15;
  v16 = sub_1CF9E6498();
  v376 = *(v16 - 8);
  v377 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v373 = &v362 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v362 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v362 - v22;
  v24 = sub_1CF9E63D8();
  v371 = *(v24 - 8);
  v372 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v362 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v367 = &v362 - v28;
  v29 = sub_1CF9E6448();
  v380 = *(v29 - 8);
  v381 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v363 = &v362 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v368 = &v362 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v369 = &v362 - v34;
  v35 = sub_1CF9E73D8();
  v370 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v362 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v387 = &v362 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CF9E5268();
  v41 = *(v40 - 1);
  v389 = v40;
  v390 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v388 = &v362 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_allocObject();
  v392 = a4;
  v393 = v43;
  *(v43 + 16) = a4;
  *(v43 + 24) = a5;
  v429 = a1;
  swift_retain_n();
  v44 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v410 = v426;
    v411 = v427;
    v406 = v423;
    v407 = v424;
    v408 = *v425;
    v409 = *&v425[16];
    v404 = aBlock;
    v405 = v422;
    v418 = v426;
    v419 = v427;
    v415 = v423;
    v416 = v424;
    v417[0] = *v425;
    v417[1] = *&v425[16];
    v412 = v428;
    v420 = v428;
    v413 = aBlock;
    v414 = v422;
    if (sub_1CF2B971C(&v413))
    {
      sub_1CEFCCC44(&v404, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v63 = v62;
    v64 = *v62;
    v65 = *(v62 + 8);
    v66 = *(v62 + 112);

    v67 = sub_1CEFCCC44(v63 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v65 != 2 || v64)
    {
      v69 = v392;
      if (v65 == 2 && v64 == 1)
      {
        v68 = *MEMORY[0x1E6967280];
        if (v66)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v394 = 0x2F73662F70665F5FLL;
        v395 = 0xE800000000000000;
        v399 = v64;
        LOBYTE(v400) = v65;
        v117 = VFSItemID.description.getter(v67);
        v119 = v118;
        MEMORY[0x1D3868CC0](v117);
        v119, v120, v121, v122, v123, v124, v125, v126;
        v127 = v395;
        v68 = sub_1CF9E6888();
        v127, v128, v129, v130, v131, v132, v133, v134;
        if (v66)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v68 = *MEMORY[0x1E6967258];
      v69 = v392;
      if (v66)
      {
LABEL_16:
        v70 = v66;
LABEL_54:
        v394 = v70;
        v395 = 0;
        v396 = 0;
        v397 = 0;
        v398 = 1;
        v135 = v66;
        v136 = v70;
        v69(&v394);

        v137 = v70;
LABEL_55:

        goto LABEL_74;
      }
    }

    v70 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v391 = a5;

  v394 = a1;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v417 + 9) = *&v425[9];
    v416 = v424;
    v417[0] = *v425;
    v414 = v422;
    v415 = v423;
    v413 = aBlock;
    if (!v425[24])
    {
      v71 = *(&v417[0] + 1);
      v72 = *&v417[0];
      v73 = *(&v416 + 1);
      v74 = v416;
      v75 = *(&v415 + 1);
      v76 = v415;
      v77 = *(&v414 + 1);
      v78 = v414;
      v79 = *(&v413 + 1);
      v390 = v413;

      sub_1CF1D56D0(v79, v78, v77, v76, v75, v74, v73, v72);
      if (v71)
      {
        v80 = v71;
        v81 = v392;
        v82 = v390;
      }

      else
      {
        v114 = objc_opt_self();
        v82 = v390;
        v80 = [v114 fileProviderErrorForNonExistentItemWithIdentifier_];
        v81 = v392;
      }

      v404 = v80;
      v405 = 0uLL;
      LOBYTE(v406) = 1;
      v115 = v71;
      v116 = v80;
      v81(&v404);

      v113 = v394;
      goto LABEL_73;
    }

    sub_1CEFCCC44(&v413, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v399 = a1;
  v47 = a1;
  if (swift_dynamicCast())
  {
    v410 = v426;
    v411 = v427;
    v406 = v423;
    v407 = v424;
    v408 = *v425;
    v409 = *&v425[16];
    v404 = aBlock;
    v405 = v422;
    v418 = v426;
    v419 = v427;
    v415 = v423;
    v416 = v424;
    v417[0] = *v425;
    v417[1] = *&v425[16];
    v412 = v428;
    v420 = v428;
    v413 = aBlock;
    v414 = v422;
    v48 = sub_1CF2B971C(&v413);
    switch(v48)
    {
      case 5:
        nullsub_1();
        v90 = v399;
LABEL_30:

        v92 = v392;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v84 = *v83;
        v85 = *(v83 + 8);
        sub_1CEFCCC44(&v404, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v386)
        {
          LODWORD(v394) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v86 = v382;
          v87 = v384;
          sub_1CF9E57D8();
          v88 = sub_1CF9E53A8();
          v89 = v383;
LABEL_48:
          v89[1](v86, v87);
          v394 = v88;
          v395 = 0;
          v396 = 0;
          v397 = 0;
          v398 = 1;
          v112 = v88;
          v392(&v394);

          v113 = v399;
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v388) = v85;
        v389 = v84;
        v138 = v385;
        v139 = *(*(*(v385 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v140 = swift_dynamicCastClassUnconditional();
        v141 = swift_allocObject();
        v142 = v393;
        v141[2] = sub_1CF796158;
        v141[3] = v142;
        v390 = v141;
        v141[4] = v138;
        v386 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v387 = v140;
        v143 = *(v140 + 216);
        v394 = MEMORY[0x1E69E7CC0];
        v384 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v392 = v139;

        v144 = v143;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v145 = sub_1CF9E73E8();

        (*(v370 + 8))(v37, v35);
        qos_class_self();
        sub_1CF9E63B8();
        v147 = v371;
        v146 = v372;
        v148 = *(v371 + 48);
        if (v148(v20, 1, v372) == 1)
        {
          (*(v147 + 104))(v26, *MEMORY[0x1E69E7FA0], v146);
          if (v148(v20, 1, v146) != 1)
          {
            sub_1CEFCCC44(v20, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v147 + 32))(v26, v20, v146);
        }

        ObjectType = swift_getObjectType();
        v165 = v368;
        sub_1CF9E6428();
        v166 = swift_allocObject();
        v167 = v389;
        v168 = v390;
        *(v166 + 16) = v387;
        *(v166 + 24) = v167;
        *(v166 + 32) = v388;
        *(v166 + 40) = 0u;
        *(v166 + 56) = 0u;
        *(v166 + 72) = 0u;
        *(v166 + 88) = 0u;
        *(v166 + 104) = 0u;
        *(v166 + 120) = 0u;
        *(v166 + 136) = 0;
        *(v166 + 144) = 1;
        *(v166 + 152) = v145;
        *(v166 + 160) = sub_1CF796A00;
        *(v166 + 168) = v168;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v165, sub_1CF72A328, v166, ObjectType);

        (*(v380 + 8))(v165, v381);
        v169 = v373;
        sub_1CF9E6478();
        v170 = v375;
        sub_1CEFD5B64(v375);
        v171 = v374;
        sub_1CEFD5BD8(v374);
        MEMORY[0x1D3869770](v169, v170, v171, ObjectType);
        v172 = *(v378 + 8);
        v173 = v171;
        v174 = v379;
        v172(v173, v379);
        v172(v170, v174);
        (*(v376 + 8))(v169, v377);
        sub_1CF9E7448();
LABEL_68:

        swift_unknownObjectRelease();

        goto LABEL_74;
      case 1:
        nullsub_1();
        v50 = *v49;
        v51 = *(v49 + 8);
        v52 = *(v49 + 24);
        v53 = *(v49 + 48);
        v54 = *(v49 + 56);

        sub_1CF480620(v53, v54);
        v52, v55, v56, v57, v58, v59, v60, v61;
        if (v386)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v86 = v388;
          v87 = v389;
          sub_1CF9E57D8();
          v88 = sub_1CF9E50D8();
          v89 = v390;
          goto LABEL_48;
        }

        LODWORD(v388) = v51;
        v389 = v50;
        v149 = v385;
        v150 = *(*(*(v385 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v151 = swift_dynamicCastClassUnconditional();
        v152 = swift_allocObject();
        v153 = v393;
        v152[2] = sub_1CF796158;
        v152[3] = v153;
        v390 = v152;
        v152[4] = v149;
        v386 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v387 = v151;
        v154 = *(v151 + 216);
        v394 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v392 = v150;

        v155 = v154;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v156 = sub_1CF9E73E8();

        (*(v370 + 8))(v37, v35);
        qos_class_self();
        sub_1CF9E63B8();
        v158 = v371;
        v157 = v372;
        v159 = *(v371 + 48);
        if (v159(v23, 1, v372) == 1)
        {
          (*(v158 + 104))(v367, *MEMORY[0x1E69E7FA0], v157);
          if (v159(v23, 1, v157) != 1)
          {
            sub_1CEFCCC44(v23, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v158 + 32))(v367, v23, v157);
        }

        v175 = swift_getObjectType();
        v176 = v369;
        sub_1CF9E6428();
        v177 = swift_allocObject();
        v178 = v389;
        v179 = v390;
        *(v177 + 16) = v387;
        *(v177 + 24) = v178;
        *(v177 + 32) = v388;
        *(v177 + 40) = 0u;
        *(v177 + 56) = 0u;
        *(v177 + 72) = 0u;
        *(v177 + 88) = 0u;
        *(v177 + 104) = 0u;
        *(v177 + 120) = 0u;
        *(v177 + 136) = 0;
        *(v177 + 144) = 1;
        *(v177 + 152) = v156;
        *(v177 + 160) = sub_1CF796A04;
        *(v177 + 168) = v179;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v176, sub_1CF72A328, v177, v175);

        (*(v380 + 8))(v176, v381);
        v180 = v373;
        sub_1CF9E6478();
        v181 = v375;
        sub_1CEFD5B64(v375);
        v182 = v374;
        sub_1CEFD5BD8(v374);
        MEMORY[0x1D3869770](v180, v181, v182, v175);
        v183 = *(v378 + 8);
        v184 = v182;
        v185 = v379;
        v183(v184, v379);
        v183(v181, v185);
        (*(v376 + 8))(v180, v377);
        sub_1CF9E7448();
        goto LABEL_68;
    }

    sub_1CEFCCC44(&v404, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v404 = a1;
  v91 = a1;
  if (swift_dynamicCast())
  {
    *(v417 + 9) = *&v425[9];
    v415 = v423;
    v416 = v424;
    v417[0] = *v425;
    v413 = aBlock;
    v414 = v422;
    if (v425[24] == 5)
    {
      v90 = v404;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v413, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v413 = a1;
  v97 = a1;
  if (swift_dynamicCast())
  {
    if (v404 <= 2u)
    {
      v92 = v392;
      if (v404 - 1 < 2)
      {

        sub_1CF9E5118();
        goto LABEL_32;
      }

LABEL_31:
      sub_1CF9E50E8();
LABEL_32:
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v94 = v388;
      v93 = v389;
      sub_1CF9E57D8();
      v95 = sub_1CF9E50D8();
      (*(v390 + 1))(v94, v93);
      aBlock = v95;
      v422 = 0uLL;
      LOBYTE(v423) = 1;
      v96 = v95;
      v92(&aBlock);
      goto LABEL_33;
    }

    v92 = v392;
    if (v404 != 4)
    {

      sub_1CF9E5198();
      goto LABEL_32;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v108 = v388;
    v107 = v389;
    sub_1CF9E57D8();
    v109 = sub_1CF9E50D8();
    (*(v390 + 1))(v108, v107);
    aBlock = v109;
    v422 = 0uLL;
    LOBYTE(v423) = 1;
    v110 = v109;
    v92(&aBlock);

LABEL_74:

    goto LABEL_75;
  }

  *&v404 = a1;
  v98 = a1;
  if (swift_dynamicCast())
  {
    if ((v414 + 3) >= 2u)
    {
      sub_1CF3386E4(v413, *(&v413 + 1), v414);
      LODWORD(aBlock) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v160 = v382;
      v161 = v384;
      sub_1CF9E57D8();
      v162 = sub_1CF9E53A8();
      v383[1](v160, v161);
      aBlock = v162;
      v422 = 0uLL;
      LOBYTE(v423) = 1;
      v163 = v162;
      v392(&aBlock);

      v113 = v404;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&aBlock = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1CF9FA450;
    *(v99 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v99 + 40) = v100;
    v101 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v102 = FPLocv();

    v103 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v105 = v104;

    *(v99 + 72) = MEMORY[0x1E69E6158];
    *(v99 + 48) = v103;
    *(v99 + 56) = v105;
    sub_1CF4E04E8(v99);
    swift_setDeallocating();
    sub_1CEFCCC44(v99 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v95 = v413;
    aBlock = v413;
    v422 = 0uLL;
    LOBYTE(v423) = 1;
    v106 = v413;
    v392(&aBlock);
LABEL_33:

    return;
  }

  v399 = a1;
  v111 = a1;
  if (swift_dynamicCast())
  {
    v410 = v426;
    v411 = v427;
    v406 = v423;
    v407 = v424;
    v408 = *v425;
    v409 = *&v425[16];
    v404 = aBlock;
    v405 = v422;
    v418 = v426;
    v419 = v427;
    v415 = v423;
    v416 = v424;
    v417[0] = *v425;
    v417[1] = *&v425[16];
    v412 = v428;
    v420 = v428;
    v413 = aBlock;
    v414 = v422;
    if (sub_1CF2B971C(&v413) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v404, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v413 = a1;
  v186 = a1;
  if (swift_dynamicCast())
  {
    v187 = FPDomainUnavailableError();
    if (!v187)
    {
LABEL_122:

      __break(1u);
LABEL_123:
      MEMORY[0x1EEE9AC00](v288);
      v361 = v45;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v360, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v188 = v187;
    aBlock = v187;
    v422 = 0uLL;
    LOBYTE(v423) = 1;
    v189 = v187;
    v392(&aBlock);

    v113 = v413;
    goto LABEL_73;
  }

  v429 = a1;
  v190 = a1;
  if (swift_dynamicCast())
  {
    v410 = v426;
    v411 = v427;
    v406 = v423;
    v407 = v424;
    v408 = *v425;
    v409 = *&v425[16];
    v404 = aBlock;
    v405 = v422;
    v418 = v426;
    v419 = v427;
    v415 = v423;
    v416 = v424;
    v417[0] = *v425;
    v417[1] = *&v425[16];
    v412 = v428;
    v420 = v428;
    v413 = aBlock;
    v414 = v422;
    if (sub_1CF2B971C(&v413) == 10)
    {
      nullsub_1();
      v192 = *(v191 + 16);
      if (!v192)
      {
        LODWORD(v394) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v193 = v382;
        v194 = v384;
        sub_1CF9E57D8();
        v192 = sub_1CF9E53A8();
        v383[1](v193, v194);
      }

      v195 = v392;
      v399 = v192;
      v400 = 0;
      v401 = 0;
      v402 = 0;
      v403 = 1;
      sub_1CEFCCBDC(&v404, &v394, &unk_1EC4BE320, &unk_1CFA08B50);
      v196 = v192;
      v195(&v399);

      sub_1CEFCCC44(&v404, &unk_1EC4BE320, &unk_1CFA08B50);
      v137 = v192;
      goto LABEL_55;
    }

    sub_1CEFCCC44(&v404, &unk_1EC4BE320, &unk_1CFA08B50);
    v198 = v429;
    goto LABEL_92;
  }

  *&v404 = a1;
  v197 = a1;
  if (swift_dynamicCast())
  {
    v415 = v423;
    v416 = v424;
    v417[0] = *v425;
    *(v417 + 9) = *&v425[9];
    v413 = aBlock;
    v414 = v422;
    sub_1CEFCCC44(&v413, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_93:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v208 = v388;
    v207 = v389;
    sub_1CF9E57D8();
    v95 = sub_1CF9E50D8();
    (*(v390 + 1))(v208, v207);
    aBlock = v95;
    v422 = 0uLL;
    LOBYTE(v423) = 1;
    v209 = v95;
    v392(&aBlock);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v199 = a1;
  v200 = swift_dynamicCast();

  if (v200)
  {
    goto LABEL_93;
  }

  *&v413 = a1;
  v201 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v422, *(&v422 + 1), v423, v202, v203, v204);
LABEL_91:
    v198 = v413;
LABEL_92:

    goto LABEL_93;
  }

  *&v413 = a1;
  v205 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v422, SBYTE8(v422));
    goto LABEL_91;
  }

  *&v413 = a1;
  v206 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_91;
  }

  v210 = sub_1CF9E57E8();
  v211 = [v210 userInfo];
  v212 = sub_1CF9E6638();

  v213 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v221 = v214;
  if (!*v212->tree)
  {
    v212, v214, v215, v216, v217, v218, v219, v220;
    v249 = v221;
LABEL_100:
    v249, v231, v232, v233, v234, v235, v236, v237;
    goto LABEL_101;
  }

  v222 = sub_1CEFE4328(v213, v214);
  v224 = v223;
  v221, v223, v225, v226, v227, v228, v229, v230;
  if ((v224 & 1) == 0)
  {
    v249 = v212;
    goto LABEL_100;
  }

  sub_1CEFD1104(*v212[1].tester + 32 * v222, &aBlock);
  v212, v238, v239, v240, v241, v242, v243, v244;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v245 = v413;
    v246 = v391;

    v247 = v210;
    v248 = v245;
    sub_1CF782688(v248, v386 & 1, v385, v247, v392, v246, &unk_1F4C156A0, &unk_1F4C156C8, sub_1CF796A98, sub_1CF77F3B8, &unk_1F4C157B8, sub_1CF7969FC, &unk_1F4C157E0, sub_1CF796A04, sub_1CF72A328, &unk_1F4C15768, &unk_1F4C15790, sub_1CF796A00, sub_1CF72A328, &unk_1F4C156F0, &unk_1F4C15718, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_582, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_101:
  v250 = swift_allocObject();
  v251 = [v210 userInfo];
  v252 = sub_1CF9E6638();

  v253 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v261 = v254;
  if (!*v252->tree)
  {
    v252, v254, v255, v256, v257, v258, v259, v260;
    v295 = v261;
LABEL_117:
    v295, v270, v271, v272, v273, v274, v275, v276;
    goto LABEL_118;
  }

  v262 = sub_1CEFE4328(v253, v254);
  v45 = v263;
  v261, v263, v264, v265, v266, v267, v268, v269;
  if ((v45 & 1) == 0)
  {
    v295 = v252;
    goto LABEL_117;
  }

  sub_1CEFD1104(*v252[1].tester + 32 * v262, &aBlock);
  v252, v277, v278, v279, v280, v281, v282, v283;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_118:
    swift_deallocUninitializedObject();
    aBlock = a1;
    v422 = 0uLL;
    LOBYTE(v423) = 1;
    v296 = a1;
    v392(&aBlock);

    return;
  }

  v250[2] = v413;
  v284 = dispatch_group_create();
  v285 = v250[2];
  if (v285 >> 62)
  {
    goto LABEL_120;
  }

  v286 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v286)
  {
    goto LABEL_126;
  }

  do
  {
    v287 = 0;
    while (1)
    {
      v45 = v284;
      v288 = objc_sync_enter(v45);
      if (v288)
      {
        goto LABEL_123;
      }

      swift_beginAccess();
      v289 = v250[2];
      if ((v289 & 0xC000000000000001) != 0)
      {
        v290 = MEMORY[0x1D3869C30](v287);
        goto LABEL_111;
      }

      if (v287 >= *((v289 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v290 = *(v289 + 8 * v287 + 32);
LABEL_111:
      v291 = v290;
      swift_endAccess();
      v292 = objc_sync_exit(v45);
      if (v292)
      {
        MEMORY[0x1EEE9AC00](v292);
        v361 = v45;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v360, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v45);
      v293 = v45;

      v294 = v291;
      sub_1CF774BF8(v294, v386 & 1, v385, v293, v250, v287);

      if (v286 == ++v287)
      {
        goto LABEL_126;
      }
    }

    __break(1u);
LABEL_120:
    v297 = sub_1CF9E7818();
    if (v297 < 0)
    {
      __break(1u);
      goto LABEL_122;
    }

    v286 = v297;
  }

  while (v297);
LABEL_126:
  if (v386)
  {
    v298 = [v210 userInfo];
    v299 = sub_1CF9E6638();

    v300 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v302 = v301;
    swift_beginAccess();
    v303 = v250[2];
    *(&v422 + 1) = v390;
    *&aBlock = v303;
    sub_1CEFE9EB8(&aBlock, &v413);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v394 = v299;
    sub_1CF1D154C(&v413, v300, v302, isUniquelyReferenced_nonNull_native);
    v302, v305, v306, v307, v308, v309, v310, v311;
    v312 = [v210 domain];
    if (!v312)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v314 = v313;
      v312 = sub_1CF9E6888();
      v314, v315, v316, v317, v318, v319, v320, v321;
    }

    v322 = [v210 code];
    v323 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v324 = sub_1CF9E6618();

    v325 = [v323 initWithDomain:v312 code:v322 userInfo:v324];

    aBlock = v325;
    v422 = 0uLL;
    LOBYTE(v423) = 1;
    v326 = v325;
    v392(&aBlock);

LABEL_75:
  }

  else
  {
    v327 = *(*(v385 + 16) + 64);
    v328 = swift_allocObject();
    v328[2] = v210;
    v328[3] = v250;
    v328[4] = sub_1CF796158;
    v328[5] = v393;

    v329 = v327;
    v392 = v210;

    v330 = fpfs_current_log();
    v390 = fpfs_adopt_log();
    v331 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v332;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v333 = sub_1CF9E7988();
    v335 = v334;
    MEMORY[0x1D3868CC0](v333);
    v335, v336, v337, v338, v339, v340, v341, v342;
    v343 = *(&aBlock + 1);
    sub_1CF9E6978();
    v343, v344, v345, v346, v347, v348, v349, v350;
    v351 = __fp_log_fork();

    *(v331 + 16) = v351;
    v352 = swift_allocObject();
    *(v352 + 16) = v330;
    *(v352 + 24) = v331;
    v388 = v331;
    *(v352 + 32) = v329;
    *(v352 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v352 + 48) = 48;
    *(v352 + 56) = 2;
    *(v352 + 64) = sub_1CF796ACC;
    *(v352 + 72) = v328;
    *&v423 = sub_1CF2B9F54;
    *(&v423 + 1) = v352;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v422 = sub_1CEFCA444;
    *(&v422 + 1) = &block_descriptor_543;
    v353 = _Block_copy(&aBlock);
    v387 = v329;
    v389 = v330;

    v354 = v363;
    sub_1CF9E63F8();
    *&v413 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v355 = v364;
    v356 = v366;
    sub_1CF9E77B8();
    v357 = v387;
    sub_1CF9E7308();
    _Block_release(v353);
    (*(v365 + 8))(v355, v356);
    (*(v380 + 8))(v354, v381);

    v358 = v390;
    v359 = fpfs_adopt_log();
  }
}

void sub_1CF78A358(void *a1, int a2, uint64_t a3, void (*a4)(__int128 *), void *a5)
{
  v376 = a3;
  LODWORD(v377) = a2;
  v8 = sub_1CF9E63A8();
  v354 = *(v8 - 8);
  v355 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v353 = &v352 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E53C8();
  v374 = *(v10 - 8);
  v375 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v373 = &v352 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6388();
  v369 = *(v12 - 8);
  v370 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v365 = (&v352 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v366 = &v352 - v15;
  v16 = sub_1CF9E6498();
  v367 = *(v16 - 8);
  v368 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v364 = &v352 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v352 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v358 = &v352 - v22;
  v23 = sub_1CF9E63D8();
  v362 = *(v23 - 8);
  v363 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v356 = &v352 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v357 = &v352 - v26;
  v27 = sub_1CF9E6448();
  v371 = *(v27 - 8);
  v372 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v352 = &v352 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v359 = &v352 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v360 = &v352 - v32;
  v33 = sub_1CF9E73D8();
  v361 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v352 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v378 = &v352 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5268();
  v39 = *(v38 - 1);
  v380 = v38;
  v381 = v39;
  MEMORY[0x1EEE9AC00](v38);
  v379 = &v352 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_allocObject();
  v384 = a4;
  *(v41 + 16) = a4;
  *(v41 + 24) = a5;
  v414 = a1;
  swift_retain_n();
  v42 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v395 = v411;
    v396 = v412;
    v391 = v408;
    v392 = v409;
    v393 = v410[0];
    v394 = v410[1];
    v389 = aBlock;
    v390 = v407;
    v403 = v411;
    v404 = v412;
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v402[1] = v410[1];
    v397 = v413;
    v405 = v413;
    v398 = aBlock;
    v399 = v407;
    if (sub_1CF2B971C(&v398))
    {
      sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v61 = v60;
    v62 = *v60;
    v63 = *(v60 + 8);
    v64 = *(v60 + 112);

    v65 = sub_1CEFCCC44(v61 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v63 != 2 || v62)
    {
      if (v63 != 2 || v62 != 1)
      {
        v385 = 0x2F73662F70665F5FLL;
        v386 = 0xE800000000000000;
        v387 = v62;
        v388 = v63;
        v115 = VFSItemID.description.getter(v65);
        v117 = v116;
        MEMORY[0x1D3868CC0](v115);
        v117, v118, v119, v120, v121, v122, v123, v124;
        v125 = v386;
        v79 = sub_1CF9E6888();
        v125, v126, v127, v128, v129, v130, v131, v132;
        if (v64)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v66 = MEMORY[0x1E6967280];
    }

    else
    {
      v66 = MEMORY[0x1E6967258];
    }

    v79 = *v66;
    if (v64)
    {
LABEL_22:
      v80 = v64;
LABEL_54:
      v385 = v80;
      LOBYTE(v386) = 1;
      v133 = v64;
      v134 = v80;
      v384(&v385);

      v135 = v80;
LABEL_55:

      goto LABEL_75;
    }

LABEL_53:
    v80 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v382 = a5;
  v383 = v41;

  v385 = a1;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v402 + 9) = *(v410 + 9);
    v401 = v409;
    v402[0] = v410[0];
    v399 = v407;
    v400 = v408;
    v398 = aBlock;
    if (!BYTE8(v410[1]))
    {
      v67 = *(&v402[0] + 1);
      v68 = *&v402[0];
      v69 = *(&v401 + 1);
      v70 = v401;
      v71 = *(&v400 + 1);
      v72 = v400;
      v73 = *(&v399 + 1);
      v74 = v399;
      v75 = *(&v398 + 1);
      v381 = v398;

      sub_1CF1D56D0(v75, v74, v73, v72, v71, v70, v69, v68);
      if (v67)
      {
        v76 = v67;
        v77 = v384;
        v78 = v381;
      }

      else
      {
        v112 = objc_opt_self();
        v78 = v381;
        v76 = [v112 fileProviderErrorForNonExistentItemWithIdentifier_];
        v77 = v384;
      }

      *&v389 = v76;
      BYTE8(v389) = 1;
      v113 = v67;
      v114 = v76;
      v77(&v389);

      goto LABEL_74;
    }

    sub_1CEFCCC44(&v398, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v387 = a1;
  v45 = a1;
  if (swift_dynamicCast())
  {
    v395 = v411;
    v396 = v412;
    v391 = v408;
    v392 = v409;
    v393 = v410[0];
    v394 = v410[1];
    v389 = aBlock;
    v390 = v407;
    v403 = v411;
    v404 = v412;
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v402[1] = v410[1];
    v397 = v413;
    v405 = v413;
    v398 = aBlock;
    v399 = v407;
    v46 = sub_1CF2B971C(&v398);
    switch(v46)
    {
      case 5:
        nullsub_1();
        v88 = v387;
LABEL_30:

        v90 = v384;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v82 = *v81;
        v83 = *(v81 + 8);
        sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v377)
        {
          LODWORD(v385) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v84 = v373;
          v85 = v375;
          sub_1CF9E57D8();
          v86 = sub_1CF9E53A8();
          v87 = v374;
LABEL_48:
          v87[1](v84, v85);
          v385 = v86;
          LOBYTE(v386) = 1;
          v110 = v86;
          v384(&v385);

          v111 = v387;
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v379) = v83;
        v380 = v82;
        v136 = v376;
        v137 = *(*(*(v376 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v138 = swift_dynamicCastClassUnconditional();
        v139 = swift_allocObject();
        v140 = v383;
        v139[2] = sub_1CF7968B0;
        v139[3] = v140;
        v381 = v139;
        v139[4] = v136;
        v377 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v378 = v138;
        v141 = *(v138 + 216);
        v385 = MEMORY[0x1E69E7CC0];
        v375 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v384 = v137;

        v142 = v141;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v143 = sub_1CF9E73E8();

        (*(v361 + 8))(v35, v33);
        qos_class_self();
        sub_1CF9E63B8();
        v145 = v362;
        v144 = v363;
        v146 = *(v362 + 48);
        if (v146(v20, 1, v363) == 1)
        {
          (*(v145 + 104))(v356, *MEMORY[0x1E69E7FA0], v144);
          if (v146(v20, 1, v144) != 1)
          {
            sub_1CEFCCC44(v20, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v145 + 32))(v356, v20, v144);
        }

        ObjectType = swift_getObjectType();
        v164 = v359;
        sub_1CF9E6428();
        v165 = swift_allocObject();
        v166 = v380;
        v167 = v381;
        *(v165 + 16) = v378;
        *(v165 + 24) = v166;
        *(v165 + 32) = v379;
        *(v165 + 40) = 0u;
        *(v165 + 56) = 0u;
        *(v165 + 72) = 0u;
        *(v165 + 88) = 0u;
        *(v165 + 104) = 0u;
        *(v165 + 120) = 0u;
        *(v165 + 136) = 0;
        *(v165 + 144) = 1;
        *(v165 + 152) = v143;
        *(v165 + 160) = sub_1CF796A00;
        *(v165 + 168) = v167;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v164, sub_1CF72A328, v165, ObjectType);

        (*(v371 + 8))(v164, v372);
LABEL_68:
        v170 = v364;
        sub_1CF9E6478();
        v171 = v366;
        sub_1CEFD5B64(v366);
        v172 = v365;
        sub_1CEFD5BD8(v365);
        MEMORY[0x1D3869770](v170, v171, v172, ObjectType);
        v173 = *(v369 + 8);
        v174 = v172;
        v175 = v370;
        v173(v174, v370);
        v173(v171, v175);
        (*(v367 + 8))(v170, v368);
        sub_1CF9E7448();

        swift_unknownObjectRelease();

        goto LABEL_74;
      case 1:
        nullsub_1();
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = v47[3];
        v51 = v47[6];
        v52 = v47[7];

        sub_1CF480620(v51, v52);
        v50, v53, v54, v55, v56, v57, v58, v59;
        if (v377)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v84 = v379;
          v85 = v380;
          sub_1CF9E57D8();
          v86 = sub_1CF9E50D8();
          v87 = v381;
          goto LABEL_48;
        }

        LODWORD(v380) = v49;
        v147 = v376;
        v148 = *(*(*(v376 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v149 = swift_dynamicCastClassUnconditional();
        v150 = swift_allocObject();
        v151 = v383;
        v150[2] = sub_1CF7968B0;
        v150[3] = v151;
        v381 = v150;
        v150[4] = v147;
        v378 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v379 = v149;
        v152 = *(v149 + 216);
        v385 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v384 = v148;

        v153 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v154 = sub_1CF9E73E8();

        (*(v361 + 8))(v35, v33);
        qos_class_self();
        v155 = v358;
        sub_1CF9E63B8();
        v157 = v362;
        v156 = v363;
        v158 = *(v362 + 48);
        if (v158(v155, 1, v363) == 1)
        {
          (*(v157 + 104))(v357, *MEMORY[0x1E69E7FA0], v156);
          if (v158(v155, 1, v156) != 1)
          {
            sub_1CEFCCC44(v155, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v157 + 32))(v357, v155, v156);
        }

        ObjectType = swift_getObjectType();
        v168 = v360;
        sub_1CF9E6428();
        v169 = swift_allocObject();
        *(v169 + 16) = v379;
        *(v169 + 24) = v48;
        *(v169 + 32) = v380;
        *(v169 + 40) = 0u;
        *(v169 + 56) = 0u;
        *(v169 + 72) = 0u;
        *(v169 + 88) = 0u;
        *(v169 + 104) = 0u;
        *(v169 + 120) = 0u;
        *(v169 + 136) = 0;
        *(v169 + 144) = 1;
        *(v169 + 152) = v154;
        *(v169 + 160) = sub_1CF796A04;
        *(v169 + 168) = v381;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v168, sub_1CF72A328, v169, ObjectType);

        (*(v371 + 8))(v168, v372);
        goto LABEL_68;
    }

    sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v389 = a1;
  v89 = a1;
  if (swift_dynamicCast())
  {
    *(v402 + 9) = *(v410 + 9);
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v398 = aBlock;
    v399 = v407;
    if (BYTE8(v410[1]) == 5)
    {
      v88 = v389;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v398, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v398 = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v389 > 2u)
    {
      v90 = v384;
      if (v389 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v106 = v379;
        v105 = v380;
        sub_1CF9E57D8();
        v107 = sub_1CF9E50D8();
        (*(v381 + 1))(v106, v105);
        *&aBlock = v107;
        BYTE8(aBlock) = 1;
        v108 = v107;
        v90(&aBlock);

LABEL_74:

        goto LABEL_75;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v90 = v384;
    if (v389 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v92 = v379;
    v91 = v380;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v381 + 1))(v92, v91);
    *&aBlock = v93;
    BYTE8(aBlock) = 1;
    v94 = v93;
    v90(&aBlock);

    goto LABEL_33;
  }

  *&v389 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v407 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v407);
      LODWORD(v398) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v159 = v373;
      v160 = v375;
      sub_1CF9E57D8();
      v161 = sub_1CF9E53A8();
      v374[1](v159, v160);
      *&v398 = v161;
      BYTE8(v398) = 1;
      v162 = v161;
      v384(&v398);

      v111 = v389;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&aBlock = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    *(v97 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v97 + 40) = v98;
    v99 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v100 = FPLocv();

    v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v103 = v102;

    *(v97 + 72) = MEMORY[0x1E69E6158];
    *(v97 + 48) = v101;
    *(v97 + 56) = v103;
    sub_1CF4E04E8(v97);
    swift_setDeallocating();
    sub_1CEFCCC44(v97 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v93 = v398;
    *&aBlock = v398;
    BYTE8(aBlock) = 1;
    v104 = v398;
    v384(&aBlock);

LABEL_33:

    return;
  }

  v387 = a1;
  v109 = a1;
  if (swift_dynamicCast())
  {
    v395 = v411;
    v396 = v412;
    v391 = v408;
    v392 = v409;
    v393 = v410[0];
    v394 = v410[1];
    v389 = aBlock;
    v390 = v407;
    v403 = v411;
    v404 = v412;
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v402[1] = v410[1];
    v397 = v413;
    v405 = v413;
    v398 = aBlock;
    v399 = v407;
    if (sub_1CF2B971C(&v398) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v398 = a1;
  v176 = a1;
  if (swift_dynamicCast())
  {
    v177 = FPDomainUnavailableError();
    if (!v177)
    {
LABEL_122:

      __break(1u);
LABEL_123:
      MEMORY[0x1EEE9AC00](v277);
      v351 = v43;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v350, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v178 = v177;
    *&aBlock = v177;
    BYTE8(aBlock) = 1;
    v179 = v177;
    v384(&aBlock);

    v111 = v398;
    goto LABEL_73;
  }

  v414 = a1;
  v180 = a1;
  if (swift_dynamicCast())
  {
    v395 = v411;
    v396 = v412;
    v391 = v408;
    v392 = v409;
    v393 = v410[0];
    v394 = v410[1];
    v389 = aBlock;
    v390 = v407;
    v403 = v411;
    v404 = v412;
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v402[1] = v410[1];
    v397 = v413;
    v405 = v413;
    v398 = aBlock;
    v399 = v407;
    if (sub_1CF2B971C(&v398) == 10)
    {
      nullsub_1();
      v182 = *(v181 + 16);
      if (!v182)
      {
        LODWORD(v385) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v183 = v373;
        v184 = v375;
        sub_1CF9E57D8();
        v182 = sub_1CF9E53A8();
        v374[1](v183, v184);
      }

      v387 = v182;
      v388 = 1;
      sub_1CEFCCBDC(&v389, &v385, &unk_1EC4BE320, &unk_1CFA08B50);
      v185 = v182;
      v384(&v387);

      sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
      v135 = v182;
      goto LABEL_55;
    }

    sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
    v187 = v414;
    goto LABEL_92;
  }

  *&v389 = a1;
  v186 = a1;
  if (swift_dynamicCast())
  {
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    *(v402 + 9) = *(v410 + 9);
    v398 = aBlock;
    v399 = v407;
    sub_1CEFCCC44(&v398, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_93:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v197 = v379;
    v196 = v380;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v381 + 1))(v197, v196);
    *&aBlock = v93;
    BYTE8(aBlock) = 1;
    v198 = v93;
    v384(&aBlock);

    goto LABEL_33;
  }

  *&aBlock = a1;
  v188 = a1;
  v189 = swift_dynamicCast();

  if (v189)
  {
    goto LABEL_93;
  }

  *&v398 = a1;
  v190 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v407, *(&v407 + 1), v408, v191, v192, v193);
LABEL_91:
    v187 = v398;
LABEL_92:

    goto LABEL_93;
  }

  *&v398 = a1;
  v194 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v407, SBYTE8(v407));
    goto LABEL_91;
  }

  *&v398 = a1;
  v195 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_91;
  }

  v199 = sub_1CF9E57E8();
  v200 = [v199 userInfo];
  v201 = sub_1CF9E6638();

  v202 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v210 = v203;
  if (!*v201->tree)
  {
    v201, v203, v204, v205, v206, v207, v208, v209;
    v238 = v210;
LABEL_100:
    v238, v220, v221, v222, v223, v224, v225, v226;
    goto LABEL_101;
  }

  v211 = sub_1CEFE4328(v202, v203);
  v213 = v212;
  v210, v212, v214, v215, v216, v217, v218, v219;
  if ((v213 & 1) == 0)
  {
    v238 = v201;
    goto LABEL_100;
  }

  sub_1CEFD1104(*v201[1].tester + 32 * v211, &aBlock);
  v201, v227, v228, v229, v230, v231, v232, v233;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v234 = v398;
    v235 = v382;

    v236 = v199;
    v237 = v234;
    sub_1CF77F5D0(v237, v377 & 1, v376, v236, v384, v235, &unk_1F4C16668, &unk_1F4C16690, sub_1CF796A8C, &unk_1F4C16780, sub_1CF7969FC, &unk_1F4C167A8, sub_1CF796A04, sub_1CF72A328, &unk_1F4C16730, &unk_1F4C16758, sub_1CF796A00, sub_1CF72A328, &unk_1F4C166B8, &unk_1F4C166E0, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_992, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_101:
  v239 = swift_allocObject();
  v240 = [v199 userInfo];
  v241 = sub_1CF9E6638();

  v242 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v250 = v243;
  if (!*v241->tree)
  {
    v241, v243, v244, v245, v246, v247, v248, v249;
    v284 = v250;
LABEL_117:
    v284, v259, v260, v261, v262, v263, v264, v265;
    goto LABEL_118;
  }

  v251 = sub_1CEFE4328(v242, v243);
  v43 = v252;
  v250, v252, v253, v254, v255, v256, v257, v258;
  if ((v43 & 1) == 0)
  {
    v284 = v241;
    goto LABEL_117;
  }

  sub_1CEFD1104(*v241[1].tester + 32 * v251, &aBlock);
  v241, v266, v267, v268, v269, v270, v271, v272;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_118:
    v285 = v384;
    swift_deallocUninitializedObject();
    *&aBlock = a1;
    BYTE8(aBlock) = 1;
    v286 = a1;
    v285(&aBlock);

    return;
  }

  v239[2] = v398;
  v273 = dispatch_group_create();
  v274 = v239[2];
  if (v274 >> 62)
  {
    goto LABEL_120;
  }

  v275 = *((v274 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v275)
  {
    goto LABEL_126;
  }

  do
  {
    v276 = 0;
    while (1)
    {
      v43 = v273;
      v277 = objc_sync_enter(v43);
      if (v277)
      {
        goto LABEL_123;
      }

      swift_beginAccess();
      v278 = v239[2];
      if ((v278 & 0xC000000000000001) != 0)
      {
        v279 = MEMORY[0x1D3869C30](v276);
        goto LABEL_111;
      }

      if (v276 >= *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v279 = *(v278 + 8 * v276 + 32);
LABEL_111:
      v280 = v279;
      swift_endAccess();
      v281 = objc_sync_exit(v43);
      if (v281)
      {
        MEMORY[0x1EEE9AC00](v281);
        v351 = v43;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v350, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v43);
      v282 = v43;

      v283 = v280;
      sub_1CF774BF8(v283, v377 & 1, v376, v282, v239, v276);

      if (v275 == ++v276)
      {
        goto LABEL_126;
      }
    }

    __break(1u);
LABEL_120:
    v287 = sub_1CF9E7818();
    if (v287 < 0)
    {
      __break(1u);
      goto LABEL_122;
    }

    v275 = v287;
  }

  while (v287);
LABEL_126:
  if (v377)
  {
    v288 = [v199 userInfo];
    v289 = sub_1CF9E6638();

    v290 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v292 = v291;
    swift_beginAccess();
    v293 = v239[2];
    *(&v407 + 1) = v381;
    *&aBlock = v293;
    sub_1CEFE9EB8(&aBlock, &v398);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v385 = v289;
    sub_1CF1D154C(&v398, v290, v292, isUniquelyReferenced_nonNull_native);
    v292, v295, v296, v297, v298, v299, v300, v301;
    v302 = [v199 domain];
    if (!v302)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v304 = v303;
      v302 = sub_1CF9E6888();
      v304, v305, v306, v307, v308, v309, v310, v311;
    }

    v312 = [v199 code];
    v313 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v314 = sub_1CF9E6618();

    v315 = [v313 initWithDomain:v302 code:v312 userInfo:v314];

    *&aBlock = v315;
    BYTE8(aBlock) = 1;
    v316 = v315;
    v384(&aBlock);

LABEL_75:
  }

  else
  {
    v317 = *(*(v376 + 16) + 64);
    v318 = swift_allocObject();
    v318[2] = v199;
    v318[3] = v239;
    v318[4] = sub_1CF7968B0;
    v318[5] = v383;

    v319 = v317;
    v384 = v199;

    v320 = fpfs_current_log();
    v381 = fpfs_adopt_log();
    v321 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v322;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v323 = sub_1CF9E7988();
    v325 = v324;
    MEMORY[0x1D3868CC0](v323);
    v325, v326, v327, v328, v329, v330, v331, v332;
    v333 = *(&aBlock + 1);
    sub_1CF9E6978();
    v333, v334, v335, v336, v337, v338, v339, v340;
    v341 = __fp_log_fork();

    *(v321 + 16) = v341;
    v342 = swift_allocObject();
    *(v342 + 16) = v320;
    *(v342 + 24) = v321;
    v379 = v321;
    *(v342 + 32) = v319;
    *(v342 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v342 + 48) = 48;
    *(v342 + 56) = 2;
    *(v342 + 64) = sub_1CF796ACC;
    *(v342 + 72) = v318;
    *&v408 = sub_1CF2B9F54;
    *(&v408 + 1) = v342;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v407 = sub_1CEFCA444;
    *(&v407 + 1) = &block_descriptor_953;
    v343 = _Block_copy(&aBlock);
    v378 = v319;
    v380 = v320;

    v344 = v352;
    sub_1CF9E63F8();
    *&v398 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v345 = v353;
    v346 = v355;
    sub_1CF9E77B8();
    v347 = v378;
    sub_1CF9E7308();
    _Block_release(v343);
    (*(v354 + 8))(v345, v346);
    (*(v371 + 8))(v344, v372);

    v348 = v381;
    v349 = fpfs_adopt_log();
  }
}

void sub_1CF78CC3C(void *a1, int a2, uint64_t a3, void (*a4)(__int128 *), void *a5)
{
  v376 = a3;
  LODWORD(v377) = a2;
  v8 = sub_1CF9E63A8();
  v354 = *(v8 - 8);
  v355 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v353 = &v352 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E53C8();
  v374 = *(v10 - 8);
  v375 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v373 = &v352 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6388();
  v369 = *(v12 - 8);
  v370 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v365 = (&v352 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v366 = &v352 - v15;
  v16 = sub_1CF9E6498();
  v367 = *(v16 - 8);
  v368 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v364 = &v352 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v352 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v358 = &v352 - v22;
  v23 = sub_1CF9E63D8();
  v362 = *(v23 - 8);
  v363 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v356 = &v352 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v357 = &v352 - v26;
  v27 = sub_1CF9E6448();
  v371 = *(v27 - 8);
  v372 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v352 = &v352 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v359 = &v352 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v360 = &v352 - v32;
  v33 = sub_1CF9E73D8();
  v361 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v352 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v378 = &v352 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5268();
  v39 = *(v38 - 1);
  v380 = v38;
  v381 = v39;
  MEMORY[0x1EEE9AC00](v38);
  v379 = &v352 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_allocObject();
  v384 = a4;
  *(v41 + 16) = a4;
  *(v41 + 24) = a5;
  v414 = a1;
  swift_retain_n();
  v42 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v395 = v411;
    v396 = v412;
    v391 = v408;
    v392 = v409;
    v393 = v410[0];
    v394 = v410[1];
    v389 = aBlock;
    v390 = v407;
    v403 = v411;
    v404 = v412;
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v402[1] = v410[1];
    v397 = v413;
    v405 = v413;
    v398 = aBlock;
    v399 = v407;
    if (sub_1CF2B971C(&v398))
    {
      sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v61 = v60;
    v62 = *v60;
    v63 = *(v60 + 8);
    v64 = *(v60 + 112);

    v65 = sub_1CEFCCC44(v61 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v63 != 2 || v62)
    {
      if (v63 != 2 || v62 != 1)
      {
        v385 = 0x2F73662F70665F5FLL;
        v386 = 0xE800000000000000;
        v387 = v62;
        v388 = v63;
        v115 = VFSItemID.description.getter(v65);
        v117 = v116;
        MEMORY[0x1D3868CC0](v115);
        v117, v118, v119, v120, v121, v122, v123, v124;
        v125 = v386;
        v79 = sub_1CF9E6888();
        v125, v126, v127, v128, v129, v130, v131, v132;
        if (v64)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v66 = MEMORY[0x1E6967280];
    }

    else
    {
      v66 = MEMORY[0x1E6967258];
    }

    v79 = *v66;
    if (v64)
    {
LABEL_22:
      v80 = v64;
LABEL_54:
      v385 = v80;
      LOBYTE(v386) = 1;
      v133 = v64;
      v134 = v80;
      v384(&v385);

      v135 = v80;
LABEL_55:

      goto LABEL_75;
    }

LABEL_53:
    v80 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v382 = a5;
  v383 = v41;

  v385 = a1;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v402 + 9) = *(v410 + 9);
    v401 = v409;
    v402[0] = v410[0];
    v399 = v407;
    v400 = v408;
    v398 = aBlock;
    if (!BYTE8(v410[1]))
    {
      v67 = *(&v402[0] + 1);
      v68 = *&v402[0];
      v69 = *(&v401 + 1);
      v70 = v401;
      v71 = *(&v400 + 1);
      v72 = v400;
      v73 = *(&v399 + 1);
      v74 = v399;
      v75 = *(&v398 + 1);
      v381 = v398;

      sub_1CF1D56D0(v75, v74, v73, v72, v71, v70, v69, v68);
      if (v67)
      {
        v76 = v67;
        v77 = v384;
        v78 = v381;
      }

      else
      {
        v112 = objc_opt_self();
        v78 = v381;
        v76 = [v112 fileProviderErrorForNonExistentItemWithIdentifier_];
        v77 = v384;
      }

      *&v389 = v76;
      BYTE8(v389) = 1;
      v113 = v67;
      v114 = v76;
      v77(&v389);

      goto LABEL_74;
    }

    sub_1CEFCCC44(&v398, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v387 = a1;
  v45 = a1;
  if (swift_dynamicCast())
  {
    v395 = v411;
    v396 = v412;
    v391 = v408;
    v392 = v409;
    v393 = v410[0];
    v394 = v410[1];
    v389 = aBlock;
    v390 = v407;
    v403 = v411;
    v404 = v412;
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v402[1] = v410[1];
    v397 = v413;
    v405 = v413;
    v398 = aBlock;
    v399 = v407;
    v46 = sub_1CF2B971C(&v398);
    switch(v46)
    {
      case 5:
        nullsub_1();
        v88 = v387;
LABEL_30:

        v90 = v384;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v82 = *v81;
        v83 = *(v81 + 8);
        sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v377)
        {
          LODWORD(v385) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v84 = v373;
          v85 = v375;
          sub_1CF9E57D8();
          v86 = sub_1CF9E53A8();
          v87 = v374;
LABEL_48:
          v87[1](v84, v85);
          v385 = v86;
          LOBYTE(v386) = 1;
          v110 = v86;
          v384(&v385);

          v111 = v387;
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v379) = v83;
        v380 = v82;
        v136 = v376;
        v137 = *(*(*(v376 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v138 = swift_dynamicCastClassUnconditional();
        v139 = swift_allocObject();
        v140 = v383;
        v139[2] = sub_1CF796A8C;
        v139[3] = v140;
        v381 = v139;
        v139[4] = v136;
        v377 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v378 = v138;
        v141 = *(v138 + 216);
        v385 = MEMORY[0x1E69E7CC0];
        v375 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v384 = v137;

        v142 = v141;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v143 = sub_1CF9E73E8();

        (*(v361 + 8))(v35, v33);
        qos_class_self();
        sub_1CF9E63B8();
        v145 = v362;
        v144 = v363;
        v146 = *(v362 + 48);
        if (v146(v20, 1, v363) == 1)
        {
          (*(v145 + 104))(v356, *MEMORY[0x1E69E7FA0], v144);
          if (v146(v20, 1, v144) != 1)
          {
            sub_1CEFCCC44(v20, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v145 + 32))(v356, v20, v144);
        }

        ObjectType = swift_getObjectType();
        v164 = v359;
        sub_1CF9E6428();
        v165 = swift_allocObject();
        v166 = v380;
        v167 = v381;
        *(v165 + 16) = v378;
        *(v165 + 24) = v166;
        *(v165 + 32) = v379;
        *(v165 + 40) = 0u;
        *(v165 + 56) = 0u;
        *(v165 + 72) = 0u;
        *(v165 + 88) = 0u;
        *(v165 + 104) = 0u;
        *(v165 + 120) = 0u;
        *(v165 + 136) = 0;
        *(v165 + 144) = 1;
        *(v165 + 152) = v143;
        *(v165 + 160) = sub_1CF796A00;
        *(v165 + 168) = v167;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v164, sub_1CF72A328, v165, ObjectType);

        (*(v371 + 8))(v164, v372);
LABEL_68:
        v170 = v364;
        sub_1CF9E6478();
        v171 = v366;
        sub_1CEFD5B64(v366);
        v172 = v365;
        sub_1CEFD5BD8(v365);
        MEMORY[0x1D3869770](v170, v171, v172, ObjectType);
        v173 = *(v369 + 8);
        v174 = v172;
        v175 = v370;
        v173(v174, v370);
        v173(v171, v175);
        (*(v367 + 8))(v170, v368);
        sub_1CF9E7448();

        swift_unknownObjectRelease();

        goto LABEL_74;
      case 1:
        nullsub_1();
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = v47[3];
        v51 = v47[6];
        v52 = v47[7];

        sub_1CF480620(v51, v52);
        v50, v53, v54, v55, v56, v57, v58, v59;
        if (v377)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v84 = v379;
          v85 = v380;
          sub_1CF9E57D8();
          v86 = sub_1CF9E50D8();
          v87 = v381;
          goto LABEL_48;
        }

        LODWORD(v380) = v49;
        v147 = v376;
        v148 = *(*(*(v376 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v149 = swift_dynamicCastClassUnconditional();
        v150 = swift_allocObject();
        v151 = v383;
        v150[2] = sub_1CF796A8C;
        v150[3] = v151;
        v381 = v150;
        v150[4] = v147;
        v378 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v379 = v149;
        v152 = *(v149 + 216);
        v385 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v384 = v148;

        v153 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v154 = sub_1CF9E73E8();

        (*(v361 + 8))(v35, v33);
        qos_class_self();
        v155 = v358;
        sub_1CF9E63B8();
        v157 = v362;
        v156 = v363;
        v158 = *(v362 + 48);
        if (v158(v155, 1, v363) == 1)
        {
          (*(v157 + 104))(v357, *MEMORY[0x1E69E7FA0], v156);
          if (v158(v155, 1, v156) != 1)
          {
            sub_1CEFCCC44(v155, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v157 + 32))(v357, v155, v156);
        }

        ObjectType = swift_getObjectType();
        v168 = v360;
        sub_1CF9E6428();
        v169 = swift_allocObject();
        *(v169 + 16) = v379;
        *(v169 + 24) = v48;
        *(v169 + 32) = v380;
        *(v169 + 40) = 0u;
        *(v169 + 56) = 0u;
        *(v169 + 72) = 0u;
        *(v169 + 88) = 0u;
        *(v169 + 104) = 0u;
        *(v169 + 120) = 0u;
        *(v169 + 136) = 0;
        *(v169 + 144) = 1;
        *(v169 + 152) = v154;
        *(v169 + 160) = sub_1CF796A04;
        *(v169 + 168) = v381;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v168, sub_1CF72A328, v169, ObjectType);

        (*(v371 + 8))(v168, v372);
        goto LABEL_68;
    }

    sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v389 = a1;
  v89 = a1;
  if (swift_dynamicCast())
  {
    *(v402 + 9) = *(v410 + 9);
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v398 = aBlock;
    v399 = v407;
    if (BYTE8(v410[1]) == 5)
    {
      v88 = v389;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v398, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v398 = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v389 > 2u)
    {
      v90 = v384;
      if (v389 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v106 = v379;
        v105 = v380;
        sub_1CF9E57D8();
        v107 = sub_1CF9E50D8();
        (*(v381 + 1))(v106, v105);
        *&aBlock = v107;
        BYTE8(aBlock) = 1;
        v108 = v107;
        v90(&aBlock);

LABEL_74:

        goto LABEL_75;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v90 = v384;
    if (v389 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v92 = v379;
    v91 = v380;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v381 + 1))(v92, v91);
    *&aBlock = v93;
    BYTE8(aBlock) = 1;
    v94 = v93;
    v90(&aBlock);

    goto LABEL_33;
  }

  *&v389 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v407 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v407);
      LODWORD(v398) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v159 = v373;
      v160 = v375;
      sub_1CF9E57D8();
      v161 = sub_1CF9E53A8();
      v374[1](v159, v160);
      *&v398 = v161;
      BYTE8(v398) = 1;
      v162 = v161;
      v384(&v398);

      v111 = v389;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&aBlock = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    *(v97 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v97 + 40) = v98;
    v99 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v100 = FPLocv();

    v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v103 = v102;

    *(v97 + 72) = MEMORY[0x1E69E6158];
    *(v97 + 48) = v101;
    *(v97 + 56) = v103;
    sub_1CF4E04E8(v97);
    swift_setDeallocating();
    sub_1CEFCCC44(v97 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v93 = v398;
    *&aBlock = v398;
    BYTE8(aBlock) = 1;
    v104 = v398;
    v384(&aBlock);

LABEL_33:

    return;
  }

  v387 = a1;
  v109 = a1;
  if (swift_dynamicCast())
  {
    v395 = v411;
    v396 = v412;
    v391 = v408;
    v392 = v409;
    v393 = v410[0];
    v394 = v410[1];
    v389 = aBlock;
    v390 = v407;
    v403 = v411;
    v404 = v412;
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v402[1] = v410[1];
    v397 = v413;
    v405 = v413;
    v398 = aBlock;
    v399 = v407;
    if (sub_1CF2B971C(&v398) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v398 = a1;
  v176 = a1;
  if (swift_dynamicCast())
  {
    v177 = FPDomainUnavailableError();
    if (!v177)
    {
LABEL_122:

      __break(1u);
LABEL_123:
      MEMORY[0x1EEE9AC00](v277);
      v351 = v43;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v350, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v178 = v177;
    *&aBlock = v177;
    BYTE8(aBlock) = 1;
    v179 = v177;
    v384(&aBlock);

    v111 = v398;
    goto LABEL_73;
  }

  v414 = a1;
  v180 = a1;
  if (swift_dynamicCast())
  {
    v395 = v411;
    v396 = v412;
    v391 = v408;
    v392 = v409;
    v393 = v410[0];
    v394 = v410[1];
    v389 = aBlock;
    v390 = v407;
    v403 = v411;
    v404 = v412;
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    v402[1] = v410[1];
    v397 = v413;
    v405 = v413;
    v398 = aBlock;
    v399 = v407;
    if (sub_1CF2B971C(&v398) == 10)
    {
      nullsub_1();
      v182 = *(v181 + 16);
      if (!v182)
      {
        LODWORD(v385) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v183 = v373;
        v184 = v375;
        sub_1CF9E57D8();
        v182 = sub_1CF9E53A8();
        v374[1](v183, v184);
      }

      v387 = v182;
      v388 = 1;
      sub_1CEFCCBDC(&v389, &v385, &unk_1EC4BE320, &unk_1CFA08B50);
      v185 = v182;
      v384(&v387);

      sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
      v135 = v182;
      goto LABEL_55;
    }

    sub_1CEFCCC44(&v389, &unk_1EC4BE320, &unk_1CFA08B50);
    v187 = v414;
    goto LABEL_92;
  }

  *&v389 = a1;
  v186 = a1;
  if (swift_dynamicCast())
  {
    v400 = v408;
    v401 = v409;
    v402[0] = v410[0];
    *(v402 + 9) = *(v410 + 9);
    v398 = aBlock;
    v399 = v407;
    sub_1CEFCCC44(&v398, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_93:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v197 = v379;
    v196 = v380;
    sub_1CF9E57D8();
    v93 = sub_1CF9E50D8();
    (*(v381 + 1))(v197, v196);
    *&aBlock = v93;
    BYTE8(aBlock) = 1;
    v198 = v93;
    v384(&aBlock);

    goto LABEL_33;
  }

  *&aBlock = a1;
  v188 = a1;
  v189 = swift_dynamicCast();

  if (v189)
  {
    goto LABEL_93;
  }

  *&v398 = a1;
  v190 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v407, *(&v407 + 1), v408, v191, v192, v193);
LABEL_91:
    v187 = v398;
LABEL_92:

    goto LABEL_93;
  }

  *&v398 = a1;
  v194 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v407, SBYTE8(v407));
    goto LABEL_91;
  }

  *&v398 = a1;
  v195 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_91;
  }

  v199 = sub_1CF9E57E8();
  v200 = [v199 userInfo];
  v201 = sub_1CF9E6638();

  v202 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v210 = v203;
  if (!*v201->tree)
  {
    v201, v203, v204, v205, v206, v207, v208, v209;
    v238 = v210;
LABEL_100:
    v238, v220, v221, v222, v223, v224, v225, v226;
    goto LABEL_101;
  }

  v211 = sub_1CEFE4328(v202, v203);
  v213 = v212;
  v210, v212, v214, v215, v216, v217, v218, v219;
  if ((v213 & 1) == 0)
  {
    v238 = v201;
    goto LABEL_100;
  }

  sub_1CEFD1104(*v201[1].tester + 32 * v211, &aBlock);
  v201, v227, v228, v229, v230, v231, v232, v233;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v234 = v398;
    v235 = v382;

    v236 = v199;
    v237 = v234;
    sub_1CF77F5D0(v237, v377 & 1, v376, v236, v384, v235, &unk_1F4C14CA0, &unk_1F4C14CC8, sub_1CF796A8C, &unk_1F4C14DB8, sub_1CF7969FC, &unk_1F4C14DE0, sub_1CF796A04, sub_1CF72A328, &unk_1F4C14D68, &unk_1F4C14D90, sub_1CF796A00, sub_1CF72A328, &unk_1F4C14CF0, &unk_1F4C14D18, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_312_0, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_101:
  v239 = swift_allocObject();
  v240 = [v199 userInfo];
  v241 = sub_1CF9E6638();

  v242 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v250 = v243;
  if (!*v241->tree)
  {
    v241, v243, v244, v245, v246, v247, v248, v249;
    v284 = v250;
LABEL_117:
    v284, v259, v260, v261, v262, v263, v264, v265;
    goto LABEL_118;
  }

  v251 = sub_1CEFE4328(v242, v243);
  v43 = v252;
  v250, v252, v253, v254, v255, v256, v257, v258;
  if ((v43 & 1) == 0)
  {
    v284 = v241;
    goto LABEL_117;
  }

  sub_1CEFD1104(*v241[1].tester + 32 * v251, &aBlock);
  v241, v266, v267, v268, v269, v270, v271, v272;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_118:
    v285 = v384;
    swift_deallocUninitializedObject();
    *&aBlock = a1;
    BYTE8(aBlock) = 1;
    v286 = a1;
    v285(&aBlock);

    return;
  }

  v239[2] = v398;
  v273 = dispatch_group_create();
  v274 = v239[2];
  if (v274 >> 62)
  {
    goto LABEL_120;
  }

  v275 = *((v274 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v275)
  {
    goto LABEL_126;
  }

  do
  {
    v276 = 0;
    while (1)
    {
      v43 = v273;
      v277 = objc_sync_enter(v43);
      if (v277)
      {
        goto LABEL_123;
      }

      swift_beginAccess();
      v278 = v239[2];
      if ((v278 & 0xC000000000000001) != 0)
      {
        v279 = MEMORY[0x1D3869C30](v276);
        goto LABEL_111;
      }

      if (v276 >= *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v279 = *(v278 + 8 * v276 + 32);
LABEL_111:
      v280 = v279;
      swift_endAccess();
      v281 = objc_sync_exit(v43);
      if (v281)
      {
        MEMORY[0x1EEE9AC00](v281);
        v351 = v43;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v350, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v43);
      v282 = v43;

      v283 = v280;
      sub_1CF774BF8(v283, v377 & 1, v376, v282, v239, v276);

      if (v275 == ++v276)
      {
        goto LABEL_126;
      }
    }

    __break(1u);
LABEL_120:
    v287 = sub_1CF9E7818();
    if (v287 < 0)
    {
      __break(1u);
      goto LABEL_122;
    }

    v275 = v287;
  }

  while (v287);
LABEL_126:
  if (v377)
  {
    v288 = [v199 userInfo];
    v289 = sub_1CF9E6638();

    v290 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v292 = v291;
    swift_beginAccess();
    v293 = v239[2];
    *(&v407 + 1) = v381;
    *&aBlock = v293;
    sub_1CEFE9EB8(&aBlock, &v398);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v385 = v289;
    sub_1CF1D154C(&v398, v290, v292, isUniquelyReferenced_nonNull_native);
    v292, v295, v296, v297, v298, v299, v300, v301;
    v302 = [v199 domain];
    if (!v302)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v304 = v303;
      v302 = sub_1CF9E6888();
      v304, v305, v306, v307, v308, v309, v310, v311;
    }

    v312 = [v199 code];
    v313 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v314 = sub_1CF9E6618();

    v315 = [v313 initWithDomain:v302 code:v312 userInfo:v314];

    *&aBlock = v315;
    BYTE8(aBlock) = 1;
    v316 = v315;
    v384(&aBlock);

LABEL_75:
  }

  else
  {
    v317 = *(*(v376 + 16) + 64);
    v318 = swift_allocObject();
    v318[2] = v199;
    v318[3] = v239;
    v318[4] = sub_1CF796A8C;
    v318[5] = v383;

    v319 = v317;
    v384 = v199;

    v320 = fpfs_current_log();
    v381 = fpfs_adopt_log();
    v321 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v322;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v323 = sub_1CF9E7988();
    v325 = v324;
    MEMORY[0x1D3868CC0](v323);
    v325, v326, v327, v328, v329, v330, v331, v332;
    v333 = *(&aBlock + 1);
    sub_1CF9E6978();
    v333, v334, v335, v336, v337, v338, v339, v340;
    v341 = __fp_log_fork();

    *(v321 + 16) = v341;
    v342 = swift_allocObject();
    *(v342 + 16) = v320;
    *(v342 + 24) = v321;
    v379 = v321;
    *(v342 + 32) = v319;
    *(v342 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v342 + 48) = 48;
    *(v342 + 56) = 2;
    *(v342 + 64) = sub_1CF796ACC;
    *(v342 + 72) = v318;
    *&v408 = sub_1CF2B9F54;
    *(&v408 + 1) = v342;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v407 = sub_1CEFCA444;
    *(&v407 + 1) = &block_descriptor_273_0;
    v343 = _Block_copy(&aBlock);
    v378 = v319;
    v380 = v320;

    v344 = v352;
    sub_1CF9E63F8();
    *&v398 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v345 = v353;
    v346 = v355;
    sub_1CF9E77B8();
    v347 = v378;
    sub_1CF9E7308();
    _Block_release(v343);
    (*(v354 + 8))(v345, v346);
    (*(v371 + 8))(v344, v372);

    v348 = v381;
    v349 = fpfs_adopt_log();
  }
}