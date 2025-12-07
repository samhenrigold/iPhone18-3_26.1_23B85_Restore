void sub_1CF78F520(void *a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v374 = a3;
  LODWORD(v375) = a2;
  v8 = sub_1CF9E63A8();
  v354 = *(v8 - 8);
  v355 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v353 = &v351 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E53C8();
  v372 = *(v10 - 8);
  v373 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v371 = &v351 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6388();
  v367 = *(v12 - 8);
  v368 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v363 = (&v351 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v364 = &v351 - v15;
  v16 = sub_1CF9E6498();
  v365 = *(v16 - 8);
  v366 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v362 = &v351 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v351 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v351 - v22;
  v24 = sub_1CF9E63D8();
  v360 = *(v24 - 8);
  v361 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v351 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v356 = &v351 - v28;
  v29 = sub_1CF9E6448();
  v369 = *(v29 - 8);
  v370 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v352 = &v351 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v357 = &v351 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v358 = &v351 - v34;
  v35 = sub_1CF9E73D8();
  v359 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v351 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v376 = &v351 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CF9E5268();
  v41 = *(v40 - 1);
  v378 = v40;
  v379 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v377 = &v351 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_allocObject();
  v381 = a4;
  v382 = v43;
  *(v43 + 16) = a4;
  *(v43 + 24) = a5;
  v419[0] = a1;
  swift_retain_n();
  v44 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v400 = v416;
    v401 = v417;
    v396 = v413;
    v397 = v414;
    v398 = *v415;
    v399 = *&v415[16];
    v394 = aBlock;
    v395 = v412;
    v408 = v416;
    v409 = v417;
    v405 = v413;
    v406 = v414;
    v407[0] = *v415;
    v407[1] = *&v415[16];
    v402 = v418;
    v410 = v418;
    v403 = aBlock;
    v404 = v412;
    if (sub_1CF2B971C(&v403))
    {
      sub_1CEFCCC44(&v394, &unk_1EC4BE320, &unk_1CFA08B50);
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
      v69 = v381;
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
        *&v385 = 0x2F73662F70665F5FLL;
        *(&v385 + 1) = 0xE800000000000000;
        v383 = v64;
        v384 = v65;
        v112 = VFSItemID.description.getter(v67);
        v114 = v113;
        MEMORY[0x1D3868CC0](v112);
        v114, v115, v116, v117, v118, v119, v120, v121;
        v122 = *(&v385 + 1);
        v68 = sub_1CF9E6888();
        v122, v123, v124, v125, v126, v127, v128, v129;
        if (v66)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v68 = *MEMORY[0x1E6967258];
      v69 = v381;
      if (v66)
      {
LABEL_16:
        v70 = v66;
LABEL_54:
        v130 = v66;
        v69(0, 0, v70);

LABEL_73:

        return;
      }
    }

    v70 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v380 = a5;

  *&v394 = a1;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v407 + 9) = *&v415[9];
    v406 = v414;
    v407[0] = *v415;
    v404 = v412;
    v405 = v413;
    v403 = aBlock;
    if (!v415[24])
    {
      v71 = *(&v407[0] + 1);
      v72 = *&v407[0];
      v73 = *(&v406 + 1);
      v74 = v406;
      v75 = *(&v405 + 1);
      v76 = v405;
      v77 = *(&v404 + 1);
      v78 = v404;
      v79 = *(&v403 + 1);
      v379 = v403;

      sub_1CF1D56D0(v79, v78, v77, v76, v75, v74, v73, v72);
      if (v71)
      {
        v80 = v71;
        v81 = v381;
        v82 = v379;
      }

      else
      {
        v110 = objc_opt_self();
        v82 = v379;
        v80 = [v110 fileProviderErrorForNonExistentItemWithIdentifier_];
        v81 = v381;
      }

      v111 = v71;
      v81(0, 0, v80);

      v108 = v394;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v403, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v385 = a1;
  v47 = a1;
  if (swift_dynamicCast())
  {
    v400 = v416;
    v401 = v417;
    v396 = v413;
    v397 = v414;
    v398 = *v415;
    v399 = *&v415[16];
    v394 = aBlock;
    v395 = v412;
    v408 = v416;
    v409 = v417;
    v405 = v413;
    v406 = v414;
    v407[0] = *v415;
    v407[1] = *&v415[16];
    v402 = v418;
    v410 = v418;
    v403 = aBlock;
    v404 = v412;
    v48 = sub_1CF2B971C(&v403);
    switch(v48)
    {
      case 5:
        nullsub_1();
        v90 = v385;
LABEL_30:

        v92 = v381;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v84 = *v83;
        v85 = *(v83 + 8);
        sub_1CEFCCC44(&v394, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v375)
        {
          LODWORD(v383) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v86 = v371;
          v87 = v373;
          sub_1CF9E57D8();
          v88 = sub_1CF9E53A8();
          v89 = v372;
LABEL_48:
          v89[1](v86, v87);
          (v381)(0, 0, v88);

          v108 = v385;
          goto LABEL_72;
        }

        LODWORD(v377) = v85;
        v378 = v84;
        v131 = v374;
        v132 = *(*(*(v374 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v133 = swift_dynamicCastClassUnconditional();
        v134 = swift_allocObject();
        v135 = v382;
        v134[2] = sub_1CF796004;
        v134[3] = v135;
        v379 = v134;
        v134[4] = v131;
        v375 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v376 = v133;
        v136 = *(v133 + 216);
        v383 = MEMORY[0x1E69E7CC0];
        v373 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v381 = v132;

        v137 = v136;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v138 = sub_1CF9E73E8();

        (*(v359 + 8))(v37, v35);
        qos_class_self();
        sub_1CF9E63B8();
        v140 = v360;
        v139 = v361;
        v141 = *(v360 + 48);
        if (v141(v20, 1, v361) == 1)
        {
          (*(v140 + 104))(v26, *MEMORY[0x1E69E7FA0], v139);
          if (v141(v20, 1, v139) != 1)
          {
            sub_1CEFCCC44(v20, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v140 + 32))(v26, v20, v139);
        }

        ObjectType = swift_getObjectType();
        v157 = v357;
        sub_1CF9E6428();
        v158 = swift_allocObject();
        v159 = v378;
        v160 = v379;
        *(v158 + 16) = v376;
        *(v158 + 24) = v159;
        *(v158 + 32) = v377;
        *(v158 + 40) = 0u;
        *(v158 + 56) = 0u;
        *(v158 + 72) = 0u;
        *(v158 + 88) = 0u;
        *(v158 + 104) = 0u;
        *(v158 + 120) = 0u;
        *(v158 + 136) = 0;
        *(v158 + 144) = 1;
        *(v158 + 152) = v138;
        *(v158 + 160) = sub_1CF796A00;
        *(v158 + 168) = v160;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v157, sub_1CF72A328, v158, ObjectType);

        (*(v369 + 8))(v157, v370);
        v161 = v362;
        sub_1CF9E6478();
        v162 = v364;
        sub_1CEFD5B64(v364);
        v163 = v363;
        sub_1CEFD5BD8(v363);
        MEMORY[0x1D3869770](v161, v162, v163, ObjectType);
        v164 = *(v367 + 8);
        v165 = v163;
        v166 = v368;
        v164(v165, v368);
        v164(v162, v166);
        (*(v365 + 8))(v161, v366);
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
        if (v375)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v86 = v377;
          v87 = v378;
          sub_1CF9E57D8();
          v88 = sub_1CF9E50D8();
          v89 = v379;
          goto LABEL_48;
        }

        LODWORD(v377) = v51;
        v378 = v50;
        v142 = v374;
        v143 = *(*(*(v374 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v144 = swift_dynamicCastClassUnconditional();
        v145 = swift_allocObject();
        v146 = v382;
        v145[2] = sub_1CF796004;
        v145[3] = v146;
        v379 = v145;
        v145[4] = v142;
        v375 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v376 = v144;
        v147 = *(v144 + 216);
        v383 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v381 = v143;

        v148 = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v149 = sub_1CF9E73E8();

        (*(v359 + 8))(v37, v35);
        qos_class_self();
        sub_1CF9E63B8();
        v151 = v360;
        v150 = v361;
        v152 = *(v360 + 48);
        if (v152(v23, 1, v361) == 1)
        {
          (*(v151 + 104))(v356, *MEMORY[0x1E69E7FA0], v150);
          if (v152(v23, 1, v150) != 1)
          {
            sub_1CEFCCC44(v23, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v151 + 32))(v356, v23, v150);
        }

        v167 = swift_getObjectType();
        v168 = v358;
        sub_1CF9E6428();
        v169 = swift_allocObject();
        v170 = v378;
        v171 = v379;
        *(v169 + 16) = v376;
        *(v169 + 24) = v170;
        *(v169 + 32) = v377;
        *(v169 + 40) = 0u;
        *(v169 + 56) = 0u;
        *(v169 + 72) = 0u;
        *(v169 + 88) = 0u;
        *(v169 + 104) = 0u;
        *(v169 + 120) = 0u;
        *(v169 + 136) = 0;
        *(v169 + 144) = 1;
        *(v169 + 152) = v149;
        *(v169 + 160) = sub_1CF796A04;
        *(v169 + 168) = v171;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v168, sub_1CF72A328, v169, v167);

        (*(v369 + 8))(v168, v370);
        v172 = v362;
        sub_1CF9E6478();
        v173 = v364;
        sub_1CEFD5B64(v364);
        v174 = v363;
        sub_1CEFD5BD8(v363);
        MEMORY[0x1D3869770](v172, v173, v174, v167);
        v175 = *(v367 + 8);
        v176 = v174;
        v177 = v368;
        v175(v176, v368);
        v175(v173, v177);
        (*(v365 + 8))(v172, v366);
        sub_1CF9E7448();
        goto LABEL_67;
    }

    sub_1CEFCCC44(&v394, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v394 = a1;
  v91 = a1;
  if (swift_dynamicCast())
  {
    *(v407 + 9) = *&v415[9];
    v405 = v413;
    v406 = v414;
    v407[0] = *v415;
    v403 = aBlock;
    v404 = v412;
    if (v415[24] == 5)
    {
      v90 = v394;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v403, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if (v403 > 2u)
    {
      v92 = v381;
      if (v403 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v106 = v377;
        v105 = v378;
        sub_1CF9E57D8();
        v107 = sub_1CF9E50D8();
        (*(v379 + 1))(v106, v105);
        v92(0, 0, v107);

        v108 = aBlock;
LABEL_72:

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v92 = v381;
    if (v403 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v94 = v377;
    v93 = v378;
    sub_1CF9E57D8();
    v95 = sub_1CF9E50D8();
    (*(v379 + 1))(v94, v93);
    v92(0, 0, v95);
    goto LABEL_33;
  }

  *&v403 = a1;
  v97 = a1;
  if (swift_dynamicCast())
  {
    if ((v412 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v412);
      LODWORD(v394) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v153 = v371;
      v154 = v373;
      sub_1CF9E57D8();
      v155 = sub_1CF9E53A8();
      v372[1](v153, v154);
      (v381)(0, 0, v155);

      v108 = v403;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v403 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1CF9FA450;
    *(v98 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v98 + 40) = v99;
    v100 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v101 = FPLocv();

    v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v104 = v103;

    *(v98 + 72) = MEMORY[0x1E69E6158];
    *(v98 + 48) = v102;
    *(v98 + 56) = v104;
    sub_1CF4E04E8(v98);
    swift_setDeallocating();
    sub_1CEFCCC44(v98 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v95 = aBlock;
    (v381)(0, 0, aBlock);
LABEL_33:

    return;
  }

  *&v385 = a1;
  v109 = a1;
  if (swift_dynamicCast())
  {
    v400 = v416;
    v401 = v417;
    v396 = v413;
    v397 = v414;
    v398 = *v415;
    v399 = *&v415[16];
    v394 = aBlock;
    v395 = v412;
    v408 = v416;
    v409 = v417;
    v405 = v413;
    v406 = v414;
    v407[0] = *v415;
    v407[1] = *&v415[16];
    v402 = v418;
    v410 = v418;
    v403 = aBlock;
    v404 = v412;
    if (sub_1CF2B971C(&v403) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v394, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v178 = a1;
  if (swift_dynamicCast())
  {
    v179 = FPDomainUnavailableError();
    if (!v179)
    {
LABEL_120:

      __break(1u);
LABEL_121:
      MEMORY[0x1EEE9AC00](v279);
      v350 = v45;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v349, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v180 = v179;
    (v381)(0, 0, v179);

    v108 = aBlock;
    goto LABEL_72;
  }

  v383 = a1;
  v181 = a1;
  if (swift_dynamicCast())
  {
    v400 = v416;
    v401 = v417;
    v396 = v413;
    v397 = v414;
    v398 = *v415;
    v399 = *&v415[16];
    v394 = aBlock;
    v395 = v412;
    v408 = v416;
    v409 = v417;
    v405 = v413;
    v406 = v414;
    v407[0] = *v415;
    v407[1] = *&v415[16];
    v402 = v418;
    v410 = v418;
    v403 = aBlock;
    v404 = v412;
    if (sub_1CF2B971C(&v403) == 10)
    {
      nullsub_1();
      v183 = *(v182 + 16);
      if (!v183)
      {
        LODWORD(v385) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v184 = v371;
        v185 = v373;
        sub_1CF9E57D8();
        v183 = sub_1CF9E53A8();
        v372[1](v184, v185);
      }

      v186 = v381;
      v391 = v400;
      v392 = v401;
      v393 = v402;
      v387 = v396;
      v388 = v397;
      v389 = v398;
      v390 = v399;
      v385 = v394;
      v386 = v395;
      nullsub_1();
      v188 = *(v187 + 16);
      v186(0, 0, v183);
      sub_1CEFCCC44(&v394, &unk_1EC4BE320, &unk_1CFA08B50);

      v108 = v383;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v394, &unk_1EC4BE320, &unk_1CFA08B50);
    v190 = v383;
    goto LABEL_90;
  }

  *&v394 = a1;
  v189 = a1;
  if (swift_dynamicCast())
  {
    v405 = v413;
    v406 = v414;
    v407[0] = *v415;
    *(v407 + 9) = *&v415[9];
    v403 = aBlock;
    v404 = v412;
    sub_1CEFCCC44(&v403, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_91:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v200 = v377;
    v199 = v378;
    sub_1CF9E57D8();
    v95 = sub_1CF9E50D8();
    (*(v379 + 1))(v200, v199);
    (v381)(0, 0, v95);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v191 = a1;
  v192 = swift_dynamicCast();

  if (v192)
  {
    goto LABEL_91;
  }

  *&v403 = a1;
  v193 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v412, *(&v412 + 1), v413, v194, v195, v196);
LABEL_89:
    v190 = v403;
LABEL_90:

    goto LABEL_91;
  }

  *&v403 = a1;
  v197 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v412, SBYTE8(v412));
    goto LABEL_89;
  }

  *&v403 = a1;
  v198 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_89;
  }

  v201 = sub_1CF9E57E8();
  v202 = [v201 userInfo];
  v203 = sub_1CF9E6638();

  v204 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v212 = v205;
  if (!*v203->tree)
  {
    v203, v205, v206, v207, v208, v209, v210, v211;
    v240 = v212;
LABEL_98:
    v240, v222, v223, v224, v225, v226, v227, v228;
    goto LABEL_99;
  }

  v213 = sub_1CEFE4328(v204, v205);
  v215 = v214;
  v212, v214, v216, v217, v218, v219, v220, v221;
  if ((v215 & 1) == 0)
  {
    v240 = v203;
    goto LABEL_98;
  }

  sub_1CEFD1104(*v203[1].tester + 32 * v213, &aBlock);
  v203, v229, v230, v231, v232, v233, v234, v235;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v236 = v403;
    v237 = v380;

    v238 = v201;
    v239 = v236;
    sub_1CF782688(v239, v375 & 1, v374, v238, v381, v237, &unk_1F4C15128, &unk_1F4C15150, sub_1CF796AD4, sub_1CF782284, &unk_1F4C15240, sub_1CF7969FC, &unk_1F4C15268, sub_1CF796A04, sub_1CF72A328, &unk_1F4C151F0, &unk_1F4C15218, sub_1CF796A00, sub_1CF72A328, &unk_1F4C15178, &unk_1F4C151A0, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_433, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_99:
  v241 = swift_allocObject();
  v242 = [v201 userInfo];
  v243 = sub_1CF9E6638();

  v244 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v252 = v245;
  if (!*v243->tree)
  {
    v243, v245, v246, v247, v248, v249, v250, v251;
    v286 = v252;
LABEL_115:
    v286, v261, v262, v263, v264, v265, v266, v267;
    goto LABEL_116;
  }

  v253 = sub_1CEFE4328(v244, v245);
  v45 = v254;
  v252, v254, v255, v256, v257, v258, v259, v260;
  if ((v45 & 1) == 0)
  {
    v286 = v243;
    goto LABEL_115;
  }

  sub_1CEFD1104(*v243[1].tester + 32 * v253, &aBlock);
  v243, v268, v269, v270, v271, v272, v273, v274;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    swift_deallocUninitializedObject();
    (v381)(0, 0, a1);

    return;
  }

  v241[2] = v403;
  v275 = dispatch_group_create();
  v276 = v241[2];
  if (v276 >> 62)
  {
    goto LABEL_118;
  }

  v277 = *((v276 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v277)
  {
    goto LABEL_124;
  }

  do
  {
    v278 = 0;
    while (1)
    {
      v45 = v275;
      v279 = objc_sync_enter(v45);
      if (v279)
      {
        goto LABEL_121;
      }

      swift_beginAccess();
      v280 = v241[2];
      if ((v280 & 0xC000000000000001) != 0)
      {
        v281 = MEMORY[0x1D3869C30](v278);
        goto LABEL_109;
      }

      if (v278 >= *((v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v281 = *(v280 + 8 * v278 + 32);
LABEL_109:
      v282 = v281;
      swift_endAccess();
      v283 = objc_sync_exit(v45);
      if (v283)
      {
        MEMORY[0x1EEE9AC00](v283);
        v350 = v45;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v349, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v45);
      v284 = v45;

      v285 = v282;
      sub_1CF774BF8(v285, v375 & 1, v374, v284, v241, v278);

      if (v277 == ++v278)
      {
        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_118:
    v287 = sub_1CF9E7818();
    if (v287 < 0)
    {
      __break(1u);
      goto LABEL_120;
    }

    v277 = v287;
  }

  while (v287);
LABEL_124:
  if (v375)
  {
    v288 = [v201 userInfo];
    v289 = sub_1CF9E6638();

    v290 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v292 = v291;
    swift_beginAccess();
    v293 = v241[2];
    *(&v412 + 1) = v379;
    *&aBlock = v293;
    sub_1CEFE9EB8(&aBlock, &v403);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v385 = v289;
    sub_1CF1D154C(&v403, v290, v292, isUniquelyReferenced_nonNull_native);
    v292, v295, v296, v297, v298, v299, v300, v301;
    v302 = [v201 domain];
    if (!v302)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v304 = v303;
      v302 = sub_1CF9E6888();
      v304, v305, v306, v307, v308, v309, v310, v311;
    }

    v312 = [v201 code];
    v313 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v314 = sub_1CF9E6618();

    v315 = [v313 initWithDomain:v302 code:v312 userInfo:v314];

    (v381)(0, 0, v315);
  }

  else
  {
    v316 = *(*(v374 + 16) + 64);
    v317 = swift_allocObject();
    v317[2] = v201;
    v317[3] = v241;
    v317[4] = sub_1CF796004;
    v317[5] = v382;

    v318 = v316;
    v381 = v201;

    v319 = fpfs_current_log();
    v379 = fpfs_adopt_log();
    v320 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v321;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v322 = sub_1CF9E7988();
    v324 = v323;
    MEMORY[0x1D3868CC0](v322);
    v324, v325, v326, v327, v328, v329, v330, v331;
    v332 = *(&aBlock + 1);
    sub_1CF9E6978();
    v332, v333, v334, v335, v336, v337, v338, v339;
    v340 = __fp_log_fork();

    *(v320 + 16) = v340;
    v341 = swift_allocObject();
    *(v341 + 16) = v319;
    *(v341 + 24) = v320;
    v377 = v320;
    *(v341 + 32) = v318;
    *(v341 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v341 + 48) = 48;
    *(v341 + 56) = 2;
    *(v341 + 64) = sub_1CF796ACC;
    *(v341 + 72) = v317;
    *&v413 = sub_1CF2B9F54;
    *(&v413 + 1) = v341;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v412 = sub_1CEFCA444;
    *(&v412 + 1) = &block_descriptor_394;
    v342 = _Block_copy(&aBlock);
    v376 = v318;
    v378 = v319;

    v343 = v352;
    sub_1CF9E63F8();
    *&v403 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v344 = v353;
    v345 = v355;
    sub_1CF9E77B8();
    v346 = v376;
    sub_1CF9E7308();
    _Block_release(v342);
    (*(v354 + 8))(v344, v345);
    (*(v369 + 8))(v343, v370);

    v347 = v379;
    v348 = fpfs_adopt_log();
  }
}

void sub_1CF791DB8(void *a1, int a2, uint64_t a3, void (*a4)(void, id), void *a5)
{
  v364 = a3;
  LODWORD(v365) = a2;
  v8 = sub_1CF9E63A8();
  v344 = *(v8 - 8);
  v345 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v343 = &v341 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E53C8();
  v362 = *(v10 - 8);
  v363 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v361 = &v341 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6388();
  v357 = *(v12 - 8);
  v358 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v353 = (&v341 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v354 = &v341 - v15;
  v16 = sub_1CF9E6498();
  v355 = *(v16 - 8);
  v356 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v352 = &v341 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v341 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v341 - v22;
  v24 = sub_1CF9E63D8();
  v350 = *(v24 - 8);
  v351 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v341 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v346 = &v341 - v28;
  v29 = sub_1CF9E6448();
  v359 = *(v29 - 8);
  v360 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v342 = &v341 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v347 = &v341 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v348 = &v341 - v34;
  v35 = sub_1CF9E73D8();
  v349 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v341 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v366 = &v341 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CF9E5268();
  v41 = *(v40 - 1);
  v368 = v40;
  v369 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v367 = &v341 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_allocObject();
  v371 = a4;
  v372 = v43;
  *(v43 + 16) = a4;
  *(v43 + 24) = a5;
  v409[0] = a1;
  swift_retain_n();
  v44 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v390 = v406;
    v391 = v407;
    v386 = v403;
    v387 = v404;
    v388 = *v405;
    v389 = *&v405[16];
    v384 = aBlock;
    v385 = v402;
    v398 = v406;
    v399 = v407;
    v395 = v403;
    v396 = v404;
    v397[0] = *v405;
    v397[1] = *&v405[16];
    v392 = v408;
    v400 = v408;
    v393 = aBlock;
    v394 = v402;
    if (sub_1CF2B971C(&v393))
    {
      sub_1CEFCCC44(&v384, &unk_1EC4BE320, &unk_1CFA08B50);
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
        *&v375 = 0x2F73662F70665F5FLL;
        *(&v375 + 1) = 0xE800000000000000;
        v373 = v64;
        v374 = v65;
        v111 = VFSItemID.description.getter(v67);
        v113 = v112;
        MEMORY[0x1D3868CC0](v111);
        v113, v114, v115, v116, v117, v118, v119, v120;
        v121 = *(&v375 + 1);
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
      v371(0, v81);

LABEL_73:

      return;
    }

LABEL_53:
    v81 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v370 = a5;

  *&v384 = a1;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v397 + 9) = *&v405[9];
    v396 = v404;
    v397[0] = *v405;
    v394 = v402;
    v395 = v403;
    v393 = aBlock;
    if (!v405[24])
    {
      v69 = *(&v397[0] + 1);
      v70 = *&v397[0];
      v71 = *(&v396 + 1);
      v72 = v396;
      v73 = *(&v395 + 1);
      v74 = v395;
      v75 = *(&v394 + 1);
      v76 = v394;
      v77 = *(&v393 + 1);
      v369 = v393;

      sub_1CF1D56D0(v77, v76, v75, v74, v73, v72, v71, v70);
      if (v69)
      {
        v78 = v69;
        v79 = v369;
      }

      else
      {
        v109 = objc_opt_self();
        v79 = v369;
        v78 = [v109 fileProviderErrorForNonExistentItemWithIdentifier_];
      }

      v110 = v69;
      v371(0, v78);

      v107 = v384;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v393, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v375 = a1;
  v47 = a1;
  if (swift_dynamicCast())
  {
    v390 = v406;
    v391 = v407;
    v386 = v403;
    v387 = v404;
    v388 = *v405;
    v389 = *&v405[16];
    v384 = aBlock;
    v385 = v402;
    v398 = v406;
    v399 = v407;
    v395 = v403;
    v396 = v404;
    v397[0] = *v405;
    v397[1] = *&v405[16];
    v392 = v408;
    v400 = v408;
    v393 = aBlock;
    v394 = v402;
    v48 = sub_1CF2B971C(&v393);
    switch(v48)
    {
      case 5:
        nullsub_1();
        v89 = v375;
LABEL_30:

        v91 = v371;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v83 = *v82;
        v84 = *(v82 + 8);
        sub_1CEFCCC44(&v384, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v365)
        {
          LODWORD(v373) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v85 = v361;
          v86 = v363;
          sub_1CF9E57D8();
          v87 = sub_1CF9E53A8();
          v88 = v362;
LABEL_48:
          v88[1](v85, v86);
          v371(0, v87);

          v107 = v375;
          goto LABEL_72;
        }

        LODWORD(v367) = v84;
        v368 = v83;
        v130 = v364;
        v131 = *(*(*(v364 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v132 = swift_dynamicCastClassUnconditional();
        v133 = swift_allocObject();
        v134 = v372;
        v133[2] = sub_1CF5534C4;
        v133[3] = v134;
        v369 = v133;
        v133[4] = v130;
        v365 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v366 = v132;
        v135 = *(v132 + 216);
        v373 = MEMORY[0x1E69E7CC0];
        v363 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v371 = v131;

        v136 = v135;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v137 = sub_1CF9E73E8();

        (*(v349 + 8))(v37, v35);
        qos_class_self();
        sub_1CF9E63B8();
        v139 = v350;
        v138 = v351;
        v140 = *(v350 + 48);
        if (v140(v20, 1, v351) == 1)
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
        v156 = v347;
        sub_1CF9E6428();
        v157 = swift_allocObject();
        v158 = v368;
        v159 = v369;
        *(v157 + 16) = v366;
        *(v157 + 24) = v158;
        *(v157 + 32) = v367;
        *(v157 + 40) = 0u;
        *(v157 + 56) = 0u;
        *(v157 + 72) = 0u;
        *(v157 + 88) = 0u;
        *(v157 + 104) = 0u;
        *(v157 + 120) = 0u;
        *(v157 + 136) = 0;
        *(v157 + 144) = 1;
        *(v157 + 152) = v137;
        *(v157 + 160) = sub_1CF796A00;
        *(v157 + 168) = v159;

        swift_unknownObjectRetain();

LABEL_67:
        sub_1CEFD5828(0, v156, sub_1CF72A328, v157, ObjectType);

        (*(v359 + 8))(v156, v360);
        v162 = v352;
        sub_1CF9E6478();
        v163 = v354;
        sub_1CEFD5B64(v354);
        v164 = v353;
        sub_1CEFD5BD8(v353);
        MEMORY[0x1D3869770](v162, v163, v164, ObjectType);
        v165 = *(v357 + 8);
        v166 = v164;
        v167 = v358;
        v165(v166, v358);
        v165(v163, v167);
        (*(v355 + 8))(v162, v356);
        sub_1CF9E7448();

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
        if (v365)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v85 = v367;
          v86 = v368;
          sub_1CF9E57D8();
          v87 = sub_1CF9E50D8();
          v88 = v369;
          goto LABEL_48;
        }

        LODWORD(v367) = v51;
        v368 = v50;
        v141 = v364;
        v142 = *(*(*(v364 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v143 = swift_dynamicCastClassUnconditional();
        v144 = swift_allocObject();
        v145 = v372;
        v144[2] = sub_1CF5534C4;
        v144[3] = v145;
        v369 = v144;
        v144[4] = v141;
        v365 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v366 = v143;
        v146 = *(v143 + 216);
        v373 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v371 = v142;

        v147 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v148 = sub_1CF9E73E8();

        (*(v349 + 8))(v37, v35);
        qos_class_self();
        sub_1CF9E63B8();
        v150 = v350;
        v149 = v351;
        v151 = *(v350 + 48);
        if (v151(v23, 1, v351) == 1)
        {
          (*(v150 + 104))(v346, *MEMORY[0x1E69E7FA0], v149);
          if (v151(v23, 1, v149) != 1)
          {
            sub_1CEFCCC44(v23, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v150 + 32))(v346, v23, v149);
        }

        ObjectType = swift_getObjectType();
        v156 = v348;
        sub_1CF9E6428();
        v157 = swift_allocObject();
        v160 = v368;
        v161 = v369;
        *(v157 + 16) = v366;
        *(v157 + 24) = v160;
        *(v157 + 32) = v367;
        *(v157 + 40) = 0u;
        *(v157 + 56) = 0u;
        *(v157 + 72) = 0u;
        *(v157 + 88) = 0u;
        *(v157 + 104) = 0u;
        *(v157 + 120) = 0u;
        *(v157 + 136) = 0;
        *(v157 + 144) = 1;
        *(v157 + 152) = v148;
        *(v157 + 160) = sub_1CF796A04;
        *(v157 + 168) = v161;

        swift_unknownObjectRetain();

        goto LABEL_67;
    }

    sub_1CEFCCC44(&v384, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v384 = a1;
  v90 = a1;
  if (swift_dynamicCast())
  {
    *(v397 + 9) = *&v405[9];
    v395 = v403;
    v396 = v404;
    v397[0] = *v405;
    v393 = aBlock;
    v394 = v402;
    if (v405[24] == 5)
    {
      v89 = v384;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v393, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v393 > 2u)
    {
      v91 = v371;
      if (v393 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v105 = v367;
        v104 = v368;
        sub_1CF9E57D8();
        v106 = sub_1CF9E50D8();
        (*(v369 + 1))(v105, v104);
        v91(0, v106);

        v107 = aBlock;
LABEL_72:

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v91 = v371;
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
    v93 = v367;
    v92 = v368;
    sub_1CF9E57D8();
    v94 = sub_1CF9E50D8();
    (*(v369 + 1))(v93, v92);
    v91(0, v94);
    goto LABEL_33;
  }

  *&v393 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v402 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v402);
      LODWORD(v384) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v152 = v361;
      v153 = v363;
      sub_1CF9E57D8();
      v154 = sub_1CF9E53A8();
      v362[1](v152, v153);
      v371(0, v154);

      v107 = v393;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v393 = -2005;
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
    v371(0, aBlock);
LABEL_33:

    return;
  }

  *&v375 = a1;
  v108 = a1;
  if (swift_dynamicCast())
  {
    v390 = v406;
    v391 = v407;
    v386 = v403;
    v387 = v404;
    v388 = *v405;
    v389 = *&v405[16];
    v384 = aBlock;
    v385 = v402;
    v398 = v406;
    v399 = v407;
    v395 = v403;
    v396 = v404;
    v397[0] = *v405;
    v397[1] = *&v405[16];
    v392 = v408;
    v400 = v408;
    v393 = aBlock;
    v394 = v402;
    if (sub_1CF2B971C(&v393) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v384, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v168 = a1;
  if (swift_dynamicCast())
  {
    v169 = FPDomainUnavailableError();
    if (!v169)
    {
LABEL_120:

      __break(1u);
LABEL_121:
      MEMORY[0x1EEE9AC00](v269);
      v340 = v45;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v339, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v170 = v169;
    v371(0, v169);

    v107 = aBlock;
    goto LABEL_72;
  }

  v373 = a1;
  v171 = a1;
  if (swift_dynamicCast())
  {
    v390 = v406;
    v391 = v407;
    v386 = v403;
    v387 = v404;
    v388 = *v405;
    v389 = *&v405[16];
    v384 = aBlock;
    v385 = v402;
    v398 = v406;
    v399 = v407;
    v395 = v403;
    v396 = v404;
    v397[0] = *v405;
    v397[1] = *&v405[16];
    v392 = v408;
    v400 = v408;
    v393 = aBlock;
    v394 = v402;
    if (sub_1CF2B971C(&v393) == 10)
    {
      nullsub_1();
      v173 = *(v172 + 16);
      if (!v173)
      {
        LODWORD(v375) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v174 = v361;
        v175 = v363;
        sub_1CF9E57D8();
        v173 = sub_1CF9E53A8();
        v362[1](v174, v175);
      }

      v176 = v371;
      v381 = v390;
      v382 = v391;
      v383 = v392;
      v377 = v386;
      v378 = v387;
      v379 = v388;
      v380 = v389;
      v375 = v384;
      v376 = v385;
      nullsub_1();
      v178 = *(v177 + 16);
      v176(0, v173);
      sub_1CEFCCC44(&v384, &unk_1EC4BE320, &unk_1CFA08B50);

      v107 = v373;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v384, &unk_1EC4BE320, &unk_1CFA08B50);
    v180 = v373;
    goto LABEL_90;
  }

  *&v384 = a1;
  v179 = a1;
  if (swift_dynamicCast())
  {
    v395 = v403;
    v396 = v404;
    v397[0] = *v405;
    *(v397 + 9) = *&v405[9];
    v393 = aBlock;
    v394 = v402;
    sub_1CEFCCC44(&v393, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_91:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v190 = v367;
    v189 = v368;
    sub_1CF9E57D8();
    v94 = sub_1CF9E50D8();
    (*(v369 + 1))(v190, v189);
    v371(0, v94);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v181 = a1;
  v182 = swift_dynamicCast();

  if (v182)
  {
    goto LABEL_91;
  }

  *&v393 = a1;
  v183 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v402, *(&v402 + 1), v403, v184, v185, v186);
LABEL_89:
    v180 = v393;
LABEL_90:

    goto LABEL_91;
  }

  *&v393 = a1;
  v187 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v402, SBYTE8(v402));
    goto LABEL_89;
  }

  *&v393 = a1;
  v188 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_89;
  }

  v191 = sub_1CF9E57E8();
  v192 = [v191 userInfo];
  v193 = sub_1CF9E6638();

  v194 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v202 = v195;
  if (!*v193->tree)
  {
    v193, v195, v196, v197, v198, v199, v200, v201;
    v230 = v202;
LABEL_98:
    v230, v212, v213, v214, v215, v216, v217, v218;
    goto LABEL_99;
  }

  v203 = sub_1CEFE4328(v194, v195);
  v205 = v204;
  v202, v204, v206, v207, v208, v209, v210, v211;
  if ((v205 & 1) == 0)
  {
    v230 = v193;
    goto LABEL_98;
  }

  sub_1CEFD1104(*v193[1].tester + 32 * v203, &aBlock);
  v193, v219, v220, v221, v222, v223, v224, v225;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v226 = v393;
    v227 = v370;

    v228 = v191;
    v229 = v226;
    sub_1CF782688(v229, v365 & 1, v364, v228, v371, v227, &unk_1F4C162D0, &unk_1F4C162F8, sub_1CF796AD8, sub_1CF782488, &unk_1F4C163E8, sub_1CF7969FC, &unk_1F4C16410, sub_1CF796A04, sub_1CF72A328, &unk_1F4C16398, &unk_1F4C163C0, sub_1CF796A00, sub_1CF72A328, &unk_1F4C16320, &unk_1F4C16348, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_893, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_99:
  v231 = swift_allocObject();
  v232 = [v191 userInfo];
  v233 = sub_1CF9E6638();

  v234 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v242 = v235;
  if (!*v233->tree)
  {
    v233, v235, v236, v237, v238, v239, v240, v241;
    v276 = v242;
LABEL_115:
    v276, v251, v252, v253, v254, v255, v256, v257;
    goto LABEL_116;
  }

  v243 = sub_1CEFE4328(v234, v235);
  v45 = v244;
  v242, v244, v245, v246, v247, v248, v249, v250;
  if ((v45 & 1) == 0)
  {
    v276 = v233;
    goto LABEL_115;
  }

  sub_1CEFD1104(*v233[1].tester + 32 * v243, &aBlock);
  v233, v258, v259, v260, v261, v262, v263, v264;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    swift_deallocUninitializedObject();
    v371(0, a1);

    return;
  }

  v231[2] = v393;
  v265 = dispatch_group_create();
  v266 = v231[2];
  if (v266 >> 62)
  {
    goto LABEL_118;
  }

  v267 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v267)
  {
    goto LABEL_124;
  }

  do
  {
    v268 = 0;
    while (1)
    {
      v45 = v265;
      v269 = objc_sync_enter(v45);
      if (v269)
      {
        goto LABEL_121;
      }

      swift_beginAccess();
      v270 = v231[2];
      if ((v270 & 0xC000000000000001) != 0)
      {
        v271 = MEMORY[0x1D3869C30](v268);
        goto LABEL_109;
      }

      if (v268 >= *((v270 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v271 = *(v270 + 8 * v268 + 32);
LABEL_109:
      v272 = v271;
      swift_endAccess();
      v273 = objc_sync_exit(v45);
      if (v273)
      {
        MEMORY[0x1EEE9AC00](v273);
        v340 = v45;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v339, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v45);
      v274 = v45;

      v275 = v272;
      sub_1CF774BF8(v275, v365 & 1, v364, v274, v231, v268);

      if (v267 == ++v268)
      {
        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_118:
    v277 = sub_1CF9E7818();
    if (v277 < 0)
    {
      __break(1u);
      goto LABEL_120;
    }

    v267 = v277;
  }

  while (v277);
LABEL_124:
  if (v365)
  {
    v278 = [v191 userInfo];
    v279 = sub_1CF9E6638();

    v280 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v282 = v281;
    swift_beginAccess();
    v283 = v231[2];
    *(&v402 + 1) = v369;
    *&aBlock = v283;
    sub_1CEFE9EB8(&aBlock, &v393);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v375 = v279;
    sub_1CF1D154C(&v393, v280, v282, isUniquelyReferenced_nonNull_native);
    v282, v285, v286, v287, v288, v289, v290, v291;
    v292 = [v191 domain];
    if (!v292)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v294 = v293;
      v292 = sub_1CF9E6888();
      v294, v295, v296, v297, v298, v299, v300, v301;
    }

    v302 = [v191 code];
    v303 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v304 = sub_1CF9E6618();

    v305 = [v303 initWithDomain:v292 code:v302 userInfo:v304];

    v371(0, v305);
  }

  else
  {
    v306 = *(*(v364 + 16) + 64);
    v307 = swift_allocObject();
    v307[2] = v191;
    v307[3] = v231;
    v307[4] = sub_1CF5534C4;
    v307[5] = v372;

    v308 = v306;
    v371 = v191;

    v309 = fpfs_current_log();
    v369 = fpfs_adopt_log();
    v310 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v311;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v312 = sub_1CF9E7988();
    v314 = v313;
    MEMORY[0x1D3868CC0](v312);
    v314, v315, v316, v317, v318, v319, v320, v321;
    v322 = *(&aBlock + 1);
    sub_1CF9E6978();
    v322, v323, v324, v325, v326, v327, v328, v329;
    v330 = __fp_log_fork();

    *(v310 + 16) = v330;
    v331 = swift_allocObject();
    *(v331 + 16) = v309;
    *(v331 + 24) = v310;
    v367 = v310;
    *(v331 + 32) = v308;
    *(v331 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v331 + 48) = 48;
    *(v331 + 56) = 2;
    *(v331 + 64) = sub_1CF796ACC;
    *(v331 + 72) = v307;
    *&v403 = sub_1CF2B9F54;
    *(&v403 + 1) = v331;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v402 = sub_1CEFCA444;
    *(&v402 + 1) = &block_descriptor_854;
    v332 = _Block_copy(&aBlock);
    v366 = v308;
    v368 = v309;

    v333 = v342;
    sub_1CF9E63F8();
    *&v393 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v334 = v343;
    v335 = v345;
    sub_1CF9E77B8();
    v336 = v366;
    sub_1CF9E7308();
    _Block_release(v332);
    (*(v344 + 8))(v334, v335);
    (*(v359 + 8))(v333, v360);

    v337 = v369;
    v338 = fpfs_adopt_log();
  }
}

void sub_1CF794540(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void *a5, int a6, id a7, void *a8, void (*a9)(void *, id, id), uint64_t a10)
{
  v205 = a4;
  v206 = a3;
  v194 = a2;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v196);
  v197 = &v192 - v15;
  v16 = sub_1CF9E6118();
  v207 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v203 = (&v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v192 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  v199 = a6;
  *(v21 + 24) = a6;
  v22 = a1;
  *(v21 + 32) = a7;
  *(v21 + 40) = a8;
  v198 = a9;
  *(v21 + 48) = a9;
  *(v21 + 56) = a10;
  v23 = v206;
  v200 = a5;
  sub_1CEFD09A0(a5);
  v202 = a7;

  v24 = a8;
  v201 = a10;

  v25 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  sub_1CEFD09A0(v23);
  v26 = sub_1CF9E6108();
  v27 = v207;
  v28 = v26;
  v29 = sub_1CF9E7298();

  sub_1CEFD0A98(v23);
  v30 = os_log_type_enabled(v28, v29);
  v204 = v16;
  if (v30)
  {
    v193 = v20;
    v195 = v21;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v208 = v32;
    *v31 = 136446466;
    v33 = swift_beginAccess();
    v34 = *(v22 + 32);
    v35 = *(v22 + 40);
    if (*(v22 + 41))
    {
      v36 = NSFileProviderItemIdentifier.description.getter(v34);
      v38 = v37;
      sub_1CEFD0994(v34, v35, 1);
    }

    else
    {
      v210[1] = *(v22 + 32);
      v211 = v35;
      v36 = VFSItemID.description.getter(v33);
      v38 = v41;
    }

    v42 = sub_1CEFD0DF0(v36, v38, &v208);
    v38, v43, v44, v45, v46, v47, v48, v49;
    *(v31 + 4) = v42;
    *(v31 + 12) = 2082;
    v23 = v206;
    v50 = sub_1CEFD11AC(v206);
    v52 = v51;
    v53 = sub_1CEFD0DF0(v50, v51, &v208);
    v52, v54, v55, v56, v57, v58, v59, v60;
    *(v31 + 14) = v53;
    _os_log_impl(&dword_1CEFC7000, v28, v29, "resolving URL for %{public}s for %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v32, -1, -1);
    MEMORY[0x1D386CDC0](v31, -1, -1);

    v39 = *(v207 + 8);
    v40 = v204;
    v39(v193, v204);
    v21 = v195;
  }

  else
  {

    v39 = *(v27 + 8);
    v39(v20, v16);
    v40 = v16;
  }

  swift_beginAccess();
  v61 = *(v22 + 32);
  v62 = *(v22 + 40);
  if (*(v22 + 41) != 1)
  {
    v84 = v203;
    if (!v61 && v62 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v193 = v39;
  v63 = v23;
  v64 = qword_1EDEA34B0;
  v65 = v61;
  if (v64 != -1)
  {
    swift_once();
  }

  v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v68 = v67;
  v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v76 = v69;
  if (v66 != v70 || v68 != v69)
  {
    v93 = sub_1CF9E8048();
    v68, v94, v95, v96, v97, v98, v99, v100;
    v76, v101, v102, v103, v104, v105, v106, v107;
    sub_1CEFD0994(v61, v62, 1);
    v23 = v63;
    v84 = v203;
    v40 = v204;
    v39 = v193;
    if (v93)
    {
      goto LABEL_15;
    }

LABEL_19:
    v108 = v40;
    v109 = v205;
    v201 = *(v205 + 16);
    v110 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    v202 = [v110 init];
    v111 = swift_allocObject();
    v111[2] = sub_1CF796704;
    v111[3] = v21;
    v111[4] = v109;
    v111[5] = v22;
    v112 = swift_allocObject();
    v112[2] = sub_1CF7969DC;
    v112[3] = v111;
    v203 = v112;
    v112[4] = v23;
    sub_1CEFD09A0(v23);

    sub_1CEFD09A0(v23);

    v200 = v111;

    v113 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(v23);

    sub_1CEFD09A0(v23);
    v114 = sub_1CF9E6108();
    v115 = sub_1CF9E7298();
    if (os_log_type_enabled(v114, v115))
    {
      v193 = v39;
      v195 = v21;
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v118 = v117;
      v210[0] = v117;
      *v116 = 136315906;
      v119 = *(v22 + 32);
      v120 = *(v22 + 40);
      if (*(v22 + 41))
      {
        v121 = NSFileProviderItemIdentifier.description.getter(v119);
        v123 = v122;
        sub_1CEFD0994(v119, v120, 1);
      }

      else
      {
        v208 = *(v22 + 32);
        v209 = v120;
        v121 = VFSItemID.description.getter(v117);
        v123 = v124;
      }

      v125 = sub_1CEFD0DF0(v121, v123, v210);
      v123, v126, v127, v128, v129, v130, v131, v132;
      *(v116 + 4) = v125;
      *(v116 + 12) = 2080;
      *(v116 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v210);
      *(v116 + 22) = 2080;
      v23 = v206;
      v133 = sub_1CEFD11AC(v206);
      v135 = v134;
      sub_1CEFD0A98(v23);
      sub_1CEFD0A98(v23);
      v136 = sub_1CEFD0DF0(v133, v135, v210);
      v135, v137, v138, v139, v140, v141, v142, v143;
      *(v116 + 24) = v136;
      *(v116 + 32) = 2048;
      *(v116 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v114, v115, "Lookup itemID %s with behavior %s request %s iteration %ld", v116, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v118, -1, -1);
      MEMORY[0x1D386CDC0](v116, -1, -1);

      (v193)(v84, v204);
    }

    else
    {
      sub_1CEFD0A98(v23);
      sub_1CEFD0A98(v23);

      v39(v84, v108);
    }

    v144 = *(v22 + 32);
    v145 = *(v22 + 40);
    v146 = v202;
    if (*(v22 + 41))
    {
      v147 = v23;
      v148 = qword_1EDEA34B0;
      v149 = v144;
      if (v148 != -1)
      {
        swift_once();
      }

      v150 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v152 = v151;
      v154 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v160 = v153;
      if (v150 == v154 && v152 == v153)
      {
        v152, v153, v154, v155, v156, v157, v158, v159;
        v160, v161, v162, v163, v164, v165, v166, v167;
        sub_1CEFD0994(v144, v145, 1);
        v23 = v147;
LABEL_33:
        sub_1CF90CAC8(v23, sub_1CF796A0C, v203);
LABEL_39:

        sub_1CEFD0A98(v23);

        return;
      }

      v168 = sub_1CF9E8048();
      v152, v169, v170, v171, v172, v173, v174, v175;
      v160, v176, v177, v178, v179, v180, v181, v182;
      sub_1CEFD0994(v144, v145, 1);
      v23 = v147;
      if (v168)
      {
        goto LABEL_33;
      }
    }

    else if (!v144 && v145 == 2)
    {
      goto LABEL_33;
    }

    if (((v23 >> 58) & 0x3C | (v23 >> 1) & 3) == 0x1E)
    {
      v183 = *((v23 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v184 = v183;
    }

    else
    {
      v185 = swift_allocObject();
      *(v185 + 16) = v23;
      v184 = v185 | 0x7000000000000004;
      v183 = v23;
    }

    v186 = v203;
    sub_1CEFD09A0(v183);
    v187 = swift_allocObject();
    *(v187 + 16) = sub_1CF796A0C;
    *(v187 + 24) = v186;
    v188 = v201;
    *(v187 + 32) = v201;
    *(v187 + 40) = 1;
    *(v187 + 48) = v23;
    *(v187 + 56) = v22;
    LOBYTE(v186) = v194 & 1;
    *(v187 + 64) = v194 & 1;
    *(v187 + 72) = v146;
    *(v187 + 80) = 0;
    v189 = swift_allocObject();
    *(v189 + 16) = v22;
    *(v189 + 24) = v188;
    *(v189 + 32) = v186;
    *(v189 + 33) = 0;
    *(v189 + 40) = sub_1CF796A90;
    *(v189 + 48) = v187;
    *(v189 + 56) = v184;
    v190 = swift_allocObject();
    *(v190 + 16) = sub_1CF796A90;
    *(v190 + 24) = v187;
    swift_retain_n();

    sub_1CEFD09A0(v23);

    v191 = v146;
    sub_1CEFD09A0(v184);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v190, sub_1CF796A9C, v189);

    sub_1CEFD0A98(v184);
    goto LABEL_39;
  }

  v68, v69, v70, v71, v72, v73, v74, v75;
  v76, v77, v78, v79, v80, v81, v82, v83;
  sub_1CEFD0994(v61, v62, 1);
LABEL_15:
  type metadata accessor for VFSFileTree(0);
  v85 = swift_dynamicCastClassUnconditional();

  v86 = objc_sync_enter(v85);
  if (v86)
  {
    MEMORY[0x1EEE9AC00](v86);
    *(&v192 - 2) = v85;

    sub_1CEFD0A98(v200);

    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v192 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v87 = v85[20];

  v88 = objc_sync_exit(v85);
  if (v88)
  {
    MEMORY[0x1EEE9AC00](v88);
    *(&v192 - 2) = v85;

    sub_1CEFD0A98(v200);

    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v192 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v89 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v90 = sub_1CF9E5A58();
  v91 = v87 + v89;
  v92 = v197;
  (*(*(v90 - 8) + 16))(v197, v91, v90);

  swift_storeEnumTagMultiPayload();
  sub_1CF867E48(v92, v200, v199 & 1, v202, v24, v198, v201);
  sub_1CEFCCC44(v92, &unk_1EC4C5270, &unk_1CFA01BC0);
}

void sub_1CF795294(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void *a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, void (*a8)(void, id), void *a9)
{
  v216 = a4;
  v217 = a3;
  v204 = a2;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v207);
  v208 = &v202 - v14;
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v214 = (&v202 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v202 - v19;
  v21 = swift_allocObject();
  v209 = a5;
  v210 = a8;
  v21[2] = a5;
  v21[3] = a6;
  v22 = a1;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a9;
  v213 = a6;
  v23 = v217;

  v212 = a7;

  v211 = a9;

  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  sub_1CEFD09A0(v23);
  v25 = sub_1CF9E6108();
  v26 = sub_1CF9E7298();

  sub_1CEFD0A98(v23);
  v27 = os_log_type_enabled(v25, v26);
  v215 = v16;
  if (v27)
  {
    v203 = v20;
    v205 = v15;
    v206 = v21;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v218 = v29;
    *v28 = 136446466;
    v30 = swift_beginAccess();
    v31 = *(v22 + 32);
    v32 = *(v22 + 40);
    if (*(v22 + 41))
    {
      v33 = NSFileProviderItemIdentifier.description.getter(v31);
      v35 = v34;
      sub_1CEFD0994(v31, v32, 1);
    }

    else
    {
      v220[1] = *(v22 + 32);
      v221 = v32;
      v33 = VFSItemID.description.getter(v30);
      v35 = v37;
    }

    v38 = sub_1CEFD0DF0(v33, v35, &v218);
    v35, v39, v40, v41, v42, v43, v44, v45;
    *(v28 + 4) = v38;
    *(v28 + 12) = 2082;
    v23 = v217;
    v46 = sub_1CEFD11AC(v217);
    v48 = v47;
    v49 = sub_1CEFD0DF0(v46, v47, &v218);
    v48, v50, v51, v52, v53, v54, v55, v56;
    *(v28 + 14) = v49;
    _os_log_impl(&dword_1CEFC7000, v25, v26, "resolving URL for %{public}s for %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v29, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);

    v36 = *(v215 + 8);
    v15 = v205;
    v36(v203, v205);
    v21 = v206;
  }

  else
  {

    v36 = *(v16 + 8);
    v36(v20, v15);
  }

  swift_beginAccess();
  v57 = *(v22 + 32);
  v58 = *(v22 + 40);
  if (*(v22 + 41) != 1)
  {
    v81 = v214;
    if (!v57 && v58 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v203 = v36;
  v59 = v15;
  v60 = v23;
  v61 = qword_1EDEA34B0;
  v62 = v57;
  if (v61 != -1)
  {
    swift_once();
  }

  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v65 = v64;
  v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v73 = v66;
  if (v63 != v67 || v65 != v66)
  {
    v90 = sub_1CF9E8048();
    v65, v91, v92, v93, v94, v95, v96, v97;
    v73, v98, v99, v100, v101, v102, v103, v104;
    sub_1CEFD0994(v57, v58, 1);
    v23 = v60;
    v15 = v59;
    v81 = v214;
    v36 = v203;
    if (v90)
    {
      goto LABEL_15;
    }

LABEL_19:
    v105 = v216;
    v212 = *(v216 + 16);
    v106 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    v213 = [v106 init];
    v107 = swift_allocObject();
    v107[2] = sub_1CF795FC0;
    v107[3] = v21;
    v107[4] = v105;
    v107[5] = v22;
    v108 = swift_allocObject();
    v108[2] = sub_1CF795FD0;
    v108[3] = v107;
    v214 = v108;
    v108[4] = v23;
    sub_1CEFD09A0(v23);

    sub_1CEFD09A0(v23);

    v211 = v107;

    v109 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(v23);

    sub_1CEFD09A0(v23);
    v110 = sub_1CF9E6108();
    v111 = sub_1CF9E7298();
    if (os_log_type_enabled(v110, v111))
    {
      v203 = v36;
      v205 = v15;
      v206 = v21;
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v114 = v113;
      v220[0] = v113;
      *v112 = 136315906;
      v115 = *(v22 + 32);
      v116 = *(v22 + 40);
      if (*(v22 + 41))
      {
        v117 = NSFileProviderItemIdentifier.description.getter(v115);
        v119 = v118;
        sub_1CEFD0994(v115, v116, 1);
      }

      else
      {
        v218 = *(v22 + 32);
        v219 = v116;
        v117 = VFSItemID.description.getter(v113);
        v119 = v120;
      }

      v121 = sub_1CEFD0DF0(v117, v119, v220);
      v119, v122, v123, v124, v125, v126, v127, v128;
      *(v112 + 4) = v121;
      *(v112 + 12) = 2080;
      *(v112 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v220);
      *(v112 + 22) = 2080;
      v23 = v217;
      v129 = sub_1CEFD11AC(v217);
      v131 = v130;
      sub_1CEFD0A98(v23);
      sub_1CEFD0A98(v23);
      v132 = sub_1CEFD0DF0(v129, v131, v220);
      v131, v133, v134, v135, v136, v137, v138, v139;
      *(v112 + 24) = v132;
      *(v112 + 32) = 2048;
      *(v112 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v110, v111, "Lookup itemID %s with behavior %s request %s iteration %ld", v112, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v114, -1, -1);
      MEMORY[0x1D386CDC0](v112, -1, -1);

      (v203)(v81, v205);
    }

    else
    {
      sub_1CEFD0A98(v23);
      sub_1CEFD0A98(v23);

      v36(v81, v15);
    }

    v140 = *(v22 + 32);
    v141 = *(v22 + 40);
    v142 = v213;
    if (*(v22 + 41))
    {
      v143 = v23;
      v144 = qword_1EDEA34B0;
      v145 = v140;
      if (v144 != -1)
      {
        swift_once();
      }

      v146 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v148 = v147;
      v150 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v156 = v149;
      if (v146 == v150 && v148 == v149)
      {
        v148, v149, v150, v151, v152, v153, v154, v155;
        v156, v157, v158, v159, v160, v161, v162, v163;
        sub_1CEFD0994(v140, v141, 1);
        v23 = v143;
LABEL_33:
        sub_1CF90CAC8(v23, sub_1CF795FDC, v214);
LABEL_39:

        sub_1CEFD0A98(v23);

        return;
      }

      v164 = sub_1CF9E8048();
      v148, v165, v166, v167, v168, v169, v170, v171;
      v156, v172, v173, v174, v175, v176, v177, v178;
      sub_1CEFD0994(v140, v141, 1);
      v23 = v143;
      if (v164)
      {
        goto LABEL_33;
      }
    }

    else if (!v140 && v141 == 2)
    {
      goto LABEL_33;
    }

    if (((v23 >> 58) & 0x3C | (v23 >> 1) & 3) == 0x1E)
    {
      v179 = *((v23 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v180 = v179;
    }

    else
    {
      v181 = swift_allocObject();
      *(v181 + 16) = v23;
      v180 = v181 | 0x7000000000000004;
      v179 = v23;
    }

    v182 = v214;
    sub_1CEFD09A0(v179);
    v183 = swift_allocObject();
    *(v183 + 16) = sub_1CF795FDC;
    *(v183 + 24) = v182;
    v184 = v212;
    *(v183 + 32) = v212;
    *(v183 + 40) = 1;
    *(v183 + 48) = v23;
    *(v183 + 56) = v22;
    LOBYTE(v182) = v204 & 1;
    *(v183 + 64) = v204 & 1;
    *(v183 + 72) = v142;
    *(v183 + 80) = 0;
    v185 = swift_allocObject();
    *(v185 + 16) = v22;
    *(v185 + 24) = v184;
    *(v185 + 32) = v182;
    *(v185 + 33) = 0;
    *(v185 + 40) = sub_1CF795FE8;
    *(v185 + 48) = v183;
    *(v185 + 56) = v180;
    v186 = swift_allocObject();
    *(v186 + 16) = sub_1CF795FE8;
    *(v186 + 24) = v183;
    swift_retain_n();

    sub_1CEFD09A0(v23);

    v187 = v142;
    sub_1CEFD09A0(v180);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF552448, v186, sub_1CF795FEC, v185);

    sub_1CEFD0A98(v180);
    goto LABEL_39;
  }

  v65, v66, v67, v68, v69, v70, v71, v72;
  v73, v74, v75, v76, v77, v78, v79, v80;
  sub_1CEFD0994(v57, v58, 1);
LABEL_15:
  type metadata accessor for VFSFileTree(0);
  v82 = swift_dynamicCastClassUnconditional();

  v83 = objc_sync_enter(v82);
  if (v83)
  {
    MEMORY[0x1EEE9AC00](v83);
    *(&v202 - 2) = v82;

    v213, v188, v189, v190, v191, v192, v193, v194;

    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v202 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v84 = v82[20];

  v85 = objc_sync_exit(v82);
  if (v85)
  {
    MEMORY[0x1EEE9AC00](v85);
    *(&v202 - 2) = v82;

    v213, v195, v196, v197, v198, v199, v200, v201;

    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v202 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v86 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v87 = sub_1CF9E5A58();
  v88 = v84 + v86;
  v89 = v208;
  (*(*(v87 - 8) + 16))(v208, v88, v87);

  swift_storeEnumTagMultiPayload();
  sub_1CF91CEE4(v89, v209, v213, v212, v210, v211);
  sub_1CEFCCC44(v89, &unk_1EC4C5270, &unk_1CFA01BC0);
}

void sub_1CF796040(void *a1)
{
  v3 = *(v1 + 16);
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v6 = 1;
  v4 = a1;
  v3(v5);
}

id sub_1CF7960A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[7];
  v8 = v2[8];
  v10 = v2[10];
  v9 = v2[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_1CF76BB00(a1, 0, 1, v10, v9, AssociatedTypeWitness, v4, v5, v6, v8, v7);
  *a2 = result;
  return result;
}

void sub_1CF79615C(void *a1)
{
  v3 = *(v1 + 16);
  v5[0] = a1;
  memset(&v5[1], 0, 24);
  v6 = 1;
  v4 = a1;
  v3(v5);
}

id sub_1CF796210()
{
  v1 = *(v0 + 24);
  sub_1CF9E5758();
  return [v1 unpublish];
}

id sub_1CF796430(id result, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3 || a4 == 5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (!a4)
    {
      v7 = result;

      v6 = v7;
      result = a2;

      return result;
    }

    if (a4 == 1)
    {
LABEL_4:

      return result;
    }
  }

  return result;
}

double sub_1CF7964BC(void *a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3 || a4 == 5)
    {

      goto LABEL_6;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {

LABEL_6:
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1CF796548@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_785Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

char *sub_1CF7965E8(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF76EB10(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_1CF79668C(void *a1)
{
  sub_1CF9E5A58();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  return sub_1CF76FE98(a1, v3, v4, v5);
}

uint64_t objectdestroy_333Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_336Tm()
{

  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_342Tm()
{

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_345Tm()
{

  sub_1CEFD0A98(*(v0 + 56));

  return swift_deallocObject();
}

void sub_1CF7968B4(void *a1)
{
  v3 = *(v1 + 16);
  v5 = a1;
  v6 = 1;
  v4 = a1;
  v3(&v5);
}

uint64_t objectdestroy_25Tm()
{

  return swift_deallocObject();
}

id InternalPathsManager.__allocating_init(providerDomainID:personaIdentifier:extensionManager:volume:rtcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(v6);
  v12 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  v13 = sub_1CF9E5A58();
  v14 = *(*(v13 - 8) + 56);
  v14(&v11[v12], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v13);
  v14(&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v13);
  *&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = a1;
  v15 = &v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = a4;
  *&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = a5;
  *&v11[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = a6;
  v19.receiver = v11;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1CF796CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v172 = a3;
  v179 = sub_1CF9E5A58();
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v182 = &v167[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v167[-v9];
  v11 = sub_1CF9E53C8();
  v174 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v167[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v177 = sub_1CF9E6118();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v167[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v167[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v171 = &v167[-v19];
  sub_1CF9E5A18();
  v21 = v20;
  v173 = v4;
  v184 = v4;
  v185 = a1;
  v180 = a1;
  v181 = a2;
  v186 = a2;
  v195 = xmmword_1CF9FC980;
  v194 = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = &v195;
  *(v22 + 24) = sub_1CF7A4D18;
  *(v22 + 32) = &v183;
  *(v22 + 40) = &v194;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1CF7A4D38;
  *(v23 + 24) = v22;
  v192 = sub_1CF005DC8;
  v193 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v189 = 1107296256;
  v190 = sub_1CF005DF8;
  v191 = &block_descriptor_41;
  v24 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v25 = fpfs_openat();

  _Block_release(v24);

  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v34 = v194;
    if (v194)
    {
      swift_willThrow();
      v21, v35, v36, v37, v38, v39, v40, v41;

      goto LABEL_4;
    }

    if (v25 < 0)
    {
      if (MEMORY[0x1D38683F0](v26))
      {
        if (MEMORY[0x1D38683F0]() == 9939394)
        {
          v98 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
          swift_willThrow();

          swift_bridgeObjectRelease_n();
          goto LABEL_5;
        }

        MEMORY[0x1D38683F0]();
        v116 = sub_1CF9E6138();
        if ((v116 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v116;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1CF9E57D8();
        v117 = sub_1CF9E53A8();
        (*(v174 + 1))(v13, v11);
        swift_willThrow();

        v21, v118, v119, v120, v121, v122, v123, v124;
LABEL_4:
        v21, v42, v43, v44, v45, v46, v47, v48;
LABEL_5:
        sub_1CF6FCF40(v195, *(&v195 + 1));
        return;
      }

      goto LABEL_27;
    }

    v21, v27, v28, v29, v30, v31, v32, v33;
    v49 = *(&v195 + 1);
    if (*(&v195 + 1) != 1)
    {
      v50 = v195;
      v21, v27, v28, v29, v30, v31, v32, v33;
      v51 = v182;
      if (v49)
      {
        v52 = v17;
        v53 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v54 = v178;
        v55 = *(v178 + 16);
        v56 = v181;
        v57 = v179;
        v55(v10, v181, v179);
        v55(v51, v180, v57);

        v58 = sub_1CF9E6108();
        v59 = sub_1CF9E72C8();
        sub_1CF6FCF40(v50, v49);
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v169 = v50;
          v61 = v54;
          v62 = v60;
          v171 = swift_slowAlloc();
          aBlock = v171;
          *v62 = 136315650;
          v170 = v58;
          v63 = sub_1CF9E5928();
          v64 = [v63 fp_shortDescription];
          v174 = v52;
          v65 = v64;

          v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v168 = v59;
          v67 = v51;
          v69 = v68;

          v70 = *(v61 + 8);
          v70(v10, v57);
          v71 = sub_1CEFD0DF0(v66, v69, &aBlock);
          v69, v72, v73, v74, v75, v76, v77, v78;
          *(v62 + 4) = v71;
          *(v62 + 12) = 2080;
          v79 = sub_1CF9E5928();
          v80 = [v79 fp_shortDescription];

          v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v83 = v82;

          v70(v67, v57);
          v56 = v181;
          v84 = sub_1CEFD0DF0(v81, v83, &aBlock);
          v83, v85, v86, v87, v88, v89, v90, v91;
          *(v62 + 14) = v84;
          *(v62 + 22) = 2080;
          v92 = v169;
          v93 = sub_1CEFD0DF0(v169, v49, &aBlock);
          sub_1CF6FCF40(v92, v49);
          *(v62 + 24) = v93;
          v94 = v170;
          _os_log_impl(&dword_1CEFC7000, v170, v168, "refreshing relocation symlink from %s to %s: %s", v62, 0x20u);
          v95 = v171;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v95, -1, -1);
          MEMORY[0x1D386CDC0](v62, -1, -1);

          v96 = *(v176 + 8);
          v97 = v174;
        }

        else
        {

          sub_1CF6FCF40(v50, v49);
          v99 = *(v54 + 8);
          v99(v51, v57);
          v99(v10, v57);
          v96 = *(v176 + 8);
          v97 = v52;
        }

        v100 = v177;
        v96(v97, v177);
        sub_1CF9E5A18();
        v102 = v101;
        v103 = sub_1CF9E6978();
        v102, v104, v105, v106, v107, v108, v109, v110;
        LODWORD(v102) = unlink((v103 + 32));

        if (v102)
        {
          v111 = fpfs_current_or_default_log();
          v112 = v175;
          sub_1CF9E6128();
          v113 = sub_1CF9E6108();
          v114 = sub_1CF9E72A8();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            *v115 = 67109120;
            *(v115 + 4) = MEMORY[0x1D38683F0]();
            _os_log_impl(&dword_1CEFC7000, v113, v114, "couldn't remove existing symlink: %{darwin.errno}d", v115, 8u);
            MEMORY[0x1D386CDC0](v115, -1, -1);
          }

          v96(v112, v100);
        }

        else
        {
          sub_1CF79BE08(v180, v56, v172);
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_27:
  v21, v27, v28, v29, v30, v31, v32, v33;
  aBlock = 0;
  v189 = 0xE000000000000000;
  sub_1CF9E7948();
  v189, v125, v126, v127, v128, v129, v130, v131;
  aBlock = 0xD00000000000001ALL;
  v189 = 0x80000001CFA2DF30;
  v187 = v25;
  v132 = sub_1CF9E7F98();
  v134 = v133;
  MEMORY[0x1D3868CC0](v132);
  v134, v135, v136, v137, v138, v139, v140, v141;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v142 = aBlock;
  v143 = v189;
  v144 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v145 = sub_1CF9E6108();
  v146 = sub_1CF9E72B8();
  v143, v147, v148, v149, v150, v151, v152, v153;
  if (os_log_type_enabled(v145, v146))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    aBlock = v155;
    *v154 = 136315650;
    v156 = sub_1CF9E7988();
    v158 = v157;
    v159 = sub_1CEFD0DF0(v156, v157, &aBlock);
    v158, v160, v161, v162, v163, v164, v165, v166;
    *(v154 + 4) = v159;
    *(v154 + 12) = 2048;
    *(v154 + 14) = 315;
    *(v154 + 22) = 2080;
    *(v154 + 24) = sub_1CEFD0DF0(v142, v143, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v145, v146, "[ASSERT] ‼️  %s:%lu: %s", v154, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v155, -1, -1);
    MEMORY[0x1D386CDC0](v154, -1, -1);
  }

  (*(v176 + 8))(v171, v177);
  sub_1CF9E7B68();
  __break(1u);
}

id InternalPathsManager.init(providerDomainID:)(uint64_t a1)
{
  v2 = type metadata accessor for InternalPathsManager(0);
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  v5 = sub_1CF9E5A58();
  v6 = *(*(v5 - 8) + 56);
  v6(&v3[v4], 1, 1, v5);
  v6(&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v5);
  v6(&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v5);
  v6(&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v5);
  v6(&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v5);
  v6(&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v5);
  v6(&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = a1;
  v7 = &v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = 0;
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = 0;
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = 0;
  v10.receiver = v3;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id InternalPathsManager.init(providerDomainID:personaIdentifier:extensionManager:volume:rtcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  v13 = sub_1CF9E5A58();
  v14 = *(*(v13 - 8) + 56);
  v14(&v6[v12], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v13);
  *&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = a1;
  v15 = &v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = a4;
  *&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = a5;
  *&v6[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = a6;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for InternalPathsManager(0);
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t type metadata accessor for InternalPathsManager(uint64_t a1)
{
  result = qword_1EDEACD20;
  if (!qword_1EDEACD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF797D80()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = [objc_opt_self() defaultManager];
  v12 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (!v12)
  {
    sub_1CF513D28("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/InternalPathsManager.swift", 94, 2, 106);
  }

  v13 = v11;
  v14 = [*(v0 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume) systemDirectory];
  sub_1CF9E59D8();

  (*(v2 + 32))(v10, v7, v1);
  sub_1CF9E5A18();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v10, v1);
  v18 = sub_1CF9E6888();
  v16, v19, v20, v21, v22, v23, v24, v25;
  [v13 fp:v18 createPathIfNeeded:?];

  v26 = [v12 syncRootsDirectory];
  sub_1CF9E59D8();

  sub_1CF9E5A18();
  v28 = v27;
  v17(v4, v1);
  v29 = sub_1CF9E6888();
  v28, v30, v31, v32, v33, v34, v35, v36;
  [v13 fp:v29 createPathIfNeeded:?];
}

void sub_1CF797FEC(uint64_t a1, void (*a2)(char *, id), uint64_t a3)
{
  v83 = a2;
  v84 = a3;
  v88[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E5248();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1CF9E5A58();
  v10 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v12 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v86 = v81 - v15;
  v16 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (!v16)
  {
    goto LABEL_22;
  }

  v88[0] = 0;
  v17 = [v16 rootURLForLocation:a1 error:{v88, v14}];
  v18 = v88[0];
  if (!v17)
  {
    v55 = v88[0];
    sub_1CF9E57F8();

    swift_willThrow();
    return;
  }

  v82 = v7;
  v19 = v17;
  sub_1CF9E59D8();
  v20 = v18;

  v21 = [objc_opt_self() defaultManager];
  sub_1CF9E5A18();
  v23 = v22;
  v24 = sub_1CF9E6888();
  v23, v25, v26, v27, v28, v29, v30, v31;
  v88[0] = 0;
  v32 = [v21 contentsOfDirectoryAtPath:v24 error:v88];

  v33 = v88[0];
  if (v32)
  {
    v34 = sub_1CF9E6D48();
    v35 = v33;

    v36 = *v34->tree;
    if (!v36)
    {
      (*(v10 + 8))(v86, v85);
      goto LABEL_17;
    }

    v82 = v4;
    v37 = v10;
    v38 = 0;
    v39 = (v37 + 8);
    anon_8 = v34[1]._anon_8;
    v81[1] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v38 < *v34->tree)
    {
      v42 = *anon_8;

      sub_1CF9E5958();
      v42, v43, v44, v45, v46, v47, v48, v49;
      v50 = objc_opt_self();
      v51 = sub_1CF9E5928();
      v87 = 0;
      v88[0] = 0;
      LODWORD(v50) = [v50 getProviderDomainID:v51 location:a1 foundDomainID:v88 error:&v87];

      v52 = v88[0];
      v53 = v87;
      if (!v50)
      {
        v68 = v53;
        v69 = v52;
        sub_1CF9E57F8();

        swift_willThrow();
        v34, v70, v71, v72, v73, v74, v75, v76;

        v77 = *v39;
        v78 = v85;
        (*v39)(v12, v85);
        v77(v86, v78);
        return;
      }

      if (v52)
      {
        v54 = v52;
        v83(v12, v54);
      }

      ++v38;
      v41 = *v39;
      (*v39)(v12, v85);
      anon_8 += 2;
      if (v36 == v38)
      {
        v41(v86, v85);
LABEL_17:
        v34, v61, v62, v63, v64, v65, v66, v67;
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  v56 = v10;
  v57 = v88[0];
  v58 = sub_1CF9E57F8();

  swift_willThrow();
  v59 = v58;
  sub_1CF9E50F8();
  sub_1CF7A4E50(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
  LOBYTE(v57) = sub_1CF9E5658();

  v60 = *(v82 + 8);
  v60(v9, v6);
  if (v57)
  {
    (*(v56 + 8))(v86, v85);
  }

  else
  {
    v79 = v58;
    sub_1CF9E5118();
    v80 = sub_1CF9E5658();

    v60(v9, v6);
    (*(v56 + 8))(v86, v85);
    if ((v80 & 1) == 0)
    {
      return;
    }
  }
}

void sub_1CF798558(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
  swift_beginAccess();
  v96 = v1;
  v93 = v14;
  sub_1CEFCCBDC(v1 + v14, v12, &unk_1EC4BE310, qword_1CF9FCBE0);
  v91 = *(v4 + 48);
  v92 = v4 + 48;
  if (v91(v12, 1, v3) == 1)
  {
    goto LABEL_18;
  }

  sub_1CF9E5A18();
  v16 = v15;
  v17 = sub_1CF9E6888();
  v16, v18, v19, v20, v21, v22, v23, v24;
  v25 = v4 + 8;
  v26 = *(v4 + 8);
  v90 = v25;
  v26(v12, v3);
  [v13 fp:v17 createPathIfNeeded:?];

  sub_1CF9E5A18();
  v28 = v27;
  v29 = sub_1CF9E6888();
  v28, v30, v31, v32, v33, v34, v35, v36;
  v98 = 0;
  v37 = [v13 contentsOfDirectoryAtPath:v29 error:&v98];

  v38 = v98;
  if (v37)
  {
    v87 = v3;
    v88 = a1;
    v39 = sub_1CF9E6D48();
    v40 = v38;

    v41 = *v39->tree;
    if (v41)
    {
      v42 = 0;
      anon_8 = v39[1]._anon_8;
      v85 = v39;
      v86 = v13;
      v84 = v41;
      while (v42 < *v39->tree)
      {
        v44 = *anon_8;

        if (sub_1CF9E6AE8())
        {
          v52 = v95;
          sub_1CF9E5958();
          v97 = sub_1CF9E5928();
          v53 = v87;
          v26(v52, v87);
          v54 = v94;
          sub_1CEFCCBDC(v96 + v93, v94, &unk_1EC4BE310, qword_1CF9FCBE0);
          if (v91(v54, 1, v53) == 1)
          {
            goto LABEL_17;
          }

          v55 = v26;
          v56 = v89;
          sub_1CF9E5958();
          v44, v57, v58, v59, v60, v61, v62, v63;
          v55(v54, v53);
          v64 = sub_1CF9E5928();
          v55(v56, v53);
          v98 = 0;
          v13 = v86;
          v65 = v97;
          v66 = [v86 moveItemAtURL:v97 toURL:v64 error:&v98];

          v67 = v98;
          v26 = v55;
          v41 = v84;
          v39 = v85;
          if (!v66)
          {
            v75 = v67;
            v85, v68, v69, v70, v71, v72, v73, v74;
            goto LABEL_14;
          }
        }

        else
        {
          v44, v45, v46, v47, v48, v49, v50, v51;
        }

        ++v42;
        anon_8 += 2;
        if (v41 == v42)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }

LABEL_12:

    v39, v76, v77, v78, v79, v80, v81, v82;
  }

  else
  {
    v75 = v98;
LABEL_14:
    sub_1CF9E57F8();

    swift_willThrow();
  }
}

void sub_1CF798A20(void *a1)
{
  v3 = [a1 nsDomain];
  v4 = [v3 personaIdentifier];

  if (v4)
  {
    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](v5);
  v16[2] = v1;
  v16[3] = a1;
  sub_1CF8255E8(v6, v8, sub_1CF7A4CFC, v16);
  v8, v9, v10, v11, v12, v13, v14, v15;
}

void sub_1CF798B08(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultManager];
  sub_1CF797D80();
  if (!v2)
  {
    v6 = objc_sync_enter(a1);
    if (v6)
    {
      MEMORY[0x1EEE9AC00](v6);
      v9 = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    sub_1CF798C9C(a1, a2, v5);
    v7 = objc_sync_exit(a1);
    if (v7)
    {
      MEMORY[0x1EEE9AC00](v7);
      v9 = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }
  }
}

id sub_1CF798C9C(uint64_t a1, uint64_t a2, void *a3)
{
  v201 = a3;
  v209[3] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v185 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v183 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v180 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v186 = &v180 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v187 = &v180 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v188 = &v180 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v189 = &v180 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v192 = &v180 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v194 = &v180 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v191 = &v180 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v196 = &v180 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v193 = &v180 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v198 = &v180 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v195 = &v180 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v200 = &v180 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v197 = &v180 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v202 = &v180 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v199 = &v180 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v180 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v205 = &v180 - v46;
  *&v49 = MEMORY[0x1EEE9AC00](v47).n128_u64[0];
  v50 = &v180 - v48;
  v51 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (v51)
  {
    v209[0] = 0;
    v52 = [v51 supportPathForDomain:a2 failIfNotExisting:0 error:{v209, v49}];
    v53 = v209[0];
    if (!v52)
    {
      v115 = v209[0];
      sub_1CF9E57F8();

      return swift_willThrow();
    }

    v54 = v52;
    sub_1CF9E59D8();
    v55 = v53;

    v56 = v6[7];
    v57 = v50;
    v58 = 0;
  }

  else
  {
    v56 = v6[7];
    v57 = &v180 - v48;
    v58 = 1;
  }

  v203 = v56;
  v56(v57, v58, 1, v5);
  v59 = v5;
  v182 = v51;
  v60 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  sub_1CEFDA9E0(v50, a1 + v60, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  sub_1CEFCCBDC(a1 + v60, v44, &unk_1EC4BE310, qword_1CF9FCBE0);
  v61 = v6[6];
  v206 = v6 + 6;
  v204 = v61;
  result = v61(v44, 1, v59);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v63 = v205;
  sub_1CF9E5958();
  v207 = v6[1];
  v207(v44, v59);
  v208 = v6 + 1;
  v64 = (v6 + 7);
  v65 = v203;
  v203(v63, 0, 1, v59);
  v66 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  v181 = v66;
  sub_1CEFDA9E0(v63, a1 + v66, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v205 = v60;
  v67 = v202;
  sub_1CEFCCBDC(a1 + v60, v202, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v204(v67, 1, v59);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v68 = v199;
  sub_1CF9E5958();
  v69 = v207;
  v207(v67, v59);
  v65(v68, 0, 1, v59);
  v70 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
  swift_beginAccess();
  sub_1CEFDA9E0(v68, a1 + v70, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v71 = a1 + v70;
  v72 = v200;
  sub_1CEFCCBDC(v71, v200, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v204(v72, 1, v59);
  if (result == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v73 = v197;
  sub_1CF9E5958();
  v69(v72, v59);
  v202 = v64;
  v65(v73, 0, 1, v59);
  v74 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL;
  swift_beginAccess();
  sub_1CEFDA9E0(v73, a1 + v74, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v75 = v198;
  sub_1CEFCCBDC(&v205[a1], v198, &unk_1EC4BE310, qword_1CF9FCBE0);
  v76 = v204;
  result = v204(v75, 1, v59);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v77 = v59;
  v78 = v195;
  sub_1CF9E5958();
  v207(v75, v59);
  v65(v78, 0, 1, v59);
  v203 = v65;
  v79 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL;
  swift_beginAccess();
  sub_1CEFDA9E0(v78, a1 + v79, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v80 = v196;
  sub_1CEFCCBDC(&v205[a1], v196, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v76(v80, 1, v77);
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v81 = v77;
  v199 = v79;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v83 = v82;
  v84 = v193;
  sub_1CF9E5958();
  v83, v85, v86, v87, v88, v89, v90, v91;
  v92 = v77;
  v93 = v207;
  v207(v80, v92);
  v203(v84, 0, 1, v81);
  v94 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL;
  swift_beginAccess();
  v200 = v94;
  sub_1CEFDA9E0(v84, a1 + v94, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v95 = v194;
  sub_1CEFCCBDC(&v205[a1], v194, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v76(v95, 1, v81);
  if (result == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v97 = v96;
  v98 = v191;
  sub_1CF9E5958();
  v97, v99, v100, v101, v102, v103, v104, v105;
  v93(v95, v81);
  v203(v98, 0, 1, v81);
  v106 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL;
  swift_beginAccess();
  v203 = v106;
  sub_1CEFDA9E0(v98, a1 + v106, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v107 = v192;
  sub_1CEFCCBDC(&v205[a1], v192, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v76(v107, 1, v81);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v108 = v190;
  sub_1CF798558(v107);
  v109 = v107;
  if (v108)
  {
    return (v207)(v107, v81);
  }

  v110 = v207;
  v207(v109, v81);
  v111 = v189;
  sub_1CEFCCBDC(a1 + v200, v189, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v204(v111, 1, v81);
  if (result == 1)
  {
    goto LABEL_34;
  }

  v112 = sub_1CF9E5928();
  v110(v111, v81);
  v209[0] = 0;
  v113 = [v201 removeItemAtURL:v112 error:v209];

  if (v113)
  {
    v114 = v209[0];
  }

  else
  {
    v116 = v209[0];
    v117 = sub_1CF9E57F8();

    swift_willThrow();
  }

  v118 = v188;
  sub_1CEFCCBDC(a1 + v200, v188, &unk_1EC4BE310, qword_1CF9FCBE0);
  v119 = v204;
  result = v204(v118, 1, v81);
  if (result == 1)
  {
    goto LABEL_35;
  }

  sub_1CF9E5A18();
  v121 = v120;
  v122 = sub_1CF9E6888();
  v121, v123, v124, v125, v126, v127, v128, v129;
  v207(v118, v81);
  [v201 fp:v122 createPathIfNeeded:?];

  v130 = v187;
  sub_1CEFCCBDC(a1 + v181, v187, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v119(v130, 1, v81);
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1CF9E5A18();
  v132 = v131;
  v133 = sub_1CF9E6888();
  v132, v134, v135, v136, v137, v138, v139, v140;
  v207(v130, v81);
  [v201 fp:v133 createPathIfNeeded:?];

  result = v182;
  if (!v182)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v141 = [v182 purgatoryDirectory];
  v142 = v185;
  sub_1CF9E59D8();

  sub_1CF9E5A18();
  v144 = v143;
  v207(v142, v81);
  v145 = sub_1CF9E6888();
  v144, v146, v147, v148, v149, v150, v151, v152;
  [v201 fp:v145 createPathIfNeeded:?];

  v153 = v186;
  sub_1CEFCCBDC(v203 + a1, v186, &unk_1EC4BE310, qword_1CF9FCBE0);
  v154 = v204;
  result = v204(v153, 1, v81);
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1CF9E5A18();
  v156 = v155;
  v157 = sub_1CF9E6888();
  v156, v158, v159, v160, v161, v162, v163, v164;
  v165 = v207;
  v207(v153, v81);
  v166 = v201;
  [v201 fp:v157 createPathIfNeeded:?];

  v167 = v184;
  sub_1CEFCCBDC(&v199[a1], v184, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v154(v167, 1, v81);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v168 = v165;
  sub_1CF9E5A18();
  v170 = v169;
  v171 = sub_1CF9E6888();
  v170, v172, v173, v174, v175, v176, v177, v178;
  v168(v167, v81);
  [v166 fp:v171 createPathIfNeeded:?];

  v179 = v183;
  sub_1CEFCCBDC(&v205[a1], v183, &unk_1EC4BE310, qword_1CF9FCBE0);
  result = v154(v179, 1, v81);
  if (result == 1)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  sub_1CF7A37E8(v179);
  return (v168)(v179, v81);
}

uint64_t sub_1CF799C50(uint64_t a1)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() prettyNameForDomain_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  sub_1CF7A3F14(v8, v10);
  v12 = v11;
  v10, v11, v13, v14, v15, v16, v17, v18;
  v19 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (!v19)
  {
    __break(1u);
  }

  v40[0] = 0;
  v20 = [v19 rootURLForLocation:1 error:v40];
  v21 = v40[0];
  if (v20)
  {
    v22 = v20;
    sub_1CF9E59D8();
    v23 = v21;

    sub_1CF9E5958();
    v12, v24, v25, v26, v27, v28, v29, v30;
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v32 = v40[0];
    v12, v33, v34, v35, v36, v37, v38, v39;
    sub_1CF9E57F8();

    return swift_willThrow();
  }
}

void sub_1CF799E50(void *a1@<X0>, uint64_t a2@<X8>)
{
  v214 = a2;
  v219 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v215 = v4;
  v216 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v209 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v209 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v209 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v209 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v209 - v19;
  v21 = [a1 provider];
  if (!v21)
  {
LABEL_45:
    v217 = 0;
    v218 = 0xE000000000000000;
    sub_1CF9E7948();
    v218, v172, v173, v174, v175, v176, v177, v178;
    v217 = 0xD000000000000017;
    v218 = 0x80000001CFA5A760;
    v179 = [a1 description];
    v180 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v182 = v181;

    MEMORY[0x1D3868CC0](v180, v182);
    v182, v183, v184, v185, v186, v187, v188, v189;
    goto LABEL_47;
  }

  v22 = v21;
  v211 = v7;
  v212 = v13;
  v210 = v2;
  v23 = [a1 identifier];
  if (!v23)
  {
    v217 = 0;
    v218 = 0xE000000000000000;
    sub_1CF9E7948();
    v218, v190, v191, v192, v193, v194, v195, v196;
    v217 = 0xD000000000000019;
    v218 = 0x80000001CFA5A780;
    v197 = [a1 description];
    v198 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v200 = v199;

    MEMORY[0x1D3868CC0](v198, v200);
    v200, v201, v202, v203, v204, v205, v206, v207;
    goto LABEL_47;
  }

  v24 = v23;
  v213 = v22;
  v25 = [v22 identifier];
  v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v28 = v27;

  if (v26 == 0xD00000000000002BLL && 0x80000001CFA30030 == v28 || (sub_1CF9E8048() & 1) != 0)
  {
    v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v31 = v30;
    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v39 = v32;
    if (v29 == v33 && v31 == v32)
    {
      v31, v32, v33, v34, v35, v36, v37, v38;
      v39, v40, v41, v42, v43, v44, v45, v46;
LABEL_17:
      (*(v216 + 56))(v214, 1, 1, v215);

LABEL_18:

      v28, v73, v74, v75, v76, v77, v78, v79;
      return;
    }

    v47 = sub_1CF9E8048();
    v31, v48, v49, v50, v51, v52, v53, v54;
    v39, v55, v56, v57, v58, v59, v60, v61;
    if (v47)
    {
      goto LABEL_17;
    }

    v62 = [objc_opt_self() fp_personaSharedDirectory];
    if (v62)
    {
      v70 = v62;
      v28, v63, v64, v65, v66, v67, v68, v69;
      sub_1CF9E59D8();

      v71 = v215;
      (*(v216 + 32))(v20, v16, v215);
      v72 = v214;
      sub_1CF9E5958();

      (*(v216 + 8))(v20, v71);
      goto LABEL_12;
    }

    while (1)
    {
LABEL_47:
      sub_1CF9E7B68();
      __break(1u);
    }
  }

  if (v26 == 0xD000000000000032 && 0x80000001CFA30060 == v28 || (sub_1CF9E8048() & 1) != 0)
  {
    if (fpfs_supports_sokoban())
    {
      goto LABEL_17;
    }

    v80 = v24;
    v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v83 = v82;
    v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v91 = v84;
    if (v81 == v85 && v83 == v84)
    {
      v83, v84, v85, v86, v87, v88, v89, v90;
      v91, v92, v93, v94, v95, v96, v97, v98;
    }

    else
    {
      v123 = sub_1CF9E8048();
      v83, v124, v125, v126, v127, v128, v129, v130;
      v91, v131, v132, v133, v134, v135, v136, v137;
      if ((v123 & 1) == 0)
      {
        v138 = [objc_opt_self() fp_personaSharedDirectory];
        if (v138)
        {
          v146 = v138;
          v28, v139, v140, v141, v142, v143, v144, v145;
          sub_1CF9E59D8();

          v71 = v215;
          v147 = v212;
          (*(v216 + 32))(v212, v10, v215);
          v72 = v214;
          sub_1CF9E5958();

          (*(v216 + 8))(v147, v71);
          goto LABEL_12;
        }

        goto LABEL_47;
      }
    }

    (*(v216 + 56))(v214, 1, 1, v215);

    goto LABEL_18;
  }

  if (v26 == 0xD00000000000001ELL && 0x80000001CFA51A60 == v28 || (sub_1CF9E8048() & 1) != 0)
  {
    if (os_variant_has_internal_content())
    {
      v106 = [a1 nsDomain];
      v107 = [v106 identifier];

      v108 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v110 = v109;

      if (v108 == 0xD00000000000002ALL && 0x80000001CFA5A7A0 == v110)
      {
        v110, v111, 0xD00000000000002ALL, 0x80000001CFA5A7A0, v112, v113, v114, v115;
LABEL_37:
        v156 = *(v210 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
        if (v156)
        {
          v28, v116, v117, v118, v119, v120, v121, v122;
          v217 = 0;
          v157 = [v156 rootURLForLocation:1 error:&v217];
          v158 = v217;
          if (!v157)
          {
            v208 = v217;
            sub_1CF9E57F8();

            swift_willThrow();
            swift_unexpectedError();
            __break(1u);
            return;
          }

          v159 = v157;
          v160 = v211;
          sub_1CF9E59D8();
          v161 = v158;

          v72 = v214;
          sub_1CF9E5958();

          v71 = v215;
          (*(v216 + 8))(v160, v215);
LABEL_12:
          (*(v216 + 56))(v72, 0, 1, v71);
          return;
        }

        __break(1u);
        goto LABEL_45;
      }

      v148 = sub_1CF9E8048();
      v110, v149, v150, v151, v152, v153, v154, v155;
      if (v148)
      {
        goto LABEL_37;
      }
    }

    v28, v162, v163, v164, v165, v166, v167, v168;
  }

  else
  {
    v28, v99, v100, v101, v102, v103, v104, v105;
  }

  v169 = *(v216 + 56);
  v170 = v214;
  v171 = v215;

  v169(v170, 1, 1, v171);
}

void sub_1CF79A7F0(void *a1@<X1>, uint64_t a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  sub_1CF799E50(a1, v14 - v5);
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
    v9 = [a1 volume];
    v14[0] = 0;
    v10 = [v9 findProviderDomainDirectory:a1 location:1 error:v14];

    v11 = v14[0];
    if (v10)
    {
      sub_1CF9E59D8();
      v12 = v11;
    }

    else
    {
      v13 = v14[0];
      sub_1CF9E57F8();

      swift_willThrow();
    }
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
  }
}

void sub_1CF79A9D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  sub_1CF799E50(a1, v14 - v5);
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
    v9 = [a1 volume];
    v14[0] = 0;
    v10 = [v9 findProviderDomainDirectory:a1 location:1 error:v14];

    v11 = v14[0];
    if (v10)
    {
      sub_1CF9E59D8();
      v12 = v11;
    }

    else
    {
      v13 = v14[0];
      sub_1CF9E57F8();

      swift_willThrow();
    }
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
  }
}

uint64_t sub_1CF79ABBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF799E50(a1, v6);
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    sub_1CF79A9D8(a1, v10);
    if (v2)
    {
      result = v11(v6, 1, v7);
      if (result != 1)
      {
        return sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      return result;
    }

    if (v11(v6, 1, v7) != 1)
    {
      sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v13 = [objc_opt_self() defaultManager];
  sub_1CF9E5A18();
  v15 = v14;
  v16 = sub_1CF9E6888();
  v15, v17, v18, v19, v20, v21, v22, v23;
  LOBYTE(v15) = [v13 fileExistsAtPath_];

  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  v24 = sub_1CF7A4BF8(v10, a1);
  if (v2)
  {
    return (*(v8 + 8))(v10, v7);
  }

  if (v24)
  {
    v25 = v27;
    (*(v8 + 32))(v27, v10, v7);
    return (*(v8 + 56))(v25, 0, 1, v7);
  }

  else
  {
LABEL_14:
    (*(v8 + 8))(v10, v7);
    return (*(v8 + 56))(v27, 1, 1, v7);
  }
}

void sub_1CF79AF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v11 = v7;
    v12 = MEMORY[0x1E69E6158];
    sub_1CF9E7898();
    *(inited + 96) = v12;
    *(inited + 72) = a1;
    *(inited + 80) = a2;

    v13 = sub_1CF4E0E00(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &qword_1EC4C0600, &unk_1CF9FE790);
    v14 = sub_1CF9E6618();
    v13, v15, v16, v17, v18, v19, v20, v21;
    v22 = sub_1CF9E57E8();
    [v11 postReportWithCategory:1 type:1 payload:v14 error:v22];
  }

  if (a4)
  {
    v23 = sub_1CF9E6888();
    v24 = sub_1CF9E6888();
    v25 = sub_1CF9E57E8();
    FPCaptureLogsForOperation();
  }
}

void sub_1CF79B0F4(void (*a1)(_BYTE *, uint64_t))
{
  v142 = a1;
  v147[1] = *MEMORY[0x1E69E9840];
  v136 = sub_1CF9E6118();
  v138 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v132 = &v124[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v139 = &v124[-v3];
  v4 = sub_1CF9E5A58();
  v140 = *(v4 - 1);
  v141 = v4;
  v5 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v133 = &v124[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v130 = &v124[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v131 = &v124[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v124[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v124[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v124[-v15];
  v17 = sub_1CF9E53C8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v124[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v147[0]) = 17;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  sub_1CF9E57D8();
  v21 = sub_1CF9E53A8();
  v22 = v144;
  (*(v18 + 8))(v20, v17);
  sub_1CF79AF1C(0xD000000000000022, 0x80000001CFA5A6A0, 0xD000000000000018, 0x80000001CFA5A6D0, v21);

  v23 = v143;
  sub_1CF797D80();
  if (!v23)
  {
    v24 = v135;
    v25 = v139;
    v127 = v5;
    v143 = 0;
    v137 = v16;
    v26 = *(v22 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
    if (v26)
    {
      v27 = [v26 removedURL];
      v28 = v137;
      sub_1CF9E59D8();

      v29 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v30 = v140;
      v31 = v140 + 16;
      v32 = *(v140 + 16);
      v33 = v24;
      v34 = v24;
      v35 = v141;
      v32(v34, v142, v141);
      v36 = v134;
      v129 = v31;
      v128 = v32;
      v32(v134, v28, v35);
      v37 = sub_1CF9E6108();
      v38 = sub_1CF9E7288();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v147[0] = v126;
        *v39 = 136315394;
        v125 = v38;
        v40 = sub_1CF9E5928();
        v41 = [v40 fp_shortDescription];

        v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v43 = v30;
        v45 = v44;

        v46 = v36;
        v47 = *(v43 + 8);
        (v47)(v33, v141);
        v48 = sub_1CEFD0DF0(v42, v45, v147);
        v45, v49, v50, v51, v52, v53, v54, v55;
        *(v39 + 4) = v48;
        *(v39 + 12) = 2080;
        v56 = sub_1CF9E5928();
        v57 = [v56 fp_shortDescription];

        v58 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v60 = v59;

        v135 = v47;
        (v47)(v46, v141);
        v35 = v141;
        v61 = sub_1CEFD0DF0(v58, v60, v147);
        v60, v62, v63, v64, v65, v66, v67, v68;
        *(v39 + 14) = v61;
        _os_log_impl(&dword_1CEFC7000, v37, v125, "trying to move un-owned directory %s to the purgatory %s", v39, 0x16u);
        v69 = v126;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v69, -1, -1);
        MEMORY[0x1D386CDC0](v39, -1, -1);

        v70 = *(v138 + 8);
        v71 = v136;
        v70(v139, v136);
      }

      else
      {

        v73 = *(v30 + 8);
        (v73)(v36, v35);
        v135 = v73;
        (v73)(v33, v35);
        v70 = *(v138 + 8);
        v71 = v136;
        v70(v25, v136);
      }

      v72 = v133;
      v74 = [objc_opt_self() defaultManager];
      v75 = sub_1CF9E5928();
      v76 = sub_1CF9E5928();
      v147[0] = 0;
      v77 = [v74 moveItemAtURL:v75 toURL:v76 error:v147];

      if (v77)
      {
        v78 = qword_1EDEA70C8;
        v79 = v147[0];
        if (v78 != -1)
        {
          swift_once();
        }

        v80 = qword_1EDEA70D0;
        v81 = v131;
        sub_1CF9E5988();
        v82 = v130;
        if (qword_1EDEA70E0 != -1)
        {
          swift_once();
        }

        v83 = fpfs_current_log();
        v128(v82, v81, v35);
        v84 = v140;
        v85 = v82;
        v86 = (*(v140 + 80) + 24) & ~*(v140 + 80);
        v87 = v81;
        v88 = swift_allocObject();
        *(v88 + 16) = v80;
        (*(v84 + 32))(v88 + v86, v85, v35);
        v89 = v80;
        sub_1CF01001C(v83, "purgeAsync(at:)", 15, 2, sub_1CF1B80A8, v88);

        v90 = v135;
        (v135)(v87, v35);
        v90(v137, v35);
      }

      else
      {
        v91 = v147[0];
        v92 = sub_1CF9E57F8();

        swift_willThrow();
        v93 = fpfs_current_or_default_log();
        v94 = v132;
        sub_1CF9E6128();
        v128(v72, v142, v35);
        v95 = v92;
        v96 = sub_1CF9E6108();
        v97 = sub_1CF9E72A8();
        v98 = v92;

        if (os_log_type_enabled(v96, v97))
        {
          v99 = swift_slowAlloc();
          v143 = v92;
          v100 = v99;
          v101 = swift_slowAlloc();
          v142 = v70;
          v102 = v101;
          v141 = swift_slowAlloc();
          v147[0] = v141;
          *v100 = 136446466;
          v103 = sub_1CF9E5928();
          v104 = v72;
          v105 = [v103 fp_shortDescription];

          v106 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v108 = v107;

          v109 = v104;
          v110 = v135;
          (v135)(v109, v35);
          v111 = sub_1CEFD0DF0(v106, v108, v147);
          v108, v112, v113, v114, v115, v116, v117, v118;
          *(v100 + 4) = v111;
          *(v100 + 12) = 2112;
          swift_getErrorValue();
          v119 = Error.prettyDescription.getter(v145, v146);
          *(v100 + 14) = v119;
          *v102 = v119;
          _os_log_impl(&dword_1CEFC7000, v96, v97, "move of un-owned directory %{public}s to purgatory, ended with error %@", v100, 0x16u);
          sub_1CEFCCC44(v102, &qword_1EC4BE350, &unk_1CF9FC3B0);
          v120 = v137;
          MEMORY[0x1D386CDC0](v102, -1, -1);
          v121 = v141;
          __swift_destroy_boxed_opaque_existential_1(v141);
          MEMORY[0x1D386CDC0](v121, -1, -1);
          v98 = v143;
          MEMORY[0x1D386CDC0](v100, -1, -1);

          v142(v132, v136);
        }

        else
        {

          v122 = v135;
          (v135)(v72, v35);
          v123 = v94;
          v110 = v122;
          v70(v123, v71);
          v120 = v137;
        }

        sub_1CF79AF1C(0xD000000000000018, 0x80000001CFA5A6F0, 0xD00000000000001DLL, 0x80000001CFA5A710, v98);
        swift_willThrow();
        v110(v120, v35);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1CF79BC88(void *a1@<X8>, int a2@<W0>)
{
  v28 = *MEMORY[0x1E69E9840];
  if (sub_1CF7A4D70(a2))
  {
    memset(&v27, 0, sizeof(v27));
    sub_1CF9E5A18();
    v4 = v3;
    v5 = sub_1CF9E6978();
    v4, v6, v7, v8, v9, v10, v11, v12;
    LODWORD(v4) = lstat((v5 + 32), &v27);

    if (!v4)
    {
      st_mode = v27.st_mode;
      v14 = sub_1CF9E61C8() & st_mode;
      if (v14 == sub_1CF9E61C8())
      {
        memset(&v26, 0, sizeof(v26));
        sub_1CF9E5A18();
        v16 = v15;
        v17 = sub_1CF9E6978();
        v16, v18, v19, v20, v21, v22, v23, v24;
        LODWORD(v16) = stat((v17 + 32), &v26);

        if (v16)
        {
          v25 = "target of symlink doesn't exists";
LABEL_11:
          *a1 = 0xD000000000000020;
          a1[1] = (v25 - 32) | 0x8000000000000000;
          return;
        }

        if (v26.st_dev != v27.st_dev || v26.st_ino != v27.st_ino)
        {
          v25 = "symlink points to the wrong item";
          goto LABEL_11;
        }
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1CF79BE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v221 = a3;
  v212 = sub_1CF9E53C8();
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v210 = &v205[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v219 = &v205[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v216 = &v205[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v205[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v205[-v15];
  v17 = sub_1CF9E6118();
  v223 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v209 = &v205[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v220 = &v205[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v205[-v22];
  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v25 = *(v7 + 16);
  v224 = a2;
  v25(v16, a2, v6);
  v225 = a1;
  v214 = v7 + 16;
  v213 = v25;
  v25(v13, a1, v6);
  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E72C8();
  v28 = os_log_type_enabled(v26, v27);
  v217 = v7;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    aBlock = v208;
    *v29 = 136446466;
    v207 = v26;
    v30 = sub_1CF9E5928();
    v31 = [v30 fp_shortDescription];
    v218 = v17;
    v32 = v31;

    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v206 = v27;
    v35 = v34;

    v36 = *(v7 + 8);
    v36(v16, v6);
    v37 = sub_1CEFD0DF0(v33, v35, &aBlock);
    v35, v38, v39, v40, v41, v42, v43, v44;
    *(v29 + 4) = v37;
    *(v29 + 12) = 2082;
    v45 = sub_1CF9E5928();
    v46 = [v45 fp_shortDescription];

    v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v49 = v48;

    v17 = v218;
    v50 = v6;
    v215 = v36;
    v36(v13, v6);
    v51 = sub_1CEFD0DF0(v47, v49, &aBlock);
    v52 = v49;
    v53 = v223;
    v52, v54, v55, v56, v57, v58, v59, v60;
    *(v29 + 14) = v51;
    v61 = v207;
    _os_log_impl(&dword_1CEFC7000, v207, v206, "create relocation symlink from %{public}s to %{public}s", v29, 0x16u);
    v62 = v208;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v62, -1, -1);
    MEMORY[0x1D386CDC0](v29, -1, -1);
  }

  else
  {

    v63 = *(v7 + 8);
    v63(v13, v6);
    v64 = v16;
    v50 = v6;
    v215 = v63;
    v63(v64, v6);
    v53 = v223;
  }

  v65 = *(v53 + 8);
  v65(v23, v17);
  sub_1CF9E5A18();
  v67 = v66;
  sub_1CF9E5A18();
  v69 = v68;
  v70 = sub_1CF9E6978();
  v67, v71, v72, v73, v74, v75, v76, v77;
  v78 = sub_1CF9E6978();
  v69, v79, v80, v81, v82, v83, v84, v85;
  LODWORD(v67) = symlink((v70 + 32), (v78 + 32));

  if (v67 && MEMORY[0x1D38683F0](v86) != 17)
  {
    v222 = v65;
    v106 = fpfs_current_or_default_log();
    v107 = v220;
    sub_1CF9E6128();
    v108 = v216;
    v109 = v213;
    v213(v216, v224, v50);
    v110 = v219;
    v109(v219, v225, v50);
    v111 = sub_1CF9E6108();
    v112 = sub_1CF9E72A8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v224 = v50;
      v114 = v108;
      v115 = v113;
      v116 = swift_slowAlloc();
      v218 = v17;
      v225 = v116;
      aBlock = v116;
      *v115 = 136315650;
      v117 = sub_1CF9E5928();
      v118 = [v117 fp_shortDescription];

      v119 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v121 = v120;

      v122 = v114;
      v123 = v224;
      v124 = v215;
      v215(v122, v224);
      v125 = sub_1CEFD0DF0(v119, v121, &aBlock);
      v121, v126, v127, v128, v129, v130, v131, v132;
      *(v115 + 4) = v125;
      *(v115 + 12) = 2080;
      v133 = v219;
      v134 = sub_1CF9E5928();
      v135 = [v134 fp_shortDescription];

      v136 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v138 = v137;

      v124(v133, v123);
      v139 = sub_1CEFD0DF0(v136, v138, &aBlock);
      v138, v140, v141, v142, v143, v144, v145, v146;
      *(v115 + 14) = v139;
      *(v115 + 22) = 1024;
      *(v115 + 24) = MEMORY[0x1D38683F0]();
      _os_log_impl(&dword_1CEFC7000, v111, v112, "cannot create symlink from %s to %s: %{darwin.errno}d", v115, 0x1Cu);
      v147 = v225;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v147, -1, -1);
      MEMORY[0x1D386CDC0](v115, -1, -1);

      v148 = v220;
      v149 = v218;
    }

    else
    {

      v150 = v215;
      v215(v110, v50);
      v150(v108, v50);
      v148 = v107;
      v149 = v17;
    }

    v222(v148, v149);
  }

  else
  {
    v87 = v224;
    v88 = v17;
    v89 = sub_1CF9E5A18();
    v91 = v90;
    MEMORY[0x1EEE9AC00](v89);
    v92 = v225;
    *&v205[-32] = v87;
    *&v205[-24] = v92;
    v203 = v221;
    v204 = v222;
    v233 = 0;
    v234 = 0;
    v235 = 256;
    v93 = swift_allocObject();
    *(v93 + 16) = &v234;
    *(v93 + 24) = sub_1CF7A4D44;
    *(v93 + 32) = &v205[-48];
    *(v93 + 40) = &v233;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_1CF7A4D64;
    *(v94 + 24) = v93;
    v231 = sub_1CF50EB9C;
    v232 = v94;
    aBlock = MEMORY[0x1E69E9820];
    v228 = 1107296256;
    v229 = sub_1CF005DF8;
    v230 = &block_descriptor_54;
    v95 = _Block_copy(&aBlock);

    sub_1CF9E6978();
    v96 = fpfs_openat();

    _Block_release(v95);

    LOBYTE(v93) = swift_isEscapingClosureAtFileLocation();

    if (v93)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v105 = v233;
    if (v233)
    {
      swift_willThrow();

LABEL_13:
      v91, v98, v99, v100, v101, v102, v103, v104;
      return;
    }

    if ((v96 & 0x80000000) == 0)
    {
      if ((v235 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    if (!MEMORY[0x1D38683F0](v97))
    {
LABEL_26:
      aBlock = 0;
      v228 = 0xE000000000000000;
      sub_1CF9E7948();
      v228, v162, v163, v164, v165, v166, v167, v168;
      aBlock = 0xD00000000000001ALL;
      v228 = 0x80000001CFA2DF30;
      v226 = v96;
      v169 = sub_1CF9E7F98();
      v171 = v170;
      MEMORY[0x1D3868CC0](v169);
      v171, v172, v173, v174, v175, v176, v177, v178;
      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v179 = v228;
      v225 = aBlock;
      v180 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v181 = sub_1CF9E6108();
      v182 = sub_1CF9E72B8();
      v179, v183, v184, v185, v186, v187, v188, v189;
      if (os_log_type_enabled(v181, v182))
      {
        v190 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        aBlock = v191;
        *v190 = 136315650;
        v192 = sub_1CF9E7988();
        v194 = v193;
        v195 = sub_1CEFD0DF0(v192, v193, &aBlock);
        v194, v196, v197, v198, v199, v200, v201, v202;
        *(v190 + 4) = v195;
        *(v190 + 12) = 2048;
        *(v190 + 14) = 315;
        *(v190 + 22) = 2080;
        *(v190 + 24) = sub_1CEFD0DF0(v225, v179, &aBlock);
        _os_log_impl(&dword_1CEFC7000, v181, v182, "[ASSERT] ‼️  %s:%lu: %s", v190, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v191, -1, -1);
        MEMORY[0x1D386CDC0](v190, -1, -1);
      }

      v65(v209, v88);
      LODWORD(v204) = 0;
      v203 = 315;
      sub_1CF9E7B68();
      __break(1u);
      return;
    }

    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v151 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v152 = sub_1CF9E6138();
      if ((v152 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v152;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v153 = v210;
      v154 = v212;
      sub_1CF9E57D8();
      v151 = sub_1CF9E53A8();
      (*(v211 + 8))(v153, v154);
    }

    swift_willThrow();
    v91, v155, v156, v157, v158, v159, v160, v161;
  }
}

uint64_t sub_1CF79CB94@<X0>(int a1@<W0>, char *a2@<X1>, char *a3@<X2>, NSObject *a4@<X3>, void *a5@<X8>)
{
  v193 = a4;
  v197 = a3;
  LODWORD(v194) = a1;
  v202 = a5;
  v206 = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v200 = v6;
  v201 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v195 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v192 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v192 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v192 - v16;
  v18 = sub_1CF9E6118();
  v198 = *(v18 - 8);
  v199 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v196 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v192 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v192 - v24;
  memset(&v203, 0, sizeof(v203));
  v26 = a2;
  sub_1CF9E5A18();
  v28 = v27;
  v29 = sub_1CF9E6978();
  v28, v30, v31, v32, v33, v34, v35, v36;
  LODWORD(v28) = stat((v29 + 32), &v203);

  if (v28)
  {
    v37 = fpfs_current_or_default_log();
    v22 = v196;
    sub_1CF9E6128();
    v38 = v200;
    v39 = v201;
    v40 = v195;
    (*(v201 + 16))(v195, v26, v200);
    v41 = sub_1CF9E6108();
    v42 = sub_1CF9E72A8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      LODWORD(v197) = v42;
      v44 = v43;
      v194 = swift_slowAlloc();
      *&v205.st_dev = v194;
      *v44 = 136315394;
      v193 = v41;
      v45 = sub_1CF9E5928();
      v46 = v38;
      v47 = [v45 fp_shortDescription];

      v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v50 = v49;

      (*(v39 + 8))(v40, v46);
      v51 = sub_1CEFD0DF0(v48, v50, &v205.st_dev);
      v50, v52, v53, v54, v55, v56, v57, v58;
      *(v44 + 4) = v51;
      *(v44 + 12) = 1024;
      *(v44 + 14) = MEMORY[0x1D38683F0]();
      v59 = v193;
      _os_log_impl(&dword_1CEFC7000, v193, v197, "cannot stat target of symlink at %s: %{darwin.errno}d", v44, 0x12u);
      v60 = v194;
      __swift_destroy_boxed_opaque_existential_1(v194);
      MEMORY[0x1D386CDC0](v60, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v40, v38);
    }

    goto LABEL_18;
  }

  v195 = v26;
  v196 = v17;
  v61 = v11;
  v62 = v200;
  v63 = v201;
  memset(&v205, 0, sizeof(v205));
  sub_1CF9E5A18();
  v65 = v64;
  v66 = sub_1CF9E6978();
  v65, v67, v68, v69, v70, v71, v72, v73;
  LODWORD(v65) = lstat((v66 + 32), &v205);

  if (!v65)
  {
    v98 = v197;
    if (v203.st_dev != v205.st_dev || v203.st_ino != v205.st_ino)
    {
      v140 = fpfs_current_or_default_log();
      v141 = v25;
      sub_1CF9E6128();
      v142 = *(v63 + 16);
      v143 = v196;
      v142(v196, v195, v62);
      v142(v14, v98, v62);
      v144 = sub_1CF9E6108();
      v145 = sub_1CF9E72A8();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v197 = v141;
        v147 = v146;
        v195 = swift_slowAlloc();
        v204 = v195;
        *v147 = 136315394;
        LODWORD(v194) = v145;
        v148 = sub_1CF9E5928();
        v149 = [v148 fp_shortDescription];
        v192 = v14;
        v150 = v149;

        v151 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v193 = v144;
        v152 = v143;
        v154 = v153;

        v155 = *(v63 + 8);
        v156 = v152;
        v157 = v62;
        v155(v156, v62);
        v158 = sub_1CEFD0DF0(v151, v154, &v204);
        v154, v159, v160, v161, v162, v163, v164, v165;
        *(v147 + 4) = v158;
        *(v147 + 12) = 2080;
        v166 = v192;
        v167 = sub_1CF9E5928();
        v168 = [v167 fp_shortDescription];

        v169 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v171 = v170;

        v155(v166, v157);
        v172 = sub_1CEFD0DF0(v169, v171, &v204);
        v171, v173, v174, v175, v176, v177, v178, v179;
        *(v147 + 14) = v172;
        v180 = v193;
        _os_log_impl(&dword_1CEFC7000, v193, v194, "symlink at %s doesn't target %s", v147, 0x16u);
        v181 = v195;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v181, -1, -1);
        MEMORY[0x1D386CDC0](v147, -1, -1);

        result = (*(v198 + 8))(v197, v199);
      }

      else
      {

        v182 = *(v63 + 8);
        v182(v14, v62);
        v182(v143, v62);
        result = (*(v198 + 8))(v141, v199);
      }

      goto LABEL_19;
    }

    v99 = v193;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v101 = v100;
    sub_1CF9E6978();
    v101, v102, v103, v104, v105, v106, v107, v108;
    fpfs_set_is_ignore_root();

    v109 = v99;
    v110 = [v109 pathComponents];
    v111 = sub_1CF9E6D48();

    v112 = *v111->tree;
    v111, v113, v114, v115, v116, v117, v118, v119;
    if (v112 >= 2)
    {
      v120 = [v109 stringByDeletingLastPathComponent];
      if (!v120)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v122 = v121;
        v120 = sub_1CF9E6888();
        v122, v123, v124, v125, v126, v127, v128, v129;
      }

      v109 = v120;
    }

    v130 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v132 = v131;

    if (v130 == 0xD00000000000002BLL && 0x80000001CFA30030 == v132)
    {
      v132, v133, v134, 0x80000001CFA30030, v135, v136, v137, v138;
    }

    else
    {
      v183 = sub_1CF9E8048();
      v132, v184, v185, v186, v187, v188, v189, v190;
      if ((v183 & 1) == 0)
      {
LABEL_26:
        fpfs_fsetxattr();
        fpfs_fset_acl();
        result = fpfs_fset_acl();
        v191 = v202;
        *v202 = 0;
        *(v191 + 8) = 0;
        return result;
      }
    }

    fpfs_fchflags();
    goto LABEL_26;
  }

  v74 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v75 = v61;
  v76 = v61;
  v77 = v62;
  (*(v63 + 16))(v76, v197, v62);
  v78 = sub_1CF9E6108();
  v79 = sub_1CF9E72A8();
  if (!os_log_type_enabled(v78, v79))
  {

    (*(v63 + 8))(v75, v77);
LABEL_18:
    result = (*(v198 + 8))(v22, v199);
    goto LABEL_19;
  }

  v80 = swift_slowAlloc();
  v197 = swift_slowAlloc();
  v204 = v197;
  *v80 = 136315394;
  LODWORD(v195) = v79;
  v81 = sub_1CF9E5928();
  v82 = [v81 fp_shortDescription];
  v196 = v22;
  v83 = v77;
  v84 = v82;

  v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v87 = v86;

  (*(v63 + 8))(v75, v83);
  v88 = sub_1CEFD0DF0(v85, v87, &v204);
  v87, v89, v90, v91, v92, v93, v94, v95;
  *(v80 + 4) = v88;
  *(v80 + 12) = 1024;
  *(v80 + 14) = MEMORY[0x1D38683F0]();
  _os_log_impl(&dword_1CEFC7000, v78, v195, "cannot stat relocated folder at %s: %{darwin.errno}d", v80, 0x12u);
  v96 = v197;
  __swift_destroy_boxed_opaque_existential_1(v197);
  MEMORY[0x1D386CDC0](v96, -1, -1);
  MEMORY[0x1D386CDC0](v80, -1, -1);

  result = (*(v198 + 8))(v196, v199);
LABEL_19:
  v139 = v202;
  *v202 = -1;
  *(v139 + 8) = 0;
  return result;
}

void sub_1CF79D5D8(uint64_t a1, void *a2, uint64_t a3, NSObject *a4, void (*a5)(_BYTE *, uint64_t), _BYTE *a6)
{
  v1623 = a6;
  v1651 = a5;
  v1656 = a4;
  *&v1653 = a3;
  v1661 = a1;
  v1688 = *MEMORY[0x1E69E9840];
  v1626 = sub_1CF9E5CF8();
  v1633 = *(v1626 - 8);
  MEMORY[0x1EEE9AC00](v1626);
  v1618 = &v1582 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v1617 = &v1582 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v1621 = &v1582 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v1620 = &v1582 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v1659 = (&v1582 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v1627 = &v1582 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v1631 = (&v1582 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v1625 = &v1582 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v1657 = (&v1582 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v1630 = &v1582 - v25;
  v1629 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v1629);
  v1628 = (&v1582 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v1638 = &v1582 - v28;
  v1611 = sub_1CF9E53C8();
  v1613 = *(v1611 - 8);
  MEMORY[0x1EEE9AC00](v1611);
  v1612 = (&v1582 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1645 = sub_1CF9E6118();
  v1643 = *(v1645 - 8);
  MEMORY[0x1EEE9AC00](v1645);
  v1592 = &v1582 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v1610 = &v1582 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v1615 = &v1582 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v1616 = &v1582 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v1601 = &v1582 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v1603 = &v1582 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v1632 = &v1582 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v1640 = &v1582 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v1641 = (&v1582 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v1622 = &v1582 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v1599 = &v1582 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v1597 = &v1582 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v1594 = &v1582 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v1602 = &v1582 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v1606 = (&v1582 - v58);
  MEMORY[0x1EEE9AC00](v59);
  v1609 = &v1582 - v60;
  v1663 = sub_1CF9E5A58();
  v1655 = *(v1663 - 8);
  MEMORY[0x1EEE9AC00](v1663);
  v1591 = &v1582 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v1598 = &v1582 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v1654 = &v1582 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v1600 = &v1582 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v1614 = &v1582 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v1637 = &v1582 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v1634 = &v1582 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v1635 = &v1582 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v1639 = &v1582 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v1608 = &v1582 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v1658 = (&v1582 - v81);
  MEMORY[0x1EEE9AC00](v82);
  v1642 = &v1582 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v1619 = &v1582 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v1644 = &v1582 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v1662 = &v1582 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v1596 = &v1582 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v1636 = &v1582 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v1595 = &v1582 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v1593 = &v1582 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v1607 = (&v1582 - v99);
  MEMORY[0x1EEE9AC00](v100);
  v1605 = &v1582 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v1604 = &v1582 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v1652 = &v1582 - v105;
  v106 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v106 - 8);
  v1647 = &v1582 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1649 = sub_1CF9E5268();
  v1646 = *(v1649 - 8);
  MEMORY[0x1EEE9AC00](v1649);
  v1648 = &v1582 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v109 - 8);
  v1624 = &v1582 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v1582 - v112;
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v1582 - v115;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v1582 - v118;
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v1582 - v121;
  v123 = objc_opt_self();
  v124 = [v123 defaultManager];
  v125 = v1660;
  sub_1CF79ABBC(a2, v122);
  v1660 = v125;
  if (v125)
  {

    return;
  }

  v1586 = v116;
  v1587 = v119;
  v1584 = v113;
  v1589 = v123;
  v1590 = v124;
  *&v1650 = a2;
  v126 = (v1655 + 48);
  v127 = *(v1655 + 48);
  v128 = v1663;
  v129 = v127(v122, 1, v1663);
  v130 = v1653;
  if (v129 != 1 && v127(v1653, 1, v128) != 1)
  {
    sub_1CF9E5128();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v151 = v1648;
    v152 = v1649;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    v1646[1](v151, v152);
    swift_willThrow();

    goto LABEL_15;
  }

  v131 = v1656 >> 62;
  v132 = v1590;
  if (v1656 >> 62)
  {
    v133 = sub_1CF9E7818();
  }

  else
  {
    v133 = *((v1656 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v134 = v1650;
  if (v133 >= 1 && v127(v130, 1, v128) == 1)
  {
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v135 = v1648;
    v136 = v1649;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    v1646[1](v135, v136);
    swift_willThrow();

LABEL_15:
    v153 = v122;
    goto LABEL_247;
  }

  v1588 = v122;
  v137 = [v134 provider];
  if (v137)
  {
    v138 = v137;
    v139 = [v137 identifier];

    v140 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v142 = v141;

    v148 = 0x80000001CFA30030;
    v149 = 0xD00000000000002BLL;
    if (v140 == 0xD00000000000002BLL && 0x80000001CFA30030 == v142)
    {
      v150 = 1;
    }

    else
    {
      v150 = sub_1CF9E8048();
    }

    v154 = v1587;
    v142, v143, v149, v148, v144, v145, v146, v147;
  }

  else
  {
    v150 = 0;
    v154 = v1587;
  }

  sub_1CEFCCBDC(v130, v154, &unk_1EC4BE310, qword_1CF9FCBE0);
  v1587 = v126;
  v155 = v127(v154, 1, v128);
  v156 = v1652;
  v1585 = v127;
  v1583 = v131;
  if (v155 == 1)
  {
    sub_1CEFCCC44(v154, &unk_1EC4BE310, qword_1CF9FCBE0);
    v157 = 0;
  }

  else
  {
    v158 = v150;
    v159 = v1655;
    (*(v1655 + 32))(v1652, v154, v128);
    v160 = sub_1CF9E5928();
    v161 = sub_1CF9E5928();
    v162 = [v160 fp:v161 relationshipToItemAtURL:?];

    v163 = v159;
    v150 = v158;
    (*(v163 + 8))(v156, v128);
    v157 = (v162 == 1) & v158;
  }

  v164 = v1659;
  v165 = [v1589 defaultManager];
  sub_1CF9E5A18();
  v167 = v166;
  v168 = sub_1CF9E6888();
  v167, v169, v170, v171, v172, v173, v174, v175;
  LODWORD(v167) = [v165 fileExistsAtPath_];

  if (!v167 || (v157 & 1) != 0)
  {
    LODWORD(v1605) = 0;
    HIDWORD(v1582) = v157;
    v181 = v1588;
LABEL_28:
    v182 = v1658;
    goto LABEL_29;
  }

  v176 = v1585(v1653, 1, v1663);
  v177 = v1660;
  if (v176 != 1)
  {
    sub_1CF9E5128();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v188 = v1648;
    v189 = v1649;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    v1646[1](v188, v189);
    swift_willThrow();
    goto LABEL_244;
  }

  v178 = v150;
  v179 = sub_1CF7A4B00(v1651, 1);
  if (v177)
  {
    v180 = v1590;
    goto LABEL_245;
  }

  v295 = v179;
  v1660 = 0;
  HIDWORD(v1582) = v157;
  if (v179)
  {
    v296 = v179;
    v297 = [v1650 providerDomainID];
    v298 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v300 = v299;
    v302 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v303 = v298;
    v304 = v301;
    if (v303 == v302 && v300 == v301)
    {

      v300, v305, v306, v307, v308, v309, v310, v311;
      v304, v312, v313, v314, v315, v316, v317, v318;
LABEL_82:
      LODWORD(v1605) = 0;
      v181 = v1588;
      v164 = v1659;
      goto LABEL_28;
    }

    v1652 = v295;
    v422 = sub_1CF9E8048();

    v300, v423, v424, v425, v426, v427, v428, v429;
    v304, v430, v431, v432, v433, v434, v435, v436;
    if (v422)
    {

      goto LABEL_82;
    }

    v498 = v296;
    v499 = [v498 pathComponents];
    v500 = sub_1CF9E6D48();

    v501 = *v500->tree;
    v500, v502, v503, v504, v505, v506, v507, v508;
    v509 = v498;
    v510 = v501 >= 2;
    v511 = v1650;
    v512 = v1607;
    if (v510)
    {
      v509 = [v498 stringByDeletingLastPathComponent];
      if (!v509)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v514 = v513;
        v509 = sub_1CF9E6888();
        v514, v515, v516, v517, v518, v519, v520, v521;
      }
    }

    v522 = [v511 provider];
    if (v522)
    {
      v523 = v522;
      v524 = [v522 identifier];

      v525 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v527 = v526;
      v529 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v530 = v525;
      v531 = v528;
      if (v530 == v529 && v527 == v528)
      {

        v527, v532, v533, v534, v535, v536, v537, v538;
        v531, v539, v540, v541, v542, v543, v544, v545;
        v511 = v1650;
        goto LABEL_189;
      }

      v1085 = sub_1CF9E8048();

      v527, v1086, v1087, v1088, v1089, v1090, v1091, v1092;
      v531, v1093, v1094, v1095, v1096, v1097, v1098, v1099;
      v511 = v1650;
      v512 = v1607;
      if (v1085)
      {
LABEL_189:
        v1100 = [v511 provider];
        if (v1100)
        {
          v1101 = v1100;
          v1102 = v498;
          v1103 = [v1102 pathComponents];
          v1104 = sub_1CF9E6D48();

          v1105 = *v1104->tree;
          v1104, v1106, v1107, v1108, v1109, v1110, v1111, v1112;
          if (v1105 < 2)
          {
            v1113 = *MEMORY[0x1E6967178];
          }

          else
          {
            v1113 = [v1102 lastPathComponent];
            if (!v1113)
            {
              _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v1115 = v1114;
              v1113 = sub_1CF9E6888();
              v1115, v1116, v1117, v1118, v1119, v1120, v1121, v1122;
            }
          }

          v1324 = [v1101 domainForIdentifier:v1113 reason:0];
          if (v1324)
          {

            v1325 = fpfs_current_or_default_log();
            v220 = v1594;
            sub_1CF9E6128();
            v164 = v1655;
            v219 = v1593;
            v211 = v1663;
            (*(v1655 + 16))(v1593, v1651, v1663);
            v190 = v1102;
            v1326 = v1650;
            v221 = sub_1CF9E6108();
            v1327 = sub_1CF9E72B8();

            if (os_log_type_enabled(v221, v1327))
            {
              v1328 = swift_slowAlloc();
              v1658 = v190;
              LODWORD(v1660) = v1327;
              v1329 = v219;
              v1330 = v1328;
              v1662 = swift_slowAlloc();
              *&v1671.st_dev = v1662;
              *v1330 = 136446722;
              v1659 = v221;
              v1331 = sub_1CF9E5928();
              v1332 = [v1331 fp_shortDescription];

              v1333 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v1335 = v1334;

              (v164[1].isa)(v1329, v211);
              v1336 = sub_1CEFD0DF0(v1333, v1335, &v1671.st_dev);
              v1335, v1337, v1338, v1339, v1340, v1341, v1342, v1343;
              *(v1330 + 4) = v1336;
              *(v1330 + 12) = 2082;
              v1344 = v1658;
              v1345 = [(os_log_t *)v1658 fp_obfuscatedProviderDomainID];
              v1346 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v1348 = v1347;

              v1349 = sub_1CEFD0DF0(v1346, v1348, &v1671.st_dev);
              v1350 = v1348;
              p_isa = v1344;
              v1350, v1351, v1352, v1353, v1354, v1355, v1356, v1357;
              *(v1330 + 14) = v1349;
              *(v1330 + 22) = 2082;
              v1358 = [v1326 providerDomainID];
              v1359 = [v1358 fp_obfuscatedProviderDomainID];

              v1360 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v1362 = v1361;

              v1363 = sub_1CEFD0DF0(v1360, v1362, &v1671.st_dev);
              v1362, v1364, v1365, v1366, v1367, v1368, v1369, v1370;
              *(v1330 + 24) = v1363;
              v1371 = v1659;
              _os_log_impl(&dword_1CEFC7000, v1659, v1660, "attempting create a domain root at %{public}s, but that path already exists and is owned by existing domain %{public}s, expected %{public}s", v1330, 0x20u);
              v1372 = v1662;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v1372, -1, -1);
              MEMORY[0x1D386CDC0](v1330, -1, -1);

              (*(v1643 + 8))(v1594, v1645);
            }

            else
            {
LABEL_240:

              (v164[1].isa)(v219, v211);
              (*(v1643 + 8))(v220, v1645);
              p_isa = &v190->isa;
            }

            v1179 = "root_owned_by_existing_domain";
            v1671.st_dev = 17;
            v1180 = MEMORY[0x1E69E7CC0];
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
            v1504 = v1611;
            v1505 = v1612;
            sub_1CF9E57D8();
            v1182 = sub_1CF9E53A8();
            (v1613[1])(v1505, v1504);
            v1185 = 0xD00000000000001BLL;
            v1183 = 0xD00000000000001DLL;
            v1184 = 0x80000001CFA5AA30;
            goto LABEL_242;
          }
        }

        v1373 = fpfs_current_or_default_log();
        v1374 = v1597;
        sub_1CF9E6128();
        v1375 = v1595;
        v1376 = v1663;
        (*(v1655 + 16))(v1595, v1651, v1663);
        v1377 = v498;
        v1378 = v1650;
        v1379 = sub_1CF9E6108();
        v1380 = sub_1CF9E72B8();
        v1609 = v1378;

        v1381 = v1377;
        if (os_log_type_enabled(v1379, v1380))
        {
          v1382 = v1375;
          v1383 = swift_slowAlloc();
          v1607 = swift_slowAlloc();
          *&v1671.st_dev = v1607;
          *v1383 = 136446722;
          v1606 = v1379;
          v1384 = sub_1CF9E5928();
          v1385 = [v1384 fp_shortDescription];
          LODWORD(v1605) = v1380;
          v1386 = v1385;

          v1387 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v1389 = v1388;

          (*(v1655 + 8))(v1382, v1663);
          v1390 = sub_1CEFD0DF0(v1387, v1389, &v1671.st_dev);
          v1389, v1391, v1392, v1393, v1394, v1395, v1396, v1397;
          *(v1383 + 4) = v1390;
          *(v1383 + 12) = 2082;
          v1398 = [v1377 fp_obfuscatedProviderDomainID];
          v1399 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v1401 = v1400;

          v1402 = sub_1CEFD0DF0(v1399, v1401, &v1671.st_dev);
          v1403 = v1401;
          v1381 = v1377;
          v1403, v1404, v1405, v1406, v1407, v1408, v1409, v1410;
          *(v1383 + 14) = v1402;
          *(v1383 + 22) = 2082;
          v1411 = [v1609 providerDomainID];
          v1412 = [v1411 fp_obfuscatedProviderDomainID];

          v1413 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v1415 = v1414;

          v1416 = sub_1CEFD0DF0(v1413, v1415, &v1671.st_dev);
          v1415, v1417, v1418, v1419, v1420, v1421, v1422, v1423;
          *(v1383 + 24) = v1416;
          v1424 = v1606;
          _os_log_impl(&dword_1CEFC7000, v1606, v1605, "attempting create a domain root at %{public}s, but that path already exists and is owned by missing domain %{public}s, expected %{public}s", v1383, 0x20u);
          v1425 = v1607;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v1425, -1, -1);
          MEMORY[0x1D386CDC0](v1383, -1, -1);

          (*(v1643 + 8))(v1597, v1645);
        }

        else
        {

          (*(v1655 + 8))(v1375, v1376);
          (*(v1643 + 8))(v1374, v1645);
        }

        v1426 = v1611;
        v1611 = "rootIsOwnedByDifferentProvider";
        v1671.st_dev = 17;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v1427 = v1612;
        sub_1CF9E57D8();
        v1428 = sub_1CF9E53A8();
        (v1613[1])(v1427, v1426);
        sub_1CF79AF1C(0xD00000000000001CLL, v1611 | 0x8000000000000000, 0xD00000000000001ALL, 0x80000001CFA5AA10, v1428);

        v164 = v1659;
        v182 = v1658;
        v910 = v1652;
        v181 = v1588;
        goto LABEL_148;
      }
    }

    else
    {
    }

    v1123 = fpfs_current_or_default_log();
    v1124 = v1602;
    sub_1CF9E6128();
    v1125 = v1655;
    v1126 = v1663;
    (*(v1655 + 16))(v512, v1651, v1663);
    v1127 = v498;
    v1128 = v511;
    v1129 = sub_1CF9E6108();
    v1130 = sub_1CF9E72B8();

    if (os_log_type_enabled(v1129, v1130))
    {
      v1131 = swift_slowAlloc();
      v1658 = v1127;
      v1132 = v512;
      v1133 = v1131;
      v1662 = swift_slowAlloc();
      *&v1671.st_dev = v1662;
      *v1133 = 136446722;
      v1660 = v1129;
      v1134 = sub_1CF9E5928();
      v1135 = [v1134 fp_shortDescription];
      v1136 = v1126;
      LODWORD(v1659) = v1130;
      v1137 = v1135;

      v1138 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v1140 = v1139;

      (*(v1125 + 8))(v1132, v1136);
      v1141 = sub_1CEFD0DF0(v1138, v1140, &v1671.st_dev);
      v1140, v1142, v1143, v1144, v1145, v1146, v1147, v1148;
      *(v1133 + 4) = v1141;
      *(v1133 + 12) = 2082;
      v1149 = v1658;
      v1150 = [(os_log_t *)v1658 fp_obfuscatedProviderDomainID];
      v1151 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v1153 = v1152;

      v1154 = sub_1CEFD0DF0(v1151, v1153, &v1671.st_dev);
      v1155 = v1153;
      p_isa = v1149;
      v1155, v1156, v1157, v1158, v1159, v1160, v1161, v1162;
      *(v1133 + 14) = v1154;
      *(v1133 + 22) = 2082;
      v1163 = [v1128 providerDomainID];
      v1164 = [v1163 fp_obfuscatedProviderDomainID];

      v1165 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v1167 = v1166;

      v1168 = sub_1CEFD0DF0(v1165, v1167, &v1671.st_dev);
      v1167, v1169, v1170, v1171, v1172, v1173, v1174, v1175;
      *(v1133 + 24) = v1168;
      v1176 = v1660;
      _os_log_impl(&dword_1CEFC7000, v1660, v1659, "attempting create a domain root at %{public}s, but that path already exists and is owned by a different provider %{public}s, expected %{public}s", v1133, 0x20u);
      v1177 = v1662;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v1177, -1, -1);
      MEMORY[0x1D386CDC0](v1133, -1, -1);

      (*(v1643 + 8))(v1602, v1645);
      v1178 = v1612;
    }

    else
    {

      (*(v1125 + 8))(v512, v1126);
      (*(v1643 + 8))(v1124, v1645);
      v1178 = v1612;
      p_isa = v1127;
    }

    v1179 = "fferent_provider";
    v1671.st_dev = 17;
    v1180 = MEMORY[0x1E69E7CC0];
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v1181 = v1611;
    sub_1CF9E57D8();
    v1182 = sub_1CF9E53A8();
    (v1613[1])(v1178, v1181);
    v1183 = 0xD000000000000020;
    v1184 = 0x80000001CFA5A9A0;
    v1185 = 0xD00000000000001ELL;
LABEL_242:
    sub_1CF79AF1C(v1183, v1184, v1185, v1179 | 0x8000000000000000, v1182);

    sub_1CF9E5128();
    sub_1CF4C5FCC(v1180);
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v1506 = v1648;
    v1507 = v1649;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    v1646[1](v1506, v1507);
    swift_willThrow();
    goto LABEL_243;
  }

  v397 = fpfs_current_or_default_log();
  v398 = (v1655 + 16);
  if (v178)
  {
    v399 = v1606;
    sub_1CF9E6128();
    v400 = v1605;
    v401 = v1663;
    (*v398)(v1605, v1651, v1663);
    v402 = sub_1CF9E6108();
    v403 = sub_1CF9E72A8();
    if (os_log_type_enabled(v402, v403))
    {
      v404 = swift_slowAlloc();
      v1609 = v404;
      v1652 = swift_slowAlloc();
      *&v1671.st_dev = v1652;
      *v404 = 136446210;
      v405 = sub_1CF9E5928();
      v406 = v400;
      v407 = [v405 fp_shortDescription];

      v408 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v410 = v409;

      (*(v1655 + 8))(v406, v1663);
      v411 = sub_1CEFD0DF0(v408, v410, &v1671.st_dev);
      v410, v412, v413, v414, v415, v416, v417, v418;
      v419 = v1609;
      *(v1609 + 4) = v411;
      v420 = v419;
      _os_log_impl(&dword_1CEFC7000, v402, v403, "taking over domain root at %{public}s, the path already exists and is not owned by anyone", v419, 0xCu);
      v421 = v1652;
      __swift_destroy_boxed_opaque_existential_1(v1652);
      MEMORY[0x1D386CDC0](v421, -1, -1);
      MEMORY[0x1D386CDC0](v420, -1, -1);
    }

    else
    {

      (*(v1655 + 8))(v400, v401);
    }

    (*(v1643 + 8))(v399, v1645);
    v907 = v1611;
    v1671.st_dev = 17;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7A4E50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v908 = v1612;
    sub_1CF9E57D8();
    v909 = sub_1CF9E53A8();
    (v1613[1])(v908, v907);
    sub_1CF79AF1C(0xD000000000000020, 0x80000001CFA5A950, 0xD00000000000001CLL, 0x80000001CFA5A980, v909);

    LODWORD(v1605) = 1;
    v164 = v1659;
    v182 = v1658;
    v181 = v1588;
    goto LABEL_29;
  }

  v1652 = 0;
  v454 = v1609;
  sub_1CF9E6128();
  v455 = v1604;
  v456 = v1663;
  (*v398)(v1604, v1651, v1663);
  v457 = sub_1CF9E6108();
  v458 = sub_1CF9E72B8();
  if (os_log_type_enabled(v457, v458))
  {
    v459 = swift_slowAlloc();
    v1611 = v459;
    v1613 = swift_slowAlloc();
    *&v1671.st_dev = v1613;
    *v459 = 136446210;
    LODWORD(v1612) = v458;
    v460 = sub_1CF9E5928();
    v461 = [v460 fp_shortDescription];

    v462 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v464 = v463;

    v164 = v1659;
    (*(v1655 + 8))(v455, v456);
    v465 = sub_1CEFD0DF0(v462, v464, &v1671.st_dev);
    v464, v466, v467, v468, v469, v470, v471, v472;
    v473 = v1611;
    *(v1611 + 4) = v465;
    v474 = v473;
    _os_log_impl(&dword_1CEFC7000, v457, v1612, "attempting create a domain at %{public}s, but that path already exists and is not owned by anyone", v473, 0xCu);
    v475 = v1613;
    __swift_destroy_boxed_opaque_existential_1(v1613);
    MEMORY[0x1D386CDC0](v475, -1, -1);
    MEMORY[0x1D386CDC0](v474, -1, -1);

    (*(v1643 + 8))(v1609, v1645);
  }

  else
  {

    (*(v1655 + 8))(v455, v456);
    (*(v1643 + 8))(v454, v1645);
  }

  v181 = v1588;
  v182 = v1658;
  v910 = v1652;
LABEL_148:
  v911 = v1660;
  sub_1CF79B0F4(v1651);
  if (v911)
  {

    v153 = v181;
    goto LABEL_247;
  }

  v1660 = 0;

  LODWORD(v1605) = 0;
LABEL_29:
  v183 = [v1650 provider];
  if (v183)
  {
    v184 = v183;
    v185 = [v183 descriptor];

    v186 = [v185 localizedName];
    v1606 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v1607 = v187;
  }

  else
  {
    v1606 = 0;
    v1607 = 0xE000000000000000;
  }

  v190 = v1657;
  v191 = v1586;
  sub_1CEFCCBDC(v1653, v1586, &unk_1EC4BE310, qword_1CF9FCBE0);
  v192 = v1663;
  if (v1585(v191, 1, v1663) == 1)
  {
    sub_1CEFCCC44(v191, &unk_1EC4BE310, qword_1CF9FCBE0);
    v193 = v1656;
LABEL_39:
    v211 = v1654;
    goto LABEL_40;
  }

  v194 = v181;
  v195 = v1655;
  v196 = v1636;
  (*(v1655 + 32))(v1636, v191, v192);
  v197 = [v1589 defaultManager];
  sub_1CF9E5A18();
  v199 = v198;
  v200 = sub_1CF9E6888();
  v199, v201, v202, v203, v204, v205, v206, v207;
  LODWORD(v199) = [v197 &selRef:v200 fp:?bundleRecord + 7];

  v208 = v192;
  if (!v199)
  {
    (*(v195 + 8))(v196, v192);
    v193 = v1656;
    v164 = v1659;
    v190 = v1657;
    v182 = v1658;
    goto LABEL_39;
  }

  v209 = v1660;
  v210 = sub_1CF7A4B00(v196, 1);
  v193 = v1656;
  v182 = v1658;
  v211 = v1654;
  if (v209)
  {
    (*(v1655 + 8))(v196, v208);
    v1607, v212, v213, v214, v215, v216, v217, v218;

    v153 = v194;
    goto LABEL_247;
  }

  v324 = v210;
  v1660 = 0;
  if (!v210)
  {
    (*(v1655 + 8))(v196, v208);
    v164 = v1659;
    v190 = v1657;
    goto LABEL_40;
  }

  v325 = [v1650 providerDomainID];
  v1652 = v324;
  v326 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v328 = v327;
  v330 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v331 = v326;
  v332 = v329;
  if (v331 != v330 || v328 != v329)
  {
    v476 = sub_1CF9E8048();

    v328, v477, v478, v479, v480, v481, v482, v483;
    v332, v484, v485, v486, v487, v488, v489, v490;
    if (v476)
    {
      goto LABEL_91;
    }

    if (HIDWORD(v1582))
    {
      v965 = [v1650 providerDomainID];
      v966 = [v965 pathComponents];
      v967 = sub_1CF9E6D48();

      v968 = *v967->tree;
      v967, v969, v970, v971, v972, v973, v974, v975;
      v976 = v965;
      v977 = v1652;
      if (v968 >= 2)
      {
        v976 = [v965 stringByDeletingLastPathComponent];
        if (!v976)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v979 = v978;
          v976 = sub_1CF9E6888();
          v980 = v979;
          v977 = v1652;
          v980, v981, v982, v983, v984, v985, v986, v987;
        }
      }

      v988 = v977;
      v989 = [v988 pathComponents];
      v990 = sub_1CF9E6D48();

      v991 = *v990->tree;
      v990, v992, v993, v994, v995, v996, v997, v998;
      v999 = v988;
      if (v991 >= 2)
      {
        v999 = [v988 stringByDeletingLastPathComponent];
        if (!v999)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v1001 = v1000;
          v999 = sub_1CF9E6888();
          v1001, v1002, v1003, v1004, v1005, v1006, v1007, v1008;
        }
      }

      v1009 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v1011 = v1010;
      v1013 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v1014 = v1009;
      v1015 = v1012;
      if (v1014 == v1013 && v1011 == v1012)
      {

        v1011, v1016, v1017, v1018, v1019, v1020, v1021, v1022;
        v1015, v1023, v1024, v1025, v1026, v1027, v1028, v1029;
LABEL_234:
        (*(v1655 + 8))(v1636, v208);

        v193 = v1656;
        goto LABEL_92;
      }

      v1432 = sub_1CF9E8048();

      v1011, v1433, v1434, v1435, v1436, v1437, v1438, v1439;
      v1015, v1440, v1441, v1442, v1443, v1444, v1445, v1446;
      if (v1432)
      {
        goto LABEL_234;
      }
    }

    v1607, v491, v492, v493, v494, v495, v496, v497;
    v1447 = [v1652 fp_obfuscatedProviderDomainID];
    v1659 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v1449 = v1448;

    v1450 = fpfs_current_or_default_log();
    v1451 = v1599;
    sub_1CF9E6128();
    v1452 = v1655;
    v1453 = v1596;
    v1662 = *(v1655 + 16);
    (v1662)(v1596, v1636, v208);

    v1454 = sub_1CF9E6108();
    v1455 = sub_1CF9E72B8();
    v1449, v1456, v1457, v1458, v1459, v1460, v1461, v1462;
    LODWORD(v1658) = v1455;
    if (os_log_type_enabled(v1454, v1455))
    {
      v1470 = swift_slowAlloc();
      v1657 = swift_slowAlloc();
      *&v1671.st_dev = v1657;
      *v1470 = 136446466;
      v1471 = sub_1CF9E5928();
      v1472 = [v1471 fp_shortDescription];
      v1656 = v1454;
      v1473 = v1453;
      v1474 = v1472;

      v1475 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v1477 = v1476;

      v1478 = *(v1452 + 8);
      v1660 = ((v1452 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v1661 = v1478;
      v1478(v1473, v1663);
      v1479 = sub_1CEFD0DF0(v1475, v1477, &v1671.st_dev);
      v208 = v1663;
      v1477, v1480, v1481, v1482, v1483, v1484, v1485, v1486;
      *(v1470 + 4) = v1479;
      *(v1470 + 12) = 2082;
      v1487 = sub_1CEFD0DF0(v1659, v1449, &v1671.st_dev);
      v1449, v1488, v1489, v1490, v1491, v1492, v1493, v1494;
      *(v1470 + 14) = v1487;
      v1495 = v1656;
      _os_log_impl(&dword_1CEFC7000, v1656, v1658, "Attempting to import existing domain at %{public}s into new domain %{public}s", v1470, 0x16u);
      v1496 = v1657;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v1496, -1, -1);
      MEMORY[0x1D386CDC0](v1470, -1, -1);

      (*(v1643 + 8))(v1599, v1645);
    }

    else
    {
      v1449, v1463, v1464, v1465, v1466, v1467, v1468, v1469;

      v1497 = *(v1452 + 8);
      v1660 = ((v1452 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v1661 = v1497;
      v1497(v1453, v208);
      (*(v1643 + 8))(v1451, v1645);
    }

    sub_1CF9E5148();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v1498 = swift_allocObject();
    *(v1498 + 16) = xmmword_1CF9FA450;
    *(v1498 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v1498 + 40) = v1499;
    *(v1498 + 72) = v208;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1498 + 48));
    v1501 = v1636;
    (v1662)(boxed_opaque_existential_0, v1636, v208);
    sub_1CF4E04E8(v1498);
    swift_setDeallocating();
    sub_1CEFCCC44(v1498 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v1502 = v1648;
    v1503 = v1649;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    v1646[1](v1502, v1503);
    swift_willThrow();

    (v1661)(v1501, v208);
    goto LABEL_246;
  }

  v328, v333, v334, v335, v336, v337, v338, v339;
  v332, v340, v341, v342, v343, v344, v345, v346;
LABEL_91:
  (*(v1655 + 8))(v1636, v208);

LABEL_92:
  v211 = v1654;
  v164 = v1659;
  v190 = v1657;
  v182 = v1658;
LABEL_40:
  if (v1583)
  {
    v1613 = sub_1CF9E7818();
    if (!v1613)
    {
      goto LABEL_60;
    }

LABEL_44:
    v219 = 0;
    v1609 = (v193 & 0xFFFFFFFFFFFFFF8);
    v220 = (v1655 + 8);
    v221 = &selRef_initWithTarget_;
    v1611 = v193 & 0xC000000000000001;
    v1612 = (v1655 + 8);
    while (1)
    {
      if (v1611)
      {
        v223 = MEMORY[0x1D3869C30](v219, v193);
        v182 = v1662;
        v164 = (v219 + 1);
        if (__OFADD__(v219, 1))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      else
      {
        v182 = v1662;
        if (v219 >= *(v1609 + 2))
        {
          __break(1u);
          goto LABEL_240;
        }

        v223 = *(v193 + 8 * v219 + 32);
        v164 = (v219 + 1);
        if (__OFADD__(v219, 1))
        {
          goto LABEL_59;
        }
      }

      isa = v221[122].isa;
      v1652 = v223;
      v225 = [v223 isa];
      sub_1CF9E59D8();

      v226 = objc_opt_self();
      v227 = sub_1CF9E5928();
      *&v1671.st_dev = 0;
      v1679[0] = 0;
      v228 = [v226 getProviderDomainID:v227 location:2 foundDomainID:&v1671 error:v1679];

      v229 = *&v1671.st_dev;
      if (!v228)
      {
        v284 = v1679[0];
        v285 = v229;
        sub_1CF9E57F8();

        swift_willThrow();
        (*v1612)(v1662, v1663);
        v1607, v286, v287, v288, v289, v290, v291, v292;

        goto LABEL_244;
      }

      v220 = v1612;
      v230 = *v1612;
      v231 = v1679[0];
      if (v229)
      {
        v1636 = v229;
        v230(v1662, v1663);
        v232 = [v1650 providerDomainID];
        v233 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v235 = v234;
        v237 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v238 = v233;
        v239 = v236;
        if (v238 == v237 && v235 == v236)
        {

          v235, v240, v241, v242, v243, v244, v245, v246;
          v239, v247, v248, v249, v250, v251, v252, v253;
          v211 = v1654;
        }

        else
        {
          v254 = sub_1CF9E8048();

          v235, v255, v256, v257, v258, v259, v260, v261;
          v239, v262, v263, v264, v265, v266, v267, v268;
          if ((v254 & 1) == 0)
          {
            v1607, v269, v270, v271, v272, v273, v274, v275;
            v347 = [v1636 fp_obfuscatedProviderDomainID];
            v348 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v350 = v349;

            v351 = fpfs_current_or_default_log();
            v352 = v1622;
            sub_1CF9E6128();
            v353 = v1652;

            v354 = sub_1CF9E6108();
            v355 = sub_1CF9E72B8();
            v350, v356, v357, v358, v359, v360, v361, v362;
            v1662 = v353;

            if (os_log_type_enabled(v354, v355))
            {
              v363 = swift_slowAlloc();
              LODWORD(v1660) = v355;
              v364 = v363;
              v1661 = swift_slowAlloc();
              *&v1671.st_dev = v1661;
              *v364 = 136446466;
              v365 = [v1662 knownFolder];
              v1659 = v354;
              v366 = v365;
              v367 = v1644;
              sub_1CF9E59D8();

              v368 = sub_1CF9E5928();
              v369 = [v368 fp_shortDescription];

              v370 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v371 = v348;
              v373 = v372;

              v374 = v367;
              v375 = &selRef_initWithTarget_;
              v230(v374, v1663);
              v376 = sub_1CEFD0DF0(v370, v373, &v1671.st_dev);
              v373, v377, v378, v379, v380, v381, v382, v383;
              *(v364 + 4) = v376;
              *(v364 + 12) = 2082;
              v384 = sub_1CEFD0DF0(v371, v350, &v1671.st_dev);
              v350, v385, v386, v387, v388, v389, v390, v391;
              *(v364 + 14) = v384;
              v392 = v1659;
              _os_log_impl(&dword_1CEFC7000, v1659, v1660, "Attempting to import detached folder at %{public}s into new domain %{public}s", v364, 0x16u);
              v393 = v1661;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v393, -1, -1);
              MEMORY[0x1D386CDC0](v364, -1, -1);

              (*(v1643 + 8))(v1622, v1645);
              v394 = v1649;
              v395 = v1648;
              v396 = v1646;
            }

            else
            {

              v350, v442, v443, v444, v445, v446, v447, v448;
              (*(v1643 + 8))(v352, v1645);
              v394 = v1649;
              v395 = v1648;
              v396 = v1646;
              v375 = &selRef_initWithTarget_;
            }

            sub_1CF9E5148();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            v449 = swift_allocObject();
            *(v449 + 16) = xmmword_1CF9FA450;
            *(v449 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(v449 + 40) = v450;
            v451 = v375[122];
            p_isa = v1662;
            v453 = [v1662 v451];
            *(v449 + 72) = v1663;
            __swift_allocate_boxed_opaque_existential_0((v449 + 48));
            sub_1CF9E59D8();

            sub_1CF4E04E8(v449);
            swift_setDeallocating();
            sub_1CEFCCC44(v449 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            swift_deallocClassInstance();
            sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
            sub_1CF9E57D8();
            sub_1CF9E50D8();
            v396[1](v395, v394);
            swift_willThrow();

LABEL_243:
LABEL_244:
            v180 = v1590;
LABEL_245:

LABEL_246:
            v153 = v1588;
LABEL_247:
            sub_1CEFCCC44(v153, &unk_1EC4BE310, qword_1CF9FCBE0);
            return;
          }

          v193 = v1656;
          v211 = v1654;
        }
      }

      else
      {
        v230(v1662, v1663);
      }

      ++v219;
      v222 = v164 == v1613;
      v164 = v1659;
      v190 = v1657;
      v182 = v1658;
      v221 = &selRef_initWithTarget_;
      if (v222)
      {
        goto LABEL_60;
      }
    }
  }

  v1613 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v1613)
  {
    goto LABEL_44;
  }

LABEL_60:
  v276 = v1660;
  sub_1CF798A20(v1650);
  if (v276)
  {

    v1607, v277, v278, v279, v280, v281, v282, v283;
    sub_1CEFCCC44(v1588, &unk_1EC4BE310, qword_1CF9FCBE0);
    return;
  }

  v293 = v1584;
  sub_1CEFCCBDC(v1588, v1584, &unk_1EC4BE310, qword_1CF9FCBE0);
  v294 = v1663;
  if (v1585(v293, 1, v1663) == 1)
  {
    sub_1CEFCCC44(v293, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v319 = v1655;
    v320 = v1619;
    (*(v1655 + 32))(v1619, v293, v294);
    v321 = sub_1CF9E5928();
    v322 = sub_1CF9E5928();
    v323 = [v321 fp:v322 relationshipToItemAtURL:?];

    if (v323 == 1)
    {
      (*(v319 + 8))(v320, v294);
    }

    else
    {
      v437 = sub_1CF9E5928();
      v438 = sub_1CF9E5928();
      *&v1671.st_dev = 0;
      v439 = [v1590 moveItemAtURL:v437 toURL:v438 error:&v1671];

      if (v439)
      {
        v440 = *(v1655 + 8);
        v441 = *&v1671.st_dev;
        v440(v320, v294);
      }

      else
      {
        v546 = *&v1671.st_dev;
        v547 = sub_1CF9E57F8();

        swift_willThrow();
        (*(v1655 + 8))(v320, v294);
      }
    }

    v211 = v1654;
    v164 = v1659;
    v190 = v1657;
    v182 = v1658;
  }

  v548 = v1624;
  sub_1CEFCCBDC(v1653, v1624, &unk_1EC4BE310, qword_1CF9FCBE0);
  v549 = v1585(v548, 1, v294);
  v550 = v1630;
  v1660 = 0;
  if (v549 != 1)
  {
    (*(v1655 + 32))(v1642, v548, v294);
    v644 = *(v1633 + 56);
    v645 = v1626;
    v644(v550, 1, 1, v1626);
    v644(v190, 1, 1, v645);
    v646 = v1625;
    v644(v1625, 1, 1, v645);
    sub_1CEFCCBDC(v550, v1631, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCBDC(v190, v1627, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCBDC(v646, v164, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v648 = v1628;
    v647 = v1629;
    v649 = (v1628 + *(v1629 + 56));
    *v649 = 0;
    v649[1] = 0;
    v1658 = v649;
    *(&v648->isa + v647[17]) = 2;
    v1662 = v647[23];
    *(&v648->isa + v1662) = 6;
    v1652 = v647[30];
    v644(v648 + v1652, 1, 1, v645);
    v1654 = v648 + v647[34];
    v1653 = xmmword_1CF9F4E20;
    *v1654 = xmmword_1CF9F4E20;
    v650 = v648 + v647[37];
    v651 = (&v648->isa + v647[38]);
    *v651 = 0;
    v651[1] = 0;
    fpfs_supports_vfs_ignore_permissions_iopolicy();
    LOBYTE(v648->isa) = 1;
    *(&v648->isa + v647[20]) = 0;
    *(&v648->isa + v647[28]) = 0;
    *(&v648->isa + v647[29]) = 0;
    *(&v648->isa + v647[26]) = 0;
    *(&v648->isa + v647[27]) = 0;
    HIDWORD(v648->isa) = 0;
    LOBYTE(v648[1].isa) = 1;
    *v650 = 0;
    v650[4] = 1;
    v652 = v1633;
    WORD1(v648[1].isa) = 493;
    v653 = v1620;
    sub_1CEFCCBDC(v1631, v1620, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v654 = *(v652 + 48);
    v655 = v654(v653, 1, v645);
    v1636 = v654;
    if (v655 == 1)
    {
      v656 = v1617;
      sub_1CF9E5C88();
      if (v654(v653, 1, v645) != 1)
      {
        sub_1CEFCCC44(v653, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v656 = v1617;
      (*(v652 + 32))(v1617, v653, v645);
    }

    v657 = *(v652 + 32);
    v657(v648 + v647[7], v656, v645);
    v658 = v1627;
    v659 = v1621;
    sub_1CEFCCBDC(v1627, v1621, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v660 = v645;
    v661 = v1636;
    v662 = (v1636)(v659, 1, v660);
    v1633 = v652 + 32;
    *&v1650 = v657;
    if (v662 == 1)
    {
      v663 = v1618;
      sub_1CF9E5C88();
      sub_1CEFCCC44(v658, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v1631, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v1625, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v1657, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v1630, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v664 = v1626;
      v665 = (v661)(v659, 1, v1626);
      v666 = v664;
      if (v665 != 1)
      {
        sub_1CEFCCC44(v659, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        v666 = v664;
      }
    }

    else
    {
      sub_1CEFCCC44(v658, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v1631, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v1625, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v1657, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v1630, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v667 = v1618;
      v668 = v1626;
      v657(v1618, v659, v1626);
      v663 = v667;
      v666 = v668;
    }

    v669 = v1628;
    v670 = v1629;
    v671 = *(v1629 + 124);
    v672 = v1628 + *(v1629 + 128);
    v673 = *(v1629 + 132);
    v674 = v1628 + *(v1629 + 140);
    (v1650)(v1628 + *(v1629 + 32), v663, v666);
    *(&v669->isa + v670[9]) = 0;
    *(&v669->isa + v670[10]) = 0;
    *(&v669->isa + v670[13]) = 0;
    *(&v669->isa + v670[19]) = 0;
    *(&v669->isa + v670[21]) = 0;
    *(&v669->isa + v670[15]) = 0;
    *(&v669->isa + v670[16]) = 0;
    *(&v669->isa + v670[11]) = 0;
    *(&v669->isa + v670[12]) = 0;
    *(&v669->isa + v670[18]) = 0;
    sub_1CEFDA9E0(v1659, v669 + v1652, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    *(&v669->isa + v671) = 0;
    *v672 = 0;
    v672[8] = 1;
    *(&v669->isa + v673) = 0;
    v675 = v1658;
    v1658[1], v676, v677, v678, v679, v680, v681, v682;
    *v675 = 0;
    v675[1] = 0;
    v683 = v1654;
    sub_1CEFE48D8(*v1654, *(v1654 + 1));
    *v683 = v1653;
    *v674 = 0;
    v674[8] = 1;
    *(&v669->isa + v670[36]) = 0;
    *(&v669->isa + v670[24]) = 0;
    *(&v669->isa + v670[25]) = 0;
    *(&v669->isa + v670[22]) = 0;
    *(&v669->isa + v1662) = 6;
    v684 = v1638;
    sub_1CEFE4874(v669, v1638);
    *(v684 + v670[20]) = 1;
    v573 = v1588;
    v686 = v1642;
    v687 = v1643;
    v688 = v1663;
    v689 = v1637;
    if (v1613)
    {
      v690 = 0;
      v1633 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID;
      v1636 = (v1656 & 0xC000000000000001);
      v1629 = v1656 & 0xFFFFFFFFFFFFFF8;
      v1658 = (v1643 + 8);
      v691 = (v1655 + 8);
      ++v1646;
      *&v685 = 136446466;
      v1650 = v685;
      v1662 = v1655 + 8;
      while (1)
      {
        if (v1636)
        {
          v692 = MEMORY[0x1D3869C30](v690, v1656);
          v693 = v1641;
        }

        else
        {
          v693 = v1641;
          if (v690 >= *(v1629 + 16))
          {
            __break(1u);
LABEL_267:
            v1320 = swift_allocError();
            *v1564 = v686;
LABEL_268:
            v1565 = sub_1CF9E57E8();

            v1566 = [v1565 fp_prettyDescription];
            v1567 = [v1566 description];

            v1562 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v1563 = v1568;

            goto LABEL_269;
          }

          v692 = *(v1656 + 8 * v690 + 32);
        }

        v694 = &selRef_initWithTarget_;
        if (__OFADD__(v690, 1))
        {
          __break(1u);
          goto LABEL_265;
        }

        v695 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v696 = v692;
        v697 = sub_1CF9E6108();
        v698 = sub_1CF9E7288();

        v699 = os_log_type_enabled(v697, v698);
        v1654 = v690;
        *&v1653 = v690 + 1;
        v1660 = v696;
        if (v699)
        {
          v700 = swift_slowAlloc();
          v1659 = swift_slowAlloc();
          *&v1671.st_dev = v1659;
          *v700 = v1650;
          v701 = [(objc_class *)v696 knownFolder];
          v1657 = v697;
          v702 = v701;
          v703 = v696;
          v704 = v1644;
          sub_1CF9E59D8();

          v705 = sub_1CF9E5928();
          v706 = [v705 fp_shortDescription];

          v707 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v709 = v708;

          LODWORD(v1652) = v698;
          v710 = *v1662;
          v711 = v1663;
          (*v1662)(v704, v1663);
          v712 = sub_1CEFD0DF0(v707, v709, &v1671.st_dev);
          v709, v713, v714, v715, v716, v717, v718, v719;
          *(v700 + 4) = v712;
          *(v700 + 12) = 2082;
          v720 = v703;
          v721 = v711;
          v722 = [(objc_class *)v720 logicalLocation];
          sub_1CF9E59D8();

          v723 = sub_1CF9E5928();
          v724 = [v723 fp_shortDescription];

          v725 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v727 = v726;

          (v710)(v704, v721);
          v694 = &selRef_initWithTarget_;
          v728 = sub_1CEFD0DF0(v725, v727, &v1671.st_dev);
          v727, v729, v730, v731, v732, v733, v734, v735;
          *(v700 + 14) = v728;
          v736 = v1657;
          _os_log_impl(&dword_1CEFC7000, v1657, v1652, "marking folder %{public}s as detached from %{public}s", v700, 0x16u);
          v737 = v1659;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v737, -1, -1);
          MEMORY[0x1D386CDC0](v700, -1, -1);

          v1657 = *v1658;
          (v1657)(v1641, v1645);
        }

        else
        {

          v1657 = *v1658;
          (v1657)(v693, v1645);
          v721 = v1663;
          v704 = v1644;
        }

        v738 = v1639;
        v739 = v694[122];
        v740 = v1660;
        v741 = [v1660 v739];
        sub_1CF9E59D8();

        sub_1CF9E58E8();
        v742, v742, v743, v744, v745, v746, v747, v748;
        sub_1CF9E5988();
        sub_1CF9E5108();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v749 = v1648;
        v750 = v1649;
        sub_1CF9E57D8();
        v751 = sub_1CF9E50D8();
        (*v1646)(v749, v750);
        swift_willThrow();
        v752 = *v1662;
        (*v1662)(v738, v721);
        (v752)(v704, v721);
        v753 = fpfs_current_or_default_log();
        v754 = v1640;
        sub_1CF9E6128();
        v755 = v740;
        v756 = v751;
        v757 = sub_1CF9E6108();
        v758 = sub_1CF9E72A8();

        v759 = os_log_type_enabled(v757, v758);
        v1659 = v752;
        if (v759)
        {
          v760 = swift_slowAlloc();
          v1660 = v755;
          v761 = v760;
          v1631 = swift_slowAlloc();
          v1652 = swift_slowAlloc();
          *&v1671.st_dev = v1652;
          *v761 = v1650;
          v762 = [v1660 knownFolder];
          LODWORD(v1630) = v758;
          v763 = v762;
          sub_1CF9E59D8();

          v764 = sub_1CF9E5928();
          v765 = [v764 fp_shortDescription];

          v766 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v768 = v767;

          (v752)(v704, v1663);
          v769 = sub_1CEFD0DF0(v766, v768, &v1671.st_dev);
          v768, v770, v771, v772, v773, v774, v775, v776;
          *(v761 + 4) = v769;
          *(v761 + 12) = 2112;
          swift_getErrorValue();
          v777 = Error.prettyDescription.getter(v1664, v1665);
          *(v761 + 14) = v777;
          v778 = v1631;
          *v1631 = v777;
          _os_log_impl(&dword_1CEFC7000, v757, v1630, "couldn't fix permission on folder %{public}s: %@", v761, 0x16u);
          sub_1CEFCCC44(v778, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v778, -1, -1);
          v779 = v1652;
          __swift_destroy_boxed_opaque_existential_1(v1652);
          MEMORY[0x1D386CDC0](v779, -1, -1);
          v780 = v761;
          v755 = v1660;
          MEMORY[0x1D386CDC0](v780, -1, -1);

          (v1657)(v1640, v1645);
          v781 = &selRef_initWithTarget_;
        }

        else
        {

          (v1657)(v754, v1645);
          v781 = &selRef_initWithTarget_;
        }

        v782 = v1588;
        v783 = v755;
        v784 = [v755 v781[122]];
        v785 = v1635;
        sub_1CF9E59D8();

        sub_1CF9E5A18();
        v787 = v786;
        fpfs_openflags_1(1048832);
        sub_1CF9E6978();
        v788 = openat_s();

        if (v788 < 0)
        {
          v889 = MEMORY[0x1D38683F0](v789);
          memset(&v1671, 0, 40);
          LOBYTE(v1671.st_atimespec.tv_nsec) = 19;
          sub_1CF19BBE4(v889, &v1671.st_dev);
          sub_1CF1969CC(&v1671);
          swift_willThrow();

          v787, v890, v891, v892, v893, v894, v895, v896;
          v1607, v897, v898, v899, v900, v901, v902, v903;

          v904 = v785;
          v905 = v1663;
          v906 = v1659;
          (v1659)(v904, v1663);
          (v906)(v1642, v905);
          sub_1CEFCCC44(v782, &unk_1EC4BE310, qword_1CF9FCBE0);
          sub_1CF06DA00(v1638);
          return;
        }

        v688 = v1663;
        v691 = v1662;
        v790 = v1659;
        (v1659)(v785, v1663);
        v787, v791, v792, v793, v794, v795, v796, v797;
        MEMORY[0x1EEE9AC00](v798);
        sub_1CEFE1894(sub_1CF7A5ADC);
        v1660 = 0;
        v799 = v783;
        v800 = [v783 logicalLocation];
        LODWORD(v1652) = v788;
        v801 = v1644;
        sub_1CF9E59D8();

        v802 = v1634;
        sub_1CF9E5988();
        (v790)(v801, v688);
        v803 = [v799 &selRef_materializedURLWithDomain_ + 5];
        sub_1CF9E59D8();

        v804 = sub_1CF9E58E8();
        v806 = v805;
        (v790)(v801, v688);
        *&v1671.st_dev = v804;
        v1671.st_ino = v806;
        v1679[0] = 58;
        v1679[1] = 0xE100000000000000;
        v1668 = 47;
        v1669 = 0xE100000000000000;
        v1580 = sub_1CEFE4E68();
        v1581 = v1580;
        v1579[1] = v1580;
        v1579[0] = MEMORY[0x1E69E6158];
        v807 = sub_1CF9E7668();
        v809 = v808;
        v806, v808, v810, v811, v812, v813, v814, v815;
        *&v1671.st_dev = v807;
        v1671.st_ino = v809;
        v816 = v1652;
        v817 = v802;
        v818 = *(v1661 + v1633);
        v819 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v821 = v820;
        v822 = v1660;
        sub_1CF2AFAD4(v816, v817, &v1671.st_dev, v1651, v819, v820);
        v1660 = v822;
        if (v822)
        {

          v821, v912, v913, v914, v915, v916, v917, v918;
          v1607, v919, v920, v921, v922, v923, v924, v925;

          v1671.st_ino, v926, v927, v928, v929, v930, v931, v932;
          (v790)(v817, v688);
          (v790)(v1642, v688);
          sub_1CEFCCC44(v1588, &unk_1EC4BE310, qword_1CF9FCBE0);
          close(v816);
          sub_1CF06DA00(v1638);
          return;
        }

        v821, v823, v824, v825, v826, v827, v828, v829;
        v1671.st_ino, v830, v831, v832, v833, v834, v835, v836;
        (v790)(v817, v688);
        close(v816);
        if (([v799 detachOptions]& 1) != 0)
        {
          v837 = fpfs_current_or_default_log();
          v838 = v1632;
          sub_1CF9E6128();
          v839 = v799;
          v840 = sub_1CF9E6108();
          v841 = sub_1CF9E7288();

          if (os_log_type_enabled(v840, v841))
          {
            v842 = swift_slowAlloc();
            v1631 = v842;
            v1630 = swift_slowAlloc();
            *&v1671.st_dev = v1630;
            *v842 = v1650;
            v843 = [v839 logicalLocation];
            v1628 = v840;
            v844 = v843;
            v845 = v1644;
            sub_1CF9E59D8();

            v846 = sub_1CF9E5928();
            v847 = [v846 fp_shortDescription];

            v848 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            LODWORD(v1627) = v841;
            v850 = v849;

            v691 = v1663;
            v1652 = v839;
            v851 = v1659;
            (v1659)(v845, v1663);
            v852 = sub_1CEFD0DF0(v848, v850, &v1671.st_dev);
            v850, v853, v854, v855, v856, v857, v858, v859;
            v860 = v1631;
            *(v1631 + 4) = v852;
            *(v860 + 6) = 2082;
            v861 = [v1652 knownFolder];
            sub_1CF9E59D8();

            v862 = sub_1CF9E5928();
            v863 = [v862 fp_shortDescription];

            v864 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v866 = v865;

            (v851)(v845, v691);
            v839 = v1652;
            v867 = sub_1CEFD0DF0(v864, v866, &v1671.st_dev);
            v866, v868, v869, v870, v871, v872, v873, v874;
            v875 = v1631;
            *(v1631 + 14) = v867;
            v876 = v1628;
            _os_log_impl(&dword_1CEFC7000, v1628, v1627, "creating symlink from  %{public}s to detached root %{public}s", v875, 0x16u);
            v877 = v1630;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v877, -1, -1);
            v878 = v875;
            v879 = &selRef_initWithTarget_;
            MEMORY[0x1D386CDC0](v878, -1, -1);

            v880 = &selRef_initWithTarget_;
            (v1657)(v1632, v1645);
          }

          else
          {

            (v1657)(v838, v1645);
            v691 = v1663;
            v845 = v1644;
            v880 = &selRef_initWithTarget_;
            v879 = &selRef_initWithTarget_;
          }

          type metadata accessor for InternalPathsManager(0);
          v881 = [v839 v880[122]];
          sub_1CF9E59D8();

          v882 = [v839 v879[171]];
          v883 = v1639;
          sub_1CF9E59D8();

          sub_1CF79BE08(v845, v883, v818);
          v884 = v1659;
          (v1659)(v883, v691);
          (v884)(v845, v691);
          v687 = v1643;
          v688 = v691;
        }

        else
        {

          v687 = v1643;
        }

        v690 = (v1654 + 1);
        v686 = v1642;
        v689 = v1637;
        if (v1653 == v1613)
        {
          v573 = v1588;
          break;
        }
      }
    }

    sub_1CF9E5A18();
    v934 = v933;
    fpfs_openflags_1(0x100000);
    sub_1CF9E6978();
    v935 = openat_s();

    if (v935 < 0)
    {
      v948 = MEMORY[0x1D38683F0](v936);
      memset(&v1671, 0, 40);
      LOBYTE(v1671.st_atimespec.tv_nsec) = 19;
      v947 = sub_1CF19BBE4(v948, &v1671.st_dev);
      sub_1CF1969CC(&v1671);
      swift_willThrow();
      v934, v949, v950, v951, v952, v953, v954, v955;
      v1660 = 0;
      v946 = v1616;
    }

    else
    {
      v934, v937, v938, v939, v940, v941, v942, v943;
      sub_1CEFE528C(&v1671);
      v1684 = v1675;
      v1685 = v1676;
      v1686 = v1677;
      v1680 = v1671;
      v1681 = v1672;
      v1682 = v1673;
      v1683 = v1674;
      v1687 = v1678;
      MEMORY[0x1EEE9AC00](v944);
      LODWORD(v1580) = v935;
      v945 = v1660;
      sub_1CF9B9578(&v1680, sub_1CF2B0408, v1579, &v1582);
      v946 = v1616;
      if (!v945)
      {
        v1660 = 0;
        close(v935);
LABEL_175:
        if ((v1582 & 0x100000000) == 0)
        {
          v1030 = v1642;
          v1031 = sub_1CF9E5928();
          v1032 = sub_1CF9E5928();
          *&v1671.st_dev = 0;
          v1033 = v1590;
          v1034 = [v1590 moveItemAtURL:v1031 toURL:v1032 error:&v1671];

          if (!v1034)
          {
            v1076 = *&v1671.st_dev;
            v1607, v1077, v1078, v1079, v1080, v1081, v1082, v1083;
            sub_1CF9E57F8();

            swift_willThrow();
            (*(v1655 + 8))(v1030, v688);
            sub_1CEFCCC44(v573, &unk_1EC4BE310, qword_1CF9FCBE0);
            sub_1CF06DA00(v1638);
            return;
          }

          v1035 = *&v1671.st_dev;
          v689 = v1637;
        }

        *v1623 = 1;
        v1036 = v1651;
        v1037 = sub_1CF9E5928();
        v1038 = v1607;
        v1039 = sub_1CF9E6888();
        v1038, v1040, v1041, v1042, v1043, v1044, v1045, v1046;
        *&v1671.st_dev = 0;
        LOBYTE(v1038) = FPWriteImportCookieForDomainURL();

        if (v1038)
        {
          v1047 = *(v1655 + 8);
          v1048 = *&v1671.st_dev;
          v1047(v1642, v688);
        }

        else
        {
          v1049 = *&v1671.st_dev;
          v1050 = fpfs_current_or_default_log();
          v1051 = v1603;
          sub_1CF9E6128();
          v1052 = v1655;
          (*(v1655 + 16))(v689, v1036, v688);
          v1053 = sub_1CF9E6108();
          v1054 = sub_1CF9E72A8();
          if (os_log_type_enabled(v1053, v1054))
          {
            LODWORD(v1659) = v1054;
            v1662 = v1053;
            v1055 = swift_slowAlloc();
            v1658 = swift_slowAlloc();
            *&v1671.st_dev = v1658;
            *v1055 = 136446466;
            v1056 = sub_1CF9E5928();
            v1057 = v1049;
            v1058 = v689;
            v1059 = [v1056 fp_shortDescription];

            v1060 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v1062 = v1061;

            v1063 = v1058;
            v1049 = v1057;
            v1064 = *(v1052 + 8);
            v1655 = v1052 + 8;
            v1064(v1063, v688);
            v1065 = sub_1CEFD0DF0(v1060, v1062, &v1671.st_dev);
            v1062, v1066, v1067, v1068, v1069, v1070, v1071, v1072;
            *(v1055 + 4) = v1065;
            *(v1055 + 12) = 2080;
            if (v1049)
            {
              v1679[0] = v1049;
              sub_1CF1B7E64();
              sub_1CF7A4E50(&qword_1EC4BE010, sub_1CF1B7E64, MEMORY[0x1E6969F58]);
              v1073 = v1049;
              v1074 = sub_1CF9E7FB8();
              if (v1074)
              {
                v1075 = v1074;
              }

              else
              {
                v1075 = swift_allocError();
                *v1508 = v1073;
              }

              v1431 = v1659;
              v1509 = sub_1CF9E57E8();

              v1510 = [v1509 fp_prettyDescription];
              v1511 = [v1510 description];

              v1429 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v1430 = v1512;

              v688 = v1663;
            }

            else
            {
              v1429 = 0x3E6C696E3CLL;
              v1430 = 0xE500000000000000;
              v1431 = v1659;
            }

            v1513 = sub_1CEFD0DF0(v1429, v1430, &v1671.st_dev);
            v1430, v1514, v1515, v1516, v1517, v1518, v1519, v1520;
            *(v1055 + 14) = v1513;
            v1521 = v1662;
            _os_log_impl(&dword_1CEFC7000, v1662, v1431, "failed to write import cookie for domain %{public}s: %s", v1055, 0x16u);
            v1522 = v1658;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v1522, -1, -1);
            MEMORY[0x1D386CDC0](v1055, -1, -1);

            (*(v1643 + 8))(v1603, v1645);
            v1064(v1642, v688);
          }

          else
          {

            v1084 = *(v1052 + 8);
            v1084(v689, v688);
            (*(v687 + 8))(v1051, v1645);
            v1084(v1642, v688);
          }

          v573 = v1588;
        }

        sub_1CF06DA00(v1638);
        goto LABEL_253;
      }

      close(v935);
      v947 = v945;
      v1660 = 0;
    }

    v956 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v957 = v947;
    v958 = sub_1CF9E6108();
    v959 = sub_1CF9E72A8();

    if (os_log_type_enabled(v958, v959))
    {
      v960 = swift_slowAlloc();
      v961 = swift_slowAlloc();
      *v960 = 138412290;
      swift_getErrorValue();
      v962 = Error.prettyDescription.getter(v1666, v1667);
      *(v960 + 4) = v962;
      *v961 = v962;
      _os_log_impl(&dword_1CEFC7000, v958, v959, "can't mark the root dataless: %@", v960, 0xCu);
      sub_1CEFCCC44(v961, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v963 = v961;
      v689 = v1637;
      MEMORY[0x1D386CDC0](v963, -1, -1);
      v964 = v960;
      v946 = v1616;
      MEMORY[0x1D386CDC0](v964, -1, -1);
    }

    else
    {
    }

    v573 = v1588;
    (*(v687 + 8))(v946, v1645);
    goto LABEL_175;
  }

  sub_1CEFCCC44(v548, &unk_1EC4BE310, qword_1CF9FCBE0);
  *v1623 = 0;
  v558 = *(v1661 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume);
  if (v558)
  {
    *&v1671.st_dev = 0;
    v559 = [v558 rootURLForLocation:1 error:&v1671];
    v560 = *&v1671.st_dev;
    if (v559)
    {
      v561 = v1608;
      v562 = v559;
      sub_1CF9E59D8();
      v563 = v560;

      v564 = v1655;
      v565 = v1663;
      v1662 = *(v1655 + 32);
      (v1662)(v182, v561, v1663);
      v566 = *(v564 + 16);
      v567 = v1614;
      v566(v1614, v1651, v565);
      v568 = sub_1CF9E5928();
      v569 = sub_1CF9E5928();
      v570 = [v568 fp:v569 relationshipToItemAtURL:?];

      v571 = v570 == 0;
      v572 = [v1650 provider];
      v573 = v1588;
      if (v572)
      {
        v574 = v572;
        v575 = [v572 identifier];

        v576 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v578 = v577;
        v579 = [v575 fp_isiCloudDriveIdentifier];

        if (v579)
        {
          v1659 = v576;
          v587 = [v1589 defaultManager];
          v588 = v1651;
          sub_1CF9E5A18();
          v590 = v589;
          v591 = sub_1CF9E6888();
          v590, v592, v593, v594, v595, v596, v597, v598;
          [v587 fp:v591 createPathIfNeeded:?];

          v599 = fpfs_current_or_default_log();
          v600 = v1601;
          sub_1CF9E6128();
          v601 = v1600;
          v602 = v1663;
          v566(v1600, v588, v1663);

          v603 = sub_1CF9E6108();
          v604 = sub_1CF9E7288();
          v578, v605, v606, v607, v608, v609, v610, v611;
          if (os_log_type_enabled(v603, v604))
          {
            v619 = swift_slowAlloc();
            v1657 = swift_slowAlloc();
            *&v1671.st_dev = v1657;
            *v619 = 136446466;
            v620 = sub_1CF9E5928();
            v621 = [v620 fp_shortDescription];

            v622 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v1656 = v603;
            v624 = v623;

            v625 = *(v1655 + 8);
            LODWORD(v1653) = v604;
            v625(v1600, v602);
            v626 = sub_1CEFD0DF0(v622, v624, &v1671.st_dev);
            v624, v627, v628, v629, v630, v631, v632, v633;
            *(v619 + 4) = v626;
            *(v619 + 12) = 2082;
            v634 = sub_1CEFD0DF0(v1659, v578, &v1671.st_dev);
            v578, v635, v636, v637, v638, v639, v640, v641;
            *(v619 + 14) = v634;
            v642 = v1656;
            _os_log_impl(&dword_1CEFC7000, v1656, v1653, "creating %{public}s on disk for %{public}s", v619, 0x16u);
            v643 = v1657;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v643, -1, -1);
            MEMORY[0x1D386CDC0](v619, -1, -1);

            (*(v1643 + 8))(v1601, v1645);
          }

          else
          {
            v578, v612, v613, v614, v615, v616, v617, v618;

            v625 = *(v1655 + 8);
            v625(v601, v602);
            (*(v1643 + 8))(v600, v1645);
          }

          v573 = v1588;
          v1186 = v1644;
          sub_1CF9E5958();
          v1187 = v1614;
          v625(v1614, v602);
          (v1662)(v1187, v1186, v602);
          v571 = 0;
          v888 = v602;
          v567 = v1187;
        }

        else
        {
          v578, v580, v581, v582, v583, v584, v585, v586;
          v573 = v1588;
          v888 = v1663;
          v567 = v1614;
        }
      }

      else
      {
        v888 = v1663;
      }

      v1188 = v1660;
      sub_1CF7A4E98(v567, v571);
      v1196 = (v1655 + 8);
      v887 = v1615;
      v211 = v1654;
      if (!v1188)
      {
        v1660 = 0;
        v1607, v1189, v1190, v1191, v1192, v1193, v1194, v1195;
        v1240 = *v1196;
        (*v1196)(v567, v888);
        v1240(v1658, v888);
        *v1623 = 1;
        goto LABEL_253;
      }

      v1197 = *v1196;
      (*v1196)(v567, v888);
      v1197(v1658, v888);
      v886 = v1188;
      v1660 = 0;
    }

    else
    {
      v885 = *&v1671.st_dev;
      v886 = sub_1CF9E57F8();

      swift_willThrow();
      v1660 = 0;
      v887 = v1615;
      v573 = v1588;
      v888 = v1663;
    }

    v1198 = v886;
    v1671.st_dev = sub_1CF9E52E8();
    sub_1CF196978();
    v1199 = sub_1CF9E5658();

    v1200 = v1610;
    if ((v1199 & 1) == 0)
    {

      v1607, v1233, v1234, v1235, v1236, v1237, v1238, v1239;
      sub_1CEFCCC44(v573, &unk_1EC4BE310, qword_1CF9FCBE0);
      return;
    }

    if ((v1605 & 1) == 0)
    {
      v1607, v1201, v1202, v1203, v1204, v1205, v1206, v1207;
      v1241 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v1242 = v1655;
      (*(v1655 + 16))(v211, v1651, v888);
      v1243 = sub_1CF9E6108();
      v1244 = sub_1CF9E72A8();
      if (os_log_type_enabled(v1243, v1244))
      {
        v1245 = swift_slowAlloc();
        v1661 = v1245;
        v1662 = swift_slowAlloc();
        *&v1671.st_dev = v1662;
        *v1245 = 136446210;
        v1246 = sub_1CF9E5928();
        v1247 = v211;
        v1248 = [v1246 fp_shortDescription];

        v1249 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v1251 = v1250;

        (*(v1242 + 8))(v1247, v888);
        v1252 = sub_1CEFD0DF0(v1249, v1251, &v1671.st_dev);
        v1251, v1253, v1254, v1255, v1256, v1257, v1258, v1259;
        v1260 = v1661;
        *(v1661 + 4) = v1252;
        v1261 = v1260;
        _os_log_impl(&dword_1CEFC7000, v1243, v1244, "can't create dataless root at %{public}s: file already exists", v1260, 0xCu);
        v1262 = v1662;
        __swift_destroy_boxed_opaque_existential_1(v1662);
        v573 = v1588;
        MEMORY[0x1D386CDC0](v1262, -1, -1);
        MEMORY[0x1D386CDC0](v1261, -1, -1);

        (*(v1643 + 8))(v1615, v1645);
      }

      else
      {

        (*(v1242 + 8))(v211, v888);
        (*(v1643 + 8))(v887, v1645);
      }

      v1321 = v1649;
      v1322 = v1648;
      v1323 = v1646;
      sub_1CF9E5128();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1CF9E57D8();
      sub_1CF9E50D8();
      v1323[1](v1322, v1321);
      swift_willThrow();

      goto LABEL_258;
    }

    v1208 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v1209 = v1655;
    v1210 = *(v1655 + 16);
    v1211 = v1598;
    v1662 = v1655 + 16;
    v1659 = v1210;
    (v1210)(v1598, v1651, v888);
    v1212 = sub_1CF9E6108();
    v1213 = sub_1CF9E7288();
    if (os_log_type_enabled(v1212, v1213))
    {
      v1214 = swift_slowAlloc();
      v1657 = v1214;
      v1658 = swift_slowAlloc();
      *&v1671.st_dev = v1658;
      LODWORD(v1214->isa) = 136446210;
      v1215 = sub_1CF9E5928();
      v1216 = [v1215 fp_shortDescription];

      v1217 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v1218 = v1211;
      v1220 = v1219;

      v1221 = *(v1209 + 8);
      v1221(v1218, v888);
      v1222 = sub_1CEFD0DF0(v1217, v1220, &v1671.st_dev);
      v1220, v1223, v1224, v1225, v1226, v1227, v1228, v1229;
      v1230 = v1657;
      *(&v1657->isa + 4) = v1222;
      v1231 = v1230;
      _os_log_impl(&dword_1CEFC7000, v1212, v1213, "taking over %{public}s", v1230, 0xCu);
      v1232 = v1658;
      __swift_destroy_boxed_opaque_existential_1(v1658);
      MEMORY[0x1D386CDC0](v1232, -1, -1);
      MEMORY[0x1D386CDC0](v1231, -1, -1);

      v691 = *(v1643 + 8);
      (v691)(v1610, v1645);
    }

    else
    {

      v1221 = *(v1209 + 8);
      v1221(v1211, v888);
      v691 = *(v1643 + 8);
      (v691)(v1200, v1645);
    }

    memset(&v1671, 0, sizeof(v1671));
    v1263 = v1651;
    sub_1CF9E5A18();
    v1265 = v1264;
    v1266 = sub_1CF9E6978();
    v1265, v1267, v1268, v1269, v1270, v1271, v1272, v1273;
    LODWORD(v1265) = lstat((v1266 + 32), &v1671);

    if ((v1265 & 0x80000000) != 0 || (v1671.st_flags & 0x40000000) == 0 || (v1670 = 0, sub_1CF9E5A18(), v1282 = v1281, sub_1CF9E6978(), v1282, v1283, v1284, v1285, v1286, v1287, v1288, v1289, LODWORD(v1282) = fpfs_num_entries(), , (v1282 & 0x80000000) != 0) || !v1670)
    {
      v1607, v1274, v1275, v1276, v1277, v1278, v1279, v1280;
    }

    else
    {
      v1290 = sub_1CF9E5928();
      v1291 = v1607;
      v1292 = sub_1CF9E6888();
      v1291, v1293, v1294, v1295, v1296, v1297, v1298, v1299;
      v1679[0] = 0;
      LOBYTE(v1291) = FPWriteImportCookieForDomainURL();

      if ((v1291 & 1) == 0)
      {
        v1658 = v1679[0];
        v1300 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v1301 = v1591;
        v1302 = v1663;
        (v1659)(v1591, v1263, v1663);
        v1303 = sub_1CF9E6108();
        LODWORD(v1659) = sub_1CF9E72A8();
        v1662 = v1303;
        if (os_log_type_enabled(v1303, v1659))
        {
          v1304 = swift_slowAlloc();
          v1657 = swift_slowAlloc();
          v1679[0] = v1657;
          *v1304 = 136446466;
          v1305 = sub_1CF9E5928();
          v1306 = [v1305 fp_shortDescription];

          v1307 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v1308 = v1301;
          v1310 = v1309;

          v1221(v1308, v1302);
          v1311 = sub_1CEFD0DF0(v1307, v1310, v1679);
          v1310, v1312, v1313, v1314, v1315, v1316, v1317, v1318;
          *(v1304 + 4) = v1311;
          v690 = v1304;
          *(v1304 + 12) = 2080;
          v693 = v1658;
          if (v1658)
          {
            v1668 = v1658;
            sub_1CF1B7E64();
            sub_1CF7A4E50(&qword_1EC4BE010, sub_1CF1B7E64, MEMORY[0x1E6969F58]);
            v686 = v693;
            v1319 = sub_1CF9E7FB8();
            if (!v1319)
            {
              goto LABEL_267;
            }

            v1320 = v1319;

            goto LABEL_268;
          }

LABEL_265:
          v1562 = 0x3E6C696E3CLL;
          v1563 = 0xE500000000000000;
LABEL_269:
          v1569 = sub_1CEFD0DF0(v1562, v1563, v1679);
          v1563, v1570, v1571, v1572, v1573, v1574, v1575, v1576;
          *(v690 + 14) = v1569;
          v1577 = v1662;
          _os_log_impl(&dword_1CEFC7000, v1662, v1659, "failed to write import cookie for domain %{public}s: %s", v690, 0x16u);
          v1578 = v1657;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v1578, -1, -1);
          MEMORY[0x1D386CDC0](v690, -1, -1);

          (v691)(v1592, v1645);
        }

        else
        {

          v1221(v1301, v1302);
          (v691)(v1592, v1645);
        }
      }
    }

    *v1623 = 1;
  }

  else
  {
    v1607, v551, v552, v553, v554, v555, v556, v557;
  }

  v573 = v1588;
LABEL_253:
  sub_1CF9E5A18();
  v1524 = v1523;
  fpfs_openflags_1(0x100000);
  sub_1CF9E6978();
  v1525 = openat_s();

  if ((v1525 & 0x80000000) != 0)
  {
    v1553 = MEMORY[0x1D38683F0](v1526);
    memset(&v1671, 0, 40);
    LOBYTE(v1671.st_atimespec.tv_nsec) = 19;
    sub_1CF19BBE4(v1553, &v1671.st_dev);
    sub_1CF1969CC(&v1671);
    swift_willThrow();

    v1524, v1554, v1555, v1556, v1557, v1558, v1559, v1560;
LABEL_258:
    v153 = v573;
    goto LABEL_247;
  }

  v1524, v1527, v1528, v1529, v1530, v1531, v1532, v1533;
  v1534 = 16;
  if ((fpfs_fset_acl() & 0x80000000) != 0)
  {
    goto LABEL_261;
  }

  v1535 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v1537 = v1536;
  v1538 = v1660;
  sub_1CF2AF3BC(v1525, v1535, v1536);
  if (v1538)
  {

    v1537, v1546, v1547, v1548, v1549, v1550, v1551, v1552;
    sub_1CEFCCC44(v573, &unk_1EC4BE310, qword_1CF9FCBE0);
    close(v1525);
    return;
  }

  v1537, v1539, v1540, v1541, v1542, v1543, v1544, v1545;
  v1534 = 1024;
  if ((fpfs_fset_acl() & 0x80000000) != 0)
  {
LABEL_261:
    v1561 = MEMORY[0x1D38683F0]();
    v1671.st_dev = v1534;
    LOBYTE(v1671.st_atimespec.tv_nsec) = 4;
    sub_1CF19BBE4(v1561, &v1671.st_dev);
    sub_1CF1969CC(&v1671);
    swift_willThrow();

    sub_1CEFCCC44(v573, &unk_1EC4BE310, qword_1CF9FCBE0);
    close(v1525);
  }

  else
  {
    close(v1525);

    sub_1CEFCCC44(v573, &unk_1EC4BE310, qword_1CF9FCBE0);
  }
}

uint64_t sub_1CF7A36B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CEFF4408(a1, v8);
  sub_1CEFE528C(v14);
  v12[12] = v14[12];
  v12[13] = v14[13];
  v12[14] = v14[14];
  v13 = v15;
  v12[8] = v14[8];
  v12[9] = v14[9];
  v12[10] = v14[10];
  v12[11] = v14[11];
  v12[4] = v14[4];
  v12[5] = v14[5];
  v12[6] = v14[6];
  v12[7] = v14[7];
  v12[0] = v14[0];
  v12[1] = v14[1];
  v12[2] = v14[2];
  v12[3] = v14[3];
  v11 = a2;
  *a3 = sub_1CF9BA920(v12, sub_1CF7A5AFC, v10);
  return sub_1CF06DA00(v8);
}

void sub_1CF7A37E8(uint64_t a1)
{
  sub_1CF9E5A18();
  v2 = v1;
  fpfs_openflags_1(0);
  sub_1CF9E6978();
  v3 = openat_s();

  if ((v3 & 0x80000000) != 0)
  {
    v22 = MEMORY[0x1D38683F0](v4);
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v32 = 19;
    sub_1CF19BBE4(v22, v30);
    sub_1CF1969CC(v30);
    swift_willThrow();
    v2, v23, v24, v25, v26, v27, v28, v29;
  }

  else
  {
    v2, v5, v6, v7, v8, v9, v10, v11;
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;
    sub_1CF2AF3BC(v3, v12, v13);
    v14, v15, v16, v17, v18, v19, v20, v21;
    close(v3);
  }
}

uint64_t sub_1CF7A3900@<X0>(_DWORD *a3@<X8>)
{
  sub_1CF9E5A18();
  v5 = v4;
  v16[4] = sub_1CF36581C;
  v16[5] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1CF9B8AD8;
  v16[3] = &block_descriptor_57;
  v6 = _Block_copy(v16);

  sub_1CF9E6978();
  v5, v7, v8, v9, v10, v11, v12, v13;
  dataless_fault_at = fpfs_create_dataless_fault_at();

  _Block_release(v6);
  *a3 = dataless_fault_at;
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF7A3A30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5968();
  sub_1CF9E5A18();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v10 = sub_1CF9E6888();
  v9, v11, v12, v13, v14, v15, v16, v17;
  LODWORD(a3) = [a3 fileExistsAtPath_];

  return a3 ^ 1;
}

id InternalPathsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InternalPathsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalPathsManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CF7A3D70(uint64_t a1)
{
  sub_1CF1DEC4C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t fpfs_openflags_1(int a1)
{
  if (a1)
  {
    return a1 | 0x104u;
  }

  else
  {
    return 33028;
  }
}

uint64_t sub_1CF7A3F14(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v8 setDateStyle_];
  [v8 setTimeStyle_];
  sub_1CF9E5CE8();
  v9 = sub_1CF9E5C48();
  (*(v5 + 8))(v7, v4);
  v10 = [v8 stringFromDate_];

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  v53 = v11;
  v54 = v13;
  v51 = 47;
  v52 = 0xE100000000000000;
  v49 = 45;
  v50 = 0xE100000000000000;
  sub_1CEFE4E68();
  v14 = sub_1CF9E7668();
  v16 = v15;
  v13, v15, v17, v18, v19, v20, v21, v22;
  v53 = v14;
  v54 = v16;
  v51 = 44;
  v52 = 0xE100000000000000;
  v49 = 0;
  v50 = 0xE000000000000000;
  v23 = sub_1CF9E7668();
  v25 = v24;
  v16, v24, v26, v27, v28, v29, v30, v31;
  v53 = 10272;
  v54 = 0xE200000000000000;
  MEMORY[0x1D3868CC0](v23, v25);
  v25, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v39 = v54;
  v51 = a1;
  v52 = a2;

  v51 = sub_1CF9E6B48();
  v52 = v40;
  sub_1CF9E6A28();
  v39, v41, v42, v43, v44, v45, v46, v47;

  return v51;
}

void sub_1CF7A41CC()
{
  v164 = *MEMORY[0x1E69E9840];
  v0 = sub_1CF9E5D98();
  v143 = *(v0 - 8);
  v144 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v142 = &v137 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1CF9E5CF8();
  v149 = *(v2 - 8);
  v150 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v148 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E5248();
  v151 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v155 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1CF9E5268();
  v158 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v7 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5A58();
  v152 = *(v8 - 8);
  v153 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v159 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v137 - v11;
  v154 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  memset(&v160, 0, sizeof(v160));
  sub_1CF9E5A18();
  v13 = v12;
  v14 = sub_1CF9E6978();
  v13, v15, v16, v17, v18, v19, v20, v21;
  LODWORD(v13) = lstat((v14 + 32), &v160);

  if (!v13)
  {
    st_mode = v160.st_mode;
    v23 = sub_1CF9E61D8() & st_mode;
    if (v23 == sub_1CF9E61D8())
    {
      sub_1CF9E5A18();
      v25 = v24;
      v26 = sub_1CF9E6978();
      v25, v27, v28, v29, v30, v31, v32, v33;
      unlink((v26 + 32));
    }
  }

  sub_1CF9E5A18();
  v35 = v34;
  fpfs_openflags_1(0x100000);
  sub_1CF9E6978();
  v36 = openat_s();

  if (v36 < 0)
  {
    v89 = MEMORY[0x1D38683F0](v37);
    v162 = 0;
    memset(v161, 0, sizeof(v161));
    v163 = 19;
    sub_1CF19BBE4(v89, v161);
    sub_1CF1969CC(v161);
    swift_willThrow();

    v35, v90, v91, v92, v93, v94, v95, v96;
  }

  else
  {
    v147 = v36;
    v35, v38, v39, v40, v41, v42, v43, v44;
    v45 = sub_1CF9E58E8();
    v46 = v7;
    v48 = v47;
    v49 = sub_1CF9E58E8();
    v51 = v50;
    sub_1CF9E5988();
    sub_1CF9E5988();
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1BA0, &qword_1CFA0CD20);
    inited = swift_initStackObject();
    v139 = xmmword_1CF9FA450;
    *(inited + 16) = xmmword_1CF9FA450;
    v141 = v45;
    *(inited + 32) = v45;
    *(inited + 40) = v48;
    *(inited + 48) = v49;
    v137 = v49;
    *(inited + 56) = v51;
    v146 = v48;
    v53 = v46;

    v145 = v51;

    v54 = sub_1CF4E0980(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &qword_1EC4C1BA8, &qword_1CFA0CD28);
    v54, v55, v56, v57, v58, v59, v60, v61;
    v62 = v155;
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    v63 = sub_1CF7A4E50(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v64 = v156;
    sub_1CF9E57D8();
    v65 = sub_1CF9E50D8();
    v66 = *(v158 + 8);
    v158 += 8;
    v138 = v66;
    v66(v53, v64);
    swift_willThrow();
    v67 = v65;
    sub_1CF9E5128();
    sub_1CF7A4E50(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
    LOBYTE(v65) = sub_1CF9E5658();

    (*(v151 + 8))(v62, v4);
    if (v65 & 1) != 0 || (v68 = v67, LODWORD(v161[0]) = sub_1CF9E52E8(), sub_1CF196978(), v69 = sub_1CF9E5658(), v68, (v69) || (v70 = v68, LODWORD(v161[0]) = sub_1CF9E53B8(), v71 = sub_1CF9E5658(), v70, (v71))
    {
      v151 = v63;

      MEMORY[0x1EEE9AC00](v72);
      v73 = v154;
      v74 = v159;
      *(&v137 - 2) = v154;
      *(&v137 - 1) = v74;
      v75 = v148;
      sub_1CF9E5CE8();
      v76 = v137;
      v77 = v145;
      sub_1CF51B6BC(v75, sub_1CF7A4E30, (&v137 - 4), v137);
      v79 = v78;
      v81 = v80;
      (*(v149 + 8))(v75, v150);
      if (v81)
      {
        v77, v82, v83, v84, v85, v86, v87, v88;
      }

      else
      {
        v161[0] = v76;
        v161[1] = v77;
        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        v97 = v142;
        sub_1CF9E5D88();
        v98 = sub_1CF9E5D18();
        v100 = v99;
        (*(v143 + 8))(v97, v144);
        MEMORY[0x1D3868CC0](v98, v100);
        v100, v101, v102, v103, v104, v105, v106, v107;
        v79 = v161[0];
        v81 = v161[1];
      }

      v108 = swift_initStackObject();
      *(v108 + 16) = v139;
      *(v108 + 32) = v141;
      v109 = v108 + 32;
      *(v108 + 40) = v146;
      *(v108 + 48) = v79;
      *(v108 + 56) = v81;
      v110 = sub_1CF4E0980(v108);
      swift_setDeallocating();
      sub_1CEFCCC44(v109, &qword_1EC4C1BA8, &qword_1CFA0CD28);
      v110, v111, v112, v113, v114, v115, v116, v117;
      sub_1CF9E5108();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      v118 = v156;
      sub_1CF9E57D8();
      sub_1CF9E50D8();
      v138(v53, v118);
      swift_willThrow();

      v119 = v153;
      v120 = *(v152 + 8);
      v120(v157, v153);
      v120(v159, v119);
    }

    else
    {
      v121 = v153;
      v122 = *(v152 + 8);
      v122(v157, v153);
      v145, v123, v124, v125, v126, v127, v128, v129;
      v146, v130, v131, v132, v133, v134, v135, v136;

      v122(v159, v121);
    }

    close(v147);
  }
}

void *sub_1CF7A4B00(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1CF9E5928();
  v11 = 0;
  v12[0] = 0;
  LODWORD(v3) = [v3 getProviderDomainID:v4 location:a2 foundDomainID:v12 error:&v11];

  v5 = v12[0];
  if (v3)
  {
    v6 = v11;
    v7 = v5;
  }

  else
  {
    v8 = v11;
    v9 = v5;
    sub_1CF9E57F8();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1CF7A4BF8(uint64_t a1, void *a2)
{
  v4 = sub_1CF7A4B00(a1, 1);
  if (!v2)
  {
    v6 = v4;
    v7 = [a2 providerDomainID];
    v8 = v7;
    if (v6)
    {
      v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = v10;
      v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v14 = v9;
      v15 = v12;
      if (v14 == v13 && v11 == v12)
      {

        v11, v32, v33, v34, v35, v36, v37, v38;
        v15, v39, v40, v41, v42, v43, v44, v45;
      }

      else
      {
        v17 = sub_1CF9E8048();

        v11, v18, v19, v20, v21, v22, v23, v24;
        v15, v25, v26, v27, v28, v29, v30, v31;
        v5 = 0;
        if ((v17 & 1) == 0)
        {
          return v5 & 1;
        }
      }

      v5 = 1;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5 & 1;
}

BOOL sub_1CF7A4D70(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(&v5, 0, sizeof(v5));
  if (fstat(a1, &v5))
  {
    return 0;
  }

  st_mode = v5.st_mode;
  v3 = sub_1CF9E61D8() & st_mode;
  return v3 == sub_1CF9E61D8() && fgetxattr(a1, "com.apple.fileprovider.detached-link#P", 0, 0, 0, 0) >= 0;
}

uint64_t sub_1CF7A4E50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF7A4E98(uint64_t a1, int a2)
{
  v197 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v176 = v4;
  v177 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v166 = &v161 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v161 - v11;
  v13 = sub_1CF9E5CF8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1CF9E5A58();
  v175 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = (&v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v161 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v161 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v161 - v24;
  v178 = a1;
  sub_1CF9E5988();
  v165 = a2;
  v172 = v7;
  v170 = v19;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v167 = v12;
  v26 = [objc_opt_self() defaultManager];
  sub_1CF9E5A18();
  v28 = v27;
  v29 = sub_1CF9E6888();
  v28, v30, v31, v32, v33, v34, v35, v36;
  [v26 fp:v29 createPathIfNeeded:?];

  sub_1CF9E5A18();
  v38 = v37;
  fpfs_openflags_1(0x100000);
  sub_1CF9E6978();
  v39 = openat_s();

  if (v39 < 0)
  {
    v115 = MEMORY[0x1D38683F0](v40);
    *&v185 = 0;
    v183 = 0u;
    v184 = 0u;
    BYTE8(v185) = 19;
    v80 = sub_1CF19BBE4(v115, &v183);
    sub_1CF1969CC(&v183);
    swift_willThrow();
    v51 = v175;
    v52 = v173;
    v174 = v175[1];
    v174(v25, v173);
    v38, v116, v117, v118, v119, v120, v121, v122;
LABEL_18:
    v73 = v178;
    v81 = v171;
    goto LABEL_19;
  }

  v38, v41, v42, v43, v44, v45, v46, v47;
  if ((fpfs_fset_acl() & 0x80000000) != 0)
  {
    v123 = MEMORY[0x1D38683F0]();
    LODWORD(v183) = 16;
    BYTE8(v185) = 4;
    v80 = sub_1CF19BBE4(v123, &v183);
    sub_1CF1969CC(&v183);
    swift_willThrow();
    v51 = v175;
    v52 = v173;
    v174 = v175[1];
    v174(v25, v173);
    close(v39);
    goto LABEL_18;
  }

  close(v39);
  v12 = v167;
LABEL_5:
  v168 = v25;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  LODWORD(v183) = 2;
  WORD4(v183) = 448;
  sub_1CF36B41C(&v183);
  sub_1CF9E5CE8();
  *(&v184 + 1) = sub_1CF1ADD60(v15);
  *&v185 = v48;
  sub_1CF9E5CE8();
  *(&v185 + 1) = sub_1CF1ADD60(v15);
  *&v186 = v49;
  v50 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v51 = v175;
  v52 = v173;
  v163 = v175[2];
  v164 = v175 + 2;
  v163(v22, v178, v173);
  v53 = sub_1CF9E6108();
  v54 = sub_1CF9E7288();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v167 = v12;
    v56 = v22;
    v57 = v55;
    v162 = swift_slowAlloc();
    v181[0] = v162;
    *v57 = 136315138;
    v58 = sub_1CF9E5928();
    v59 = [v58 fp_shortDescription];

    v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v62 = v61;

    v63 = v176;
    v174 = v175[1];
    v174(v56, v52);
    v64 = sub_1CEFD0DF0(v60, v62, v181);
    v62, v65, v66, v67, v68, v69, v70, v71;
    *(v57 + 4) = v64;
    _os_log_impl(&dword_1CEFC7000, v53, v54, "Marking root dataless %s", v57, 0xCu);
    v72 = v162;
    __swift_destroy_boxed_opaque_existential_1(v162);
    v73 = v178;
    MEMORY[0x1D386CDC0](v72, -1, -1);
    v74 = v57;
    v75 = v170;
    MEMORY[0x1D386CDC0](v74, -1, -1);

    v76 = *(v177 + 8);
    v77 = v63;
    v51 = v175;
    v78 = v76(v167, v77);
  }

  else
  {

    v174 = v51[1];
    v174(v22, v52);
    v76 = *(v177 + 8);
    v78 = v76(v12, v176);
    v73 = v178;
    v75 = v170;
  }

  MEMORY[0x1EEE9AC00](v78);
  *(&v161 - 2) = v73;
  *(&v161 - 1) = &v183;
  v79 = v169;
  sub_1CEFE1894(sub_1CF7A5B34);
  v80 = v79;
  v81 = v171;
  if (!v79)
  {
    if ((v165 & 1) == 0)
    {
      goto LABEL_14;
    }

    sub_1CF9E5A18();
    v83 = v82;
    fpfs_openflags_1(0x100000);
    sub_1CF9E6978();
    v84 = openat_s();

    if (v84 < 0)
    {
      v152 = MEMORY[0x1D38683F0](v85);
      memset(v181, 0, sizeof(v181));
      v182 = 19;
      v80 = sub_1CF19BBE4(v152, v181);
      sub_1CF1969CC(v181);
      swift_willThrow();
      v174(v168, v52);
      v83, v153, v154, v155, v156, v157, v158, v159;
    }

    else
    {
      v83, v86, v87, v88, v89, v90, v91, v92;
      if ((fpfs_fset_acl() & 0x80000000) == 0)
      {
        close(v84);
        v73 = v178;
        v75 = v170;
LABEL_14:
        v93 = fpfs_current_or_default_log();
        v94 = v166;
        sub_1CF9E6128();
        v163(v75, v73, v52);
        v95 = sub_1CF9E6108();
        v96 = sub_1CF9E7288();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v181[0] = v175;
          *v97 = 136315138;
          v98 = sub_1CF9E5928();
          v99 = [v98 fp_shortDescription];
          v178 = 0;
          v100 = v99;

          v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v103 = v102;

          v104 = v174;
          v174(v170, v173);
          v105 = sub_1CEFD0DF0(v101, v103, v181);
          v103, v106, v107, v108, v109, v110, v111, v112;
          *(v97 + 4) = v105;
          _os_log_impl(&dword_1CEFC7000, v95, v96, "Created dataless root %s", v97, 0xCu);
          v113 = v175;
          __swift_destroy_boxed_opaque_existential_1(v175);
          MEMORY[0x1D386CDC0](v113, -1, -1);
          MEMORY[0x1D386CDC0](v97, -1, -1);

          v76(v166, v176);
          return v104(v168, v173);
        }

        else
        {

          v149 = v75;
          v151 = v173;
          v150 = v174;
          v174(v149, v173);
          v76(v94, v176);
          return v150(v168, v151);
        }
      }

      v160 = MEMORY[0x1D38683F0]();
      LODWORD(v181[0]) = 1024;
      v182 = 4;
      v80 = sub_1CF19BBE4(v160, v181);
      sub_1CF1969CC(v181);
      swift_willThrow();
      v174(v168, v52);
      close(v84);
    }

    v81 = v171;
    v124 = v172;
    v73 = v178;
    goto LABEL_20;
  }

  v174(v168, v52);
LABEL_19:
  v124 = v172;
LABEL_20:
  v125 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  (v51[2])(v81, v73, v52);
  v126 = v80;
  v127 = v52;
  v128 = sub_1CF9E6108();
  v129 = sub_1CF9E72A8();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v178 = v80;
    v131 = v81;
    v132 = v130;
    v171 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *&v183 = v175;
    *v132 = 136315394;
    LODWORD(v170) = v129;
    v133 = sub_1CF9E5928();
    v134 = [v133 fp_shortDescription];

    v135 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v137 = v136;

    v174(v131, v127);
    v138 = sub_1CEFD0DF0(v135, v137, &v183);
    v137, v139, v140, v141, v142, v143, v144, v145;
    *(v132 + 4) = v138;
    *(v132 + 12) = 2112;
    swift_getErrorValue();
    v146 = Error.prettyDescription.getter(v179, v180);
    *(v132 + 14) = v146;
    v147 = v171;
    *v171 = v146;
    _os_log_impl(&dword_1CEFC7000, v128, v170, "Error while creating root %s: %@", v132, 0x16u);
    sub_1CEFCCC44(v147, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v147, -1, -1);
    v148 = v175;
    __swift_destroy_boxed_opaque_existential_1(v175);
    MEMORY[0x1D386CDC0](v148, -1, -1);
    MEMORY[0x1D386CDC0](v132, -1, -1);

    (*(v177 + 8))(v172, v176);
  }

  else
  {

    v174(v81, v127);
    (*(v177 + 8))(v124, v176);
  }

  return swift_willThrow();
}

uint64_t sub_1CF7A5AFC@<X0>(_DWORD *a2@<X8>)
{
  result = fpfs_set_dataless_cmpfs_attrs();
  *a2 = result;
  return result;
}

uint64_t sub_1CF7A5C88()
{
  sub_1CF9E7948();
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0x3A657A6973202CLL, 0xE700000000000000);
  v17 = sub_1CF9E7F98();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x203A746E756F633CLL;
}

uint64_t sub_1CF7A5DA0()
{
  v1 = v0;
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 description];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    MEMORY[0x1D3868CC0](v15, v17);
    v17, v18, v19, v20, v21, v22, v23, v24;
    MEMORY[0x1D3868CC0](980447264, 0xE400000000000000);

    0xE400000000000000, v25, v26, v27, v28, v29, v30, v31;
  }

  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    sub_1CF9E7948();
    0xE000000000000000, v32, v33, v34, v35, v36, v37, v38;
    v39 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress);
    if (v39)
    {
      v40 = [v39 debugDescription];
      v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v43 = v42;
    }

    else
    {
      v43 = 0xE200000000000000;
      v41 = 24942;
    }

    MEMORY[0x1D3868CC0](v41, v43);
    v43, v44, v45, v46, v47, v48, v49, v50;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA5AE20);
    0x80000001CFA5AE20, v51, v52, v53, v54, v55, v56, v57;
  }

  v58 = sub_1CF9E5928();
  v59 = [v58 fp_shortDescription];

  v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v62 = v61;

  MEMORY[0x1D3868CC0](v60, v62);
  v62, v63, v64, v65, v66, v67, v68, v69;
  MEMORY[0x1D3868CC0](0x3A6C727520, 0xE500000000000000);
  0xE500000000000000, v70, v71, v72, v73, v74, v75, v76;

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  0xEB000000003A7373, v77, v78, v79, v80, v81, v82, v83;
  return 0x6572676F7270673CLL;
}

uint64_t sub_1CF7A6024(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v6 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1CF1F7C44(0, *v6->tree + 1, 1, v6, v8, v9, v10, v11);
    *(a1 + 16) = v6;
  }

  v13 = *v6->tree;
  v12 = *v6->tester;
  if (v13 >= v12 >> 1)
  {
    v6 = sub_1CF1F7C44((v12 > 1), v13 + 1, 1, v6, v8, v9, v10, v11);
  }

  *v6->tree = v13 + 1;
  sub_1CF7AAD84(v19, &v6[1] + 8 * v13);
  *(a1 + 16) = v6;
  swift_endAccess();
  v14 = sub_1CF7A7E98();
  [a2 reportProgressUpdate:v17 totalUnitCount:v15 completedFileCount:v16 totalFileCount:v14];
  return a3(0);
}

uint64_t sub_1CF7A6150()
{
  v34 = sub_1CF9E6388();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v29 = (&v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_1CF9E6498();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v24 - v4;
  v5 = sub_1CF9E6448();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E73D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v35 = MEMORY[0x1E69E7CC0];
  sub_1CF7AAE24(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF9E77B8();
  v12 = sub_1CF9E73E8();
  (*(v9 + 8))(v11, v8);
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  v25 = v0;
  swift_weakInit();

  sub_1CF042F9C();
  sub_1CEFD5828(0, v7, sub_1CEFCA9C8, v14, ObjectType);

  (*(v26 + 8))(v7, v27);

  v15 = v28;
  sub_1CF9E6478();
  v16 = v29;
  *v29 = 1;
  v17 = v32;
  v18 = v34;
  (*(v32 + 104))(v16, *MEMORY[0x1E69E7F48], v34);
  v19 = v30;
  MEMORY[0x1D3868740](v15, v16);
  v20 = *(v17 + 8);
  v20(v16, v18);
  v21 = *(v31 + 8);
  v22 = v33;
  v21(v15, v33);
  sub_1CEFD5BD8(v16);
  MEMORY[0x1D3869780](v19, v16, ObjectType, 1.0);
  v20(v16, v34);
  v21(v19, v22);
  sub_1CF9E7428();
  *(v25 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer) = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1CF7A6648();
  return swift_unknownObjectRelease();
}

void sub_1CF7A6648()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    sub_1CF7A69C4();
    v6 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v7 = sub_1CF9E6108();
    v8 = sub_1CF9E7298();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1CEFC7000, v7, v8, "[GlobalProgress] subscribing for complementary progress", v9, 2u);
      MEMORY[0x1D386CDC0](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v10 = objc_opt_self();
    v11 = sub_1CF9E5928();
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1CF7AAE78;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF7AA374;
    aBlock[3] = &block_descriptor_81;
    v13 = _Block_copy(aBlock);

    v14 = [v10 addSubscriberForFileURL:v11 withPublishingHandler:v13];
    _Block_release(v13);

    sub_1CF9E7728();
    swift_unknownObjectRelease();
    v15 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber;
    swift_beginAccess();
    sub_1CF7AAE80(aBlock, v1 + v15);
    swift_endAccess();
  }
}

double sub_1CF7A68E0(__n128 a1)
{
  sub_1CF7A69C4();
  v2 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v1 + v2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF7AAE74, v1);

  return result;
}

double sub_1CF7A69C4()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  *&result = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    v7 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber;
    swift_beginAccess();
    sub_1CEFF95C8(v1 + v7, &v14);
    if (v15)
    {
      sub_1CEFE9EB8(&v14, &v16);
      v8 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v9 = sub_1CF9E6108();
      v10 = sub_1CF9E7298();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1CEFC7000, v9, v10, "[GlobalProgress] unsubscribing from progress", v11, 2u);
        MEMORY[0x1D386CDC0](v11, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v12 = objc_opt_self();
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      [v12 removeSubscriber_];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v16);
    }

    else
    {
      sub_1CEFCCC44(&v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }

    sub_1CF01001C(0, "stopObservingComplementaryProgressIfNeeded()", 44, 2, sub_1CF7AAF74, v1);
  }

  return result;
}

uint64_t sub_1CF7A6C40(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a3;
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = a2;
  sub_1CF6EA45C(&v29, v13);
  swift_endAccess();

  v14 = [v13 fileURL];
  if (v14)
  {
    v15 = v14;
    sub_1CF9E59D8();

    v16 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a1 + v16);
    *(a1 + v16) = 0x8000000000000000;
    sub_1CF1D37AC(v28, v12, isUniquelyReferenced_nonNull_native);
    *(a1 + v16) = v29;
    swift_endAccess();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v19 = v6;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = v13;
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "[GlobalProgress] missing fileURL in published progress: %{public}@", v24, 0xCu);
      sub_1CEFCCC44(v25, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v25, -1, -1);
      MEMORY[0x1D386CDC0](v24, -1, -1);
    }

    return (*(v19 + 8))(v8, v5);
  }
}

void sub_1CF7A6F5C(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - v4;
  v65 = sub_1CF9E5A58();
  v59 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CF9E7808();
    sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
    sub_1CF7AADBC();
    sub_1CF9E7038();
    a1 = v68[4];
    v7 = v68[5];
    v8 = v68[7];
    v62 = v68[6];
    v9 = v68[8];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v11 = *(a1 + 56);
    v62 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & v11;

    v8 = 0;
  }

  v14 = (v62 + 64) >> 6;
  v63 = *MEMORY[0x1E696A880];
  v64 = (v59 + 56);
  v60 = (v59 + 48);
  v57 = (v59 + 32);
  v58 = (v59 + 8);
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v8;
  v16 = v9;
  v17 = v8;
  if (v9)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_28:
      sub_1CEFCB59C(a1);
      return;
    }

    while (1)
    {
      [v19 unpublish];
      swift_beginAccess();
      v21 = sub_1CF8DD1F4(v19);
      swift_endAccess();

      v22 = [v19 userInfo];
      type metadata accessor for ProgressUserInfoKey(0);
      sub_1CF7AAE24(&qword_1EDEA35D0, type metadata accessor for ProgressUserInfoKey, &unk_1CF9F9D38);
      v23 = sub_1CF9E6638();

      if (*v23->tree && (v31 = sub_1CEFE863C(v63), (v24 & 1) != 0))
      {
        sub_1CEFD1104(*v23[1].tester + 32 * v31, v68);
        v23, v32, v33, v34, v35, v36, v37, v38;
        v39 = v65;
        v40 = swift_dynamicCast();
        (*v64)(v5, v40 ^ 1u, 1, v39);
        if ((*v60)(v5, 1, v39) != 1)
        {
          v41 = *v57;
          v56 = a1;
          v42 = v5;
          v43 = v61;
          v41(v61, v42, v39);
          v44 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache;
          swift_beginAccess();
          v45 = v43;
          v5 = v42;
          a1 = v56;
          v46 = sub_1CF7BFCDC(v45);
          if (v47)
          {
            v48 = v46;
            v55 = v5;
            v49 = v66;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51 = *(v49 + v44);
            v67 = v51;
            *(v49 + v44) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1CF7D2980();
              v51 = v67;
            }

            v52 = v48;
            v53 = *(v51 + 48) + *(v59 + 72) * v48;
            v39 = v65;
            (*(v59 + 8))(v53, v65);
            sub_1CF1D04D8(v52, v51);
            *(v66 + v44) = v51;
            v5 = v55;
          }

          swift_endAccess();
          (*v58)(v61, v39);
          goto LABEL_26;
        }
      }

      else
      {
        v23, v24, v25, v26, v27, v28, v29, v30;
        (*v64)(v5, 1, 1, v65);
      }

      sub_1CEFCCC44(v5, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_26:

      v8 = v17;
      v9 = v18;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v20 = sub_1CF9E7838();
      if (v20)
      {
        v67 = v20;
        sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
        swift_dynamicCast();
        v19 = v68[0];
        v17 = v8;
        v18 = v9;
        if (v68[0])
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_28;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_1CF7A74F4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v4 = *v2->tree;
  if (v4)
  {
    v5 = &v2[1];

    do
    {
      sub_1CF7AAD1C(v5, v41);
      Strong = swift_unknownObjectWeakLoadStrong();
      v14 = sub_1CF7AAD54(v41);
      if (Strong)
      {
        MEMORY[0x1D3868FA0](v14);
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();
        v3 = v42;
      }

      v5 += 8;
      --v4;
    }

    while (v4);
    v2, v6, v7, v8, v9, v10, v11, v12;
  }

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {
    v16 = *(v1 + 16);
    v17 = *v16->tree;
    if (i == v17)
    {
      break;
    }

    if (!v17)
    {
      v27 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v16, v18, v19, v20, v21, v22, v23, v24;
      v31 = *(v1 + 16);
      *(v1 + 16) = v27;
      v31, v32, v33, v34, v35, v36, v37, v38;
      return v3;
    }

    v25 = 0;
    v26 = &v16[1];
    v27 = MEMORY[0x1E69E7CC0];
    while (v25 < *v16->tree)
    {
      sub_1CF7AAD1C(v26, v41);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1CF7AAD84(v41, &v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CF680F48(0, *(v27 + 16) + 1, 1);
          v27 = v42;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1CF680F48((v29 > 1), v30 + 1, 1);
          v27 = v42;
        }

        *(v27 + 16) = v30 + 1;
        sub_1CF7AAD84(&v40, v27 + 8 * v30 + 32);
      }

      else
      {
        sub_1CF7AAD54(v41);
      }

      ++v25;
      v26 += 8;
      if (v17 == v25)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

  return v3;
}

uint64_t sub_1CF7A773C@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v99 = a4;
  v94 = a3;
  v6 = sub_1CF9E6118();
  v97 = *(v6 - 8);
  v98 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v91 - v12;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v91 - v19;
  v100 = *a1;
  v21 = *a2;
  v22 = [*a2 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_1CF7AAE24(&qword_1EDEA35D0, type metadata accessor for ProgressUserInfoKey, &unk_1CF9F9D38);
  v23 = sub_1CF9E6638();

  if (!*v23->tree || (v31 = sub_1CEFE863C(*MEMORY[0x1E696A880]), (v24 & 1) == 0))
  {
LABEL_13:
    v23, v24, v25, v26, v27, v28, v29, v30;
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_14;
  }

  sub_1CEFD1104(*v23[1].tester + 32 * v31, v102);
  v23, v32, v33, v34, v35, v36, v37, v38;
  v39 = swift_dynamicCast();
  (*(v15 + 56))(v13, v39 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_14:
    sub_1CEFCCC44(v13, &unk_1EC4BE310, qword_1CF9FCBE0);
    v61 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v62 = v21;
    v63 = sub_1CF9E6108();
    v64 = sub_1CF9E72A8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138543362;
      *(v65 + 4) = v62;
      *v66 = v62;
      v67 = v62;
      _os_log_impl(&dword_1CEFC7000, v63, v64, "[GlobalProgress] computePartialProgress: missing fileURL for %{public}@", v65, 0xCu);
      sub_1CEFCCC44(v66, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v66, -1, -1);
      MEMORY[0x1D386CDC0](v65, -1, -1);
    }

    result = (*(v97 + 8))(v8, v98);
    goto LABEL_17;
  }

  v8 = v20;
  (*(v15 + 32))(v20, v13, v14);
  v40 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache;
  v41 = v94;
  swift_beginAccess();
  v42 = *&v41[v40];
  v44 = v95;
  v43 = v96;
  if (!*v42->tree)
  {
    goto LABEL_20;
  }

  v45 = sub_1CF7BFCDC(v8);
  if ((v46 & 1) == 0)
  {
    v42, v46, v47, v48, v49, v50, v51, v52;
LABEL_20:
    v68 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v15 + 16))(v44, v8, v14);
    v69 = sub_1CF9E6108();
    v70 = sub_1CF9E72A8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v92 = v71;
      v93 = swift_slowAlloc();
      v101 = v93;
      *v71 = 136446210;
      v72 = sub_1CF9E5928();
      v73 = [v72 fp_shortDescription];
      v94 = v8;
      v74 = v73;

      v75 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v77 = v76;

      v78 = *(v15 + 8);
      v78(v44, v14);
      v79 = sub_1CEFD0DF0(v75, v77, &v101);
      v77, v80, v81, v82, v83, v84, v85, v86;
      v87 = v92;
      *(v92 + 1) = v79;
      v88 = v87;
      _os_log_impl(&dword_1CEFC7000, v69, v70, "[GlobalProgress] computePartialProgress: size missing for:%{public}s", v87, 0xCu);
      v89 = v93;
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x1D386CDC0](v89, -1, -1);
      MEMORY[0x1D386CDC0](v88, -1, -1);

      (*(v97 + 8))(v43, v98);
      result = (v78)(v94, v14);
    }

    else
    {

      v90 = *(v15 + 8);
      v90(v44, v14);
      (*(v97 + 8))(v43, v98);
      result = (v90)(v8, v14);
    }

    goto LABEL_17;
  }

  v53 = *(*v42[1].tester + 8 * v45);
  v42, v46, v47, v48, v49, v50, v51, v52;
  v23 = &selRef_defaultNSDomainForDescriptor_;
  [v21 fractionCompleted];
  if (v54 >= 1.0)
  {
    result = (*(v15 + 8))(v8, v14);
LABEL_17:
    v60 = v100;
LABEL_18:
    *v99 = v60;
    return result;
  }

  [v21 fractionCompleted];
  v56 = v55;
  v57 = *(v15 + 8);
  v15 += 8;
  result = v57(v8, v14);
  v59 = v56 * v53;
  if (COERCE__INT64(fabs(v59)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v59 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v59 < 9.22337204e18)
  {
    v60 = v100 + v59;
    if (!__OFADD__(v100, v59))
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CF7A7E98()
{
  v1 = sub_1CF9E64A8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1CF9E64D8();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = *(v0 + 32);
  if (*(v0 + 32) == 0)
  {
    v10 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress;
    if (*(v0 + 48) == 0 && !*(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress))
    {
      return 1;
    }
  }

  else
  {
    v10 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress;
  }

  v12 = *(v0 + v10);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1CF9E71B8();
    if (v15)
    {
      v11 = 0;
    }

    else
    {
      v11 = v14;
    }

    [v13 totalUnitCount];
    sub_1CF9E71D8();
    [v13 completedUnitCount];

    return v11;
  }

  v16 = *(v0 + 48);
  v11 = v16 + v9;
  if (__OFADD__(v16, v9))
  {
    goto LABEL_17;
  }

  v17 = *(v0 + 56);
  if (__OFADD__(v17, *(v0 + 40)))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!__OFADD__(v17, *(v0 + 96)))
  {
    return v11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1CF7A808C()
{
  v1 = v0;
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v10 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress);
  if (v10)
  {
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;
    if (v11 == v14 && v13 == v15)
    {
      v37 = v10;
      v13, v38, v39, v40, v41, v42, v43, v44;
      v16, v45, v46, v47, v48, v49, v50, v51;
    }

    else
    {
      v18 = sub_1CF9E8048();
      v19 = v10;
      v13, v20, v21, v22, v23, v24, v25, v26;
      v16, v27, v28, v29, v30, v31, v32, v33;
      if ((v18 & 1) == 0)
      {
        v34 = sub_1CEFCAFD4();
        if (!(v34 | v35))
        {
          v36 = *(v1 + 64) > 0;
LABEL_12:
          [v10 setPausable_];
          v52 = *(v1 + 112);
          ObjectType = swift_getObjectType();
          if (((*(v52 + 80))(ObjectType, v52) & 1) != 0 && ([v10 isPaused] & 1) == 0)
          {
            [v10 setPausingHandler_];
            _Block_release(0);
            [v10 pause];
          }

          v54 = swift_allocObject();
          swift_weakInit();
          v62 = sub_1CF7AAC9C;
          v63 = v54;
          aBlock = MEMORY[0x1E69E9820];
          v59 = 1107296256;
          v60 = sub_1CEFCA444;
          v61 = &block_descriptor_63;
          v55 = _Block_copy(&aBlock);

          sub_1CF03C63C(sub_1CF7AAC9C, v54);

          [v10 setPausingHandler_];
          _Block_release(v55);

          v56 = swift_allocObject();
          swift_weakInit();
          v62 = sub_1CF7AACD4;
          v63 = v56;
          aBlock = MEMORY[0x1E69E9820];
          v59 = 1107296256;
          v60 = sub_1CEFCA444;
          v61 = &block_descriptor_42;
          v57 = _Block_copy(&aBlock);

          sub_1CF03C63C(sub_1CF7AACD4, v56);

          [v10 setResumingHandler_];
          _Block_release(v57);
        }
      }
    }

    v36 = 1;
    goto LABEL_12;
  }

  return result;
}